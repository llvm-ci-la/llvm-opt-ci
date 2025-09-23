	.file	"stepanov_vector.cpp"
	.text
	.globl	_Z13record_resultdPKc           # -- Begin function _Z13record_resultdPKc
	.p2align	5
	.type	_Z13record_resultdPKc,@function
_Z13record_resultdPKc:                  # @_Z13record_resultdPKc
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(results)
	ld.d	$a2, $s2, %pc_lo12(results)
	pcalau12i	$s1, %pc_hi20(allocated_results)
	ld.w	$a1, $s1, %pc_lo12(allocated_results)
	move	$fp, $a0
	fmov.d	$fs0, $fa0
	pcalau12i	$s0, %pc_hi20(current_test)
	beqz	$a2, .LBB0_2
# %bb.1:
	ld.w	$a0, $s0, %pc_lo12(current_test)
	blt	$a0, $a1, .LBB0_4
.LBB0_2:
	addi.w	$a0, $a1, 10
	st.w	$a0, $s1, %pc_lo12(allocated_results)
	slli.d	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(results)
	beqz	$a0, .LBB0_5
# %bb.3:                                # %._crit_edge
	move	$a2, $a0
	ld.w	$a0, $s0, %pc_lo12(current_test)
.LBB0_4:
	alsl.d	$a1, $a0, $a2, 4
	slli.d	$a3, $a0, 4
	fstx.d	$fs0, $a2, $a3
	st.d	$fp, $a1, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, %pc_lo12(current_test)
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_5:
	ld.w	$a1, $s1, %pc_lo12(allocated_results)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z13record_resultdPKc, .Lfunc_end0-_Z13record_resultdPKc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z9summarizePKciiii
.LCPI1_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	_Z9summarizePKciiii
	.p2align	5
	.type	_Z9summarizePKciiii,@function
_Z9summarizePKciiii:                    # @_Z9summarizePKciiii
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(current_test)
	ld.w	$fp, $s6, %pc_lo12(current_test)
	move	$s0, $a4
	move	$s2, $a2
	move	$s3, $a1
	move	$s5, $a0
	pcalau12i	$s7, %pc_hi20(results)
	blez	$fp, .LBB1_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s7, %pc_lo12(results)
	addi.d	$s4, $a0, 8
	ori	$s1, $zero, 12
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	addi.d	$fp, $fp, -1
	addi.d	$s4, $s4, 16
	bnez	$fp, .LBB1_2
	b	.LBB1_4
.LBB1_3:
	ori	$s1, $zero, 12
.LBB1_4:                                # %._crit_edge
	addi.w	$a1, $s1, -12
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$s4, $a2, %pc_lo12(.L.str.2)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(current_test)
	movgr2fr.d	$fs0, $zero
	blez	$a0, .LBB1_10
# %bb.5:                                # %.lr.ph45.preheader
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $s3
	movgr2fr.w	$fa1, $s2
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_0)
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fs1, $fa0, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s3, $a0, %pc_lo12(.L.str.5)
	move	$s8, $zero
	move	$s4, $zero
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph45
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s7, %pc_lo12(results)
	add.d	$a0, $s0, $s8
	ld.d	$s5, $a0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	fldx.d	$fa0, $s0, $s8
	fld.d	$fa1, $s0, 0
	sub.w	$a2, $s1, $a0
	fdiv.d	$fa2, $fs1, $fa0
	fdiv.d	$fa1, $fa0, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	movfr2gr.d	$a7, $fa1
	move	$a0, $s2
	move	$a1, $s4
	move	$a3, $s3
	move	$a4, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(current_test)
	addi.d	$fp, $fp, 1
	addi.w	$s4, $s4, 1
	addi.d	$s8, $s8, 16
	blt	$fp, $a0, .LBB1_6
# %bb.7:                                # %.preheader39
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	blez	$a0, .LBB1_10
# %bb.8:                                # %.lr.ph49
	ld.d	$a1, $s7, %pc_lo12(results)
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB1_9
.LBB1_10:                               # %._crit_edge50
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_15
# %bb.11:                               # %._crit_edge50
	ld.w	$a0, $s6, %pc_lo12(current_test)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB1_15
# %bb.12:                               # %.lr.ph54
	ld.d	$a0, $s7, %pc_lo12(results)
	fld.d	$fs1, $a0, 0
	addi.d	$fp, $a0, 16
	movgr2fr.d	$fs0, $zero
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $fp, 0
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(current_test)
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 16
	blt	$s0, $a0, .LBB1_13
# %bb.14:                               # %._crit_edge55
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_15:
	st.w	$zero, $s6, %pc_lo12(current_test)
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end1:
	.size	_Z9summarizePKciiii, .Lfunc_end1-_Z9summarizePKciiii
                                        # -- End function
	.globl	_Z17summarize_simplefP8_IO_FILEPKc # -- Begin function _Z17summarize_simplefP8_IO_FILEPKc
	.p2align	5
	.type	_Z17summarize_simplefP8_IO_FILEPKc,@function
_Z17summarize_simplefP8_IO_FILEPKc:     # @_Z17summarize_simplefP8_IO_FILEPKc
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(current_test)
	ld.w	$fp, $s5, %pc_lo12(current_test)
	move	$s0, $a1
	move	$s7, $a0
	pcalau12i	$s3, %pc_hi20(results)
	blez	$fp, .LBB2_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s3, %pc_lo12(results)
	addi.d	$s2, $a0, 8
	ori	$s1, $zero, 12
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 16
	bnez	$fp, .LBB2_2
	b	.LBB2_4
.LBB2_3:
	ori	$s1, $zero, 12
.LBB2_4:                                # %._crit_edge
	addi.w	$a2, $s1, -12
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s7
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s7
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(current_test)
	movgr2fr.d	$fs0, $zero
	blez	$a0, .LBB2_10
# %bb.5:                                # %.lr.ph32.preheader
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s2, $a0, %pc_lo12(.L.str.5)
	move	$s8, $zero
	move	$s4, $zero
	move	$fp, $zero
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $s3, %pc_lo12(results)
	add.d	$a0, $s6, $s8
	move	$s0, $s5
	ld.d	$s5, $a0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ldx.d	$a6, $s6, $s8
	sub.w	$a3, $s1, $a0
	move	$a0, $s7
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s4
	move	$a4, $s2
	move	$a5, $s5
	move	$s5, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(current_test)
	addi.d	$fp, $fp, 1
	addi.w	$s4, $s4, 1
	addi.d	$s8, $s8, 16
	blt	$fp, $a0, .LBB2_6
# %bb.7:                                # %.preheader
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	blez	$a0, .LBB2_10
# %bb.8:                                # %.lr.ph36
	ld.d	$a1, $s3, %pc_lo12(results)
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB2_9
.LBB2_10:                               # %._crit_edge37
	movfr2gr.d	$a3, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s7
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.w	$zero, $s5, %pc_lo12(current_test)
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end2:
	.size	_Z17summarize_simplefP8_IO_FILEPKc, .Lfunc_end2-_Z17summarize_simplefP8_IO_FILEPKc
                                        # -- End function
	.globl	_Z11start_timerv                # -- Begin function _Z11start_timerv
	.p2align	5
	.type	_Z11start_timerv,@function
_Z11start_timerv:                       # @_Z11start_timerv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(start_time)
	st.d	$a0, $a1, %pc_lo12(start_time)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_Z11start_timerv, .Lfunc_end3-_Z11start_timerv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z5timerv
.LCPI4_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	_Z5timerv
	.p2align	5
	.type	_Z5timerv,@function
_Z5timerv:                              # @_Z5timerv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(start_time)
	ld.d	$a1, $a1, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(end_time)
	pcalau12i	$a3, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI4_0)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	st.d	$a0, $a2, %pc_lo12(end_time)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_Z5timerv, .Lfunc_end4-_Z5timerv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI5_0:
	.dword	0x409f400000000000              # double 2000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -416
	.cfi_def_cfa_offset 416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 320                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 312                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	move	$s0, $a0
	ori	$s2, $zero, 2
	pcalau12i	$a0, %pc_hi20(iterations)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(init_value)
	blt	$s0, $s2, .LBB5_3
# %bb.1:
	move	$fp, $a1
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(iterations)
	beq	$s0, $s2, .LBB5_3
# %bb.2:
	ld.d	$a0, $fp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s1, %pc_lo12(init_value)
.LBB5_3:                                # %.thread
	fld.d	$fa0, $s1, %pc_lo12(init_value)
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a0, $a0, 123
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	pcalau12i	$s6, %pc_hi20(dpb)
	ld.d	$a4, $s6, %pc_lo12(dpb)
	pcalau12i	$a0, %pc_hi20(dpe)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(dpe)
	beq	$a4, $a0, .LBB5_10
# %bb.4:                                # %.lr.ph.i.preheader
	fld.d	$fa0, $s1, %pc_lo12(init_value)
	sub.d	$a1, $a0, $a4
	addi.d	$a1, $a1, -8
	ori	$a2, $zero, 24
	bgeu	$a1, $a2, .LBB5_6
# %bb.5:
	move	$a1, $a4
	b	.LBB5_9
.LBB5_6:                                # %vector.ph
	srli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 61, 2
	slli.d	$a3, $a1, 2
	slli.d	$a1, $a1, 5
	add.d	$a1, $a4, $a1
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a4, $a4, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB5_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_7
# %bb.8:                                # %middle.block
	beq	$a2, $a3, .LBB5_10
	.p2align	4, , 16
.LBB5_9:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a1, $a2
	bne	$a2, $a0, .LBB5_9
.LBB5_10:                               # %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit
	st.d	$zero, $sp, 272
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	vst	$vr0, $sp, 256
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 256
	ori	$a1, $zero, 2000
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.11:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$s3, $sp, 256
	ld.d	$s4, $sp, 264
	beq	$s3, $s4, .LBB5_17
# %bb.12:                               # %.lr.ph.i65.preheader
	fld.d	$fa0, $s1, %pc_lo12(init_value)
	sub.d	$a0, $s4, $s3
	addi.d	$a1, $a0, -8
	ori	$a2, $zero, 24
	move	$a0, $s3
	bltu	$a1, $a2, .LBB5_16
# %bb.13:                               # %vector.ph1046
	srli.d	$a0, $a1, 3
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 61, 2
	slli.d	$a2, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s3, $a0
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $s3, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB5_14:                               # %vector.body1051
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_14
# %bb.15:                               # %middle.block1056
	beq	$a1, $a2, .LBB5_17
	.p2align	4, , 16
.LBB5_16:                               # %.lr.ph.i65
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	bne	$a1, $s4, .LBB5_16
.LBB5_17:                               # %_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	pcalau12i	$a1, %pc_hi20(current_test)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(rdpb)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(rdpe)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blez	$a0, .LBB5_81
# %bb.18:                               # %.lr.ph.i67
	ld.d	$s0, $s6, %pc_lo12(dpb)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(dpe)
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB5_20
	.p2align	4, , 16
.LBB5_19:                               # %_Z9check_sumd.exit.i
                                        #   in Loop: Header=BB5_20 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_25
.LBB5_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s0, $s2, .LBB5_23
# %bb.21:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB5_20 Depth=1
	fmov.d	$fa0, $fs1
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_22:                               # %.lr.ph.i.i
                                        #   Parent Loop BB5_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_22
.LBB5_23:                               # %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.i
                                        #   in Loop: Header=BB5_20 Depth=1
	fld.d	$fa1, $s1, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_19
# %bb.24:                               #   in Loop: Header=BB5_20 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_19
.LBB5_25:                               # %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit
	blez	$a0, .LBB5_81
# %bb.26:                               # %.lr.ph.i69
	ld.d	$s0, $sp, 256
	ld.d	$s2, $sp, 264
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_27:                               # %_Z9check_sumd.exit.i74
                                        #   in Loop: Header=BB5_28 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_33
.LBB5_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_30 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s0, $s2, .LBB5_31
# %bb.29:                               # %.lr.ph.i.i71.preheader
                                        #   in Loop: Header=BB5_28 Depth=1
	fmov.d	$fa0, $fs1
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_30:                               # %.lr.ph.i.i71
                                        #   Parent Loop BB5_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_30
.LBB5_31:                               # %_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_.exit.i
                                        #   in Loop: Header=BB5_28 Depth=1
	fld.d	$fa1, $s1, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_27
# %bb.32:                               #   in Loop: Header=BB5_28 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_27
.LBB5_33:                               # %_Z15test_accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_T0_PKc.exit
	blez	$a0, .LBB5_81
# %bb.34:                               # %.lr.ph.i76.preheader
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $a1, %pc_lo12(rdpb)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(rdpe)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB5_36
	.p2align	4, , 16
.LBB5_35:                               # %_Z9check_sumd.exit.i81
                                        #   in Loop: Header=BB5_36 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_41
.LBB5_36:                               # %.lr.ph.i76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_38 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s0, $s2, .LBB5_39
# %bb.37:                               # %.lr.ph.i.i78.preheader
                                        #   in Loop: Header=BB5_36 Depth=1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_38:                               # %.lr.ph.i.i78
                                        #   Parent Loop BB5_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_38
.LBB5_39:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIPdEdEET0_T_S5_S4_.exit.i
                                        #   in Loop: Header=BB5_36 Depth=1
	fld.d	$fa1, $s1, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_35
# %bb.40:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_35
.LBB5_41:                               # %_Z15test_accumulateISt16reverse_iteratorIPdEdEvT_S3_T0_PKc.exit
	blez	$a0, .LBB5_81
# %bb.42:                               # %.lr.ph.i83.preheader
	ld.d	$s0, $sp, 264
	ld.d	$s2, $sp, 256
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB5_44
	.p2align	4, , 16
.LBB5_43:                               # %_Z9check_sumd.exit.i87
                                        #   in Loop: Header=BB5_44 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_49
.LBB5_44:                               # %.lr.ph.i83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_46 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s0, $s2, .LBB5_47
# %bb.45:                               # %.lr.ph.i.i84.preheader
                                        #   in Loop: Header=BB5_44 Depth=1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_46:                               # %.lr.ph.i.i84
                                        #   Parent Loop BB5_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_46
.LBB5_47:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_.exit.i
                                        #   in Loop: Header=BB5_44 Depth=1
	fld.d	$fa1, $s1, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_43
