// VGA bios implementation
//
// Copyright (C) 2009  Kevin O'Connor <kevin@koconnor.net>
// Copyright (C) 2001-2008 the LGPL VGABios developers Team
//
// This file may be distributed under the terms of the GNU LGPLv3 license.


// TODO:
//  * review correctness of converted asm by comparing with RBIL
//
//  * convert vbe/clext code

#include "bregs.h" // struct bregs
#include "biosvar.h" // GET_BDA
#include "util.h" // memset
#include "vgabios.h" // find_vga_entry
#include "optionroms.h" // struct pci_data
#include "config.h" // CONFIG_*
#include "vbe.h" // struct vbe_info
#include "geodelx.h" // geodelx_init
#include "bochsvga.h" // bochsvga_init

// XXX
#define DEBUG_VGA_POST 1
#define DEBUG_VGA_10 3


/****************************************************************
 * PCI Data
 ****************************************************************/
#if CONFIG_VGA_PCI == 1
struct pci_data rom_pci_data VAR16VISIBLE = {
    .signature = PCI_ROM_SIGNATURE,
    .vendor = CONFIG_VGA_VID,
    .device = CONFIG_VGA_DID,
    .dlen = 0x18,
    .class_hi = 0x300,
    .irevision = 1,
    .type = PCIROM_CODETYPE_X86,
    .indicator = 0x80,
};
#endif

/****************************************************************
 * Helper functions
 ****************************************************************/

static inline void
call16_vgaint(u32 eax, u32 ebx)
{
    asm volatile(
        "int $0x10\n"
        "cli\n"
        "cld"
        :
        : "a"(eax), "b"(ebx)
        : "cc", "memory");
}

static void
perform_gray_scale_summing(u16 start, u16 count)
{
    vgahw_screen_disable();
    int i;
    for (i = start; i < start+count; i++) {
        u8 rgb[3];
        vgahw_get_dac_regs(GET_SEG(SS), rgb, i, 1);

        // intensity = ( 0.3 * Red ) + ( 0.59 * Green ) + ( 0.11 * Blue )
        u16 intensity = ((77 * rgb[0] + 151 * rgb[1] + 28 * rgb[2]) + 0x80) >> 8;
        if (intensity > 0x3f)
            intensity = 0x3f;

        vgahw_set_dac_regs(GET_SEG(SS), rgb, i, 1);
    }
    vgahw_screen_enable();
}

static void
set_cursor_shape(u8 start, u8 end)
{
    start &= 0x3f;
    end &= 0x1f;

    u16 curs = (start << 8) + end;
    SET_BDA(cursor_type, curs);

    u8 modeset_ctl = GET_BDA(modeset_ctl);
    u16 cheight = GET_BDA(char_height);
    if ((modeset_ctl & 0x01) && (cheight > 8) && (end < 8) && (start < 0x20)) {
        if (end != (start + 1))
            start = ((start + 1) * cheight / 8) - 1;
        else
            start = ((end + 1) * cheight / 8) - 2;
        end = ((end + 1) * cheight / 8) - 1;
    }
    vgahw_set_cursor_shape(start, end);
}

static u16
get_cursor_shape(u8 page)
{
    if (page > 7)
        return 0;
    // FIXME should handle VGA 14/16 lines
    return GET_BDA(cursor_type);
}

static void
set_cursor_pos(struct cursorpos cp)
{
    // Should not happen...
    if (cp.page > 7)
        return;

    // Bios cursor pos
    SET_BDA(cursor_pos[cp.page], (cp.y << 8) | cp.x);

    // Set the hardware cursor
    u8 current = GET_BDA(video_page);
    if (cp.page != current)
        return;

    // Get the dimensions
    u16 nbcols = GET_BDA(video_cols);
    u16 nbrows = GET_BDA(video_rows) + 1;

    // Calculate the address knowing nbcols nbrows and page num
    u16 address = (SCREEN_IO_START(nbcols, nbrows, cp.page)
                   + cp.x + cp.y * nbcols);

    vgahw_set_cursor_pos(address);
}

static struct cursorpos
get_cursor_pos(u8 page)
{
    if (page == 0xff)
        // special case - use current page
        page = GET_BDA(video_page);
    if (page > 7) {
        struct cursorpos cp = { 0, 0, 0xfe };
        return cp;
    }
    // FIXME should handle VGA 14/16 lines
    u16 xy = GET_BDA(cursor_pos[page]);
    struct cursorpos cp = {xy, xy>>8, page};
    return cp;
}

static void
set_active_page(u8 page)
{
    if (page > 7)
        return;

    // Get the mode
    struct vgamode_s *vmode_g = find_vga_entry(GET_BDA(video_mode));
    if (!vmode_g)
        return;

    // Get pos curs pos for the right page
    struct cursorpos cp = get_cursor_pos(page);

    u16 address;
    if (GET_GLOBAL(vmode_g->memmodel) & TEXT) {
        // Get the dimensions
        u16 nbcols = GET_BDA(video_cols);
        u16 nbrows = GET_BDA(video_rows) + 1;

        // Calculate the address knowing nbcols nbrows and page num
        address = SCREEN_MEM_START(nbcols, nbrows, page);
        SET_BDA(video_pagestart, address);

        // Start address
        address = SCREEN_IO_START(nbcols, nbrows, page);
    } else {
        address = page * GET_GLOBAL(vmode_g->slength);
    }

    vgahw_set_active_page(address);

    // And change the BIOS page
    SET_BDA(video_page, page);

    dprintf(1, "Set active page %02x address %04x\n", page, address);

    // Display the cursor, now the page is active
    set_cursor_pos(cp);
}

static void
set_scan_lines(u8 lines)
{
    vgahw_set_scan_lines(lines);
    if (lines == 8)
        set_cursor_shape(0x06, 0x07);
    else
        set_cursor_shape(lines - 4, lines - 3);
    SET_BDA(char_height, lines);
    u16 vde = vgahw_get_vde();
    u8 rows = vde / lines;
    SET_BDA(video_rows, rows - 1);
    u16 cols = GET_BDA(video_cols);
    SET_BDA(video_pagesize, rows * cols * 2);
}


/****************************************************************
 * Character writing
 ****************************************************************/

