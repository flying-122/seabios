#!/usr/bin/env python
# Script that tries to find how much stack space each function in an
# object is using.
#
# Copyright (C) 2008  Kevin O'Connor <kevin@koconnor.net>
#
# This file may be distributed under the terms of the GNU GPLv3 license.

# Usage:
#   objdump -m i386 -M i8086 -M suffix -d out/rom16.reloc.o | tools/checkstack.py

import sys
import re

# Functions that change stacks
STACKHOP = ['__send_disk_op']
# List of functions we can assume are never called.
#IGNORE = ['panic', '__dprintf']
IGNORE = ['panic']

OUTPUTDESC = """
#funcname1[preamble_stack_usage,max_usage_with_callers]:
#    insn_addr:called_function [usage_at_call_point+caller_preamble,total_usage]
#
#funcname2[p,m,max_usage_to_yield_point]:
#    insn_addr:called_function [u+c,t,usage_to_yield_point]
"""

# Find out maximum stack usage for a function
def calcmaxstack(funcs, funcaddr):
    info = funcs[funcaddr]
    # Find max of all nested calls.
    maxusage = info[1]
    maxyieldusage = doesyield = 0
    if info[3] is not None:
        maxyieldusage = info[3]
        doesyield = 1
    info[2] = maxusage
    info[4] = info[3]
    seenbefore = {}
    totcalls = 0
    for insnaddr, calladdr, usage in info[6]:
        callinfo = funcs[calladdr]
        if callinfo[2] is None:
            calcmaxstack(funcs, calladdr)
        if callinfo[0] not in seenbefore:
            seenbefore[callinfo[0]] = 1
            totcalls += 1 + callinfo[5]
        funcnameroot = callinfo[0].split('.')[0]
        if funcnameroot in IGNORE:
            # This called function is ignored - don't contribute it to
            # the max stack.
            continue
        if funcnameroot in STACKHOP:
            if usage > maxusage:
                maxusage = usage
            if callinfo[4] is not None:
                doesyield = 1
                if usage > maxyieldusage:
                    maxyieldusage = usage
            continue
        totusage = usage + callinfo[2]
        if totusage > maxusage:
            maxusage = totusage
        if callinfo[4] is not None:
            doesyield = 1
            totyieldusage = usage + callinfo[4]
            if totyieldusage > maxyieldusage:
                maxyieldusage = totyieldusage
    info[2] = maxusage
    if doesyield:
        info[4] = maxyieldusage
    info[5] = totcalls

# Try to arrange output so that functions that call each other are
# near each other.
def orderfuncs(funcnames, availnames, funcs):
    l = [(availnames[name][5], name)
         for name in funcnames if name in availnames]
    l.sort()
    l.reverse()
    out = []
    while l:
        count, name = l.pop(0)
        if name not in availnames:
            continue
        callnames = [funcs[calls[1]][0] for calls in availnames[name][6]]
        del availnames[name]
        out = out + orderfuncs(callnames, availnames, funcs) + [name]
    return out

# Update function info with a found "yield" point.
def noteYield(info, stackusage):
    prevyield = info[3]
    if prevyield is None or prevyield < stackusage:
        info[3] = stackusage

# Update function info with a found "call" point.
def noteCall(info, subfuncs, insnaddr, calladdr, stackusage):
    if (calladdr, stackusage) in subfuncs:
        # Already noted a nearly identical call - ignore this one.
        return
    info[6].append((insnaddr, calladdr, stackusage))
    subfuncs[(calladdr, stackusage)] = 1

hex_s = r'[0-9a-f]+'
re_func = re.compile(r'^(?P<funcaddr>' + hex_s + r') <(?P<func>.*)>:$')
re_asm = re.compile(
    r'^[ ]*(?P<insnaddr>' + hex_s
    + r'):\t.*\t(addr32 )?(?P<insn>.+?)[ ]*((?P<calladdr>' + hex_s
    + r') <(?P<ref>.*)>)?$')