# %bb.48:                               #   in Loop: Header=BB5_44 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_43
.LBB5_49:                               # %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit
	blez	$a0, .LBB5_81
# %bb.50:                               # %.lr.ph.i89.preheader
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	move	$s0, $zero
	b	.LBB5_52
	.p2align	4, , 16
.LBB5_51:                               # %_Z9check_sumd.exit.i99
                                        #   in Loop: Header=BB5_52 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_57
.LBB5_52:                               # %.lr.ph.i89
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_54 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s3, $s4, .LBB5_55
# %bb.53:                               # %.lr.ph.i.i93.preheader
                                        #   in Loop: Header=BB5_52 Depth=1
	move	$a1, $s4
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_54:                               # %.lr.ph.i.i93
                                        #   Parent Loop BB5_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_54
.LBB5_55:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_.exit.i97
                                        #   in Loop: Header=BB5_52 Depth=1
	fld.d	$fa1, $s1, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_51
# %bb.56:                               #   in Loop: Header=BB5_52 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_51
.LBB5_57:                               # %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit101
	blez	$a0, .LBB5_81
# %bb.58:                               # %.lr.ph.i102.preheader
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s0, $a1, %pc_lo12(rrdpb+8)
	pcalau12i	$a1, %pc_hi20(rrdpe+8)
	ld.d	$s2, $a1, %pc_lo12(rrdpe+8)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB5_60
	.p2align	4, , 16
.LBB5_59:                               # %_Z9check_sumd.exit.i109
                                        #   in Loop: Header=BB5_60 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_65
.LBB5_60:                               # %.lr.ph.i102
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_62 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s0, $s2, .LBB5_63
# %bb.61:                               # %.lr.ph.i.i105.preheader
                                        #   in Loop: Header=BB5_60 Depth=1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_62:                               # %.lr.ph.i.i105
                                        #   Parent Loop BB5_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_62
.LBB5_63:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i
                                        #   in Loop: Header=BB5_60 Depth=1
	fld.d	$fa1, $s1, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_59
# %bb.64:                               #   in Loop: Header=BB5_60 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_59
.LBB5_65:                               # %_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc.exit
	blez	$a0, .LBB5_81
# %bb.66:                               # %.lr.ph.i111.preheader
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	move	$s0, $zero
	b	.LBB5_68
	.p2align	4, , 16
.LBB5_67:                               # %_Z9check_sumd.exit.i119
                                        #   in Loop: Header=BB5_68 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_73
.LBB5_68:                               # %.lr.ph.i111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_70 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s3, $s4, .LBB5_71
# %bb.69:                               # %.lr.ph.i.i115.preheader
                                        #   in Loop: Header=BB5_68 Depth=1
	move	$a1, $s3
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_70:                               # %.lr.ph.i.i115
                                        #   Parent Loop BB5_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_70
.LBB5_71:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i
                                        #   in Loop: Header=BB5_68 Depth=1
	fld.d	$fa1, $s1, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_67
# %bb.72:                               #   in Loop: Header=BB5_68 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_67
.LBB5_73:                               # %_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit
	blez	$a0, .LBB5_81
# %bb.74:                               # %.lr.ph.i121.preheader
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	move	$s0, $zero
	b	.LBB5_76
	.p2align	4, , 16
.LBB5_75:                               # %_Z9check_sumd.exit.i132
                                        #   in Loop: Header=BB5_76 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_81
.LBB5_76:                               # %.lr.ph.i121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_78 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s3, $s4, .LBB5_79
# %bb.77:                               # %.lr.ph.i.i125.preheader
                                        #   in Loop: Header=BB5_76 Depth=1
	move	$a1, $s3
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_78:                               # %.lr.ph.i.i125
                                        #   Parent Loop BB5_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_78
.LBB5_79:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i130
                                        #   in Loop: Header=BB5_76 Depth=1
	fld.d	$fa1, $s1, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_75
# %bb.80:                               #   in Loop: Header=BB5_76 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_75
.LBB5_81:                               # %_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit134
	lu12i.w	$a1, 67108
	ori	$a1, $a1, 3539
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 38
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(iterations)
	st.d	$zero, $sp, 248
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $sp, 232
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 232
	ori	$a1, $zero, 2000
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.82:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit138
	pcalau12i	$a0, %pc_hi20(dMpb)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s1, $a0, %pc_lo12(dMpb)
	pcalau12i	$a0, %pc_hi20(dMpe)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$fp, $a0, %pc_lo12(dMpe)
	beq	$s1, $fp, .LBB5_92
	.p2align	4, , 16
.LBB5_83:                               # %.lr.ph.i139
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.d	$a0, $s1, 8
	fst.d	$fa0, $s1, 0
	move	$s1, $a0
	bne	$a0, $fp, .LBB5_83
# %bb.84:                               # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(dMpb)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(dMpe)
	ld.d	$a7, $sp, 232
	st.d	$a7, $sp, 168                   # 8-byte Folded Spill
	beq	$s1, $s8, .LBB5_93
# %bb.85:                               # %.lr.ph.i144.preheader
	sub.d	$a0, $s8, $s1
	addi.d	$a2, $a0, -8
	ori	$a3, $zero, 24
	move	$a0, $s1
	move	$a1, $a7
	bltu	$a2, $a3, .LBB5_90
# %bb.86:                               # %.lr.ph.i144.preheader
	sub.d	$a3, $a7, $s1
	ori	$a4, $zero, 32
	move	$a0, $s1
	move	$a1, $a7
	bltu	$a3, $a4, .LBB5_90
# %bb.87:                               # %vector.ph1063
	move	$a3, $zero
	srli.d	$a0, $a2, 3
	addi.d	$a2, $a0, 1
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$a4, $a0, 2
	slli.d	$a1, $a0, 5
	add.d	$a0, $s1, $a1
	add.d	$a1, $a7, $a1
	move	$a5, $a4
	.p2align	4, , 16
.LBB5_88:                               # %vector.body1066
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $s1, $a3
	vldx	$vr0, $s1, $a3
	vld	$vr1, $a6, 16
	add.d	$a6, $a7, $a3
	vstx	$vr0, $a7, $a3
	vst	$vr1, $a6, 16
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB5_88
# %bb.89:                               # %middle.block1074
	beq	$a2, $a4, .LBB5_91
	.p2align	4, , 16
.LBB5_90:                               # %.lr.ph.i144
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s8, .LBB5_90
.LBB5_91:
	move	$s5, $zero
	b	.LBB5_94
.LBB5_92:                               # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.thread
	ld.d	$a0, $sp, 232
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	move	$s8, $s1
	b	.LBB5_94
.LBB5_93:
	ori	$s5, $zero, 1
.LBB5_94:                               # %_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	ld.d	$a1, $sp, 240
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(rdMpb)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(rdMpe)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	blez	$a0, .LBB5_253
# %bb.95:                               # %.lr.ph.i146
	ld.d	$s7, $s6, %pc_lo12(dpb)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(dpe)
	addi.d	$s6, $s7, 8
	sub.d	$a1, $s7, $s1
	sub.d	$a2, $s8, $s1
	addi.d	$a2, $a2, -8
	srli.d	$a3, $a2, 3
	addi.d	$a3, $a3, 1
	sltui	$a2, $a2, 24
	sltui	$a1, $a1, 32
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 61, 2
	slli.d	$a2, $a1, 2
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 5
	add.d	$a2, $s7, $a1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a1, $s1, 16
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a1, $s7, 16
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	move	$fp, $zero
	addi.w	$s0, $zero, -8
	b	.LBB5_98
	.p2align	4, , 16
.LBB5_96:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.i
                                        #   in Loop: Header=BB5_98 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
.LBB5_97:                               # %_Z13verify_sortedIPdEvT_S1_.exit.i
                                        #   in Loop: Header=BB5_98 Depth=1
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB5_115
.LBB5_98:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_101 Depth 2
                                        #     Child Loop BB5_103 Depth 2
                                        #     Child Loop BB5_108 Depth 2
                                        #       Child Loop BB5_109 Depth 3
                                        #     Child Loop BB5_113 Depth 2
	bnez	$s5, .LBB5_104
# %bb.99:                               # %.lr.ph.i.i148.preheader
                                        #   in Loop: Header=BB5_98 Depth=1
	move	$a1, $s7
	move	$a2, $s1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	bnez	$a3, .LBB5_103
# %bb.100:                              # %vector.body1085.preheader
                                        #   in Loop: Header=BB5_98 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_101:                              # %vector.body1085
                                        #   Parent Loop BB5_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a3, $a3, 32
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB5_101
# %bb.102:                              # %middle.block1094
                                        #   in Loop: Header=BB5_98 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	beq	$a3, $a4, .LBB5_104
	.p2align	4, , 16
.LBB5_103:                              # %.lr.ph.i.i148
                                        #   Parent Loop BB5_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	addi.d	$a3, $a2, 8
	addi.d	$a2, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a1, $a2
	move	$a2, $a3
	bne	$a3, $s8, .LBB5_103
.LBB5_104:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.i
                                        #   in Loop: Header=BB5_98 Depth=1
	beq	$s6, $s2, .LBB5_112
# %bb.105:                              # %.lr.ph.i8.i.preheader
                                        #   in Loop: Header=BB5_98 Depth=1
	move	$a1, $zero
	move	$a2, $s6
	b	.LBB5_108
	.p2align	4, , 16
.LBB5_106:                              # %..critedge.i.i_crit_edge
                                        #   in Loop: Header=BB5_108 Depth=2
	addi.d	$a3, $a4, 8
.LBB5_107:                              # %.critedge.i.i
                                        #   in Loop: Header=BB5_108 Depth=2
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	beq	$a2, $s2, .LBB5_112
.LBB5_108:                              # %.lr.ph.i8.i
                                        #   Parent Loop BB5_98 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_109 Depth 3
	fld.d	$fa0, $a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB5_109:                              #   Parent Loop BB5_98 Depth=1
                                        #     Parent Loop BB5_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s7, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a4, $s7, $a3
	bcnez	$fcc0, .LBB5_106
# %bb.110:                              #   in Loop: Header=BB5_109 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a4, 8
	bne	$a3, $s0, .LBB5_109
# %bb.111:                              #   in Loop: Header=BB5_108 Depth=2
	move	$a3, $s7
	b	.LBB5_107
	.p2align	4, , 16
.LBB5_112:                              # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.i.preheader
                                        #   in Loop: Header=BB5_98 Depth=1
	move	$a1, $s6
	.p2align	4, , 16
.LBB5_113:                              # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.i
                                        #   Parent Loop BB5_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s2, .LBB5_97
# %bb.114:                              #   in Loop: Header=BB5_113 Depth=2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB5_113
	b	.LBB5_96
.LBB5_115:                              # %_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc.exit
	blez	$a0, .LBB5_253
# %bb.116:                              # %.lr.ph.i152
	ld.d	$s1, $sp, 256
	ld.d	$s2, $sp, 232
	ld.d	$s5, $sp, 240
	ld.d	$s6, $sp, 264
	addi.d	$s7, $s1, 8
	sub.d	$a1, $s1, $s2
	sub.d	$a2, $s5, $s2
	addi.d	$a2, $a2, -8
	srli.d	$a3, $a2, 3
	addi.d	$a3, $a3, 1
	sltui	$a2, $a2, 24
	sltui	$a1, $a1, 32
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 61, 2
	slli.d	$fp, $a1, 2
	slli.d	$a1, $a1, 5
	add.d	$a2, $s2, $a1
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $s1, 16
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a1, $s2, 16
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	move	$s8, $zero
	b	.LBB5_119
	.p2align	4, , 16
.LBB5_117:                              # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.i
                                        #   in Loop: Header=BB5_119 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
.LBB5_118:                              # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.i
                                        #   in Loop: Header=BB5_119 Depth=1
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_136
.LBB5_119:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_122 Depth 2
                                        #     Child Loop BB5_124 Depth 2
                                        #     Child Loop BB5_129 Depth 2
                                        #       Child Loop BB5_130 Depth 3
                                        #     Child Loop BB5_134 Depth 2
	beq	$s2, $s5, .LBB5_125
# %bb.120:                              # %.lr.ph.i.i154.preheader
                                        #   in Loop: Header=BB5_119 Depth=1
	move	$a1, $s2
	move	$a2, $s1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	bnez	$a3, .LBB5_124
# %bb.121:                              # %vector.body1105.preheader
                                        #   in Loop: Header=BB5_119 Depth=1
	move	$a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_122:                              # %vector.body1105
                                        #   Parent Loop BB5_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB5_122
# %bb.123:                              # %middle.block1114
                                        #   in Loop: Header=BB5_119 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	beq	$a3, $fp, .LBB5_125
	.p2align	4, , 16
.LBB5_124:                              # %.lr.ph.i.i154
                                        #   Parent Loop BB5_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a3, $a1, 8
	addi.d	$a4, $a2, 8
	fst.d	$fa0, $a2, 0
	move	$a1, $a3
	move	$a2, $a4
	bne	$a3, $s5, .LBB5_124
.LBB5_125:                              # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.i
                                        #   in Loop: Header=BB5_119 Depth=1
	beq	$s7, $s6, .LBB5_133
# %bb.126:                              # %.lr.ph.i12.i.preheader
                                        #   in Loop: Header=BB5_119 Depth=1
	move	$a1, $zero
	move	$a2, $s7
	b	.LBB5_129
	.p2align	4, , 16
.LBB5_127:                              # %..critedge.i.i156_crit_edge
                                        #   in Loop: Header=BB5_129 Depth=2
	addi.d	$a3, $a4, 8
.LBB5_128:                              # %.critedge.i.i156
                                        #   in Loop: Header=BB5_129 Depth=2
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	beq	$a2, $s6, .LBB5_133
.LBB5_129:                              # %.lr.ph.i12.i
                                        #   Parent Loop BB5_119 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_130 Depth 3
	fld.d	$fa0, $a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB5_130:                              #   Parent Loop BB5_119 Depth=1
                                        #     Parent Loop BB5_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s1, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a4, $s1, $a3
	bcnez	$fcc0, .LBB5_127
# %bb.131:                              #   in Loop: Header=BB5_130 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a4, 8
	bne	$a3, $s0, .LBB5_130
# %bb.132:                              #   in Loop: Header=BB5_129 Depth=2
	move	$a3, $s1
	b	.LBB5_128
	.p2align	4, , 16