// Scroll the screen one line.  This function is designed to be called
// tail-recursive to reduce stack usage.
static void noinline
scroll_one(u16 nbrows, u16 nbcols, u8 page)
{
    struct cursorpos ul = {0, 0, page};
    struct cursorpos lr = {nbcols-1, nbrows-1, page};
    vgafb_scroll(1, -1, ul, lr);
}

// Write a character to the screen at a given position.  Implement
// special characters and scroll the screen if necessary.
static void
write_teletype(struct cursorpos *pcp, struct carattr ca)
{
    struct cursorpos cp = *pcp;

    // Get the dimensions
    u16 nbrows = GET_BDA(video_rows) + 1;
    u16 nbcols = GET_BDA(video_cols);

    switch (ca.car) {
    case 7:
        //FIXME should beep
        break;
    case 8:
        if (cp.x > 0)
            cp.x--;
        break;
    case '\r':
        cp.x = 0;
        break;
    case '\n':
        cp.y++;
        break;
    case '\t':
        do {
            struct carattr dummyca = {' ', ca.attr, ca.use_attr};
            vgafb_write_char(cp, dummyca);
            cp.x++;
        } while (cp.x < nbcols && cp.x % 8);
        break;
    default:
        vgafb_write_char(cp, ca);
        cp.x++;
    }

    // Do we need to wrap ?
    if (cp.x == nbcols) {
        cp.x = 0;
        cp.y++;
    }
    // Do we need to scroll ?
    if (cp.y < nbrows) {
        *pcp = cp;
        return;
    }
    // Scroll screen
    cp.y--;
    *pcp = cp;
    scroll_one(nbrows, nbcols, cp.page);
}

// Write out a buffer of alternating characters and attributes.
static void
write_attr_string(struct cursorpos *pcp, u16 count, u16 seg, u8 *offset_far)
{
    while (count--) {
        u8 car = GET_FARVAR(seg, *offset_far);
        offset_far++;
        u8 attr = GET_FARVAR(seg, *offset_far);
        offset_far++;

        struct carattr ca = {car, attr, 1};
        write_teletype(pcp, ca);
    }
}

// Write out a buffer of characters.
static void
write_string(struct cursorpos *pcp, u8 attr, u16 count, u16 seg, u8 *offset_far)
{
    while (count--) {
        u8 car = GET_FARVAR(seg, *offset_far);
        offset_far++;

        struct carattr ca = {car, attr, 1};
        write_teletype(pcp, ca);
    }
}


/****************************************************************
 * Save and restore bda state
 ****************************************************************/

static void
save_bda_state(u16 seg, struct saveBDAstate *info)
{
    SET_FARVAR(seg, info->video_mode, GET_BDA(video_mode));
    SET_FARVAR(seg, info->video_cols, GET_BDA(video_cols));
    SET_FARVAR(seg, info->video_pagesize, GET_BDA(video_pagesize));
    SET_FARVAR(seg, info->crtc_address, GET_BDA(crtc_address));
    SET_FARVAR(seg, info->video_rows, GET_BDA(video_rows));
    SET_FARVAR(seg, info->char_height, GET_BDA(char_height));
    SET_FARVAR(seg, info->video_ctl, GET_BDA(video_ctl));
    SET_FARVAR(seg, info->video_switches, GET_BDA(video_switches));
    SET_FARVAR(seg, info->modeset_ctl, GET_BDA(modeset_ctl));
    SET_FARVAR(seg, info->cursor_type, GET_BDA(cursor_type));
    u16 i;
    for (i=0; i<8; i++)
        SET_FARVAR(seg, info->cursor_pos[i], GET_BDA(cursor_pos[i]));
    SET_FARVAR(seg, info->video_pagestart, GET_BDA(video_pagestart));
    SET_FARVAR(seg, info->video_page, GET_BDA(video_page));
    /* current font */
    SET_FARVAR(seg, info->font0, GET_IVT(0x1f));
    SET_FARVAR(seg, info->font1, GET_IVT(0x43));
}

static void
restore_bda_state(u16 seg, struct saveBDAstate *info)
{
    SET_BDA(video_mode, GET_FARVAR(seg, info->video_mode));
    SET_BDA(video_cols, GET_FARVAR(seg, info->video_cols));
    SET_BDA(video_pagesize, GET_FARVAR(seg, info->video_pagesize));
    SET_BDA(crtc_address, GET_FARVAR(seg, info->crtc_address));
    SET_BDA(video_rows, GET_FARVAR(seg, info->video_rows));
    SET_BDA(char_height, GET_FARVAR(seg, info->char_height));
    SET_BDA(video_ctl, GET_FARVAR(seg, info->video_ctl));
    SET_BDA(video_switches, GET_FARVAR(seg, info->video_switches));
    SET_BDA(modeset_ctl, GET_FARVAR(seg, info->modeset_ctl));
    SET_BDA(cursor_type, GET_FARVAR(seg, info->cursor_type));
    u16 i;
    for (i = 0; i < 8; i++)
        SET_BDA(cursor_pos[i], GET_FARVAR(seg, info->cursor_pos[i]));
    SET_BDA(video_pagestart, GET_FARVAR(seg, info->video_pagestart));
    SET_BDA(video_page, GET_FARVAR(seg, info->video_page));
    /* current font */
    SET_IVT(0x1f, GET_FARVAR(seg, info->font0));
    SET_IVT(0x43, GET_FARVAR(seg, info->font1));
}


/****************************************************************
 * VGA int 10 handler
 ****************************************************************/

