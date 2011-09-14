	.file	"misc.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.cfi_sections	.debug_frame
#APP
	.section .text.asm.src/stacks.c.102
	  .global trampoline_checkirqs
trampoline_checkirqs:
  rep ; nop
  lretw
	.section .text.asm.src/stacks.c.132
	  .global trampoline_waitirq
trampoline_waitirq:
  sti
  hlt
  lretw
	.section .text.asm.src/smp.c.66
	  .global smp_ap_boot_code
smp_ap_boot_code:
  movw $0xf000, %ax
  movw %ax, %ds
  movl $smp_mtrr, %esi
  movl smp_mtrr_count, %ebx
1:testl %ebx, %ebx
  jz 2f
  movl 0(%esi), %ecx
  movl 4(%esi), %eax
  movl 8(%esi), %edx
  wrmsr
  addl $12, %esi
  decl %ebx
  jmp 1b
2:
  lock incl CountCPUs
1:hlt
  jmp 1b

#NO_APP
	.section	.text.handle_12,"ax",@progbits
.globl handle_12
	.type	handle_12, @function
handle_12:
.LFB77:
	.file 1 "src/misc.c"
	.loc 1 28 0
	.cfi_startproc
.LVL0:
	.loc 1 30 0
	movl	$64, %edx
#APP
# 30 "src/misc.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7124:
#APP
# 30 "src/misc.c" 1
	movw %ES:19, %dx
# 0 "" 2
.LVL1:
#NO_APP
.LBE7124:
	movw	%dx, 28(%eax)
	.loc 1 31 0
	ret
	.cfi_endproc
.LFE77:
	.size	handle_12, .-handle_12
	.section	.text.handle_11,"ax",@progbits
.globl handle_11
	.type	handle_11, @function
handle_11:
.LFB78:
	.loc 1 36 0
	.cfi_startproc
.LVL2:
	.loc 1 38 0
	movl	$64, %edx
#APP
# 38 "src/misc.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7125:
#APP
# 38 "src/misc.c" 1
	movw %ES:16, %dx
# 0 "" 2
.LVL3:
#NO_APP
.LBE7125:
	movw	%dx, 28(%eax)
	.loc 1 39 0
	ret
	.cfi_endproc
.LFE78:
	.size	handle_11, .-handle_11
	.section	.text.handle_10,"ax",@progbits
.globl handle_10
	.type	handle_10, @function
handle_10:
.LFB80:
	.loc 1 51 0
	.cfi_startproc
.LVL4:
	.loc 1 54 0
	ret
	.cfi_endproc
.LFE80:
	.size	handle_10, .-handle_10
	.section	.text.handle_02,"ax",@progbits
.globl handle_02
	.type	handle_02, @function
handle_02:
.LFB81:
	.loc 1 59 0
	.cfi_startproc
	.loc 1 59 0
	movl	$__func__.2106, %ecx
.LVL5:
.LBB7126:
.LBB7127:
.LBB7128:
.LBB7129:
.LBB7130:
.LBB7131:
.LBB7132:
.LBB7133:
.LBB7134:
	.file 2 "src/ioport.h"
	.loc 2 83 0
	movl	$1026, %edx
.LVL6:
.L9:
.LBE7134:
.LBE7133:
.LBE7132:
.LBE7131:
.LBE7130:
.LBB7139:
	.file 3 "src/output.c"
	.loc 3 161 0
#APP
# 161 "src/output.c" 1
	movb %CS:(%ecx), %al
# 0 "" 2
#NO_APP
.LBE7139:
	.loc 3 162 0
	testb	%al, %al
	je	.L8
.LBB7140:
.LBB7138:
.LBB7137:
.LBB7136:
.LBB7135:
	.loc 2 83 0
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7135:
.LBE7136:
.LBE7137:
.LBE7138:
.LBE7140:
.LBE7129:
	.loc 3 160 0
	incl	%ecx
	jmp	.L9
.L8:
.LBE7128:
.LBE7127:
.LBB7141:
.LBB7142:
.LBB7143:
.LBB7144:
.LBB7145:
	.loc 2 83 0
	movl	$1026, %edx
	movb	$10, %al
.LVL7:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7145:
.LBE7144:
.LBE7143:
.LBE7142:
.LBE7141:
.LBE7126:
	.loc 1 61 0
	ret
	.cfi_endproc
.LFE81:
	.size	handle_02, .-handle_02
	.section	.text.handle_75,"ax",@progbits
.globl handle_75
	.type	handle_75, @function
handle_75:
.LFB83:
	.loc 1 75 0
	.cfi_startproc
	pushl	%edi
.LCFI0:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI1:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI2:
	.cfi_def_cfa_offset 16
	.loc 1 75 0
	movl	$__func__.2165, %ecx
.LVL8:
.LBB7146:
.LBB7147:
.LBB7148:
.LBB7149:
.LBB7150:
.LBB7151:
.LBB7152:
.LBB7153:
.LBB7154:
	.loc 2 83 0
	movl	$1026, %edx
.LVL9:
.L14:
.LBE7154:
.LBE7153:
.LBE7152:
.LBE7151:
.LBE7150:
.LBB7159:
	.loc 3 161 0
#APP
# 161 "src/output.c" 1
	movb %CS:(%ecx), %al
# 0 "" 2
#NO_APP
.LBE7159:
	.loc 3 162 0
	testb	%al, %al
	je	.L13
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
.LBB7160:
.LBB7158:
.LBB7157:
.LBB7156:
.LBB7155:
	.loc 2 83 0
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7155:
.LBE7156:
.LBE7157:
.LBE7158:
.LBE7160:
.LBE7149:
	.loc 3 160 0
	incl	%ecx
	jmp	.L14
.L13:
.LBE7148:
.LBE7147:
.LBB7161:
.LBB7162:
.LBB7163:
.LBB7164:
.LBB7165:
	.loc 2 83 0
	movl	$1026, %edx
	movb	$10, %al
.LVL10:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7165:
.LBE7164:
.LBE7163:
.LBE7162:
.LBE7161:
.LBE7146:
.LBB7166:
.LBB7167:
	.loc 2 83 0
	xorl	%eax, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $240
# 0 "" 2
#NO_APP
.LBE7167:
.LBE7166:
.LBB7168:
.LBB7169:
.LBB7170:
	movb	$32, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $160
# 0 "" 2
#NO_APP
.LBE7170:
.LBE7169:
.LBB7171:
.LBB7172:
.LBB7173:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE7173:
.LBE7172:
.LBE7171:
.LBE7168:
	.loc 1 84 0
	xorl	%eax, %eax
.LVL11:
#APP
# 84 "src/misc.c" 1
	pushl %ebp
sti
stc
int $2
pushfl
popl %ecx
cli
cld
popl %ebp
# 0 "" 2
.LVL12:
	.loc 1 85 0
#NO_APP
	popl	%ebx
	popl	%esi
	popl	%edi
	ret
	.cfi_endproc
.LFE83:
	.size	handle_75, .-handle_75
	.section	.text.allocSpace.3243,"ax",@progbits
	.type	allocSpace.3243, @function
allocSpace.3243:
.LFB147:
	.file 4 "src/pmm.c"
	.loc 4 65 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
.LCFI3:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI4:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI5:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI6:
	.cfi_def_cfa_offset 20
	subl	$4, %esp
.LCFI7:
	.cfi_def_cfa_offset 24
	movl	24(%esp), %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 4 67 0
	xorl	%esi, %esi
#APP
# 67 "src/pmm.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7174:
#APP
# 67 "src/pmm.c" 1
	addr32 movl %ES:(%eax), %esi
# 0 "" 2
.LVL14:
#NO_APP
.LBE7174:
.LBB7175:
	.loc 4 68 0
	xorl	%ebp, %ebp
	.loc 4 70 0
	negl	%ecx
.LVL15:
.LBE7175:
	.loc 4 67 0
	jmp	.L17
.LVL16:
.L21:
.LBB7180:
	.loc 4 68 0
#APP
# 68 "src/pmm.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
.LBB7176:
#APP
# 68 "src/pmm.c" 1
	addr32 movl %ES:12(%esi), %eax
# 0 "" 2
.LVL17:
#NO_APP
	movl	%eax, (%esp)
.LBE7176:
	.loc 4 69 0
#APP
# 69 "src/pmm.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
.LBB7177:
#APP
# 69 "src/pmm.c" 1
	addr32 movl %ES:16(%esi), %edi
# 0 "" 2
#NO_APP
.LBE7177:
	.loc 4 70 0
	movl	%edi, %eax
.LVL18:
	subl	%edx, %eax
	andl	%ecx, %eax
	.loc 4 71 0
	cmpl	%edi, %eax
	ja	.L18
	cmpl	(%esp), %eax
	jb	.L18
.LBB7178:
	.loc 4 73 0
	xorl	%ecx, %ecx
#APP
# 73 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB7179:
#APP
# 73 "src/pmm.c" 1
	addr32 movl %ES:4(%esi), %ebp
# 0 "" 2
.LVL19:
#NO_APP
.LBE7179:
	.loc 4 74 0
	testl	%ebx, %ebx
	jne	.L19
	.loc 4 75 0
	movl	%eax, %ebx
.LVL20:
.L19:
	.loc 4 76 0
	xorl	%ecx, %ecx
#APP
# 76 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
# 76 "src/pmm.c" 1
	addr32 movl %esi, %ES:(%ebx)
# 0 "" 2
	.loc 4 77 0
# 77 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
# 77 "src/pmm.c" 1
	addr32 movl %ebp, %ES:4(%ebx)
# 0 "" 2
	.loc 4 78 0
# 78 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
# 78 "src/pmm.c" 1
	addr32 movl %eax, %ES:8(%ebx)
# 0 "" 2
	.loc 4 79 0
# 79 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	leal	(%eax,%edx), %edx
.LVL21:
#APP
# 79 "src/pmm.c" 1
	addr32 movl %edx, %ES:12(%ebx)
# 0 "" 2
	.loc 4 80 0
# 80 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
# 80 "src/pmm.c" 1
	addr32 movl %edi, %ES:16(%ebx)
# 0 "" 2
	.loc 4 82 0
# 82 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
# 82 "src/pmm.c" 1
	addr32 movl %eax, %ES:16(%esi)
# 0 "" 2
	.loc 4 83 0
# 83 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
# 83 "src/pmm.c" 1
	addr32 movl %ebx, %ES:4(%esi)
# 0 "" 2
	.loc 4 84 0
# 84 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
# 84 "src/pmm.c" 1
	addr32 movl %ebx, %ES:(%ebp)
# 0 "" 2
	.loc 4 85 0
#NO_APP
	jmp	.L20
.LVL22:
.L18:
.LBE7178:
.LBE7180:
	.loc 4 67 0
#APP
# 67 "src/pmm.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
.LBB7181:
#APP
# 67 "src/pmm.c" 1
	addr32 movl %ES:(%esi), %esi
# 0 "" 2
.LVL23:
#NO_APP
.L17:
.LBE7181:
	testl	%esi, %esi
	jne	.L21
	xorl	%eax, %eax
.LVL24:
.L20:
.LVL25:
	.loc 4 89 0
	popl	%edx
.LCFI8:
	.cfi_def_cfa_offset 20
.LVL26:
	popl	%ebx
.LVL27:
	popl	%esi
.LVL28:
	popl	%edi
.LVL29:
	popl	%ebp
.LVL30:
	ret	$4
	.cfi_endproc
.LFE147:
	.size	allocSpace.3243, .-allocSpace.3243
	.section	.text.freeSpace.3524,"ax",@progbits
	.type	freeSpace.3524, @function
freeSpace.3524:
.LFB148:
	.loc 4 94 0
	.cfi_startproc
.LVL31:
	pushl	%edi
.LCFI9:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI10:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI11:
	.cfi_def_cfa_offset 16
	.loc 4 95 0
	xorl	%edx, %edx
#APP
# 95 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7182:
#APP
# 95 "src/pmm.c" 1
	addr32 movl %ES:(%eax), %ecx
# 0 "" 2
.LVL32:
#NO_APP
.LBE7182:
	.loc 4 96 0
#APP
# 96 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7183:
#APP
# 96 "src/pmm.c" 1
	addr32 movl %ES:4(%eax), %ebx
# 0 "" 2
.LVL33:
#NO_APP
.LBE7183:
	.loc 4 97 0
#APP
# 97 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
# 97 "src/pmm.c" 1
	addr32 movl %ecx, %ES:(%ebx)
# 0 "" 2
	.loc 4 98 0
#NO_APP
	testl	%ecx, %ecx
	je	.L26
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.loc 4 99 0
#APP
# 99 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7184:
#APP
# 99 "src/pmm.c" 1
	addr32 movl %ES:16(%ecx), %edi
# 0 "" 2
.LVL34:
#NO_APP
.LBE7184:
#APP
# 99 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7185:
#APP
# 99 "src/pmm.c" 1
	addr32 movl %ES:8(%eax), %esi
# 0 "" 2
.LVL35:
#NO_APP
.LBE7185:
	cmpl	%esi, %edi
	jne	.L25
	.loc 4 100 0
#APP
# 100 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7186:
#APP
# 100 "src/pmm.c" 1
	addr32 movl %ES:16(%eax), %eax
# 0 "" 2
.LVL36:
#NO_APP
.LBE7186:
#APP
# 100 "src/pmm.c" 1
	addr32 movl %eax, %ES:16(%ecx)
# 0 "" 2
.LVL37:
#NO_APP
.L25:
	.loc 4 101 0
	xorl	%eax, %eax
.LVL38:
#APP
# 101 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
# 101 "src/pmm.c" 1
	addr32 movl %ebx, %ES:4(%ecx)
# 0 "" 2
.LVL39:
#NO_APP
.L26:
	.loc 4 103 0
	popl	%ebx
.LVL40:
	popl	%esi
.LVL41:
	popl	%edi
.LVL42:
	ret
	.cfi_endproc
.LFE148:
	.size	freeSpace.3524, .-freeSpace.3524
	.section	.text.pmm_free.1862,"ax",@progbits
	.type	pmm_free.1862, @function
pmm_free.1862:
.LFB158:
	.loc 4 371 0
	.cfi_startproc
.LVL43:
	pushl	%esi
.LCFI12:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.LCFI13:
	.cfi_def_cfa_offset 12
	.loc 4 371 0
	xorl	%ecx, %ecx
.LVL44:
.LBB7187:
.LBB7188:
.LBB7189:
	.loc 4 161 0
	xorl	%edx, %edx
.LVL45:
.L31:
#APP
# 161 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7190:
#APP
# 161 "src/pmm.c" 1
	addr32 movl %ES:Zones(,%ecx,4), %ebx
# 0 "" 2
.LVL46:
#NO_APP
.LBE7190:
	.loc 4 163 0
#APP
# 163 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7191:
#APP
# 163 "src/pmm.c" 1
	addr32 movl %ES:(%ebx), %ebx
# 0 "" 2
.LVL47:
#NO_APP
	jmp	.L28
	.cfi_offset 3, -12
	.cfi_offset 6, -8
.L30:
.LBE7191:
	.loc 4 164 0
#APP
# 164 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7192:
#APP
# 164 "src/pmm.c" 1
	addr32 movl %ES:8(%ebx), %esi
# 0 "" 2
#NO_APP
.LBE7192:
	cmpl	%eax, %esi
	je	.L29
	.loc 4 163 0
#APP
# 163 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7193:
#APP
# 163 "src/pmm.c" 1
	addr32 movl %ES:(%ebx), %ebx
# 0 "" 2
#NO_APP
.L28:
.LBE7193:
	testl	%ebx, %ebx
	jne	.L30
.LBE7189:
	.loc 4 160 0
	incl	%ecx
	cmpl	$5, %ecx
	jne	.L31
.L29:
.LBE7188:
.LBE7187:
	.loc 4 373 0
	cmpl	%ebx, %eax
	je	.L32
	testl	%ebx, %ebx
	je	.L32
	xorl	%edx, %edx
#APP
# 373 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7194:
#APP
# 373 "src/pmm.c" 1
	addr32 movl %ES:12(%ebx), %edx
# 0 "" 2
.LVL48:
#NO_APP
.LBE7194:
	cmpl	%edx, %eax
	je	.L32
	.loc 4 378 0
	movl	%ebx, %eax
.LVL49:
	call	freeSpace.3524
.LVL50:
	.loc 4 379 0
	leal	-20(%ebx), %eax
	call	freeSpace.3524
	xorl	%eax, %eax
	.loc 4 380 0
	jmp	.L33
.LVL51:
.L32:
	orl	$-1, %eax
.LVL52:
.L33:
	.loc 4 381 0
	popl	%ebx
.LVL53:
	popl	%esi
.LVL54:
	ret
	.cfi_endproc
.LFE158:
	.size	pmm_free.1862, .-pmm_free.1862
	.section	.text.pmm_getspace.4532,"ax",@progbits
	.type	pmm_getspace.4532, @function
pmm_getspace.4532:
.LFB159:
	.loc 4 386 0
	.cfi_startproc
.LVL55:
	pushl	%edi
.LCFI14:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI15:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI16:
	.cfi_def_cfa_offset 16
	movl	%eax, %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.loc 4 391 0
	xorl	%eax, %eax
.LVL56:
#APP
# 391 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7195:
#APP
# 391 "src/pmm.c" 1
	addr32 movl %ES:(%ebx), %edx
# 0 "" 2
.LVL57:
#NO_APP
.LBE7195:
.LBB7196:
	.loc 4 392 0
	xorl	%esi, %esi
.LBE7196:
	.loc 4 391 0
	jmp	.L37
.LVL58:
.L39:
.LBB7199:
	.loc 4 392 0
#APP
# 392 "src/pmm.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7197:
#APP
# 392 "src/pmm.c" 1
	addr32 movl %ES:16(%edx), %ecx
# 0 "" 2
#NO_APP
.LBE7197:
#APP
# 392 "src/pmm.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7198:
#APP
# 392 "src/pmm.c" 1
	addr32 movl %ES:12(%edx), %edi
# 0 "" 2
#NO_APP
	subl	%edi, %ecx
	cmpl	%ecx, %eax
	jae	.L38
	movl	%ecx, %eax
.L38:
.LBE7198:
.LBE7199:
	.loc 4 391 0
#APP
# 391 "src/pmm.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7200:
#APP
# 391 "src/pmm.c" 1
	addr32 movl %ES:(%edx), %edx
# 0 "" 2
#NO_APP
.L37:
.LBE7200:
	testl	%edx, %edx
	jne	.L39
	.loc 4 397 0
	cmpl	$ZoneTmpHigh, %ebx
	je	.L40
	cmpl	$ZoneTmpLow, %ebx
	jne	.L41
.L40:
	.loc 4 401 0
	cmpl	$48, %eax
	ja	.L42
	xorl	%eax, %eax
	jmp	.L41
.L42:
	.loc 4 403 0
	subl	$48, %eax
.L41:
.LVL59:
	.loc 4 404 0
	popl	%ebx
.LVL60:
	popl	%esi
	popl	%edi
.LVL61:
	ret
	.cfi_endproc
.LFE159:
	.size	pmm_getspace.4532, .-pmm_getspace.4532
	.section	.text.floppy_pio.12615,"ax",@progbits
	.type	floppy_pio.12615, @function
floppy_pio.12615:
.LFB601:
	.file 5 "src/floppy.c"
	.loc 5 224 0
	.cfi_startproc
.LVL62:
	pushl	%ebp
.LCFI17:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI18:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI19:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI20:
	.cfi_def_cfa_offset 20
	subl	$4, %esp
.LCFI21:
	.cfi_def_cfa_offset 24
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movb	%dl, 3(%esp)
	.loc 5 224 0
	movzbl	1(%eax), %esi
	andl	$1, %esi
.LVL63:
.LBB7201:
.LBB7202:
.LBB7203:
	.loc 5 200 0
	movl	$64, %ecx
#APP
# 200 "src/floppy.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB7204:
#APP
# 200 "src/floppy.c" 1
	movb %ES:62, %al
# 0 "" 2
.LVL64:
#NO_APP
.LBE7204:
.LBB7205:
	andl	$127, %eax
.LVL65:
#APP
# 200 "src/floppy.c" 1
	movb %al, %ES:62
# 0 "" 2
#NO_APP
.LBE7205:
.LBE7203:
.LBB7206:
.LBB7207:
	.loc 2 93 0
	movl	$1010, %edx
.LVL66:
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL67:
#NO_APP
	movl	%eax, %edi
.LVL68:
.LBE7207:
.LBE7206:
	.loc 5 205 0
	movl	%esi, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	movl	%eax, %ebp
	andl	$-16, %ebp
.LVL69:
	addl	$32, %ebp
.LVL70:
	.loc 5 207 0
	movl	%esi, %eax
	orl	$12, %eax
.LBB7208:
.LBB7209:
	.loc 2 83 0
	orl	%ebp, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7209:
.LBE7208:
.LBB7210:
	.loc 5 212 0
#APP
# 212 "src/floppy.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movb	$37, %al
#APP
# 212 "src/floppy.c" 1
	movb %al, %ES:64
# 0 "" 2
#NO_APP
.LBE7210:
.LBB7211:
.LBB7212:
	.loc 2 93 0
	movb	$-12, %dl
.L47:
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL71:
#NO_APP
.LBE7212:
.LBE7211:
	.loc 5 215 0
	andl	$192, %eax
.LVL72:
	addl	$-128, %eax
	jne	.L47
	.loc 5 218 0
	andl	$4, %edi
	jne	.L48
.LBB7213:
.LBB7214:
	.loc 5 182 0
	movl	$64, %ecx
.LBB7215:
	xorl	%edx, %edx
.LVL73:
.L61:
.LBE7215:
#APP
# 182 "src/floppy.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB7216:
#APP
# 182 "src/floppy.c" 1
	movb %ES:64(%edx), %al
# 0 "" 2
.LVL74:
#NO_APP
.LBE7216:
	testb	%al, %al
	je	.L48
	.loc 5 184 0
#APP
# 184 "src/floppy.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB7217:
#APP
# 184 "src/floppy.c" 1
	movb %ES:62(%edx), %al
# 0 "" 2
.LVL75:
#NO_APP
.LBE7217:
	.loc 5 185 0
	testb	%al, %al
	js	.L49
.LBB7218:
.LBB7219:
.LBB7220:
.LBB7221:
	.file 6 "src/stacks.c"
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
	jmp	.L61
.L49:
.LBE7221:
.LBE7220:
.LBE7219:
.LBE7218:
	.loc 5 192 0
	andl	$127, %eax
.LVL76:
.LBB7222:
	.loc 5 193 0
	movl	$64, %edx
#APP
# 193 "src/floppy.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorb	%dl, %dl
#APP
# 193 "src/floppy.c" 1
	movb %al, %ES:62(%edx)
# 0 "" 2
.LVL77:
#NO_APP
.L48:
	xorl	%ecx, %ecx
.LVL78:
.LBE7222:
.LBE7214:
.LBE7213:
.LBE7202:
.LBE7201:
.LBB7223:
.LBB7224:
	.loc 2 83 0
	movl	$1013, %edx
	jmp	.L51
.L52:
	movb	(%ebx), %al
.LVL79:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7224:
.LBE7223:
	.loc 5 229 0
	incl	%ecx
.LVL80:
	incl	%ebx
.LVL81:
.L51:
	cmpb	3(%esp), %cl
	jb	.L52
.LBB7225:
.LBB7226:
	.loc 5 182 0
	movl	$64, %ecx
.LVL82:
.LBB7227:
	xorl	%edx, %edx
.LVL83:
.L62:
.LBE7227:
#APP
# 182 "src/floppy.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB7228:
#APP
# 182 "src/floppy.c" 1
	movb %ES:64(%edx), %al
# 0 "" 2
.LVL84:
#NO_APP
.LBE7228:
	testb	%al, %al
	je	.L53
	.loc 5 184 0
#APP
# 184 "src/floppy.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB7229:
#APP
# 184 "src/floppy.c" 1
	movb %ES:62(%edx), %al
# 0 "" 2
.LVL85:
#NO_APP
.LBE7229:
	.loc 5 185 0
	testb	%al, %al
	js	.L54
.LBB7230:
.LBB7231:
.LBB7232:
.LBB7233:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
	jmp	.L62
.L54:
.LBE7233:
.LBE7232:
.LBE7231:
.LBE7230:
	.loc 5 192 0
	andl	$127, %eax
.LVL86:
.LBB7234:
	.loc 5 193 0
	movl	$64, %edx
#APP
# 193 "src/floppy.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorb	%dl, %dl
#APP
# 193 "src/floppy.c" 1
	movb %al, %ES:62(%edx)
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
.LVL87:
	jmp	.L56
.LVL88:
.L53:
.LBE7234:
.LBE7226:
.LBE7225:
.LBB7235:
.LBB7236:
.LBB7237:
.LBB7238:
	.loc 2 93 0
	movl	$1010, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL89:
#NO_APP
	movb	%al, %cl
.LVL90:
.LBE7238:
.LBE7237:
.LBB7239:
.LBB7240:
	.loc 2 83 0
	movl	%ecx, %eax
.LVL91:
	andl	$251, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7240:
.LBE7239:
.LBB7241:
.LBB7242:
	movb	%cl, %al
.LVL92:
	orl	$4, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7242:
.LBE7241:
.LBB7243:
.LBB7244:
	.loc 2 93 0
	movb	$-12, %dl
.L57:
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL93:
#NO_APP
.LBE7244:
.LBE7243:
	.loc 5 172 0
	andl	$192, %eax
.LVL94:
	addl	$-128, %eax
	jne	.L57
	orl	$-1, %eax
.L56:
.LBE7236:
.LBE7235:
	.loc 5 239 0
	popl	%ecx
.LCFI22:
	.cfi_def_cfa_offset 20
.LVL95:
	popl	%ebx
.LVL96:
	popl	%esi
.LVL97:
	popl	%edi
.LVL98:
	popl	%ebp
.LVL99:
	ret
	.cfi_endproc
.LFE601:
	.size	floppy_pio.12615, .-floppy_pio.12615
	.section	.text.floppy_cmd.12638,"ax",@progbits
	.type	floppy_cmd.12638, @function
floppy_cmd.12638:
.LFB602:
	.loc 5 243 0
	.cfi_startproc
.LVL100:
	pushl	%ebp
.LCFI23:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI24:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI25:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI26:
	.cfi_def_cfa_offset 20
	subl	$4, %esp
.LCFI27:
	.cfi_def_cfa_offset 24
	movl	%ecx, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movb	24(%esp), %cl
.LVL101:
	movb	%cl, 3(%esp)
	.loc 5 245 0
	movl	8(%eax), %ecx
.LVL102:
	.loc 5 248 0
	leal	-1(%edx), %esi
.LVL103:
	.loc 5 250 0
	movl	%ecx, %ebp
	shrl	$16, %ebp
	movzwl	%si, %edx
.LVL104:
	addl	%ecx, %edx
.LVL105:
	shrl	$16, %edx
	movl	$9, %eax
.LVL106:
	cmpl	%edx, %ebp
	jne	.L65
	.loc 5 254 0
	cmpb	$-26, (%ebx)
	setne	%dl
	leal	70(,%edx,4), %edx
.LBB7245:
.LBB7246:
	.loc 2 83 0
	movb	$6, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $10
# 0 "" 2
#NO_APP
.LBE7246:
.LBE7245:
.LBB7247:
.LBB7248:
	xorl	%edi, %edi
	movl	%edi, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $12
# 0 "" 2
#NO_APP
.LBE7248:
.LBE7247:
.LBB7249:
.LBB7250:
	movb	%cl, %al
.LVL107:
#APP
# 83 "src/ioport.h" 1
	outb %al, $4
# 0 "" 2
#NO_APP
.LBE7250:
.LBE7249:
.LBB7251:
.LBB7252:
	movl	%ecx, %eax
.LVL108:
	shrl	$8, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $4
# 0 "" 2
#NO_APP
.LBE7252:
.LBE7251:
.LBB7253:
.LBB7254:
	movl	%edi, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $12
# 0 "" 2
#NO_APP
.LBE7254:
.LBE7253:
.LBB7255:
.LBB7256:
	movl	%esi, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $5
# 0 "" 2
#NO_APP
.LBE7256:
.LBE7255:
.LBB7257:
.LBB7258:
	movl	%esi, %eax
.LVL109:
	shrw	$8, %ax
#APP
# 83 "src/ioport.h" 1
	outb %al, $5
# 0 "" 2
#NO_APP
.LBE7258:
.LBE7257:
.LBB7259:
.LBB7260:
	movb	%dl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $11
# 0 "" 2
#NO_APP
.LBE7260:
.LBE7259:
.LBB7261:
.LBB7262:
	movl	%ebp, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $129
# 0 "" 2
#NO_APP
.LBE7262:
.LBE7261:
.LBB7263:
.LBB7264:
	movb	$2, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $10
# 0 "" 2
#NO_APP
.LBE7264:
.LBE7263:
	.loc 5 276 0
	movzbl	3(%esp), %edx
.LVL110:
	movl	%ebx, %eax
	call	floppy_pio.12615
.LVL111:
	movl	%eax, %edx
.LVL112:
	.loc 5 277 0
	movl	$128, %eax
	testl	%edx, %edx
	jne	.L65
.LBB7265:
.LBB7266:
	.loc 2 93 0
	movl	$1012, %edx
.LVL113:
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL114:
#NO_APP
.LBE7266:
.LBE7265:
	.loc 5 281 0
	movl	%eax, %edx
.LVL115:
	andl	$192, %edx
	movl	$32, %eax
	cmpl	$192, %edx
	jne	.L65
	xorl	%ecx, %ecx
.LBB7267:
.LBB7268:
.LBB7269:
	.loc 2 93 0
	movl	$1013, %edx
.LBE7269:
.LBE7268:
.LBB7271:
	.loc 5 289 0
	movl	$64, %esi
.LVL116:
.L70:
.LBE7271:
.LBB7272:
.LBB7270:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL117:
#NO_APP
.LBE7270:
.LBE7272:
	.loc 5 288 0
	movb	%al, (%ebx,%ecx)
.LBB7273:
	.loc 5 289 0
#APP
# 289 "src/floppy.c" 1
	movw %si, %ES
# 0 "" 2
# 289 "src/floppy.c" 1
	movb %al, %ES:66(%ecx)
# 0 "" 2
#NO_APP
	incl	%ecx
.LBE7273:
.LBE7267:
	.loc 5 286 0
	cmpl	$7, %ecx
	jne	.L70
	xorl	%eax, %eax
.LVL118:
.L65:
	.loc 5 293 0
	popl	%ebx
.LCFI28:
	.cfi_def_cfa_offset 20
.LVL119:
	popl	%ebx
	popl	%esi
.LVL120:
	popl	%edi
	popl	%ebp
	ret	$4
	.cfi_endproc
.LFE602:
	.size	floppy_cmd.12638, .-floppy_cmd.12638
	.section	.text.check_recal_drive.12920,"ax",@progbits
	.type	check_recal_drive.12920, @function
check_recal_drive.12920:
.LFB606:
	.loc 5 363 0
	.cfi_startproc
.LVL121:
	pushl	%edi
.LCFI29:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI30:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI31:
	.cfi_def_cfa_offset 16
	subl	$12, %esp
.LCFI32:
	.cfi_def_cfa_offset 28
	movl	%eax, %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
.LBB7274:
	.loc 5 364 0
#APP
# 364 "src/floppy.c" 1
	movl %CS:20(%eax), %eax
# 0 "" 2
.LVL122:
#NO_APP
.LBE7274:
	.loc 5 365 0
	movl	$64, %edx
#APP
# 365 "src/floppy.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7275:
#APP
# 365 "src/floppy.c" 1
	movb %ES:62, %cl
# 0 "" 2
.LVL123:
#NO_APP
.LBE7275:
	movzbl	%al, %esi
.LVL124:
	movzbl	%cl, %ecx
.LVL125:
	btl	%esi, %ecx
	jnc	.L74
	.loc 5 366 0
#APP
# 366 "src/floppy.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7276:
#APP
# 366 "src/floppy.c" 1
	movb %ES:144(%esi), %dl
# 0 "" 2
.LVL126:
#NO_APP
.LBE7276:
	.loc 5 365 0
	andb	$16, %dl
	jne	.L75
.L74:
.LBB7277:
.LBB7278:
	.loc 5 311 0
	movb	$7, (%esp)
	.loc 5 312 0
	movb	%al, 1(%esp)
	.loc 5 313 0
	movl	%esp, %eax
.LVL127:
	movl	$2, %edx
.LVL128:
	call	floppy_pio.12615
.LVL129:
.LBB7279:
	.loc 5 315 0
	movl	$64, %eax
#APP
# 315 "src/floppy.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7280:
#APP
# 315 "src/floppy.c" 1
	movb %ES:62, %dl
# 0 "" 2
.LVL130:
#NO_APP
.LBE7280:
.LBB7281:
	movl	$1, %edi
	movl	%esi, %ecx
	sall	%cl, %edi
	orl	%edi, %edx
.LVL131:
#APP
# 315 "src/floppy.c" 1
	movb %dl, %ES:62
# 0 "" 2
#NO_APP
.LBE7281:
.LBE7279:
.LBB7282:
.LBB7283:
	.loc 5 303 0
#APP
# 303 "src/floppy.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
.LVL132:
#APP
# 303 "src/floppy.c" 1
	movb %dl, %ES:148(%esi)
# 0 "" 2
#NO_APP
.LBE7283:
.LBE7282:
.LBE7278:
.LBE7277:
.LBB7284:
.LBB7285:
.LBB7286:
	.loc 5 353 0
#APP
# 353 "src/floppy.c" 1
	movb %CS:1(%ebx), %dl
# 0 "" 2
.LVL133:
#NO_APP
.LBE7286:
.LBB7287:
.LBB7288:
	.loc 5 354 0
	movzbl	%dl, %edx
.LVL134:
#APP
# 354 "src/floppy.c" 1
	movb %CS:FloppyInfo+6(,%edx,8), %cl
# 0 "" 2
.LVL135:
#NO_APP
.LBE7288:
#APP
# 354 "src/floppy.c" 1
	movw %ax, %ES
# 0 "" 2
# 354 "src/floppy.c" 1
	movb %cl, %ES:139
# 0 "" 2
#NO_APP
.LBE7287:
.LBB7289:
	.loc 5 355 0
#APP
# 355 "src/floppy.c" 1
	movl %CS:20(%ebx), %ecx
# 0 "" 2
.LVL136:
#NO_APP
.LBE7289:
.LBB7290:
.LBB7291:
	.loc 5 356 0
#APP
# 356 "src/floppy.c" 1
	movb %CS:FloppyInfo+7(,%edx,8), %dl
# 0 "" 2
.LVL137:
#NO_APP
.LBE7291:
#APP
# 356 "src/floppy.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movzbl	%cl, %eax
#APP
# 356 "src/floppy.c" 1
	movb %dl, %ES:144(%eax)
# 0 "" 2
.LVL138:
#NO_APP
.L75:
.LBE7290:
.LBE7285:
.LBE7284:
	.loc 5 375 0
	xorl	%eax, %eax
.LVL139:
	addl	$12, %esp
	popl	%ebx
.LVL140:
	popl	%esi
	popl	%edi
	ret
	.cfi_endproc
.LFE606:
	.size	check_recal_drive.12920, .-check_recal_drive.12920
	.section	.text.lba2chs.13002,"ax",@progbits
	.type	lba2chs.13002, @function
lba2chs.13002:
.LFB607:
	.loc 5 384 0
	.cfi_startproc
.LVL141:
	pushl	%edi
.LCFI33:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI34:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI35:
	.cfi_def_cfa_offset 16
	movl	%eax, %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%edx, %esi
	.loc 5 387 0
	movl	(%eax), %eax
.LVL142:
	incl	%eax
.LVL143:
.LBB7292:
	.loc 5 388 0
	movl	12(%ebx), %edx
.LVL144:
#APP
# 388 "src/floppy.c" 1
	movw %CS:6(%edx), %di
# 0 "" 2
.LVL145:
#NO_APP
.LBE7292:
	.loc 5 389 0
	movzwl	%di, %edi
.LVL146:
	xorl	%edx, %edx
	divl	%edi
.LVL147:
	movb	%dl, (%ecx)
.LBB7293:
	.loc 5 392 0
	movl	12(%ebx), %edx
#APP
# 392 "src/floppy.c" 1
	movw %CS:2(%edx), %cx
# 0 "" 2
.LVL148:
#NO_APP
.LBE7293:
	.loc 5 393 0
	movzwl	%cx, %ecx
.LVL149:
	xorl	%edx, %edx
	divl	%ecx
	movl	16(%esp), %ecx
	movb	%dl, (%ecx)
	.loc 5 396 0
	movb	%al, (%esi)
	.loc 5 397 0
	popl	%ebx
.LVL150:
	popl	%esi
.LVL151:
	popl	%edi
	ret	$4
	.cfi_endproc
.LFE607:
	.size	lba2chs.13002, .-lba2chs.13002
	.section	.text.process_floppy_op.1221,"ax",@progbits
	.type	process_floppy_op.1221, @function
process_floppy_op.1221:
.LFB613:
	.loc 5 549 0
	.cfi_startproc
.LVL152:
	pushl	%edi
.LCFI36:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI37:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI38:
	.cfi_def_cfa_offset 16
	subl	$16, %esp
.LCFI39:
	.cfi_def_cfa_offset 32
	movl	%eax, %esi
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.loc 5 553 0
	movb	18(%eax), %al
.LVL153:
	cmpb	$3, %al
	je	.L83
	ja	.L86
	testb	%al, %al
	je	.L81
	cmpb	$2, %al
	jne	.L80
	jmp	.L100
.L86:
	cmpb	$4, %al
	je	.L84
	cmpb	$5, %al
	jne	.L80
	jmp	.L101
.L81:
.LBB7319:
.LBB7320:
.LBB7321:
	.loc 5 403 0
	movl	12(%esi), %edx
#APP
# 403 "src/floppy.c" 1
	movl %CS:20(%edx), %edx
# 0 "" 2
.LVL154:
#NO_APP
.LBE7321:
	.loc 5 404 0
	movzbl	%dl, %edx
.LVL155:
.LBB7322:
.LBB7323:
	.loc 5 303 0
	movl	$64, %ecx
#APP
# 303 "src/floppy.c" 1
	movw %cx, %ES
# 0 "" 2
# 303 "src/floppy.c" 1
	movb %al, %ES:148(%edx)
# 0 "" 2
#NO_APP
	xorl	%ebx, %ebx
.LVL156:
.LBE7323:
.LBE7322:
.LBE7320:
.LBE7319:
	.loc 5 555 0
	jmp	.L87
.LVL157:
.L100:
.LBB7324:
.LBB7325:
	.loc 5 412 0
	movl	12(%esi), %eax
	call	check_recal_drive.12920
	movl	%eax, %ebx
.LVL158:
	.loc 5 413 0
	testl	%eax, %eax
	jne	.L93
.LVL159:
	.loc 5 417 0
	leal	14(%esp), %ecx
	leal	13(%esp), %edx
	leal	15(%esp), %eax
.LVL160:
	pushl	%eax
.LCFI40:
	.cfi_def_cfa_offset 36
	movl	%esi, %eax
	.cfi_escape 0x2e,0x4
	call	lba2chs.13002
.LCFI41:
	.cfi_def_cfa_offset 32
.LBB7326:
	.loc 5 420 0
	movl	12(%esi), %eax
#APP
# 420 "src/floppy.c" 1
	movl %CS:20(%eax), %edi
# 0 "" 2
.LVL161:
#NO_APP
.LBE7326:
	.loc 5 422 0
	movb	$-26, 1(%esp)
	.loc 5 423 0
	movb	15(%esp), %dl
.LVL162:
	leal	0(,%edx,4), %eax
	orl	%edi, %eax
.LVL163:
	movb	%al, 2(%esp)
	.loc 5 424 0
	movb	13(%esp), %al
.LVL164:
	movb	%al, 3(%esp)
	.loc 5 425 0
	movb	%dl, 4(%esp)
	.loc 5 426 0
	movb	14(%esp), %al
.LVL165:
	movb	%al, 5(%esp)
	.loc 5 427 0
	movb	$2, 6(%esp)
	.loc 5 428 0
	movl	16(%esi), %edx
	leal	-1(%eax,%edx), %eax
	movb	%al, 7(%esp)
	.loc 5 429 0
	movb	$27, 8(%esp)
	.loc 5 430 0
	movb	$-1, 9(%esp)
	.loc 5 432 0
	leal	1(%esp), %ecx
	sall	$9, %edx
	movzwl	%dx, %edx
	pushl	$9
.LCFI42:
	.cfi_def_cfa_offset 36
	movl	%esi, %eax
	call	floppy_cmd.12638
.LCFI43:
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	.loc 5 433 0
	testl	%eax, %eax
	jne	.L93
.LVL166:
	.loc 5 436 0
	testb	$-64, 1(%esp)
	jne	.L89
	.loc 5 442 0
	andl	$255, %edi
.LVL167:
.LBB7327:
.LBB7328:
	.loc 5 303 0
	movl	$64, %eax
.LVL168:
#APP
# 303 "src/floppy.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	13(%esp), %al
	jmp	.L97
.LVL169:
.L89:
	movl	$32, %ebx
.LVL170:
.L88:
	jmp	.L93
.LVL171:
.L83:
.LBE7328:
.LBE7327:
.LBE7325:
.LBE7324:
.LBB7329:
.LBB7330:
	.loc 5 453 0
	movl	12(%esi), %eax
	.cfi_escape 0x2e,0x0
	call	check_recal_drive.12920
	movl	%eax, %ebx
.LVL172:
	.loc 5 454 0
	testl	%eax, %eax
	jne	.L93
.LVL173:
	.loc 5 458 0
	leal	14(%esp), %ecx
	leal	15(%esp), %edx
	leal	13(%esp), %eax
.LVL174:
	pushl	%eax
.LCFI44:
	.cfi_def_cfa_offset 36
	movl	%esi, %eax
	.cfi_escape 0x2e,0x4
	call	lba2chs.13002
.LCFI45:
	.cfi_def_cfa_offset 32
.LBB7331:
	.loc 5 461 0
	movl	12(%esi), %eax
#APP
# 461 "src/floppy.c" 1
	movl %CS:20(%eax), %edi
# 0 "" 2
.LVL175:
#NO_APP
.LBE7331:
	.loc 5 463 0
	movb	$-59, 1(%esp)
	.loc 5 464 0
	movb	13(%esp), %dl
.LVL176:
	leal	0(,%edx,4), %eax
	orl	%edi, %eax
.LVL177:
	movb	%al, 2(%esp)
	.loc 5 465 0
	movb	15(%esp), %al
.LVL178:
	movb	%al, 3(%esp)
	.loc 5 466 0
	movb	%dl, 4(%esp)
	.loc 5 467 0
	movb	14(%esp), %al
.LVL179:
	movb	%al, 5(%esp)
	.loc 5 468 0
	movb	$2, 6(%esp)
	.loc 5 469 0
	movl	16(%esi), %edx
	leal	-1(%eax,%edx), %eax
	movb	%al, 7(%esp)
	.loc 5 470 0
	movb	$27, 8(%esp)
	.loc 5 471 0
	movb	$-1, 9(%esp)
	.loc 5 473 0
	leal	1(%esp), %ecx
	sall	$9, %edx
	movzwl	%dx, %edx
	pushl	$9
.LCFI46:
	.cfi_def_cfa_offset 36
	movl	%esi, %eax
	call	floppy_cmd.12638
.LCFI47:
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	.loc 5 474 0
	testl	%eax, %eax
	jne	.L93
.LVL180:
	.loc 5 477 0
	testb	$-64, 1(%esp)
	je	.L91
	.loc 5 478 0
	movzbl	2(%esp), %eax
.LVL181:
	andl	$2, %eax
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	andl	$29, %ebx
	addl	$3, %ebx
	jmp	.L93
.LVL182:
.L91:
	.loc 5 486 0
	andl	$255, %edi
.LVL183:
.LBB7332:
.LBB7333:
	.loc 5 303 0
	movl	$64, %eax
.LVL184:
#APP
# 303 "src/floppy.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	15(%esp), %al
.LVL185:
.L97:
#APP
# 303 "src/floppy.c" 1
	movb %al, %ES:148(%edi)
# 0 "" 2
#NO_APP
	jmp	.L87
.L90:
.LVL186:
.L84:
.LBE7333:
.LBE7332:
.LBE7330:
.LBE7329:
.LBB7334:
.LBB7335:
	.loc 5 497 0
	movl	12(%esi), %eax
	.cfi_escape 0x2e,0x0
	call	check_recal_drive.12920
	movl	%eax, %ebx
.LVL187:
	.loc 5 498 0
	testl	%eax, %eax
	jne	.L93
.LVL188:
	.loc 5 502 0
	leal	14(%esp), %ecx
	leal	15(%esp), %edx
	leal	13(%esp), %eax
.LVL189:
	pushl	%eax
.LCFI48:
	.cfi_def_cfa_offset 36
	movl	%esi, %eax
	.cfi_escape 0x2e,0x4
	call	lba2chs.13002
.LCFI49:
	.cfi_def_cfa_offset 32
.LBB7336:
	.loc 5 505 0
	movl	12(%esi), %eax
#APP
# 505 "src/floppy.c" 1
	movl %CS:20(%eax), %eax
# 0 "" 2
.LVL190:
#NO_APP
.LBE7336:
	.loc 5 506 0
	movzbl	%al, %eax
.LVL191:
.LBB7337:
.LBB7338:
	.loc 5 303 0
	movl	$64, %edx
#APP
# 303 "src/floppy.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	15(%esp), %dl
.LVL192:
#APP
# 303 "src/floppy.c" 1
	movb %dl, %ES:148(%ebx,%eax)
# 0 "" 2
#NO_APP
	jmp	.L87
.LVL193:
.L93:
.LBE7338:
.LBE7337:
	.loc 5 509 0
	movw	$0, 16(%esi)
	jmp	.L87
.LVL194:
.L101:
.LBE7335:
.LBE7334:
.LBB7339:
.LBB7340:
	.loc 5 517 0
	movl	12(%esi), %eax
	.cfi_escape 0x2e,0x0
	call	check_recal_drive.12920
	movl	%eax, %ebx
.LVL195:
	.loc 5 518 0
	testl	%eax, %eax
	jne	.L87
.LVL196:
	.loc 5 521 0
	movb	(%esi), %al
.LVL197:
.LBB7341:
	.loc 5 524 0
	movl	12(%esi), %edx
#APP
# 524 "src/floppy.c" 1
	movl %CS:20(%edx), %edi
# 0 "" 2
.LVL198:
#NO_APP
.LBE7341:
	.loc 5 526 0
	movb	$77, 1(%esp)
	.loc 5 527 0
	sall	$2, %eax
.LVL199:
	orl	%edi, %eax
.LVL200:
	movb	%al, 2(%esp)
	.loc 5 528 0
	movb	$2, 3(%esp)
	.loc 5 529 0
	movl	16(%esi), %edx
	movb	%dl, 4(%esp)
	.loc 5 530 0
	movb	$108, 5(%esp)
	.loc 5 531 0
	movb	$-10, 6(%esp)
	.loc 5 533 0
	leal	1(%esp), %ecx
	sall	$2, %edx
	movzwl	%dx, %edx
	pushl	$6
.LCFI50:
	.cfi_def_cfa_offset 36
	movl	%esi, %eax
	.cfi_escape 0x2e,0x4
	call	floppy_cmd.12638
.LCFI51:
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	.loc 5 534 0
	testl	%eax, %eax
	jne	.L87
.LVL201:
	.loc 5 537 0
	movb	1(%esp), %al
.LVL202:
	andb	$-64, %al
	je	.L94
	.loc 5 538 0
	movzbl	2(%esp), %eax
	andl	$2, %eax
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	andl	$29, %ebx
	addl	$3, %ebx
	jmp	.L87
.L94:
	.loc 5 543 0
	andl	$255, %edi
.LVL203:
.LBB7342:
.LBB7343:
	.loc 5 303 0
	movl	$64, %edx
#APP
# 303 "src/floppy.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	jmp	.L97
.LVL204:
.L80:
.LBE7343:
.LBE7342:
.LBE7340:
.LBE7339:
	.loc 5 565 0
	movw	$0, 16(%esi)
	movl	$1, %ebx
.LVL205:
.L87:
	.loc 5 568 0
	movl	%ebx, %eax
	addl	$16, %esp
	popl	%ebx
.LVL206:
	popl	%esi
.LVL207:
	popl	%edi
.LVL208:
	ret
	.cfi_endproc
.LFE613:
	.size	process_floppy_op.1221, .-process_floppy_op.1221
	.section	.text.handle_0e,"ax",@progbits
.globl handle_0e
	.type	handle_0e, @function
handle_0e:
.LFB614:
	.loc 5 578 0
	.cfi_startproc
	pushl	%ebx
.LCFI52:
	.cfi_def_cfa_offset 8
.LBB7344:
.LBB7345:
	.loc 2 93 0
	movl	$1012, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL209:
#NO_APP
.LBE7345:
.LBE7344:
	.loc 5 583 0
	andl	$192, %eax
.LVL210:
	cmpl	$192, %eax
	je	.L103
	.cfi_offset 3, -8
.LBB7346:
.LBB7347:
	.loc 2 83 0
	movb	$-11, %dl
	movb	$8, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7347:
.LBE7346:
.LBB7348:
.LBB7349:
	.loc 2 93 0
	movb	$-12, %dl
.L104:
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL211:
#NO_APP
.LBE7349:
.LBE7348:
	.loc 5 585 0
	andl	$192, %eax
.LVL212:
	cmpl	$192, %eax
	jne	.L104
.LBB7350:
.LBB7351:
	.loc 2 93 0
	movl	$1013, %ebx
.LBE7351:
.LBE7350:
.LBB7353:
.LBB7354:
	movl	$1012, %ecx
.L107:
.LBE7354:
.LBE7353:
.LBB7356:
.LBB7352:
	movl	%ebx, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL213:
#NO_APP
.LBE7352:
.LBE7356:
.LBB7357:
.LBB7355:
	movl	%ecx, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL214:
#NO_APP
.LBE7355:
.LBE7357:
	.loc 5 589 0
	andl	$192, %eax
.LVL215:
	cmpl	$192, %eax
	je	.L107
.L103:
.LBB7358:
	.loc 5 592 0
	movl	$64, %edx
#APP
# 592 "src/floppy.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7359:
#APP
# 592 "src/floppy.c" 1
	movb %ES:62, %al
# 0 "" 2
.LVL216:
#NO_APP
.LBE7359:
.LBB7360:
	orl	$-128, %eax
.LVL217:
#APP
# 592 "src/floppy.c" 1
	movb %al, %ES:62
# 0 "" 2
#NO_APP
.LBE7360:
.LBE7358:
.LBB7361:
.LBB7362:
.LBB7363:
	.loc 2 83 0
	movb	$32, %al
.LVL218:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE7363:
.LBE7362:
.LBE7361:
	.loc 5 596 0
	popl	%ebx
	ret
	.cfi_endproc
.LFE614:
	.size	handle_0e, .-handle_0e
	.section	.text.udelay.1732,"ax",@progbits
	.type	udelay.1732, @function
udelay.1732:
.LFB1161:
	.file 7 "src/clock.c"
	.loc 7 113 0
	.cfi_startproc
.LVL219:
	pushl	%ebx
.LCFI53:
	.cfi_def_cfa_offset 8
	subl	$8, %esp
.LCFI54:
	.cfi_def_cfa_offset 16
	movl	%eax, %ecx
.LBB7364:
	.loc 7 114 0
#APP
# 114 "src/clock.c" 1
	movl %CS:cpu_khz, %ebx
# 0 "" 2
#NO_APP
.LBE7364:
.LBB7365:
.LBB7366:
.LBB7367:
.LBB7368:
	.file 8 "src/util.h"
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL220:
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE7368:
.LBE7367:
	.loc 7 96 0
	imull	%ecx, %ebx
	.cfi_offset 3, -8
	movl	$1000, %ecx
.LVL221:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ecx
	xorl	%ebx, %ebx
.LVL222:
	addl	(%esp), %ecx
.LVL223:
	adcl	4(%esp), %ebx
.LVL224:
	jmp	.L111
.L112:
.LBB7369:
.LBB7370:
	.loc 8 36 0
#APP
# 36 "src/util.h" 1
	rep ; nop
# 0 "" 2
#NO_APP
.L111:
.LBE7370:
.LBE7369:
.LBB7371:
.LBB7372:
.LBB7373:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
.LBE7373:
.LBE7372:
.LBE7371:
	.loc 7 97 0
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	cmpl	$0, %edx
	jl	.L112
	jg	.L114
	cmpl	$0, %eax
	jbe	.L112
.L114:
.LBE7366:
.LBE7365:
	.loc 7 115 0
	popl	%eax
.LCFI55:
	.cfi_def_cfa_offset 12
	popl	%edx
.LCFI56:
	.cfi_def_cfa_offset 8
	popl	%ebx
.LVL225:
	ret
	.cfi_endproc
.LFE1161:
	.size	udelay.1732, .-udelay.1732
	.section	.text.process_mouse.1711,"ax",@progbits
	.type	process_mouse.1711, @function
process_mouse.1711:
.LFB828:
	.file 9 "src/mouse.c"
	.loc 9 295 0
	.cfi_startproc
.LVL226:
	pushl	%edi
.LCFI57:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI58:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI59:
	.cfi_def_cfa_offset 16
.LBB7374:
.LBB7375:
	.file 10 "src/biosvar.h"
	.loc 10 253 0
	movl	$64, %edx
#APP
# 253 "src/biosvar.h" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7376:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %si
# 0 "" 2
.LVL227:
#NO_APP
.LBE7376:
.LBE7375:
.LBE7374:
	.loc 9 300 0
#APP
# 300 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7377:
#APP
# 300 "src/mouse.c" 1
	movb %ES:38, %dl
# 0 "" 2
.LVL228:
#NO_APP
.LBE7377:
	.loc 9 301 0
#APP
# 301 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7378:
#APP
# 301 "src/mouse.c" 1
	movb %ES:39, %cl
# 0 "" 2
.LVL229:
#NO_APP
.LBE7378:
	.loc 9 303 0
	testb	%cl, %cl
	jns	.L118
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
.LBB7379:
	.loc 9 309 0
#APP
# 309 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
	movl	%edx, %ebx
.LVL230:
	andl	$7, %ebx
#APP
# 309 "src/mouse.c" 1
	movb %al, %ES:40(%ebx)
# 0 "" 2
#NO_APP
.LBE7379:
	.loc 9 311 0
	incl	%ebx
	andl	$7, %ecx
.LVL231:
	cmpl	%ecx, %ebx
	jge	.L117
	.loc 9 312 0
	incl	%edx
.LVL232:
.LBB7380:
	.loc 9 313 0
#APP
# 313 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
# 313 "src/mouse.c" 1
	movb %dl, %ES:38
# 0 "" 2
#NO_APP
	jmp	.L118
.LVL233:
.L117:
.LBE7380:
	.loc 9 317 0
#APP
# 317 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7381:
#APP
# 317 "src/mouse.c" 1
	movb %ES:40, %cl
# 0 "" 2
.LVL234:
#NO_APP
.LBE7381:
	movzbl	%cl, %ecx
.LVL235:
	.loc 9 318 0
#APP
# 318 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7382:
#APP
# 318 "src/mouse.c" 1
	movb %ES:41, %dl
# 0 "" 2
.LVL236:
#NO_APP
.LBE7382:
	movzbl	%dl, %edx
.LVL237:
	.loc 9 319 0
#APP
# 319 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7383:
#APP
# 319 "src/mouse.c" 1
	movb %ES:42, %bl
# 0 "" 2
.LVL238:
#NO_APP
.LBE7383:
	movzbl	%bl, %ebx
.LVL239:
.LBB7384:
	.loc 9 320 0
#APP
# 320 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
.LVL240:
#APP
# 320 "src/mouse.c" 1
	movb %al, %ES:38
# 0 "" 2
#NO_APP
.LBE7384:
	.loc 9 322 0
#APP
# 322 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7385:
#APP
# 322 "src/mouse.c" 1
	movl %ES:34, %eax
# 0 "" 2
.LVL241:
#NO_APP
.LBE7385:
	.loc 9 326 0
#APP
# 326 "src/mouse.c" 1
	pushl %ebp
sti
pushl %eax
pushw %cx
pushw %dx
pushw %bx
pushw $0
lcallw *8(%esp)
addl $12, %esp
cli
cld
popl %ebp
# 0 "" 2
.LVL242:
#NO_APP
.L118:
	.loc 9 344 0
	popl	%ebx
.LVL243:
	popl	%esi
.LVL244:
	popl	%edi
	ret
	.cfi_endproc
.LFE828:
	.size	process_mouse.1711, .-process_mouse.1711
	.section	.text.dequeue_key.19941,"ax",@progbits
	.type	dequeue_key.19941, @function
dequeue_key.19941:
.LFB899:
	.file 11 "src/kbd.c"
	.loc 11 76 0
	.cfi_startproc
.LVL245:
	pushl	%ebp
.LCFI60:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI61:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI62:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI63:
	.cfi_def_cfa_offset 20
	subl	$8, %esp
.LCFI64:
	.cfi_def_cfa_offset 28
.LBB7386:
.LBB7387:
.LBB7388:
.LBB7389:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE7389:
.LBE7388:
.LBE7387:
.LBE7386:
	.loc 11 81 0
	movl	$64, %edi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LBB7390:
	xorl	%esi, %esi
.LVL246:
.L123:
.LBE7390:
#APP
# 81 "src/kbd.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB7391:
#APP
# 81 "src/kbd.c" 1
	movw %ES:26(%esi), %bx
# 0 "" 2
#NO_APP
.LBE7391:
	.loc 11 82 0
#APP
# 82 "src/kbd.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB7392:
#APP
# 82 "src/kbd.c" 1
	movw %ES:28(%esi), %bp
# 0 "" 2
#NO_APP
.LBE7392:
	.loc 11 84 0
	cmpw	%bp, %bx
	jne	.L120
	.loc 11 86 0
	testl	%edx, %edx
	jne	.L121
	.loc 11 87 0
	orw	$64, 36(%eax)
	.loc 11 88 0
	jmp	.L130
.L121:
.LBB7393:
.LBB7394:
	.loc 6 139 0
#APP
# 139 "src/stacks.c" 1
	sti ; hlt ; cli ; cld
# 0 "" 2
#NO_APP
.LBE7394:
.LBE7393:
	.loc 11 91 0
	jmp	.L123
.L120:
	movw	%bx, 2(%esp)
	.loc 11 93 0
	movl	$64, %ebx
.LVL247:
#APP
# 93 "src/kbd.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB7395:
	movzwl	2(%esp), %esi
#APP
# 93 "src/kbd.c" 1
	movb %ES:(%esi), %bl
# 0 "" 2
#NO_APP
	movb	%bl, 7(%esp)
.LBE7395:
	.loc 11 94 0
	movl	$64, %ebx
#APP
# 94 "src/kbd.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB7396:
#APP
# 94 "src/kbd.c" 1
	movb %ES:1(%esi), %bl
# 0 "" 2
#NO_APP
	movl	%ebx, %esi
.LVL248:
.LBE7396:
	.loc 11 95 0
	testb	%bl, %bl
	je	.L131
	cmpb	$-16, 7(%esp)
	je	.L124
.L131:
	cmpb	$-32, 7(%esp)
	jne	.L132
	testl	%ecx, %ecx
	je	.L124
.L132:
	movb	7(%esp), %cl
.LVL249:
	jmp	.L127
.LVL250:
.L124:
	xorl	%ecx, %ecx
.LVL251:
.L127:
	.loc 11 98 0
	movzbl	%cl, %edi
.LVL252:
	movl	%esi, %ecx
.LVL253:
	sall	$8, %ecx
	orl	%edi, %ecx
	movw	%cx, 28(%eax)
	.loc 11 100 0
	testl	%edx, %edx
	jne	.L128
	.loc 11 101 0
	andw	$-65, 36(%eax)
	.loc 11 102 0
	jmp	.L130
.L128:
	.loc 11 104 0
	movl	$64, %eax
.LVL254:
#APP
# 104 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7397:
#APP
# 104 "src/kbd.c" 1
	movw %ES:128, %dx
# 0 "" 2
.LVL255:
#NO_APP
.LBE7397:
	.loc 11 105 0
#APP
# 105 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7398:
#APP
# 105 "src/kbd.c" 1
	movw %ES:130, %ax
# 0 "" 2
.LVL256:
#NO_APP
.LBE7398:
	.loc 11 107 0
	movw	2(%esp), %bx
.LVL257:
	addl	$2, %ebx
.LVL258:
	.loc 11 108 0
	cmpw	%ax, %bx
	jb	.L129
	movl	%edx, %ebx
.LVL259:
.L129:
.LBB7399:
	.loc 11 110 0
	movl	$64, %eax
.LVL260:
#APP
# 110 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
# 110 "src/kbd.c" 1
	movw %bx, %ES:26
# 0 "" 2
.LVL261:
#NO_APP
.L130:
.LBE7399:
	.loc 11 111 0
	popl	%ecx
.LCFI65:
	.cfi_def_cfa_offset 24
.LVL262:
	popl	%ebx
.LCFI66:
	.cfi_def_cfa_offset 20
.LVL263:
	popl	%ebx
	popl	%esi
	popl	%edi
.LVL264:
	popl	%ebp
.LVL265:
	ret
	.cfi_endproc
.LFE899:
	.size	dequeue_key.19941, .-dequeue_key.19941
	.section	.text.pci_next.14700,"ax",@progbits
	.type	pci_next.14700, @function
pci_next.14700:
.LFB986:
	.file 12 "src/pci.c"
	.loc 12 62 0
	.cfi_startproc
.LVL266:
	pushl	%ebp
.LCFI67:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI68:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI69:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI70:
	.cfi_def_cfa_offset 20
	subl	$4, %esp
.LCFI71:
	.cfi_def_cfa_offset 24
	movl	%eax, %ecx
	movl	%edx, %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 12 63 0
	movb	%al, %dl
.LVL267:
	andl	$7, %edx
	decb	%dl
	jne	.L134
.LBB7400:
.LBB7401:
.LBB7402:
	.loc 2 89 0
	decl	%eax
	movzwl	%ax, %eax
	sall	$8, %eax
	orl	$-2147483636, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7402:
.LBE7401:
.LBB7403:
.LBB7404:
	.loc 2 93 0
	movb	$-2, %dl
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL268:
#NO_APP
.LBE7404:
.LBE7403:
.LBE7400:
	.loc 12 63 0
	testb	%al, %al
	js	.L134
	.loc 12 67 0
	addl	$7, %ecx
.L134:
	.loc 12 69 0
	movl	(%esi), %eax
.LVL269:
	movl	%eax, (%esp)
.LBB7405:
.LBB7406:
.LBB7407:
.LBB7408:
.LBB7409:
	.loc 2 89 0
	movl	$3320, %ebp
.L141:
.LBE7409:
.LBE7408:
.LBE7407:
.LBE7406:
	.loc 12 71 0
	cmpl	(%esp), %ecx
	jl	.L135
	orl	$-1, %ecx
	jmp	.L136
.L135:
.LBB7415:
.LBB7414:
	.loc 12 41 0
	movzwl	%cx, %ebx
.LVL270:
	sall	$8, %ebx
.LBB7411:
.LBB7410:
	.loc 2 89 0
	movl	%ebx, %eax
	orl	$-2147483648, %eax
	movl	%ebp, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7410:
.LBE7411:
.LBB7412:
.LBB7413:
	.loc 2 98 0
	movl	$3324, %edx
#APP
# 98 "src/ioport.h" 1
	inw %dx, %ax
# 0 "" 2
.LVL271:
#NO_APP
.LBE7413:
.LBE7412:
.LBE7414:
.LBE7415:
	.loc 12 82 0
	decl	%eax
.LVL272:
	cmpw	$-3, %ax
	jbe	.L137
	.loc 12 86 0
	testb	$7, %cl
	jne	.L138
	.loc 12 87 0
	addl	$8, %ecx
.LVL273:
	jmp	.L141
.LVL274:
.L138:
	.loc 12 89 0
	incl	%ecx
.LVL275:
	jmp	.L141
.LVL276:
.L137:
.LBE7405:
.LBB7416:
.LBB7417:
.LBB7418:
	.loc 2 89 0
	movl	%ebx, %eax
	orl	$-2147483636, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7418:
.LBE7417:
.LBB7419:
.LBB7420:
	.loc 2 93 0
	movb	$-2, %dl
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL277:
#NO_APP
.LBE7420:
.LBE7419:
.LBE7416:
	.loc 12 95 0
	andl	$127, %eax
.LVL278:
	decl	%eax
	cmpl	$1, %eax
	ja	.L136
.LBB7421:
.LBB7422:
.LBB7423:
.LBB7424:
	.loc 2 89 0
	movl	%ebx, %eax
	orl	$-2147483624, %eax
	movb	$-8, %dl
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7424:
.LBE7423:
.LBB7425:
.LBB7426:
	.loc 2 103 0
	movb	$-4, %dl
#APP
# 103 "src/ioport.h" 1
	inl %dx, %eax
# 0 "" 2
#NO_APP
.LBE7426:
.LBE7425:
.LBE7422:
	.loc 12 97 0
	andl	$65280, %eax
	addl	$256, %eax
.LVL279:
	.loc 12 98 0
	cmpl	(%esp), %eax
	jle	.L136
	.loc 12 99 0
	movl	%eax, (%esi)
.LVL280:
.L136:
.LBE7421:
	.loc 12 103 0
	movl	%ecx, %eax
.LVL281:
	popl	%esi
.LCFI72:
	.cfi_def_cfa_offset 20
.LVL282:
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.cfi_endproc
.LFE986:
	.size	pci_next.14700, .-pci_next.14700
	.section	.text.handle_14,"ax",@progbits
.globl handle_14
	.type	handle_14, @function
handle_14:
.LFB1069:
	.file 13 "src/serial.c"
	.loc 13 162 0
	.cfi_startproc
.LVL283:
	pushl	%ebp
.LCFI73:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI74:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI75:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI76:
	.cfi_def_cfa_offset 20
	subl	$4, %esp
.LCFI77:
	.cfi_def_cfa_offset 24
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 13 169 0
	movb	29(%eax), %al
.LVL284:
	cmpb	$1, %al
	je	.L145
	jb	.L144
	cmpb	$2, %al
	je	.L146
	cmpb	$3, %al
	jne	.L169
	jmp	.L178
.L144:
.LBB7427:
.LBB7428:
.LBB7444:
.LBB7445:
	.loc 13 56 0
	movw	20(%ebx), %ax
	cmpw	$3, %ax
	ja	.L169
	.loc 13 60 0
	movl	$64, %edx
#APP
# 60 "src/serial.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7446:
	movzwl	%ax, %eax
#APP
# 60 "src/serial.c" 1
	movw %ES:(%eax,%eax), %si
# 0 "" 2
.LVL285:
#NO_APP
.LBE7446:
	.loc 13 61 0
	testw	%si, %si
	jne	.L150
	jmp	.L169
.L166:
.LBE7445:
.LBE7444:
.LBB7442:
.LBB7443:
	.loc 2 83 0
	movb	$23, %al
	movl	%esi, %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7443:
.LBE7442:
.LBB7440:
.LBB7441:
	leal	1(%esi), %edx
	movb	$4, %al
	jmp	.L171
.L179:
.LBE7441:
.LBE7440:
.LBB7435:
	.loc 13 78 0
	movb	%al, %cl
	shrb	$5, %cl
	movl	$1536, %eax
	sarl	%cl, %eax
.LVL286:
.LBB7436:
.LBB7437:
	.loc 2 83 0
	movl	%esi, %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7437:
.LBE7436:
.LBB7438:
.LBB7439:
	shrw	$8, %ax
.LVL287:
	leal	1(%esi), %edx
.L171:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7439:
.LBE7438:
.LBE7435:
.LBB7433:
.LBB7434:
	movl	%ebp, %eax
	andl	$31, %eax
	movl	%edi, %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7434:
.LBE7433:
.LBB7431:
.LBB7432:
	.loc 2 93 0
	leal	5(%esi), %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL288:
#NO_APP
.LBE7432:
.LBE7431:
	.loc 13 83 0
	movb	%al, 29(%ebx)
.LBB7429:
.LBB7430:
	.loc 2 93 0
	leal	6(%esi), %edx
	jmp	.L175
.LVL289:
.L145:
.LBE7430:
.LBE7429:
.LBE7428:
.LBE7427:
.LBB7452:
.LBB7453:
.LBB7468:
.LBB7469:
	.loc 13 56 0
	movw	20(%ebx), %dx
	cmpw	$3, %dx
	ja	.L169
	.loc 13 60 0
	movl	$64, %edi
#APP
# 60 "src/serial.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB7470:
	movzwl	%dx, %edx
#APP
# 60 "src/serial.c" 1
	movw %ES:(%edx,%edx), %cx
# 0 "" 2
.LVL290:
#NO_APP
.LBE7470:
	.loc 13 61 0
	testw	%cx, %cx
	jne	.L153
	jmp	.L169
.L157:
.LBE7469:
.LBE7468:
.LBB7454:
.LBB7464:
.LBB7465:
	.loc 2 93 0
	movl	%edi, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
#NO_APP
	movl	%eax, %esi
.LVL291:
.LBE7465:
.LBE7464:
	.loc 13 98 0
	movl	%esi, %eax
.LVL292:
	andl	$96, %eax
	cmpl	$96, %eax
	jne	.L154
.LBB7462:
.LBB7463:
	.loc 2 83 0
	movb	28(%ebx), %al
	movl	%ecx, %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7463:
.LBE7462:
	.loc 13 102 0
	movl	%esi, %eax
.LVL293:
	jmp	.L172
.LVL294:
.L154:
.LBB7459:
.LBB7460:
	.loc 7 249 0
	movl	$64, %edx
#APP
# 249 "src/clock.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7461:
#APP
# 249 "src/clock.c" 1
	movl %ES:108, %eax
# 0 "" 2
.LVL295:
#NO_APP
.LBE7461:
.LBE7460:
.LBE7459:
	.loc 13 105 0
	addl	(%esp), %eax
.LVL296:
	xorl	%edx, %edx
	divl	%ebp
	cmpl	$786519, %edx
	ja	.L156
	.loc 13 107 0
	movl	%esi, %eax
.LVL297:
	orl	$-128, %eax
.L172:
	movb	%al, 29(%ebx)
	jmp	.L174
.LVL298:
.L156:
.LBB7455:
.LBB7456:
.LBB7457:
.LBB7458:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
	jmp	.L157
.LVL299:
.L146:
.LBE7458:
.LBE7457:
.LBE7456:
.LBE7455:
.LBE7454:
.LBE7453:
.LBE7452:
.LBB7477:
.LBB7478:
.LBB7493:
.LBB7494:
	.loc 13 56 0
	movw	20(%ebx), %dx
	cmpw	$3, %dx
	ja	.L169
	.loc 13 60 0
	movl	$64, %eax
#APP
# 60 "src/serial.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7495:
	movzwl	%dx, %edx
#APP
# 60 "src/serial.c" 1
	movw %ES:(%edx,%edx), %si
# 0 "" 2
.LVL300:
#NO_APP
.LBE7495:
	.loc 13 61 0
	testw	%si, %si
	jne	.L159
	jmp	.L169
.L163:
.LBE7494:
.LBE7493:
.LBB7479:
.LBB7489:
.LBB7490:
	.loc 2 93 0
	movl	%edi, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
#NO_APP
	movb	%al, %cl
.LVL301:
.LBE7490:
.LBE7489:
	.loc 13 125 0
	movl	%ecx, %eax
.LVL302:
	andl	$1, %eax
	je	.L160
.LBB7487:
.LBB7488:
	.loc 2 93 0
	movl	%esi, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL303:
#NO_APP
.LBE7488:
.LBE7487:
	.loc 13 127 0
	movb	%al, 28(%ebx)
	jmp	.L173
.LVL304:
.L160:
.LBB7484:
.LBB7485:
	.loc 7 249 0
	movl	$64, %edx
#APP
# 249 "src/clock.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7486:
#APP
# 249 "src/clock.c" 1
	movl %ES:108(%eax), %eax
# 0 "" 2
.LVL305:
#NO_APP
.LBE7486:
.LBE7485:
.LBE7484:
	.loc 13 131 0
	addl	(%esp), %eax
.LVL306:
	xorl	%edx, %edx
	divl	%ebp
	cmpl	$786519, %edx
	ja	.L162
	.loc 13 133 0
	orl	$-128, %ecx
.LVL307:
.L173:
	movb	%cl, 29(%ebx)
	jmp	.L174
.LVL308:
.L162:
.LBB7480:
.LBB7481:
.LBB7482:
.LBB7483:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
	jmp	.L163
.LVL309:
.L178:
.LBE7483:
.LBE7482:
.LBE7481:
.LBE7480:
.LBE7479:
.LBE7478:
.LBE7477:
.LBB7502:
.LBB7503:
.LBB7504:
.LBB7505:
	.loc 13 56 0
	movw	20(%ebx), %ax
	cmpw	$3, %ax
	ja	.L169
	.loc 13 60 0
	movl	$64, %edx
#APP
# 60 "src/serial.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7506:
	movzwl	%ax, %eax
#APP
# 60 "src/serial.c" 1
	movw %ES:(%eax,%eax), %cx
# 0 "" 2
.LVL310:
#NO_APP
.LBE7506:
	.loc 13 61 0
	testw	%cx, %cx
	jne	.L165
.LVL311:
.L169:
.LBE7505:
.LBE7504:
.LBE7503:
.LBE7502:
.LBB7515:
.LBB7516:
.LBB7517:
.LBB7518:
.LBB7519:
.LBB7520:
	.file 14 "src/bregs.h"
	.loc 14 60 0
	orw	$1, 36(%ebx)
	jmp	.L168
.LVL312:
.L150:
.LBE7520:
.LBE7519:
.LBE7518:
.LBE7517:
.LBE7516:
.LBE7515:
.LBB7521:
.LBB7451:
	.loc 13 73 0
	leal	3(%esi), %edi
.LBB7447:
.LBB7448:
	.loc 2 93 0
	movl	%edi, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
#NO_APP
.LBE7448:
.LBE7447:
.LBB7449:
.LBB7450:
	.loc 2 83 0
	orl	$-128, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7450:
.LBE7449:
	.loc 13 74 0
	movb	28(%ebx), %al
	movzbl	%al, %ebp
	movl	%ebp, %edx
	andb	$-32, %dl
	je	.L166
	jmp	.L179
.LVL313:
.L153:
.LBE7451:
.LBE7521:
.LBB7522:
.LBB7476:
	.loc 13 95 0
#APP
# 95 "src/serial.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB7471:
#APP
# 95 "src/serial.c" 1
	movb %ES:124(%edx), %al
# 0 "" 2
#NO_APP
	movl	%eax, %esi
.LVL314:
.LBE7471:
.LBB7472:
.LBB7473:
	.loc 7 231 0
#APP
# 231 "src/clock.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB7474:
#APP
# 231 "src/clock.c" 1
	movl %ES:108, %edx
# 0 "" 2
.LVL315:
#NO_APP
.LBE7474:
	andl	$255, %esi
.LVL316:
	leal	1(%edx,%esi), %eax
	movl	$1573040, %esi
.LVL317:
	xorl	%edx, %edx
.LVL318:
	divl	%esi
.LBE7473:
.LBE7472:
.LBB7475:
.LBB7467:
.LBB7466:
	.loc 2 93 0
	leal	5(%ecx), %edi
.LBE7466:
.LBE7467:
	.loc 13 105 0
	movl	$1573040, %ebp
	movl	%ebp, %eax
	subl	%edx, %eax
	movl	%eax, (%esp)
	jmp	.L157
.LVL319:
.L159:
.LBE7475:
.LBE7476:
.LBE7522:
.LBB7523:
.LBB7501:
	.loc 13 122 0
#APP
# 122 "src/serial.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7496:
#APP
# 122 "src/serial.c" 1
	movb %ES:124(%edx), %cl
# 0 "" 2
.LVL320:
#NO_APP
.LBE7496:
.LBB7497:
.LBB7498:
	.loc 7 231 0
#APP
# 231 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7499:
#APP
# 231 "src/clock.c" 1
	movl %ES:108, %edx
# 0 "" 2
.LVL321:
#NO_APP
.LBE7499:
	movzbl	%cl, %eax
.LVL322:
	leal	1(%edx,%eax), %eax
.LVL323:
	movl	$1573040, %ecx
	xorl	%edx, %edx
.LVL324:
	divl	%ecx
.LBE7498:
.LBE7497:
.LBB7500:
.LBB7492:
.LBB7491:
	.loc 2 93 0
	leal	5(%esi), %edi
.LBE7491:
.LBE7492:
	.loc 13 131 0
	movl	$1573040, %ebp
	movl	%ebp, %eax
	subl	%edx, %eax
	movl	%eax, (%esp)
	jmp	.L163
.LVL325:
.L165:
.LBE7500:
.LBE7501:
.LBE7523:
.LBB7524:
.LBB7514:
.LBB7507:
.LBB7508:
	.loc 2 93 0
	leal	5(%ecx), %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL326:
#NO_APP
.LBE7508:
.LBE7507:
	.loc 13 148 0
	movb	%al, 29(%ebx)
.LBB7509:
.LBB7510:
	.loc 2 93 0
	leal	6(%ecx), %edx
.LVL327:
.L175:
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL328:
#NO_APP
.LBE7510:
.LBE7509:
	.loc 13 149 0
	movb	%al, 28(%ebx)
.LVL329:
.L174:
.LBB7511:
.LBB7512:
.LBB7513:
	.loc 14 62 0
	andw	$-2, 36(%ebx)
.L168:
.LBE7513:
.LBE7512:
.LBE7511:
.LBE7514:
.LBE7524:
	.loc 13 176 0
	popl	%edi
.LCFI78:
	.cfi_def_cfa_offset 20
	popl	%ebx
.LVL330:
	popl	%esi
.LVL331:
	popl	%edi
	popl	%ebp
	ret
	.cfi_endproc
.LFE1069:
	.size	handle_14, .-handle_14
	.section	.text.handle_17,"ax",@progbits
.globl handle_17
	.type	handle_17, @function
handle_17:
.LFB1077:
	.loc 13 302 0
	.cfi_startproc
.LVL332:
	pushl	%ebp
.LCFI79:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI80:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI81:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI82:
	.cfi_def_cfa_offset 20
	subl	$8, %esp
.LCFI83:
	.cfi_def_cfa_offset 28
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 13 309 0
	movb	29(%eax), %al
.LVL333:
	cmpb	$1, %al
	je	.L183
	jb	.L182
	cmpb	$2, %al
	jne	.L197
	jmp	.L204
.L182:
.LBB7525:
.LBB7526:
.LBB7541:
.LBB7542:
	.loc 13 221 0
	movw	20(%ebx), %dx
	cmpw	$2, %dx
	ja	.L197
	.loc 13 225 0
	movl	$64, %eax
#APP
# 225 "src/serial.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7543:
	movzwl	%dx, %edx
#APP
# 225 "src/serial.c" 1
	movw %ES:8(%edx,%edx), %di
# 0 "" 2
.LVL334:
#NO_APP
.LBE7543:
	.loc 13 226 0
	testw	%di, %di
	jne	.L187
	jmp	.L197
.LVL335:
.L191:
.LBE7542:
.LBE7541:
.LBB7527:
.LBB7536:
.LBB7537:
	.loc 2 93 0
	movl	%edi, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
#NO_APP
	movl	%eax, %esi
.LBE7537:
.LBE7536:
	.loc 13 249 0
	testb	$64, %al
	je	.L202
.LVL336:
.LBB7532:
.LBB7533:
	.loc 7 249 0
#APP
# 249 "src/clock.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
.LBB7534:
#APP
# 249 "src/clock.c" 1
	movl %ES:108, %eax
# 0 "" 2
.LVL337:
#NO_APP
.LBE7534:
.LBE7533:
.LBE7532:
	.loc 13 254 0
	addl	4(%esp), %eax
.LVL338:
	xorl	%edx, %edx
	divl	%ecx
	cmpl	$786519, %edx
	ja	.L190
	.loc 13 256 0
	movl	%esi, %eax
	xorl	$72, %eax
	orl	$1, %eax
	jmp	.L201
.L190:
.LBB7528:
.LBB7529:
.LBB7530:
.LBB7531:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
	jmp	.L191
.LVL339:
.L183:
.LBE7531:
.LBE7530:
.LBE7529:
.LBE7528:
.LBE7527:
.LBE7526:
.LBE7525:
.LBB7558:
.LBB7559:
.LBB7560:
.LBB7561:
	.loc 13 221 0
	movw	20(%ebx), %ax
	cmpw	$2, %ax
	ja	.L197
	.loc 13 225 0
	movl	$64, %edx
#APP
# 225 "src/serial.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7562:
	movzwl	%ax, %eax
#APP
# 225 "src/serial.c" 1
	movw %ES:8(%eax,%eax), %si
# 0 "" 2
.LVL340:
#NO_APP
.LBE7562:
	.loc 13 226 0
	testw	%si, %si
	jne	.L193
	jmp	.L197
.LVL341:
.L204:
.LBE7561:
.LBE7560:
.LBE7559:
.LBE7558:
.LBB7572:
.LBB7573:
.LBB7578:
.LBB7579:
	.loc 13 221 0
	movw	20(%ebx), %ax
	cmpw	$2, %ax
	ja	.L197
	.loc 13 225 0
	movl	$64, %edx
#APP
# 225 "src/serial.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7580:
	movzwl	%ax, %eax
#APP
# 225 "src/serial.c" 1
	movw %ES:8(%eax,%eax), %ax
# 0 "" 2
.LVL342:
#NO_APP
.LBE7580:
.LBE7579:
.LBE7578:
.LBB7575:
.LBB7576:
	.loc 2 93 0
	leal	1(%eax), %edx
.LBE7576:
.LBE7575:
.LBB7574:
.LBB7581:
	.loc 13 226 0
	testw	%ax, %ax
	jne	.L199
.LVL343:
.L197:
.LBE7581:
.LBE7574:
.LBE7573:
.LBE7572:
.LBB7587:
.LBB7588:
.LBB7589:
.LBB7590:
.LBB7591:
.LBB7592:
	.loc 14 60 0
	orw	$1, 36(%ebx)
	jmp	.L196
.LVL344:
.L187:
.LBE7592:
.LBE7591:
.LBE7590:
.LBE7589:
.LBE7588:
.LBE7587:
.LBB7593:
.LBB7557:
	.loc 13 239 0
#APP
# 239 "src/serial.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7544:
#APP
# 239 "src/serial.c" 1
	movb %ES:120(%edx), %cl
# 0 "" 2
.LVL345:
#NO_APP
.LBE7544:
.LBB7545:
.LBB7546:
	.loc 7 231 0
#APP
# 231 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7547:
#APP
# 231 "src/clock.c" 1
	movl %ES:108, %edx
# 0 "" 2
.LVL346:
#NO_APP
.LBE7547:
	movzbl	%cl, %eax
.LVL347:
	leal	1(%edx,%eax), %eax
.LVL348:
	movl	$1573040, %ecx
	xorl	%edx, %edx
.LVL349:
	divl	%ecx
	movl	%edx, 4(%esp)
.LBE7546:
.LBE7545:
.LBB7548:
.LBB7549:
	.loc 2 83 0
	movb	28(%ebx), %al
	movl	%edi, %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7549:
.LBE7548:
	.loc 13 242 0
	leal	2(%edi), %edx
.LBB7550:
.LBB7551:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
#NO_APP
	movl	%eax, %esi
.LVL350:
.LBE7551:
.LBE7550:
.LBB7552:
.LBB7553:
	.loc 2 83 0
	orl	$1, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7553:
.LBE7552:
	.loc 13 244 0
	movl	$5, %eax
	movl	%edx, (%esp)
	call	udelay.1732
.LBB7554:
.LBB7555:
	.loc 2 83 0
	movl	%esi, %eax
.LVL351:
	andl	$254, %eax
	movl	(%esp), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7555:
.LBE7554:
.LBB7556:
.LBB7539:
.LBB7538:
	.loc 2 93 0
	incl	%edi
.LVL352:
.LBE7538:
.LBE7539:
.LBB7540:
.LBB7535:
	.loc 7 249 0
	movl	$64, %ebp
.LBE7535:
.LBE7540:
	.loc 13 254 0
	movl	$1573040, %ecx
	movl	%ecx, %edx
	subl	4(%esp), %edx
	movl	%edx, 4(%esp)
	jmp	.L191
.LVL353:
.L193:
.LBE7556:
.LBE7557:
.LBE7593:
.LBB7594:
.LBB7571:
	.loc 13 273 0
	leal	2(%esi), %edx
.LBB7563:
.LBB7564:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
#NO_APP
	movl	%eax, %edi
.LVL354:
.LBE7564:
.LBE7563:
.LBB7565:
.LBB7566:
	.loc 2 83 0
	movl	%edi, %eax
.LVL355:
	andl	$251, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7566:
.LBE7565:
	.loc 13 275 0
	movl	$5, %eax
	movl	%edx, (%esp)
	call	udelay.1732
.LBB7567:
.LBB7568:
	.loc 2 83 0
	movl	%edi, %eax
.LVL356:
	orl	$4, %eax
	movl	(%esp), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE7568:
.LBE7567:
.LBB7569:
.LBB7570:
	.loc 2 93 0
	leal	1(%esi), %edx
.LVL357:
.L199:
.LBE7570:
.LBE7569:
.LBE7571:
.LBE7594:
.LBB7595:
.LBB7586:
.LBB7582:
.LBB7577:
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL358:
#NO_APP
.L202:
.LBE7577:
.LBE7582:
	.loc 13 289 0
	xorl	$72, %eax
.LVL359:
.L201:
	movb	%al, 29(%ebx)
.LBB7583:
.LBB7584:
.LBB7585:
	.loc 14 62 0
	andw	$-2, 36(%ebx)
.LVL360:
.L196:
.LBE7585:
.LBE7584:
.LBE7583:
.LBE7586:
.LBE7595:
	.loc 13 315 0
	popl	%ebp
.LCFI84:
	.cfi_def_cfa_offset 24
	popl	%eax
.LCFI85:
	.cfi_def_cfa_offset 20
.LVL361:
	popl	%ebx
.LVL362:
	popl	%esi
.LVL363:
	popl	%edi
.LVL364:
	popl	%ebp
	ret
	.cfi_endproc
.LFE1077:
	.size	handle_17, .-handle_17
	.section	.text.rtc_updating.25343,"ax",@progbits
	.type	rtc_updating.25343, @function
rtc_updating.25343:
.LFB1168:
	.loc 7 151 0
	.cfi_startproc
	pushl	%ebx
.LCFI86:
	.cfi_def_cfa_offset 8
	subl	$16, %esp
.LCFI87:
	.cfi_def_cfa_offset 24
.LBB7596:
.LBB7597:
.LBB7598:
	.loc 2 83 0
	movb	$-118, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7598:
.LBE7597:
.LBB7599:
.LBB7600:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL365:
#NO_APP
.LBE7600:
.LBE7599:
.LBE7596:
	.loc 7 160 0
	testb	%al, %al
	jns	.L206
	.cfi_offset 3, -8
.LBB7601:
.LBB7602:
.LBB7603:
	.loc 7 134 0
#APP
# 134 "src/clock.c" 1
	movl %CS:cpu_khz, %ecx
# 0 "" 2
.LVL366:
#NO_APP
.LBE7603:
.LBB7604:
.LBB7605:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL367:
#NO_APP
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
.LBE7605:
.LBE7604:
	.loc 7 135 0
	movl	$15, %ebx
	movl	%ecx, %eax
	mull	%ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	addl	%eax, (%esp)
	adcl	%edx, 4(%esp)
.LBE7602:
.LBE7601:
.LBB7606:
.LBB7607:
.LBB7608:
	.loc 2 83 0
	movb	$-118, %bl
.L210:
	movb	%bl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7608:
.LBE7607:
.LBB7609:
.LBB7610:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL368:
#NO_APP
.LBE7610:
.LBE7609:
.LBE7606:
	.loc 7 164 0
	testb	%al, %al
	jns	.L206
.LBB7611:
.LBB7612:
.LBB7613:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL369:
#NO_APP
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
.LBE7613:
.LBE7612:
.LBE7611:
	.loc 7 166 0
	movl	(%esp), %eax
	movl	4(%esp), %edx
	subl	%eax, 8(%esp)
	sbbl	%edx, 12(%esp)
	cmpl	$0, 12(%esp)
	jl	.L207
	jg	.L212
	cmpl	$0, 8(%esp)
	jbe	.L207
.L212:
	orl	$-1, %eax
	jmp	.L209
.L207:
.LBB7614:
.LBB7615:
.LBB7616:
.LBB7617:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE7617:
.LBE7616:
.LBE7615:
.LBE7614:
	.loc 7 170 0
	jmp	.L210
.LVL370:
.L206:
	xorl	%eax, %eax
.LVL371:
.L209:
	.loc 7 171 0
	addl	$16, %esp
	popl	%ebx
	ret
	.cfi_endproc
.LFE1168:
	.size	rtc_updating.25343, .-rtc_updating.25343
	.section	.text.handle_70,"ax",@progbits
.globl handle_70
	.type	handle_70, @function
handle_70:
.LFB1196:
	.loc 7 607 0
	.cfi_startproc
	pushl	%ebp
.LCFI88:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI89:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI90:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI91:
	.cfi_def_cfa_offset 20
.LBB7618:
.LBB7619:
.LBB7620:
	.loc 2 83 0
	movb	$-117, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7620:
.LBE7619:
.LBB7621:
.LBB7622:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %dl
.LVL372:
.LBE7622:
.LBE7621:
.LBE7618:
.LBB7623:
.LBB7624:
.LBB7625:
	.loc 2 83 0
	movb	$-116, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7625:
.LBE7624:
.LBB7626:
.LBB7627:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL373:
#NO_APP
.LBE7627:
.LBE7626:
.LBE7623:
	.loc 7 614 0
	andb	$96, %dl
.LVL374:
	je	.L214
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 7 616 0
	movzbl	%al, %ebp
	testl	$32, %ebp
	je	.L215
.LBB7628:
	.loc 7 619 0
	xorl	%eax, %eax
.LVL375:
#APP
# 619 "src/clock.c" 1
	pushl %ebp
sti
stc
int $74
pushfl
popl %ecx
cli
cld
popl %ebp
# 0 "" 2
.LVL376:
#NO_APP
.L215:
.LBE7628:
	.loc 7 621 0
	andl	$64, %ebp
	je	.L214
	.loc 7 628 0
	movl	$64, %eax
.LVL377:
#APP
# 628 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7629:
#APP
# 628 "src/clock.c" 1
	movb %ES:160, %dl
# 0 "" 2
.LVL378:
#NO_APP
.LBE7629:
	testb	%dl, %dl
	je	.L214
	.loc 7 632 0
#APP
# 632 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7630:
#APP
# 632 "src/clock.c" 1
	movl %ES:156, %edx
# 0 "" 2
.LVL379:
#NO_APP
.LBE7630:
	.loc 7 633 0
	cmpl	$976, %edx
	ja	.L216
.LBB7631:
	.loc 7 635 0
#APP
# 635 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7632:
#APP
# 635 "src/clock.c" 1
	movl %ES:152, %ecx
# 0 "" 2
.LVL380:
#NO_APP
.LBE7632:
	.loc 7 636 0
	movl	%ecx, %ebp
	shrl	$16, %ebp
	.loc 7 637 0
	movzwl	%cx, %ecx
.LVL381:
	.loc 7 638 0
#APP
# 638 "src/clock.c" 1
	movw %bp, %ES
# 0 "" 2
.LVL382:
#NO_APP
.LBB7633:
#APP
# 638 "src/clock.c" 1
	movb %ES:(%ecx), %dl
# 0 "" 2
.LVL383:
#NO_APP
.LBE7633:
.LBB7634:
	.loc 7 639 0
#APP
# 639 "src/clock.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
	orl	$-128, %edx
#APP
# 639 "src/clock.c" 1
	movb %dl, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE7634:
.LBB7635:
.LBB7636:
	.loc 7 539 0
#APP
# 539 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7637:
#APP
# 539 "src/clock.c" 1
	movb %ES:160, %dl
# 0 "" 2
.LVL384:
#NO_APP
.LBE7637:
	andb	$1, %dl
	je	.L214
.LBB7638:
	.loc 7 542 0
#APP
# 542 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
.LVL385:
#APP
# 542 "src/clock.c" 1
	movb %dl, %ES:160
# 0 "" 2
#NO_APP
.LBE7638:
.LBB7639:
.LBB7640:
.LBB7641:
.LBB7642:
	.loc 10 253 0
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7643:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %dx
# 0 "" 2
.LVL386:
#NO_APP
.LBE7643:
.LBE7642:
.LBE7641:
	.loc 7 513 0
#APP
# 513 "src/clock.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB7644:
#APP
# 513 "src/clock.c" 1
	movl %ES:298, %eax
# 0 "" 2
.LVL387:
#NO_APP
.LBE7644:
.LBB7645:
	.loc 7 514 0
	leal	-1(%eax), %ecx
.LVL388:
#APP
# 514 "src/clock.c" 1
	movw %dx, %ES
# 0 "" 2
# 514 "src/clock.c" 1
	movl %ecx, %ES:298
# 0 "" 2
#NO_APP
.LBE7645:
	.loc 7 515 0
	decl	%eax
.LVL389:
	jne	.L214
.LBB7646:
.LBB7647:
.LBB7648:
	.loc 2 83 0
	movb	$-117, %dl
.LVL390:
	movb	%dl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7648:
.LBE7647:
.LBB7649:
.LBB7650:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %cl
.LVL391:
.LBE7650:
.LBE7649:
.LBE7646:
.LBB7651:
.LBB7652:
.LBB7653:
	.loc 2 83 0
	movb	%dl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7653:
.LBE7652:
.LBB7654:
.LBB7655:
	movl	%ecx, %eax
.LVL392:
	andl	$191, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
	jmp	.L214
.LVL393:
.L216:
.LBE7655:
.LBE7654:
.LBE7651:
.LBE7640:
.LBE7639:
.LBE7636:
.LBE7635:
.LBE7631:
	.loc 7 644 0
	subl	$977, %edx
.LVL394:
.LBB7656:
	.loc 7 645 0
#APP
# 645 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
# 645 "src/clock.c" 1
	movl %edx, %ES:156
# 0 "" 2
.LVL395:
#NO_APP
.L214:
.LBE7656:
.LBB7657:
.LBB7658:
.LBB7659:
	.loc 2 83 0
	movb	$32, %al
.LVL396:
#APP
# 83 "src/ioport.h" 1
	outb %al, $160
# 0 "" 2
#NO_APP
.LBE7659:
.LBE7658:
.LBB7660:
.LBB7661:
.LBB7662:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE7662:
.LBE7661:
.LBE7660:
.LBE7657:
	.loc 7 650 0
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
.LVL397:
	ret
	.cfi_endproc
.LFE1196:
	.size	handle_70, .-handle_70
	.section	.text.handle_1ab1.1764,"ax",@progbits
	.type	handle_1ab1.1764, @function
handle_1ab1.1764:
.LFB1971:
	.file 15 "src/pcibios.c"
	.loc 15 177 0
	.cfi_startproc
.LVL398:
	pushl	%ebp
.LCFI92:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI93:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI94:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI95:
	.cfi_def_cfa_offset 20
	subl	$4, %esp
.LCFI96:
	.cfi_def_cfa_offset 24
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 15 185 0
	movb	28(%eax), %al
.LVL399:
	cmpb	$9, %al
	je	.L224
	ja	.L230
	cmpb	$2, %al
	je	.L221
	ja	.L231
	decb	%al
	jne	.L219
	jmp	.L257
.L231:
	cmpb	$3, %al
	je	.L222
	cmpb	$8, %al
	jne	.L219
	jmp	.L258
.L230:
	cmpb	$12, %al
	je	.L227
	ja	.L232
	cmpb	$10, %al
	je	.L225
	cmpb	$11, %al
	jne	.L219
	jmp	.L259
.L232:
	cmpb	$13, %al
	je	.L228
	cmpb	$14, %al
	jne	.L219
	jmp	.L260
.L257:
.LBB7663:
.LBB7664:
	.loc 15 30 0
	movl	$256, (%esp)
.LVL400:
	movl	%esp, %edx
	xorl	%eax, %eax
	jmp	.L250
.LVL401:
.L234:
	incl	%eax
.LVL402:
	movl	%esp, %edx
.L250:
	call	pci_next.14700
	testl	%eax, %eax
.LVL403:
	jns	.L234
	.loc 15 33 0
	movb	$1, 28(%ebx)
	.loc 15 34 0
	movw	$528, 16(%ebx)
	.loc 15 35 0
	movl	(%esp), %eax
.LVL404:
	decl	%eax
	shrw	$8, %ax
	movb	%al, 24(%ebx)
	.loc 15 36 0
	movl	$541672272, 20(%ebx)
	.loc 15 37 0
	movl	$pcibios32_entry+983040, 4(%ebx)
	jmp	.L248
.LVL405:
.L221:
.LBE7664:
.LBE7663:
.LBB7665:
.LBB7666:
	.loc 15 45 0
	movzwl	24(%ebx), %esi
.LVL406:
	sall	$16, %esi
	movzwl	20(%ebx), %eax
	orl	%eax, %esi
	.loc 15 46 0
	movzwl	8(%ebx), %edi
.LVL407:
	.loc 15 48 0
	movl	$256, (%esp)
.LVL408:
	movl	%esp, %edx
	xorl	%eax, %eax
	jmp	.L251
.LVL409:
.L239:
.LBB7667:
.LBB7668:
.LBB7669:
.LBB7670:
	.loc 2 89 0
	movzwl	%cx, %eax
.LVL410:
	sall	$8, %eax
	orl	$-2147483648, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7670:
.LBE7669:
.LBB7671:
.LBB7672:
	.loc 2 103 0
	movb	$-4, %dl
#APP
# 103 "src/ioport.h" 1
	inl %dx, %eax
# 0 "" 2
.LVL411:
#NO_APP
.LBE7672:
.LBE7671:
.LBE7668:
	.loc 15 50 0
	cmpl	%esi, %eax
	jne	.L237
	.loc 15 52 0
	testl	%edi, %edi
	je	.L242
	decl	%edi
.L237:
.LBE7667:
	.loc 15 48 0
	leal	1(%ecx), %eax
.LVL412:
	movl	%esp, %edx
.L251:
	call	pci_next.14700
.LVL413:
	movl	%eax, %ecx
.LVL414:
	testl	%eax, %eax
	jns	.L239
.LVL415:
	jmp	.L249
.LVL416:
.L222:
.LBE7666:
.LBE7665:
.LBB7673:
.LBB7674:
	.loc 15 65 0
	movzwl	8(%ebx), %esi
.LVL417:
	.loc 15 66 0
	movl	24(%ebx), %ebp
.LVL418:
	.loc 15 68 0
	movl	$256, (%esp)
.LVL419:
	movl	%esp, %edx
	xorl	%eax, %eax
	jmp	.L252
.LVL420:
.L243:
.LBB7675:
.LBB7676:
.LBB7677:
.LBB7678:
	.loc 2 89 0
	movzwl	%cx, %eax
.LVL421:
	sall	$8, %eax
	orl	$-2147483640, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7678:
.LBE7677:
.LBB7679:
.LBB7680:
	.loc 2 103 0
	movb	$-4, %dl
#APP
# 103 "src/ioport.h" 1
	inl %dx, %eax
# 0 "" 2
#NO_APP
.LBE7680:
.LBE7679:
.LBE7676:
	.loc 15 70 0
	shrl	$8, %eax
	cmpl	%ebp, %eax
	jne	.L241
	.loc 15 72 0
	testl	%esi, %esi
	je	.L242
	decl	%esi
	jmp	.L241
.LVL422:
.L242:
	.loc 15 74 0
	movw	%cx, 16(%ebx)
	jmp	.L248
.LVL423:
.L241:
.LBE7675:
	.loc 15 68 0
	leal	1(%ecx), %eax
	movl	%esp, %edx
.L252:
	call	pci_next.14700
.LVL424:
	movl	%eax, %ecx
.LVL425:
	testl	%eax, %eax
	jns	.L243
.LVL426:
.L249:
.LBB7681:
.LBB7682:
.LBB7683:
.LBB7684:
	.loc 14 90 0
	movb	$-122, 29(%ebx)
	jmp	.L247
.LVL427:
.L258:
.LBE7684:
.LBE7683:
.LBE7682:
.LBE7681:
.LBE7674:
.LBE7673:
.LBB7685:
.LBB7686:
	.loc 15 85 0
	movw	4(%ebx), %cx
.LBB7687:
.LBB7688:
.LBB7689:
	.loc 2 89 0
	movl	%ecx, %eax
	andl	$252, %eax
	orl	$-2147483648, %eax
	movzwl	16(%ebx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7689:
.LBE7688:
.LBB7690:
.LBB7691:
	.loc 2 93 0
	andl	$3, %ecx
	leal	3324(%ecx), %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL428:
#NO_APP
.LBE7691:
.LBE7690:
.LBE7687:
	.loc 15 85 0
	movb	%al, 24(%ebx)
	jmp	.L248
.LVL429:
.L224:
.LBE7686:
.LBE7685:
.LBB7692:
.LBB7693:
	.loc 15 93 0
	movw	4(%ebx), %cx
.LBB7694:
.LBB7695:
.LBB7696:
	.loc 2 89 0
	movl	%ecx, %eax
	andl	$252, %eax
	orl	$-2147483648, %eax
	movzwl	16(%ebx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7696:
.LBE7695:
.LBB7697:
.LBB7698:
	.loc 2 98 0
	andl	$2, %ecx
	leal	3324(%ecx), %edx
#APP
# 98 "src/ioport.h" 1
	inw %dx, %ax
# 0 "" 2
.LVL430:
#NO_APP
.LBE7698:
.LBE7697:
.LBE7694:
	.loc 15 93 0
	movw	%ax, 24(%ebx)
	jmp	.L248
.LVL431:
.L225:
.LBE7693:
.LBE7692:
.LBB7699:
.LBB7700:
.LBB7701:
.LBB7702:
.LBB7703:
	.loc 2 89 0
	movzwl	4(%ebx), %eax
	andl	$252, %eax
	orl	$-2147483648, %eax
	movzwl	16(%ebx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7703:
.LBE7702:
.LBB7704:
.LBB7705:
	.loc 2 103 0
	movb	$-4, %dl
#APP
# 103 "src/ioport.h" 1
	inl %dx, %eax
# 0 "" 2
.LVL432:
#NO_APP
.LBE7705:
.LBE7704:
.LBE7701:
	.loc 15 101 0
	movl	%eax, 24(%ebx)
	jmp	.L248
.LVL433:
.L259:
.LBE7700:
.LBE7699:
.LBB7706:
.LBB7707:
	.loc 15 109 0
	movw	4(%ebx), %cx
.LBB7708:
.LBB7709:
.LBB7710:
	.loc 2 89 0
	movl	%ecx, %eax
	andl	$252, %eax
	orl	$-2147483648, %eax
	movzwl	16(%ebx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7710:
.LBE7709:
.LBB7711:
.LBB7712:
	.loc 2 83 0
	movb	24(%ebx), %al
	andl	$3, %ecx
	leal	3324(%ecx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
	jmp	.L248
.L227:
.LBE7712:
.LBE7711:
.LBE7708:
.LBE7707:
.LBE7706:
.LBB7713:
.LBB7714:
	.loc 15 117 0
	movw	4(%ebx), %cx
.LBB7715:
.LBB7716:
.LBB7717:
	.loc 2 89 0
	movl	%ecx, %eax
	andl	$252, %eax
	orl	$-2147483648, %eax
	movzwl	16(%ebx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7717:
.LBE7716:
.LBB7718:
.LBB7719:
	.loc 2 86 0
	movw	24(%ebx), %ax
	andl	$2, %ecx
	leal	3324(%ecx), %edx
#APP
# 86 "src/ioport.h" 1
	outw %ax, %dx
# 0 "" 2
#NO_APP
	jmp	.L248
.L228:
.LBE7719:
.LBE7718:
.LBE7715:
.LBE7714:
.LBE7713:
.LBB7720:
.LBB7721:
.LBB7722:
.LBB7723:
	.loc 2 89 0
	movzwl	4(%ebx), %eax
	andl	$252, %eax
	orl	$-2147483648, %eax
	movzwl	16(%ebx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	$3320, %edx
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE7723:
.LBE7722:
.LBB7724:
.LBB7725:
	movl	24(%ebx), %eax
	movb	$-4, %dl
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
	jmp	.L248
.L260:
.LBE7725:
.LBE7724:
.LBE7721:
.LBE7720:
.LBB7726:
.LBB7727:
.LBB7728:
	.loc 15 133 0
#APP
# 133 "src/pcibios.c" 1
	movw %CS:PirOffset, %dx
# 0 "" 2
.LVL434:
#NO_APP
.LBE7728:
	movzwl	%dx, %edx
.LVL435:
	.loc 15 134 0
	testl	%edx, %edx
	je	.L219
	.loc 15 143 0
	movzwl	4(%ebx), %eax
.LVL436:
	.loc 15 146 0
	movw	2(%ebx), %si
#APP
# 146 "src/pcibios.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7729:
#APP
# 146 "src/pcibios.c" 1
	movw %ES:(%eax), %di
# 0 "" 2
.LVL437:
#NO_APP
.LBE7729:
.LBB7730:
	.loc 15 147 0
#APP
# 147 "src/pcibios.c" 1
	movw %CS:6(%edx), %cx
# 0 "" 2
.LVL438:
#NO_APP
.LBE7730:
	subl	$32, %ecx
.LVL439:
.LBB7731:
	.loc 15 148 0
#APP
# 148 "src/pcibios.c" 1
	movw %si, %ES
# 0 "" 2
# 148 "src/pcibios.c" 1
	movw %cx, %ES:(%eax)
# 0 "" 2
#NO_APP
.LBE7731:
	.loc 15 149 0
	cmpw	%cx, %di
	jae	.L245
.LBB7732:
.LBB7733:
.LBB7734:
.LBB7735:
	.loc 14 90 0
	movb	$-119, 29(%ebx)
	jmp	.L247
.L245:
.LBE7735:
.LBE7734:
.LBE7733:
.LBE7732:
	.loc 15 155 0
#APP
# 155 "src/pcibios.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7736:
#APP
# 155 "src/pcibios.c" 1
	movw %ES:2(%eax), %di
# 0 "" 2
.LVL440:
#NO_APP
.LBE7736:
	.loc 15 156 0
#APP
# 156 "src/pcibios.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB7737:
#APP
# 156 "src/pcibios.c" 1
	movw %ES:4(%eax), %ax
# 0 "" 2
.LVL441:
#NO_APP
.LBE7737:
.LBB7738:
.LBB7739:
	.loc 10 300 0
#APP
# 300 "src/biosvar.h" 1
	movw %CS, %bp
# 0 "" 2
.LVL442:
#NO_APP
.LBE7739:
.LBE7738:
.LBB7740:
.LBB7741:
	.file 16 "src/util.c"
	.loc 16 156 0
#APP
# 156 "src/util.c" 1
	movw %ax, %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	movzwl	%cx, %ecx
.LVL443:
	leal	32(%edx), %esi
	movzwl	%di, %edi
.LVL444:
#APP
# 158 "src/util.c" 1
	movw %ds, %ax
movw %bp, %ds
rep movsb (%si),%es:(%di)
movw %ax, %ds
# 0 "" 2
.LVL445:
#NO_APP
.LBE7741:
.LBE7740:
.LBB7742:
	.loc 15 165 0
#APP
# 165 "src/pcibios.c" 1
	movw %CS:10(%edx), %ax
# 0 "" 2
.LVL446:
#NO_APP
.LBE7742:
	movw	%ax, 16(%ebx)
.LVL447:
.L248:
.LBB7743:
.LBB7744:
	.loc 14 77 0
	movb	$0, 29(%ebx)
.LBB7745:
.LBB7746:
	.loc 14 62 0
	andw	$-2, 36(%ebx)
	jmp	.L246
.LVL448:
.L219:
.LBE7746:
.LBE7745:
.LBE7744:
.LBE7743:
.LBE7727:
.LBE7726:
.LBB7747:
.LBB7748:
.LBB7749:
.LBB7750:
.LBB7751:
.LBB7752:
	.loc 14 90 0
	movb	$-127, 29(%ebx)
.LVL449:
.L247:
.LBB7753:
.LBB7754:
	.loc 14 60 0
	orw	$1, 36(%ebx)
.LVL450:
.L246:
.LBE7754:
.LBE7753:
.LBE7752:
.LBE7751:
.LBE7750:
.LBE7749:
.LBE7748:
.LBE7747:
	.loc 15 198 0
	popl	%edx
.LCFI97:
	.cfi_def_cfa_offset 20
.LVL451:
	popl	%ebx
.LVL452:
	popl	%esi
.LVL453:
	popl	%edi
.LVL454:
	popl	%ebp
.LVL455:
	ret
	.cfi_endproc
.LFE1971:
	.size	handle_1ab1.1764, .-handle_1ab1.1764
	.section	.text.handle_1a,"ax",@progbits
.globl handle_1a
	.type	handle_1a, @function
handle_1a:
.LFB1185:
	.loc 7 447 0
	.cfi_startproc
.LVL456:
	pushl	%esi
.LCFI98:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.LCFI99:
	.cfi_def_cfa_offset 12
	movl	%eax, %ebx
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	.loc 7 449 0
	movb	29(%eax), %al
.LVL457:
	cmpb	$4, %al
	je	.L267
	ja	.L272
	cmpb	$1, %al
	je	.L264
	jb	.L263
	cmpb	$2, %al
	je	.L265
	cmpb	$3, %al
	jne	.L262
	jmp	.L287
.L272:
	cmpb	$6, %al
	je	.L269
	jb	.L268
	cmpb	$7, %al
	je	.L270
	cmpb	$-79, %al
	jne	.L262
	jmp	.L288
.L263:
.LBB7755:
.LBB7756:
.LBB7757:
.LBB7758:
.LBB7759:
.LBB7760:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE7760:
.LBE7759:
.LBE7758:
.LBE7757:
	.loc 7 258 0
	movl	$64, %eax
#APP
# 258 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7761:
#APP
# 258 "src/clock.c" 1
	movl %ES:108, %edx
# 0 "" 2
.LVL458:
#NO_APP
.LBE7761:
	.loc 7 259 0
	movl	%edx, %ecx
	shrl	$16, %ecx
	movw	%cx, 24(%ebx)
	.loc 7 260 0
	movw	%dx, 20(%ebx)
	.loc 7 261 0
#APP
# 261 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB7762:
#APP
# 261 "src/clock.c" 1
	movb %ES:112, %dl
# 0 "" 2
.LVL459:
#NO_APP
.LBE7762:
	movb	%dl, 28(%ebx)
.LBB7763:
	.loc 7 262 0
#APP
# 262 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
#APP
# 262 "src/clock.c" 1
	movb %al, %ES:112
# 0 "" 2
#NO_APP
	jmp	.L281
.LVL460:
.L264:
.LBE7763:
.LBE7756:
.LBE7755:
.LBB7764:
.LBB7765:
	.loc 7 270 0
	movzwl	24(%ebx), %eax
.LVL461:
	sall	$16, %eax
	movzwl	20(%ebx), %edx
	orl	%edx, %eax
.LBB7766:
	.loc 7 271 0
	movl	$64, %edx
#APP
# 271 "src/clock.c" 1
	movw %dx, %ES
# 0 "" 2
# 271 "src/clock.c" 1
	movl %eax, %ES:108
# 0 "" 2
#NO_APP
.LBE7766:
.LBB7767:
	.loc 7 272 0
#APP
# 272 "src/clock.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
.LVL462:
#APP
# 272 "src/clock.c" 1
	movb %al, %ES:112
# 0 "" 2
#NO_APP
.LBE7767:
	.loc 7 274 0
	movb	$0, 29(%ebx)
	jmp	.L281
.L265:
.LBE7765:
.LBE7764:
.LBB7768:
.LBB7769:
	.loc 7 282 0
	call	rtc_updating.25343
	testl	%eax, %eax
	jne	.L262
.LBB7770:
.LBB7771:
.LBB7772:
	.loc 2 83 0
	movb	$-128, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7772:
.LBE7771:
.LBB7773:
.LBB7774:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL463:
#NO_APP
.LBE7774:
.LBE7773:
.LBE7770:
	.loc 7 287 0
	movb	%al, 21(%ebx)
.LBB7775:
.LBB7776:
.LBB7777:
	.loc 2 83 0
	movb	$-126, %al
.LVL464:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7777:
.LBE7776:
.LBB7778:
.LBB7779:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL465:
#NO_APP
.LBE7779:
.LBE7778:
.LBE7775:
	.loc 7 288 0
	movb	%al, 24(%ebx)
.LBB7780:
.LBB7781:
.LBB7782:
	.loc 2 83 0
	movb	$-124, %al
.LVL466:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7782:
.LBE7781:
.LBB7783:
.LBB7784:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %dl
.LVL467:
.LBE7784:
.LBE7783:
.LBE7780:
	.loc 7 289 0
	movb	%al, 25(%ebx)
.LBB7785:
.LBB7786:
.LBB7787:
	.loc 2 83 0
	movb	$-117, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7787:
.LBE7786:
.LBB7788:
.LBB7789:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
.LBE7789:
.LBE7788:
.LBE7785:
	.loc 7 290 0
	andl	$1, %eax
	movb	%al, 20(%ebx)
	jmp	.L283
.LVL468:
.L287:
.LBE7769:
.LBE7768:
.LBB7790:
.LBB7791:
	.loc 7 310 0
	call	rtc_updating.25343
	testl	%eax, %eax
	je	.L275
.LBB7792:
.LBB7793:
.LBB7794:
.LBB7795:
.LBB7796:
	.loc 2 83 0
	movb	$-118, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7796:
.LBE7795:
.LBB7797:
.LBB7798:
	movb	$38, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7798:
.LBE7797:
.LBE7794:
.LBB7799:
.LBB7800:
.LBB7801:
	movb	$-117, %cl
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7801:
.LBE7800:
.LBB7802:
.LBB7803:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %dl
.LBE7803:
.LBE7802:
.LBE7799:
.LBB7804:
.LBB7805:
.LBB7806:
	.loc 2 83 0
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7806:
.LBE7805:
.LBB7807:
.LBB7808:
	andl	$1, %edx
	orl	$2, %edx
	movb	%dl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7808:
.LBE7807:
.LBE7804:
.LBB7809:
.LBB7810:
.LBB7811:
	movb	$-116, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7811:
.LBE7810:
.LBB7812:
.LBB7813:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL469:
#NO_APP
.LBE7813:
.LBE7812:
.LBE7809:
.LBB7814:
.LBB7815:
.LBB7816:
	.loc 2 83 0
	movb	$-115, %al
.LVL470:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7816:
.LBE7815:
.LBB7817:
.LBB7818:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL471:
#NO_APP
.L275:
.LBE7818:
.LBE7817:
.LBE7814:
.LBE7793:
.LBE7792:
.LBB7819:
.LBB7820:
.LBB7821:
	.loc 2 83 0
	movb	$-128, %al
.LVL472:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7821:
.LBE7820:
.LBB7822:
.LBB7823:
	movb	21(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7823:
.LBE7822:
.LBE7819:
.LBB7824:
.LBB7825:
.LBB7826:
	movb	$-126, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7826:
.LBE7825:
.LBB7827:
.LBB7828:
	movb	24(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7828:
.LBE7827:
.LBE7824:
.LBB7829:
.LBB7830:
.LBB7831:
	movb	$-124, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7831:
.LBE7830:
.LBB7832:
.LBB7833:
	movb	25(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7833:
.LBE7832:
.LBE7829:
.LBB7834:
.LBB7835:
.LBB7836:
	movb	$-117, %cl
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7836:
.LBE7835:
.LBB7837:
.LBB7838:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
.LBE7838:
.LBE7837:
.LBE7834:
	.loc 7 319 0
	movb	20(%ebx), %dl
.LVL473:
	andl	$1, %edx
.LVL474:
	orl	$2, %edx
.LVL475:
	andl	$96, %eax
	orl	%eax, %edx
.LVL476:
	jmp	.L284
.LVL477:
.L267:
.LBE7791:
.LBE7790:
.LBB7839:
.LBB7840:
	.loc 7 330 0
	movb	$0, 29(%ebx)
	.loc 7 331 0
	call	rtc_updating.25343
	testl	%eax, %eax
	jne	.L262
.LBB7841:
.LBB7842:
.LBB7843:
	.loc 2 83 0
	movb	$-119, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7843:
.LBE7842:
.LBB7844:
.LBB7845:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL478:
#NO_APP
.LBE7845:
.LBE7844:
.LBE7841:
	.loc 7 335 0
	movb	%al, 24(%ebx)
.LBB7846:
.LBB7847:
.LBB7848:
	.loc 2 83 0
	movb	$-120, %al
.LVL479:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7848:
.LBE7847:
.LBB7849:
.LBB7850:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL480:
#NO_APP
.LBE7850:
.LBE7849:
.LBE7846:
	.loc 7 336 0
	movb	%al, 21(%ebx)
.LBB7851:
.LBB7852:
.LBB7853:
	.loc 2 83 0
	movb	$-121, %al
.LVL481:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7853:
.LBE7852:
.LBB7854:
.LBB7855:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL482:
#NO_APP
.LBE7855:
.LBE7854:
.LBE7851:
	.loc 7 337 0
	movb	%al, 20(%ebx)
.LBB7856:
.LBB7857:
.LBB7858:
	.loc 2 83 0
	movb	$-78, %al
.LVL483:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7858:
.LBE7857:
.LBB7859:
.LBB7860:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL484:
#NO_APP
.LBE7860:
.LBE7859:
.LBE7856:
	.loc 7 344 0
	movb	%al, 25(%ebx)
	.loc 7 346 0
	movb	%al, 28(%ebx)
	jmp	.L281
.LVL485:
.L268:
.LBE7840:
.LBE7839:
.LBB7861:
.LBB7862:
	.loc 7 364 0
	call	rtc_updating.25343
	testl	%eax, %eax
	je	.L277
.LBB7863:
.LBB7864:
.LBB7865:
.LBB7866:
.LBB7867:
	.loc 2 83 0
	movb	$-118, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7867:
.LBE7866:
.LBB7868:
.LBB7869:
	movb	$38, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7869:
.LBE7868:
.LBE7865:
.LBB7870:
.LBB7871:
.LBB7872:
	movb	$-117, %cl
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7872:
.LBE7871:
.LBB7873:
.LBB7874:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %dl
.LBE7874:
.LBE7873:
.LBE7870:
.LBB7875:
.LBB7876:
.LBB7877:
	.loc 2 83 0
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7877:
.LBE7876:
.LBB7878:
.LBB7879:
	andl	$1, %edx
	orl	$2, %edx
	movb	%dl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7879:
.LBE7878:
.LBE7875:
.LBB7880:
.LBB7881:
.LBB7882:
	movb	$-116, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7882:
.LBE7881:
.LBB7883:
.LBB7884:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL486:
#NO_APP
.LBE7884:
.LBE7883:
.LBE7880:
.LBB7885:
.LBB7886:
.LBB7887:
	.loc 2 83 0
	movb	$-115, %al
.LVL487:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7887:
.LBE7886:
.LBB7888:
.LBB7889:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL488:
#NO_APP
	jmp	.L262
.LVL489:
.L277:
.LBE7889:
.LBE7888:
.LBE7885:
.LBE7864:
.LBE7863:
.LBB7890:
.LBB7891:
.LBB7892:
	.loc 2 83 0
	movb	$-119, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7892:
.LBE7891:
.LBB7893:
.LBB7894:
	movb	24(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7894:
.LBE7893:
.LBE7890:
.LBB7895:
.LBB7896:
.LBB7897:
	movb	$-120, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7897:
.LBE7896:
.LBB7898:
.LBB7899:
	movb	21(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7899:
.LBE7898:
.LBE7895:
.LBB7900:
.LBB7901:
.LBB7902:
	movb	$-121, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7902:
.LBE7901:
.LBB7903:
.LBB7904:
	movb	20(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7904:
.LBE7903:
.LBE7900:
.LBB7905:
.LBB7906:
.LBB7907:
	movb	$-78, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7907:
.LBE7906:
.LBB7908:
.LBB7909:
	movb	25(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7909:
.LBE7908:
.LBE7905:
.LBB7910:
.LBB7911:
.LBB7912:
	movb	$-117, %cl
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7912:
.LBE7911:
.LBB7913:
.LBB7914:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %dl
.LVL490:
.LBE7914:
.LBE7913:
.LBE7910:
	.loc 7 375 0
	andl	$127, %edx
.LVL491:
.L284:
.LBB7915:
.LBB7916:
.LBB7917:
	.loc 2 83 0
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7917:
.LBE7916:
.LBB7918:
.LBB7919:
	movb	%dl, %al
	jmp	.L282
.LVL492:
.L269:
.LBE7919:
.LBE7918:
.LBE7915:
.LBE7862:
.LBE7861:
.LBB7920:
.LBB7921:
.LBB7922:
.LBB7923:
.LBB7924:
	movb	$-117, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7924:
.LBE7923:
.LBB7925:
.LBB7926:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movl	%eax, %esi
.LVL493:
.LBE7926:
.LBE7925:
.LBE7922:
	.loc 7 397 0
	movw	$0, 28(%ebx)
	.loc 7 398 0
	testb	$32, %al
	jne	.L262
.LVL494:
	.loc 7 403 0
	call	rtc_updating.25343
.LVL495:
	testl	%eax, %eax
	je	.L279
.LBB7927:
.LBB7928:
.LBB7929:
.LBB7930:
.LBB7931:
	.loc 2 83 0
	movb	$-118, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7931:
.LBE7930:
.LBB7932:
.LBB7933:
	movb	$38, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7933:
.LBE7932:
.LBE7929:
.LBB7934:
.LBB7935:
.LBB7936:
	movb	$-117, %cl
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7936:
.LBE7935:
.LBB7937:
.LBB7938:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %dl
.LBE7938:
.LBE7937:
.LBE7934:
.LBB7939:
.LBB7940:
.LBB7941:
	.loc 2 83 0
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7941:
.LBE7940:
.LBB7942:
.LBB7943:
	andl	$1, %edx
	orl	$2, %edx
	movb	%dl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7943:
.LBE7942:
.LBE7939:
.LBB7944:
.LBB7945:
.LBB7946:
	movb	$-116, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7946:
.LBE7945:
.LBB7947:
.LBB7948:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL496:
#NO_APP
.LBE7948:
.LBE7947:
.LBE7944:
.LBB7949:
.LBB7950:
.LBB7951:
	.loc 2 83 0
	movb	$-115, %al
.LVL497:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7951:
.LBE7950:
.LBB7952:
.LBB7953:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
.LVL498:
#NO_APP
.L279:
.LBE7953:
.LBE7952:
.LBE7949:
.LBE7928:
.LBE7927:
.LBB7954:
.LBB7955:
.LBB7956:
	.loc 2 83 0
	movb	$-127, %al
.LVL499:
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7956:
.LBE7955:
.LBB7957:
.LBB7958:
	movb	21(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7958:
.LBE7957:
.LBE7954:
.LBB7959:
.LBB7960:
.LBB7961:
	movb	$-125, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7961:
.LBE7960:
.LBB7962:
.LBB7963:
	movb	24(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7963:
.LBE7962:
.LBE7959:
.LBB7964:
.LBB7965:
.LBB7966:
	movb	$-123, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7966:
.LBE7965:
.LBB7967:
.LBB7968:
	movb	25(%ebx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
.LBE7968:
.LBE7967:
.LBE7964:
.LBB7969:
.LBB7970:
.LBB7971:
	movb	$-117, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7971:
.LBE7970:
.LBB7972:
.LBB7973:
	movl	%esi, %eax
	andl	$95, %eax
	orl	$32, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
	jmp	.L281
.LVL500:
.L270:
.LBE7973:
.LBE7972:
.LBE7969:
.LBE7921:
.LBE7920:
.LBB7974:
.LBB7975:
.LBB7976:
.LBB7977:
.LBB7978:
	movb	$-117, %cl
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7978:
.LBE7977:
.LBB7979:
.LBB7980:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %dl
.LVL501:
.LBE7980:
.LBE7979:
.LBE7976:
.LBB7981:
.LBB7982:
.LBB7983:
	.loc 2 83 0
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE7983:
.LBE7982:
.LBB7984:
.LBB7985:
	movl	%edx, %eax
.LVL502:
	andl	$95, %eax
.LVL503:
.L282:
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
.LVL504:
#NO_APP
.L283:
.LBE7985:
.LBE7984:
.LBE7981:
	.loc 7 432 0
	movb	$0, 29(%ebx)
	.loc 7 433 0
	movb	%dl, 28(%ebx)
.LVL505:
.L281:
.LBB7986:
.LBB7987:
.LBB7988:
	.loc 14 62 0
	andw	$-2, 36(%ebx)
.LBE7988:
.LBE7987:
.LBE7986:
.LBE7975:
.LBE7974:
	.loc 7 457 0
	jmp	.L280
.LVL506:
.L288:
	.loc 7 458 0
	movl	%ebx, %eax
	.loc 7 461 0
	popl	%ebx
.LVL507:
	popl	%esi
	.loc 7 458 0
	jmp	handle_1ab1.1764
.LVL508:
.L262:
.LBB7989:
.LBB7990:
.LBB7991:
.LBB7992:
.LBB7993:
.LBB7994:
	.loc 14 60 0
	orw	$1, 36(%ebx)
.LVL509:
.L280:
.LBE7994:
.LBE7993:
.LBE7992:
.LBE7991:
.LBE7990:
.LBE7989:
	.loc 7 461 0
	popl	%ebx
.LVL510:
	popl	%esi
.LVL511:
	ret
	.cfi_endproc
.LFE1185:
	.size	handle_1a, .-handle_1a
	.section	.text.handle_hwpic1,"ax",@progbits
.globl handle_hwpic1
	.type	handle_hwpic1, @function
handle_hwpic1:
.LFB1271:
	.file 17 "src/pic.c"
	.loc 17 42 0
	.cfi_startproc
.LVL512:
.LBB7995:
.LBB7996:
.LBB7997:
	.loc 2 83 0
	movb	$32, %al
.LVL513:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE7997:
.LBE7996:
.LBE7995:
	.loc 17 45 0
	ret
	.cfi_endproc
.LFE1271:
	.size	handle_hwpic1, .-handle_hwpic1
	.section	.text.handle_hwpic2,"ax",@progbits
.globl handle_hwpic2
	.type	handle_hwpic2, @function
handle_hwpic2:
.LFB1272:
	.loc 17 49 0
	.cfi_startproc
.LVL514:
.LBB7998:
.LBB7999:
.LBB8000:
	.loc 2 83 0
	movb	$32, %al
.LVL515:
#APP
# 83 "src/ioport.h" 1
	outb %al, $160
# 0 "" 2
#NO_APP
.LBE8000:
.LBE7999:
.LBB8001:
.LBB8002:
.LBB8003:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE8003:
.LBE8002:
.LBE8001:
.LBE7998:
	.loc 17 52 0
	ret
	.cfi_endproc
.LFE1272:
	.size	handle_hwpic2, .-handle_hwpic2
	.section	.text.usb_init_hub_port.43522,"ax",@progbits
	.type	usb_init_hub_port.43522, @function
usb_init_hub_port.43522:
.LFB2130:
	.file 18 "src/usb.c"
	.loc 18 359 0
	.cfi_startproc
.LVL516:
	pushl	%ebx
.LCFI100:
	.cfi_def_cfa_offset 8
	movl	%eax, %ebx
	.cfi_offset 3, -8
	.loc 18 364 0
	movl	(%eax), %ecx
	movl	20(%eax), %edx
	call	*(%ecx)
.LVL517:
	.loc 18 365 0
	testl	%eax, %eax
.LVL518:
	jne	.L294
.LBB8004:
.LBB8005:
	.loc 6 315 0
	call	__force_link_error__only_in_32bit_flat
.LVL519:
.L294:
.LBE8005:
.LBE8004:
	.loc 18 391 0
	decl	24(%ebx)
	.loc 18 397 0
	popl	%ebx
.LVL520:
	ret
	.cfi_endproc
.LFE2130:
	.size	usb_init_hub_port.43522, .-usb_init_hub_port.43522
	.section	.text.usb_poll_intr.42677,"ax",@progbits
	.type	usb_poll_intr.42677, @function
usb_poll_intr.42677:
.LFB2122:
	.loc 18 142 0
	.cfi_startproc
.LVL521:
	pushl	%ebp
.LCFI101:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI102:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI103:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI104:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.LCFI105:
	.cfi_def_cfa_offset 48
	movl	%eax, %ecx
	movl	%edx, 24(%esp)
.LBB8080:
	.loc 18 143 0
	leal	4(%eax), %eax
.LVL522:
	movl	%eax, %edx
.LVL523:
	shrl	$4, %edx
#APP
# 143 "src/usb.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8081:
	andl	$15, %eax
#APP
# 143 "src/usb.c" 1
	movb %ES:(%eax), %al
# 0 "" 2
.LVL524:
#NO_APP
.LBE8081:
.LBE8080:
	cmpb	$2, %al
	je	.L298
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	cmpb	$3, %al
	je	.L299
.LBB8082:
.LBB8083:
.LBB8084:
	.file 19 "src/usb-uhci.c"
	.loc 19 581 0
	subl	$4, %ecx
.LVL525:
	movl	%ecx, %eax
.LVL526:
	shrl	$4, %eax
	movl	%eax, 8(%esp)
#APP
# 581 "src/usb-uhci.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8085:
	andl	$15, %ecx
	movl	%ecx, (%esp)
#APP
# 581 "src/usb-uhci.c" 1
	movl %ES:(%ecx), %edx
# 0 "" 2
.LVL527:
#NO_APP
.LBE8085:
.LBE8084:
.LBB8086:
	.loc 19 582 0
	leal	4(%edx), %ebp
	movl	%ebp, %ecx
	shrl	$4, %ecx
	movl	%ecx, 12(%esp)
#APP
# 582 "src/usb-uhci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB8087:
	andl	$15, %ebp
#APP
# 582 "src/usb-uhci.c" 1
	movl %ES:(%ebp), %ebx
# 0 "" 2
#NO_APP
	movl	%ebx, 16(%esp)
.LBE8087:
.LBE8086:
.LBB8088:
	.loc 19 583 0
	leal	8(%edx), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
#APP
# 583 "src/usb-uhci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB8089:
	andl	$15, %eax
#APP
# 583 "src/usb-uhci.c" 1
	movl %ES:(%eax), %ecx
# 0 "" 2
.LVL528:
#NO_APP
.LBE8089:
.LBE8088:
	.loc 19 584 0
	andl	$8388608, %ebx
	jne	.L300
.LBB8090:
	.loc 19 590 0
	leal	12(%edx), %eax
	movl	%eax, %esi
	shrl	$4, %esi
#APP
# 590 "src/usb-uhci.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB8091:
	andl	$15, %eax
#APP
# 590 "src/usb-uhci.c" 1
	movl %ES:(%eax), %esi
# 0 "" 2
.LVL529:
#NO_APP
.LBE8091:
.LBE8090:
.LBB8092:
	.loc 19 591 0
#APP
# 591 "src/usb-uhci.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL530:
#NO_APP
.LBE8092:
.LBB8093:
.LBB8094:
	.loc 16 156 0
#APP
# 156 "src/util.c" 1
	movw %ax, %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	movl	%esi, %eax
.LVL531:
	shrl	$4, %eax
	movl	%eax, 4(%esp)
	shrl	$21, %ecx
.LVL532:
	incl	%ecx
	andl	$2047, %ecx
	andl	$15, %esi
.LVL533:
	movl	24(%esp), %edi
.LVL534:
#APP
# 158 "src/util.c" 1
	movw %ds, %bx
movw %ax, %ds
rep movsb (%si),%es:(%di)
movw %bx, %ds
# 0 "" 2
.LVL535:
#NO_APP
.LBE8094:
.LBE8093:
.LBB8095:
	.loc 19 596 0
	movl	%edx, %eax
	shrl	$4, %eax
#APP
# 596 "src/usb-uhci.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8096:
	andl	$15, %edx
.LVL536:
#APP
# 596 "src/usb-uhci.c" 1
	movl %ES:(%edx), %eax
# 0 "" 2
#NO_APP
.LBE8096:
.LBE8095:
.LBB8097:
.LBB8098:
	.loc 19 597 0
#APP
# 597 "src/usb-uhci.c" 1
	movw 8(%esp), %ES
# 0 "" 2
#NO_APP
	andl	$-16, %eax
	movl	(%esp), %edx
#APP
# 597 "src/usb-uhci.c" 1
	movl %eax, %ES:(%edx)
# 0 "" 2
#NO_APP
.LBE8098:
.LBE8097:
	.loc 19 598 0
.LBB8099:
.LBB8100:
	.loc 19 599 0
#APP
# 599 "src/usb-uhci.c" 1
	movw 12(%esp), %ES
# 0 "" 2
#NO_APP
	movl	16(%esp), %eax
	andl	$67108864, %eax
	orl	$8388608, %eax
#APP
# 599 "src/usb-uhci.c" 1
	movl %eax, %ES:(%ebp)
# 0 "" 2
#NO_APP
	jmp	.L304
.LVL537:
.L298:
.LBE8100:
.LBE8099:
.LBE8083:
.LBE8082:
.LBB8101:
.LBB8102:
.LBB8103:
	.file 20 "src/usb-ohci.c"
	.loc 20 502 0
	leal	20(%ecx), %eax
.LVL538:
	movl	%eax, %edx
	shrl	$4, %edx
#APP
# 502 "src/usb-ohci.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8104:
	andl	$15, %eax
#APP
# 502 "src/usb-ohci.c" 1
	movl %ES:(%eax), %edi
# 0 "" 2
.LVL539:
#NO_APP
.LBE8104:
.LBE8103:
.LBB8105:
	.loc 20 503 0
	leal	-8(%ecx), %eax
	movl	%eax, %edx
	shrl	$4, %edx
#APP
# 503 "src/usb-ohci.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8106:
	andl	$15, %eax
#APP
# 503 "src/usb-ohci.c" 1
	movl %ES:(%eax), %ebp
# 0 "" 2
.LVL540:
#NO_APP
.LBE8106:
.LBE8105:
.LBB8107:
	.loc 20 504 0
	leal	-12(%ecx), %eax
	movl	%eax, %ebx
	shrl	$4, %ebx
	movl	%ebx, 12(%esp)
#APP
# 504 "src/usb-ohci.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB8108:
	andl	$15, %eax
	movl	%eax, 16(%esp)
#APP
# 504 "src/usb-ohci.c" 1
	movl %ES:(%eax), %ebx
# 0 "" 2
.LVL541:
#NO_APP
.LBE8108:
.LBE8107:
.LBB8109:
	.loc 20 505 0
	leal	16(%ecx), %eax
	movl	%eax, %edx
	shrl	$4, %edx
#APP
# 505 "src/usb-ohci.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8110:
	andl	$15, %eax
#APP
# 505 "src/usb-ohci.c" 1
	movl %ES:(%eax), %esi
# 0 "" 2
.LVL542:
#NO_APP
.LBE8110:
.LBE8109:
	.loc 20 506 0
	movl	%ebx, %eax
	subl	%edi, %eax
	sarl	$4, %eax
	movl	%eax, 4(%esp)
	incl	%eax
	cltd
	idivl	%esi
	.loc 20 507 0
	movl	%edx, %eax
	sall	$4, %eax
	leal	(%edi,%eax), %eax
	movl	%eax, 8(%esp)
	.loc 20 508 0
	orl	$-1, %eax
	cmpl	%ebp, 8(%esp)
	je	.L301
.LBB8111:
	.loc 20 514 0
	leal	8(%ecx), %eax
	movl	%eax, %esi
.LVL543:
	shrl	$4, %esi
#APP
# 514 "src/usb-ohci.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB8112:
	andl	$15, %eax
#APP
# 514 "src/usb-ohci.c" 1
	movw %ES:(%eax), %bp
# 0 "" 2
.LVL544:
#NO_APP
.LBE8112:
.LBE8111:
	movzwl	%bp, %ebp
.LVL545:
.LBB8113:
	.loc 20 515 0
	addl	$12, %ecx
.LVL546:
	movl	%ecx, %eax
	shrl	$4, %eax
#APP
# 515 "src/usb-ohci.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8114:
	andl	$15, %ecx
#APP
# 515 "src/usb-ohci.c" 1
	movl %ES:(%ecx), %eax
# 0 "" 2
#NO_APP
	movl	%eax, 20(%esp)
.LBE8114:
.LBE8113:
	.loc 20 518 0
	movl	%ebp, %esi
	imull	%edx, %esi
	addl	%eax, %esi
.LBB8115:
	.loc 20 517 0
#APP
# 517 "src/usb-ohci.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL547:
#NO_APP
.LBE8115:
.LBB8116:
.LBB8117:
	.loc 16 156 0
#APP
# 156 "src/util.c" 1
	movw %ax, %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	movl	%esi, %edx
	shrl	$4, %edx
	andl	$15, %esi
	movl	%ebp, %ecx
.LVL548:
	movl	24(%esp), %edi
.LVL549:
#APP
# 158 "src/util.c" 1
	movw %ds, %ax
movw %dx, %ds
rep movsb (%si),%es:(%di)
movw %ax, %ds
# 0 "" 2
.LVL550:
#NO_APP
.LBE8117:
.LBE8116:
.LBB8118:
.LBB8119:
	.loc 20 522 0
	movl	%ebx, %eax
.LVL551:
	shrl	$4, %eax
#APP
# 522 "src/usb-ohci.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movl	%ebx, %eax
	andl	$15, %eax
	movl	$-267386880, %edx
#APP
# 522 "src/usb-ohci.c" 1
	movl %edx, %ES:(%eax)
# 0 "" 2
#NO_APP
.LBE8119:
.LBE8118:
.LBB8120:
.LBB8121:
	.loc 20 524 0
	movl	4(%esp), %eax
	imull	%ebp, %eax
	addl	20(%esp), %eax
.LVL552:
	leal	4(%ebx), %edx
	movl	%edx, %ecx
.LVL553:
	shrl	$4, %ecx
#APP
# 524 "src/usb-ohci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	andl	$15, %edx
#APP
# 524 "src/usb-ohci.c" 1
	movl %eax, %ES:(%edx)
# 0 "" 2
#NO_APP
.LBE8121:
.LBE8120:
.LBB8122:
.LBB8123:
	.loc 20 525 0
	leal	8(%ebx), %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
#APP
# 525 "src/usb-ohci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	andl	$15, %edx
	movl	8(%esp), %ecx
#APP
# 525 "src/usb-ohci.c" 1
	movl %ecx, %ES:(%edx)
# 0 "" 2
#NO_APP
.LBE8123:
.LBE8122:
.LBB8124:
.LBB8125:
	.loc 20 526 0
	addl	$12, %ebx
.LVL554:
	movl	%ebx, %edx
	shrl	$4, %edx
#APP
# 526 "src/usb-ohci.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	andl	$15, %ebx
	leal	-1(%ebp,%eax), %eax
.LVL555:
#APP
# 526 "src/usb-ohci.c" 1
	movl %eax, %ES:(%ebx)
# 0 "" 2
#NO_APP
.LBE8125:
.LBE8124:
	.loc 20 527 0
.LBB8126:
.LBB8127:
	.loc 20 528 0
#APP
# 528 "src/usb-ohci.c" 1
	movw 12(%esp), %ES
# 0 "" 2
#NO_APP
	movl	16(%esp), %ebx
#APP
# 528 "src/usb-ohci.c" 1
	movl %ecx, %ES:(%ebx)
# 0 "" 2
.LVL556:
#NO_APP
.L304:
	xorl	%eax, %eax
	jmp	.L301
.LVL557:
.L299:
.LBE8127:
.LBE8126:
.LBE8102:
.LBE8101:
.LBB8128:
.LBB8129:
.LBB8130:
	.file 21 "src/usb-ehci.c"
	.loc 21 736 0
	leal	-12(%ecx), %ebp
	movl	%ebp, %eax
.LVL558:
	shrl	$4, %eax
	movl	%eax, 12(%esp)
#APP
# 736 "src/usb-ehci.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8131:
	andl	$15, %ebp
	movl	%ebp, (%esp)
#APP
# 736 "src/usb-ehci.c" 1
	movl %ES:(%ebp), %edx
# 0 "" 2
.LVL559:
#NO_APP
.LBE8131:
.LBE8130:
.LBB8132:
	.loc 21 737 0
	leal	8(%edx), %eax
	movl	%eax, %ebx
	shrl	$4, %ebx
	movl	%ebx, 16(%esp)
#APP
# 737 "src/usb-ehci.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB8133:
	andl	$15, %eax
	movl	%eax, 20(%esp)
#APP
# 737 "src/usb-ehci.c" 1
	movl %ES:(%eax), %eax
# 0 "" 2
.LVL560:
#NO_APP
.LBE8133:
.LBE8132:
	.loc 21 738 0
	testb	%al, %al
	js	.L300
.LBB8134:
	.loc 21 744 0
	leal	8(%ecx), %eax
.LVL561:
	movl	%eax, %ebx
	shrl	$4, %ebx
#APP
# 744 "src/usb-ehci.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB8135:
	andl	$15, %eax
#APP
# 744 "src/usb-ehci.c" 1
	movw %ES:(%eax), %ax
# 0 "" 2
.LVL562:
#NO_APP
.LBE8135:
.LBE8134:
	movzwl	%ax, %eax
.LVL563:
	movl	%eax, 8(%esp)
.LBB8136:
	.loc 21 745 0
	leal	-8(%ecx), %eax
	movl	%eax, %ebx
	shrl	$4, %ebx
#APP
# 745 "src/usb-ehci.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB8137:
	andl	$15, %eax
#APP
# 745 "src/usb-ehci.c" 1
	movl %ES:(%eax), %eax
# 0 "" 2
.LVL564:
#NO_APP
.LBE8137:
.LBE8136:
.LBB8138:
	.loc 21 746 0
	subl	$4, %ecx
.LVL565:
	movl	%ecx, %ebx
	shrl	$4, %ebx
#APP
# 746 "src/usb-ehci.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB8139:
	andl	$15, %ecx
#APP
# 746 "src/usb-ehci.c" 1
	movl %ES:(%ecx), %ecx
# 0 "" 2
.LVL566:
#NO_APP
.LBE8139:
.LBE8138:
	.loc 21 748 0
	movl	%edx, %ebx
	subl	%eax, %ebx
	sarl	$5, %ebx
	imull	8(%esp), %ebx
	leal	(%ecx,%ebx), %ebx
.LBB8140:
	.loc 21 747 0
#APP
# 747 "src/usb-ehci.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL567:
#NO_APP
.LBE8140:
.LBB8141:
.LBB8142:
	.loc 16 156 0
#APP
# 156 "src/util.c" 1
	movw %ax, %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	movl	%ebx, %ebp
	shrl	$4, %ebp
	movl	%ebp, 4(%esp)
	movl	%ebx, %esi
	andl	$15, %esi
	movl	8(%esp), %ecx
.LVL568:
	movl	24(%esp), %edi
.LVL569:
#APP
# 158 "src/util.c" 1
	movw %ds, %ax
movw %bp, %ds
rep movsb (%si),%es:(%di)
movw %ax, %ds
# 0 "" 2
.LVL570:
#NO_APP
.LBE8142:
.LBE8141:
.LBB8143:
	.loc 21 752 0
	movl	%edx, %eax
	shrl	$4, %eax
#APP
# 752 "src/usb-ehci.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8144:
	movl	%edx, %eax
	andl	$15, %eax
#APP
# 752 "src/usb-ehci.c" 1
	movl %ES:(%eax), %eax
# 0 "" 2
#NO_APP
.LBE8144:
.LBE8143:
.LBB8145:
.LBB8146:
	.loc 21 753 0
#APP
# 753 "src/usb-ehci.c" 1
	movw 12(%esp), %ES
# 0 "" 2
#NO_APP
	andl	$-32, %eax
	movl	(%esp), %ecx
.LVL571:
#APP
# 753 "src/usb-ehci.c" 1
	movl %eax, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE8146:
.LBE8145:
.LBB8147:
.LBB8148:
	.loc 21 754 0
	addl	$12, %edx
.LVL572:
	movl	%edx, %eax
	shrl	$4, %eax
#APP
# 754 "src/usb-ehci.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	andl	$15, %edx
#APP
# 754 "src/usb-ehci.c" 1
	movl %ebx, %ES:(%edx)
# 0 "" 2
#NO_APP
.LBE8148:
.LBE8147:
	.loc 21 755 0
.LBB8149:
.LBB8150:
	.loc 21 756 0
#APP
# 756 "src/usb-ehci.c" 1
	movw 16(%esp), %ES
# 0 "" 2
#NO_APP
	movl	8(%esp), %eax
	sall	$16, %eax
	andl	$2147418112, %eax
	orl	$3456, %eax
	movl	20(%esp), %ebx
#APP
# 756 "src/usb-ehci.c" 1
	movl %eax, %ES:(%ebx)
# 0 "" 2
#NO_APP
	jmp	.L304
.LVL573:
.L300:
	orl	$-1, %eax
.LVL574:
.L301:
.LBE8150:
.LBE8149:
.LBE8129:
.LBE8128:
	.loc 18 152 0
	addl	$28, %esp
	popl	%ebx
.LVL575:
	popl	%esi
.LVL576:
	popl	%edi
.LVL577:
	popl	%ebp
.LVL578:
	ret
	.cfi_endproc
.LFE2122:
	.size	usb_poll_intr.42677, .-usb_poll_intr.42677
	.section	.text.usb_check_mouse.51624,"ax",@progbits
	.type	usb_check_mouse.51624, @function
usb_check_mouse.51624:
.LFB2469:
	.file 22 "src/usb-hid.c"
	.loc 22 352 0
	.cfi_startproc
	pushl	%ebp
.LCFI106:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI107:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI108:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI109:
	.cfi_def_cfa_offset 20
	subl	$20, %esp
.LCFI110:
	.cfi_def_cfa_offset 40
.LBB8151:
	.loc 22 355 0
#APP
# 355 "src/usb-hid.c" 1
	movl %CS:mouse_pipe, %ebx
# 0 "" 2
.LVL579:
#NO_APP
.LBE8151:
	.loc 22 356 0
	testl	%ebx, %ebx
	je	.L312
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LBB8152:
	.loc 22 361 0
	leal	12(%esp), %esi
.L313:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	usb_poll_intr.42677
	.loc 22 362 0
	testl	%eax, %eax
.LVL580:
	jne	.L312
.LBB8153:
.LBB8154:
	.loc 22 341 0
	movb	13(%esp), %al
.LVL581:
	movb	%al, 3(%esp)
	movb	14(%esp), %dl
.LVL582:
	negl	%edx
.LVL583:
	.loc 22 343 0
	movb	12(%esp), %al
	movb	3(%esp), %cl
	sarb	$7, %cl
	movl	%ecx, %ebp
	andl	$16, %ebp
	movb	%dl, %cl
	sarb	$7, %cl
	movl	%ecx, %edi
	andl	$32, %edi
	.loc 22 344 0
	andl	$7, %eax
	orl	$8, %eax
	orl	%ebp, %eax
	orl	%edi, %eax
	movzbl	%al, %eax
	movb	%dl, 8(%esp)
.LVL584:
	call	process_mouse.1711
	.loc 22 345 0
	movzbl	3(%esp), %eax
	call	process_mouse.1711
	.loc 22 346 0
	movb	8(%esp), %dl
	movzbl	%dl, %eax
.LVL585:
	call	process_mouse.1711
.LVL586:
.LBE8154:
.LBE8153:
.LBE8152:
	.loc 22 365 0
	jmp	.L313
.LVL587:
.L312:
	.loc 22 366 0
	addl	$20, %esp
	popl	%ebx
.LVL588:
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.cfi_endproc
.LFE2469:
	.size	usb_check_mouse.51624, .-usb_check_mouse.51624
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Standby"
.LC1:
	.string	"Suspend"
.LC2:
	.string	"Shutdown"
	.section	.text.handle_1553.1762,"ax",@progbits
	.type	handle_1553.1762, @function
handle_1553.1762:
.LFB2853:
	.file 23 "src/apm.c"
	.loc 23 200 0
	.cfi_startproc
.LVL589:
	pushl	%ebx
.LCFI111:
	.cfi_def_cfa_offset 8
	movl	%eax, %ecx
	.loc 23 207 0
	movb	28(%eax), %al
.LVL590:
	cmpb	$6, %al
	je	.L346
	.cfi_offset 3, -8
	ja	.L330
	cmpb	$2, %al
	je	.L318
	ja	.L331
	testb	%al, %al
	je	.L316
	decb	%al
	jne	.L315
	jmp	.L346
.L331:
	cmpb	$4, %al
	je	.L346
	ja	.L321
	jmp	.L351
.L330:
	cmpb	$11, %al
	je	.L326
	ja	.L332
	cmpb	$8, %al
	je	.L346
	jb	.L323
	cmpb	$10, %al
	jne	.L315
	jmp	.L352
.L332:
	cmpb	$15, %al
	je	.L346
	cmpb	$16, %al
	je	.L329
	cmpb	$14, %al
	jne	.L315
	jmp	.L353
.L316:
.LBB8155:
.LBB8156:
	.loc 23 38 0
	movb	$1, 29(%ecx)
	.loc 23 39 0
	movb	$2, 28(%ecx)
	.loc 23 40 0
	movb	$80, 17(%ecx)
	.loc 23 41 0
	movb	$77, 16(%ecx)
	.loc 23 44 0
	movw	$3, 24(%ecx)
	jmp	.L346
.L318:
.LBE8156:
.LBE8155:
.LBB8157:
.LBB8158:
	.loc 23 63 0
	movl	$apm16protected_entry, %eax
	movw	%ax, 16(%ecx)
	.loc 23 64 0
	movw	$-4096, 28(%ecx)
	.loc 23 65 0
	movw	$-16, 8(%ecx)
	.loc 23 66 0
	movw	$-4096, 24(%ecx)
	jmp	.L347
.L351:
.LBE8158:
.LBE8157:
.LBB8159:
.LBB8160:
	.loc 23 75 0
	movw	$-4096, 28(%ecx)
	.loc 23 76 0
	movl	$apm32protected_entry, 16(%ecx)
	.loc 23 77 0
	movw	$-4096, 24(%ecx)
	.loc 23 80 0
	movl	$-983056, 8(%ecx)
	.loc 23 81 0
	movw	$-4096, 20(%ecx)
.L347:
	.loc 23 82 0
	movw	$-16, 4(%ecx)
	jmp	.L346
.L321:
.LBE8160:
.LBE8159:
.LBB8161:
.LBB8162:
.LBB8163:
	.loc 6 139 0
#APP
# 139 "src/stacks.c" 1
	sti ; hlt ; cli ; cld
# 0 "" 2
#NO_APP
	jmp	.L346
.L323:
.LBE8163:
.LBE8162:
.LBE8161:
.LBB8164:
.LBB8165:
	.loc 23 121 0
	cmpw	$1, 16(%ecx)
	jne	.L346
	.loc 23 125 0
	movw	24(%ecx), %ax
	cmpw	$2, %ax
	je	.L337
	cmpw	$3, %ax
	je	.L338
	decw	%ax
	jne	.L346
.LBB8166:
.LBB8167:
	.loc 23 24 0
	movl	$.LC0, %ebx
.LVL591:
.LBB8168:
.LBB8169:
.LBB8170:
	.loc 2 83 0
	movl	$-30464, %edx
.LVL592:
.L339:
.LBE8170:
.LBE8169:
.LBB8172:
	.loc 23 26 0
#APP
# 26 "src/apm.c" 1
	movb %CS:(%ebx), %al
# 0 "" 2
#NO_APP
.LBE8172:
	.loc 23 27 0
	testb	%al, %al
	je	.L346
.LBB8173:
.LBB8171:
	.loc 2 83 0
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8171:
.LBE8173:
	.loc 23 30 0
	incl	%ebx
	jmp	.L339
.LVL593:
.L337:
.LBE8168:
.LBE8167:
.LBE8166:
.LBB8174:
.LBB8175:
	.loc 23 24 0
	movl	$.LC1, %ebx
.LVL594:
.LBB8176:
.LBB8177:
.LBB8178:
	.loc 2 83 0
	movl	$-30464, %edx
.LVL595:
.L340:
.LBE8178:
.LBE8177:
.LBB8180:
	.loc 23 26 0
#APP
# 26 "src/apm.c" 1
	movb %CS:(%ebx), %al
# 0 "" 2
#NO_APP
.LBE8180:
	.loc 23 27 0
	testb	%al, %al
	je	.L346
.LBB8181:
.LBB8179:
	.loc 2 83 0
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8179:
.LBE8181:
	.loc 23 30 0
	incl	%ebx
	jmp	.L340
.LVL596:
.L338:
.LBE8176:
.LBE8175:
.LBE8174:
.LBB8182:
.LBB8183:
.LBB8184:
	.loc 8 13 0
#APP
# 13 "src/util.h" 1
	cli
# 0 "" 2
#NO_APP
.LBE8184:
.LBE8183:
.LBB8185:
.LBB8186:
	.loc 23 24 0
	movl	$.LC2, %ecx
.LVL597:
.LBB8187:
.LBB8188:
.LBB8189:
	.loc 2 83 0
	movl	$-30464, %edx
.LVL598:
.L342:
.LBE8189:
.LBE8188:
.LBB8191:
	.loc 23 26 0
#APP
# 26 "src/apm.c" 1
	movb %CS:(%ecx), %al
# 0 "" 2
#NO_APP
.LBE8191:
	.loc 23 27 0
	testb	%al, %al
	je	.L344
.LBB8192:
.LBB8190:
	.loc 2 83 0
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8190:
.LBE8192:
	.loc 23 30 0
	incl	%ecx
	jmp	.L342
.L344:
.LBE8187:
.LBE8186:
.LBE8185:
.LBB8193:
.LBB8194:
	.loc 8 46 0
#APP
# 46 "src/util.h" 1
	hlt
# 0 "" 2
#NO_APP
	jmp	.L344
.LVL599:
.L352:
.LBE8194:
.LBE8193:
.LBE8182:
.LBE8165:
.LBE8164:
.LBB8195:
.LBB8196:
	.loc 23 149 0
	movb	$1, 17(%ecx)
	.loc 23 150 0
	movb	$-1, 16(%ecx)
	.loc 23 151 0
	movb	$-128, 25(%ecx)
	.loc 23 152 0
	movb	$-1, 24(%ecx)
	.loc 23 153 0
	movw	$-1, 20(%ecx)
	.loc 23 154 0
	movw	$0, 8(%ecx)
	jmp	.L346
.L326:
.LBE8196:
.LBE8195:
.LBB8197:
.LBB8198:
.LBB8199:
	.loc 14 90 0
	movb	$-128, 29(%ecx)
	jmp	.L315
.L353:
.LBE8199:
.LBE8198:
.LBE8197:
.LBB8200:
.LBB8201:
	.loc 23 171 0
	movb	$1, 29(%ecx)
	.loc 23 172 0
	movb	$2, 28(%ecx)
	jmp	.L346
.L329:
.LBE8201:
.LBE8200:
.LBB8202:
.LBB8203:
	.loc 23 187 0
	movb	$0, 16(%ecx)
	.loc 23 188 0
	movw	$0, 24(%ecx)
.LVL600:
.L346:
.LBB8204:
.LBB8205:
.LBB8206:
	.loc 14 62 0
	andw	$-2, 36(%ecx)
.LBE8206:
.LBE8205:
.LBE8204:
.LBE8203:
.LBE8202:
	.loc 23 221 0
	jmp	.L343
.LVL601:
.L315:
.LBB8207:
.LBB8208:
.LBB8209:
.LBB8210:
.LBB8211:
.LBB8212:
	.loc 14 60 0
	orw	$1, 36(%ecx)
.LVL602:
.L343:
.LBE8212:
.LBE8211:
.LBE8210:
.LBE8209:
.LBE8208:
.LBE8207:
	.loc 23 224 0
	popl	%ebx
.LVL603:
	ret
	.cfi_endproc
.LFE2853:
	.size	handle_1553.1762, .-handle_1553.1762
	.section	.text.handle_apm16,"ax",@progbits
.globl handle_apm16
	.type	handle_apm16, @function
handle_apm16:
.LFB2854:
	.loc 23 228 0
	.cfi_startproc
.LVL604:
	.loc 23 230 0
	jmp	handle_1553.1762
.LVL605:
	.cfi_endproc
.LFE2854:
	.size	handle_apm16, .-handle_apm16
	.section	.text.basic_access.62538,"ax",@progbits
	.type	basic_access.62538, @function
basic_access.62538:
.LFB3046:
	.file 24 "src/disk.c"
	.loc 24 81 0
	.cfi_startproc
.LVL606:
	pushl	%ebp
.LCFI112:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI113:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI114:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI115:
	.cfi_def_cfa_offset 20
	subl	$48, %esp
.LCFI116:
	.cfi_def_cfa_offset 68
	movl	%eax, %edi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 24 86 0
	movb	28(%eax), %al
.LVL607:
	.loc 24 87 0
	movzbl	25(%edi), %ebp
	movb	24(%edi), %bl
	movb	%bl, 4(%esp)
	.loc 24 89 0
	movb	21(%edi), %bl
	movb	%bl, 20(%esp)
	.loc 24 91 0
	movb	4(%esp), %bl
	andw	$63, %bx
	movw	%bx, 26(%esp)
	je	.L364
	movb	%al, %bl
	decb	%bl
	js	.L364
	.loc 24 83 0
	movl	%edx, 40(%esp)
	.loc 24 84 0
	movb	%cl, 46(%esp)
	.loc 24 96 0
	movzbl	%al, %eax
.LVL608:
	movw	%ax, 44(%esp)
.LBB8213:
.LBB8214:
.LBB8215:
	.loc 24 62 0
#APP
# 62 "src/disk.c" 1
	movl %CS:cdemu_drive_gf, %eax
# 0 "" 2
.LVL609:
#NO_APP
.LBE8215:
	.loc 24 61 0
	subl	$983040, %eax
.LVL610:
	cmpl	%eax, %edx
	jne	.L362
.LBB8216:
.LBB8217:
.LBB8218:
	.loc 10 253 0
	movl	$64, %eax
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8219:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %dx
# 0 "" 2
.LVL611:
#NO_APP
.LBE8219:
.LBE8218:
.LBE8217:
	.loc 24 68 0
#APP
# 68 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8220:
#APP
# 68 "src/disk.c" 1
	movw %ES:322, %cx
# 0 "" 2
.LVL612:
#NO_APP
.LBE8220:
	.loc 24 69 0
#APP
# 69 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8221:
#APP
# 69 "src/disk.c" 1
	movw %ES:320, %ax
# 0 "" 2
.LVL613:
#NO_APP
.LBE8221:
	.loc 24 70 0
#APP
# 70 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8222:
#APP
# 70 "src/disk.c" 1
	movw %ES:324, %dx
# 0 "" 2
.LVL614:
#NO_APP
	jmp	.L363
.LVL615:
.L362:
.LBE8222:
.LBE8216:
.LBB8223:
	.loc 24 73 0
#APP
# 73 "src/disk.c" 1
	movw %CS:4(%edx), %cx
# 0 "" 2
.LVL616:
#NO_APP
.LBE8223:
.LBB8224:
	.loc 24 74 0
#APP
# 74 "src/disk.c" 1
	movw %CS:2(%edx), %ax
# 0 "" 2
.LVL617:
#NO_APP
.LBE8224:
.LBB8225:
	.loc 24 75 0
#APP
# 75 "src/disk.c" 1
	movw %CS:6(%edx), %dx
# 0 "" 2
.LVL618:
#NO_APP
.L363:
.LBE8225:
.LBE8214:
.LBE8213:
	.loc 24 87 0
	movb	4(%esp), %bl
	sall	$2, %ebx
.LVL619:
	andw	$768, %bx
.LVL620:
	andw	$255, %bp
	orl	%ebp, %ebx
.LVL621:
	.loc 24 102 0
	cmpw	%cx, %bx
	jae	.L364
	.loc 24 89 0
	movzbl	20(%esp), %esi
.LVL622:
	.loc 24 102 0
	cmpw	%ax, %si
	jae	.L364
	cmpw	%dx, 26(%esp)
	jbe	.L365
.LVL623:
.L364:
.LBB8226:
.LBB8227:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L366
.LBB8228:
	.loc 24 27 0
	movl	$64, %eax
.LVL624:
#APP
# 27 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$1, %al
#APP
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L367
.LVL625:
.L366:
.LBE8228:
.LBB8229:
	.loc 24 29 0
	movl	$64, %eax
.LVL626:
#APP
# 29 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$1, %al
#APP
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
#NO_APP
.L367:
.LBE8229:
.LBB8230:
.LBB8231:
.LBB8232:
.LBB8233:
	.loc 14 90 0
	movb	$1, 29(%edi)
	jmp	.L373
.LVL627:
.L365:
.LBE8233:
.LBE8232:
.LBE8231:
.LBE8230:
.LBE8227:
.LBE8226:
	.loc 24 109 0
	movzwl	26(%esp), %ecx
.LVL628:
	movzwl	%ax, %eax
.LVL629:
	movzwl	%bx, %ebx
.LVL630:
	imull	%ebx, %eax
	movzwl	%si, %esi
.LVL631:
	addl	%esi, %eax
	movzwl	%dx, %edx
.LVL632:
	imull	%edx, %eax
	leal	-1(%ecx,%eax), %eax
	movl	%eax, 28(%esp)
	movl	$0, 32(%esp)
	.loc 24 112 0
	movzwl	2(%edi), %eax
	sall	$4, %eax
	movzwl	16(%edi), %edx
.LVL633:
	addl	%edx, %eax
	movl	%eax, 36(%esp)
.LBB8234:
.LBB8235:
	.file 25 "src/block.c"
	.loc 25 330 0
#APP
# 330 "src/block.c" 1
	movw %SS, %dx
# 0 "" 2
.LVL634:
#NO_APP
.LBE8235:
.LBB8236:
.LBB8237:
.LBB8238:
.LBB8239:
	.loc 10 253 0
	movl	$64, %esi
.LVL635:
#APP
# 253 "src/biosvar.h" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB8240:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %bp
# 0 "" 2
#NO_APP
	movw	%bp, 26(%esp)
.LBE8240:
.LBE8239:
.LBE8238:
	.loc 6 167 0
	leal	28(%esp), %eax
	movzwl	%dx, %edx
.LVL636:
	movl	$__send_disk_op.11050, %ecx
.LVL637:
#APP
# 167 "src/stacks.c" 1
	movw %ss, %bx
movl %esp, %esi
movw %bp, %ds
movw %bp, %ss
movl $872, %esp
calll *%ecx
movw %bx, %ds
movw %bx, %ss
movl %esi, %esp
# 0 "" 2
.LVL638:
#NO_APP
.LBE8237:
.LBE8236:
.LBE8234:
	.loc 24 116 0
	movl	44(%esp), %edx
.LVL639:
	movb	%dl, 28(%edi)
.LBB8241:
.LBB8242:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L368
.LBB8243:
	.loc 24 27 0
	movl	$64, %ebp
#APP
# 27 "src/disk.c" 1
	movw %bp, %ES
# 0 "" 2
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
.LVL640:
#NO_APP
	jmp	.L369
.LVL641:
.L368:
.LBE8243:
.LBB8244:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
.LVL642:
#NO_APP
.L369:
.LBE8244:
	.loc 24 30 0
	testb	%al, %al
	je	.L370
.LBB8245:
.LBB8246:
.LBB8247:
.LBB8248:
	.loc 14 90 0
	movb	%al, 29(%edi)
.LVL643:
.L373:
.LBB8249:
.LBB8250:
	.loc 14 60 0
	orw	$1, 36(%edi)
	jmp	.L371
.LVL644:
.L370:
.LBE8250:
.LBE8249:
.LBE8248:
.LBE8247:
.LBE8246:
.LBE8245:
.LBB8251:
.LBB8252:
	.loc 14 77 0
	movb	$0, 29(%edi)
.LBB8253:
.LBB8254:
	.loc 14 62 0
	andw	$-2, 36(%edi)
.LVL645:
.L371:
.LBE8254:
.LBE8253:
.LBE8252:
.LBE8251:
.LBE8242:
.LBE8241:
	.loc 24 119 0
	addl	$48, %esp
	popl	%ebx
.LVL646:
	popl	%esi
.LVL647:
	popl	%edi
.LVL648:
	popl	%ebp
	ret
	.cfi_endproc
.LFE3046:
	.size	basic_access.62538, .-basic_access.62538
	.section	.text.extended_access.62602,"ax",@progbits
	.type	extended_access.62602, @function
extended_access.62602:
.LFB3047:
	.loc 24 124 0
	.cfi_startproc
.LVL649:
	pushl	%ebp
.LCFI117:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI118:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI119:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI120:
	.cfi_def_cfa_offset 20
	subl	$32, %esp
.LCFI121:
	.cfi_def_cfa_offset 52
	movl	%eax, %edi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movw	%cx, 10(%esp)
	.loc 24 127 0
	movw	(%eax), %cx
.LVL650:
#APP
# 127 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB8255:
.LBB8256:
	movzwl	8(%eax), %eax
.LVL651:
#APP
# 127 "src/disk.c" 1
	movl %ES:8(%eax), %esi
# 0 "" 2
# 127 "src/disk.c" 1
	movl %ES:12(%eax), %ebx
# 0 "" 2
#NO_APP
.LBE8256:
.LBE8255:
.LBB8257:
.LBB8258:
	.loc 24 130 0
#APP
# 130 "src/disk.c" 1
	movl %CS:8(%edx), %ebp
# 0 "" 2
#NO_APP
	movl	%ebp, 4(%esp)
#APP
# 130 "src/disk.c" 1
	movl %CS:12(%edx), %ebp
# 0 "" 2
#NO_APP
.LBE8258:
.LBE8257:
	cmpl	%ebp, %ebx
	jb	.L377
	ja	.L386
	cmpl	4(%esp), %esi
	jb	.L377
.L386:
.LBB8259:
.LBB8260:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L379
.LBB8261:
	.loc 24 27 0
	movl	$64, %eax
#APP
# 27 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$1, %al
#APP
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L380
.L379:
.LBE8261:
.LBB8262:
	.loc 24 29 0
	movl	$64, %eax
#APP
# 29 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$1, %al
#APP
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
#NO_APP
.L380:
.LBE8262:
.LBB8263:
.LBB8264:
.LBB8265:
.LBB8266:
	.loc 14 90 0
	movb	$1, 29(%edi)
	jmp	.L387
.L377:
.LBE8266:
.LBE8265:
.LBE8264:
.LBE8263:
.LBE8260:
.LBE8259:
	.loc 24 136 0
#APP
# 136 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB8267:
#APP
# 136 "src/disk.c" 1
	movl %ES:4(%eax), %ebp
# 0 "" 2
#NO_APP
	movl	%ebp, (%esp)
.LBE8267:
.LBB8268:
.LBB8269:
	.file 26 "src/farptr.h"
	.loc 26 201 0
	shrl	$16, %ebp
	sall	$4, %ebp
	movl	%ebp, 4(%esp)
	movzwl	(%esp), %ebp
	movl	%ebp, (%esp)
	addl	4(%esp), %ebp
.LBE8269:
.LBE8268:
	.loc 24 127 0
	movl	%esi, 12(%esp)
	movl	%ebx, 16(%esp)
	.loc 24 128 0
	movb	10(%esp), %bl
	movb	%bl, 30(%esp)
	.loc 24 129 0
	movl	%edx, 24(%esp)
	.loc 24 136 0
	movl	%ebp, 20(%esp)
	.loc 24 137 0
#APP
# 137 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB8270:
#APP
# 137 "src/disk.c" 1
	movw %ES:2(%eax), %ax
# 0 "" 2
.LVL652:
#NO_APP
.LBE8270:
	movw	%ax, 28(%esp)
.LBB8271:
.LBB8272:
	.loc 25 330 0
#APP
# 330 "src/block.c" 1
	movw %SS, %dx
# 0 "" 2
.LVL653:
#NO_APP
.LBE8272:
.LBB8273:
.LBB8274:
.LBB8275:
.LBB8276:
	.loc 10 253 0
	movl	$64, %esi
#APP
# 253 "src/biosvar.h" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB8277:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %bp
# 0 "" 2
#NO_APP
	movw	%bp, 4(%esp)
.LBE8277:
.LBE8276:
.LBE8275:
	.loc 6 167 0
	leal	12(%esp), %eax
.LVL654:
	movzwl	%dx, %edx
.LVL655:
	movl	$__send_disk_op.11050, %ecx
.LVL656:
#APP
# 167 "src/stacks.c" 1
	movw %ss, %bx
movl %esp, %esi
movw %bp, %ds
movw %bp, %ss
movl $872, %esp
calll *%ecx
movw %bx, %ds
movw %bx, %ss
movl %esi, %esp
# 0 "" 2
.LVL657:
#NO_APP
.LBE8274:
.LBE8273:
.LBE8271:
.LBB8278:
	.loc 24 141 0
#APP
# 141 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %edx
.LVL658:
	movl	28(%esp), %ecx
.LVL659:
#APP
# 141 "src/disk.c" 1
	movw %cx, %ES:2(%edx)
# 0 "" 2
#NO_APP
.LBE8278:
.LBB8279:
.LBB8280:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L382
.LBB8281:
	.loc 24 27 0
	movl	$64, %ebp
#APP
# 27 "src/disk.c" 1
	movw %bp, %ES
# 0 "" 2
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
.LVL660:
#NO_APP
	jmp	.L383
.LVL661:
.L382:
.LBE8281:
.LBB8282:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
.LVL662:
#NO_APP
.L383:
.LBE8282:
	.loc 24 30 0
	testb	%al, %al
	je	.L384
.LBB8283:
.LBB8284:
.LBB8285:
.LBB8286:
	.loc 14 90 0
	movb	%al, 29(%edi)
.LVL663:
.L387:
.LBB8287:
.LBB8288:
	.loc 14 60 0
	orw	$1, 36(%edi)
	jmp	.L385
.LVL664:
.L384:
.LBE8288:
.LBE8287:
.LBE8286:
.LBE8285:
.LBE8284:
.LBE8283:
.LBB8289:
.LBB8290:
	.loc 14 77 0
	movb	$0, 29(%edi)
.LBB8291:
.LBB8292:
	.loc 14 62 0
	andw	$-2, 36(%edi)
.LVL665:
.L385:
.LBE8292:
.LBE8291:
.LBE8290:
.LBE8289:
.LBE8280:
.LBE8279:
	.loc 24 144 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
.LVL666:
	popl	%ebp
	ret
	.cfi_endproc
.LFE3047:
	.size	extended_access.62602, .-extended_access.62602
	.section	.text.disk_1300.62721,"ax",@progbits
	.type	disk_1300.62721, @function
disk_1300.62721:
.LFB3048:
	.loc 24 154 0
	.cfi_startproc
.LVL667:
	pushl	%ebp
.LCFI122:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI123:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI124:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI125:
	.cfi_def_cfa_offset 20
	subl	$32, %esp
.LCFI126:
	.cfi_def_cfa_offset 52
	movl	%eax, %edi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 24 156 0
	movl	%edx, 24(%esp)
	.loc 24 157 0
	movb	$0, 30(%esp)
.LBB8293:
.LBB8294:
	.loc 25 330 0
#APP
# 330 "src/block.c" 1
	movw %SS, %dx
# 0 "" 2
.LVL668:
#NO_APP
.LBE8294:
.LBB8295:
.LBB8296:
.LBB8297:
.LBB8298:
	.loc 10 253 0
	movl	$64, %eax
.LVL669:
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8299:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %bx
# 0 "" 2
#NO_APP
	movw	%bx, 10(%esp)
.LBE8299:
.LBE8298:
.LBE8297:
	.loc 6 167 0
	leal	12(%esp), %eax
	movzwl	%dx, %edx
.LVL670:
	movl	$__send_disk_op.11050, %ecx
.LVL671:
#APP
# 167 "src/stacks.c" 1
	movw %ss, %si
movl %esp, %ebp
movw %bx, %ds
movw %bx, %ss
movl $872, %esp
calll *%ecx
movw %si, %ds
movw %si, %ss
movl %ebp, %esp
# 0 "" 2
.LVL672:
#NO_APP
.LBE8296:
.LBE8295:
.LBE8293:
.LBB8300:
.LBB8301:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L389
.LBB8302:
	.loc 24 27 0
	movl	$64, %edx
.LVL673:
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
.LVL674:
#NO_APP
	jmp	.L390
.LVL675:
.L389:
.LBE8302:
.LBB8303:
	.loc 24 29 0
	movl	$64, %ebx
#APP
# 29 "src/disk.c" 1
	movw %bx, %ES
# 0 "" 2
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
.LVL676:
#NO_APP
.L390:
.LBE8303:
	.loc 24 30 0
	testb	%al, %al
	je	.L391
.LBB8304:
.LBB8305:
.LBB8306:
.LBB8307:
	.loc 14 90 0
	movb	%al, 29(%edi)
.LBB8308:
.LBB8309:
	.loc 14 60 0
	orw	$1, 36(%edi)
	jmp	.L393
.L391:
.LBE8309:
.LBE8308:
.LBE8307:
.LBE8306:
.LBE8305:
.LBE8304:
.LBB8310:
.LBB8311:
	.loc 14 77 0
	movb	$0, 29(%edi)
.LBB8312:
.LBB8313:
	.loc 14 62 0
	andw	$-2, 36(%edi)
.L393:
.LBE8313:
.LBE8312:
.LBE8311:
.LBE8310:
.LBE8301:
.LBE8300:
	.loc 24 160 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
.LVL677:
	popl	%ebp
	ret
	.cfi_endproc
.LFE3048:
	.size	disk_1300.62721, .-disk_1300.62721
	.section	.text.disk_1310.63040,"ax",@progbits
	.type	disk_1310.63040, @function
disk_1310.63040:
.LFB3058:
	.loc 24 302 0
	.cfi_startproc
.LVL678:
	pushl	%ebp
.LCFI127:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI128:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI129:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI130:
	.cfi_def_cfa_offset 20
	subl	$32, %esp
.LCFI131:
	.cfi_def_cfa_offset 52
	movl	%eax, %edi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 24 306 0
	movl	%edx, 24(%esp)
	.loc 24 307 0
	movb	$16, 30(%esp)
.LBB8314:
.LBB8315:
	.loc 25 330 0
#APP
# 330 "src/block.c" 1
	movw %SS, %dx
# 0 "" 2
.LVL679:
#NO_APP
.LBE8315:
.LBB8316:
.LBB8317:
.LBB8318:
.LBB8319:
	.loc 10 253 0
	movl	$64, %eax
.LVL680:
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8320:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %bx
# 0 "" 2
#NO_APP
	movw	%bx, 10(%esp)
.LBE8320:
.LBE8319:
.LBE8318:
	.loc 6 167 0
	leal	12(%esp), %eax
	movzwl	%dx, %edx
.LVL681:
	movl	$__send_disk_op.11050, %ecx
.LVL682:
#APP
# 167 "src/stacks.c" 1
	movw %ss, %si
movl %esp, %ebp
movw %bx, %ds
movw %bx, %ss
movl $872, %esp
calll *%ecx
movw %si, %ds
movw %si, %ss
movl %ebp, %esp
# 0 "" 2
.LVL683:
#NO_APP
.LBE8317:
.LBE8316:
.LBE8314:
.LBB8321:
.LBB8322:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L395
.LBB8323:
	.loc 24 27 0
	movl	$64, %edx
.LVL684:
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
.LVL685:
#NO_APP
	jmp	.L396
.LVL686:
.L395:
.LBE8323:
.LBB8324:
	.loc 24 29 0
	movl	$64, %ebx
#APP
# 29 "src/disk.c" 1
	movw %bx, %ES
# 0 "" 2
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
.LVL687:
#NO_APP
.L396:
.LBE8324:
	.loc 24 30 0
	testb	%al, %al
	je	.L397
.LBB8325:
.LBB8326:
.LBB8327:
.LBB8328:
	.loc 14 90 0
	movb	%al, 29(%edi)
.LBB8329:
.LBB8330:
	.loc 14 60 0
	orw	$1, 36(%edi)
	jmp	.L399
.L397:
.LBE8330:
.LBE8329:
.LBE8328:
.LBE8327:
.LBE8326:
.LBE8325:
.LBB8331:
.LBB8332:
	.loc 14 77 0
	movb	$0, 29(%edi)
.LBB8333:
.LBB8334:
	.loc 14 62 0
	andw	$-2, 36(%edi)
.L399:
.LBE8334:
.LBE8333:
.LBE8332:
.LBE8331:
.LBE8322:
.LBE8321:
	.loc 24 310 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
.LVL688:
	popl	%ebp
	ret
	.cfi_endproc
.LFE3058:
	.size	disk_1310.63040, .-disk_1310.63040
	.section	.text.disk_1346.63275,"ax",@progbits
	.type	disk_1346.63275, @function
disk_1346.63275:
.LFB3072:
	.loc 24 463 0
	.cfi_startproc
.LVL689:
	pushl	%ebp
.LCFI132:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI133:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI134:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI135:
	.cfi_def_cfa_offset 20
	subl	$44, %esp
.LCFI136:
	.cfi_def_cfa_offset 64
	movl	%eax, %ebp
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 24 464 0
	movb	20(%eax), %al
.LVL690:
	cmpb	$-33, %al
	ja	.L401
.LBB8335:
.LBB8336:
	.loc 24 26 0
	testb	%al, %al
	js	.L402
.LBB8337:
	.loc 24 27 0
	movl	$64, %eax
#APP
# 27 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$-78, %al
#APP
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L403
.L402:
.LBE8337:
.LBB8338:
	.loc 24 29 0
	movl	$64, %eax
#APP
# 29 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$-78, %al
#APP
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
#NO_APP
.L403:
.LBE8338:
.LBB8339:
.LBB8340:
.LBB8341:
.LBB8342:
	.loc 14 90 0
	movb	$-78, 29(%ebp)
	jmp	.L416
.L401:
.LBE8342:
.LBE8341:
.LBE8340:
.LBE8339:
.LBE8336:
.LBE8335:
	.loc 24 470 0
	movzbl	%al, %eax
.LBB8343:
.LBB8344:
	.loc 10 253 0
	movl	$64, %edx
.LVL691:
#APP
# 253 "src/biosvar.h" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8345:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %cx
# 0 "" 2
.LVL692:
#NO_APP
.LBE8345:
.LBE8344:
.LBE8343:
	.loc 24 471 0
#APP
# 471 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB8346:
#APP
# 471 "src/disk.c" 1
	movb %ES:118(%eax), %al
# 0 "" 2
.LVL693:
#NO_APP
.LBE8346:
.LBB8347:
.LBB8348:
.LBB8349:
.LBB8350:
.LBB8351:
.LBB8352:
.LBB8353:
.LBB8354:
	.loc 14 60 0
	movl	$38, (%esp)
.LBE8354:
.LBE8353:
.LBE8352:
.LBE8351:
.LBE8350:
.LBE8349:
.LBE8348:
.LBE8347:
	.loc 24 472 0
	testb	%al, %al
	je	.L406
.LBB8357:
.LBB8356:
.LBB8355:
	.loc 24 29 0
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	jmp	.L417
.L406:
.LBE8355:
.LBE8356:
.LBE8357:
.LBB8358:
.LBB8359:
	.loc 16 149 0
	leal	6(%esp), %eax
.LVL694:
	movl	(%esp), %edx
.LVL695:
.L414:
	decl	%edx
	movb	$0, (%eax,%edx)
	.loc 16 148 0
	testl	%edx, %edx
	jne	.L414
	movl	%edx, (%esp)
.LBE8359:
.LBE8358:
	.loc 24 483 0
	movb	$82, 35(%esp)
	.loc 24 484 0
	movb	20(%ebp), %dl
.LVL696:
	movb	%dl, 26(%esp)
.LBB8360:
.LBB8361:
	.loc 16 53 0
#APP
# 53 "src/util.c" 1
	movw %CS, 40(%esp)
# 0 "" 2
	.loc 16 56 0
#NO_APP
	movl	$irq_trampoline_0x15, %edx
	movw	%dx, 38(%esp)
.LBB8362:
.LBB8363:
	.loc 16 23 0
#APP
# 23 "src/util.c" 1
	calll __call16
cli
cld
# 0 "" 2
.LVL697:
#NO_APP
.LBE8363:
.LBE8362:
.LBE8361:
.LBE8360:
	.loc 24 487 0
	cmpb	$0, 35(%esp)
	jne	.L407
	testb	$1, 42(%esp)
	je	.L408
.L407:
.LBB8364:
.LBB8365:
	.loc 24 26 0
	cmpb	$0, 20(%ebp)
	js	.L409
.LBB8366:
	.loc 24 27 0
	movl	$64, %eax
.LVL698:
#APP
# 27 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$-79, %al
#APP
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L410
.LVL699:
.L409:
.LBE8366:
.LBB8367:
	.loc 24 29 0
	movl	$64, %eax
.LVL700:
#APP
# 29 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
.LVL701:
#NO_APP
.L417:
	movb	$-79, %al
.LVL702:
#APP
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
#NO_APP
.L410:
.LBE8367:
.LBB8368:
.LBB8369:
.LBB8370:
.LBB8371:
	.loc 14 90 0
	movb	$-79, 29(%ebp)
.LVL703:
.L416:
.LBB8372:
.LBB8373:
	.loc 14 60 0
	orw	$1, 36(%ebp)
	jmp	.L413
.LVL704:
.L408:
.LBE8373:
.LBE8372:
.LBE8371:
.LBE8370:
.LBE8369:
.LBE8368:
.LBE8365:
.LBE8364:
.LBB8374:
.LBB8375:
	.loc 24 26 0
	cmpb	$0, 20(%ebp)
	js	.L411
.LBB8376:
	.loc 24 27 0
	movl	$64, %eax
.LVL705:
#APP
# 27 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
	movl	(%esp), %edx
#APP
# 27 "src/disk.c" 1
	movb %al, %ES:65(%edx)
# 0 "" 2
#NO_APP
	jmp	.L412
.LVL706:
.L411:
.LBE8376:
.LBB8377:
	.loc 24 29 0
	movl	$64, %eax
.LVL707:
#APP
# 29 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
	movl	(%esp), %edx
#APP
# 29 "src/disk.c" 1
	movb %al, %ES:116(%edx)
# 0 "" 2
#NO_APP
.L412:
.LBE8377:
.LBB8378:
.LBB8379:
	.loc 14 77 0
	movb	$0, 29(%ebp)
.LBB8380:
.LBB8381:
	.loc 14 62 0
	andw	$-2, 36(%ebp)
.LVL708:
.L413:
.LBE8381:
.LBE8380:
.LBE8379:
.LBE8378:
.LBE8375:
.LBE8374:
	.loc 24 492 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
.LVL709:
	ret
	.cfi_endproc
.LFE3072:
	.size	disk_1346.63275, .-disk_1346.63275
	.section	.text.handle_76,"ax",@progbits
.globl handle_76
	.type	handle_76, @function
handle_76:
.LFB3088:
	.loc 24 857 0
	.cfi_startproc
.LBB8382:
	.loc 24 859 0
	movl	$64, %eax
#APP
# 859 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$-1, %al
#APP
# 859 "src/disk.c" 1
	movb %al, %ES:142
# 0 "" 2
#NO_APP
.LBE8382:
.LBB8383:
.LBB8384:
.LBB8385:
	.loc 2 83 0
	movb	$32, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $160
# 0 "" 2
#NO_APP
.LBE8385:
.LBE8384:
.LBB8386:
.LBB8387:
.LBB8388:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE8388:
.LBE8387:
.LBE8386:
.LBE8383:
	.loc 24 861 0
	ret
	.cfi_endproc
.LFE3088:
	.size	handle_76, .-handle_76
	.section	.text.T.2327,"ax",@progbits
	.type	T.2327, @function
T.2327:
.LFB3091:
	.loc 3 170 0
	.cfi_startproc
.LVL710:
	pushl	%ebx
.LCFI137:
	.cfi_def_cfa_offset 8
	subl	$12, %esp
.LCFI138:
	.cfi_def_cfa_offset 20
	.loc 3 174 0
	movb	$0, 11(%esp)
	leal	10(%esp), %ecx
.LVL711:
	.loc 3 176 0
	movl	$10, %ebx
	.cfi_offset 3, -8
.L422:
	xorl	%edx, %edx
	divl	%ebx
.LVL712:
	addl	$48, %edx
	movb	%dl, (%ecx)
	.loc 3 178 0
	testl	%eax, %eax
.LVL713:
	je	.L421
	.loc 3 180 0
	decl	%ecx
	jmp	.L422
.LVL714:
.L423:
.LBB8389:
.LBB8390:
.LBB8391:
.LBB8392:
.LBB8393:
.LBB8394:
.LBB8395:
	.loc 2 83 0
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8395:
.LBE8394:
.LBE8393:
.LBE8392:
.LBE8391:
	.loc 3 151 0
	incl	%ecx
	jmp	.L425
.LVL715:
.L421:
.LBB8400:
.LBB8399:
.LBB8398:
.LBB8397:
.LBB8396:
	.loc 2 83 0
	movl	$1026, %edx
.L425:
.LBE8396:
.LBE8397:
.LBE8398:
.LBE8399:
.LBE8400:
	.loc 3 151 0
	movb	(%ecx), %al
.LVL716:
	testb	%al, %al
	jne	.L423
.LBE8390:
.LBE8389:
	.loc 3 183 0
	addl	$12, %esp
	popl	%ebx
	ret
	.cfi_endproc
.LFE3091:
	.size	T.2327, .-T.2327
	.section	.text.T.2329,"ax",@progbits
	.type	T.2329, @function
T.2329:
.LFB3093:
	.loc 3 237 0
	.cfi_startproc
.LVL717:
	pushl	%ebp
.LCFI139:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI140:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI141:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI142:
	.cfi_def_cfa_offset 20
	subl	$8, %esp
.LCFI143:
	.cfi_def_cfa_offset 28
	movl	%eax, %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, %ebx
.LVL718:
.L485:
.LBB8536:
.LBB8537:
	.loc 3 241 0
#APP
# 241 "src/output.c" 1
	movb %CS:(%esi), %al
# 0 "" 2
.LVL719:
#NO_APP
.LBE8537:
	.loc 3 242 0
	testb	%al, %al
	je	.L486
.LBB8538:
.LBB8539:
.LBB8540:
.LBB8541:
.LBB8542:
	.loc 2 83 0
	movl	$1026, %edx
.LVL720:
.LBE8542:
.LBE8541:
.LBE8540:
.LBE8539:
.LBE8538:
	.loc 3 244 0
	cmpb	$37, %al
	jne	.L488
	.loc 3 248 0
	leal	1(%esi), %edi
.LVL721:
	movl	$1, %edx
.LVL722:
	xorl	%ecx, %ecx
.LVL723:
	movl	%ebx, (%esp)
.LVL724:
.L433:
.LBB8543:
	.loc 3 252 0
#APP
# 252 "src/output.c" 1
	movb %CS:(%edi), %al
# 0 "" 2
.LVL725:
#NO_APP
.LBE8543:
	.loc 3 253 0
	leal	-48(%eax), %ebx
	cmpb	$9, %bl
	ja	.L430
	.loc 3 255 0
	cmpb	$48, %al
	jne	.L431
	testl	%ecx, %ecx
	jne	.L431
	xorl	%edx, %edx
.LVL726:
	jmp	.L432
.L431:
	.loc 3 258 0
	imull	$10, %ecx, %ecx
.LVL727:
	movsbl	%al,%eax
.LVL728:
	leal	-48(%ecx,%eax), %ecx
.LVL729:
.L432:
	.loc 3 259 0
	incl	%edi
.LVL730:
	jmp	.L433
.LVL731:
.L430:
	movl	(%esp), %ebx
.LVL732:
	.loc 3 261 0
	cmpb	$108, %al
.LVL733:
	jne	.L434
	.loc 3 263 0
	incl	%edi
	.loc 3 264 0
#APP
# 264 "src/output.c" 1
	movb %CS:(%edi), %al
# 0 "" 2
.LVL734:
#NO_APP
.L434:
	.loc 3 268 0
	cmpb	$112, %al
	je	.L440
	jg	.L444
	cmpb	$99, %al
	je	.L438
	jg	.L445
	cmpb	$37, %al
	je	.L436
	cmpb	$46, %al
	je	.L437
	jmp	.L435
.L445:
	cmpb	$100, %al
	je	.L439
	jmp	.L435
.L444:
	cmpb	$117, %al
	je	.L442
	cmpb	$120, %al
	je	.L443
	cmpb	$115, %al
	je	.L441
	jmp	.L435
.L436:
.LBB8544:
.LBB8545:
.LBB8546:
.LBB8547:
.LBB8548:
	.loc 2 83 0
	movl	$1026, %edx
.LVL735:
	movb	$37, %al
.LVL736:
	jmp	.L489
.LVL737:
.L439:
.LBE8548:
.LBE8547:
.LBE8546:
.LBE8545:
.LBE8544:
	.loc 3 273 0
	movl	(%ebx), %ecx
.LVL738:
	.loc 3 274 0
	testl	%ecx, %ecx
	jns	.L446
.LBB8549:
.LBB8550:
.LBB8551:
.LBB8552:
.LBB8553:
	.loc 2 83 0
	movl	$1026, %edx
.LVL739:
	movb	$45, %al
.LVL740:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8553:
.LBE8552:
.LBE8551:
.LBE8550:
.LBE8549:
	.loc 3 276 0
	negl	%ecx
.LVL741:
.L446:
	.loc 3 273 0
	addl	$4, %ebx
	.loc 3 278 0
	movl	%ecx, %eax
.LVL742:
	call	T.2327
.LVL743:
	jmp	.L487
.LVL744:
.L442:
	.loc 3 281 0
	leal	4(%ebx), %ebp
.LVL745:
	.loc 3 282 0
	movl	(%ebx), %eax
.LVL746:
	call	T.2327
.LVL747:
	movl	%edi, %esi
	movl	%ebp, %ebx
	jmp	.L429
.LVL748:
.L440:
.LBB8554:
.LBB8555:
.LBB8556:
.LBB8557:
.LBB8558:
	.loc 2 83 0
	movl	$1026, %edx
.LVL749:
	movb	$48, %al
.LVL750:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8558:
.LBE8557:
.LBE8556:
.LBE8555:
.LBE8554:
.LBB8559:
.LBB8560:
.LBB8561:
.LBB8562:
.LBB8563:
	movb	$120, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
.LVL751:
	movl	$8, %ecx
.LVL752:
.L443:
.LBE8563:
.LBE8562:
.LBE8561:
.LBE8560:
.LBE8559:
	.loc 3 292 0
	movl	(%ebx), %esi
.LVL753:
.LBB8564:
.LBB8565:
	.loc 3 200 0
	testl	%ecx, %ecx
	jne	.L447
	movl	%esi, %eax
.LVL754:
	movb	$1, %cl
.LVL755:
	jmp	.L448
.LVL756:
.L449:
.LBB8629:
	.loc 3 204 0
	incl	%ecx
.LVL757:
.L448:
	.loc 3 203 0
	shrl	$4, %eax
	jne	.L449
	jmp	.L450
.LVL758:
.L447:
.LBE8629:
	.loc 3 205 0
	testl	%edx, %edx
	je	.L450
	movl	%esi, %edx
.LVL759:
	movl	$1, %eax
.LVL760:
	jmp	.L451
.LVL761:
.L452:
.LBB8623:
	.loc 3 209 0
	incl	%eax
.LVL762:
.L451:
	.loc 3 208 0
	shrl	$4, %edx
	jne	.L452
	.loc 3 210 0
	cmpl	%eax, %ecx
	jbe	.L450
	.loc 3 211 0
	movl	%ecx, %edx
.LVL763:
	subl	%eax, %edx
	movl	%edx, 4(%esp)
	movl	%edx, %ebp
.LVL764:
.LBB8624:
.LBB8625:
.LBB8626:
.LBB8627:
.LBB8628:
	.loc 2 83 0
	movl	$1026, %edx
	jmp	.L453
.L454:
	movb	$32, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
	decl	%ebp
.LVL765:
.L453:
.LBE8628:
.LBE8627:
.LBE8626:
.LBE8625:
.LBE8624:
	.loc 3 213 0
	testl	%ebp, %ebp
	jne	.L454
	.loc 3 212 0
	subl	4(%esp), %ecx
.LVL766:
.L450:
.LBE8623:
	.loc 3 218 0
	cmpl	$4, %ecx
	je	.L459
	jg	.L463
	cmpl	$2, %ecx
	je	.L457
	jg	.L458
	decl	%ecx
.LVL767:
	je	.L456
	jmp	.L455
.LVL768:
.L463:
	cmpl	$6, %ecx
	je	.L461
	jl	.L460
	cmpl	$7, %ecx
	je	.L462
.L455:
	.loc 3 219 0
	movl	%esi, %eax
.LVL769:
	shrl	$28, %eax
.LBB8616:
.LBB8617:
	.loc 3 189 0
	cmpl	$9, %eax
	ja	.L464
	.loc 3 190 0
	addl	$48, %eax
.LVL770:
	jmp	.L465
.LVL771:
.L464:
	.loc 3 192 0
	addl	$87, %eax
.LVL772:
.L465:
.LBB8618:
.LBB8619:
.LBB8620:
.LBB8621:
.LBB8622:
	.loc 2 83 0
	movl	$1026, %edx
.LVL773:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL774:
#NO_APP
.L462:
.LBE8622:
.LBE8621:
.LBE8620:
.LBE8619:
.LBE8618:
.LBE8617:
.LBE8616:
	.loc 3 220 0
	movl	%esi, %eax
.LVL775:
	shrl	$24, %eax
	andl	$15, %eax
.LBB8609:
.LBB8610:
	.loc 3 189 0
	cmpl	$9, %eax
	ja	.L466
	.loc 3 190 0
	addl	$48, %eax
.LVL776:
	jmp	.L467
.LVL777:
.L466:
	.loc 3 192 0
	addl	$87, %eax
.LVL778:
.L467:
.LBB8611:
.LBB8612:
.LBB8613:
.LBB8614:
.LBB8615:
	.loc 2 83 0
	movl	$1026, %edx
.LVL779:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL780:
#NO_APP
.L461:
.LBE8615:
.LBE8614:
.LBE8613:
.LBE8612:
.LBE8611:
.LBE8610:
.LBE8609:
	.loc 3 221 0
	movl	%esi, %eax
.LVL781:
	shrl	$20, %eax
	andl	$15, %eax
.LBB8602:
.LBB8603:
	.loc 3 189 0
	cmpl	$9, %eax
	ja	.L468
	.loc 3 190 0
	addl	$48, %eax
.LVL782:
	jmp	.L469
.LVL783:
.L468:
	.loc 3 192 0
	addl	$87, %eax
.LVL784:
.L469:
.LBB8604:
.LBB8605:
.LBB8606:
.LBB8607:
.LBB8608:
	.loc 2 83 0
	movl	$1026, %edx
.LVL785:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL786:
#NO_APP
.L460:
.LBE8608:
.LBE8607:
.LBE8606:
.LBE8605:
.LBE8604:
.LBE8603:
.LBE8602:
	.loc 3 222 0
	movl	%esi, %eax
.LVL787:
	shrl	$16, %eax
	andl	$15, %eax
.LBB8595:
.LBB8596:
	.loc 3 189 0
	cmpl	$9, %eax
	ja	.L470
	.loc 3 190 0
	addl	$48, %eax
.LVL788:
	jmp	.L471
.LVL789:
.L470:
	.loc 3 192 0
	addl	$87, %eax
.LVL790:
.L471:
.LBB8597:
.LBB8598:
.LBB8599:
.LBB8600:
.LBB8601:
	.loc 2 83 0
	movl	$1026, %edx
.LVL791:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL792:
#NO_APP
.L459:
.LBE8601:
.LBE8600:
.LBE8599:
.LBE8598:
.LBE8597:
.LBE8596:
.LBE8595:
	.loc 3 223 0
	movl	%esi, %eax
.LVL793:
	shrl	$12, %eax
	andl	$15, %eax
.LBB8588:
.LBB8589:
	.loc 3 189 0
	cmpl	$9, %eax
	ja	.L472
	.loc 3 190 0
	addl	$48, %eax
.LVL794:
	jmp	.L473
.LVL795:
.L472:
	.loc 3 192 0
	addl	$87, %eax
.LVL796:
.L473:
.LBB8590:
.LBB8591:
.LBB8592:
.LBB8593:
.LBB8594:
	.loc 2 83 0
	movl	$1026, %edx
.LVL797:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL798:
#NO_APP
.L458:
.LBE8594:
.LBE8593:
.LBE8592:
.LBE8591:
.LBE8590:
.LBE8589:
.LBE8588:
	.loc 3 224 0
	movl	%esi, %eax
.LVL799:
	shrl	$8, %eax
	andl	$15, %eax
.LBB8581:
.LBB8582:
	.loc 3 189 0
	cmpl	$9, %eax
	ja	.L474
	.loc 3 190 0
	addl	$48, %eax
.LVL800:
	jmp	.L475
.LVL801:
.L474:
	.loc 3 192 0
	addl	$87, %eax
.LVL802:
.L475:
.LBB8583:
.LBB8584:
.LBB8585:
.LBB8586:
.LBB8587:
	.loc 2 83 0
	movl	$1026, %edx
.LVL803:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL804:
#NO_APP
.L457:
.LBE8587:
.LBE8586:
.LBE8585:
.LBE8584:
.LBE8583:
.LBE8582:
.LBE8581:
	.loc 3 225 0
	movl	%esi, %eax
.LVL805:
	shrl	$4, %eax
	andl	$15, %eax
.LBB8574:
.LBB8575:
	.loc 3 189 0
	cmpl	$9, %eax
	ja	.L476
	.loc 3 190 0
	addl	$48, %eax
.LVL806:
	jmp	.L477
.LVL807:
.L476:
	.loc 3 192 0
	addl	$87, %eax
.LVL808:
.L477:
.LBB8576:
.LBB8577:
.LBB8578:
.LBB8579:
.LBB8580:
	.loc 2 83 0
	movl	$1026, %edx
.LVL809:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL810:
#NO_APP
.L456:
.LBE8580:
.LBE8579:
.LBE8578:
.LBE8577:
.LBE8576:
.LBE8575:
.LBE8574:
	.loc 3 226 0
	movl	%esi, %eax
.LVL811:
	andl	$15, %eax
.LBB8566:
.LBB8567:
	.loc 3 189 0
	cmpl	$9, %eax
	ja	.L478
	.loc 3 190 0
	addl	$48, %eax
.LVL812:
	jmp	.L479
.LVL813:
.L478:
	.loc 3 192 0
	addl	$87, %eax
.LVL814:
.L479:
.LBE8567:
.LBE8566:
.LBE8565:
.LBE8564:
	.loc 3 291 0
	addl	$4, %ebx
.LBB8632:
.LBB8631:
.LBB8630:
.LBB8573:
.LBB8568:
.LBB8569:
.LBB8570:
.LBB8571:
.LBB8572:
	.loc 2 83 0
	movl	$1026, %edx
.LVL815:
.L489:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL816:
#NO_APP
.L487:
	movl	%edi, %esi
.LVL817:
	jmp	.L429
.LVL818:
.L438:
.LBE8572:
.LBE8571:
.LBE8570:
.LBE8569:
.LBE8568:
.LBE8573:
.LBE8630:
.LBE8631:
.LBE8632:
	.loc 3 295 0
	leal	4(%ebx), %ecx
.LVL819:
.LBB8633:
.LBB8634:
.LBB8635:
.LBB8636:
.LBB8637:
	.loc 2 83 0
	movl	(%ebx), %eax
.LVL820:
	movl	$1026, %edx
.LVL821:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
	movl	%edi, %esi
	movl	%ecx, %ebx
	jmp	.L429
.LVL822:
.L437:
.LBE8637:
.LBE8636:
.LBE8635:
.LBE8634:
.LBE8633:
.LBB8638:
	.loc 3 300 0
#APP
# 300 "src/output.c" 1
	movb %CS:1(%edi), %al
# 0 "" 2
.LVL823:
#NO_APP
.LBE8638:
	movl	%edi, %esi
	cmpb	$115, %al
	jne	.L429
.LVL824:
	.loc 3 303 0
	movl	(%ebx), %ecx
.LVL825:
.LBB8639:
.LBB8640:
.LBB8641:
.LBB8642:
.LBB8643:
.LBB8644:
.LBB8645:
	.loc 2 83 0
	movl	$1026, %edx
.LVL826:
	jmp	.L481
.LVL827:
.L482:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8645:
.LBE8644:
.LBE8643:
.LBE8642:
.LBE8641:
	.loc 3 151 0
	incl	%ecx
.LVL828:
.L481:
	movb	(%ecx), %al
.LVL829:
	testb	%al, %al
	jne	.L482
.LBE8640:
.LBE8639:
	.loc 3 302 0
	leal	1(%edi), %esi
	.loc 3 303 0
	addl	$4, %ebx
	jmp	.L429
.LVL830:
.L441:
	.loc 3 307 0
	movl	(%ebx), %ecx
.LVL831:
.LBB8646:
.LBB8647:
.LBB8648:
.LBB8650:
.LBB8651:
.LBB8652:
.LBB8653:
.LBB8654:
	.loc 2 83 0
	movl	$1026, %edx
.LVL832:
.L484:
.LBE8654:
.LBE8653:
.LBE8652:
.LBE8651:
.LBE8650:
.LBB8649:
	.loc 3 161 0
#APP
# 161 "src/output.c" 1
	movb %CS:(%ecx), %al
# 0 "" 2
.LVL833:
#NO_APP
.LBE8649:
	.loc 3 162 0
	testb	%al, %al
	jne	.L483
.LBE8648:
.LBE8647:
.LBE8646:
	.loc 3 307 0
	addl	$4, %ebx
	jmp	.L487
.L483:
.LBB8662:
.LBB8661:
.LBB8660:
.LBB8659:
.LBB8658:
.LBB8657:
.LBB8656:
.LBB8655:
	.loc 2 83 0
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8655:
.LBE8656:
.LBE8657:
.LBE8658:
.LBE8659:
.LBE8660:
	.loc 3 160 0
	incl	%ecx
.LVL834:
	jmp	.L484
.LVL835:
.L435:
.LBE8661:
.LBE8662:
.LBB8663:
.LBB8664:
.LBB8665:
.LBB8666:
.LBB8667:
	.loc 2 83 0
	movl	$1026, %edx
.LVL836:
	movb	$37, %al
.LVL837:
.L488:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL838:
#NO_APP
.L429:
.LBE8667:
.LBE8666:
.LBE8665:
.LBE8664:
.LBE8663:
.LBE8536:
	.loc 3 240 0
	incl	%esi
	jmp	.L485
.LVL839:
.L486:
	.loc 3 316 0
	popl	%ecx
.LCFI144:
	.cfi_def_cfa_offset 24
.LVL840:
	popl	%ebx
.LCFI145:
	.cfi_def_cfa_offset 20
.LVL841:
	popl	%ebx
	popl	%esi
.LVL842:
	popl	%edi
	popl	%ebp
.LVL843:
	ret
	.cfi_endproc
.LFE3093:
	.size	T.2329, .-T.2329
	.section	.text.panic.1648,"ax",@progbits
	.type	panic.1648, @function
panic.1648:
.LFB337:
	.loc 3 320 0
	.cfi_startproc
.LVL844:
	.loc 3 319 0
	leal	8(%esp), %edx
.LBB8668:
	.loc 3 324 0
	movl	4(%esp), %eax
	call	T.2329
.LBE8668:
.LBB8669:
.LBB8670:
	.loc 8 13 0
#APP
# 13 "src/util.h" 1
	cli
# 0 "" 2
#NO_APP
.L491:
.LBE8670:
.LBE8669:
.LBB8671:
.LBB8672:
	.loc 8 46 0
#APP
# 46 "src/util.h" 1
	hlt
# 0 "" 2
#NO_APP
	jmp	.L491
.LBE8672:
.LBE8671:
	.cfi_endproc
.LFE337:
	.size	panic.1648, .-panic.1648
	.section	.text.__dprintf.1656,"ax",@progbits
	.type	__dprintf.1656, @function
__dprintf.1656:
.LFB338:
	.loc 3 337 0
	.cfi_startproc
.LVL845:
	.loc 3 336 0
	leal	8(%esp), %edx
	.loc 3 352 0
	movl	4(%esp), %eax
	call	T.2329
	.loc 3 355 0
	ret
	.cfi_endproc
.LFE338:
	.size	__dprintf.1656, .-__dprintf.1656
	.section	.rodata.str1.1
.LC3:
	.string	"  NULL\n"
.LC4:
	.string	"   a=%08x  b=%08x  c=%08x  d=%08x ds=%04x es=%04x ss=%04x\n"
.LC5:
	.string	"  si=%08x di=%08x bp=%08x sp=%08x cs=%04x ip=%04x  f=%04x\n"
	.section	.text.dump_regs.7898,"ax",@progbits
	.type	dump_regs.7898, @function
dump_regs.7898:
.LFB343:
	.loc 3 438 0
	.cfi_startproc
.LVL846:
	pushl	%ebx
.LCFI146:
	.cfi_def_cfa_offset 8
	movl	%eax, %ebx
	.cfi_offset 3, -8
	.loc 3 439 0
	testl	%eax, %eax
	jne	.L496
	.loc 3 440 0
	pushl	$.LC3
.LCFI147:
	.cfi_def_cfa_offset 12
	.cfi_escape 0x2e,0x4
	call	__dprintf.1656
.LVL847:
	popl	%eax
.LCFI148:
	.cfi_def_cfa_offset 8
	.loc 3 441 0
	jmp	.L498
.LVL848:
.L496:
.LBB8673:
	.loc 3 443 0
#APP
# 443 "src/output.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL849:
#NO_APP
.LBE8673:
	movzwl	%ax, %eax
.LVL850:
	pushl	%eax
.LCFI149:
	.cfi_def_cfa_offset 12
	movzwl	2(%ebx), %eax
.LVL851:
	pushl	%eax
.LCFI150:
	.cfi_def_cfa_offset 16
	movzwl	(%ebx), %eax
	pushl	%eax
.LCFI151:
	.cfi_def_cfa_offset 20
	pushl	20(%ebx)
.LCFI152:
	.cfi_def_cfa_offset 24
	pushl	24(%ebx)
.LCFI153:
	.cfi_def_cfa_offset 28
	pushl	16(%ebx)
.LCFI154:
	.cfi_def_cfa_offset 32
	pushl	28(%ebx)
.LCFI155:
	.cfi_def_cfa_offset 36
	pushl	$.LC4
.LCFI156:
	.cfi_def_cfa_offset 40
	.cfi_escape 0x2e,0x20
	call	__dprintf.1656
	addl	$32, %esp
.LCFI157:
	.cfi_def_cfa_offset 8
	.loc 3 446 0
	movzwl	36(%ebx), %eax
	pushl	%eax
.LCFI158:
	.cfi_def_cfa_offset 12
	movzwl	32(%ebx), %eax
	pushl	%eax
.LCFI159:
	.cfi_def_cfa_offset 16
	movzwl	34(%ebx), %eax
	pushl	%eax
.LCFI160:
	.cfi_def_cfa_offset 20
	leal	38(%ebx), %eax
	pushl	%eax
.LCFI161:
	.cfi_def_cfa_offset 24
	pushl	12(%ebx)
.LCFI162:
	.cfi_def_cfa_offset 28
	pushl	4(%ebx)
.LCFI163:
	.cfi_def_cfa_offset 32
	pushl	8(%ebx)
.LCFI164:
	.cfi_def_cfa_offset 36
	pushl	$.LC5
.LCFI165:
	.cfi_def_cfa_offset 40
	call	__dprintf.1656
	addl	$32, %esp
.LCFI166:
	.cfi_def_cfa_offset 8
.L498:
	.loc 3 449 0
	popl	%ebx
.LVL852:
	ret
	.cfi_endproc
.LFE343:
	.size	dump_regs.7898, .-dump_regs.7898
	.section	.rodata.str1.1
.LC6:
	.string	"enter %s:\n"
	.section	.text.handle_05,"ax",@progbits
.globl handle_05
	.type	handle_05, @function
handle_05:
.LFB79:
	.loc 1 44 0
	.cfi_startproc
.LVL853:
	subl	$4, %esp
.LCFI167:
	.cfi_def_cfa_offset 8
.LBB8674:
.LBB8675:
	.loc 3 464 0
	pushl	$__func__.2094
.LCFI168:
	.cfi_def_cfa_offset 12
	pushl	$.LC6
.LCFI169:
	.cfi_def_cfa_offset 16
	movl	%eax, 8(%esp)
.LVL854:
	.cfi_escape 0x2e,0x8
	call	__dprintf.1656
	.loc 3 465 0
	movl	8(%esp), %eax
.LBE8675:
.LBE8674:
	.loc 1 46 0
	addl	$12, %esp
.LBB8677:
.LBB8676:
	.loc 3 465 0
	jmp	dump_regs.7898
.LCFI170:
	.cfi_def_cfa_offset 8
.LBE8676:
.LBE8677:
	.cfi_endproc
.LFE79:
	.size	handle_05, .-handle_05
	.section	.rodata.str1.1
.LC7:
	.string	"KBD: int09 handler: AL=0\n"
.LC8:
	.string	"KBD: int09h_handler(): unknown scancode read: 0x%02x!\n"
.LC9:
	.string	"KBD: scancode & asciicode are zero?\n"
	.section	.text.__process_key.20381,"ax",@progbits
	.type	__process_key.20381, @function
__process_key.20381:
.LFB916:
	.loc 11 386 0
	.cfi_startproc
.LVL855:
	pushl	%ebp
.LCFI171:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI172:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI173:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI174:
	.cfi_def_cfa_offset 20
	subl	$24, %esp
.LCFI175:
	.cfi_def_cfa_offset 44
	.loc 11 387 0
	movl	$64, %ecx
#APP
# 387 "src/kbd.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB8678:
#APP
# 387 "src/kbd.c" 1
	movb %ES:23, %dl
# 0 "" 2
.LVL856:
#NO_APP
.LBE8678:
	.loc 11 388 0
#APP
# 388 "src/kbd.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB8679:
#APP
# 388 "src/kbd.c" 1
	movb %ES:24, %bl
# 0 "" 2
#NO_APP
	movl	%ebx, %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LVL857:
.LBE8679:
	.loc 11 389 0
#APP
# 389 "src/kbd.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB8680:
#APP
# 389 "src/kbd.c" 1
	movb %ES:150, %bl
# 0 "" 2
.LVL858:
#NO_APP
.LBE8680:
	.loc 11 391 0
	movzbl	%bl, %edi
	movl	%edi, 16(%esp)
	andl	$1, %edi
	je	.L502
	.loc 11 393 0
	andl	$127, %eax
.LVL859:
	cmpl	$29, %eax
	je	.L544
	.loc 11 397 0
	andl	$-2, %ebx
.LVL860:
.LBB8681:
	.loc 11 398 0
#APP
# 398 "src/kbd.c" 1
	movw %cx, %ES
# 0 "" 2
# 398 "src/kbd.c" 1
	movb %bl, %ES:150
# 0 "" 2
#NO_APP
	jmp	.L544
.LVL861:
.L502:
.LBE8681:
	.loc 11 412 0
	cmpb	$-99, %al
	je	.L513
	ja	.L522
	cmpb	$54, %al
	je	.L508
	ja	.L523
	cmpb	$29, %al
	je	.L506
	cmpb	$42, %al
	je	.L507
	testb	%al, %al
	je	.L505
	jmp	.L504
.L523:
	cmpb	$58, %al
	je	.L510
	ja	.L524
	cmpb	$56, %al
	jne	.L504
	jmp	.L551
.L524:
	cmpb	$69, %al
	je	.L511
	cmpb	$70, %al
	jne	.L504
	jmp	.L552
.L522:
	cmpb	$-70, %al
	je	.L517
	ja	.L525
	cmpb	$-74, %al
	je	.L515
	cmpb	$-72, %al
	je	.L516
	cmpb	$-86, %al
	jne	.L504
	jmp	.L553
.L525:
	cmpb	$-58, %al
	je	.L519
	ja	.L526
	cmpb	$-59, %al
	jne	.L504
	jmp	.L554
.L526:
	cmpb	$-32, %al
	je	.L520
	cmpb	$-31, %al
	jne	.L504
	jmp	.L555
.L505:
.LBB8682:
	.loc 11 414 0
	pushl	$.LC7
.LCFI176:
	.cfi_def_cfa_offset 48
	.cfi_escape 0x2e,0x4
	call	__dprintf.1656
.LVL862:
	popl	%esi
.LCFI177:
	.cfi_def_cfa_offset 44
.LVL863:
	.loc 11 415 0
	jmp	.L544
.LVL864:
.L510:
	.loc 11 418 0
	xorl	$64, %edx
.LVL865:
	.loc 11 419 0
	orl	$64, %esi
.LVL866:
	.loc 11 420 0
	jmp	.L527
.LVL867:
.L517:
	.loc 11 422 0
	andl	$-65, %esi
.LVL868:
	.loc 11 423 0
	jmp	.L527
.LVL869:
.L507:
	.loc 11 426 0
	orl	$2, %edx
.LVL870:
	.loc 11 427 0
	jmp	.L527
.LVL871:
.L553:
	.loc 11 429 0
	andl	$-3, %edx
.LVL872:
	.loc 11 430 0
	jmp	.L527
.LVL873:
.L508:
	.loc 11 433 0
	orl	$1, %edx
.LVL874:
	.loc 11 434 0
	jmp	.L527
.LVL875:
.L515:
	.loc 11 436 0
	andl	$-2, %edx
.LVL876:
	.loc 11 437 0
	jmp	.L527
.LVL877:
.L506:
	.loc 11 440 0
	orl	$4, %edx
.LVL878:
	.loc 11 441 0
	testb	$2, 16(%esp)
	je	.L528
	.loc 11 442 0
	orl	$4, %ebx
.LVL879:
	jmp	.L527
.LVL880:
.L528:
	.loc 11 444 0
	orl	$1, %esi
.LVL881:
	jmp	.L527
.LVL882:
.L513:
	.loc 11 447 0
	andl	$-5, %edx
.LVL883:
	.loc 11 448 0
	testb	$2, 16(%esp)
	je	.L529
	.loc 11 449 0
	andl	$-5, %ebx
.LVL884:
	jmp	.L527
.LVL885:
.L529:
	.loc 11 451 0
	andl	$-2, %esi
.LVL886:
	jmp	.L527
.LVL887:
.L551:
	.loc 11 455 0
	orl	$8, %edx
.LVL888:
	.loc 11 456 0
	testb	$2, 16(%esp)
	je	.L530
	.loc 11 457 0
	orl	$8, %ebx
.LVL889:
	jmp	.L527
.LVL890:
.L530:
	.loc 11 459 0
	orl	$2, %esi
.LVL891:
	jmp	.L527
.LVL892:
.L516:
	.loc 11 462 0
	andl	$-9, %edx
.LVL893:
	.loc 11 463 0
	testb	$2, 16(%esp)
	je	.L531
	.loc 11 464 0
	andl	$-9, %ebx
.LVL894:
	jmp	.L527
.LVL895:
.L531:
	.loc 11 466 0
	andl	$-3, %esi
.LVL896:
	jmp	.L527
.LVL897:
.L511:
	.loc 11 470 0
	orl	$32, %esi
.LVL898:
	.loc 11 471 0
	xorl	$32, %edx
.LVL899:
	.loc 11 472 0
	jmp	.L527
.LVL900:
.L554:
	.loc 11 474 0
	andl	$-33, %esi
.LVL901:
	.loc 11 475 0
	jmp	.L527
.LVL902:
.L552:
	.loc 11 478 0
	orl	$16, %esi
.LVL903:
	.loc 11 479 0
	xorl	$16, %edx
.LVL904:
	.loc 11 480 0
	jmp	.L527
.LVL905:
.L519:
	.loc 11 482 0
	andl	$-17, %esi
.LVL906:
	.loc 11 483 0
	jmp	.L527
.LVL907:
.L520:
	.loc 11 487 0
	orl	$2, %ebx
.LVL908:
.LBB8683:
	.loc 11 488 0
#APP
# 488 "src/kbd.c" 1
	movw %cx, %ES
# 0 "" 2
# 488 "src/kbd.c" 1
	movb %bl, %ES:150(%edi)
# 0 "" 2
#NO_APP
	jmp	.L544
.LVL909:
.L555:
.LBE8683:
	.loc 11 492 0
	orl	$1, %ebx
.LVL910:
	.loc 11 493 0
	jmp	.L527
.LVL911:
.L504:
	.loc 11 496 0
	testb	%al, %al
	js	.L527
	.loc 11 499 0
	cmpb	$83, %al
	jne	.L533
	movl	%edx, %ecx
.LVL912:
	andl	$12, %ecx
	cmpl	$12, %ecx
	jne	.L534
.LBB8684:
	.loc 11 503 0
	movl	$64, %eax
.LVL913:
#APP
# 503 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movl	$4660, %eax
#APP
# 503 "src/kbd.c" 1
	movw %ax, %ES:114
# 0 "" 2
#NO_APP
.LBE8684:
	.loc 11 504 0
	.cfi_escape 0x2e,0x0
	call	reset_vector
.LVL914:
.L533:
	.loc 11 506 0
	cmpb	$88, %al
	jbe	.L534
	.loc 11 507 0
	movzbl	%al, %eax
.LVL915:
	pushl	%eax
.LCFI178:
	.cfi_def_cfa_offset 48
	pushl	$.LC8
.LCFI179:
	.cfi_def_cfa_offset 52
	.cfi_escape 0x2e,0x8
	call	__dprintf.1656
.LVL916:
	popl	%ecx
.LCFI180:
	.cfi_def_cfa_offset 48
	popl	%ebx
.LCFI181:
	.cfi_def_cfa_offset 44
.LVL917:
	.loc 11 509 0
	jmp	.L544
.LVL918:
.L534:
	.loc 11 512 0
	movzbl	%al, %edi
.LVL919:
	imull	$10, %edi, %edi
.LVL920:
	leal	scan_to_scanascii.20379(%edi), %ecx
.LVL921:
	.loc 11 513 0
	movzbl	%dl, %ebp
	testl	$8, %ebp
	je	.L535
.LBB8685:
	.loc 11 514 0
#APP
# 514 "src/kbd.c" 1
	movw %CS:6(%ecx), %ax
# 0 "" 2
.LVL922:
#NO_APP
	jmp	.L545
.LVL923:
.L535:
.LBE8685:
	.loc 11 516 0
	testl	$4, %ebp
	je	.L537
.LBB8686:
	.loc 11 517 0
#APP
# 517 "src/kbd.c" 1
	movw %CS:4(%ecx), %ax
# 0 "" 2
.LVL924:
#NO_APP
	jmp	.L545
.LVL925:
.L537:
.LBE8686:
	.loc 11 519 0
	testb	$2, 16(%esp)
	je	.L538
	cmpb	$70, %al
.LVL926:
	jbe	.L538
	cmpb	$83, %al
	ja	.L538
.LBB8687:
	.loc 11 523 0
#APP
# 523 "src/kbd.c" 1
	movw %CS:scan_to_scanascii.20379(%edi), %ax
# 0 "" 2
.LVL927:
#NO_APP
.LBE8687:
	shrw	$8, %ax
.LVL928:
	movb	$-32, %cl
.LVL929:
	.loc 11 519 0
	jmp	.L542
.LVL930:
.L538:
	.loc 11 524 0
	andl	$3, %ebp
	je	.L539
.LBB8688:
	.loc 11 528 0
#APP
# 528 "src/kbd.c" 1
	movb %CS:8(%ecx), %al
# 0 "" 2
.LVL931:
#NO_APP
.LBE8688:
	testb	%dl, %al
	je	.L540
.LBB8689:
	.loc 11 529 0
#APP
# 529 "src/kbd.c" 1
	movw %CS:scan_to_scanascii.20379(%edi), %ax
# 0 "" 2
.LVL932:
#NO_APP
	jmp	.L545
.LVL933:
.L540:
.LBE8689:
.LBB8690:
	.loc 11 532 0
#APP
# 532 "src/kbd.c" 1
	movw %CS:2(%ecx), %ax
# 0 "" 2
.LVL934:
#NO_APP
	jmp	.L545
.LVL935:
.L539:
.LBE8690:
.LBB8691:
	.loc 11 537 0
#APP
# 537 "src/kbd.c" 1
	movb %CS:8(%ecx), %al
# 0 "" 2
.LVL936:
#NO_APP
.LBE8691:
	testb	%dl, %al
	je	.L541
.LBB8692:
	.loc 11 538 0
#APP
# 538 "src/kbd.c" 1
	movw %CS:2(%ecx), %ax
# 0 "" 2
.LVL937:
#NO_APP
	jmp	.L545
.LVL938:
.L541:
.LBE8692:
.LBB8693:
	.loc 11 541 0
#APP
# 541 "src/kbd.c" 1
	movw %CS:scan_to_scanascii.20379(%edi), %ax
# 0 "" 2
.LVL939:
#NO_APP
.L545:
.LBE8693:
	movb	%al, %cl
.LVL940:
	.loc 11 542 0
	shrw	$8, %ax
.LVL941:
	.loc 11 545 0
	testb	%cl, %cl
	jne	.L542
	testb	%al, %al
	jne	.L542
	.loc 11 546 0
	pushl	$.LC9
.LCFI182:
	.cfi_def_cfa_offset 48
	movb	%al, 16(%esp)
.LVL942:
	movb	%dl, 8(%esp)
.LVL943:
	movb	%cl, 12(%esp)
.LVL944:
	.cfi_escape 0x2e,0x4
	call	__dprintf.1656
	popl	%edx
.LCFI183:
	.cfi_def_cfa_offset 44
	movb	8(%esp), %cl
	movb	4(%esp), %dl
	movb	12(%esp), %al
.LVL945:
.L542:
.LBB8694:
.LBB8695:
	.loc 11 54 0
	movl	$64, %edi
#APP
# 54 "src/kbd.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB8696:
#APP
# 54 "src/kbd.c" 1
	movw %ES:128, %bp
# 0 "" 2
#NO_APP
	movw	%bp, 16(%esp)
.LBE8696:
	.loc 11 55 0
#APP
# 55 "src/kbd.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB8697:
#APP
# 55 "src/kbd.c" 1
	movw %ES:130, %bp
# 0 "" 2
#NO_APP
	movw	%bp, 20(%esp)
.LBE8697:
	.loc 11 57 0
#APP
# 57 "src/kbd.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB8698:
#APP
# 57 "src/kbd.c" 1
	movw %ES:26, %bp
# 0 "" 2
#NO_APP
	movw	%bp, 22(%esp)
.LBE8698:
	.loc 11 58 0
#APP
# 58 "src/kbd.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB8699:
#APP
# 58 "src/kbd.c" 1
	movw %ES:28, %di
# 0 "" 2
#NO_APP
	movw	%di, 2(%esp)
.LBE8699:
	.loc 11 61 0
	addl	$2, %edi
.LVL946:
	.loc 11 62 0
	cmpw	20(%esp), %di
	jb	.L543
	movl	16(%esp), %edi
.LVL947:
.L543:
	.loc 11 65 0
	cmpw	22(%esp), %di
	je	.L527
.LBB8700:
	.loc 11 68 0
	movl	$64, %ebp
#APP
# 68 "src/kbd.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
	movzwl	2(%esp), %ebp
#APP
# 68 "src/kbd.c" 1
	movb %cl, %ES:(%ebp)
# 0 "" 2
#NO_APP
.LBE8700:
.LBB8701:
	.loc 11 69 0
	movl	$64, %ecx
.LVL948:
#APP
# 69 "src/kbd.c" 1
	movw %cx, %ES
# 0 "" 2
# 69 "src/kbd.c" 1
	movb %al, %ES:1(%ebp)
# 0 "" 2
#NO_APP
.LBE8701:
.LBB8702:
	.loc 11 70 0
#APP
# 70 "src/kbd.c" 1
	movw %cx, %ES
# 0 "" 2
# 70 "src/kbd.c" 1
	movw %di, %ES:28
# 0 "" 2
.LVL949:
#NO_APP
.L527:
.LBE8702:
.LBE8695:
.LBE8694:
.LBE8682:
	.loc 11 550 0
	andl	$-3, %ebx
.LVL950:
.LBB8703:
	.loc 11 552 0
	movl	$64, %eax
.LVL951:
#APP
# 552 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
# 552 "src/kbd.c" 1
	movb %dl, %ES:23
# 0 "" 2
#NO_APP
.LBE8703:
.LBB8704:
	.loc 11 553 0
#APP
# 553 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %edx
.LVL952:
#APP
# 553 "src/kbd.c" 1
	movb %dl, %ES:24
# 0 "" 2
#NO_APP
.LBE8704:
.LBB8705:
	.loc 11 554 0
#APP
# 554 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
# 554 "src/kbd.c" 1
	movb %bl, %ES:150
# 0 "" 2
.LVL953:
#NO_APP
.L544:
.LBE8705:
	.loc 11 555 0
	addl	$24, %esp
	popl	%ebx
.LVL954:
	popl	%esi
.LVL955:
	popl	%edi
.LVL956:
	popl	%ebp
	ret
	.cfi_endproc
.LFE916:
	.size	__process_key.20381, .-__process_key.20381
	.section	.text.process_key.1707,"ax",@progbits
	.type	process_key.1707, @function
process_key.1707:
.LFB917:
	.loc 11 559 0
	.cfi_startproc
.LVL957:
	pushl	%edi
.LCFI184:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI185:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI186:
	.cfi_def_cfa_offset 16
.LBB8706:
	.loc 11 567 0
	movzbl	%al, %eax
.LVL958:
	orb	$79, %ah
#APP
# 567 "src/kbd.c" 1
	pushl %ebp
sti
stc
int $21
pushfl
popl %ecx
cli
cld
popl %ebp
# 0 "" 2
.LVL959:
	.loc 11 568 0
#NO_APP
	andb	$1, %cl
.LVL960:
	je	.L558
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
.LBE8706:
	.loc 11 572 0
	movzbl	%al, %eax
.LVL961:
	.loc 11 573 0
	popl	%ebx
	popl	%esi
	popl	%edi
	.loc 11 572 0
	jmp	__process_key.20381
.LVL962:
.L558:
	.loc 11 573 0
	popl	%ebx
	popl	%esi
	popl	%edi
	ret
	.cfi_endproc
.LFE917:
	.size	process_key.1707, .-process_key.1707
	.section	.text.prockeys.51301,"ax",@progbits
	.type	prockeys.51301, @function
prockeys.51301:
.LFB2461:
	.loc 22 173 0
	.cfi_startproc
.LVL963:
	pushl	%ebx
.LCFI187:
	.cfi_def_cfa_offset 8
	movl	%eax, %ebx
	.cfi_offset 3, -8
	.loc 22 174 0
	cmpw	$255, %ax
	jbe	.L560
.LBB8707:
	.loc 22 175 0
	shrw	$8, %ax
.LVL964:
	.loc 22 176 0
	cmpb	$-31, %al
.LVL965:
	jne	.L561
	.loc 22 178 0
	movl	$225, %eax
.LVL966:
	call	process_key.1707
	.loc 22 179 0
	andl	$-128, %ebx
.LVL967:
	movb	%bl, %al
	orl	$29, %eax
	movzbl	%al, %eax
	call	process_key.1707
	.loc 22 180 0
	orl	$69, %ebx
	jmp	.L560
.LVL968:
.L561:
	.loc 22 183 0
	movzbl	%al, %eax
.LVL969:
	call	process_key.1707
.LVL970:
.L560:
.LBE8707:
	.loc 22 185 0
	movzbl	%bl, %eax
.LVL971:
	.loc 22 186 0
	popl	%ebx
	.loc 22 185 0
	jmp	process_key.1707
.LVL972:
	.cfi_endproc
.LFE2461:
	.size	prockeys.51301, .-prockeys.51301
	.section	.text.handle_key.51401,"ax",@progbits
	.type	handle_key.51401, @function
handle_key.51401:
.LFB2464:
	.loc 22 215 0
	.cfi_startproc
.LVL973:
	pushl	%ebp
.LCFI188:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI189:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI190:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI191:
	.cfi_def_cfa_offset 20
	subl	$20, %esp
.LCFI192:
	.cfi_def_cfa_offset 40
	movl	%eax, %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LBB8708:
.LBB8709:
	.loc 10 253 0
	movl	$64, %eax
.LVL974:
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8710:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %ax
# 0 "" 2
#NO_APP
	movw	%ax, 8(%esp)
.LBE8710:
.LBE8709:
.LBE8708:
	.loc 22 221 0
#APP
# 221 "src/usb-hid.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8711:
.LBB8712:
#APP
# 221 "src/usb-hid.c" 1
	movl %ES:290, %edx
# 0 "" 2
# 221 "src/usb-hid.c" 1
	movl %ES:294, %eax
# 0 "" 2
#NO_APP
.LBE8712:
.LBE8711:
	movl	%edx, 12(%esp)
	movl	%eax, 16(%esp)
	movb	13(%esp), %dl
	movl	$1, %edi
	xorl	%ebx, %ebx
.LVL975:
.LBB8713:
	.loc 22 227 0
	leal	12(%esp), %ebp
.LVL976:
.L572:
	movb	1(%ebp,%edi), %al
.LVL977:
	.loc 22 228 0
	testb	%al, %al
	jne	.L564
	jmp	.L588
.L590:
.LBB8714:
.LBB8715:
	.loc 22 192 0
	cmpb	$99, %al
	ja	.L566
.LBB8716:
	.loc 22 194 0
	movzbl	%al, %eax
.LVL978:
#APP
# 194 "src/usb-hid.c" 1
	movw %CS:KeyToScanCode.51294(%eax,%eax), %ax
# 0 "" 2
.LVL979:
#NO_APP
.LBE8716:
	.loc 22 195 0
	testw	%ax, %ax
	je	.L566
	.loc 22 196 0
	orb	$-128, %al
.LVL980:
	movzwl	%ax, %eax
	movb	%dl, (%esp)
	call	prockeys.51301
.LVL981:
	movb	(%esp), %dl
.LVL982:
.L566:
.LBE8715:
.LBE8714:
	.loc 22 235 0
	cmpl	$6, %edi
	je	.L567
	cmpb	$0, 2(%ebp,%edi)
	jne	.L568
.L567:
	movb	$-1, %dl
	jmp	.L568
.LVL983:
.L564:
	xorl	%ecx, %ecx
.LVL984:
.L571:
	.loc 22 240 0
	cmpb	%al, 2(%esi,%ecx)
	jne	.L569
	.loc 22 242 0
	movb	$0, 2(%esi,%ecx)
	.loc 22 243 0
	movb	%al, 14(%esp,%ebx)
	incl	%ebx
.LVL985:
	.loc 22 244 0
	jmp	.L568
.L569:
	.loc 22 231 0
	incl	%ecx
.LVL986:
	.loc 22 232 0
	cmpl	$6, %ecx
	jne	.L571
	jmp	.L590
.LVL987:
.L568:
	incl	%edi
.LBE8713:
	.loc 22 226 0
	cmpl	$7, %edi
	jne	.L572
.L588:
	movb	%dl, 13(%esp)
	.loc 22 248 0
	movb	12(%esp), %cl
.LVL988:
	movb	%cl, 11(%esp)
	movb	(%esi), %dl
.LVL989:
	notl	%edx
.LVL990:
	andl	%ecx, %edx
.LVL991:
	movl	$ModifierToScanCode.51295, 4(%esp)
	movl	$ModifierToScanCode.51295, %edi
	xorl	%ebp, %ebp
.LVL992:
	jmp	.L573
.LVL993:
.L575:
.LBB8717:
.LBB8718:
	.loc 22 205 0
	movzbl	%dl, %eax
.LVL994:
	btl	%ebp, %eax
	jnc	.L574
.LBB8719:
	.loc 22 207 0
#APP
# 207 "src/usb-hid.c" 1
	movw %CS:(%edi), %ax
# 0 "" 2
.LVL995:
#NO_APP
.LBE8719:
	orb	$-128, %al
	movzwl	%ax, %eax
	movb	%dl, (%esp)
	call	prockeys.51301
	.loc 22 208 0
	movl	$1, %eax
	movl	%ebp, %ecx
.LVL996:
	sall	%cl, %eax
	notl	%eax
	movb	(%esp), %dl
	andl	%eax, %edx
.LVL997:
.L574:
	.loc 22 204 0
	incl	%ebp
.LVL998:
	addl	$2, %edi
.LVL999:
.L573:
	testb	%dl, %dl
	jne	.L575
.LBE8718:
.LBE8717:
	.loc 22 251 0
	movb	11(%esp), %dl
.LVL1000:
	notl	%edx
.LVL1001:
	andb	(%esi), %dl
.LVL1002:
	xorl	%edi, %edi
.LVL1003:
.LBB8720:
.LBB8721:
	.loc 22 208 0
	movl	$1, %ebp
.LVL1004:
	jmp	.L576
.LVL1005:
.L578:
	.loc 22 205 0
	movzbl	%dl, %eax
.LVL1006:
	btl	%edi, %eax
	jnc	.L577
.LBB8722:
	.loc 22 207 0
	movl	4(%esp), %ecx
#APP
# 207 "src/usb-hid.c" 1
	movw %CS:(%ecx), %ax
# 0 "" 2
.LVL1007:
#NO_APP
.LBE8722:
	movzwl	%ax, %eax
.LVL1008:
	movb	%dl, (%esp)
	call	prockeys.51301
.LVL1009:
	.loc 22 208 0
	movl	%ebp, %eax
	movl	%edi, %ecx
.LVL1010:
	sall	%cl, %eax
	notl	%eax
	movb	(%esp), %dl
	andl	%eax, %edx
.LVL1011:
.L577:
	.loc 22 204 0
	incl	%edi
.LVL1012:
	addl	$2, 4(%esp)
.LVL1013:
.L576:
	testb	%dl, %dl
	jne	.L578
.LBE8721:
.LBE8720:
	.loc 22 252 0
	movb	(%esi), %al
.LVL1014:
	movb	%al, 12(%esp)
	movb	13(%esp), %al
	xorl	%edi, %edi
.LVL1015:
.L581:
.LBB8723:
	.loc 22 254 0
	movb	2(%esi,%edi), %dl
.LVL1016:
	.loc 22 255 0
	testb	%dl, %dl
	je	.L579
.LBB8724:
.LBB8725:
	.loc 22 192 0
	cmpb	$99, %dl
	ja	.L580
.LBB8726:
	.loc 22 194 0
	movzbl	%dl, %eax
.LVL1017:
#APP
# 194 "src/usb-hid.c" 1
	movw %CS:KeyToScanCode.51294(%eax,%eax), %ax
# 0 "" 2
.LVL1018:
#NO_APP
.LBE8726:
	.loc 22 195 0
	testw	%ax, %ax
	je	.L580
	.loc 22 196 0
	movzwl	%ax, %eax
.LVL1019:
	movb	%dl, (%esp)
	call	prockeys.51301
.LVL1020:
	movb	(%esp), %dl
.LVL1021:
.L580:
.LBE8725:
.LBE8724:
	.loc 22 259 0
	movb	%dl, 14(%esp,%ebx)
	incl	%ebx
.LVL1022:
	movb	$16, %al
.LVL1023:
.L579:
.LBE8723:
	.loc 22 253 0
	incl	%edi
.LVL1024:
	cmpl	$6, %edi
	jne	.L581
	movb	%al, 13(%esp)
	.loc 22 262 0
	cmpl	$5, %ebx
	ja	.L582
	.loc 22 263 0
	movb	$0, 14(%esp,%ebx)
	.loc 22 266 0
	testl	%ebx, %ebx
	je	.L583
.L582:
	.loc 22 267 0
	movb	13(%esp), %al
	testb	%al, %al
	jne	.L584
	.loc 22 268 0
	movb	13(%esp,%ebx), %al
.LBB8727:
.LBB8728:
	.loc 22 192 0
	cmpb	$99, %al
	ja	.L583
.LBB8729:
	.loc 22 194 0
	movzbl	%al, %eax
#APP
# 194 "src/usb-hid.c" 1
	movw %CS:KeyToScanCode.51294(%eax,%eax), %ax
# 0 "" 2
.LVL1025:
#NO_APP
.LBE8729:
	.loc 22 195 0
	testw	%ax, %ax
	je	.L583
	.loc 22 196 0
	movzwl	%ax, %eax
.LVL1026:
	call	prockeys.51301
.LVL1027:
	jmp	.L583
.LVL1028:
.L584:
.LBE8728:
.LBE8727:
	.loc 22 269 0
	cmpb	$-1, %al
	je	.L583
	.loc 22 270 0
	decl	%eax
	movb	%al, 13(%esp)
.LVL1029:
.L583:
.LBB8730:
	.loc 22 274 0
	movl	16(%esp), %eax
.LVL1030:
#APP
# 274 "src/usb-hid.c" 1
	movw 8(%esp), %ES
# 0 "" 2
#NO_APP
.LBB8731:
	movl	12(%esp), %edx
.LVL1031:
#APP
# 274 "src/usb-hid.c" 1
	movl %edx, %ES:290
# 0 "" 2
# 274 "src/usb-hid.c" 1
	movl %eax, %ES:294
# 0 "" 2
#NO_APP
.LBE8731:
.LBE8730:
	.loc 22 275 0
	addl	$20, %esp
	popl	%ebx
.LVL1032:
	popl	%esi
.LVL1033:
	popl	%edi
.LVL1034:
	popl	%ebp
	ret
	.cfi_endproc
.LFE2464:
	.size	handle_key.51401, .-handle_key.51401
	.section	.text.usb_check_key.51512,"ax",@progbits
	.type	usb_check_key.51512, @function
usb_check_key.51512:
.LFB2465:
	.loc 22 280 0
	.cfi_startproc
	pushl	%esi
.LCFI193:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.LCFI194:
	.cfi_def_cfa_offset 12
	subl	$8, %esp
.LCFI195:
	.cfi_def_cfa_offset 20
.LBB8732:
	.loc 22 283 0
#APP
# 283 "src/usb-hid.c" 1
	movl %CS:keyboard_pipe, %esi
# 0 "" 2
.LVL1035:
#NO_APP
.LBE8732:
	.loc 22 284 0
	testl	%esi, %esi
	je	.L594
	.cfi_offset 3, -12
	.cfi_offset 6, -8
.L595:
.LBB8733:
	.loc 22 289 0
	movl	%esp, %edx
	movl	%esi, %eax
	call	usb_poll_intr.42677
	.loc 22 290 0
	testl	%eax, %eax
.LVL1036:
	jne	.L594
	.loc 22 292 0
	movl	%esp, %eax
.LVL1037:
	call	handle_key.51401
.LBE8733:
	.loc 22 293 0
	jmp	.L595
.LVL1038:
.L594:
	.loc 22 294 0
	popl	%eax
.LCFI196:
	.cfi_def_cfa_offset 16
.LVL1039:
	popl	%edx
.LCFI197:
	.cfi_def_cfa_offset 12
	popl	%ebx
	popl	%esi
.LVL1040:
	ret
	.cfi_endproc
.LFE2465:
	.size	usb_check_key.51512, .-usb_check_key.51512
	.section	.text.handle_08,"ax",@progbits
.globl handle_08
	.type	handle_08, @function
handle_08:
.LFB1186:
	.loc 7 466 0
	.cfi_startproc
	pushl	%edi
.LCFI198:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI199:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI200:
	.cfi_def_cfa_offset 16
.LBB8734:
.LBB8735:
	.loc 5 606 0
	movl	$64, %edx
#APP
# 606 "src/floppy.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8736:
#APP
# 606 "src/floppy.c" 1
	movb %ES:64, %al
# 0 "" 2
.LVL1041:
#NO_APP
.LBE8736:
	.loc 5 607 0
	testb	%al, %al
	je	.L597
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.loc 5 608 0
	decl	%eax
.LVL1042:
.LBB8737:
	.loc 5 609 0
#APP
# 609 "src/floppy.c" 1
	movw %dx, %ES
# 0 "" 2
# 609 "src/floppy.c" 1
	movb %al, %ES:64
# 0 "" 2
#NO_APP
.LBE8737:
	.loc 5 610 0
	testb	%al, %al
	jne	.L597
.LBB8738:
.LBB8739:
	.loc 2 93 0
	movl	$1010, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL1043:
#NO_APP
.LBE8739:
.LBE8738:
.LBB8740:
.LBB8741:
	.loc 2 83 0
	andl	$207, %eax
.LVL1044:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL1045:
#NO_APP
.L597:
.LBE8741:
.LBE8740:
.LBE8735:
.LBE8734:
	.loc 7 471 0
	movl	$64, %edx
#APP
# 471 "src/clock.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8742:
#APP
# 471 "src/clock.c" 1
	movl %ES:108, %eax
# 0 "" 2
.LVL1046:
#NO_APP
.LBE8742:
	.loc 7 472 0
	incl	%eax
.LVL1047:
	.loc 7 474 0
	cmpl	$1573039, %eax
	jbe	.L598
.LBB8743:
	.loc 7 477 0
#APP
# 477 "src/clock.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB8744:
#APP
# 477 "src/clock.c" 1
	movb %ES:112, %al
# 0 "" 2
.LVL1048:
#NO_APP
.LBE8744:
	incl	%eax
.LVL1049:
#APP
# 477 "src/clock.c" 1
	movb %al, %ES:112
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
.LVL1050:
.L598:
.LBE8743:
.LBB8745:
	.loc 7 480 0
	movl	$64, %edx
#APP
# 480 "src/clock.c" 1
	movw %dx, %ES
# 0 "" 2
# 480 "src/clock.c" 1
	movl %eax, %ES:108
# 0 "" 2
#NO_APP
.LBE8745:
.LBB8746:
.LBB8747:
	.loc 22 416 0
	call	usb_check_key.51512
.LVL1051:
	.loc 22 417 0
	call	usb_check_mouse.51624
.LBE8747:
.LBE8746:
	.loc 7 486 0
	xorl	%eax, %eax
.LVL1052:
#APP
# 486 "src/clock.c" 1
	pushl %ebp
sti
stc
int $28
pushfl
popl %ecx
cli
cld
popl %ebp
# 0 "" 2
.LVL1053:
#NO_APP
.LBB8748:
.LBB8749:
.LBB8750:
	.loc 2 83 0
	movb	$32, %al
.LVL1054:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE8750:
.LBE8749:
.LBE8748:
	.loc 7 489 0
	popl	%ebx
	popl	%esi
	popl	%edi
	ret
	.cfi_endproc
.LFE1186:
	.size	handle_08, .-handle_08
	.section	.rodata.str1.1
.LC10:
	.string	"WARNING - Timeout at %s:%d!\n"
	.section	.text.await_not_bsy.14871,"ax",@progbits
	.type	await_not_bsy.14871, @function
await_not_bsy.14871:
.LFB701:
	.file 27 "src/ata.c"
	.loc 27 49 0
	.cfi_startproc
.LVL1055:
	pushl	%esi
.LCFI201:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.LCFI202:
	.cfi_def_cfa_offset 12
	subl	$16, %esp
.LCFI203:
	.cfi_def_cfa_offset 28
	movl	%eax, %ebx
	.cfi_offset 3, -12
	.cfi_offset 6, -8
.LBB8751:
.LBB8752:
.LBB8753:
.LBB8754:
.LBB8755:
	.loc 7 134 0
#APP
# 134 "src/clock.c" 1
	movl %CS:cpu_khz, %ecx
# 0 "" 2
.LVL1056:
#NO_APP
.LBE8755:
.LBB8756:
.LBB8757:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1057:
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE8757:
.LBE8756:
	.loc 7 135 0
	movl	$32000, %esi
	movl	%ecx, %eax
	mull	%esi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	(%esp), %eax
	movl	4(%esp), %edx
	addl	%eax, 8(%esp)
	adcl	%edx, 12(%esp)
.LBE8754:
.LBE8753:
.LBB8758:
.LBB8759:
.LBB8760:
	.loc 2 93 0
	addl	$7, %ebx
.LVL1058:
.L605:
	movl	%ebx, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL1059:
#NO_APP
.LBE8760:
.LBE8759:
	.loc 27 36 0
	testb	%al, %al
	js	.L601
	.loc 27 37 0
	movzbl	%al, %eax
.LVL1060:
	jmp	.L602
.LVL1061:
.L601:
.LBB8761:
.LBB8762:
.LBB8763:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1062:
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE8763:
.LBE8762:
.LBE8761:
	.loc 27 38 0
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	subl	%eax, (%esp)
	sbbl	%edx, 4(%esp)
	cmpl	$0, 4(%esp)
	jl	.L603
	jg	.L607
	cmpl	$0, (%esp)
	jbe	.L603
.L607:
.LBB8764:
.LBB8765:
	.loc 3 516 0
	pushl	$39
.LCFI204:
	.cfi_def_cfa_offset 32
	pushl	$__func__.14856
.LCFI205:
	.cfi_def_cfa_offset 36
	pushl	$.LC10
.LCFI206:
	.cfi_def_cfa_offset 40
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
.LVL1063:
	addl	$12, %esp
.LCFI207:
	.cfi_def_cfa_offset 28
	orl	$-1, %eax
	jmp	.L602
.LVL1064:
.L603:
.LBE8765:
.LBE8764:
.LBB8766:
.LBB8767:
.LBB8768:
.LBB8769:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
	jmp	.L605
.L602:
.LBE8769:
.LBE8768:
.LBE8767:
.LBE8766:
.LBE8758:
.LBE8752:
.LBE8751:
	.loc 27 51 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	ret
	.cfi_endproc
.LFE701:
	.size	await_not_bsy.14871, .-await_not_bsy.14871
	.section	.text.ata_pio_transfer.15388,"ax",@progbits
	.type	ata_pio_transfer.15388, @function
ata_pio_transfer.15388:
.LFB711:
	.loc 27 298 0
	.cfi_startproc
.LVL1065:
	pushl	%ebp
.LCFI208:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI209:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI210:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI211:
	.cfi_def_cfa_offset 20
	subl	$36, %esp
.LCFI212:
	.cfi_def_cfa_offset 56
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, 20(%esp)
	movl	%ecx, 12(%esp)
.LBB8770:
	.loc 27 304 0
	movl	12(%eax), %eax
.LVL1066:
#APP
# 304 "src/ata.c" 1
	movl %CS:36(%eax), %eax
# 0 "" 2
.LVL1067:
#NO_APP
.LBE8770:
.LBB8771:
	.loc 27 305 0
#APP
# 305 "src/ata.c" 1
	movw %CS:-983040(%eax), %dx
# 0 "" 2
.LVL1068:
#NO_APP
	movw	%dx, 6(%esp)
.LBE8771:
.LBB8772:
	.loc 27 306 0
#APP
# 306 "src/ata.c" 1
	movw %CS:-983038(%eax), %si
# 0 "" 2
.LVL1069:
#NO_APP
.LBE8772:
	.loc 27 307 0
	movzwl	16(%ebx), %ebp
.LVL1070:
	.loc 27 308 0
	movl	8(%ebx), %eax
.LVL1071:
	movl	%eax, (%esp)
.LBB8773:
.LBB8774:
	.loc 26 155 0
	movl	$2, %ecx
.LVL1072:
	movl	12(%esp), %eax
	cltd
	idivl	%ecx
	movzwl	%ax, %ecx
	movl	%ecx, 16(%esp)
	movl	$0, 8(%esp)
.LBE8774:
.LBE8773:
.LBB8778:
.LBB8779:
.LBB8780:
.LBB8781:
	.loc 2 93 0
	addl	$2, %esi
.LVL1073:
	movw	%si, 26(%esp)
.LBE8781:
.LBE8780:
	.loc 27 67 0
	movzwl	6(%esp), %edx
	movl	%edx, 28(%esp)
.LBE8779:
.LBE8778:
	.loc 27 336 0
	leal	-1(%ebp), %eax
	movl	%eax, 32(%esp)
.LVL1074:
.L615:
	.loc 27 311 0
	cmpl	$0, 20(%esp)
	je	.L609
.LBB8785:
.LBB8777:
	.loc 26 154 0
	movl	(%esp), %eax
	shrl	$4, %eax
#APP
# 154 "src/farptr.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8775:
.LBB8776:
	.loc 2 125 0
	movl	(%esp), %esi
.LVL1075:
	andl	$15, %esi
	movl	16(%esp), %ecx
.LVL1076:
	movw	6(%esp), %dx
#APP
# 125 "src/ioport.h" 1
	rep outsw %es:(%esi), (%dx)
# 0 "" 2
.LVL1077:
#NO_APP
	jmp	.L610
.LVL1078:
.L609:
.LBE8776:
.LBE8775:
.LBE8777:
.LBE8785:
.LBB8786:
.LBB8787:
	.loc 26 142 0
	movl	(%esp), %eax
	shrl	$4, %eax
#APP
# 142 "src/farptr.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB8788:
.LBB8789:
	.loc 2 112 0
	movl	(%esp), %edi
.LVL1079:
	andl	$15, %edi
	movl	16(%esp), %ecx
.LVL1080:
	movw	6(%esp), %dx
#APP
# 112 "src/ioport.h" 1
	rep insw (%dx), %es:(%edi)
# 0 "" 2
.LVL1081:
#NO_APP
.L610:
.LBE8789:
.LBE8788:
.LBE8787:
.LBE8786:
.LBB8790:
.LBB8784:
.LBB8783:
.LBB8782:
	.loc 2 93 0
	movw	26(%esp), %dx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL1082:
#NO_APP
.LBE8782:
.LBE8783:
	.loc 27 67 0
	movl	28(%esp), %eax
.LVL1083:
	call	await_not_bsy.14871
.LVL1084:
.LBE8784:
.LBE8790:
	.loc 27 329 0
	testl	%eax, %eax
.LVL1085:
	jns	.L611
	.loc 27 331 0
	subw	%bp, 16(%ebx)
.LVL1086:
	.loc 27 332 0
	jmp	.L612
.LVL1087:
.L611:
	.loc 27 335 0
	decl	%ebp
.LVL1088:
	.loc 27 336 0
	movl	8(%esp), %edx
	cmpl	%edx, 32(%esp)
	je	.L613
	incl	%edx
	movl	%edx, 8(%esp)
	.loc 27 339 0
	andl	$137, %eax
.LVL1089:
	cmpl	$8, %eax
	jne	.L614
	.loc 27 297 0
	movl	12(%esp), %eax
	addl	%eax, (%esp)
	jmp	.L615
.L614:
	.loc 27 342 0
	subw	%bp, 16(%ebx)
.LVL1090:
	movl	$-6, %eax
.LVL1091:
	.loc 27 343 0
	jmp	.L612
.LVL1092:
.L613:
	.loc 27 347 0
	andl	$169, %eax
.LVL1093:
	.loc 27 349 0
	cmpl	$0, 20(%esp)
	jne	.L616
	.loc 27 350 0
	andl	$-33, %eax
.L616:
	.loc 27 351 0
	testl	%eax, %eax
	je	.L612
	movl	$-7, %eax
.L612:
.LVL1094:
	.loc 27 357 0
	addl	$36, %esp
	popl	%ebx
.LVL1095:
	popl	%esi
.LVL1096:
	popl	%edi
.LVL1097:
	popl	%ebp
.LVL1098:
	ret
	.cfi_endproc
.LFE711:
	.size	ata_pio_transfer.15388, .-ata_pio_transfer.15388
	.section	.text.ndelay_await_not_bsy.14892,"ax",@progbits
	.type	ndelay_await_not_bsy.14892, @function
ndelay_await_not_bsy.14892:
.LFB704:
	.loc 27 73 0
	.cfi_startproc
.LVL1099:
	pushl	%esi
.LCFI213:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.LCFI214:
	.cfi_def_cfa_offset 12
	subl	$8, %esp
.LCFI215:
	.cfi_def_cfa_offset 20
	movl	%eax, %ecx
.LBB8791:
.LBB8792:
	.loc 7 111 0
#APP
# 111 "src/clock.c" 1
	movl %CS:cpu_khz, %ebx
# 0 "" 2
.LVL1100:
#NO_APP
.LBE8792:
.LBB8793:
.LBB8794:
.LBB8795:
.LBB8796:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1101:
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE8796:
.LBE8795:
	.loc 7 96 0
	imull	$400, %ebx, %eax
	movl	$1000000, %ebx
	.cfi_offset 3, -12
	.cfi_offset 6, -8
.LVL1102:
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %ebx
	xorl	%esi, %esi
.LVL1103:
	addl	(%esp), %ebx
.LVL1104:
	adcl	4(%esp), %esi
.LVL1105:
	jmp	.L619
.L620:
.LBB8797:
.LBB8798:
	.loc 8 36 0
#APP
# 36 "src/util.h" 1
	rep ; nop
# 0 "" 2
#NO_APP
.L619:
.LBE8798:
.LBE8797:
.LBB8799:
.LBB8800:
.LBB8801:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
.LBE8801:
.LBE8800:
.LBE8799:
	.loc 7 97 0
	subl	%ebx, %eax
	sbbl	%esi, %edx
	cmpl	$0, %edx
	jl	.L620
	jg	.L623
	cmpl	$0, %eax
	jbe	.L620
.L623:
.LBE8794:
.LBE8793:
.LBE8791:
	.loc 27 75 0
	movzwl	%cx, %eax
.LVL1106:
	.loc 27 76 0
	popl	%ecx
.LCFI216:
	.cfi_def_cfa_offset 16
	popl	%ebx
.LCFI217:
	.cfi_def_cfa_offset 12
.LVL1107:
	popl	%ebx
	popl	%esi
.LVL1108:
	.loc 27 75 0
	jmp	await_not_bsy.14871
.LVL1109:
	.cfi_endproc
.LFE704:
	.size	ndelay_await_not_bsy.14892, .-ndelay_await_not_bsy.14892
	.section	.text.send_cmd.15132,"ax",@progbits
	.type	send_cmd.15132, @function
send_cmd.15132:
.LFB708:
	.loc 27 193 0
	.cfi_startproc
.LVL1110:
	pushl	%ebp
.LCFI218:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI219:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI220:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI221:
	.cfi_def_cfa_offset 20
	subl	$4, %esp
.LCFI222:
	.cfi_def_cfa_offset 24
	movl	%edx, %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LBB8802:
	.loc 27 194 0
#APP
# 194 "src/ata.c" 1
	movl %CS:36(%eax), %edx
# 0 "" 2
.LVL1111:
#NO_APP
.LBE8802:
.LBB8803:
	.loc 27 195 0
#APP
# 195 "src/ata.c" 1
	movb %CS:40(%eax), %cl
# 0 "" 2
#NO_APP
	movb	%cl, 3(%esp)
.LBE8803:
.LBB8804:
	.loc 27 196 0
#APP
# 196 "src/ata.c" 1
	movw %CS:-983040(%edx), %bx
# 0 "" 2
.LVL1112:
#NO_APP
.LBE8804:
	.loc 27 199 0
	movzwl	%bx, %ebp
	movl	%ebp, %eax
.LVL1113:
	call	await_not_bsy.14871
.LVL1114:
	.loc 27 200 0
	testl	%eax, %eax
.LVL1115:
	js	.L625
	.loc 27 203 0
	movb	5(%esi), %al
.LVL1116:
	cmpb	$1, 3(%esp)
	sbbl	%edi, %edi
	andl	$-16, %edi
	subl	$80, %edi
.LVL1117:
	andl	$79, %eax
	orl	%eax, %edi
.LVL1118:
	.loc 27 204 0
	leal	6(%ebx), %edx
.LBB8805:
.LBB8806:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
#NO_APP
	movb	%al, %cl
.LBE8806:
.LBE8805:
.LBB8807:
.LBB8808:
	.loc 2 83 0
	movl	%edi, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8808:
.LBE8807:
	.loc 27 206 0
	xorl	%edi, %ecx
	andb	$16, %cl
	je	.L628
	.loc 27 208 0
	movl	%ebp, %eax
	call	ndelay_await_not_bsy.14892
	.loc 27 209 0
	testl	%eax, %eax
.LVL1119:
	js	.L625
.L628:
	.loc 27 214 0
	movb	6(%esi), %cl
	movl	%ecx, %eax
.LVL1120:
	andl	$238, %eax
	cmpl	$36, %eax
	jne	.L629
.LBB8809:
.LBB8810:
	.loc 2 83 0
	movb	7(%esi), %al
	leal	1(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8810:
.LBE8809:
.LBB8811:
.LBB8812:
	movb	8(%esi), %al
	leal	2(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8812:
.LBE8811:
.LBB8813:
.LBB8814:
	movb	9(%esi), %al
	leal	3(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8814:
.LBE8813:
.LBB8815:
.LBB8816:
	movb	10(%esi), %al
	leal	4(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8816:
.LBE8815:
.LBB8817:
.LBB8818:
	movb	11(%esi), %al
	leal	5(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.L629:
.LBE8818:
.LBE8817:
.LBB8819:
.LBB8820:
	movb	(%esi), %al
	leal	1(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8820:
.LBE8819:
.LBB8821:
.LBB8822:
	movb	1(%esi), %al
	leal	2(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8822:
.LBE8821:
.LBB8823:
.LBB8824:
	movb	2(%esi), %al
	leal	3(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8824:
.LBE8823:
.LBB8825:
.LBB8826:
	movb	3(%esi), %al
	leal	4(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8826:
.LBE8825:
.LBB8827:
.LBB8828:
	movb	4(%esi), %al
	leal	5(%ebx), %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8828:
.LBE8827:
.LBB8829:
.LBB8830:
	leal	7(%ebx), %edx
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
.LVL1121:
.L625:
.LVL1122:
.LBE8830:
.LBE8829:
	.loc 27 229 0
	popl	%esi
.LCFI223:
	.cfi_def_cfa_offset 20
.LVL1123:
	popl	%ebx
.LVL1124:
	popl	%esi
	popl	%edi
.LVL1125:
	popl	%ebp
	ret
	.cfi_endproc
.LFE708:
	.size	send_cmd.15132, .-send_cmd.15132
	.section	.text.ata_readwrite.15917,"ax",@progbits
	.type	ata_readwrite.15917, @function
ata_readwrite.15917:
.LFB716:
	.loc 27 531 0
	.cfi_startproc
.LVL1126:
	pushl	%ebp
.LCFI224:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI225:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI226:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI227:
	.cfi_def_cfa_offset 20
	subl	$32, %esp
.LCFI228:
	.cfi_def_cfa_offset 52
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, 16(%esp)
	.loc 27 532 0
	movl	(%eax), %eax
.LVL1127:
	movl	4(%ebx), %edx
.LVL1128:
	movl	$12, %ecx
.LVL1129:
.LBB8831:
.LBB8832:
	.loc 16 149 0
	leal	20(%esp), %esi
.L632:
	decl	%ecx
.LVL1130:
	movb	$0, (%esi,%ecx)
	.loc 16 148 0
	testl	%ecx, %ecx
	jne	.L632
.LBE8832:
.LBE8831:
	.loc 27 539 0
	movl	16(%ebx), %esi
	cmpw	$255, %si
	ja	.L633
	movzwl	%si, %edi
	xorl	%ebp, %ebp
	addl	%eax, %edi
	adcl	%edx, %ebp
	cmpl	$0, %ebp
	ja	.L633
	cmpl	$268435455, %edi
	jbe	.L634
.L633:
	.loc 27 547 0
	cmpl	$1, 16(%esp)
	sbbl	%ecx, %ecx
.LVL1131:
	andl	$-16, %ecx
	addl	$52, %ecx
	movb	%cl, (%esp)
	.loc 27 540 0
	movl	%esi, %edi
	shrw	$8, %di
	movl	%edi, %ecx
	movb	%cl, 28(%esp)
	.loc 27 541 0
	movl	%eax, %edi
	movl	%edx, %ebp
	shrdl	$24, %ebp, %edi
	shrl	$24, %ebp
	movl	%edi, %ecx
	movb	%cl, 29(%esp)
	.loc 27 542 0
	movl	%edx, %edi
	movb	%dl, 30(%esp)
.LVL1132:
	.loc 27 543 0
	shrl	$8, %edi
	movl	%edi, %ecx
	movb	%cl, 31(%esp)
	.loc 27 547 0
	movb	(%esp), %cl
	movb	%cl, 26(%esp)
	movl	%eax, %edi
.LVL1133:
	andl	$16777215, %edi
	xorl	%ecx, %ecx
.LVL1134:
	movl	%edi, %eax
	movl	%ecx, %edx
	jmp	.L638
.LVL1135:
.L634:
	.loc 27 554 0
	cmpl	$1, 16(%esp)
	sbbl	%ecx, %ecx
.LVL1136:
	andl	$-16, %ecx
	addl	$48, %ecx
	movb	%cl, 26(%esp)
.LVL1137:
.L638:
	.loc 27 561 0
	movl	%esi, %ecx
	movb	%cl, 21(%esp)
	.loc 27 562 0
	movb	%al, 22(%esp)
	.loc 27 563 0
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	$8, %edi, %esi
	shrl	$8, %edi
	movl	%esi, %ecx
	movb	%cl, 23(%esp)
	.loc 27 564 0
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	$16, %edi, %esi
	shrl	$16, %edi
	movl	%esi, %ecx
	movb	%cl, 24(%esp)
	.loc 27 565 0
	shrdl	$24, %edx, %eax
.LVL1138:
	shrl	$24, %edx
	andl	$15, %eax
	orl	$64, %eax
	movb	%al, 25(%esp)
.LBB8833:
.LBB8834:
.LBB8844:
	.loc 27 491 0
	movl	12(%ebx), %ecx
.LVL1139:
.LBE8844:
.LBB8843:
	.loc 27 493 0
#APP
# 493 "src/ata.c" 1
	movl %CS:36(%ecx), %eax
# 0 "" 2
.LVL1140:
#NO_APP
.LBE8843:
.LBB8842:
	.loc 27 494 0
#APP
# 494 "src/ata.c" 1
	movw %CS:-983040(%eax), %si
# 0 "" 2
.LVL1141:
#NO_APP
.LBE8842:
.LBB8841:
	.loc 27 495 0
#APP
# 495 "src/ata.c" 1
	movw %CS:-983038(%eax), %di
# 0 "" 2
.LVL1142:
#NO_APP
.LBE8841:
	.loc 27 498 0
	addl	$2, %edi
.LVL1143:
.LBB8839:
.LBB8840:
	.loc 2 83 0
	movb	$10, %al
.LVL1144:
	movl	%edi, %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8840:
.LBE8839:
	.loc 27 500 0
	leal	20(%esp), %edx
	movl	%ecx, %eax
	call	send_cmd.15132
.LVL1145:
	movl	%eax, %ecx
.LVL1146:
	.loc 27 501 0
	testl	%eax, %eax
	jne	.L641
.LVL1147:
.LBB8837:
.LBB8838:
	.loc 27 235 0
	movzwl	%si, %eax
.LVL1148:
	call	ndelay_await_not_bsy.14892
.LVL1149:
	movl	%eax, %ecx
.LVL1150:
	.loc 27 236 0
	testl	%eax, %eax
	js	.L641
.LVL1151:
	.loc 27 239 0
	testb	$1, %al
	je	.L642
	movl	$-4, %ecx
.LVL1152:
	jmp	.L641
.LVL1153:
.L642:
	.loc 27 244 0
	andb	$8, %cl
.LVL1154:
	jne	.L643
	movl	$-5, %ecx
.LVL1155:
.L641:
.LBE8838:
.LBE8837:
.LBB8835:
.LBB8836:
	.loc 2 83 0
	movb	$8, %al
	movl	%edi, %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8836:
.LBE8835:
.LBE8834:
.LBE8833:
	.loc 27 572 0
	cmpl	$1, %ecx
	sbbl	%eax, %eax
	notl	%eax
	andl	$12, %eax
	.loc 27 575 0
	addl	$32, %esp
	popl	%ebx
.LVL1156:
	popl	%esi
.LVL1157:
	popl	%edi
	popl	%ebp
	ret
.LVL1158:
.L643:
.LBB8846:
.LBB8845:
	.loc 27 506 0
	movl	$512, %ecx
.LVL1159:
	movl	16(%esp), %edx
	movl	%ebx, %eax
	call	ata_pio_transfer.15388
	movl	%eax, %ecx
.LVL1160:
	jmp	.L641
.LBE8845:
.LBE8846:
	.cfi_endproc
.LFE716:
	.size	ata_readwrite.15917, .-ata_readwrite.15917
	.section	.text.process_ata_misc_op.15100,"ax",@progbits
	.type	process_ata_misc_op.15100, @function
process_ata_misc_op.15100:
.LFB707:
	.loc 27 147 0
	.cfi_startproc
.LVL1161:
	pushl	%ebp
.LCFI229:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI230:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI231:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI232:
	.cfi_def_cfa_offset 20
	subl	$20, %esp
.LCFI233:
	.cfi_def_cfa_offset 40
.LBB8922:
	.loc 27 151 0
	movl	12(%eax), %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LVL1162:
.LBE8922:
	.loc 27 153 0
	movb	18(%eax), %dl
	cmpb	$5, %dl
	ja	.L653
	cmpb	$4, %dl
	jae	.L651
	testb	%dl, %dl
	je	.L650
	jmp	.L649
.L653:
	cmpb	$7, %dl
	je	.L651
	cmpb	$16, %dl
	jne	.L649
	jmp	.L676
.L650:
.LBB8923:
.LBB8924:
.LBB8925:
	.loc 27 82 0
#APP
# 82 "src/ata.c" 1
	movl %CS:36(%ebx), %eax
# 0 "" 2
.LVL1163:
#NO_APP
.LBE8925:
.LBB8926:
	.loc 27 83 0
#APP
# 83 "src/ata.c" 1
	movb %CS:40(%ebx), %dl
# 0 "" 2
#NO_APP
	movb	%dl, 8(%esp)
.LBE8926:
.LBB8927:
	.loc 27 84 0
#APP
# 84 "src/ata.c" 1
	movw %CS:-983040(%eax), %si
# 0 "" 2
.LVL1164:
#NO_APP
.LBE8927:
.LBB8928:
	.loc 27 85 0
#APP
# 85 "src/ata.c" 1
	movw %CS:-983038(%eax), %ax
# 0 "" 2
.LVL1165:
#NO_APP
.LBE8928:
	.loc 27 89 0
	addl	$2, %eax
.LVL1166:
	movw	%ax, 18(%esp)
.LBB8929:
.LBB8930:
	.loc 2 83 0
	movb	$14, %al
	movw	18(%esp), %dx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8930:
.LBE8929:
	.loc 27 90 0
	movl	$5, %eax
	call	udelay.1732
.LBB8931:
.LBB8932:
	.loc 2 83 0
	movb	$10, %al
	movw	18(%esp), %dx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8932:
.LBE8931:
.LBB8933:
.LBB8934:
	.loc 7 127 0
#APP
# 127 "src/clock.c" 1
	movl %CS:cpu_khz, %edi
# 0 "" 2
.LVL1167:
#NO_APP
.LBE8934:
.LBB8935:
.LBB8936:
.LBB8937:
.LBB8938:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1168:
#NO_APP
.LBE8938:
.LBE8937:
	.loc 7 105 0
	sall	%edi
.LVL1169:
	xorl	%ebp, %ebp
.LVL1170:
	addl	%eax, %edi
.LVL1171:
	adcl	%edx, %ebp
.LVL1172:
	jmp	.L654
.LVL1173:
.L655:
.LBB8939:
.LBB8940:
.LBB8941:
.LBB8942:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
.LVL1174:
#NO_APP
.L654:
.LBE8942:
.LBE8941:
.LBE8940:
.LBE8939:
.LBB8943:
.LBB8944:
.LBB8945:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1175:
#NO_APP
.LBE8945:
.LBE8944:
.LBE8943:
	.loc 7 106 0
	subl	%edi, %eax
	sbbl	%ebp, %edx
.LVL1176:
	cmpl	$0, %edx
	jl	.L655
	jg	.L667
	cmpl	$0, %eax
	jbe	.L655
.L667:
.LBE8936:
.LBE8935:
.LBE8933:
	.loc 27 95 0
	movzwl	%si, %edi
.LVL1177:
	movl	%edi, %eax
	call	await_not_bsy.14871
	.loc 27 96 0
	testl	%eax, %eax
.LVL1178:
	js	.L657
	.loc 27 98 0
	cmpb	$0, 8(%esp)
	je	.L658
.LBB8946:
.LBB8947:
.LBB8948:
.LBB8949:
	.loc 7 134 0
#APP
# 134 "src/clock.c" 1
	movl %CS:cpu_khz, %ebp
# 0 "" 2
.LVL1179:
#NO_APP
.LBE8949:
.LBB8950:
.LBB8951:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1180:
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE8951:
.LBE8950:
	.loc 7 135 0
	movl	$32000, %ecx
	movl	%ebp, %eax
	mull	%ecx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	(%esp), %eax
	movl	4(%esp), %edx
	addl	%eax, 8(%esp)
	adcl	%edx, 12(%esp)
.LBE8948:
.LBE8947:
	.loc 27 102 0
	leal	6(%esi), %ebp
.LVL1181:
.L672:
.LBB8952:
.LBB8953:
	.loc 2 83 0
	movb	$-80, %al
	movl	%ebp, %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE8953:
.LBE8952:
	.loc 27 103 0
	movl	%edi, %eax
	call	ndelay_await_not_bsy.14892
	.loc 27 104 0
	testl	%eax, %eax
.LVL1182:
	js	.L657
.LBB8954:
.LBB8955:
	.loc 2 93 0
	movl	%ebp, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL1183:
#NO_APP
.LBE8955:
.LBE8954:
	.loc 27 106 0
	cmpb	$-80, %al
	je	.L659
.LBB8956:
.LBB8957:
.LBB8958:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1184:
#NO_APP
.LBE8958:
.LBE8957:
.LBE8956:
	.loc 27 109 0
	subl	8(%esp), %eax
	sbbl	12(%esp), %edx
	cmpl	$0, %edx
	jl	.L672
	jg	.L668
	cmpl	$0, %eax
	jbe	.L672
.L668:
.LBB8959:
.LBB8960:
	.loc 3 516 0
	pushl	$110
.LCFI234:
	.cfi_def_cfa_offset 44
	pushl	$__func__.14924
.LCFI235:
	.cfi_def_cfa_offset 48
	jmp	.L674
.LCFI236:
	.cfi_def_cfa_offset 40
.LVL1185:
.L658:
.LBE8960:
.LBE8959:
.LBE8946:
.LBB8961:
.LBB8962:
	.loc 2 83 0
	leal	6(%esi), %edx
	movb	$-96, %al
.LVL1186:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
.LVL1187:
#NO_APP
.L659:
.LBE8962:
.LBE8961:
.LBB8963:
	.loc 27 120 0
#APP
# 120 "src/ata.c" 1
	movb %CS:(%ebx), %al
# 0 "" 2
.LVL1188:
#NO_APP
.LBE8963:
	.loc 27 121 0
	cmpb	$2, %al
	jne	.L657
.LBB8964:
.LBB8965:
.LBB8966:
.LBB8967:
.LBB8968:
.LBB8969:
	.loc 7 134 0
#APP
# 134 "src/clock.c" 1
	movl %CS:cpu_khz, %ebx
# 0 "" 2
.LVL1189:
#NO_APP
.LBE8969:
.LBB8970:
.LBB8971:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1190:
#NO_APP
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
.LBE8971:
.LBE8970:
	.loc 7 135 0
	movl	$32000, %ecx
	movl	%ebx, %eax
	mull	%ecx
	movl	%eax, %ecx
.LVL1191:
	movl	%edx, %ebx
.LVL1192:
	addl	8(%esp), %ecx
.LVL1193:
	adcl	12(%esp), %ebx
.LVL1194:
.LBE8968:
.LBE8967:
.LBB8972:
.LBB8973:
.LBB8974:
	.loc 2 93 0
	leal	7(%esi), %edx
	movl	%edx, %esi
.LVL1195:
.L664:
	movl	%esi, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL1196:
#NO_APP
.LBE8974:
.LBE8973:
	.loc 27 36 0
	testb	$64, %al
	jne	.L657
.LBB8975:
.LBB8976:
.LBB8977:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1197:
#NO_APP
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
.LBE8977:
.LBE8976:
.LBE8975:
	.loc 27 38 0
	subl	%ecx, 8(%esp)
	sbbl	%ebx, 12(%esp)
	cmpl	$0, 12(%esp)
	jl	.L662
	jg	.L669
	cmpl	$0, 8(%esp)
	jbe	.L662
.L669:
.LBB8978:
.LBB8979:
	.loc 3 516 0
	pushl	$39
.LCFI237:
	.cfi_def_cfa_offset 44
	pushl	$__func__.14856
.LCFI238:
	.cfi_def_cfa_offset 48
.LVL1198:
.L674:
	pushl	$.LC10
.LCFI239:
	.cfi_def_cfa_offset 52
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
.LVL1199:
	addl	$12, %esp
.LCFI240:
	.cfi_def_cfa_offset 40
	jmp	.L657
.LVL1200:
.L662:
.LBE8979:
.LBE8978:
.LBB8980:
.LBB8981:
.LBB8982:
.LBB8983:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
	jmp	.L664
.LVL1201:
.L657:
.LBE8983:
.LBE8982:
.LBE8981:
.LBE8980:
.LBE8972:
.LBE8966:
.LBE8965:
.LBE8964:
.LBB8984:
.LBB8985:
	.loc 2 83 0
	movb	$8, %al
.LVL1202:
	movw	18(%esp), %dx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
	jmp	.L651
.LVL1203:
.L676:
.LBE8985:
.LBE8984:
.LBE8924:
.LBE8923:
.LBB8986:
.LBB8987:
.LBB8988:
	.loc 27 136 0
#APP
# 136 "src/ata.c" 1
	movl %CS:36(%ebx), %eax
# 0 "" 2
.LVL1204:
#NO_APP
.LBE8988:
.LBB8989:
	.loc 27 137 0
#APP
# 137 "src/ata.c" 1
	movw %CS:-983040(%eax), %dx
# 0 "" 2
.LVL1205:
#NO_APP
.LBE8989:
.LBB8990:
.LBB8991:
	.loc 2 93 0
	addl	$7, %edx
.LVL1206:
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL1207:
#NO_APP
.LBE8991:
.LBE8990:
	.loc 27 139 0
	movl	%eax, %edx
.LVL1208:
	andl	$192, %edx
	movl	$170, %eax
	cmpl	$64, %edx
	jne	.L665
	jmp	.L651
.LVL1209:
.L649:
.LBE8987:
.LBE8986:
	.loc 27 164 0
	movw	$0, 16(%eax)
	movl	$1, %eax
.LVL1210:
	.loc 27 165 0
	jmp	.L665
.LVL1211:
.L651:
	xorl	%eax, %eax
.LVL1212:
.L665:
	.loc 27 167 0
	addl	$20, %esp
	popl	%ebx
.LVL1213:
	popl	%esi
.LVL1214:
	popl	%edi
	popl	%ebp
.LVL1215:
	ret
	.cfi_endproc
.LFE707:
	.size	process_ata_misc_op.15100, .-process_ata_misc_op.15100
	.section	.text.i8042_wait_write.31345,"ax",@progbits
	.type	i8042_wait_write.31345, @function
i8042_wait_write.31345:
.LFB1420:
	.file 28 "src/ps2port.c"
	.loc 28 41 0
	.cfi_startproc
	pushl	%ebx
.LCFI241:
	.cfi_def_cfa_offset 8
	.loc 28 41 0
	xorl	%ebx, %ebx
	.cfi_offset 3, -8
.LVL1216:
.L680:
.LBB8992:
.LBB8993:
.LBB8994:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $100, %al
# 0 "" 2
.LVL1217:
#NO_APP
.LBE8994:
.LBE8993:
	.loc 28 46 0
	testb	$2, %al
	jne	.L678
	xorl	%eax, %eax
.LVL1218:
	jmp	.L679
.LVL1219:
.L678:
	.loc 28 48 0
	movl	$50, %eax
.LVL1220:
	call	udelay.1732
.LBE8992:
	.loc 28 44 0
	incl	%ebx
	cmpl	$10000, %ebx
	jne	.L680
.LBB8995:
.LBB8996:
	.loc 3 516 0
	pushl	$50
.LCFI242:
	.cfi_def_cfa_offset 12
	pushl	$__func__.31352
.LCFI243:
	.cfi_def_cfa_offset 16
	pushl	$.LC10
.LCFI244:
	.cfi_def_cfa_offset 20
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
	addl	$12, %esp
.LCFI245:
	.cfi_def_cfa_offset 8
	orl	$-1, %eax
.L679:
.LBE8996:
.LBE8995:
	.loc 28 52 0
	popl	%ebx
.LVL1221:
	ret
	.cfi_endproc
.LFE1420:
	.size	i8042_wait_write.31345, .-i8042_wait_write.31345
	.section	.text.i8042_command.31420,"ax",@progbits
	.type	i8042_command.31420, @function
i8042_command.31420:
.LFB1423:
	.loc 28 107 0
	.cfi_startproc
.LVL1222:
	pushl	%ebp
.LCFI246:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI247:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI248:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI249:
	.cfi_def_cfa_offset 20
	subl	$8, %esp
.LCFI250:
	.cfi_def_cfa_offset 28
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, %ebp
.LBB8997:
.LBB8998:
	.loc 28 75 0
	movl	%eax, %esi
.LVL1223:
	sarl	$8, %esi
	andl	$15, %esi
	.loc 28 76 0
	sarl	$12, %eax
.LVL1224:
	andl	$15, %eax
	movl	%eax, 4(%esp)
	.loc 28 79 0
	call	i8042_wait_write.31345
.LVL1225:
	movl	%eax, %edi
.LVL1226:
	.loc 28 80 0
	testl	%eax, %eax
	jne	.L684
.LVL1227:
.LBB8999:
.LBB9000:
	.loc 2 83 0
	movb	%bl, %al
.LVL1228:
#APP
# 83 "src/ioport.h" 1
	outb %al, $100
# 0 "" 2
#NO_APP
	xorl	%ebx, %ebx
.LVL1229:
	jmp	.L685
.L687:
.LBE9000:
.LBE8999:
	.loc 28 87 0
	call	i8042_wait_write.31345
	.loc 28 88 0
	testl	%eax, %eax
	jne	.L686
.LVL1230:
.LBB9001:
.LBB9002:
	.loc 2 83 0
	movb	(%ebp,%ebx), %al
.LVL1231:
#APP
# 83 "src/ioport.h" 1
	outb %al, $96
# 0 "" 2
#NO_APP
.LBE9002:
.LBE9001:
	.loc 28 86 0
	incl	%ebx
.L685:
	cmpl	4(%esp), %ebx
	jl	.L687
	xorl	%ebx, %ebx
.LVL1232:
	jmp	.L688
.LVL1233:
.L691:
	xorl	%edx, %edx
.L690:
.LBB9003:
.LBB9004:
.LBB9005:
.LBB9006:
.LBB9007:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $100, %al
# 0 "" 2
.LVL1234:
#NO_APP
.LBE9007:
.LBE9006:
	.loc 28 31 0
	testb	$1, %al
	jne	.L689
	.loc 28 33 0
	movl	$50, %eax
.LVL1235:
	movl	%edx, (%esp)
.LVL1236:
	call	udelay.1732
.LBE9005:
	.loc 28 29 0
	movl	(%esp), %edx
	incl	%edx
.LVL1237:
	cmpl	$10000, %edx
	jne	.L690
.LBB9008:
.LBB9009:
	.loc 3 516 0
	pushl	$35
.LCFI251:
	.cfi_def_cfa_offset 32
	pushl	$__func__.31334
.LCFI252:
	.cfi_def_cfa_offset 36
	pushl	$.LC10
.LCFI253:
	.cfi_def_cfa_offset 40
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
.LVL1238:
	addl	$12, %esp
.LCFI254:
	.cfi_def_cfa_offset 28
	orl	$-1, %eax
.LVL1239:
	jmp	.L686
.LVL1240:
.L689:
.LBE9009:
.LBE9008:
.LBE9004:
.LBE9003:
.LBB9010:
.LBB9011:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $96, %al
# 0 "" 2
.LVL1241:
#NO_APP
.LBE9011:
.LBE9010:
	.loc 28 98 0
	movb	%al, (%ebp,%ebx)
	.loc 28 94 0
	incl	%ebx
.L688:
	cmpl	%esi, %ebx
	jl	.L691
.LVL1242:
.L684:
	movl	%edi, %eax
.LVL1243:
.L686:
.LVL1244:
.LBE8998:
.LBE8997:
	.loc 28 113 0
	popl	%edi
.LCFI255:
	.cfi_def_cfa_offset 24
.LVL1245:
	popl	%ebp
.LCFI256:
	.cfi_def_cfa_offset 20
.LVL1246:
	popl	%ebx
.LVL1247:
	popl	%esi
.LVL1248:
	popl	%edi
	popl	%ebp
	ret
	.cfi_endproc
.LFE1423:
	.size	i8042_command.31420, .-i8042_command.31420
	.section	.rodata.str1.1
.LC11:
	.string	"Got ps2 nak (status=%x)\n"
.LC12:
	.string	"Discarding ps2 data %02x (status=%02x)\n"
	.section	.text.ps2_recvbyte.31457,"ax",@progbits
	.type	ps2_recvbyte.31457, @function
ps2_recvbyte.31457:
.LFB1427:
	.loc 28 153 0
	.cfi_startproc
.LVL1249:
	pushl	%edi
.LCFI257:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI258:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI259:
	.cfi_def_cfa_offset 16
	subl	$16, %esp
.LCFI260:
	.cfi_def_cfa_offset 32
	movl	%eax, %edi
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%edx, %ebx
	movl	%ecx, %esi
.LBB9012:
.LBB9013:
.LBB9014:
	.loc 7 134 0
#APP
# 134 "src/clock.c" 1
	movl %CS:cpu_khz, %ecx
# 0 "" 2
.LVL1250:
#NO_APP
.LBE9014:
.LBB9015:
.LBB9016:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1251:
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LVL1252:
.LBE9016:
.LBE9015:
	.loc 7 135 0
	movl	%ecx, %eax
	mull	%esi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	(%esp), %eax
	movl	4(%esp), %edx
	addl	%eax, 8(%esp)
	adcl	%edx, 12(%esp)
.L703:
.LBE9013:
.LBE9012:
.LBB9017:
.LBB9018:
.LBB9019:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $100, %al
# 0 "" 2
.LVL1253:
#NO_APP
.LBE9019:
.LBE9018:
	.loc 28 157 0
	movzbl	%al, %edx
	testb	$1, %dl
	je	.L695
.LBB9020:
.LBB9021:
.LBB9022:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $96, %al
# 0 "" 2
.LVL1254:
#NO_APP
.LBE9022:
.LBE9021:
	.loc 28 161 0
	movl	%edx, %ecx
.LVL1255:
	shrl	$5, %ecx
	andl	$1, %ecx
	cmpl	%edi, %ecx
	jne	.L696
	.loc 28 162 0
	testl	%ebx, %ebx
	jne	.L697
	.loc 28 163 0
	movzbl	%al, %eax
.LVL1256:
	jmp	.L698
.LVL1257:
.L697:
	.loc 28 164 0
	cmpb	$-6, %al
	je	.L699
	.loc 28 166 0
	cmpb	$-2, %al
	jne	.L696
	.loc 28 167 0
	pushl	%edx
.LCFI261:
	.cfi_def_cfa_offset 36
	pushl	$.LC11
.LCFI262:
	.cfi_def_cfa_offset 40
	.cfi_escape 0x2e,0x8
	call	__dprintf.1656
.LVL1258:
	popl	%eax
.LCFI263:
	.cfi_def_cfa_offset 36
	popl	%edx
.LCFI264:
	.cfi_def_cfa_offset 32
	movl	$254, %eax
	.loc 28 168 0
	jmp	.L698
.LVL1259:
.L696:
	.loc 28 173 0
	pushl	%edx
.LCFI265:
	.cfi_def_cfa_offset 36
	movzbl	%al, %eax
.LVL1260:
	pushl	%eax
.LCFI266:
	.cfi_def_cfa_offset 40
	pushl	$.LC12
.LCFI267:
	.cfi_def_cfa_offset 44
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
.LVL1261:
	addl	$12, %esp
.LCFI268:
	.cfi_def_cfa_offset 32
.LVL1262:
.L695:
.LBE9020:
.LBB9023:
.LBB9024:
.LBB9025:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1263:
#NO_APP
.LBE9025:
.LBE9024:
.LBE9023:
	.loc 28 176 0
	subl	8(%esp), %eax
	sbbl	12(%esp), %edx
	cmpl	$0, %edx
	jl	.L700
	jg	.L705
	cmpl	$0, %eax
	jbe	.L700
.L705:
	.loc 28 178 0
	orl	$-1, %eax
	cmpl	$100, %esi
	jle	.L698
.LBB9026:
.LBB9027:
	.loc 3 516 0
	pushl	$179
.LCFI269:
	.cfi_def_cfa_offset 36
	pushl	$__func__.31462
.LCFI270:
	.cfi_def_cfa_offset 40
	pushl	$.LC10
.LCFI271:
	.cfi_def_cfa_offset 44
	call	__dprintf.1656
.LVL1264:
	addl	$12, %esp
.LCFI272:
	.cfi_def_cfa_offset 32
	orl	$-1, %eax
	jmp	.L698
.LVL1265:
.L700:
.LBE9027:
.LBE9026:
.LBB9028:
.LBB9029:
.LBB9030:
.LBB9031:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE9031:
.LBE9030:
.LBE9029:
.LBE9028:
.LBE9017:
	.loc 28 183 0
	jmp	.L703
.LVL1266:
.L699:
	movl	$250, %eax
.LVL1267:
.L698:
	.loc 28 184 0
	addl	$16, %esp
	popl	%ebx
.LVL1268:
	popl	%esi
.LVL1269:
	popl	%edi
.LVL1270:
	ret
	.cfi_endproc
.LFE1427:
	.size	ps2_recvbyte.31457, .-ps2_recvbyte.31457
	.section	.text.ps2_sendbyte.31499,"ax",@progbits
	.type	ps2_sendbyte.31499, @function
ps2_sendbyte.31499:
.LFB1428:
	.loc 28 188 0
	.cfi_startproc
.LVL1271:
	pushl	%edi
.LCFI273:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI274:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI275:
	.cfi_def_cfa_offset 16
	subl	$4, %esp
.LCFI276:
	.cfi_def_cfa_offset 20
	movl	%eax, %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%ecx, %esi
	movl	%edx, %edi
	.loc 28 191 0
	testl	%eax, %eax
	je	.L707
.LVL1272:
	movb	%dl, 3(%esp)
.LVL1273:
.LBB9032:
.LBB9033:
	.loc 28 128 0
	leal	3(%esp), %edx
	movl	$4308, %eax
.LVL1274:
	call	i8042_command.31420
.LBE9033:
.LBE9032:
	.loc 28 195 0
	testl	%eax, %eax
.LVL1275:
	jne	.L708
	jmp	.L709
.LVL1276:
.L707:
.LBB9034:
.LBB9035:
	.loc 28 119 0
	call	i8042_wait_write.31345
.LVL1277:
	.loc 28 120 0
	testl	%eax, %eax
.LVL1278:
	jne	.L708
.LBB9036:
.LBB9037:
	.loc 2 83 0
	movl	%edi, %eax
.LVL1279:
#APP
# 83 "src/ioport.h" 1
	outb %al, $96
# 0 "" 2
.LVL1280:
#NO_APP
.L709:
.LBE9037:
.LBE9036:
.LBE9035:
.LBE9034:
	.loc 28 199 0
	movl	%esi, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
.LVL1281:
	call	ps2_recvbyte.31457
	.loc 28 200 0
	testl	%eax, %eax
.LVL1282:
	js	.L708
	.loc 28 202 0
	cmpl	$250, %eax
	sete	%al
.LVL1283:
	movzbl	%al, %eax
.LVL1284:
	decl	%eax
.L708:
.LVL1285:
	.loc 28 206 0
	popl	%ecx
.LCFI277:
	.cfi_def_cfa_offset 16
	popl	%ebx
.LVL1286:
	popl	%esi
.LVL1287:
	popl	%edi
.LVL1288:
	ret
	.cfi_endproc
.LFE1428:
	.size	ps2_sendbyte.31499, .-ps2_sendbyte.31499
	.section	.text.__ps2_command.31521,"ax",@progbits
	.type	__ps2_command.31521, @function
__ps2_command.31521:
.LFB1429:
	.loc 28 210 0
	.cfi_startproc
.LVL1289:
	pushl	%ebp
.LCFI278:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI279:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI280:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI281:
	.cfi_def_cfa_offset 20
	subl	$16, %esp
.LCFI282:
	.cfi_def_cfa_offset 36
	movl	%eax, %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, %edi
	movl	%ecx, %ebx
	.loc 28 212 0
	movl	%edx, %eax
.LVL1290:
	sarl	$8, %eax
	andl	$15, %eax
	movl	%eax, 8(%esp)
	.loc 28 213 0
	movl	%edx, %eax
	sarl	$12, %eax
	andl	$15, %eax
	movl	%eax, 4(%esp)
.LBB9038:
.LBB9039:
	.loc 10 253 0
	movl	$64, %eax
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9040:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %ax
# 0 "" 2
.LVL1291:
#NO_APP
.LBE9040:
.LBE9039:
.LBE9038:
	.loc 28 216 0
#APP
# 216 "src/ps2port.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9041:
#APP
# 216 "src/ps2port.c" 1
	movb %ES:289, %al
# 0 "" 2
.LVL1292:
#NO_APP
.LBE9041:
	movb	%al, 15(%esp)
.LVL1293:
	.loc 28 218 0
	andl	$-52, %eax
.LVL1294:
	orl	$48, %eax
	movb	%al, 14(%esp)
.LVL1295:
	.loc 28 220 0
	leal	14(%esp), %edx
.LVL1296:
	movl	$4192, %eax
	call	i8042_command.31420
.LVL1297:
	movl	%eax, %ecx
.LVL1298:
	.loc 28 221 0
	testl	%eax, %eax
	jne	.L713
.LVL1299:
.LBB9042:
.LBB9043:
.LBB9044:
.LBB9045:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE9045:
.LBE9044:
.LBE9043:
.LBE9042:
	.loc 28 228 0
	testl	%esi, %esi
	je	.L714
	.loc 28 229 0
	andb	$-33, 14(%esp)
.LVL1300:
	jmp	.L715
.LVL1301:
.L714:
	.loc 28 231 0
	andb	$-17, 14(%esp)
.LVL1302:
.L715:
	.loc 28 232 0
	leal	14(%esp), %edx
	movl	$4192, %eax
.LVL1303:
	call	i8042_command.31420
.LVL1304:
	movl	%eax, %ecx
.LVL1305:
	.loc 28 233 0
	testl	%eax, %eax
	jne	.L716
.LVL1306:
	.loc 28 236 0
	cmpl	$767, %edi
	jne	.L717
	.loc 28 240 0
	movw	$1000, %cx
	movl	$255, %edx
	movl	%esi, %eax
.LVL1307:
	call	ps2_sendbyte.31499
	.loc 28 241 0
	movl	%eax, %ecx
.LVL1308:
	testl	%eax, %eax
	jne	.L716
	.loc 28 245 0
	movw	$4000, %cx
	xorl	%edx, %edx
	movl	%esi, %eax
.LVL1309:
	call	ps2_recvbyte.31457
	movl	%eax, %ecx
.LVL1310:
	.loc 28 246 0
	testl	%eax, %eax
	js	.L716
.LVL1311:
	.loc 28 248 0
	movb	%al, (%ebx)
	.loc 28 249 0
	movl	$100, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
.LVL1312:
	call	ps2_recvbyte.31457
	.loc 28 253 0
	movl	%eax, %edx
.LVL1313:
	notl	%edx
	sarl	$31, %edx
	andl	%edx, %eax
	movb	%al, 1(%ebx)
	jmp	.L733
.LVL1314:
.L717:
	.loc 28 254 0
	cmpl	$754, %edi
	jne	.L720
	.loc 28 258 0
	movl	$200, %ecx
	movl	$242, %edx
	movl	%esi, %eax
.LVL1315:
	call	ps2_sendbyte.31499
	.loc 28 259 0
	movl	%eax, %ecx
.LVL1316:
	testl	%eax, %eax
	jne	.L716
	.loc 28 263 0
	movw	$500, %cx
	xorl	%edx, %edx
	movl	%esi, %eax
.LVL1317:
	call	ps2_recvbyte.31457
	movl	%eax, %ecx
.LVL1318:
	.loc 28 264 0
	testl	%eax, %eax
	js	.L716
.LVL1319:
	.loc 28 266 0
	movb	%al, (%ebx)
	.loc 28 267 0
	leal	-171(%eax), %eax
.LVL1320:
	cmpl	$1, %eax
	jbe	.L722
	cmpl	$43, %ecx
	je	.L722
	cmpl	$96, %ecx
	je	.L722
	cmpl	$93, %ecx
	je	.L722
	cmpl	$71, %ecx
	jne	.L723
.L722:
	.loc 28 270 0
	movl	$500, %ecx
.LVL1321:
	xorl	%edx, %edx
	movl	%esi, %eax
	call	ps2_recvbyte.31457
	movl	%eax, %ecx
.LVL1322:
	.loc 28 271 0
	testl	%eax, %eax
	js	.L716
.LVL1323:
	.loc 28 273 0
	movb	%al, 1(%ebx)
	jmp	.L733
.LVL1324:
.L723:
	.loc 28 275 0
	movb	$0, 1(%ebx)
.LVL1325:
.L733:
	xorl	%ecx, %ecx
	jmp	.L716
.LVL1326:
.L720:
.LBB9046:
	.loc 28 279 0
	movl	%edi, %eax
.LVL1327:
	movzbl	%al, %edx
.LVL1328:
	movl	$200, %ecx
.LVL1329:
	movl	%esi, %eax
	call	ps2_sendbyte.31499
.LVL1330:
	movl	%eax, %ebp
.LVL1331:
	.loc 28 280 0
	xorl	%edi, %edi
.LVL1332:
	testl	%eax, %eax
	je	.L725
.LVL1333:
	jmp	.L724
.LVL1334:
.L726:
	.loc 28 286 0
	movzbl	(%ebx,%edi), %edx
	movl	$200, %ecx
	movl	%esi, %eax
.LVL1335:
	call	ps2_sendbyte.31499
	movl	%eax, %ecx
.LVL1336:
	.loc 28 287 0
	testl	%eax, %eax
	jne	.L716
.LVL1337:
	.loc 28 285 0
	incl	%edi
.LVL1338:
.L725:
	cmpl	4(%esp), %edi
	jl	.L726
	xorl	%edi, %edi
.LVL1339:
	jmp	.L727
.L728:
	.loc 28 293 0
	movl	$500, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
.LVL1340:
	call	ps2_recvbyte.31457
	movl	%eax, %ecx
.LVL1341:
	.loc 28 294 0
	testl	%eax, %eax
	js	.L716
.LVL1342:
	.loc 28 296 0
	movb	%al, (%ebx,%edi)
	.loc 28 292 0
	incl	%edi
.LVL1343:
.L727:
	cmpl	8(%esp), %edi
	jl	.L728
.L724:
	movl	%ebp, %ecx
.LVL1344:
.L716:
.LBE9046:
	.loc 28 304 0
	leal	15(%esp), %edx
	movl	$4192, %eax
	movl	%ecx, (%esp)
.LVL1345:
	call	i8042_command.31420
	.loc 28 305 0
	testl	%eax, %eax
.LVL1346:
	movl	(%esp), %ecx
	je	.L713
	movl	%eax, %ecx
.LVL1347:
.L713:
	.loc 28 309 0
	movl	%ecx, %eax
.LVL1348:
	addl	$16, %esp
	popl	%ebx
.LVL1349:
	popl	%esi
.LVL1350:
	popl	%edi
.LVL1351:
	popl	%ebp
	ret
	.cfi_endproc
.LFE1429:
	.size	__ps2_command.31521, .-__ps2_command.31521
	.section	.text.mouse_command.17861,"ax",@progbits
	.type	mouse_command.17861, @function
mouse_command.17861:
.LFB809:
	.loc 9 27 0
	.cfi_startproc
.LVL1352:
.LBB9047:
.LBB9048:
	.loc 22 374 0
#APP
# 374 "src/usb-hid.c" 1
	movl %CS:mouse_pipe, %ecx
# 0 "" 2
.LVL1353:
#NO_APP
.LBE9048:
.LBE9047:
	.loc 9 28 0
	testl	%ecx, %ecx
	je	.L735
.LBB9049:
.LBB9050:
	.loc 22 384 0
	cmpl	$754, %eax
	je	.L738
	jg	.L740
	cmpl	$230, %eax
	jl	.L736
	cmpl	$231, %eax
	jle	.L744
	subl	$244, %eax
.LVL1354:
	cmpl	$1, %eax
	ja	.L736
	jmp	.L744
.LVL1355:
.L740:
	cmpl	$1001, %eax
	je	.L739
	jg	.L741
	cmpl	$767, %eax
	jne	.L736
	jmp	.L738
.L741:
	cmpl	$4328, %eax
	je	.L744
	cmpl	$4339, %eax
	je	.L744
.L736:
	orl	$-1, %eax
.LVL1356:
	ret
.LVL1357:
.L738:
	.loc 22 397 0
	movb	$-86, (%edx)
	.loc 22 398 0
	movb	$0, 1(%edx)
	jmp	.L744
.L739:
	.loc 22 402 0
	movb	$0, (%edx)
	.loc 22 403 0
	movb	$4, 1(%edx)
	.loc 22 404 0
	movb	$100, 2(%edx)
.L744:
	xorl	%eax, %eax
.LVL1358:
	ret
.LVL1359:
.L735:
.LBE9050:
.LBE9049:
.LBB9051:
.LBB9052:
.LBB9053:
	.loc 28 315 0
	movl	%edx, %ecx
.LVL1360:
	movl	%eax, %edx
.LVL1361:
	movl	$1, %eax
.LVL1362:
	jmp	__ps2_command.31521
.LBE9053:
.LBE9052:
.LBE9051:
	.cfi_endproc
.LFE809:
	.size	mouse_command.17861, .-mouse_command.17861
	.section	.text.handle_15c2.1705,"ax",@progbits
	.type	handle_15c2.1705, @function
handle_15c2.1705:
.LFB827:
	.loc 9 272 0
	.cfi_startproc
.LVL1363:
	pushl	%edi
.LCFI283:
	.cfi_def_cfa_offset 8
	pushl	%esi
.LCFI284:
	.cfi_def_cfa_offset 12
	pushl	%ebx
.LCFI285:
	.cfi_def_cfa_offset 16
	subl	$8, %esp
.LCFI286:
	.cfi_def_cfa_offset 24
	movl	%eax, %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.loc 9 280 0
	movb	28(%eax), %al
.LVL1364:
	cmpb	$3, %al
	je	.L750
	ja	.L755
	cmpb	$1, %al
	je	.L797
	movb	17(%ebx), %al
	ja	.L749
	jmp	.L802
.L755:
	cmpb	$5, %al
	je	.L752
	jb	.L751
	cmpb	$6, %al
	je	.L753
	cmpb	$7, %al
	jne	.L782
	jmp	.L803
.L802:
.LBB9054:
.LBB9055:
	.loc 9 96 0
	testb	%al, %al
	je	.L757
	decb	%al
	jne	.L782
	jmp	.L804
.L757:
.LBB9056:
.LBB9057:
.LBB9058:
.LBB9059:
	.loc 10 253 0
	movl	$64, %eax
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9060:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %dx
# 0 "" 2
.LVL1365:
#NO_APP
.LBE9060:
.LBE9059:
.LBE9058:
.LBB9061:
.LBB9062:
	.loc 9 43 0
#APP
# 43 "src/mouse.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9063:
#APP
# 43 "src/mouse.c" 1
	movb %ES:289, %al
# 0 "" 2
.LVL1366:
#NO_APP
.LBE9063:
	.loc 9 44 0
	orl	$32, %eax
.LVL1367:
	.loc 9 45 0
	andl	$-3, %eax
.LVL1368:
.LBB9064:
	.loc 9 46 0
#APP
# 46 "src/mouse.c" 1
	movw %dx, %ES
# 0 "" 2
# 46 "src/mouse.c" 1
	movb %al, %ES:289
# 0 "" 2
#NO_APP
.LBE9064:
	.loc 9 48 0
	xorl	%edx, %edx
.LVL1369:
	movl	$245, %eax
.LVL1370:
	jmp	.L791
.L804:
.LBE9062:
.LBE9061:
.LBE9057:
.LBE9056:
.LBB9065:
.LBB9066:
.LBB9067:
.LBB9068:
	.loc 10 253 0
	movl	$64, %eax
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9069:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %dx
# 0 "" 2
.LVL1371:
#NO_APP
.LBE9069:
.LBE9068:
.LBE9067:
	.loc 9 68 0
#APP
# 68 "src/mouse.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9070:
#APP
# 68 "src/mouse.c" 1
	movb %ES:39, %al
# 0 "" 2
.LVL1372:
#NO_APP
.LBE9070:
	.loc 9 69 0
	testb	%al, %al
	js	.L761
.LBB9071:
.LBB9072:
.LBB9073:
.LBB9074:
	.loc 14 90 0
	movb	$5, 29(%ebx)
	jmp	.L785
.L761:
.LBE9074:
.LBE9073:
.LBE9072:
.LBE9071:
	.loc 9 74 0
#APP
# 74 "src/mouse.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9075:
#APP
# 74 "src/mouse.c" 1
	movb %ES:289, %al
# 0 "" 2
.LVL1373:
#NO_APP
.LBE9075:
	.loc 9 75 0
	andl	$-33, %eax
.LVL1374:
	.loc 9 76 0
	orl	$2, %eax
.LVL1375:
.LBB9076:
	.loc 9 77 0
#APP
# 77 "src/mouse.c" 1
	movw %dx, %ES
# 0 "" 2
# 77 "src/mouse.c" 1
	movb %al, %ES:289
# 0 "" 2
#NO_APP
.LBE9076:
	.loc 9 79 0
	xorl	%edx, %edx
.LVL1376:
	movl	$244, %eax
.LVL1377:
	jmp	.L791
.L749:
.LBE9066:
.LBE9065:
.LBE9055:
.LBE9054:
.LBB9077:
.LBB9078:
	.loc 9 123 0
	cmpb	$6, %al
	ja	.L789
.LBB9079:
	.loc 9 127 0
	movzbl	%al, %eax
#APP
# 127 "src/mouse.c" 1
	movb %CS:sample_rates.18029(%eax), %al
# 0 "" 2
.LVL1378:
#NO_APP
.LBE9079:
	movb	%al, 7(%esp)
.LVL1379:
	.loc 9 128 0
	leal	7(%esp), %edx
	movl	$4339, %eax
.LVL1380:
	jmp	.L791
.LVL1381:
.L750:
.LBE9078:
.LBE9077:
.LBB9080:
.LBB9081:
	.loc 9 144 0
	movb	17(%ebx), %al
	cmpb	$3, %al
	jbe	.L766
.L789:
.LBB9082:
.LBB9083:
.LBB9084:
.LBB9085:
	.loc 14 90 0
	movb	$2, 29(%ebx)
	jmp	.L785
.L766:
.LBE9085:
.LBE9084:
.LBE9083:
.LBE9082:
	.loc 9 148 0
	movb	%al, 7(%esp)
.LVL1382:
	.loc 9 149 0
	leal	7(%esp), %edx
	movl	$4328, %eax
	jmp	.L791
.LVL1383:
.L751:
.LBE9081:
.LBE9080:
.LBB9086:
.LBB9087:
	.loc 9 161 0
	leal	4(%esp), %edx
	movl	$754, %eax
	call	mouse_command.17861
	.loc 9 162 0
	testl	%eax, %eax
.LVL1384:
	jne	.L788
	.loc 9 166 0
	movb	4(%esp), %al
.LVL1385:
	jmp	.L787
.L752:
.LBE9087:
.LBE9086:
.LBB9088:
.LBB9089:
	.loc 9 174 0
	cmpb	$3, 17(%ebx)
	je	.L769
.LBB9090:
.LBB9091:
.LBB9092:
.LBB9093:
	.loc 14 90 0
	movb	$3, 29(%ebx)
	jmp	.L785
.L769:
.LBE9093:
.LBE9092:
.LBE9091:
.LBE9090:
.LBB9094:
.LBB9095:
	.loc 10 253 0
	movl	$64, %eax
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9096:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %ax
# 0 "" 2
.LVL1386:
#NO_APP
.LBE9096:
.LBE9095:
.LBE9094:
.LBB9097:
	.loc 9 179 0
#APP
# 179 "src/mouse.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 179 "src/mouse.c" 1
	movb %dl, %ES:38
# 0 "" 2
#NO_APP
.LBE9097:
.LBB9098:
	.loc 9 180 0
	movb	17(%ebx), %dl
.LVL1387:
#APP
# 180 "src/mouse.c" 1
	movw %ax, %ES
# 0 "" 2
# 180 "src/mouse.c" 1
	movb %dl, %ES:39
# 0 "" 2
#NO_APP
.L797:
.LBE9098:
.LBB9099:
.LBB9100:
	.loc 9 108 0
	leal	4(%esp), %edx
.LVL1388:
	movl	$767, %eax
.LVL1389:
	call	mouse_command.17861
	.loc 9 109 0
	testl	%eax, %eax
.LVL1390:
	jne	.L788
	.loc 9 113 0
	movb	4(%esp), %al
.LVL1391:
	movb	%al, 16(%ebx)
	.loc 9 114 0
	movb	5(%esp), %al
.L787:
	movb	%al, 17(%ebx)
	jmp	.L786
.L753:
.LBE9100:
.LBE9099:
.LBE9089:
.LBE9088:
.LBB9101:
.LBB9102:
	.loc 9 234 0
	movb	17(%ebx), %al
	cmpb	$1, %al
	je	.L773
	jb	.L772
	cmpb	$2, %al
	jne	.L782
	jmp	.L805
.L772:
.LBB9103:
.LBB9104:
	.loc 9 191 0
	leal	4(%esp), %edx
	movl	$1001, %eax
	call	mouse_command.17861
	.loc 9 192 0
	testl	%eax, %eax
.LVL1392:
	jne	.L788
	.loc 9 196 0
	movb	4(%esp), %al
.LVL1393:
	movb	%al, 16(%ebx)
	.loc 9 197 0
	movb	5(%esp), %al
	movb	%al, 24(%ebx)
	.loc 9 198 0
	movb	6(%esp), %al
	movb	%al, 20(%ebx)
	jmp	.L786
.L773:
.LBE9104:
.LBE9103:
.LBB9105:
.LBB9106:
	.loc 9 206 0
	xorl	%edx, %edx
	movl	$230, %eax
	jmp	.L791
.L805:
.LBE9106:
.LBE9105:
.LBB9107:
.LBB9108:
	.loc 9 217 0
	xorl	%edx, %edx
	movl	$231, %eax
.LVL1394:
.L791:
	call	mouse_command.17861
	.loc 9 218 0
	testl	%eax, %eax
.LVL1395:
	je	.L786
.LVL1396:
.L788:
.LBB9109:
.LBB9110:
.LBB9111:
.LBB9112:
	.loc 14 90 0
	movb	$4, 29(%ebx)
	jmp	.L785
.LVL1397:
.L803:
.LBE9112:
.LBE9111:
.LBE9110:
.LBE9109:
.LBE9108:
.LBE9107:
.LBE9102:
.LBE9101:
.LBB9113:
.LBB9114:
.LBB9115:
	.loc 9 246 0
	movzwl	2(%ebx), %eax
	sall	$16, %eax
	movzwl	16(%ebx), %edi
.LBE9115:
.LBB9116:
.LBB9117:
	.loc 10 253 0
	movl	$64, %edx
#APP
# 253 "src/biosvar.h" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9118:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %si
# 0 "" 2
.LVL1398:
#NO_APP
.LBE9118:
.LBE9117:
.LBE9116:
	.loc 9 248 0
#APP
# 248 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB9119:
#APP
# 248 "src/mouse.c" 1
	movb %ES:39, %cl
# 0 "" 2
.LVL1399:
#NO_APP
.LBE9119:
	.loc 9 249 0
	orl	%eax, %edi
	jne	.L778
	.loc 9 251 0
	testb	%cl, %cl
	jns	.L779
	.loc 9 252 0
	andl	$127, %ecx
.LVL1400:
.LBB9120:
.LBB9121:
	.loc 9 43 0
#APP
# 43 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB9122:
#APP
# 43 "src/mouse.c" 1
	movb %ES:289(%edi), %al
# 0 "" 2
.LVL1401:
#NO_APP
.LBE9122:
	.loc 9 44 0
	orl	$32, %eax
.LVL1402:
	.loc 9 45 0
	andl	$-3, %eax
.LVL1403:
.LBB9123:
	.loc 9 46 0
#APP
# 46 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
# 46 "src/mouse.c" 1
	movb %al, %ES:289(%edi)
# 0 "" 2
#NO_APP
.LBE9123:
	.loc 9 48 0
	xorb	%dl, %dl
	movl	$245, %eax
.LVL1404:
	movb	%cl, (%esp)
.LVL1405:
	call	mouse_command.17861
	movb	(%esp), %cl
	jmp	.L779
.LVL1406:
.L778:
.LBE9121:
.LBE9120:
	.loc 9 257 0
	orl	$-128, %ecx
.LVL1407:
.L779:
.LBB9124:
	.loc 9 259 0
#APP
# 259 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
# 259 "src/mouse.c" 1
	movb %cl, %ES:39
# 0 "" 2
#NO_APP
.LBE9124:
.LBB9125:
	.loc 9 260 0
#APP
# 260 "src/mouse.c" 1
	movw %si, %ES
# 0 "" 2
# 260 "src/mouse.c" 1
	movl %edi, %ES:34
# 0 "" 2
.LVL1408:
#NO_APP
.L786:
.LBE9125:
.LBB9126:
.LBB9127:
	.loc 14 77 0
	movb	$0, 29(%ebx)
.LBB9128:
.LBB9129:
	.loc 14 62 0
	andw	$-2, 36(%ebx)
.LBE9129:
.LBE9128:
.LBE9127:
.LBE9126:
.LBE9114:
.LBE9113:
	.loc 9 288 0
	jmp	.L780
.LVL1409:
.L782:
.LBB9130:
.LBB9131:
.LBB9132:
.LBB9133:
.LBB9134:
.LBB9135:
	.loc 14 90 0
	movb	$1, 29(%ebx)
.LVL1410:
.L785:
.LBB9136:
.LBB9137:
	.loc 14 60 0
	orw	$1, 36(%ebx)
.LVL1411:
.L780:
.LBE9137:
.LBE9136:
.LBE9135:
.LBE9134:
.LBE9133:
.LBE9132:
.LBE9131:
.LBE9130:
	.loc 9 291 0
	popl	%ebx
.LCFI287:
	.cfi_def_cfa_offset 20
.LVL1412:
	popl	%esi
.LCFI288:
	.cfi_def_cfa_offset 16
.LVL1413:
	popl	%ebx
	popl	%esi
	popl	%edi
	ret
	.cfi_endproc
.LFE827:
	.size	handle_15c2.1705, .-handle_15c2.1705
	.section	.text.handle_15,"ax",@progbits
.globl handle_15
	.type	handle_15, @function
handle_15:
.LFB2954:
	.file 29 "src/system.c"
	.loc 29 344 0
	.cfi_startproc
.LVL1414:
	pushl	%ebp
.LCFI289:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI290:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI291:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI292:
	.cfi_def_cfa_offset 20
	subl	$32, %esp
.LCFI293:
	.cfi_def_cfa_offset 52
	movl	%eax, %edx
	.loc 29 346 0
	movb	29(%eax), %al
.LVL1415:
	cmpb	$-121, %al
	je	.L815
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	ja	.L823
	cmpb	$83, %al
	je	.L811
	ja	.L824
	cmpb	$79, %al
	je	.L860
	cmpb	$82, %al
	je	.L863
	cmpb	$36, %al
	jne	.L807
	jmp	.L872
.L824:
	cmpb	$-125, %al
	je	.L813
	cmpb	$-122, %al
	jne	.L807
	jmp	.L873
.L823:
	cmpb	$-111, %al
	ja	.L825
	cmpb	$-112, %al
	jae	.L854
	cmpb	$-120, %al
	je	.L816
	cmpb	$-119, %al
	jne	.L807
	jmp	.L874
.L825:
	cmpb	$-63, %al
	je	.L820
	ja	.L826
	cmpb	$-64, %al
	jne	.L807
	jmp	.L875
.L826:
	cmpb	$-62, %al
	je	.L821
	cmpb	$-24, %al
	jne	.L807
	jmp	.L876
.L872:
.LBB9138:
.LBB9139:
	.loc 29 67 0
	movb	28(%edx), %al
	cmpb	$1, %al
	je	.L829
	jb	.L828
	cmpb	$2, %al
	je	.L830
	cmpb	$3, %al
	jne	.L807
	jmp	.L877
.L828:
.LBB9140:
.LBB9141:
.LBB9142:
.LBB9143:
.LBB9144:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $146, %al
# 0 "" 2
#NO_APP
	jmp	.L841
.L829:
.LBE9144:
.LBE9143:
.LBE9142:
.LBE9141:
.LBE9140:
.LBB9145:
.LBB9146:
.LBB9147:
.LBB9148:
.LBB9149:
#APP
# 93 "src/ioport.h" 1
	inb $146, %al
# 0 "" 2
.LVL1416:
#NO_APP
.L864:
.LBE9149:
.LBE9148:
.LBB9150:
.LBB9151:
	.loc 2 83 0
	orl	$2, %eax
.LVL1417:
.L862:
#APP
# 83 "src/ioport.h" 1
	outb %al, $146
# 0 "" 2
.LVL1418:
#NO_APP
.L863:
.LBE9151:
.LBE9150:
.LBE9147:
.LBE9146:
.LBB9152:
.LBB9153:
	.loc 14 77 0
	movb	$0, 29(%edx)
	jmp	.L836
.LVL1419:
.L830:
.LBE9153:
.LBE9152:
.LBE9145:
.LBB9154:
.LBB9155:
.LBB9156:
.LBB9157:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $146, %al
# 0 "" 2
.LVL1420:
#NO_APP
.LBE9157:
.LBE9156:
	.loc 29 47 0
	shrl	%eax
.LVL1421:
	andl	$1, %eax
	movb	%al, 28(%edx)
	jmp	.L863
.L877:
.LBE9155:
.LBE9154:
.LBB9158:
.LBB9159:
	.loc 29 54 0
	movw	$3, 16(%edx)
	jmp	.L863
.L811:
.LBE9159:
.LBE9158:
.LBE9139:
.LBE9138:
	.loc 29 350 0
	movl	%edx, %eax
	call	handle_1553.1762
.LVL1422:
	jmp	.L854
.LVL1423:
.L813:
.LBB9160:
.LBB9161:
	.loc 7 595 0
	movb	28(%edx), %al
	testb	%al, %al
	je	.L833
	decb	%al
	jne	.L857
	jmp	.L878
.L833:
.LBB9192:
.LBB9193:
	.loc 7 569 0
	movw	16(%edx), %si
	movw	2(%edx), %di
	movw	24(%edx), %ax
	movw	%ax, (%esp)
	movw	20(%edx), %cx
	movw	%cx, 20(%esp)
.LBB9195:
.LBB9196:
	.loc 7 525 0
	movl	$64, %ecx
#APP
# 525 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9201:
#APP
# 525 "src/clock.c" 1
	movb %ES:160, %al
# 0 "" 2
.LVL1424:
#NO_APP
.LBE9201:
	andl	$1, %eax
.LVL1425:
	jne	.L807
.LBB9200:
	.loc 7 529 0
#APP
# 529 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	$1, %ebp
	movl	%ebp, %ebx
#APP
# 529 "src/clock.c" 1
	movb %bl, %ES:160(%eax)
# 0 "" 2
#NO_APP
.LBE9200:
.LBB9198:
.LBB9199:
	.loc 7 530 0
	sall	$16, %edi
	movzwl	%si, %esi
	orl	%edi, %esi
.LBE9199:
#APP
# 530 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
# 530 "src/clock.c" 1
	movl %esi, %ES:152(%eax)
# 0 "" 2
#NO_APP
.LBE9198:
.LBB9197:
	.loc 7 531 0
#APP
# 531 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBE9197:
.LBE9196:
.LBE9195:
	.loc 7 569 0
	movl	(%esp), %ebx
	sall	$16, %ebx
	movzwl	20(%esp), %esi
	orl	%esi, %ebx
.LBB9194:
.LBB9220:
.LBB9202:
	.loc 7 531 0
#APP
# 531 "src/clock.c" 1
	movl %ebx, %ES:156(%eax)
# 0 "" 2
#NO_APP
.LBE9202:
.LBB9203:
.LBB9204:
.LBB9205:
.LBB9206:
	.loc 10 253 0
#APP
# 253 "src/biosvar.h" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9207:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14(%eax), %bx
# 0 "" 2
.LVL1426:
#NO_APP
.LBE9207:
.LBE9206:
.LBE9205:
	.loc 7 500 0
#APP
# 500 "src/clock.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB9208:
#APP
# 500 "src/clock.c" 1
	movl %ES:298(%eax), %ecx
# 0 "" 2
.LVL1427:
#NO_APP
.LBE9208:
.LBB9209:
	.loc 7 501 0
	leal	1(%ecx), %esi
.LVL1428:
#APP
# 501 "src/clock.c" 1
	movw %bx, %ES
# 0 "" 2
# 501 "src/clock.c" 1
	movl %esi, %ES:298(%eax)
# 0 "" 2
#NO_APP
.LBE9209:
	.loc 7 502 0
	testl	%ecx, %ecx
	jne	.L836
.LBB9210:
.LBB9211:
.LBB9212:
	.loc 2 83 0
	movb	$-117, %bl
.LVL1429:
	movb	%bl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE9212:
.LBE9211:
.LBB9213:
.LBB9214:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %cl
.LVL1430:
.LBE9214:
.LBE9213:
.LBE9210:
.LBB9215:
.LBB9216:
.LBB9217:
	.loc 2 83 0
	movb	%bl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE9217:
.LBE9216:
.LBB9218:
.LBB9219:
	orl	$64, %ecx
	movb	%cl, %al
	jmp	.L861
.LVL1431:
.L878:
.LBE9219:
.LBE9218:
.LBE9215:
.LBE9204:
.LBE9203:
.LBE9220:
.LBE9194:
.LBE9193:
.LBE9192:
.LBB9170:
.LBB9171:
.LBB9172:
	.loc 7 539 0
	movl	$64, %eax
#APP
# 539 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9173:
#APP
# 539 "src/clock.c" 1
	movb %ES:160, %cl
# 0 "" 2
.LVL1432:
#NO_APP
.LBE9173:
	andb	$1, %cl
	je	.L836
.LBB9174:
	.loc 7 542 0
#APP
# 542 "src/clock.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	xorl	%ecx, %ecx
.LVL1433:
#APP
# 542 "src/clock.c" 1
	movb %cl, %ES:160
# 0 "" 2
#NO_APP
.LBE9174:
.LBB9175:
.LBB9176:
.LBB9177:
.LBB9178:
	.loc 10 253 0
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9179:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %cx
# 0 "" 2
.LVL1434:
#NO_APP
.LBE9179:
.LBE9178:
.LBE9177:
	.loc 7 513 0
#APP
# 513 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9180:
#APP
# 513 "src/clock.c" 1
	movl %ES:298, %eax
# 0 "" 2
.LVL1435:
#NO_APP
.LBE9180:
.LBB9181:
	.loc 7 514 0
	leal	-1(%eax), %ebx
.LVL1436:
#APP
# 514 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
# 514 "src/clock.c" 1
	movl %ebx, %ES:298
# 0 "" 2
#NO_APP
.LBE9181:
	.loc 7 515 0
	decl	%eax
.LVL1437:
	jne	.L836
.LBB9182:
.LBB9183:
.LBB9184:
	.loc 2 83 0
	movb	$-117, %cl
.LVL1438:
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE9184:
.LBE9183:
.LBB9185:
.LBB9186:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %bl
.LVL1439:
.LBE9186:
.LBE9185:
.LBE9182:
.LBB9187:
.LBB9188:
.LBB9189:
	.loc 2 83 0
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE9189:
.LBE9188:
.LBB9190:
.LBB9191:
	movl	%ebx, %eax
.LVL1440:
	andl	$191, %eax
.LVL1441:
.L861:
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
	jmp	.L836
.LVL1442:
.L857:
.LBE9191:
.LBE9190:
.LBE9187:
.LBE9176:
.LBE9175:
.LBE9172:
.LBE9171:
.LBE9170:
.LBB9162:
.LBB9163:
.LBB9164:
.LBB9165:
.LBB9166:
.LBB9167:
	.loc 14 90 0
	movb	$-122, 29(%edx)
.LBB9168:
.LBB9169:
	.loc 14 60 0
	orw	$1, 36(%edx)
.LBE9169:
.LBE9168:
.LBE9167:
.LBE9166:
.LBE9165:
.LBE9164:
	.loc 7 589 0
	decb	28(%edx)
	jmp	.L854
.L873:
.LBE9163:
.LBE9162:
.LBE9161:
.LBE9160:
.LBB9227:
.LBB9228:
	.loc 7 553 0
	movb	$0, 31(%esp)
.LVL1443:
	.loc 7 554 0
	movw	24(%edx), %cx
	movw	%cx, 20(%esp)
	movw	20(%edx), %di
.LBB9229:
	.loc 7 555 0
#APP
# 555 "src/clock.c" 1
	movw %SS, %bp
# 0 "" 2
.LVL1444:
#NO_APP
.LBE9229:
.LBB9230:
.LBB9231:
	.loc 7 525 0
	movl	$64, %ecx
#APP
# 525 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9236:
#APP
# 525 "src/clock.c" 1
	movb %ES:160, %al
# 0 "" 2
.LVL1445:
#NO_APP
.LBE9236:
	andl	$1, %eax
.LVL1446:
	jne	.L838
.LBB9235:
	.loc 7 529 0
#APP
# 529 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	$1, %esi
	movl	%esi, %ebx
#APP
# 529 "src/clock.c" 1
	movb %bl, %ES:160(%eax)
# 0 "" 2
#NO_APP
.LBE9235:
.LBB9233:
.LBB9234:
	.loc 7 530 0
	leal	31(%esp), %esi
	sall	$16, %ebp
.LVL1447:
	movzwl	%si, %esi
	orl	%ebp, %esi
.LBE9234:
#APP
# 530 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
# 530 "src/clock.c" 1
	movl %esi, %ES:152(%eax)
# 0 "" 2
#NO_APP
.LBE9233:
.LBB9232:
	.loc 7 531 0
#APP
# 531 "src/clock.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBE9232:
.LBE9231:
.LBE9230:
	.loc 7 554 0
	movl	20(%esp), %ebx
	sall	$16, %ebx
.LVL1448:
	movzwl	%di, %edi
	orl	%edi, %ebx
.LBB9256:
.LBB9255:
.LBB9237:
	.loc 7 531 0
#APP
# 531 "src/clock.c" 1
	movl %ebx, %ES:156(%eax)
# 0 "" 2
#NO_APP
.LBE9237:
.LBB9238:
.LBB9239:
.LBB9240:
.LBB9241:
	.loc 10 253 0
#APP
# 253 "src/biosvar.h" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9242:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14(%eax), %bx
# 0 "" 2
.LVL1449:
#NO_APP
.LBE9242:
.LBE9241:
.LBE9240:
	.loc 7 500 0
#APP
# 500 "src/clock.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB9243:
#APP
# 500 "src/clock.c" 1
	movl %ES:298(%eax), %ecx
# 0 "" 2
.LVL1450:
#NO_APP
.LBE9243:
.LBB9244:
	.loc 7 501 0
	leal	1(%ecx), %esi
.LVL1451:
#APP
# 501 "src/clock.c" 1
	movw %bx, %ES
# 0 "" 2
# 501 "src/clock.c" 1
	movl %esi, %ES:298(%eax)
# 0 "" 2
#NO_APP
.LBE9244:
	.loc 7 502 0
	testl	%ecx, %ecx
	jne	.L855
.LBB9245:
.LBB9246:
.LBB9247:
	.loc 2 83 0
	movb	$-117, %bl
.LVL1452:
	movb	%bl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE9247:
.LBE9246:
.LBB9248:
.LBB9249:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $113, %al
# 0 "" 2
#NO_APP
	movb	%al, %cl
.LVL1453:
.LBE9249:
.LBE9248:
.LBE9245:
.LBB9250:
.LBB9251:
.LBB9252:
	.loc 2 83 0
	movb	%bl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $112
# 0 "" 2
#NO_APP
.LBE9252:
.LBE9251:
.LBB9253:
.LBB9254:
	orl	$64, %ecx
	movb	%cl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $113
# 0 "" 2
#NO_APP
	jmp	.L855
.LVL1454:
.L838:
.LBE9254:
.LBE9253:
.LBE9250:
.LBE9239:
.LBE9238:
.LBE9255:
.LBE9256:
.LBB9257:
.LBB9258:
.LBB9259:
.LBB9260:
	.loc 14 90 0
	movb	$-125, 29(%edx)
	jmp	.L860
.LVL1455:
.L840:
.LBE9260:
.LBE9259:
.LBE9258:
.LBE9257:
.LBB9261:
.LBB9262:
	.loc 6 139 0
#APP
# 139 "src/stacks.c" 1
	sti ; hlt ; cli ; cld
# 0 "" 2
#NO_APP
.L855:
.LBE9262:
.LBE9261:
	.loc 7 560 0
	cmpb	$0, 31(%esp)
	je	.L840
	jmp	.L836
.LVL1456:
.L815:
.LBE9228:
.LBE9227:
.LBB9263:
.LBB9264:
.LBB9265:
.LBB9266:
.LBB9267:
.LBB9268:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $146, %al
# 0 "" 2
#NO_APP
	movb	%al, 19(%esp)
.LBE9268:
.LBE9267:
.LBB9269:
.LBB9270:
	.loc 2 83 0
	orl	$2, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $146
# 0 "" 2
#NO_APP
.LBE9270:
.LBE9269:
.LBE9266:
.LBE9265:
	.loc 29 107 0
	movzwl	8(%edx), %esi
.LVL1457:
	.loc 29 109 0
	movw	2(%edx), %ax
.LVL1458:
.LBB9271:
	.loc 29 111 0
	movzwl	%ax, %ecx
	sall	$4, %ecx
#APP
# 111 "src/system.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9272:
	leal	(%ecx,%esi), %edi
	xorl	%ebp, %ebp
	movl	%edi, %ecx
	movl	%ebp, %ebx
	shldl	$16, %ecx, %ebx
	sall	$16, %ecx
	movl	%ecx, 20(%esp)
	movl	%ebx, 24(%esp)
	movl	%ecx, %edi
	movl	%ebx, %ecx
	orl	$47, %edi
	orb	$147, %ch
#APP
# 111 "src/system.c" 1
	movl %edi, %ES:8(%esi)
# 0 "" 2
# 111 "src/system.c" 1
	movl %ecx, %ES:12(%esi)
# 0 "" 2
#NO_APP
.LBE9272:
.LBE9271:
.LBB9273:
	.loc 29 114 0
#APP
# 114 "src/system.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9274:
	movl	$65535, %edi
.LVL1459:
	movl	$39695, %ebp
.LVL1460:
#APP
# 114 "src/system.c" 1
	movl %edi, %ES:32(%esi)
# 0 "" 2
# 114 "src/system.c" 1
	movl %ebp, %ES:36(%esi)
# 0 "" 2
#NO_APP
.LBE9274:
.LBE9273:
.LBB9275:
	.loc 29 117 0
#APP
# 117 "src/system.c" 1
	movw %SS, %cx
# 0 "" 2
.LVL1461:
#NO_APP
.LBE9275:
.LBB9276:
	.loc 29 118 0
	movzwl	%cx, %ecx
.LVL1462:
#APP
# 118 "src/system.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9277:
	movl	%ecx, %edi
.LVL1463:
	sall	$4, %edi
	xorl	%ebp, %ebp
.LVL1464:
	shldl	$16, %edi, %ebp
	sall	$16, %edi
	movl	%edi, %ecx
.LVL1465:
	movl	%ebp, %eax
.LVL1466:
	orl	$65535, %ecx
	orb	$147, %ah
#APP
# 118 "src/system.c" 1
	movl %ecx, %ES:40(%esi)
# 0 "" 2
# 118 "src/system.c" 1
	movl %eax, %ES:44(%esi)
# 0 "" 2
#NO_APP
.LBE9277:
.LBE9276:
	.loc 29 121 0
	movw	24(%edx), %cx
.LVL1467:
	.loc 29 122 0
#APP
# 122 "src/system.c" 1
	  lgdtw %es:(1<<3)(%si)
  lidtw %cs:pmode_IDT_info
  movl %cr0, %eax
  orl $(1<<0), %eax
  movl %eax, %cr0
  ljmpw $(4<<3), $1f
1:movw $(2<<3), %ax
  movw %ax, %ds
  movw $(3<<3), %ax
  movw %ax, %es
  xorw %si, %si
  xorw %di, %di
  rep movsw
  movw $(5<<3), %ax
  movw %ax, %ds
  movw %ax, %es
  movl %cr0, %eax
  andl $~(1<<0), %eax
  movl %eax, %cr0
  ljmpw $0xf000, $2f
2:lidtw %cs:rmode_IDT_info
  movw %ss, %ax
  movw %ax, %ds

# 0 "" 2
#NO_APP
.LBB9278:
.LBB9279:
.LBB9280:
.LBB9281:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $146, %al
# 0 "" 2
.LVL1468:
#NO_APP
.LBE9281:
.LBE9280:
	.loc 29 21 0
	testb	$2, 19(%esp)
	jne	.L864
.L841:
	.loc 29 24 0
	andl	$-3, %eax
.LVL1469:
	jmp	.L862
.LVL1470:
.L816:
.LBE9279:
.LBE9278:
.LBE9264:
.LBE9263:
.LBB9282:
.LBB9283:
.LBB9284:
	.loc 29 177 0
#APP
# 177 "src/system.c" 1
	movl %CS:RamSize, %eax
# 0 "" 2
.LVL1471:
#NO_APP
.LBE9284:
	.loc 29 181 0
	cmpl	$67108864, %eax
	jbe	.L843
	.loc 29 182 0
	movw	$-1024, 28(%edx)
	jmp	.L836
.L843:
	.loc 29 184 0
	subl	$1048576, %eax
.LVL1472:
	shrl	$10, %eax
	movw	%ax, 28(%edx)
	jmp	.L836
.L874:
.LBE9283:
.LBE9282:
.LBB9285:
.LBB9286:
.LBB9287:
.LBB9288:
.LBB9289:
.LBB9290:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $146, %al
# 0 "" 2
#NO_APP
.LBE9290:
.LBE9289:
.LBB9291:
.LBB9292:
	.loc 2 83 0
	orl	$2, %eax
#APP
# 83 "src/ioport.h" 1
	outb %al, $146
# 0 "" 2
#NO_APP
.LBE9292:
.LBE9291:
.LBE9288:
.LBE9287:
.LBB9293:
.LBB9294:
.LBB9295:
	.loc 2 83 0
	movb	$17, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE9295:
.LBE9294:
.LBB9296:
.LBB9297:
#APP
# 83 "src/ioport.h" 1
	outb %al, $160
# 0 "" 2
#NO_APP
.LBE9297:
.LBE9296:
.LBB9298:
.LBB9299:
	movb	16(%edx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $33
# 0 "" 2
#NO_APP
.LBE9299:
.LBE9298:
.LBB9300:
.LBB9301:
	movb	17(%edx), %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $161
# 0 "" 2
#NO_APP
.LBE9301:
.LBE9300:
.LBB9302:
.LBB9303:
	movb	$4, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $33
# 0 "" 2
#NO_APP
.LBE9303:
.LBE9302:
.LBB9304:
.LBB9305:
	movb	$2, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $161
# 0 "" 2
#NO_APP
.LBE9305:
.LBE9304:
.LBB9306:
.LBB9307:
	movb	$1, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $33
# 0 "" 2
#NO_APP
.LBE9307:
.LBE9306:
.LBB9308:
.LBB9309:
#APP
# 83 "src/ioport.h" 1
	outb %al, $161
# 0 "" 2
#NO_APP
.LBE9309:
.LBE9308:
.LBB9310:
.LBB9311:
	movb	$-5, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $33
# 0 "" 2
#NO_APP
.LBE9311:
.LBE9310:
.LBB9312:
.LBB9313:
	movb	$-1, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $161
# 0 "" 2
#NO_APP
.LBE9313:
.LBE9312:
.LBE9293:
	.loc 29 196 0
	movzwl	8(%edx), %esi
.LVL1473:
.LBB9314:
	.loc 29 198 0
#APP
# 198 "src/system.c" 1
	movw 2(%edx), %ES
# 0 "" 2
#NO_APP
.LBB9315:
	movl	$65535, %ecx
.LVL1474:
	movl	$39695, %ebx
.LVL1475:
#APP
# 198 "src/system.c" 1
	movl %ecx, %ES:56(%esi)
# 0 "" 2
# 198 "src/system.c" 1
	movl %ebx, %ES:60(%esi)
# 0 "" 2
#NO_APP
.LBE9315:
.LBE9314:
	.loc 29 201 0
	movw	$24, (%edx)
	.loc 29 202 0
	movw	$32, 2(%edx)
	.loc 29 203 0
	movw	$48, 34(%edx)
.LBB9316:
.LBB9317:
	.loc 14 77 0
	movb	$0, 29(%edx)
.LBB9318:
.LBB9319:
	.loc 14 62 0
	andw	$-2, 36(%edx)
.LBE9319:
.LBE9318:
.LBE9317:
.LBE9316:
	.loc 29 207 0
#APP
# 207 "src/system.c" 1
	  lgdtw %es:(1<<3)(%si)
  lidtw %es:(2<<3)(%si)
  movl %cr0, %eax
  orl $(1<<0), %eax
  movl %eax, %cr0
  ljmpw $(7<<3), $1f
1:movw $(5<<3), %ax
  movw %ax, %ds
  movw %ax, %ss

# 0 "" 2
#NO_APP
.LBE9286:
.LBE9285:
	.loc 29 356 0
	jmp	.L854
.LVL1476:
.L875:
.LBB9320:
.LBB9321:
	.loc 29 251 0
	movw	$-4096, 2(%edx)
	.loc 29 252 0
	movl	$BIOS_CONFIG_TABLE, %eax
	movw	%ax, 16(%edx)
	jmp	.L863
.L820:
.LBE9321:
.LBE9320:
.LBB9322:
.LBB9323:
.LBB9324:
.LBB9325:
	.loc 10 253 0
	movl	$64, %eax
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9326:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %ax
# 0 "" 2
.LVL1477:
#NO_APP
.LBE9326:
.LBE9325:
.LBE9324:
	.loc 29 259 0
	movw	%ax, 2(%edx)
	jmp	.L836
.LVL1478:
.L821:
.LBE9323:
.LBE9322:
	.loc 29 361 0
	movl	%edx, %eax
	call	handle_15c2.1705
.LVL1479:
	jmp	.L854
.LVL1480:
.L876:
.LBB9327:
.LBB9328:
	.loc 29 328 0
	movb	28(%edx), %al
	cmpb	$1, %al
	je	.L846
	cmpb	$32, %al
	jne	.L807
	jmp	.L879
.L846:
.LBB9329:
.LBB9330:
.LBB9331:
	.loc 29 273 0
#APP
# 273 "src/system.c" 1
	movl %CS:RamSize, %eax
# 0 "" 2
.LVL1481:
#NO_APP
.LBE9331:
	.loc 29 276 0
	cmpl	$16777216, %eax
	jbe	.L848
	.loc 29 278 0
	movw	$15360, 24(%edx)
	.loc 29 280 0
	subl	$16777216, %eax
.LVL1482:
	shrl	$16, %eax
	movw	%ax, 20(%edx)
	jmp	.L849
.LVL1483:
.L848:
	.loc 29 282 0
	subl	$1048576, %eax
.LVL1484:
	shrl	$10, %eax
	movw	%ax, 24(%edx)
	.loc 29 283 0
	movw	$0, 20(%edx)
.L849:
	.loc 29 287 0
	movw	24(%edx), %ax
	movw	%ax, 28(%edx)
	.loc 29 288 0
	movw	20(%edx), %ax
	movw	%ax, 16(%edx)
	jmp	.L836
.L879:
.LBE9330:
.LBE9329:
.LBB9332:
.LBB9333:
.LBB9334:
	.loc 29 300 0
#APP
# 300 "src/system.c" 1
	movl %CS:e820_count, %ebx
# 0 "" 2
.LVL1485:
#NO_APP
.LBE9334:
	.loc 29 301 0
	cmpl	$1397571920, 20(%edx)
	jne	.L807
	movzwl	16(%edx), %esi
	cmpl	%ebx, %esi
	jge	.L807
	cmpl	$19, 24(%edx)
	jbe	.L807
.LBB9335:
.LBB9336:
	.loc 10 300 0
#APP
# 300 "src/biosvar.h" 1
	movw %CS, %bp
# 0 "" 2
.LVL1486:
#NO_APP
.LBE9336:
.LBE9335:
	.loc 29 307 0
	movzwl	4(%edx), %edi
.LBB9337:
.LBB9338:
	.loc 16 156 0
#APP
# 156 "src/util.c" 1
	movw 2(%edx), %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	imull	$20, %esi, %esi
	addl	$e820_list, %esi
	movl	$20, %ecx
.LVL1487:
#APP
# 158 "src/util.c" 1
	movw %ds, %ax
movw %bp, %ds
rep movsb (%si),%es:(%di)
movw %ax, %ds
# 0 "" 2
.LVL1488:
#NO_APP
.LBE9338:
.LBE9337:
	.loc 29 310 0
	movzwl	16(%edx), %eax
.LVL1489:
	decl	%ebx
.LVL1490:
	cmpl	%ebx, %eax
	jne	.L852
	.loc 29 311 0
	movl	$0, 16(%edx)
	jmp	.L853
.L852:
	.loc 29 313 0
	incl	16(%edx)
.L853:
	.loc 29 314 0
	movl	$1397571920, 28(%edx)
	.loc 29 315 0
	movl	$20, 24(%edx)
	jmp	.L836
.LVL1491:
.L807:
.LBE9333:
.LBE9332:
.LBE9328:
.LBE9327:
.LBB9339:
.LBB9340:
.LBB9341:
.LBB9342:
.LBB9343:
.LBB9344:
	.loc 14 90 0
	movb	$-122, 29(%edx)
.LVL1492:
.L860:
.LBB9345:
.LBB9346:
	.loc 14 60 0
	orw	$1, 36(%edx)
	jmp	.L854
.LVL1493:
.L836:
.LBE9346:
.LBE9345:
.LBE9344:
.LBE9343:
.LBE9342:
.LBE9341:
.LBE9340:
.LBE9339:
.LBB9347:
.LBB9226:
.LBB9225:
.LBB9224:
.LBB9221:
.LBB9222:
.LBB9223:
	.loc 14 62 0
	andw	$-2, 36(%edx)
.LVL1494:
.L854:
.LBE9223:
.LBE9222:
.LBE9221:
.LBE9224:
.LBE9225:
.LBE9226:
.LBE9347:
	.loc 29 365 0
	addl	$32, %esp
	popl	%ebx
.LVL1495:
	popl	%esi
.LVL1496:
	popl	%edi
.LVL1497:
	popl	%ebp
.LVL1498:
	ret
	.cfi_endproc
.LFE2954:
	.size	handle_15, .-handle_15
	.section	.text.handle_16,"ax",@progbits
.globl handle_16
	.type	handle_16, @function
handle_16:
.LFB915:
	.loc 11 254 0
	.cfi_startproc
.LVL1499:
	pushl	%ebp
.LCFI294:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI295:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI296:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI297:
	.cfi_def_cfa_offset 20
	subl	$8, %esp
.LCFI298:
	.cfi_def_cfa_offset 28
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LBB9348:
.LBB9349:
	.loc 11 237 0
	movl	$64, %esi
#APP
# 237 "src/kbd.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB9350:
#APP
# 237 "src/kbd.c" 1
	movb %ES:23, %al
# 0 "" 2
.LVL1500:
#NO_APP
.LBE9350:
	shrb	$4, %al
	andl	$7, %eax
	movb	%al, 7(%esp)
.LVL1501:
	.loc 11 238 0
#APP
# 238 "src/kbd.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB9351:
#APP
# 238 "src/kbd.c" 1
	movb %ES:151, %dl
# 0 "" 2
#NO_APP
	movl	%edx, %edi
.LVL1502:
.LBE9351:
	.loc 11 240 0
	andl	$7, %edx
	cmpb	%dl, %al
	je	.L881
.LBB9352:
.LBB9353:
.LBB9354:
.LBB9355:
	.loc 22 302 0
#APP
# 302 "src/usb-hid.c" 1
	movl %CS:keyboard_pipe, %eax
# 0 "" 2
.LVL1503:
#NO_APP
.LBE9355:
.LBE9354:
	.loc 11 116 0
	testl	%eax, %eax
	jne	.L881
.LBB9356:
.LBB9357:
.LBB9358:
	.loc 28 315 0
	leal	7(%esp), %ecx
	movl	$4333, %edx
	call	__ps2_command.31521
.LVL1504:
.LBE9358:
.LBE9357:
.LBE9356:
.LBE9353:
.LBE9352:
	.loc 11 244 0
	testl	%eax, %eax
.LVL1505:
	jne	.L881
	.loc 11 247 0
	movl	%edi, %edx
.LVL1506:
	andl	$-8, %edx
.LVL1507:
	orb	7(%esp), %dl
.LVL1508:
.LBB9359:
	.loc 11 248 0
#APP
# 248 "src/kbd.c" 1
	movw %si, %ES
# 0 "" 2
# 248 "src/kbd.c" 1
	movb %dl, %ES:151(%eax)
# 0 "" 2
.LVL1509:
#NO_APP
.L881:
.LBE9359:
.LBE9349:
.LBE9348:
	.loc 11 262 0
	movb	29(%ebx), %al
.LVL1510:
	cmpb	$10, %al
	je	.L888
	ja	.L894
	cmpb	$2, %al
	je	.L885
	ja	.L895
	testb	%al, %al
	je	.L883
	decb	%al
	jne	.L902
	jmp	.L910
.L895:
	cmpb	$5, %al
	je	.L886
	cmpb	$9, %al
	jne	.L902
	jmp	.L911
.L894:
	cmpb	$18, %al
	je	.L891
	ja	.L896
	cmpb	$16, %al
	je	.L889
	cmpb	$17, %al
	jne	.L902
	jmp	.L912
.L896:
	cmpb	$111, %al
	je	.L892
	cmpb	$-110, %al
	jne	.L902
	jmp	.L913
.L883:
.LBB9360:
.LBB9361:
	.loc 11 125 0
	xorl	%ecx, %ecx
	jmp	.L904
.L910:
.LBE9361:
.LBE9360:
.LBB9362:
.LBB9363:
	.loc 11 132 0
	xorl	%ecx, %ecx
.L905:
	xorl	%edx, %edx
.LVL1511:
.L903:
	movl	%ebx, %eax
	call	dequeue_key.19941
.LBE9363:
.LBE9362:
	.loc 11 264 0
	jmp	.L902
.LVL1512:
.L885:
.LBB9364:
.LBB9365:
.LBB9366:
.LBB9367:
.LBB9368:
.LBB9369:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE9369:
.LBE9368:
.LBE9367:
.LBE9366:
	.loc 11 140 0
	movl	$64, %eax
#APP
# 140 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9370:
#APP
# 140 "src/kbd.c" 1
	movb %ES:23, %al
# 0 "" 2
.LVL1513:
#NO_APP
.LBE9370:
	movb	%al, 28(%ebx)
.LBE9365:
.LBE9364:
	.loc 11 265 0
	jmp	.L902
.LVL1514:
.L886:
.LBB9371:
.LBB9372:
	.loc 11 147 0
	movzbl	24(%ebx), %edi
.LVL1515:
	movzbl	25(%ebx), %esi
.LBB9373:
.LBB9374:
	.loc 11 54 0
	movl	$64, %edx
.LVL1516:
#APP
# 54 "src/kbd.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9375:
#APP
# 54 "src/kbd.c" 1
	movw %ES:128, %ax
# 0 "" 2
.LVL1517:
#NO_APP
.LBE9375:
	.loc 11 55 0
#APP
# 55 "src/kbd.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9376:
#APP
# 55 "src/kbd.c" 1
	movw %ES:130, %bp
# 0 "" 2
.LVL1518:
#NO_APP
.LBE9376:
	.loc 11 57 0
#APP
# 57 "src/kbd.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9377:
#APP
# 57 "src/kbd.c" 1
	movw %ES:26, %cx
# 0 "" 2
#NO_APP
	movw	%cx, 2(%esp)
.LBE9377:
	.loc 11 58 0
#APP
# 58 "src/kbd.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9378:
#APP
# 58 "src/kbd.c" 1
	movw %ES:28, %dx
# 0 "" 2
.LVL1519:
#NO_APP
.LBE9378:
	.loc 11 61 0
	leal	2(%edx), %ecx
.LVL1520:
	.loc 11 62 0
	cmpw	%bp, %cx
	jae	.L897
	movl	%ecx, %eax
.L897:
	.loc 11 65 0
	xorl	%ecx, %ecx
.LVL1521:
	cmpw	2(%esp), %ax
	je	.L899
.LBB9379:
	.loc 11 68 0
	movl	$64, %ebp
.LVL1522:
#APP
# 68 "src/kbd.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
	movzwl	%dx, %edx
.LVL1523:
	movl	%edi, %ecx
#APP
# 68 "src/kbd.c" 1
	movb %cl, %ES:(%edx)
# 0 "" 2
#NO_APP
.LBE9379:
.LBB9380:
	.loc 11 69 0
#APP
# 69 "src/kbd.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %ecx
#APP
# 69 "src/kbd.c" 1
	movb %cl, %ES:1(%edx)
# 0 "" 2
#NO_APP
.LBE9380:
.LBB9381:
	.loc 11 70 0
#APP
# 70 "src/kbd.c" 1
	movw %bp, %ES
# 0 "" 2
# 70 "src/kbd.c" 1
	movw %ax, %ES:28
# 0 "" 2
#NO_APP
	movb	$1, %cl
.LVL1524:
.L899:
.LBE9381:
.LBE9374:
.LBE9373:
	.loc 11 147 0
	xorl	$1, %ecx
	movb	%cl, 28(%ebx)
.LBE9372:
.LBE9371:
	.loc 11 266 0
	jmp	.L902
.LVL1525:
.L911:
.LBB9382:
.LBB9383:
	.loc 11 164 0
	movb	$48, 28(%ebx)
.LBE9383:
.LBE9382:
	.loc 11 267 0
	jmp	.L902
.L888:
.LBB9384:
.LBB9385:
.LBB9386:
.LBB9387:
.LBB9388:
.LBB9389:
	.loc 22 302 0
#APP
# 302 "src/usb-hid.c" 1
	movl %CS:keyboard_pipe, %eax
# 0 "" 2
.LVL1526:
#NO_APP
.LBE9389:
.LBE9388:
	.loc 11 116 0
	testl	%eax, %eax
	je	.L900
.LBB9390:
.LBB9391:
	.loc 22 315 0
	movb	$-85, 5(%esp)
	.loc 22 316 0
	movb	$-125, 6(%esp)
	jmp	.L901
.L900:
.LBE9391:
.LBE9390:
.LBB9392:
.LBB9393:
.LBB9394:
	.loc 28 315 0
	leal	5(%esp), %ecx
	movl	$754, %edx
.LVL1527:
	xorl	%eax, %eax
.LVL1528:
	call	__ps2_command.31521
.LBE9394:
.LBE9393:
.LBE9392:
.LBE9387:
.LBE9386:
	.loc 11 173 0
	testl	%eax, %eax
.LVL1529:
	je	.L901
	.loc 11 174 0
	movw	$0, 16(%ebx)
	jmp	.L902
.LVL1530:
.L901:
	.loc 11 177 0
	movzbl	6(%esp), %edx
.LVL1531:
	sall	$8, %edx
	movzbl	5(%esp), %eax
.LVL1532:
	orl	%edx, %eax
	movw	%ax, 16(%ebx)
	jmp	.L902
.LVL1533:
.L889:
.LBE9385:
.LBE9384:
.LBB9395:
.LBB9396:
	.loc 11 184 0
	movl	$1, %ecx
.L904:
	movl	$1, %edx
.LVL1534:
	jmp	.L903
.LVL1535:
.L912:
.LBE9396:
.LBE9395:
.LBB9397:
.LBB9398:
	.loc 11 191 0
	movl	$1, %ecx
	jmp	.L905
.L891:
.LBE9398:
.LBE9397:
.LBB9399:
.LBB9400:
.LBB9401:
.LBB9402:
.LBB9403:
.LBB9404:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE9404:
.LBE9403:
.LBE9402:
.LBE9401:
	.loc 11 199 0
	movl	$64, %eax
#APP
# 199 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9405:
#APP
# 199 "src/kbd.c" 1
	movb %ES:23, %dl
# 0 "" 2
.LVL1536:
#NO_APP
.LBE9405:
	movb	%dl, 28(%ebx)
	.loc 11 200 0
#APP
# 200 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9406:
#APP
# 200 "src/kbd.c" 1
	movb %ES:24, %dl
# 0 "" 2
.LVL1537:
#NO_APP
.LBE9406:
	.loc 11 201 0
#APP
# 201 "src/kbd.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9407:
#APP
# 201 "src/kbd.c" 1
	movb %ES:150, %al
# 0 "" 2
#NO_APP
.LBE9407:
	.loc 11 200 0
	andl	$12, %eax
	andl	$-13, %edx
	orl	%edx, %eax
	movb	%al, 29(%ebx)
.LBE9400:
.LBE9399:
	.loc 11 271 0
	jmp	.L902
.LVL1538:
.L913:
.LBB9408:
.LBB9409:
	.loc 11 218 0
	movb	$-128, 29(%ebx)
.LBE9409:
.LBE9408:
	.loc 11 272 0
	jmp	.L902
.L892:
.LBB9410:
.LBB9411:
	.loc 11 208 0
	cmpb	$8, 28(%ebx)
	jne	.L902
	.loc 11 210 0
	movb	$2, 29(%ebx)
.LVL1539:
.L902:
.LBE9411:
.LBE9410:
	.loc 11 277 0
	popl	%edi
.LCFI299:
	.cfi_def_cfa_offset 24
.LVL1540:
	popl	%ebp
.LCFI300:
	.cfi_def_cfa_offset 20
.LVL1541:
	popl	%ebx
.LVL1542:
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.cfi_endproc
.LFE915:
	.size	handle_16, .-handle_16
	.section	.rodata.str1.1
.LC13:
	.string	"ps2 mouse irq but no mouse data.\n"
	.section	.text.handle_74,"ax",@progbits
.globl handle_74
	.type	handle_74, @function
handle_74:
.LFB1433:
	.loc 28 341 0
	.cfi_startproc
.LBB9412:
.LBB9413:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $100, %al
# 0 "" 2
.LVL1543:
#NO_APP
.LBE9413:
.LBE9412:
	.loc 28 348 0
	andl	$33, %eax
.LVL1544:
	cmpl	$33, %eax
	je	.L915
	.loc 28 350 0
	pushl	$.LC13
.LCFI301:
	.cfi_def_cfa_offset 8
	.cfi_escape 0x2e,0x4
	call	__dprintf.1656
	popl	%eax
.LCFI302:
	.cfi_def_cfa_offset 4
	.loc 28 351 0
	jmp	.L916
.L915:
.LBB9414:
.LBB9415:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $96, %al
# 0 "" 2
.LVL1545:
#NO_APP
.LBE9415:
.LBE9414:
.LBB9416:
.LBB9417:
	.loc 10 253 0
	movl	$64, %edx
#APP
# 253 "src/biosvar.h" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9418:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %dx
# 0 "" 2
.LVL1546:
#NO_APP
.LBE9418:
.LBE9417:
.LBE9416:
	.loc 28 355 0
#APP
# 355 "src/ps2port.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9419:
#APP
# 355 "src/ps2port.c" 1
	movb %ES:289, %dl
# 0 "" 2
.LVL1547:
#NO_APP
.LBE9419:
	andb	$2, %dl
	je	.L916
	.loc 28 359 0
	movzbl	%al, %eax
.LVL1548:
	.cfi_escape 0x2e,0x0
	call	process_mouse.1711
.LVL1549:
.L916:
.LBB9420:
.LBB9421:
.LBB9422:
	.loc 2 83 0
	movb	$32, %al
.LVL1550:
#APP
# 83 "src/ioport.h" 1
	outb %al, $160
# 0 "" 2
#NO_APP
.LBE9422:
.LBE9421:
.LBB9423:
.LBB9424:
.LBB9425:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE9425:
.LBE9424:
.LBE9423:
.LBE9420:
	.loc 28 363 0
	ret
	.cfi_endproc
.LFE1433:
	.size	handle_74, .-handle_74
	.section	.rodata.str1.1
.LC14:
	.string	"ps2 keyboard irq but found mouse data?!\n"
	.section	.text.handle_09,"ax",@progbits
.globl handle_09
	.type	handle_09, @function
handle_09:
.LFB1434:
	.loc 28 368 0
	.cfi_startproc
.LBB9426:
.LBB9427:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $100, %al
# 0 "" 2
.LVL1551:
#NO_APP
.LBE9427:
.LBE9426:
	.loc 28 376 0
	movl	%eax, %edx
.LVL1552:
	andl	$32, %edx
	je	.L919
	.loc 28 377 0
	pushl	$.LC14
.LCFI303:
	.cfi_def_cfa_offset 8
	.cfi_escape 0x2e,0x4
	call	__dprintf.1656
	popl	%edx
.LCFI304:
	.cfi_def_cfa_offset 4
	.loc 28 378 0
	jmp	.L920
.L919:
.LBB9428:
.LBB9429:
	.loc 2 93 0
#APP
# 93 "src/ioport.h" 1
	inb $96, %al
# 0 "" 2
.LVL1553:
#NO_APP
.LBE9429:
.LBE9428:
.LBB9430:
.LBB9431:
	.loc 10 253 0
	movl	$64, %ecx
#APP
# 253 "src/biosvar.h" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9432:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14(%edx), %cx
# 0 "" 2
.LVL1554:
#NO_APP
.LBE9432:
.LBE9431:
.LBE9430:
	.loc 28 382 0
#APP
# 382 "src/ps2port.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9433:
#APP
# 382 "src/ps2port.c" 1
	movb %ES:289(%edx), %dl
# 0 "" 2
.LVL1555:
#NO_APP
.LBE9433:
	andb	$1, %dl
	je	.L920
	.loc 28 386 0
	movzbl	%al, %eax
.LVL1556:
	.cfi_escape 0x2e,0x0
	call	process_key.1707
.LVL1557:
.L920:
.LBB9434:
.LBB9435:
.LBB9436:
	.loc 2 83 0
	movb	$32, %al
.LVL1558:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.LBE9436:
.LBE9435:
.LBE9434:
	.loc 28 390 0
	ret
	.cfi_endproc
.LFE1434:
	.size	handle_09, .-handle_09
	.section	.rodata.str1.1
.LC15:
	.string	"In resume (status=%d)\n"
.LC16:
	.string	"Unimplemented shutdown status: %02x\n"
	.section	.text.handle_resume,"ax",@progbits
.globl handle_resume
	.type	handle_resume, @function
handle_resume:
.LFB1575:
	.file 30 "src/resume.c"
	.loc 30 30 0
	.cfi_startproc
.LVL1559:
	pushl	%esi
.LCFI305:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.LCFI306:
	.cfi_def_cfa_offset 12
	movb	%al, %bl
	.cfi_offset 3, -12
	.cfi_offset 6, -8
.LBB9437:
.LBB9438:
.LBB9439:
	.loc 2 83 0
	xorl	%edx, %edx
	movb	%dl, %al
.LVL1560:
#APP
# 83 "src/ioport.h" 1
	outb %al, $13
# 0 "" 2
#NO_APP
.LBE9439:
.LBE9438:
.LBB9440:
.LBB9441:
#APP
# 83 "src/ioport.h" 1
	outb %al, $218
# 0 "" 2
#NO_APP
.LBE9441:
.LBE9440:
.LBB9442:
.LBB9443:
	movb	$-64, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $214
# 0 "" 2
#NO_APP
.LBE9443:
.LBE9442:
.LBB9444:
.LBB9445:
	movb	%dl, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $212
# 0 "" 2
#NO_APP
.LBE9445:
.LBE9444:
.LBE9437:
	.loc 30 34 0
	movzbl	%bl, %esi
	pushl	%esi
.LCFI307:
	.cfi_def_cfa_offset 16
	pushl	$.LC15
.LCFI308:
	.cfi_def_cfa_offset 20
	.cfi_escape 0x2e,0x8
	call	__dprintf.1656
	popl	%ecx
.LCFI309:
	.cfi_def_cfa_offset 16
	popl	%eax
.LCFI310:
	.cfi_def_cfa_offset 12
	.loc 30 36 0
	cmpb	$12, %bl
	je	.L928
	ja	.L930
	cmpb	$5, %bl
	je	.L925
	ja	.L931
	testb	%bl, %bl
	je	.L924
	jmp	.L923
.L931:
	cmpb	$10, %bl
	je	.L926
	cmpb	$11, %bl
	jne	.L923
	jmp	.L934
.L930:
	cmpb	$-2, %bl
	jne	.L924
	.loc 30 40 0
	xorl	%eax, %eax
#APP
# 40 "src/resume.c" 1
	movw %ax, %ss
movl $4096, %esp
pushl $s3_resume
jmp transition32

# 0 "" 2
	.loc 30 47 0
#NO_APP
	jmp	.L923
.L924:
	.loc 30 55 0
	.cfi_escape 0x2e,0x0
	call	reset_vector
.L925:
.LBB9446:
.LBB9447:
.LBB9448:
	.loc 2 83 0
	movb	$32, %al
#APP
# 83 "src/ioport.h" 1
	outb %al, $160
# 0 "" 2
#NO_APP
.LBE9448:
.LBE9447:
.LBB9449:
.LBB9450:
.LBB9451:
#APP
# 83 "src/ioport.h" 1
	outb %al, $32
# 0 "" 2
#NO_APP
.L926:
.LBE9451:
.LBE9450:
.LBE9449:
.LBE9446:
	.loc 30 65 0
	movl	$64, %eax
#APP
# 65 "src/resume.c" 1
	movw %ax, %ds
ljmpw *103

# 0 "" 2
	.loc 30 70 0
#NO_APP
	jmp	.L923
.L934:
	.loc 30 74 0
	movl	$64, %eax
#APP
# 74 "src/resume.c" 1
	movw %ax, %ds
lssw 103, %sp
iretw

# 0 "" 2
	.loc 30 80 0
#NO_APP
	jmp	.L923
.L928:
	.loc 30 84 0
	movl	$64, %eax
#APP
# 84 "src/resume.c" 1
	movw %ax, %ds
lssw 103, %sp
lretw

# 0 "" 2
#NO_APP
.L923:
	.loc 30 93 0
	pushl	%esi
.LCFI311:
	.cfi_def_cfa_offset 16
	pushl	$.LC16
.LCFI312:
	.cfi_def_cfa_offset 20
	.cfi_escape 0x2e,0x8
	call	panic.1648
.LCFI313:
	.cfi_def_cfa_offset 12
	.cfi_endproc
.LFE1575:
	.size	handle_resume, .-handle_resume
	.section	.rodata.str1.1
.LC17:
	.string	"pnp call arg1=%x\n"
	.section	.text.handle_pnp,"ax",@progbits
.globl handle_pnp
	.type	handle_pnp, @function
handle_pnp:
.LFB1638:
	.file 31 "src/pnpbios.c"
	.loc 31 67 0
	.cfi_startproc
.LVL1561:
	pushl	%esi
.LCFI314:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.LCFI315:
	.cfi_def_cfa_offset 12
	movl	%eax, %ebx
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	.loc 31 71 0
	movw	(%eax), %si
.LVL1562:
	.loc 31 72 0
	movzwl	%si, %eax
.LVL1563:
	pushl	%eax
.LCFI316:
	.cfi_def_cfa_offset 16
	pushl	$.LC17
.LCFI317:
	.cfi_def_cfa_offset 20
	.cfi_escape 0x2e,0x8
	call	__dprintf.1656
.LVL1564:
	popl	%edx
.LCFI318:
	.cfi_def_cfa_offset 16
	popl	%ecx
.LCFI319:
	.cfi_def_cfa_offset 12
	.loc 31 74 0
	movl	$130, %eax
	cmpw	$96, %si
.LVL1565:
	jne	.L938
.LBB9452:
.LBB9453:
	.loc 31 53 0
	movzwl	2(%ebx), %eax
.LVL1566:
.LBB9454:
	.loc 31 55 0
#APP
# 55 "src/pnpbios.c" 1
	movw 4(%ebx), %ES
# 0 "" 2
#NO_APP
	movl	$257, %edx
#APP
# 55 "src/pnpbios.c" 1
	movw %dx, %ES:(%eax)
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
.LVL1567:
.L938:
.LBE9454:
.LBE9453:
.LBE9452:
	.loc 31 78 0
	popl	%ebx
.LVL1568:
	popl	%esi
.LVL1569:
	ret
	.cfi_endproc
.LFE1638:
	.size	handle_pnp, .-handle_pnp
	.section	.rodata.str1.1
.LC18:
	.string	"wait_td error - status=%x\n"
	.section	.text.wait_td.45040,"ax",@progbits
	.type	wait_td.45040, @function
wait_td.45040:
.LFB2215:
	.loc 19 413 0
	.cfi_startproc
.LVL1570:
	pushl	%esi
.LCFI320:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.LCFI321:
	.cfi_def_cfa_offset 12
	subl	$16, %esp
.LCFI322:
	.cfi_def_cfa_offset 28
	movl	%eax, %ecx
.LBB9455:
.LBB9456:
.LBB9457:
	.loc 7 134 0
#APP
# 134 "src/clock.c" 1
	movl %CS:cpu_khz, %esi
# 0 "" 2
.LVL1571:
#NO_APP
.LBE9457:
.LBB9458:
.LBB9459:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1572:
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE9459:
.LBE9458:
	.loc 7 135 0
	movl	$5000, %ebx
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%esi, %eax
	mull	%ebx
	movl	%eax, %ebx
.LVL1573:
	movl	%edx, %esi
.LVL1574:
	addl	(%esp), %ebx
.LVL1575:
	adcl	4(%esp), %esi
.LVL1576:
.L945:
.LBE9456:
.LBE9455:
	.loc 19 417 0
	movl	4(%ecx), %edx
.LVL1577:
	.loc 19 418 0
	testl	$8388608, %edx
	je	.L941
.LBB9460:
.LBB9461:
.LBB9462:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LVL1578:
.LBE9462:
.LBE9461:
.LBE9460:
	.loc 19 420 0
	subl	%ebx, (%esp)
	sbbl	%esi, 4(%esp)
	cmpl	$0, 4(%esp)
	jl	.L942
	jg	.L948
	cmpl	$0, (%esp)
	jbe	.L942
.L948:
.LBB9463:
.LBB9464:
	.loc 3 516 0
	pushl	$421
.LCFI323:
	.cfi_def_cfa_offset 32
	pushl	$__func__.45045
.LCFI324:
	.cfi_def_cfa_offset 36
	pushl	$.LC10
.LCFI325:
	.cfi_def_cfa_offset 40
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
.LVL1579:
	addl	$12, %esp
.LCFI326:
	.cfi_def_cfa_offset 28
	orl	$-1, %eax
.LBE9464:
.LBE9463:
	.loc 19 422 0
	jmp	.L944
.LVL1580:
.L942:
.LBB9465:
.LBB9466:
.LBB9467:
.LBB9468:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE9468:
.LBE9467:
.LBE9466:
.LBE9465:
	.loc 19 425 0
	jmp	.L945
.LVL1581:
.L941:
	.loc 19 426 0
	xorl	%eax, %eax
	testl	$7733248, %edx
	je	.L944
	.loc 19 427 0
	pushl	%edx
.LCFI327:
	.cfi_def_cfa_offset 32
	pushl	$.LC18
.LCFI328:
	.cfi_def_cfa_offset 36
	.cfi_escape 0x2e,0x8
	call	__dprintf.1656
.LVL1582:
	popl	%ebx
.LCFI329:
	.cfi_def_cfa_offset 32
.LVL1583:
	popl	%esi
.LCFI330:
	.cfi_def_cfa_offset 28
.LVL1584:
	movl	$-2, %eax
.LVL1585:
.L944:
	.loc 19 431 0
	addl	$16, %esp
	popl	%ebx
.LVL1586:
	popl	%esi
.LVL1587:
	ret
	.cfi_endproc
.LFE2215:
	.size	wait_td.45040, .-wait_td.45040
	.section	.rodata.str1.1
.LC19:
	.string	"uhci_send_bulk failed\n"
	.section	.text.uhci_send_bulk.42390,"ax",@progbits
	.type	uhci_send_bulk.42390, @function
uhci_send_bulk.42390:
.LFB2216:
	.loc 19 438 0
	.cfi_startproc
.LVL1588:
	pushl	%ebp
.LCFI331:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI332:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI333:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI334:
	.cfi_def_cfa_offset 20
	subl	$132, %esp
.LCFI335:
	.cfi_def_cfa_offset 152
	movl	%edx, 48(%esp)
	movl	%ecx, 8(%esp)
.LBB9469:
	.loc 19 441 0
	leal	-12(%eax), %edx
.LVL1589:
	movl	%edx, 20(%esp)
.LBE9469:
.LBB9470:
	.loc 19 444 0
	leal	8(%eax), %edx
	movl	%edx, %ecx
.LVL1590:
	shrl	$4, %ecx
#APP
# 444 "src/usb-uhci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9471:
	andl	$15, %edx
#APP
# 444 "src/usb-uhci.c" 1
	movw %ES:(%edx), %dx
# 0 "" 2
.LVL1591:
#NO_APP
.LBE9471:
.LBE9470:
	movzwl	%dx, %edx
.LVL1592:
	movl	%edx, 16(%esp)
.LBB9472:
	.loc 19 445 0
	leal	7(%eax), %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
#APP
# 445 "src/usb-uhci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9473:
	andl	$15, %edx
#APP
# 445 "src/usb-uhci.c" 1
	movb %ES:(%edx), %cl
# 0 "" 2
#NO_APP
	movb	%cl, 43(%esp)
.LBE9473:
.LBE9472:
.LBB9474:
	.loc 19 446 0
	leal	6(%eax), %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
#APP
# 446 "src/usb-uhci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9475:
	andl	$15, %edx
#APP
# 446 "src/usb-uhci.c" 1
	movb %ES:(%edx), %cl
# 0 "" 2
.LVL1593:
#NO_APP
.LBE9475:
.LBE9474:
.LBB9476:
	.loc 19 447 0
	leal	5(%eax), %edx
	movl	%edx, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	shrl	$4, %ebx
#APP
# 447 "src/usb-uhci.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB9477:
	andl	$15, %edx
#APP
# 447 "src/usb-uhci.c" 1
	movb %ES:(%edx), %dl
# 0 "" 2
.LVL1594:
#NO_APP
.LBE9477:
.LBE9476:
	movzbl	%dl, %edx
.LVL1595:
	sall	$7, %edx
	movzbl	%cl, %ecx
.LVL1596:
	orl	%ecx, %edx
.LBB9478:
	.loc 19 448 0
	addl	$14, %eax
.LVL1597:
	movl	%eax, %ebx
	shrl	$4, %ebx
	movl	%ebx, 36(%esp)
#APP
# 448 "src/usb-uhci.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB9479:
	andl	$15, %eax
	movl	%eax, 32(%esp)
#APP
# 448 "src/usb-uhci.c" 1
	movb %ES:(%eax), %al
# 0 "" 2
.LVL1598:
#NO_APP
.LBE9479:
.LBE9478:
	cmpb	$1, %al
	sbbl	%esi, %esi
.LVL1599:
	notl	%esi
	andl	$524288, %esi
	.loc 19 452 0
	leal	68(%esp), %edi
	andl	$-16, %edi
	movl	$64, %eax
.LVL1600:
.L952:
.LBB9480:
.LBB9481:
	.loc 16 149 0
	decl	%eax
.LVL1601:
	movb	$0, (%eax,%edi)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L952
.LBE9481:
.LBE9480:
	.loc 19 456 0
.LBB9482:
.LBB9483:
.LBB9484:
	.loc 19 457 0
#APP
# 457 "src/usb-uhci.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL1602:
#NO_APP
.LBE9484:
	movl	20(%esp), %ecx
.LVL1603:
	addl	$4, %ecx
	movl	%ecx, %ebx
	shrl	$4, %ebx
	movl	%ebx, 28(%esp)
#APP
# 457 "src/usb-uhci.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
	andl	$15, %ecx
	movl	%ecx, 24(%esp)
	movzwl	%ax, %eax
.LVL1604:
	sall	$4, %eax
	addl	%edi, %eax
#APP
# 457 "src/usb-uhci.c" 1
	movl %eax, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE9483:
.LBE9482:
.LBB9485:
	.loc 19 473 0
	sall	$8, %edx
	movl	%edx, 44(%esp)
	xorl	%ebx, %ebx
.LVL1605:
	movl	%edi, (%esp)
.LBE9485:
	.loc 19 460 0
	jmp	.L953
.LVL1606:
.L962:
.LBB9487:
	.loc 19 461 0
	movl	%ebx, %ebp
.LVL1607:
	andl	$3, %ebp
	sall	$4, %ebp
	addl	(%esp), %ebp
.LVL1608:
	.loc 19 462 0
	movl	%ebp, %eax
.LVL1609:
	call	wait_td.45040
.LVL1610:
	.loc 19 463 0
	testl	%eax, %eax
.LVL1611:
	jne	.L954
	.loc 19 461 0
	incl	%ebx
.LVL1612:
	movl	152(%esp), %eax
.LVL1613:
	movl	16(%esp), %edi
	cmpl	%edi, %eax
.LVL1614:
	jle	.L955
	movl	%edi, %eax
.LVL1615:
.L955:
.LBB9486:
	.loc 19 469 0
#APP
# 469 "src/usb-uhci.c" 1
	movw %SS, %dx
# 0 "" 2
.LVL1616:
#NO_APP
.LBE9486:
	.loc 19 471 0
	movl	$1, %ecx
	cmpl	152(%esp), %eax
	je	.L957
	.loc 19 469 0
	movzwl	%dx, %edx
.LVL1617:
	sall	$4, %edx
	movl	%ebx, %ecx
	andl	$3, %ecx
	sall	$4, %ecx
	addl	(%esp), %ecx
	leal	(%edx,%ecx), %ecx
.LVL1618:
.L957:
	.loc 19 471 0
	movl	%ecx, (%ebp)
	.loc 19 472 0
	cmpl	$1, 48(%esp)
	sbbl	%ecx, %ecx
	andl	$120, %ecx
	addl	$105, %ecx
	movl	44(%esp), %edx
.LVL1619:
	orl	%esi, %edx
	leal	-1(%eax), %edi
	sall	$21, %edi
	orl	%edi, %edx
	orl	%ecx, %edx
	movl	%edx, 8(%ebp)
	.loc 19 475 0
	movl	8(%esp), %edx
	movl	%edx, 12(%ebp)
	.loc 19 476 0
	.loc 19 477 0
	cmpb	$1, 43(%esp)
	sbbl	%edx, %edx
	andl	$-67108864, %edx
	addl	$478150656, %edx
	movl	%edx, 4(%ebp)
	.loc 19 479 0
	xorl	$524288, %esi
.LVL1620:
	.loc 19 481 0
	addl	%eax, 8(%esp)
	.loc 19 482 0
	subl	%eax, 152(%esp)
.LVL1621:
.L953:
.LBE9487:
	.loc 19 460 0
	cmpl	$0, 152(%esp)
	jne	.L962
	movl	(%esp), %edi
	.loc 19 437 0
	leal	4(%ebx), %ebp
.LVL1622:
.L963:
.LBB9488:
	.loc 19 486 0
	movl	%ebx, %eax
.LVL1623:
	andl	$3, %eax
	sall	$4, %eax
	leal	(%edi,%eax), %eax
.LVL1624:
	incl	%ebx
	.loc 19 487 0
	call	wait_td.45040
.LVL1625:
	.loc 19 488 0
	testl	%eax, %eax
.LVL1626:
	jne	.L954
.LBE9488:
	.loc 19 485 0
	cmpl	%ebp, %ebx
	jne	.L963
.LBB9489:
.LBB9490:
	.loc 19 492 0
#APP
# 492 "src/usb-uhci.c" 1
	movw 36(%esp), %ES
# 0 "" 2
#NO_APP
	testl	%esi, %esi
	setne	%al
.LVL1627:
	movl	32(%esp), %ecx
#APP
# 492 "src/usb-uhci.c" 1
	movb %al, %ES:(%ecx)
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
.LBE9490:
.LBE9489:
	.loc 19 493 0
	jmp	.L964
.LVL1628:
.L954:
	.loc 19 495 0
	pushl	$.LC19
.LCFI336:
	.cfi_def_cfa_offset 156
	.cfi_escape 0x2e,0x4
	call	__dprintf.1656
.LVL1629:
	popl	%edi
.LCFI337:
	.cfi_def_cfa_offset 152
.LBB9491:
.LBB9492:
	.loc 19 496 0
#APP
# 496 "src/usb-uhci.c" 1
	movw 28(%esp), %ES
# 0 "" 2
#NO_APP
	movl	$1, %eax
	movl	24(%esp), %ebx
.LVL1630:
#APP
# 496 "src/usb-uhci.c" 1
	movl %eax, %ES:(%ebx)
# 0 "" 2
#NO_APP
.LBE9492:
.LBE9491:
.LBB9493:
	.loc 19 497 0
	movl	20(%esp), %eax
	addl	$24, %eax
	movl	%eax, %edx
	shrl	$4, %edx
#APP
# 497 "src/usb-uhci.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9494:
	andl	$15, %eax
#APP
# 497 "src/usb-uhci.c" 1
	movw %ES:(%eax), %dx
# 0 "" 2
.LVL1631:
#NO_APP
.LBE9494:
.LBE9493:
.LBB9495:
.LBB9496:
	.loc 19 234 0
	.loc 19 235 0
	leal	6(%edx), %edi
.LBB9497:
.LBB9498:
	.loc 2 98 0
	movl	%edi, %edx
.LVL1632:
#APP
# 98 "src/ioport.h" 1
	inw %dx, %ax
# 0 "" 2
#NO_APP
	movl	%eax, %ecx
.LVL1633:
.LBE9498:
.LBE9497:
.LBB9499:
.LBB9500:
.LBB9501:
	.loc 7 134 0
#APP
# 134 "src/clock.c" 1
	movl %CS:cpu_khz, %ebx
# 0 "" 2
.LVL1634:
#NO_APP
.LBE9501:
.LBB9502:
.LBB9503:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE9503:
.LBE9502:
	.loc 7 135 0
	movl	$5000, %esi
.LVL1635:
	movl	%ebx, %eax
	mull	%esi
	movl	%eax, %ebx
.LVL1636:
	movl	%edx, %esi
.LVL1637:
	addl	(%esp), %ebx
.LVL1638:
	adcl	4(%esp), %esi
.LVL1639:
.L968:
.LBE9500:
.LBE9499:
.LBB9504:
.LBB9505:
	.loc 2 98 0
	movl	%edi, %edx
#APP
# 98 "src/ioport.h" 1
	inw %dx, %ax
# 0 "" 2
.LVL1640:
#NO_APP
.LBE9505:
.LBE9504:
	.loc 19 238 0
	cmpw	%cx, %ax
	jne	.L965
.LBB9506:
.LBB9507:
.LBB9508:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1641:
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE9508:
.LBE9507:
.LBE9506:
	.loc 19 240 0
	subl	%ebx, (%esp)
	sbbl	%esi, 4(%esp)
	cmpl	$0, 4(%esp)
	jl	.L966
	jg	.L970
	cmpl	$0, (%esp)
	jbe	.L966
.L970:
.LBB9509:
.LBB9510:
	.loc 3 516 0
	pushl	$241
.LCFI338:
	.cfi_def_cfa_offset 156
	pushl	$__func__.44820
.LCFI339:
	.cfi_def_cfa_offset 160
	pushl	$.LC10
.LCFI340:
	.cfi_def_cfa_offset 164
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
.LVL1642:
	addl	$12, %esp
.LCFI341:
	.cfi_def_cfa_offset 152
	jmp	.L965
.LVL1643:
.L966:
.LBE9510:
.LBE9509:
.LBB9511:
.LBB9512:
.LBB9513:
.LBB9514:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
	jmp	.L968
.LVL1644:
.L965:
	orl	$-1, %eax
.LVL1645:
.L964:
.LBE9514:
.LBE9513:
.LBE9512:
.LBE9511:
.LBE9496:
.LBE9495:
	.loc 19 499 0
	addl	$132, %esp
	popl	%ebx
.LVL1646:
	popl	%esi
.LVL1647:
	popl	%edi
	popl	%ebp
.LVL1648:
	ret	$4
	.cfi_endproc
.LFE2216:
	.size	uhci_send_bulk.42390, .-uhci_send_bulk.42390
	.section	.rodata.str1.1
.LC20:
	.string	"ehci_wait_td error - status=%x\n"
	.section	.text.ehci_wait_td.49174,"ax",@progbits
	.type	ehci_wait_td.49174, @function
ehci_wait_td.49174:
.LFB2389:
	.loc 21 562 0
	.cfi_startproc
.LVL1649:
	pushl	%esi
.LCFI342:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.LCFI343:
	.cfi_def_cfa_offset 12
	subl	$16, %esp
.LCFI344:
	.cfi_def_cfa_offset 28
	movl	%eax, %ecx
.LBB9515:
.LBB9516:
.LBB9517:
	.loc 7 134 0
#APP
# 134 "src/clock.c" 1
	movl %CS:cpu_khz, %esi
# 0 "" 2
.LVL1650:
#NO_APP
.LBE9517:
.LBB9518:
.LBB9519:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1651:
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE9519:
.LBE9518:
	.loc 7 135 0
	movl	$5000, %ebx
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%esi, %eax
	mull	%ebx
	movl	%eax, %ebx
.LVL1652:
	movl	%edx, %esi
.LVL1653:
	addl	(%esp), %ebx
.LVL1654:
	adcl	4(%esp), %esi
.LVL1655:
.L978:
.LBE9516:
.LBE9515:
	.loc 21 566 0
	movl	8(%ecx), %edx
.LVL1656:
	.loc 21 567 0
	testb	%dl, %dl
	jns	.L974
.LBB9520:
.LBB9521:
.LBB9522:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LVL1657:
.LBE9522:
.LBE9521:
.LBE9520:
	.loc 21 569 0
	subl	%ebx, (%esp)
	sbbl	%esi, 4(%esp)
	cmpl	$0, 4(%esp)
	jl	.L975
	jg	.L981
	cmpl	$0, (%esp)
	jbe	.L975
.L981:
.LBB9523:
.LBB9524:
	.loc 3 516 0
	pushl	$570
.LCFI345:
	.cfi_def_cfa_offset 32
	pushl	$__func__.49179
.LCFI346:
	.cfi_def_cfa_offset 36
	pushl	$.LC10
.LCFI347:
	.cfi_def_cfa_offset 40
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
.LVL1658:
	addl	$12, %esp
.LCFI348:
	.cfi_def_cfa_offset 28
	orl	$-1, %eax
.LBE9524:
.LBE9523:
	.loc 21 571 0
	jmp	.L977
.LVL1659:
.L975:
.LBB9525:
.LBB9526:
.LBB9527:
.LBB9528:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE9528:
.LBE9527:
.LBE9526:
.LBE9525:
	.loc 21 574 0
	jmp	.L978
.LVL1660:
.L974:
	.loc 21 575 0
	xorl	%eax, %eax
	testb	$64, %dl
	je	.L977
	.loc 21 576 0
	pushl	%edx
.LCFI349:
	.cfi_def_cfa_offset 32
	pushl	$.LC20
.LCFI350:
	.cfi_def_cfa_offset 36
	.cfi_escape 0x2e,0x8
	call	__dprintf.1656
.LVL1661:
	popl	%eax
.LCFI351:
	.cfi_def_cfa_offset 32
	popl	%edx
.LCFI352:
	.cfi_def_cfa_offset 28
	movl	$-2, %eax
.LVL1662:
.L977:
	.loc 21 580 0
	addl	$16, %esp
	popl	%ebx
.LVL1663:
	popl	%esi
.LVL1664:
	ret
	.cfi_endproc
.LFE2389:
	.size	ehci_wait_td.49174, .-ehci_wait_td.49174
	.section	.rodata.str1.1
.LC21:
	.string	"ehci_send_bulk failed\n"
	.section	.text.ehci_send_bulk.42493,"ax",@progbits
	.type	ehci_send_bulk.42493, @function
ehci_send_bulk.42493:
.LFB2390:
	.loc 21 586 0
	.cfi_startproc
.LVL1665:
	pushl	%ebp
.LCFI353:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI354:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI355:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI356:
	.cfi_def_cfa_offset 20
	subl	$196, %esp
.LCFI357:
	.cfi_def_cfa_offset 216
	movl	%edx, 28(%esp)
	movl	%ecx, 8(%esp)
.LBB9529:
	.loc 21 589 0
	leal	-60(%eax), %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LVL1666:
.LBE9529:
	.loc 21 595 0
	leal	68(%esp), %edi
	andl	$-32, %edi
	movl	$128, %eax
.LVL1667:
.L983:
.LBB9530:
.LBB9531:
	.loc 16 149 0
	decl	%eax
.LVL1668:
	movb	$0, (%eax,%edi)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L983
.LBE9531:
.LBE9530:
.LBB9532:
	.loc 21 599 0
	leal	68(%ebx), %eax
.LVL1669:
	movl	%eax, %edx
.LVL1670:
	shrl	$4, %edx
#APP
# 599 "src/usb-ehci.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB9533:
	andl	$15, %eax
#APP
# 599 "src/usb-ehci.c" 1
	movw %ES:(%eax), %dx
# 0 "" 2
.LVL1671:
#NO_APP
.LBE9533:
.LBE9532:
.LBB9534:
.LBB9535:
.LBB9536:
	.loc 21 600 0
	leal	67(%ebx), %eax
	movl	%eax, %ecx
.LVL1672:
	shrl	$4, %ecx
#APP
# 600 "src/usb-ehci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9537:
	andl	$15, %eax
#APP
# 600 "src/usb-ehci.c" 1
	movb %ES:(%eax), %cl
# 0 "" 2
#NO_APP
	movb	%cl, 12(%esp)
.LBE9537:
.LBE9536:
.LBB9538:
	leal	65(%ebx), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
#APP
# 600 "src/usb-ehci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9539:
	andl	$15, %eax
#APP
# 600 "src/usb-ehci.c" 1
	movb %ES:(%eax), %cl
# 0 "" 2
#NO_APP
	movl	%ecx, %esi
.LVL1673:
.LBE9539:
.LBE9538:
.LBB9540:
	leal	66(%ebx), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
#APP
# 600 "src/usb-ehci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9541:
	andl	$15, %eax
#APP
# 600 "src/usb-ehci.c" 1
	movb %ES:(%eax), %al
# 0 "" 2
.LVL1674:
#NO_APP
.LBE9541:
.LBE9540:
	leal	4(%ebx), %ecx
	movl	%ecx, %ebp
	shrl	$4, %ebp
#APP
# 600 "src/usb-ehci.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
	andl	$15, %ecx
	movzbl	%al, %eax
.LVL1675:
	orl	$1073741824, %eax
	movzwl	%dx, %edx
.LVL1676:
	movl	%edx, %ebp
	sall	$16, %ebp
	orl	%ebp, %eax
	movzbl	12(%esp), %ebp
	sall	$12, %ebp
	orl	%ebp, %eax
	andl	$255, %esi
.LVL1677:
	sall	$8, %esi
	orl	%esi, %eax
#APP
# 600 "src/usb-ehci.c" 1
	movl %eax, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE9535:
.LBE9534:
.LBB9542:
.LBB9543:
.LBB9544:
	.loc 21 606 0
	leal	71(%ebx), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
#APP
# 606 "src/usb-ehci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9545:
	andl	$15, %eax
#APP
# 606 "src/usb-ehci.c" 1
	movb %ES:(%eax), %cl
# 0 "" 2
#NO_APP
	movl	%ecx, %esi
.LVL1678:
.LBE9545:
.LBE9544:
.LBB9546:
	leal	70(%ebx), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
#APP
# 606 "src/usb-ehci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB9547:
	andl	$15, %eax
#APP
# 606 "src/usb-ehci.c" 1
	movb %ES:(%eax), %cl
# 0 "" 2
.LVL1679:
#NO_APP
.LBE9547:
.LBE9546:
	leal	8(%ebx), %eax
	movl	%eax, %ebp
	shrl	$4, %ebp
#APP
# 606 "src/usb-ehci.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
	andl	$15, %eax
	andl	$255, %esi
.LVL1680:
	sall	$23, %esi
	movzbl	%cl, %ecx
.LVL1681:
	sall	$16, %ecx
	orl	%ecx, %esi
	orl	$1073741824, %esi
#APP
# 606 "src/usb-ehci.c" 1
	movl %esi, %ES:(%eax)
# 0 "" 2
#NO_APP
.LBE9543:
.LBE9542:
	.loc 21 610 0
.LBB9548:
.LBB9549:
.LBB9550:
	.loc 21 611 0
#APP
# 611 "src/usb-ehci.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL1682:
#NO_APP
.LBE9550:
	leal	16(%ebx), %ecx
	movl	%ecx, %esi
	shrl	$4, %esi
	movl	%esi, 16(%esp)
#APP
# 611 "src/usb-ehci.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
	andl	$15, %ecx
	movl	%ecx, 12(%esp)
	movzwl	%ax, %eax
.LVL1683:
	sall	$4, %eax
	addl	%edi, %eax
#APP
# 611 "src/usb-ehci.c" 1
	movl %eax, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE9549:
.LBE9548:
	.loc 21 612 0
.LBB9551:
.LBB9552:
.LBB9553:
	.loc 21 613 0
	leal	24(%ebx), %ecx
	movl	%ecx, %esi
	shrl	$4, %esi
#APP
# 613 "src/usb-ehci.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB9554:
	andl	$15, %ecx
#APP
# 613 "src/usb-ehci.c" 1
	movl %ES:(%ecx), %eax
# 0 "" 2
#NO_APP
.LBE9554:
.LBE9553:
	andl	$-2147483648, %eax
#APP
# 613 "src/usb-ehci.c" 1
	movl %eax, %ES:(%ecx)
# 0 "" 2
#NO_APP
	xorl	%esi, %esi
.LVL1684:
.LBE9552:
.LBE9551:
.LBB9555:
.LBB9556:
.LBB9557:
.LBB9558:
	.loc 21 440 0
	negl	%edx
.LVL1685:
	movl	%edx, 32(%esp)
.LBE9558:
.LBE9557:
.LBE9556:
.LBE9555:
	.loc 21 616 0
	jmp	.L984
.LVL1686:
.L995:
.LBB9564:
	.loc 21 617 0
	movl	%esi, %ebp
.LVL1687:
	andl	$3, %ebp
	sall	$5, %ebp
	leal	(%edi,%ebp), %ebp
.LVL1688:
	.loc 21 618 0
	movl	%ebp, %eax
.LVL1689:
	call	ehci_wait_td.49174
.LVL1690:
	.loc 21 619 0
	testl	%eax, %eax
.LVL1691:
	jne	.L985
.LBB9562:
	.loc 21 622 0
#APP
# 622 "src/usb-ehci.c" 1
	movw %SS, 26(%esp)
# 0 "" 2
#NO_APP
.LBE9562:
.LBB9563:
.LBB9561:
	.loc 21 435 0
	leal	12(%ebp), %ecx
.LVL1692:
	.loc 21 585 0
	leal	32(%ebp), %eax
.LVL1693:
	movl	%eax, 20(%esp)
	movl	216(%esp), %edx
	movl	%edx, 4(%esp)
	movl	8(%esp), %eax
.LVL1694:
.L990:
.LBB9559:
	.loc 21 437 0
	cmpl	20(%esp), %ecx
	jne	.L986
	.loc 21 440 0
	subl	8(%esp), %eax
.LVL1695:
	andl	32(%esp), %eax
	jmp	.L987
.LVL1696:
.L986:
	.loc 21 442 0
	movl	%eax, %edx
	andl	$4095, %edx
	movl	%edx, (%esp)
	movl	$4096, %edx
	subl	(%esp), %edx
	movl	%edx, (%esp)
	movl	4(%esp), %edx
	cmpl	%edx, (%esp)
	jbe	.L988
	movl	%edx, (%esp)
.L988:
	.loc 21 445 0
	movl	%eax, (%ecx)
	.loc 21 447 0
	addl	(%esp), %eax
.LVL1697:
.LBE9559:
	.loc 21 436 0
	movl	(%esp), %edx
	subl	%edx, 4(%esp)
	je	.L989
.LBB9560:
	.loc 21 448 0
	addl	$4, %ecx
.LVL1698:
	jmp	.L990
.L989:
.LBE9560:
	.loc 21 450 0
	subl	8(%esp), %eax
.LVL1699:
.L987:
.LBE9561:
.LBE9563:
	.loc 21 617 0
	incl	%esi
.LVL1700:
	.loc 21 626 0
	movl	$1, %edx
	cmpl	216(%esp), %eax
	je	.L992
	.loc 21 622 0
	movzwl	26(%esp), %edx
	sall	$4, %edx
	movl	%esi, %ecx
.LVL1701:
	andl	$3, %ecx
	sall	$5, %ecx
	leal	(%edi,%ecx), %ecx
	addl	%ecx, %edx
.LVL1702:
.L992:
	.loc 21 626 0
	movl	%edx, (%ebp)
	.loc 21 627 0
	movl	$1, 4(%ebp)
	.loc 21 628 0
	.loc 21 630 0
	cmpl	$1, 28(%esp)
	sbbl	%ecx, %ecx
.LVL1703:
	notl	%ecx
	andl	$256, %ecx
	.loc 21 629 0
	movl	%eax, %edx
	sall	$16, %edx
	andl	$2147418112, %edx
	orl	$3200, %edx
	orl	%ecx, %edx
	movl	%edx, 8(%ebp)
	.loc 21 632 0
	addl	%eax, 8(%esp)
	.loc 21 633 0
	subl	%eax, 216(%esp)
.LVL1704:
.L984:
.LBE9564:
	.loc 21 616 0
	cmpl	$0, 216(%esp)
	jne	.L995
	.loc 21 585 0
	leal	4(%esi), %ebp
.LVL1705:
.L996:
.LBB9565:
	.loc 21 637 0
	movl	%esi, %eax
.LVL1706:
	andl	$3, %eax
	sall	$5, %eax
	leal	(%edi,%eax), %eax
.LVL1707:
	incl	%esi
	.loc 21 638 0
	call	ehci_wait_td.49174
.LVL1708:
	.loc 21 639 0
	testl	%eax, %eax
.LVL1709:
	jne	.L985
.LBE9565:
	.loc 21 636 0
	cmpl	%ebp, %esi
	jne	.L996
	jmp	.L997
.LVL1710:
.L985:
	.loc 21 645 0
	pushl	$.LC21
.LCFI358:
	.cfi_def_cfa_offset 220
	.cfi_escape 0x2e,0x4
	call	__dprintf.1656
.LVL1711:
	popl	%ecx
.LCFI359:
	.cfi_def_cfa_offset 216
.LBB9566:
.LBB9567:
	.loc 21 646 0
#APP
# 646 "src/usb-ehci.c" 1
	movw 16(%esp), %ES
# 0 "" 2
#NO_APP
	movl	$1, %eax
	movl	12(%esp), %ecx
#APP
# 646 "src/usb-ehci.c" 1
	movl %eax, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE9567:
.LBE9566:
.LBB9568:
.LBB9569:
	.loc 21 647 0
	leal	20(%ebx), %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
#APP
# 647 "src/usb-ehci.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	andl	$15, %edx
#APP
# 647 "src/usb-ehci.c" 1
	movl %eax, %ES:(%edx)
# 0 "" 2
#NO_APP
.LBE9569:
.LBE9568:
.LBB9570:
.LBB9571:
	.loc 21 649 0
	addl	$60, %ebx
.LVL1712:
	shrl	$4, %ebx
#APP
# 649 "src/usb-ehci.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBE9571:
.LBE9570:
.LBB9572:
.LBB9573:
.LBB9574:
.LBB9575:
	.loc 7 127 0
#APP
# 127 "src/clock.c" 1
	movl %CS:cpu_khz, %ecx
# 0 "" 2
.LVL1713:
#NO_APP
.LBE9575:
.LBB9576:
.LBB9577:
.LBB9578:
.LBB9579:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1714:
#NO_APP
.LBE9579:
.LBE9578:
	.loc 7 105 0
	imull	$10, %ecx, %ecx
.LVL1715:
	xorl	%ebx, %ebx
.LVL1716:
	addl	%eax, %ecx
.LVL1717:
	adcl	%edx, %ebx
.LVL1718:
	jmp	.L998
.LVL1719:
.L999:
.LBB9580:
.LBB9581:
.LBB9582:
.LBB9583:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
.LVL1720:
#NO_APP
.L998:
.LBE9583:
.LBE9582:
.LBE9581:
.LBE9580:
.LBB9584:
.LBB9585:
.LBB9586:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL1721:
#NO_APP
.LBE9586:
.LBE9585:
.LBE9584:
	.loc 7 106 0
	subl	%ecx, %eax
	sbbl	%ebx, %edx
.LVL1722:
	cmpl	$0, %edx
	jl	.L999
	jg	.L1002
	cmpl	$0, %eax
	jbe	.L999
.L1002:
	orl	$-1, %eax
.LVL1723:
.L997:
.LVL1724:
.LBE9577:
.LBE9576:
.LBE9574:
.LBE9573:
.LBE9572:
	.loc 21 653 0
	addl	$196, %esp
	popl	%ebx
.LVL1725:
	popl	%esi
.LVL1726:
	popl	%edi
	popl	%ebp
.LVL1727:
	ret	$4
	.cfi_endproc
.LFE2390:
	.size	ehci_send_bulk.42493, .-ehci_send_bulk.42493
	.section	.text.usb_send_bulk.42666,"ax",@progbits
	.type	usb_send_bulk.42666, @function
usb_send_bulk.42666:
.LFB2120:
	.loc 18 105 0
	.cfi_startproc
	pushl	%ebp
.LCFI360:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI361:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI362:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI363:
	.cfi_def_cfa_offset 20
	subl	$4, %esp
.LCFI364:
	.cfi_def_cfa_offset 24
	movl	24(%esp), %ebp
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LBB9587:
	.loc 18 106 0
	leal	4(%eax), %esi
	movl	%esi, %edi
	shrl	$4, %edi
#APP
# 106 "src/usb.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB9588:
	andl	$15, %esi
#APP
# 106 "src/usb.c" 1
	movb %ES:(%esi), %bl
# 0 "" 2
#NO_APP
	movb	%bl, 3(%esp)
.LBE9588:
.LBE9587:
	cmpb	$2, %bl
	je	.L1009
	cmpb	$3, %bl
	jne	.L1013
	jmp	.L1015
.L1009:
	.loc 18 115 0
	orl	$-1, %eax
	popl	%edi
.LCFI365:
	.cfi_def_cfa_offset 20
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.L1013:
	.loc 18 109 0
	movl	%ebp, 24(%esp)
	.loc 18 115 0
	popl	%esi
.LCFI366:
	.cfi_def_cfa_offset 16
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	.loc 18 109 0
	jmp	uhci_send_bulk.42390
.LCFI367:
	.cfi_def_cfa_offset 12
.L1015:
	.loc 18 113 0
	movl	%ebp, 24(%esp)
	.loc 18 115 0
	popl	%ebx
.LCFI368:
	.cfi_def_cfa_offset 8
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	.loc 18 113 0
	jmp	ehci_send_bulk.42493
.LCFI369:
	.cfi_def_cfa_offset 4
	.cfi_endproc
.LFE2120:
	.size	usb_send_bulk.42666, .-usb_send_bulk.42666
	.section	.rodata.str1.1
.LC22:
	.string	"USB transmission failed\n"
	.section	.text.cdb_read.14847,"ax",@progbits
	.type	cdb_read.14847, @function
cdb_read.14847:
.LFB2041:
	.file 32 "src/blockcmd.c"
	.loc 32 71 0
	.cfi_startproc
.LVL1728:
	pushl	%ebp
.LCFI370:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI371:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI372:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI373:
	.cfi_def_cfa_offset 20
	subl	$84, %esp
.LCFI374:
	.cfi_def_cfa_offset 104
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 32 71 0
	movl	$16, %eax
.LVL1729:
.LBB9639:
.LBB9640:
	.loc 16 149 0
	leal	43(%esp), %edx
.L1017:
	decl	%eax
.LVL1730:
	movb	$0, (%edx,%eax)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L1017
.LBE9640:
.LBE9639:
.LBB9641:
.LBB9642:
	.loc 8 105 0
	movl	(%ebx), %eax
.LVL1731:
#APP
# 105 "src/util.h" 1
	bswapl %eax
# 0 "" 2
#NO_APP
.LBE9642:
.LBE9641:
	.loc 32 74 0
	movb	$40, 43(%esp)
	.loc 32 75 0
	movl	%eax, 45(%esp)
	.loc 32 76 0
	movl	16(%ebx), %eax
.LVL1732:
	movzwl	%ax, %edx
	movl	%edx, %ecx
	sall	$8, %ecx
	shrw	$8, %ax
	orl	%ecx, %eax
	movw	%ax, 50(%esp)
.LBB9643:
	.loc 32 77 0
	movl	12(%ebx), %ecx
#APP
# 77 "src/blockcmd.c" 1
	movw %CS:26(%ecx), %bp
# 0 "" 2
.LVL1733:
#NO_APP
.LBE9643:
	movzwl	%bp, %eax
	movl	%eax, 8(%esp)
.LBB9644:
.LBB9645:
.LBB9683:
	.loc 32 19 0
#APP
# 19 "src/blockcmd.c" 1
	movb %CS:(%ecx), %al
# 0 "" 2
.LVL1734:
#NO_APP
.LBE9683:
	.loc 32 20 0
	cmpb	$3, %al
	je	.L1019
	cmpb	$6, %al
	jne	.L1039
	jmp	.L1043
.L1019:
.LBB9657:
.LBB9658:
.LBB9672:
	.loc 27 607 0
#APP
# 607 "src/ata.c" 1
	movl %CS:36(%ecx), %eax
# 0 "" 2
.LVL1735:
#NO_APP
.LBE9672:
.LBB9671:
	.loc 27 608 0
#APP
# 608 "src/ata.c" 1
	movw %CS:-983040(%eax), %dx
# 0 "" 2
#NO_APP
	movw	%dx, (%esp)
.LBE9671:
.LBB9670:
	.loc 27 609 0
#APP
# 609 "src/ata.c" 1
	movw %CS:-983038(%eax), %dx
# 0 "" 2
.LVL1736:
#NO_APP
	movl	$12, %eax
.LVL1737:
.LBE9670:
.LBB9668:
.LBB9669:
	.loc 16 149 0
	leal	72(%esp), %esi
.L1021:
	decl	%eax
.LVL1738:
	movb	$0, (%esi,%eax)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L1021
.LBE9669:
.LBE9668:
	.loc 27 613 0
	movl	%ebp, %eax
.LVL1739:
	movb	%al, 75(%esp)
	.loc 27 614 0
	movl	%ebp, %eax
.LVL1740:
	shrw	$8, %ax
	movb	%al, 76(%esp)
	.loc 27 615 0
	movb	$-96, 78(%esp)
	.loc 27 618 0
	leal	2(%edx), %ebp
.LVL1741:
.LBB9666:
.LBB9667:
	.loc 2 83 0
	movb	$10, %al
	movl	%ebp, %edx
.LVL1742:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE9667:
.LBE9666:
	.loc 27 620 0
	movl	%esi, %edx
	movl	%ecx, %eax
	call	send_cmd.15132
	movl	%eax, %ecx
.LVL1743:
	.loc 27 621 0
	testl	%eax, %eax
	jne	.L1022
.LVL1744:
	.loc 27 623 0
	movzwl	(%esp), %edi
.LBB9664:
.LBB9665:
	.loc 27 235 0
	movl	%edi, %eax
.LVL1745:
	call	ndelay_await_not_bsy.14892
.LVL1746:
	movl	%eax, %ecx
.LVL1747:
	.loc 27 236 0
	testl	%eax, %eax
	js	.L1022
.LVL1748:
	.loc 27 239 0
	testb	$1, %al
	je	.L1023
	movl	$-4, %ecx
.LVL1749:
	jmp	.L1022
.LVL1750:
.L1023:
	.loc 27 244 0
	andb	$8, %cl
.LVL1751:
	jne	.L1024
	movl	$-5, %ecx
.LVL1752:
	jmp	.L1022
.LVL1753:
.L1040:
.LBE9665:
.LBE9664:
	.loc 27 636 0
	testb	$1, %cl
	je	.L1025
.LVL1754:
.LBB9661:
.LBB9662:
.LBB9663:
	.loc 2 93 0
	movl	(%esp), %edx
	incl	%edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL1755:
#NO_APP
	movl	$-2, %ecx
.LVL1756:
	jmp	.L1022
.LVL1757:
.L1025:
.LBE9663:
.LBE9662:
.LBE9661:
	.loc 27 645 0
	andb	$8, %cl
.LVL1758:
	jne	.L1026
	movl	$-3, %ecx
.LVL1759:
	jmp	.L1022
.L1026:
	.loc 27 651 0
	movl	8(%esp), %ecx
.LVL1760:
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	ata_pio_transfer.15388
	movl	%eax, %ecx
.LVL1761:
.L1022:
.LBB9659:
.LBB9660:
	.loc 2 83 0
	movb	$8, %al
.LVL1762:
	movl	%ebp, %edx
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE9660:
.LBE9659:
	.loc 27 656 0
	cmpl	$1, %ecx
	sbbl	%eax, %eax
	notl	%eax
	andl	$12, %eax
	jmp	.L1028
.LVL1763:
.L1043:
.LBE9658:
.LBE9657:
.LBB9646:
.LBB9647:
.LBB9648:
	.file 33 "src/usb-msc.c"
	.loc 33 57 0
#APP
# 57 "src/usb-msc.c" 1
	movl %CS:36(%ecx), %eax
# 0 "" 2
.LVL1764:
#NO_APP
	movl	%eax, 4(%esp)
.LBE9648:
.LBB9649:
	.loc 33 58 0
#APP
# 58 "src/usb-msc.c" 1
	movl %CS:40(%ecx), %eax
# 0 "" 2
.LVL1765:
#NO_APP
.LBE9649:
	.loc 33 61 0
	imull	8(%esp), %edx
	movl	%edx, (%esp)
	movl	$31, %edx
.LVL1766:
.LBB9650:
.LBB9651:
	.loc 16 149 0
	leal	12(%esp), %ecx
.L1029:
	decl	%edx
.LVL1767:
	movb	$0, (%ecx,%edx)
	.loc 16 148 0
	testl	%edx, %edx
	jne	.L1029
.LBE9651:
.LBE9650:
	.loc 33 64 0
	movl	$1128420181, 12(%esp)
	.loc 33 65 0
	movl	$999, 16(%esp)
	.loc 33 66 0
	movl	(%esp), %edx
.LVL1768:
	movl	%edx, 20(%esp)
	.loc 33 67 0
	movb	$-128, 24(%esp)
	.loc 33 68 0
	movb	$0, 25(%esp)
	.loc 33 69 0
	movb	$12, 26(%esp)
.LBB9652:
.LBB9653:
.LBB9654:
	.loc 16 186 0
#APP
# 186 "src/util.c" 1
	movw %SS, %dx
# 0 "" 2
.LVL1769:
#NO_APP
.LBE9654:
#APP
# 186 "src/util.c" 1
	movw %dx, %ES
# 0 "" 2
	.loc 32 77 0
#NO_APP
	leal	43(%esp), %esi
	.loc 16 190 0
	movl	$12, %ecx
.LVL1770:
	leal	27(%esp), %edi
.LVL1771:
#APP
# 190 "src/util.c" 1
	rep movsb (%esi),%es:(%edi)
# 0 "" 2
.LVL1772:
#NO_APP
.LBE9653:
.LBE9652:
.LBB9655:
	.loc 33 74 0
#APP
# 74 "src/usb-msc.c" 1
	movw %SS, %dx
# 0 "" 2
.LVL1773:
#NO_APP
.LBE9655:
	.loc 33 73 0
	movzwl	%dx, %edx
.LVL1774:
	sall	$4, %edx
	leal	12(%esp,%edx), %ecx
.LVL1775:
	pushl	$31
.LCFI375:
	.cfi_def_cfa_offset 108
	xorl	%edx, %edx
	.cfi_escape 0x2e,0x4
	call	usb_send_bulk.42666
.LCFI376:
	.cfi_def_cfa_offset 104
.LVL1776:
	.loc 33 75 0
	testl	%eax, %eax
.LVL1777:
	jne	.L1032
	.loc 33 79 0
	movl	8(%ebx), %ecx
	pushl	(%esp)
.LCFI377:
	.cfi_def_cfa_offset 108
	movl	$128, %edx
	movl	8(%esp), %eax
.LVL1778:
	call	usb_send_bulk.42666
.LCFI378:
	.cfi_def_cfa_offset 104
	.loc 33 80 0
	testl	%eax, %eax
.LVL1779:
	jne	.L1032
.LBB9656:
	.loc 33 86 0
#APP
# 86 "src/usb-msc.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL1780:
#NO_APP
.LBE9656:
	.loc 33 85 0
	movzwl	%ax, %eax
.LVL1781:
	sall	$4, %eax
	leal	59(%esp,%eax), %ecx
	pushl	$13
.LCFI379:
	.cfi_def_cfa_offset 108
	movl	$128, %edx
	movl	8(%esp), %eax
	call	usb_send_bulk.42666
.LCFI380:
	.cfi_def_cfa_offset 104
	.loc 33 87 0
	testl	%eax, %eax
.LVL1782:
	jne	.L1032
	.loc 33 90 0
	movb	71(%esp), %dl
	testb	%dl, %dl
	je	.L1028
	.loc 33 92 0
	cmpb	$2, %dl
	je	.L1032
	.loc 33 95 0
	movzwl	%bp, %ebp
.LVL1783:
	movl	67(%esp), %eax
.LVL1784:
	xorl	%edx, %edx
	divl	%ebp
	subw	%ax, 16(%ebx)
	jmp	.L1041
.LVL1785:
.L1032:
	.loc 33 100 0
	pushl	$.LC22
.LCFI381:
	.cfi_def_cfa_offset 108
	call	__dprintf.1656
.LVL1786:
	popl	%ebp
.LCFI382:
	.cfi_def_cfa_offset 104
.LVL1787:
	.loc 33 101 0
	movw	$0, 16(%ebx)
.LVL1788:
.L1041:
	movl	$12, %eax
	jmp	.L1028
.LVL1789:
.L1039:
.LBE9647:
.LBE9646:
	.loc 32 26 0
	movw	$0, 16(%ebx)
	movl	$1, %eax
.LVL1790:
.L1028:
.LVL1791:
.LBE9645:
.LBE9644:
	.loc 32 78 0
	addl	$84, %esp
	popl	%ebx
.LVL1792:
	popl	%esi
.LVL1793:
	popl	%edi
.LVL1794:
	popl	%ebp
.LVL1795:
	ret
.LVL1796:
.L1024:
.LBB9686:
.LBB9685:
.LBB9684:
.LBB9682:
.LBB9673:
	.loc 27 628 0
#APP
# 628 "src/ata.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL1797:
#NO_APP
.LBE9673:
	movzwl	%ax, %eax
.LVL1798:
	sall	$4, %eax
	leal	43(%esp,%eax), %esi
.LBB9674:
.LBB9675:
	.loc 26 154 0
	movl	%esi, %eax
	shrl	$4, %eax
#APP
# 154 "src/farptr.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9676:
.LBB9677:
	.loc 2 125 0
	andl	$15, %esi
	movl	$6, %ecx
.LVL1799:
	movl	(%esp), %edx
#APP
# 125 "src/ioport.h" 1
	rep outsw %es:(%esi), (%dx)
# 0 "" 2
.LVL1800:
#NO_APP
.LBE9677:
.LBE9676:
.LBE9675:
.LBE9674:
.LBB9678:
.LBB9679:
.LBB9680:
.LBB9681:
	.loc 2 93 0
	movl	%ebp, %edx
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL1801:
#NO_APP
.LBE9681:
.LBE9680:
	.loc 27 67 0
	movl	%edi, %eax
.LVL1802:
	.cfi_escape 0x2e,0x0
	call	await_not_bsy.14871
.LVL1803:
	movl	%eax, %ecx
.LVL1804:
.LBE9679:
.LBE9678:
	.loc 27 631 0
	testl	%eax, %eax
	jns	.L1040
.LVL1805:
	jmp	.L1022
.LBE9682:
.LBE9684:
.LBE9685:
.LBE9686:
	.cfi_endproc
.LFE2041:
	.size	cdb_read.14847, .-cdb_read.14847
	.section	.rodata.str1.1
.LC23:
	.string	"stub %s:%d:\n"
	.section	.text.disk_1305.62793,"ax",@progbits
	.type	disk_1305.62793, @function
disk_1305.62793:
.LFB3053:
	.loc 24 201 0
	.cfi_startproc
.LVL1806:
	pushl	%ebp
.LCFI383:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI384:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI385:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI386:
	.cfi_def_cfa_offset 20
	subl	$32, %esp
.LCFI387:
	.cfi_def_cfa_offset 52
	movl	%eax, %edi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, %ebx
.LBB9687:
.LBB9688:
	.loc 3 472 0
	pushl	$202
.LCFI388:
	.cfi_def_cfa_offset 56
	pushl	$__func__.62795
.LCFI389:
	.cfi_def_cfa_offset 60
	pushl	$.LC23
.LCFI390:
	.cfi_def_cfa_offset 64
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
.LVL1807:
	addl	$12, %esp
.LCFI391:
	.cfi_def_cfa_offset 52
	.loc 3 473 0
	movl	%edi, %eax
	.cfi_escape 0x2e,0x0
	call	dump_regs.7898
.LBE9688:
.LBE9687:
.LBB9689:
.LBB9690:
.LBB9691:
	.loc 24 62 0
#APP
# 62 "src/disk.c" 1
	movl %CS:cdemu_drive_gf, %eax
# 0 "" 2
.LVL1808:
#NO_APP
.LBE9691:
	.loc 24 61 0
	subl	$983040, %eax
.LVL1809:
	cmpl	%eax, %ebx
	jne	.L1045
.LBB9692:
.LBB9693:
.LBB9694:
	.loc 10 253 0
	movl	$64, %eax
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9695:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %ax
# 0 "" 2
.LVL1810:
#NO_APP
.LBE9695:
.LBE9694:
.LBE9693:
	.loc 24 69 0
#APP
# 69 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9696:
#APP
# 69 "src/disk.c" 1
	movw %ES:320, %si
# 0 "" 2
.LVL1811:
#NO_APP
.LBE9696:
	.loc 24 70 0
#APP
# 70 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9697:
#APP
# 70 "src/disk.c" 1
	movw %ES:324, %cx
# 0 "" 2
.LVL1812:
#NO_APP
	jmp	.L1046
.LVL1813:
.L1045:
.LBE9697:
.LBE9692:
.LBB9698:
	.loc 24 74 0
#APP
# 74 "src/disk.c" 1
	movw %CS:2(%ebx), %si
# 0 "" 2
.LVL1814:
#NO_APP
.LBE9698:
.LBB9699:
	.loc 24 75 0
#APP
# 75 "src/disk.c" 1
	movw %CS:6(%ebx), %cx
# 0 "" 2
.LVL1815:
#NO_APP
.L1046:
.LBE9699:
.LBE9690:
.LBE9689:
	.loc 24 207 0
	movb	28(%edi), %al
.LVL1816:
	.loc 24 208 0
	movb	21(%edi), %dl
.LVL1817:
	.loc 24 210 0
	movzbl	%dl, %ebp
.LVL1818:
	cmpw	%si, %bp
	jae	.L1047
	testb	%al, %al
	je	.L1047
	movzbl	%al, %eax
.LVL1819:
	cmpw	%cx, %ax
	jbe	.L1048
.LVL1820:
.L1047:
.LBB9700:
.LBB9701:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L1049
.LBB9702:
	.loc 24 27 0
	movl	$64, %eax
.LVL1821:
#APP
# 27 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$1, %al
#APP
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1050
.LVL1822:
.L1049:
.LBE9702:
.LBB9703:
	.loc 24 29 0
	movl	$64, %eax
.LVL1823:
#APP
# 29 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movb	$1, %al
#APP
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
#NO_APP
.L1050:
.LBE9703:
.LBB9704:
.LBB9705:
.LBB9706:
.LBB9707:
	.loc 14 90 0
	movb	$1, 29(%edi)
	jmp	.L1056
.L1048:
.LBE9707:
.LBE9706:
.LBE9705:
.LBE9704:
.LBE9701:
.LBE9700:
	.loc 24 216 0
	movl	%ebx, 24(%esp)
	.loc 24 217 0
	movb	$5, 30(%esp)
	.loc 24 218 0
	movzbl	%dl, %edx
.LVL1824:
	movl	%edx, 12(%esp)
	movl	$0, 16(%esp)
	.loc 24 219 0
	movw	%ax, 28(%esp)
	.loc 24 220 0
	movzwl	2(%edi), %eax
	sall	$4, %eax
	movzwl	16(%edi), %edx
.LVL1825:
	addl	%edx, %eax
	movl	%eax, 20(%esp)
.LBB9708:
.LBB9709:
	.loc 25 330 0
#APP
# 330 "src/block.c" 1
	movw %SS, %dx
# 0 "" 2
.LVL1826:
#NO_APP
.LBE9709:
.LBB9710:
.LBB9711:
.LBB9712:
.LBB9713:
	.loc 10 253 0
	movl	$64, %eax
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB9714:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %bx
# 0 "" 2
.LVL1827:
#NO_APP
	movw	%bx, 10(%esp)
.LBE9714:
.LBE9713:
.LBE9712:
	.loc 6 167 0
	leal	12(%esp), %eax
	movzwl	%dx, %edx
.LVL1828:
	movl	$__send_disk_op.11050, %ecx
.LVL1829:
#APP
# 167 "src/stacks.c" 1
	movw %ss, %si
movl %esp, %ebp
movw %bx, %ds
movw %bx, %ss
movl $872, %esp
calll *%ecx
movw %si, %ds
movw %si, %ss
movl %ebp, %esp
# 0 "" 2
.LVL1830:
#NO_APP
.LBE9711:
.LBE9710:
.LBE9708:
.LBB9715:
.LBB9716:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L1052
.LBB9717:
	.loc 24 27 0
	movl	$64, %edx
.LVL1831:
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
.LVL1832:
#NO_APP
	jmp	.L1053
.LVL1833:
.L1052:
.LBE9717:
.LBB9718:
	.loc 24 29 0
	movl	$64, %ebx
#APP
# 29 "src/disk.c" 1
	movw %bx, %ES
# 0 "" 2
# 29 "src/disk.c" 1
	movb %al, %ES:116
# 0 "" 2
.LVL1834:
#NO_APP
.L1053:
.LBE9718:
	.loc 24 30 0
	testb	%al, %al
	je	.L1054
.LBB9719:
.LBB9720:
.LBB9721:
.LBB9722:
	.loc 14 90 0
	movb	%al, 29(%edi)
.LVL1835:
.L1056:
.LBB9723:
.LBB9724:
	.loc 14 60 0
	orw	$1, 36(%edi)
	jmp	.L1055
.LVL1836:
.L1054:
.LBE9724:
.LBE9723:
.LBE9722:
.LBE9721:
.LBE9720:
.LBE9719:
.LBB9725:
.LBB9726:
	.loc 14 77 0
	movb	$0, 29(%edi)
.LBB9727:
.LBB9728:
	.loc 14 62 0
	andw	$-2, 36(%edi)
.LVL1837:
.L1055:
.LBE9728:
.LBE9727:
.LBE9726:
.LBE9725:
.LBE9716:
.LBE9715:
	.loc 24 223 0
	addl	$32, %esp
	popl	%ebx
.LVL1838:
	popl	%esi
.LVL1839:
	popl	%edi
.LVL1840:
	popl	%ebp
.LVL1841:
	ret
	.cfi_endproc
.LFE3053:
	.size	disk_1305.62793, .-disk_1305.62793
	.section	.text.disk_13.64841,"ax",@progbits
	.type	disk_13.64841, @function
disk_13.64841:
.LFB3083:
	.loc 24 719 0
	.cfi_startproc
.LVL1842:
	pushl	%ebp
.LCFI392:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI393:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI394:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI395:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.LCFI396:
	.cfi_def_cfa_offset 48
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
.LBB10197:
	.loc 24 723 0
	movl	$64, %ecx
#APP
# 723 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	xorl	%esi, %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%esi, %eax
.LVL1843:
#APP
# 723 "src/disk.c" 1
	movb %al, %ES:142
# 0 "" 2
#NO_APP
.LBE10197:
	.loc 24 725 0
	movl	4(%esp), %edx
.LVL1844:
	movb	29(%edx), %bl
	cmpb	$20, %bl
	je	.L1071
	ja	.L1084
	cmpb	$5, %bl
	je	.L1064
	ja	.L1085
	cmpb	$2, %bl
	je	.L1061
	ja	.L1086
	testb	%bl, %bl
	je	.L1059
	decb	%bl
	jne	.L1058
	jmp	.L1235
.L1086:
	cmpb	$3, %bl
	je	.L1062
	cmpb	$4, %bl
	jne	.L1058
	jmp	.L1236
.L1085:
	cmpb	$12, %bl
	je	.L1070
	ja	.L1087
	cmpb	$8, %bl
	je	.L1065
	cmpb	$9, %bl
	jne	.L1058
	jmp	.L1237
.L1087:
	cmpb	$16, %bl
	je	.L1069
	cmpb	$17, %bl
	je	.L1070
	cmpb	$13, %bl
	jne	.L1058
	jmp	.L1177
.L1084:
	cmpb	$68, %bl
	je	.L1077
	ja	.L1088
	cmpb	$65, %bl
	je	.L1074
	ja	.L1089
	cmpb	$21, %bl
	je	.L1072
	cmpb	$22, %bl
	jne	.L1058
	jmp	.L1238
.L1089:
	cmpb	$66, %bl
	je	.L1075
	cmpb	$67, %bl
	jne	.L1058
	jmp	.L1239
.L1088:
	cmpb	$71, %bl
	je	.L1080
	ja	.L1090
	cmpb	$69, %bl
	je	.L1078
	cmpb	$70, %bl
	jne	.L1058
	jmp	.L1240
.L1090:
	cmpb	$73, %bl
	je	.L1082
	jb	.L1081
	cmpb	$78, %bl
	jne	.L1058
	jmp	.L1241
.L1059:
	.loc 24 726 0
	movl	(%esp), %edx
	movl	4(%esp), %eax
	.loc 24 753 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	.loc 24 726 0
	jmp	disk_1300.62721
.L1235:
.LBB10198:
.LBB10199:
	.loc 24 167 0
	movl	4(%esp), %ebx
	cmpb	$0, 20(%ebx)
	js	.L1091
	.loc 24 169 0
#APP
# 169 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10200:
#APP
# 169 "src/disk.c" 1
	movb %ES:65, %dl
# 0 "" 2
.LVL1845:
#NO_APP
	jmp	.L1092
.LVL1846:
.L1091:
.LBE10200:
	.loc 24 171 0
#APP
# 171 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10201:
#APP
# 171 "src/disk.c" 1
	movb %ES:116, %dl
# 0 "" 2
.LVL1847:
#NO_APP
.L1092:
.LBE10201:
	.loc 24 172 0
	movl	4(%esp), %esi
	movb	%dl, 29(%esi)
.LBB10202:
.LBB10203:
	.loc 14 59 0
	testb	%dl, %dl
	jne	.L1198
	.loc 14 62 0
	movl	4(%esp), %edi
	andw	$-2, 36(%edi)
	jmp	.L1192
.LVL1848:
.L1061:
.LBE10203:
.LBE10202:
.LBE10199:
.LBE10198:
.LBB10204:
.LBB10205:
	.loc 24 181 0
	movl	$2, %ecx
	jmp	.L1201
.L1062:
.LBE10205:
.LBE10204:
.LBB10206:
.LBB10207:
	.loc 24 188 0
	movl	$3, %ecx
.L1201:
	movl	(%esp), %edx
	movl	4(%esp), %eax
.LBE10207:
.LBE10206:
	.loc 24 753 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
.LBB10209:
.LBB10208:
	.loc 24 188 0
	jmp	basic_access.62538
.L1236:
.LBE10208:
.LBE10209:
.LBB10210:
.LBB10211:
	.loc 24 195 0
	movl	$4, %ecx
	jmp	.L1201
.L1064:
.LBE10211:
.LBE10210:
	.loc 24 731 0
	movl	(%esp), %edx
	movl	4(%esp), %eax
	.loc 24 753 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	.loc 24 731 0
	jmp	disk_1305.62793
.L1065:
.LBB10212:
.LBB10213:
.LBB10214:
.LBB10215:
	.loc 10 253 0
#APP
# 253 "src/biosvar.h" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10216:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %si
# 0 "" 2
.LVL1849:
#NO_APP
.LBE10216:
.LBE10215:
.LBE10214:
.LBB10217:
.LBB10218:
.LBB10219:
	.loc 24 62 0
#APP
# 62 "src/disk.c" 1
	movl %CS:cdemu_drive_gf, %ebx
# 0 "" 2
.LVL1850:
#NO_APP
.LBE10219:
	.loc 24 61 0
	subl	$983040, %ebx
.LVL1851:
	cmpl	%ebx, (%esp)
	jne	.L1095
.LBB10220:
	.loc 24 68 0
#APP
# 68 "src/disk.c" 1
	movw %si, %ES
# 0 "" 2
.LVL1852:
#NO_APP
.LBB10221:
#APP
# 68 "src/disk.c" 1
	movw %ES:322, %di
# 0 "" 2
.LVL1853:
#NO_APP
.LBE10221:
	.loc 24 69 0
#APP
# 69 "src/disk.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10222:
#APP
# 69 "src/disk.c" 1
	movw %ES:320, %ax
# 0 "" 2
.LVL1854:
#NO_APP
.LBE10222:
	.loc 24 70 0
#APP
# 70 "src/disk.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10223:
#APP
# 70 "src/disk.c" 1
	movw %ES:324, %bp
# 0 "" 2
.LVL1855:
#NO_APP
	jmp	.L1096
.LVL1856:
.L1095:
.LBE10223:
.LBE10220:
.LBB10224:
	.loc 24 73 0
	movl	(%esp), %eax
#APP
# 73 "src/disk.c" 1
	movw %CS:4(%eax), %di
# 0 "" 2
.LVL1857:
#NO_APP
.LBE10224:
.LBB10225:
	.loc 24 74 0
#APP
# 74 "src/disk.c" 1
	movw %CS:2(%eax), %ax
# 0 "" 2
.LVL1858:
#NO_APP
.LBE10225:
.LBB10226:
	.loc 24 75 0
	movl	(%esp), %edx
#APP
# 75 "src/disk.c" 1
	movw %CS:6(%edx), %bp
# 0 "" 2
.LVL1859:
#NO_APP
.L1096:
.LBE10226:
.LBE10218:
.LBE10217:
	.loc 24 233 0
	leal	-1(%edi), %ebx
.LVL1860:
	.loc 24 236 0
	movl	4(%esp), %edx
	movb	20(%edx), %cl
	testb	%cl, %cl
	js	.L1097
.LBB10227:
	.loc 24 238 0
#APP
# 238 "src/disk.c" 1
	movb %CS:Drives, %cl
# 0 "" 2
.LVL1861:
#NO_APP
.LBE10227:
.LBB10228:
	.loc 24 241 0
#APP
# 241 "src/disk.c" 1
	movl %CS:cdemu_drive_gf, %edi
# 0 "" 2
.LVL1862:
#NO_APP
.LBE10228:
	.loc 24 240 0
	subl	$983040, %edi
.LVL1863:
	cmpl	%edi, (%esp)
	jne	.L1098
	.loc 24 242 0
#APP
# 242 "src/disk.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10229:
#APP
# 242 "src/disk.c" 1
	movb %ES:317, %dl
# 0 "" 2
.LVL1864:
#NO_APP
.LBE10229:
	movzbl	%dl, %edx
.LVL1865:
	sall	%edx
.LVL1866:
	jmp	.L1197
.L1098:
.LBB10230:
	.loc 24 244 0
	movl	(%esp), %edi
#APP
# 244 "src/disk.c" 1
	movb %CS:1(%edi), %dl
# 0 "" 2
.LVL1867:
#NO_APP
.LBE10230:
	movzbl	%dl, %edx
.LVL1868:
.L1197:
	movl	4(%esp), %edi
	movw	%dx, 16(%edi)
	.loc 24 247 0
	movl	4(%esp), %edx
.LVL1869:
	movw	$-4096, 2(%edx)
	.loc 24 248 0
	movl	$diskette_param_table2, %edx
	movl	4(%esp), %edi
	movw	%dx, 4(%edi)
	jmp	.L1100
.LVL1870:
.L1097:
	.loc 24 249 0
	cmpb	$-33, %cl
	ja	.L1101
	.loc 24 251 0
	movl	$64, %edx
#APP
# 251 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10231:
#APP
# 251 "src/disk.c" 1
	movb %ES:117, %cl
# 0 "" 2
.LVL1871:
#NO_APP
.LBE10231:
	.loc 24 252 0
	leal	-2(%edi), %ebx
.LVL1872:
	jmp	.L1100
.LVL1873:
.L1101:
.LBB10232:
.LBB10233:
.LBB10234:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.LBE10234:
.LBB10235:
.LBB10236:
.LBB10237:
.LBB10238:
	.loc 14 90 0
	movl	4(%esp), %eax
.LVL1874:
	jmp	.L1199
.LVL1875:
.L1100:
.LBE10238:
.LBE10237:
.LBE10236:
.LBE10235:
.LBE10233:
.LBE10232:
	.loc 24 259 0
#APP
# 259 "src/disk.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10239:
#APP
# 259 "src/disk.c" 1
	movb %ES:316, %dl
# 0 "" 2
.LVL1876:
#NO_APP
.LBE10239:
	testb	%dl, %dl
	je	.L1102
.LBB10240:
	.loc 24 260 0
#APP
# 260 "src/disk.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10241:
#APP
# 260 "src/disk.c" 1
	movb %ES:318, %dl
# 0 "" 2
.LVL1877:
#NO_APP
.LBE10241:
	.loc 24 261 0
	movl	4(%esp), %edi
	movzbl	20(%edi), %esi
.LVL1878:
	xorl	%esi, %edx
	.loc 24 263 0
	cmpb	$-128, %dl
	adcb	$0, %cl
	.loc 24 264 0
	cmpb	$2, %cl
	jbe	.L1102
	movl	%esi, %edx
	testb	%dl, %dl
	js	.L1102
	movb	$2, %cl
.LVL1879:
.L1102:
.LBE10240:
	.loc 24 269 0
	movl	4(%esp), %esi
.LVL1880:
	movb	$0, 28(%esi)
	.loc 24 270 0
	movb	%bl, 25(%esi)
	.loc 24 271 0
	shrw	$2, %bx
.LVL1881:
	andl	$-64, %ebx
	andl	$63, %ebp
.LVL1882:
	orl	%ebp, %ebx
	movb	%bl, 24(%esi)
	.loc 24 272 0
	leal	-1(%eax), %edx
.LVL1883:
	movb	%dl, 21(%esi)
.LBB10242:
.LBB10243:
	.loc 24 26 0
	cmpb	$0, 20(%esi)
	js	.L1104
.LBB10244:
	.loc 24 27 0
	movl	$64, %edx
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1105
.L1104:
.LBE10244:
.LBB10245:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1105:
.LBE10245:
.LBB10246:
.LBB10247:
	.loc 14 77 0
	movl	4(%esp), %edi
	movb	$0, 29(%edi)
.LBB10248:
.LBB10249:
	.loc 14 62 0
	andw	$-2, 36(%edi)
.LBE10249:
.LBE10248:
.LBE10247:
.LBE10246:
.LBE10243:
.LBE10242:
	.loc 24 275 0
	movb	%cl, 20(%edi)
	jmp	.L1192
.LVL1884:
.L1237:
.LBE10213:
.LBE10212:
.LBB10250:
.LBB10251:
.LBB10252:
.LBB10253:
.LBB10254:
	.loc 24 26 0
	movl	4(%esp), %eax
	cmpb	$0, 20(%eax)
	js	.L1106
.LBB10255:
	.loc 24 27 0
#APP
# 27 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %edx
	jmp	.L1204
.L1106:
.LBE10255:
.LBB10256:
	.loc 24 29 0
#APP
# 29 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %ecx
#APP
# 29 "src/disk.c" 1
	movb %cl, %ES:116
# 0 "" 2
#NO_APP
	jmp	.L1142
.L1069:
.LBE10256:
.LBE10254:
.LBE10253:
.LBE10252:
.LBE10251:
.LBE10250:
	.loc 24 736 0
	movl	(%esp), %edx
	movl	4(%esp), %eax
	.loc 24 753 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	.loc 24 736 0
	jmp	disk_1310.63040
.L1070:
.LBB10257:
.LBB10258:
.LBB10259:
.LBB10260:
.LBB10261:
	.loc 24 26 0
	movl	4(%esp), %edi
	cmpb	$0, 20(%edi)
	jmp	.L1221
.L1071:
.LBE10261:
.LBE10260:
.LBE10259:
.LBE10258:
.LBE10257:
.LBB10262:
.LBB10263:
.LBB10264:
.LBB10265:
.LBB10266:
	movl	4(%esp), %ebx
	cmpb	$0, 20(%ebx)
	jmp	.L1221
.L1072:
.LBE10266:
.LBE10265:
.LBE10264:
.LBE10263:
.LBE10262:
.LBB10267:
.LBB10268:
.LBB10269:
.LBB10270:
	movl	4(%esp), %ebx
	cmpb	$0, 20(%ebx)
	js	.L1116
.LBB10271:
	.loc 24 27 0
#APP
# 27 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %eax
#APP
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1117
.L1116:
.LBE10271:
.LBB10272:
	.loc 24 29 0
#APP
# 29 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %edx
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1117:
.LBE10272:
.LBB10273:
.LBB10274:
	.loc 14 77 0
	movl	4(%esp), %ecx
	movb	$0, 29(%ecx)
.LBB10275:
.LBB10276:
	.loc 14 62 0
	andw	$-2, 36(%ecx)
.LBE10276:
.LBE10275:
.LBE10274:
.LBE10273:
.LBE10270:
.LBE10269:
	.loc 24 331 0
	movl	4(%esp), %ebx
	movb	20(%ebx), %cl
	addl	$-128, %ecx
	cmpb	$95, %cl
	jbe	.L1118
	.loc 24 333 0
	movb	$1, 29(%ebx)
	jmp	.L1192
.L1118:
.LBB10277:
.LBB10278:
.LBB10279:
	.loc 24 62 0
#APP
# 62 "src/disk.c" 1
	movl %CS:cdemu_drive_gf, %ecx
# 0 "" 2
.LVL1885:
#NO_APP
.LBE10279:
	.loc 24 61 0
	subl	$983040, %ecx
.LVL1886:
	cmpl	%ecx, (%esp)
	jne	.L1119
.LBB10280:
.LBB10281:
.LBB10282:
	.loc 10 253 0
	movl	$64, %edx
#APP
# 253 "src/biosvar.h" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10283:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %dx
# 0 "" 2
.LVL1887:
#NO_APP
.LBE10283:
.LBE10282:
.LBE10281:
	.loc 24 68 0
#APP
# 68 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10284:
#APP
# 68 "src/disk.c" 1
	movw %ES:322, %cx
# 0 "" 2
.LVL1888:
#NO_APP
.LBE10284:
	.loc 24 69 0
#APP
# 69 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10285:
#APP
# 69 "src/disk.c" 1
	movw %ES:320, %bx
# 0 "" 2
.LVL1889:
#NO_APP
.LBE10285:
	.loc 24 70 0
#APP
# 70 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10286:
#APP
# 70 "src/disk.c" 1
	movw %ES:324, %dx
# 0 "" 2
.LVL1890:
#NO_APP
	jmp	.L1120
.LVL1891:
.L1119:
.LBE10286:
.LBE10280:
.LBB10287:
	.loc 24 73 0
	movl	(%esp), %esi
#APP
# 73 "src/disk.c" 1
	movw %CS:4(%esi), %cx
# 0 "" 2
.LVL1892:
#NO_APP
.LBE10287:
.LBB10288:
	.loc 24 74 0
#APP
# 74 "src/disk.c" 1
	movw %CS:2(%esi), %bx
# 0 "" 2
.LVL1893:
#NO_APP
.LBE10288:
.LBB10289:
	.loc 24 75 0
#APP
# 75 "src/disk.c" 1
	movw %CS:6(%esi), %dx
# 0 "" 2
.LVL1894:
#NO_APP
.L1120:
.LBE10289:
.LBE10278:
.LBE10277:
	.loc 24 343 0
	movzwl	%dx, %edx
.LVL1895:
	movzwl	%bx, %ebx
.LVL1896:
	imull	%ebx, %edx
	movzwl	%cx, %ecx
.LVL1897:
	decl	%ecx
.LVL1898:
	imull	%ecx, %edx
	.loc 24 344 0
	movl	%edx, %ecx
	shrl	$16, %ecx
	movl	4(%esp), %edi
	movw	%cx, 24(%edi)
	.loc 24 345 0
	movw	%dx, 20(%edi)
	.loc 24 346 0
	movb	$3, 29(%edi)
	jmp	.L1192
.LVL1899:
.L1238:
.LBE10268:
.LBE10267:
.LBB10290:
.LBB10291:
	.loc 24 352 0
	movl	4(%esp), %eax
	cmpb	$0, 20(%eax)
	jns	.L1121
.LBB10292:
.LBB10293:
.LBB10294:
	.loc 24 29 0
#APP
# 29 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
.LVL1900:
#NO_APP
.L1199:
.LBE10294:
.LBB10295:
.LBB10296:
.LBB10297:
.LBB10298:
	.loc 14 90 0
	movb	$1, 29(%eax)
.LBB10299:
.LBB10300:
	.loc 14 60 0
	orw	$1, 36(%eax)
	jmp	.L1192
.LVL1901:
.L1121:
.LBE10300:
.LBE10299:
.LBE10298:
.LBE10297:
.LBE10296:
.LBE10295:
.LBE10293:
.LBE10292:
.LBB10301:
.LBB10302:
.LBB10303:
	.loc 24 27 0
#APP
# 27 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movb	$6, %dl
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
.LBE10303:
.LBB10304:
.LBB10305:
.LBB10306:
.LBB10307:
	.loc 14 90 0
	movl	4(%esp), %edx
	movb	$6, 29(%edx)
	jmp	.L1200
.L1074:
.LBE10307:
.LBE10306:
.LBE10305:
.LBE10304:
.LBE10302:
.LBE10301:
.LBE10291:
.LBE10290:
.LBB10308:
.LBB10309:
	.loc 24 364 0
	movl	4(%esp), %ebx
	movw	$-21931, 16(%ebx)
	.loc 24 365 0
	movw	$7, 24(%ebx)
.LBB10310:
.LBB10311:
	.loc 24 26 0
	cmpb	$0, 20(%ebx)
	js	.L1122
.LBB10312:
	.loc 24 27 0
#APP
# 27 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %eax
#APP
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1123
.L1122:
.LBE10312:
.LBB10313:
	.loc 24 29 0
#APP
# 29 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %edx
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1123:
.LBE10313:
.LBB10314:
.LBB10315:
.LBB10316:
.LBB10317:
	.loc 14 62 0
	movl	4(%esp), %ecx
	andw	$-2, 36(%ecx)
.LBE10317:
.LBE10316:
.LBE10315:
.LBE10314:
.LBE10311:
.LBE10310:
	.loc 24 367 0
	movb	$48, 29(%ecx)
.LBE10309:
.LBE10308:
	.loc 24 741 0
	jmp	.L1192
.L1075:
.LBB10318:
.LBB10319:
	.loc 24 374 0
	movl	$2, %ecx
	jmp	.L1202
.L1239:
.LBE10319:
.LBE10318:
.LBB10320:
.LBB10321:
	.loc 24 381 0
	movl	$3, %ecx
	jmp	.L1202
.L1077:
.LBE10321:
.LBE10320:
.LBB10322:
.LBB10323:
	.loc 24 388 0
	movl	$4, %ecx
	jmp	.L1202
.L1078:
.LBE10323:
.LBE10322:
.LBB10324:
.LBB10325:
	.loc 24 446 0
	movl	4(%esp), %ebx
	movb	20(%ebx), %dl
	cmpb	$-33, %dl
	jbe	.L1219
	.loc 24 452 0
	movl	4(%esp), %esi
	movb	28(%esi), %bl
	cmpb	$1, %bl
	je	.L1129
	jb	.L1128
	cmpb	$2, %bl
	jne	.L1190
	jmp	.L1242
.L1128:
.LBB10326:
.LBB10327:
.LBB10328:
.LBB10329:
	.loc 10 253 0
	movl	$64, %edx
#APP
# 253 "src/biosvar.h" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10330:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %ax
# 0 "" 2
.LVL1902:
#NO_APP
.LBE10330:
.LBE10329:
.LBE10328:
	.loc 24 396 0
	movl	4(%esp), %edi
	movzbl	20(%edi), %ecx
	subl	$224, %ecx
.LVL1903:
	.loc 24 397 0
#APP
# 397 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB10331:
#APP
# 397 "src/disk.c" 1
	movb %ES:342(%ecx), %bl
# 0 "" 2
#NO_APP
	movl	%ebx, %esi
.LVL1904:
.LBE10331:
	.loc 24 398 0
	incb	%bl
	jne	.L1131
	.loc 24 399 0
	movb	$1, 28(%edi)
.LBB10332:
.LBB10333:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L1132
.LBB10334:
	.loc 24 27 0
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$-76, %dl
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1133
.L1132:
.LBE10334:
.LBB10335:
	.loc 24 29 0
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$-76, %dl
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1133:
.LBE10335:
.LBB10336:
.LBB10337:
.LBB10338:
.LBB10339:
	.loc 14 90 0
	movl	4(%esp), %esi
.LVL1905:
	movb	$-76, 29(%esi)
	jmp	.L1198
.LVL1906:
.L1131:
.LBE10339:
.LBE10338:
.LBE10337:
.LBE10336:
.LBE10333:
.LBE10332:
.LBB10340:
	.loc 24 403 0
	incl	%esi
.LVL1907:
#APP
# 403 "src/disk.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %eax
.LVL1908:
#APP
# 403 "src/disk.c" 1
	movb %al, %ES:342(%ecx)
# 0 "" 2
#NO_APP
.LBE10340:
	.loc 24 404 0
	movl	4(%esp), %ecx
.LVL1909:
	movb	$1, 28(%ecx)
	jmp	.L1212
.LVL1910:
.L1129:
.LBE10327:
.LBE10326:
.LBB10341:
.LBB10342:
.LBB10343:
.LBB10344:
	.loc 10 253 0
#APP
# 253 "src/biosvar.h" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10345:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %bx
# 0 "" 2
.LVL1911:
#NO_APP
.LBE10345:
.LBE10344:
.LBE10343:
	.loc 24 413 0
	movl	4(%esp), %esi
	movzbl	20(%esi), %ecx
	subl	$224, %ecx
.LVL1912:
	.loc 24 414 0
#APP
# 414 "src/disk.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB10346:
#APP
# 414 "src/disk.c" 1
	movb %ES:342(%ecx), %dl
# 0 "" 2
.LVL1913:
#NO_APP
.LBE10346:
	.loc 24 415 0
	testb	%dl, %dl
	jne	.L1136
	.loc 24 416 0
	movb	$0, 28(%esi)
.LBB10347:
.LBB10348:
	.loc 24 26 0
	cmpb	$0, 20(%esi)
	js	.L1137
.LBB10349:
	.loc 24 27 0
	movl	$64, %edx
.LVL1914:
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$-80, %dl
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1138
.LVL1915:
.L1137:
.LBE10349:
.LBB10350:
	.loc 24 29 0
	movl	$64, %edx
.LVL1916:
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$-80, %dl
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1138:
.LBE10350:
.LBB10351:
.LBB10352:
.LBB10353:
.LBB10354:
	.loc 14 90 0
	movl	4(%esp), %edi
	movb	$-80, 29(%edi)
.LBB10355:
.LBB10356:
	.loc 14 60 0
	orw	$1, 36(%edi)
	jmp	.L1192
.LVL1917:
.L1136:
.LBE10356:
.LBE10355:
.LBE10354:
.LBE10353:
.LBE10352:
.LBE10351:
.LBE10348:
.LBE10347:
	.loc 24 420 0
	decl	%edx
.LVL1918:
.LBB10357:
	.loc 24 421 0
#APP
# 421 "src/disk.c" 1
	movw %bx, %ES
# 0 "" 2
# 421 "src/disk.c" 1
	movb %dl, %ES:342(%ecx)
# 0 "" 2
#NO_APP
.LBE10357:
	.loc 24 422 0
	testb	%dl, %dl
	movl	4(%esp), %eax
	setne	28(%eax)
.LBB10358:
.LBB10359:
	.loc 24 26 0
	cmpb	$0, 20(%eax)
	jmp	.L1214
.LVL1919:
.L1242:
.LBE10359:
.LBE10358:
.LBE10342:
.LBE10341:
.LBB10360:
.LBB10361:
	.loc 24 430 0
	movzbl	%dl, %ecx
.LBB10362:
.LBB10363:
	.loc 10 253 0
	movl	$64, %edx
#APP
# 253 "src/biosvar.h" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10364:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %bx
# 0 "" 2
.LVL1920:
#NO_APP
.LBE10364:
.LBE10363:
.LBE10362:
	.loc 24 431 0
#APP
# 431 "src/disk.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB10365:
#APP
# 431 "src/disk.c" 1
	movb %ES:118(%ecx), %cl
# 0 "" 2
.LVL1921:
#NO_APP
.LBE10365:
	.loc 24 432 0
	testb	%cl, %cl
	movl	4(%esp), %ecx
.LVL1922:
	setne	28(%ecx)
.LVL1923:
.L1212:
.LBB10366:
.LBB10367:
	.loc 24 26 0
	cmpb	$0, 20(%ecx)
	js	.L1141
.LBB10368:
	.loc 24 27 0
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
.L1204:
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1142
.L1141:
.LBE10368:
.LBB10369:
	.loc 24 29 0
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1142:
.LBE10369:
.LBB10370:
.LBB10371:
	.loc 14 77 0
	movl	4(%esp), %ebx
.LVL1924:
	movb	$0, 29(%ebx)
.LBB10372:
.LBB10373:
	.loc 14 62 0
	andw	$-2, 36(%ebx)
	jmp	.L1192
.LVL1925:
.L1240:
.LBE10373:
.LBE10372:
.LBE10371:
.LBE10370:
.LBE10367:
.LBE10366:
.LBE10361:
.LBE10360:
.LBE10325:
.LBE10324:
	.loc 24 746 0
	movl	(%esp), %edx
	movl	4(%esp), %eax
	.loc 24 753 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	.loc 24 746 0
	jmp	disk_1346.63275
.L1080:
.LBB10374:
.LBB10375:
	.loc 24 498 0
	movl	$7, %ecx
.L1202:
	movl	(%esp), %edx
	movl	4(%esp), %eax
.LBE10375:
.LBE10374:
	.loc 24 753 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
.LBB10377:
.LBB10376:
	.loc 24 498 0
	jmp	extended_access.62602
.L1081:
.LBE10376:
.LBE10377:
.LBB10378:
.LBB10379:
	.loc 24 505 0
	movl	4(%esp), %edi
#APP
# 505 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
.LBB10380:
	movzwl	8(%edi), %ecx
#APP
# 505 "src/disk.c" 1
	movw %ES:(%ecx), %ax
# 0 "" 2
#NO_APP
	movw	%ax, 20(%esp)
.LBE10380:
	.loc 24 508 0
	cmpw	$25, %ax
	ja	.L1143
.LBB10381:
.LBB10382:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
	js	.L1144
.LBB10383:
	.loc 24 27 0
	movl	$64, %edx
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1145
.L1144:
.LBE10383:
.LBB10384:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1145:
.LBE10384:
.LBB10385:
.LBB10386:
.LBB10387:
.LBB10388:
	.loc 14 90 0
	movl	4(%esp), %edx
	movb	$1, 29(%edx)
.L1200:
.LBB10389:
.LBB10390:
	.loc 14 60 0
	orw	$1, 36(%edx)
	jmp	.L1192
.L1143:
.LBE10390:
.LBE10389:
.LBE10388:
.LBE10387:
.LBE10386:
.LBE10385:
.LBE10382:
.LBE10381:
.LBB10391:
	.loc 24 515 0
	movl	(%esp), %ecx
#APP
# 515 "src/disk.c" 1
	movb %CS:(%ecx), %cl
# 0 "" 2
#NO_APP
	movb	%cl, 23(%esp)
.LBE10391:
.LBB10392:
	.loc 24 516 0
	movl	(%esp), %ebx
#APP
# 516 "src/disk.c" 1
	movw %CS:30(%ebx), %bx
# 0 "" 2
#NO_APP
	movw	%bx, 24(%esp)
.LBE10392:
.LBB10393:
	.loc 24 517 0
	movl	(%esp), %esi
#APP
# 517 "src/disk.c" 1
	movw %CS:28(%esi), %bp
# 0 "" 2
.LVL1926:
#NO_APP
.LBE10393:
.LBB10394:
	.loc 24 518 0
#APP
# 518 "src/disk.c" 1
	movw %CS:32(%esi), %di
# 0 "" 2
#NO_APP
	movw	%di, 18(%esp)
.LBE10394:
.LBB10395:
.LBB10396:
	.loc 24 519 0
#APP
# 519 "src/disk.c" 1
	movl %CS:8(%esi), %ebx
# 0 "" 2
# 519 "src/disk.c" 1
	movl %CS:12(%esi), %ecx
# 0 "" 2
#NO_APP
.LBE10396:
.LBE10395:
.LBB10397:
	.loc 24 520 0
#APP
# 520 "src/disk.c" 1
	movw %CS:26(%esi), %ax
# 0 "" 2
#NO_APP
	movw	%ax, 26(%esp)
.LBE10397:
.LBB10398:
	.loc 24 525 0
	movl	4(%esp), %edx
#APP
# 525 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %esi
	movl	$26, %edi
#APP
# 525 "src/disk.c" 1
	movw %di, %ES:(%esi)
# 0 "" 2
#NO_APP
.LBE10398:
	.loc 24 526 0
	cmpb	$3, 23(%esp)
	jne	.L1146
.LBB10399:
	.loc 24 528 0
#APP
# 528 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %ecx
	movl	$116, %ebx
#APP
# 528 "src/disk.c" 1
	movw %bx, %ES:2(%ecx)
# 0 "" 2
#NO_APP
.LBE10399:
.LBB10400:
	.loc 24 529 0
#APP
# 529 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %ebx
	orl	$-1, %ecx
#APP
# 529 "src/disk.c" 1
	movl %ecx, %ES:4(%ebx)
# 0 "" 2
#NO_APP
.LBE10400:
.LBB10401:
	.loc 24 530 0
#APP
# 530 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %ebx
#APP
# 530 "src/disk.c" 1
	movl %ecx, %ES:8(%ebx)
# 0 "" 2
#NO_APP
.LBE10401:
.LBB10402:
	.loc 24 531 0
#APP
# 531 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %ebx
#APP
# 531 "src/disk.c" 1
	movl %ecx, %ES:12(%ebx)
# 0 "" 2
#NO_APP
.LBE10402:
.LBB10403:
	.loc 24 532 0
#APP
# 532 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
.LBB10404:
	movzwl	8(%edx), %ecx
	orl	$-1, %ebx
.LVL1927:
	movl	%ebx, %esi
.LVL1928:
#APP
# 532 "src/disk.c" 1
	movl %ebx, %ES:16(%ecx)
# 0 "" 2
# 532 "src/disk.c" 1
	movl %esi, %ES:20(%ecx)
# 0 "" 2
#NO_APP
	jmp	.L1147
.LVL1929:
.L1146:
.LBE10404:
.LBE10403:
	.loc 24 534 0
	movzwl	18(%esp), %edi
.LVL1930:
	movzwl	%bp, %esi
.LVL1931:
	movl	%edi, %eax
	mull	%esi
	movl	%eax, 8(%esp)
	imull	$16383, %edx, %edi
.LVL1932:
	movl	$16383, %esi
.LVL1933:
	movl	8(%esp), %eax
	mull	%esi
	movl	%eax, 8(%esp)
	addl	%edi, %edx
	movl	%edx, 12(%esp)
	cmpl	%edx, %ecx
	jb	.L1148
	ja	.L1193
	cmpl	8(%esp), %ebx
	jbe	.L1148
.L1193:
.LBB10405:
	.loc 24 535 0
	movl	4(%esp), %edx
#APP
# 535 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %esi
	xorl	%edi, %edi
#APP
# 535 "src/disk.c" 1
	movw %di, %ES:2(%esi)
# 0 "" 2
#NO_APP
.LBE10405:
.LBB10406:
	.loc 24 536 0
#APP
# 536 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %esi
	movl	$16383, %edi
#APP
# 536 "src/disk.c" 1
	movl %edi, %ES:4(%esi)
# 0 "" 2
#NO_APP
	jmp	.L1150
.L1148:
.LBE10406:
.LBB10407:
	.loc 24 538 0
	movl	4(%esp), %esi
#APP
# 538 "src/disk.c" 1
	movw (%esi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%esi), %esi
	movl	$2, %edi
#APP
# 538 "src/disk.c" 1
	movw %di, %ES:2(%esi)
# 0 "" 2
#NO_APP
.LBE10407:
.LBB10408:
	.loc 24 539 0
	movl	4(%esp), %eax
#APP
# 539 "src/disk.c" 1
	movw (%eax), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%eax), %esi
	movzwl	24(%esp), %edi
.LVL1934:
#APP
# 539 "src/disk.c" 1
	movl %edi, %ES:4(%esi)
# 0 "" 2
#NO_APP
.L1150:
.LBE10408:
.LBB10409:
	.loc 24 541 0
	movl	4(%esp), %edx
#APP
# 541 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %esi
	movzwl	%bp, %ebp
.LVL1935:
#APP
# 541 "src/disk.c" 1
	movl %ebp, %ES:8(%esi)
# 0 "" 2
#NO_APP
.LBE10409:
.LBB10410:
	.loc 24 542 0
#APP
# 542 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %esi
	movzwl	18(%esp), %edi
.LVL1936:
#APP
# 542 "src/disk.c" 1
	movl %edi, %ES:12(%esi)
# 0 "" 2
#NO_APP
.LBE10410:
.LBB10411:
	.loc 24 543 0
#APP
# 543 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
.LBB10412:
	movzwl	8(%edx), %esi
#APP
# 543 "src/disk.c" 1
	movl %ebx, %ES:16(%esi)
# 0 "" 2
# 543 "src/disk.c" 1
	movl %ecx, %ES:20(%esi)
# 0 "" 2
.LVL1937:
#NO_APP
.L1147:
.LBE10412:
.LBE10411:
.LBB10413:
	.loc 24 545 0
	movl	4(%esp), %ecx
#APP
# 545 "src/disk.c" 1
	movw (%ecx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%ecx), %ecx
	movw	26(%esp), %si
.LVL1938:
#APP
# 545 "src/disk.c" 1
	movw %si, %ES:24(%ecx)
# 0 "" 2
#NO_APP
.LBE10413:
	.loc 24 547 0
	cmpw	$29, 20(%esp)
	jbe	.L1178
	movb	23(%esp), %cl
	subl	$2, %ecx
	cmpb	$1, %cl
	ja	.L1178
.LBB10414:
.LBB10415:
	.loc 10 253 0
	movl	$64, %ecx
#APP
# 253 "src/biosvar.h" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10416:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %cx
# 0 "" 2
.LVL1939:
#NO_APP
.LBE10416:
.LBE10415:
.LBE10414:
.LBB10417:
	.loc 24 555 0
	movl	4(%esp), %edx
#APP
# 555 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %ebx
.LVL1940:
	movl	$30, %esi
#APP
# 555 "src/disk.c" 1
	movw %si, %ES:(%ebx)
# 0 "" 2
#NO_APP
.LBE10417:
.LBB10418:
	.loc 24 557 0
#APP
# 557 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %ebx
#APP
# 557 "src/disk.c" 1
	movw %cx, %ES:28(%ebx)
# 0 "" 2
#NO_APP
.LBE10418:
.LBB10419:
	.loc 24 558 0
#APP
# 558 "src/disk.c" 1
	movw (%edx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edx), %ebx
	movl	$326, %esi
#APP
# 558 "src/disk.c" 1
	movw %si, %ES:26(%ebx)
# 0 "" 2
#NO_APP
.LBE10419:
.LBB10420:
	.loc 24 564 0
	movl	(%esp), %ebx
#APP
# 564 "src/disk.c" 1
	movl %CS:36(%ebx), %esi
# 0 "" 2
.LVL1941:
#NO_APP
.LBE10420:
.LBB10421:
	.loc 24 565 0
#APP
# 565 "src/disk.c" 1
	movb %CS:40(%ebx), %al
# 0 "" 2
#NO_APP
	movb	%al, 8(%esp)
.LBE10421:
.LBB10422:
	.loc 24 566 0
#APP
# 566 "src/disk.c" 1
	movw %CS:-983040(%esi), %di
# 0 "" 2
.LVL1942:
#NO_APP
.LBE10422:
.LBB10423:
	.loc 24 567 0
#APP
# 567 "src/disk.c" 1
	movw %CS:-983038(%esi), %dx
# 0 "" 2
#NO_APP
	movw	%dx, 18(%esp)
.LBE10423:
.LBB10424:
	.loc 24 568 0
#APP
# 568 "src/disk.c" 1
	movb %CS:-983034(%esi), %bl
# 0 "" 2
#NO_APP
	movl	%ebx, %ebp
.LVL1943:
.LBE10424:
	.loc 24 571 0
	movl	$96, %ebx
.LVL1944:
	cmpb	$2, 23(%esp)
	jne	.L1156
.LBB10425:
.LBB10426:
	.loc 24 572 0
	movl	(%esp), %eax
#APP
# 572 "src/disk.c" 1
	movb %CS:25(%eax), %dl
# 0 "" 2
.LVL1945:
#NO_APP
.LBE10426:
	.loc 24 573 0
	xorb	%bl, %bl
.LVL1946:
	testb	%dl, %dl
	je	.L1156
	.loc 24 575 0
	movl	$520, %ebx
.LVL1947:
	cmpb	$1, %dl
	je	.L1156
	.loc 24 577 0
	movl	$8, %ebx
	cmpb	$3, %dl
	jne	.L1156
	movl	$1544, %ebx
.L1156:
.LBE10425:
.LBB10427:
	.loc 24 589 0
#APP
# 589 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
# 589 "src/disk.c" 1
	movw %di, %ES:326
# 0 "" 2
#NO_APP
.LBE10427:
.LBB10428:
	.loc 24 590 0
	movw	18(%esp), %dx
.LVL1948:
	addl	$2, %edx
.LVL1949:
#APP
# 590 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
# 590 "src/disk.c" 1
	movw %dx, %ES:328
# 0 "" 2
#NO_APP
.LBE10428:
.LBB10429:
	.loc 24 591 0
	cmpb	$1, 8(%esp)
	sbbl	%edx, %edx
.LVL1950:
	andl	$-16, %edx
.LVL1951:
	subl	$16, %edx
.LVL1952:
#APP
# 591 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
# 591 "src/disk.c" 1
	movb %dl, %ES:330
# 0 "" 2
#NO_APP
.LBE10429:
.LBB10430:
	.loc 24 593 0
#APP
# 593 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movb	$-53, %dl
.LVL1953:
#APP
# 593 "src/disk.c" 1
	movb %dl, %ES:331
# 0 "" 2
#NO_APP
.LBE10430:
.LBB10431:
	.loc 24 594 0
#APP
# 594 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	%ebp, %edx
#APP
# 594 "src/disk.c" 1
	movb %dl, %ES:332
# 0 "" 2
#NO_APP
.LBE10431:
.LBB10432:
	.loc 24 595 0
#APP
# 595 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 595 "src/disk.c" 1
	movb %dl, %ES:333
# 0 "" 2
#NO_APP
.LBE10432:
.LBB10433:
	.loc 24 596 0
#APP
# 596 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 596 "src/disk.c" 1
	movb %dl, %ES:334
# 0 "" 2
#NO_APP
.LBE10433:
.LBB10434:
	.loc 24 597 0
#APP
# 597 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
# 597 "src/disk.c" 1
	movb %dl, %ES:335
# 0 "" 2
#NO_APP
.LBE10434:
.LBB10435:
	.loc 24 598 0
#APP
# 598 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBE10435:
	.loc 24 585 0
	orl	$16, %ebx
.LVL1954:
.LBB10436:
	.loc 24 598 0
#APP
# 598 "src/disk.c" 1
	movw %bx, %ES:336
# 0 "" 2
#NO_APP
.LBE10436:
.LBB10437:
	.loc 24 599 0
#APP
# 599 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 599 "src/disk.c" 1
	movw %dx, %ES:338
# 0 "" 2
#NO_APP
.LBE10437:
.LBB10438:
	.loc 24 600 0
#APP
# 600 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movb	$17, %dl
#APP
# 600 "src/disk.c" 1
	movb %dl, %ES:340
# 0 "" 2
#NO_APP
.LBE10438:
.LBB10439:
.LBB10440:
	.loc 16 69 0
#APP
# 69 "src/util.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	$326, %edx
	xorl	%ebx, %ebx
.LVL1955:
.L1162:
.LBB10441:
	.loc 16 73 0
#APP
# 73 "src/util.c" 1
	movb %ES:(%edx), %al
# 0 "" 2
#NO_APP
	movl	%eax, %ebp
.LVL1956:
.LBE10441:
	addl	%ebp, %ebx
.LVL1957:
	incl	%edx
	.loc 16 72 0
	cmpl	$341, %edx
	jne	.L1162
.LBE10440:
.LBE10439:
.LBB10442:
	.loc 24 604 0
	negl	%ebx
.LVL1958:
#APP
# 604 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	xorl	%ecx, %ecx
.LVL1959:
#APP
# 604 "src/disk.c" 1
	movb %bl, %ES:341
# 0 "" 2
#NO_APP
.LBE10442:
	.loc 24 606 0
	cmpw	$65, 20(%esp)
	jbe	.L1176
.LBB10443:
	.loc 24 612 0
	movl	4(%esp), %ebx
.LVL1960:
#APP
# 612 "src/disk.c" 1
	movw (%ebx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%ebx), %edx
	movl	$-16675, %ebx
#APP
# 612 "src/disk.c" 1
	movw %bx, %ES:30(%edx)
# 0 "" 2
#NO_APP
.LBE10443:
.LBB10444:
	.loc 24 613 0
	movl	4(%esp), %eax
#APP
# 613 "src/disk.c" 1
	movw (%eax), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%eax), %edx
	movb	$36, %bl
#APP
# 613 "src/disk.c" 1
	movb %bl, %ES:32(%edx)
# 0 "" 2
#NO_APP
.LBE10444:
.LBB10445:
	.loc 24 614 0
#APP
# 614 "src/disk.c" 1
	movw (%eax), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%eax), %ebx
	xorl	%edx, %edx
#APP
# 614 "src/disk.c" 1
	movb %dl, %ES:33(%ebx)
# 0 "" 2
#NO_APP
.LBE10445:
.LBB10446:
	.loc 24 615 0
#APP
# 615 "src/disk.c" 1
	movw (%eax), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%eax), %ebx
	xorl	%ebp, %ebp
.LVL1961:
#APP
# 615 "src/disk.c" 1
	movw %bp, %ES:34(%ebx)
# 0 "" 2
#NO_APP
.LBE10446:
.LBB10447:
	.loc 24 617 0
#APP
# 617 "src/disk.c" 1
	movl %CS:-983032(%esi), %ebx
# 0 "" 2
.LVL1962:
#NO_APP
.LBE10447:
	.loc 24 618 0
	cmpl	$-1, %ebx
	je	.L1166
.LBB10448:
.LBB10449:
	.loc 24 619 0
#APP
# 619 "src/disk.c" 1
	movw (%eax), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%eax), %esi
.LVL1963:
	movl	$80, %edi
.LVL1964:
	movl	%edi, %eax
#APP
# 619 "src/disk.c" 1
	movb %al, %ES:36(%esi)
# 0 "" 2
#NO_APP
.LBE10449:
.LBB10450:
	.loc 24 620 0
	movl	4(%esp), %esi
#APP
# 620 "src/disk.c" 1
	movw (%esi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%esi), %esi
	movl	$67, %edi
	movl	%edi, %eax
#APP
# 620 "src/disk.c" 1
	movb %al, %ES:37(%esi)
# 0 "" 2
#NO_APP
.LBE10450:
.LBB10451:
	.loc 24 621 0
	movl	4(%esp), %esi
#APP
# 621 "src/disk.c" 1
	movw (%esi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%esi), %esi
	movl	$73, %edi
	movl	%edi, %eax
#APP
# 621 "src/disk.c" 1
	movb %al, %ES:38(%esi)
# 0 "" 2
#NO_APP
.LBE10451:
.LBB10452:
	.loc 24 622 0
	movl	4(%esp), %esi
#APP
# 622 "src/disk.c" 1
	movw (%esi), %ES
# 0 "" 2
#NO_APP
	movl	%esi, %edi
	movzwl	8(%esi), %esi
#APP
# 622 "src/disk.c" 1
	movb %dl, %ES:39(%esi)
# 0 "" 2
#NO_APP
.LBE10452:
.LBB10453:
	.loc 24 626 0
#APP
# 626 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
.LBB10454:
	movzwl	8(%edi), %esi
	movl	%ebx, %edx
.LVL1965:
	andl	$7, %edx
	sall	$16, %edx
	movzbl	%bh, %edi
	orl	%edi, %edx
	shrw	$3, %bx
	andl	$31, %ebx
	sall	$8, %ebx
	orl	%ebx, %edx
#APP
# 626 "src/disk.c" 1
	movl %edx, %ES:48(%esi)
# 0 "" 2
# 626 "src/disk.c" 1
	movl %ecx, %ES:52(%esi)
# 0 "" 2
#NO_APP
	jmp	.L1167
.LVL1966:
.L1166:
.LBE10454:
.LBE10453:
.LBE10448:
.LBB10455:
	.loc 24 629 0
	movl	4(%esp), %eax
#APP
# 629 "src/disk.c" 1
	movw (%eax), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%eax), %ebx
.LVL1967:
	movl	$73, %esi
.LVL1968:
	movl	%esi, %eax
#APP
# 629 "src/disk.c" 1
	movb %al, %ES:36(%ebx)
# 0 "" 2
#NO_APP
.LBE10455:
.LBB10456:
	.loc 24 630 0
	movl	4(%esp), %ebx
#APP
# 630 "src/disk.c" 1
	movw (%ebx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%ebx), %ebx
	movl	$83, %esi
	movl	%esi, %eax
#APP
# 630 "src/disk.c" 1
	movb %al, %ES:37(%ebx)
# 0 "" 2
#NO_APP
.LBE10456:
.LBB10457:
	.loc 24 631 0
	movl	4(%esp), %ebx
#APP
# 631 "src/disk.c" 1
	movw (%ebx), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%ebx), %ebx
	movl	$65, %esi
	movl	%esi, %eax
#APP
# 631 "src/disk.c" 1
	movb %al, %ES:38(%ebx)
# 0 "" 2
#NO_APP
.LBE10457:
.LBB10458:
	.loc 24 632 0
	movl	4(%esp), %ebx
#APP
# 632 "src/disk.c" 1
	movw (%ebx), %ES
# 0 "" 2
#NO_APP
	movl	%ebx, %esi
	movzwl	8(%ebx), %ebx
#APP
# 632 "src/disk.c" 1
	movb %dl, %ES:39(%ebx)
# 0 "" 2
#NO_APP
.LBE10458:
.LBB10459:
	.loc 24 634 0
#APP
# 634 "src/disk.c" 1
	movw (%esi), %ES
# 0 "" 2
#NO_APP
.LBB10460:
	movzwl	8(%esi), %edx
	movzwl	%di, %edi
.LVL1969:
#APP
# 634 "src/disk.c" 1
	movl %edi, %ES:48(%edx)
# 0 "" 2
# 634 "src/disk.c" 1
	movl %ecx, %ES:52(%edx)
# 0 "" 2
#NO_APP
.L1167:
.LBE10460:
.LBE10459:
.LBB10461:
	.loc 24 637 0
	movl	4(%esp), %edi
.LVL1970:
#APP
# 637 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %ecx
	movb	$65, %dl
#APP
# 637 "src/disk.c" 1
	movb %dl, %ES:40(%ecx)
# 0 "" 2
#NO_APP
.LBE10461:
.LBB10462:
	.loc 24 638 0
#APP
# 638 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %ecx
	movb	$84, %bl
#APP
# 638 "src/disk.c" 1
	movb %bl, %ES:41(%ecx)
# 0 "" 2
#NO_APP
.LBE10462:
.LBB10463:
	.loc 24 639 0
#APP
# 639 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %ecx
#APP
# 639 "src/disk.c" 1
	movb %dl, %ES:42(%ecx)
# 0 "" 2
#NO_APP
.LBE10463:
.LBB10464:
	.loc 24 640 0
#APP
# 640 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %ecx
	xorl	%edx, %edx
#APP
# 640 "src/disk.c" 1
	movb %dl, %ES:43(%ecx)
# 0 "" 2
#NO_APP
.LBE10464:
.LBB10465:
	.loc 24 641 0
#APP
# 641 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %ecx
#APP
# 641 "src/disk.c" 1
	movb %dl, %ES:44(%ecx)
# 0 "" 2
#NO_APP
.LBE10465:
.LBB10466:
	.loc 24 642 0
#APP
# 642 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %ecx
#APP
# 642 "src/disk.c" 1
	movb %dl, %ES:45(%ecx)
# 0 "" 2
#NO_APP
.LBE10466:
.LBB10467:
	.loc 24 643 0
#APP
# 643 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %ecx
#APP
# 643 "src/disk.c" 1
	movb %dl, %ES:46(%ecx)
# 0 "" 2
#NO_APP
.LBE10467:
.LBB10468:
	.loc 24 644 0
#APP
# 644 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %ecx
#APP
# 644 "src/disk.c" 1
	movb %dl, %ES:47(%ecx)
# 0 "" 2
#NO_APP
.LBE10468:
.LBB10469:
	.loc 24 646 0
#APP
# 646 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
.LBB10470:
	movzwl	8(%edi), %edx
	movzbl	8(%esp), %ecx
.LVL1971:
#APP
# 646 "src/disk.c" 1
	movl %ecx, %ES:56(%edx)
# 0 "" 2
#NO_APP
	xorl	%ecx, %ecx
.LVL1972:
#APP
# 646 "src/disk.c" 1
	movl %ecx, %ES:60(%edx)
# 0 "" 2
#NO_APP
.LBE10470:
.LBE10469:
.LBB10471:
	.loc 24 648 0
	movzwl	8(%edi), %ebx
.LBB10472:
.LBB10473:
	.loc 16 69 0
#APP
# 69 "src/util.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
.LVL1973:
.LBB10474:
	.loc 16 73 0
	movl	4(%esp), %edi
.LVL1974:
.L1168:
#APP
# 73 "src/util.c" 1
	movb %ES:30(%edx,%ebx), %al
# 0 "" 2
#NO_APP
	movl	%eax, %esi
.LVL1975:
.LBE10474:
	addl	%esi, %ecx
.LVL1976:
	.loc 16 72 0
	incl	%edx
.LVL1977:
	cmpl	$35, %edx
	jne	.L1168
	movl	%edi, 4(%esp)
.LBE10473:
.LBE10472:
	.loc 24 648 0
#APP
# 648 "src/disk.c" 1
	movw (%edi), %ES
# 0 "" 2
#NO_APP
	movzwl	8(%edi), %edx
.LVL1978:
	negl	%ecx
.LVL1979:
#APP
# 648 "src/disk.c" 1
	movb %cl, %ES:65(%edx)
# 0 "" 2
#NO_APP
.LBE10471:
.LBB10475:
.LBB10476:
	.loc 24 26 0
	cmpb	$0, 20(%edi)
.LVL1980:
.L1214:
	js	.L1169
.LBB10477:
	.loc 24 27 0
	movl	$64, %edx
.LVL1981:
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1170
.LVL1982:
.L1169:
.LBE10477:
.LBB10478:
	.loc 24 29 0
	movl	$64, %edx
.LVL1983:
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1170:
.LBE10478:
.LBB10479:
.LBB10480:
	.loc 14 77 0
	movl	4(%esp), %edx
	movb	$0, 29(%edx)
.LBB10481:
.LBB10482:
	.loc 14 62 0
	andw	$-2, 36(%edx)
	jmp	.L1192
.LVL1984:
.L1082:
.LBE10482:
.LBE10481:
.LBE10480:
.LBE10479:
.LBE10476:
.LBE10475:
.LBE10379:
.LBE10378:
.LBB10483:
.LBB10484:
	.loc 24 658 0
	movl	4(%esp), %ebx
	movb	20(%ebx), %dl
	cmpb	$-33, %dl
	ja	.L1171
.L1219:
.LBB10485:
.LBB10486:
	.loc 24 26 0
	testb	%dl, %dl
.L1221:
	js	.L1172
.LBB10487:
	.loc 24 27 0
#APP
# 27 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %eax
#APP
# 27 "src/disk.c" 1
	movb %al, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1183
.L1172:
.LBE10487:
.LBB10488:
	.loc 24 29 0
#APP
# 29 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	%esi, %edx
	jmp	.L1206
.L1171:
.LBE10488:
.LBE10486:
.LBE10485:
.LBB10489:
.LBB10490:
.LBB10491:
.LBB10492:
	.loc 14 60 0
	movl	4(%esp), %ebx
	orw	$1, 36(%ebx)
.LBE10492:
.LBE10491:
.LBE10490:
.LBE10489:
	.loc 24 665 0
	movb	$6, 29(%ebx)
	jmp	.L1192
.L1241:
.LBE10484:
.LBE10483:
.LBB10493:
.LBB10494:
	.loc 24 702 0
	movl	4(%esp), %esi
	movb	28(%esi), %dl
	cmpb	$3, %dl
	je	.L1176
	ja	.L1179
	decb	%dl
	jmp	.L1226
.L1179:
	cmpb	$4, %dl
	je	.L1177
	cmpb	$6, %dl
.L1226:
	jne	.L1174
	jmp	.L1178
.LVL1985:
.L1176:
.LBB10495:
.LBB10496:
.LBB10497:
.LBB10498:
	.loc 24 26 0
	movl	4(%esp), %edx
	cmpb	$0, 20(%edx)
	js	.L1182
.LBB10499:
	.loc 24 27 0
	movl	$64, %edx
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1183
.L1182:
.LBE10499:
.LBB10500:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
.L1206:
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1183:
.LBE10500:
.LBB10501:
.LBB10502:
	.loc 14 77 0
	movl	4(%esp), %ecx
	movb	$0, 29(%ecx)
.LBB10503:
.LBB10504:
	.loc 14 62 0
	andw	$-2, 36(%ecx)
	jmp	.L1192
.LVL1986:
.L1177:
.LBE10504:
.LBE10503:
.LBE10502:
.LBE10501:
.LBE10498:
.LBE10497:
.LBE10496:
.LBE10495:
.LBB10505:
.LBB10506:
.LBB10507:
.LBB10508:
	.loc 24 26 0
	movl	4(%esp), %ebx
	cmpb	$0, 20(%ebx)
	js	.L1184
.LBB10509:
	.loc 24 27 0
	movl	$64, %edx
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1185
.L1184:
.LBE10509:
.LBB10510:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1185:
.LBE10510:
.LBB10511:
.LBB10512:
	.loc 14 77 0
	movl	4(%esp), %esi
	movb	$0, 29(%esi)
.LBB10513:
.LBB10514:
	.loc 14 62 0
	andw	$-2, 36(%esi)
	jmp	.L1192
.LVL1987:
.L1178:
.LBE10514:
.LBE10513:
.LBE10512:
.LBE10511:
.LBE10508:
.LBE10507:
.LBE10506:
.LBE10505:
.LBB10515:
.LBB10516:
.LBB10517:
.LBB10518:
	.loc 24 26 0
	movl	4(%esp), %edi
.LVL1988:
	cmpb	$0, 20(%edi)
	js	.L1186
.LBB10519:
	.loc 24 27 0
	movl	$64, %edx
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1187
.L1186:
.LBE10519:
.LBB10520:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1187:
.LBE10520:
.LBB10521:
.LBB10522:
	.loc 14 77 0
	movl	4(%esp), %eax
	movb	$0, 29(%eax)
.LBB10523:
.LBB10524:
	.loc 14 62 0
	andw	$-2, 36(%eax)
	jmp	.L1192
.LVL1989:
.L1174:
.LBE10524:
.LBE10523:
.LBE10522:
.LBE10521:
.LBE10518:
.LBE10517:
.LBE10516:
.LBE10515:
.LBB10525:
.LBB10526:
.LBB10527:
.LBB10528:
	.loc 24 26 0
	movl	4(%esp), %edx
	cmpb	$0, 20(%edx)
	js	.L1188
.LBB10529:
	.loc 24 27 0
	movl	$64, %edx
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1189
.L1188:
.LBE10529:
.LBB10530:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1189:
.LBE10530:
.LBB10531:
.LBB10532:
.LBB10533:
.LBB10534:
	.loc 14 90 0
	movl	4(%esp), %ecx
	movb	$1, 29(%ecx)
.LBB10535:
.LBB10536:
	.loc 14 60 0
	orw	$1, 36(%ecx)
	jmp	.L1192
.L1058:
.LBE10536:
.LBE10535:
.LBE10534:
.LBE10533:
.LBE10532:
.LBE10531:
.LBE10528:
.LBE10527:
.LBE10526:
.LBE10525:
.LBE10494:
.LBE10493:
.LBB10537:
.LBB10538:
.LBB10539:
.LBB10540:
	.loc 24 40 0
	movl	4(%esp), %ebx
	cmpb	$0, 20(%ebx)
	js	.L1190
.LBB10541:
	.loc 24 41 0
	movl	$64, %edx
#APP
# 41 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 41 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1191
.L1190:
.LBE10541:
.LBB10542:
	.loc 24 43 0
	movl	$64, %edx
#APP
# 43 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 43 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1191:
.LBE10542:
.LBB10543:
.LBB10544:
.LBB10545:
.LBB10546:
	.loc 14 90 0
	movl	4(%esp), %esi
	movb	$1, 29(%esi)
.LVL1990:
.L1198:
.LBB10547:
.LBB10548:
	.loc 14 60 0
	orw	$1, 36(%esi)
.LVL1991:
.L1192:
.LBE10548:
.LBE10547:
.LBE10546:
.LBE10545:
.LBE10544:
.LBE10543:
.LBE10540:
.LBE10539:
.LBE10538:
.LBE10537:
	.loc 24 753 0
	addl	$28, %esp
	popl	%ebx
.LVL1992:
	popl	%esi
.LVL1993:
	popl	%edi
.LVL1994:
	popl	%ebp
.LVL1995:
	ret
	.cfi_endproc
.LFE3083:
	.size	disk_13.64841, .-disk_13.64841
	.section	.text.handle_legacy_disk.64912,"ax",@progbits
	.type	handle_legacy_disk.64912, @function
handle_legacy_disk.64912:
.LFB3085:
	.loc 24 782 0
	.cfi_startproc
.LVL1996:
	pushl	%ebx
.LCFI397:
	.cfi_def_cfa_offset 8
	.loc 24 789 0
	testb	%dl, %dl
	js	.L1244
	.cfi_offset 3, -8
.LBB10549:
.LBB10550:
.LBB10551:
	.loc 25 21 0
	cmpb	$15, %dl
	ja	.L1245
.LBB10552:
	.loc 25 23 0
	movzbl	%dl, %edx
.LVL1997:
#APP
# 23 "src/block.c" 1
	movl %CS:Drives+4(,%edx,4), %edx
# 0 "" 2
.LVL1998:
#NO_APP
.LBE10552:
	.loc 25 24 0
	testl	%edx, %edx
	je	.L1245
.LBE10551:
.LBE10550:
	.loc 24 791 0
	subl	$983040, %edx
.LVL1999:
	je	.L1245
.LBB10553:
.LBB10554:
	.loc 24 759 0
	cmpb	$22, 29(%eax)
	ja	.L1246
	movsbl	29(%eax),%ecx
	movl	$1, %ebx
	sall	%cl, %ebx
	andl	$6291775, %ebx
	jne	.L1258
.L1246:
.LBB10555:
.LBB10556:
.LBB10557:
.LBB10558:
	.loc 24 40 0
	cmpb	$0, 20(%eax)
	js	.L1248
.LBB10559:
	.loc 24 41 0
	movl	$64, %edx
.LVL2000:
#APP
# 41 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 41 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1254
.LVL2001:
.L1248:
.LBE10559:
.LBB10560:
	.loc 24 43 0
	movl	$64, %edx
.LVL2002:
#APP
# 43 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 43 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
	jmp	.L1254
.LVL2003:
.L1244:
.LBE10560:
.LBE10558:
.LBE10557:
.LBE10556:
.LBE10555:
.LBE10554:
.LBE10553:
.LBE10549:
	.loc 24 798 0
	cmpb	$-33, %dl
	jbe	.L1251
	.loc 24 799 0
	addl	$32, %edx
.LVL2004:
.LBB10561:
.LBB10562:
	.loc 25 21 0
	cmpb	$15, %dl
	ja	.L1245
.LBB10563:
	.loc 25 23 0
	movzbl	%dl, %edx
#APP
# 23 "src/block.c" 1
	movl %CS:Drives+132(,%edx,4), %edx
# 0 "" 2
.LVL2005:
#NO_APP
	jmp	.L1257
.LVL2006:
.L1251:
.LBE10563:
.LBE10562:
.LBE10561:
	.loc 24 801 0
	addl	$-128, %edx
.LVL2007:
.LBB10564:
.LBB10565:
	.loc 25 21 0
	cmpb	$15, %dl
	ja	.L1245
.LBB10566:
	.loc 25 23 0
	movzbl	%dl, %edx
#APP
# 23 "src/block.c" 1
	movl %CS:Drives+68(,%edx,4), %edx
# 0 "" 2
.LVL2008:
#NO_APP
.L1257:
.LBE10566:
	.loc 25 24 0
	testl	%edx, %edx
	je	.L1245
	.loc 25 26 0
	subl	$983040, %edx
.LVL2009:
.LBE10565:
.LBE10564:
	.loc 24 802 0
	testl	%edx, %edx
	je	.L1245
.LVL2010:
.L1258:
	.loc 24 810 0
	popl	%ebx
	.loc 24 804 0
	jmp	disk_13.64841
.LVL2011:
.L1245:
.LBB10567:
.LBB10568:
	.loc 24 26 0
	cmpb	$0, 20(%eax)
	js	.L1253
.LBB10569:
	.loc 24 27 0
	movl	$64, %edx
.LVL2012:
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1254
.LVL2013:
.L1253:
.LBE10569:
.LBB10570:
	.loc 24 29 0
	movl	$64, %edx
.LVL2014:
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1254:
.LBE10570:
.LBB10571:
.LBB10572:
.LBB10573:
.LBB10574:
	.loc 14 90 0
	movb	$1, 29(%eax)
.LBB10575:
.LBB10576:
	.loc 14 60 0
	orw	$1, 36(%eax)
.LBE10576:
.LBE10575:
.LBE10574:
.LBE10573:
.LBE10572:
.LBE10571:
.LBE10568:
.LBE10567:
	.loc 24 810 0
	popl	%ebx
	ret
	.cfi_endproc
.LFE3085:
	.size	handle_legacy_disk.64912, .-handle_legacy_disk.64912
	.section	.text.handle_13,"ax",@progbits
.globl handle_13
	.type	handle_13, @function
handle_13:
.LFB3087:
	.loc 24 822 0
	.cfi_startproc
.LVL2015:
	pushl	%ebp
.LCFI398:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI399:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI400:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI401:
	.cfi_def_cfa_offset 20
	subl	$8, %esp
.LCFI402:
	.cfi_def_cfa_offset 28
	.loc 24 824 0
	movb	20(%eax), %dl
	movb	%dl, 3(%esp)
.LBB10577:
	.loc 24 827 0
	movb	29(%eax), %cl
	movb	%cl, 7(%esp)
	cmpb	$75, %cl
	jne	.L1260
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LBB10599:
.LBB10600:
.LBB10601:
.LBB10602:
	.loc 10 253 0
	movl	$64, %ecx
#APP
# 253 "src/biosvar.h" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10603:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %si
# 0 "" 2
.LVL2016:
#NO_APP
.LBE10603:
.LBE10602:
.LBE10601:
.LBB10604:
	.file 34 "src/cdrom.c"
	.loc 34 155 0
	movw	(%eax), %bx
#APP
# 155 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
	movzwl	8(%eax), %ecx
	movl	$19, %edi
	movl	%edi, %edx
#APP
# 155 "src/cdrom.c" 1
	movb %dl, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE10604:
.LBB10605:
	.loc 34 156 0
#APP
# 156 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10606:
#APP
# 156 "src/cdrom.c" 1
	movb %ES:317, %dl
# 0 "" 2
#NO_APP
.LBE10606:
#APP
# 156 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
# 156 "src/cdrom.c" 1
	movb %dl, %ES:1(%ecx)
# 0 "" 2
#NO_APP
.LBE10605:
.LBB10607:
	.loc 34 157 0
#APP
# 157 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10608:
#APP
# 157 "src/cdrom.c" 1
	movb %ES:318, %dl
# 0 "" 2
#NO_APP
.LBE10608:
#APP
# 157 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
# 157 "src/cdrom.c" 1
	movb %dl, %ES:2(%ecx)
# 0 "" 2
#NO_APP
.LBE10607:
	.loc 34 159 0
#APP
# 159 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10609:
#APP
# 159 "src/cdrom.c" 1
	movl %ES:302, %ebp
# 0 "" 2
.LVL2017:
#NO_APP
.LBE10609:
	.loc 34 161 0
	xorl	%edi, %edi
.LVL2018:
	testl	%ebp, %ebp
	je	.L1262
.LBB10610:
	.loc 34 162 0
#APP
# 162 "src/cdrom.c" 1
	movl %CS:-983020(%ebp), %edi
# 0 "" 2
.LVL2019:
#NO_APP
.L1262:
.LBE10610:
.LBB10611:
	.loc 34 163 0
#APP
# 163 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
	movl	%edi, %edx
	shrb	%dl
#APP
# 163 "src/cdrom.c" 1
	movb %dl, %ES:3(%ecx)
# 0 "" 2
#NO_APP
.LBE10611:
.LBB10612:
	.loc 34 164 0
#APP
# 164 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
	andl	$1, %edi
.LVL2020:
#APP
# 164 "src/cdrom.c" 1
	movw %di, %ES:8(%ecx)
# 0 "" 2
#NO_APP
.LBE10612:
.LBB10613:
	.loc 34 165 0
#APP
# 165 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10614:
#APP
# 165 "src/cdrom.c" 1
	movl %ES:306, %edi
# 0 "" 2
.LVL2021:
#NO_APP
.LBE10614:
#APP
# 165 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
# 165 "src/cdrom.c" 1
	movl %edi, %ES:4(%ecx)
# 0 "" 2
#NO_APP
.LBE10613:
.LBB10615:
	.loc 34 166 0
#APP
# 166 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10616:
#APP
# 166 "src/cdrom.c" 1
	movw %ES:310, %di
# 0 "" 2
.LVL2022:
#NO_APP
.LBE10616:
#APP
# 166 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
# 166 "src/cdrom.c" 1
	movw %di, %ES:10(%ecx)
# 0 "" 2
#NO_APP
.LBE10615:
.LBB10617:
	.loc 34 167 0
#APP
# 167 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10618:
#APP
# 167 "src/cdrom.c" 1
	movw %ES:312, %di
# 0 "" 2
.LVL2023:
#NO_APP
.LBE10618:
#APP
# 167 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
# 167 "src/cdrom.c" 1
	movw %di, %ES:12(%ecx)
# 0 "" 2
#NO_APP
.LBE10617:
.LBB10619:
	.loc 34 168 0
#APP
# 168 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10620:
#APP
# 168 "src/cdrom.c" 1
	movw %ES:314, %di
# 0 "" 2
.LVL2024:
#NO_APP
.LBE10620:
#APP
# 168 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
# 168 "src/cdrom.c" 1
	movw %di, %ES:14(%ecx)
# 0 "" 2
#NO_APP
.LBE10619:
.LBB10621:
	.loc 34 169 0
#APP
# 169 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10622:
#APP
# 169 "src/cdrom.c" 1
	movw %ES:322, %di
# 0 "" 2
.LVL2025:
#NO_APP
.LBE10622:
#APP
# 169 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
	movl	%edi, %edx
.LVL2026:
#APP
# 169 "src/cdrom.c" 1
	movb %dl, %ES:16(%ecx)
# 0 "" 2
#NO_APP
.LBE10621:
.LBB10623:
	.loc 34 170 0
#APP
# 170 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10624:
#APP
# 170 "src/cdrom.c" 1
	movw %ES:324, %di
# 0 "" 2
.LVL2027:
#NO_APP
.LBE10624:
#APP
# 170 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
	movl	%edi, %edx
.LVL2028:
#APP
# 170 "src/cdrom.c" 1
	movb %dl, %ES:17(%ecx)
# 0 "" 2
#NO_APP
.LBE10623:
.LBB10625:
	.loc 34 171 0
#APP
# 171 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10626:
#APP
# 171 "src/cdrom.c" 1
	movw %ES:320, %di
# 0 "" 2
.LVL2029:
#NO_APP
.LBE10626:
#APP
# 171 "src/cdrom.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
	movl	%edi, %edx
.LVL2030:
#APP
# 171 "src/cdrom.c" 1
	movb %dl, %ES:18(%ecx)
# 0 "" 2
#NO_APP
.LBE10625:
	.loc 34 174 0
	cmpb	$0, 28(%eax)
	jne	.L1263
.LBB10627:
	.loc 34 176 0
#APP
# 176 "src/cdrom.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
	xorl	%ecx, %ecx
#APP
# 176 "src/cdrom.c" 1
	movb %cl, %ES:316
# 0 "" 2
#NO_APP
.L1263:
.LBE10627:
.LBB10628:
.LBB10629:
	.loc 24 26 0
	cmpb	$0, 3(%esp)
	js	.L1264
.LBB10630:
	.loc 24 27 0
	movl	$64, %edx
#APP
# 27 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 27 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1265
.L1264:
.LBE10630:
.LBB10631:
	.loc 24 29 0
	movl	$64, %edx
#APP
# 29 "src/disk.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	xorl	%edx, %edx
#APP
# 29 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1265:
.LBE10631:
.LBB10632:
.LBB10633:
	.loc 14 77 0
	movb	$0, 29(%eax)
.LBB10634:
.LBB10635:
	.loc 14 62 0
	andw	$-2, 36(%eax)
.LBE10635:
.LBE10634:
.LBE10633:
.LBE10632:
.LBE10629:
.LBE10628:
.LBE10600:
.LBE10599:
	.loc 24 829 0
	jmp	.L1272
.LVL2031:
.L1260:
.LBB10596:
.LBB10597:
	.loc 10 253 0
	movl	$64, %ecx
#APP
# 253 "src/biosvar.h" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10598:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %bx
# 0 "" 2
.LVL2032:
#NO_APP
.LBE10598:
.LBE10597:
.LBE10596:
	.loc 24 832 0
#APP
# 832 "src/disk.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB10595:
#APP
# 832 "src/disk.c" 1
	movb %ES:316, %dl
# 0 "" 2
#NO_APP
.LBE10595:
	testb	%dl, %dl
	je	.L1267
.LBB10578:
	.loc 24 833 0
#APP
# 833 "src/disk.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB10593:
#APP
# 833 "src/disk.c" 1
	movb %ES:318, %bl
# 0 "" 2
.LVL2033:
#NO_APP
.LBE10593:
	.loc 24 834 0
	cmpb	%bl, 3(%esp)
	jne	.L1268
.LBB10579:
.LBB10592:
	.loc 24 837 0
#APP
# 837 "src/disk.c" 1
	movl %CS:cdemu_drive_gf, %ebx
# 0 "" 2
.LVL2034:
#NO_APP
.LBE10592:
	.loc 24 838 0
	cmpb	$22, 7(%esp)
	jbe	.L1269
.LBB10580:
.LBB10581:
.LBB10582:
.LBB10583:
	.loc 24 40 0
	cmpb	$0, 3(%esp)
	js	.L1270
.LBB10584:
	.loc 24 41 0
#APP
# 41 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 41 "src/disk.c" 1
	movb %dl, %ES:65
# 0 "" 2
#NO_APP
	jmp	.L1271
.L1270:
.LBE10584:
.LBB10585:
	.loc 24 43 0
#APP
# 43 "src/disk.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movb	$1, %dl
#APP
# 43 "src/disk.c" 1
	movb %dl, %ES:116
# 0 "" 2
#NO_APP
.L1271:
.LBE10585:
.LBB10586:
.LBB10587:
.LBB10588:
.LBB10589:
	.loc 14 90 0
	movb	$1, 29(%eax)
.LBB10590:
.LBB10591:
	.loc 14 60 0
	orw	$1, 36(%eax)
	jmp	.L1272
.L1269:
.LBE10591:
.LBE10590:
.LBE10589:
.LBE10588:
.LBE10587:
.LBE10586:
.LBE10583:
.LBE10582:
.LBE10581:
.LBE10580:
	.loc 24 843 0
	leal	-983040(%ebx), %edx
.LBE10579:
.LBE10578:
.LBE10577:
	.loc 24 852 0
	popl	%esi
.LCFI403:
	.cfi_def_cfa_offset 24
	popl	%edi
.LCFI404:
	.cfi_def_cfa_offset 20
	popl	%ebx
.LVL2035:
	popl	%esi
	popl	%edi
	popl	%ebp
.LBB10637:
.LBB10636:
.LBB10594:
	.loc 24 843 0
	jmp	disk_13.64841
.LVL2036:
.L1268:
.LBE10594:
	.loc 24 846 0
	cmpb	$-33, 3(%esp)
	ja	.L1267
	xorb	3(%esp), %bl
.LVL2037:
	.loc 24 848 0
	cmpb	$-128, %bl
	sbbb	$0, 3(%esp)
.LVL2038:
.L1267:
.LBE10636:
.LBE10637:
	.loc 24 851 0
	movzbl	3(%esp), %edx
.LVL2039:
	.loc 24 852 0
	popl	%ecx
.LCFI405:
	.cfi_def_cfa_offset 16
	popl	%ebx
.LCFI406:
	.cfi_def_cfa_offset 12
.LVL2040:
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	.loc 24 851 0
	jmp	handle_legacy_disk.64912
.LVL2041:
.L1272:
	.loc 24 852 0
	popl	%eax
.LCFI407:
	.cfi_def_cfa_offset 8
.LVL2042:
	popl	%edx
.LCFI408:
	.cfi_def_cfa_offset 4
	popl	%ebx
.LVL2043:
	popl	%esi
.LVL2044:
	popl	%edi
	popl	%ebp
.LVL2045:
	ret
	.cfi_endproc
.LFE3087:
	.size	handle_13, .-handle_13
	.section	.text.handle_40,"ax",@progbits
.globl handle_40
	.type	handle_40, @function
handle_40:
.LFB3086:
	.loc 24 814 0
	.cfi_startproc
.LVL2046:
	pushl	%ebx
.LCFI409:
	.cfi_def_cfa_offset 8
	movl	%eax, %ebx
	.cfi_offset 3, -8
.LBB10638:
.LBB10639:
	.loc 3 464 0
	pushl	$__func__.64939
.LCFI410:
	.cfi_def_cfa_offset 12
	pushl	$.LC6
.LCFI411:
	.cfi_def_cfa_offset 16
	.cfi_escape 0x2e,0x8
	call	__dprintf.1656
.LVL2047:
	popl	%eax
.LCFI412:
	.cfi_def_cfa_offset 12
	popl	%edx
.LCFI413:
	.cfi_def_cfa_offset 8
	.loc 3 465 0
	movl	%ebx, %eax
	.cfi_escape 0x2e,0x0
	call	dump_regs.7898
.LBE10639:
.LBE10638:
	.loc 24 816 0
	movzbl	20(%ebx), %edx
	movl	%ebx, %eax
	.loc 24 817 0
	popl	%ebx
.LVL2048:
	.loc 24 816 0
	jmp	handle_legacy_disk.64912
	.cfi_endproc
.LFE3086:
	.size	handle_40, .-handle_40
	.section	.rodata.str1.1
.LC24:
	.string	"src/virtio-ring.c"
.LC25:
	.string	"BUG: failure at %s:%d/%s()!\n"
	.section	.text.T.2325,"ax",@progbits
	.type	T.2325, @function
T.2325:
.LFB3089:
	.file 35 "src/virtio-ring.c"
	.loc 35 102 0
	.cfi_startproc
.LVL2049:
	pushl	%ebp
.LCFI414:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI415:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI416:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI417:
	.cfi_def_cfa_offset 20
	subl	$64, %esp
.LCFI418:
	.cfi_def_cfa_offset 84
.LBB10640:
	.loc 35 109 0
	leal	5128(%eax), %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%ebx, %esi
	shrl	$4, %esi
#APP
# 109 "src/virtio-ring.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10641:
	andl	$15, %ebx
#APP
# 109 "src/virtio-ring.c" 1
	movl %ES:(%ebx), %esi
# 0 "" 2
#NO_APP
	movl	%esi, 24(%esp)
.LBE10641:
.LBE10640:
.LBB10642:
	.loc 35 110 0
	leal	5132(%eax), %ebx
	movl	%ebx, %esi
	shrl	$4, %esi
#APP
# 110 "src/virtio-ring.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10643:
	andl	$15, %ebx
#APP
# 110 "src/virtio-ring.c" 1
	movl %ES:(%ebx), %edi
# 0 "" 2
#NO_APP
	movl	%edi, 40(%esp)
.LBE10643:
.LBE10642:
	.loc 35 112 0
	movl	84(%esp), %ebx
	addl	%ecx, %ebx
	testl	%ebx, %ebx
	jne	.L1276
	pushl	$__func__.54923
.LCFI419:
	.cfi_def_cfa_offset 88
	pushl	$112
.LCFI420:
	.cfi_def_cfa_offset 92
	pushl	$.LC24
.LCFI421:
	.cfi_def_cfa_offset 96
	pushl	$.LC25
.LCFI422:
	.cfi_def_cfa_offset 100
	.cfi_escape 0x2e,0x10
	call	__dprintf.1656
.LVL2050:
	addl	$16, %esp
.LCFI423:
	.cfi_def_cfa_offset 84
.L1277:
	jmp	.L1277
.LVL2051:
.L1276:
.LBB10644:
	.loc 35 115 0
	leal	5140(%eax), %ebx
	movl	%ebx, %esi
	shrl	$4, %esi
	movl	%esi, 28(%esp)
#APP
# 115 "src/virtio-ring.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10645:
	andl	$15, %ebx
	movl	%ebx, 32(%esp)
#APP
# 115 "src/virtio-ring.c" 1
	movw %ES:(%ebx), %di
# 0 "" 2
#NO_APP
	movw	%di, 46(%esp)
.LBE10645:
.LBE10644:
	movzwl	%di, %ebx
	movl	%ebx, 36(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, %edi
	xorl	%esi, %esi
.LVL2052:
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	jmp	.L1278
.LVL2053:
.L1279:
.LBB10646:
	.loc 35 117 0
	movl	%ebx, %esi
	sall	$4, %esi
	addl	24(%esp), %esi
.LBB10647:
	leal	12(%esi), %ebp
.LVL2054:
	movl	%ebp, %edx
	shrl	$4, %edx
#APP
# 117 "src/virtio-ring.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	andl	$15, %ebp
	movl	$1, %eax
.LVL2055:
#APP
# 117 "src/virtio-ring.c" 1
	movw %ax, %ES:(%ebp)
# 0 "" 2
#NO_APP
.LBE10647:
.LBE10646:
.LBB10648:
.LBB10649:
	.loc 35 118 0
	movl	(%edi), %eax
	xorl	%edx, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, %ebp
	shrl	$4, %ebp
#APP
# 118 "src/virtio-ring.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
.LBB10650:
	movl	%esi, %edx
	andl	$15, %edx
	movl	%edx, 16(%esp)
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	%eax, 56(%esp)
	movl	%edx, 60(%esp)
	movl	16(%esp), %edx
#APP
# 118 "src/virtio-ring.c" 1
	movl %eax, %ES:(%edx)
# 0 "" 2
#NO_APP
	movl	60(%esp), %ebp
#APP
# 118 "src/virtio-ring.c" 1
	movl %ebp, %ES:4(%edx)
# 0 "" 2
#NO_APP
.LBE10650:
.LBE10649:
.LBE10648:
.LBB10651:
.LBB10652:
	.loc 35 119 0
	leal	8(%esi), %ebp
	movl	%ebp, %edx
	shrl	$4, %edx
#APP
# 119 "src/virtio-ring.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	andl	$15, %ebp
	movl	4(%edi), %eax
#APP
# 119 "src/virtio-ring.c" 1
	movl %eax, %ES:(%ebp)
# 0 "" 2
#NO_APP
.LBE10652:
.LBE10651:
	.loc 35 121 0
	addl	$8, %edi
.LBB10653:
	.loc 35 116 0
	addl	$14, %esi
	movl	%esi, %ebp
	shrl	$4, %ebp
#APP
# 116 "src/virtio-ring.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
.LBB10654:
	andl	$15, %esi
#APP
# 116 "src/virtio-ring.c" 1
	movw %ES:(%esi), %bp
# 0 "" 2
.LVL2056:
#NO_APP
.LBE10654:
.LBE10653:
	decl	20(%esp)
	movl	%ebx, %esi
	movzwl	%bp, %ebx
.LVL2057:
.L1278:
	cmpl	$0, 20(%esp)
	jne	.L1279
	movl	4(%esp), %eax
.LVL2058:
	movl	(%esp), %edx
.LVL2059:
	leal	(%edx,%ecx,8), %ecx
.LVL2060:
	jmp	.L1280
.LVL2061:
.L1281:
.LBB10655:
	.loc 35 124 0
	movl	%ebx, %edx
.LVL2062:
	sall	$4, %edx
	addl	24(%esp), %edx
.LBB10656:
	leal	12(%edx), %esi
	movl	%esi, %edi
.LVL2063:
	shrl	$4, %edi
#APP
# 124 "src/virtio-ring.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
	andl	$15, %esi
	movl	$3, %edi
#APP
# 124 "src/virtio-ring.c" 1
	movw %di, %ES:(%esi)
# 0 "" 2
#NO_APP
.LBE10656:
.LBE10655:
.LBB10657:
.LBB10658:
	.loc 35 125 0
	movl	(%ecx), %edi
.LVL2064:
	xorl	%ebp, %ebp
.LVL2065:
	movl	%edx, %esi
	shrl	$4, %esi
#APP
# 125 "src/virtio-ring.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10659:
	movl	%edx, %esi
.LVL2066:
	andl	$15, %esi
	movl	%edi, 48(%esp)
	movl	%ebp, 52(%esp)
#APP
# 125 "src/virtio-ring.c" 1
	movl %edi, %ES:(%esi)
# 0 "" 2
#NO_APP
	movl	52(%esp), %edi
.LVL2067:
#APP
# 125 "src/virtio-ring.c" 1
	movl %edi, %ES:4(%esi)
# 0 "" 2
#NO_APP
.LBE10659:
.LBE10658:
.LBE10657:
.LBB10660:
.LBB10661:
	.loc 35 126 0
	movl	4(%ecx), %edi
.LVL2068:
	leal	8(%edx), %esi
.LVL2069:
	movl	%esi, %ebp
.LVL2070:
	shrl	$4, %ebp
#APP
# 126 "src/virtio-ring.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
	andl	$15, %esi
#APP
# 126 "src/virtio-ring.c" 1
	movl %edi, %ES:(%esi)
# 0 "" 2
#NO_APP
.LBE10661:
.LBE10660:
	.loc 35 128 0
	addl	$8, %ecx
.LBB10662:
	.loc 35 123 0
	addl	$14, %edx
	movl	%edx, %esi
	shrl	$4, %esi
#APP
# 123 "src/virtio-ring.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10663:
	andl	$15, %edx
#APP
# 123 "src/virtio-ring.c" 1
	movw %ES:(%edx), %dx
# 0 "" 2
.LVL2071:
#NO_APP
.LBE10663:
.LBE10662:
	decl	84(%esp)
.LVL2072:
	movl	%ebx, %esi
	movzwl	%dx, %ebx
.LVL2073:
.L1280:
	cmpl	$0, 84(%esp)
	jne	.L1281
.LBB10664:
.LBB10665:
.LBB10666:
	.loc 35 130 0
	sall	$4, %esi
	movl	24(%esp), %edx
.LVL2074:
	leal	12(%edx,%esi), %ecx
.LVL2075:
	movl	%ecx, %esi
	shrl	$4, %esi
#APP
# 130 "src/virtio-ring.c" 1
	movw %si, %ES
# 0 "" 2
#NO_APP
.LBB10667:
	andl	$15, %ecx
#APP
# 130 "src/virtio-ring.c" 1
	movw %ES:(%ecx), %dx
# 0 "" 2
#NO_APP
.LBE10667:
.LBE10666:
	andl	$-2, %edx
#APP
# 130 "src/virtio-ring.c" 1
	movw %dx, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE10665:
.LBE10664:
.LBB10668:
.LBB10669:
	.loc 35 133 0
#APP
# 133 "src/virtio-ring.c" 1
	movw 28(%esp), %ES
# 0 "" 2
#NO_APP
	movl	32(%esp), %ecx
#APP
# 133 "src/virtio-ring.c" 1
	movw %bx, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE10669:
.LBE10668:
.LBB10670:
.LBB10671:
	.loc 35 135 0
	movl	36(%esp), %ebx
.LVL2076:
	leal	5144(%eax,%ebx,2), %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
#APP
# 135 "src/virtio-ring.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	andl	$15, %edx
	xorl	%ecx, %ecx
#APP
# 135 "src/virtio-ring.c" 1
	movw %cx, %ES:(%edx)
# 0 "" 2
#NO_APP
.LBE10671:
.LBE10670:
.LBB10672:
	.loc 35 137 0
	movl	40(%esp), %edx
	addl	$2, %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
#APP
# 137 "src/virtio-ring.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10673:
	andl	$15, %edx
#APP
# 137 "src/virtio-ring.c" 1
	movw %ES:(%edx), %bx
# 0 "" 2
.LVL2077:
#NO_APP
.LBE10673:
.LBE10672:
.LBB10674:
	leal	5124(%eax), %edx
	movl	%edx, %eax
.LVL2078:
	shrl	$4, %eax
#APP
# 137 "src/virtio-ring.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB10675:
	andl	$15, %edx
#APP
# 137 "src/virtio-ring.c" 1
	movl %ES:(%edx), %ecx
# 0 "" 2
.LVL2079:
#NO_APP
.LBE10675:
.LBE10674:
.LBB10676:
.LBB10677:
	.loc 35 138 0
	movzwl	%bx, %eax
.LVL2080:
	xorl	%edx, %edx
	divl	%ecx
.LVL2081:
	movl	40(%esp), %esi
	leal	4(%esi,%edx,2), %eax
	movl	%eax, %edx
	shrl	$4, %edx
#APP
# 138 "src/virtio-ring.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	andl	$15, %eax
	movw	46(%esp), %di
.LVL2082:
#APP
# 138 "src/virtio-ring.c" 1
	movw %di, %ES:(%eax)
# 0 "" 2
#NO_APP
.LBE10677:
.LBE10676:
	.loc 35 139 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
.LVL2083:
	ret	$4
	.cfi_endproc
.LFE3089:
	.size	T.2325, .-T.2325
	.section	.text.virtio_blk_op.57727,"ax",@progbits
	.type	virtio_blk_op.57727, @function
virtio_blk_op.57727:
.LFB2764:
	.file 36 "src/virtio-blk.c"
	.loc 36 30 0
	.cfi_startproc
.LVL2084:
	pushl	%ebp
.LCFI424:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI425:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI426:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI427:
	.cfi_def_cfa_offset 20
	subl	$64, %esp
.LCFI428:
	.cfi_def_cfa_offset 84
.LBB10678:
	.loc 36 32 0
	movl	12(%eax), %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LVL2085:
.LBE10678:
.LBB10679:
	.loc 36 33 0
#APP
# 33 "src/virtio-blk.c" 1
	movl %CS:36(%esi), %ebx
# 0 "" 2
.LVL2086:
#NO_APP
.LBE10679:
	.loc 36 37 0
	movl	(%eax), %edi
	movl	4(%eax), %ebp
	.loc 36 38 0
	xorl	%ecx, %ecx
	testl	%edx, %edx
	setne	%cl
	movl	%ecx, 44(%esp)
	movl	$0, 48(%esp)
	movl	%edi, 52(%esp)
	movl	%ebp, 56(%esp)
	.loc 36 39 0
	movb	$2, 63(%esp)
.LVL2087:
.LBB10680:
	.loc 36 42 0
#APP
# 42 "src/virtio-blk.c" 1
	movw %SS, %bp
# 0 "" 2
.LVL2088:
#NO_APP
.LBE10680:
	.loc 36 53 0
	movl	8(%eax), %edi
.LBB10681:
	.loc 36 47 0
#APP
# 47 "src/virtio-blk.c" 1
	movw %CS:26(%esi), %cx
# 0 "" 2
.LVL2089:
#NO_APP
.LBE10681:
	.loc 36 53 0
	movzwl	%cx, %ecx
.LVL2090:
	movzwl	16(%eax), %eax
.LVL2091:
	imull	%eax, %ecx
	movzwl	%bp, %eax
	sall	$4, %eax
	leal	44(%esp,%eax), %ebp
.LVL2092:
	movl	%ebp, 20(%esp)
	movl	$16, 24(%esp)
	movl	%edi, 28(%esp)
	movl	%ecx, 32(%esp)
	leal	63(%esp,%eax), %eax
	movl	%eax, 36(%esp)
	movl	$1, 40(%esp)
	.loc 36 56 0
	testl	%edx, %edx
	leal	20(%esp), %edx
.LVL2093:
	je	.L1284
	.loc 36 57 0
	pushl	$1
.LCFI429:
	.cfi_def_cfa_offset 88
	movl	$2, %ecx
	jmp	.L1300
.LCFI430:
	.cfi_def_cfa_offset 84
.L1284:
	.loc 36 59 0
	pushl	$2
.LCFI431:
	.cfi_def_cfa_offset 88
	movl	$1, %ecx
.L1300:
	movl	%ebx, %eax
	.cfi_escape 0x2e,0x4
	call	T.2325
.LCFI432:
	.cfi_def_cfa_offset 84
.LBB10682:
	.loc 36 60 0
#APP
# 60 "src/virtio-blk.c" 1
	movw %CS:40(%esi), %dx
# 0 "" 2
.LVL2094:
#NO_APP
.LBE10682:
.LBB10683:
.LBB10684:
.LBB10685:
	.loc 35 144 0
	leal	5132(%ebx), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
#APP
# 144 "src/virtio-ring.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10686:
	andl	$15, %eax
#APP
# 144 "src/virtio-ring.c" 1
	movl %ES:(%eax), %eax
# 0 "" 2
.LVL2095:
#NO_APP
.LBE10686:
.LBE10685:
	.loc 35 147 0
.LBB10687:
.LBB10688:
.LBB10689:
	.loc 35 148 0
	addl	$2, %eax
.LVL2096:
	movl	%eax, %ecx
	shrl	$4, %ecx
#APP
# 148 "src/virtio-ring.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10690:
	andl	$15, %eax
#APP
# 148 "src/virtio-ring.c" 1
	movw %ES:(%eax), %di
# 0 "" 2
.LVL2097:
#NO_APP
.LBE10690:
.LBE10689:
	leal	1(%edi), %ecx
#APP
# 148 "src/virtio-ring.c" 1
	movw %cx, %ES:(%eax)
# 0 "" 2
#NO_APP
.LBE10688:
.LBE10687:
.LBB10691:
	.loc 35 150 0
	leal	5400(%ebx), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
#APP
# 150 "src/virtio-ring.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10692:
	andl	$15, %eax
#APP
# 150 "src/virtio-ring.c" 1
	movl %ES:(%eax), %eax
# 0 "" 2
.LVL2098:
#NO_APP
.LBE10692:
.LBE10691:
.LBB10693:
.LBB10694:
.LBB10695:
	.loc 2 86 0
	addl	$16, %edx
.LVL2099:
#APP
# 86 "src/ioport.h" 1
	outw %ax, %dx
# 0 "" 2
#NO_APP
.LBE10695:
.LBE10694:
.LBE10693:
.LBE10684:
.LBE10683:
.LBB10696:
.LBB10697:
.LBB10701:
	.loc 35 40 0
	leal	5136(%ebx), %eax
.LVL2100:
	movl	%eax, %edx
	shrl	$4, %edx
	movl	%edx, (%esp)
.LBB10702:
	andl	$15, %eax
	movl	%eax, 8(%esp)
.LBE10702:
.LBE10701:
.LBB10698:
	.loc 35 41 0
	leal	5142(%ebx), %ecx
	movl	%ecx, %edi
.LVL2101:
	shrl	$4, %edi
	movl	%edi, 4(%esp)
.LBB10699:
	andl	$15, %ecx
	jmp	.L1298
.LVL2102:
.L1290:
.LBE10699:
.LBE10698:
.LBE10697:
.LBE10696:
.LBB10709:
.LBB10710:
	.loc 7 124 0
#APP
# 124 "src/clock.c" 1
	movl %CS:cpu_khz, %edi
# 0 "" 2
.LVL2103:
#NO_APP
.LBE10710:
.LBB10711:
.LBB10712:
.LBB10713:
.LBB10714:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL2104:
#NO_APP
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
.LVL2105:
.LBE10714:
.LBE10713:
	.loc 7 105 0
	leal	(%edi,%edi,4), %eax
	movl	$1000, %edi
.LVL2106:
	xorl	%edx, %edx
	divl	%edi
	xorl	%edx, %edx
.LVL2107:
	addl	12(%esp), %eax
.LVL2108:
	adcl	16(%esp), %edx
.LVL2109:
	movl	%eax, %edi
	movl	%edx, %ebp
	jmp	.L1287
.LVL2110:
.L1288:
.LBB10715:
.LBB10716:
.LBB10717:
.LBB10718:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
.LVL2111:
#NO_APP
.L1287:
.LBE10718:
.LBE10717:
.LBE10716:
.LBE10715:
.LBB10719:
.LBB10720:
.LBB10721:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
.LBE10721:
.LBE10720:
.LBE10719:
	.loc 7 106 0
	subl	%edi, 12(%esp)
	sbbl	%ebp, 16(%esp)
	cmpl	$0, 16(%esp)
	jl	.L1288
	jg	.L1298
	cmpl	$0, 12(%esp)
	jbe	.L1288
.L1298:
.LBE10712:
.LBE10711:
.LBE10709:
.LBB10722:
.LBB10708:
.LBB10704:
	.loc 35 40 0
#APP
# 40 "src/virtio-ring.c" 1
	movw (%esp), %ES
# 0 "" 2
#NO_APP
.LBB10703:
	movl	8(%esp), %edx
#APP
# 40 "src/virtio-ring.c" 1
	movl %ES:(%edx), %eax
# 0 "" 2
.LVL2112:
#NO_APP
.LBE10703:
.LBE10704:
.LBB10705:
	.loc 35 41 0
#APP
# 41 "src/virtio-ring.c" 1
	movw 4(%esp), %ES
# 0 "" 2
#NO_APP
.LBB10700:
#APP
# 41 "src/virtio-ring.c" 1
	movw %ES:(%ecx), %dx
# 0 "" 2
.LVL2113:
#NO_APP
.LBE10700:
.LBE10705:
.LBB10706:
	addl	$2, %eax
.LVL2114:
	movl	%eax, %edi
.LVL2115:
	shrl	$4, %edi
#APP
# 41 "src/virtio-ring.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB10707:
	andl	$15, %eax
#APP
# 41 "src/virtio-ring.c" 1
	movw %ES:(%eax), %ax
# 0 "" 2
.LVL2116:
#NO_APP
.LBE10707:
.LBE10706:
	.loc 35 43 0
.LBE10708:
.LBE10722:
	.loc 36 63 0
	cmpw	%ax, %dx
	je	.L1290
.LBB10723:
.LBB10724:
.LBB10725:
	.loc 35 82 0
#APP
# 82 "src/virtio-ring.c" 1
	movw (%esp), %ES
# 0 "" 2
#NO_APP
.LBB10726:
	movl	8(%esp), %ebp
.LVL2117:
#APP
# 82 "src/virtio-ring.c" 1
	movl %ES:(%ebp), %edi
# 0 "" 2
.LVL2118:
#NO_APP
.LBE10726:
.LBE10725:
.LBB10727:
	.loc 35 88 0
#APP
# 88 "src/virtio-ring.c" 1
	movw 4(%esp), %ES
# 0 "" 2
#NO_APP
.LBB10728:
#APP
# 88 "src/virtio-ring.c" 1
	movw %ES:(%ecx), %ax
# 0 "" 2
.LVL2119:
#NO_APP
.LBE10728:
.LBE10727:
.LBB10729:
	leal	5124(%ebx), %edx
.LVL2120:
	movl	%edx, %ebp
	shrl	$4, %ebp
#APP
# 88 "src/virtio-ring.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
.LBB10730:
	andl	$15, %edx
#APP
# 88 "src/virtio-ring.c" 1
	movl %ES:(%edx), %ebp
# 0 "" 2
.LVL2121:
#NO_APP
.LBE10730:
.LBE10729:
.LBB10731:
	.loc 35 89 0
	movzwl	%ax, %eax
.LVL2122:
	xorl	%edx, %edx
	divl	%ebp
.LVL2123:
	leal	4(%edi,%edx,8), %eax
	movl	%eax, %edx
	shrl	$4, %edx
#APP
# 89 "src/virtio-ring.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10732:
	andl	$15, %eax
#APP
# 89 "src/virtio-ring.c" 1
	movl %ES:(%eax), %eax
# 0 "" 2
.LVL2124:
#NO_APP
.LBE10732:
.LBE10731:
.LBB10733:
.LBB10734:
.LBB10735:
	.loc 35 56 0
	leal	5128(%ebx), %edx
	movl	%edx, %edi
.LVL2125:
	shrl	$4, %edi
#APP
# 56 "src/virtio-ring.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB10736:
	andl	$15, %edx
#APP
# 56 "src/virtio-ring.c" 1
	movl %ES:(%edx), %ebp
# 0 "" 2
.LVL2126:
#NO_APP
	movl	%eax, %edx
	movl	%ebp, 8(%esp)
	jmp	.L1291
.LVL2127:
.L1292:
.LBE10736:
.LBE10735:
.LBB10737:
	.loc 35 63 0
	movl	%edx, %edi
.LVL2128:
	shrl	$4, %edi
#APP
# 63 "src/virtio-ring.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB10738:
	andl	$15, %edx
#APP
# 63 "src/virtio-ring.c" 1
	movw %ES:(%edx), %dx
# 0 "" 2
.LVL2129:
#NO_APP
.LBE10738:
.LBE10737:
	movzwl	%dx, %edx
.LVL2130:
.L1291:
.LBB10739:
	.loc 35 62 0
	sall	$4, %edx
.LVL2131:
	addl	8(%esp), %edx
	leal	12(%edx), %edi
	movl	%edi, %ebp
.LVL2132:
	shrl	$4, %ebp
#APP
# 62 "src/virtio-ring.c" 1
	movw %bp, %ES
# 0 "" 2
#NO_APP
.LBB10740:
	andl	$15, %edi
#APP
# 62 "src/virtio-ring.c" 1
	movw %ES:(%edi), %di
# 0 "" 2
.LVL2133:
#NO_APP
.LBE10740:
.LBE10739:
	testw	$1, %di
	leal	14(%edx), %edx
	jne	.L1292
.LBB10741:
.LBB10742:
.LBB10743:
	.loc 35 67 0
	addl	$5140, %ebx
.LVL2134:
	movl	%ebx, %edi
.LVL2135:
	shrl	$4, %edi
	movl	%edi, 8(%esp)
#APP
# 67 "src/virtio-ring.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
.LBB10744:
	andl	$15, %ebx
#APP
# 67 "src/virtio-ring.c" 1
	movw %ES:(%ebx), %bp
# 0 "" 2
.LVL2136:
#NO_APP
.LBE10744:
.LBE10743:
	movl	%edx, %edi
	shrl	$4, %edi
#APP
# 67 "src/virtio-ring.c" 1
	movw %di, %ES
# 0 "" 2
#NO_APP
	andl	$15, %edx
#APP
# 67 "src/virtio-ring.c" 1
	movw %bp, %ES:(%edx)
# 0 "" 2
#NO_APP
.LBE10742:
.LBE10741:
.LBB10745:
.LBB10746:
	.loc 35 68 0
#APP
# 68 "src/virtio-ring.c" 1
	movw 8(%esp), %ES
# 0 "" 2
# 68 "src/virtio-ring.c" 1
	movw %ax, %ES:(%ebx)
# 0 "" 2
#NO_APP
.LBE10746:
.LBE10745:
.LBE10734:
.LBE10733:
.LBB10747:
.LBB10748:
.LBB10749:
	.loc 35 97 0
#APP
# 97 "src/virtio-ring.c" 1
	movw 4(%esp), %ES
# 0 "" 2
#NO_APP
.LBB10750:
#APP
# 97 "src/virtio-ring.c" 1
	movw %ES:(%ecx), %ax
# 0 "" 2
.LVL2137:
#NO_APP
.LBE10750:
.LBE10749:
	incl	%eax
.LVL2138:
#APP
# 97 "src/virtio-ring.c" 1
	movw %ax, %ES:(%ecx)
# 0 "" 2
#NO_APP
.LBE10748:
.LBE10747:
.LBE10724:
.LBE10723:
.LBB10751:
	.loc 36 72 0
#APP
# 72 "src/virtio-blk.c" 1
	movw %CS:40(%esi), %dx
# 0 "" 2
.LVL2139:
#NO_APP
.LBE10751:
.LBB10752:
.LBB10753:
.LBB10754:
	.loc 2 93 0
	addl	$19, %edx
.LVL2140:
#APP
# 93 "src/ioport.h" 1
	inb %dx, %al
# 0 "" 2
.LVL2141:
#NO_APP
.LBE10754:
.LBE10753:
.LBE10752:
	.loc 36 74 0
	cmpb	$1, 63(%esp)
	sbbl	%eax, %eax
.LVL2142:
	notl	%eax
	andl	$12, %eax
	.loc 36 75 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
.LVL2143:
	popl	%edi
	popl	%ebp
.LVL2144:
	ret
	.cfi_endproc
.LFE2764:
	.size	virtio_blk_op.57727, .-virtio_blk_op.57727
	.section	.text.process_op.1208,"ax",@progbits
	.type	process_op.1208, @function
process_op.1208:
.LFB513:
	.loc 25 277 0
	.cfi_startproc
.LVL2145:
.LBB10766:
	.loc 25 279 0
	movl	12(%eax), %edx
#APP
# 279 "src/block.c" 1
	movb %CS:(%edx), %dl
# 0 "" 2
.LVL2146:
#NO_APP
.LBE10766:
	.loc 25 280 0
	cmpb	$4, %dl
	je	.L1306
	ja	.L1310
	cmpb	$2, %dl
	je	.L1304
	ja	.L1305
	decb	%dl
.LVL2147:
	jne	.L1302
	jmp	.L1336
.LVL2148:
.L1310:
	cmpb	$6, %dl
	je	.L1308
	jb	.L1307
	cmpb	$7, %dl
	jne	.L1302
	jmp	.L1337
.LVL2149:
.L1336:
	.loc 25 282 0
	jmp	process_floppy_op.1221
.LVL2150:
.L1304:
.LBB10767:
.LBB10768:
	.loc 27 584 0
	movb	18(%eax), %dl
.LVL2151:
	cmpb	$2, %dl
	je	.L1312
	cmpb	$3, %dl
	jne	.L1329
	jmp	.L1338
.L1312:
	.loc 27 586 0
	xorl	%edx, %edx
	jmp	.L1330
.L1338:
	.loc 27 588 0
	movl	$1, %edx
.L1330:
	jmp	ata_readwrite.15917
.LVL2152:
.L1305:
.LBE10768:
.LBE10767:
.LBB10769:
.LBB10770:
	.loc 27 667 0
	movb	18(%eax), %dl
.LVL2153:
	cmpb	$3, %dl
	je	.L1316
	cmpb	$5, %dl
	je	.L1316
	cmpb	$2, %dl
	je	.L1332
.L1329:
	.loc 27 674 0
	jmp	process_ata_misc_op.15100
.LVL2154:
.L1307:
.LBE10770:
.LBE10769:
.LBB10771:
.LBB10772:
	.loc 34 90 0
	cmpb	$16, 18(%eax)
	ja	.L1302
	movsbl	18(%eax),%ecx
	movl	$1, %edx
.LVL2155:
	sall	%cl, %edx
	xorl	%ecx, %ecx
	testl	$65681, %edx
	jne	.L1321
	movb	$3, %cl
	testb	$40, %dl
	jne	.L1321
	andb	$4, %dl
	je	.L1302
	.loc 34 92 0
	jmp	cdemu_read.28725
.LVL2156:
.L1308:
.LBE10772:
.LBE10771:
.LBB10773:
.LBB10774:
	.loc 33 116 0
	cmpb	$16, 18(%eax)
	ja	.L1302
	movsbl	18(%eax),%ecx
	movl	$1, %edx
.LVL2157:
	sall	%cl, %edx
	testl	$65681, %edx
	jne	.L1306
	testb	$40, %dl
	jne	.L1316
	andb	$4, %dl
	je	.L1302
.L1332:
	.loc 33 118 0
	jmp	cdb_read.14847
.LVL2158:
.L1337:
.LBE10774:
.LBE10773:
.LBB10775:
.LBB10776:
	.loc 36 82 0
	cmpb	$16, 18(%eax)
	ja	.L1302
	movsbl	18(%eax),%ecx
	movl	$1, %edx
.LVL2159:
	sall	%cl, %edx
	testl	$65713, %edx
	jne	.L1306
	testb	$8, %dl
	jne	.L1326
	andb	$4, %dl
	je	.L1302
	.loc 36 84 0
	xorl	%edx, %edx
	jmp	.L1331
.L1326:
	.loc 36 86 0
	movl	$1, %edx
.L1331:
	jmp	virtio_blk_op.57727
.LVL2160:
.L1302:
.LBE10776:
.LBE10775:
	.loc 25 296 0
	movw	$0, 16(%eax)
	movl	$1, %ecx
	.loc 25 297 0
	jmp	.L1321
.L1306:
	xorl	%ecx, %ecx
	jmp	.L1321
.LVL2161:
.L1316:
	movl	$3, %ecx
.LVL2162:
.L1321:
	.loc 25 299 0
	movl	%ecx, %eax
.LVL2163:
	ret
	.cfi_endproc
.LFE513:
	.size	process_op.1208, .-process_op.1208
	.section	.text.__send_disk_op.11050,"ax",@progbits
	.type	__send_disk_op.11050, @function
__send_disk_op.11050:
.LFB514:
	.loc 25 304 0
	.cfi_startproc
.LVL2164:
	pushl	%ebp
.LCFI433:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI434:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI435:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI436:
	.cfi_def_cfa_offset 20
	subl	$20, %esp
.LCFI437:
	.cfi_def_cfa_offset 40
	movl	%eax, %ebp
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, %ebx
.LBB10777:
	.loc 25 306 0
#APP
# 306 "src/block.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL2165:
#NO_APP
.LBE10777:
.LBB10778:
.LBB10779:
	.loc 16 156 0
#APP
# 156 "src/util.c" 1
	movw %ax, %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	movl	$20, %ecx
.LVL2166:
	movl	%ebp, %esi
.LVL2167:
	movl	%esp, %edi
.LVL2168:
#APP
# 158 "src/util.c" 1
	movw %ds, %ax
movw %bx, %ds
rep movsb (%si),%es:(%di)
movw %ax, %ds
# 0 "" 2
.LVL2169:
#NO_APP
.LBE10779:
.LBE10778:
	.loc 25 314 0
	movl	%esp, %eax
.LVL2170:
	call	process_op.1208
.LVL2171:
.LBB10780:
	.loc 25 317 0
#APP
# 317 "src/block.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
	movl	16(%esp), %edx
.LVL2172:
#APP
# 317 "src/block.c" 1
	movw %dx, %ES:16(%ebp)
# 0 "" 2
#NO_APP
.LBE10780:
	.loc 25 320 0
	addl	$20, %esp
	popl	%ebx
.LVL2173:
	popl	%esi
.LVL2174:
	popl	%edi
.LVL2175:
	popl	%ebp
.LVL2176:
	ret
	.cfi_endproc
.LFE514:
	.size	__send_disk_op.11050, .-__send_disk_op.11050
	.section	.text.cdemu_read.28725,"ax",@progbits
	.type	cdemu_read.28725, @function
cdemu_read.28725:
.LFB1341:
	.loc 34 25 0
	.cfi_startproc
.LVL2177:
	pushl	%ebp
.LCFI438:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI439:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI440:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI441:
	.cfi_def_cfa_offset 20
	subl	$52, %esp
.LCFI442:
	.cfi_def_cfa_offset 72
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LBB10781:
.LBB10782:
	.loc 10 253 0
	movl	$64, %eax
.LVL2178:
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB10783:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %ax
# 0 "" 2
.LVL2179:
#NO_APP
.LBE10783:
.LBE10782:
.LBE10781:
	.loc 34 28 0
#APP
# 28 "src/cdrom.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB10784:
#APP
# 28 "src/cdrom.c" 1
	movl %ES:302, %edx
# 0 "" 2
.LVL2180:
#NO_APP
.LBE10784:
	.loc 34 30 0
	subl	$983040, %edx
.LVL2181:
	movl	%edx, 44(%esp)
	.loc 34 31 0
	movb	18(%ebx), %dl
	movb	%dl, 50(%esp)
	.loc 34 32 0
#APP
# 32 "src/cdrom.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB10785:
#APP
# 32 "src/cdrom.c" 1
	movl %ES:306, %eax
# 0 "" 2
.LVL2182:
#NO_APP
.LBE10785:
	xorl	%edx, %edx
	movl	(%ebx), %esi
	movl	4(%ebx), %edi
	shrdl	$2, %edi, %esi
	shrl	$2, %edi
	addl	%esi, %eax
.LVL2183:
	adcl	%edi, %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	.loc 34 34 0
	movzwl	16(%ebx), %ebp
.LVL2184:
	.loc 34 35 0
	movw	$0, 16(%ebx)
.LBB10786:
	.loc 34 36 0
#APP
# 36 "src/cdrom.c" 1
	movl %CS:cdemu_buf_fl, %eax
# 0 "" 2
#NO_APP
	movl	%eax, 20(%esp)
.LBE10786:
	.loc 34 38 0
	testb	$3, (%ebx)
	je	.L1342
.LBB10787:
	.loc 34 40 0
	movw	$1, 48(%esp)
	.loc 34 41 0
	movl	%eax, 40(%esp)
	.loc 34 42 0
	leal	32(%esp), %eax
	call	process_op.1208
	.loc 34 43 0
	testl	%eax, %eax
.LVL2185:
	jne	.L1343
	.loc 34 45 0
	movl	(%ebx), %esi
	movl	%esi, %eax
.LVL2186:
	andl	$3, %eax
	movb	$4, 3(%esp)
	subb	%al, 3(%esp)
	.loc 34 46 0
	movzbl	3(%esp), %eax
.LVL2187:
	cmpl	%ebp, %eax
	jle	.L1344
	.loc 34 47 0
	movl	%ebp, %edx
.LVL2188:
	movb	%dl, 3(%esp)
.LVL2189:
.L1344:
	.loc 34 48 0
	movzbl	3(%esp), %eax
.LVL2190:
	subl	%eax, %ebp
	.loc 34 49 0
	sall	$9, %eax
	movl	%eax, 28(%esp)
.LBB10788:
.LBB10789:
	.loc 16 173 0
	andl	$3, %esi
	sall	$9, %esi
	addl	20(%esp), %esi
	.loc 16 172 0
	movl	8(%ebx), %edi
.LBB10790:
.LBB10791:
	.loc 16 156 0
	movl	%edi, %eax
	shrl	$4, %eax
#APP
# 156 "src/util.c" 1
	movw %ax, %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	movl	%esi, %ecx
	shrl	$4, %ecx
	movl	%ecx, 24(%esp)
	andl	$15, %esi
	andl	$15, %edi
	movl	28(%esp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, %ecx
	movl	24(%esp), %edx
#APP
# 158 "src/util.c" 1
	movw %ds, %ax
movw %dx, %ds
rep movsb (%si),%es:(%di)
movw %ax, %ds
# 0 "" 2
#NO_APP
.LBE10791:
.LBE10790:
.LBE10789:
.LBE10788:
	.loc 34 50 0
	movl	28(%esp), %ecx
	addl	%ecx, 8(%ebx)
	.loc 34 51 0
	movzbl	3(%esp), %edx
.LVL2191:
	addw	%dx, 16(%ebx)
	.loc 34 52 0
	addl	$1, 32(%esp)
	adcl	$0, 36(%esp)
.L1342:
.LBE10787:
	.loc 34 55 0
	cmpl	$3, %ebp
	jle	.L1345
.LBB10792:
	.loc 34 57 0
	movl	%ebp, %eax
	sarl	$2, %eax
	movw	%ax, 48(%esp)
	.loc 34 58 0
	movl	8(%ebx), %eax
	movl	%eax, 40(%esp)
	.loc 34 59 0
	leal	32(%esp), %eax
	call	process_op.1208
.LVL2192:
	.loc 34 60 0
	movl	48(%esp), %edx
	sall	$2, %edx
	addw	%dx, 16(%ebx)
	.loc 34 61 0
	testl	%eax, %eax
.LVL2193:
	jne	.L1343
	.loc 34 63 0
	movl	%ebp, %edx
.LVL2194:
	andl	$-4, %edx
.LVL2195:
	.loc 34 64 0
	andl	$3, %ebp
.LVL2196:
	.loc 34 65 0
	movzbl	%dl, %eax
.LVL2197:
	sall	$9, %eax
	addl	%eax, 8(%ebx)
	.loc 34 66 0
	shrb	$2, %dl
.LVL2198:
	movzbl	%dl, %edx
	xorl	%ecx, %ecx
	addl	%edx, 32(%esp)
	adcl	%ecx, 36(%esp)
.LVL2199:
.L1345:
.LBE10792:
	.loc 34 69 0
	xorl	%eax, %eax
.LVL2200:
	testl	%ebp, %ebp
	je	.L1343
.LBB10793:
	.loc 34 71 0
	movw	$1, 48(%esp)
	.loc 34 72 0
	movl	20(%esp), %esi
	movl	%esi, 40(%esp)
	.loc 34 73 0
	leal	32(%esp), %eax
.LVL2201:
	call	process_op.1208
.LVL2202:
	.loc 34 74 0
	testl	%eax, %eax
.LVL2203:
	jne	.L1343
.LBB10794:
.LBB10795:
	.loc 16 172 0
	movl	8(%ebx), %edi
.LBB10796:
.LBB10797:
	.loc 16 156 0
	movl	%edi, %eax
.LVL2204:
	shrl	$4, %eax
#APP
# 156 "src/util.c" 1
	movw %ax, %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	movl	20(%esp), %edx
	shrl	$4, %edx
	movl	%ebp, %eax
.LVL2205:
	movzbl	%al, %ecx
	sall	$9, %ecx
	movl	20(%esp), %esi
	andl	$15, %esi
	andl	$15, %edi
#APP
# 158 "src/util.c" 1
	movw %ds, %ax
movw %dx, %ds
rep movsb (%si),%es:(%di)
movw %ax, %ds
# 0 "" 2
.LVL2206:
#NO_APP
.LBE10797:
.LBE10796:
.LBE10795:
.LBE10794:
	.loc 34 78 0
	andw	$255, %bp
.LVL2207:
	addw	%bp, 16(%ebx)
	xorl	%eax, %eax
.LVL2208:
.L1343:
.LVL2209:
.LBE10793:
	.loc 34 82 0
	addl	$52, %esp
	popl	%ebx
.LVL2210:
	popl	%esi
.LVL2211:
	popl	%edi
.LVL2212:
	popl	%ebp
.LVL2213:
	ret
	.cfi_endproc
.LFE1341:
	.size	cdemu_read.28725, .-cdemu_read.28725
	.section	.rodata.str1.1
.LC26:
	.string	"WARNING - Unable to allocate resource at %s:%d!\n"
	.section	.text.T.2326,"ax",@progbits
	.type	T.2326, @function
T.2326:
.LFB3090:
	.loc 4 107 0
	.cfi_startproc
.LVL2214:
	pushl	%ebp
.LCFI443:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI444:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI445:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI446:
	.cfi_def_cfa_offset 20
	subl	$48, %esp
.LCFI447:
	.cfi_def_cfa_offset 68
	.loc 4 107 0
	movl	$ZoneLow, %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LVL2215:
	.loc 4 112 0
	xorl	%ebx, %ebx
.LVL2216:
.L1352:
#APP
# 112 "src/pmm.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB10798:
#APP
# 112 "src/pmm.c" 1
	addr32 movl %ES:(%esi), %ecx
# 0 "" 2
#NO_APP
.LBE10798:
	.loc 4 113 0
	testl	%ecx, %ecx
	je	.L1351
#APP
# 113 "src/pmm.c" 1
	movw %bx, %ES
# 0 "" 2
#NO_APP
.LBB10799:
#APP
# 113 "src/pmm.c" 1
	addr32 movl %ES:8(%ecx), %edi
# 0 "" 2
#NO_APP
.LBE10799:
	cmpl	%eax, %edi
	jb	.L1351
	.loc 4 115 0
	movl	%ecx, %esi
	jmp	.L1352
.L1351:
	.loc 4 120 0
	movl	%ecx, 24(%esp)
	.loc 4 121 0
	movl	%esi, 28(%esp)
	.loc 4 122 0
	movl	%eax, 36(%esp)
	movl	%eax, 32(%esp)
	.loc 4 123 0
	movl	%edx, 40(%esp)
.LBB10800:
	.loc 4 124 0
#APP
# 124 "src/pmm.c" 1
	movw %SS, %ax
# 0 "" 2
.LVL2217:
#NO_APP
.LBE10800:
	movzwl	%ax, %eax
.LVL2218:
	sall	$4, %eax
	.loc 4 125 0
	xorl	%edx, %edx
.LVL2219:
#APP
# 125 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
	leal	24(%esp,%eax), %ebx
#APP
# 125 "src/pmm.c" 1
	addr32 movl %ebx, %ES:(%esi)
# 0 "" 2
	.loc 4 126 0
#NO_APP
	testl	%ecx, %ecx
	je	.L1353
	.loc 4 127 0
#APP
# 127 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
# 127 "src/pmm.c" 1
	addr32 movl %ebx, %ES:4(%ecx)
# 0 "" 2
#NO_APP
.L1353:
	.loc 4 130 0
	pushl	$0
.LCFI448:
	.cfi_def_cfa_offset 72
	movl	$16, %ecx
.LVL2220:
	movl	$44, %edx
	movl	$ZoneTmpHigh, %eax
	.cfi_escape 0x2e,0x4
	call	allocSpace.3243
.LCFI449:
	.cfi_def_cfa_offset 68
	movl	%eax, %edx
.LVL2221:
	.loc 4 132 0
	testl	%eax, %eax
	jne	.L1354
.LVL2222:
	.loc 4 133 0
	pushl	$0
.LCFI450:
	.cfi_def_cfa_offset 72
	movl	$16, %ecx
	movb	$44, %dl
	movl	$ZoneTmpLow, %eax
.LVL2223:
	call	allocSpace.3243
.LCFI451:
	.cfi_def_cfa_offset 68
	movl	%eax, %edx
.LVL2224:
	.loc 4 135 0
	testl	%eax, %eax
	jne	.L1354
	.loc 4 136 0
#APP
# 136 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
.LVL2225:
#APP
# 136 "src/pmm.c" 1
	addr32 movl %edx, %ES:(%ecx)
# 0 "" 2
	.loc 4 137 0
#NO_APP
	movl	24(%esp), %edx
	testl	%edx, %edx
	je	.L1355
	.loc 4 138 0
#APP
# 138 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
# 138 "src/pmm.c" 1
	addr32 movl %ecx, %ES:4(%edx)
# 0 "" 2
#NO_APP
.L1355:
.LBB10801:
.LBB10802:
	.loc 3 508 0
	pushl	$140
.LCFI452:
	.cfi_def_cfa_offset 72
	pushl	$__func__.3783
.LCFI453:
	.cfi_def_cfa_offset 76
	pushl	$.LC26
.LCFI454:
	.cfi_def_cfa_offset 80
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
	addl	$12, %esp
.LCFI455:
	.cfi_def_cfa_offset 68
	jmp	.L1357
.LVL2226:
.L1354:
.LBE10802:
.LBE10801:
	.loc 4 146 0
	leal	20(%edx), %ebp
.LBB10803:
.LBB10804:
.LBB10805:
.LBB10806:
	.loc 16 156 0
	movl	%ebp, %eax
	shrl	$4, %eax
#APP
# 156 "src/util.c" 1
	movw %ax, %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	movl	%ebx, %eax
	shrl	$4, %eax
	movl	%eax, (%esp)
	movl	%ebx, %esi
.LVL2227:
	andl	$15, %esi
	movl	%ebp, %edi
.LVL2228:
	andl	$15, %edi
	movl	$20, %ecx
.LVL2229:
	movl	(%esp), %ebx
#APP
# 158 "src/util.c" 1
	movw %ds, %ax
movw %bx, %ds
rep movsb (%si),%es:(%di)
movw %ax, %ds
# 0 "" 2
.LVL2230:
#NO_APP
.LBE10806:
.LBE10805:
.LBE10804:
.LBE10803:
	.loc 4 148 0
	xorl	%eax, %eax
.LVL2231:
#APP
# 148 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	orl	$-1, %ecx
.LVL2232:
#APP
# 148 "src/pmm.c" 1
	addr32 movl %ecx, %ES:40(%edx)
# 0 "" 2
	.loc 4 150 0
# 150 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movl	28(%esp), %edx
.LVL2233:
#APP
# 150 "src/pmm.c" 1
	addr32 movl %ebp, %ES:(%edx)
# 0 "" 2
	.loc 4 151 0
#NO_APP
	movl	24(%esp), %edx
	testl	%edx, %edx
	je	.L1357
	.loc 4 152 0
#APP
# 152 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
# 152 "src/pmm.c" 1
	addr32 movl %ebp, %ES:4(%edx)
# 0 "" 2
.LVL2234:
#NO_APP
.L1357:
	.loc 4 153 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
.LVL2235:
	popl	%edi
.LVL2236:
	popl	%ebp
	ret
	.cfi_endproc
.LFE3090:
	.size	T.2326, .-T.2326
	.section	.rodata.str1.1
.LC27:
	.string	"ebda moved from %x to %x\n"
	.section	.text.pmm_malloc.1860,"ax",@progbits
	.type	pmm_malloc.1860, @function
pmm_malloc.1860:
.LFB157:
	.loc 4 338 0
	.cfi_startproc
.LVL2237:
	pushl	%ebp
.LCFI456:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI457:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI458:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI459:
	.cfi_def_cfa_offset 20
	subl	$68, %esp
.LCFI460:
	.cfi_def_cfa_offset 88
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, 64(%esp)
	movl	%ecx, 20(%esp)
	.loc 4 339 0
	testl	%ecx, %ecx
	je	.L1359
.LVL2238:
	.loc 4 343 0
	pushl	$0
.LCFI461:
	.cfi_def_cfa_offset 92
	movl	$16, %ecx
.LVL2239:
	movl	$44, %edx
.LVL2240:
	movl	$ZoneTmpHigh, %eax
	.cfi_escape 0x2e,0x4
	call	allocSpace.3243
.LCFI462:
	.cfi_def_cfa_offset 88
	movl	%eax, %ebp
.LVL2241:
	.loc 4 345 0
	testl	%eax, %eax
	jne	.L1360
.LVL2242:
	.loc 4 346 0
	pushl	$0
.LCFI463:
	.cfi_def_cfa_offset 92
	movl	$16, %ecx
	movl	$44, %edx
	movl	$ZoneTmpLow, %eax
.LVL2243:
	call	allocSpace.3243
.LCFI464:
	.cfi_def_cfa_offset 88
	movl	%eax, %ebp
	.loc 4 348 0
	testl	%eax, %eax
	je	.L1359
.LVL2244:
.L1360:
	.loc 4 353 0
	leal	20(%ebp), %eax
.LVL2245:
	movl	%eax, 60(%esp)
.LBB10831:
.LBB10832:
	.loc 4 315 0
	pushl	%eax
.LCFI465:
	.cfi_def_cfa_offset 92
	movl	92(%esp), %ecx
	movl	24(%esp), %edx
	movl	%ebx, %eax
	call	allocSpace.3243
.LCFI466:
	.cfi_def_cfa_offset 88
	movl	%eax, 16(%esp)
	.loc 4 316 0
	testl	%eax, %eax
	jne	.L1361
	cmpl	$ZoneLow, %ebx
	jne	.L1362
.LBB10833:
.LBB10834:
.LBB10835:
.LBB10836:
	.loc 4 174 0
#APP
# 174 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB10837:
#APP
# 174 "src/pmm.c" 1
	addr32 movl %ES:ZoneLow, %eax
# 0 "" 2
.LVL2246:
#NO_APP
.LBE10837:
	.loc 4 175 0
	testl	%eax, %eax
	je	.L1363
.LBB10838:
	.loc 4 178 0
	xorl	%edx, %edx
.L1372:
#APP
# 178 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10839:
#APP
# 178 "src/pmm.c" 1
	addr32 movl %ES:(%eax), %ecx
# 0 "" 2
.LVL2247:
#NO_APP
	movl	%eax, %ebx
.LVL2248:
	movl	%ecx, %eax
.LBE10839:
	.loc 4 179 0
	testl	%ecx, %ecx
	jne	.L1372
.LBE10838:
.LBE10836:
.LBE10835:
	.loc 4 276 0
	testl	%ebx, %ebx
	je	.L1363
.LVL2249:
	.loc 4 278 0
#APP
# 278 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10840:
#APP
# 278 "src/pmm.c" 1
	addr32 movl %ES:16(%ebx), %edx
# 0 "" 2
.LVL2250:
#NO_APP
.LBE10840:
	.loc 4 279 0
	movl	88(%esp), %ecx
	negl	%ecx
	movl	%ecx, 28(%esp)
	movl	%edx, %ecx
.LVL2251:
	subl	20(%esp), %ecx
	andl	28(%esp), %ecx
	.loc 4 280 0
#APP
# 280 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB10841:
#APP
# 280 "src/pmm.c" 1
	addr32 movl %ES:12(%ebx), %esi
# 0 "" 2
#NO_APP
	movl	%esi, 40(%esp)
.LBE10841:
	.loc 4 281 0
	cmpl	%edx, %ecx
	ja	.L1371
	cmpl	%esi, %ecx
	jae	.L1363
.L1371:
.LBB10842:
.LBB10843:
	.loc 10 253 0
	movl	$64, %eax
#APP
# 253 "src/biosvar.h" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB10844:
#APP
# 253 "src/biosvar.h" 1
	movw %ES:14, %ax
# 0 "" 2
.LVL2252:
#NO_APP
.LBE10844:
.LBE10843:
.LBE10842:
	.loc 4 285 0
	movzwl	%ax, %edi
	sall	$4, %edi
	movl	%edi, (%esp)
	.loc 4 286 0
#APP
# 286 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
.LBB10845:
#APP
# 286 "src/pmm.c" 1
	movb %ES:0, %al
# 0 "" 2
.LVL2253:
#NO_APP
.LBE10845:
	.loc 4 287 0
	movzbl	%al, %eax
.LVL2254:
	movl	%eax, %esi
	sall	$10, %esi
	addl	%esi, %edi
	movl	%edi, 24(%esp)
	.loc 4 288 0
	movl	40(%esp), %edx
.LVL2255:
	cmpl	%edx, %edi
	je	.L1366
	.loc 4 290 0
	movl	%edi, %ecx
	subl	20(%esp), %ecx
	andl	28(%esp), %ecx
.L1366:
	.loc 4 291 0
	andl	$-1024, %ecx
	movl	%ecx, 28(%esp)
	.loc 4 292 0
	imull	$-1024, %eax, %eax
	addl	%ecx, %eax
	movl	%eax, 32(%esp)
	.loc 4 293 0
	cmpl	$589823, %eax
	jbe	.L1363
.LBB10846:
.LBB10847:
	.loc 4 255 0
	movl	$64, %ecx
.LVL2256:
#APP
# 255 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
.LBB10848:
#APP
# 255 "src/pmm.c" 1
	movw %ES:19, %ax
# 0 "" 2
.LVL2257:
#NO_APP
.LBE10848:
	.loc 4 256 0
	movzwl	%ax, %eax
.LVL2258:
	sall	$10, %eax
	cmpl	%eax, (%esp)
	jne	.L1363
.LBB10849:
.LBB10850:
	.loc 16 172 0
	movl	32(%esp), %edi
	shrl	$4, %edi
	movw	%di, 44(%esp)
.LBB10851:
.LBB10852:
	.loc 16 156 0
#APP
# 156 "src/util.c" 1
	movw %di, %ES
# 0 "" 2
	.loc 16 158 0
#NO_APP
	movl	(%esp), %eax
	shrl	$4, %eax
	movl	%eax, 36(%esp)
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, %ecx
	xorl	%esi, %esi
	xorl	%edi, %edi
.LVL2259:
#APP
# 158 "src/util.c" 1
	movw %ds, %dx
movw %ax, %ds
rep movsb (%si),%es:(%di)
movw %dx, %ds
# 0 "" 2
#NO_APP
.LBE10852:
.LBE10851:
.LBE10850:
.LBE10849:
	.loc 4 265 0
	pushl	32(%esp)
.LCFI467:
	.cfi_def_cfa_offset 92
	pushl	4(%esp)
.LCFI468:
	.cfi_def_cfa_offset 96
	pushl	$.LC27
.LCFI469:
	.cfi_def_cfa_offset 100
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
	addl	$12, %esp
.LCFI470:
	.cfi_def_cfa_offset 88
.LBB10853:
	.loc 4 266 0
	movl	32(%esp), %eax
	shrl	$10, %eax
	movl	$64, %ecx
#APP
# 266 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
# 266 "src/pmm.c" 1
	movw %ax, %ES:19
# 0 "" 2
.LVL2260:
#NO_APP
.LBE10853:
.LBB10854:
	.loc 4 267 0
#APP
# 267 "src/pmm.c" 1
	movw %cx, %ES
# 0 "" 2
#NO_APP
	movl	44(%esp), %esi
#APP
# 267 "src/pmm.c" 1
	movw %si, %ES:14
# 0 "" 2
#NO_APP
.LBE10854:
.LBE10847:
.LBE10846:
	.loc 4 303 0
	movl	40(%esp), %edi
.LVL2261:
	cmpl	%edi, 24(%esp)
	jne	.L1367
	.loc 4 304 0
	xorl	%eax, %eax
.LVL2262:
#APP
# 304 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movl	28(%esp), %edx
#APP
# 304 "src/pmm.c" 1
	addr32 movl %edx, %ES:8(%ebx)
# 0 "" 2
	.loc 4 305 0
# 305 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
# 305 "src/pmm.c" 1
	addr32 movl %edx, %ES:12(%ebx)
# 0 "" 2
#NO_APP
	jmp	.L1363
.LVL2263:
.L1367:
	.loc 4 307 0
	movl	24(%esp), %edx
	movl	28(%esp), %eax
.LVL2264:
	.cfi_escape 0x2e,0x0
	call	T.2326
.LVL2265:
.L1363:
.LBE10834:
.LBE10833:
	.loc 4 327 0
	pushl	60(%esp)
.LCFI471:
	.cfi_def_cfa_offset 92
	movl	92(%esp), %ecx
.LVL2266:
	movl	24(%esp), %edx
.LVL2267:
	movl	$ZoneLow, %eax
	.cfi_escape 0x2e,0x4
	call	allocSpace.3243
.LCFI472:
	.cfi_def_cfa_offset 88
.LBE10832:
.LBE10831:
	.loc 4 354 0
	testl	%eax, %eax
.LVL2268:
	jne	.L1368
.L1362:
	.loc 4 355 0
	movl	%ebp, %eax
.LVL2269:
	.cfi_escape 0x2e,0x0
	call	freeSpace.3524
	.loc 4 356 0
	jmp	.L1369
.LVL2270:
.L1368:
	movl	%eax, 16(%esp)
.L1361:
	.loc 4 363 0
	xorl	%eax, %eax
.LVL2271:
#APP
# 363 "src/pmm.c" 1
	movw %ax, %ES
# 0 "" 2
#NO_APP
	movl	64(%esp), %ecx
#APP
# 363 "src/pmm.c" 1
	addr32 movl %ecx, %ES:40(%ebp)
# 0 "" 2
	.loc 4 365 0
#NO_APP
	jmp	.L1369
.LVL2272:
.L1359:
	movl	$0, 16(%esp)
.LVL2273:
.L1369:
	.loc 4 366 0
	movl	16(%esp), %eax
	addl	$68, %esp
	popl	%ebx
.LVL2274:
	popl	%esi
	popl	%edi
	popl	%ebp
.LVL2275:
	ret	$4
	.cfi_endproc
.LFE157:
	.size	pmm_malloc.1860, .-pmm_malloc.1860
	.section	.rodata.str1.1
.LC28:
	.string	"pmm call arg1=%x\n"
	.section	.text.handle_pmm,"ax",@progbits
.globl handle_pmm
	.type	handle_pmm, @function
handle_pmm:
.LFB165:
	.loc 4 547 0
	.cfi_startproc
.LVL2276:
	pushl	%ebp
.LCFI473:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI474:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI475:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI476:
	.cfi_def_cfa_offset 20
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.loc 4 551 0
	movw	(%eax), %si
.LVL2277:
	.loc 4 552 0
	movzwl	%si, %eax
.LVL2278:
	pushl	%eax
.LCFI477:
	.cfi_def_cfa_offset 24
	pushl	$.LC28
.LCFI478:
	.cfi_def_cfa_offset 28
	.cfi_escape 0x2e,0x8
	call	__dprintf.1656
.LVL2279:
	popl	%ecx
.LCFI479:
	.cfi_def_cfa_offset 24
	popl	%edi
.LCFI480:
	.cfi_def_cfa_offset 20
	.loc 4 554 0
	cmpw	$1, %si
.LVL2280:
	je	.L1377
	jb	.L1376
	orl	$-1, %eax
.LVL2281:
	cmpw	$2, %si
	jne	.L1379
	jmp	.L1407
.LVL2282:
.L1376:
.LBB10876:
.LBB10877:
	.loc 4 460 0
	movl	2(%ebx), %esi
.LVL2283:
	movl	6(%ebx), %edi
.LVL2284:
	.loc 4 465 0
	movzwl	10(%ebx), %edx
	testb	$8, %dl
	jne	.L1380
	movl	$ZoneTmpHigh, %ebp
.LVL2285:
	movl	$ZoneTmpLow, %eax
.LVL2286:
	jmp	.L1381
.LVL2287:
.L1380:
	movl	$ZoneHigh, %ebp
.LVL2288:
	movl	$ZoneLow, %eax
.LVL2289:
.L1381:
	.loc 4 470 0
	testl	%esi, %esi
	jne	.L1382
	.loc 4 472 0
	andl	$3, %edx
	cmpl	$2, %edx
	je	.L1385
	cmpl	$3, %edx
	je	.L1386
	decl	%edx
	jne	.L1383
	jmp	.L1405
.L1385:
	.loc 4 479 0
	movl	%ebp, %eax
.LVL2290:
.L1405:
.LBE10877:
.LBE10876:
	.loc 4 560 0
	popl	%ebx
.LVL2291:
	popl	%esi
.LVL2292:
	popl	%edi
.LVL2293:
	popl	%ebp
.LVL2294:
.LBB10883:
.LBB10882:
	.loc 4 479 0
	.cfi_escape 0x2e,0x0
	jmp	pmm_getspace.4532
.LVL2295:
.L1386:
.LBB10878:
	.loc 4 481 0
	call	pmm_getspace.4532
.LVL2296:
	movl	%eax, %ebx
.LVL2297:
	.loc 4 482 0
	movl	%ebp, %eax
	call	pmm_getspace.4532
	cmpl	%ebx, %eax
	jae	.L1379
	movl	%ebx, %eax
	jmp	.L1379
.LVL2298:
.L1382:
.LBE10878:
	.loc 4 489 0
	sall	$4, %esi
.LVL2299:
	.loc 4 490 0
	testl	%esi, %esi
	jle	.L1383
	.loc 4 493 0
	testb	$4, %dl
	je	.L1388
.LBB10879:
.LBB10880:
	.loc 8 85 0
#APP
# 85 "src/util.h" 1
	bsf %esi,%ecx
# 0 "" 2
.LVL2300:
#NO_APP
.LBE10880:
.LBE10879:
	.loc 4 494 0
	movl	$1, %ebx
.LVL2301:
	sall	%cl, %ebx
	.loc 4 495 0
	cmpl	$15, %ebx
	ja	.L1389
.LVL2302:
.L1388:
	movl	$16, %ebx
.LVL2303:
.L1389:
	.loc 4 498 0
	andl	$3, %edx
	cmpl	$2, %edx
	je	.L1403
	cmpl	$3, %edx
	je	.L1392
	decl	%edx
	jne	.L1383
	.loc 4 503 0
	pushl	%ebx
.LCFI481:
	.cfi_def_cfa_offset 24
	movl	%esi, %ecx
.LVL2304:
	movl	%edi, %edx
	jmp	.L1404
.LCFI482:
	.cfi_def_cfa_offset 20
.LVL2305:
.L1392:
.LBB10881:
	.loc 4 507 0
	pushl	%ebx
.LCFI483:
	.cfi_def_cfa_offset 24
	movl	%esi, %ecx
.LVL2306:
	movl	%edi, %edx
	.cfi_escape 0x2e,0x4
	call	pmm_malloc.1860
.LCFI484:
	.cfi_def_cfa_offset 20
.LVL2307:
	.loc 4 508 0
	testl	%eax, %eax
.LVL2308:
	jne	.L1379
.LVL2309:
.L1403:
	.loc 4 510 0
	pushl	%ebx
.LCFI485:
	.cfi_def_cfa_offset 24
	movl	%esi, %ecx
.LVL2310:
	movl	%edi, %edx
	movl	%ebp, %eax
.LVL2311:
.L1404:
	call	pmm_malloc.1860
.LCFI486:
	.cfi_def_cfa_offset 20
.LVL2312:
	jmp	.L1379
.LVL2313:
.L1383:
	xorl	%eax, %eax
.LVL2314:
	jmp	.L1379
.LVL2315:
.L1377:
.LBE10881:
.LBE10882:
.LBE10883:
.LBB10884:
.LBB10885:
	.loc 4 519 0
	movl	2(%ebx), %ebx
.LVL2316:
	.loc 4 521 0
	xorl	%ecx, %ecx
.LVL2317:
	xorl	%eax, %eax
.LVL2318:
	cmpl	$-1, %ebx
	je	.L1379
.LBB10886:
.LBB10887:
.LBB10888:
	.loc 4 412 0
	xorl	%edx, %edx
.LVL2319:
.L1401:
#APP
# 412 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10889:
#APP
# 412 "src/pmm.c" 1
	addr32 movl %ES:Zones(,%ecx,4), %eax
# 0 "" 2
.LVL2320:
#NO_APP
.LBE10889:
	.loc 4 414 0
#APP
# 414 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10890:
#APP
# 414 "src/pmm.c" 1
	addr32 movl %ES:(%eax), %eax
# 0 "" 2
.LVL2321:
#NO_APP
	jmp	.L1395
.L1398:
.LBE10890:
.LBB10891:
	.loc 4 416 0
#APP
# 416 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10892:
#APP
# 416 "src/pmm.c" 1
	addr32 movl %ES:8(%eax), %esi
# 0 "" 2
.LVL2322:
#NO_APP
.LBE10892:
	cmpl	%eax, %esi
	jne	.L1396
	.loc 4 420 0
#APP
# 420 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10893:
#APP
# 420 "src/pmm.c" 1
	addr32 movl %ES:40(%eax), %esi
# 0 "" 2
.LVL2323:
#NO_APP
.LBE10893:
	cmpl	%ebx, %esi
	jne	.L1396
	.loc 4 421 0
	xorl	%edx, %edx
#APP
# 421 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10894:
#APP
# 421 "src/pmm.c" 1
	addr32 movl %ES:28(%eax), %eax
# 0 "" 2
.LVL2324:
#NO_APP
	jmp	.L1379
.LVL2325:
.L1396:
.LBE10894:
.LBE10891:
	.loc 4 415 0
#APP
# 415 "src/pmm.c" 1
	movw %dx, %ES
# 0 "" 2
#NO_APP
.LBB10895:
#APP
# 415 "src/pmm.c" 1
	addr32 movl %ES:(%eax), %eax
# 0 "" 2
.LVL2326:
#NO_APP
.L1395:
.LBE10895:
	.loc 4 414 0
	testl	%eax, %eax
	jne	.L1398
.LBE10888:
	.loc 4 411 0
	incl	%ecx
	cmpl	$5, %ecx
	jne	.L1401
	jmp	.L1379
.LVL2327:
.L1407:
.LBE10887:
.LBE10886:
.LBE10885:
.LBE10884:
.LBB10896:
.LBB10897:
	.loc 4 532 0
	movl	2(%ebx), %eax
.LVL2328:
	.cfi_escape 0x2e,0x0
	call	pmm_free.1862
	testl	%eax, %eax
.LVL2329:
	setne	%al
.LVL2330:
	movzbl	%al, %eax
.LVL2331:
.L1379:
.LVL2332:
.LBE10897:
.LBE10896:
	.loc 4 560 0
	popl	%ebx
.LVL2333:
	popl	%esi
.LVL2334:
	popl	%edi
.LVL2335:
	popl	%ebp
.LVL2336:
	ret
	.cfi_endproc
.LFE165:
	.size	handle_pmm, .-handle_pmm
	.section	.text.configure_uhci.44712,"ax",@progbits
	.type	configure_uhci.44712, @function
configure_uhci.44712:
.LFB2207:
	.loc 19 119 0
	.cfi_startproc
.LVL2337:
	pushl	%ebp
.LCFI487:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI488:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI489:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI490:
	.cfi_def_cfa_offset 20
	subl	$4, %esp
.LCFI491:
	.cfi_def_cfa_offset 24
	movl	%eax, %edi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LVL2338:
.LBB10898:
.LBB10899:
	.loc 8 413 0
	pushl	$16
.LCFI492:
	.cfi_def_cfa_offset 28
	movl	$16, %ecx
	orl	$-1, %edx
	movl	$ZoneHigh, %eax
.LVL2339:
	.cfi_escape 0x2e,0x4
	call	pmm_malloc.1860
.LCFI493:
	.cfi_def_cfa_offset 24
	movl	%eax, %esi
.LBE10899:
.LBE10898:
.LBB10900:
.LBB10901:
	.loc 8 434 0
	pushl	$4096
.LCFI494:
	.cfi_def_cfa_offset 28
	movl	$4096, %ecx
	orl	$-1, %edx
	movl	$ZoneHigh, %eax
	call	pmm_malloc.1860
.LCFI495:
	.cfi_def_cfa_offset 24
	movl	%eax, %ebp
.LBE10901:
.LBE10900:
.LBB10902:
.LBB10903:
	.loc 8 413 0
	pushl	$16
.LCFI496:
	.cfi_def_cfa_offset 28
	movl	$8, %ecx
	orl	$-1, %edx
	movl	$ZoneHigh, %eax
	call	pmm_malloc.1860
.LCFI497:
	.cfi_def_cfa_offset 24
	movl	%eax, %ebx
.LBE10903:
.LBE10902:
.LBB10904:
.LBB10905:
	pushl	$16
.LCFI498:
	.cfi_def_cfa_offset 28
	movl	$8, %ecx
	orl	$-1, %edx
	movl	$ZoneHigh, %eax
	call	pmm_malloc.1860
.LCFI499:
	.cfi_def_cfa_offset 24
	movl	%eax, %edx
.LBE10905:
.LBE10904:
	.loc 19 127 0
	testl	%ebp, %ebp
	je	.L1409
	testl	%esi, %esi
	je	.L1409
	testl	%eax, %eax
	je	.L1409
	testl	%ebx, %ebx
	jne	.L1410
.L1409:
.LBB10906:
.LBB10907:
	.loc 3 508 0
	pushl	$128
.LCFI500:
	.cfi_def_cfa_offset 28
	pushl	$__func__.44719
.LCFI501:
	.cfi_def_cfa_offset 32
	pushl	$.LC26
.LCFI502:
	.cfi_def_cfa_offset 36
	movl	%edx, 12(%esp)
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
	addl	$12, %esp
.LCFI503:
	.cfi_def_cfa_offset 24
.LBE10907:
.LBE10906:
.LBB10908:
.LBB10909:
	.loc 8 449 0
	movl	%esi, %eax
	.cfi_escape 0x2e,0x0
	call	pmm_free.1862
.LBE10909:
.LBE10908:
.LBB10910:
.LBB10911:
	movl	%ebp, %eax
	call	pmm_free.1862
.LBE10911:
.LBE10910:
.LBB10912:
.LBB10913:
	movl	%ebx, %eax
	call	pmm_free.1862
.LBE10913:
.LBE10912:
.LBB10914:
.LBB10915:
	movl	(%esp), %edx
	movl	%edx, %eax
	call	pmm_free.1862
.LBE10915:
.LBE10914:
.LBB10916:
.LBB10917:
	movl	%edi, %eax
.LBE10917:
.LBE10916:
	.loc 19 179 0
	popl	%ebp
.LCFI504:
	.cfi_def_cfa_offset 20
	popl	%ebx
	popl	%esi
	popl	%edi
.LVL2340:
	popl	%ebp
.LBB10919:
.LBB10918:
	.loc 8 449 0
	jmp	pmm_free.1862
.LVL2341:
.L1410:
	movl	$16, %eax
.LVL2342:
.L1412:
.LBE10918:
.LBE10919:
.LBB10920:
.LBB10921:
	.loc 16 149 0
	decl	%eax
	movb	$0, (%esi,%eax)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L1412
.LBE10921:
.LBE10920:
	.loc 19 134 0
	movl	$1, (%esi)
	.loc 19 135 0
	movl	$-2064535, 8(%esi)
	movb	$8, %al
.LVL2343:
.L1413:
.LBB10922:
.LBB10923:
	.loc 16 149 0
	decl	%eax
.LVL2344:
	movb	$0, (%edx,%eax)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L1413
.LBE10923:
.LBE10922:
	.loc 19 138 0
	movl	%esi, 4(%edx)
	.loc 19 139 0
	movl	$1, (%edx)
	movb	$8, %al
.LVL2345:
.L1414:
.LBB10924:
.LBB10925:
	.loc 16 149 0
	decl	%eax
.LVL2346:
	movb	$0, (%ebx,%eax)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L1414
.LBE10925:
.LBE10924:
	.loc 19 143 0
	movl	$1, 4(%ebx)
	.loc 19 144 0
	orl	$2, %edx
	movl	%edx, (%ebx)
	.loc 19 147 0
	movl	%ebx, %edx
	orl	$2, %edx
.L1415:
	movl	%edx, (%ebp,%eax,4)
.LVL2347:
	.loc 19 146 0
	incl	%eax
.LVL2348:
	cmpl	$1024, %eax
	jne	.L1415
	.loc 19 148 0
	movl	%ebp, 28(%edi)
	.loc 19 149 0
	movl	%ebx, 24(%edi)
	movl	%ebx, 20(%edi)
	.loc 19 150 0
	.loc 19 153 0
	movl	16(%edi), %ecx
.LBB10926:
.LBB10927:
	.loc 2 83 0
	leal	12(%ecx), %edx
	movb	$64, %al
.LVL2349:
#APP
# 83 "src/ioport.h" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
.LBE10927:
.LBE10926:
.LBB10928:
.LBB10929:
	.loc 2 89 0
	leal	8(%ecx), %edx
	movl	%ebp, %eax
#APP
# 89 "src/ioport.h" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
.LBE10929:
.LBE10928:
.LBB10930:
.LBB10931:
	.loc 2 86 0
	leal	6(%ecx), %edx
	xorl	%eax, %eax
#APP
# 86 "src/ioport.h" 1
	outw %ax, %dx
# 0 "" 2
#NO_APP
.LBE10931:
.LBE10930:
.LBB10932:
.LBB10933:
	movb	$-63, %al
	movl	%ecx, %edx
#APP
# 86 "src/ioport.h" 1
	outw %ax, %dx
# 0 "" 2
#NO_APP
.LBE10933:
.LBE10932:
.LBB10934:
.LBB10935:
	.loc 19 85 0
	call	__force_link_error__only_in_32bit_flat
.LBE10935:
.LBE10934:
	.cfi_endproc
.LFE2207:
	.size	configure_uhci.44712, .-configure_uhci.44712
	.section	.text.configure_ohci.46867,"ax",@progbits
	.type	configure_ohci.46867, @function
configure_ohci.46867:
.LFB2294:
	.loc 20 172 0
	.cfi_startproc
.LVL2350:
	pushl	%ebp
.LCFI505:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI506:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI507:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI508:
	.cfi_def_cfa_offset 20
	subl	$24, %esp
.LCFI509:
	.cfi_def_cfa_offset 44
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LBB10936:
.LBB10937:
	.loc 8 434 0
	pushl	$256
.LCFI510:
	.cfi_def_cfa_offset 48
	movl	$256, %ecx
	orl	$-1, %edx
	movl	$ZoneHigh, %eax
.LVL2351:
	.cfi_escape 0x2e,0x4
	call	pmm_malloc.1860
.LCFI511:
	.cfi_def_cfa_offset 44
	movl	%eax, %esi
.LBE10937:
.LBE10936:
.LBB10938:
.LBB10939:
	.loc 8 413 0
	pushl	$16
.LCFI512:
	.cfi_def_cfa_offset 48
	movl	$16, %ecx
	orl	$-1, %edx
	movl	$ZoneHigh, %eax
	call	pmm_malloc.1860
.LCFI513:
	.cfi_def_cfa_offset 44
	movl	%eax, %edi
.LBE10939:
.LBE10938:
	.loc 20 178 0
	testl	%eax, %eax
	je	.L1435
	.loc 20 180 0
	movl	$256, %eax
.LVL2352:
	.loc 20 178 0
	testl	%esi, %esi
	jne	.L1439
.L1435:
.LBB10940:
.LBB10941:
	.loc 3 508 0
	pushl	$179
.LCFI514:
	.cfi_def_cfa_offset 48
	pushl	$__func__.46872
.LCFI515:
	.cfi_def_cfa_offset 52
	pushl	$.LC26
.LCFI516:
	.cfi_def_cfa_offset 56
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
.LVL2353:
	addl	$12, %esp
.LCFI517:
	.cfi_def_cfa_offset 44
.LBE10941:
.LBE10940:
	.loc 20 180 0
	jmp	.L1424
.LVL2354:
.L1439:
.LBB10942:
.LBB10943:
	.loc 16 149 0
	decl	%eax
.LVL2355:
	movb	$0, (%esi,%eax)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L1439
	movb	$16, %al
.LVL2356:
.L1426:
.LBE10943:
.LBE10942:
.LBB10944:
.LBB10945:
	.loc 16 149 0
	decl	%eax
.LVL2357:
	movb	$0, (%edi,%eax)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L1426
.LBE10945:
.LBE10944:
	.loc 20 184 0
	movl	$16384, (%edi)
.L1427:
	.loc 20 187 0
	movl	%edi, (%esi,%eax,4)
.LVL2358:
	.loc 20 186 0
	incl	%eax
.LVL2359:
	cmpl	$32, %eax
	jne	.L1427
.LBB10946:
.LBB10947:
	.loc 20 115 0
	movl	16(%ebx), %eax
.LVL2360:
.LBB10982:
.LBB10983:
	.loc 8 139 0
	movl	52(%eax), %edx
	movl	%edx, 12(%esp)
.LBE10983:
.LBE10982:
.LBB10980:
.LBB10981:
	movl	4(%eax), %edx
.LBE10981:
.LBE10980:
	.loc 20 116 0
	andl	$512, %edx
	movl	%edx, 8(%esp)
.LBB10978:
.LBB10979:
	.loc 8 130 0
	movl	%edx, 4(%eax)
.LBE10979:
.LBE10978:
.LBB10976:
.LBB10977:
	.loc 8 139 0
	movl	4(%eax), %eax
.LBE10977:
.LBE10976:
.LBB10963:
.LBB10964:
	.loc 7 127 0
#APP
# 127 "src/clock.c" 1
	movl %CS:cpu_khz, %ecx
# 0 "" 2
.LVL2361:
#NO_APP
.LBE10964:
.LBB10965:
.LBB10966:
.LBB10967:
.LBB10968:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL2362:
#NO_APP
.LBE10968:
.LBE10967:
	.loc 7 105 0
	imull	$50, %ecx, %ecx
.LVL2363:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	addl	%eax, (%esp)
	adcl	%edx, 4(%esp)
.LVL2364:
	jmp	.L1428
.LVL2365:
.L1429:
.LBB10969:
.LBB10970:
.LBB10971:
.LBB10972:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
.LVL2366:
#NO_APP
.L1428:
.LBE10972:
.LBE10971:
.LBE10970:
.LBE10969:
.LBB10973:
.LBB10974:
.LBB10975:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
.LVL2367:
#NO_APP
.LBE10975:
.LBE10974:
.LBE10973:
	.loc 7 106 0
	subl	(%esp), %eax
	sbbl	4(%esp), %edx
.LVL2368:
	cmpl	$0, %edx
	jl	.L1429
	jg	.L1436
	cmpl	$0, %eax
	jbe	.L1429
.L1436:
.LBE10966:
.LBE10965:
.LBE10963:
.LBB10958:
.LBB10959:
.LBB10960:
	.loc 7 140 0
#APP
# 140 "src/clock.c" 1
	movl %CS:cpu_khz, %ebp
# 0 "" 2
.LVL2369:
#NO_APP
.LBE10960:
.LBB10961:
.LBB10962:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
.LBE10962:
.LBE10961:
	.loc 7 141 0
	movl	$1000, %ecx
	movl	%ebp, %eax
	xorl	%edx, %edx
	divl	%ecx
	movw	$10, %cx
	mull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	addl	%eax, (%esp)
	adcl	%edx, 4(%esp)
.LBE10959:
.LBE10958:
.LBB10956:
.LBB10957:
	.loc 8 130 0
	movl	16(%ebx), %eax
	leal	8(%eax), %ebp
.LVL2370:
	movl	$1, 8(%eax)
	movl	%eax, %ecx
.L1444:
.LBE10957:
.LBE10956:
.LBB10948:
.LBB10949:
.LBB10950:
	.loc 8 139 0
	movl	(%ebp), %edx
.LVL2371:
.LBE10950:
.LBE10949:
	.loc 20 130 0
	testl	%edx, %edx
	je	.L1431
.LBB10951:
.LBB10952:
.LBB10953:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
.LVL2372:
.LBE10953:
.LBE10952:
.LBE10951:
	.loc 20 132 0
	movl	(%esp), %eax
	movl	4(%esp), %edx
	subl	%eax, 16(%esp)
	sbbl	%edx, 20(%esp)
	cmpl	$0, 20(%esp)
	jl	.L1444
	jg	.L1437
	cmpl	$0, 16(%esp)
	jbe	.L1444
.L1437:
.LBB10954:
.LBB10955:
	.loc 3 516 0
	pushl	$133
.LCFI518:
	.cfi_def_cfa_offset 48
	pushl	$__func__.46826
.LCFI519:
	.cfi_def_cfa_offset 52
	pushl	$.LC10
.LCFI520:
	.cfi_def_cfa_offset 56
	call	__dprintf.1656
	addl	$12, %esp
.LCFI521:
	.cfi_def_cfa_offset 44
.LBE10955:
.LBE10954:
.LBE10948:
.LBE10947:
.LBE10946:
.LBB11001:
.LBB11002:
.LBB11003:
.LBB11004:
	.loc 8 139 0
	movl	16(%ebx), %eax
	movl	4(%eax), %edx
.LVL2373:
.LBE11004:
.LBE11003:
	.loc 20 165 0
	andl	$512, %edx
.LBB11005:
.LBB11006:
	.loc 8 130 0
	movl	%edx, 4(%eax)
.LBE11006:
.LBE11005:
.LBB11007:
.LBB11008:
	.loc 8 139 0
	movl	4(%eax), %eax
	jmp	.L1424
.LVL2374:
.L1431:
.LBE11008:
.LBE11007:
.LBE11002:
.LBE11001:
.LBB11009:
.LBB11000:
.LBB10984:
.LBB10985:
	.loc 8 130 0
	movl	$0, 32(%ecx)
.LBE10985:
.LBE10984:
.LBB10986:
.LBB10987:
	movl	16(%ebx), %ecx
	movl	$0, 40(%ecx)
.LBE10987:
.LBE10986:
.LBB10988:
.LBB10989:
	movl	%esi, 24(%ecx)
.LBE10989:
.LBE10988:
	.loc 20 144 0
	movl	12(%esp), %esi
.LVL2375:
	andl	$16383, %esi
	.loc 20 145 0
	movl	12(%esp), %ebx
.LVL2376:
	notl	%ebx
	andl	$-2147483648, %ebx
	orl	%esi, %ebx
	imull	$6, %esi, %eax
	subl	$1260, %eax
	movl	$7, %edi
	xorl	%edx, %edx
.LVL2377:
	divl	%edi
	sall	$16, %eax
	orl	%eax, %ebx
.LBB10990:
.LBB10991:
	.loc 8 130 0
	movl	%ebx, 52(%ecx)
.LBE10991:
.LBE10990:
	.loc 20 148 0
	leal	(%esi,%esi,8), %eax
	movl	$10, %ebx
	xorl	%edx, %edx
	divl	%ebx
	andl	$16383, %eax
.LBB10992:
.LBB10993:
	.loc 8 130 0
	movl	%eax, 64(%ecx)
.LBE10993:
.LBE10992:
.LBB10994:
.LBB10995:
	.loc 8 139 0
	movl	4(%ecx), %eax
.LBE10995:
.LBE10994:
	.loc 20 154 0
	movl	8(%esp), %eax
	orb	$-105, %al
.LBB10996:
.LBB10997:
	.loc 8 130 0
	movl	%eax, 4(%ecx)
.LBE10997:
.LBE10996:
.LBB10998:
.LBB10999:
	.loc 8 139 0
	movl	4(%ecx), %eax
.LBE10999:
.LBE10998:
.LBE11000:
.LBE11009:
.LBB11010:
.LBB11011:
	.loc 20 89 0
	.cfi_escape 0x2e,0x0
	call	__force_link_error__only_in_32bit_flat
.LVL2378:
.L1424:
.LBE11011:
.LBE11010:
.LBB11012:
.LBB11013:
	.loc 8 449 0
	movl	%esi, %eax
	call	pmm_free.1862
.LVL2379:
.LBE11013:
.LBE11012:
.LBB11014:
.LBB11015:
	movl	%edi, %eax
.LBE11015:
.LBE11014:
	.loc 20 204 0
	addl	$24, %esp
	popl	%ebx
.LVL2380:
	popl	%esi
	popl	%edi
	popl	%ebp
.LBB11017:
.LBB11016:
	.loc 8 449 0
	jmp	pmm_free.1862
.LBE11016:
.LBE11017:
	.cfi_endproc
.LFE2294:
	.size	configure_ohci.46867, .-configure_ohci.46867
	.section	.text.configure_ehci.48799,"ax",@progbits
	.type	configure_ehci.48799, @function
configure_ehci.48799:
.LFB2380:
	.loc 21 175 0
	.cfi_startproc
.LVL2381:
	pushl	%ebp
.LCFI522:
	.cfi_def_cfa_offset 8
	pushl	%edi
.LCFI523:
	.cfi_def_cfa_offset 12
	pushl	%esi
.LCFI524:
	.cfi_def_cfa_offset 16
	pushl	%ebx
.LCFI525:
	.cfi_def_cfa_offset 20
	subl	$16, %esp
.LCFI526:
	.cfi_def_cfa_offset 36
	movl	%eax, %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
.LVL2382:
.LBB11018:
.LBB11019:
	.loc 8 434 0
	pushl	$4096
.LCFI527:
	.cfi_def_cfa_offset 40
	movl	$4096, %ecx
	orl	$-1, %edx
	movl	$ZoneHigh, %eax
.LVL2383:
	.cfi_escape 0x2e,0x4
	call	pmm_malloc.1860
.LCFI528:
	.cfi_def_cfa_offset 36
	movl	%eax, %ebp
.LBE11019:
.LBE11018:
.LBB11020:
.LBB11021:
	pushl	$64
.LCFI529:
	.cfi_def_cfa_offset 40
	movl	$48, %ecx
	orl	$-1, %edx
	movl	$ZoneHigh, %eax
	call	pmm_malloc.1860
.LCFI530:
	.cfi_def_cfa_offset 36
	movl	%eax, %esi
.LBE11021:
.LBE11020:
.LBB11022:
.LBB11023:
	pushl	$64
.LCFI531:
	.cfi_def_cfa_offset 40
	movl	$48, %ecx
	orl	$-1, %edx
	movl	$ZoneHigh, %eax
	call	pmm_malloc.1860
.LCFI532:
	.cfi_def_cfa_offset 36
	movl	%eax, %edi
.LBE11023:
.LBE11022:
	.loc 21 182 0
	testl	%esi, %esi
	je	.L1447
	testl	%ebp, %ebp
	je	.L1447
	testl	%eax, %eax
	jne	.L1448
.L1447:
.LBB11024:
.LBB11025:
	.loc 3 508 0
	pushl	$183
.LCFI533:
	.cfi_def_cfa_offset 40
	pushl	$__func__.48805
.LCFI534:
	.cfi_def_cfa_offset 44
	pushl	$.LC26
.LCFI535:
	.cfi_def_cfa_offset 48
	jmp	.L1462
.LCFI536:
	.cfi_def_cfa_offset 36
.L1448:
.LBE11025:
.LBE11024:
.LBB11026:
.LBB11027:
	.loc 8 139 0
	movl	20(%ebx), %edx
	movl	(%edx), %eax
.LBE11027:
.LBE11026:
	.loc 21 191 0
	andl	$-51, %eax
	orl	$2, %eax
.LBB11028:
.LBB11029:
	.loc 8 130 0
	movl	%eax, (%edx)
.LBE11029:
.LBE11028:
.LBB11030:
.LBB11031:
.LBB11032:
	.loc 7 134 0
#APP
# 134 "src/clock.c" 1
	movl %CS:cpu_khz, %eax
# 0 "" 2
#NO_APP
	movl	%eax, 8(%esp)
.LBE11032:
.LBB11033:
.LBB11034:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
.LBE11034:
.LBE11033:
	.loc 7 135 0
	movl	$250, %ecx
	movl	8(%esp), %eax
	mull	%ecx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	(%esp), %eax
	movl	4(%esp), %edx
	addl	%eax, 8(%esp)
	adcl	%edx, 12(%esp)
.L1453:
.LBE11031:
.LBE11030:
	.loc 21 194 0
	movl	20(%ebx), %eax
.LBB11035:
.LBB11036:
	.loc 8 139 0
	movl	(%eax), %edx
.LVL2384:
.LBE11036:
.LBE11035:
	.loc 21 195 0
	testb	$2, %dl
	je	.L1450
.LBB11037:
.LBB11038:
.LBB11039:
	.loc 8 79 0
#APP
# 79 "src/util.h" 1
	rdtsc
# 0 "" 2
#NO_APP
.LBE11039:
.LBE11038:
.LBE11037:
	.loc 21 197 0
	subl	8(%esp), %eax
	sbbl	12(%esp), %edx
.LVL2385:
	cmpl	$0, %edx
	jl	.L1451
	jg	.L1458
	cmpl	$0, %eax
	jbe	.L1451
.L1458:
.LBB11040:
.LBB11041:
	.loc 3 516 0
	pushl	$198
.LCFI537:
	.cfi_def_cfa_offset 40
	pushl	$__func__.48805
.LCFI538:
	.cfi_def_cfa_offset 44
	pushl	$.LC10
.LCFI539:
	.cfi_def_cfa_offset 48
.L1462:
	.cfi_escape 0x2e,0xc
	call	__dprintf.1656
	addl	$12, %esp
.LCFI540:
	.cfi_def_cfa_offset 36
.LBE11041:
.LBE11040:
.LBB11042:
.LBB11043:
	.loc 8 449 0
	movl	%ebp, %eax
	.cfi_escape 0x2e,0x0
	call	pmm_free.1862
.LBE11043:
.LBE11042:
.LBB11044:
.LBB11045:
	movl	%esi, %eax
	call	pmm_free.1862
.LBE11045:
.LBE11044:
.LBB11046:
.LBB11047:
	movl	%edi, %eax
	call	pmm_free.1862
.LBE11047:
.LBE11046:
.LBB11048:
.LBB11049:
	movl	%ebx, %eax
.LBE11049:
.LBE11048:
	.loc 21 249 0
	addl	$16, %esp
	popl	%ebx
.LVL2386:
	popl	%esi
	popl	%edi
	popl	%ebp
.LBB11051:
.LBB11050:
	.loc 8 449 0
	jmp	pmm_free.1862
.LVL2387:
.L1451:
.LBE11050:
.LBE11051:
.LBB11052:
.LBB11053:
.LBB11054:
.LBB11055:
	.loc 6 108 0
#APP
# 108 "src/stacks.c" 1
	sti
nop
rep ; nop
cli
cld

# 0 "" 2
#NO_APP
.LBE11055:
.LBE11054:
.LBE11053:
.LBE11052:
	.loc 21 202 0
	jmp	.L1453
.LVL2388:
.L1450:
.LBB11056:
.LBB11057:
	.loc 8 130 0
	movl	$0, 8(%eax)
	movl	$48, %eax
.LVL2389:
.L1454:
.LBE11057:
.LBE11056:
.LBB11058:
.LBB11059:
	.loc 16 149 0
	decl	%eax
.LVL2390:
	movb	$0, (%esi,%eax)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L1454
.LBE11059:
.LBE11058:
	.loc 21 209 0
	movl	$1, (%esi)
	.loc 21 210 0
	movl	$1, 8(%esi)
	.loc 21 211 0
	movl	$64, 24(%esi)
	.loc 21 212 0
	movl	$1, 20(%esi)
	movl	$1, 16(%esi)
	.loc 21 215 0
	orl	$2, %esi
.L1455:
	movl	%esi, (%ebp,%eax,4)
.LVL2391:
	.loc 21 214 0
	incl	%eax
.LVL2392:
	cmpl	$1024, %eax
	jne	.L1455
.LBB11060:
.LBB11061:
	.loc 8 130 0
	movl	20(%ebx), %eax
.LVL2393:
	movl	%ebp, 20(%eax)
	movl	$48, %eax
.LVL2394:
.L1456:
.LBE11061:
.LBE11060:
.LBB11062:
.LBB11063:
	.loc 16 149 0
	decl	%eax
.LVL2395:
	movb	$0, (%edi,%eax)
	.loc 16 148 0
	testl	%eax, %eax
	jne	.L1456
.LBE11063:
.LBE11062:
	.loc 21 220 0
	movl	%edi, %eax
.LVL2396:
	orl	$2, %eax
	movl	%eax, (%edi)
	.loc 21 221 0
	movl	$32768, 4(%edi)
	.loc 21 222 0
	movl	$64, 24(%edi)
	.loc 21 223 0
	movl	$1, 20(%edi)
	movl	$1, 16(%edi)
	.loc 21 224 0
	movl	%edi, 24(%ebx)
.LBB11064:
.LBB11065:
	.loc 8 130 0
	movl	20(%ebx), %eax
	movl	%edi, 24(%eax)
.LBE11065:
.LBE11064:
	.loc 21 228 0
	orl	$49, %edx
.LVL2397:
.LBB11066:
.LBB11067:
	.loc 8 130 0
	movl	%edx, (%eax)
.LBE11067:
.LBE11066:
.LBB11068:
.LBB11069:
	movl	$1, 64(%eax)
.LBE11069:
.LBE11068:
.LBB11070:
.LBB11071:
	.loc 8 139 0
	movl	16(%ebx), %eax
	movl	4(%eax), %eax
.LBE11071:
.LBE11070:
	.loc 21 232 0
	andl	$15, %eax
	movl	%eax, 60(%ebx)
.LBB11072:
.LBB11073:
	.loc 21 158 0
	call	__force_link_error__only_in_32bit_flat
.LBE11073:
.LBE11072:
	.cfi_endproc
.LFE2380:
	.size	configure_ehci.48799, .-configure_ehci.48799
.globl BIOS_CONFIG_TABLE
	.section	.fixedaddr.0xe6f5,"aw",@progbits
	.type	BIOS_CONFIG_TABLE, @object
	.size	BIOS_CONFIG_TABLE, 10
BIOS_CONFIG_TABLE:
	.value	8
	.byte	-4
	.byte	0
	.byte	1
	.byte	116
	.byte	64
	.byte	0
	.byte	0
	.byte	0
.globl rmode_IDT_info
	.section	.data16.src/misc.c.132,"aw",@progbits
	.align 4
	.type	rmode_IDT_info, @object
	.size	rmode_IDT_info, 6
rmode_IDT_info:
	.value	1023
	.long	0
.globl pmode_IDT_info
	.section	.data16.src/misc.c.142,"aw",@progbits
	.align 4
	.type	pmode_IDT_info, @object
	.size	pmode_IDT_info, 6
pmode_IDT_info:
	.value	0
	.long	dummy_IDT+983040
.globl rombios32_gdt
	.section	.data16.src/misc.c.148,"aw",@progbits
	.align 8
	.type	rombios32_gdt, @object
	.size	rombios32_gdt, 56
rombios32_gdt:
	.long	0
	.long	0
	.long	65535
	.long	13605632
	.long	65535
	.long	13603584
	.long	65535
	.long	39695
	.long	65535
	.long	37632
	.long	65535
	.long	9411343
	.long	65535
	.long	9409280
.globl rombios32_gdt_48
	.section	.data16.src/misc.c.166,"aw",@progbits
	.align 4
	.type	rombios32_gdt_48, @object
	.size	rombios32_gdt_48, 6
rombios32_gdt_48:
	.value	55
	.long	rombios32_gdt+983040
.globl BiosCopyright
	.section	.fixedaddr.0xff00,"aw",@progbits
	.type	BiosCopyright, @object
	.size	BiosCopyright, 69
BiosCopyright:
	.string	"(c) 2002 MandrakeSoft S.A. Written by Kevin Lawton & the Bochs team."
.globl BiosDate
	.section	.fixedaddr.0xfff5,"aw",@progbits
	.type	BiosDate, @object
	.size	BiosDate, 9
BiosDate:
	.string	"06/23/99"
.globl BiosModelId
	.section	.fixedaddr.0xfffe,"aw",@progbits
	.type	BiosModelId, @object
	.size	BiosModelId, 1
BiosModelId:
	.byte	-4
	.section	.rodata.__func__.2165,"a",@progbits
	.align 4
	.type	__func__.2165, @object
	.size	__func__.2165, 10
__func__.2165:
	.string	"handle_75"
	.section	.rodata.__func__.2106,"a",@progbits
	.align 4
	.type	__func__.2106, @object
	.size	__func__.2106, 10
__func__.2106:
	.string	"handle_02"
	.section	.rodata.__func__.2094,"a",@progbits
	.align 4
	.type	__func__.2094, @object
	.size	__func__.2094, 10
__func__.2094:
	.string	"handle_05"
	.weak	Zones
	.section	.discard.var32flat.src/pmm.c.53,"aw",@progbits
	.align 4
	.type	Zones, @object
	.size	Zones, 20
Zones:
	.long	ZoneTmpLow
	.long	ZoneLow
	.long	ZoneFSeg
	.long	ZoneTmpHigh
	.long	ZoneHigh
.globl PMMHEADER
	.section	.data16.export.src/pmm.c.447,"aw",@progbits
	.align 16
	.type	PMMHEADER, @object
	.size	PMMHEADER, 16
PMMHEADER:
	.zero	4
	.byte	1
	.byte	16
	.zero	3
	.value	-4096
	.zero	5
	.section	.rodata.__func__.3783,"a",@progbits
	.align 4
	.type	__func__.3783, @object
	.size	__func__.3783, 9
__func__.3783:
	.string	"addSpace"
	.weak	MainThread
	.section	.discard.var32flat.src/stacks.c.18,"aw",@progbits
	.align 4
	.type	MainThread, @object
	.size	MainThread, -1
MainThread:
	.long	MainThread
	.long	0
	.long	MainThread
.globl diskette_param_table2
	.section	.data16.src/floppy.c.28,"aw",@progbits
	.align 4
	.type	diskette_param_table2, @object
	.size	diskette_param_table2, 14
diskette_param_table2:
	.byte	-81
	.byte	2
	.byte	37
	.byte	2
	.byte	18
	.byte	27
	.byte	-1
	.byte	108
	.byte	-10
	.byte	15
	.byte	8
	.byte	79
	.byte	0
	.byte	4
.globl diskette_param_table
	.section	.fixedaddr.0xefc7,"aw",@progbits
	.type	diskette_param_table, @object
	.size	diskette_param_table, 11
diskette_param_table:
	.byte	-81
	.byte	2
	.byte	37
	.byte	2
	.byte	18
	.byte	27
	.byte	-1
	.byte	108
	.byte	-10
	.byte	15
	.byte	8
.globl FloppyInfo
	.section	.data16.src/floppy.c.70,"aw",@progbits
	.align 4
	.type	FloppyInfo, @object
	.size	FloppyInfo, 72
FloppyInfo:
	.value	0
	.value	0
	.value	0
	.byte	0
	.byte	0
	.value	2
	.value	40
	.value	9
	.byte	0
	.byte	37
	.value	2
	.value	80
	.value	15
	.byte	0
	.byte	37
	.value	2
	.value	80
	.value	9
	.byte	0
	.byte	23
	.value	2
	.value	80
	.value	18
	.byte	0
	.byte	23
	.value	2
	.value	80
	.value	36
	.byte	-52
	.byte	-41
	.value	1
	.value	40
	.value	8
	.byte	0
	.byte	39
	.value	1
	.value	40
	.value	9
	.byte	0
	.byte	39
	.value	2
	.value	40
	.value	8
	.byte	0
	.byte	39
	.section	.rodata.__func__.14924,"a",@progbits
	.align 4
	.type	__func__.14924, @object
	.size	__func__.14924, 10
__func__.14924:
	.string	"ata_reset"
	.section	.rodata.__func__.14856,"a",@progbits
	.align 4
	.type	__func__.14856, @object
	.size	__func__.14856, 10
__func__.14856:
	.string	"await_ide"
	.section	.data16.src/mouse.c.122,"aw",@progbits
	.align 4
	.type	sample_rates.18029, @object
	.size	sample_rates.18029, 7
sample_rates.18029:
	.byte	10
	.byte	20
	.byte	40
	.byte	60
	.byte	80
	.byte	100
	.byte	-56
	.section	.data16.src/kbd.c.289,"aw",@progbits
	.align 4
	.type	scan_to_scanascii.20379, @object
	.size	scan_to_scanascii.20379, 890
scan_to_scanascii.20379:
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	283
	.value	283
	.value	283
	.value	256
	.byte	0
	.zero	1
	.value	561
	.value	545
	.value	0
	.value	30720
	.byte	0
	.zero	1
	.value	818
	.value	832
	.value	768
	.value	30976
	.byte	0
	.zero	1
	.value	1075
	.value	1059
	.value	0
	.value	31232
	.byte	0
	.zero	1
	.value	1332
	.value	1316
	.value	0
	.value	31488
	.byte	0
	.zero	1
	.value	1589
	.value	1573
	.value	0
	.value	31744
	.byte	0
	.zero	1
	.value	1846
	.value	1886
	.value	1822
	.value	32000
	.byte	0
	.zero	1
	.value	2103
	.value	2086
	.value	0
	.value	32256
	.byte	0
	.zero	1
	.value	2360
	.value	2346
	.value	0
	.value	32512
	.byte	0
	.zero	1
	.value	2617
	.value	2600
	.value	0
	.value	-32768
	.byte	0
	.zero	1
	.value	2864
	.value	2857
	.value	0
	.value	-32512
	.byte	0
	.zero	1
	.value	3117
	.value	3167
	.value	3103
	.value	-32256
	.byte	0
	.zero	1
	.value	3389
	.value	3371
	.value	0
	.value	-32000
	.byte	0
	.zero	1
	.value	3592
	.value	3592
	.value	3711
	.value	0
	.byte	0
	.zero	1
	.value	3849
	.value	3840
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	4209
	.value	4177
	.value	4113
	.value	4096
	.byte	64
	.zero	1
	.value	4471
	.value	4439
	.value	4375
	.value	4352
	.byte	64
	.zero	1
	.value	4709
	.value	4677
	.value	4613
	.value	4608
	.byte	64
	.zero	1
	.value	4978
	.value	4946
	.value	4882
	.value	4864
	.byte	64
	.zero	1
	.value	5236
	.value	5204
	.value	5140
	.value	5120
	.byte	64
	.zero	1
	.value	5497
	.value	5465
	.value	5401
	.value	5376
	.byte	64
	.zero	1
	.value	5749
	.value	5717
	.value	5653
	.value	5632
	.byte	64
	.zero	1
	.value	5993
	.value	5961
	.value	5897
	.value	5888
	.byte	64
	.zero	1
	.value	6255
	.value	6223
	.value	6159
	.value	6144
	.byte	64
	.zero	1
	.value	6512
	.value	6480
	.value	6416
	.value	6400
	.byte	64
	.zero	1
	.value	6747
	.value	6779
	.value	6683
	.value	0
	.byte	0
	.zero	1
	.value	7005
	.value	7037
	.value	6941
	.value	0
	.byte	0
	.zero	1
	.value	7181
	.value	7181
	.value	7178
	.value	0
	.byte	0
	.zero	1
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	7777
	.value	7745
	.value	7681
	.value	7680
	.byte	64
	.zero	1
	.value	8051
	.value	8019
	.value	7955
	.value	7936
	.byte	64
	.zero	1
	.value	8292
	.value	8260
	.value	8196
	.value	8192
	.byte	64
	.zero	1
	.value	8550
	.value	8518
	.value	8454
	.value	8448
	.byte	64
	.zero	1
	.value	8807
	.value	8775
	.value	8711
	.value	8704
	.byte	64
	.zero	1
	.value	9064
	.value	9032
	.value	8968
	.value	8960
	.byte	64
	.zero	1
	.value	9322
	.value	9290
	.value	9226
	.value	9216
	.byte	64
	.zero	1
	.value	9579
	.value	9547
	.value	9483
	.value	9472
	.byte	64
	.zero	1
	.value	9836
	.value	9804
	.value	9740
	.value	9728
	.byte	64
	.zero	1
	.value	10043
	.value	10042
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	10279
	.value	10274
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	10592
	.value	10622
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	11100
	.value	11132
	.value	11036
	.value	0
	.byte	0
	.zero	1
	.value	11386
	.value	11354
	.value	11290
	.value	11264
	.byte	64
	.zero	1
	.value	11640
	.value	11608
	.value	11544
	.value	11520
	.byte	64
	.zero	1
	.value	11875
	.value	11843
	.value	11779
	.value	11776
	.byte	64
	.zero	1
	.value	12150
	.value	12118
	.value	12054
	.value	12032
	.byte	64
	.zero	1
	.value	12386
	.value	12354
	.value	12290
	.value	12288
	.byte	64
	.zero	1
	.value	12654
	.value	12622
	.value	12558
	.value	12544
	.byte	64
	.zero	1
	.value	12909
	.value	12877
	.value	12813
	.value	12800
	.byte	64
	.zero	1
	.value	13100
	.value	13116
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	13358
	.value	13374
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	13615
	.value	13631
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	14122
	.value	14122
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	14624
	.value	14624
	.value	14624
	.value	14624
	.byte	0
	.zero	1
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	15104
	.value	21504
	.value	24064
	.value	26624
	.byte	0
	.zero	1
	.value	15360
	.value	21760
	.value	24320
	.value	26880
	.byte	0
	.zero	1
	.value	15616
	.value	22016
	.value	24576
	.value	27136
	.byte	0
	.zero	1
	.value	15872
	.value	22272
	.value	24832
	.value	27392
	.byte	0
	.zero	1
	.value	16128
	.value	22528
	.value	25088
	.value	27648
	.byte	0
	.zero	1
	.value	16384
	.value	22784
	.value	25344
	.value	27904
	.byte	0
	.zero	1
	.value	16640
	.value	23040
	.value	25600
	.value	28160
	.byte	0
	.zero	1
	.value	16896
	.value	23296
	.value	25856
	.value	28416
	.byte	0
	.zero	1
	.value	17152
	.value	23552
	.value	26112
	.value	28672
	.byte	0
	.zero	1
	.value	17408
	.value	23808
	.value	26368
	.value	28928
	.byte	0
	.zero	1
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	18176
	.value	18231
	.value	30464
	.value	0
	.byte	32
	.zero	1
	.value	18432
	.value	18488
	.value	0
	.value	0
	.byte	32
	.zero	1
	.value	18688
	.value	18745
	.value	-31744
	.value	0
	.byte	32
	.zero	1
	.value	18989
	.value	18989
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	19200
	.value	19252
	.value	29440
	.value	0
	.byte	32
	.zero	1
	.value	19456
	.value	19509
	.value	0
	.value	0
	.byte	32
	.zero	1
	.value	19712
	.value	19766
	.value	29696
	.value	0
	.byte	32
	.zero	1
	.value	20011
	.value	20011
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	20224
	.value	20273
	.value	29952
	.value	0
	.byte	32
	.zero	1
	.value	20480
	.value	20530
	.value	0
	.value	0
	.byte	32
	.zero	1
	.value	20736
	.value	20787
	.value	30208
	.value	0
	.byte	32
	.zero	1
	.value	20992
	.value	21040
	.value	0
	.value	0
	.byte	32
	.zero	1
	.value	21248
	.value	21294
	.value	0
	.value	0
	.byte	32
	.zero	1
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	0
	.value	0
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	22108
	.value	22140
	.value	0
	.value	0
	.byte	0
	.zero	1
	.value	-31488
	.value	-30976
	.value	-30464
	.value	-29952
	.byte	0
	.zero	1
	.value	-31232
	.value	-30720
	.value	-30208
	.value	-29696
	.byte	0
	.zero	1
	.section	.rodata.__func__.31352,"a",@progbits
	.align 4
	.type	__func__.31352, @object
	.size	__func__.31352, 17
__func__.31352:
	.string	"i8042_wait_write"
	.section	.rodata.__func__.31462,"a",@progbits
	.align 4
	.type	__func__.31462, @object
	.size	__func__.31462, 13
__func__.31462:
	.string	"ps2_recvbyte"
	.section	.rodata.__func__.31334,"a",@progbits
	.align 4
	.type	__func__.31334, @object
	.size	__func__.31334, 16
__func__.31334:
	.string	"i8042_wait_read"
.globl PNPHEADER
	.section	.data16.export.src/pnpbios.c.31,"aw",@progbits
	.align 16
	.type	PNPHEADER, @object
	.size	PNPHEADER, 33
PNPHEADER:
	.long	1349406756
	.byte	16
	.byte	33
	.zero	9
	.value	-4096
	.zero	2
	.long	983040
	.zero	4
	.value	-4096
	.long	983040
.globl PIR_TABLE
	.section	.data16.export.src/pirtable.c.21,"aw",@progbits
	.align 16
	.type	PIR_TABLE, @object
	.size	PIR_TABLE, 128
PIR_TABLE:
	.zero	4
	.value	256
	.value	128
	.zero	1
	.byte	8
	.zero	2
	.long	305037446
	.zero	16
	.zero	1
	.byte	8
	.byte	96
	.value	-8456
	.byte	97
	.value	-8456
	.byte	98
	.value	-8456
	.byte	99
	.value	-8456
	.byte	0
	.zero	1
	.zero	1
	.byte	16
	.byte	97
	.value	-8456
	.byte	98
	.value	-8456
	.byte	99
	.value	-8456
	.byte	96
	.value	-8456
	.byte	1
	.zero	1
	.zero	1
	.byte	24
	.byte	98
	.value	-8456
	.byte	99
	.value	-8456
	.byte	96
	.value	-8456
	.byte	97
	.value	-8456
	.byte	2
	.zero	1
	.zero	1
	.byte	32
	.byte	99
	.value	-8456
	.byte	96
	.value	-8456
	.byte	97
	.value	-8456
	.byte	98
	.value	-8456
	.byte	3
	.zero	1
	.zero	1
	.byte	40
	.byte	96
	.value	-8456
	.byte	97
	.value	-8456
	.byte	98
	.value	-8456
	.byte	99
	.value	-8456
	.byte	4
	.zero	1
	.zero	1
	.byte	48
	.byte	97
	.value	-8456
	.byte	98
	.value	-8456
	.byte	99
	.value	-8456
	.byte	96
	.value	-8456
	.byte	5
	.zero	1
.globl VGAbdf
	.section	.data16.src/vgahooks.c.16,"aw",@progbits
	.align 4
	.type	VGAbdf, @object
	.size	VGAbdf, 4
VGAbdf:
	.long	-1
.globl BIOS32HEADER
	.section	.data16.export.src/pcibios.c.222,"aw",@progbits
	.align 16
	.type	BIOS32HEADER, @object
	.size	BIOS32HEADER, 16
BIOS32HEADER:
	.long	1597125471
	.zero	5
	.byte	1
	.zero	6
	.section	.rodata.__func__.45045,"a",@progbits
	.align 4
	.type	__func__.45045, @object
	.size	__func__.45045, 8
__func__.45045:
	.string	"wait_td"
	.section	.rodata.__func__.44820,"a",@progbits
	.align 4
	.type	__func__.44820, @object
	.size	__func__.44820, 14
__func__.44820:
	.string	"uhci_waittick"
	.section	.rodata.__func__.44719,"a",@progbits
	.align 4
	.type	__func__.44719, @object
	.size	__func__.44719, 15
__func__.44719:
	.string	"configure_uhci"
	.section	.rodata.__func__.46872,"a",@progbits
	.align 4
	.type	__func__.46872, @object
	.size	__func__.46872, 15
__func__.46872:
	.string	"configure_ohci"
	.section	.rodata.__func__.46826,"a",@progbits
	.align 4
	.type	__func__.46826, @object
	.size	__func__.46826, 11
__func__.46826:
	.string	"start_ohci"
	.section	.rodata.__func__.49179,"a",@progbits
	.align 4
	.type	__func__.49179, @object
	.size	__func__.49179, 13
__func__.49179:
	.string	"ehci_wait_td"
	.section	.rodata.__func__.48805,"a",@progbits
	.align 4
	.type	__func__.48805, @object
	.size	__func__.48805, 15
__func__.48805:
	.string	"configure_ehci"
	.section	.data16.src/usb-hid.c.156,"aw",@progbits
	.align 4
	.type	ModifierToScanCode.51295, @object
	.size	ModifierToScanCode.51295, 16
ModifierToScanCode.51295:
	.value	29
	.value	42
	.value	56
	.value	-8101
	.value	-8163
	.value	54
	.value	-8136
	.value	-8100
	.section	.data16.src/usb-hid.c.139,"aw",@progbits
	.align 4
	.type	KeyToScanCode.51294, @object
	.size	KeyToScanCode.51294, 200
KeyToScanCode.51294:
	.value	0
	.value	0
	.value	0
	.value	0
	.value	30
	.value	48
	.value	46
	.value	32
	.value	18
	.value	33
	.value	34
	.value	35
	.value	23
	.value	36
	.value	37
	.value	38
	.value	50
	.value	49
	.value	24
	.value	25
	.value	16
	.value	19
	.value	31
	.value	20
	.value	22
	.value	47
	.value	17
	.value	45
	.value	21
	.value	44
	.value	2
	.value	3
	.value	4
	.value	5
	.value	6
	.value	7
	.value	8
	.value	9
	.value	10
	.value	11
	.value	28
	.value	1
	.value	14
	.value	15
	.value	57
	.value	12
	.value	13
	.value	26
	.value	27
	.value	43
	.value	0
	.value	39
	.value	40
	.value	41
	.value	51
	.value	52
	.value	53
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	67
	.value	68
	.value	87
	.value	88
	.value	-8137
	.value	70
	.value	-7907
	.value	-8110
	.value	-8121
	.value	-8119
	.value	-8109
	.value	-8113
	.value	-8111
	.value	-8115
	.value	-8117
	.value	-8112
	.value	-8120
	.value	69
	.value	-8139
	.value	55
	.value	74
	.value	78
	.value	-8164
	.value	79
	.value	80
	.value	81
	.value	75
	.value	76
	.value	77
	.value	71
	.value	72
	.value	73
	.value	82
	.value	83
	.section	.rodata.__func__.54923,"a",@progbits
	.align 4
	.type	__func__.54923, @object
	.size	__func__.54923, 14
__func__.54923:
	.string	"vring_add_buf"
	.section	.rodata.__func__.62795,"a",@progbits
	.align 4
	.type	__func__.62795, @object
	.size	__func__.62795, 10
__func__.62795:
	.string	"disk_1305"
	.section	.rodata.__func__.64939,"a",@progbits
	.align 4
	.type	__func__.64939, @object
	.size	__func__.64939, 10
__func__.64939:
	.string	"handle_40"
.globl vgafont8
	.section	.fixedaddr.0xfa6e,"aw",@progbits
	.type	vgafont8, @object
	.size	vgafont8, 1024
vgafont8:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	-127
	.byte	-91
	.byte	-127
	.byte	-67
	.byte	-103
	.byte	-127
	.byte	126
	.byte	126
	.byte	-1
	.byte	-37
	.byte	-1
	.byte	-61
	.byte	-25
	.byte	-1
	.byte	126
	.byte	108
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	124
	.byte	56
	.byte	16
	.byte	0
	.byte	16
	.byte	56
	.byte	124
	.byte	-2
	.byte	124
	.byte	56
	.byte	16
	.byte	0
	.byte	56
	.byte	124
	.byte	56
	.byte	-2
	.byte	-2
	.byte	124
	.byte	56
	.byte	124
	.byte	16
	.byte	16
	.byte	56
	.byte	124
	.byte	-2
	.byte	124
	.byte	56
	.byte	124
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	60
	.byte	24
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-25
	.byte	-61
	.byte	-61
	.byte	-25
	.byte	-1
	.byte	-1
	.byte	0
	.byte	60
	.byte	102
	.byte	66
	.byte	66
	.byte	102
	.byte	60
	.byte	0
	.byte	-1
	.byte	-61
	.byte	-103
	.byte	-67
	.byte	-67
	.byte	-103
	.byte	-61
	.byte	-1
	.byte	15
	.byte	7
	.byte	15
	.byte	125
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	120
	.byte	60
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	24
	.byte	126
	.byte	24
	.byte	63
	.byte	51
	.byte	63
	.byte	48
	.byte	48
	.byte	112
	.byte	-16
	.byte	-32
	.byte	127
	.byte	99
	.byte	127
	.byte	99
	.byte	99
	.byte	103
	.byte	-26
	.byte	-64
	.byte	-103
	.byte	90
	.byte	60
	.byte	-25
	.byte	-25
	.byte	60
	.byte	90
	.byte	-103
	.byte	-128
	.byte	-32
	.byte	-8
	.byte	-2
	.byte	-8
	.byte	-32
	.byte	-128
	.byte	0
	.byte	2
	.byte	14
	.byte	62
	.byte	-2
	.byte	62
	.byte	14
	.byte	2
	.byte	0
	.byte	24
	.byte	60
	.byte	126
	.byte	24
	.byte	24
	.byte	126
	.byte	60
	.byte	24
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	0
	.byte	102
	.byte	0
	.byte	127
	.byte	-37
	.byte	-37
	.byte	123
	.byte	27
	.byte	27
	.byte	27
	.byte	0
	.byte	62
	.byte	99
	.byte	56
	.byte	108
	.byte	108
	.byte	56
	.byte	-52
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	126
	.byte	126
	.byte	0
	.byte	24
	.byte	60
	.byte	126
	.byte	24
	.byte	126
	.byte	60
	.byte	24
	.byte	-1
	.byte	24
	.byte	60
	.byte	126
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	126
	.byte	60
	.byte	24
	.byte	0
	.byte	0
	.byte	24
	.byte	12
	.byte	-2
	.byte	12
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	96
	.byte	-2
	.byte	96
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	36
	.byte	102
	.byte	-1
	.byte	102
	.byte	36
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	126
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	126
	.byte	60
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	120
	.byte	120
	.byte	48
	.byte	48
	.byte	0
	.byte	48
	.byte	0
	.byte	108
	.byte	108
	.byte	108
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	108
	.byte	108
	.byte	-2
	.byte	108
	.byte	-2
	.byte	108
	.byte	108
	.byte	0
	.byte	48
	.byte	124
	.byte	-64
	.byte	120
	.byte	12
	.byte	-8
	.byte	48
	.byte	0
	.byte	0
	.byte	-58
	.byte	-52
	.byte	24
	.byte	48
	.byte	102
	.byte	-58
	.byte	0
	.byte	56
	.byte	108
	.byte	56
	.byte	118
	.byte	-36
	.byte	-52
	.byte	118
	.byte	0
	.byte	96
	.byte	96
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	48
	.byte	96
	.byte	96
	.byte	96
	.byte	48
	.byte	24
	.byte	0
	.byte	96
	.byte	48
	.byte	24
	.byte	24
	.byte	24
	.byte	48
	.byte	96
	.byte	0
	.byte	0
	.byte	102
	.byte	60
	.byte	-1
	.byte	60
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	-4
	.byte	48
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	96
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	0
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	-64
	.byte	-128
	.byte	0
	.byte	124
	.byte	-58
	.byte	-50
	.byte	-34
	.byte	-10
	.byte	-26
	.byte	124
	.byte	0
	.byte	48
	.byte	112
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	-4
	.byte	0
	.byte	120
	.byte	-52
	.byte	12
	.byte	56
	.byte	96
	.byte	-52
	.byte	-4
	.byte	0
	.byte	120
	.byte	-52
	.byte	12
	.byte	56
	.byte	12
	.byte	-52
	.byte	120
	.byte	0
	.byte	28
	.byte	60
	.byte	108
	.byte	-52
	.byte	-2
	.byte	12
	.byte	30
	.byte	0
	.byte	-4
	.byte	-64
	.byte	-8
	.byte	12
	.byte	12
	.byte	-52
	.byte	120
	.byte	0
	.byte	56
	.byte	96
	.byte	-64
	.byte	-8
	.byte	-52
	.byte	-52
	.byte	120
	.byte	0
	.byte	-4
	.byte	-52
	.byte	12
	.byte	24
	.byte	48
	.byte	48
	.byte	48
	.byte	0
	.byte	120
	.byte	-52
	.byte	-52
	.byte	120
	.byte	-52
	.byte	-52
	.byte	120
	.byte	0
	.byte	120
	.byte	-52
	.byte	-52
	.byte	124
	.byte	12
	.byte	24
	.byte	112
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	96
	.byte	24
	.byte	48
	.byte	96
	.byte	-64
	.byte	96
	.byte	48
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	0
	.byte	0
	.byte	-4
	.byte	0
	.byte	0
	.byte	96
	.byte	48
	.byte	24
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	0
	.byte	120
	.byte	-52
	.byte	12
	.byte	24
	.byte	48
	.byte	0
	.byte	48
	.byte	0
	.byte	124
	.byte	-58
	.byte	-34
	.byte	-34
	.byte	-34
	.byte	-64
	.byte	120
	.byte	0
	.byte	48
	.byte	120
	.byte	-52
	.byte	-52
	.byte	-4
	.byte	-52
	.byte	-52
	.byte	0
	.byte	-4
	.byte	102
	.byte	102
	.byte	124
	.byte	102
	.byte	102
	.byte	-4
	.byte	0
	.byte	60
	.byte	102
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	102
	.byte	60
	.byte	0
	.byte	-8
	.byte	108
	.byte	102
	.byte	102
	.byte	102
	.byte	108
	.byte	-8
	.byte	0
	.byte	-2
	.byte	98
	.byte	104
	.byte	120
	.byte	104
	.byte	98
	.byte	-2
	.byte	0
	.byte	-2
	.byte	98
	.byte	104
	.byte	120
	.byte	104
	.byte	96
	.byte	-16
	.byte	0
	.byte	60
	.byte	102
	.byte	-64
	.byte	-64
	.byte	-50
	.byte	102
	.byte	62
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-4
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	0
	.byte	120
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	120
	.byte	0
	.byte	30
	.byte	12
	.byte	12
	.byte	12
	.byte	-52
	.byte	-52
	.byte	120
	.byte	0
	.byte	-26
	.byte	102
	.byte	108
	.byte	120
	.byte	108
	.byte	102
	.byte	-26
	.byte	0
	.byte	-16
	.byte	96
	.byte	96
	.byte	96
	.byte	98
	.byte	102
	.byte	-2
	.byte	0
	.byte	-58
	.byte	-18
	.byte	-2
	.byte	-2
	.byte	-42
	.byte	-58
	.byte	-58
	.byte	0
	.byte	-58
	.byte	-26
	.byte	-10
	.byte	-34
	.byte	-50
	.byte	-58
	.byte	-58
	.byte	0
	.byte	56
	.byte	108
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	108
	.byte	56
	.byte	0
	.byte	-4
	.byte	102
	.byte	102
	.byte	124
	.byte	96
	.byte	96
	.byte	-16
	.byte	0
	.byte	120
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-36
	.byte	120
	.byte	28
	.byte	0
	.byte	-4
	.byte	102
	.byte	102
	.byte	124
	.byte	108
	.byte	102
	.byte	-26
	.byte	0
	.byte	120
	.byte	-52
	.byte	-32
	.byte	112
	.byte	28
	.byte	-52
	.byte	120
	.byte	0
	.byte	-4
	.byte	-76
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	120
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-4
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	120
	.byte	48
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-42
	.byte	-2
	.byte	-18
	.byte	-58
	.byte	0
	.byte	-58
	.byte	-58
	.byte	108
	.byte	56
	.byte	56
	.byte	108
	.byte	-58
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	120
	.byte	48
	.byte	48
	.byte	120
	.byte	0
	.byte	-2
	.byte	-58
	.byte	-116
	.byte	24
	.byte	50
	.byte	102
	.byte	-2
	.byte	0
	.byte	120
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	120
	.byte	0
	.byte	-64
	.byte	96
	.byte	48
	.byte	24
	.byte	12
	.byte	6
	.byte	2
	.byte	0
	.byte	120
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	120
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	48
	.byte	48
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	120
	.byte	12
	.byte	124
	.byte	-52
	.byte	118
	.byte	0
	.byte	-32
	.byte	96
	.byte	96
	.byte	124
	.byte	102
	.byte	102
	.byte	-36
	.byte	0
	.byte	0
	.byte	0
	.byte	120
	.byte	-52
	.byte	-64
	.byte	-52
	.byte	120
	.byte	0
	.byte	28
	.byte	12
	.byte	12
	.byte	124
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	120
	.byte	-52
	.byte	-4
	.byte	-64
	.byte	120
	.byte	0
	.byte	56
	.byte	108
	.byte	96
	.byte	-16
	.byte	96
	.byte	96
	.byte	-16
	.byte	0
	.byte	0
	.byte	0
	.byte	118
	.byte	-52
	.byte	-52
	.byte	124
	.byte	12
	.byte	-8
	.byte	-32
	.byte	96
	.byte	108
	.byte	118
	.byte	102
	.byte	102
	.byte	-26
	.byte	0
	.byte	48
	.byte	0
	.byte	112
	.byte	48
	.byte	48
	.byte	48
	.byte	120
	.byte	0
	.byte	12
	.byte	0
	.byte	12
	.byte	12
	.byte	12
	.byte	-52
	.byte	-52
	.byte	120
	.byte	-32
	.byte	96
	.byte	102
	.byte	108
	.byte	120
	.byte	108
	.byte	-26
	.byte	0
	.byte	112
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	-52
	.byte	-2
	.byte	-2
	.byte	-42
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	-8
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	0
	.byte	0
	.byte	0
	.byte	120
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	-36
	.byte	102
	.byte	102
	.byte	124
	.byte	96
	.byte	-16
	.byte	0
	.byte	0
	.byte	118
	.byte	-52
	.byte	-52
	.byte	124
	.byte	12
	.byte	30
	.byte	0
	.byte	0
	.byte	-36
	.byte	118
	.byte	102
	.byte	96
	.byte	-16
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-64
	.byte	120
	.byte	12
	.byte	-8
	.byte	0
	.byte	16
	.byte	48
	.byte	124
	.byte	48
	.byte	48
	.byte	52
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	120
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-42
	.byte	-2
	.byte	-2
	.byte	108
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	108
	.byte	56
	.byte	108
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	124
	.byte	12
	.byte	-8
	.byte	0
	.byte	0
	.byte	-4
	.byte	-104
	.byte	48
	.byte	100
	.byte	-4
	.byte	0
	.byte	28
	.byte	48
	.byte	48
	.byte	-32
	.byte	48
	.byte	48
	.byte	28
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	-32
	.byte	48
	.byte	48
	.byte	28
	.byte	48
	.byte	48
	.byte	-32
	.byte	0
	.byte	118
	.byte	-36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	-58
	.byte	-58
	.byte	-2
	.byte	0
.globl Drives
	.section	.data16.src/block.c.16,"aw",@progbits
	.align 4
	.type	Drives, @object
	.size	Drives, 196
Drives:
	.zero	196
.globl cdemu_drive_gf
	.section	.data16.src/cdrom.c.20,"aw",@progbits
	.align 4
	.type	cdemu_drive_gf, @object
	.size	cdemu_drive_gf, 4
cdemu_drive_gf:
	.zero	4
.globl RamSize
	.section	.data16.src/misc.c.14,"aw",@progbits
	.align 4
	.type	RamSize, @object
	.size	RamSize, 4
RamSize:
	.zero	4
.globl CountCPUs
	.section	.data16.src/smp.c.35,"aw",@progbits
	.align 4
	.type	CountCPUs, @object
	.size	CountCPUs, 4
CountCPUs:
	.zero	4
.globl MaxCountCPUs
	.section	.data16.src/smp.c.36,"aw",@progbits
	.align 4
	.type	MaxCountCPUs, @object
	.size	MaxCountCPUs, 4
MaxCountCPUs:
	.zero	4
	.weak	ZoneLow
	.section	.discard.var32flat.src/pmm.c.47,"aw",@progbits
	.align 4
	.type	ZoneLow, @object
	.size	ZoneLow, -1
ZoneLow:
	.zero	4
	.weak	ZoneHigh
	.section	.discard.var32flat.src/pmm.c.48,"aw",@progbits
	.align 4
	.type	ZoneHigh, @object
	.size	ZoneHigh, -1
ZoneHigh:
	.zero	4
	.weak	ZoneFSeg
	.section	.discard.var32flat.src/pmm.c.49,"aw",@progbits
	.align 4
	.type	ZoneFSeg, @object
	.size	ZoneFSeg, -1
ZoneFSeg:
	.zero	4
	.weak	ZoneTmpLow
	.section	.discard.var32flat.src/pmm.c.50,"aw",@progbits
	.align 4
	.type	ZoneTmpLow, @object
	.size	ZoneTmpLow, -1
ZoneTmpLow:
	.zero	4
	.weak	ZoneTmpHigh
	.section	.discard.var32flat.src/pmm.c.51,"aw",@progbits
	.align 4
	.type	ZoneTmpHigh, @object
	.size	ZoneTmpHigh, -1
ZoneTmpHigh:
	.zero	4
.globl BiosChecksum
	.section	.fixedaddr.0xffff,"aw",@progbits
	.type	BiosChecksum, @object
	.size	BiosChecksum, 1
BiosChecksum:
	.zero	1
.globl BiosTableSpace
	.section	.data16.src/misc.c.18,"aw",@progbits
	.align 16
	.type	BiosTableSpace, @object
	.size	BiosTableSpace, 2048
BiosTableSpace:
	.zero	2048
.globl dummy_IDT
	.section	.data16.src/misc.c.139,"aw",@progbits
	.type	dummy_IDT, @object
	.size	dummy_IDT, 1
dummy_IDT:
	.zero	1
.globl InitVectors
	.section	.fixedaddr.0xfef3,"aw",@progbits
	.type	InitVectors, @object
	.size	InitVectors, 13
InitVectors:
	.zero	13
.globl VideoParams
	.section	.fixedaddr.0xf0a4,"aw",@progbits
	.type	VideoParams, @object
	.size	VideoParams, 88
VideoParams:
	.zero	88
.globl e820_list
	.section	.data16.src/system.c.294,"aw",@progbits
	.align 4
	.type	e820_list, @object
	.size	e820_list, 640
e820_list:
	.zero	640
.globl e820_count
	.section	.data16.src/system.c.295,"aw",@progbits
	.align 4
	.type	e820_count, @object
	.size	e820_count, 4
e820_count:
	.zero	4
.globl CanPreempt
	.section	.data16.src/stacks.c.193,"aw",@progbits
	.align 4
	.type	CanPreempt, @object
	.size	CanPreempt, 4
CanPreempt:
	.zero	4
.globl PirOffset
	.section	.data16.src/pirtable.c.12,"aw",@progbits
	.align 2
	.type	PirOffset, @object
	.size	PirOffset, 2
PirOffset:
	.zero	2
.globl BaudTable
	.section	.fixedaddr.0xe729,"aw",@progbits
	.type	BaudTable, @object
	.size	BaudTable, 16
BaudTable:
	.zero	16
.globl cpu_khz
	.section	.data16.src/clock.c.59,"aw",@progbits
	.align 4
	.type	cpu_khz, @object
	.size	cpu_khz, 4
cpu_khz:
	.zero	4
.globl cdemu_buf_fl
	.section	.data16.src/cdrom.c.21,"aw",@progbits
	.align 4
	.type	cdemu_buf_fl, @object
	.size	cdemu_buf_fl, 4
cdemu_buf_fl:
	.zero	4
.globl smp_mtrr
	.section	.data16.src/smp.c.20,"aw",@progbits
	.align 4
	.type	smp_mtrr, @object
	.size	smp_mtrr, 192
smp_mtrr:
	.zero	192
.globl smp_mtrr_count
	.section	.data16.src/smp.c.21,"aw",@progbits
	.align 4
	.type	smp_mtrr_count, @object
	.size	smp_mtrr_count, 4
smp_mtrr_count:
	.zero	4
.globl CBmainboard
	.section	.data16.src/vgahooks.c.18,"aw",@progbits
	.align 4
	.type	CBmainboard, @object
	.size	CBmainboard, 4
CBmainboard:
	.zero	4
.globl keyboard_pipe
	.section	.data16.src/usb-hid.c.14,"aw",@progbits
	.align 4
	.type	keyboard_pipe, @object
	.size	keyboard_pipe, 4
keyboard_pipe:
	.zero	4
.globl mouse_pipe
	.section	.data16.src/usb-hid.c.15,"aw",@progbits
	.align 4
	.type	mouse_pipe, @object
	.size	mouse_pipe, 4
mouse_pipe:
	.zero	4
.globl OldFDPT
	.section	.fixedaddr.0xe401,"aw",@progbits
	.type	OldFDPT, @object
	.size	OldFDPT, 16
OldFDPT:
	.zero	16
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST4:
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB83
	.long	.LCFI0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0
	.long	.LCFI1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1
	.long	.LCFI2
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI2
	.long	.LFE83
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL8
	.long	.LVL12
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB147
	.long	.LCFI3
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3
	.long	.LCFI4
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4
	.long	.LCFI5
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI5
	.long	.LCFI6
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI6
	.long	.LCFI7
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI7
	.long	.LCFI8
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI8
	.long	.LFE147
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL13
	.long	.LVL17
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL13
	.long	.LVL21
	.value	0x1
	.byte	0x52
	.long	.LVL22
	.long	.LVL26
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL13
	.long	.LVL15
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL13
	.long	.LVL16
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL16
	.long	.LVL27
	.value	0x1
	.byte	0x53
	.long	.LVL27
	.long	.LFE147
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL14
	.long	.LVL28
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL16
	.long	.LVL29
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL19
	.long	.LVL22
	.value	0x1
	.byte	0x55
	.long	.LVL24
	.long	.LVL30
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB148
	.long	.LCFI9
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9
	.long	.LCFI10
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10
	.long	.LCFI11
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI11
	.long	.LFE148
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL31
	.long	.LVL36
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LFE148
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL33
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL34
	.long	.LVL42
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL35
	.long	.LVL41
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL36
	.long	.LVL38
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB158
	.long	.LCFI12
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI12
	.long	.LCFI13
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI13
	.long	.LFE158
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL43
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL45
	.long	.LVL46
	.value	0x1
	.byte	0x53
	.long	.LVL47
	.long	.LVL53
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL44
	.long	.LVL50
	.value	0x1
	.byte	0x51
	.long	.LVL51
	.long	.LFE158
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL45
	.long	.LVL54
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL48
	.long	.LVL50
	.value	0x1
	.byte	0x52
	.long	.LVL51
	.long	.LFE158
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB159
	.long	.LCFI14
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI14
	.long	.LCFI15
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI15
	.long	.LCFI16
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI16
	.long	.LFE159
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL55
	.long	.LVL56
	.value	0x1
	.byte	0x50
	.long	.LVL56
	.long	.LVL60
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL58
	.long	.LVL61
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB601
	.long	.LCFI17
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI17
	.long	.LCFI18
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI18
	.long	.LCFI19
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI19
	.long	.LCFI20
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI20
	.long	.LCFI21
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI21
	.long	.LCFI22
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI22
	.long	.LFE601
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL62
	.long	.LVL64
	.value	0x1
	.byte	0x50
	.long	.LVL64
	.long	.LVL79
	.value	0x1
	.byte	0x53
	.long	.LVL81
	.long	.LVL96
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL62
	.long	.LVL66
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL78
	.long	.LVL82
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL63
	.long	.LVL97
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL69
	.long	.LVL99
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL64
	.long	.LVL67
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LVL68
	.long	.LVL98
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LVL71
	.long	.LVL72
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LVL76
	.long	.LVL79
	.value	0x1
	.byte	0x50
	.long	.LVL81
	.long	.LVL84
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LVL74
	.long	.LVL75
	.value	0x1
	.byte	0x50
	.long	.LVL77
	.long	.LVL79
	.value	0x1
	.byte	0x50
	.long	.LVL81
	.long	.LVL84
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LVL73
	.long	.LVL74
	.value	0x1
	.byte	0x50
	.long	.LVL75
	.long	.LVL76
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LVL86
	.long	.LVL87
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LVL84
	.long	.LVL85
	.value	0x1
	.byte	0x50
	.long	.LVL88
	.long	.LVL89
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LVL83
	.long	.LVL84
	.value	0x1
	.byte	0x50
	.long	.LVL85
	.long	.LVL86
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LVL90
	.long	.LVL91
	.value	0x1
	.byte	0x51
	.long	.LVL92
	.long	.LVL95
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LVL93
	.long	.LVL94
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB602
	.long	.LCFI23
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23
	.long	.LCFI24
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24
	.long	.LCFI25
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI25
	.long	.LCFI26
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI26
	.long	.LCFI27
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI27
	.long	.LCFI28
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI28
	.long	.LFE602
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LVL100
	.long	.LVL106
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LVL100
	.long	.LVL104
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LVL100
	.long	.LVL101
	.value	0x1
	.byte	0x51
	.long	.LVL101
	.long	.LVL119
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LVL100
	.long	.LVL110
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL110
	.long	.LVL111
	.value	0x1
	.byte	0x52
	.long	.LVL118
	.long	.LFE602
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LVL102
	.long	.LVL107
	.value	0x1
	.byte	0x51
	.long	.LVL108
	.long	.LVL111
	.value	0x1
	.byte	0x51
	.long	.LVL118
	.long	.LFE602
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LVL103
	.long	.LVL104
	.value	0x1
	.byte	0x56
	.long	.LVL104
	.long	.LVL105
	.value	0x1
	.byte	0x52
	.long	.LVL109
	.long	.LVL116
	.value	0x1
	.byte	0x56
	.long	.LVL118
	.long	.LVL120
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LVL112
	.long	.LVL113
	.value	0x1
	.byte	0x52
	.long	.LVL118
	.long	.LFE602
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LVL114
	.long	.LVL115
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LVL117
	.long	.LVL118
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB606
	.long	.LCFI29
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI29
	.long	.LCFI30
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI30
	.long	.LCFI31
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI31
	.long	.LCFI32
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI32
	.long	.LFE606
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LVL121
	.long	.LVL122
	.value	0x1
	.byte	0x50
	.long	.LVL122
	.long	.LVL140
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LVL124
	.long	.LVL127
	.value	0x1
	.byte	0x50
	.long	.LVL138
	.long	.LVL139
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LVL122
	.long	.LVL127
	.value	0x1
	.byte	0x50
	.long	.LVL138
	.long	.LVL139
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LVL123
	.long	.LVL129
	.value	0x1
	.byte	0x51
	.long	.LVL138
	.long	.LFE606
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LVL126
	.long	.LVL128
	.value	0x1
	.byte	0x52
	.long	.LVL138
	.long	.LFE606
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LVL130
	.long	.LVL132
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LVL133
	.long	.LVL134
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LVL135
	.long	.LVL136
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB607
	.long	.LCFI33
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI33
	.long	.LCFI34
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI34
	.long	.LCFI35
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI35
	.long	.LFE607
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LVL141
	.long	.LVL142
	.value	0x1
	.byte	0x50
	.long	.LVL142
	.long	.LVL150
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LVL141
	.long	.LVL144
	.value	0x1
	.byte	0x52
	.long	.LVL144
	.long	.LVL151
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LVL141
	.long	.LVL148
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LVL143
	.long	.LVL147
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LVL145
	.long	.LVL146
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LVL148
	.long	.LVL149
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB613
	.long	.LCFI36
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI36
	.long	.LCFI37
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI37
	.long	.LCFI38
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI38
	.long	.LCFI39
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI39
	.long	.LCFI40
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI40
	.long	.LCFI41
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI41
	.long	.LCFI42
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI42
	.long	.LCFI43
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI43
	.long	.LCFI44
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI44
	.long	.LCFI45
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI45
	.long	.LCFI46
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI46
	.long	.LCFI47
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI47
	.long	.LCFI48
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI48
	.long	.LCFI49
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI49
	.long	.LCFI50
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI50
	.long	.LCFI51
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI51
	.long	.LFE613
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LVL152
	.long	.LVL153
	.value	0x1
	.byte	0x50
	.long	.LVL153
	.long	.LVL207
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LVL154
	.long	.LVL155
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LVL164
	.long	.LVL171
	.value	0x2
	.byte	0x91
	.sleb128 -19
	.long	.LVL185
	.long	.LVL186
	.value	0x2
	.byte	0x91
	.sleb128 -19
	.long	.LVL193
	.long	.LVL194
	.value	0x2
	.byte	0x91
	.sleb128 -19
	.long	.LVL205
	.long	.LFE613
	.value	0x2
	.byte	0x91
	.sleb128 -19
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LVL165
	.long	.LVL171
	.value	0x2
	.byte	0x91
	.sleb128 -18
	.long	.LVL185
	.long	.LVL186
	.value	0x2
	.byte	0x91
	.sleb128 -18
	.long	.LVL193
	.long	.LVL194
	.value	0x2
	.byte	0x91
	.sleb128 -18
	.long	.LVL205
	.long	.LFE613
	.value	0x2
	.byte	0x91
	.sleb128 -18
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LVL162
	.long	.LVL171
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	.LVL185
	.long	.LVL186
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	.LVL193
	.long	.LVL194
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	.LVL205
	.long	.LFE613
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LVL163
	.long	.LVL167
	.value	0x1
	.byte	0x57
	.long	.LVL169
	.long	.LVL171
	.value	0x1
	.byte	0x57
	.long	.LVL193
	.long	.LVL194
	.value	0x1
	.byte	0x57
	.long	.LVL205
	.long	.LVL208
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LVL161
	.long	.LVL167
	.value	0x1
	.byte	0x57
	.long	.LVL169
	.long	.LVL171
	.value	0x1
	.byte	0x57
	.long	.LVL193
	.long	.LVL194
	.value	0x1
	.byte	0x57
	.long	.LVL205
	.long	.LVL208
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LVL178
	.long	.LVL186
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	.LVL193
	.long	.LVL194
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	.LVL205
	.long	.LFE613
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LVL179
	.long	.LVL186
	.value	0x2
	.byte	0x91
	.sleb128 -18
	.long	.LVL193
	.long	.LVL194
	.value	0x2
	.byte	0x91
	.sleb128 -18
	.long	.LVL205
	.long	.LFE613
	.value	0x2
	.byte	0x91
	.sleb128 -18
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LVL176
	.long	.LVL186
	.value	0x2
	.byte	0x91
	.sleb128 -19
	.long	.LVL193
	.long	.LVL194
	.value	0x2
	.byte	0x91
	.sleb128 -19
	.long	.LVL205
	.long	.LFE613
	.value	0x2
	.byte	0x91
	.sleb128 -19
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LVL177
	.long	.LVL183
	.value	0x1
	.byte	0x57
	.long	.LVL193
	.long	.LVL194
	.value	0x1
	.byte	0x57
	.long	.LVL205
	.long	.LVL208
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LVL175
	.long	.LVL183
	.value	0x1
	.byte	0x57
	.long	.LVL193
	.long	.LVL194
	.value	0x1
	.byte	0x57
	.long	.LVL205
	.long	.LVL208
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LVL156
	.long	.LVL157
	.value	0x1
	.byte	0x53
	.long	.LVL158
	.long	.LVL159
	.value	0x1
	.byte	0x53
	.long	.LVL159
	.long	.LVL160
	.value	0x1
	.byte	0x50
	.long	.LVL160
	.long	.LVL166
	.value	0x1
	.byte	0x53
	.long	.LVL166
	.long	.LVL168
	.value	0x1
	.byte	0x50
	.long	.LVL168
	.long	.LVL169
	.value	0x1
	.byte	0x53
	.long	.LVL169
	.long	.LVL170
	.value	0x1
	.byte	0x50
	.long	.LVL170
	.long	.LVL171
	.value	0x1
	.byte	0x53
	.long	.LVL172
	.long	.LVL173
	.value	0x1
	.byte	0x53
	.long	.LVL173
	.long	.LVL174
	.value	0x1
	.byte	0x50
	.long	.LVL174
	.long	.LVL180
	.value	0x1
	.byte	0x53
	.long	.LVL180
	.long	.LVL181
	.value	0x1
	.byte	0x50
	.long	.LVL181
	.long	.LVL182
	.value	0x1
	.byte	0x53
	.long	.LVL182
	.long	.LVL184
	.value	0x1
	.byte	0x50
	.long	.LVL184
	.long	.LVL186
	.value	0x1
	.byte	0x53
	.long	.LVL187
	.long	.LVL188
	.value	0x1
	.byte	0x53
	.long	.LVL188
	.long	.LVL189
	.value	0x1
	.byte	0x50
	.long	.LVL189
	.long	.LVL194
	.value	0x1
	.byte	0x53
	.long	.LVL195
	.long	.LVL196
	.value	0x1
	.byte	0x53
	.long	.LVL196
	.long	.LVL197
	.value	0x1
	.byte	0x50
	.long	.LVL197
	.long	.LVL201
	.value	0x1
	.byte	0x53
	.long	.LVL201
	.long	.LVL202
	.value	0x1
	.byte	0x50
	.long	.LVL202
	.long	.LVL204
	.value	0x1
	.byte	0x53
	.long	.LVL205
	.long	.LVL206
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LVL192
	.long	.LVL193
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	.LVL205
	.long	.LFE613
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LVL190
	.long	.LVL191
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LVL197
	.long	.LVL199
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LVL200
	.long	.LVL203
	.value	0x1
	.byte	0x57
	.long	.LVL205
	.long	.LVL208
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LVL198
	.long	.LVL203
	.value	0x1
	.byte	0x57
	.long	.LVL205
	.long	.LVL208
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LFB614
	.long	.LCFI52
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI52
	.long	.LFE614
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LVL209
	.long	.LVL210
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LVL211
	.long	.LVL212
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LVL213
	.long	.LVL214
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LVL214
	.long	.LVL215
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LVL216
	.long	.LVL218
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LFB1161
	.long	.LCFI53
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI53
	.long	.LCFI54
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI54
	.long	.LCFI55
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI55
	.long	.LCFI56
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI56
	.long	.LFE1161
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LVL219
	.long	.LVL220
	.value	0x1
	.byte	0x50
	.long	.LVL220
	.long	.LVL221
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LVL223
	.long	.LVL225
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LFB828
	.long	.LCFI57
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI57
	.long	.LCFI58
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI58
	.long	.LCFI59
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI59
	.long	.LFE828
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LVL226
	.long	.LVL240
	.value	0x1
	.byte	0x50
	.long	.LVL242
	.long	.LFE828
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LVL227
	.long	.LVL242
	.value	0x1
	.byte	0x56
	.long	.LVL242
	.long	.LVL244
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LVL232
	.long	.LVL233
	.value	0x1
	.byte	0x52
	.long	.LVL242
	.long	.LFE828
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LVL239
	.long	.LVL243
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LVL228
	.long	.LVL230
	.value	0x1
	.byte	0x52
	.long	.LVL232
	.long	.LFE828
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LVL229
	.long	.LVL231
	.value	0x1
	.byte	0x51
	.long	.LVL242
	.long	.LFE828
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LVL234
	.long	.LVL235
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LVL236
	.long	.LVL237
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LVL238
	.long	.LVL239
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LVL241
	.long	.LVL242
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LFB899
	.long	.LCFI60
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI60
	.long	.LCFI61
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI61
	.long	.LCFI62
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI62
	.long	.LCFI63
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI63
	.long	.LCFI64
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI64
	.long	.LCFI65
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI65
	.long	.LCFI66
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI66
	.long	.LFE899
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LVL245
	.long	.LVL254
	.value	0x1
	.byte	0x50
	.long	.LVL261
	.long	.LFE899
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LVL245
	.long	.LVL255
	.value	0x1
	.byte	0x52
	.long	.LVL261
	.long	.LFE899
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LVL245
	.long	.LVL249
	.value	0x1
	.byte	0x51
	.long	.LVL250
	.long	.LVL251
	.value	0x1
	.byte	0x51
	.long	.LVL261
	.long	.LVL262
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LVL257
	.long	.LVL263
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LVL249
	.long	.LVL250
	.value	0x1
	.byte	0x51
	.long	.LVL251
	.long	.LVL252
	.value	0x1
	.byte	0x51
	.long	.LVL252
	.long	.LVL264
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LVL246
	.long	.LVL247
	.value	0x1
	.byte	0x53
	.long	.LVL261
	.long	.LVL263
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LVL246
	.long	.LVL265
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST124:
	.long	.LVL248
	.long	.LVL253
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST125:
	.long	.LVL256
	.long	.LVL260
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST126:
	.long	.LFB986
	.long	.LCFI67
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI67
	.long	.LCFI68
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI68
	.long	.LCFI69
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI69
	.long	.LCFI70
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI70
	.long	.LCFI71
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI71
	.long	.LCFI72
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI72
	.long	.LFE986
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST127:
	.long	.LVL266
	.long	.LVL267
	.value	0x1
	.byte	0x50
	.long	.LVL267
	.long	.LVL270
	.value	0x1
	.byte	0x51
	.long	.LVL273
	.long	.LVL274
	.value	0x1
	.byte	0x51
	.long	.LVL275
	.long	.LVL276
	.value	0x1
	.byte	0x51
	.long	.LVL280
	.long	.LFE986
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST128:
	.long	.LVL266
	.long	.LVL267
	.value	0x1
	.byte	0x52
	.long	.LVL267
	.long	.LVL282
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST129:
	.long	.LVL268
	.long	.LVL269
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST130:
	.long	.LVL271
	.long	.LVL272
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST131:
	.long	.LVL277
	.long	.LVL278
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST132:
	.long	.LVL279
	.long	.LVL281
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST133:
	.long	.LFB1069
	.long	.LCFI73
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI73
	.long	.LCFI74
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI74
	.long	.LCFI75
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI75
	.long	.LCFI76
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI76
	.long	.LCFI77
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI77
	.long	.LCFI78
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI78
	.long	.LFE1069
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST134:
	.long	.LVL283
	.long	.LVL284
	.value	0x1
	.byte	0x50
	.long	.LVL284
	.long	.LVL330
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST135:
	.long	.LVL285
	.long	.LVL289
	.value	0x1
	.byte	0x56
	.long	.LVL311
	.long	.LVL313
	.value	0x1
	.byte	0x56
	.long	.LVL327
	.long	.LVL331
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST136:
	.long	.LVL288
	.long	.LVL289
	.value	0x1
	.byte	0x50
	.long	.LVL327
	.long	.LVL328
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST137:
	.long	.LVL286
	.long	.LVL287
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST138:
	.long	.LVL290
	.long	.LVL299
	.value	0x1
	.byte	0x51
	.long	.LVL311
	.long	.LVL312
	.value	0x1
	.byte	0x51
	.long	.LVL313
	.long	.LVL319
	.value	0x1
	.byte	0x51
	.long	.LVL329
	.long	.LFE1069
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST139:
	.long	.LVL291
	.long	.LVL292
	.value	0x1
	.byte	0x56
	.long	.LVL293
	.long	.LVL294
	.value	0x1
	.byte	0x56
	.long	.LVL297
	.long	.LVL298
	.value	0x1
	.byte	0x56
	.long	.LVL329
	.long	.LVL331
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST140:
	.long	.LVL295
	.long	.LVL296
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST141:
	.long	.LVL314
	.long	.LVL317
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST142:
	.long	.LVL315
	.long	.LVL318
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST143:
	.long	.LVL300
	.long	.LVL309
	.value	0x1
	.byte	0x56
	.long	.LVL311
	.long	.LVL312
	.value	0x1
	.byte	0x56
	.long	.LVL319
	.long	.LVL325
	.value	0x1
	.byte	0x56
	.long	.LVL329
	.long	.LVL331
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST144:
	.long	.LVL301
	.long	.LVL302
	.value	0x1
	.byte	0x51
	.long	.LVL307
	.long	.LFE1069
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST145:
	.long	.LVL305
	.long	.LVL306
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST146:
	.long	.LVL303
	.long	.LVL304
	.value	0x1
	.byte	0x50
	.long	.LVL307
	.long	.LVL308
	.value	0x1
	.byte	0x50
	.long	.LVL329
	.long	.LFE1069
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST147:
	.long	.LVL320
	.long	.LVL322
	.value	0x1
	.byte	0x51
	.long	.LVL322
	.long	.LVL323
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST148:
	.long	.LVL321
	.long	.LVL324
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST149:
	.long	.LVL310
	.long	.LVL312
	.value	0x1
	.byte	0x51
	.long	.LVL325
	.long	.LFE1069
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST150:
	.long	.LVL326
	.long	.LVL328
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST151:
	.long	.LFB1077
	.long	.LCFI79
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI79
	.long	.LCFI80
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI80
	.long	.LCFI81
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI81
	.long	.LCFI82
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI82
	.long	.LCFI83
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI83
	.long	.LCFI84
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI84
	.long	.LCFI85
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI85
	.long	.LFE1077
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST152:
	.long	.LVL332
	.long	.LVL333
	.value	0x1
	.byte	0x50
	.long	.LVL333
	.long	.LVL362
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST153:
	.long	.LVL334
	.long	.LVL335
	.value	0x1
	.byte	0x57
	.long	.LVL343
	.long	.LVL352
	.value	0x1
	.byte	0x57
	.long	.LVL360
	.long	.LVL364
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST154:
	.long	.LVL350
	.long	.LVL351
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST155:
	.long	.LVL335
	.long	.LVL336
	.value	0x1
	.byte	0x56
	.long	.LVL336
	.long	.LVL337
	.value	0x1
	.byte	0x50
	.long	.LVL337
	.long	.LVL339
	.value	0x1
	.byte	0x56
	.long	.LVL358
	.long	.LVL359
	.value	0x1
	.byte	0x50
	.long	.LVL359
	.long	.LVL363
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST156:
	.long	.LVL337
	.long	.LVL338
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST157:
	.long	.LVL345
	.long	.LVL347
	.value	0x1
	.byte	0x51
	.long	.LVL347
	.long	.LVL348
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST158:
	.long	.LVL346
	.long	.LVL349
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST159:
	.long	.LVL340
	.long	.LVL341
	.value	0x1
	.byte	0x56
	.long	.LVL343
	.long	.LVL344
	.value	0x1
	.byte	0x56
	.long	.LVL353
	.long	.LVL363
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST160:
	.long	.LVL354
	.long	.LVL355
	.value	0x1
	.byte	0x57
	.long	.LVL356
	.long	.LVL364
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST161:
	.long	.LVL342
	.long	.LVL344
	.value	0x1
	.byte	0x50
	.long	.LVL357
	.long	.LVL358
	.value	0x1
	.byte	0x50
	.long	.LVL360
	.long	.LVL361
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST162:
	.long	.LFB1168
	.long	.LCFI86
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI86
	.long	.LCFI87
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI87
	.long	.LFE1168
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	0x0
	.long	0x0
.LLST163:
	.long	.LVL365
	.long	.LVL367
	.value	0x1
	.byte	0x50
	.long	.LVL370
	.long	.LVL371
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST164:
	.long	.LVL368
	.long	.LVL369
	.value	0x1
	.byte	0x50
	.long	.LVL370
	.long	.LVL371
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST165:
	.long	.LFB1196
	.long	.LCFI88
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI88
	.long	.LCFI89
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI89
	.long	.LCFI90
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI90
	.long	.LCFI91
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI91
	.long	.LFE1196
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST166:
	.long	.LVL372
	.long	.LVL376
	.value	0x1
	.byte	0x52
	.long	.LVL376
	.long	.LVL378
	.value	0x1
	.byte	0x52
	.long	.LVL395
	.long	.LFE1196
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST167:
	.long	.LVL373
	.long	.LVL375
	.value	0x1
	.byte	0x50
	.long	.LVL376
	.long	.LVL377
	.value	0x1
	.byte	0x50
	.long	.LVL395
	.long	.LVL396
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST168:
	.long	.LVL375
	.long	.LVL377
	.value	0x1
	.byte	0x50
	.long	.LVL395
	.long	.LVL396
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST169:
	.long	.LVL376
	.long	.LVL380
	.value	0x1
	.byte	0x51
	.long	.LVL393
	.long	.LFE1196
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST170:
	.long	.LVL378
	.long	.LVL379
	.value	0x1
	.byte	0x52
	.long	.LVL395
	.long	.LFE1196
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST171:
	.long	.LVL379
	.long	.LVL383
	.value	0x1
	.byte	0x52
	.long	.LVL393
	.long	.LVL394
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST172:
	.long	.LVL382
	.long	.LVL393
	.value	0x1
	.byte	0x55
	.long	.LVL395
	.long	.LVL397
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST173:
	.long	.LVL381
	.long	.LVL388
	.value	0x1
	.byte	0x51
	.long	.LVL395
	.long	.LFE1196
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST174:
	.long	.LVL380
	.long	.LVL381
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST175:
	.long	.LVL384
	.long	.LVL385
	.value	0x1
	.byte	0x52
	.long	.LVL395
	.long	.LFE1196
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST176:
	.long	.LVL386
	.long	.LVL390
	.value	0x1
	.byte	0x52
	.long	.LVL395
	.long	.LFE1196
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST177:
	.long	.LVL391
	.long	.LVL392
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST178:
	.long	.LVL387
	.long	.LVL389
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST179:
	.long	.LVL388
	.long	.LVL391
	.value	0x1
	.byte	0x51
	.long	.LVL395
	.long	.LFE1196
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST180:
	.long	.LFB1971
	.long	.LCFI92
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI92
	.long	.LCFI93
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI93
	.long	.LCFI94
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI94
	.long	.LCFI95
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI95
	.long	.LCFI96
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI96
	.long	.LCFI97
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI97
	.long	.LFE1971
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST181:
	.long	.LVL398
	.long	.LVL399
	.value	0x1
	.byte	0x50
	.long	.LVL399
	.long	.LVL452
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST182:
	.long	.LVL401
	.long	.LVL402
	.value	0x1
	.byte	0x50
	.long	.LVL403
	.long	.LVL404
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST183:
	.long	.LVL400
	.long	.LVL405
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL447
	.long	.LVL448
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL450
	.long	.LFE1971
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0x0
	.long	0x0
.LLST184:
	.long	.LVL406
	.long	.LVL416
	.value	0x1
	.byte	0x56
	.long	.LVL422
	.long	.LVL423
	.value	0x1
	.byte	0x56
	.long	.LVL426
	.long	.LVL427
	.value	0x1
	.byte	0x56
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x56
	.long	.LVL449
	.long	.LVL453
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST185:
	.long	.LVL407
	.long	.LVL416
	.value	0x1
	.byte	0x57
	.long	.LVL422
	.long	.LVL423
	.value	0x1
	.byte	0x57
	.long	.LVL426
	.long	.LVL427
	.value	0x1
	.byte	0x57
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x57
	.long	.LVL449
	.long	.LVL454
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST186:
	.long	.LVL409
	.long	.LVL410
	.value	0x1
	.byte	0x50
	.long	.LVL414
	.long	.LVL415
	.value	0x1
	.byte	0x51
	.long	.LVL415
	.long	.LVL416
	.value	0x1
	.byte	0x50
	.long	.LVL426
	.long	.LVL427
	.value	0x1
	.byte	0x50
	.long	.LVL449
	.long	.LVL450
	.value	0x1
	.byte	0x50
	.long	.LVL450
	.long	.LFE1971
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST187:
	.long	.LVL408
	.long	.LVL416
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL422
	.long	.LVL423
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL426
	.long	.LVL427
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL447
	.long	.LVL448
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL449
	.long	.LFE1971
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0x0
	.long	0x0
.LLST188:
	.long	.LVL411
	.long	.LVL412
	.value	0x1
	.byte	0x50
	.long	.LVL422
	.long	.LVL423
	.value	0x1
	.byte	0x50
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x50
	.long	.LVL450
	.long	.LFE1971
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST189:
	.long	.LVL417
	.long	.LVL427
	.value	0x1
	.byte	0x56
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x56
	.long	.LVL449
	.long	.LVL453
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST190:
	.long	.LVL418
	.long	.LVL427
	.value	0x1
	.byte	0x55
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x55
	.long	.LVL449
	.long	.LVL455
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST191:
	.long	.LVL420
	.long	.LVL421
	.value	0x1
	.byte	0x50
	.long	.LVL425
	.long	.LVL426
	.value	0x1
	.byte	0x51
	.long	.LVL426
	.long	.LVL427
	.value	0x1
	.byte	0x50
	.long	.LVL449
	.long	.LVL450
	.value	0x1
	.byte	0x50
	.long	.LVL450
	.long	.LFE1971
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST192:
	.long	.LVL419
	.long	.LVL427
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL447
	.long	.LVL448
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL449
	.long	.LFE1971
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0x0
	.long	0x0
.LLST193:
	.long	.LVL428
	.long	.LVL429
	.value	0x1
	.byte	0x50
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x50
	.long	.LVL450
	.long	.LFE1971
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST194:
	.long	.LVL430
	.long	.LVL431
	.value	0x1
	.byte	0x50
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x50
	.long	.LVL450
	.long	.LFE1971
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST195:
	.long	.LVL432
	.long	.LVL433
	.value	0x1
	.byte	0x50
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x50
	.long	.LVL450
	.long	.LFE1971
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST196:
	.long	.LVL435
	.long	.LVL451
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST197:
	.long	.LVL436
	.long	.LVL441
	.value	0x1
	.byte	0x50
	.long	.LVL449
	.long	.LFE1971
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST198:
	.long	.LVL439
	.long	.LVL445
	.value	0x1
	.byte	0x51
	.long	.LVL449
	.long	.LFE1971
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST199:
	.long	.LVL434
	.long	.LVL435
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST200:
	.long	.LVL437
	.long	.LVL440
	.value	0x1
	.byte	0x57
	.long	.LVL449
	.long	.LVL454
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST201:
	.long	.LVL438
	.long	.LVL439
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST202:
	.long	.LVL440
	.long	.LVL445
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST203:
	.long	.LVL441
	.long	.LVL445
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST204:
	.long	.LVL442
	.long	.LVL448
	.value	0x1
	.byte	0x55
	.long	.LVL450
	.long	.LVL455
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST205:
	.long	.LVL445
	.long	.LVL448
	.value	0x1
	.byte	0x51
	.long	.LVL450
	.long	.LFE1971
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST206:
	.long	.LVL445
	.long	.LVL448
	.value	0x1
	.byte	0x56
	.long	.LVL450
	.long	.LVL453
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST207:
	.long	.LVL445
	.long	.LVL448
	.value	0x1
	.byte	0x57
	.long	.LVL450
	.long	.LVL454
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST208:
	.long	.LVL445
	.long	.LVL446
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST209:
	.long	.LVL446
	.long	.LVL448
	.value	0x1
	.byte	0x50
	.long	.LVL450
	.long	.LFE1971
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST210:
	.long	.LFB1185
	.long	.LCFI98
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI98
	.long	.LCFI99
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI99
	.long	.LFE1185
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST211:
	.long	.LVL456
	.long	.LVL457
	.value	0x1
	.byte	0x50
	.long	.LVL457
	.long	.LVL507
	.value	0x1
	.byte	0x53
	.long	.LVL508
	.long	.LVL510
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST212:
	.long	.LVL458
	.long	.LVL459
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST213:
	.long	.LVL459
	.long	.LVL460
	.value	0x1
	.byte	0x52
	.long	.LVL505
	.long	.LVL506
	.value	0x1
	.byte	0x52
	.long	.LVL509
	.long	.LFE1185
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST214:
	.long	.LVL461
	.long	.LVL462
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST215:
	.long	.LVL463
	.long	.LVL464
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST216:
	.long	.LVL465
	.long	.LVL466
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST217:
	.long	.LVL467
	.long	.LVL468
	.value	0x1
	.byte	0x52
	.long	.LVL504
	.long	.LVL506
	.value	0x1
	.byte	0x52
	.long	.LVL509
	.long	.LFE1185
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST218:
	.long	.LVL473
	.long	.LVL477
	.value	0x1
	.byte	0x52
	.long	.LVL491
	.long	.LVL492
	.value	0x1
	.byte	0x52
	.long	.LVL503
	.long	.LVL506
	.value	0x1
	.byte	0x52
	.long	.LVL509
	.long	.LFE1185
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST219:
	.long	.LVL469
	.long	.LVL470
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST220:
	.long	.LVL471
	.long	.LVL472
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST221:
	.long	.LVL478
	.long	.LVL479
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST222:
	.long	.LVL480
	.long	.LVL481
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST223:
	.long	.LVL482
	.long	.LVL483
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST224:
	.long	.LVL484
	.long	.LVL485
	.value	0x1
	.byte	0x50
	.long	.LVL505
	.long	.LVL506
	.value	0x1
	.byte	0x50
	.long	.LVL509
	.long	.LFE1185
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST225:
	.long	.LVL490
	.long	.LVL492
	.value	0x1
	.byte	0x52
	.long	.LVL503
	.long	.LVL506
	.value	0x1
	.byte	0x52
	.long	.LVL509
	.long	.LFE1185
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST226:
	.long	.LVL486
	.long	.LVL487
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST227:
	.long	.LVL488
	.long	.LVL489
	.value	0x1
	.byte	0x50
	.long	.LVL508
	.long	.LFE1185
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST228:
	.long	.LVL493
	.long	.LVL494
	.value	0x1
	.byte	0x56
	.long	.LVL494
	.long	.LVL495
	.value	0x1
	.byte	0x50
	.long	.LVL495
	.long	.LVL500
	.value	0x1
	.byte	0x56
	.long	.LVL505
	.long	.LVL506
	.value	0x1
	.byte	0x56
	.long	.LVL508
	.long	.LVL509
	.value	0x1
	.byte	0x50
	.long	.LVL509
	.long	.LVL511
	.value	0x1
	.byte	0x56
	.long	.LVL511
	.long	.LFE1185
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST229:
	.long	.LVL496
	.long	.LVL497
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST230:
	.long	.LVL498
	.long	.LVL499
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST231:
	.long	.LVL501
	.long	.LVL502
	.value	0x1
	.byte	0x52
	.long	.LVL505
	.long	.LVL506
	.value	0x1
	.byte	0x52
	.long	.LVL509
	.long	.LFE1185
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST233:
	.long	.LVL512
	.long	.LVL513
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST235:
	.long	.LVL514
	.long	.LVL515
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST236:
	.long	.LFB2130
	.long	.LCFI100
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI100
	.long	.LFE2130
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST237:
	.long	.LVL516
	.long	.LVL517
	.value	0x1
	.byte	0x50
	.long	.LVL517
	.long	.LVL520
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST238:
	.long	.LVL518
	.long	.LVL519
	.value	0x1
	.byte	0x50
	.long	.LVL519
	.long	.LFE2130
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST239:
	.long	.LFB2122
	.long	.LCFI101
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI101
	.long	.LCFI102
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI102
	.long	.LCFI103
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI103
	.long	.LCFI104
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI104
	.long	.LCFI105
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI105
	.long	.LFE2122
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	0x0
	.long	0x0
.LLST240:
	.long	.LVL521
	.long	.LVL522
	.value	0x1
	.byte	0x50
	.long	.LVL522
	.long	.LVL525
	.value	0x1
	.byte	0x51
	.long	.LVL537
	.long	.LVL546
	.value	0x1
	.byte	0x51
	.long	.LVL557
	.long	.LVL565
	.value	0x1
	.byte	0x51
	.long	.LVL573
	.long	.LFE2122
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST241:
	.long	.LVL521
	.long	.LVL523
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST242:
	.long	.LVL524
	.long	.LVL526
	.value	0x1
	.byte	0x50
	.long	.LVL537
	.long	.LVL538
	.value	0x1
	.byte	0x50
	.long	.LVL557
	.long	.LVL558
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST243:
	.long	.LVL527
	.long	.LVL536
	.value	0x1
	.byte	0x52
	.long	.LVL573
	.long	.LFE2122
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST244:
	.long	.LVL528
	.long	.LVL532
	.value	0x1
	.byte	0x51
	.long	.LVL573
	.long	.LFE2122
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST245:
	.long	.LVL529
	.long	.LVL533
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST246:
	.long	.LVL530
	.long	.LVL531
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST247:
	.long	.LVL535
	.long	.LVL537
	.value	0x1
	.byte	0x51
	.long	.LVL556
	.long	.LVL557
	.value	0x1
	.byte	0x51
	.long	.LVL574
	.long	.LFE2122
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST248:
	.long	.LVL535
	.long	.LVL537
	.value	0x1
	.byte	0x56
	.long	.LVL556
	.long	.LVL557
	.value	0x1
	.byte	0x56
	.long	.LVL574
	.long	.LVL576
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST249:
	.long	.LVL534
	.long	.LVL537
	.value	0x1
	.byte	0x57
	.long	.LVL556
	.long	.LVL557
	.value	0x1
	.byte	0x57
	.long	.LVL574
	.long	.LVL577
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST250:
	.long	.LVL545
	.long	.LVL557
	.value	0x1
	.byte	0x55
	.long	.LVL574
	.long	.LVL578
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST251:
	.long	.LVL539
	.long	.LVL549
	.value	0x1
	.byte	0x57
	.long	.LVL574
	.long	.LVL577
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST252:
	.long	.LVL540
	.long	.LVL544
	.value	0x1
	.byte	0x55
	.long	.LVL574
	.long	.LVL578
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST253:
	.long	.LVL541
	.long	.LVL554
	.value	0x1
	.byte	0x53
	.long	.LVL574
	.long	.LVL575
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST254:
	.long	.LVL542
	.long	.LVL543
	.value	0x1
	.byte	0x56
	.long	.LVL574
	.long	.LVL576
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST255:
	.long	.LVL544
	.long	.LVL545
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST256:
	.long	.LVL547
	.long	.LVL550
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST257:
	.long	.LVL548
	.long	.LVL553
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST258:
	.long	.LVL550
	.long	.LVL557
	.value	0x1
	.byte	0x56
	.long	.LVL574
	.long	.LVL576
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST259:
	.long	.LVL549
	.long	.LVL557
	.value	0x1
	.byte	0x57
	.long	.LVL574
	.long	.LVL577
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST260:
	.long	.LVL550
	.long	.LVL551
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST261:
	.long	.LVL552
	.long	.LVL555
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST262:
	.long	.LVL559
	.long	.LVL572
	.value	0x1
	.byte	0x52
	.long	.LVL573
	.long	.LFE2122
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST263:
	.long	.LVL560
	.long	.LVL561
	.value	0x1
	.byte	0x50
	.long	.LVL573
	.long	.LVL574
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST264:
	.long	.LVL562
	.long	.LVL563
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST265:
	.long	.LVL564
	.long	.LVL567
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST266:
	.long	.LVL566
	.long	.LVL568
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST267:
	.long	.LVL567
	.long	.LVL570
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST268:
	.long	.LVL568
	.long	.LVL571
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST269:
	.long	.LVL556
	.long	.LVL557
	.value	0x1
	.byte	0x56
	.long	.LVL570
	.long	.LVL573
	.value	0x1
	.byte	0x56
	.long	.LVL574
	.long	.LVL576
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST270:
	.long	.LVL556
	.long	.LVL557
	.value	0x1
	.byte	0x57
	.long	.LVL569
	.long	.LVL573
	.value	0x1
	.byte	0x57
	.long	.LVL574
	.long	.LVL577
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST271:
	.long	.LFB2469
	.long	.LCFI106
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI106
	.long	.LCFI107
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI107
	.long	.LCFI108
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI108
	.long	.LCFI109
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI109
	.long	.LCFI110
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI110
	.long	.LFE2469
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	0x0
	.long	0x0
.LLST272:
	.long	.LVL579
	.long	.LVL588
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST273:
	.long	.LVL580
	.long	.LVL581
	.value	0x1
	.byte	0x50
	.long	.LVL587
	.long	.LFE2469
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST274:
	.long	.LVL582
	.long	.LVL584
	.value	0x1
	.byte	0x52
	.long	.LVL585
	.long	.LVL586
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST275:
	.long	.LFB2853
	.long	.LCFI111
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI111
	.long	.LFE2853
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST276:
	.long	.LVL589
	.long	.LVL590
	.value	0x1
	.byte	0x50
	.long	.LVL590
	.long	.LVL597
	.value	0x1
	.byte	0x51
	.long	.LVL599
	.long	.LFE2853
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST277:
	.long	.LVL591
	.long	.LVL593
	.value	0x1
	.byte	0x53
	.long	.LVL600
	.long	.LVL601
	.value	0x1
	.byte	0x53
	.long	.LVL602
	.long	.LVL603
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST278:
	.long	.LVL592
	.long	.LVL593
	.value	0x1
	.byte	0x50
	.long	.LVL600
	.long	.LVL601
	.value	0x1
	.byte	0x50
	.long	.LVL602
	.long	.LFE2853
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST279:
	.long	.LVL594
	.long	.LVL596
	.value	0x1
	.byte	0x53
	.long	.LVL600
	.long	.LVL601
	.value	0x1
	.byte	0x53
	.long	.LVL602
	.long	.LVL603
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST280:
	.long	.LVL595
	.long	.LVL596
	.value	0x1
	.byte	0x50
	.long	.LVL600
	.long	.LVL601
	.value	0x1
	.byte	0x50
	.long	.LVL602
	.long	.LFE2853
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST281:
	.long	.LVL597
	.long	.LVL599
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST282:
	.long	.LVL598
	.long	.LVL599
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST284:
	.long	.LVL604
	.long	.LVL605
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST285:
	.long	.LFB3046
	.long	.LCFI112
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI112
	.long	.LCFI113
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI113
	.long	.LCFI114
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI114
	.long	.LCFI115
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI115
	.long	.LCFI116
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI116
	.long	.LFE3046
	.value	0x3
	.byte	0x74
	.sleb128 68
	.long	0x0
	.long	0x0
.LLST286:
	.long	.LVL606
	.long	.LVL607
	.value	0x1
	.byte	0x50
	.long	.LVL607
	.long	.LVL648
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST287:
	.long	.LVL606
	.long	.LVL611
	.value	0x1
	.byte	0x52
	.long	.LVL615
	.long	.LVL618
	.value	0x1
	.byte	0x52
	.long	.LVL623
	.long	.LVL627
	.value	0x1
	.byte	0x52
	.long	.LVL643
	.long	.LVL644
	.value	0x1
	.byte	0x52
	.long	.LVL645
	.long	.LFE3046
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST288:
	.long	.LVL606
	.long	.LVL612
	.value	0x1
	.byte	0x51
	.long	.LVL615
	.long	.LVL616
	.value	0x1
	.byte	0x51
	.long	.LVL623
	.long	.LVL627
	.value	0x1
	.byte	0x51
	.long	.LVL643
	.long	.LVL644
	.value	0x1
	.byte	0x51
	.long	.LVL645
	.long	.LFE3046
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST289:
	.long	.LVL607
	.long	.LVL609
	.value	0x1
	.byte	0x50
	.long	.LVL623
	.long	.LVL624
	.value	0x1
	.byte	0x50
	.long	.LVL625
	.long	.LVL626
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST290:
	.long	.LVL619
	.long	.LVL638
	.value	0x1
	.byte	0x53
	.long	.LVL643
	.long	.LVL644
	.value	0x1
	.byte	0x53
	.long	.LVL645
	.long	.LVL646
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST291:
	.long	.LVL628
	.long	.LVL637
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST292:
	.long	.LVL622
	.long	.LVL635
	.value	0x1
	.byte	0x56
	.long	.LVL643
	.long	.LVL644
	.value	0x1
	.byte	0x56
	.long	.LVL645
	.long	.LVL647
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST293:
	.long	.LVL612
	.long	.LVL615
	.value	0x1
	.byte	0x51
	.long	.LVL616
	.long	.LVL628
	.value	0x1
	.byte	0x51
	.long	.LVL643
	.long	.LVL644
	.value	0x1
	.byte	0x51
	.long	.LVL645
	.long	.LFE3046
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST294:
	.long	.LVL613
	.long	.LVL615
	.value	0x1
	.byte	0x50
	.long	.LVL617
	.long	.LVL624
	.value	0x1
	.byte	0x50
	.long	.LVL625
	.long	.LVL626
	.value	0x1
	.byte	0x50
	.long	.LVL627
	.long	.LVL629
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST295:
	.long	.LVL614
	.long	.LVL615
	.value	0x1
	.byte	0x52
	.long	.LVL618
	.long	.LVL633
	.value	0x1
	.byte	0x52
	.long	.LVL643
	.long	.LVL644
	.value	0x1
	.byte	0x52
	.long	.LVL645
	.long	.LFE3046
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST296:
	.long	.LVL609
	.long	.LVL610
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST297:
	.long	.LVL611
	.long	.LVL614
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST298:
	.long	.LVL634
	.long	.LVL638
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST299:
	.long	.LVL638
	.long	.LVL639
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST300:
	.long	.LVL640
	.long	.LVL641
	.value	0x1
	.byte	0x50
	.long	.LVL642
	.long	.LFE3046
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST301:
	.long	.LFB3047
	.long	.LCFI117
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI117
	.long	.LCFI118
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI118
	.long	.LCFI119
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI119
	.long	.LCFI120
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI120
	.long	.LCFI121
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI121
	.long	.LFE3047
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	0x0
	.long	0x0
.LLST302:
	.long	.LVL649
	.long	.LVL651
	.value	0x1
	.byte	0x50
	.long	.LVL651
	.long	.LVL666
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST303:
	.long	.LVL649
	.long	.LVL653
	.value	0x1
	.byte	0x52
	.long	.LVL663
	.long	.LVL664
	.value	0x1
	.byte	0x52
	.long	.LVL665
	.long	.LFE3047
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST304:
	.long	.LVL649
	.long	.LVL650
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST305:
	.long	.LVL652
	.long	.LVL654
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST306:
	.long	.LVL653
	.long	.LVL657
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST307:
	.long	.LVL656
	.long	.LVL659
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST308:
	.long	.LVL657
	.long	.LVL658
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST309:
	.long	.LVL660
	.long	.LVL661
	.value	0x1
	.byte	0x50
	.long	.LVL662
	.long	.LFE3047
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST310:
	.long	.LFB3048
	.long	.LCFI122
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI122
	.long	.LCFI123
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI123
	.long	.LCFI124
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI124
	.long	.LCFI125
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI125
	.long	.LCFI126
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI126
	.long	.LFE3048
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	0x0
	.long	0x0
.LLST311:
	.long	.LVL667
	.long	.LVL669
	.value	0x1
	.byte	0x50
	.long	.LVL669
	.long	.LVL677
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST312:
	.long	.LVL667
	.long	.LVL668
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST313:
	.long	.LVL668
	.long	.LVL672
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST314:
	.long	.LVL672
	.long	.LVL673
	.value	0x1
	.byte	0x52
	.long	.LVL675
	.long	.LFE3048
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST315:
	.long	.LVL674
	.long	.LVL675
	.value	0x1
	.byte	0x50
	.long	.LVL676
	.long	.LFE3048
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST316:
	.long	.LFB3058
	.long	.LCFI127
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI127
	.long	.LCFI128
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI128
	.long	.LCFI129
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI129
	.long	.LCFI130
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI130
	.long	.LCFI131
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI131
	.long	.LFE3058
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	0x0
	.long	0x0
.LLST317:
	.long	.LVL678
	.long	.LVL680
	.value	0x1
	.byte	0x50
	.long	.LVL680
	.long	.LVL688
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST318:
	.long	.LVL678
	.long	.LVL679
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST319:
	.long	.LVL679
	.long	.LVL683
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST320:
	.long	.LVL683
	.long	.LVL684
	.value	0x1
	.byte	0x52
	.long	.LVL686
	.long	.LFE3058
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST321:
	.long	.LVL685
	.long	.LVL686
	.value	0x1
	.byte	0x50
	.long	.LVL687
	.long	.LFE3058
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST322:
	.long	.LFB3072
	.long	.LCFI132
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI132
	.long	.LCFI133
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI133
	.long	.LCFI134
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI134
	.long	.LCFI135
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI135
	.long	.LCFI136
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI136
	.long	.LFE3072
	.value	0x3
	.byte	0x74
	.sleb128 64
	.long	0x0
	.long	0x0
.LLST323:
	.long	.LVL689
	.long	.LVL690
	.value	0x1
	.byte	0x50
	.long	.LVL690
	.long	.LVL709
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST324:
	.long	.LVL689
	.long	.LVL691
	.value	0x1
	.byte	0x52
	.long	.LVL703
	.long	.LVL704
	.value	0x1
	.byte	0x52
	.long	.LVL708
	.long	.LFE3072
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST325:
	.long	.LVL692
	.long	.LVL697
	.value	0x1
	.byte	0x51
	.long	.LVL701
	.long	.LVL704
	.value	0x1
	.byte	0x51
	.long	.LVL708
	.long	.LFE3072
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST326:
	.long	.LVL693
	.long	.LVL694
	.value	0x1
	.byte	0x50
	.long	.LVL701
	.long	.LVL702
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST327:
	.long	.LVL695
	.long	.LVL696
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST328:
	.long	.LVL697
	.long	.LVL698
	.value	0x1
	.byte	0x50
	.long	.LVL699
	.long	.LVL700
	.value	0x1
	.byte	0x50
	.long	.LVL704
	.long	.LVL705
	.value	0x1
	.byte	0x50
	.long	.LVL706
	.long	.LVL707
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST330:
	.long	.LFB3091
	.long	.LCFI137
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI137
	.long	.LCFI138
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI138
	.long	.LFE3091
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST331:
	.long	.LVL710
	.long	.LVL712
	.value	0x1
	.byte	0x50
	.long	.LVL713
	.long	.LVL714
	.value	0x1
	.byte	0x50
	.long	.LVL715
	.long	.LVL716
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST332:
	.long	.LFB3093
	.long	.LCFI139
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI139
	.long	.LCFI140
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI140
	.long	.LCFI141
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI141
	.long	.LCFI142
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI142
	.long	.LCFI143
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI143
	.long	.LCFI144
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI144
	.long	.LCFI145
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI145
	.long	.LFE3093
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST333:
	.long	.LVL717
	.long	.LVL718
	.value	0x1
	.byte	0x50
	.long	.LVL718
	.long	.LVL721
	.value	0x1
	.byte	0x56
	.long	.LVL721
	.long	.LVL824
	.value	0x1
	.byte	0x57
	.long	.LVL824
	.long	.LVL830
	.value	0x1
	.byte	0x56
	.long	.LVL830
	.long	.LVL838
	.value	0x1
	.byte	0x57
	.long	.LVL838
	.long	.LVL842
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST334:
	.long	.LVL717
	.long	.LVL718
	.value	0x1
	.byte	0x52
	.long	.LVL718
	.long	.LVL724
	.value	0x1
	.byte	0x53
	.long	.LVL724
	.long	.LVL732
	.value	0x1
	.byte	0x55
	.long	.LVL732
	.long	.LVL745
	.value	0x1
	.byte	0x53
	.long	.LVL745
	.long	.LVL748
	.value	0x1
	.byte	0x55
	.long	.LVL748
	.long	.LVL819
	.value	0x1
	.byte	0x53
	.long	.LVL819
	.long	.LVL822
	.value	0x1
	.byte	0x51
	.long	.LVL822
	.long	.LVL841
	.value	0x1
	.byte	0x53
	.long	.LVL841
	.long	.LFE3093
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST335:
	.long	.LVL724
	.long	.LVL725
	.value	0x1
	.byte	0x50
	.long	.LVL728
	.long	.LVL731
	.value	0x1
	.byte	0x50
	.long	.LVL733
	.long	.LVL736
	.value	0x1
	.byte	0x50
	.long	.LVL737
	.long	.LVL740
	.value	0x1
	.byte	0x50
	.long	.LVL741
	.long	.LVL742
	.value	0x1
	.byte	0x50
	.long	.LVL744
	.long	.LVL746
	.value	0x1
	.byte	0x50
	.long	.LVL748
	.long	.LVL750
	.value	0x1
	.byte	0x50
	.long	.LVL752
	.long	.LVL754
	.value	0x1
	.byte	0x50
	.long	.LVL758
	.long	.LVL760
	.value	0x1
	.byte	0x50
	.long	.LVL766
	.long	.LVL769
	.value	0x1
	.byte	0x50
	.long	.LVL774
	.long	.LVL775
	.value	0x1
	.byte	0x50
	.long	.LVL780
	.long	.LVL781
	.value	0x1
	.byte	0x50
	.long	.LVL786
	.long	.LVL787
	.value	0x1
	.byte	0x50
	.long	.LVL792
	.long	.LVL793
	.value	0x1
	.byte	0x50
	.long	.LVL798
	.long	.LVL799
	.value	0x1
	.byte	0x50
	.long	.LVL804
	.long	.LVL805
	.value	0x1
	.byte	0x50
	.long	.LVL810
	.long	.LVL811
	.value	0x1
	.byte	0x50
	.long	.LVL818
	.long	.LVL820
	.value	0x1
	.byte	0x50
	.long	.LVL822
	.long	.LVL823
	.value	0x1
	.byte	0x50
	.long	.LVL830
	.long	.LVL833
	.value	0x1
	.byte	0x50
	.long	.LVL835
	.long	.LVL837
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST336:
	.long	.LVL718
	.long	.LVL720
	.value	0x1
	.byte	0x52
	.long	.LVL722
	.long	.LVL735
	.value	0x1
	.byte	0x52
	.long	.LVL737
	.long	.LVL739
	.value	0x1
	.byte	0x52
	.long	.LVL741
	.long	.LVL743
	.value	0x1
	.byte	0x52
	.long	.LVL744
	.long	.LVL747
	.value	0x1
	.byte	0x52
	.long	.LVL748
	.long	.LVL749
	.value	0x1
	.byte	0x52
	.long	.LVL751
	.long	.LVL759
	.value	0x1
	.byte	0x52
	.long	.LVL766
	.long	.LVL773
	.value	0x1
	.byte	0x52
	.long	.LVL774
	.long	.LVL779
	.value	0x1
	.byte	0x52
	.long	.LVL780
	.long	.LVL785
	.value	0x1
	.byte	0x52
	.long	.LVL786
	.long	.LVL791
	.value	0x1
	.byte	0x52
	.long	.LVL792
	.long	.LVL797
	.value	0x1
	.byte	0x52
	.long	.LVL798
	.long	.LVL803
	.value	0x1
	.byte	0x52
	.long	.LVL804
	.long	.LVL809
	.value	0x1
	.byte	0x52
	.long	.LVL810
	.long	.LVL815
	.value	0x1
	.byte	0x52
	.long	.LVL818
	.long	.LVL821
	.value	0x1
	.byte	0x52
	.long	.LVL822
	.long	.LVL826
	.value	0x1
	.byte	0x52
	.long	.LVL830
	.long	.LVL832
	.value	0x1
	.byte	0x52
	.long	.LVL835
	.long	.LVL836
	.value	0x1
	.byte	0x52
	.long	.LVL838
	.long	.LFE3093
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST337:
	.long	.LVL738
	.long	.LVL743
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST338:
	.long	.LVL718
	.long	.LVL723
	.value	0x1
	.byte	0x51
	.long	.LVL816
	.long	.LVL818
	.value	0x1
	.byte	0x51
	.long	.LVL825
	.long	.LVL830
	.value	0x1
	.byte	0x51
	.long	.LVL831
	.long	.LVL835
	.value	0x1
	.byte	0x51
	.long	.LVL837
	.long	.LVL840
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST339:
	.long	.LVL719
	.long	.LVL725
	.value	0x1
	.byte	0x50
	.long	.LVL837
	.long	.LVL838
	.value	0x1
	.byte	0x50
	.long	.LVL839
	.long	.LFE3093
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST340:
	.long	.LVL724
	.long	.LVL728
	.value	0x1
	.byte	0x50
	.long	.LVL729
	.long	.LVL734
	.value	0x1
	.byte	0x50
	.long	.LVL734
	.long	.LVL736
	.value	0x1
	.byte	0x50
	.long	.LVL737
	.long	.LVL740
	.value	0x1
	.byte	0x50
	.long	.LVL741
	.long	.LVL742
	.value	0x1
	.byte	0x50
	.long	.LVL744
	.long	.LVL746
	.value	0x1
	.byte	0x50
	.long	.LVL748
	.long	.LVL750
	.value	0x1
	.byte	0x50
	.long	.LVL752
	.long	.LVL754
	.value	0x1
	.byte	0x50
	.long	.LVL758
	.long	.LVL760
	.value	0x1
	.byte	0x50
	.long	.LVL766
	.long	.LVL769
	.value	0x1
	.byte	0x50
	.long	.LVL774
	.long	.LVL775
	.value	0x1
	.byte	0x50
	.long	.LVL780
	.long	.LVL781
	.value	0x1
	.byte	0x50
	.long	.LVL786
	.long	.LVL787
	.value	0x1
	.byte	0x50
	.long	.LVL792
	.long	.LVL793
	.value	0x1
	.byte	0x50
	.long	.LVL798
	.long	.LVL799
	.value	0x1
	.byte	0x50
	.long	.LVL804
	.long	.LVL805
	.value	0x1
	.byte	0x50
	.long	.LVL810
	.long	.LVL811
	.value	0x1
	.byte	0x50
	.long	.LVL818
	.long	.LVL820
	.value	0x1
	.byte	0x50
	.long	.LVL822
	.long	.LVL823
	.value	0x1
	.byte	0x50
	.long	.LVL830
	.long	.LVL833
	.value	0x1
	.byte	0x50
	.long	.LVL835
	.long	.LVL837
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST341:
	.long	.LVL718
	.long	.LVL727
	.value	0x1
	.byte	0x51
	.long	.LVL729
	.long	.LVL738
	.value	0x1
	.byte	0x51
	.long	.LVL744
	.long	.LVL747
	.value	0x1
	.byte	0x51
	.long	.LVL748
	.long	.LVL755
	.value	0x1
	.byte	0x51
	.long	.LVL756
	.long	.LVL767
	.value	0x1
	.byte	0x51
	.long	.LVL768
	.long	.LVL819
	.value	0x1
	.byte	0x51
	.long	.LVL822
	.long	.LVL825
	.value	0x1
	.byte	0x51
	.long	.LVL830
	.long	.LVL831
	.value	0x1
	.byte	0x51
	.long	.LVL835
	.long	.LVL840
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST342:
	.long	.LVL718
	.long	.LVL719
	.value	0x1
	.byte	0x50
	.long	.LVL812
	.long	.LVL813
	.value	0x1
	.byte	0x50
	.long	.LVL814
	.long	.LVL818
	.value	0x1
	.byte	0x50
	.long	.LVL838
	.long	.LVL839
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST343:
	.long	.LVL806
	.long	.LVL807
	.value	0x1
	.byte	0x50
	.long	.LVL808
	.long	.LVL811
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST344:
	.long	.LVL800
	.long	.LVL801
	.value	0x1
	.byte	0x50
	.long	.LVL802
	.long	.LVL805
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST345:
	.long	.LVL794
	.long	.LVL795
	.value	0x1
	.byte	0x50
	.long	.LVL796
	.long	.LVL799
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST346:
	.long	.LVL788
	.long	.LVL789
	.value	0x1
	.byte	0x50
	.long	.LVL790
	.long	.LVL793
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST347:
	.long	.LVL782
	.long	.LVL783
	.value	0x1
	.byte	0x50
	.long	.LVL784
	.long	.LVL787
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST348:
	.long	.LVL776
	.long	.LVL777
	.value	0x1
	.byte	0x50
	.long	.LVL778
	.long	.LVL781
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST349:
	.long	.LVL770
	.long	.LVL771
	.value	0x1
	.byte	0x50
	.long	.LVL772
	.long	.LVL775
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST350:
	.long	.LVL753
	.long	.LVL756
	.value	0x1
	.byte	0x56
	.long	.LVL756
	.long	.LVL758
	.value	0x1
	.byte	0x50
	.long	.LVL758
	.long	.LVL761
	.value	0x1
	.byte	0x56
	.long	.LVL761
	.long	.LVL763
	.value	0x1
	.byte	0x52
	.long	.LVL766
	.long	.LVL817
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST351:
	.long	.LVL718
	.long	.LVL745
	.value	0x1
	.byte	0x55
	.long	.LVL748
	.long	.LVL760
	.value	0x1
	.byte	0x55
	.long	.LVL760
	.long	.LVL764
	.value	0x1
	.byte	0x50
	.long	.LVL764
	.long	.LVL843
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST352:
	.long	.LVL718
	.long	.LVL719
	.value	0x1
	.byte	0x50
	.long	.LVL823
	.long	.LVL827
	.value	0x1
	.byte	0x50
	.long	.LVL828
	.long	.LVL829
	.value	0x1
	.byte	0x50
	.long	.LVL838
	.long	.LVL839
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST353:
	.long	.LVL718
	.long	.LVL719
	.value	0x1
	.byte	0x50
	.long	.LVL816
	.long	.LVL818
	.value	0x1
	.byte	0x50
	.long	.LVL832
	.long	.LVL835
	.value	0x1
	.byte	0x50
	.long	.LVL838
	.long	.LVL839
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST356:
	.long	.LFB343
	.long	.LCFI146
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI146
	.long	.LCFI147
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI147
	.long	.LCFI148
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI148
	.long	.LCFI149
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI149
	.long	.LCFI150
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI150
	.long	.LCFI151
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI151
	.long	.LCFI152
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI152
	.long	.LCFI153
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI153
	.long	.LCFI154
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI154
	.long	.LCFI155
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI155
	.long	.LCFI156
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI156
	.long	.LCFI157
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI157
	.long	.LCFI158
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI158
	.long	.LCFI159
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI159
	.long	.LCFI160
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI160
	.long	.LCFI161
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI161
	.long	.LCFI162
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI162
	.long	.LCFI163
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI163
	.long	.LCFI164
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI164
	.long	.LCFI165
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI165
	.long	.LCFI166
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI166
	.long	.LFE343
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST357:
	.long	.LVL846
	.long	.LVL847
	.value	0x1
	.byte	0x50
	.long	.LVL847
	.long	.LVL848
	.value	0x1
	.byte	0x53
	.long	.LVL848
	.long	.LVL849
	.value	0x1
	.byte	0x50
	.long	.LVL849
	.long	.LVL852
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST358:
	.long	.LVL849
	.long	.LVL851
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST359:
	.long	.LFB79
	.long	.LCFI167
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI167
	.long	.LCFI168
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI168
	.long	.LCFI169
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI169
	.long	.LCFI170
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI170
	.long	.LFE79
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST360:
	.long	.LVL853
	.long	.LVL854
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST361:
	.long	.LFB916
	.long	.LCFI171
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI171
	.long	.LCFI172
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI172
	.long	.LCFI173
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI173
	.long	.LCFI174
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI174
	.long	.LCFI175
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI175
	.long	.LCFI176
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI176
	.long	.LCFI177
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI177
	.long	.LCFI178
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI178
	.long	.LCFI179
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI179
	.long	.LCFI180
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	.LCFI180
	.long	.LCFI181
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI181
	.long	.LCFI182
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI182
	.long	.LCFI183
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI183
	.long	.LFE916
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	0x0
	.long	0x0
.LLST362:
	.long	.LVL855
	.long	.LVL859
	.value	0x1
	.byte	0x50
	.long	.LVL861
	.long	.LVL862
	.value	0x1
	.byte	0x50
	.long	.LVL864
	.long	.LVL913
	.value	0x1
	.byte	0x50
	.long	.LVL914
	.long	.LVL916
	.value	0x1
	.byte	0x50
	.long	.LVL918
	.long	.LVL919
	.value	0x1
	.byte	0x50
	.long	.LVL919
	.long	.LVL920
	.value	0x1
	.byte	0x57
	.long	.LVL926
	.long	.LVL927
	.value	0x1
	.byte	0x50
	.long	.LVL928
	.long	.LVL931
	.value	0x1
	.byte	0x50
	.long	.LVL935
	.long	.LVL936
	.value	0x1
	.byte	0x50
	.long	.LVL941
	.long	.LVL942
	.value	0x1
	.byte	0x50
	.long	.LVL945
	.long	.LVL951
	.value	0x1
	.byte	0x50
	.long	.LVL953
	.long	.LFE916
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST363:
	.long	.LVL865
	.long	.LVL867
	.value	0x1
	.byte	0x52
	.long	.LVL870
	.long	.LVL871
	.value	0x1
	.byte	0x52
	.long	.LVL872
	.long	.LVL873
	.value	0x1
	.byte	0x52
	.long	.LVL874
	.long	.LVL875
	.value	0x1
	.byte	0x52
	.long	.LVL876
	.long	.LVL877
	.value	0x1
	.byte	0x52
	.long	.LVL878
	.long	.LVL882
	.value	0x1
	.byte	0x52
	.long	.LVL883
	.long	.LVL887
	.value	0x1
	.byte	0x52
	.long	.LVL888
	.long	.LVL892
	.value	0x1
	.byte	0x52
	.long	.LVL893
	.long	.LVL897
	.value	0x1
	.byte	0x52
	.long	.LVL899
	.long	.LVL900
	.value	0x1
	.byte	0x52
	.long	.LVL904
	.long	.LVL905
	.value	0x1
	.byte	0x52
	.long	.LVL949
	.long	.LVL952
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST364:
	.long	.LVL866
	.long	.LVL867
	.value	0x1
	.byte	0x56
	.long	.LVL868
	.long	.LVL869
	.value	0x1
	.byte	0x56
	.long	.LVL881
	.long	.LVL882
	.value	0x1
	.byte	0x56
	.long	.LVL886
	.long	.LVL887
	.value	0x1
	.byte	0x56
	.long	.LVL891
	.long	.LVL892
	.value	0x1
	.byte	0x56
	.long	.LVL896
	.long	.LVL897
	.value	0x1
	.byte	0x56
	.long	.LVL898
	.long	.LVL900
	.value	0x1
	.byte	0x56
	.long	.LVL901
	.long	.LVL902
	.value	0x1
	.byte	0x56
	.long	.LVL903
	.long	.LVL905
	.value	0x1
	.byte	0x56
	.long	.LVL906
	.long	.LVL907
	.value	0x1
	.byte	0x56
	.long	.LVL949
	.long	.LVL955
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST365:
	.long	.LVL860
	.long	.LVL861
	.value	0x1
	.byte	0x53
	.long	.LVL879
	.long	.LVL880
	.value	0x1
	.byte	0x53
	.long	.LVL884
	.long	.LVL885
	.value	0x1
	.byte	0x53
	.long	.LVL889
	.long	.LVL890
	.value	0x1
	.byte	0x53
	.long	.LVL894
	.long	.LVL895
	.value	0x1
	.byte	0x53
	.long	.LVL908
	.long	.LVL909
	.value	0x1
	.byte	0x53
	.long	.LVL910
	.long	.LVL911
	.value	0x1
	.byte	0x53
	.long	.LVL949
	.long	.LVL954
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST366:
	.long	.LVL856
	.long	.LVL862
	.value	0x1
	.byte	0x52
	.long	.LVL864
	.long	.LVL865
	.value	0x1
	.byte	0x52
	.long	.LVL867
	.long	.LVL870
	.value	0x1
	.byte	0x52
	.long	.LVL871
	.long	.LVL872
	.value	0x1
	.byte	0x52
	.long	.LVL873
	.long	.LVL874
	.value	0x1
	.byte	0x52
	.long	.LVL875
	.long	.LVL876
	.value	0x1
	.byte	0x52
	.long	.LVL877
	.long	.LVL878
	.value	0x1
	.byte	0x52
	.long	.LVL882
	.long	.LVL883
	.value	0x1
	.byte	0x52
	.long	.LVL887
	.long	.LVL888
	.value	0x1
	.byte	0x52
	.long	.LVL892
	.long	.LVL893
	.value	0x1
	.byte	0x52
	.long	.LVL897
	.long	.LVL899
	.value	0x1
	.byte	0x52
	.long	.LVL900
	.long	.LVL904
	.value	0x1
	.byte	0x52
	.long	.LVL905
	.long	.LVL912
	.value	0x1
	.byte	0x52
	.long	.LVL914
	.long	.LVL916
	.value	0x1
	.byte	0x52
	.long	.LVL918
	.long	.LVL943
	.value	0x1
	.byte	0x52
	.long	.LVL945
	.long	.LVL952
	.value	0x1
	.byte	0x52
	.long	.LVL953
	.long	.LFE916
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST367:
	.long	.LVL857
	.long	.LVL863
	.value	0x1
	.byte	0x56
	.long	.LVL864
	.long	.LVL866
	.value	0x1
	.byte	0x56
	.long	.LVL867
	.long	.LVL868
	.value	0x1
	.byte	0x56
	.long	.LVL869
	.long	.LVL881
	.value	0x1
	.byte	0x56
	.long	.LVL882
	.long	.LVL886
	.value	0x1
	.byte	0x56
	.long	.LVL887
	.long	.LVL891
	.value	0x1
	.byte	0x56
	.long	.LVL892
	.long	.LVL896
	.value	0x1
	.byte	0x56
	.long	.LVL897
	.long	.LVL898
	.value	0x1
	.byte	0x56
	.long	.LVL900
	.long	.LVL901
	.value	0x1
	.byte	0x56
	.long	.LVL902
	.long	.LVL903
	.value	0x1
	.byte	0x56
	.long	.LVL905
	.long	.LVL906
	.value	0x1
	.byte	0x56
	.long	.LVL907
	.long	.LVL955
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST368:
	.long	.LVL858
	.long	.LVL860
	.value	0x1
	.byte	0x53
	.long	.LVL861
	.long	.LVL879
	.value	0x1
	.byte	0x53
	.long	.LVL880
	.long	.LVL884
	.value	0x1
	.byte	0x53
	.long	.LVL885
	.long	.LVL889
	.value	0x1
	.byte	0x53
	.long	.LVL890
	.long	.LVL894
	.value	0x1
	.byte	0x53
	.long	.LVL895
	.long	.LVL908
	.value	0x1
	.byte	0x53
	.long	.LVL909
	.long	.LVL910
	.value	0x1
	.byte	0x53
	.long	.LVL911
	.long	.LVL917
	.value	0x1
	.byte	0x53
	.long	.LVL918
	.long	.LVL950
	.value	0x1
	.byte	0x53
	.long	.LVL953
	.long	.LVL954
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST369:
	.long	.LVL929
	.long	.LVL930
	.value	0x1
	.byte	0x51
	.long	.LVL940
	.long	.LVL944
	.value	0x1
	.byte	0x51
	.long	.LVL945
	.long	.LVL948
	.value	0x1
	.byte	0x51
	.long	.LVL949
	.long	.LFE916
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST370:
	.long	.LVL921
	.long	.LVL929
	.value	0x1
	.byte	0x51
	.long	.LVL930
	.long	.LVL940
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST371:
	.long	.LVL922
	.long	.LVL923
	.value	0x1
	.byte	0x50
	.long	.LVL939
	.long	.LVL941
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST372:
	.long	.LVL924
	.long	.LVL925
	.value	0x1
	.byte	0x50
	.long	.LVL939
	.long	.LVL941
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST373:
	.long	.LVL927
	.long	.LVL928
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST374:
	.long	.LVL931
	.long	.LVL932
	.value	0x1
	.byte	0x50
	.long	.LVL933
	.long	.LVL934
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST375:
	.long	.LVL932
	.long	.LVL933
	.value	0x1
	.byte	0x50
	.long	.LVL939
	.long	.LVL941
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST376:
	.long	.LVL934
	.long	.LVL935
	.value	0x1
	.byte	0x50
	.long	.LVL939
	.long	.LVL941
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST377:
	.long	.LVL936
	.long	.LVL937
	.value	0x1
	.byte	0x50
	.long	.LVL938
	.long	.LVL939
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST378:
	.long	.LVL937
	.long	.LVL938
	.value	0x1
	.byte	0x50
	.long	.LVL939
	.long	.LVL941
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST379:
	.long	.LVL939
	.long	.LVL941
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST380:
	.long	.LVL946
	.long	.LVL956
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST381:
	.long	.LFB917
	.long	.LCFI184
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI184
	.long	.LCFI185
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI185
	.long	.LCFI186
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI186
	.long	.LFE917
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	0x0
	.long	0x0
.LLST382:
	.long	.LVL957
	.long	.LVL958
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST383:
	.long	.LVL959
	.long	.LVL962
	.value	0x1
	.byte	0x50
	.long	.LVL962
	.long	.LFE917
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST384:
	.long	.LVL959
	.long	.LVL962
	.value	0x1
	.byte	0x51
	.long	.LVL962
	.long	.LFE917
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST385:
	.long	.LFB2461
	.long	.LCFI187
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI187
	.long	.LFE2461
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST386:
	.long	.LVL963
	.long	.LVL964
	.value	0x1
	.byte	0x50
	.long	.LVL964
	.long	.LVL967
	.value	0x1
	.byte	0x53
	.long	.LVL968
	.long	.LVL971
	.value	0x1
	.byte	0x53
	.long	.LVL971
	.long	.LVL972
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST387:
	.long	.LVL965
	.long	.LVL966
	.value	0x1
	.byte	0x50
	.long	.LVL968
	.long	.LVL970
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST388:
	.long	.LFB2464
	.long	.LCFI188
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI188
	.long	.LCFI189
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI189
	.long	.LCFI190
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI190
	.long	.LCFI191
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI191
	.long	.LCFI192
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI192
	.long	.LFE2464
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	0x0
	.long	0x0
.LLST389:
	.long	.LVL973
	.long	.LVL974
	.value	0x1
	.byte	0x50
	.long	.LVL974
	.long	.LVL1033
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST390:
	.long	.LVL975
	.long	.LVL1032
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST391:
	.long	.LVL1015
	.long	.LVL1034
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST392:
	.long	.LVL976
	.long	.LVL979
	.value	0x1
	.byte	0x50
	.long	.LVL982
	.long	.LVL994
	.value	0x1
	.byte	0x50
	.long	.LVL999
	.long	.LVL1006
	.value	0x1
	.byte	0x50
	.long	.LVL1013
	.long	.LVL1014
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST393:
	.long	.LVL976
	.long	.LVL981
	.value	0x1
	.byte	0x51
	.long	.LVL982
	.long	.LVL988
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST394:
	.long	.LVL976
	.long	.LVL977
	.value	0x1
	.byte	0x50
	.long	.LVL979
	.long	.LVL980
	.value	0x1
	.byte	0x50
	.long	.LVL982
	.long	.LVL983
	.value	0x1
	.byte	0x50
	.long	.LVL987
	.long	.LVL994
	.value	0x1
	.byte	0x50
	.long	.LVL999
	.long	.LVL1006
	.value	0x1
	.byte	0x50
	.long	.LVL1013
	.long	.LVL1014
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST395:
	.long	.LVL989
	.long	.LVL994
	.value	0x1
	.byte	0x52
	.long	.LVL994
	.long	.LVL995
	.value	0x1
	.byte	0x50
	.long	.LVL997
	.long	.LVL999
	.value	0x1
	.byte	0x50
	.long	.LVL999
	.long	.LVL1000
	.value	0x1
	.byte	0x52
	.long	.LVL1000
	.long	.LVL1006
	.value	0x1
	.byte	0x50
	.long	.LVL1013
	.long	.LVL1014
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST396:
	.long	.LVL992
	.long	.LVL996
	.value	0x1
	.byte	0x55
	.long	.LVL997
	.long	.LVL1004
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST397:
	.long	.LVL1000
	.long	.LVL1006
	.value	0x1
	.byte	0x52
	.long	.LVL1006
	.long	.LVL1007
	.value	0x1
	.byte	0x50
	.long	.LVL1011
	.long	.LVL1013
	.value	0x1
	.byte	0x50
	.long	.LVL1013
	.long	.LVL1016
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST398:
	.long	.LVL1003
	.long	.LVL1010
	.value	0x1
	.byte	0x57
	.long	.LVL1011
	.long	.LVL1015
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST399:
	.long	.LVL1007
	.long	.LVL1009
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST400:
	.long	.LVL1015
	.long	.LVL1017
	.value	0x1
	.byte	0x52
	.long	.LVL1017
	.long	.LVL1018
	.value	0x1
	.byte	0x50
	.long	.LVL1021
	.long	.LVL1027
	.value	0x1
	.byte	0x52
	.long	.LVL1028
	.long	.LVL1031
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST401:
	.long	.LVL1018
	.long	.LVL1020
	.value	0x1
	.byte	0x50
	.long	.LVL1021
	.long	.LVL1023
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST402:
	.long	.LVL1025
	.long	.LVL1027
	.value	0x1
	.byte	0x50
	.long	.LVL1029
	.long	.LVL1030
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST403:
	.long	.LFB2465
	.long	.LCFI193
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI193
	.long	.LCFI194
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI194
	.long	.LCFI195
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI195
	.long	.LCFI196
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI196
	.long	.LCFI197
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI197
	.long	.LFE2465
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST404:
	.long	.LVL1035
	.long	.LVL1040
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST405:
	.long	.LVL1036
	.long	.LVL1037
	.value	0x1
	.byte	0x50
	.long	.LVL1038
	.long	.LVL1039
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST406:
	.long	.LFB1186
	.long	.LCFI198
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI198
	.long	.LCFI199
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI199
	.long	.LCFI200
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI200
	.long	.LFE1186
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	0x0
	.long	0x0
.LLST407:
	.long	.LVL1047
	.long	.LVL1048
	.value	0x1
	.byte	0x50
	.long	.LVL1050
	.long	.LVL1051
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST408:
	.long	.LVL1052
	.long	.LVL1054
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST409:
	.long	.LVL1042
	.long	.LVL1043
	.value	0x1
	.byte	0x50
	.long	.LVL1045
	.long	.LVL1046
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST410:
	.long	.LVL1041
	.long	.LVL1042
	.value	0x1
	.byte	0x50
	.long	.LVL1045
	.long	.LVL1046
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST411:
	.long	.LVL1043
	.long	.LVL1044
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST412:
	.long	.LVL1046
	.long	.LVL1047
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST413:
	.long	.LVL1049
	.long	.LVL1050
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST414:
	.long	.LVL1048
	.long	.LVL1049
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST415:
	.long	.LFB701
	.long	.LCFI201
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI201
	.long	.LCFI202
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI202
	.long	.LCFI203
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI203
	.long	.LCFI204
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI204
	.long	.LCFI205
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI205
	.long	.LCFI206
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI206
	.long	.LCFI207
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI207
	.long	.LFE701
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	0x0
	.long	0x0
.LLST416:
	.long	.LVL1055
	.long	.LVL1057
	.value	0x1
	.byte	0x50
	.long	.LVL1057
	.long	.LVL1058
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST417:
	.long	.LVL1056
	.long	.LVL1063
	.value	0x1
	.byte	0x51
	.long	.LVL1064
	.long	.LFE701
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST418:
	.long	.LVL1059
	.long	.LVL1060
	.value	0x1
	.byte	0x50
	.long	.LVL1061
	.long	.LVL1062
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST419:
	.long	.LFB711
	.long	.LCFI208
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI208
	.long	.LCFI209
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI209
	.long	.LCFI210
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI210
	.long	.LCFI211
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI211
	.long	.LCFI212
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI212
	.long	.LFE711
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	0x0
	.long	0x0
.LLST420:
	.long	.LVL1065
	.long	.LVL1066
	.value	0x1
	.byte	0x50
	.long	.LVL1066
	.long	.LVL1095
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST421:
	.long	.LVL1065
	.long	.LVL1068
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST422:
	.long	.LVL1065
	.long	.LVL1072
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST423:
	.long	.LVL1070
	.long	.LVL1086
	.value	0x1
	.byte	0x55
	.long	.LVL1087
	.long	.LVL1090
	.value	0x1
	.byte	0x55
	.long	.LVL1092
	.long	.LVL1098
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST424:
	.long	.LVL1085
	.long	.LVL1089
	.value	0x1
	.byte	0x50
	.long	.LVL1091
	.long	.LVL1094
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST425:
	.long	.LVL1067
	.long	.LVL1071
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST426:
	.long	.LVL1069
	.long	.LVL1073
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST427:
	.long	.LVL1076
	.long	.LVL1078
	.value	0x1
	.byte	0x51
	.long	.LVL1081
	.long	.LVL1084
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST428:
	.long	.LVL1074
	.long	.LVL1075
	.value	0x1
	.byte	0x56
	.long	.LVL1077
	.long	.LVL1096
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST429:
	.long	.LVL1082
	.long	.LVL1083
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST430:
	.long	.LVL1080
	.long	.LVL1084
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST431:
	.long	.LVL1074
	.long	.LVL1079
	.value	0x1
	.byte	0x57
	.long	.LVL1081
	.long	.LVL1097
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST432:
	.long	.LFB704
	.long	.LCFI213
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI213
	.long	.LCFI214
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI214
	.long	.LCFI215
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI215
	.long	.LCFI216
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI216
	.long	.LCFI217
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI217
	.long	.LFE704
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST433:
	.long	.LVL1099
	.long	.LVL1101
	.value	0x1
	.byte	0x50
	.long	.LVL1101
	.long	.LVL1106
	.value	0x1
	.byte	0x51
	.long	.LVL1106
	.long	.LVL1109
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST434:
	.long	.LVL1100
	.long	.LVL1102
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST435:
	.long	.LVL1104
	.long	.LVL1107
	.value	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST436:
	.long	.LFB708
	.long	.LCFI218
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI218
	.long	.LCFI219
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI219
	.long	.LCFI220
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI220
	.long	.LCFI221
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI221
	.long	.LCFI222
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI222
	.long	.LCFI223
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI223
	.long	.LFE708
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST437:
	.long	.LVL1110
	.long	.LVL1113
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST438:
	.long	.LVL1110
	.long	.LVL1111
	.value	0x1
	.byte	0x52
	.long	.LVL1111
	.long	.LVL1123
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST439:
	.long	.LVL1115
	.long	.LVL1116
	.value	0x1
	.byte	0x50
	.long	.LVL1119
	.long	.LVL1120
	.value	0x1
	.byte	0x50
	.long	.LVL1121
	.long	.LVL1122
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST440:
	.long	.LVL1117
	.long	.LVL1125
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST441:
	.long	.LVL1111
	.long	.LVL1114
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST442:
	.long	.LVL1112
	.long	.LVL1124
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST443:
	.long	.LFB716
	.long	.LCFI224
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI224
	.long	.LCFI225
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI225
	.long	.LCFI226
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI226
	.long	.LCFI227
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI227
	.long	.LCFI228
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI228
	.long	.LFE716
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	0x0
	.long	0x0
.LLST444:
	.long	.LVL1126
	.long	.LVL1127
	.value	0x1
	.byte	0x50
	.long	.LVL1127
	.long	.LVL1156
	.value	0x1
	.byte	0x53
	.long	.LVL1158
	.long	.LFE716
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST445:
	.long	.LVL1126
	.long	.LVL1128
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST446:
	.long	.LVL1128
	.long	.LVL1132
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL1134
	.long	.LVL1135
	.value	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.long	.LVL1135
	.long	.LVL1138
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST447:
	.long	.LVL1146
	.long	.LVL1147
	.value	0x1
	.byte	0x51
	.long	.LVL1147
	.long	.LVL1148
	.value	0x1
	.byte	0x50
	.long	.LVL1148
	.long	.LVL1149
	.value	0x1
	.byte	0x51
	.long	.LVL1150
	.long	.LVL1151
	.value	0x1
	.byte	0x51
	.long	.LVL1151
	.long	.LVL1152
	.value	0x1
	.byte	0x50
	.long	.LVL1152
	.long	.LVL1153
	.value	0x1
	.byte	0x51
	.long	.LVL1153
	.long	.LVL1154
	.value	0x1
	.byte	0x50
	.long	.LVL1154
	.long	.LVL1159
	.value	0x1
	.byte	0x51
	.long	.LVL1160
	.long	.LFE716
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST448:
	.long	.LVL1129
	.long	.LVL1131
	.value	0x1
	.byte	0x51
	.long	.LVL1135
	.long	.LVL1136
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST449:
	.long	.LVL1139
	.long	.LVL1145
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST450:
	.long	.LVL1142
	.long	.LVL1143
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST451:
	.long	.LVL1141
	.long	.LVL1148
	.value	0x1
	.byte	0x56
	.long	.LVL1148
	.long	.LVL1149
	.value	0x1
	.byte	0x50
	.long	.LVL1155
	.long	.LVL1157
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST452:
	.long	.LVL1140
	.long	.LVL1144
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST453:
	.long	.LFB707
	.long	.LCFI229
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI229
	.long	.LCFI230
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI230
	.long	.LCFI231
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI231
	.long	.LCFI232
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI232
	.long	.LCFI233
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI233
	.long	.LCFI234
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI234
	.long	.LCFI235
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI235
	.long	.LCFI236
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI236
	.long	.LCFI237
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI237
	.long	.LCFI238
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI238
	.long	.LCFI239
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI239
	.long	.LCFI240
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	.LCFI240
	.long	.LFE707
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	0x0
	.long	0x0
.LLST454:
	.long	.LVL1161
	.long	.LVL1163
	.value	0x1
	.byte	0x50
	.long	.LVL1203
	.long	.LVL1204
	.value	0x1
	.byte	0x50
	.long	.LVL1209
	.long	.LVL1210
	.value	0x1
	.byte	0x50
	.long	.LVL1211
	.long	.LVL1212
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST455:
	.long	.LVL1162
	.long	.LVL1189
	.value	0x1
	.byte	0x53
	.long	.LVL1198
	.long	.LVL1200
	.value	0x1
	.byte	0x53
	.long	.LVL1201
	.long	.LVL1213
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST456:
	.long	.LVL1178
	.long	.LVL1180
	.value	0x1
	.byte	0x50
	.long	.LVL1182
	.long	.LVL1183
	.value	0x1
	.byte	0x50
	.long	.LVL1185
	.long	.LVL1186
	.value	0x1
	.byte	0x50
	.long	.LVL1201
	.long	.LVL1202
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST457:
	.long	.LVL1163
	.long	.LVL1165
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST458:
	.long	.LVL1164
	.long	.LVL1195
	.value	0x1
	.byte	0x56
	.long	.LVL1198
	.long	.LVL1200
	.value	0x1
	.byte	0x56
	.long	.LVL1201
	.long	.LVL1203
	.value	0x1
	.byte	0x56
	.long	.LVL1211
	.long	.LVL1214
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST459:
	.long	.LVL1165
	.long	.LVL1166
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST460:
	.long	.LVL1167
	.long	.LVL1169
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST461:
	.long	.LVL1168
	.long	.LVL1173
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL1174
	.long	.LVL1175
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST462:
	.long	.LVL1171
	.long	.LVL1177
	.value	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST463:
	.long	.LVL1179
	.long	.LVL1181
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST464:
	.long	.LVL1183
	.long	.LVL1184
	.value	0x1
	.byte	0x50
	.long	.LVL1187
	.long	.LVL1188
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST465:
	.long	.LVL1188
	.long	.LVL1190
	.value	0x1
	.byte	0x50
	.long	.LVL1201
	.long	.LVL1202
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST466:
	.long	.LVL1192
	.long	.LVL1199
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	.LVL1200
	.long	.LVL1203
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	.LVL1211
	.long	.LVL1213
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST467:
	.long	.LVL1189
	.long	.LVL1192
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST468:
	.long	.LVL1196
	.long	.LVL1197
	.value	0x1
	.byte	0x50
	.long	.LVL1201
	.long	.LVL1202
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST469:
	.long	.LVL1207
	.long	.LVL1208
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST470:
	.long	.LVL1204
	.long	.LVL1207
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST471:
	.long	.LVL1205
	.long	.LVL1206
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST472:
	.long	.LFB1420
	.long	.LCFI241
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI241
	.long	.LCFI242
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI242
	.long	.LCFI243
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI243
	.long	.LCFI244
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI244
	.long	.LCFI245
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI245
	.long	.LFE1420
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST473:
	.long	.LVL1216
	.long	.LVL1221
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST474:
	.long	.LVL1217
	.long	.LVL1218
	.value	0x1
	.byte	0x50
	.long	.LVL1219
	.long	.LVL1220
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST475:
	.long	.LFB1423
	.long	.LCFI246
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI246
	.long	.LCFI247
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI247
	.long	.LCFI248
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI248
	.long	.LCFI249
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI249
	.long	.LCFI250
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI250
	.long	.LCFI251
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI251
	.long	.LCFI252
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI252
	.long	.LCFI253
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI253
	.long	.LCFI254
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI254
	.long	.LCFI255
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI255
	.long	.LCFI256
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI256
	.long	.LFE1423
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST476:
	.long	.LVL1222
	.long	.LVL1224
	.value	0x1
	.byte	0x50
	.long	.LVL1224
	.long	.LVL1228
	.value	0x1
	.byte	0x53
	.long	.LVL1242
	.long	.LVL1247
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST477:
	.long	.LVL1222
	.long	.LVL1225
	.value	0x1
	.byte	0x52
	.long	.LVL1225
	.long	.LVL1246
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST478:
	.long	.LVL1226
	.long	.LVL1227
	.value	0x1
	.byte	0x57
	.long	.LVL1227
	.long	.LVL1228
	.value	0x1
	.byte	0x50
	.long	.LVL1228
	.long	.LVL1230
	.value	0x1
	.byte	0x57
	.long	.LVL1230
	.long	.LVL1231
	.value	0x1
	.byte	0x50
	.long	.LVL1231
	.long	.LVL1239
	.value	0x1
	.byte	0x57
	.long	.LVL1239
	.long	.LVL1240
	.value	0x1
	.byte	0x50
	.long	.LVL1240
	.long	.LVL1243
	.value	0x1
	.byte	0x57
	.long	.LVL1243
	.long	.LVL1244
	.value	0x1
	.byte	0x50
	.long	.LVL1244
	.long	.LVL1245
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST479:
	.long	.LVL1223
	.long	.LVL1248
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST480:
	.long	.LVL1229
	.long	.LVL1247
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST481:
	.long	.LVL1233
	.long	.LVL1236
	.value	0x1
	.byte	0x52
	.long	.LVL1237
	.long	.LVL1238
	.value	0x1
	.byte	0x52
	.long	.LVL1240
	.long	.LFE1423
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST482:
	.long	.LVL1234
	.long	.LVL1235
	.value	0x1
	.byte	0x50
	.long	.LVL1240
	.long	.LVL1241
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST483:
	.long	.LVL1233
	.long	.LVL1234
	.value	0x1
	.byte	0x50
	.long	.LVL1241
	.long	.LVL1243
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST484:
	.long	.LFB1427
	.long	.LCFI257
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI257
	.long	.LCFI258
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI258
	.long	.LCFI259
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI259
	.long	.LCFI260
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI260
	.long	.LCFI261
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI261
	.long	.LCFI262
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI262
	.long	.LCFI263
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI263
	.long	.LCFI264
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI264
	.long	.LCFI265
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI265
	.long	.LCFI266
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI266
	.long	.LCFI267
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI267
	.long	.LCFI268
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI268
	.long	.LCFI269
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI269
	.long	.LCFI270
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI270
	.long	.LCFI271
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI271
	.long	.LCFI272
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI272
	.long	.LFE1427
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	0x0
	.long	0x0
.LLST485:
	.long	.LVL1249
	.long	.LVL1251
	.value	0x1
	.byte	0x50
	.long	.LVL1251
	.long	.LVL1270
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST486:
	.long	.LVL1249
	.long	.LVL1252
	.value	0x1
	.byte	0x52
	.long	.LVL1252
	.long	.LVL1268
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST487:
	.long	.LVL1249
	.long	.LVL1250
	.value	0x1
	.byte	0x51
	.long	.LVL1250
	.long	.LVL1269
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST488:
	.long	.LVL1250
	.long	.LVL1255
	.value	0x1
	.byte	0x51
	.long	.LVL1262
	.long	.LVL1264
	.value	0x1
	.byte	0x51
	.long	.LVL1265
	.long	.LVL1266
	.value	0x1
	.byte	0x51
	.long	.LVL1267
	.long	.LFE1427
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST489:
	.long	.LVL1253
	.long	.LVL1254
	.value	0x1
	.byte	0x50
	.long	.LVL1262
	.long	.LVL1263
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST490:
	.long	.LVL1254
	.long	.LVL1256
	.value	0x1
	.byte	0x50
	.long	.LVL1257
	.long	.LVL1258
	.value	0x1
	.byte	0x50
	.long	.LVL1259
	.long	.LVL1261
	.value	0x1
	.byte	0x50
	.long	.LVL1266
	.long	.LVL1267
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST491:
	.long	.LFB1428
	.long	.LCFI273
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI273
	.long	.LCFI274
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI274
	.long	.LCFI275
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI275
	.long	.LCFI276
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI276
	.long	.LCFI277
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI277
	.long	.LFE1428
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	0x0
	.long	0x0
.LLST492:
	.long	.LVL1271
	.long	.LVL1274
	.value	0x1
	.byte	0x50
	.long	.LVL1274
	.long	.LVL1276
	.value	0x1
	.byte	0x53
	.long	.LVL1276
	.long	.LVL1277
	.value	0x1
	.byte	0x50
	.long	.LVL1277
	.long	.LVL1286
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST493:
	.long	.LVL1271
	.long	.LVL1272
	.value	0x1
	.byte	0x52
	.long	.LVL1272
	.long	.LVL1288
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST494:
	.long	.LVL1271
	.long	.LVL1272
	.value	0x1
	.byte	0x51
	.long	.LVL1272
	.long	.LVL1287
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST495:
	.long	.LVL1275
	.long	.LVL1276
	.value	0x1
	.byte	0x50
	.long	.LVL1278
	.long	.LVL1279
	.value	0x1
	.byte	0x50
	.long	.LVL1280
	.long	.LVL1281
	.value	0x1
	.byte	0x50
	.long	.LVL1282
	.long	.LVL1283
	.value	0x1
	.byte	0x50
	.long	.LVL1284
	.long	.LVL1285
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST496:
	.long	.LVL1273
	.long	.LVL1276
	.value	0x2
	.byte	0x74
	.sleb128 3
	.long	.LVL1280
	.long	.LFE1428
	.value	0x2
	.byte	0x74
	.sleb128 3
	.long	0x0
	.long	0x0
.LLST497:
	.long	.LFB1429
	.long	.LCFI278
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI278
	.long	.LCFI279
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI279
	.long	.LCFI280
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI280
	.long	.LCFI281
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI281
	.long	.LCFI282
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI282
	.long	.LFE1429
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	0x0
	.long	0x0
.LLST498:
	.long	.LVL1289
	.long	.LVL1290
	.value	0x1
	.byte	0x50
	.long	.LVL1290
	.long	.LVL1350
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST499:
	.long	.LVL1289
	.long	.LVL1296
	.value	0x1
	.byte	0x52
	.long	.LVL1296
	.long	.LVL1327
	.value	0x1
	.byte	0x57
	.long	.LVL1328
	.long	.LVL1330
	.value	0x1
	.byte	0x52
	.long	.LVL1344
	.long	.LVL1351
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST500:
	.long	.LVL1289
	.long	.LVL1297
	.value	0x1
	.byte	0x51
	.long	.LVL1297
	.long	.LVL1349
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST501:
	.long	.LVL1346
	.long	.LVL1348
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST502:
	.long	.LVL1295
	.long	.LVL1300
	.value	0x2
	.byte	0x74
	.sleb128 14
	.long	.LVL1300
	.long	.LVL1301
	.value	0x2
	.byte	0x91
	.sleb128 -22
	.long	.LVL1301
	.long	.LVL1302
	.value	0x2
	.byte	0x74
	.sleb128 14
	.long	.LVL1302
	.long	.LFE1429
	.value	0x2
	.byte	0x91
	.sleb128 -22
	.long	0x0
	.long	0x0
.LLST503:
	.long	.LVL1298
	.long	.LVL1299
	.value	0x1
	.byte	0x51
	.long	.LVL1299
	.long	.LVL1303
	.value	0x1
	.byte	0x50
	.long	.LVL1303
	.long	.LVL1304
	.value	0x1
	.byte	0x51
	.long	.LVL1305
	.long	.LVL1306
	.value	0x1
	.byte	0x51
	.long	.LVL1306
	.long	.LVL1307
	.value	0x1
	.byte	0x50
	.long	.LVL1308
	.long	.LVL1309
	.value	0x1
	.byte	0x50
	.long	.LVL1310
	.long	.LVL1311
	.value	0x1
	.byte	0x51
	.long	.LVL1311
	.long	.LVL1312
	.value	0x1
	.byte	0x50
	.long	.LVL1313
	.long	.LVL1315
	.value	0x1
	.byte	0x50
	.long	.LVL1316
	.long	.LVL1317
	.value	0x1
	.byte	0x50
	.long	.LVL1318
	.long	.LVL1319
	.value	0x1
	.byte	0x51
	.long	.LVL1319
	.long	.LVL1320
	.value	0x1
	.byte	0x50
	.long	.LVL1320
	.long	.LVL1321
	.value	0x1
	.byte	0x51
	.long	.LVL1322
	.long	.LVL1323
	.value	0x1
	.byte	0x51
	.long	.LVL1323
	.long	.LVL1324
	.value	0x1
	.byte	0x50
	.long	.LVL1324
	.long	.LVL1326
	.value	0x1
	.byte	0x51
	.long	.LVL1326
	.long	.LVL1327
	.value	0x1
	.byte	0x50
	.long	.LVL1327
	.long	.LVL1329
	.value	0x1
	.byte	0x51
	.long	.LVL1331
	.long	.LVL1333
	.value	0x1
	.byte	0x55
	.long	.LVL1333
	.long	.LVL1335
	.value	0x1
	.byte	0x50
	.long	.LVL1335
	.long	.LVL1336
	.value	0x1
	.byte	0x55
	.long	.LVL1336
	.long	.LVL1337
	.value	0x1
	.byte	0x51
	.long	.LVL1337
	.long	.LVL1340
	.value	0x1
	.byte	0x50
	.long	.LVL1340
	.long	.LVL1341
	.value	0x1
	.byte	0x55
	.long	.LVL1341
	.long	.LVL1342
	.value	0x1
	.byte	0x51
	.long	.LVL1342
	.long	.LVL1344
	.value	0x1
	.byte	0x50
	.long	.LVL1344
	.long	.LVL1345
	.value	0x1
	.byte	0x51
	.long	.LVL1345
	.long	.LVL1347
	.value	0x1
	.byte	0x55
	.long	.LVL1347
	.long	.LFE1429
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST504:
	.long	.LVL1291
	.long	.LVL1292
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST505:
	.long	.LVL1292
	.long	.LVL1294
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST506:
	.long	.LVL1332
	.long	.LVL1351
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST508:
	.long	.LVL1352
	.long	.LVL1354
	.value	0x1
	.byte	0x50
	.long	.LVL1355
	.long	.LVL1356
	.value	0x1
	.byte	0x50
	.long	.LVL1357
	.long	.LVL1358
	.value	0x1
	.byte	0x50
	.long	.LVL1359
	.long	.LVL1362
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST509:
	.long	.LVL1352
	.long	.LVL1361
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST510:
	.long	.LVL1353
	.long	.LVL1360
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST511:
	.long	.LVL1356
	.long	.LVL1357
	.value	0x1
	.byte	0x50
	.long	.LVL1358
	.long	.LVL1359
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST512:
	.long	.LFB827
	.long	.LCFI283
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI283
	.long	.LCFI284
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI284
	.long	.LCFI285
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI285
	.long	.LCFI286
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI286
	.long	.LCFI287
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI287
	.long	.LCFI288
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI288
	.long	.LFE827
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	0x0
	.long	0x0
.LLST513:
	.long	.LVL1363
	.long	.LVL1364
	.value	0x1
	.byte	0x50
	.long	.LVL1364
	.long	.LVL1412
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST514:
	.long	.LVL1365
	.long	.LVL1369
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST515:
	.long	.LVL1366
	.long	.LVL1370
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST516:
	.long	.LVL1371
	.long	.LVL1376
	.value	0x1
	.byte	0x52
	.long	.LVL1410
	.long	.LFE827
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST517:
	.long	.LVL1373
	.long	.LVL1377
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST518:
	.long	.LVL1372
	.long	.LVL1373
	.value	0x1
	.byte	0x50
	.long	.LVL1410
	.long	.LFE827
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST519:
	.long	.LVL1379
	.long	.LVL1381
	.value	0x2
	.byte	0x74
	.sleb128 7
	.long	.LVL1394
	.long	.LVL1397
	.value	0x2
	.byte	0x74
	.sleb128 7
	.long	.LVL1408
	.long	.LVL1409
	.value	0x2
	.byte	0x74
	.sleb128 7
	.long	.LVL1410
	.long	.LFE827
	.value	0x2
	.byte	0x74
	.sleb128 7
	.long	0x0
	.long	0x0
.LLST520:
	.long	.LVL1378
	.long	.LVL1380
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST521:
	.long	.LVL1382
	.long	.LVL1383
	.value	0x2
	.byte	0x74
	.sleb128 7
	.long	.LVL1394
	.long	.LVL1397
	.value	0x2
	.byte	0x74
	.sleb128 7
	.long	.LVL1408
	.long	.LVL1409
	.value	0x2
	.byte	0x74
	.sleb128 7
	.long	.LVL1410
	.long	.LFE827
	.value	0x2
	.byte	0x74
	.sleb128 7
	.long	0x0
	.long	0x0
.LLST522:
	.long	.LVL1384
	.long	.LVL1385
	.value	0x1
	.byte	0x50
	.long	.LVL1396
	.long	.LVL1397
	.value	0x1
	.byte	0x50
	.long	.LVL1410
	.long	.LFE827
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST523:
	.long	.LVL1386
	.long	.LVL1389
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST524:
	.long	.LVL1387
	.long	.LVL1388
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST525:
	.long	.LVL1390
	.long	.LVL1391
	.value	0x1
	.byte	0x50
	.long	.LVL1396
	.long	.LVL1397
	.value	0x1
	.byte	0x50
	.long	.LVL1410
	.long	.LFE827
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST526:
	.long	.LVL1392
	.long	.LVL1393
	.value	0x1
	.byte	0x50
	.long	.LVL1396
	.long	.LVL1397
	.value	0x1
	.byte	0x50
	.long	.LVL1410
	.long	.LFE827
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST527:
	.long	.LVL1395
	.long	.LVL1397
	.value	0x1
	.byte	0x50
	.long	.LVL1408
	.long	.LVL1409
	.value	0x1
	.byte	0x50
	.long	.LVL1410
	.long	.LFE827
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST528:
	.long	.LVL1398
	.long	.LVL1409
	.value	0x1
	.byte	0x56
	.long	.LVL1411
	.long	.LVL1413
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST529:
	.long	.LVL1399
	.long	.LVL1405
	.value	0x1
	.byte	0x51
	.long	.LVL1406
	.long	.LVL1409
	.value	0x1
	.byte	0x51
	.long	.LVL1411
	.long	.LFE827
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST530:
	.long	.LVL1401
	.long	.LVL1404
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST531:
	.long	.LFB2954
	.long	.LCFI289
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI289
	.long	.LCFI290
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI290
	.long	.LCFI291
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI291
	.long	.LCFI292
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI292
	.long	.LCFI293
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI293
	.long	.LFE2954
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	0x0
	.long	0x0
.LLST532:
	.long	.LVL1414
	.long	.LVL1415
	.value	0x1
	.byte	0x50
	.long	.LVL1415
	.long	.LVL1422
	.value	0x1
	.byte	0x52
	.long	.LVL1423
	.long	.LVL1479
	.value	0x1
	.byte	0x52
	.long	.LVL1480
	.long	.LFE2954
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST533:
	.long	.LVL1420
	.long	.LVL1421
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST534:
	.long	.LVL1432
	.long	.LVL1433
	.value	0x1
	.byte	0x51
	.long	.LVL1493
	.long	.LFE2954
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST535:
	.long	.LVL1434
	.long	.LVL1438
	.value	0x1
	.byte	0x51
	.long	.LVL1493
	.long	.LFE2954
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST536:
	.long	.LVL1439
	.long	.LVL1440
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST537:
	.long	.LVL1435
	.long	.LVL1437
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST538:
	.long	.LVL1436
	.long	.LVL1439
	.value	0x1
	.byte	0x53
	.long	.LVL1493
	.long	.LVL1495
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST539:
	.long	.LVL1424
	.long	.LVL1425
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST540:
	.long	.LVL1426
	.long	.LVL1429
	.value	0x1
	.byte	0x53
	.long	.LVL1493
	.long	.LVL1495
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST541:
	.long	.LVL1427
	.long	.LVL1430
	.value	0x1
	.byte	0x51
	.long	.LVL1493
	.long	.LFE2954
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST542:
	.long	.LVL1428
	.long	.LVL1431
	.value	0x1
	.byte	0x56
	.long	.LVL1441
	.long	.LVL1442
	.value	0x1
	.byte	0x56
	.long	.LVL1493
	.long	.LVL1496
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST543:
	.long	.LVL1443
	.long	.LVL1456
	.value	0x2
	.byte	0x91
	.sleb128 -21
	.long	.LVL1492
	.long	.LFE2954
	.value	0x2
	.byte	0x91
	.sleb128 -21
	.long	0x0
	.long	0x0
.LLST544:
	.long	.LVL1448
	.long	.LVL1449
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST545:
	.long	.LVL1444
	.long	.LVL1447
	.value	0x1
	.byte	0x55
	.long	.LVL1454
	.long	.LVL1455
	.value	0x1
	.byte	0x55
	.long	.LVL1492
	.long	.LVL1493
	.value	0x1
	.byte	0x55
	.long	.LVL1494
	.long	.LVL1498
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST546:
	.long	.LVL1445
	.long	.LVL1446
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST547:
	.long	.LVL1449
	.long	.LVL1452
	.value	0x1
	.byte	0x53
	.long	.LVL1455
	.long	.LVL1456
	.value	0x1
	.byte	0x53
	.long	.LVL1493
	.long	.LVL1495
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST548:
	.long	.LVL1450
	.long	.LVL1453
	.value	0x1
	.byte	0x51
	.long	.LVL1455
	.long	.LVL1456
	.value	0x1
	.byte	0x51
	.long	.LVL1493
	.long	.LFE2954
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST549:
	.long	.LVL1451
	.long	.LVL1454
	.value	0x1
	.byte	0x56
	.long	.LVL1455
	.long	.LVL1456
	.value	0x1
	.byte	0x56
	.long	.LVL1493
	.long	.LVL1496
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST550:
	.long	.LVL1416
	.long	.LVL1419
	.value	0x1
	.byte	0x56
	.long	.LVL1457
	.long	.LVL1470
	.value	0x1
	.byte	0x56
	.long	.LVL1493
	.long	.LVL1496
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST551:
	.long	.LVL1458
	.long	.LVL1466
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST552:
	.long	.LVL1416
	.long	.LVL1419
	.value	0x1
	.byte	0x51
	.long	.LVL1467
	.long	.LVL1470
	.value	0x1
	.byte	0x51
	.long	.LVL1493
	.long	.LFE2954
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST553:
	.long	.LVL1460
	.long	.LVL1463
	.value	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST554:
	.long	.LVL1461
	.long	.LVL1465
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST555:
	.long	.LVL1417
	.long	.LVL1418
	.value	0x1
	.byte	0x50
	.long	.LVL1469
	.long	.LVL1470
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST556:
	.long	.LVL1416
	.long	.LVL1417
	.value	0x1
	.byte	0x50
	.long	.LVL1468
	.long	.LVL1469
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST557:
	.long	.LVL1471
	.long	.LVL1472
	.value	0x1
	.byte	0x50
	.long	.LVL1493
	.long	.LFE2954
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST558:
	.long	.LVL1473
	.long	.LVL1476
	.value	0x1
	.byte	0x56
	.long	.LVL1494
	.long	.LVL1496
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST559:
	.long	.LVL1475
	.long	.LVL1476
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	.LVL1494
	.long	.LVL1495
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST560:
	.long	.LVL1477
	.long	.LVL1478
	.value	0x1
	.byte	0x50
	.long	.LVL1493
	.long	.LFE2954
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST561:
	.long	.LVL1481
	.long	.LVL1482
	.value	0x1
	.byte	0x50
	.long	.LVL1483
	.long	.LVL1484
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST562:
	.long	.LVL1485
	.long	.LVL1490
	.value	0x1
	.byte	0x53
	.long	.LVL1491
	.long	.LVL1493
	.value	0x1
	.byte	0x53
	.long	.LVL1494
	.long	.LVL1495
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST563:
	.long	.LVL1486
	.long	.LVL1491
	.value	0x1
	.byte	0x55
	.long	.LVL1493
	.long	.LVL1498
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST564:
	.long	.LVL1487
	.long	.LVL1491
	.value	0x1
	.byte	0x51
	.long	.LVL1493
	.long	.LFE2954
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST565:
	.long	.LVL1488
	.long	.LVL1491
	.value	0x1
	.byte	0x56
	.long	.LVL1493
	.long	.LVL1496
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST566:
	.long	.LVL1488
	.long	.LVL1491
	.value	0x1
	.byte	0x57
	.long	.LVL1493
	.long	.LVL1497
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST567:
	.long	.LVL1488
	.long	.LVL1489
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST568:
	.long	.LFB915
	.long	.LCFI294
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI294
	.long	.LCFI295
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI295
	.long	.LCFI296
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI296
	.long	.LCFI297
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI297
	.long	.LCFI298
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI298
	.long	.LCFI299
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI299
	.long	.LCFI300
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI300
	.long	.LFE915
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST569:
	.long	.LVL1499
	.long	.LVL1500
	.value	0x1
	.byte	0x50
	.long	.LVL1500
	.long	.LVL1542
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST570:
	.long	.LVL1506
	.long	.LVL1511
	.value	0x1
	.byte	0x52
	.long	.LVL1512
	.long	.LVL1516
	.value	0x1
	.byte	0x52
	.long	.LVL1525
	.long	.LVL1527
	.value	0x1
	.byte	0x52
	.long	.LVL1530
	.long	.LVL1531
	.value	0x1
	.byte	0x52
	.long	.LVL1533
	.long	.LVL1534
	.value	0x1
	.byte	0x52
	.long	.LVL1535
	.long	.LVL1536
	.value	0x1
	.byte	0x52
	.long	.LVL1538
	.long	.LFE915
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST571:
	.long	.LVL1505
	.long	.LVL1510
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST572:
	.long	.LVL1502
	.long	.LVL1515
	.value	0x1
	.byte	0x57
	.long	.LVL1525
	.long	.LVL1540
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST573:
	.long	.LVL1503
	.long	.LVL1504
	.value	0x1
	.byte	0x50
	.long	.LVL1509
	.long	.LVL1510
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST574:
	.long	.LVL1513
	.long	.LVL1514
	.value	0x1
	.byte	0x50
	.long	.LVL1539
	.long	.LFE915
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST575:
	.long	.LVL1517
	.long	.LVL1520
	.value	0x1
	.byte	0x50
	.long	.LVL1520
	.long	.LVL1521
	.value	0x1
	.byte	0x51
	.long	.LVL1521
	.long	.LVL1525
	.value	0x1
	.byte	0x50
	.long	.LVL1539
	.long	.LFE915
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST576:
	.long	.LVL1518
	.long	.LVL1522
	.value	0x1
	.byte	0x55
	.long	.LVL1524
	.long	.LVL1525
	.value	0x1
	.byte	0x55
	.long	.LVL1539
	.long	.LVL1541
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST577:
	.long	.LVL1519
	.long	.LVL1523
	.value	0x1
	.byte	0x52
	.long	.LVL1524
	.long	.LVL1525
	.value	0x1
	.byte	0x52
	.long	.LVL1539
	.long	.LFE915
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST578:
	.long	.LVL1529
	.long	.LVL1532
	.value	0x1
	.byte	0x50
	.long	.LVL1539
	.long	.LFE915
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST579:
	.long	.LVL1526
	.long	.LVL1528
	.value	0x1
	.byte	0x50
	.long	.LVL1530
	.long	.LVL1532
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST580:
	.long	.LVL1536
	.long	.LVL1537
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST581:
	.long	.LFB1433
	.long	.LCFI301
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI301
	.long	.LCFI302
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI302
	.long	.LFE1433
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST582:
	.long	.LVL1543
	.long	.LVL1544
	.value	0x1
	.byte	0x50
	.long	.LVL1545
	.long	.LVL1549
	.value	0x1
	.byte	0x50
	.long	.LVL1549
	.long	.LVL1550
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST583:
	.long	.LVL1546
	.long	.LVL1547
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST584:
	.long	.LVL1547
	.long	.LVL1549
	.value	0x1
	.byte	0x52
	.long	.LVL1549
	.long	.LFE1433
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST585:
	.long	.LFB1434
	.long	.LCFI303
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI303
	.long	.LCFI304
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI304
	.long	.LFE1434
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST586:
	.long	.LVL1551
	.long	.LVL1552
	.value	0x1
	.byte	0x50
	.long	.LVL1553
	.long	.LVL1557
	.value	0x1
	.byte	0x50
	.long	.LVL1557
	.long	.LVL1558
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST587:
	.long	.LVL1554
	.long	.LVL1557
	.value	0x1
	.byte	0x51
	.long	.LVL1557
	.long	.LFE1434
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST588:
	.long	.LVL1555
	.long	.LVL1557
	.value	0x1
	.byte	0x52
	.long	.LVL1557
	.long	.LFE1434
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST589:
	.long	.LFB1575
	.long	.LCFI305
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI305
	.long	.LCFI306
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI306
	.long	.LCFI307
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI307
	.long	.LCFI308
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI308
	.long	.LCFI309
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI309
	.long	.LCFI310
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI310
	.long	.LCFI311
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI311
	.long	.LCFI312
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI312
	.long	.LCFI313
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI313
	.long	.LFE1575
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST590:
	.long	.LVL1559
	.long	.LVL1560
	.value	0x1
	.byte	0x50
	.long	.LVL1560
	.long	.LFE1575
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST591:
	.long	.LFB1638
	.long	.LCFI314
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI314
	.long	.LCFI315
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI315
	.long	.LCFI316
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI316
	.long	.LCFI317
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI317
	.long	.LCFI318
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI318
	.long	.LCFI319
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI319
	.long	.LFE1638
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST592:
	.long	.LVL1561
	.long	.LVL1563
	.value	0x1
	.byte	0x50
	.long	.LVL1563
	.long	.LVL1568
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST593:
	.long	.LVL1562
	.long	.LVL1563
	.value	0x1
	.byte	0x56
	.long	.LVL1563
	.long	.LVL1564
	.value	0x1
	.byte	0x50
	.long	.LVL1565
	.long	.LVL1569
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST594:
	.long	.LVL1566
	.long	.LVL1567
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST595:
	.long	.LFB2215
	.long	.LCFI320
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI320
	.long	.LCFI321
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI321
	.long	.LCFI322
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI322
	.long	.LCFI323
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI323
	.long	.LCFI324
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI324
	.long	.LCFI325
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI325
	.long	.LCFI326
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI326
	.long	.LCFI327
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI327
	.long	.LCFI328
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI328
	.long	.LCFI329
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI329
	.long	.LCFI330
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI330
	.long	.LFE2215
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	0x0
	.long	0x0
.LLST596:
	.long	.LVL1570
	.long	.LVL1572
	.value	0x1
	.byte	0x50
	.long	.LVL1572
	.long	.LVL1579
	.value	0x1
	.byte	0x51
	.long	.LVL1580
	.long	.LVL1582
	.value	0x1
	.byte	0x51
	.long	.LVL1585
	.long	.LFE2215
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST597:
	.long	.LVL1574
	.long	.LVL1583
	.value	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.long	.LVL1585
	.long	.LVL1586
	.value	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST598:
	.long	.LVL1577
	.long	.LVL1578
	.value	0x1
	.byte	0x52
	.long	.LVL1581
	.long	.LVL1582
	.value	0x1
	.byte	0x52
	.long	.LVL1585
	.long	.LFE2215
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST599:
	.long	.LVL1571
	.long	.LVL1574
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST600:
	.long	.LFB2216
	.long	.LCFI331
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI331
	.long	.LCFI332
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI332
	.long	.LCFI333
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI333
	.long	.LCFI334
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI334
	.long	.LCFI335
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI335
	.long	.LCFI336
	.value	0x3
	.byte	0x74
	.sleb128 152
	.long	.LCFI336
	.long	.LCFI337
	.value	0x3
	.byte	0x74
	.sleb128 156
	.long	.LCFI337
	.long	.LCFI338
	.value	0x3
	.byte	0x74
	.sleb128 152
	.long	.LCFI338
	.long	.LCFI339
	.value	0x3
	.byte	0x74
	.sleb128 156
	.long	.LCFI339
	.long	.LCFI340
	.value	0x3
	.byte	0x74
	.sleb128 160
	.long	.LCFI340
	.long	.LCFI341
	.value	0x3
	.byte	0x74
	.sleb128 164
	.long	.LCFI341
	.long	.LFE2216
	.value	0x3
	.byte	0x74
	.sleb128 152
	.long	0x0
	.long	0x0
.LLST601:
	.long	.LVL1588
	.long	.LVL1597
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST602:
	.long	.LVL1588
	.long	.LVL1589
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST603:
	.long	.LVL1588
	.long	.LVL1590
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST604:
	.long	.LVL1595
	.long	.LVL1610
	.value	0x1
	.byte	0x52
	.long	.LVL1621
	.long	.LVL1625
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST605:
	.long	.LVL1599
	.long	.LVL1635
	.value	0x1
	.byte	0x56
	.long	.LVL1645
	.long	.LVL1647
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST606:
	.long	.LVL1605
	.long	.LVL1630
	.value	0x1
	.byte	0x53
	.long	.LVL1645
	.long	.LVL1646
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST607:
	.long	.LVL1591
	.long	.LVL1592
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST608:
	.long	.LVL1593
	.long	.LVL1603
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST609:
	.long	.LVL1594
	.long	.LVL1595
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST610:
	.long	.LVL1598
	.long	.LVL1600
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST611:
	.long	.LVL1600
	.long	.LVL1602
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST612:
	.long	.LVL1602
	.long	.LVL1604
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST613:
	.long	.LVL1606
	.long	.LVL1607
	.value	0x1
	.byte	0x55
	.long	.LVL1608
	.long	.LVL1622
	.value	0x1
	.byte	0x55
	.long	.LVL1628
	.long	.LVL1648
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST614:
	.long	.LVL1611
	.long	.LVL1613
	.value	0x1
	.byte	0x50
	.long	.LVL1628
	.long	.LVL1629
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST615:
	.long	.LVL1606
	.long	.LVL1609
	.value	0x1
	.byte	0x50
	.long	.LVL1613
	.long	.LVL1614
	.value	0x1
	.byte	0x50
	.long	.LVL1615
	.long	.LVL1623
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST616:
	.long	.LVL1616
	.long	.LVL1617
	.value	0x1
	.byte	0x52
	.long	.LVL1618
	.long	.LVL1619
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST617:
	.long	.LVL1624
	.long	.LVL1625
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST618:
	.long	.LVL1622
	.long	.LVL1623
	.value	0x1
	.byte	0x50
	.long	.LVL1626
	.long	.LVL1627
	.value	0x1
	.byte	0x50
	.long	.LVL1628
	.long	.LVL1629
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST619:
	.long	.LVL1631
	.long	.LVL1632
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST620:
	.long	.LVL1633
	.long	.LVL1642
	.value	0x1
	.byte	0x51
	.long	.LVL1643
	.long	.LFE2216
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST621:
	.long	.LVL1637
	.long	.LVL1646
	.value	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST622:
	.long	.LVL1634
	.long	.LVL1636
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST623:
	.long	.LVL1640
	.long	.LVL1641
	.value	0x1
	.byte	0x50
	.long	.LVL1644
	.long	.LVL1645
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST624:
	.long	.LFB2389
	.long	.LCFI342
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI342
	.long	.LCFI343
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI343
	.long	.LCFI344
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI344
	.long	.LCFI345
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI345
	.long	.LCFI346
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI346
	.long	.LCFI347
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI347
	.long	.LCFI348
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI348
	.long	.LCFI349
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI349
	.long	.LCFI350
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI350
	.long	.LCFI351
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI351
	.long	.LCFI352
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI352
	.long	.LFE2389
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	0x0
	.long	0x0
.LLST625:
	.long	.LVL1649
	.long	.LVL1651
	.value	0x1
	.byte	0x50
	.long	.LVL1651
	.long	.LVL1658
	.value	0x1
	.byte	0x51
	.long	.LVL1659
	.long	.LVL1661
	.value	0x1
	.byte	0x51
	.long	.LVL1662
	.long	.LFE2389
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST626:
	.long	.LVL1653
	.long	.LVL1663
	.value	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST627:
	.long	.LVL1656
	.long	.LVL1657
	.value	0x1
	.byte	0x52
	.long	.LVL1660
	.long	.LVL1661
	.value	0x1
	.byte	0x52
	.long	.LVL1662
	.long	.LFE2389
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST628:
	.long	.LVL1650
	.long	.LVL1653
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST629:
	.long	.LFB2390
	.long	.LCFI353
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI353
	.long	.LCFI354
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI354
	.long	.LCFI355
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI355
	.long	.LCFI356
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI356
	.long	.LCFI357
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI357
	.long	.LCFI358
	.value	0x3
	.byte	0x74
	.sleb128 216
	.long	.LCFI358
	.long	.LCFI359
	.value	0x3
	.byte	0x74
	.sleb128 220
	.long	.LCFI359
	.long	.LFE2390
	.value	0x3
	.byte	0x74
	.sleb128 216
	.long	0x0
	.long	0x0
.LLST630:
	.long	.LVL1665
	.long	.LVL1667
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST631:
	.long	.LVL1665
	.long	.LVL1670
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST632:
	.long	.LVL1665
	.long	.LVL1672
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST633:
	.long	.LVL1666
	.long	.LVL1712
	.value	0x1
	.byte	0x53
	.long	.LVL1723
	.long	.LVL1725
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST634:
	.long	.LVL1684
	.long	.LVL1726
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST635:
	.long	.LVL1667
	.long	.LVL1669
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST636:
	.long	.LVL1671
	.long	.LVL1690
	.value	0x1
	.byte	0x52
	.long	.LVL1704
	.long	.LVL1708
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST637:
	.long	.LVL1673
	.long	.LVL1677
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST638:
	.long	.LVL1674
	.long	.LVL1675
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST639:
	.long	.LVL1678
	.long	.LVL1680
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST640:
	.long	.LVL1679
	.long	.LVL1681
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST641:
	.long	.LVL1682
	.long	.LVL1683
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST642:
	.long	.LVL1686
	.long	.LVL1687
	.value	0x1
	.byte	0x55
	.long	.LVL1688
	.long	.LVL1705
	.value	0x1
	.byte	0x55
	.long	.LVL1710
	.long	.LVL1727
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST643:
	.long	.LVL1691
	.long	.LVL1693
	.value	0x1
	.byte	0x50
	.long	.LVL1710
	.long	.LVL1711
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST644:
	.long	.LVL1686
	.long	.LVL1689
	.value	0x1
	.byte	0x50
	.long	.LVL1695
	.long	.LVL1696
	.value	0x1
	.byte	0x50
	.long	.LVL1699
	.long	.LVL1706
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST645:
	.long	.LVL1694
	.long	.LVL1695
	.value	0x1
	.byte	0x50
	.long	.LVL1696
	.long	.LVL1699
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST646:
	.long	.LVL1692
	.long	.LVL1701
	.value	0x1
	.byte	0x51
	.long	.LVL1702
	.long	.LVL1703
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST647:
	.long	.LVL1707
	.long	.LVL1708
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST648:
	.long	.LVL1705
	.long	.LVL1706
	.value	0x1
	.byte	0x50
	.long	.LVL1709
	.long	.LVL1711
	.value	0x1
	.byte	0x50
	.long	.LVL1723
	.long	.LVL1724
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST649:
	.long	.LVL1713
	.long	.LVL1715
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST650:
	.long	.LVL1714
	.long	.LVL1719
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL1720
	.long	.LVL1721
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST651:
	.long	.LVL1717
	.long	.LVL1725
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST652:
	.long	.LFB2120
	.long	.LCFI360
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI360
	.long	.LCFI361
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI361
	.long	.LCFI362
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI362
	.long	.LCFI363
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI363
	.long	.LCFI364
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI364
	.long	.LCFI365
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI365
	.long	.LCFI366
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI366
	.long	.LCFI367
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI367
	.long	.LCFI368
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI368
	.long	.LCFI369
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI369
	.long	.LFE2120
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST653:
	.long	.LFB2041
	.long	.LCFI370
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI370
	.long	.LCFI371
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI371
	.long	.LCFI372
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI372
	.long	.LCFI373
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI373
	.long	.LCFI374
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI374
	.long	.LCFI375
	.value	0x3
	.byte	0x74
	.sleb128 104
	.long	.LCFI375
	.long	.LCFI376
	.value	0x3
	.byte	0x74
	.sleb128 108
	.long	.LCFI376
	.long	.LCFI377
	.value	0x3
	.byte	0x74
	.sleb128 104
	.long	.LCFI377
	.long	.LCFI378
	.value	0x3
	.byte	0x74
	.sleb128 108
	.long	.LCFI378
	.long	.LCFI379
	.value	0x3
	.byte	0x74
	.sleb128 104
	.long	.LCFI379
	.long	.LCFI380
	.value	0x3
	.byte	0x74
	.sleb128 108
	.long	.LCFI380
	.long	.LCFI381
	.value	0x3
	.byte	0x74
	.sleb128 104
	.long	.LCFI381
	.long	.LCFI382
	.value	0x3
	.byte	0x74
	.sleb128 108
	.long	.LCFI382
	.long	.LFE2041
	.value	0x3
	.byte	0x74
	.sleb128 104
	.long	0x0
	.long	0x0
.LLST654:
	.long	.LVL1728
	.long	.LVL1729
	.value	0x1
	.byte	0x50
	.long	.LVL1729
	.long	.LVL1792
	.value	0x1
	.byte	0x53
	.long	.LVL1796
	.long	.LFE2041
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST655:
	.long	.LVL1729
	.long	.LVL1731
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST656:
	.long	.LVL1731
	.long	.LVL1732
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST657:
	.long	.LVL1733
	.long	.LVL1739
	.value	0x1
	.byte	0x55
	.long	.LVL1740
	.long	.LVL1741
	.value	0x1
	.byte	0x55
	.long	.LVL1763
	.long	.LVL1787
	.value	0x1
	.byte	0x55
	.long	.LVL1788
	.long	.LVL1795
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST658:
	.long	.LVL1777
	.long	.LVL1778
	.value	0x1
	.byte	0x50
	.long	.LVL1779
	.long	.LVL1780
	.value	0x1
	.byte	0x50
	.long	.LVL1782
	.long	.LVL1784
	.value	0x1
	.byte	0x50
	.long	.LVL1785
	.long	.LVL1786
	.value	0x1
	.byte	0x50
	.long	.LVL1790
	.long	.LVL1791
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST659:
	.long	.LVL1765
	.long	.LVL1776
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST660:
	.long	.LVL1766
	.long	.LVL1768
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST661:
	.long	.LVL1770
	.long	.LVL1775
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST662:
	.long	.LVL1772
	.long	.LVL1789
	.value	0x1
	.byte	0x56
	.long	.LVL1790
	.long	.LVL1793
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST663:
	.long	.LVL1771
	.long	.LVL1789
	.value	0x1
	.byte	0x57
	.long	.LVL1790
	.long	.LVL1794
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST664:
	.long	.LVL1769
	.long	.LVL1773
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST665:
	.long	.LVL1773
	.long	.LVL1774
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST666:
	.long	.LVL1780
	.long	.LVL1781
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST667:
	.long	.LVL1743
	.long	.LVL1744
	.value	0x1
	.byte	0x51
	.long	.LVL1744
	.long	.LVL1745
	.value	0x1
	.byte	0x50
	.long	.LVL1745
	.long	.LVL1746
	.value	0x1
	.byte	0x51
	.long	.LVL1747
	.long	.LVL1748
	.value	0x1
	.byte	0x51
	.long	.LVL1748
	.long	.LVL1749
	.value	0x1
	.byte	0x50
	.long	.LVL1749
	.long	.LVL1750
	.value	0x1
	.byte	0x51
	.long	.LVL1750
	.long	.LVL1751
	.value	0x1
	.byte	0x50
	.long	.LVL1751
	.long	.LVL1753
	.value	0x1
	.byte	0x51
	.long	.LVL1753
	.long	.LVL1754
	.value	0x1
	.byte	0x50
	.long	.LVL1756
	.long	.LVL1757
	.value	0x1
	.byte	0x51
	.long	.LVL1758
	.long	.LVL1760
	.value	0x1
	.byte	0x51
	.long	.LVL1761
	.long	.LVL1763
	.value	0x1
	.byte	0x51
	.long	.LVL1790
	.long	.LVL1799
	.value	0x1
	.byte	0x51
	.long	.LVL1804
	.long	.LVL1805
	.value	0x1
	.byte	0x51
	.long	.LVL1805
	.long	.LFE2041
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST668:
	.long	.LVL1755
	.long	.LVL1757
	.value	0x1
	.byte	0x50
	.long	.LVL1761
	.long	.LVL1762
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST669:
	.long	.LVL1737
	.long	.LVL1739
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST670:
	.long	.LVL1736
	.long	.LVL1742
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST671:
	.long	.LVL1735
	.long	.LVL1737
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST672:
	.long	.LVL1797
	.long	.LVL1798
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST673:
	.long	.LVL1799
	.long	.LVL1803
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST674:
	.long	.LVL1753
	.long	.LVL1763
	.value	0x1
	.byte	0x56
	.long	.LVL1790
	.long	.LVL1793
	.value	0x1
	.byte	0x56
	.long	.LVL1800
	.long	.LFE2041
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST675:
	.long	.LVL1801
	.long	.LVL1802
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST676:
	.long	.LVL1734
	.long	.LVL1735
	.value	0x1
	.byte	0x50
	.long	.LVL1763
	.long	.LVL1764
	.value	0x1
	.byte	0x50
	.long	.LVL1789
	.long	.LVL1790
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST677:
	.long	.LFB3053
	.long	.LCFI383
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI383
	.long	.LCFI384
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI384
	.long	.LCFI385
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI385
	.long	.LCFI386
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI386
	.long	.LCFI387
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI387
	.long	.LCFI388
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	.LCFI388
	.long	.LCFI389
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	.LCFI389
	.long	.LCFI390
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LCFI390
	.long	.LCFI391
	.value	0x3
	.byte	0x74
	.sleb128 64
	.long	.LCFI391
	.long	.LFE3053
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	0x0
	.long	0x0
.LLST678:
	.long	.LVL1806
	.long	.LVL1807
	.value	0x1
	.byte	0x50
	.long	.LVL1807
	.long	.LVL1840
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST679:
	.long	.LVL1806
	.long	.LVL1807
	.value	0x1
	.byte	0x52
	.long	.LVL1807
	.long	.LVL1827
	.value	0x1
	.byte	0x53
	.long	.LVL1835
	.long	.LVL1836
	.value	0x1
	.byte	0x53
	.long	.LVL1837
	.long	.LVL1838
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST680:
	.long	.LVL1811
	.long	.LVL1813
	.value	0x1
	.byte	0x56
	.long	.LVL1814
	.long	.LVL1830
	.value	0x1
	.byte	0x56
	.long	.LVL1835
	.long	.LVL1836
	.value	0x1
	.byte	0x56
	.long	.LVL1837
	.long	.LVL1839
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST681:
	.long	.LVL1812
	.long	.LVL1813
	.value	0x1
	.byte	0x51
	.long	.LVL1815
	.long	.LVL1829
	.value	0x1
	.byte	0x51
	.long	.LVL1835
	.long	.LVL1836
	.value	0x1
	.byte	0x51
	.long	.LVL1837
	.long	.LFE3053
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST682:
	.long	.LVL1816
	.long	.LVL1819
	.value	0x1
	.byte	0x50
	.long	.LVL1820
	.long	.LVL1821
	.value	0x1
	.byte	0x50
	.long	.LVL1822
	.long	.LVL1823
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST683:
	.long	.LVL1817
	.long	.LVL1818
	.value	0x1
	.byte	0x52
	.long	.LVL1818
	.long	.LVL1824
	.value	0x1
	.byte	0x55
	.long	.LVL1824
	.long	.LVL1825
	.value	0x1
	.byte	0x52
	.long	.LVL1835
	.long	.LVL1836
	.value	0x1
	.byte	0x55
	.long	.LVL1837
	.long	.LVL1841
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST684:
	.long	.LVL1808
	.long	.LVL1809
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST685:
	.long	.LVL1810
	.long	.LVL1813
	.value	0x1
	.byte	0x50
	.long	.LVL1815
	.long	.LVL1816
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST686:
	.long	.LVL1826
	.long	.LVL1830
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST687:
	.long	.LVL1830
	.long	.LVL1831
	.value	0x1
	.byte	0x52
	.long	.LVL1833
	.long	.LFE3053
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST688:
	.long	.LVL1832
	.long	.LVL1833
	.value	0x1
	.byte	0x50
	.long	.LVL1834
	.long	.LFE3053
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST689:
	.long	.LFB3083
	.long	.LCFI392
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI392
	.long	.LCFI393
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI393
	.long	.LCFI394
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI394
	.long	.LCFI395
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI395
	.long	.LCFI396
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI396
	.long	.LFE3083
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	0x0
	.long	0x0
.LLST690:
	.long	.LVL1842
	.long	.LVL1843
	.value	0x1
	.byte	0x50
	.long	.LVL1974
	.long	.LVL1984
	.value	0x1
	.byte	0x57
	.long	.LVL1991
	.long	.LVL1994
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST691:
	.long	.LVL1842
	.long	.LVL1844
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST692:
	.long	.LVL1845
	.long	.LVL1846
	.value	0x1
	.byte	0x52
	.long	.LVL1847
	.long	.LVL1848
	.value	0x1
	.byte	0x52
	.long	.LVL1990
	.long	.LFE3083
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST693:
	.long	.LVL1849
	.long	.LVL1878
	.value	0x1
	.byte	0x56
	.long	.LVL1879
	.long	.LVL1880
	.value	0x1
	.byte	0x56
	.long	.LVL1900
	.long	.LVL1901
	.value	0x1
	.byte	0x56
	.long	.LVL1991
	.long	.LVL1993
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST694:
	.long	.LVL1853
	.long	.LVL1856
	.value	0x1
	.byte	0x57
	.long	.LVL1857
	.long	.LVL1860
	.value	0x1
	.byte	0x57
	.long	.LVL1860
	.long	.LVL1881
	.value	0x1
	.byte	0x53
	.long	.LVL1900
	.long	.LVL1901
	.value	0x1
	.byte	0x53
	.long	.LVL1991
	.long	.LVL1992
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST695:
	.long	.LVL1854
	.long	.LVL1856
	.value	0x1
	.byte	0x50
	.long	.LVL1858
	.long	.LVL1874
	.value	0x1
	.byte	0x50
	.long	.LVL1875
	.long	.LVL1884
	.value	0x1
	.byte	0x50
	.long	.LVL1991
	.long	.LFE3083
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST696:
	.long	.LVL1855
	.long	.LVL1856
	.value	0x1
	.byte	0x55
	.long	.LVL1859
	.long	.LVL1882
	.value	0x1
	.byte	0x55
	.long	.LVL1900
	.long	.LVL1901
	.value	0x1
	.byte	0x55
	.long	.LVL1991
	.long	.LVL1995
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST697:
	.long	.LVL1861
	.long	.LVL1870
	.value	0x1
	.byte	0x51
	.long	.LVL1871
	.long	.LVL1873
	.value	0x1
	.byte	0x51
	.long	.LVL1875
	.long	.LVL1884
	.value	0x1
	.byte	0x51
	.long	.LVL1991
	.long	.LFE3083
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST698:
	.long	.LVL1850
	.long	.LVL1851
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST699:
	.long	.LVL1852
	.long	.LVL1856
	.value	0x1
	.byte	0x56
	.long	.LVL1859
	.long	.LVL1878
	.value	0x1
	.byte	0x56
	.long	.LVL1879
	.long	.LVL1880
	.value	0x1
	.byte	0x56
	.long	.LVL1900
	.long	.LVL1901
	.value	0x1
	.byte	0x56
	.long	.LVL1991
	.long	.LVL1993
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST700:
	.long	.LVL1862
	.long	.LVL1863
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST701:
	.long	.LVL1864
	.long	.LVL1866
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST702:
	.long	.LVL1867
	.long	.LVL1869
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST703:
	.long	.LVL1876
	.long	.LVL1877
	.value	0x1
	.byte	0x52
	.long	.LVL1879
	.long	.LVL1883
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST704:
	.long	.LVL1888
	.long	.LVL1891
	.value	0x1
	.byte	0x51
	.long	.LVL1892
	.long	.LVL1898
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST705:
	.long	.LVL1889
	.long	.LVL1891
	.value	0x1
	.byte	0x53
	.long	.LVL1893
	.long	.LVL1899
	.value	0x1
	.byte	0x53
	.long	.LVL1991
	.long	.LVL1992
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST706:
	.long	.LVL1890
	.long	.LVL1891
	.value	0x1
	.byte	0x52
	.long	.LVL1894
	.long	.LVL1895
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST707:
	.long	.LVL1895
	.long	.LVL1899
	.value	0x1
	.byte	0x52
	.long	.LVL1991
	.long	.LFE3083
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST708:
	.long	.LVL1885
	.long	.LVL1886
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST709:
	.long	.LVL1887
	.long	.LVL1890
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST710:
	.long	.LVL1902
	.long	.LVL1908
	.value	0x1
	.byte	0x50
	.long	.LVL1990
	.long	.LFE3083
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST711:
	.long	.LVL1903
	.long	.LVL1909
	.value	0x1
	.byte	0x51
	.long	.LVL1990
	.long	.LFE3083
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST712:
	.long	.LVL1904
	.long	.LVL1905
	.value	0x1
	.byte	0x56
	.long	.LVL1906
	.long	.LVL1907
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST713:
	.long	.LVL1907
	.long	.LVL1910
	.value	0x1
	.byte	0x56
	.long	.LVL1923
	.long	.LVL1925
	.value	0x1
	.byte	0x56
	.long	.LVL1991
	.long	.LVL1993
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST714:
	.long	.LVL1911
	.long	.LVL1919
	.value	0x1
	.byte	0x53
	.long	.LVL1980
	.long	.LVL1984
	.value	0x1
	.byte	0x53
	.long	.LVL1991
	.long	.LVL1992
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST715:
	.long	.LVL1912
	.long	.LVL1919
	.value	0x1
	.byte	0x51
	.long	.LVL1980
	.long	.LVL1984
	.value	0x1
	.byte	0x51
	.long	.LVL1991
	.long	.LFE3083
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST716:
	.long	.LVL1918
	.long	.LVL1919
	.value	0x1
	.byte	0x52
	.long	.LVL1980
	.long	.LVL1981
	.value	0x1
	.byte	0x52
	.long	.LVL1982
	.long	.LVL1983
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST717:
	.long	.LVL1913
	.long	.LVL1914
	.value	0x1
	.byte	0x52
	.long	.LVL1915
	.long	.LVL1916
	.value	0x1
	.byte	0x52
	.long	.LVL1917
	.long	.LVL1918
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST718:
	.long	.LVL1920
	.long	.LVL1924
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST719:
	.long	.LVL1921
	.long	.LVL1922
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST720:
	.long	.LVL1939
	.long	.LVL1959
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST721:
	.long	.LVL1944
	.long	.LVL1946
	.value	0x1
	.byte	0x53
	.long	.LVL1947
	.long	.LVL1955
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST722:
	.long	.LVL1955
	.long	.LVL1958
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST723:
	.long	.LVL1934
	.long	.LVL1936
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST724:
	.long	.LVL1926
	.long	.LVL1931
	.value	0x1
	.byte	0x55
	.long	.LVL1931
	.long	.LVL1933
	.value	0x1
	.byte	0x56
	.long	.LVL1935
	.long	.LVL1943
	.value	0x1
	.byte	0x55
	.long	.LVL1987
	.long	.LVL1989
	.value	0x1
	.byte	0x55
	.long	.LVL1991
	.long	.LVL1995
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST725:
	.long	.LVL1930
	.long	.LVL1932
	.value	0x1
	.byte	0x57
	.long	.LVL1936
	.long	.LVL1942
	.value	0x1
	.byte	0x57
	.long	.LVL1987
	.long	.LVL1988
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST726:
	.long	.LVL1928
	.long	.LVL1929
	.value	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.long	.LVL1937
	.long	.LVL1938
	.value	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST727:
	.long	.LVL1941
	.long	.LVL1963
	.value	0x1
	.byte	0x56
	.long	.LVL1966
	.long	.LVL1968
	.value	0x1
	.byte	0x56
	.long	.LVL1985
	.long	.LVL1986
	.value	0x1
	.byte	0x56
	.long	.LVL1991
	.long	.LVL1993
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST728:
	.long	.LVL1971
	.long	.LVL1972
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST729:
	.long	.LVL1942
	.long	.LVL1964
	.value	0x1
	.byte	0x57
	.long	.LVL1966
	.long	.LVL1970
	.value	0x1
	.byte	0x57
	.long	.LVL1985
	.long	.LVL1986
	.value	0x1
	.byte	0x57
	.long	.LVL1991
	.long	.LVL1994
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST730:
	.long	.LVL1943
	.long	.LVL1956
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST731:
	.long	.LVL1945
	.long	.LVL1948
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST732:
	.long	.LVL1948
	.long	.LVL1950
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST733:
	.long	.LVL1950
	.long	.LVL1953
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST734:
	.long	.LVL1956
	.long	.LVL1961
	.value	0x1
	.byte	0x55
	.long	.LVL1985
	.long	.LVL1986
	.value	0x1
	.byte	0x55
	.long	.LVL1991
	.long	.LVL1995
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST735:
	.long	.LVL1958
	.long	.LVL1960
	.value	0x1
	.byte	0x53
	.long	.LVL1985
	.long	.LVL1986
	.value	0x1
	.byte	0x53
	.long	.LVL1991
	.long	.LVL1992
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST736:
	.long	.LVL1962
	.long	.LVL1965
	.value	0x1
	.byte	0x53
	.long	.LVL1966
	.long	.LVL1967
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST737:
	.long	.LVL1973
	.long	.LVL1978
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST738:
	.long	.LVL1976
	.long	.LVL1979
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST739:
	.long	.LVL1975
	.long	.LVL1984
	.value	0x1
	.byte	0x56
	.long	.LVL1991
	.long	.LVL1993
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST740:
	.long	.LFB3085
	.long	.LCFI397
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI397
	.long	.LFE3085
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST741:
	.long	.LVL1996
	.long	.LVL2011
	.value	0x1
	.byte	0x50
	.long	.LVL2011
	.long	.LFE3085
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST742:
	.long	.LVL1996
	.long	.LVL1998
	.value	0x1
	.byte	0x52
	.long	.LVL2003
	.long	.LVL2004
	.value	0x1
	.byte	0x52
	.long	.LVL2006
	.long	.LVL2007
	.value	0x1
	.byte	0x52
	.long	.LVL2011
	.long	.LVL2012
	.value	0x1
	.byte	0x52
	.long	.LVL2013
	.long	.LVL2014
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST743:
	.long	.LVL2009
	.long	.LVL2011
	.value	0x1
	.byte	0x52
	.long	.LVL2011
	.long	.LVL2012
	.value	0x1
	.byte	0x52
	.long	.LVL2013
	.long	.LVL2014
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST744:
	.long	.LVL1999
	.long	.LVL2000
	.value	0x1
	.byte	0x52
	.long	.LVL2001
	.long	.LVL2002
	.value	0x1
	.byte	0x52
	.long	.LVL2010
	.long	.LVL2011
	.value	0x1
	.byte	0x52
	.long	.LVL2011
	.long	.LVL2012
	.value	0x1
	.byte	0x52
	.long	.LVL2013
	.long	.LVL2014
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST745:
	.long	.LVL1998
	.long	.LVL1999
	.value	0x1
	.byte	0x52
	.long	.LVL2011
	.long	.LVL2012
	.value	0x1
	.byte	0x52
	.long	.LVL2013
	.long	.LVL2014
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST746:
	.long	.LVL2005
	.long	.LVL2006
	.value	0x1
	.byte	0x52
	.long	.LVL2008
	.long	.LVL2009
	.value	0x1
	.byte	0x52
	.long	.LVL2011
	.long	.LVL2012
	.value	0x1
	.byte	0x52
	.long	.LVL2013
	.long	.LVL2014
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST747:
	.long	.LVL2008
	.long	.LVL2009
	.value	0x1
	.byte	0x52
	.long	.LVL2011
	.long	.LVL2012
	.value	0x1
	.byte	0x52
	.long	.LVL2013
	.long	.LVL2014
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST748:
	.long	.LFB3087
	.long	.LCFI398
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI398
	.long	.LCFI399
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI399
	.long	.LCFI400
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI400
	.long	.LCFI401
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI401
	.long	.LCFI402
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI402
	.long	.LCFI403
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI403
	.long	.LCFI404
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI404
	.long	.LCFI405
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI405
	.long	.LCFI406
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI406
	.long	.LCFI407
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI407
	.long	.LCFI408
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI408
	.long	.LFE3087
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST749:
	.long	.LVL2015
	.long	.LVL2036
	.value	0x1
	.byte	0x50
	.long	.LVL2036
	.long	.LVL2041
	.value	0x1
	.byte	0x50
	.long	.LVL2041
	.long	.LVL2042
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST750:
	.long	.LVL2039
	.long	.LVL2041
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST751:
	.long	.LVL2032
	.long	.LVL2033
	.value	0x1
	.byte	0x53
	.long	.LVL2038
	.long	.LVL2040
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST752:
	.long	.LVL2034
	.long	.LVL2035
	.value	0x1
	.byte	0x53
	.long	.LVL2041
	.long	.LVL2043
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST753:
	.long	.LVL2033
	.long	.LVL2034
	.value	0x1
	.byte	0x53
	.long	.LVL2036
	.long	.LVL2037
	.value	0x1
	.byte	0x53
	.long	.LVL2038
	.long	.LVL2040
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST754:
	.long	.LVL2016
	.long	.LVL2031
	.value	0x1
	.byte	0x56
	.long	.LVL2041
	.long	.LVL2044
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST755:
	.long	.LVL2018
	.long	.LVL2019
	.value	0x1
	.byte	0x57
	.long	.LVL2019
	.long	.LVL2020
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST756:
	.long	.LVL2017
	.long	.LVL2031
	.value	0x1
	.byte	0x55
	.long	.LVL2041
	.long	.LVL2045
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST757:
	.long	.LVL2019
	.long	.LVL2020
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST758:
	.long	.LVL2021
	.long	.LVL2022
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST759:
	.long	.LVL2022
	.long	.LVL2023
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST760:
	.long	.LVL2023
	.long	.LVL2024
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST761:
	.long	.LVL2024
	.long	.LVL2025
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST762:
	.long	.LVL2025
	.long	.LVL2026
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST763:
	.long	.LVL2027
	.long	.LVL2028
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST764:
	.long	.LVL2029
	.long	.LVL2030
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST765:
	.long	.LFB3086
	.long	.LCFI409
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI409
	.long	.LCFI410
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI410
	.long	.LCFI411
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI411
	.long	.LCFI412
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI412
	.long	.LCFI413
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI413
	.long	.LFE3086
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST766:
	.long	.LVL2046
	.long	.LVL2047
	.value	0x1
	.byte	0x50
	.long	.LVL2047
	.long	.LVL2048
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST767:
	.long	.LFB3089
	.long	.LCFI414
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI414
	.long	.LCFI415
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI415
	.long	.LCFI416
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI416
	.long	.LCFI417
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI417
	.long	.LCFI418
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI418
	.long	.LCFI419
	.value	0x3
	.byte	0x74
	.sleb128 84
	.long	.LCFI419
	.long	.LCFI420
	.value	0x3
	.byte	0x74
	.sleb128 88
	.long	.LCFI420
	.long	.LCFI421
	.value	0x3
	.byte	0x74
	.sleb128 92
	.long	.LCFI421
	.long	.LCFI422
	.value	0x3
	.byte	0x74
	.sleb128 96
	.long	.LCFI422
	.long	.LCFI423
	.value	0x3
	.byte	0x74
	.sleb128 100
	.long	.LCFI423
	.long	.LFE3089
	.value	0x3
	.byte	0x74
	.sleb128 84
	.long	0x0
	.long	0x0
.LLST768:
	.long	.LVL2049
	.long	.LVL2050
	.value	0x1
	.byte	0x50
	.long	.LVL2051
	.long	.LVL2055
	.value	0x1
	.byte	0x50
	.long	.LVL2057
	.long	.LVL2078
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST769:
	.long	.LVL2049
	.long	.LVL2050
	.value	0x1
	.byte	0x52
	.long	.LVL2051
	.long	.LVL2053
	.value	0x1
	.byte	0x52
	.long	.LVL2053
	.long	.LVL2059
	.value	0x1
	.byte	0x57
	.long	.LVL2059
	.long	.LVL2060
	.value	0x1
	.byte	0x52
	.long	.LVL2060
	.long	.LVL2075
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST770:
	.long	.LVL2049
	.long	.LVL2050
	.value	0x1
	.byte	0x51
	.long	.LVL2051
	.long	.LVL2060
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST771:
	.long	.LVL2052
	.long	.LVL2053
	.value	0x1
	.byte	0x56
	.long	.LVL2053
	.long	.LVL2076
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST772:
	.long	.LVL2053
	.long	.LVL2054
	.value	0x1
	.byte	0x55
	.long	.LVL2056
	.long	.LVL2065
	.value	0x1
	.byte	0x55
	.long	.LVL2073
	.long	.LVL2083
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST773:
	.long	.LVL2065
	.long	.LVL2067
	.value	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST774:
	.long	.LVL2066
	.long	.LVL2069
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST775:
	.long	.LVL2061
	.long	.LVL2063
	.value	0x1
	.byte	0x57
	.long	.LVL2068
	.long	.LVL2082
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST776:
	.long	.LVL2061
	.long	.LVL2062
	.value	0x1
	.byte	0x52
	.long	.LVL2071
	.long	.LVL2074
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST777:
	.long	.LVL2077
	.long	.LVL2080
	.value	0x1
	.byte	0x53
	.long	.LVL2080
	.long	.LVL2081
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST778:
	.long	.LFB2764
	.long	.LCFI424
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI424
	.long	.LCFI425
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI425
	.long	.LCFI426
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI426
	.long	.LCFI427
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI427
	.long	.LCFI428
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI428
	.long	.LCFI429
	.value	0x3
	.byte	0x74
	.sleb128 84
	.long	.LCFI429
	.long	.LCFI430
	.value	0x3
	.byte	0x74
	.sleb128 88
	.long	.LCFI430
	.long	.LCFI431
	.value	0x3
	.byte	0x74
	.sleb128 84
	.long	.LCFI431
	.long	.LCFI432
	.value	0x3
	.byte	0x74
	.sleb128 88
	.long	.LCFI432
	.long	.LFE2764
	.value	0x3
	.byte	0x74
	.sleb128 84
	.long	0x0
	.long	0x0
.LLST779:
	.long	.LVL2084
	.long	.LVL2091
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST780:
	.long	.LVL2084
	.long	.LVL2093
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST781:
	.long	.LVL2085
	.long	.LVL2143
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST782:
	.long	.LVL2086
	.long	.LVL2134
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST783:
	.long	.LVL2088
	.long	.LVL2092
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST784:
	.long	.LVL2089
	.long	.LVL2090
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST785:
	.long	.LVL2094
	.long	.LVL2099
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST786:
	.long	.LVL2095
	.long	.LVL2096
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST787:
	.long	.LVL2097
	.long	.LVL2101
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST788:
	.long	.LVL2098
	.long	.LVL2100
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST789:
	.long	.LVL2102
	.long	.LVL2105
	.value	0x1
	.byte	0x52
	.long	.LVL2113
	.long	.LVL2120
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST790:
	.long	.LVL2112
	.long	.LVL2114
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST791:
	.long	.LVL2102
	.long	.LVL2104
	.value	0x1
	.byte	0x50
	.long	.LVL2116
	.long	.LVL2119
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST792:
	.long	.LVL2103
	.long	.LVL2106
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST793:
	.long	.LVL2108
	.long	.LVL2110
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL2110
	.long	.LVL2115
	.value	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST794:
	.long	.LVL2124
	.long	.LVL2130
	.value	0x1
	.byte	0x50
	.long	.LVL2130
	.long	.LVL2131
	.value	0x1
	.byte	0x52
	.long	.LVL2131
	.long	.LVL2137
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST795:
	.long	.LVL2118
	.long	.LVL2125
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST796:
	.long	.LVL2119
	.long	.LVL2123
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST797:
	.long	.LVL2121
	.long	.LVL2126
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST798:
	.long	.LVL2126
	.long	.LVL2127
	.value	0x1
	.byte	0x55
	.long	.LVL2130
	.long	.LVL2132
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST799:
	.long	.LVL2129
	.long	.LVL2130
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST800:
	.long	.LVL2127
	.long	.LVL2128
	.value	0x1
	.byte	0x57
	.long	.LVL2133
	.long	.LVL2135
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST801:
	.long	.LVL2136
	.long	.LVL2144
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST802:
	.long	.LVL2137
	.long	.LVL2138
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST803:
	.long	.LVL2139
	.long	.LVL2140
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST804:
	.long	.LVL2141
	.long	.LVL2142
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST806:
	.long	.LVL2145
	.long	.LVL2150
	.value	0x1
	.byte	0x50
	.long	.LVL2150
	.long	.LVL2152
	.value	0x1
	.byte	0x50
	.long	.LVL2152
	.long	.LVL2154
	.value	0x1
	.byte	0x50
	.long	.LVL2154
	.long	.LVL2156
	.value	0x1
	.byte	0x50
	.long	.LVL2156
	.long	.LVL2158
	.value	0x1
	.byte	0x50
	.long	.LVL2158
	.long	.LVL2160
	.value	0x1
	.byte	0x50
	.long	.LVL2160
	.long	.LVL2163
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST807:
	.long	.LVL2146
	.long	.LVL2147
	.value	0x1
	.byte	0x52
	.long	.LVL2148
	.long	.LVL2149
	.value	0x1
	.byte	0x52
	.long	.LVL2150
	.long	.LVL2151
	.value	0x1
	.byte	0x52
	.long	.LVL2152
	.long	.LVL2153
	.value	0x1
	.byte	0x52
	.long	.LVL2154
	.long	.LVL2155
	.value	0x1
	.byte	0x52
	.long	.LVL2156
	.long	.LVL2157
	.value	0x1
	.byte	0x52
	.long	.LVL2158
	.long	.LVL2159
	.value	0x1
	.byte	0x52
	.long	.LVL2160
	.long	.LVL2161
	.value	0x1
	.byte	0x52
	.long	.LVL2162
	.long	.LFE513
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST808:
	.long	.LFB514
	.long	.LCFI433
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI433
	.long	.LCFI434
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI434
	.long	.LCFI435
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI435
	.long	.LCFI436
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI436
	.long	.LCFI437
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI437
	.long	.LFE514
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	0x0
	.long	0x0
.LLST809:
	.long	.LVL2164
	.long	.LVL2165
	.value	0x1
	.byte	0x50
	.long	.LVL2165
	.long	.LVL2176
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST810:
	.long	.LVL2164
	.long	.LVL2171
	.value	0x1
	.byte	0x52
	.long	.LVL2171
	.long	.LVL2173
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST811:
	.long	.LVL2165
	.long	.LVL2169
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST812:
	.long	.LVL2166
	.long	.LVL2171
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST813:
	.long	.LVL2167
	.long	.LVL2174
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST814:
	.long	.LVL2168
	.long	.LVL2175
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST815:
	.long	.LVL2169
	.long	.LVL2170
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST816:
	.long	.LFB1341
	.long	.LCFI438
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI438
	.long	.LCFI439
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI439
	.long	.LCFI440
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI440
	.long	.LCFI441
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI441
	.long	.LCFI442
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI442
	.long	.LFE1341
	.value	0x3
	.byte	0x74
	.sleb128 72
	.long	0x0
	.long	0x0
.LLST817:
	.long	.LVL2177
	.long	.LVL2178
	.value	0x1
	.byte	0x50
	.long	.LVL2178
	.long	.LVL2210
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST818:
	.long	.LVL2179
	.long	.LVL2182
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST819:
	.long	.LVL2184
	.long	.LVL2188
	.value	0x1
	.byte	0x55
	.long	.LVL2189
	.long	.LVL2194
	.value	0x1
	.byte	0x55
	.long	.LVL2196
	.long	.LVL2207
	.value	0x1
	.byte	0x55
	.long	.LVL2208
	.long	.LVL2213
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST820:
	.long	.LVL2180
	.long	.LVL2181
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST821:
	.long	.LVL2182
	.long	.LVL2183
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST822:
	.long	.LVL2185
	.long	.LVL2186
	.value	0x1
	.byte	0x50
	.long	.LVL2193
	.long	.LVL2197
	.value	0x1
	.byte	0x50
	.long	.LVL2200
	.long	.LVL2201
	.value	0x1
	.byte	0x50
	.long	.LVL2203
	.long	.LVL2204
	.value	0x1
	.byte	0x50
	.long	.LVL2208
	.long	.LVL2209
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST823:
	.long	.LVL2187
	.long	.LVL2190
	.value	0x1
	.byte	0x50
	.long	.LVL2191
	.long	.LVL2192
	.value	0x1
	.byte	0x52
	.long	.LVL2199
	.long	.LVL2202
	.value	0x1
	.byte	0x52
	.long	.LVL2208
	.long	.LFE1341
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST824:
	.long	.LVL2194
	.long	.LVL2198
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST825:
	.long	.LVL2205
	.long	.LVL2213
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST826:
	.long	.LVL2206
	.long	.LVL2211
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST827:
	.long	.LVL2206
	.long	.LVL2212
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST828:
	.long	.LVL2206
	.long	.LVL2208
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST829:
	.long	.LFB3090
	.long	.LCFI443
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI443
	.long	.LCFI444
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI444
	.long	.LCFI445
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI445
	.long	.LCFI446
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI446
	.long	.LCFI447
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI447
	.long	.LCFI448
	.value	0x3
	.byte	0x74
	.sleb128 68
	.long	.LCFI448
	.long	.LCFI449
	.value	0x3
	.byte	0x74
	.sleb128 72
	.long	.LCFI449
	.long	.LCFI450
	.value	0x3
	.byte	0x74
	.sleb128 68
	.long	.LCFI450
	.long	.LCFI451
	.value	0x3
	.byte	0x74
	.sleb128 72
	.long	.LCFI451
	.long	.LCFI452
	.value	0x3
	.byte	0x74
	.sleb128 68
	.long	.LCFI452
	.long	.LCFI453
	.value	0x3
	.byte	0x74
	.sleb128 72
	.long	.LCFI453
	.long	.LCFI454
	.value	0x3
	.byte	0x74
	.sleb128 76
	.long	.LCFI454
	.long	.LCFI455
	.value	0x3
	.byte	0x74
	.sleb128 80
	.long	.LCFI455
	.long	.LFE3090
	.value	0x3
	.byte	0x74
	.sleb128 68
	.long	0x0
	.long	0x0
.LLST830:
	.long	.LVL2214
	.long	.LVL2217
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST831:
	.long	.LVL2214
	.long	.LVL2219
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST832:
	.long	.LVL2215
	.long	.LVL2227
	.value	0x1
	.byte	0x56
	.long	.LVL2234
	.long	.LVL2235
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST833:
	.long	.LVL2221
	.long	.LVL2222
	.value	0x1
	.byte	0x52
	.long	.LVL2222
	.long	.LVL2223
	.value	0x1
	.byte	0x50
	.long	.LVL2224
	.long	.LVL2225
	.value	0x1
	.byte	0x52
	.long	.LVL2226
	.long	.LVL2233
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST834:
	.long	.LVL2216
	.long	.LVL2220
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST835:
	.long	.LVL2216
	.long	.LVL2228
	.value	0x1
	.byte	0x57
	.long	.LVL2234
	.long	.LVL2236
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST836:
	.long	.LVL2217
	.long	.LVL2218
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST837:
	.long	.LVL2229
	.long	.LVL2232
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST838:
	.long	.LVL2230
	.long	.LVL2235
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST839:
	.long	.LVL2230
	.long	.LVL2236
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST840:
	.long	.LVL2230
	.long	.LVL2231
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST841:
	.long	.LFB157
	.long	.LCFI456
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI456
	.long	.LCFI457
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI457
	.long	.LCFI458
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI458
	.long	.LCFI459
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI459
	.long	.LCFI460
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI460
	.long	.LCFI461
	.value	0x3
	.byte	0x74
	.sleb128 88
	.long	.LCFI461
	.long	.LCFI462
	.value	0x3
	.byte	0x74
	.sleb128 92
	.long	.LCFI462
	.long	.LCFI463
	.value	0x3
	.byte	0x74
	.sleb128 88
	.long	.LCFI463
	.long	.LCFI464
	.value	0x3
	.byte	0x74
	.sleb128 92
	.long	.LCFI464
	.long	.LCFI465
	.value	0x3
	.byte	0x74
	.sleb128 88
	.long	.LCFI465
	.long	.LCFI466
	.value	0x3
	.byte	0x74
	.sleb128 92
	.long	.LCFI466
	.long	.LCFI467
	.value	0x3
	.byte	0x74
	.sleb128 88
	.long	.LCFI467
	.long	.LCFI468
	.value	0x3
	.byte	0x74
	.sleb128 92
	.long	.LCFI468
	.long	.LCFI469
	.value	0x3
	.byte	0x74
	.sleb128 96
	.long	.LCFI469
	.long	.LCFI470
	.value	0x3
	.byte	0x74
	.sleb128 100
	.long	.LCFI470
	.long	.LCFI471
	.value	0x3
	.byte	0x74
	.sleb128 88
	.long	.LCFI471
	.long	.LCFI472
	.value	0x3
	.byte	0x74
	.sleb128 92
	.long	.LCFI472
	.long	.LFE157
	.value	0x3
	.byte	0x74
	.sleb128 88
	.long	0x0
	.long	0x0
.LLST842:
	.long	.LVL2237
	.long	.LVL2238
	.value	0x1
	.byte	0x50
	.long	.LVL2238
	.long	.LVL2248
	.value	0x1
	.byte	0x53
	.long	.LVL2265
	.long	.LVL2274
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST843:
	.long	.LVL2237
	.long	.LVL2240
	.value	0x1
	.byte	0x52
	.long	.LVL2272
	.long	.LFE157
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST844:
	.long	.LVL2237
	.long	.LVL2239
	.value	0x1
	.byte	0x51
	.long	.LVL2272
	.long	.LFE157
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST845:
	.long	.LVL2241
	.long	.LVL2242
	.value	0x1
	.byte	0x55
	.long	.LVL2242
	.long	.LVL2243
	.value	0x1
	.byte	0x50
	.long	.LVL2243
	.long	.LVL2244
	.value	0x1
	.byte	0x55
	.long	.LVL2244
	.long	.LVL2245
	.value	0x1
	.byte	0x50
	.long	.LVL2245
	.long	.LVL2272
	.value	0x1
	.byte	0x55
	.long	.LVL2272
	.long	.LVL2273
	.value	0x1
	.byte	0x50
	.long	.LVL2273
	.long	.LVL2275
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST846:
	.long	.LVL2268
	.long	.LVL2269
	.value	0x1
	.byte	0x50
	.long	.LVL2270
	.long	.LVL2271
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST847:
	.long	.LVL2246
	.long	.LVL2247
	.value	0x1
	.byte	0x50
	.long	.LVL2247
	.long	.LVL2249
	.value	0x1
	.byte	0x51
	.long	.LVL2249
	.long	.LVL2272
	.value	0x1
	.byte	0x53
	.long	.LVL2273
	.long	.LVL2274
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST848:
	.long	.LVL2251
	.long	.LVL2256
	.value	0x1
	.byte	0x51
	.long	.LVL2265
	.long	.LVL2266
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST849:
	.long	.LVL2252
	.long	.LVL2253
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST850:
	.long	.LVL2250
	.long	.LVL2255
	.value	0x1
	.byte	0x52
	.long	.LVL2265
	.long	.LVL2267
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST851:
	.long	.LVL2253
	.long	.LVL2254
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST852:
	.long	.LVL2257
	.long	.LVL2258
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST853:
	.long	.LVL2259
	.long	.LVL2261
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST854:
	.long	.LVL2260
	.long	.LVL2262
	.value	0x1
	.byte	0x50
	.long	.LVL2263
	.long	.LVL2264
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST855:
	.long	.LFB165
	.long	.LCFI473
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI473
	.long	.LCFI474
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI474
	.long	.LCFI475
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI475
	.long	.LCFI476
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI476
	.long	.LCFI477
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI477
	.long	.LCFI478
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI478
	.long	.LCFI479
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI479
	.long	.LCFI480
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI480
	.long	.LCFI481
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI481
	.long	.LCFI482
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI482
	.long	.LCFI483
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI483
	.long	.LCFI484
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI484
	.long	.LCFI485
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI485
	.long	.LCFI486
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI486
	.long	.LFE165
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST856:
	.long	.LVL2276
	.long	.LVL2278
	.value	0x1
	.byte	0x50
	.long	.LVL2278
	.long	.LVL2291
	.value	0x1
	.byte	0x53
	.long	.LVL2295
	.long	.LVL2297
	.value	0x1
	.byte	0x53
	.long	.LVL2298
	.long	.LVL2301
	.value	0x1
	.byte	0x53
	.long	.LVL2302
	.long	.LVL2303
	.value	0x1
	.byte	0x53
	.long	.LVL2313
	.long	.LVL2316
	.value	0x1
	.byte	0x53
	.long	.LVL2327
	.long	.LVL2333
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST857:
	.long	.LVL2277
	.long	.LVL2278
	.value	0x1
	.byte	0x56
	.long	.LVL2278
	.long	.LVL2279
	.value	0x1
	.byte	0x50
	.long	.LVL2280
	.long	.LVL2283
	.value	0x1
	.byte	0x56
	.long	.LVL2315
	.long	.LVL2322
	.value	0x1
	.byte	0x56
	.long	.LVL2326
	.long	.LVL2334
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST858:
	.long	.LVL2283
	.long	.LVL2292
	.value	0x1
	.byte	0x56
	.long	.LVL2295
	.long	.LVL2299
	.value	0x1
	.byte	0x56
	.long	.LVL2313
	.long	.LVL2315
	.value	0x1
	.byte	0x56
	.long	.LVL2331
	.long	.LVL2334
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST859:
	.long	.LVL2284
	.long	.LVL2293
	.value	0x1
	.byte	0x57
	.long	.LVL2295
	.long	.LVL2315
	.value	0x1
	.byte	0x57
	.long	.LVL2331
	.long	.LVL2335
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST860:
	.long	.LVL2286
	.long	.LVL2287
	.value	0x1
	.byte	0x50
	.long	.LVL2289
	.long	.LVL2290
	.value	0x1
	.byte	0x50
	.long	.LVL2290
	.long	.LVL2295
	.value	0x1
	.byte	0x50
	.long	.LVL2295
	.long	.LVL2296
	.value	0x1
	.byte	0x50
	.long	.LVL2298
	.long	.LVL2307
	.value	0x1
	.byte	0x50
	.long	.LVL2309
	.long	.LVL2311
	.value	0x1
	.byte	0x50
	.long	.LVL2311
	.long	.LVL2312
	.value	0x1
	.byte	0x50
	.long	.LVL2313
	.long	.LVL2314
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST861:
	.long	.LVL2285
	.long	.LVL2287
	.value	0x1
	.byte	0x55
	.long	.LVL2288
	.long	.LVL2294
	.value	0x1
	.byte	0x55
	.long	.LVL2295
	.long	.LVL2315
	.value	0x1
	.byte	0x55
	.long	.LVL2331
	.long	.LVL2336
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST862:
	.long	.LVL2299
	.long	.LVL2315
	.value	0x1
	.byte	0x56
	.long	.LVL2331
	.long	.LVL2334
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST863:
	.long	.LVL2301
	.long	.LVL2315
	.value	0x1
	.byte	0x53
	.long	.LVL2331
	.long	.LVL2333
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST864:
	.long	.LVL2281
	.long	.LVL2282
	.value	0x1
	.byte	0x50
	.long	.LVL2297
	.long	.LVL2298
	.value	0x1
	.byte	0x53
	.long	.LVL2308
	.long	.LVL2311
	.value	0x1
	.byte	0x50
	.long	.LVL2314
	.long	.LVL2315
	.value	0x1
	.byte	0x50
	.long	.LVL2318
	.long	.LVL2320
	.value	0x1
	.byte	0x50
	.long	.LVL2327
	.long	.LVL2328
	.value	0x1
	.byte	0x50
	.long	.LVL2331
	.long	.LVL2332
	.value	0x1
	.byte	0x50
	.long	.LVL2332
	.long	.LVL2333
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST865:
	.long	.LVL2300
	.long	.LVL2304
	.value	0x1
	.byte	0x51
	.long	.LVL2305
	.long	.LVL2306
	.value	0x1
	.byte	0x51
	.long	.LVL2309
	.long	.LVL2310
	.value	0x1
	.byte	0x51
	.long	.LVL2313
	.long	.LVL2315
	.value	0x1
	.byte	0x51
	.long	.LVL2331
	.long	.LFE165
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST866:
	.long	.LVL2316
	.long	.LVL2327
	.value	0x1
	.byte	0x53
	.long	.LVL2331
	.long	.LVL2333
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST867:
	.long	.LVL2317
	.long	.LVL2327
	.value	0x1
	.byte	0x51
	.long	.LVL2331
	.long	.LFE165
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST868:
	.long	.LVL2319
	.long	.LVL2320
	.value	0x1
	.byte	0x50
	.long	.LVL2321
	.long	.LVL2324
	.value	0x1
	.byte	0x50
	.long	.LVL2325
	.long	.LVL2327
	.value	0x1
	.byte	0x50
	.long	.LVL2331
	.long	.LVL2332
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST869:
	.long	.LVL2320
	.long	.LVL2321
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST870:
	.long	.LVL2319
	.long	.LVL2323
	.value	0x1
	.byte	0x56
	.long	.LVL2325
	.long	.LVL2327
	.value	0x1
	.byte	0x56
	.long	.LVL2331
	.long	.LVL2334
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST871:
	.long	.LVL2319
	.long	.LVL2322
	.value	0x1
	.byte	0x56
	.long	.LVL2323
	.long	.LVL2327
	.value	0x1
	.byte	0x56
	.long	.LVL2331
	.long	.LVL2334
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST872:
	.long	.LVL2324
	.long	.LVL2325
	.value	0x1
	.byte	0x50
	.long	.LVL2331
	.long	.LVL2332
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST873:
	.long	.LVL2329
	.long	.LVL2330
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST874:
	.long	.LFB2207
	.long	.LCFI487
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI487
	.long	.LCFI488
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI488
	.long	.LCFI489
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI489
	.long	.LCFI490
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI490
	.long	.LCFI491
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI491
	.long	.LCFI492
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI492
	.long	.LCFI493
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI493
	.long	.LCFI494
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI494
	.long	.LCFI495
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI495
	.long	.LCFI496
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI496
	.long	.LCFI497
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI497
	.long	.LCFI498
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI498
	.long	.LCFI499
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI499
	.long	.LCFI500
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI500
	.long	.LCFI501
	.value	0x2
	.byte	0x74
	.sleb128 28
	.long	.LCFI501
	.long	.LCFI502
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI502
	.long	.LCFI503
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI503
	.long	.LCFI504
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LCFI504
	.long	.LFE2207
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	0x0
	.long	0x0
.LLST875:
	.long	.LVL2337
	.long	.LVL2339
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST876:
	.long	.LVL2338
	.long	.LVL2340
	.value	0x1
	.byte	0x57
	.long	.LVL2341
	.long	.LFE2207
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST877:
	.long	.LVL2347
	.long	.LVL2349
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST878:
	.long	.LVL2342
	.long	.LVL2343
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST879:
	.long	.LVL2344
	.long	.LVL2345
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST880:
	.long	.LVL2346
	.long	.LVL2348
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST881:
	.long	.LFB2294
	.long	.LCFI505
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI505
	.long	.LCFI506
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI506
	.long	.LCFI507
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI507
	.long	.LCFI508
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI508
	.long	.LCFI509
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI509
	.long	.LCFI510
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI510
	.long	.LCFI511
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI511
	.long	.LCFI512
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI512
	.long	.LCFI513
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI513
	.long	.LCFI514
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI514
	.long	.LCFI515
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI515
	.long	.LCFI516
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	.LCFI516
	.long	.LCFI517
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	.LCFI517
	.long	.LCFI518
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI518
	.long	.LCFI519
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI519
	.long	.LCFI520
	.value	0x2
	.byte	0x74
	.sleb128 52
	.long	.LCFI520
	.long	.LCFI521
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	.LCFI521
	.long	.LFE2294
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	0x0
	.long	0x0
.LLST882:
	.long	.LVL2350
	.long	.LVL2351
	.value	0x1
	.byte	0x50
	.long	.LVL2351
	.long	.LVL2376
	.value	0x1
	.byte	0x53
	.long	.LVL2378
	.long	.LVL2380
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST883:
	.long	.LVL2358
	.long	.LVL2360
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST884:
	.long	.LVL2352
	.long	.LVL2353
	.value	0x1
	.byte	0x50
	.long	.LVL2354
	.long	.LVL2356
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST885:
	.long	.LVL2357
	.long	.LVL2359
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST886:
	.long	.LVL2375
	.long	.LVL2378
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST887:
	.long	.LVL2371
	.long	.LVL2372
	.value	0x1
	.byte	0x52
	.long	.LVL2374
	.long	.LVL2377
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST888:
	.long	.LVL2369
	.long	.LVL2370
	.value	0x1
	.byte	0x55
	.long	0x0
	.long	0x0
.LLST889:
	.long	.LVL2361
	.long	.LVL2363
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST890:
	.long	.LVL2362
	.long	.LVL2365
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL2366
	.long	.LVL2367
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST891:
	.long	.LVL2373
	.long	.LVL2374
	.value	0x1
	.byte	0x52
	.long	.LVL2378
	.long	.LVL2379
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST892:
	.long	.LFB2380
	.long	.LCFI522
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI522
	.long	.LCFI523
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI523
	.long	.LCFI524
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI524
	.long	.LCFI525
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI525
	.long	.LCFI526
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI526
	.long	.LCFI527
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI527
	.long	.LCFI528
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI528
	.long	.LCFI529
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI529
	.long	.LCFI530
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI530
	.long	.LCFI531
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI531
	.long	.LCFI532
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI532
	.long	.LCFI533
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI533
	.long	.LCFI534
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI534
	.long	.LCFI535
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI535
	.long	.LCFI536
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI536
	.long	.LCFI537
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	.LCFI537
	.long	.LCFI538
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LCFI538
	.long	.LCFI539
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI539
	.long	.LCFI540
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI540
	.long	.LFE2380
	.value	0x2
	.byte	0x74
	.sleb128 36
	.long	0x0
	.long	0x0
.LLST893:
	.long	.LVL2381
	.long	.LVL2383
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST894:
	.long	.LVL2382
	.long	.LVL2386
	.value	0x1
	.byte	0x53
	.long	.LVL2387
	.long	.LFE2380
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST895:
	.long	.LVL2384
	.long	.LVL2385
	.value	0x1
	.byte	0x52
	.long	.LVL2388
	.long	.LVL2397
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST896:
	.long	.LVL2391
	.long	.LVL2393
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST897:
	.long	.LVL2389
	.long	.LVL2392
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST898:
	.long	.LVL2394
	.long	.LVL2396
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
	.file 37 "src/types.h"
	.file 38 "src/disk.h"
	.file 39 "/usr/lib/gcc/x86_64-linux-gnu/4.4.5/include/stdarg.h"
	.file 40 "src/ata.h"
	.file 41 "src/smp.c"
	.file 42 "src/pci.h"
	.file 43 "src/pirtable.c"
	.file 44 "src/vgahooks.c"
	.file 45 "src/blockcmd.h"
	.file 46 "src/usb-uhci.h"
	.file 47 "src/usb.h"
	.file 48 "src/usb-hid.h"
	.file 49 "src/usb-ohci.h"
	.file 50 "src/usb-ehci.h"
	.file 51 "src/usb-msc.h"
	.file 52 "src/virtio-ring.h"
	.file 53 "src/virtio-pci.h"
	.file 54 "src/virtio-blk.h"
	.file 55 "src/memmap.h"
	.file 56 "src/pic.h"
	.file 57 "src/cmos.h"
	.file 58 "src/ramdisk.c"
	.file 59 "src/font.c"
	.section	.debug_info
	.long	0x24db3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1174
	.byte	0x1
	.long	.LASF1175
	.long	.LASF1176
	.long	0x0
	.long	0x0
	.long	.Ldebug_ranges0+0xa70
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xaf
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xcc
	.uleb128 0x8
	.long	0x8c
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x73
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0xf1
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x10a
	.uleb128 0x8
	.long	0xcc
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x5a
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x11f
	.uleb128 0xe
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x143
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x184
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x1a2
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x5a
	.uleb128 0x8
	.long	0x11f
	.uleb128 0x8
	.long	0x143
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x1c6
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x207
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x225
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x5a
	.uleb128 0x8
	.long	0x1a2
	.uleb128 0x8
	.long	0x1c6
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x249
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x28a
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x2a8
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x5a
	.uleb128 0x8
	.long	0x225
	.uleb128 0x8
	.long	0x249
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x2cc
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x30b
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x329
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x5a
	.uleb128 0x8
	.long	0x2a8
	.uleb128 0x8
	.long	0x2cc
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x34d
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x38c
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x3aa
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x5a
	.uleb128 0x8
	.long	0x329
	.uleb128 0x8
	.long	0x34d
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x3ce
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x40d
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x42b
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x5a
	.uleb128 0x8
	.long	0x3aa
	.uleb128 0x8
	.long	0x3ce
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x44f
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x48e
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x4ac
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x5a
	.uleb128 0x8
	.long	0x42b
	.uleb128 0x8
	.long	0x44f
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0xe
	.byte	0x25
	.long	0x527
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x28a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x30b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x40d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xf
	.long	0x29
	.long	0x537
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x13
	.byte	0x4
	.long	0x542
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF37
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x90b
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x90b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x91b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x92b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x93b
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x94b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x527
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x527
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x527
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x95b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x5a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x93b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x527
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x96b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x41
	.long	0x91b
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x41
	.long	0x92b
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x29
	.long	0x93b
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x29
	.long	0x94b
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x41
	.long	0x95b
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x29
	.long	0x96b
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x29
	.long	0x97b
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xf
	.long	0x29
	.long	0x98b
	.uleb128 0x10
	.long	0x537
	.byte	0xc
	.byte	0x0
	.uleb128 0xd
	.long	.LASF105
	.byte	0x6
	.byte	0x8
	.byte	0xb3
	.long	0x9b4
	.uleb128 0xa
	.long	.LASF106
	.byte	0x8
	.byte	0xb4
	.long	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF107
	.byte	0x8
	.byte	0xb5
	.long	0x5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xa02
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x9c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x9c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xa1f
	.uleb128 0x8
	.long	0x9df
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x9d4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0xa44
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0xa5d
	.uleb128 0x8
	.long	0xa1f
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x9c9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0xa72
	.uleb128 0xe
	.long	0xa44
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0xa82
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0xa92
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0xb2b
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0xb31
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x9d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x9c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0xb31
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa92
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0xb68
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0xf2a
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0xf2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0xf3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0xf4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0xf5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0xf6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0xa5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x9c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0xa72
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0xa72
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0xa72
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0xf7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0xa5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x9c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0xf5a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0xa5d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0xa72
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0xf8a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x9be
	.long	0xf3a
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x9be
	.long	0xf4a
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0xf5a
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0xf6a
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x9be
	.long	0xf7a
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0xf8a
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0xf9a
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF123
	.byte	0x10
	.byte	0xa
	.byte	0x98
	.long	0x104f
	.uleb128 0xa
	.long	.LASF124
	.byte	0xa
	.byte	0x99
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xa
	.byte	0x9a
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF126
	.byte	0xa
	.byte	0x9b
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0x9c
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"irq"
	.byte	0xa
	.byte	0x9d
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0x9e
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"dma"
	.byte	0xa
	.byte	0x9f
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pio"
	.byte	0xa
	.byte	0xa0
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.byte	0xa1
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xa2
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0xa3
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xa4
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x18
	.byte	0xa
	.byte	0xa8
	.long	0x10da
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0xa9
	.long	0xb2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0xaa
	.long	0x9c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0xab
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0xac
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0xad
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0xae
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0xaf
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0xb0
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0xa
	.byte	0xb3
	.long	0xb31
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x10
	.byte	0xa
	.byte	0xb6
	.long	0x118f
	.uleb128 0xa
	.long	.LASF122
	.byte	0xa
	.byte	0xb7
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF121
	.byte	0xa
	.byte	0xb8
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0xb9
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0xba
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0xbb
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xbc
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0xbd
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0xbe
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0xbf
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0xc0
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF113
	.byte	0xa
	.byte	0xc1
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xc2
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.byte	0xa
	.byte	0xc7
	.long	0x11c2
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0xc8
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0xc9
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0xca
	.long	0x11c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0x11d2
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0xc6
	.long	0x11eb
	.uleb128 0x8
	.long	0x118f
	.uleb128 0xc
	.long	.LASF153
	.byte	0xa
	.byte	0xcc
	.long	0x9d4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x8
	.byte	0xa
	.byte	0xc5
	.long	0x1200
	.uleb128 0xe
	.long	0x11d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LASF155
	.value	0x368
	.byte	0xa
	.byte	0xd0
	.long	0x1304
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0xd1
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0xd2
	.long	0x1304
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0xd3
	.long	0xa5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0xd4
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF160
	.byte	0xa
	.byte	0xd5
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xa
	.long	.LASF161
	.byte	0xa
	.byte	0xd6
	.long	0xa82
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF162
	.byte	0xa
	.byte	0xd8
	.long	0x1314
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF163
	.byte	0xa
	.byte	0xdb
	.long	0x1324
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF164
	.byte	0xa
	.byte	0xde
	.long	0x1334
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0xa
	.long	.LASF165
	.byte	0xa
	.byte	0xe1
	.long	0x9b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.uleb128 0xa
	.long	.LASF166
	.byte	0xa
	.byte	0xe2
	.long	0x11eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x122
	.uleb128 0xa
	.long	.LASF167
	.byte	0xa
	.byte	0xe4
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12a
	.uleb128 0xa
	.long	.LASF168
	.byte	0xa
	.byte	0xe7
	.long	0x104f
	.byte	0x3
	.byte	0x23
	.uleb128 0x12e
	.uleb128 0xa
	.long	.LASF169
	.byte	0xa
	.byte	0xea
	.long	0xf9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xa
	.long	.LASF170
	.byte	0xa
	.byte	0xed
	.long	0x1344
	.byte	0x3
	.byte	0x23
	.uleb128 0x156
	.uleb128 0xa
	.long	.LASF171
	.byte	0xa
	.byte	0xef
	.long	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0x166
	.uleb128 0xa
	.long	.LASF172
	.byte	0xa
	.byte	0xf2
	.long	0x1354
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0x1314
	.uleb128 0x10
	.long	0x537
	.byte	0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0x1324
	.uleb128 0x10
	.long	0x537
	.byte	0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x10da
	.long	0x1334
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0x1344
	.uleb128 0x10
	.long	0x537
	.byte	0xc3
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0x1354
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0x1365
	.uleb128 0x15
	.long	0x537
	.value	0x1ff
	.byte	0x0
	.uleb128 0xd
	.long	.LASF173
	.byte	0x14
	.byte	0x4
	.byte	0x1e
	.long	0x13b8
	.uleb128 0xa
	.long	.LASF174
	.byte	0x4
	.byte	0x1f
	.long	0x13b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF175
	.byte	0x4
	.byte	0x1f
	.long	0x13be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF153
	.byte	0x4
	.byte	0x20
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF176
	.byte	0x4
	.byte	0x20
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF177
	.byte	0x4
	.byte	0x20
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x1365
	.uleb128 0x13
	.byte	0x4
	.long	0x13b8
	.uleb128 0xd
	.long	.LASF178
	.byte	0x2c
	.byte	0x4
	.byte	0x24
	.long	0x13fb
	.uleb128 0xa
	.long	.LASF179
	.byte	0x4
	.byte	0x25
	.long	0x1365
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF180
	.byte	0x4
	.byte	0x26
	.long	0x1365
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF181
	.byte	0x4
	.byte	0x27
	.long	0x9c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x16
	.long	.LASF182
	.byte	0x4
	.byte	0x8
	.value	0x18e
	.long	0x1417
	.uleb128 0xa
	.long	.LASF183
	.byte	0x4
	.byte	0x2c
	.long	0x13b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x16
	.long	.LASF184
	.byte	0x10
	.byte	0x4
	.value	0x1b0
	.long	0x148e
	.uleb128 0x17
	.long	.LASF185
	.byte	0x4
	.value	0x1b1
	.long	0x9c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF186
	.byte	0x4
	.value	0x1b2
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF106
	.byte	0x4
	.value	0x1b3
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x17
	.long	.LASF132
	.byte	0x4
	.value	0x1b4
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.long	.LASF187
	.byte	0x4
	.value	0x1b5
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x17
	.long	.LASF188
	.byte	0x4
	.value	0x1b6
	.long	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x17
	.long	.LASF130
	.byte	0x4
	.value	0x1b7
	.long	0x148e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xf
	.long	0x9b4
	.long	0x149e
	.uleb128 0x10
	.long	0x537
	.byte	0x4
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x14ec
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x14b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x14b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x1509
	.uleb128 0x8
	.long	0x14c9
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x14be
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x152e
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x1547
	.uleb128 0x8
	.long	0x1509
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x14b3
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x155c
	.uleb128 0xe
	.long	0x152e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x156c
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x157c
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x1615
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x161b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x14be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x14b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x161b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x157c
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x1652
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x1a14
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x1a14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x1a24
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x1a34
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x1a44
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x1a54
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x1547
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x14b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x155c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x155c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x14a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x14a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x14a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x155c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x1a64
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x1547
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x14b3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x1a44
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x1547
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x155c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x1a74
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x14a8
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x14a8
	.long	0x1a24
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x14a8
	.long	0x1a34
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1a44
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1a54
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x14a8
	.long	0x1a64
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1a74
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1a84
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF123
	.byte	0x10
	.byte	0xa
	.byte	0x98
	.long	0x1b39
	.uleb128 0xa
	.long	.LASF124
	.byte	0xa
	.byte	0x99
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xa
	.byte	0x9a
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF126
	.byte	0xa
	.byte	0x9b
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0x9c
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"irq"
	.byte	0xa
	.byte	0x9d
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0x9e
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"dma"
	.byte	0xa
	.byte	0x9f
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pio"
	.byte	0xa
	.byte	0xa0
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.byte	0xa1
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xa2
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0xa3
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xa4
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x18
	.byte	0xa
	.byte	0xa8
	.long	0x1bc4
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0xa9
	.long	0x1615
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0xaa
	.long	0x14b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0xab
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0xac
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0xad
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0xae
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0xaf
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0xb0
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0xa
	.byte	0xb3
	.long	0x161b
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x10
	.byte	0xa
	.byte	0xb6
	.long	0x1c79
	.uleb128 0xa
	.long	.LASF122
	.byte	0xa
	.byte	0xb7
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF121
	.byte	0xa
	.byte	0xb8
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0xb9
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0xba
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0xbb
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xbc
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0xbd
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0xbe
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0xbf
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0xc0
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF113
	.byte	0xa
	.byte	0xc1
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xc2
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.byte	0xa
	.byte	0xc7
	.long	0x1cac
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0xc8
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0xc9
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0xca
	.long	0x1cac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1cbc
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0xc6
	.long	0x1cd5
	.uleb128 0x8
	.long	0x1c79
	.uleb128 0xc
	.long	.LASF153
	.byte	0xa
	.byte	0xcc
	.long	0x14be
	.byte	0x0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x8
	.byte	0xa
	.byte	0xc5
	.long	0x1cea
	.uleb128 0xe
	.long	0x1cbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LASF155
	.value	0x368
	.byte	0xa
	.byte	0xd0
	.long	0x1dee
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0xd1
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0xd2
	.long	0x1dee
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0xd3
	.long	0x1547
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0xd4
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF160
	.byte	0xa
	.byte	0xd5
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xa
	.long	.LASF161
	.byte	0xa
	.byte	0xd6
	.long	0x156c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF162
	.byte	0xa
	.byte	0xd8
	.long	0x1dfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF163
	.byte	0xa
	.byte	0xdb
	.long	0x1e0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF164
	.byte	0xa
	.byte	0xde
	.long	0x1e1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0xa
	.long	.LASF165
	.byte	0xa
	.byte	0xe1
	.long	0x149e
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.uleb128 0xa
	.long	.LASF166
	.byte	0xa
	.byte	0xe2
	.long	0x1cd5
	.byte	0x3
	.byte	0x23
	.uleb128 0x122
	.uleb128 0xa
	.long	.LASF167
	.byte	0xa
	.byte	0xe4
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12a
	.uleb128 0xa
	.long	.LASF168
	.byte	0xa
	.byte	0xe7
	.long	0x1b39
	.byte	0x3
	.byte	0x23
	.uleb128 0x12e
	.uleb128 0xa
	.long	.LASF169
	.byte	0xa
	.byte	0xea
	.long	0x1a84
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xa
	.long	.LASF170
	.byte	0xa
	.byte	0xed
	.long	0x1e2e
	.byte	0x3
	.byte	0x23
	.uleb128 0x156
	.uleb128 0xa
	.long	.LASF171
	.byte	0xa
	.byte	0xef
	.long	0x14a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x166
	.uleb128 0xa
	.long	.LASF172
	.byte	0xa
	.byte	0xf2
	.long	0x1e3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1dfe
	.uleb128 0x10
	.long	0x537
	.byte	0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1e0e
	.uleb128 0x10
	.long	0x537
	.byte	0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x1bc4
	.long	0x1e1e
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1e2e
	.uleb128 0x10
	.long	0x537
	.byte	0xc3
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1e3e
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x1e4f
	.uleb128 0x15
	.long	0x537
	.value	0x1ff
	.byte	0x0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.long	0x1e6a
	.uleb128 0xa
	.long	.LASF190
	.byte	0x8
	.byte	0xdd
	.long	0x14b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x1e8e
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x1ecf
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x1eed
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x14b3
	.uleb128 0x8
	.long	0x1e6a
	.uleb128 0x8
	.long	0x1e8e
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x1f11
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x1f52
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x1f70
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x14b3
	.uleb128 0x8
	.long	0x1eed
	.uleb128 0x8
	.long	0x1f11
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x1f94
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x1fd5
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x1ff3
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x14b3
	.uleb128 0x8
	.long	0x1f70
	.uleb128 0x8
	.long	0x1f94
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x2017
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x2056
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x2074
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x14b3
	.uleb128 0x8
	.long	0x1ff3
	.uleb128 0x8
	.long	0x2017
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x2098
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x20d7
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x20f5
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x14b3
	.uleb128 0x8
	.long	0x2074
	.uleb128 0x8
	.long	0x2098
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x2119
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x2158
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x2176
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x14b3
	.uleb128 0x8
	.long	0x20f5
	.uleb128 0x8
	.long	0x2119
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x219a
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x21d9
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x149e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x21f7
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x14b3
	.uleb128 0x8
	.long	0x2176
	.uleb128 0x8
	.long	0x219a
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0x26
	.byte	0x64
	.long	0x2272
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x1ecf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x1f52
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x1fd5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x2056
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x20d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x2158
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x21d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x1547
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x14a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xd
	.long	.LASF191
	.byte	0xc
	.byte	0x8
	.byte	0xd7
	.long	0x22a9
	.uleb128 0xa
	.long	.LASF174
	.byte	0x6
	.byte	0xe
	.long	0x22a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF192
	.byte	0x6
	.byte	0xf
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF175
	.byte	0x6
	.byte	0x10
	.long	0x22af
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x2272
	.uleb128 0x13
	.byte	0x4
	.long	0x22a9
	.uleb128 0x18
	.long	.LASF193
	.byte	0x27
	.byte	0x28
	.long	0x22c0
	.uleb128 0x19
	.byte	0x4
	.long	.LASF1177
	.long	0x542
	.uleb128 0x18
	.long	.LASF194
	.byte	0x27
	.byte	0x66
	.long	0x22b5
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"s32"
	.byte	0x25
	.byte	0xe
	.long	0x6c
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x232e
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x22ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x22ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x234b
	.uleb128 0x8
	.long	0x230b
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x2300
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x2370
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x2389
	.uleb128 0x8
	.long	0x234b
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x22ea
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x239e
	.uleb128 0xe
	.long	0x2370
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x23c2
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x2403
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x2421
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x22ea
	.uleb128 0x8
	.long	0x239e
	.uleb128 0x8
	.long	0x23c2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x2445
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x2486
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x24a4
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x22ea
	.uleb128 0x8
	.long	0x2421
	.uleb128 0x8
	.long	0x2445
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x24c8
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x2509
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x2527
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x22ea
	.uleb128 0x8
	.long	0x24a4
	.uleb128 0x8
	.long	0x24c8
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x254b
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x258a
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x25a8
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x22ea
	.uleb128 0x8
	.long	0x2527
	.uleb128 0x8
	.long	0x254b
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x25cc
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x260b
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x2629
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x22ea
	.uleb128 0x8
	.long	0x25a8
	.uleb128 0x8
	.long	0x25cc
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x264d
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x268c
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x26aa
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x22ea
	.uleb128 0x8
	.long	0x2629
	.uleb128 0x8
	.long	0x264d
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x26ce
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x270d
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x272b
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x22ea
	.uleb128 0x8
	.long	0x26aa
	.uleb128 0x8
	.long	0x26ce
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0x8
	.byte	0xb9
	.long	0x27a6
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x2403
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x2486
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x2509
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x258a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x260b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x268c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x270d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x2389
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xd
	.long	.LASF195
	.byte	0x4
	.byte	0x3
	.byte	0xf
	.long	0x27c1
	.uleb128 0xa
	.long	.LASF196
	.byte	0x3
	.byte	0x10
	.long	0x27d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.long	0x27d2
	.uleb128 0x1b
	.long	0x27d2
	.uleb128 0x1b
	.long	0x542
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x27a6
	.uleb128 0x13
	.byte	0x4
	.long	0x27c1
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x18
	.long	.LASF197
	.byte	0x25
	.byte	0x11
	.long	0x27f3
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x2837
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x27f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x27f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x2854
	.uleb128 0x8
	.long	0x2814
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x27fe
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x2879
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x2892
	.uleb128 0x8
	.long	0x2854
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x27f3
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x28a7
	.uleb128 0xe
	.long	0x2879
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x28cb
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x290c
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x292a
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x27f3
	.uleb128 0x8
	.long	0x28a7
	.uleb128 0x8
	.long	0x28cb
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x294e
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x298f
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x29ad
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x27f3
	.uleb128 0x8
	.long	0x292a
	.uleb128 0x8
	.long	0x294e
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x29d1
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x2a12
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x2a30
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x27f3
	.uleb128 0x8
	.long	0x29ad
	.uleb128 0x8
	.long	0x29d1
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x2a54
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x2a93
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x2ab1
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x27f3
	.uleb128 0x8
	.long	0x2a30
	.uleb128 0x8
	.long	0x2a54
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x2ad5
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x2b14
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x2b32
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x27f3
	.uleb128 0x8
	.long	0x2ab1
	.uleb128 0x8
	.long	0x2ad5
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x2b56
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x2b95
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x2bb3
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x27f3
	.uleb128 0x8
	.long	0x2b32
	.uleb128 0x8
	.long	0x2b56
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x2bd7
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x2c16
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x27de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x2c34
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x27f3
	.uleb128 0x8
	.long	0x2bb3
	.uleb128 0x8
	.long	0x2bd7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0x8
	.byte	0xb9
	.long	0x2caf
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x290c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x298f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x2a12
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x2a93
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x2b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x2b95
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x2c16
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x2892
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x27e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x2cfd
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x2cc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x2cc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x2d1a
	.uleb128 0x8
	.long	0x2cda
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x2ccf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF198
	.byte	0x14
	.byte	0x26
	.byte	0x94
	.long	0x2d6d
	.uleb128 0x6
	.string	"lba"
	.byte	0x26
	.byte	0x95
	.long	0x2ccf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF199
	.byte	0x26
	.byte	0x96
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF200
	.byte	0x26
	.byte	0x97
	.long	0x2e06
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF201
	.byte	0x26
	.byte	0x98
	.long	0x2cb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF202
	.byte	0x26
	.byte	0x99
	.long	0x2caf
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x2e06
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x2caf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x2caf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x2e0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x2ccf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x2cc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x2caf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x2caf
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x2cb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x2e0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x2d6d
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x2e43
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x2cb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x2cb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x2cb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x2e91
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x2e58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x2e58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x2eae
	.uleb128 0x8
	.long	0x2e6e
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x2e63
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x2ed3
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x2eec
	.uleb128 0x8
	.long	0x2eae
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x2e58
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x2f01
	.uleb128 0xe
	.long	0x2ed3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x2e43
	.long	0x2f11
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	.LASF203
	.byte	0xb
	.byte	0x26
	.byte	0x4d
	.long	0x2fb8
	.uleb128 0xa
	.long	.LASF204
	.byte	0x26
	.byte	0x4e
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF205
	.byte	0x26
	.byte	0x4f
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF206
	.byte	0x26
	.byte	0x50
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF207
	.byte	0x26
	.byte	0x51
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0x52
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF208
	.byte	0x26
	.byte	0x53
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF209
	.byte	0x26
	.byte	0x54
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF210
	.byte	0x26
	.byte	0x55
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF211
	.byte	0x26
	.byte	0x56
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF212
	.byte	0x26
	.byte	0x57
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF213
	.byte	0x26
	.byte	0x58
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0xd
	.long	.LASF198
	.byte	0x14
	.byte	0x26
	.byte	0x94
	.long	0x300b
	.uleb128 0x6
	.string	"lba"
	.byte	0x26
	.byte	0x95
	.long	0x2e63
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF199
	.byte	0x26
	.byte	0x96
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF200
	.byte	0x26
	.byte	0x97
	.long	0x30a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF201
	.byte	0x26
	.byte	0x98
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF202
	.byte	0x26
	.byte	0x99
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x30a4
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x30aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x2e63
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x2e58
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x30aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x300b
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x30e1
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x34a3
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x34a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x34b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x34c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x34d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x34e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x2eec
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x2e58
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x2e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x2f01
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x2f01
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x2e4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x2e4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x2e4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x2f01
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x34f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x2eec
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x2e58
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x2e43
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x34d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x2eec
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x2f01
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x3503
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x2e4d
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x2e4d
	.long	0x34b3
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x2e4d
	.long	0x34c3
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x2e43
	.long	0x34d3
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x2e43
	.long	0x34e3
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x2e4d
	.long	0x34f3
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x2e43
	.long	0x3503
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x2e43
	.long	0x3513
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF214
	.byte	0x8
	.byte	0x5
	.byte	0x40
	.long	0x354a
	.uleb128 0x6
	.string	"chs"
	.byte	0x5
	.byte	0x41
	.long	0x30aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF215
	.byte	0x5
	.byte	0x42
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF216
	.byte	0x5
	.byte	0x43
	.long	0x2e43
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x3598
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x355f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x355f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x35b5
	.uleb128 0x8
	.long	0x3575
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x356a
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x35da
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x35f3
	.uleb128 0x8
	.long	0x35b5
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x355f
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x3608
	.uleb128 0xe
	.long	0x35da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x354a
	.long	0x3618
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF198
	.byte	0x14
	.byte	0x26
	.byte	0x94
	.long	0x366b
	.uleb128 0x6
	.string	"lba"
	.byte	0x26
	.byte	0x95
	.long	0x356a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF199
	.byte	0x26
	.byte	0x96
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF200
	.byte	0x26
	.byte	0x97
	.long	0x3704
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF201
	.byte	0x26
	.byte	0x98
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF202
	.byte	0x26
	.byte	0x99
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x3704
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x370a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x356a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x355f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x370a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x366b
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x3741
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF123
	.byte	0x10
	.byte	0xa
	.byte	0x98
	.long	0x37f6
	.uleb128 0xa
	.long	.LASF124
	.byte	0xa
	.byte	0x99
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xa
	.byte	0x9a
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF126
	.byte	0xa
	.byte	0x9b
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0x9c
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"irq"
	.byte	0xa
	.byte	0x9d
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0x9e
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"dma"
	.byte	0xa
	.byte	0x9f
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pio"
	.byte	0xa
	.byte	0xa0
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.byte	0xa1
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xa2
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0xa3
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xa4
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x18
	.byte	0xa
	.byte	0xa8
	.long	0x3881
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0xa9
	.long	0x3704
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0xaa
	.long	0x355f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0xab
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0xac
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0xad
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0xae
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0xaf
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0xb0
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0xa
	.byte	0xb3
	.long	0x370a
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x10
	.byte	0xa
	.byte	0xb6
	.long	0x3936
	.uleb128 0xa
	.long	.LASF122
	.byte	0xa
	.byte	0xb7
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF121
	.byte	0xa
	.byte	0xb8
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0xb9
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0xba
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0xbb
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xbc
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0xbd
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0xbe
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0xbf
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0xc0
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF113
	.byte	0xa
	.byte	0xc1
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xc2
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.byte	0xa
	.byte	0xc7
	.long	0x3969
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0xc8
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0xc9
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0xca
	.long	0x3969
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x354a
	.long	0x3979
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0xc6
	.long	0x3992
	.uleb128 0x8
	.long	0x3936
	.uleb128 0xc
	.long	.LASF153
	.byte	0xa
	.byte	0xcc
	.long	0x356a
	.byte	0x0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x8
	.byte	0xa
	.byte	0xc5
	.long	0x39a7
	.uleb128 0xe
	.long	0x3979
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LASF155
	.value	0x368
	.byte	0xa
	.byte	0xd0
	.long	0x3aab
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0xd1
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0xd2
	.long	0x3aab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0xd3
	.long	0x35f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0xd4
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF160
	.byte	0xa
	.byte	0xd5
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xa
	.long	.LASF161
	.byte	0xa
	.byte	0xd6
	.long	0x3608
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF162
	.byte	0xa
	.byte	0xd8
	.long	0x3abb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF163
	.byte	0xa
	.byte	0xdb
	.long	0x3acb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF164
	.byte	0xa
	.byte	0xde
	.long	0x3adb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0xa
	.long	.LASF165
	.byte	0xa
	.byte	0xe1
	.long	0x354a
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.uleb128 0xa
	.long	.LASF166
	.byte	0xa
	.byte	0xe2
	.long	0x3992
	.byte	0x3
	.byte	0x23
	.uleb128 0x122
	.uleb128 0xa
	.long	.LASF167
	.byte	0xa
	.byte	0xe4
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12a
	.uleb128 0xa
	.long	.LASF168
	.byte	0xa
	.byte	0xe7
	.long	0x37f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x12e
	.uleb128 0xa
	.long	.LASF169
	.byte	0xa
	.byte	0xea
	.long	0x3741
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xa
	.long	.LASF170
	.byte	0xa
	.byte	0xed
	.long	0x3aeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x156
	.uleb128 0xa
	.long	.LASF171
	.byte	0xa
	.byte	0xef
	.long	0x3554
	.byte	0x3
	.byte	0x23
	.uleb128 0x166
	.uleb128 0xa
	.long	.LASF172
	.byte	0xa
	.byte	0xf2
	.long	0x3afb
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.byte	0x0
	.uleb128 0xf
	.long	0x354a
	.long	0x3abb
	.uleb128 0x10
	.long	0x537
	.byte	0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x354a
	.long	0x3acb
	.uleb128 0x10
	.long	0x537
	.byte	0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x3881
	.long	0x3adb
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x354a
	.long	0x3aeb
	.uleb128 0x10
	.long	0x537
	.byte	0xc3
	.byte	0x0
	.uleb128 0xf
	.long	0x354a
	.long	0x3afb
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.long	0x354a
	.long	0x3b0c
	.uleb128 0x15
	.long	0x537
	.value	0x1ff
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x3b12
	.uleb128 0x1c
	.long	0x542
	.uleb128 0xd
	.long	.LASF217
	.byte	0xc
	.byte	0x28
	.byte	0x8
	.long	0x3b78
	.uleb128 0xa
	.long	.LASF124
	.byte	0x28
	.byte	0x9
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF125
	.byte	0x28
	.byte	0xa
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF218
	.byte	0x28
	.byte	0xb
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"irq"
	.byte	0x28
	.byte	0xc
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF219
	.byte	0x28
	.byte	0xd
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF220
	.byte	0x28
	.byte	0xe
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	.LASF221
	.byte	0x2c
	.byte	0x28
	.byte	0x11
	.long	0x3baf
	.uleb128 0xa
	.long	.LASF222
	.byte	0x28
	.byte	0x12
	.long	0x366b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF223
	.byte	0x28
	.byte	0x13
	.long	0x3baf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.long	.LASF224
	.byte	0x28
	.byte	0x14
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x3b17
	.uleb128 0xf
	.long	0x542
	.long	0x3bc5
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x542
	.long	0x3bd5
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF225
	.byte	0xc
	.byte	0x1b
	.byte	0xae
	.long	0x3c8a
	.uleb128 0xa
	.long	.LASF226
	.byte	0x1b
	.byte	0xaf
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF138
	.byte	0x1b
	.byte	0xb0
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF227
	.byte	0x1b
	.byte	0xb1
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF228
	.byte	0x1b
	.byte	0xb2
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF229
	.byte	0x1b
	.byte	0xb3
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF230
	.byte	0x1b
	.byte	0xb4
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF202
	.byte	0x1b
	.byte	0xb5
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF231
	.byte	0x1b
	.byte	0xb7
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF232
	.byte	0x1b
	.byte	0xb8
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF233
	.byte	0x1b
	.byte	0xb9
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF234
	.byte	0x1b
	.byte	0xba
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF235
	.byte	0x1b
	.byte	0xbb
	.long	0x354a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x16
	.long	.LASF236
	.byte	0x8
	.byte	0x1b
	.value	0x175
	.long	0x3cb6
	.uleb128 0x17
	.long	.LASF199
	.byte	0x1b
	.value	0x176
	.long	0x355f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF201
	.byte	0x1b
	.value	0x177
	.long	0x355f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x3d04
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x3ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x3ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x3d21
	.uleb128 0x8
	.long	0x3ce1
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x3cd6
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x3d46
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x3d5f
	.uleb128 0x8
	.long	0x3d21
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x3ccb
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x3d74
	.uleb128 0xe
	.long	0x3d46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x3d84
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x3d94
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x3e2d
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x3e33
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x3cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x3ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x3e33
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x3d94
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x3e6a
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x422c
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x422c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x423c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x424c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x425c
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x426c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x3d5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x3ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x3d74
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x3d74
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x3cc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x3cc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x3cc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x3d74
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x427c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x3d5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x3ccb
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x425c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x3d5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x3d74
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x428c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x3cc0
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x3cc0
	.long	0x423c
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x3cc0
	.long	0x424c
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x425c
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x426c
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x3cc0
	.long	0x427c
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x428c
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x429c
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF123
	.byte	0x10
	.byte	0xa
	.byte	0x98
	.long	0x4351
	.uleb128 0xa
	.long	.LASF124
	.byte	0xa
	.byte	0x99
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xa
	.byte	0x9a
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF126
	.byte	0xa
	.byte	0x9b
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0x9c
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"irq"
	.byte	0xa
	.byte	0x9d
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0x9e
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"dma"
	.byte	0xa
	.byte	0x9f
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pio"
	.byte	0xa
	.byte	0xa0
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.byte	0xa1
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xa2
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0xa3
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xa4
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x18
	.byte	0xa
	.byte	0xa8
	.long	0x43dc
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0xa9
	.long	0x3e2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0xaa
	.long	0x3ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0xab
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0xac
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0xad
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0xae
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0xaf
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0xb0
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0xa
	.byte	0xb3
	.long	0x3e33
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x10
	.byte	0xa
	.byte	0xb6
	.long	0x4491
	.uleb128 0xa
	.long	.LASF122
	.byte	0xa
	.byte	0xb7
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF121
	.byte	0xa
	.byte	0xb8
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0xb9
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0xba
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0xbb
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xbc
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0xbd
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0xbe
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0xbf
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0xc0
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF113
	.byte	0xa
	.byte	0xc1
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xc2
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.byte	0xa
	.byte	0xc7
	.long	0x44c4
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0xc8
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0xc9
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0xca
	.long	0x44c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x44d4
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0xc6
	.long	0x44ed
	.uleb128 0x8
	.long	0x4491
	.uleb128 0xc
	.long	.LASF153
	.byte	0xa
	.byte	0xcc
	.long	0x3cd6
	.byte	0x0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x8
	.byte	0xa
	.byte	0xc5
	.long	0x4502
	.uleb128 0xe
	.long	0x44d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LASF155
	.value	0x368
	.byte	0xa
	.byte	0xd0
	.long	0x4606
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0xd1
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0xd2
	.long	0x4606
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0xd3
	.long	0x3d5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0xd4
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF160
	.byte	0xa
	.byte	0xd5
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xa
	.long	.LASF161
	.byte	0xa
	.byte	0xd6
	.long	0x3d84
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF162
	.byte	0xa
	.byte	0xd8
	.long	0x4616
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF163
	.byte	0xa
	.byte	0xdb
	.long	0x4626
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF164
	.byte	0xa
	.byte	0xde
	.long	0x4636
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0xa
	.long	.LASF165
	.byte	0xa
	.byte	0xe1
	.long	0x3cb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.uleb128 0xa
	.long	.LASF166
	.byte	0xa
	.byte	0xe2
	.long	0x44ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x122
	.uleb128 0xa
	.long	.LASF167
	.byte	0xa
	.byte	0xe4
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12a
	.uleb128 0xa
	.long	.LASF168
	.byte	0xa
	.byte	0xe7
	.long	0x4351
	.byte	0x3
	.byte	0x23
	.uleb128 0x12e
	.uleb128 0xa
	.long	.LASF169
	.byte	0xa
	.byte	0xea
	.long	0x429c
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xa
	.long	.LASF170
	.byte	0xa
	.byte	0xed
	.long	0x4646
	.byte	0x3
	.byte	0x23
	.uleb128 0x156
	.uleb128 0xa
	.long	.LASF171
	.byte	0xa
	.byte	0xef
	.long	0x3cc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x166
	.uleb128 0xa
	.long	.LASF172
	.byte	0xa
	.byte	0xf2
	.long	0x4656
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x4616
	.uleb128 0x10
	.long	0x537
	.byte	0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x4626
	.uleb128 0x10
	.long	0x537
	.byte	0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x43dc
	.long	0x4636
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x4646
	.uleb128 0x10
	.long	0x537
	.byte	0xc3
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x4656
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.long	0x3cb6
	.long	0x4667
	.uleb128 0x15
	.long	0x537
	.value	0x1ff
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x468b
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x46cc
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x46ea
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x3ccb
	.uleb128 0x8
	.long	0x4667
	.uleb128 0x8
	.long	0x468b
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x470e
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x474f
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x476d
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x3ccb
	.uleb128 0x8
	.long	0x46ea
	.uleb128 0x8
	.long	0x470e
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x4791
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x47d2
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x47f0
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x3ccb
	.uleb128 0x8
	.long	0x476d
	.uleb128 0x8
	.long	0x4791
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x4814
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x4853
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x4871
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x3ccb
	.uleb128 0x8
	.long	0x47f0
	.uleb128 0x8
	.long	0x4814
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x4895
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x48d4
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x48f2
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x3ccb
	.uleb128 0x8
	.long	0x4871
	.uleb128 0x8
	.long	0x4895
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x4916
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x4955
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x4973
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x3ccb
	.uleb128 0x8
	.long	0x48f2
	.uleb128 0x8
	.long	0x4916
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x4997
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x49d6
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x3cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x49f4
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x3ccb
	.uleb128 0x8
	.long	0x4973
	.uleb128 0x8
	.long	0x4997
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0x26
	.byte	0x64
	.long	0x4a6f
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x46cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x474f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x47d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x4853
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x48d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x4955
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x49d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x3d5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x3cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x4abd
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x4a84
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x4a84
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x4ada
	.uleb128 0x8
	.long	0x4a9a
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x4a8f
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x4aff
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x4b18
	.uleb128 0x8
	.long	0x4ada
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x4a84
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x4b2d
	.uleb128 0xe
	.long	0x4aff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x4a6f
	.long	0x4b3d
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x4eff
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x4eff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x4f0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x4f1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x4f2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x4f3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x4b18
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x4a84
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x4b2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x4b2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x4a79
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x4a79
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x4a79
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x4b2d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x4f4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x4b18
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x4a84
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x4a6f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x4f2f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x4b18
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x4b2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x4f5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x4a79
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x4a79
	.long	0x4f0f
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x4a79
	.long	0x4f1f
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x4a6f
	.long	0x4f2f
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x4a6f
	.long	0x4f3f
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x4a79
	.long	0x4f4f
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x4a6f
	.long	0x4f5f
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x4a6f
	.long	0x4f6f
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x4f93
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x4fd4
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x4ff2
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x4a84
	.uleb128 0x8
	.long	0x4f6f
	.uleb128 0x8
	.long	0x4f93
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x5016
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x5057
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x5075
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x4a84
	.uleb128 0x8
	.long	0x4ff2
	.uleb128 0x8
	.long	0x5016
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x5099
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x50da
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x50f8
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x4a84
	.uleb128 0x8
	.long	0x5075
	.uleb128 0x8
	.long	0x5099
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x511c
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x515b
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x5179
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x4a84
	.uleb128 0x8
	.long	0x50f8
	.uleb128 0x8
	.long	0x511c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x519d
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x51dc
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x51fa
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x4a84
	.uleb128 0x8
	.long	0x5179
	.uleb128 0x8
	.long	0x519d
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x521e
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x525d
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x527b
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x4a84
	.uleb128 0x8
	.long	0x51fa
	.uleb128 0x8
	.long	0x521e
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x529f
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x52de
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x52fc
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x4a84
	.uleb128 0x8
	.long	0x527b
	.uleb128 0x8
	.long	0x529f
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0x26
	.byte	0x64
	.long	0x5377
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x4fd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x5057
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x50da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x515b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x51dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x525d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x52de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x4b18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x16
	.long	.LASF237
	.byte	0xa
	.byte	0xb
	.value	0x11b
	.long	0x53d0
	.uleb128 0x17
	.long	.LASF238
	.byte	0xb
	.value	0x11c
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF239
	.byte	0xb
	.value	0x11d
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.long	.LASF240
	.byte	0xb
	.value	0x11e
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"alt"
	.byte	0xb
	.value	0x11f
	.long	0x4a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.long	.LASF241
	.byte	0xb
	.value	0x120
	.long	0x4a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x543e
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x5405
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x5405
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x545b
	.uleb128 0x8
	.long	0x541b
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x5410
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x5480
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x5499
	.uleb128 0x8
	.long	0x545b
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x5405
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x54ae
	.uleb128 0xe
	.long	0x5480
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x53f0
	.long	0x54be
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x5880
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x5880
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x5890
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x58a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x58b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x58c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x5499
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x5405
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x54ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x54ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x53fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x53fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x53fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x54ae
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x58d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x5499
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x5405
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x53f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x58b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x5499
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x54ae
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x58e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x53fa
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x53fa
	.long	0x5890
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x53fa
	.long	0x58a0
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x53f0
	.long	0x58b0
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x53f0
	.long	0x58c0
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x53fa
	.long	0x58d0
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x53f0
	.long	0x58e0
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x53f0
	.long	0x58f0
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xf
	.long	0x53f0
	.long	0x5900
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x5924
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x5965
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x5983
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x5405
	.uleb128 0x8
	.long	0x5900
	.uleb128 0x8
	.long	0x5924
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x59a7
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x59e8
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x5a06
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x5405
	.uleb128 0x8
	.long	0x5983
	.uleb128 0x8
	.long	0x59a7
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x5a2a
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x5a6b
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x5a89
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x5405
	.uleb128 0x8
	.long	0x5a06
	.uleb128 0x8
	.long	0x5a2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x5aad
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x5aec
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x5b0a
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x5405
	.uleb128 0x8
	.long	0x5a89
	.uleb128 0x8
	.long	0x5aad
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x5b2e
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x5b6d
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x5b8b
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x5405
	.uleb128 0x8
	.long	0x5b0a
	.uleb128 0x8
	.long	0x5b2e
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x5baf
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x5bee
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x5c0c
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x5405
	.uleb128 0x8
	.long	0x5b8b
	.uleb128 0x8
	.long	0x5baf
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x5c30
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x5c6f
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x53f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x5c8d
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x5405
	.uleb128 0x8
	.long	0x5c0c
	.uleb128 0x8
	.long	0x5c30
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0x26
	.byte	0x64
	.long	0x5d08
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x5965
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x59e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x5a6b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x5aec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x5b6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x5bee
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x5c6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x5499
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x53fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x5d56
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x5d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x5d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x5d73
	.uleb128 0x8
	.long	0x5d33
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x5d28
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x5d98
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x5db1
	.uleb128 0x8
	.long	0x5d73
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x5d1d
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x5dc6
	.uleb128 0xe
	.long	0x5d98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x5dd6
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x5de6
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x5e7f
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x5e85
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x5d28
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x5d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x5e85
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x5de6
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x5ebc
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x627e
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x627e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x628e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x629e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x62ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x62be
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x5db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x5d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x5dc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x5dc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x5d12
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x5d12
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x5d12
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x5dc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x62ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x5db1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x5d1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x62ae
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x5db1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x5dc6
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x62de
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x5d12
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x5d12
	.long	0x628e
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x5d12
	.long	0x629e
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x62ae
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x62be
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x5d12
	.long	0x62ce
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x62de
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x62ee
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF123
	.byte	0x10
	.byte	0xa
	.byte	0x98
	.long	0x63a3
	.uleb128 0xa
	.long	.LASF124
	.byte	0xa
	.byte	0x99
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xa
	.byte	0x9a
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF126
	.byte	0xa
	.byte	0x9b
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0x9c
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"irq"
	.byte	0xa
	.byte	0x9d
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0x9e
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"dma"
	.byte	0xa
	.byte	0x9f
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pio"
	.byte	0xa
	.byte	0xa0
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.byte	0xa1
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xa2
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0xa3
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xa4
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x18
	.byte	0xa
	.byte	0xa8
	.long	0x642e
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0xa9
	.long	0x5e7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0xaa
	.long	0x5d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0xab
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0xac
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0xad
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0xae
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0xaf
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0xb0
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0xa
	.byte	0xb3
	.long	0x5e85
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x10
	.byte	0xa
	.byte	0xb6
	.long	0x64e3
	.uleb128 0xa
	.long	.LASF122
	.byte	0xa
	.byte	0xb7
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF121
	.byte	0xa
	.byte	0xb8
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0xb9
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0xba
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0xbb
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xbc
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0xbd
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0xbe
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0xbf
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0xc0
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF113
	.byte	0xa
	.byte	0xc1
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xc2
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.byte	0xa
	.byte	0xc7
	.long	0x6516
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0xc8
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0xc9
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0xca
	.long	0x6516
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x6526
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0xc6
	.long	0x653f
	.uleb128 0x8
	.long	0x64e3
	.uleb128 0xc
	.long	.LASF153
	.byte	0xa
	.byte	0xcc
	.long	0x5d28
	.byte	0x0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x8
	.byte	0xa
	.byte	0xc5
	.long	0x6554
	.uleb128 0xe
	.long	0x6526
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LASF155
	.value	0x368
	.byte	0xa
	.byte	0xd0
	.long	0x6658
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0xd1
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0xd2
	.long	0x6658
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0xd3
	.long	0x5db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0xd4
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF160
	.byte	0xa
	.byte	0xd5
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xa
	.long	.LASF161
	.byte	0xa
	.byte	0xd6
	.long	0x5dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF162
	.byte	0xa
	.byte	0xd8
	.long	0x6668
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF163
	.byte	0xa
	.byte	0xdb
	.long	0x6678
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF164
	.byte	0xa
	.byte	0xde
	.long	0x6688
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0xa
	.long	.LASF165
	.byte	0xa
	.byte	0xe1
	.long	0x5d08
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.uleb128 0xa
	.long	.LASF166
	.byte	0xa
	.byte	0xe2
	.long	0x653f
	.byte	0x3
	.byte	0x23
	.uleb128 0x122
	.uleb128 0xa
	.long	.LASF167
	.byte	0xa
	.byte	0xe4
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12a
	.uleb128 0xa
	.long	.LASF168
	.byte	0xa
	.byte	0xe7
	.long	0x63a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x12e
	.uleb128 0xa
	.long	.LASF169
	.byte	0xa
	.byte	0xea
	.long	0x62ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xa
	.long	.LASF170
	.byte	0xa
	.byte	0xed
	.long	0x6698
	.byte	0x3
	.byte	0x23
	.uleb128 0x156
	.uleb128 0xa
	.long	.LASF171
	.byte	0xa
	.byte	0xef
	.long	0x5d12
	.byte	0x3
	.byte	0x23
	.uleb128 0x166
	.uleb128 0xa
	.long	.LASF172
	.byte	0xa
	.byte	0xf2
	.long	0x66a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x6668
	.uleb128 0x10
	.long	0x537
	.byte	0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x6678
	.uleb128 0x10
	.long	0x537
	.byte	0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x642e
	.long	0x6688
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x6698
	.uleb128 0x10
	.long	0x537
	.byte	0xc3
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x66a8
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.long	0x5d08
	.long	0x66b9
	.uleb128 0x15
	.long	0x537
	.value	0x1ff
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x66dd
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x671e
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x673c
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x5d1d
	.uleb128 0x8
	.long	0x66b9
	.uleb128 0x8
	.long	0x66dd
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x6760
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x67a1
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x67bf
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x5d1d
	.uleb128 0x8
	.long	0x673c
	.uleb128 0x8
	.long	0x6760
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x67e3
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x6824
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x6842
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x5d1d
	.uleb128 0x8
	.long	0x67bf
	.uleb128 0x8
	.long	0x67e3
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x6866
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x68a5
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x68c3
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x5d1d
	.uleb128 0x8
	.long	0x6842
	.uleb128 0x8
	.long	0x6866
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x68e7
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x6926
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x6944
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x5d1d
	.uleb128 0x8
	.long	0x68c3
	.uleb128 0x8
	.long	0x68e7
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x6968
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x69a7
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x69c5
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x5d1d
	.uleb128 0x8
	.long	0x6944
	.uleb128 0x8
	.long	0x6968
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x69e9
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x6a28
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x5d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x6a46
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x5d1d
	.uleb128 0x8
	.long	0x69c5
	.uleb128 0x8
	.long	0x69e9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0x26
	.byte	0x64
	.long	0x6ac1
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x671e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x67a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x6824
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x68a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x6926
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x69a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x6a28
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x5db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x6b24
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x6aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x6aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x6b41
	.uleb128 0x8
	.long	0x6b01
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x6af6
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x6b66
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x6b7f
	.uleb128 0x8
	.long	0x6b41
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x6aeb
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x6b94
	.uleb128 0xe
	.long	0x6b66
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x6ba4
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x6bb4
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF198
	.byte	0x14
	.byte	0x26
	.byte	0x94
	.long	0x6c07
	.uleb128 0x6
	.string	"lba"
	.byte	0x26
	.byte	0x95
	.long	0x6af6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF199
	.byte	0x26
	.byte	0x96
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF200
	.byte	0x26
	.byte	0x97
	.long	0x6ca0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF201
	.byte	0x26
	.byte	0x98
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF202
	.byte	0x26
	.byte	0x99
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x6ca0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x6ca6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x6af6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x6aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x6ca6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x6c07
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x6cdd
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x6d01
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x6d42
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x6d60
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x6aeb
	.uleb128 0x8
	.long	0x6cdd
	.uleb128 0x8
	.long	0x6d01
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x6d84
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x6dc5
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x6de3
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x6aeb
	.uleb128 0x8
	.long	0x6d60
	.uleb128 0x8
	.long	0x6d84
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x6e07
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x6e48
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x6e66
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x6aeb
	.uleb128 0x8
	.long	0x6de3
	.uleb128 0x8
	.long	0x6e07
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x6e8a
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x6ec9
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x6ee7
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x6aeb
	.uleb128 0x8
	.long	0x6e66
	.uleb128 0x8
	.long	0x6e8a
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x6f0b
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x6f4a
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x6f68
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x6aeb
	.uleb128 0x8
	.long	0x6ee7
	.uleb128 0x8
	.long	0x6f0b
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x6f8c
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x6fcb
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x6fe9
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x6aeb
	.uleb128 0x8
	.long	0x6f68
	.uleb128 0x8
	.long	0x6f8c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x700d
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x704c
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x706a
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x6aeb
	.uleb128 0x8
	.long	0x6fe9
	.uleb128 0x8
	.long	0x700d
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0x26
	.byte	0x64
	.long	0x70e5
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x6d42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x6dc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x6e48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x6ec9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x6f4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x6fcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x704c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x6b7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x74a7
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x74a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x74b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x74c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x74d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x74e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x6b7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x6aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x6b94
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x6b94
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x6ae0
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x6ae0
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x6ae0
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x6b94
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x74f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x6b7f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x6aeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x74d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x6b7f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x6b94
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x7507
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x6ae0
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x6ae0
	.long	0x74b7
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x6ae0
	.long	0x74c7
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x74d7
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x74e7
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x6ae0
	.long	0x74f7
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x7507
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x7517
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF123
	.byte	0x10
	.byte	0xa
	.byte	0x98
	.long	0x75cc
	.uleb128 0xa
	.long	.LASF124
	.byte	0xa
	.byte	0x99
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xa
	.byte	0x9a
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF126
	.byte	0xa
	.byte	0x9b
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0x9c
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"irq"
	.byte	0xa
	.byte	0x9d
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0x9e
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"dma"
	.byte	0xa
	.byte	0x9f
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pio"
	.byte	0xa
	.byte	0xa0
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.byte	0xa1
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xa2
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0xa3
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xa4
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x18
	.byte	0xa
	.byte	0xa8
	.long	0x7657
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0xa9
	.long	0x6ca0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0xaa
	.long	0x6aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0xab
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0xac
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0xad
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0xae
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0xaf
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0xb0
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0xa
	.byte	0xb3
	.long	0x6ca6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x10
	.byte	0xa
	.byte	0xb6
	.long	0x770c
	.uleb128 0xa
	.long	.LASF122
	.byte	0xa
	.byte	0xb7
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF121
	.byte	0xa
	.byte	0xb8
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0xb9
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0xba
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0xbb
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xbc
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0xbd
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0xbe
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0xbf
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0xc0
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF113
	.byte	0xa
	.byte	0xc1
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xc2
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.byte	0xa
	.byte	0xc7
	.long	0x773f
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0xc8
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0xc9
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0xca
	.long	0x773f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x774f
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0xc6
	.long	0x7768
	.uleb128 0x8
	.long	0x770c
	.uleb128 0xc
	.long	.LASF153
	.byte	0xa
	.byte	0xcc
	.long	0x6af6
	.byte	0x0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x8
	.byte	0xa
	.byte	0xc5
	.long	0x777d
	.uleb128 0xe
	.long	0x774f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LASF155
	.value	0x368
	.byte	0xa
	.byte	0xd0
	.long	0x7881
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0xd1
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0xd2
	.long	0x7881
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0xd3
	.long	0x6b7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0xd4
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF160
	.byte	0xa
	.byte	0xd5
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xa
	.long	.LASF161
	.byte	0xa
	.byte	0xd6
	.long	0x6ba4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF162
	.byte	0xa
	.byte	0xd8
	.long	0x7891
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF163
	.byte	0xa
	.byte	0xdb
	.long	0x78a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF164
	.byte	0xa
	.byte	0xde
	.long	0x78b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0xa
	.long	.LASF165
	.byte	0xa
	.byte	0xe1
	.long	0x6ad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.uleb128 0xa
	.long	.LASF166
	.byte	0xa
	.byte	0xe2
	.long	0x7768
	.byte	0x3
	.byte	0x23
	.uleb128 0x122
	.uleb128 0xa
	.long	.LASF167
	.byte	0xa
	.byte	0xe4
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12a
	.uleb128 0xa
	.long	.LASF168
	.byte	0xa
	.byte	0xe7
	.long	0x75cc
	.byte	0x3
	.byte	0x23
	.uleb128 0x12e
	.uleb128 0xa
	.long	.LASF169
	.byte	0xa
	.byte	0xea
	.long	0x7517
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xa
	.long	.LASF170
	.byte	0xa
	.byte	0xed
	.long	0x78c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x156
	.uleb128 0xa
	.long	.LASF171
	.byte	0xa
	.byte	0xef
	.long	0x6ae0
	.byte	0x3
	.byte	0x23
	.uleb128 0x166
	.uleb128 0xa
	.long	.LASF172
	.byte	0xa
	.byte	0xf2
	.long	0x78d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x7891
	.uleb128 0x10
	.long	0x537
	.byte	0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x78a1
	.uleb128 0x10
	.long	0x537
	.byte	0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x7657
	.long	0x78b1
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x78c1
	.uleb128 0x10
	.long	0x537
	.byte	0xc3
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x78d1
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.long	0x6ad6
	.long	0x78e2
	.uleb128 0x15
	.long	0x537
	.value	0x1ff
	.byte	0x0
	.uleb128 0xd
	.long	.LASF242
	.byte	0x14
	.byte	0x22
	.byte	0x83
	.long	0x7997
	.uleb128 0xa
	.long	.LASF156
	.byte	0x22
	.byte	0x84
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF140
	.byte	0x22
	.byte	0x85
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF243
	.byte	0x22
	.byte	0x86
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF244
	.byte	0x22
	.byte	0x87
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF135
	.byte	0x22
	.byte	0x88
	.long	0x6aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF245
	.byte	0x22
	.byte	0x89
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF136
	.byte	0x22
	.byte	0x8a
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF137
	.byte	0x22
	.byte	0x8b
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF138
	.byte	0x22
	.byte	0x8c
	.long	0x6ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF122
	.byte	0x22
	.byte	0x8d
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF113
	.byte	0x22
	.byte	0x8e
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.long	.LASF121
	.byte	0x22
	.byte	0x8f
	.long	0x6ad6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x79e5
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x79ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x79ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x7a02
	.uleb128 0x8
	.long	0x79c2
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x79b7
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x7a27
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x7a40
	.uleb128 0x8
	.long	0x7a02
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x79ac
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x7a55
	.uleb128 0xe
	.long	0x7a27
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x7a65
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x7a75
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x7b0e
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x7b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x79b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x79ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x7b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x7a75
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x7b4b
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x7f0d
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x7f0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x7f1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x7f2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x7f3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x7f4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x7a40
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x79ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x7a55
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x7a55
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x79a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x79a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x79a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x7a55
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x7f5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x7a40
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x79ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x7f3d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x7a40
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x7a55
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x7f6d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x79a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x79a1
	.long	0x7f1d
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x79a1
	.long	0x7f2d
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x7f3d
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x7f4d
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x79a1
	.long	0x7f5d
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x7f6d
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x7f7d
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF123
	.byte	0x10
	.byte	0xa
	.byte	0x98
	.long	0x8032
	.uleb128 0xa
	.long	.LASF124
	.byte	0xa
	.byte	0x99
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xa
	.byte	0x9a
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF126
	.byte	0xa
	.byte	0x9b
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0x9c
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"irq"
	.byte	0xa
	.byte	0x9d
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0x9e
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"dma"
	.byte	0xa
	.byte	0x9f
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pio"
	.byte	0xa
	.byte	0xa0
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.byte	0xa1
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xa2
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0xa3
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xa4
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x18
	.byte	0xa
	.byte	0xa8
	.long	0x80bd
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0xa9
	.long	0x7b0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0xaa
	.long	0x79ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0xab
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0xac
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0xad
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0xae
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0xaf
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0xb0
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0xa
	.byte	0xb3
	.long	0x7b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x10
	.byte	0xa
	.byte	0xb6
	.long	0x8172
	.uleb128 0xa
	.long	.LASF122
	.byte	0xa
	.byte	0xb7
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF121
	.byte	0xa
	.byte	0xb8
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0xb9
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0xba
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0xbb
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xbc
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0xbd
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0xbe
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0xbf
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0xc0
	.long	0x79a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF113
	.byte	0xa
	.byte	0xc1
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xc2
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.byte	0xa
	.byte	0xc7
	.long	0x81a5
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0xc8
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0xc9
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0xca
	.long	0x81a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x81b5
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0xc6
	.long	0x81ce
	.uleb128 0x8
	.long	0x8172
	.uleb128 0xc
	.long	.LASF153
	.byte	0xa
	.byte	0xcc
	.long	0x79b7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x8
	.byte	0xa
	.byte	0xc5
	.long	0x81e3
	.uleb128 0xe
	.long	0x81b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LASF155
	.value	0x368
	.byte	0xa
	.byte	0xd0
	.long	0x82e7
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0xd1
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0xd2
	.long	0x82e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0xd3
	.long	0x7a40
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0xd4
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF160
	.byte	0xa
	.byte	0xd5
	.long	0x7997
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xa
	.long	.LASF161
	.byte	0xa
	.byte	0xd6
	.long	0x7a65
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF162
	.byte	0xa
	.byte	0xd8
	.long	0x82f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF163
	.byte	0xa
	.byte	0xdb
	.long	0x8307
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF164
	.byte	0xa
	.byte	0xde
	.long	0x8317
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0xa
	.long	.LASF165
	.byte	0xa
	.byte	0xe1
	.long	0x7997
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.uleb128 0xa
	.long	.LASF166
	.byte	0xa
	.byte	0xe2
	.long	0x81ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x122
	.uleb128 0xa
	.long	.LASF167
	.byte	0xa
	.byte	0xe4
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12a
	.uleb128 0xa
	.long	.LASF168
	.byte	0xa
	.byte	0xe7
	.long	0x8032
	.byte	0x3
	.byte	0x23
	.uleb128 0x12e
	.uleb128 0xa
	.long	.LASF169
	.byte	0xa
	.byte	0xea
	.long	0x7f7d
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xa
	.long	.LASF170
	.byte	0xa
	.byte	0xed
	.long	0x8327
	.byte	0x3
	.byte	0x23
	.uleb128 0x156
	.uleb128 0xa
	.long	.LASF171
	.byte	0xa
	.byte	0xef
	.long	0x79a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x166
	.uleb128 0xa
	.long	.LASF172
	.byte	0xa
	.byte	0xf2
	.long	0x8337
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x82f7
	.uleb128 0x10
	.long	0x537
	.byte	0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x8307
	.uleb128 0x10
	.long	0x537
	.byte	0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x80bd
	.long	0x8317
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x8327
	.uleb128 0x10
	.long	0x537
	.byte	0xc3
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x8337
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.long	0x7997
	.long	0x8348
	.uleb128 0x15
	.long	0x537
	.value	0x1ff
	.byte	0x0
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x5
	.byte	0xc
	.byte	0x29
	.byte	0x14
	.long	0x8386
	.uleb128 0x6
	.string	"ecx"
	.byte	0x29
	.byte	0x14
	.long	0x8348
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"eax"
	.byte	0x29
	.byte	0x14
	.long	0x8348
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"edx"
	.byte	0x29
	.byte	0x14
	.long	0x8348
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x83cb
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x83e4
	.uleb128 0x8
	.long	0x83a6
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x839b
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x83f9
	.uleb128 0xe
	.long	0x83cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x8386
	.long	0x8409
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0x87cb
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0x87cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0x87db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0x87eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0x87fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0x880b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0x83e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0x839b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x8390
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0x8386
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0x83f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0x83f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0x8390
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x8390
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0x8390
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0x83f9
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0x881b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0x83e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0x839b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0x8386
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0x87fb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0x83e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0x83f9
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0x882b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0x8390
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0x8390
	.long	0x87db
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x8390
	.long	0x87eb
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x8386
	.long	0x87fb
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x8386
	.long	0x880b
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0x8390
	.long	0x881b
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0x8386
	.long	0x882b
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x8386
	.long	0x883b
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x8889
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x8850
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x8850
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x88a6
	.uleb128 0x8
	.long	0x8866
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x885b
	.byte	0x0
	.uleb128 0xd
	.long	.LASF246
	.byte	0x21
	.byte	0x1f
	.byte	0xb
	.long	0x8969
	.uleb128 0xa
	.long	.LASF185
	.byte	0x1f
	.byte	0xc
	.long	0x8850
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF186
	.byte	0x1f
	.byte	0xd
	.long	0x883b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF106
	.byte	0x1f
	.byte	0xe
	.long	0x883b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF240
	.byte	0x1f
	.byte	0xf
	.long	0x8845
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF132
	.byte	0x1f
	.byte	0x10
	.long	0x883b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF247
	.byte	0x1f
	.byte	0x11
	.long	0x8850
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF248
	.byte	0x1f
	.byte	0x12
	.long	0x8845
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.long	.LASF249
	.byte	0x1f
	.byte	0x13
	.long	0x8845
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF250
	.byte	0x1f
	.byte	0x14
	.long	0x8845
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.long	.LASF251
	.byte	0x1f
	.byte	0x15
	.long	0x8850
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF252
	.byte	0x1f
	.byte	0x16
	.long	0x8850
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF253
	.byte	0x1f
	.byte	0x17
	.long	0x8845
	.byte	0x2
	.byte	0x23
	.uleb128 0x1b
	.uleb128 0xa
	.long	.LASF254
	.byte	0x1f
	.byte	0x18
	.long	0x8850
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0xd
	.long	.LASF255
	.byte	0x3
	.byte	0x2a
	.byte	0x6d
	.long	0x89b2
	.uleb128 0xa
	.long	.LASF256
	.byte	0x2a
	.byte	0x6e
	.long	0x8969
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF257
	.byte	0x2a
	.byte	0x6f
	.long	0x8973
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0xd
	.long	.LASF258
	.byte	0x10
	.byte	0x2a
	.byte	0x72
	.long	0x8a05
	.uleb128 0x6
	.string	"bus"
	.byte	0x2a
	.byte	0x73
	.long	0x8969
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dev"
	.byte	0x2a
	.byte	0x74
	.long	0x8969
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF259
	.byte	0x2a
	.byte	0x75
	.long	0x8a05
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF260
	.byte	0x2a
	.byte	0x76
	.long	0x8969
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF130
	.byte	0x2a
	.byte	0x77
	.long	0x8969
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xf
	.long	0x8989
	.long	0x8a15
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	.LASF261
	.byte	0x20
	.byte	0x2a
	.byte	0x7a
	.long	0x8abc
	.uleb128 0xa
	.long	.LASF185
	.byte	0x2a
	.byte	0x7b
	.long	0x897e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF186
	.byte	0x2a
	.byte	0x7c
	.long	0x8973
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF156
	.byte	0x2a
	.byte	0x7d
	.long	0x8973
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF262
	.byte	0x2a
	.byte	0x7e
	.long	0x8969
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF263
	.byte	0x2a
	.byte	0x7f
	.long	0x8969
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF264
	.byte	0x2a
	.byte	0x80
	.long	0x8973
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF265
	.byte	0x2a
	.byte	0x81
	.long	0x897e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF266
	.byte	0x2a
	.byte	0x82
	.long	0x897e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF130
	.byte	0x2a
	.byte	0x83
	.long	0x8abc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF132
	.byte	0x2a
	.byte	0x84
	.long	0x8969
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xa
	.long	.LASF267
	.byte	0x2a
	.byte	0x85
	.long	0x8acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x8969
	.long	0x8acc
	.uleb128 0x10
	.long	0x537
	.byte	0xa
	.byte	0x0
	.uleb128 0xf
	.long	0x89b2
	.long	0x8adb
	.uleb128 0x1e
	.long	0x537
	.byte	0x0
	.uleb128 0xd
	.long	.LASF268
	.byte	0x80
	.byte	0x2b
	.byte	0xe
	.long	0x8b04
	.uleb128 0x6
	.string	"pir"
	.byte	0x2b
	.byte	0xf
	.long	0x8a15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF267
	.byte	0x2b
	.byte	0x10
	.long	0x8b04
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x89b2
	.long	0x8b14
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x8b62
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x8b29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x8b29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x8b7f
	.uleb128 0x8
	.long	0x8b3f
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x8b34
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x8ba4
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x8bbd
	.uleb128 0x8
	.long	0x8b7f
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x8b29
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x8bd2
	.uleb128 0xe
	.long	0x8ba4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x8bf6
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x8c37
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x8c55
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x8b29
	.uleb128 0x8
	.long	0x8bd2
	.uleb128 0x8
	.long	0x8bf6
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x8c79
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x8cba
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x8cd8
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x8b29
	.uleb128 0x8
	.long	0x8c55
	.uleb128 0x8
	.long	0x8c79
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x8cfc
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x8d3d
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x8d5b
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x8b29
	.uleb128 0x8
	.long	0x8cd8
	.uleb128 0x8
	.long	0x8cfc
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x8d7f
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x8dbe
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x8ddc
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x8b29
	.uleb128 0x8
	.long	0x8d5b
	.uleb128 0x8
	.long	0x8d7f
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x8e00
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x8e3f
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x8e5d
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x8b29
	.uleb128 0x8
	.long	0x8ddc
	.uleb128 0x8
	.long	0x8e00
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x8e81
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x8ec0
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x8ede
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x8b29
	.uleb128 0x8
	.long	0x8e5d
	.uleb128 0x8
	.long	0x8e81
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x8f02
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x8f41
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x8b14
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x8f5f
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x8b29
	.uleb128 0x8
	.long	0x8ede
	.uleb128 0x8
	.long	0x8f02
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0xe
	.byte	0x25
	.long	0x8fda
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x8c37
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x8cba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x8d3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x8dbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x8e3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x8ec0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x8f41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x8bbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x8b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xd
	.long	.LASF269
	.byte	0xc
	.byte	0x2c
	.byte	0x19
	.long	0x9011
	.uleb128 0xa
	.long	.LASF270
	.byte	0x2c
	.byte	0x1a
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF230
	.byte	0x2c
	.byte	0x1b
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2c
	.byte	0x1c
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0xd
	.long	.LASF198
	.byte	0x14
	.byte	0x26
	.byte	0x94
	.long	0x908f
	.uleb128 0x6
	.string	"lba"
	.byte	0x26
	.byte	0x95
	.long	0x9031
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF199
	.byte	0x26
	.byte	0x96
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF200
	.byte	0x26
	.byte	0x97
	.long	0x9128
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF201
	.byte	0x26
	.byte	0x98
	.long	0x901b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF202
	.byte	0x26
	.byte	0x99
	.long	0x9011
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x9128
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x9011
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x9011
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x912e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x9031
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x9026
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x9011
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x9011
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x901b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x912e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x908f
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x9165
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x901b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x901b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x901b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x91b3
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x917a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x917a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x91d0
	.uleb128 0x8
	.long	0x9190
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x9185
	.byte	0x0
	.uleb128 0xd
	.long	.LASF255
	.byte	0x3
	.byte	0x2a
	.byte	0x6d
	.long	0x91f9
	.uleb128 0xa
	.long	.LASF256
	.byte	0x2a
	.byte	0x6e
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF257
	.byte	0x2a
	.byte	0x6f
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0xd
	.long	.LASF258
	.byte	0x10
	.byte	0x2a
	.byte	0x72
	.long	0x924c
	.uleb128 0x6
	.string	"bus"
	.byte	0x2a
	.byte	0x73
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dev"
	.byte	0x2a
	.byte	0x74
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF259
	.byte	0x2a
	.byte	0x75
	.long	0x924c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF260
	.byte	0x2a
	.byte	0x76
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF130
	.byte	0x2a
	.byte	0x77
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xf
	.long	0x91d0
	.long	0x925c
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	.LASF261
	.byte	0x20
	.byte	0x2a
	.byte	0x7a
	.long	0x9303
	.uleb128 0xa
	.long	.LASF185
	.byte	0x2a
	.byte	0x7b
	.long	0x917a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF186
	.byte	0x2a
	.byte	0x7c
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF156
	.byte	0x2a
	.byte	0x7d
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF262
	.byte	0x2a
	.byte	0x7e
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF263
	.byte	0x2a
	.byte	0x7f
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF264
	.byte	0x2a
	.byte	0x80
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF265
	.byte	0x2a
	.byte	0x81
	.long	0x917a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF266
	.byte	0x2a
	.byte	0x82
	.long	0x917a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF130
	.byte	0x2a
	.byte	0x83
	.long	0x9303
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF132
	.byte	0x2a
	.byte	0x84
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xa
	.long	.LASF267
	.byte	0x2a
	.byte	0x85
	.long	0x9313
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x9165
	.long	0x9313
	.uleb128 0x10
	.long	0x537
	.byte	0xa
	.byte	0x0
	.uleb128 0xf
	.long	0x91f9
	.long	0x9322
	.uleb128 0x1e
	.long	0x537
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0x9347
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0x9360
	.uleb128 0x8
	.long	0x9322
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0x917a
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0x9375
	.uleb128 0xe
	.long	0x9347
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x9399
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x93da
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0x93f8
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0x917a
	.uleb128 0x8
	.long	0x9375
	.uleb128 0x8
	.long	0x9399
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x941c
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x945d
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0x947b
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0x917a
	.uleb128 0x8
	.long	0x93f8
	.uleb128 0x8
	.long	0x941c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x949f
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x94e0
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0x94fe
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0x917a
	.uleb128 0x8
	.long	0x947b
	.uleb128 0x8
	.long	0x949f
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x9522
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x9561
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x957f
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0x917a
	.uleb128 0x8
	.long	0x94fe
	.uleb128 0x8
	.long	0x9522
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x95a3
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x95e2
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x9600
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0x917a
	.uleb128 0x8
	.long	0x957f
	.uleb128 0x8
	.long	0x95a3
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x9624
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x9663
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0x9681
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0x917a
	.uleb128 0x8
	.long	0x9600
	.uleb128 0x8
	.long	0x9624
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x96a5
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x96e4
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x9702
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0x917a
	.uleb128 0x8
	.long	0x9681
	.uleb128 0x8
	.long	0x96a5
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0x8
	.byte	0xb9
	.long	0x977d
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0x93da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0x945d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0x94e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0x9561
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0x95e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0x9663
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0x96e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0x9360
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0x916f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xd
	.long	.LASF271
	.byte	0x10
	.byte	0xf
	.byte	0xd5
	.long	0x97de
	.uleb128 0xa
	.long	.LASF185
	.byte	0xf
	.byte	0xd6
	.long	0x917a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF272
	.byte	0xf
	.byte	0xd7
	.long	0x917a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF186
	.byte	0xf
	.byte	0xd8
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF106
	.byte	0xf
	.byte	0xd9
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF132
	.byte	0xf
	.byte	0xda
	.long	0x9165
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xf
	.byte	0xdb
	.long	0x97de
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xf
	.long	0x9165
	.long	0x97ee
	.uleb128 0x10
	.long	0x537
	.byte	0x4
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x983c
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x9803
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x9803
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x9859
	.uleb128 0x8
	.long	0x9819
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x980e
	.byte	0x0
	.uleb128 0xd
	.long	.LASF198
	.byte	0x14
	.byte	0x26
	.byte	0x94
	.long	0x98ac
	.uleb128 0x6
	.string	"lba"
	.byte	0x26
	.byte	0x95
	.long	0x980e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF199
	.byte	0x26
	.byte	0x96
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF200
	.byte	0x26
	.byte	0x97
	.long	0x9945
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF201
	.byte	0x26
	.byte	0x98
	.long	0x97f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF202
	.byte	0x26
	.byte	0x99
	.long	0x97ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0x9945
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0x97ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0x97ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0x994b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0x980e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0x9803
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0x97ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0x97ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0x97f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0x994b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x98ac
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0x9982
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0x97f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0x97f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0x97f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.long	0x97ee
	.long	0x9992
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0xd
	.long	.LASF273
	.byte	0x10
	.byte	0x2d
	.byte	0xb
	.long	0x9a01
	.uleb128 0xa
	.long	.LASF202
	.byte	0x2d
	.byte	0xc
	.long	0x97ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x2d
	.byte	0xd
	.long	0x97ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"lba"
	.byte	0x2d
	.byte	0xe
	.long	0x9803
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF274
	.byte	0x2d
	.byte	0xf
	.long	0x97ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF201
	.byte	0x2d
	.byte	0x10
	.long	0x97f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF275
	.byte	0x2d
	.byte	0x11
	.long	0x97ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.string	"pad"
	.byte	0x2d
	.byte	0x12
	.long	0x9982
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x9a4f
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x9a16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x9a16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x9a6c
	.uleb128 0x8
	.long	0x9a2c
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x9a21
	.byte	0x0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.long	0x9a87
	.uleb128 0xa
	.long	.LASF190
	.byte	0x8
	.byte	0xdd
	.long	0x9a16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.long	.LASF276
	.byte	0xc
	.byte	0x2e
	.byte	0x6
	.long	0x9b03
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x9
	.long	0x9b56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0xa
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ep"
	.byte	0x2f
	.byte	0xb
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF278
	.byte	0x2f
	.byte	0xc
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF279
	.byte	0x2f
	.byte	0xd
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF280
	.byte	0x2f
	.byte	0xe
	.long	0x9a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF281
	.byte	0x2f
	.byte	0xf
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF282
	.byte	0x2f
	.byte	0x10
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xd
	.long	.LASF283
	.byte	0x10
	.byte	0x2f
	.byte	0x9
	.long	0x9b56
	.uleb128 0xa
	.long	.LASF284
	.byte	0x2f
	.byte	0x15
	.long	0x9b5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF285
	.byte	0x2f
	.byte	0x16
	.long	0x9a6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF286
	.byte	0x2f
	.byte	0x17
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0x18
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF287
	.byte	0x2f
	.byte	0x19
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x9b03
	.uleb128 0x13
	.byte	0x4
	.long	0x9a87
	.uleb128 0xd
	.long	.LASF288
	.byte	0x24
	.byte	0x2f
	.byte	0x1d
	.long	0x9bec
	.uleb128 0x6
	.string	"op"
	.byte	0x2f
	.byte	0x1e
	.long	0x9c23
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF289
	.byte	0x2f
	.byte	0x1f
	.long	0x9b5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x20
	.long	0x9b56
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF290
	.byte	0x2f
	.byte	0x21
	.long	0x9a6c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF291
	.byte	0x2f
	.byte	0x22
	.long	0x9a16
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF292
	.byte	0x2f
	.byte	0x23
	.long	0x9a16
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF293
	.byte	0x2f
	.byte	0x24
	.long	0x9a16
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF294
	.byte	0x2f
	.byte	0x25
	.long	0x9a16
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF295
	.byte	0x2f
	.byte	0x26
	.long	0x9a16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF296
	.byte	0xc
	.byte	0x2f
	.byte	0x1e
	.long	0x9c23
	.uleb128 0xa
	.long	.LASF297
	.byte	0x2f
	.byte	0x2b
	.long	0x9c44
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF298
	.byte	0x2f
	.byte	0x2c
	.long	0x9c44
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF299
	.byte	0x2f
	.byte	0x2d
	.long	0x9c5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x9bec
	.uleb128 0x1f
	.byte	0x1
	.long	0x6c
	.long	0x9c3e
	.uleb128 0x1b
	.long	0x9c3e
	.uleb128 0x1b
	.long	0x9a16
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x9b62
	.uleb128 0x13
	.byte	0x4
	.long	0x9c29
	.uleb128 0x1a
	.byte	0x1
	.long	0x9c5b
	.uleb128 0x1b
	.long	0x9c3e
	.uleb128 0x1b
	.long	0x9a16
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x9c4a
	.uleb128 0xd
	.long	.LASF300
	.byte	0x8
	.byte	0x2f
	.byte	0x67
	.long	0x9cb4
	.uleb128 0xa
	.long	.LASF301
	.byte	0x2f
	.byte	0x68
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF302
	.byte	0x2f
	.byte	0x69
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF303
	.byte	0x2f
	.byte	0x6a
	.long	0x9a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF304
	.byte	0x2f
	.byte	0x6b
	.long	0x9a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF305
	.byte	0x2f
	.byte	0x6c
	.long	0x9a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0xd
	.long	.LASF306
	.byte	0x12
	.byte	0x2f
	.byte	0x77
	.long	0x9d85
	.uleb128 0xa
	.long	.LASF307
	.byte	0x2f
	.byte	0x78
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF308
	.byte	0x2f
	.byte	0x79
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF309
	.byte	0x2f
	.byte	0x7b
	.long	0x9a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF310
	.byte	0x2f
	.byte	0x7c
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF311
	.byte	0x2f
	.byte	0x7d
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF312
	.byte	0x2f
	.byte	0x7e
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF313
	.byte	0x2f
	.byte	0x7f
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF314
	.byte	0x2f
	.byte	0x80
	.long	0x9a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF315
	.byte	0x2f
	.byte	0x81
	.long	0x9a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF316
	.byte	0x2f
	.byte	0x82
	.long	0x9a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF317
	.byte	0x2f
	.byte	0x83
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF318
	.byte	0x2f
	.byte	0x84
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF319
	.byte	0x2f
	.byte	0x85
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF320
	.byte	0x2f
	.byte	0x86
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0x0
	.uleb128 0xd
	.long	.LASF321
	.byte	0x9
	.byte	0x2f
	.byte	0x93
	.long	0x9e02
	.uleb128 0xa
	.long	.LASF307
	.byte	0x2f
	.byte	0x94
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF308
	.byte	0x2f
	.byte	0x95
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF322
	.byte	0x2f
	.byte	0x97
	.long	0x9a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF323
	.byte	0x2f
	.byte	0x98
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF324
	.byte	0x2f
	.byte	0x99
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF325
	.byte	0x2f
	.byte	0x9a
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF326
	.byte	0x2f
	.byte	0x9b
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF327
	.byte	0x2f
	.byte	0x9c
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	.LASF328
	.byte	0x9
	.byte	0x30
	.byte	0x5
	.long	0x9e8d
	.uleb128 0xa
	.long	.LASF307
	.byte	0x2f
	.byte	0xa0
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF308
	.byte	0x2f
	.byte	0xa1
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF329
	.byte	0x2f
	.byte	0xa3
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF330
	.byte	0x2f
	.byte	0xa4
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF331
	.byte	0x2f
	.byte	0xa5
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF332
	.byte	0x2f
	.byte	0xa6
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF333
	.byte	0x2f
	.byte	0xa7
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF334
	.byte	0x2f
	.byte	0xa8
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF335
	.byte	0x2f
	.byte	0xa9
	.long	0x9a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0x9edb
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0x9ef8
	.uleb128 0x8
	.long	0x9eb8
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0x9ead
	.byte	0x0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.long	0x9f13
	.uleb128 0xa
	.long	.LASF190
	.byte	0x8
	.byte	0xdd
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LASF336
	.value	0x1000
	.byte	0x2e
	.byte	0x49
	.long	0x9f2f
	.uleb128 0xa
	.long	.LASF259
	.byte	0x2e
	.byte	0x4a
	.long	0x9f2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x9ea2
	.long	0x9f40
	.uleb128 0x15
	.long	0x537
	.value	0x3ff
	.byte	0x0
	.uleb128 0xd
	.long	.LASF337
	.byte	0x10
	.byte	0x2e
	.byte	0x6e
	.long	0x9f85
	.uleb128 0xa
	.long	.LASF256
	.byte	0x2e
	.byte	0x6f
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF338
	.byte	0x2e
	.byte	0x70
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF339
	.byte	0x2e
	.byte	0x71
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF340
	.byte	0x2e
	.byte	0x72
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	.LASF341
	.byte	0x8
	.byte	0x2e
	.byte	0x75
	.long	0x9fae
	.uleb128 0xa
	.long	.LASF256
	.byte	0x2e
	.byte	0x76
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF342
	.byte	0x2e
	.byte	0x77
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF276
	.byte	0xc
	.byte	0x2e
	.byte	0x6
	.long	0xa02a
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x9
	.long	0xa07d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0xa
	.long	0x9e8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ep"
	.byte	0x2f
	.byte	0xb
	.long	0x9e8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF278
	.byte	0x2f
	.byte	0xc
	.long	0x9e8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF279
	.byte	0x2f
	.byte	0xd
	.long	0x9e8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF280
	.byte	0x2f
	.byte	0xe
	.long	0x9e97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF281
	.byte	0x2f
	.byte	0xf
	.long	0x9e8d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF282
	.byte	0x2f
	.byte	0x10
	.long	0x9e8d
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xd
	.long	.LASF283
	.byte	0x10
	.byte	0x2f
	.byte	0x9
	.long	0xa07d
	.uleb128 0xa
	.long	.LASF284
	.byte	0x2f
	.byte	0x15
	.long	0xa083
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF285
	.byte	0x2f
	.byte	0x16
	.long	0x9ef8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF286
	.byte	0x2f
	.byte	0x17
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0x18
	.long	0x9e8d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF287
	.byte	0x2f
	.byte	0x19
	.long	0x9e8d
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa02a
	.uleb128 0x13
	.byte	0x4
	.long	0x9fae
	.uleb128 0xd
	.long	.LASF288
	.byte	0x24
	.byte	0x2f
	.byte	0x1d
	.long	0xa113
	.uleb128 0x6
	.string	"op"
	.byte	0x2f
	.byte	0x1e
	.long	0xa14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF289
	.byte	0x2f
	.byte	0x1f
	.long	0xa083
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x20
	.long	0xa07d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF290
	.byte	0x2f
	.byte	0x21
	.long	0x9ef8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF291
	.byte	0x2f
	.byte	0x22
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF292
	.byte	0x2f
	.byte	0x23
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF293
	.byte	0x2f
	.byte	0x24
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF294
	.byte	0x2f
	.byte	0x25
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF295
	.byte	0x2f
	.byte	0x26
	.long	0x9ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF296
	.byte	0xc
	.byte	0x2f
	.byte	0x1e
	.long	0xa14a
	.uleb128 0xa
	.long	.LASF297
	.byte	0x2f
	.byte	0x2b
	.long	0xa16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF298
	.byte	0x2f
	.byte	0x2c
	.long	0xa16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF299
	.byte	0x2f
	.byte	0x2d
	.long	0xa182
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa113
	.uleb128 0x1f
	.byte	0x1
	.long	0x6c
	.long	0xa165
	.uleb128 0x1b
	.long	0xa165
	.uleb128 0x1b
	.long	0x9ea2
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa089
	.uleb128 0x13
	.byte	0x4
	.long	0xa150
	.uleb128 0x1a
	.byte	0x1
	.long	0xa182
	.uleb128 0x1b
	.long	0xa165
	.uleb128 0x1b
	.long	0x9ea2
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa171
	.uleb128 0xd
	.long	.LASF343
	.byte	0x20
	.byte	0x13
	.byte	0x10
	.long	0xa1db
	.uleb128 0x6
	.string	"usb"
	.byte	0x13
	.byte	0x11
	.long	0xa02a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF344
	.byte	0x13
	.byte	0x12
	.long	0x9e97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF345
	.byte	0x13
	.byte	0x13
	.long	0xa1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF346
	.byte	0x13
	.byte	0x13
	.long	0xa1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF347
	.byte	0x13
	.byte	0x14
	.long	0xa1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x9f85
	.uleb128 0x13
	.byte	0x4
	.long	0x9f13
	.uleb128 0xd
	.long	.LASF348
	.byte	0x1c
	.byte	0x13
	.byte	0xf8
	.long	0xa239
	.uleb128 0x6
	.string	"qh"
	.byte	0x13
	.byte	0xf9
	.long	0x9f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF349
	.byte	0x13
	.byte	0xfa
	.long	0xa239
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF289
	.byte	0x13
	.byte	0xfb
	.long	0x9fae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF344
	.byte	0x13
	.byte	0xfc
	.long	0x9e97
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF350
	.byte	0x13
	.byte	0xfd
	.long	0x9e8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0x9f40
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xa28d
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xa2aa
	.uleb128 0x8
	.long	0xa26a
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0xa25f
	.byte	0x0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.long	0xa2c5
	.uleb128 0xa
	.long	.LASF190
	.byte	0x8
	.byte	0xdd
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.long	.LASF351
	.byte	0x10
	.byte	0x31
	.byte	0x15
	.long	0xa30a
	.uleb128 0xa
	.long	.LASF352
	.byte	0x31
	.byte	0x16
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF353
	.byte	0x31
	.byte	0x17
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF354
	.byte	0x31
	.byte	0x18
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF355
	.byte	0x31
	.byte	0x19
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	.LASF356
	.byte	0x10
	.byte	0x31
	.byte	0x25
	.long	0xa34f
	.uleb128 0xa
	.long	.LASF352
	.byte	0x31
	.byte	0x26
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF357
	.byte	0x31
	.byte	0x27
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF358
	.byte	0x31
	.byte	0x28
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF359
	.byte	0x31
	.byte	0x29
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x14
	.long	.LASF360
	.value	0x100
	.byte	0x31
	.byte	0x3f
	.long	0xa398
	.uleb128 0xa
	.long	.LASF361
	.byte	0x31
	.byte	0x40
	.long	0xa398
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF362
	.byte	0x31
	.byte	0x41
	.long	0xa254
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF363
	.byte	0x31
	.byte	0x42
	.long	0xa254
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF130
	.byte	0x31
	.byte	0x43
	.long	0xa3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0xf
	.long	0xa254
	.long	0xa3a8
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0xa23f
	.long	0xa3b8
	.uleb128 0x10
	.long	0x537
	.byte	0x77
	.byte	0x0
	.uleb128 0xd
	.long	.LASF364
	.byte	0x90
	.byte	0x31
	.byte	0x46
	.long	0xa4f9
	.uleb128 0xa
	.long	.LASF131
	.byte	0x31
	.byte	0x47
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF240
	.byte	0x31
	.byte	0x48
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF365
	.byte	0x31
	.byte	0x49
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF366
	.byte	0x31
	.byte	0x4a
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF367
	.byte	0x31
	.byte	0x4b
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF368
	.byte	0x31
	.byte	0x4c
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF369
	.byte	0x31
	.byte	0x4e
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF370
	.byte	0x31
	.byte	0x4f
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF371
	.byte	0x31
	.byte	0x50
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF372
	.byte	0x31
	.byte	0x51
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.long	.LASF373
	.byte	0x31
	.byte	0x52
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF374
	.byte	0x31
	.byte	0x53
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.long	.LASF375
	.byte	0x31
	.byte	0x54
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF376
	.byte	0x31
	.byte	0x56
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF377
	.byte	0x31
	.byte	0x57
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF378
	.byte	0x31
	.byte	0x58
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF379
	.byte	0x31
	.byte	0x59
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF380
	.byte	0x31
	.byte	0x5a
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.long	.LASF381
	.byte	0x31
	.byte	0x5c
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF382
	.byte	0x31
	.byte	0x5d
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF383
	.byte	0x31
	.byte	0x5e
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF384
	.byte	0x31
	.byte	0x5f
	.long	0xa4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0xf
	.long	0xa254
	.long	0xa509
	.uleb128 0x10
	.long	0x537
	.byte	0xe
	.byte	0x0
	.uleb128 0xd
	.long	.LASF276
	.byte	0xc
	.byte	0x31
	.byte	0x6
	.long	0xa585
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x9
	.long	0xa5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0xa
	.long	0xa23f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ep"
	.byte	0x2f
	.byte	0xb
	.long	0xa23f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF278
	.byte	0x2f
	.byte	0xc
	.long	0xa23f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF279
	.byte	0x2f
	.byte	0xd
	.long	0xa23f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF280
	.byte	0x2f
	.byte	0xe
	.long	0xa249
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF281
	.byte	0x2f
	.byte	0xf
	.long	0xa23f
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF282
	.byte	0x2f
	.byte	0x10
	.long	0xa23f
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xd
	.long	.LASF283
	.byte	0x10
	.byte	0x2f
	.byte	0x9
	.long	0xa5d8
	.uleb128 0xa
	.long	.LASF284
	.byte	0x2f
	.byte	0x15
	.long	0xa5de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF285
	.byte	0x2f
	.byte	0x16
	.long	0xa2aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF286
	.byte	0x2f
	.byte	0x17
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0x18
	.long	0xa23f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF287
	.byte	0x2f
	.byte	0x19
	.long	0xa23f
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa585
	.uleb128 0x13
	.byte	0x4
	.long	0xa509
	.uleb128 0xd
	.long	.LASF288
	.byte	0x24
	.byte	0x2f
	.byte	0x1d
	.long	0xa66e
	.uleb128 0x6
	.string	"op"
	.byte	0x2f
	.byte	0x1e
	.long	0xa6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF289
	.byte	0x2f
	.byte	0x1f
	.long	0xa5de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x20
	.long	0xa5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF290
	.byte	0x2f
	.byte	0x21
	.long	0xa2aa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF291
	.byte	0x2f
	.byte	0x22
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF292
	.byte	0x2f
	.byte	0x23
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF293
	.byte	0x2f
	.byte	0x24
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF294
	.byte	0x2f
	.byte	0x25
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF295
	.byte	0x2f
	.byte	0x26
	.long	0xa254
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF296
	.byte	0xc
	.byte	0x2f
	.byte	0x1e
	.long	0xa6a5
	.uleb128 0xa
	.long	.LASF297
	.byte	0x2f
	.byte	0x2b
	.long	0xa6c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF298
	.byte	0x2f
	.byte	0x2c
	.long	0xa6c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF299
	.byte	0x2f
	.byte	0x2d
	.long	0xa6dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa66e
	.uleb128 0x1f
	.byte	0x1
	.long	0x6c
	.long	0xa6c0
	.uleb128 0x1b
	.long	0xa6c0
	.uleb128 0x1b
	.long	0xa254
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa5e4
	.uleb128 0x13
	.byte	0x4
	.long	0xa6ab
	.uleb128 0x1a
	.byte	0x1
	.long	0xa6dd
	.uleb128 0x1b
	.long	0xa6c0
	.uleb128 0x1b
	.long	0xa254
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa6cc
	.uleb128 0xd
	.long	.LASF385
	.byte	0x14
	.byte	0x14
	.byte	0x11
	.long	0xa70c
	.uleb128 0x6
	.string	"usb"
	.byte	0x14
	.byte	0x12
	.long	0xa585
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF386
	.byte	0x14
	.byte	0x13
	.long	0xa70c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa3b8
	.uleb128 0x16
	.long	.LASF387
	.byte	0x28
	.byte	0x14
	.value	0x123
	.long	0xa76a
	.uleb128 0x1d
	.string	"ed"
	.byte	0x14
	.value	0x124
	.long	0xa2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF289
	.byte	0x14
	.value	0x125
	.long	0xa509
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.long	.LASF153
	.byte	0x14
	.value	0x126
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.long	.LASF201
	.byte	0x14
	.value	0x127
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"tds"
	.byte	0x14
	.value	0x128
	.long	0xa76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa30a
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xa7be
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xa7db
	.uleb128 0x8
	.long	0xa79b
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0xa790
	.byte	0x0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.long	0xa7f6
	.uleb128 0xa
	.long	.LASF190
	.byte	0x8
	.byte	0xdd
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.long	.LASF388
	.byte	0x14
	.byte	0x32
	.byte	0x15
	.long	0xa857
	.uleb128 0xa
	.long	.LASF389
	.byte	0x32
	.byte	0x16
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF390
	.byte	0x32
	.byte	0x17
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF391
	.byte	0x32
	.byte	0x18
	.long	0xa77a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF392
	.byte	0x32
	.byte	0x19
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF393
	.byte	0x32
	.byte	0x1a
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF394
	.byte	0x32
	.byte	0x1b
	.long	0xa790
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	.LASF395
	.byte	0x44
	.byte	0x32
	.byte	0x22
	.long	0xa8f0
	.uleb128 0xa
	.long	.LASF396
	.byte	0x32
	.byte	0x23
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF397
	.byte	0x32
	.byte	0x24
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF398
	.byte	0x32
	.byte	0x25
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF399
	.byte	0x32
	.byte	0x26
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF400
	.byte	0x32
	.byte	0x27
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF401
	.byte	0x32
	.byte	0x28
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF402
	.byte	0x32
	.byte	0x29
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF130
	.byte	0x32
	.byte	0x2a
	.long	0xa8f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF403
	.byte	0x32
	.byte	0x2b
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF404
	.byte	0x32
	.byte	0x2c
	.long	0xa900
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0xf
	.long	0xa785
	.long	0xa900
	.uleb128 0x10
	.long	0x537
	.byte	0x8
	.byte	0x0
	.uleb128 0xf
	.long	0xa785
	.long	0xa90f
	.uleb128 0x1e
	.long	0x537
	.byte	0x0
	.uleb128 0xd
	.long	.LASF405
	.byte	0x30
	.byte	0x32
	.byte	0x5f
	.long	0xa98c
	.uleb128 0xa
	.long	.LASF174
	.byte	0x32
	.byte	0x60
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF406
	.byte	0x32
	.byte	0x61
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF407
	.byte	0x32
	.byte	0x62
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF408
	.byte	0x32
	.byte	0x63
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF409
	.byte	0x32
	.byte	0x65
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF410
	.byte	0x32
	.byte	0x66
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF339
	.byte	0x32
	.byte	0x67
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"buf"
	.byte	0x32
	.byte	0x68
	.long	0xa98c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0xf
	.long	0xa785
	.long	0xa99c
	.uleb128 0x10
	.long	0x537
	.byte	0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF411
	.byte	0x20
	.byte	0x32
	.byte	0x8a
	.long	0xa9e1
	.uleb128 0xa
	.long	.LASF409
	.byte	0x32
	.byte	0x8b
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF410
	.byte	0x32
	.byte	0x8c
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF339
	.byte	0x32
	.byte	0x8d
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"buf"
	.byte	0x32
	.byte	0x8e
	.long	0xa98c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x14
	.long	.LASF412
	.value	0x1000
	.byte	0x32
	.byte	0xa9
	.long	0xa9fd
	.uleb128 0xa
	.long	.LASF259
	.byte	0x32
	.byte	0xaa
	.long	0xa9fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0xa785
	.long	0xaa0e
	.uleb128 0x15
	.long	0x537
	.value	0x3ff
	.byte	0x0
	.uleb128 0xd
	.long	.LASF276
	.byte	0xc
	.byte	0x32
	.byte	0x6
	.long	0xaa8a
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x9
	.long	0xaadd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0xa
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ep"
	.byte	0x2f
	.byte	0xb
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF278
	.byte	0x2f
	.byte	0xc
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF279
	.byte	0x2f
	.byte	0xd
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF280
	.byte	0x2f
	.byte	0xe
	.long	0xa77a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF281
	.byte	0x2f
	.byte	0xf
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF282
	.byte	0x2f
	.byte	0x10
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xd
	.long	.LASF283
	.byte	0x10
	.byte	0x2f
	.byte	0x9
	.long	0xaadd
	.uleb128 0xa
	.long	.LASF284
	.byte	0x2f
	.byte	0x15
	.long	0xaae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF285
	.byte	0x2f
	.byte	0x16
	.long	0xa7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF286
	.byte	0x2f
	.byte	0x17
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0x18
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF287
	.byte	0x2f
	.byte	0x19
	.long	0xa770
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xaa8a
	.uleb128 0x13
	.byte	0x4
	.long	0xaa0e
	.uleb128 0xd
	.long	.LASF288
	.byte	0x24
	.byte	0x2f
	.byte	0x1d
	.long	0xab73
	.uleb128 0x6
	.string	"op"
	.byte	0x2f
	.byte	0x1e
	.long	0xabaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF289
	.byte	0x2f
	.byte	0x1f
	.long	0xaae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x20
	.long	0xaadd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF290
	.byte	0x2f
	.byte	0x21
	.long	0xa7db
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF291
	.byte	0x2f
	.byte	0x22
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF292
	.byte	0x2f
	.byte	0x23
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF293
	.byte	0x2f
	.byte	0x24
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF294
	.byte	0x2f
	.byte	0x25
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF295
	.byte	0x2f
	.byte	0x26
	.long	0xa785
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF296
	.byte	0xc
	.byte	0x2f
	.byte	0x1e
	.long	0xabaa
	.uleb128 0xa
	.long	.LASF297
	.byte	0x2f
	.byte	0x2b
	.long	0xabcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF298
	.byte	0x2f
	.byte	0x2c
	.long	0xabcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF299
	.byte	0x2f
	.byte	0x2d
	.long	0xabe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xab73
	.uleb128 0x1f
	.byte	0x1
	.long	0x6c
	.long	0xabc5
	.uleb128 0x1b
	.long	0xabc5
	.uleb128 0x1b
	.long	0xa785
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xaae9
	.uleb128 0x13
	.byte	0x4
	.long	0xabb0
	.uleb128 0x1a
	.byte	0x1
	.long	0xabe2
	.uleb128 0x1b
	.long	0xabc5
	.uleb128 0x1b
	.long	0xa785
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xabd1
	.uleb128 0xd
	.long	.LASF413
	.byte	0x4
	.byte	0x15
	.byte	0x13
	.long	0xac11
	.uleb128 0x6
	.string	"bdf"
	.byte	0x15
	.byte	0x14
	.long	0xa77a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x15
	.byte	0x15
	.long	0xa77a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xd
	.long	.LASF414
	.byte	0x44
	.byte	0x15
	.byte	0x18
	.long	0xac80
	.uleb128 0x6
	.string	"usb"
	.byte	0x15
	.byte	0x19
	.long	0xaa8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF415
	.byte	0x15
	.byte	0x1a
	.long	0xac80
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF386
	.byte	0x15
	.byte	0x1b
	.long	0xac86
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF416
	.byte	0x15
	.byte	0x1c
	.long	0xac8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF417
	.byte	0x15
	.byte	0x1d
	.long	0xac92
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF418
	.byte	0x15
	.byte	0x1e
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF419
	.byte	0x15
	.byte	0x1f
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa7f6
	.uleb128 0x13
	.byte	0x4
	.long	0xa857
	.uleb128 0x13
	.byte	0x4
	.long	0xa90f
	.uleb128 0xf
	.long	0xabe8
	.long	0xaca2
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0x16
	.long	.LASF420
	.byte	0x48
	.byte	0x15
	.value	0x16f
	.long	0xacfa
	.uleb128 0x1d
	.string	"qh"
	.byte	0x15
	.value	0x170
	.long	0xa90f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF349
	.byte	0x15
	.value	0x171
	.long	0xacfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.string	"tds"
	.byte	0x15
	.value	0x171
	.long	0xacfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x17
	.long	.LASF153
	.byte	0x15
	.value	0x172
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x17
	.long	.LASF289
	.byte	0x15
	.value	0x173
	.long	0xaa0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xa99c
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"s8"
	.byte	0x25
	.byte	0xa
	.long	0x3a
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xad58
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0xad1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0xad1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xad75
	.uleb128 0x8
	.long	0xad35
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0xad2a
	.byte	0x0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.long	0xad90
	.uleb128 0xa
	.long	.LASF190
	.byte	0x8
	.byte	0xdd
	.long	0xad1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.long	.LASF276
	.byte	0xc
	.byte	0x30
	.byte	0x6
	.long	0xae0c
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x9
	.long	0xae5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0xa
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ep"
	.byte	0x2f
	.byte	0xb
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF278
	.byte	0x2f
	.byte	0xc
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF279
	.byte	0x2f
	.byte	0xd
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF280
	.byte	0x2f
	.byte	0xe
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF281
	.byte	0x2f
	.byte	0xf
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF282
	.byte	0x2f
	.byte	0x10
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xd
	.long	.LASF283
	.byte	0x10
	.byte	0x2f
	.byte	0x9
	.long	0xae5f
	.uleb128 0xa
	.long	.LASF284
	.byte	0x2f
	.byte	0x15
	.long	0xae65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF285
	.byte	0x2f
	.byte	0x16
	.long	0xad75
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF286
	.byte	0x2f
	.byte	0x17
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0x18
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF287
	.byte	0x2f
	.byte	0x19
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xae0c
	.uleb128 0x13
	.byte	0x4
	.long	0xad90
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0xae90
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0xaea9
	.uleb128 0x8
	.long	0xae6b
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0xad1f
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0xaebe
	.uleb128 0xe
	.long	0xae90
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xaece
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xaede
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0xaf77
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0xaf7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0xad2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0xad1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0xaf7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xaede
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0xafb4
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0xb376
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0xb376
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0xb386
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0xb396
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0xb3a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0xb3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0xaea9
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0xad1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0xaebe
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0xaebe
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0xad14
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0xad14
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0xad14
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0xaebe
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0xb3c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0xaea9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0xad1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0xb3a6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0xaea9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0xaebe
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0xb3d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0xad14
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0xad14
	.long	0xb386
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0xad14
	.long	0xb396
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb3a6
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb3b6
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0xad14
	.long	0xb3c6
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb3d6
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb3e6
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF123
	.byte	0x10
	.byte	0xa
	.byte	0x98
	.long	0xb49b
	.uleb128 0xa
	.long	.LASF124
	.byte	0xa
	.byte	0x99
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xa
	.byte	0x9a
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF126
	.byte	0xa
	.byte	0x9b
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0x9c
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"irq"
	.byte	0xa
	.byte	0x9d
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0x9e
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"dma"
	.byte	0xa
	.byte	0x9f
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pio"
	.byte	0xa
	.byte	0xa0
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.byte	0xa1
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xa2
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0xa3
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xa4
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x18
	.byte	0xa
	.byte	0xa8
	.long	0xb526
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0xa9
	.long	0xaf77
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0xaa
	.long	0xad1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0xab
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0xac
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0xad
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0xae
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0xaf
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0xb0
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0xa
	.byte	0xb3
	.long	0xaf7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x10
	.byte	0xa
	.byte	0xb6
	.long	0xb5db
	.uleb128 0xa
	.long	.LASF122
	.byte	0xa
	.byte	0xb7
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF121
	.byte	0xa
	.byte	0xb8
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0xb9
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0xba
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0xbb
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xbc
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0xbd
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0xbe
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0xbf
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0xc0
	.long	0xad14
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF113
	.byte	0xa
	.byte	0xc1
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0xc2
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.byte	0xa
	.byte	0xc7
	.long	0xb60e
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0xc8
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0xc9
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0xca
	.long	0xb60e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb61e
	.uleb128 0x10
	.long	0x537
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0xc6
	.long	0xb637
	.uleb128 0x8
	.long	0xb5db
	.uleb128 0xc
	.long	.LASF153
	.byte	0xa
	.byte	0xcc
	.long	0xad2a
	.byte	0x0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x8
	.byte	0xa
	.byte	0xc5
	.long	0xb64c
	.uleb128 0xe
	.long	0xb61e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LASF155
	.value	0x368
	.byte	0xa
	.byte	0xd0
	.long	0xb750
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0xd1
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0xd2
	.long	0xb750
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0xd3
	.long	0xaea9
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0xd4
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF160
	.byte	0xa
	.byte	0xd5
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xa
	.long	.LASF161
	.byte	0xa
	.byte	0xd6
	.long	0xaece
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF162
	.byte	0xa
	.byte	0xd8
	.long	0xb760
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF163
	.byte	0xa
	.byte	0xdb
	.long	0xb770
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF164
	.byte	0xa
	.byte	0xde
	.long	0xb780
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0xa
	.long	.LASF165
	.byte	0xa
	.byte	0xe1
	.long	0xad00
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.uleb128 0xa
	.long	.LASF166
	.byte	0xa
	.byte	0xe2
	.long	0xb637
	.byte	0x3
	.byte	0x23
	.uleb128 0x122
	.uleb128 0xa
	.long	.LASF167
	.byte	0xa
	.byte	0xe4
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12a
	.uleb128 0xa
	.long	.LASF168
	.byte	0xa
	.byte	0xe7
	.long	0xb49b
	.byte	0x3
	.byte	0x23
	.uleb128 0x12e
	.uleb128 0xa
	.long	.LASF169
	.byte	0xa
	.byte	0xea
	.long	0xb3e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xa
	.long	.LASF170
	.byte	0xa
	.byte	0xed
	.long	0xb790
	.byte	0x3
	.byte	0x23
	.uleb128 0x156
	.uleb128 0xa
	.long	.LASF171
	.byte	0xa
	.byte	0xef
	.long	0xad14
	.byte	0x3
	.byte	0x23
	.uleb128 0x166
	.uleb128 0xa
	.long	.LASF172
	.byte	0xa
	.byte	0xf2
	.long	0xb7a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb760
	.uleb128 0x10
	.long	0x537
	.byte	0x20
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb770
	.uleb128 0x10
	.long	0x537
	.byte	0xc
	.byte	0x0
	.uleb128 0xf
	.long	0xb526
	.long	0xb780
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb790
	.uleb128 0x10
	.long	0x537
	.byte	0xc3
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb7a0
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb7b1
	.uleb128 0x15
	.long	0x537
	.value	0x1ff
	.byte	0x0
	.uleb128 0xd
	.long	.LASF421
	.byte	0x8
	.byte	0x16
	.byte	0xa4
	.long	0xb7e8
	.uleb128 0xa
	.long	.LASF150
	.byte	0x16
	.byte	0xa5
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF130
	.byte	0x16
	.byte	0xa6
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF152
	.byte	0x16
	.byte	0xa7
	.long	0xb60e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x16
	.long	.LASF422
	.byte	0x8
	.byte	0x16
	.value	0x149
	.long	0xb82e
	.uleb128 0x17
	.long	.LASF423
	.byte	0x16
	.value	0x14a
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"x"
	.byte	0x16
	.value	0x14b
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x1d
	.string	"y"
	.byte	0x16
	.value	0x14b
	.long	0xad00
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.long	.LASF130
	.byte	0x16
	.value	0x14c
	.long	0xb82e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xf
	.long	0xad00
	.long	0xb83e
	.uleb128 0x10
	.long	0x537
	.byte	0x4
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xb88c
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xb8a9
	.uleb128 0x8
	.long	0xb869
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0xb85e
	.byte	0x0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.long	0xb8c4
	.uleb128 0xa
	.long	.LASF190
	.byte	0x8
	.byte	0xdd
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.long	.LASF276
	.byte	0xc
	.byte	0x33
	.byte	0x8
	.long	0xb940
	.uleb128 0xa
	.long	.LASF277
	.byte	0x2f
	.byte	0x9
	.long	0xb993
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0xa
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ep"
	.byte	0x2f
	.byte	0xb
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF278
	.byte	0x2f
	.byte	0xc
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF279
	.byte	0x2f
	.byte	0xd
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF280
	.byte	0x2f
	.byte	0xe
	.long	0xb848
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF281
	.byte	0x2f
	.byte	0xf
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF282
	.byte	0x2f
	.byte	0x10
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xd
	.long	.LASF283
	.byte	0x10
	.byte	0x2f
	.byte	0x9
	.long	0xb993
	.uleb128 0xa
	.long	.LASF284
	.byte	0x2f
	.byte	0x15
	.long	0xb999
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF285
	.byte	0x2f
	.byte	0x16
	.long	0xb8a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF286
	.byte	0x2f
	.byte	0x17
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF110
	.byte	0x2f
	.byte	0x18
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF287
	.byte	0x2f
	.byte	0x19
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xb940
	.uleb128 0x13
	.byte	0x4
	.long	0xb8c4
	.uleb128 0xd
	.long	.LASF198
	.byte	0x14
	.byte	0x33
	.byte	0x5
	.long	0xb9f2
	.uleb128 0x6
	.string	"lba"
	.byte	0x26
	.byte	0x95
	.long	0xb85e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF199
	.byte	0x26
	.byte	0x96
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF200
	.byte	0x26
	.byte	0x97
	.long	0xba8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF201
	.byte	0x26
	.byte	0x98
	.long	0xb848
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF202
	.byte	0x26
	.byte	0x99
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0xba8b
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0xba91
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0xb85e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0xb848
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0xba91
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xb9f2
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0xbac8
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0xb848
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0xb848
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0xb848
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.long	0xb83e
	.long	0xbad8
	.uleb128 0x10
	.long	0x537
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF424
	.byte	0x2c
	.byte	0x21
	.byte	0x10
	.long	0xbb0f
	.uleb128 0xa
	.long	.LASF222
	.byte	0x21
	.byte	0x11
	.long	0xb9f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF425
	.byte	0x21
	.byte	0x12
	.long	0xb999
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.long	.LASF426
	.byte	0x21
	.byte	0x12
	.long	0xb999
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xd
	.long	.LASF427
	.byte	0x1f
	.byte	0x21
	.byte	0x1e
	.long	0xbb7e
	.uleb128 0xa
	.long	.LASF428
	.byte	0x21
	.byte	0x1f
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF429
	.byte	0x21
	.byte	0x20
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF430
	.byte	0x21
	.byte	0x21
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF431
	.byte	0x21
	.byte	0x22
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF432
	.byte	0x21
	.byte	0x23
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.long	.LASF433
	.byte	0x21
	.byte	0x24
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF434
	.byte	0x21
	.byte	0x25
	.long	0xbac8
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xd
	.long	.LASF435
	.byte	0xd
	.byte	0x21
	.byte	0x2a
	.long	0xbbc3
	.uleb128 0xa
	.long	.LASF436
	.byte	0x21
	.byte	0x2b
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF437
	.byte	0x21
	.byte	0x2c
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF438
	.byte	0x21
	.byte	0x2d
	.long	0xb853
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF439
	.byte	0x21
	.byte	0x2e
	.long	0xb83e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xbc07
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0xbbce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0xbbce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xbc24
	.uleb128 0x8
	.long	0xbbe4
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0xbbd9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF440
	.byte	0x10
	.byte	0x34
	.byte	0x24
	.long	0xbc69
	.uleb128 0xa
	.long	.LASF107
	.byte	0x34
	.byte	0x25
	.long	0xbbd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x34
	.byte	0x26
	.long	0xbbce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x34
	.byte	0x27
	.long	0xbbc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF174
	.byte	0x34
	.byte	0x28
	.long	0xbbc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xd
	.long	.LASF441
	.byte	0x4
	.byte	0x34
	.byte	0x2c
	.long	0xbca0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x34
	.byte	0x2d
	.long	0xbbc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"idx"
	.byte	0x34
	.byte	0x2e
	.long	0xbbc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF442
	.byte	0x34
	.byte	0x2f
	.long	0xbca0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.long	0xbbc3
	.long	0xbcaf
	.uleb128 0x1e
	.long	0x537
	.byte	0x0
	.uleb128 0xd
	.long	.LASF443
	.byte	0x8
	.byte	0x34
	.byte	0x33
	.long	0xbcd7
	.uleb128 0x6
	.string	"id"
	.byte	0x34
	.byte	0x34
	.long	0xbbce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x34
	.byte	0x35
	.long	0xbbce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF444
	.byte	0x4
	.byte	0x34
	.byte	0x39
	.long	0xbd0e
	.uleb128 0xa
	.long	.LASF36
	.byte	0x34
	.byte	0x3a
	.long	0xbbc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"idx"
	.byte	0x34
	.byte	0x3b
	.long	0xbbc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF442
	.byte	0x34
	.byte	0x3c
	.long	0xbd0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.long	0xbcaf
	.long	0xbd1d
	.uleb128 0x1e
	.long	0x537
	.byte	0x0
	.uleb128 0xd
	.long	.LASF445
	.byte	0x10
	.byte	0x34
	.byte	0x3f
	.long	0xbd62
	.uleb128 0x6
	.string	"num"
	.byte	0x34
	.byte	0x40
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF114
	.byte	0x34
	.byte	0x41
	.long	0xbd62
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF446
	.byte	0x34
	.byte	0x42
	.long	0xbd68
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF447
	.byte	0x34
	.byte	0x43
	.long	0xbd6e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xbc24
	.uleb128 0x13
	.byte	0x4
	.long	0xbc69
	.uleb128 0x13
	.byte	0x4
	.long	0xbcd7
	.uleb128 0x18
	.long	.LASF448
	.byte	0x34
	.byte	0x4c
	.long	0xbd7f
	.uleb128 0xf
	.long	0x33
	.long	0xbd90
	.uleb128 0x15
	.long	0x537
	.value	0x1403
	.byte	0x0
	.uleb128 0x14
	.long	.LASF449
	.value	0x151c
	.byte	0x34
	.byte	0x4e
	.long	0xbdf7
	.uleb128 0xa
	.long	.LASF450
	.byte	0x34
	.byte	0x4f
	.long	0xbd74
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF445
	.byte	0x34
	.byte	0x50
	.long	0xbd1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1404
	.uleb128 0xa
	.long	.LASF451
	.byte	0x34
	.byte	0x51
	.long	0xbbc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1414
	.uleb128 0xa
	.long	.LASF452
	.byte	0x34
	.byte	0x52
	.long	0xbbc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1416
	.uleb128 0xa
	.long	.LASF453
	.byte	0x34
	.byte	0x53
	.long	0xbdf7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1418
	.uleb128 0xa
	.long	.LASF454
	.byte	0x34
	.byte	0x55
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1518
	.byte	0x0
	.uleb128 0xf
	.long	0xbbc3
	.long	0xbe07
	.uleb128 0x10
	.long	0x537
	.byte	0x7f
	.byte	0x0
	.uleb128 0xd
	.long	.LASF455
	.byte	0x8
	.byte	0x34
	.byte	0x58
	.long	0xbe30
	.uleb128 0xa
	.long	.LASF107
	.byte	0x34
	.byte	0x59
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF106
	.byte	0x34
	.byte	0x5a
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xbe7e
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0xbe45
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0xbe45
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xbe9b
	.uleb128 0x8
	.long	0xbe5b
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0xbe50
	.byte	0x0
	.uleb128 0xd
	.long	.LASF198
	.byte	0x14
	.byte	0x26
	.byte	0x94
	.long	0xbeee
	.uleb128 0x6
	.string	"lba"
	.byte	0x26
	.byte	0x95
	.long	0xbe50
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF199
	.byte	0x26
	.byte	0x96
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF200
	.byte	0x26
	.byte	0x97
	.long	0xbf87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF201
	.byte	0x26
	.byte	0x98
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF202
	.byte	0x26
	.byte	0x99
	.long	0xbe30
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x24
	.byte	0x26
	.byte	0x97
	.long	0xbf87
	.uleb128 0xa
	.long	.LASF110
	.byte	0x26
	.byte	0xb0
	.long	0xbe30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x26
	.byte	0xb1
	.long	0xbe30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF112
	.byte	0x26
	.byte	0xb2
	.long	0xbf8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF113
	.byte	0x26
	.byte	0xb3
	.long	0xbe50
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x26
	.byte	0xb4
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF115
	.byte	0x26
	.byte	0xb5
	.long	0xbe45
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF116
	.byte	0x26
	.byte	0xb6
	.long	0xbe30
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF117
	.byte	0x26
	.byte	0xb9
	.long	0xbe30
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF118
	.byte	0x26
	.byte	0xba
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF119
	.byte	0x26
	.byte	0xbb
	.long	0xbf8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xbeee
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0x26
	.byte	0xa9
	.long	0xbfc4
	.uleb128 0xa
	.long	.LASF121
	.byte	0x26
	.byte	0xaa
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF122
	.byte	0x26
	.byte	0xab
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"spt"
	.byte	0x26
	.byte	0xac
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF440
	.byte	0x10
	.byte	0x34
	.byte	0x24
	.long	0xc009
	.uleb128 0xa
	.long	.LASF107
	.byte	0x34
	.byte	0x25
	.long	0xbe50
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x34
	.byte	0x26
	.long	0xbe45
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x34
	.byte	0x27
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF174
	.byte	0x34
	.byte	0x28
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xd
	.long	.LASF441
	.byte	0x4
	.byte	0x34
	.byte	0x2c
	.long	0xc040
	.uleb128 0xa
	.long	.LASF36
	.byte	0x34
	.byte	0x2d
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"idx"
	.byte	0x34
	.byte	0x2e
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF442
	.byte	0x34
	.byte	0x2f
	.long	0xc040
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.long	0xbe3a
	.long	0xc04f
	.uleb128 0x1e
	.long	0x537
	.byte	0x0
	.uleb128 0xd
	.long	.LASF443
	.byte	0x8
	.byte	0x34
	.byte	0x33
	.long	0xc077
	.uleb128 0x6
	.string	"id"
	.byte	0x34
	.byte	0x34
	.long	0xbe45
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x34
	.byte	0x35
	.long	0xbe45
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF444
	.byte	0x4
	.byte	0x34
	.byte	0x39
	.long	0xc0ae
	.uleb128 0xa
	.long	.LASF36
	.byte	0x34
	.byte	0x3a
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"idx"
	.byte	0x34
	.byte	0x3b
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF442
	.byte	0x34
	.byte	0x3c
	.long	0xc0ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.long	0xc04f
	.long	0xc0bd
	.uleb128 0x1e
	.long	0x537
	.byte	0x0
	.uleb128 0xd
	.long	.LASF445
	.byte	0x10
	.byte	0x34
	.byte	0x3f
	.long	0xc102
	.uleb128 0x6
	.string	"num"
	.byte	0x34
	.byte	0x40
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF114
	.byte	0x34
	.byte	0x41
	.long	0xc102
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF446
	.byte	0x34
	.byte	0x42
	.long	0xc108
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF447
	.byte	0x34
	.byte	0x43
	.long	0xc10e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xbfc4
	.uleb128 0x13
	.byte	0x4
	.long	0xc009
	.uleb128 0x13
	.byte	0x4
	.long	0xc077
	.uleb128 0x18
	.long	.LASF448
	.byte	0x34
	.byte	0x4c
	.long	0xbd7f
	.uleb128 0x14
	.long	.LASF449
	.value	0x151c
	.byte	0x35
	.byte	0x65
	.long	0xc186
	.uleb128 0xa
	.long	.LASF450
	.byte	0x34
	.byte	0x4f
	.long	0xc114
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF445
	.byte	0x34
	.byte	0x50
	.long	0xc0bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x1404
	.uleb128 0xa
	.long	.LASF451
	.byte	0x34
	.byte	0x51
	.long	0xbe3a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1414
	.uleb128 0xa
	.long	.LASF452
	.byte	0x34
	.byte	0x52
	.long	0xbe3a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1416
	.uleb128 0xa
	.long	.LASF453
	.byte	0x34
	.byte	0x53
	.long	0xc186
	.byte	0x3
	.byte	0x23
	.uleb128 0x1418
	.uleb128 0xa
	.long	.LASF454
	.byte	0x34
	.byte	0x55
	.long	0x6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1518
	.byte	0x0
	.uleb128 0xf
	.long	0xbe3a
	.long	0xc196
	.uleb128 0x10
	.long	0x537
	.byte	0x7f
	.byte	0x0
	.uleb128 0xd
	.long	.LASF455
	.byte	0x8
	.byte	0x34
	.byte	0x58
	.long	0xc1bf
	.uleb128 0xa
	.long	.LASF107
	.byte	0x34
	.byte	0x59
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF106
	.byte	0x34
	.byte	0x5a
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF456
	.byte	0x10
	.byte	0x36
	.byte	0x1a
	.long	0xc1f6
	.uleb128 0xa
	.long	.LASF110
	.byte	0x36
	.byte	0x1c
	.long	0xbe45
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF457
	.byte	0x36
	.byte	0x1e
	.long	0xbe45
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF458
	.byte	0x36
	.byte	0x20
	.long	0xbe50
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	.LASF459
	.byte	0x2c
	.byte	0x24
	.byte	0x16
	.long	0xc22c
	.uleb128 0xa
	.long	.LASF222
	.byte	0x24
	.byte	0x17
	.long	0xbeee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"vq"
	.byte	0x24
	.byte	0x18
	.long	0xc22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.long	.LASF460
	.byte	0x24
	.byte	0x19
	.long	0xbe3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x13
	.byte	0x4
	.long	0xc11f
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xc280
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0xc247
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0xc247
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xc29d
	.uleb128 0x8
	.long	0xc25d
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0xc252
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0xc2c2
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0xc2db
	.uleb128 0x8
	.long	0xc29d
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0xc247
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0xc2f0
	.uleb128 0xe
	.long	0xc2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0xc314
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0xc355
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0xc373
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0xc247
	.uleb128 0x8
	.long	0xc2f0
	.uleb128 0x8
	.long	0xc314
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0xc397
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0xc3d8
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0xc3f6
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0xc247
	.uleb128 0x8
	.long	0xc373
	.uleb128 0x8
	.long	0xc397
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0xc41a
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0xc45b
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0xc479
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0xc247
	.uleb128 0x8
	.long	0xc3f6
	.uleb128 0x8
	.long	0xc41a
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0xc49d
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0xc4dc
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0xc4fa
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0xc247
	.uleb128 0x8
	.long	0xc479
	.uleb128 0x8
	.long	0xc49d
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0xc51e
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0xc55d
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0xc57b
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0xc247
	.uleb128 0x8
	.long	0xc4fa
	.uleb128 0x8
	.long	0xc51e
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0xc59f
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xe
	.byte	0x2d
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0xc5de
	.uleb128 0x6
	.string	"cl"
	.byte	0xe
	.byte	0x2d
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ch"
	.byte	0xe
	.byte	0x2d
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xe
	.byte	0x2d
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
	.byte	0xe
	.byte	0x2d
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0xc5fc
	.uleb128 0x9
	.string	"ecx"
	.byte	0xe
	.byte	0x2d
	.long	0xc247
	.uleb128 0x8
	.long	0xc57b
	.uleb128 0x8
	.long	0xc59f
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0xc620
	.uleb128 0x6
	.string	"ax"
	.byte	0xe
	.byte	0x2e
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF30
	.byte	0xe
	.byte	0x2e
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0xc65f
	.uleb128 0x6
	.string	"al"
	.byte	0xe
	.byte	0x2e
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ah"
	.byte	0xe
	.byte	0x2e
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x2e
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0xe
	.byte	0x2e
	.long	0xc232
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0xc67d
	.uleb128 0x9
	.string	"eax"
	.byte	0xe
	.byte	0x2e
	.long	0xc247
	.uleb128 0x8
	.long	0xc5fc
	.uleb128 0x8
	.long	0xc620
	.byte	0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x26
	.byte	0xe
	.byte	0x25
	.long	0xc6f8
	.uleb128 0x6
	.string	"ds"
	.byte	0xe
	.byte	0x26
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"es"
	.byte	0xe
	.byte	0x27
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	0xc355
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	0xc3d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	0xc45b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	0xc4dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	0xc55d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	0xc5de
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	0xc65f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xe
	.byte	0x2f
	.long	0xc2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x30
	.long	0xc23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.string	"u8"
	.byte	0x25
	.byte	0x9
	.long	0x33
	.uleb128 0x2
	.string	"u16"
	.byte	0x25
	.byte	0xb
	.long	0x4c
	.uleb128 0x2
	.string	"u32"
	.byte	0x25
	.byte	0xd
	.long	0x65
	.uleb128 0x2
	.string	"u64"
	.byte	0x25
	.byte	0xf
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x25
	.byte	0x14
	.long	0xc746
	.uleb128 0x6
	.string	"hi"
	.byte	0x25
	.byte	0x14
	.long	0xc70d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"lo"
	.byte	0x25
	.byte	0x14
	.long	0xc70d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x8
	.byte	0x25
	.byte	0x13
	.long	0xc763
	.uleb128 0x8
	.long	0xc723
	.uleb128 0x9
	.string	"val"
	.byte	0x25
	.byte	0x15
	.long	0xc718
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1a
	.byte	0xbc
	.long	0xc788
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1a
	.byte	0xbd
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"seg"
	.byte	0x1a
	.byte	0xbe
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1a
	.byte	0xbb
	.long	0xc7a1
	.uleb128 0x8
	.long	0xc763
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1a
	.byte	0xc0
	.long	0xc70d
	.byte	0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0x1a
	.byte	0xba
	.long	0xc7b6
	.uleb128 0xe
	.long	0xc788
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0xc6f8
	.long	0xc7c6
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	.LASF38
	.byte	0xbc
	.byte	0xa
	.byte	0x27
	.long	0xcb88
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x29
	.long	0xcb88
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x2a
	.long	0xcb98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x2b
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x2d
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2e
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x2f
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x30
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x31
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x32
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x33
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x34
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x35
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x36
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x38
	.long	0xcba8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x39
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x3a
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x3c
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x3d
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x3e
	.long	0xcbb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x3f
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x41
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x42
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x44
	.long	0xcbc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x46
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x47
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x48
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x49
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x4a
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x4b
	.long	0xc7a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x4c
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6b
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x4d
	.long	0xc70d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x4f
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF72
	.byte	0xa
	.byte	0x50
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x71
	.uleb128 0xa
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.long	.LASF74
	.byte	0xa
	.byte	0x52
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF75
	.byte	0xa
	.byte	0x53
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.byte	0x54
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.long	.LASF77
	.byte	0xa
	.byte	0x55
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.long	.LASF78
	.byte	0xa
	.byte	0x56
	.long	0xc7b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.byte	0x57
	.long	0xc7b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.long	0xc702
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0xc702
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF82
	.byte	0xa
	.byte	0x5b
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF83
	.byte	0xa
	.byte	0x5c
	.long	0xc702
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xa
	.long	.LASF84
	.byte	0xa
	.byte	0x5d
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xa
	.long	.LASF85
	.byte	0xa
	.byte	0x5e
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF86
	.byte	0xa
	.byte	0x5f
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x89
	.uleb128 0xa
	.long	.LASF87
	.byte	0xa
	.byte	0x60
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xa
	.long	.LASF88
	.byte	0xa
	.byte	0x61
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b
	.uleb128 0xa
	.long	.LASF89
	.byte	0xa
	.byte	0x62
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xa
	.byte	0x63
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d
	.uleb128 0xa
	.long	.LASF91
	.byte	0xa
	.byte	0x64
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF92
	.byte	0xa
	.byte	0x65
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0xa
	.long	.LASF93
	.byte	0xa
	.byte	0x67
	.long	0xc7b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF94
	.byte	0xa
	.byte	0x68
	.long	0xcbd8
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF95
	.byte	0xa
	.byte	0x69
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x6a
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x97
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0x6b
	.long	0xc7a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0x6c
	.long	0xc70d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0x6e
	.long	0xc6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0x6f
	.long	0xcbb8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0x70
	.long	0xc7a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0x71
	.long	0xc7b6
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x73
	.long	0xcbe8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x74
	.long	0xc702
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.byte	0x0
	.uleb128 0xf
	.long	0xc702
	.long	0xcb98
	.uleb128 0x10
	.long	0x537
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0xc702
	.long	0xcba8
	.uleb128 0x10
	.long	0x537
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0xc6f8
	.long	0xcbb8
	.uleb128 0x10
	.long	0x537
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0xc6f8
	.long	0xcbc8
	.uleb128 0x10
	.long	0x537
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.long	0xc702
	.long	0xcbd8
	.uleb128 0x10
	.long	0x537
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0xc6f8
	.long	0xcbe8
	.uleb128 0x10
	.long	0x537
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0xc6f8
	.long	0xcbf8
	.uleb128 0x10
	.long	0x537
	.byte	0x9
	.byte	0x0
	.uleb128 0xd
	.long	.LASF461
	.byte	0x14
	.byte	0x37
	.byte	0xd
	.long	0xcc2f
	.uleb128 0xa
	.long	.LASF462
	.byte	0x37
	.byte	0xe
	.long	0xc718
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF156
	.byte	0x37
	.byte	0xf
	.long	0xc718
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF110
	.byte	0x37
	.byte	0x10
	.long	0xc70d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0xcc53
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x28
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0xcc94
	.uleb128 0xa
	.long	.LASF10
	.byte	0xe
	.byte	0x28
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF9
	.byte	0xe
	.byte	0x28
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF12
	.byte	0xe
	.byte	0x28
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x28
	.long	0xccb2
	.uleb128 0x9
	.string	"edi"
	.byte	0xe
	.byte	0x28
	.long	0xc70d
	.uleb128 0x8
	.long	0xcc2f
	.uleb128 0x8
	.long	0xcc53
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0xccd6
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x29
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0xcd17
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x29
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x29
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0xe
	.byte	0x29
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x29
	.long	0xcd35
	.uleb128 0x9
	.string	"esi"
	.byte	0xe
	.byte	0x29
	.long	0xc70d
	.uleb128 0x8
	.long	0xccb2
	.uleb128 0x8
	.long	0xccd6
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0xcd59
	.uleb128 0x6
	.string	"bp"
	.byte	0xe
	.byte	0x2a
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0xcd9a
	.uleb128 0xa
	.long	.LASF18
	.byte	0xe
	.byte	0x2a
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF17
	.byte	0xe
	.byte	0x2a
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0xe
	.byte	0x2a
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0xe
	.byte	0x2a
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.long	0xcdb8
	.uleb128 0x9
	.string	"ebp"
	.byte	0xe
	.byte	0x2a
	.long	0xc70d
	.uleb128 0x8
	.long	0xcd35
	.uleb128 0x8
	.long	0xcd59
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0xcddc
	.uleb128 0x6
	.string	"bx"
	.byte	0xe
	.byte	0x2b
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0xe
	.byte	0x2b
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0xce1b
	.uleb128 0x6
	.string	"bl"
	.byte	0xe
	.byte	0x2b
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bh"
	.byte	0xe
	.byte	0x2b
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0xe
	.byte	0x2b
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0xe
	.byte	0x2b
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0xce39
	.uleb128 0x9
	.string	"ebx"
	.byte	0xe
	.byte	0x2b
	.long	0xc70d
	.uleb128 0x8
	.long	0xcdb8
	.uleb128 0x8
	.long	0xcddc
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0xce5d
	.uleb128 0x6
	.string	"dx"
	.byte	0xe
	.byte	0x2c
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.byte	0x2c
	.long	0xc702
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0xce9c
	.uleb128 0x6
	.string	"dl"
	.byte	0xe
	.byte	0x2c
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"dh"
	.byte	0xe
	.byte	0x2c
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0xe
	.byte	0x2c
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0xe
	.byte	0x2c
	.long	0xc6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0xceba
	.uleb128 0x9
	.string	"edx"
	.byte	0xe
	.byte	0x2c
	.long	0xc70d
	.uleb128 0x8
	.long	0xce39
	.uleb128 0x8
	.long	0xce5d
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.byte	0xe
	.byte	0x2d
	.long	0xcede
	.uleb128 0x6
	.string	"cx"
	.byte	0xe
	.byte	0x2d