.LBB5_133:                              # %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.i.preheader
                                        #   in Loop: Header=BB5_119 Depth=1
	move	$a1, $s7
	.p2align	4, , 16
.LBB5_134:                              # %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.i
                                        #   Parent Loop BB5_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s6, .LBB5_118
# %bb.135:                              #   in Loop: Header=BB5_134 Depth=2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB5_134
	b	.LBB5_117
.LBB5_136:                              # %_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc.exit
	blez	$a0, .LBB5_253
# %bb.137:                              # %.lr.ph.i159.preheader
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(rdMpb)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(rdMpe)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(rdpb)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(rdpe)
	addi.d	$s7, $s5, -8
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$fp, $a1, %pc_lo12(.L.str.52)
	move	$s8, $zero
	b	.LBB5_140
	.p2align	4, , 16
.LBB5_138:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i
                                        #   in Loop: Header=BB5_140 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
.LBB5_139:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i
                                        #   in Loop: Header=BB5_140 Depth=1
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_154
.LBB5_140:                              # %.lr.ph.i159
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_142 Depth 2
                                        #     Child Loop BB5_147 Depth 2
                                        #       Child Loop BB5_148 Depth 3
                                        #     Child Loop BB5_152 Depth 2
	beq	$s1, $s2, .LBB5_143
# %bb.141:                              # %.lr.ph.i.i161.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	move	$a1, $s7
	move	$a2, $s1
	.p2align	4, , 16
.LBB5_142:                              # %.lr.ph.i.i161
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, -8
	addi.d	$a3, $a2, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a2, $a3
	bne	$a3, $s2, .LBB5_142
.LBB5_143:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i
                                        #   in Loop: Header=BB5_140 Depth=1
	beq	$s7, $s6, .LBB5_151
# %bb.144:                              # %.lr.ph.i2.i.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	move	$a1, $s0
	move	$a2, $s7
	b	.LBB5_147
	.p2align	4, , 16
.LBB5_145:                              # %..critedge.i.i164_crit_edge
                                        #   in Loop: Header=BB5_147 Depth=2
	add.d	$a3, $s5, $a3
.LBB5_146:                              # %.critedge.i.i164
                                        #   in Loop: Header=BB5_147 Depth=2
	fst.d	$fa0, $a3, -8
	addi.d	$a1, $a1, -8
	beq	$a2, $s6, .LBB5_151
.LBB5_147:                              # %.lr.ph.i2.i
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_148 Depth 3
	fld.d	$fa0, $a2, -8
	addi.d	$a2, $a2, -8
	move	$a3, $a1
	.p2align	4, , 16
.LBB5_148:                              #   Parent Loop BB5_140 Depth=1
                                        #     Parent Loop BB5_147 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s5, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_145
# %bb.149:                              #   in Loop: Header=BB5_148 Depth=3
	add.d	$a4, $s5, $a3
	addi.d	$a3, $a3, 8
	fst.d	$fa1, $a4, -8
	bnez	$a3, .LBB5_148
# %bb.150:                              #   in Loop: Header=BB5_147 Depth=2
	move	$a3, $s5
	b	.LBB5_146
	.p2align	4, , 16
.LBB5_151:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	move	$a1, $s7
	.p2align	4, , 16
.LBB5_152:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s6, .LBB5_139
# %bb.153:                              #   in Loop: Header=BB5_152 Depth=2
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a1, 0
	addi.d	$a1, $a1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_152
	b	.LBB5_138
.LBB5_154:                              # %_Z19test_insertion_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc.exit
	blez	$a0, .LBB5_253
# %bb.155:                              # %.lr.ph.i168.preheader
	ld.d	$s0, $sp, 240
	ld.d	$s1, $sp, 232
	ld.d	$s2, $sp, 264
	ld.d	$s5, $sp, 256
	addi.d	$s6, $s2, -8
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$fp, $a1, %pc_lo12(.L.str.52)
	move	$s7, $zero
	addi.w	$s8, $zero, -8
	b	.LBB5_158
	.p2align	4, , 16
.LBB5_156:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i
                                        #   in Loop: Header=BB5_158 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
.LBB5_157:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i
                                        #   in Loop: Header=BB5_158 Depth=1
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB5_172
.LBB5_158:                              # %.lr.ph.i168
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_160 Depth 2
                                        #     Child Loop BB5_165 Depth 2
                                        #       Child Loop BB5_166 Depth 3
                                        #     Child Loop BB5_170 Depth 2
	beq	$s0, $s1, .LBB5_161
# %bb.159:                              # %.lr.ph.i.i171.preheader
                                        #   in Loop: Header=BB5_158 Depth=1
	move	$a1, $s6
	move	$a2, $s0
	.p2align	4, , 16
.LBB5_160:                              # %.lr.ph.i.i171
                                        #   Parent Loop BB5_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, -8
	addi.d	$a3, $a2, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a2, $a3
	bne	$a3, $s1, .LBB5_160
.LBB5_161:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i
                                        #   in Loop: Header=BB5_158 Depth=1
	beq	$s6, $s5, .LBB5_169
# %bb.162:                              # %.lr.ph.preheader.i.i.preheader
                                        #   in Loop: Header=BB5_158 Depth=1
	move	$a1, $s8
	move	$a2, $s6
	b	.LBB5_165
	.p2align	4, , 16
.LBB5_163:                              # %.lr.ph.i3.i..critedge.i.i174_crit_edge
                                        #   in Loop: Header=BB5_165 Depth=2
	add.d	$a3, $s2, $a3
.LBB5_164:                              # %.critedge.i.i174
                                        #   in Loop: Header=BB5_165 Depth=2
	fst.d	$fa0, $a3, -8
	addi.d	$a1, $a1, -8
	beq	$a2, $s5, .LBB5_169
.LBB5_165:                              # %.lr.ph.preheader.i.i
                                        #   Parent Loop BB5_158 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_166 Depth 3
	fld.d	$fa0, $a2, -8
	addi.d	$a2, $a2, -8
	move	$a3, $a1
	.p2align	4, , 16
.LBB5_166:                              # %.lr.ph.i3.i
                                        #   Parent Loop BB5_158 Depth=1
                                        #     Parent Loop BB5_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s2, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_163
# %bb.167:                              #   in Loop: Header=BB5_166 Depth=3
	add.d	$a4, $s2, $a3
	addi.d	$a3, $a3, 8
	fst.d	$fa1, $a4, -8
	bnez	$a3, .LBB5_166
# %bb.168:                              #   in Loop: Header=BB5_165 Depth=2
	move	$a3, $s2
	b	.LBB5_164
	.p2align	4, , 16
.LBB5_169:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader
                                        #   in Loop: Header=BB5_158 Depth=1
	move	$a1, $s6
	.p2align	4, , 16
.LBB5_170:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i
                                        #   Parent Loop BB5_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s5, .LBB5_157
# %bb.171:                              #   in Loop: Header=BB5_170 Depth=2
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a1, 0
	addi.d	$a1, $a1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_170
	b	.LBB5_156
.LBB5_172:                              # %_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit
	blez	$a0, .LBB5_253
# %bb.173:                              # %.lr.ph.i178.preheader
	addi.d	$s0, $s4, -8
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$fp, $a1, %pc_lo12(.L.str.52)
	move	$s1, $zero
	addi.w	$s2, $zero, -8
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB5_176
	.p2align	4, , 16
.LBB5_174:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i199
                                        #   in Loop: Header=BB5_176 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
.LBB5_175:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i201
                                        #   in Loop: Header=BB5_176 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_190
.LBB5_176:                              # %.lr.ph.i178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_178 Depth 2
                                        #     Child Loop BB5_183 Depth 2
                                        #       Child Loop BB5_184 Depth 3
                                        #     Child Loop BB5_188 Depth 2
	beq	$s6, $s5, .LBB5_179
# %bb.177:                              # %.lr.ph.i.i182.preheader
                                        #   in Loop: Header=BB5_176 Depth=1
	move	$a1, $s0
	move	$a2, $s6
	.p2align	4, , 16
.LBB5_178:                              # %.lr.ph.i.i182
                                        #   Parent Loop BB5_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, -8
	addi.d	$a3, $a2, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a2, $a3
	bne	$a3, $s5, .LBB5_178
.LBB5_179:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i186
                                        #   in Loop: Header=BB5_176 Depth=1
	beq	$s0, $s3, .LBB5_187
# %bb.180:                              # %.lr.ph.preheader.i.i188.preheader
                                        #   in Loop: Header=BB5_176 Depth=1
	move	$a1, $s2
	move	$a2, $s0
	b	.LBB5_183
	.p2align	4, , 16
.LBB5_181:                              # %.lr.ph.i3.i190..critedge.i.i192_crit_edge
                                        #   in Loop: Header=BB5_183 Depth=2
	add.d	$a3, $s4, $a3
.LBB5_182:                              # %.critedge.i.i192
                                        #   in Loop: Header=BB5_183 Depth=2
	fst.d	$fa0, $a3, -8
	addi.d	$a1, $a1, -8
	beq	$a2, $s3, .LBB5_187
.LBB5_183:                              # %.lr.ph.preheader.i.i188
                                        #   Parent Loop BB5_176 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_184 Depth 3
	fld.d	$fa0, $a2, -8
	addi.d	$a2, $a2, -8
	move	$a3, $a1
	.p2align	4, , 16
.LBB5_184:                              # %.lr.ph.i3.i190
                                        #   Parent Loop BB5_176 Depth=1
                                        #     Parent Loop BB5_183 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s4, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_181
# %bb.185:                              #   in Loop: Header=BB5_184 Depth=3
	add.d	$a4, $s4, $a3
	addi.d	$a3, $a3, 8
	fst.d	$fa1, $a4, -8
	bnez	$a3, .LBB5_184
# %bb.186:                              #   in Loop: Header=BB5_183 Depth=2
	move	$a3, $s4
	b	.LBB5_182
	.p2align	4, , 16
.LBB5_187:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i195.preheader
                                        #   in Loop: Header=BB5_176 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_188:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i195
                                        #   Parent Loop BB5_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s3, .LBB5_175
# %bb.189:                              #   in Loop: Header=BB5_188 Depth=2
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a1, 0
	addi.d	$a1, $a1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_188
	b	.LBB5_174
.LBB5_190:                              # %_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit203
	blez	$a0, .LBB5_253
# %bb.191:                              # %.lr.ph.i204.preheader
	pcalau12i	$a1, %pc_hi20(rrdMpb+8)
	ld.d	$s1, $a1, %pc_lo12(rrdMpb+8)
	pcalau12i	$a1, %pc_hi20(rrdMpe+8)
	pcalau12i	$a2, %pc_hi20(rrdpb+8)
	ld.d	$s5, $a2, %pc_lo12(rrdpb+8)
	ld.d	$s8, $a1, %pc_lo12(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpe+8)
	ld.d	$s2, $a1, %pc_lo12(rrdpe+8)
	addi.d	$s6, $s5, 8
	sub.d	$a1, $s5, $s1
	sub.d	$a2, $s8, $s1
	addi.d	$a2, $a2, -8
	srli.d	$a3, $a2, 3
	addi.d	$a3, $a3, 1
	sltui	$a2, $a2, 24
	sltui	$a1, $a1, 32
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 61, 2
	slli.d	$fp, $a1, 2
	slli.d	$a1, $a1, 5
	add.d	$a2, $s5, $a1
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $s1, 16
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a1, $s5, 16
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	move	$s7, $zero
	addi.w	$s0, $zero, -8
	b	.LBB5_194
	.p2align	4, , 16
.LBB5_192:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i
                                        #   in Loop: Header=BB5_194 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
.LBB5_193:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i
                                        #   in Loop: Header=BB5_194 Depth=1
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB5_211
.LBB5_194:                              # %.lr.ph.i204
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_197 Depth 2
                                        #     Child Loop BB5_199 Depth 2
                                        #     Child Loop BB5_204 Depth 2
                                        #       Child Loop BB5_205 Depth 3
                                        #     Child Loop BB5_209 Depth 2
	beq	$s1, $s8, .LBB5_200
# %bb.195:                              # %.lr.ph.i.i206.preheader
                                        #   in Loop: Header=BB5_194 Depth=1
	move	$a1, $s5
	move	$a2, $s1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	bnez	$a3, .LBB5_199
# %bb.196:                              # %vector.body1125.preheader
                                        #   in Loop: Header=BB5_194 Depth=1
	move	$a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_197:                              # %vector.body1125
                                        #   Parent Loop BB5_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a3, $a3, 32
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB5_197
# %bb.198:                              # %middle.block1134
                                        #   in Loop: Header=BB5_194 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	beq	$a3, $fp, .LBB5_200
	.p2align	4, , 16
.LBB5_199:                              # %.lr.ph.i.i206
                                        #   Parent Loop BB5_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	addi.d	$a3, $a2, 8
	addi.d	$a2, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a1, $a2
	move	$a2, $a3
	bne	$a3, $s8, .LBB5_199
.LBB5_200:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i
                                        #   in Loop: Header=BB5_194 Depth=1
	beq	$s6, $s2, .LBB5_208
# %bb.201:                              # %.lr.ph.i2.i210.preheader
                                        #   in Loop: Header=BB5_194 Depth=1
	move	$a1, $zero
	move	$a2, $s6
	b	.LBB5_204
	.p2align	4, , 16
.LBB5_202:                              # %..critedge.i.i211_crit_edge
                                        #   in Loop: Header=BB5_204 Depth=2
	addi.d	$a3, $a4, 8
.LBB5_203:                              # %.critedge.i.i211
                                        #   in Loop: Header=BB5_204 Depth=2
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	beq	$a2, $s2, .LBB5_208
.LBB5_204:                              # %.lr.ph.i2.i210
                                        #   Parent Loop BB5_194 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_205 Depth 3
	fld.d	$fa0, $a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB5_205:                              #   Parent Loop BB5_194 Depth=1
                                        #     Parent Loop BB5_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s5, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a4, $s5, $a3
	bcnez	$fcc0, .LBB5_202
# %bb.206:                              #   in Loop: Header=BB5_205 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a4, 8
	bne	$a3, $s0, .LBB5_205
# %bb.207:                              #   in Loop: Header=BB5_204 Depth=2
	move	$a3, $s5
	b	.LBB5_203
	.p2align	4, , 16