// set video mode
void
vga_set_mode(u8 mode, u8 noclearmem)
{
    // find the entry in the video modes
    struct vgamode_s *vmode_g = find_vga_entry(mode);
    dprintf(1, "mode search %02x found %p\n", mode, vmode_g);
    if (!vmode_g)
        return;

    // Read the bios mode set control
    u8 modeset_ctl = GET_BDA(modeset_ctl);

    // Then we know the number of lines
// FIXME

    // if palette loading (bit 3 of modeset ctl = 0)
    if ((modeset_ctl & 0x08) == 0) {    // Set the PEL mask
        vgahw_set_pel_mask(GET_GLOBAL(vmode_g->pelmask));

        // From which palette
        u8 *palette_g = GET_GLOBAL(vmode_g->dac);
        u16 palsize = GET_GLOBAL(vmode_g->dacsize) / 3;

        // Always 256*3 values
        vgahw_set_dac_regs(get_global_seg(), palette_g, 0, palsize);
        u16 i;
        for (i = palsize; i < 0x0100; i++) {
            static u8 rgb[3] VAR16;
            vgahw_set_dac_regs(get_global_seg(), rgb, i, 1);
        }

        if ((modeset_ctl & 0x02) == 0x02)
            perform_gray_scale_summing(0x00, 0x100);
    }

    vgahw_set_mode(vmode_g);

    if (noclearmem == 0x00)
        clear_screen(vmode_g);

    // Set CRTC address VGA or MDA
    u16 crtc_addr = VGAREG_VGA_CRTC_ADDRESS;
    if (GET_GLOBAL(vmode_g->memmodel) == MTEXT)
        crtc_addr = VGAREG_MDA_CRTC_ADDRESS;

    // Set the BIOS mem
    u16 cheight = GET_GLOBAL(vmode_g->cheight);
    SET_BDA(video_mode, mode);
    SET_BDA(video_cols, GET_GLOBAL(vmode_g->twidth));
    SET_BDA(video_pagesize, GET_GLOBAL(vmode_g->slength));
    SET_BDA(crtc_address, crtc_addr);
    SET_BDA(video_rows, GET_GLOBAL(vmode_g->theight)-1);
    SET_BDA(char_height, cheight);
    SET_BDA(video_ctl, (0x60 | noclearmem));
    SET_BDA(video_switches, 0xF9);
    SET_BDA(modeset_ctl, GET_BDA(modeset_ctl) & 0x7f);

    // FIXME We nearly have the good tables. to be reworked
    SET_BDA(dcc_index, 0x08);   // 8 is VGA should be ok for now
    SET_BDA(video_savetable
            , SEGOFF(get_global_seg(), (u32)&video_save_pointer_table));

    // FIXME
    SET_BDA(video_msr, 0x00); // Unavailable on vanilla vga, but...
    SET_BDA(video_pal, 0x00); // Unavailable on vanilla vga, but...

    // Set cursor shape
    if (GET_GLOBAL(vmode_g->memmodel) & TEXT)
        set_cursor_shape(0x06, 0x07);
    // Set cursor pos for page 0..7
    int i;
    for (i = 0; i < 8; i++) {
        struct cursorpos cp = {0, 0, i};
        set_cursor_pos(cp);
    }

    // Set active page 0
    set_active_page(0x00);

    // Write the fonts in memory
    if (GET_GLOBAL(vmode_g->memmodel) & TEXT) {
        call16_vgaint(0x1104, 0);
        call16_vgaint(0x1103, 0);
    }
    // Set the ints 0x1F and 0x43
    SET_IVT(0x1f, SEGOFF(get_global_seg(), (u32)&vgafont8[128 * 8]));

    switch (cheight) {
    case 8:
        SET_IVT(0x43, SEGOFF(get_global_seg(), (u32)vgafont8));
        break;
    case 14:
        SET_IVT(0x43, SEGOFF(get_global_seg(), (u32)vgafont14));
        break;
    case 16:
        SET_IVT(0x43, SEGOFF(get_global_seg(), (u32)vgafont16));
        break;
    }
}

static void
handle_1000(struct bregs *regs)
{
    u8 noclearmem = regs->al & 0x80;
    u8 mode = regs->al & 0x7f;

    // Set regs->al
    if (mode > 7)
        regs->al = 0x20;
    else if (mode == 6)
        regs->al = 0x3f;
    else
        regs->al = 0x30;

    if (CONFIG_VGA_CIRRUS) {
        int ret = cirrus_set_video_mode(mode, noclearmem);
        if (ret)
            return;
    }

    if (bochsvga_enabled())
        bochsvga_hires_enable(0);

    vga_set_mode(mode, noclearmem);
}

static void
handle_1001(struct bregs *regs)
{
    set_cursor_shape(regs->ch, regs->cl);
}

static void
handle_1002(struct bregs *regs)
{
    struct cursorpos cp = {regs->dl, regs->dh, regs->bh};
    set_cursor_pos(cp);
}

static void
handle_1003(struct bregs *regs)
{
    regs->cx = get_cursor_shape(regs->bh);
    struct cursorpos cp = get_cursor_pos(regs->bh);
    regs->dl = cp.x;
    regs->dh = cp.y;
}

// Read light pen pos (unimplemented)
static void
handle_1004(struct bregs *regs)
{
    debug_stub(regs);
    regs->ax = regs->bx = regs->cx = regs->dx = 0;
}

static void
handle_1005(struct bregs *regs)
{
    set_active_page(regs->al);
}

static void
verify_scroll(struct bregs *regs, int dir)
{
    u8 page = GET_BDA(video_page);
    struct cursorpos ul = {regs->cl, regs->ch, page};
    struct cursorpos lr = {regs->dl, regs->dh, page};

    u16 nbrows = GET_BDA(video_rows) + 1;
    if (lr.y >= nbrows)
        lr.y = nbrows - 1;
    u16 nbcols = GET_BDA(video_cols);
    if (lr.x >= nbcols)
        lr.x = nbcols - 1;

    if (ul.x > lr.x || ul.y > lr.y)
        return;

    u16 nblines = regs->al;
    if (!nblines || nblines > lr.y - ul.y + 1)
        nblines = lr.y - ul.y + 1;

    vgafb_scroll(dir * nblines, regs->bh, ul, lr);
}

static void
handle_1006(struct bregs *regs)
{
    verify_scroll(regs, 1);
}

static void
handle_1007(struct bregs *regs)
{
    verify_scroll(regs, -1);
}

static void
handle_1008(struct bregs *regs)
{
    struct carattr ca = vgafb_read_char(get_cursor_pos(regs->bh));
    regs->al = ca.car;
    regs->ah = ca.attr;
}

static void noinline
write_chars(u8 page, struct carattr ca, u16 count)
{
    struct cursorpos cp = get_cursor_pos(page);
    while (count--) {
        vgafb_write_char(cp, ca);
        cp.x++;
    }
}

static void
handle_1009(struct bregs *regs)
{
    struct carattr ca = {regs->al, regs->bl, 1};
    write_chars(regs->bh, ca, regs->cx);
}

static void
handle_100a(struct bregs *regs)
{
    struct carattr ca = {regs->al, regs->bl, 0};
    write_chars(regs->bh, ca, regs->cx);
}