re_usestack = re.compile(
    r'^(push[f]?[lw])|(sub.* [$](?P<num>0x' + hex_s + r'),%esp)$')

def calc():
    # funcs[funcaddr] = [funcname, basicstackusage, maxstackusage
    #                    , yieldusage, maxyieldusage, totalcalls
    #                    , [(insnaddr, calladdr, stackusage), ...]]
    funcs = {-1: ['<indirect>', 0, 0, None, None, 0, []]}
    cur = None
    atstart = 0
    stackusage = 0

    # Parse input lines
    for line in sys.stdin.readlines():
        m = re_func.match(line)
        if m is not None:
            # Found function
            funcaddr = int(m.group('funcaddr'), 16)
            funcs[funcaddr] = cur = [m.group('func'), 0, None, None, None, 0, []]
            stackusage = 0
            atstart = 1
            subfuncs = {}
            continue
        m = re_asm.match(line)
        if m is not None:
            insn = m.group('insn')

            im = re_usestack.match(insn)
            if im is not None:
                if insn[:5] == 'pushl' or insn[:6] == 'pushfl':
                    stackusage += 4
                    continue
                elif insn[:5] == 'pushw' or insn[:6] == 'pushfw':
                    stackusage += 2
                    continue
                stackusage += int(im.group('num'), 16)

            if atstart:
                if insn == 'movl   %esp,%ebp':
                    # Still part of initial header
                    continue
                cur[1] = stackusage
                atstart = 0

            insnaddr = m.group('insnaddr')
            calladdr = m.group('calladdr')
            if calladdr is None:
                if insn[:6] == 'lcallw':
                    noteCall(cur, subfuncs, insnaddr, -1, stackusage + 4)
                    noteYield(cur, stackusage + 4)
                elif insn[:3] == 'int':
                    noteCall(cur, subfuncs, insnaddr, -1, stackusage + 6)
                    noteYield(cur, stackusage + 6)
                elif insn[:3] == 'sti':
                    noteYield(cur, stackusage)
                else:
                    # misc instruction
                    continue
            else:
                # Jump or call insn
                calladdr = int(calladdr, 16)
                ref = m.group('ref')
                if '+' in ref:
                    # Inter-function jump.
                    pass
                elif insn[:1] == 'j':
                    # Tail call
                    noteCall(cur, subfuncs, insnaddr, calladdr, 0)
                elif insn[:5] == 'calll':
                    noteCall(cur, subfuncs, insnaddr, calladdr, stackusage + 4)
                else:
                    print "unknown call", ref
                    noteCall(cur, subfuncs, insnaddr, calladdr, stackusage)
            # Reset stack usage to preamble usage
            stackusage = cur[1]

        #print "other", repr(line)

    # Calculate maxstackusage
    bynames = {}
    for funcaddr, info in funcs.items():
        bynames[info[0]] = info
        if info[2] is not None:
            continue
        calcmaxstack(funcs, funcaddr)

    # Sort functions for output
    funcnames = bynames.keys()
    funcnames = orderfuncs(funcnames, bynames.copy(), funcs)

    # Show all functions
    print OUTPUTDESC
    for funcname in funcnames:
        name, basicusage, maxusage, yieldusage, maxyieldusage, count, calls = \
            bynames[funcname]
        if maxusage == 0 and maxyieldusage is None:
            continue
        yieldstr = ""
        if maxyieldusage is not None:
            yieldstr = ",%d" % maxyieldusage
        print "\n%s[%d,%d%s]:" % (funcname, basicusage, maxusage, yieldstr)
        for insnaddr, calladdr, stackusage in calls:
            callinfo = funcs[calladdr]
            yieldstr = ""
            if callinfo[4] is not None:
                yieldstr = ",%d" % (stackusage + callinfo[4])
            print "    %04s:%-40s [%d+%d,%d%s]" % (
                insnaddr, callinfo[0], stackusage, callinfo[1]
                , stackusage+callinfo[2], yieldstr)

def main():
    calc()

if __name__ == '__main__':
    main()