.LBB5_208:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i.preheader
                                        #   in Loop: Header=BB5_194 Depth=1
	move	$a1, $s6
	.p2align	4, , 16
.LBB5_209:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i
                                        #   Parent Loop BB5_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s2, .LBB5_193
# %bb.210:                              #   in Loop: Header=BB5_209 Depth=2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB5_209
	b	.LBB5_192
.LBB5_211:                              # %_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc.exit
	blez	$a0, .LBB5_253
# %bb.212:                              # %.lr.ph.i216.preheader
	addi.d	$s1, $s3, 8
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a1, $s3, $a4
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a4
	addi.d	$a2, $a2, -8
	srli.d	$a3, $a2, 3
	addi.d	$a3, $a3, 1
	sltui	$a2, $a2, 24
	sltui	$a1, $a1, 32
	or	$s8, $a2, $a1
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 61, 2
	slli.d	$s6, $a1, 2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 5
	add.d	$a2, $s3, $a1
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	add.d	$a1, $a4, $a1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$s5, $a4, 16
	addi.d	$s7, $s3, 16
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$fp, $a1, %pc_lo12(.L.str.52)
	move	$s2, $zero
	b	.LBB5_215
	.p2align	4, , 16
.LBB5_213:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i
                                        #   in Loop: Header=BB5_215 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
.LBB5_214:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i
                                        #   in Loop: Header=BB5_215 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB5_232
.LBB5_215:                              # %.lr.ph.i216
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_218 Depth 2
                                        #     Child Loop BB5_220 Depth 2
                                        #     Child Loop BB5_225 Depth 2
                                        #       Child Loop BB5_226 Depth 3
                                        #     Child Loop BB5_230 Depth 2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	beq	$a4, $a1, .LBB5_221
# %bb.216:                              # %.lr.ph.i.i220.preheader
                                        #   in Loop: Header=BB5_215 Depth=1
	move	$a1, $s3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	bnez	$s8, .LBB5_220
# %bb.217:                              # %vector.body1145.preheader
                                        #   in Loop: Header=BB5_215 Depth=1
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	.p2align	4, , 16
.LBB5_218:                              # %vector.body1145
                                        #   Parent Loop BB5_215 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a3, $a3, 32
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB5_218
# %bb.219:                              # %middle.block1154
                                        #   in Loop: Header=BB5_215 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	beq	$a3, $s6, .LBB5_221
	.p2align	4, , 16
.LBB5_220:                              # %.lr.ph.i.i220
                                        #   Parent Loop BB5_215 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	addi.d	$a3, $a2, 8
	addi.d	$a2, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a1, $a2
	move	$a2, $a3
	bne	$a3, $a4, .LBB5_220
.LBB5_221:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i
                                        #   in Loop: Header=BB5_215 Depth=1
	beq	$s4, $s1, .LBB5_229
# %bb.222:                              # %.lr.ph28.i.i.preheader
                                        #   in Loop: Header=BB5_215 Depth=1
	move	$a1, $zero
	move	$a2, $s1
	b	.LBB5_225
	.p2align	4, , 16
.LBB5_223:                              # %.lr.ph.i2.i224..critedge.i.i226_crit_edge
                                        #   in Loop: Header=BB5_225 Depth=2
	addi.d	$a3, $a4, 8
.LBB5_224:                              # %.critedge.i.i226
                                        #   in Loop: Header=BB5_225 Depth=2
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	beq	$s4, $a2, .LBB5_229
.LBB5_225:                              # %.lr.ph28.i.i
                                        #   Parent Loop BB5_215 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_226 Depth 3
	fld.d	$fa0, $a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB5_226:                              # %.lr.ph.i2.i224
                                        #   Parent Loop BB5_215 Depth=1
                                        #     Parent Loop BB5_225 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s3, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a4, $s3, $a3
	bcnez	$fcc0, .LBB5_223
# %bb.227:                              #   in Loop: Header=BB5_226 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a4, 8
	bne	$a3, $s0, .LBB5_226
# %bb.228:                              #   in Loop: Header=BB5_225 Depth=2
	move	$a3, $s3
	b	.LBB5_224
	.p2align	4, , 16
.LBB5_229:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.preheader
                                        #   in Loop: Header=BB5_215 Depth=1
	move	$a1, $s1
	.p2align	4, , 16
.LBB5_230:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i
                                        #   Parent Loop BB5_215 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s4, .LBB5_214
# %bb.231:                              #   in Loop: Header=BB5_230 Depth=2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB5_230
	b	.LBB5_213
.LBB5_232:                              # %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit
	blez	$a0, .LBB5_253
# %bb.233:                              # %.lr.ph.i233.preheader
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$s2, $a1, 2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$a1, $s3, $a2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a2
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	addi.d	$s7, $a1, 16
	addi.d	$s6, $s3, 16
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$fp, $a1, %pc_lo12(.L.str.52)
	move	$s5, $zero
	b	.LBB5_236
	.p2align	4, , 16
.LBB5_234:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i257
                                        #   in Loop: Header=BB5_236 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
.LBB5_235:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i259
                                        #   in Loop: Header=BB5_236 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_253
.LBB5_236:                              # %.lr.ph.i233
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_239 Depth 2
                                        #     Child Loop BB5_241 Depth 2
                                        #     Child Loop BB5_246 Depth 2
                                        #       Child Loop BB5_247 Depth 3
                                        #     Child Loop BB5_251 Depth 2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	beq	$a4, $a1, .LBB5_242
# %bb.237:                              # %.lr.ph.i.i237.preheader
                                        #   in Loop: Header=BB5_236 Depth=1
	move	$a1, $s3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	bnez	$s8, .LBB5_241
# %bb.238:                              # %vector.body1165.preheader
                                        #   in Loop: Header=BB5_236 Depth=1
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s7
	.p2align	4, , 16
.LBB5_239:                              # %vector.body1165
                                        #   Parent Loop BB5_236 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a3, $a3, 32
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB5_239
# %bb.240:                              # %middle.block1174
                                        #   in Loop: Header=BB5_236 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	beq	$a3, $s2, .LBB5_242
	.p2align	4, , 16
.LBB5_241:                              # %.lr.ph.i.i237
                                        #   Parent Loop BB5_236 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	addi.d	$a3, $a2, 8
	addi.d	$a2, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a1, $a2
	move	$a2, $a3
	bne	$a3, $a4, .LBB5_241
.LBB5_242:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i241
                                        #   in Loop: Header=BB5_236 Depth=1
	beq	$s4, $s1, .LBB5_250
# %bb.243:                              # %.lr.ph28.i.i244.preheader
                                        #   in Loop: Header=BB5_236 Depth=1
	move	$a1, $zero
	move	$a2, $s1
	b	.LBB5_246
	.p2align	4, , 16
.LBB5_244:                              # %.lr.ph.i2.i247..critedge.i.i249_crit_edge
                                        #   in Loop: Header=BB5_246 Depth=2
	addi.d	$a3, $a4, 8
.LBB5_245:                              # %.critedge.i.i249
                                        #   in Loop: Header=BB5_246 Depth=2
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	beq	$s4, $a2, .LBB5_250
.LBB5_246:                              # %.lr.ph28.i.i244
                                        #   Parent Loop BB5_236 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_247 Depth 3
	fld.d	$fa0, $a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB5_247:                              # %.lr.ph.i2.i247
                                        #   Parent Loop BB5_236 Depth=1
                                        #     Parent Loop BB5_246 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s3, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a4, $s3, $a3
	bcnez	$fcc0, .LBB5_244
# %bb.248:                              #   in Loop: Header=BB5_247 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a4, 8
	bne	$a3, $s0, .LBB5_247
# %bb.249:                              #   in Loop: Header=BB5_246 Depth=2
	move	$a3, $s3
	b	.LBB5_245
	.p2align	4, , 16
.LBB5_250:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i253.preheader
                                        #   in Loop: Header=BB5_236 Depth=1
	move	$a1, $s1
	.p2align	4, , 16
.LBB5_251:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i253
                                        #   Parent Loop BB5_236 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s4, .LBB5_235
# %bb.252:                              #   in Loop: Header=BB5_251 Depth=2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB5_251
	b	.LBB5_234
.LBB5_253:                              # %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit261
	slli.w	$a1, $a0, 3
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(iterations)
	blez	$a0, .LBB5_267
# %bb.254:                              # %.lr.ph.i262
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(dMpb)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(dpb)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(dMpe)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(dpe)
	sub.d	$a0, $fp, $s2
	sub.d	$a1, $s5, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $fp, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$s6, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB5_257
	.p2align	4, , 16
.LBB5_255:                              # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.i272
                                        #   in Loop: Header=BB5_257 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_256:                              # %_Z13verify_sortedIPdEvT_S1_.exit.i273
                                        #   in Loop: Header=BB5_257 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a1, .LBB5_267
.LBB5_257:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_260 Depth 2
                                        #     Child Loop BB5_262 Depth 2
                                        #     Child Loop BB5_265 Depth 2
	beq	$s2, $s5, .LBB5_263
# %bb.258:                              # %.lr.ph.i.i264.preheader
                                        #   in Loop: Header=BB5_257 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	bnez	$s7, .LBB5_262
# %bb.259:                              # %vector.body1185.preheader
                                        #   in Loop: Header=BB5_257 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_260:                              # %vector.body1185
                                        #   Parent Loop BB5_257 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_260
# %bb.261:                              # %middle.block1194
                                        #   in Loop: Header=BB5_257 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB5_263
	.p2align	4, , 16
.LBB5_262:                              # %.lr.ph.i.i264
                                        #   Parent Loop BB5_257 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_262
.LBB5_263:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.i268
                                        #   in Loop: Header=BB5_257 Depth=1
.Ltmp6:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.264:                              # %.noexc274.preheader
                                        #   in Loop: Header=BB5_257 Depth=1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_265:                              # %.noexc274
                                        #   Parent Loop BB5_257 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s0, .LBB5_256
# %bb.266:                              #   in Loop: Header=BB5_265 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_265
	b	.LBB5_255
.LBB5_267:                              # %_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc.exit
	blez	$a1, .LBB5_459
# %bb.268:                              # %.lr.ph.i275
	ld.d	$s2, $sp, 232
	ld.d	$fp, $sp, 256
	ld.d	$s5, $sp, 240
	ld.d	$s0, $sp, 264
	sub.d	$a0, $fp, $s2
	sub.d	$a1, $s5, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$s6, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB5_271
	.p2align	4, , 16
.LBB5_269:                              # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.i285
                                        #   in Loop: Header=BB5_271 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_270:                              # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.i286
                                        #   in Loop: Header=BB5_271 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_281
.LBB5_271:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_274 Depth 2
                                        #     Child Loop BB5_276 Depth 2
                                        #     Child Loop BB5_279 Depth 2
	beq	$s2, $s5, .LBB5_277
# %bb.272:                              # %.lr.ph.i.i278.preheader
                                        #   in Loop: Header=BB5_271 Depth=1
	move	$a0, $s2
	move	$a1, $fp
	bnez	$s7, .LBB5_276
# %bb.273:                              # %vector.body1205.preheader
                                        #   in Loop: Header=BB5_271 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_274:                              # %vector.body1205
                                        #   Parent Loop BB5_271 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_274
# %bb.275:                              # %middle.block1214
                                        #   in Loop: Header=BB5_271 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB5_277
	.p2align	4, , 16
.LBB5_276:                              # %.lr.ph.i.i278
                                        #   Parent Loop BB5_271 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s5, .LBB5_276
.LBB5_277:                              # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.i282
                                        #   in Loop: Header=BB5_271 Depth=1
.Ltmp9:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.278:                              # %.noexc287.preheader
                                        #   in Loop: Header=BB5_271 Depth=1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_279:                              # %.noexc287
                                        #   Parent Loop BB5_271 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s0, .LBB5_270
# %bb.280:                              #   in Loop: Header=BB5_279 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_279
	b	.LBB5_269
.LBB5_281:                              # %_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc.exit
	blez	$a0, .LBB5_459
# %bb.282:                              # %.lr.ph.i288.preheader
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(rdMpb)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(rdpb)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(rdpe)
	addi.d	$s6, $s2, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s7, $zero
	b	.LBB5_285
	.p2align	4, , 16
.LBB5_283:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i296
                                        #   in Loop: Header=BB5_285 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_284:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i297
                                        #   in Loop: Header=BB5_285 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB5_292
.LBB5_285:                              # %.lr.ph.i288
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_287 Depth 2
                                        #     Child Loop BB5_290 Depth 2
	beq	$s0, $s1, .LBB5_288
# %bb.286:                              # %.lr.ph.i.i291.preheader
                                        #   in Loop: Header=BB5_285 Depth=1
	move	$a0, $s6
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_287:                              # %.lr.ph.i.i291
                                        #   Parent Loop BB5_285 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s1, .LBB5_287
.LBB5_288:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i293
                                        #   in Loop: Header=BB5_285 Depth=1
	st.d	$s2, $sp, 296
	st.d	$s5, $sp, 280
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.289:                              # %.noexc298.preheader
                                        #   in Loop: Header=BB5_285 Depth=1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_290:                              # %.noexc298
                                        #   Parent Loop BB5_285 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s5, .LBB5_284
# %bb.291:                              #   in Loop: Header=BB5_290 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_290
	b	.LBB5_283
.LBB5_292:                              # %.loopexit724
	blez	$a0, .LBB5_459
# %bb.293:                              # %.lr.ph.i299.preheader
	ld.d	$s0, $sp, 240
	ld.d	$s1, $sp, 232
	ld.d	$s2, $sp, 264
	ld.d	$s5, $sp, 256
	addi.d	$s6, $s2, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s7, $zero
	b	.LBB5_296
	.p2align	4, , 16
.LBB5_294:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i311
                                        #   in Loop: Header=BB5_296 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_295:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i312
                                        #   in Loop: Header=BB5_296 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB5_303
.LBB5_296:                              # %.lr.ph.i299
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_298 Depth 2
                                        #     Child Loop BB5_301 Depth 2
	beq	$s0, $s1, .LBB5_299
# %bb.297:                              # %.lr.ph.i.i303.preheader
                                        #   in Loop: Header=BB5_296 Depth=1
	move	$a0, $s6
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_298:                              # %.lr.ph.i.i303
                                        #   Parent Loop BB5_296 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s1, .LBB5_298