static void
handle_100b00(struct bregs *regs)
{
    vgahw_set_border_color(regs->bl);
}

static void
handle_100b01(struct bregs *regs)
{
    vgahw_set_palette(regs->bl);
}

static void
handle_100bXX(struct bregs *regs)
{
    debug_stub(regs);
}

static void
handle_100b(struct bregs *regs)
{
    switch (regs->bh) {
    case 0x00: handle_100b00(regs); break;
    case 0x01: handle_100b01(regs); break;
    default:   handle_100bXX(regs); break;
    }
}


static void
handle_100c(struct bregs *regs)
{
    // XXX - page (regs->bh) is unused
    vgafb_write_pixel(regs->al, regs->cx, regs->dx);
}

static void
handle_100d(struct bregs *regs)
{
    // XXX - page (regs->bh) is unused
    regs->al = vgafb_read_pixel(regs->cx, regs->dx);
}

static void noinline
handle_100e(struct bregs *regs)
{
    // Ralf Brown Interrupt list is WRONG on bh(page)
    // We do output only on the current page !
    struct carattr ca = {regs->al, regs->bl, 0};
    struct cursorpos cp = get_cursor_pos(0xff);
    write_teletype(&cp, ca);
    set_cursor_pos(cp);
}

static void
handle_100f(struct bregs *regs)
{
    regs->bh = GET_BDA(video_page);
    regs->al = GET_BDA(video_mode) | (GET_BDA(video_ctl) & 0x80);
    regs->ah = GET_BDA(video_cols);
}


static void
handle_101000(struct bregs *regs)
{
    if (regs->bl > 0x14)
        return;
    vgahw_set_single_palette_reg(regs->bl, regs->bh);
}

static void
handle_101001(struct bregs *regs)
{
    vgahw_set_overscan_border_color(regs->bh);
}

static void
handle_101002(struct bregs *regs)
{
    vgahw_set_all_palette_reg(regs->es, (u8*)(regs->dx + 0));
}

static void
handle_101003(struct bregs *regs)
{
    vgahw_toggle_intensity(regs->bl);
}

static void
handle_101007(struct bregs *regs)
{
    if (regs->bl > 0x14)
        return;
    regs->bh = vgahw_get_single_palette_reg(regs->bl);
}

static void
handle_101008(struct bregs *regs)
{
    regs->bh = vgahw_get_overscan_border_color();
}

static void
handle_101009(struct bregs *regs)
{
    vgahw_get_all_palette_reg(regs->es, (u8*)(regs->dx + 0));
}

static void noinline
handle_101010(struct bregs *regs)
{
    u8 rgb[3] = {regs->dh, regs->ch, regs->cl};
    vgahw_set_dac_regs(GET_SEG(SS), rgb, regs->bx, 1);
}

static void
handle_101012(struct bregs *regs)
{
    vgahw_set_dac_regs(regs->es, (u8*)(regs->dx + 0), regs->bx, regs->cx);
}

static void
handle_101013(struct bregs *regs)
{
    vgahw_select_video_dac_color_page(regs->bl, regs->bh);
}

static void noinline
handle_101015(struct bregs *regs)
{
    u8 rgb[3];
    vgahw_get_dac_regs(GET_SEG(SS), rgb, regs->bx, 1);
    regs->dh = rgb[0];
    regs->ch = rgb[1];
    regs->cl = rgb[2];
}

static void
handle_101017(struct bregs *regs)
{
    vgahw_get_dac_regs(regs->es, (u8*)(regs->dx + 0), regs->bx, regs->cx);
}

static void
handle_101018(struct bregs *regs)
{
    vgahw_set_pel_mask(regs->bl);
}

static void
handle_101019(struct bregs *regs)
{
    regs->bl = vgahw_get_pel_mask();
}

static void
handle_10101a(struct bregs *regs)
{
    vgahw_read_video_dac_state(&regs->bl, &regs->bh);
}

static void
handle_10101b(struct bregs *regs)
{
    perform_gray_scale_summing(regs->bx, regs->cx);
}

static void
handle_1010XX(struct bregs *regs)
{
    debug_stub(regs);
}

static void
handle_1010(struct bregs *regs)
{
    switch (regs->al) {
    case 0x00: handle_101000(regs); break;
    case 0x01: handle_101001(regs); break;
    case 0x02: handle_101002(regs); break;
    case 0x03: handle_101003(regs); break;
    case 0x07: handle_101007(regs); break;
    case 0x08: handle_101008(regs); break;
    case 0x09: handle_101009(regs); break;
    case 0x10: handle_101010(regs); break;
    case 0x12: handle_101012(regs); break;
    case 0x13: handle_101013(regs); break;
    case 0x15: handle_101015(regs); break;
    case 0x17: handle_101017(regs); break;
    case 0x18: handle_101018(regs); break;
    case 0x19: handle_101019(regs); break;
    case 0x1a: handle_10101a(regs); break;
    case 0x1b: handle_10101b(regs); break;
    default:   handle_1010XX(regs); break;
    }
}


static void
handle_101100(struct bregs *regs)
{
    vgafb_load_font(regs->es, (void*)(regs->bp+0), regs->cx
                    , regs->dx, regs->bl, regs->bh);
}

static void
handle_101101(struct bregs *regs)
{
    vgafb_load_font(get_global_seg(), vgafont14, 0x100, 0, regs->bl, 14);
}

static void
handle_101102(struct bregs *regs)
{
    vgafb_load_font(get_global_seg(), vgafont8, 0x100, 0, regs->bl, 8);
}

static void
handle_101103(struct bregs *regs)
{
    vgahw_set_text_block_specifier(regs->bl);
}

static void
handle_101104(struct bregs *regs)
{
    vgafb_load_font(get_global_seg(), vgafont16, 0x100, 0, regs->bl, 16);
}

static void
handle_101110(struct bregs *regs)
{
    vgafb_load_font(regs->es, (void*)(regs->bp+0), regs->cx
                    , regs->dx, regs->bl, regs->bh);
    set_scan_lines(regs->bh);
}

static void
handle_101111(struct bregs *regs)
{
    vgafb_load_font(get_global_seg(), vgafont14, 0x100, 0, regs->bl, 14);
    set_scan_lines(14);
}

static void
handle_101112(struct bregs *regs)
{
    vgafb_load_font(get_global_seg(), vgafont8, 0x100, 0, regs->bl, 8);
    set_scan_lines(8);
}

static void
handle_101114(struct bregs *regs)
{
    vgafb_load_font(get_global_seg(), vgafont16, 0x100, 0, regs->bl, 16);
    set_scan_lines(16);
}

static void
handle_101130(struct bregs *regs)
{
    switch (regs->bh) {
    case 0x00: {
        struct segoff_s so = GET_IVT(0x1f);
        regs->es = so.seg;
        regs->bp = so.offset;
        break;
    }
    case 0x01: {
        struct segoff_s so = GET_IVT(0x43);
        regs->es = so.seg;
        regs->bp = so.offset;
        break;
    }
    case 0x02:
        regs->es = get_global_seg();
        regs->bp = (u32)vgafont14;
        break;
    case 0x03:
        regs->es = get_global_seg();
        regs->bp = (u32)vgafont8;
        break;
    case 0x04:
        regs->es = get_global_seg();
        regs->bp = (u32)vgafont8 + 128 * 8;
        break;
    case 0x05:
        regs->es = get_global_seg();
        regs->bp = (u32)vgafont14alt;
        break;
    case 0x06:
        regs->es = get_global_seg();
        regs->bp = (u32)vgafont16;
        break;
    case 0x07:
        regs->es = get_global_seg();
        regs->bp = (u32)vgafont16alt;
        break;
    default:
        dprintf(1, "Get font info BH(%02x) was discarded\n", regs->bh);
        return;
    }
    // Set byte/char of on screen font
    regs->cx = GET_BDA(char_height) & 0xff;

    // Set Highest char row
    regs->dx = GET_BDA(video_rows);
}

static void
handle_1011XX(struct bregs *regs)
{
    debug_stub(regs);
}

static void
handle_1011(struct bregs *regs)
{
    switch (regs->al) {
    case 0x00: handle_101100(regs); break;
    case 0x01: handle_101101(regs); break;
    case 0x02: handle_101102(regs); break;
    case 0x03: handle_101103(regs); break;
    case 0x04: handle_101104(regs); break;
    case 0x10: handle_101110(regs); break;
    case 0x11: handle_101111(regs); break;
    case 0x12: handle_101112(regs); break;
    case 0x14: handle_101114(regs); break;
    case 0x30: handle_101130(regs); break;
    default:   handle_1011XX(regs); break;
    }
}


static void
handle_101210(struct bregs *regs)
{
    u16 crtc_addr = GET_BDA(crtc_address);
    if (crtc_addr == VGAREG_MDA_CRTC_ADDRESS)
        regs->bx = 0x0103;
    else
        regs->bx = 0x0003;
    regs->cx = GET_BDA(video_switches) & 0x0f;
}

static void
handle_101230(struct bregs *regs)
{
    u8 mctl = GET_BDA(modeset_ctl);
    u8 vswt = GET_BDA(video_switches);
    switch (regs->al) {
    case 0x00:
        // 200 lines
        mctl = (mctl & ~0x10) | 0x80;
        vswt = (vswt & ~0x0f) | 0x08;
        break;
    case 0x01:
        // 350 lines
        mctl &= ~0x90;
        vswt = (vswt & ~0x0f) | 0x09;
        break;
    case 0x02:
        // 400 lines
        mctl = (mctl & ~0x80) | 0x10;
        vswt = (vswt & ~0x0f) | 0x09;
        break;
    default:
        dprintf(1, "Select vert res (%02x) was discarded\n", regs->al);
        break;
    }
    SET_BDA(modeset_ctl, mctl);
    SET_BDA(video_switches, vswt);
    regs->al = 0x12;
}

static void
handle_101231(struct bregs *regs)
{
    u8 v = (regs->al & 0x01) << 3;
    u8 mctl = GET_BDA(video_ctl) & ~0x08;
    SET_BDA(video_ctl, mctl | v);
    regs->al = 0x12;
}

static void
handle_101232(struct bregs *regs)
{
    vgahw_enable_video_addressing(regs->al);
    regs->al = 0x12;
}

static void
handle_101233(struct bregs *regs)
{
    u8 v = ((regs->al << 1) & 0x02) ^ 0x02;
    u8 v2 = GET_BDA(modeset_ctl) & ~0x02;
    SET_BDA(modeset_ctl, v | v2);
    regs->al = 0x12;
}

static void
handle_101234(struct bregs *regs)
{
    u8 v = (regs->al & 0x01) ^ 0x01;
    u8 v2 = GET_BDA(modeset_ctl) & ~0x01;
    SET_BDA(modeset_ctl, v | v2);
    regs->al = 0x12;
}

static void
handle_101235(struct bregs *regs)
{
    debug_stub(regs);
    regs->al = 0x12;
}

static void
handle_101236(struct bregs *regs)
{
    debug_stub(regs);
    regs->al = 0x12;
}

static void
handle_1012XX(struct bregs *regs)
{
    debug_stub(regs);
}

static void
handle_1012(struct bregs *regs)
{
    switch (regs->bl) {
    case 0x10: handle_101210(regs); break;
    case 0x30: handle_101230(regs); break;
    case 0x31: handle_101231(regs); break;
    case 0x32: handle_101232(regs); break;
    case 0x33: handle_101233(regs); break;
    case 0x34: handle_101234(regs); break;
    case 0x35: handle_101235(regs); break;
    case 0x36: handle_101236(regs); break;
    default:   handle_1012XX(regs); break;
    }

    // XXX - cirrus has 1280, 1281, 1282, 1285, 129a, 12a0, 12a1, 12a2, 12ae
}


// Write string
static void noinline
handle_1013(struct bregs *regs)
{
    struct cursorpos cp = {regs->dl, regs->dh, regs->bh};
    // if row=0xff special case : use current cursor position
    if (cp.y == 0xff)
        cp = get_cursor_pos(cp.page);
    u8 flag = regs->al;
    if (flag & 2)
        write_attr_string(&cp, regs->cx, regs->es, (void*)(regs->bp + 0));
    else
        write_string(&cp, regs->bl, regs->cx, regs->es, (void*)(regs->bp + 0));

    if (flag & 1)
        set_cursor_pos(cp);
}


static void
handle_101a00(struct bregs *regs)
{
    regs->bx = GET_BDA(dcc_index);
    regs->al = 0x1a;
}