.LBB5_299:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i307
                                        #   in Loop: Header=BB5_296 Depth=1
	st.d	$s2, $sp, 296
	st.d	$s5, $sp, 280
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.300:                              # %.noexc313.preheader
                                        #   in Loop: Header=BB5_296 Depth=1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_301:                              # %.noexc313
                                        #   Parent Loop BB5_296 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s5, .LBB5_295
# %bb.302:                              #   in Loop: Header=BB5_301 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_301
	b	.LBB5_294
.LBB5_303:
	blez	$a0, .LBB5_459
# %bb.304:                              # %.lr.ph.i314.preheader
	addi.d	$s0, $s4, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s1, $zero
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	b	.LBB5_307
	.p2align	4, , 16
.LBB5_305:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i326
                                        #   in Loop: Header=BB5_307 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_306:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i327
                                        #   in Loop: Header=BB5_307 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_314
.LBB5_307:                              # %.lr.ph.i314
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_309 Depth 2
                                        #     Child Loop BB5_312 Depth 2
	beq	$s5, $s2, .LBB5_310
# %bb.308:                              # %.lr.ph.i.i318.preheader
                                        #   in Loop: Header=BB5_307 Depth=1
	move	$a0, $s0
	move	$a1, $s5
	.p2align	4, , 16
.LBB5_309:                              # %.lr.ph.i.i318
                                        #   Parent Loop BB5_307 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_309
.LBB5_310:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i322
                                        #   in Loop: Header=BB5_307 Depth=1
	st.d	$s4, $sp, 296
	st.d	$s3, $sp, 280
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.311:                              # %.noexc328.preheader
                                        #   in Loop: Header=BB5_307 Depth=1
	move	$a0, $s0
	.p2align	4, , 16
.LBB5_312:                              # %.noexc328
                                        #   Parent Loop BB5_307 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_306
# %bb.313:                              #   in Loop: Header=BB5_312 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_312
	b	.LBB5_305
.LBB5_314:                              # %.loopexit718
	blez	$a0, .LBB5_459
# %bb.315:                              # %.lr.ph.i330
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s0, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s1, $a1, %pc_lo12(rrdpb+8)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s2, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s5, $a0, %pc_lo12(rrdpe+8)
	sub.d	$a0, $s1, $s0
	sub.d	$a1, $s2, $s0
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s1, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$s6, $s1, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$fp, $zero
	b	.LBB5_318
	.p2align	4, , 16
.LBB5_316:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i339
                                        #   in Loop: Header=BB5_318 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_317:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i340
                                        #   in Loop: Header=BB5_318 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB5_328
.LBB5_318:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_321 Depth 2
                                        #     Child Loop BB5_323 Depth 2
                                        #     Child Loop BB5_326 Depth 2
	beq	$s0, $s2, .LBB5_324
# %bb.319:                              # %.lr.ph.i.i333.preheader
                                        #   in Loop: Header=BB5_318 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	bnez	$s7, .LBB5_323
# %bb.320:                              # %vector.body1225.preheader
                                        #   in Loop: Header=BB5_318 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_321:                              # %vector.body1225
                                        #   Parent Loop BB5_318 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_321
# %bb.322:                              # %middle.block1234
                                        #   in Loop: Header=BB5_318 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB5_324
	.p2align	4, , 16
.LBB5_323:                              # %.lr.ph.i.i333
                                        #   Parent Loop BB5_318 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_323
.LBB5_324:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i336
                                        #   in Loop: Header=BB5_318 Depth=1
	st.d	$s1, $sp, 304
	st.d	$s5, $sp, 288
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.325:                              # %.noexc341.preheader
                                        #   in Loop: Header=BB5_318 Depth=1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_326:                              # %.noexc341
                                        #   Parent Loop BB5_318 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s5, .LBB5_317
# %bb.327:                              #   in Loop: Header=BB5_326 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_326
	b	.LBB5_316
.LBB5_328:
	blez	$a0, .LBB5_459
# %bb.329:                              # %.lr.ph.i342
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a0, $s3, $a3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s0, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	add.d	$s1, $s3, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$s2, $a3, $a0
	addi.d	$s5, $a3, 16
	addi.d	$s6, $s3, 16
	addi.d	$s7, $s3, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s8, $zero
	b	.LBB5_332
	.p2align	4, , 16
.LBB5_330:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i354
                                        #   in Loop: Header=BB5_332 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_331:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i355
                                        #   in Loop: Header=BB5_332 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_342
.LBB5_332:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_335 Depth 2
                                        #     Child Loop BB5_337 Depth 2
                                        #     Child Loop BB5_340 Depth 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	beq	$a0, $a3, .LBB5_338
# %bb.333:                              # %.lr.ph.i.i346.preheader
                                        #   in Loop: Header=BB5_332 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_337
# %bb.334:                              # %vector.body1245.preheader
                                        #   in Loop: Header=BB5_332 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s5
	.p2align	4, , 16
.LBB5_335:                              # %vector.body1245
                                        #   Parent Loop BB5_332 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_335
# %bb.336:                              # %middle.block1254
                                        #   in Loop: Header=BB5_332 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$a2, $s0, .LBB5_338
	.p2align	4, , 16
.LBB5_337:                              # %.lr.ph.i.i346
                                        #   Parent Loop BB5_332 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_337
.LBB5_338:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i350
                                        #   in Loop: Header=BB5_332 Depth=1
	st.d	$s3, $sp, 304
	st.d	$s4, $sp, 288
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.339:                              # %.noexc356.preheader
                                        #   in Loop: Header=BB5_332 Depth=1
	move	$a0, $s7
	.p2align	4, , 16
.LBB5_340:                              # %.noexc356
                                        #   Parent Loop BB5_332 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s4, .LBB5_331
# %bb.341:                              #   in Loop: Header=BB5_340 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_340
	b	.LBB5_330
.LBB5_342:                              # %.loopexit712
	blez	$a0, .LBB5_459
# %bb.343:                              # %.lr.ph.i357
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$s0, $a0, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s1, $s3, $a1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	addi.d	$s5, $a0, 16
	addi.d	$s6, $s3, 16
	addi.d	$s7, $s3, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s8, $zero
	b	.LBB5_346
	.p2align	4, , 16
.LBB5_344:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i369
                                        #   in Loop: Header=BB5_346 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_345:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i370
                                        #   in Loop: Header=BB5_346 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_356
.LBB5_346:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_349 Depth 2
                                        #     Child Loop BB5_351 Depth 2
                                        #     Child Loop BB5_354 Depth 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	beq	$a0, $a3, .LBB5_352
# %bb.347:                              # %.lr.ph.i.i361.preheader
                                        #   in Loop: Header=BB5_346 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_351
# %bb.348:                              # %vector.body1265.preheader
                                        #   in Loop: Header=BB5_346 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s5
	.p2align	4, , 16
.LBB5_349:                              # %vector.body1265
                                        #   Parent Loop BB5_346 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_349
# %bb.350:                              # %middle.block1274
                                        #   in Loop: Header=BB5_346 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$a2, $s0, .LBB5_352
	.p2align	4, , 16
.LBB5_351:                              # %.lr.ph.i.i361
                                        #   Parent Loop BB5_346 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_351
.LBB5_352:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i365
                                        #   in Loop: Header=BB5_346 Depth=1
	st.d	$s3, $sp, 304
	st.d	$s4, $sp, 288
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.353:                              # %.noexc371.preheader
                                        #   in Loop: Header=BB5_346 Depth=1
	move	$a0, $s7
	.p2align	4, , 16
.LBB5_354:                              # %.noexc371
                                        #   Parent Loop BB5_346 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s4, .LBB5_345
# %bb.355:                              #   in Loop: Header=BB5_354 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_354
	b	.LBB5_344
.LBB5_356:                              # %.loopexit708
	blez	$a0, .LBB5_459
# %bb.357:                              # %.lr.ph.i373
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(dMpb)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(dpb)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(dMpe)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(dpe)
	sub.d	$a0, $fp, $s2
	sub.d	$a1, $s5, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $fp, $a0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s6, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB5_360
	.p2align	4, , 16
.LBB5_358:                              # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.i384
                                        #   in Loop: Header=BB5_360 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_359:                              # %_Z13verify_sortedIPdEvT_S1_.exit.i385
                                        #   in Loop: Header=BB5_360 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_370
.LBB5_360:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_363 Depth 2
                                        #     Child Loop BB5_365 Depth 2
                                        #     Child Loop BB5_368 Depth 2
	beq	$s2, $s5, .LBB5_366
# %bb.361:                              # %.lr.ph.i.i376.preheader
                                        #   in Loop: Header=BB5_360 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	bnez	$s7, .LBB5_365
# %bb.362:                              # %vector.body1285.preheader
                                        #   in Loop: Header=BB5_360 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_363:                              # %vector.body1285
                                        #   Parent Loop BB5_360 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_363
# %bb.364:                              # %middle.block1294
                                        #   in Loop: Header=BB5_360 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB5_366
	.p2align	4, , 16
.LBB5_365:                              # %.lr.ph.i.i376
                                        #   Parent Loop BB5_360 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_365
.LBB5_366:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.i380
                                        #   in Loop: Header=BB5_360 Depth=1
.Ltmp30:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.367:                              # %.noexc386.preheader
                                        #   in Loop: Header=BB5_360 Depth=1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_368:                              # %.noexc386
                                        #   Parent Loop BB5_360 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s0, .LBB5_359
# %bb.369:                              #   in Loop: Header=BB5_368 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_368
	b	.LBB5_358
.LBB5_370:                              # %_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc.exit
	blez	$a0, .LBB5_459
# %bb.371:                              # %.lr.ph.i387
	ld.d	$s2, $sp, 232
	ld.d	$fp, $sp, 256
	ld.d	$s5, $sp, 240
	ld.d	$s0, $sp, 264
	sub.d	$a0, $fp, $s2
	sub.d	$a1, $s5, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s6, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB5_374
	.p2align	4, , 16
.LBB5_372:                              # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.i397
                                        #   in Loop: Header=BB5_374 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_373:                              # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.i398
                                        #   in Loop: Header=BB5_374 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_384
.LBB5_374:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_377 Depth 2
                                        #     Child Loop BB5_379 Depth 2
                                        #     Child Loop BB5_382 Depth 2
	beq	$s2, $s5, .LBB5_380
# %bb.375:                              # %.lr.ph.i.i390.preheader
                                        #   in Loop: Header=BB5_374 Depth=1
	move	$a0, $s2
	move	$a1, $fp
	bnez	$s7, .LBB5_379
# %bb.376:                              # %vector.body1305.preheader
                                        #   in Loop: Header=BB5_374 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_377:                              # %vector.body1305
                                        #   Parent Loop BB5_374 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_377
# %bb.378:                              # %middle.block1314
                                        #   in Loop: Header=BB5_374 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB5_380
	.p2align	4, , 16
.LBB5_379:                              # %.lr.ph.i.i390
                                        #   Parent Loop BB5_374 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s5, .LBB5_379
.LBB5_380:                              # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.i394
                                        #   in Loop: Header=BB5_374 Depth=1
.Ltmp33:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.381:                              # %.noexc399.preheader
                                        #   in Loop: Header=BB5_374 Depth=1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_382:                              # %.noexc399
                                        #   Parent Loop BB5_374 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s0, .LBB5_373
# %bb.383:                              #   in Loop: Header=BB5_382 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_382
	b	.LBB5_372
.LBB5_384:                              # %_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc.exit
	blez	$a0, .LBB5_459
# %bb.385:                              # %.lr.ph.i400.preheader
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(rdMpb)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(rdpb)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(rdpe)
	addi.d	$s6, $s2, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s7, $zero
	b	.LBB5_388
.LBB5_386:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i409
                                        #   in Loop: Header=BB5_388 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_387:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i410
                                        #   in Loop: Header=BB5_388 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB5_395
.LBB5_388:                              # %.lr.ph.i400
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_390 Depth 2
                                        #     Child Loop BB5_393 Depth 2
	beq	$s0, $s1, .LBB5_391
# %bb.389:                              # %.lr.ph.i.i403.preheader
                                        #   in Loop: Header=BB5_388 Depth=1
	move	$a0, $s6
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_390:                              # %.lr.ph.i.i403
                                        #   Parent Loop BB5_388 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s1, .LBB5_390
.LBB5_391:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i406
                                        #   in Loop: Header=BB5_388 Depth=1
	st.d	$s2, $sp, 296
	st.d	$s5, $sp, 280
.Ltmp36:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.392:                              # %.noexc411.preheader
                                        #   in Loop: Header=BB5_388 Depth=1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_393:                              # %.noexc411
                                        #   Parent Loop BB5_388 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s5, .LBB5_387
# %bb.394:                              #   in Loop: Header=BB5_393 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_393
	b	.LBB5_386
.LBB5_395:                              # %.loopexit700
	blez	$a0, .LBB5_459
# %bb.396:                              # %.lr.ph.i412.preheader
	ld.d	$s0, $sp, 240
	ld.d	$s1, $sp, 232
	ld.d	$s2, $sp, 264
	ld.d	$s5, $sp, 256
	addi.d	$s6, $s2, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s7, $zero
	b	.LBB5_399
.LBB5_397:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i424
                                        #   in Loop: Header=BB5_399 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_398:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i425
                                        #   in Loop: Header=BB5_399 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB5_406
.LBB5_399:                              # %.lr.ph.i412
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_401 Depth 2
                                        #     Child Loop BB5_404 Depth 2
	beq	$s0, $s1, .LBB5_402
# %bb.400:                              # %.lr.ph.i.i416.preheader
                                        #   in Loop: Header=BB5_399 Depth=1
	move	$a0, $s6
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_401:                              # %.lr.ph.i.i416
                                        #   Parent Loop BB5_399 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s1, .LBB5_401
.LBB5_402:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i420
                                        #   in Loop: Header=BB5_399 Depth=1
	st.d	$s2, $sp, 296
	st.d	$s5, $sp, 280
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.403:                              # %.noexc426.preheader
                                        #   in Loop: Header=BB5_399 Depth=1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_404:                              # %.noexc426
                                        #   Parent Loop BB5_399 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s5, .LBB5_398
# %bb.405:                              #   in Loop: Header=BB5_404 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_404
	b	.LBB5_397
.LBB5_406:
	blez	$a0, .LBB5_459