static void
handle_101a01(struct bregs *regs)
{
    SET_BDA(dcc_index, regs->bl);
    dprintf(1, "Alternate Display code (%02x) was discarded\n", regs->bh);
    regs->al = 0x1a;
}

static void
handle_101aXX(struct bregs *regs)
{
    debug_stub(regs);
}

static void
handle_101a(struct bregs *regs)
{
    switch (regs->al) {
    case 0x00: handle_101a00(regs); break;
    case 0x01: handle_101a01(regs); break;
    default:   handle_101aXX(regs); break;
    }
}


struct funcInfo {
    struct segoff_s static_functionality;
    u8 bda_0x49[30];
    u8 bda_0x84[3];
    u8 dcc_index;
    u8 dcc_alt;
    u16 colors;
    u8 pages;
    u8 scan_lines;
    u8 primary_char;
    u8 secondar_char;
    u8 misc;
    u8 non_vga_mode;
    u8 reserved_2f[2];
    u8 video_mem;
    u8 save_flags;
    u8 disp_info;
    u8 reserved_34[12];
};

static void
handle_101b(struct bregs *regs)
{
    u16 seg = regs->es;
    struct funcInfo *info = (void*)(regs->di+0);
    memset_far(seg, info, 0, sizeof(*info));
    // Address of static functionality table
    SET_FARVAR(seg, info->static_functionality
               , SEGOFF(get_global_seg(), (u32)static_functionality));

    // Hard coded copy from BIOS area. Should it be cleaner ?
    memcpy_far(seg, info->bda_0x49, SEG_BDA, (void*)0x49
               , sizeof(info->bda_0x49));
    memcpy_far(seg, info->bda_0x84, SEG_BDA, (void*)0x84
               , sizeof(info->bda_0x84));

    SET_FARVAR(seg, info->dcc_index, GET_BDA(dcc_index));
    SET_FARVAR(seg, info->colors, 16);
    SET_FARVAR(seg, info->pages, 8);
    SET_FARVAR(seg, info->scan_lines, 2);
    SET_FARVAR(seg, info->video_mem, 3);
    regs->al = 0x1B;
}


static void
handle_101c00(struct bregs *regs)
{
    u16 flags = regs->cx;
    u16 size = 0;
    if (flags & 1)
        size += sizeof(struct saveVideoHardware);
    if (flags & 2)
        size += sizeof(struct saveBDAstate);
    if (flags & 4)
        size += sizeof(struct saveDACcolors);
    regs->bx = size;
    regs->al = 0x1c;
}

static void
handle_101c01(struct bregs *regs)
{
    u16 flags = regs->cx;
    u16 seg = regs->es;
    void *data = (void*)(regs->bx+0);
    if (flags & 1) {
        vgahw_save_state(seg, data);
        data += sizeof(struct saveVideoHardware);
    }
    if (flags & 2) {
        save_bda_state(seg, data);
        data += sizeof(struct saveBDAstate);
    }
    if (flags & 4)
        vgahw_save_dac_state(seg, data);
    regs->al = 0x1c;
}

static void
handle_101c02(struct bregs *regs)
{
    u16 flags = regs->cx;
    u16 seg = regs->es;
    void *data = (void*)(regs->bx+0);
    if (flags & 1) {
        vgahw_restore_state(seg, data);
        data += sizeof(struct saveVideoHardware);
    }
    if (flags & 2) {
        restore_bda_state(seg, data);
        data += sizeof(struct saveBDAstate);
    }
    if (flags & 4)
        vgahw_restore_dac_state(seg, data);
    regs->al = 0x1c;
}

static void
handle_101cXX(struct bregs *regs)
{
    debug_stub(regs);
}

static void
handle_101c(struct bregs *regs)
{
    switch (regs->al) {
    case 0x00: handle_101c00(regs); break;
    case 0x01: handle_101c01(regs); break;
    case 0x02: handle_101c02(regs); break;
    default:   handle_101cXX(regs); break;
    }
}

static void
handle_104f00(struct bregs *regs)
{
    u16 seg = regs->es;
    struct vbe_info *info = (void*)(regs->di+0);

    if (GET_FARVAR(seg, info->signature) == VBE2_SIGNATURE) {
        dprintf(4, "Get VBE Controller: VBE2 Signature found\n");
    } else if (GET_FARVAR(seg, info->signature) == VESA_SIGNATURE) {
        dprintf(4, "Get VBE Controller: VESA Signature found\n");
    } else {
        dprintf(4, "Get VBE Controller: Invalid Signature\n");
    }

    memset_far(seg, info, 0, sizeof(*info));

    SET_FARVAR(seg, info->signature, VESA_SIGNATURE);

    SET_FARVAR(seg, info->version, 0x0200);

    SET_FARVAR(seg, info->oem_string,
            SEGOFF(get_global_seg(), (u32)VBE_OEM_STRING));
    SET_FARVAR(seg, info->capabilities, 0x1); /* 8BIT DAC */

    /* We generate our mode list in the reserved field of the info block */
    SET_FARVAR(seg, info->video_mode, SEGOFF(seg, regs->di + 34));

    /* Total memory (in 64 blocks) */
    SET_FARVAR(seg, info->total_memory, bochsvga_total_mem());

    SET_FARVAR(seg, info->oem_vendor_string,
            SEGOFF(get_global_seg(), (u32)VBE_VENDOR_STRING));
    SET_FARVAR(seg, info->oem_product_string,
            SEGOFF(get_global_seg(), (u32)VBE_PRODUCT_STRING));
    SET_FARVAR(seg, info->oem_revision_string,
            SEGOFF(get_global_seg(), (u32)VBE_REVISION_STRING));

    /* Fill list of modes */
    bochsvga_list_modes(seg, regs->di + 32);

    regs->al = regs->ah; /* 0x4F, Function supported */
    regs->ah = 0x0; /* 0x0, Function call successful */
}