# %bb.407:                              # %.lr.ph.i427.preheader
	addi.d	$s0, $s4, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s1, $zero
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	b	.LBB5_410
.LBB5_408:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i439
                                        #   in Loop: Header=BB5_410 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_409:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i440
                                        #   in Loop: Header=BB5_410 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_417
.LBB5_410:                              # %.lr.ph.i427
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_412 Depth 2
                                        #     Child Loop BB5_415 Depth 2
	beq	$s5, $s2, .LBB5_413
# %bb.411:                              # %.lr.ph.i.i431.preheader
                                        #   in Loop: Header=BB5_410 Depth=1
	move	$a0, $s0
	move	$a1, $s5
	.p2align	4, , 16
.LBB5_412:                              # %.lr.ph.i.i431
                                        #   Parent Loop BB5_410 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_412
.LBB5_413:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i435
                                        #   in Loop: Header=BB5_410 Depth=1
	st.d	$s4, $sp, 296
	st.d	$s3, $sp, 280
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.414:                              # %.noexc441.preheader
                                        #   in Loop: Header=BB5_410 Depth=1
	move	$a0, $s0
	.p2align	4, , 16
.LBB5_415:                              # %.noexc441
                                        #   Parent Loop BB5_410 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_409
# %bb.416:                              #   in Loop: Header=BB5_415 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_415
	b	.LBB5_408
.LBB5_417:                              # %.loopexit694
	blez	$a0, .LBB5_459
# %bb.418:                              # %.lr.ph.i443
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(rrdMpb+8)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(rrdpb+8)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(rrdMpe+8)
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(rrdpe+8)
	sub.d	$a0, $s1, $s0
	sub.d	$a1, $s2, $s0
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s6, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s1, $a0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s8, $s1, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$fp, $zero
	b	.LBB5_421
.LBB5_419:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i452
                                        #   in Loop: Header=BB5_421 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_420:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i453
                                        #   in Loop: Header=BB5_421 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB5_431
.LBB5_421:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_424 Depth 2
                                        #     Child Loop BB5_426 Depth 2
                                        #     Child Loop BB5_429 Depth 2
	beq	$s0, $s2, .LBB5_427
# %bb.422:                              # %.lr.ph.i.i446.preheader
                                        #   in Loop: Header=BB5_421 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	bnez	$s7, .LBB5_426
# %bb.423:                              # %vector.body1325.preheader
                                        #   in Loop: Header=BB5_421 Depth=1
	move	$a0, $s6
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_424:                              # %vector.body1325
                                        #   Parent Loop BB5_421 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_424
# %bb.425:                              # %middle.block1334
                                        #   in Loop: Header=BB5_421 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beq	$a2, $s6, .LBB5_427
	.p2align	4, , 16
.LBB5_426:                              # %.lr.ph.i.i446
                                        #   Parent Loop BB5_421 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_426
.LBB5_427:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i449
                                        #   in Loop: Header=BB5_421 Depth=1
	st.d	$s1, $sp, 304
	st.d	$s5, $sp, 288
.Ltmp45:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.428:                              # %.noexc454.preheader
                                        #   in Loop: Header=BB5_421 Depth=1
	move	$a0, $s8
	.p2align	4, , 16
.LBB5_429:                              # %.noexc454
                                        #   Parent Loop BB5_421 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s5, .LBB5_420
# %bb.430:                              #   in Loop: Header=BB5_429 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_429
	b	.LBB5_419
.LBB5_431:
	blez	$a0, .LBB5_459
# %bb.432:                              # %.lr.ph.i455
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$s0, $a0, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s1, $s3, $a1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	addi.d	$s5, $a0, 16
	addi.d	$s6, $s3, 16
	addi.d	$s7, $s3, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s8, $zero
	b	.LBB5_435
.LBB5_433:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i467
                                        #   in Loop: Header=BB5_435 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_434:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i468
                                        #   in Loop: Header=BB5_435 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_445
.LBB5_435:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_438 Depth 2
                                        #     Child Loop BB5_440 Depth 2
                                        #     Child Loop BB5_443 Depth 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	beq	$a0, $a3, .LBB5_441
# %bb.436:                              # %.lr.ph.i.i459.preheader
                                        #   in Loop: Header=BB5_435 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_440
# %bb.437:                              # %vector.body1345.preheader
                                        #   in Loop: Header=BB5_435 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s5
	.p2align	4, , 16
.LBB5_438:                              # %vector.body1345
                                        #   Parent Loop BB5_435 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_438
# %bb.439:                              # %middle.block1354
                                        #   in Loop: Header=BB5_435 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$a2, $s0, .LBB5_441
	.p2align	4, , 16
.LBB5_440:                              # %.lr.ph.i.i459
                                        #   Parent Loop BB5_435 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_440
.LBB5_441:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i463
                                        #   in Loop: Header=BB5_435 Depth=1
	st.d	$s3, $sp, 304
	st.d	$s4, $sp, 288
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.442:                              # %.noexc469.preheader
                                        #   in Loop: Header=BB5_435 Depth=1
	move	$a0, $s7
	.p2align	4, , 16
.LBB5_443:                              # %.noexc469
                                        #   Parent Loop BB5_435 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s4, .LBB5_434
# %bb.444:                              #   in Loop: Header=BB5_443 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_443
	b	.LBB5_433
.LBB5_445:                              # %.loopexit688
	blez	$a0, .LBB5_459
# %bb.446:                              # %.lr.ph.i470
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$s0, $a0, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s1, $s3, $a1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	addi.d	$s5, $a0, 16
	addi.d	$s6, $s3, 16
	addi.d	$s7, $s3, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	move	$s8, $zero
	b	.LBB5_449
.LBB5_447:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i482
                                        #   in Loop: Header=BB5_449 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_448:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i483
                                        #   in Loop: Header=BB5_449 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_459
.LBB5_449:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_452 Depth 2
                                        #     Child Loop BB5_454 Depth 2
                                        #     Child Loop BB5_457 Depth 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	beq	$a0, $a3, .LBB5_455
# %bb.450:                              # %.lr.ph.i.i474.preheader
                                        #   in Loop: Header=BB5_449 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_454
# %bb.451:                              # %vector.body1365.preheader
                                        #   in Loop: Header=BB5_449 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s5
	.p2align	4, , 16
.LBB5_452:                              # %vector.body1365
                                        #   Parent Loop BB5_449 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_452
# %bb.453:                              # %middle.block1374
                                        #   in Loop: Header=BB5_449 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$a2, $s0, .LBB5_455
	.p2align	4, , 16
.LBB5_454:                              # %.lr.ph.i.i474
                                        #   Parent Loop BB5_449 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_454
.LBB5_455:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i478
                                        #   in Loop: Header=BB5_449 Depth=1
	st.d	$s3, $sp, 304
	st.d	$s4, $sp, 288
.Ltmp51:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.456:                              # %.noexc484.preheader
                                        #   in Loop: Header=BB5_449 Depth=1
	move	$a0, $s7
	.p2align	4, , 16
.LBB5_457:                              # %.noexc484
                                        #   Parent Loop BB5_449 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s4, .LBB5_448
# %bb.458:                              #   in Loop: Header=BB5_457 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_457
	b	.LBB5_447
.LBB5_459:                              # %.loopexit684
	ld.d	$a0, $sp, 232
	beqz	$a0, .LBB5_461
# %bb.460:
	ld.d	$a1, $sp, 248
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_461:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 256
	beqz	$a0, .LBB5_463
# %bb.462:
	ld.d	$a1, $sp, 272
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_463:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit488
	move	$a0, $zero
	fld.d	$fs1, $sp, 312                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 320                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB5_464:                              # %.loopexit
.Ltmp53:                                # EH_LABEL
	b	.LBB5_482
.LBB5_465:                              # %.loopexit.split-lp.loopexit
.Ltmp50:                                # EH_LABEL
	b	.LBB5_482
.LBB5_466:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp47:                                # EH_LABEL
	b	.LBB5_482
.LBB5_467:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp44:                                # EH_LABEL
	b	.LBB5_482
.LBB5_468:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp41:                                # EH_LABEL
	b	.LBB5_482
.LBB5_469:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp38:                                # EH_LABEL
	b	.LBB5_482
.LBB5_470:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp35:                                # EH_LABEL
	b	.LBB5_482
.LBB5_471:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp32:                                # EH_LABEL
	b	.LBB5_482
.LBB5_472:
.Ltmp5:                                 # EH_LABEL
	b	.LBB5_482
.LBB5_473:
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 256
	beqz	$a0, .LBB5_484
	b	.LBB5_486
.LBB5_474:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp29:                                # EH_LABEL
	b	.LBB5_482
.LBB5_475:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp26:                                # EH_LABEL
	b	.LBB5_482
.LBB5_476:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp23:                                # EH_LABEL
	b	.LBB5_482
.LBB5_477:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp20:                                # EH_LABEL
	b	.LBB5_482
.LBB5_478:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp17:                                # EH_LABEL
	b	.LBB5_482
.LBB5_479:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp14:                                # EH_LABEL
	b	.LBB5_482
.LBB5_480:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp11:                                # EH_LABEL
	b	.LBB5_482
.LBB5_481:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp8:                                 # EH_LABEL
.LBB5_482:                              # %.loopexit.split-lp
	move	$fp, $a0
	ld.d	$a0, $sp, 232
	bnez	$a0, .LBB5_485
# %bb.483:
	ld.d	$a0, $sp, 256
	bnez	$a0, .LBB5_486
.LBB5_484:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit492
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_485:
	ld.d	$a1, $sp, 248
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	beqz	$a0, .LBB5_484
.LBB5_486:
	ld.d	$a1, $sp, 272
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp24-.Ltmp22                #   Call between .Ltmp22 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp27-.Ltmp25                #   Call between .Ltmp25 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp33-.Ltmp31                #   Call between .Ltmp31 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp36-.Ltmp34                #   Call between .Ltmp34 and .Ltmp36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp39-.Ltmp37                #   Call between .Ltmp37 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp42-.Ltmp40                #   Call between .Ltmp40 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp45-.Ltmp43                #   Call between .Ltmp43 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp48-.Ltmp46                #   Call between .Ltmp46 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp51-.Ltmp49                #   Call between .Ltmp49 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Lfunc_end5-.Ltmp52            #   Call between .Ltmp52 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEE17_M_default_appendEm,@function
_ZNSt6vectorIdSaIdEE17_M_default_appendEm: # @_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	beqz	$a1, .LBB6_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s4, $fp, 16
	sub.d	$a1, $s4, $a0
	srai.d	$a1, $a1, 3
	bgeu	$a1, $s0, .LBB6_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB6_14
# %bb.3:                                # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	addi.d	$a1, $s0, -1
	stx.d	$zero, $a0, $s2
	beqz	$a1, .LBB6_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 8
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_5:                                # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit32
	blez	$s2, .LBB6_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_7:                                # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB6_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_9:                                # %_ZZNSt6vectorIdSaIdEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB6_13
.LBB6_10:
	st.d	$zero, $a0, 0
	addi.d	$s1, $s0, -1
	addi.d	$s0, $a0, 8
	beqz	$s1, .LBB6_12
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a2, $s1, 3
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s0, $s1, $s0, 3
.LBB6_12:                               # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB6_13:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB6_14:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end6-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortIPddEEvT_S2_,"axG",@progbits,_ZN9benchmark9quicksortIPddEEvT_S2_,comdat
	.weak	_ZN9benchmark9quicksortIPddEEvT_S2_ # -- Begin function _ZN9benchmark9quicksortIPddEEvT_S2_
	.p2align	5
	.type	_ZN9benchmark9quicksortIPddEEvT_S2_,@function
_ZN9benchmark9quicksortIPddEEvT_S2_:    # @_ZN9benchmark9quicksortIPddEEvT_S2_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a1
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 9
	blt	$a1, $a2, .LBB7_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %tailrecurse
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB7_11
.LBB7_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
                                        #       Child Loop BB7_5 Depth 3
                                        #       Child Loop BB7_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_4:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_5 Depth 3
                                        #       Child Loop BB7_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB7_5:                                #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB7_5
# %bb.6:                                #   in Loop: Header=BB7_4 Depth=2
	bgeu	$a2, $a1, .LBB7_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB7_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB7_8:                                # %.preheader
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB7_8
# %bb.9:                                #   in Loop: Header=BB7_4 Depth=2
	bgeu	$a2, $a1, .LBB7_2
# %bb.10:                               #   in Loop: Header=BB7_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB7_4
.LBB7_11:                               # %tailrecurse._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	_ZN9benchmark9quicksortIPddEEvT_S2_, .Lfunc_end7-_ZN9benchmark9quicksortIPddEEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,"axG",@progbits,_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,comdat
	.weak	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ # -- Begin function _ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.p2align	5
	.type	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,@function
_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_: # @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 9
	blt	$a0, $a1, .LBB8_11
# %bb.1:                                # %.lr.ph
	ori	$s1, $zero, 8
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %tailrecurse
                                        #   in Loop: Header=BB8_3 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	sub.d	$a0, $fp, $s0
	bge	$s1, $a0, .LBB8_11
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
                                        #       Child Loop BB8_5 Depth 3
                                        #       Child Loop BB8_8 Depth 3
	move	$a0, $s0
	fld.d	$fa0, $s0, 0
	move	$a1, $s0
	move	$a2, $fp
	.p2align	4, , 16
.LBB8_4:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_5 Depth 3
                                        #       Child Loop BB8_8 Depth 3
	addi.d	$s0, $a2, 8
	.p2align	4, , 16
.LBB8_5:                                #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a2, -8
	addi.d	$a2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB8_5
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=2
	bgeu	$a1, $a2, .LBB8_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB8_4 Depth=2
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB8_8:                                # %.preheader
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB8_8
# %bb.9:                                #   in Loop: Header=BB8_4 Depth=2
	bgeu	$a1, $a2, .LBB8_2
# %bb.10:                               #   in Loop: Header=BB8_4 Depth=2
	fst.d	$fa2, $a2, 0
	fst.d	$fa1, $a1, 0
	b	.LBB8_4