static void
handle_104f01(struct bregs *regs)
{
    u16 seg = regs->es;
    struct vbe_mode_info *info = (void*)(regs->di+0);
    u16 mode = regs->cx;
    struct vbe_modeinfo modeinfo;
    int rc;

    dprintf(1, "VBE mode info request: %x\n", mode);

    rc = bochsvga_mode_info(mode, &modeinfo);
    if (rc) {
        dprintf(1, "VBE mode %x not found\n", mode);
        regs->ax = 0x100;
        return;
    }

    u16 mode_attr = VBE_MODE_ATTRIBUTE_SUPPORTED |
                    VBE_MODE_ATTRIBUTE_EXTENDED_INFORMATION_AVAILABLE |
                    VBE_MODE_ATTRIBUTE_COLOR_MODE |
                    VBE_MODE_ATTRIBUTE_GRAPHICS_MODE;
    if (modeinfo.depth == 4)
        mode_attr |= VBE_MODE_ATTRIBUTE_TTY_BIOS_SUPPORT;
    else
        mode_attr |= VBE_MODE_ATTRIBUTE_LINEAR_FRAME_BUFFER_MODE;
    SET_FARVAR(seg, info->mode_attributes, mode_attr);
    SET_FARVAR(seg, info->winA_attributes,
               VBE_WINDOW_ATTRIBUTE_RELOCATABLE |
               VBE_WINDOW_ATTRIBUTE_READABLE |
               VBE_WINDOW_ATTRIBUTE_WRITEABLE);
    SET_FARVAR(seg, info->winB_attributes, 0);
    SET_FARVAR(seg, info->win_granularity, 64); /* Bank size 64K */
    SET_FARVAR(seg, info->win_size, 64); /* Bank size 64K */
    SET_FARVAR(seg, info->winA_seg, 0xA000);
    SET_FARVAR(seg, info->winB_seg, 0x0);
    SET_FARVAR(seg, info->win_func_ptr.segoff, 0x0);
    SET_FARVAR(seg, info->bytes_per_scanline, modeinfo.linesize);
    SET_FARVAR(seg, info->xres, modeinfo.width);
    SET_FARVAR(seg, info->yres, modeinfo.height);
    SET_FARVAR(seg, info->xcharsize, 8);
    SET_FARVAR(seg, info->ycharsize, 16);
    if (modeinfo.depth == 4)
        SET_FARVAR(seg, info->planes, 4);
    else
        SET_FARVAR(seg, info->planes, 1);
    SET_FARVAR(seg, info->bits_per_pixel, modeinfo.depth);
    SET_FARVAR(seg, info->banks,
            (modeinfo.linesize * modeinfo.height + 65535) / 65536);
    if (modeinfo.depth == 4)
        SET_FARVAR(seg, info->mem_model, VBE_MEMORYMODEL_PLANAR);
    else if (modeinfo.depth == 8)
        SET_FARVAR(seg, info->mem_model, VBE_MEMORYMODEL_PACKED_PIXEL);
    else
        SET_FARVAR(seg, info->mem_model, VBE_MEMORYMODEL_DIRECT_COLOR);
    SET_FARVAR(seg, info->bank_size, 0);
    u32 pages = modeinfo.vram_size / (modeinfo.height * modeinfo.linesize);
    if (modeinfo.depth == 4)
        SET_FARVAR(seg, info->pages, (pages / 4) - 1);
    else
        SET_FARVAR(seg, info->pages, pages - 1);
    SET_FARVAR(seg, info->reserved0, 1);

    u8 r_size, r_pos, g_size, g_pos, b_size, b_pos, a_size, a_pos;

    switch (modeinfo.depth) {
    case 15: r_size = 5; r_pos = 10; g_size = 5; g_pos = 5;
             b_size = 5; b_pos = 0; a_size = 1; a_pos = 15; break;
    case 16: r_size = 5; r_pos = 11; g_size = 6; g_pos = 5;
             b_size = 5; b_pos = 0; a_size = 0; a_pos = 0; break;
    case 24: r_size = 8; r_pos = 16; g_size = 8; g_pos = 8;
             b_size = 8; b_pos = 0; a_size = 0; a_pos = 0; break;
    case 32: r_size = 8; r_pos = 16; g_size = 8; g_pos = 8;
             b_size = 8; b_pos = 0; a_size = 8; a_pos = 24; break;
    default: r_size = 0; r_pos = 0; g_size = 0; g_pos = 0;
             b_size = 0; b_pos = 0; a_size = 0; a_pos = 0; break;
    }

    SET_FARVAR(seg, info->red_size, r_size);
    SET_FARVAR(seg, info->red_pos, r_pos);
    SET_FARVAR(seg, info->green_size, g_size);
    SET_FARVAR(seg, info->green_pos, g_pos);
    SET_FARVAR(seg, info->blue_size, b_size);
    SET_FARVAR(seg, info->blue_pos, b_pos);
    SET_FARVAR(seg, info->alpha_size, a_size);
    SET_FARVAR(seg, info->alpha_pos, a_pos);

    if (modeinfo.depth == 32)
        SET_FARVAR(seg, info->directcolor_info,
                   VBE_DIRECTCOLOR_RESERVED_BITS_AVAILABLE);
    else
        SET_FARVAR(seg, info->directcolor_info, 0);

    if (modeinfo.depth > 4)
        SET_FARVAR(seg, info->phys_base, modeinfo.phys_base);
    else
        SET_FARVAR(seg, info->phys_base, 0);

    SET_FARVAR(seg, info->reserved1, 0);
    SET_FARVAR(seg, info->reserved2, 0);
    SET_FARVAR(seg, info->linear_bytes_per_scanline, modeinfo.linesize);
    SET_FARVAR(seg, info->bank_pages, 0);
    SET_FARVAR(seg, info->linear_pages, 0);
    SET_FARVAR(seg, info->linear_red_size, r_size);
    SET_FARVAR(seg, info->linear_red_pos, r_pos);
    SET_FARVAR(seg, info->linear_green_size, g_size);
    SET_FARVAR(seg, info->linear_green_pos, g_pos);
    SET_FARVAR(seg, info->linear_blue_size, b_size);
    SET_FARVAR(seg, info->linear_blue_pos, b_pos);
    SET_FARVAR(seg, info->linear_alpha_size, a_size);
    SET_FARVAR(seg, info->linear_alpha_pos, a_pos);
    SET_FARVAR(seg, info->pixclock_max, 0);

    regs->al = regs->ah; /* 0x4F, Function supported */
    regs->ah = 0x0; /* 0x0, Function call successful */
}