.LBB8_11:                               # %tailrecurse._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_, .Lfunc_end8-_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a2, $a0, $a1
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB9_9
# %bb.1:
	fld.d	$fa0, $a0, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB9_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB9_2
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	bgeu	$a1, $a2, .LBB9_8
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB9_5:                                # %.preheader
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, -16
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB9_5
# %bb.6:                                #   in Loop: Header=BB9_2 Depth=1
	bgeu	$a1, $a2, .LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_2 Depth=1
	fst.d	$fa2, $a1, -8
	fst.d	$fa1, $a2, -8
	b	.LBB9_2
.LBB9_8:
	st.d	$a0, $sp, 32
	addi.d	$s0, $a1, -8
	st.d	$s0, $sp, 24
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$s0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.LBB9_9:
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end9:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_, .Lfunc_end9-_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a2, $a0, $a1
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB10_9
# %bb.1:
	fld.d	$fa0, $a0, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB10_2
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	bgeu	$a1, $a2, .LBB10_8
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB10_5:                               # %.preheader
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, -16
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB10_5
# %bb.6:                                #   in Loop: Header=BB10_2 Depth=1
	bgeu	$a1, $a2, .LBB10_8
# %bb.7:                                #   in Loop: Header=BB10_2 Depth=1
	fst.d	$fa2, $a1, -8
	fst.d	$fa1, $a2, -8
	b	.LBB10_2
.LBB10_8:
	st.d	$a0, $sp, 32
	addi.d	$s0, $a1, -8
	st.d	$s0, $sp, 24
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$s0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.LBB10_9:
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end10:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_, .Lfunc_end10-_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB11_9
# %bb.1:
	fld.d	$fa0, $a0, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB11_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	fld.d	$fa1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB11_2
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	bgeu	$a2, $a1, .LBB11_8
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB11_2 Depth=1
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB11_5:                               # %.preheader
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB11_5
# %bb.6:                                #   in Loop: Header=BB11_2 Depth=1
	bgeu	$a2, $a1, .LBB11_8
# %bb.7:                                #   in Loop: Header=BB11_2 Depth=1
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB11_2
.LBB11_8:
	st.d	$a0, $sp, 64
	addi.d	$s0, $a1, 8
	st.d	$s0, $sp, 48
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$s0, $sp, 32
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.LBB11_9:
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end11:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_, .Lfunc_end11-_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB12_10
# %bb.1:
	fld.d	$fa0, $a0, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB12_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
                                        #     Child Loop BB12_6 Depth 2
	addi.d	$s0, $a1, 8
	.p2align	4, , 16
.LBB12_3:                               #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB12_3
# %bb.4:                                #   in Loop: Header=BB12_2 Depth=1
	bgeu	$a2, $a1, .LBB12_9
# %bb.5:                                # %.preheader.preheader
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB12_6:                               # %.preheader
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB12_6
# %bb.7:                                #   in Loop: Header=BB12_2 Depth=1
	bgeu	$a2, $a1, .LBB12_9
# %bb.8:                                #   in Loop: Header=BB12_2 Depth=1
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB12_2
.LBB12_9:
	st.d	$a0, $sp, 64
	st.d	$s0, $sp, 48
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$s0, $sp, 32
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.LBB12_10:
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end12:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_, .Lfunc_end12-_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortIPddEEvT_S2_,"axG",@progbits,_ZN9benchmark8heapsortIPddEEvT_S2_,comdat
	.weak	_ZN9benchmark8heapsortIPddEEvT_S2_ # -- Begin function _ZN9benchmark8heapsortIPddEEvT_S2_
	.p2align	5
	.type	_ZN9benchmark8heapsortIPddEEvT_S2_,@function
_ZN9benchmark8heapsortIPddEEvT_S2_:     # @_ZN9benchmark8heapsortIPddEEvT_S2_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB13_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_4 Depth=1
	move	$t0, $a7
.LBB13_3:                               # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit
                                        #   in Loop: Header=BB13_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB13_13
.LBB13_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
                                        #     Child Loop BB13_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB13_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB13_6:                               # %.lr.ph.i
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a7, $t0, $a0, 3
	slli.d	$t2, $t0, 3
	fld.d	$fa1, $a7, -8
	fldx.d	$fa2, $a0, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB13_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB13_4 Depth=1
	bne	$t0, $a1, .LBB13_9
.LBB13_8:                               #   in Loop: Header=BB13_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB13_9:                               #   in Loop: Header=BB13_4 Depth=1
	blt	$a7, $a6, .LBB13_2
	.p2align	4, , 16
.LBB13_10:                              # %.lr.ph50.i
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB13_2
# %bb.11:                               #   in Loop: Header=BB13_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB13_10
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_12:                              #   in Loop: Header=BB13_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB13_8
	b	.LBB13_9
.LBB13_13:                              # %.lr.ph44.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB13_16
	.p2align	4, , 16
.LBB13_14:                              #   in Loop: Header=BB13_16 Depth=1
	move	$a6, $zero
.LBB13_15:                              # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34
                                        #   in Loop: Header=BB13_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB13_25
.LBB13_16:                              # %.lr.ph44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_18 Depth 2
                                        #     Child Loop BB13_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB13_21
# %bb.17:                               # %.lr.ph.i30.preheader
                                        #   in Loop: Header=BB13_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB13_18:                              # %.lr.ph.i30
                                        #   Parent Loop BB13_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	fld.d	$fa1, $a6, -8
	fldx.d	$fa2, $a0, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB13_18
# %bb.19:                               # %._crit_edge.i21
                                        #   in Loop: Header=BB13_16 Depth=1
	bne	$a7, $a1, .LBB13_22
.LBB13_20:                              # %.thread
                                        #   in Loop: Header=BB13_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB13_23
	.p2align	4, , 16
.LBB13_21:                              #   in Loop: Header=BB13_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB13_20
.LBB13_22:                              #   in Loop: Header=BB13_16 Depth=1
	blez	$a6, .LBB13_15
	.p2align	4, , 16
.LBB13_23:                              # %.lr.ph50.i26
                                        #   Parent Loop BB13_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB13_15
# %bb.24:                               #   in Loop: Header=BB13_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB13_23
	b	.LBB13_14
.LBB13_25:                              # %._crit_edge
	ret
.Lfunc_end13:
	.size	_ZN9benchmark8heapsortIPddEEvT_S2_, .Lfunc_end13-_ZN9benchmark8heapsortIPddEEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,"axG",@progbits,_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,comdat
	.weak	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ # -- Begin function _ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.p2align	5
	.type	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,@function
_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_: # @_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB14_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB14_4
	.p2align	4, , 16
.LBB14_2:                               #   in Loop: Header=BB14_4 Depth=1
	move	$t0, $a7
.LBB14_3:                               # %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB14_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB14_13
.LBB14_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #     Child Loop BB14_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB14_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB14_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB14_6:                               # %.lr.ph.i
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a7, $t0, $a0, 3
	slli.d	$t2, $t0, 3
	fld.d	$fa1, $a7, -8
	fldx.d	$fa2, $a0, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB14_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB14_4 Depth=1
	bne	$t0, $a1, .LBB14_9
.LBB14_8:                               #   in Loop: Header=BB14_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB14_9:                               #   in Loop: Header=BB14_4 Depth=1
	blt	$a7, $a6, .LBB14_2
	.p2align	4, , 16
.LBB14_10:                              # %.lr.ph58.i
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_2
# %bb.11:                               #   in Loop: Header=BB14_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB14_10
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_12:                              #   in Loop: Header=BB14_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB14_8
	b	.LBB14_9
.LBB14_13:                              # %.lr.ph45.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB14_16
	.p2align	4, , 16
.LBB14_14:                              #   in Loop: Header=BB14_16 Depth=1
	move	$a6, $zero
.LBB14_15:                              # %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit27
                                        #   in Loop: Header=BB14_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB14_25
.LBB14_16:                              # %.lr.ph45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_18 Depth 2
                                        #     Child Loop BB14_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB14_21
# %bb.17:                               # %.lr.ph.i23.preheader
                                        #   in Loop: Header=BB14_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB14_18:                              # %.lr.ph.i23
                                        #   Parent Loop BB14_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	fld.d	$fa1, $a6, -8
	fldx.d	$fa2, $a0, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB14_18
# %bb.19:                               # %._crit_edge.i14
                                        #   in Loop: Header=BB14_16 Depth=1
	bne	$a7, $a1, .LBB14_22
.LBB14_20:                              # %.thread
                                        #   in Loop: Header=BB14_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB14_23
	.p2align	4, , 16
.LBB14_21:                              #   in Loop: Header=BB14_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB14_20
.LBB14_22:                              #   in Loop: Header=BB14_16 Depth=1
	blez	$a6, .LBB14_15
	.p2align	4, , 16
.LBB14_23:                              # %.lr.ph58.i19
                                        #   Parent Loop BB14_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_15
# %bb.24:                               #   in Loop: Header=BB14_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB14_23
	b	.LBB14_14
.LBB14_25:                              # %._crit_edge
	ret
.Lfunc_end14:
	.size	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_, .Lfunc_end14-_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB15_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 1
	sub.d	$a5, $a4, $a1
	alsl.d	$a5, $a5, $a0, 3
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_2:                               #   in Loop: Header=BB15_4 Depth=1
	move	$t0, $a7
.LBB15_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB15_4 Depth=1
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa0, $a7, -8
	bge	$a4, $a6, .LBB15_13
.LBB15_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
                                        #     Child Loop BB15_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	sub.d	$a7, $a4, $a6
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa0, $a7, -8
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB15_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB15_6:                               # %.lr.ph.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a7, $a4, $t0
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa1, $a7, -8
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fld.d	$fa2, $a7, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	sub.d	$t2, $a4, $t0
	alsl.d	$t2, $t2, $a0, 3
	fld.d	$fa1, $t2, -8
	slli.d	$t1, $t1, 3
	sub.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 1
	fst.d	$fa1, $t1, -8
	move	$t1, $a7
	blt	$t0, $a1, .LBB15_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB15_4 Depth=1
	bne	$t0, $a1, .LBB15_9
.LBB15_8:                               #   in Loop: Header=BB15_4 Depth=1
	fld.d	$fa1, $a5, -8
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $a2
.LBB15_9:                               #   in Loop: Header=BB15_4 Depth=1
	blt	$a7, $a6, .LBB15_2
	.p2align	4, , 16
.LBB15_10:                              # %.lr.ph48.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_2
# %bb.11:                               #   in Loop: Header=BB15_10 Depth=2
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $t0
	bge	$t0, $a6, .LBB15_10
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_12:                              #   in Loop: Header=BB15_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB15_8
	b	.LBB15_9
.LBB15_13:
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	ori	$a4, $zero, 2
	b	.LBB15_16
	.p2align	4, , 16
.LBB15_14:                              #   in Loop: Header=BB15_16 Depth=1
	move	$a6, $zero
.LBB15_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit30
                                        #   in Loop: Header=BB15_16 Depth=1
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa0, $a6, -8
	bge	$a4, $a5, .LBB15_25
.LBB15_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_18 Depth 2
                                        #     Child Loop BB15_23 Depth 2
	move	$a5, $a1
	sub.d	$a1, $a2, $a1
	alsl.d	$a6, $a1, $a0, 3
	fld.d	$fa1, $a0, -8
	fld.d	$fa0, $a6, -8
	addi.d	$a1, $a5, -1
	fst.d	$fa1, $a6, -8
	bltu	$a1, $a3, .LBB15_21
# %bb.17:                               # %.lr.ph.i26.preheader
                                        #   in Loop: Header=BB15_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB15_18:                              # %.lr.ph.i26
                                        #   Parent Loop BB15_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a6, $a2, $a7
	alsl.d	$a6, $a6, $a0, 3
	fld.d	$fa1, $a6, -8
	slli.d	$a6, $a7, 3
	sub.d	$a6, $a0, $a6
	fld.d	$fa2, $a6, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	sub.d	$t1, $a2, $a7
	alsl.d	$t1, $t1, $a0, 3
	fld.d	$fa1, $t1, -8
	slli.d	$t0, $t0, 3
	sub.d	$t0, $a0, $t0
	slli.d	$a7, $a7, 1
	fst.d	$fa1, $t0, -8
	move	$t0, $a6
	blt	$a7, $a1, .LBB15_18
# %bb.19:                               # %._crit_edge.i13
                                        #   in Loop: Header=BB15_16 Depth=1
	bne	$a7, $a1, .LBB15_22
.LBB15_20:                              # %.thread
                                        #   in Loop: Header=BB15_16 Depth=1
	sub.d	$a7, $a4, $a5
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa1, $a7, -8
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a5, -2
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $a7
	b	.LBB15_23
	.p2align	4, , 16
.LBB15_21:                              #   in Loop: Header=BB15_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB15_20
.LBB15_22:                              #   in Loop: Header=BB15_16 Depth=1
	blez	$a6, .LBB15_15
	.p2align	4, , 16
.LBB15_23:                              # %.lr.ph48.i19
                                        #   Parent Loop BB15_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_15
# %bb.24:                               #   in Loop: Header=BB15_23 Depth=2
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $t0
	bltu	$a2, $a7, .LBB15_23
	b	.LBB15_14
.LBB15_25:                              # %._crit_edge
	ret
.Lfunc_end15:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_, .Lfunc_end15-_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB16_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 1
	sub.d	$a5, $a4, $a1
	alsl.d	$a5, $a5, $a0, 3
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_2:                               #   in Loop: Header=BB16_4 Depth=1
	move	$t0, $a7
.LBB16_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB16_4 Depth=1
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa0, $a7, -8
	bge	$a4, $a6, .LBB16_13
.LBB16_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #     Child Loop BB16_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	sub.d	$a7, $a4, $a6
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa0, $a7, -8
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB16_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB16_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB16_6:                               # %.lr.ph.i
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a7, $a4, $t0
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa1, $a7, -8
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fld.d	$fa2, $a7, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	sub.d	$t2, $a4, $t0
	alsl.d	$t2, $t2, $a0, 3
	fld.d	$fa1, $t2, -8
	slli.d	$t1, $t1, 3
	sub.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 1
	fst.d	$fa1, $t1, -8
	move	$t1, $a7
	blt	$t0, $a1, .LBB16_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB16_4 Depth=1
	bne	$t0, $a1, .LBB16_9
.LBB16_8:                               #   in Loop: Header=BB16_4 Depth=1
	fld.d	$fa1, $a5, -8
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $a2
.LBB16_9:                               #   in Loop: Header=BB16_4 Depth=1
	blt	$a7, $a6, .LBB16_2
	.p2align	4, , 16