static void
handle_104f02(struct bregs *regs)
{
    //u16 seg = regs->es;
    //struct vbe_crtc_info *crtc_info = (void*)(regs->di+0);
    u16 mode = regs->bx;
    struct vbe_modeinfo modeinfo;
    int rc;

    dprintf(1, "VBE mode set: %x\n", mode);

    if (mode < 0x100) { /* VGA */
        dprintf(1, "set VGA mode %x\n", mode);

        bochsvga_hires_enable(0);
        vga_set_mode(mode, 0);
    } else { /* VBE */
        rc = bochsvga_mode_info(mode & 0x1ff, &modeinfo);
        if (rc) {
            dprintf(1, "VBE mode %x not found\n", mode & 0x1ff);
            regs->ax = 0x100;
            return;
        }
        bochsvga_hires_enable(1);
        bochsvga_set_mode(mode & 0x1ff, &modeinfo);

        if (mode & 0x4000) {
            /* Linear frame buffer */
            /* XXX: ??? */
        }
        if (!(mode & 0x8000)) {
            bochsvga_clear_scr();
        }
    }

    regs->al = regs->ah; /* 0x4F, Function supported */
    regs->ah = 0x0; /* 0x0, Function call successful */
}

static void
handle_104f03(struct bregs *regs)
{
    if (!bochsvga_hires_enabled()) {
        regs->bx = GET_BDA(video_mode);
    } else {
        regs->bx = bochsvga_curr_mode();
    }

    dprintf(1, "VBE current mode=%x\n", regs->bx);

    regs->al = regs->ah; /* 0x4F, Function supported */
    regs->ah = 0x0; /* 0x0, Function call successful */
}

static void
handle_104f04(struct bregs *regs)
{
    debug_enter(regs, DEBUG_VGA_10);
    regs->ax = 0x0100;
}

static void
handle_104f05(struct bregs *regs)
{
    debug_enter(regs, DEBUG_VGA_10);
    regs->ax = 0x0100;
}

static void
handle_104f06(struct bregs *regs)
{
    debug_enter(regs, DEBUG_VGA_10);
    regs->ax = 0x0100;
}

static void
handle_104f07(struct bregs *regs)
{
    debug_enter(regs, DEBUG_VGA_10);
    regs->ax = 0x0100;
}

static void
handle_104f08(struct bregs *regs)
{
    debug_enter(regs, DEBUG_VGA_10);
    regs->ax = 0x0100;
}

static void
handle_104f0a(struct bregs *regs)
{
    debug_enter(regs, DEBUG_VGA_10);
    regs->ax = 0x0100;
}

static void
handle_104fXX(struct bregs *regs)
{
    debug_stub(regs);
    regs->ax = 0x0100;
}

static void
handle_104f(struct bregs *regs)
{
    if (!bochsvga_enabled()) {
        handle_104fXX(regs);
        return;
    }

    switch (regs->al) {
    case 0x00: handle_104f00(regs); break;
    case 0x01: handle_104f01(regs); break;
    case 0x02: handle_104f02(regs); break;
    case 0x03: handle_104f03(regs); break;
    case 0x04: handle_104f04(regs); break;
    case 0x05: handle_104f05(regs); break;
    case 0x06: handle_104f06(regs); break;
    case 0x07: handle_104f07(regs); break;
    case 0x08: handle_104f08(regs); break;
    case 0x0a: handle_104f0a(regs); break;
    default:   handle_104fXX(regs); break;
    }
}


static void
handle_10XX(struct bregs *regs)
{
    debug_stub(regs);
}

// INT 10h Video Support Service Entry Point
void VISIBLE16
handle_10(struct bregs *regs)
{
    debug_enter(regs, DEBUG_VGA_10);
    switch (regs->ah) {
    case 0x00: handle_1000(regs); break;
    case 0x01: handle_1001(regs); break;
    case 0x02: handle_1002(regs); break;
    case 0x03: handle_1003(regs); break;
    case 0x04: handle_1004(regs); break;
    case 0x05: handle_1005(regs); break;
    case 0x06: handle_1006(regs); break;
    case 0x07: handle_1007(regs); break;
    case 0x08: handle_1008(regs); break;
    case 0x09: handle_1009(regs); break;
    case 0x0a: handle_100a(regs); break;
    case 0x0b: handle_100b(regs); break;
    case 0x0c: handle_100c(regs); break;
    case 0x0d: handle_100d(regs); break;
    case 0x0e: handle_100e(regs); break;
    case 0x0f: handle_100f(regs); break;
    case 0x10: handle_1010(regs); break;
    case 0x11: handle_1011(regs); break;
    case 0x12: handle_1012(regs); break;
    case 0x13: handle_1013(regs); break;
    case 0x1a: handle_101a(regs); break;
    case 0x1b: handle_101b(regs); break;
    case 0x1c: handle_101c(regs); break;
    case 0x4f: handle_104f(regs); break;
    default:   handle_10XX(regs); break;
    }
}


/****************************************************************
 * VGA post
 ****************************************************************/

static void
init_bios_area(void)
{
    // init detected hardware BIOS Area
    // set 80x25 color (not clear from RBIL but usual)
    u16 eqf = GET_BDA(equipment_list_flags);
    SET_BDA(equipment_list_flags, (eqf & 0xffcf) | 0x20);

    // Just for the first int10 find its children

    // the default char height
    SET_BDA(char_height, 0x10);

    // Clear the screen
    SET_BDA(video_ctl, 0x60);

    // Set the basic screen we have
    SET_BDA(video_switches, 0xf9);

    // Set the basic modeset options
    SET_BDA(modeset_ctl, 0x51);

    // Set the  default MSR
    SET_BDA(video_msr, 0x09);
}

void VISIBLE16
vga_post(struct bregs *regs)
{
    debug_enter(regs, DEBUG_VGA_POST);

    vgahw_init();

    if (CONFIG_VGA_GEODELX)
        geodelx_init();

    init_bios_area();

    bochsvga_init(regs->ah, regs->al);

    extern void entry_10(void);
    SET_IVT(0x10, SEGOFF(get_global_seg(), (u32)entry_10));

    if (CONFIG_VGA_CIRRUS)
        cirrus_init();

    // XXX - clear screen and display info

    build_video_param();

    // Fixup checksum
    extern u8 _rom_header_size, _rom_header_checksum;
    SET_VGA(_rom_header_checksum, 0);
    u8 sum = -checksum_far(get_global_seg(), 0, _rom_header_size * 512);
    SET_VGA(_rom_header_checksum, sum);
}