.LBB16_10:                              # %.lr.ph48.i
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_2
# %bb.11:                               #   in Loop: Header=BB16_10 Depth=2
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $t0
	bge	$t0, $a6, .LBB16_10
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_12:                              #   in Loop: Header=BB16_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB16_8
	b	.LBB16_9
.LBB16_13:
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	ori	$a4, $zero, 2
	b	.LBB16_16
	.p2align	4, , 16
.LBB16_14:                              #   in Loop: Header=BB16_16 Depth=1
	move	$a6, $zero
.LBB16_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit30
                                        #   in Loop: Header=BB16_16 Depth=1
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa0, $a6, -8
	bge	$a4, $a5, .LBB16_25
.LBB16_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_18 Depth 2
                                        #     Child Loop BB16_23 Depth 2
	move	$a5, $a1
	sub.d	$a1, $a2, $a1
	alsl.d	$a6, $a1, $a0, 3
	fld.d	$fa1, $a0, -8
	fld.d	$fa0, $a6, -8
	addi.d	$a1, $a5, -1
	fst.d	$fa1, $a6, -8
	bltu	$a1, $a3, .LBB16_21
# %bb.17:                               # %.lr.ph.i26.preheader
                                        #   in Loop: Header=BB16_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB16_18:                              # %.lr.ph.i26
                                        #   Parent Loop BB16_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a6, $a2, $a7
	alsl.d	$a6, $a6, $a0, 3
	fld.d	$fa1, $a6, -8
	slli.d	$a6, $a7, 3
	sub.d	$a6, $a0, $a6
	fld.d	$fa2, $a6, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	sub.d	$t1, $a2, $a7
	alsl.d	$t1, $t1, $a0, 3
	fld.d	$fa1, $t1, -8
	slli.d	$t0, $t0, 3
	sub.d	$t0, $a0, $t0
	slli.d	$a7, $a7, 1
	fst.d	$fa1, $t0, -8
	move	$t0, $a6
	blt	$a7, $a1, .LBB16_18
# %bb.19:                               # %._crit_edge.i13
                                        #   in Loop: Header=BB16_16 Depth=1
	bne	$a7, $a1, .LBB16_22
.LBB16_20:                              # %.thread
                                        #   in Loop: Header=BB16_16 Depth=1
	sub.d	$a7, $a4, $a5
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa1, $a7, -8
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a5, -2
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $a7
	b	.LBB16_23
	.p2align	4, , 16
.LBB16_21:                              #   in Loop: Header=BB16_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB16_20
.LBB16_22:                              #   in Loop: Header=BB16_16 Depth=1
	blez	$a6, .LBB16_15
	.p2align	4, , 16
.LBB16_23:                              # %.lr.ph48.i19
                                        #   Parent Loop BB16_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_15
# %bb.24:                               #   in Loop: Header=BB16_23 Depth=2
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $t0
	bltu	$a2, $a7, .LBB16_23
	b	.LBB16_14
.LBB16_25:                              # %._crit_edge
	ret
.Lfunc_end16:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_, .Lfunc_end16-_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB17_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB17_4
	.p2align	4, , 16
.LBB17_2:                               #   in Loop: Header=BB17_4 Depth=1
	move	$t0, $a7
.LBB17_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB17_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB17_13
.LBB17_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_6 Depth 2
                                        #     Child Loop BB17_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB17_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB17_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB17_6:                               # %.lr.ph.i
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a7, $t0, $a0, 3
	slli.d	$t2, $t0, 3
	fld.d	$fa1, $a7, -8
	fldx.d	$fa2, $a0, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB17_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB17_4 Depth=1
	bne	$t0, $a1, .LBB17_9
.LBB17_8:                               #   in Loop: Header=BB17_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB17_9:                               #   in Loop: Header=BB17_4 Depth=1
	blt	$a7, $a6, .LBB17_2
	.p2align	4, , 16
.LBB17_10:                              # %.lr.ph56.i
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_2
# %bb.11:                               #   in Loop: Header=BB17_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB17_10
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_12:                              #   in Loop: Header=BB17_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB17_8
	b	.LBB17_9
.LBB17_13:                              # %.lr.ph46.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB17_16
	.p2align	4, , 16
.LBB17_14:                              #   in Loop: Header=BB17_16 Depth=1
	move	$a6, $zero
.LBB17_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit26
                                        #   in Loop: Header=BB17_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB17_25
.LBB17_16:                              # %.lr.ph46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_18 Depth 2
                                        #     Child Loop BB17_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB17_21
# %bb.17:                               # %.lr.ph.i22.preheader
                                        #   in Loop: Header=BB17_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB17_18:                              # %.lr.ph.i22
                                        #   Parent Loop BB17_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	fld.d	$fa1, $a6, -8
	fldx.d	$fa2, $a0, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB17_18
# %bb.19:                               # %._crit_edge.i13
                                        #   in Loop: Header=BB17_16 Depth=1
	bne	$a7, $a1, .LBB17_22
.LBB17_20:                              # %.thread
                                        #   in Loop: Header=BB17_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB17_23
	.p2align	4, , 16
.LBB17_21:                              #   in Loop: Header=BB17_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB17_20
.LBB17_22:                              #   in Loop: Header=BB17_16 Depth=1
	blez	$a6, .LBB17_15
	.p2align	4, , 16
.LBB17_23:                              # %.lr.ph56.i18
                                        #   Parent Loop BB17_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_15
# %bb.24:                               #   in Loop: Header=BB17_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB17_23
	b	.LBB17_14
.LBB17_25:                              # %._crit_edge
	ret
.Lfunc_end17:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_, .Lfunc_end17-_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 3
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB18_25
# %bb.1:                                # %.lr.ph
	srli.d	$a4, $a1, 1
	addi.d	$a3, $a1, -1
	alsl.d	$a5, $a3, $a2, 3
	ori	$a6, $zero, 1
	b	.LBB18_4
	.p2align	4, , 16
.LBB18_2:                               #   in Loop: Header=BB18_4 Depth=1
	move	$t1, $t0
.LBB18_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB18_4 Depth=1
	slli.d	$t0, $t1, 3
	fstx.d	$fa0, $a2, $t0
	bge	$a6, $a7, .LBB18_13
.LBB18_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_6 Depth 2
                                        #     Child Loop BB18_10 Depth 2
	move	$a7, $a4
	addi.d	$a4, $a4, -1
	slli.d	$t0, $a4, 3
	fldx.d	$fa0, $a2, $t0
	slli.d	$t0, $a4, 1
	addi.d	$t1, $t0, 2
	bge	$t1, $a1, .LBB18_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB18_4 Depth=1
	move	$t2, $a4
	.p2align	4, , 16
.LBB18_6:                               # %.lr.ph.i
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$t0, $t1, $a2, 3
	slli.d	$t3, $t1, 3
	fld.d	$fa1, $t0, -8
	fldx.d	$fa2, $a2, $t3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t0, $fcc0
	add.d	$t1, $t1, $t0
	addi.d	$t0, $t1, -1
	slli.d	$t3, $t0, 3
	fldx.d	$fa1, $a2, $t3
	slli.d	$t2, $t2, 3
	slli.d	$t1, $t1, 1
	fstx.d	$fa1, $a2, $t2
	move	$t2, $t0
	blt	$t1, $a1, .LBB18_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB18_4 Depth=1
	bne	$t1, $a1, .LBB18_9
.LBB18_8:                               #   in Loop: Header=BB18_4 Depth=1
	fld.d	$fa1, $a5, 0
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a2, $t0
	move	$t0, $a3
.LBB18_9:                               #   in Loop: Header=BB18_4 Depth=1
	blt	$t0, $a7, .LBB18_2
	.p2align	4, , 16
.LBB18_10:                              # %.lr.ph56.i
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $a2, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_2
# %bb.11:                               #   in Loop: Header=BB18_10 Depth=2
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a2, $t0
	move	$t0, $t1
	bge	$t1, $a7, .LBB18_10
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_12:                              #   in Loop: Header=BB18_4 Depth=1
	move	$t0, $a4
	beq	$t1, $a1, .LBB18_8
	b	.LBB18_9
.LBB18_13:                              # %.lr.ph46
	ld.d	$a0, $a0, 8
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB18_16
	.p2align	4, , 16
.LBB18_14:                              #   in Loop: Header=BB18_16 Depth=1
	move	$a6, $zero
.LBB18_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit26
                                        #   in Loop: Header=BB18_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB18_25
.LBB18_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB18_21
# %bb.17:                               # %.lr.ph.i22.preheader
                                        #   in Loop: Header=BB18_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB18_18:                              # %.lr.ph.i22
                                        #   Parent Loop BB18_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	fld.d	$fa1, $a6, -8
	fldx.d	$fa2, $a0, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB18_18
# %bb.19:                               # %._crit_edge.i13
                                        #   in Loop: Header=BB18_16 Depth=1
	bne	$a7, $a1, .LBB18_22
.LBB18_20:                              # %.thread
                                        #   in Loop: Header=BB18_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB18_23
	.p2align	4, , 16
.LBB18_21:                              #   in Loop: Header=BB18_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB18_20
.LBB18_22:                              #   in Loop: Header=BB18_16 Depth=1
	blez	$a6, .LBB18_15
	.p2align	4, , 16
.LBB18_23:                              # %.lr.ph56.i18
                                        #   Parent Loop BB18_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_15
# %bb.24:                               #   in Loop: Header=BB18_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB18_23
	b	.LBB18_14
.LBB18_25:                              # %._crit_edge
	ret
.Lfunc_end18:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_, .Lfunc_end18-_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_endproc
                                        # -- End function
	.type	results,@object                 # @results
	.bss
	.globl	results
	.p2align	3, 0x0
results:
	.dword	0
	.size	results, 8

	.type	current_test,@object            # @current_test
	.globl	current_test
	.p2align	2, 0x0
current_test:
	.word	0                               # 0x0
	.size	current_test, 4

	.type	allocated_results,@object       # @allocated_results
	.globl	allocated_results
	.p2align	2, 0x0
allocated_results:
	.word	0                               # 0x0
	.size	allocated_results, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not allocate %d results\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\ntest %*s description   absolute   operations   ratio with\n"
	.size	.L.str.1, 60

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"number %*s time       per second   test0\n\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%2i %*s\"%s\"  %5.2f sec   %5.2f M     %.2f\n"
	.size	.L.str.4, 43

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.space	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nTotal absolute time for %s: %.2f sec\n"
	.size	.L.str.6, 39

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\n%s Penalty: %.2f\n\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\ntest %*s description   absolute\n"
	.size	.L.str.8, 34

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"number %*s time\n\n"
	.size	.L.str.9, 18

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%2i %*s\"%s\"  %5.2f sec\n"
	.size	.L.str.10, 24

	.type	start_time,@object              # @start_time
	.bss
	.globl	start_time
	.p2align	3, 0x0
start_time:
	.dword	0                               # 0x0
	.size	start_time, 8

	.type	end_time,@object                # @end_time
	.globl	end_time
	.p2align	3, 0x0
end_time:
	.dword	0                               # 0x0
	.size	end_time, 8

	.type	iterations,@object              # @iterations
	.data
	.globl	iterations
	.p2align	2, 0x0
iterations:
	.word	60000                           # 0xea60
	.size	iterations, 4

	.type	init_value,@object              # @init_value
	.globl	init_value
	.p2align	3, 0x0
init_value:
	.dword	0x4008000000000000              # double 3
	.size	init_value, 8

	.type	data,@object                    # @data
	.bss
	.globl	data
	.p2align	3, 0x0
data:
	.space	16000
	.size	data, 16000

	.type	dataMaster,@object              # @dataMaster
	.globl	dataMaster
	.p2align	3, 0x0
dataMaster:
	.space	16000
	.size	dataMaster, 16000

	.type	dpb,@object                     # @dpb
	.data
	.globl	dpb
	.p2align	3, 0x0
dpb:
	.dword	data
	.size	dpb, 8

	.type	dpe,@object                     # @dpe
	.globl	dpe
	.p2align	3, 0x0
dpe:
	.dword	data+16000
	.size	dpe, 8

	.type	dMpb,@object                    # @dMpb
	.globl	dMpb
	.p2align	3, 0x0
dMpb:
	.dword	dataMaster
	.size	dMpb, 8

	.type	dMpe,@object                    # @dMpe
	.globl	dMpe
	.p2align	3, 0x0
dMpe:
	.dword	dataMaster+16000
	.size	dMpe, 8

	.type	rdpb,@object                    # @rdpb
	.globl	rdpb
	.p2align	3, 0x0
rdpb:
	.dword	data+16000
	.size	rdpb, 8

	.type	rdpe,@object                    # @rdpe
	.globl	rdpe
	.p2align	3, 0x0
rdpe:
	.dword	data
	.size	rdpe, 8

	.type	rdMpb,@object                   # @rdMpb
	.globl	rdMpb
	.p2align	3, 0x0
rdMpb:
	.dword	dataMaster+16000
	.size	rdMpb, 8

	.type	rdMpe,@object                   # @rdMpe
	.globl	rdMpe
	.p2align	3, 0x0
rdMpe:
	.dword	dataMaster
	.size	rdMpe, 8

	.type	rrdpb,@object                   # @rrdpb
	.globl	rrdpb
	.p2align	3, 0x0
rrdpb:
	.space	8
	.dword	data
	.size	rrdpb, 16

	.type	rrdpe,@object                   # @rrdpe
	.globl	rrdpe
	.p2align	3, 0x0
rrdpe:
	.space	8
	.dword	data+16000
	.size	rrdpe, 16

	.type	rrdMpb,@object                  # @rrdMpb
	.globl	rrdMpb
	.p2align	3, 0x0
rrdMpb:
	.space	8
	.dword	dataMaster
	.size	rrdMpb, 16

	.type	rrdMpe,@object                  # @rrdMpe
	.globl	rrdMpe
	.p2align	3, 0x0
rrdMpe:
	.space	8
	.dword	dataMaster+16000
	.size	rrdMpe, 16

	.type	.L.str.50,@object               # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"vector::_M_default_append"
	.size	.L.str.50, 26

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"test %i failed\n"
	.size	.L.str.51, 16

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"sort test %i failed\n"
	.size	.L.str.52, 21

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym data
	.addrsig_sym dataMaster
