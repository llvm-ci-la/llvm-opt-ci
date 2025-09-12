	.file	"functionobjects.cpp"
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
	.globl	_Z9summarizePKciiii             # -- Begin function _Z9summarizePKciiii
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
	ori	$a0, $zero, 0
	movgr2fr.w	$fa0, $s3
	movgr2fr.w	$fa1, $s2
	lu32i.d	$a0, -97152
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	lu52i.d	$a0, $a0, 1042
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fs1, $fa0, $fa1
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
	.globl	_Z5timerv                       # -- Begin function _Z5timerv
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
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -97152
	lu52i.d	$a1, $a1, 1042
	movgr2fr.d	$fa1, $a1
	fdiv.d	$fa0, $fa0, $fa1
	st.d	$a0, $a2, %pc_lo12(end_time)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_Z5timerv, .Lfunc_end4-_Z5timerv
                                        # -- End function
	.globl	_Z19less_than_function1PKvS0_   # -- Begin function _Z19less_than_function1PKvS0_
	.p2align	5
	.type	_Z19less_than_function1PKvS0_,@function
_Z19less_than_function1PKvS0_:          # @_Z19less_than_function1PKvS0_
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fcmp.clt.d	$fcc1, $fa1, $fa0
	movcf2gr	$a0, $fcc1
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end5:
	.size	_Z19less_than_function1PKvS0_, .Lfunc_end5-_Z19less_than_function1PKvS0_
                                        # -- End function
	.globl	_Z19less_than_function2dd       # -- Begin function _Z19less_than_function2dd
	.p2align	5
	.type	_Z19less_than_function2dd,@function
_Z19less_than_function2dd:              # @_Z19less_than_function2dd
# %bb.0:
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end6:
	.size	_Z19less_than_function2dd, .Lfunc_end6-_Z19less_than_function2dd
                                        # -- End function
	.globl	_ZNK17less_than_functorclERKdS1_ # -- Begin function _ZNK17less_than_functorclERKdS1_
	.p2align	5
	.type	_ZNK17less_than_functorclERKdS1_,@function
_ZNK17less_than_functorclERKdS1_:       # @_ZNK17less_than_functorclERKdS1_
# %bb.0:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end7:
	.size	_ZNK17less_than_functorclERKdS1_, .Lfunc_end7-_ZNK17less_than_functorclERKdS1_
                                        # -- End function
	.globl	_Z18quicksort_functionPdS_PFbddE # -- Begin function _Z18quicksort_functionPdS_PFbddE
	.p2align	5
	.type	_Z18quicksort_functionPdS_PFbddE,@function
_Z18quicksort_functionPdS_PFbddE:       # @_Z18quicksort_functionPdS_PFbddE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	sub.d	$a3, $a1, $a0
	ori	$a4, $zero, 9
	blt	$a3, $a4, .LBB8_8
# %bb.1:
	move	$fp, $a2
	fld.d	$fs0, $a0, 0
	move	$s0, $a1
	move	$s2, $a1
	move	$s1, $a0
	move	$s3, $a0
	.p2align	4, , 16
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	fld.d	$fa1, $s2, -8
	addi.d	$s2, $s2, -8
	fmov.d	$fa0, $fs0
	jirl	$ra, $fp, 0
	bnez	$a0, .LBB8_2
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	bgeu	$s3, $s2, .LBB8_9
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	addi.d	$s3, $s3, -8
	.p2align	4, , 16
.LBB8_5:                                # %.preheader
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s3, 8
	addi.d	$s3, $s3, 8
	fmov.d	$fa1, $fs0
	jirl	$ra, $fp, 0
	bnez	$a0, .LBB8_5
# %bb.6:                                #   in Loop: Header=BB8_2 Depth=1
	bgeu	$s3, $s2, .LBB8_9
# %bb.7:                                #   in Loop: Header=BB8_2 Depth=1
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $s2, 0
	fst.d	$fa0, $s2, 0
	fst.d	$fa1, $s3, 0
	b	.LBB8_2
.LBB8_8:
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB8_9:
	addi.d	$s2, $s2, 8
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_Z9quicksortIPdPFbddEEvT_S3_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $fp
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_Z9quicksortIPdPFbddEEvT_S3_T0_)
	jr	$t8
.Lfunc_end8:
	.size	_Z18quicksort_functionPdS_PFbddE, .Lfunc_end8-_Z18quicksort_functionPdS_PFbddE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z9quicksortIPdPFbddEEvT_S3_T0_,"axG",@progbits,_Z9quicksortIPdPFbddEEvT_S3_T0_,comdat
	.weak	_Z9quicksortIPdPFbddEEvT_S3_T0_ # -- Begin function _Z9quicksortIPdPFbddEEvT_S3_T0_
	.p2align	5
	.type	_Z9quicksortIPdPFbddEEvT_S3_T0_,@function
_Z9quicksortIPdPFbddEEvT_S3_T0_:        # @_Z9quicksortIPdPFbddEEvT_S3_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	move	$fp, $a1
	move	$s1, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 9
	blt	$a0, $a1, .LBB9_11
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a2
	addi.d	$s3, $fp, -8
	ori	$s4, $zero, 8
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %tailrecurse
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$s2, $s2, 8
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_Z9quicksortIPdPFbddEEvT_S3_T0_)
	jirl	$ra, $ra, 0
	move	$s1, $s2
	bge	$s4, $s6, .LBB9_11
.LBB9_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
                                        #       Child Loop BB9_5 Depth 3
                                        #       Child Loop BB9_8 Depth 3
	fld.d	$fs0, $s1, 0
	move	$s2, $fp
	move	$s5, $s1
	.p2align	4, , 16
.LBB9_4:                                #   Parent Loop BB9_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_5 Depth 3
                                        #       Child Loop BB9_8 Depth 3
	sub.d	$s6, $s3, $s2
	.p2align	4, , 16
.LBB9_5:                                #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $s2, -8
	addi.d	$s2, $s2, -8
	fmov.d	$fa0, $fs0
	jirl	$ra, $s0, 0
	addi.d	$s6, $s6, 8
	bnez	$a0, .LBB9_5
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=2
	bgeu	$s5, $s2, .LBB9_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB9_4 Depth=2
	addi.d	$s5, $s5, -8
	.p2align	4, , 16
.LBB9_8:                                # %.preheader
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $s5, 8
	addi.d	$s5, $s5, 8
	fmov.d	$fa1, $fs0
	jirl	$ra, $s0, 0
	bnez	$a0, .LBB9_8
# %bb.9:                                #   in Loop: Header=BB9_4 Depth=2
	bgeu	$s5, $s2, .LBB9_2
# %bb.10:                               #   in Loop: Header=BB9_4 Depth=2
	fld.d	$fa0, $s5, 0
	fld.d	$fa1, $s2, 0
	fst.d	$fa0, $s2, 0
	fst.d	$fa1, $s5, 0
	b	.LBB9_4
.LBB9_11:                               # %tailrecurse._crit_edge
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end9:
	.size	_Z9quicksortIPdPFbddEEvT_S3_T0_, .Lfunc_end9-_Z9quicksortIPdPFbddEEvT_S3_T0_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
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
	move	$fp, $a0
	ori	$s2, $zero, 300
	lu12i.w	$a0, 2
	ori	$s1, $zero, 2
	ori	$s3, $a0, 1808
	blt	$fp, $s1, .LBB10_3
# %bb.1:
	move	$s0, $a1
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$fp, $s1, .LBB10_3
# %bb.2:
	ld.d	$a0, $s0, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB10_3:                               # %.thread
	addi.w	$a0, $s3, 123
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s3, 0
	slli.d	$fp, $s8, 3
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	bltz	$s8, .LBB10_8
# %bb.4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	beqz	$s8, .LBB10_9
# %bb.5:                                # %.lr.ph.preheader
	move	$s1, $a0
	move	$fp, $zero
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$s0, $a0, 3
	.p2align	4, , 16
.LBB10_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fstx.d	$fa0, $s1, $fp
	addi.d	$fp, $fp, 8
	bne	$s0, $fp, .LBB10_6
# %bb.7:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB10_10
.LBB10_8:                               # %.thread374
	addi.w	$s3, $zero, -1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s3
	b	.LBB10_10
.LBB10_9:
	move	$a0, $fp
.LBB10_10:                              # %._crit_edge
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s2, 0
	move	$s1, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	blez	$a1, .LBB10_191
# %bb.11:                               # %.lr.ph296
	addi.d	$s0, $a0, -8
	ori	$s2, $zero, 2
	pcalau12i	$a0, %pc_hi20(_Z19less_than_function1PKvS0_)
	addi.d	$s3, $a0, %pc_lo12(_Z19less_than_function1PKvS0_)
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s4, $a0, %pc_lo12(.L.str.11)
	move	$fp, $zero
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	b	.LBB10_14
	.p2align	4, , 16
.LBB10_12:                              #   in Loop: Header=BB10_14 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_13:                              # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB10_14 Depth=1
	addi.w	$fp, $fp, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB10_21
.LBB10_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
	blt	$s8, $s2, .LBB10_19
# %bb.15:                               #   in Loop: Header=BB10_14 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_16:                              # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
                                        #   in Loop: Header=BB10_14 Depth=1
	ori	$a2, $zero, 8
	move	$a0, $s1
	move	$a1, $s8
	move	$a3, $s3
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_17:                              #   Parent Loop BB10_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_13
# %bb.18:                               #   in Loop: Header=BB10_17 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_17
	b	.LBB10_12
.LBB10_19:                              #   in Loop: Header=BB10_14 Depth=1
	bne	$s8, $s5, .LBB10_16
# %bb.20:                               #   in Loop: Header=BB10_14 Depth=1
	fld.d	$fa0, $s6, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_16
.LBB10_21:                              # %.lr.ph298
	alsl.d	$s3, $s8, $s1, 3
	ori	$fp, $zero, 1
	pcalau12i	$a0, %pc_hi20(_Z19less_than_function2dd)
	addi.d	$s4, $a0, %pc_lo12(_Z19less_than_function2dd)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s5, $a0, %pc_lo12(.L.str.11)
	move	$s7, $zero
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB10_24
	.p2align	4, , 16
.LBB10_22:                              #   in Loop: Header=BB10_24 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_23:                              # %_Z13verify_sortedIPdEvT_S1_.exit192
                                        #   in Loop: Header=BB10_24 Depth=1
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s7, $a0, .LBB10_38
.LBB10_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_26 Depth 2
                                        #       Child Loop BB10_29 Depth 3
                                        #     Child Loop BB10_34 Depth 2
	bge	$fp, $s8, .LBB10_36
# %bb.25:                               #   in Loop: Header=BB10_24 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	move	$a0, $s3
	move	$a1, $s1
	.p2align	4, , 16
.LBB10_26:                              #   Parent Loop BB10_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_29 Depth 3
	fld.d	$fa1, $a0, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB10_26
# %bb.27:                               #   in Loop: Header=BB10_26 Depth=2
	bgeu	$a1, $a0, .LBB10_32
# %bb.28:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB10_26 Depth=2
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB10_29:                              # %.preheader.i
                                        #   Parent Loop BB10_24 Depth=1
                                        #     Parent Loop BB10_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB10_29
# %bb.30:                               #   in Loop: Header=BB10_26 Depth=2
	bgeu	$a1, $a0, .LBB10_32
# %bb.31:                               #   in Loop: Header=BB10_26 Depth=2
	fst.d	$fa2, $a0, 0
	fst.d	$fa1, $a1, 0
	b	.LBB10_26
	.p2align	4, , 16
.LBB10_32:                              #   in Loop: Header=BB10_24 Depth=1
	addi.d	$s6, $a0, 8
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_Z9quicksortIPdPFbddEEvT_S3_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_Z9quicksortIPdPFbddEEvT_S3_T0_)
	jirl	$ra, $ra, 0
.LBB10_33:                              # %_Z18quicksort_functionPdS_PFbddE.exit.preheader
                                        #   in Loop: Header=BB10_24 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_34:                              # %_Z18quicksort_functionPdS_PFbddE.exit
                                        #   Parent Loop BB10_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_23
# %bb.35:                               #   in Loop: Header=BB10_34 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_34
	b	.LBB10_22
.LBB10_36:                              #   in Loop: Header=BB10_24 Depth=1
	bne	$s8, $fp, .LBB10_33
# %bb.37:                               #   in Loop: Header=BB10_24 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_33
.LBB10_38:                              # %.lr.ph300
	alsl.d	$s3, $s8, $s1, 3
	ori	$fp, $zero, 2
	pcalau12i	$a0, %pc_hi20(_Z19less_than_function2dd)
	addi.d	$s4, $a0, %pc_lo12(_Z19less_than_function2dd)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s5, $a0, %pc_lo12(.L.str.11)
	move	$s2, $zero
	ori	$s6, $zero, 1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB10_41
	.p2align	4, , 16
.LBB10_39:                              #   in Loop: Header=BB10_41 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_40:                              # %_Z13verify_sortedIPdEvT_S1_.exit197
                                        #   in Loop: Header=BB10_41 Depth=1
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB10_48
.LBB10_41:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_44 Depth 2
	blt	$s8, $fp, .LBB10_46
# %bb.42:                               #   in Loop: Header=BB10_41 Depth=1
	move	$a0, $s1
	move	$a1, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_43:                              # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit193
                                        #   in Loop: Header=BB10_41 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_Z9quicksortIPdPFbddEEvT_S3_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_44:                              #   Parent Loop BB10_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_40
# %bb.45:                               #   in Loop: Header=BB10_44 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_44
	b	.LBB10_39
.LBB10_46:                              #   in Loop: Header=BB10_41 Depth=1
	bne	$s8, $s6, .LBB10_43
# %bb.47:                               #   in Loop: Header=BB10_41 Depth=1
	fld.d	$fa0, $s7, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_43
.LBB10_48:                              # %.lr.ph302
	ori	$fp, $zero, 1
	pcalau12i	$a0, %pc_hi20(_Z19less_than_function2dd)
	addi.d	$s4, $a0, %pc_lo12(_Z19less_than_function2dd)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s5, $a0, %pc_lo12(.L.str.11)
	move	$s7, $zero
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB10_51
	.p2align	4, , 16
.LBB10_49:                              #   in Loop: Header=BB10_51 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_50:                              # %_Z13verify_sortedIPdEvT_S1_.exit205
                                        #   in Loop: Header=BB10_51 Depth=1
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s7, $a0, .LBB10_65
.LBB10_51:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_53 Depth 2
                                        #       Child Loop BB10_56 Depth 3
                                        #     Child Loop BB10_61 Depth 2
	bge	$fp, $s8, .LBB10_63
# %bb.52:                               #   in Loop: Header=BB10_51 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	move	$a0, $s3
	move	$a1, $s1
	.p2align	4, , 16
.LBB10_53:                              #   Parent Loop BB10_51 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_56 Depth 3
	fld.d	$fa1, $a0, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB10_53
# %bb.54:                               #   in Loop: Header=BB10_53 Depth=2
	bgeu	$a1, $a0, .LBB10_59
# %bb.55:                               # %.preheader.i200.preheader
                                        #   in Loop: Header=BB10_53 Depth=2
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB10_56:                              # %.preheader.i200
                                        #   Parent Loop BB10_51 Depth=1
                                        #     Parent Loop BB10_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB10_56
# %bb.57:                               #   in Loop: Header=BB10_53 Depth=2
	bgeu	$a1, $a0, .LBB10_59
# %bb.58:                               #   in Loop: Header=BB10_53 Depth=2
	fst.d	$fa2, $a0, 0
	fst.d	$fa1, $a1, 0
	b	.LBB10_53
	.p2align	4, , 16
.LBB10_59:                              #   in Loop: Header=BB10_51 Depth=1
	addi.d	$s6, $a0, 8
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_Z9quicksortIPdPFbddEEvT_S3_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_Z9quicksortIPdPFbddEEvT_S3_T0_)
	jirl	$ra, $ra, 0
.LBB10_60:                              # %_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_.exit.preheader
                                        #   in Loop: Header=BB10_51 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_61:                              # %_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_.exit
                                        #   Parent Loop BB10_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_50
# %bb.62:                               #   in Loop: Header=BB10_61 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_61
	b	.LBB10_49
.LBB10_63:                              #   in Loop: Header=BB10_51 Depth=1
	bne	$s8, $fp, .LBB10_60
# %bb.64:                               #   in Loop: Header=BB10_51 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_60
.LBB10_65:                              # %.lr.ph304
	add.d	$s3, $s1, $s2
	clz.d	$a0, $s8
	slli.d	$a0, $a0, 1
	xori	$a0, $a0, 126
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$fp, $s1, 8
	addi.d	$a0, $s1, 128
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(_Z19less_than_function2dd)
	addi.d	$a0, $a0, %pc_lo12(_Z19less_than_function2dd)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s4, $zero, 128
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s7, $zero
	ori	$s6, $zero, 2
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	b	.LBB10_68
	.p2align	4, , 16
.LBB10_66:                              #   in Loop: Header=BB10_68 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_67:                              # %_Z13verify_sortedIPdEvT_S1_.exit210
                                        #   in Loop: Header=BB10_68 Depth=1
	addi.w	$s7, $s7, 1
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s7, $a0, .LBB10_103
.LBB10_68:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_97 Depth 2
                                        #       Child Loop BB10_100 Depth 3
                                        #     Child Loop BB10_74 Depth 2
                                        #       Child Loop BB10_79 Depth 3
                                        #     Child Loop BB10_82 Depth 2
                                        #       Child Loop BB10_84 Depth 3
                                        #     Child Loop BB10_89 Depth 2
	bge	$s5, $s8, .LBB10_85
# %bb.69:                               # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit206
                                        #   in Loop: Header=BB10_68 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 17
	blt	$s8, $a0, .LBB10_92
# %bb.70:                               # %.preheader322.preheader
                                        #   in Loop: Header=BB10_68 Depth=1
	ori	$s8, $zero, 8
	move	$s5, $fp
	move	$s2, $s1
	b	.LBB10_74
.LBB10_71:                              #   in Loop: Header=BB10_74 Depth=2
	fst.d	$fa0, $a0, 8
	.p2align	4, , 16
.LBB10_72:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i
                                        #   in Loop: Header=BB10_74 Depth=2
	move	$a0, $s1
.LBB10_73:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i
                                        #   in Loop: Header=BB10_74 Depth=2
	fst.d	$fs0, $a0, 0
	addi.d	$s8, $s8, 8
	addi.d	$s5, $s5, 8
	beq	$s8, $s4, .LBB10_80
.LBB10_74:                              # %.preheader322
                                        #   Parent Loop BB10_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_79 Depth 3
	fldx.d	$fs0, $s1, $s8
	fld.d	$fa0, $s1, 0
	move	$a0, $s2
	fcmp.cule.d	$fcc0, $fa0, $fs0
	add.d	$s2, $s1, $s8
	bcnez	$fcc0, .LBB10_77
# %bb.75:                               #   in Loop: Header=BB10_74 Depth=2
	ori	$a1, $zero, 9
	bltu	$s8, $a1, .LBB10_71
# %bb.76:                               #   in Loop: Header=BB10_74 Depth=2
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB10_72
	.p2align	4, , 16
.LBB10_77:                              #   in Loop: Header=BB10_74 Depth=2
	fld.d	$fa0, $a0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s2
	bcnez	$fcc0, .LBB10_73
# %bb.78:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB10_74 Depth=2
	move	$a0, $s5
	.p2align	4, , 16
.LBB10_79:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB10_68 Depth=1
                                        #     Parent Loop BB10_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB10_79
	b	.LBB10_73
	.p2align	4, , 16
.LBB10_80:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB10_68 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ori	$s5, $zero, 1
	b	.LBB10_82
	.p2align	4, , 16
.LBB10_81:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_.exit.i.i
                                        #   in Loop: Header=BB10_82 Depth=2
	addi.d	$a0, $a0, 8
	fst.d	$fa0, $a1, 0
	beq	$a0, $s3, .LBB10_88
.LBB10_82:                              # %.lr.ph.i.i
                                        #   Parent Loop BB10_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_84 Depth 3
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a1, $a0
	bcnez	$fcc0, .LBB10_81
# %bb.83:                               # %.lr.ph.i.i12.i.preheader
                                        #   in Loop: Header=BB10_82 Depth=2
	move	$a1, $a0
	.p2align	4, , 16
.LBB10_84:                              # %.lr.ph.i.i12.i
                                        #   Parent Loop BB10_68 Depth=1
                                        #     Parent Loop BB10_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fst.d	$fa1, $a1, 0
	fld.d	$fa1, $a1, -16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB10_84
	b	.LBB10_81
.LBB10_85:                              #   in Loop: Header=BB10_68 Depth=1
	beqz	$s8, .LBB10_88
# %bb.86:                               #   in Loop: Header=BB10_68 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $s5, .LBB10_91
# %bb.87:                               # %.thread376
                                        #   in Loop: Header=BB10_68 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $s1, 0
	pcalau12i	$a0, %pc_hi20(_Z19less_than_function2dd)
	addi.d	$a3, $a0, %pc_lo12(_Z19less_than_function2dd)
	move	$a0, $s1
	move	$a1, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB10_88:                              # %_ZSt4sortIPdPFbddEEvT_S3_T0_.exit.preheader
                                        #   in Loop: Header=BB10_68 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_89:                              # %_ZSt4sortIPdPFbddEEvT_S3_T0_.exit
                                        #   Parent Loop BB10_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_67
# %bb.90:                               #   in Loop: Header=BB10_89 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_89
	b	.LBB10_66
.LBB10_91:                              #   in Loop: Header=BB10_68 Depth=1
	pcalau12i	$a0, %pc_hi20(_Z19less_than_function2dd)
	addi.d	$a3, $a0, %pc_lo12(_Z19less_than_function2dd)
	move	$a0, $s1
	move	$a1, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB10_92:                              # %.lr.ph.i17.i.preheader
                                        #   in Loop: Header=BB10_68 Depth=1
	move	$a2, $fp
	move	$s8, $s1
	b	.LBB10_97
	.p2align	4, , 16
.LBB10_93:                              #   in Loop: Header=BB10_97 Depth=2
	sub.d	$a2, $s8, $s1
	srai.d	$a0, $a2, 3
	blt	$a0, $s6, .LBB10_101
# %bb.94:                               #   in Loop: Header=BB10_97 Depth=2
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB10_95:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i
                                        #   in Loop: Header=BB10_97 Depth=2
	move	$a0, $s1
.LBB10_96:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i
                                        #   in Loop: Header=BB10_97 Depth=2
	addi.d	$a2, $s8, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $s3, .LBB10_88
.LBB10_97:                              # %.lr.ph.i17.i
                                        #   Parent Loop BB10_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_100 Depth 3
	move	$a1, $s8
	move	$s8, $a2
	fld.d	$fs0, $a2, 0
	fld.d	$fa0, $s1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB10_93
# %bb.98:                               #   in Loop: Header=BB10_97 Depth=2
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s8
	bcnez	$fcc0, .LBB10_96
# %bb.99:                               # %.lr.ph.i.i24.i.preheader
                                        #   in Loop: Header=BB10_97 Depth=2
	move	$a0, $s8
	.p2align	4, , 16
.LBB10_100:                             # %.lr.ph.i.i24.i
                                        #   Parent Loop BB10_68 Depth=1
                                        #     Parent Loop BB10_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB10_100
	b	.LBB10_96
.LBB10_101:                             #   in Loop: Header=BB10_97 Depth=2
	move	$a0, $s1
	ori	$a3, $zero, 8
	bne	$a2, $a3, .LBB10_96
# %bb.102:                              #   in Loop: Header=BB10_97 Depth=2
	fst.d	$fa0, $a1, 8
	b	.LBB10_95
.LBB10_103:                             # %.lr.ph306
	alsl.d	$s5, $s8, $s1, 3
	ori	$fp, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s6, $a0, %pc_lo12(.L.str.11)
	move	$s2, $zero
	ori	$s4, $zero, 1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB10_106
	.p2align	4, , 16
.LBB10_104:                             #   in Loop: Header=BB10_106 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_105:                             # %_Z13verify_sortedIPdEvT_S1_.exit215
                                        #   in Loop: Header=BB10_106 Depth=1
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB10_113
.LBB10_106:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_109 Depth 2
	blt	$s8, $fp, .LBB10_111
# %bb.107:                              #   in Loop: Header=BB10_106 Depth=1
	move	$a0, $s1
	move	$a1, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_108:                             # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit211
                                        #   in Loop: Header=BB10_106 Depth=1
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z9quicksortIPd17less_than_functorEvT_S2_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_109:                             #   Parent Loop BB10_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_105
# %bb.110:                              #   in Loop: Header=BB10_109 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_109
	b	.LBB10_104
.LBB10_111:                             #   in Loop: Header=BB10_106 Depth=1
	bne	$s8, $s4, .LBB10_108
# %bb.112:                              #   in Loop: Header=BB10_106 Depth=1
	fld.d	$fa0, $s7, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_108
.LBB10_113:                             # %.lr.ph308
	ori	$fp, $zero, 2
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s6, $a0, %pc_lo12(.L.str.11)
	move	$s7, $zero
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_114:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_117 Depth 2
	beqz	$s8, .LBB10_116
# %bb.115:                              #   in Loop: Header=BB10_114 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_)
	jirl	$ra, $ra, 0
.LBB10_116:                             # %_ZSt4sortIPd17less_than_functorEvT_S2_T0_.exit.preheader
                                        #   in Loop: Header=BB10_114 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_117:                             # %_ZSt4sortIPd17less_than_functorEvT_S2_T0_.exit
                                        #   Parent Loop BB10_114 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_120
# %bb.118:                              #   in Loop: Header=BB10_117 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_117
# %bb.119:                              #   in Loop: Header=BB10_114 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_120:                             # %_Z13verify_sortedIPdEvT_S1_.exit220
                                        #   in Loop: Header=BB10_114 Depth=1
	blt	$s8, $fp, .LBB10_123
# %bb.121:                              #   in Loop: Header=BB10_114 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_122:                             # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit221
                                        #   in Loop: Header=BB10_114 Depth=1
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bne	$s7, $a0, .LBB10_114
	b	.LBB10_125
.LBB10_123:                             #   in Loop: Header=BB10_114 Depth=1
	bne	$s8, $s4, .LBB10_122
# %bb.124:                              #   in Loop: Header=BB10_114 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_122
.LBB10_125:                             # %.lr.ph310
	ori	$fp, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s6, $a0, %pc_lo12(.L.str.11)
	move	$s2, $zero
	ori	$s4, $zero, 1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB10_128
	.p2align	4, , 16
.LBB10_126:                             #   in Loop: Header=BB10_128 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_127:                             # %_Z13verify_sortedIPdEvT_S1_.exit226
                                        #   in Loop: Header=BB10_128 Depth=1
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB10_135
.LBB10_128:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_131 Depth 2
	blt	$s8, $fp, .LBB10_133
# %bb.129:                              #   in Loop: Header=BB10_128 Depth=1
	move	$a0, $s1
	move	$a1, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_130:                             # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit222
                                        #   in Loop: Header=BB10_128 Depth=1
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_131:                             #   Parent Loop BB10_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_127
# %bb.132:                              #   in Loop: Header=BB10_131 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_131
	b	.LBB10_126
.LBB10_133:                             #   in Loop: Header=BB10_128 Depth=1
	bne	$s8, $s4, .LBB10_130
# %bb.134:                              #   in Loop: Header=BB10_128 Depth=1
	fld.d	$fa0, $s7, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_130
.LBB10_135:                             # %.lr.ph312
	ori	$fp, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s6, $a0, %pc_lo12(.L.str.11)
	move	$s4, $zero
	ori	$s7, $zero, 1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB10_138
	.p2align	4, , 16
.LBB10_136:                             #   in Loop: Header=BB10_138 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_137:                             # %_Z13verify_sortedIPdEvT_S1_.exit232
                                        #   in Loop: Header=BB10_138 Depth=1
	addi.w	$s4, $s4, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB10_147
.LBB10_138:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_142 Depth 2
	blt	$s8, $fp, .LBB10_144
# %bb.139:                              #   in Loop: Header=BB10_138 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_140:                             # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit227
                                        #   in Loop: Header=BB10_138 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_)
	jirl	$ra, $ra, 0
.LBB10_141:                             # %_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_.exit.preheader
                                        #   in Loop: Header=BB10_138 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_142:                             # %_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_.exit
                                        #   Parent Loop BB10_138 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_137
# %bb.143:                              #   in Loop: Header=BB10_142 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_142
	b	.LBB10_136
.LBB10_144:                             #   in Loop: Header=BB10_138 Depth=1
	beqz	$s8, .LBB10_141
# %bb.145:                              #   in Loop: Header=BB10_138 Depth=1
	bne	$s8, $s7, .LBB10_140
# %bb.146:                              #   in Loop: Header=BB10_138 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_140
.LBB10_147:                             # %.lr.ph314
	ori	$fp, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s6, $a0, %pc_lo12(.L.str.11)
	move	$s2, $zero
	ori	$s4, $zero, 1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB10_150
	.p2align	4, , 16
.LBB10_148:                             #   in Loop: Header=BB10_150 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_149:                             # %_Z13verify_sortedIPdEvT_S1_.exit237
                                        #   in Loop: Header=BB10_150 Depth=1
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB10_157
.LBB10_150:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_153 Depth 2
	blt	$s8, $fp, .LBB10_155
# %bb.151:                              #   in Loop: Header=BB10_150 Depth=1
	move	$a0, $s1
	move	$a1, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_152:                             # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit233
                                        #   in Loop: Header=BB10_150 Depth=1
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z9quicksortIPdSt4lessIdEEvT_S3_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_153:                             #   Parent Loop BB10_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_149
# %bb.154:                              #   in Loop: Header=BB10_153 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_153
	b	.LBB10_148
.LBB10_155:                             #   in Loop: Header=BB10_150 Depth=1
	bne	$s8, $s4, .LBB10_152
# %bb.156:                              #   in Loop: Header=BB10_150 Depth=1
	fld.d	$fa0, $s7, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_152
.LBB10_157:                             # %.lr.ph316
	ori	$fp, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s6, $a0, %pc_lo12(.L.str.11)
	move	$s4, $zero
	ori	$s7, $zero, 1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB10_160
	.p2align	4, , 16
.LBB10_158:                             #   in Loop: Header=BB10_160 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_159:                             # %_Z13verify_sortedIPdEvT_S1_.exit243
                                        #   in Loop: Header=BB10_160 Depth=1
	addi.w	$s4, $s4, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB10_169
.LBB10_160:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_164 Depth 2
	blt	$s8, $fp, .LBB10_166
# %bb.161:                              #   in Loop: Header=BB10_160 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_162:                             # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit238
                                        #   in Loop: Header=BB10_160 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_)
	jirl	$ra, $ra, 0
.LBB10_163:                             # %_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.preheader
                                        #   in Loop: Header=BB10_160 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_164:                             # %_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit
                                        #   Parent Loop BB10_160 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_159
# %bb.165:                              #   in Loop: Header=BB10_164 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_164
	b	.LBB10_158
.LBB10_166:                             #   in Loop: Header=BB10_160 Depth=1
	beqz	$s8, .LBB10_163
# %bb.167:                              #   in Loop: Header=BB10_160 Depth=1
	bne	$s8, $s7, .LBB10_162
# %bb.168:                              #   in Loop: Header=BB10_160 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_162
.LBB10_169:                             # %.lr.ph318
	ori	$fp, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s6, $a0, %pc_lo12(.L.str.11)
	move	$s2, $zero
	ori	$s4, $zero, 1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB10_172
	.p2align	4, , 16
.LBB10_170:                             #   in Loop: Header=BB10_172 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_171:                             # %_Z13verify_sortedIPdEvT_S1_.exit248
                                        #   in Loop: Header=BB10_172 Depth=1
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB10_179
.LBB10_172:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_175 Depth 2
	blt	$s8, $fp, .LBB10_177
# %bb.173:                              #   in Loop: Header=BB10_172 Depth=1
	move	$a0, $s1
	move	$a1, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_174:                             # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit244
                                        #   in Loop: Header=BB10_172 Depth=1
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_Z9quicksortIPdEvT_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_175:                             #   Parent Loop BB10_172 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a0, .LBB10_171
# %bb.176:                              #   in Loop: Header=BB10_175 Depth=2
	add.d	$a1, $s1, $a0
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_175
	b	.LBB10_170
.LBB10_177:                             #   in Loop: Header=BB10_172 Depth=1
	bne	$s8, $s4, .LBB10_174
# %bb.178:                              #   in Loop: Header=BB10_172 Depth=1
	fld.d	$fa0, $s7, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_174
.LBB10_179:                             # %.lr.ph320
	addi.d	$fp, $s1, 8
	ori	$s4, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s5, $a0, %pc_lo12(.L.str.11)
	move	$s6, $zero
	ori	$s7, $zero, 1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB10_182
	.p2align	4, , 16
.LBB10_180:                             #   in Loop: Header=BB10_182 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_181:                             # %_Z13verify_sortedIPdEvT_S1_.exit254
                                        #   in Loop: Header=BB10_182 Depth=1
	addi.w	$s6, $s6, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB10_191
.LBB10_182:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_186 Depth 2
	blt	$s8, $s4, .LBB10_188
# %bb.183:                              #   in Loop: Header=BB10_182 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_184:                             # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit249
                                        #   in Loop: Header=BB10_182 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jirl	$ra, $ra, 0
.LBB10_185:                             # %_ZSt4sortIPdEvT_S1_.exit.preheader
                                        #   in Loop: Header=BB10_182 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	.p2align	4, , 16
.LBB10_186:                             # %_ZSt4sortIPdEvT_S1_.exit
                                        #   Parent Loop BB10_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB10_181
# %bb.187:                              #   in Loop: Header=BB10_186 Depth=2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, 8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB10_186
	b	.LBB10_180
.LBB10_188:                             #   in Loop: Header=BB10_182 Depth=1
	beqz	$s8, .LBB10_185
# %bb.189:                              #   in Loop: Header=BB10_182 Depth=1
	bne	$s8, $s7, .LBB10_184
# %bb.190:                              #   in Loop: Header=BB10_182 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $s1, 0
	b	.LBB10_184
.LBB10_191:                             # %._crit_edge321
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
	.cfi_endproc
                                        # -- End function
	.section	.text._Z9quicksortIPd17less_than_functorEvT_S2_T0_,"axG",@progbits,_Z9quicksortIPd17less_than_functorEvT_S2_T0_,comdat
	.weak	_Z9quicksortIPd17less_than_functorEvT_S2_T0_ # -- Begin function _Z9quicksortIPd17less_than_functorEvT_S2_T0_
	.p2align	5
	.type	_Z9quicksortIPd17less_than_functorEvT_S2_T0_,@function
_Z9quicksortIPd17less_than_functorEvT_S2_T0_: # @_Z9quicksortIPd17less_than_functorEvT_S2_T0_
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
	blt	$a1, $a2, .LBB11_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %tailrecurse
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z9quicksortIPd17less_than_functorEvT_S2_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB11_11
.LBB11_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_4 Depth 2
                                        #       Child Loop BB11_5 Depth 3
                                        #       Child Loop BB11_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB11_4:                               #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_5 Depth 3
                                        #       Child Loop BB11_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB11_5:                               #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB11_5
# %bb.6:                                #   in Loop: Header=BB11_4 Depth=2
	bgeu	$a2, $a1, .LBB11_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB11_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB11_8:                               # %.preheader
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB11_8
# %bb.9:                                #   in Loop: Header=BB11_4 Depth=2
	bgeu	$a2, $a1, .LBB11_2
# %bb.10:                               #   in Loop: Header=BB11_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB11_4
.LBB11_11:                              # %tailrecurse._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	_Z9quicksortIPd17less_than_functorEvT_S2_T0_, .Lfunc_end11-_Z9quicksortIPd17less_than_functorEvT_S2_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_,"axG",@progbits,_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_,comdat
	.weak	_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_ # -- Begin function _Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_
	.p2align	5
	.type	_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_,@function
_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_: # @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_
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
	blt	$a1, $a2, .LBB12_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %tailrecurse
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB12_11
.LBB12_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
                                        #       Child Loop BB12_5 Depth 3
                                        #       Child Loop BB12_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB12_4:                               #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_5 Depth 3
                                        #       Child Loop BB12_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB12_5:                               #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB12_5
# %bb.6:                                #   in Loop: Header=BB12_4 Depth=2
	bgeu	$a2, $a1, .LBB12_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB12_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB12_8:                               # %.preheader
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB12_8
# %bb.9:                                #   in Loop: Header=BB12_4 Depth=2
	bgeu	$a2, $a1, .LBB12_2
# %bb.10:                               #   in Loop: Header=BB12_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB12_4
.LBB12_11:                              # %tailrecurse._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_, .Lfunc_end12-_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z9quicksortIPdSt4lessIdEEvT_S3_T0_,"axG",@progbits,_Z9quicksortIPdSt4lessIdEEvT_S3_T0_,comdat
	.weak	_Z9quicksortIPdSt4lessIdEEvT_S3_T0_ # -- Begin function _Z9quicksortIPdSt4lessIdEEvT_S3_T0_
	.p2align	5
	.type	_Z9quicksortIPdSt4lessIdEEvT_S3_T0_,@function
_Z9quicksortIPdSt4lessIdEEvT_S3_T0_:    # @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_
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
	blt	$a1, $a2, .LBB13_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %tailrecurse
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z9quicksortIPdSt4lessIdEEvT_S3_T0_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB13_11
.LBB13_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
                                        #       Child Loop BB13_5 Depth 3
                                        #       Child Loop BB13_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB13_4:                               #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_5 Depth 3
                                        #       Child Loop BB13_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB13_5:                               #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB13_5
# %bb.6:                                #   in Loop: Header=BB13_4 Depth=2
	bgeu	$a2, $a1, .LBB13_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB13_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB13_8:                               # %.preheader
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB13_8
# %bb.9:                                #   in Loop: Header=BB13_4 Depth=2
	bgeu	$a2, $a1, .LBB13_2
# %bb.10:                               #   in Loop: Header=BB13_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB13_4
.LBB13_11:                              # %tailrecurse._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	_Z9quicksortIPdSt4lessIdEEvT_S3_T0_, .Lfunc_end13-_Z9quicksortIPdSt4lessIdEEvT_S3_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z9quicksortIPdEvT_S1_,"axG",@progbits,_Z9quicksortIPdEvT_S1_,comdat
	.weak	_Z9quicksortIPdEvT_S1_          # -- Begin function _Z9quicksortIPdEvT_S1_
	.p2align	5
	.type	_Z9quicksortIPdEvT_S1_,@function
_Z9quicksortIPdEvT_S1_:                 # @_Z9quicksortIPdEvT_S1_
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
	blt	$a1, $a2, .LBB14_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %tailrecurse
                                        #   in Loop: Header=BB14_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z9quicksortIPdEvT_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB14_11
.LBB14_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
                                        #       Child Loop BB14_5 Depth 3
                                        #       Child Loop BB14_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB14_4:                               #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_5 Depth 3
                                        #       Child Loop BB14_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB14_5:                               #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB14_5
# %bb.6:                                #   in Loop: Header=BB14_4 Depth=2
	bgeu	$a2, $a1, .LBB14_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB14_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB14_8:                               # %.preheader
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB14_8
# %bb.9:                                #   in Loop: Header=BB14_4 Depth=2
	bgeu	$a2, $a1, .LBB14_2
# %bb.10:                               #   in Loop: Header=BB14_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB14_4
.LBB14_11:                              # %tailrecurse._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	_Z9quicksortIPdEvT_S1_, .Lfunc_end14-_Z9quicksortIPdEvT_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_,@function
_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_: # @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
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
	move	$fp, $a0
	sub.d	$s8, $a1, $a0
	ori	$a0, $zero, 129
	blt	$s8, $a0, .LBB15_22
# %bb.1:                                # %.lr.ph
	move	$s7, $a1
	move	$s1, $a3
	move	$s2, $a2
	addi.d	$s6, $fp, 8
	addi.w	$a0, $zero, -8
	sub.d	$s5, $a0, $fp
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_.exit
                                        #   in Loop: Header=BB15_3 Depth=1
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_)
	jirl	$ra, $ra, 0
	move	$s7, $s3
	ori	$a0, $zero, 128
	bge	$a0, $s8, .LBB15_22
.LBB15_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_15 Depth 2
                                        #       Child Loop BB15_16 Depth 3
                                        #       Child Loop BB15_18 Depth 3
	beqz	$s2, .LBB15_21
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	srli.d	$a0, $s8, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	fld.d	$fa0, $fp, 8
	fldx.d	$fa1, $fp, $a0
	add.d	$s0, $fp, $a0
	jirl	$ra, $s1, 0
	fld.d	$fa1, $s7, -8
	beqz	$a0, .LBB15_7
# %bb.5:                                #   in Loop: Header=BB15_3 Depth=1
	fld.d	$fa0, $s0, 0
	jirl	$ra, $s1, 0
	beqz	$a0, .LBB15_9
# %bb.6:                                #   in Loop: Header=BB15_3 Depth=1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $s0, 0
	b	.LBB15_14
	.p2align	4, , 16
.LBB15_7:                               #   in Loop: Header=BB15_3 Depth=1
	fld.d	$fa0, $s6, 0
	jirl	$ra, $s1, 0
	beqz	$a0, .LBB15_11
# %bb.8:                                #   in Loop: Header=BB15_3 Depth=1
	fld.d	$fa0, $fp, 8
	fld.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 8
	b	.LBB15_14
	.p2align	4, , 16
.LBB15_9:                               #   in Loop: Header=BB15_3 Depth=1
	fld.d	$fa0, $fp, 8
	fld.d	$fa1, $s7, -8
	jirl	$ra, $s1, 0
	fld.d	$fa0, $fp, 0
	bnez	$a0, .LBB15_12
# %bb.10:                               #   in Loop: Header=BB15_3 Depth=1
	fld.d	$fa1, $fp, 8
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB15_14
	.p2align	4, , 16
.LBB15_11:                              #   in Loop: Header=BB15_3 Depth=1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s7, -8
	jirl	$ra, $s1, 0
	fld.d	$fa0, $fp, 0
	beqz	$a0, .LBB15_13
.LBB15_12:                              #   in Loop: Header=BB15_3 Depth=1
	fld.d	$fa1, $s7, -8
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $s7, -8
	b	.LBB15_14
.LBB15_13:                              #   in Loop: Header=BB15_3 Depth=1
	fld.d	$fa1, $s0, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $s0, 0
	.p2align	4, , 16
.LBB15_14:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.d	$s2, $s2, -1
	move	$s0, $s7
	move	$s4, $s6
	.p2align	4, , 16
.LBB15_15:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_16 Depth 3
                                        #       Child Loop BB15_18 Depth 3
	addi.d	$s3, $s4, -8
	add.d	$s8, $s5, $s4
	.p2align	4, , 16
.LBB15_16:                              #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $s3, 8
	fld.d	$fa1, $fp, 0
	addi.d	$s3, $s3, 8
	jirl	$ra, $s1, 0
	addi.d	$s8, $s8, 8
	bnez	$a0, .LBB15_16
# %bb.17:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB15_15 Depth=2
	addi.d	$s4, $s3, 8
	.p2align	4, , 16
.LBB15_18:                              # %.preheader.i.i
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $fp, 0
	fld.d	$fa1, $s0, -8
	addi.d	$s0, $s0, -8
	jirl	$ra, $s1, 0
	bnez	$a0, .LBB15_18
# %bb.19:                               #   in Loop: Header=BB15_15 Depth=2
	bgeu	$s3, $s0, .LBB15_2
# %bb.20:                               #   in Loop: Header=BB15_15 Depth=2
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s3, 0
	fst.d	$fa0, $s3, 0
	fst.d	$fa1, $s0, 0
	b	.LBB15_15
.LBB15_21:
	st.d	$s1, $sp, 24
	st.d	$s1, $sp, 32
	addi.d	$a2, $sp, 32
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 24
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_)
	jirl	$ra, $ra, 0
.LBB15_22:                              # %.loopexit
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
.Lfunc_end15:
	.size	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_, .Lfunc_end15-_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_,"axG",@progbits,_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_,comdat
	.weak	_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_ # -- Begin function _ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_
	.p2align	5
	.type	_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_,@function
_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_: # @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
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
	move	$s0, $a1
	move	$fp, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 9
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	blt	$a0, $a1, .LBB16_14
# %bb.1:                                # %.lr.ph.preheader
	ori	$s3, $zero, 1
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_2:                               #   in Loop: Header=BB16_4 Depth=1
	move	$s7, $zero
.LBB16_3:                               # %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit
                                        #   in Loop: Header=BB16_4 Depth=1
	slli.d	$a0, $s7, 3
	fstx.d	$fs0, $fp, $a0
	ori	$a0, $zero, 8
	bge	$a0, $s5, .LBB16_14
.LBB16_4:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #     Child Loop BB16_12 Depth 2
	move	$a0, $s0
	fld.d	$fs0, $s0, -8
	addi.d	$s0, $s0, -8
	fld.d	$fa0, $fp, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $a1, 0
	sub.d	$s5, $s0, $fp
	srai.d	$s8, $s5, 3
	fst.d	$fa0, $a0, -8
	ori	$a0, $zero, 3
	blt	$s8, $a0, .LBB16_8
# %bb.5:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB16_4 Depth=1
	move	$s2, $zero
	addi.d	$a0, $s8, -1
	srli.d	$a1, $a0, 63
	add.d	$a0, $a0, $a1
	srai.d	$s4, $a0, 1
	.p2align	4, , 16
.LBB16_6:                               # %.lr.ph.i.i
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s7, $s2, 1
	addi.d	$s1, $s7, 2
	slli.d	$a0, $s1, 3
	alsl.d	$a1, $s2, $fp, 4
	fldx.d	$fa0, $fp, $a0
	fld.d	$fa1, $a1, 8
	jirl	$ra, $s6, 0
	addi.d	$a1, $s7, 1
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $a1, $a0
	or	$s7, $a0, $a2
	slli.d	$a0, $s7, 3
	fldx.d	$fa0, $fp, $a0
	slli.d	$a0, $s2, 3
	fstx.d	$fa0, $fp, $a0
	move	$s2, $s7
	blt	$s7, $s4, .LBB16_6
# %bb.7:                                # %._crit_edge.i.i
                                        #   in Loop: Header=BB16_4 Depth=1
	andi	$a0, $s5, 8
	beqz	$a0, .LBB16_9
	b	.LBB16_11
	.p2align	4, , 16
.LBB16_8:                               #   in Loop: Header=BB16_4 Depth=1
	move	$s7, $zero
	andi	$a0, $s5, 8
	bnez	$a0, .LBB16_11
.LBB16_9:                               #   in Loop: Header=BB16_4 Depth=1
	addi.d	$a0, $s8, -2
	srai.d	$a0, $a0, 1
	bne	$s7, $a0, .LBB16_11
# %bb.10:                               # %.thread.i
                                        #   in Loop: Header=BB16_4 Depth=1
	slli.d	$a0, $s7, 1
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 3
	fldx.d	$fa0, $fp, $a1
	slli.d	$a1, $s7, 3
	fstx.d	$fa0, $fp, $a1
	move	$s7, $a0
	b	.LBB16_12
	.p2align	4, , 16
.LBB16_11:                              #   in Loop: Header=BB16_4 Depth=1
	beqz	$s7, .LBB16_2
	.p2align	4, , 16
.LBB16_12:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s2, $s7, -1
	srli.d	$s4, $s2, 1
	slli.d	$a0, $s4, 3
	fldx.d	$fa0, $fp, $a0
	fmov.d	$fa1, $fs0
	jirl	$ra, $s6, 0
	beqz	$a0, .LBB16_3
# %bb.13:                               #   in Loop: Header=BB16_12 Depth=2
	alsl.d	$a0, $s4, $fp, 3
	fld.d	$fa0, $a0, 0
	slli.d	$a0, $s7, 3
	fstx.d	$fa0, $fp, $a0
	move	$s7, $s4
	bltu	$s3, $s2, .LBB16_12
	b	.LBB16_2
.LBB16_14:                              # %._crit_edge
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end16:
	.size	_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_, .Lfunc_end16-_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_,"axG",@progbits,_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_,comdat
	.weak	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_ # -- Begin function _ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_,@function
_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_: # @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
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
	move	$fp, $a0
	sub.d	$a0, $a1, $a0
	srai.d	$a1, $a0, 3
	ori	$a3, $zero, 2
	bge	$a1, $a3, .LBB17_2
.LBB17_1:                               # %.loopexit
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
.LBB17_2:
	move	$s0, $a2
	addi.d	$a2, $a1, -2
	srli.d	$s1, $a2, 1
	addi.d	$a1, $a1, -1
	srli.d	$s3, $a1, 1
	andi	$s4, $a0, 8
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$a0, $a1, $fp, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a0, $s1, $fp, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $s1
	b	.LBB17_5
	.p2align	4, , 16
.LBB17_3:                               #   in Loop: Header=BB17_5 Depth=1
	move	$s7, $s5
.LBB17_4:                               # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit
                                        #   in Loop: Header=BB17_5 Depth=1
	slli.d	$a0, $s7, 3
	fstx.d	$fs0, $fp, $a0
	addi.d	$a0, $s6, -1
	beqz	$s6, .LBB17_1
.LBB17_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
                                        #     Child Loop BB17_12 Depth 2
	move	$s6, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fs0, $fp, $a0
	ld.d	$s8, $s0, 0
	move	$s5, $s6
	bge	$s6, $s3, .LBB17_8
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB17_5 Depth=1
	move	$s7, $s6
	.p2align	4, , 16
.LBB17_7:                               # %.lr.ph.i
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s5, $s7, 1
	addi.d	$s2, $s5, 2
	slli.d	$a0, $s2, 3
	alsl.d	$a1, $s7, $fp, 4
	fldx.d	$fa0, $fp, $a0
	fld.d	$fa1, $a1, 8
	jirl	$ra, $s8, 0
	addi.d	$a1, $s5, 1
	masknez	$a2, $s2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s5, $a0, $a2
	slli.d	$a0, $s5, 3
	fldx.d	$fa0, $fp, $a0
	slli.d	$a0, $s7, 3
	fstx.d	$fa0, $fp, $a0
	move	$s7, $s5
	blt	$s5, $s3, .LBB17_7
.LBB17_8:                               # %._crit_edge.i
                                        #   in Loop: Header=BB17_5 Depth=1
	bnez	$s4, .LBB17_11
# %bb.9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB17_5 Depth=1
	bne	$s5, $s1, .LBB17_11
# %bb.10:                               #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
.LBB17_11:                              #   in Loop: Header=BB17_5 Depth=1
	bge	$s6, $s5, .LBB17_3
	.p2align	4, , 16
.LBB17_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s5, -1
	srli.d	$a1, $a0, 63
	add.d	$a0, $a0, $a1
	srai.d	$s7, $a0, 1
	slli.d	$a0, $s7, 3
	fldx.d	$fa0, $fp, $a0
	fmov.d	$fa1, $fs0
	jirl	$ra, $s8, 0
	beqz	$a0, .LBB17_3
# %bb.13:                               #   in Loop: Header=BB17_12 Depth=2
	alsl.d	$a0, $s7, $fp, 3
	fld.d	$fa0, $a0, 0
	slli.d	$a0, $s5, 3
	fstx.d	$fa0, $fp, $a0
	move	$s5, $s7
	blt	$s6, $s7, .LBB17_12
	b	.LBB17_4
.Lfunc_end17:
	.size	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_, .Lfunc_end17-_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_,@function
_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_: # @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	move	$fp, $a0
	sub.d	$s8, $a1, $a0
	ori	$a0, $zero, 129
	blt	$s8, $a0, .LBB18_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a3
	move	$s1, $a2
	andi	$s2, $a3, 255
	addi.d	$s4, $fp, 8
	addi.w	$a0, $zero, -8
	sub.d	$s5, $a0, $fp
	lu52i.d	$s6, $a0, 2047
	ori	$s7, $zero, 128
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_2:                               # %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_.exit
                                        #   in Loop: Header=BB18_3 Depth=1
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bge	$s7, $s8, .LBB18_35
.LBB18_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_16 Depth 2
                                        #       Child Loop BB18_17 Depth 3
                                        #       Child Loop BB18_19 Depth 3
	beqz	$s1, .LBB18_22
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	srli.d	$a0, $s8, 1
	and	$a0, $a0, $s6
	fld.d	$fa1, $fp, 8
	fldx.d	$fa2, $fp, $a0
	fld.d	$fa0, $a1, -8
	fcmp.cule.d	$fcc0, $fa2, $fa1
	add.d	$a0, $fp, $a0
	bcnez	$fcc0, .LBB18_7
# %bb.5:                                #   in Loop: Header=BB18_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB18_9
# %bb.6:                                #   in Loop: Header=BB18_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 0
	fst.d	$fa0, $a0, 0
	b	.LBB18_15
	.p2align	4, , 16
.LBB18_7:                               #   in Loop: Header=BB18_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_11
# %bb.8:                                #   in Loop: Header=BB18_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB18_15
	.p2align	4, , 16
.LBB18_9:                               #   in Loop: Header=BB18_3 Depth=1
	fld.d	$fa2, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_13
# %bb.10:                               #   in Loop: Header=BB18_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $a1, -8
	b	.LBB18_15
	.p2align	4, , 16
.LBB18_11:                              #   in Loop: Header=BB18_3 Depth=1
	fld.d	$fa1, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB18_14
# %bb.12:                               #   in Loop: Header=BB18_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $a1, -8
	b	.LBB18_15
.LBB18_13:                              #   in Loop: Header=BB18_3 Depth=1
	fst.d	$fa1, $fp, 0
	fst.d	$fa2, $fp, 8
	b	.LBB18_15
.LBB18_14:                              #   in Loop: Header=BB18_3 Depth=1
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $a0, 0
	.p2align	4, , 16
.LBB18_15:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader
                                        #   in Loop: Header=BB18_3 Depth=1
	addi.d	$s1, $s1, -1
	move	$a2, $a1
	move	$a0, $s4
	.p2align	4, , 16
.LBB18_16:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_17 Depth 3
                                        #       Child Loop BB18_19 Depth 3
	fld.d	$fa0, $fp, 0
	add.d	$s8, $s5, $a0
	.p2align	4, , 16
.LBB18_17:                              #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	fcmp.clt.d	$fcc0, $fa1, $fa0
	addi.d	$s8, $s8, 8
	bcnez	$fcc0, .LBB18_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB18_16 Depth=2
	addi.d	$s3, $a0, -8
	.p2align	4, , 16
.LBB18_19:                              # %.preheader.i.i
                                        #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa2
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB18_19
# %bb.20:                               #   in Loop: Header=BB18_16 Depth=2
	bgeu	$s3, $a2, .LBB18_2
# %bb.21:                               #   in Loop: Header=BB18_16 Depth=2
	fst.d	$fa2, $s3, 0
	fst.d	$fa1, $a2, 0
	b	.LBB18_16
.LBB18_22:
	st.b	$s0, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	b	.LBB18_25
	.p2align	4, , 16
.LBB18_23:                              #   in Loop: Header=BB18_25 Depth=1
	move	$a4, $zero
.LBB18_24:                              # %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_.exit.i.i
                                        #   in Loop: Header=BB18_25 Depth=1
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $fp, $a4
	bge	$a2, $a3, .LBB18_35
.LBB18_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_27 Depth 2
                                        #     Child Loop BB18_33 Depth 2
	move	$a4, $s0
	fld.d	$fa0, $s0, -8
	fld.d	$fa1, $fp, 0
	addi.d	$s0, $s0, -8
	sub.d	$a3, $s0, $fp
	srai.d	$a5, $a3, 3
	fst.d	$fa1, $a4, -8
	blt	$a5, $a0, .LBB18_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB18_25 Depth=1
	move	$a6, $zero
	addi.d	$a4, $a5, -1
	srli.d	$a7, $a4, 63
	add.d	$a4, $a4, $a7
	srai.d	$a7, $a4, 1
	.p2align	4, , 16
.LBB18_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB18_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a6, 1
	addi.d	$t0, $a4, 2
	slli.d	$t1, $t0, 3
	alsl.d	$t2, $a6, $fp, 4
	fldx.d	$fa1, $fp, $t1
	fld.d	$fa2, $t2, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a4, $a4, 1
	movcf2gr	$t1, $fcc0
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	slli.d	$t0, $a4, 3
	fldx.d	$fa1, $fp, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $fp, $a6
	move	$a6, $a4
	blt	$a4, $a7, .LBB18_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB18_25 Depth=1
	andi	$a6, $a3, 8
	beqz	$a6, .LBB18_30
	b	.LBB18_32
	.p2align	4, , 16
.LBB18_29:                              #   in Loop: Header=BB18_25 Depth=1
	move	$a4, $zero
	andi	$a6, $a3, 8
	bnez	$a6, .LBB18_32
.LBB18_30:                              #   in Loop: Header=BB18_25 Depth=1
	addi.d	$a5, $a5, -2
	srai.d	$a5, $a5, 1
	bne	$a4, $a5, .LBB18_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB18_25 Depth=1
	slli.d	$a5, $a4, 1
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 3
	fldx.d	$fa1, $fp, $a6
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a5
	b	.LBB18_33
	.p2align	4, , 16
.LBB18_32:                              #   in Loop: Header=BB18_25 Depth=1
	beqz	$a4, .LBB18_23
	.p2align	4, , 16
.LBB18_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB18_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 1
	slli.d	$a7, $a6, 3
	fldx.d	$fa1, $fp, $a7
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_24
# %bb.34:                               #   in Loop: Header=BB18_33 Depth=2
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a6
	bltu	$a1, $a5, .LBB18_33
	b	.LBB18_23
.LBB18_35:                              # %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_.exit
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end18:
	.size	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_, .Lfunc_end18-_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_ # -- Begin function _ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_,@function
_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_: # @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 129
	blt	$a0, $a1, .LBB19_2
# %bb.1:
	addi.d	$s1, $s0, 8
	ori	$s2, $zero, 8
	ori	$s3, $zero, 9
	ori	$s4, $zero, 128
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB19_18
.LBB19_2:
	beq	$s0, $fp, .LBB19_25
# %bb.3:
	addi.d	$a2, $s0, 8
	beq	$a2, $fp, .LBB19_25
# %bb.4:                                # %.lr.ph.i19.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $s0
	b	.LBB19_9
	.p2align	4, , 16
.LBB19_5:                               #   in Loop: Header=BB19_9 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB19_13
# %bb.6:                                #   in Loop: Header=BB19_9 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB19_7:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22
                                        #   in Loop: Header=BB19_9 Depth=1
	move	$a0, $s0
.LBB19_8:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22
                                        #   in Loop: Header=BB19_9 Depth=1
	addi.d	$a2, $s3, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $fp, .LBB19_25
.LBB19_9:                               # %.lr.ph.i19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_12 Depth 2
	move	$a1, $s3
	fld.d	$fs0, $s3, 8
	fld.d	$fa0, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$s3, $a2
	bceqz	$fcc0, .LBB19_5
# %bb.10:                               #   in Loop: Header=BB19_9 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB19_8
# %bb.11:                               # %.lr.ph.i.i26.preheader
                                        #   in Loop: Header=BB19_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB19_12:                              # %.lr.ph.i.i26
                                        #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB19_12
	b	.LBB19_8
.LBB19_13:                              #   in Loop: Header=BB19_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB19_8
# %bb.14:                               #   in Loop: Header=BB19_9 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB19_7
.LBB19_15:                              #   in Loop: Header=BB19_18 Depth=1
	fst.d	$fa0, $a0, 8
	.p2align	4, , 16
.LBB19_16:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB19_18 Depth=1
	move	$a0, $s0
.LBB19_17:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB19_18 Depth=1
	fst.d	$fs0, $a0, 0
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	beq	$s2, $s4, .LBB19_24
.LBB19_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_23 Depth 2
	fldx.d	$fs0, $s0, $s2
	fld.d	$fa0, $s0, 0
	move	$a0, $s6
	fcmp.cule.d	$fcc0, $fa0, $fs0
	add.d	$s6, $s0, $s2
	bcnez	$fcc0, .LBB19_21
# %bb.19:                               #   in Loop: Header=BB19_18 Depth=1
	bltu	$s2, $s3, .LBB19_15
# %bb.20:                               #   in Loop: Header=BB19_18 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB19_16
	.p2align	4, , 16
.LBB19_21:                              #   in Loop: Header=BB19_18 Depth=1
	fld.d	$fa0, $a0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s6
	bcnez	$fcc0, .LBB19_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB19_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB19_23:                              # %.lr.ph.i.i
                                        #   Parent Loop BB19_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB19_23
	b	.LBB19_17
.LBB19_24:                              # %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_.exit
	addi.d	$a0, $s0, 128
	bne	$a0, $fp, .LBB19_27
.LBB19_25:                              # %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_.exit
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
	.p2align	4, , 16
.LBB19_26:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_.exit.i
                                        #   in Loop: Header=BB19_27 Depth=1
	addi.d	$a0, $a0, 8
	fst.d	$fa0, $a1, 0
	beq	$a0, $fp, .LBB19_25
.LBB19_27:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_29 Depth 2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a1, $a0
	bcnez	$fcc0, .LBB19_26
# %bb.28:                               # %.lr.ph.i.i14.preheader
                                        #   in Loop: Header=BB19_27 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB19_29:                              # %.lr.ph.i.i14
                                        #   Parent Loop BB19_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa1, $a1, 0
	fld.d	$fa1, $a1, -16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB19_29
	b	.LBB19_26
.Lfunc_end19:
	.size	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_, .Lfunc_end19-_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_,"axG",@progbits,_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_,comdat
	.weak	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_ # -- Begin function _ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_,@function
_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_: # @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 3
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB20_2
.LBB20_1:                               # %.loopexit
	ret
.LBB20_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB20_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB20_6
	.p2align	4, , 16
.LBB20_4:                               #   in Loop: Header=BB20_6 Depth=1
	move	$t0, $a7
.LBB20_5:                               # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit
                                        #   in Loop: Header=BB20_6 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB20_1
.LBB20_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_8 Depth 2
                                        #     Child Loop BB20_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB20_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB20_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB20_8:                               # %.lr.ph.i
                                        #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	alsl.d	$t3, $t0, $a0, 4
	fldx.d	$fa1, $a0, $t2
	fld.d	$fa2, $t3, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a7, $a7, 1
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a7
	blt	$a7, $a1, .LBB20_8
.LBB20_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB20_6 Depth=1
	bne	$a7, $a2, .LBB20_11
# %bb.10:                               #   in Loop: Header=BB20_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
.LBB20_11:                              #   in Loop: Header=BB20_6 Depth=1
	bge	$a6, $a7, .LBB20_4
	.p2align	4, , 16
.LBB20_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_4
# %bb.13:                               #   in Loop: Header=BB20_12 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB20_12
	b	.LBB20_5
	.p2align	4, , 16
.LBB20_14:                              #   in Loop: Header=BB20_16 Depth=1
	move	$a4, $a2
.LBB20_15:                              # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit.us
                                        #   in Loop: Header=BB20_16 Depth=1
	slli.d	$a2, $a4, 3
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB20_1
.LBB20_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_18 Depth 2
                                        #     Child Loop BB20_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB20_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB20_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB20_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a2, 2
	slli.d	$a6, $a5, 3
	alsl.d	$a7, $a4, $a0, 4
	fldx.d	$fa1, $a0, $a6
	fld.d	$fa2, $a7, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a2, $a2, 1
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 3
	fldx.d	$fa1, $a0, $a5
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $a0, $a4
	blt	$a2, $a1, .LBB20_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB20_16 Depth=1
	bge	$a3, $a2, .LBB20_14
	.p2align	4, , 16
.LBB20_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_14
# %bb.21:                               #   in Loop: Header=BB20_20 Depth=2
	slli.d	$a2, $a2, 3
	fstx.d	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB20_20
	b	.LBB20_15
.Lfunc_end20:
	.size	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_, .Lfunc_end20-_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_,@function
_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_: # @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	move	$fp, $a0
	sub.d	$s8, $a1, $a0
	ori	$a0, $zero, 129
	blt	$s8, $a0, .LBB21_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a3
	move	$s1, $a2
	andi	$s2, $a3, 255
	addi.d	$s4, $fp, 8
	addi.w	$a0, $zero, -8
	sub.d	$s5, $a0, $fp
	lu52i.d	$s6, $a0, 2047
	ori	$s7, $zero, 128
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_2:                               # %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_.exit
                                        #   in Loop: Header=BB21_3 Depth=1
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bge	$s7, $s8, .LBB21_35
.LBB21_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_16 Depth 2
                                        #       Child Loop BB21_17 Depth 3
                                        #       Child Loop BB21_19 Depth 3
	beqz	$s1, .LBB21_22
# %bb.4:                                #   in Loop: Header=BB21_3 Depth=1
	srli.d	$a0, $s8, 1
	and	$a0, $a0, $s6
	fld.d	$fa1, $fp, 8
	fldx.d	$fa2, $fp, $a0
	fld.d	$fa0, $a1, -8
	fcmp.cule.d	$fcc0, $fa2, $fa1
	add.d	$a0, $fp, $a0
	bcnez	$fcc0, .LBB21_7
# %bb.5:                                #   in Loop: Header=BB21_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB21_9
# %bb.6:                                #   in Loop: Header=BB21_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 0
	fst.d	$fa0, $a0, 0
	b	.LBB21_15
	.p2align	4, , 16
.LBB21_7:                               #   in Loop: Header=BB21_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_11
# %bb.8:                                #   in Loop: Header=BB21_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB21_15
	.p2align	4, , 16
.LBB21_9:                               #   in Loop: Header=BB21_3 Depth=1
	fld.d	$fa2, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_13
# %bb.10:                               #   in Loop: Header=BB21_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $a1, -8
	b	.LBB21_15
	.p2align	4, , 16
.LBB21_11:                              #   in Loop: Header=BB21_3 Depth=1
	fld.d	$fa1, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB21_14
# %bb.12:                               #   in Loop: Header=BB21_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $a1, -8
	b	.LBB21_15
.LBB21_13:                              #   in Loop: Header=BB21_3 Depth=1
	fst.d	$fa1, $fp, 0
	fst.d	$fa2, $fp, 8
	b	.LBB21_15
.LBB21_14:                              #   in Loop: Header=BB21_3 Depth=1
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $a0, 0
	.p2align	4, , 16
.LBB21_15:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader
                                        #   in Loop: Header=BB21_3 Depth=1
	addi.d	$s1, $s1, -1
	move	$a2, $a1
	move	$a0, $s4
	.p2align	4, , 16
.LBB21_16:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_17 Depth 3
                                        #       Child Loop BB21_19 Depth 3
	fld.d	$fa0, $fp, 0
	add.d	$s8, $s5, $a0
	.p2align	4, , 16
.LBB21_17:                              #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	fcmp.clt.d	$fcc0, $fa1, $fa0
	addi.d	$s8, $s8, 8
	bcnez	$fcc0, .LBB21_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB21_16 Depth=2
	addi.d	$s3, $a0, -8
	.p2align	4, , 16
.LBB21_19:                              # %.preheader.i.i
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa2
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB21_19
# %bb.20:                               #   in Loop: Header=BB21_16 Depth=2
	bgeu	$s3, $a2, .LBB21_2
# %bb.21:                               #   in Loop: Header=BB21_16 Depth=2
	fst.d	$fa2, $s3, 0
	fst.d	$fa1, $a2, 0
	b	.LBB21_16
.LBB21_22:
	st.b	$s0, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	b	.LBB21_25
	.p2align	4, , 16
.LBB21_23:                              #   in Loop: Header=BB21_25 Depth=1
	move	$a4, $zero
.LBB21_24:                              # %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_.exit.i.i
                                        #   in Loop: Header=BB21_25 Depth=1
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $fp, $a4
	bge	$a2, $a3, .LBB21_35
.LBB21_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_27 Depth 2
                                        #     Child Loop BB21_33 Depth 2
	move	$a4, $s0
	fld.d	$fa0, $s0, -8
	fld.d	$fa1, $fp, 0
	addi.d	$s0, $s0, -8
	sub.d	$a3, $s0, $fp
	srai.d	$a5, $a3, 3
	fst.d	$fa1, $a4, -8
	blt	$a5, $a0, .LBB21_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB21_25 Depth=1
	move	$a6, $zero
	addi.d	$a4, $a5, -1
	srli.d	$a7, $a4, 63
	add.d	$a4, $a4, $a7
	srai.d	$a7, $a4, 1
	.p2align	4, , 16
.LBB21_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB21_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a6, 1
	addi.d	$t0, $a4, 2
	slli.d	$t1, $t0, 3
	alsl.d	$t2, $a6, $fp, 4
	fldx.d	$fa1, $fp, $t1
	fld.d	$fa2, $t2, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a4, $a4, 1
	movcf2gr	$t1, $fcc0
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	slli.d	$t0, $a4, 3
	fldx.d	$fa1, $fp, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $fp, $a6
	move	$a6, $a4
	blt	$a4, $a7, .LBB21_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB21_25 Depth=1
	andi	$a6, $a3, 8
	beqz	$a6, .LBB21_30
	b	.LBB21_32
	.p2align	4, , 16
.LBB21_29:                              #   in Loop: Header=BB21_25 Depth=1
	move	$a4, $zero
	andi	$a6, $a3, 8
	bnez	$a6, .LBB21_32
.LBB21_30:                              #   in Loop: Header=BB21_25 Depth=1
	addi.d	$a5, $a5, -2
	srai.d	$a5, $a5, 1
	bne	$a4, $a5, .LBB21_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB21_25 Depth=1
	slli.d	$a5, $a4, 1
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 3
	fldx.d	$fa1, $fp, $a6
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a5
	b	.LBB21_33
	.p2align	4, , 16
.LBB21_32:                              #   in Loop: Header=BB21_25 Depth=1
	beqz	$a4, .LBB21_23
	.p2align	4, , 16
.LBB21_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB21_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 1
	slli.d	$a7, $a6, 3
	fldx.d	$fa1, $fp, $a7
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_24
# %bb.34:                               #   in Loop: Header=BB21_33 Depth=2
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a6
	bltu	$a1, $a5, .LBB21_33
	b	.LBB21_23
.LBB21_35:                              # %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_.exit
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end21:
	.size	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_, .Lfunc_end21-_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_ # -- Begin function _ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_,@function
_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_: # @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 129
	blt	$a0, $a1, .LBB22_2
# %bb.1:
	addi.d	$s1, $s0, 8
	ori	$s2, $zero, 8
	ori	$s3, $zero, 9
	ori	$s4, $zero, 128
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB22_18
.LBB22_2:
	beq	$s0, $fp, .LBB22_25
# %bb.3:
	addi.d	$a2, $s0, 8
	beq	$a2, $fp, .LBB22_25
# %bb.4:                                # %.lr.ph.i19.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $s0
	b	.LBB22_9
	.p2align	4, , 16
.LBB22_5:                               #   in Loop: Header=BB22_9 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB22_13
# %bb.6:                                #   in Loop: Header=BB22_9 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB22_7:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22
                                        #   in Loop: Header=BB22_9 Depth=1
	move	$a0, $s0
.LBB22_8:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22
                                        #   in Loop: Header=BB22_9 Depth=1
	addi.d	$a2, $s3, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $fp, .LBB22_25
.LBB22_9:                               # %.lr.ph.i19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_12 Depth 2
	move	$a1, $s3
	fld.d	$fs0, $s3, 8
	fld.d	$fa0, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$s3, $a2
	bceqz	$fcc0, .LBB22_5
# %bb.10:                               #   in Loop: Header=BB22_9 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB22_8
# %bb.11:                               # %.lr.ph.i.i26.preheader
                                        #   in Loop: Header=BB22_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB22_12:                              # %.lr.ph.i.i26
                                        #   Parent Loop BB22_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB22_12
	b	.LBB22_8
.LBB22_13:                              #   in Loop: Header=BB22_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB22_8
# %bb.14:                               #   in Loop: Header=BB22_9 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB22_7
.LBB22_15:                              #   in Loop: Header=BB22_18 Depth=1
	fst.d	$fa0, $a0, 8
	.p2align	4, , 16
.LBB22_16:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB22_18 Depth=1
	move	$a0, $s0
.LBB22_17:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB22_18 Depth=1
	fst.d	$fs0, $a0, 0
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	beq	$s2, $s4, .LBB22_24
.LBB22_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_23 Depth 2
	fldx.d	$fs0, $s0, $s2
	fld.d	$fa0, $s0, 0
	move	$a0, $s6
	fcmp.cule.d	$fcc0, $fa0, $fs0
	add.d	$s6, $s0, $s2
	bcnez	$fcc0, .LBB22_21
# %bb.19:                               #   in Loop: Header=BB22_18 Depth=1
	bltu	$s2, $s3, .LBB22_15
# %bb.20:                               #   in Loop: Header=BB22_18 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB22_16
	.p2align	4, , 16
.LBB22_21:                              #   in Loop: Header=BB22_18 Depth=1
	fld.d	$fa0, $a0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s6
	bcnez	$fcc0, .LBB22_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB22_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB22_23:                              # %.lr.ph.i.i
                                        #   Parent Loop BB22_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB22_23
	b	.LBB22_17
.LBB22_24:                              # %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_.exit
	addi.d	$a0, $s0, 128
	bne	$a0, $fp, .LBB22_27
.LBB22_25:                              # %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_.exit
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
	.p2align	4, , 16
.LBB22_26:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_.exit.i
                                        #   in Loop: Header=BB22_27 Depth=1
	addi.d	$a0, $a0, 8
	fst.d	$fa0, $a1, 0
	beq	$a0, $fp, .LBB22_25
.LBB22_27:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_29 Depth 2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a1, $a0
	bcnez	$fcc0, .LBB22_26
# %bb.28:                               # %.lr.ph.i.i14.preheader
                                        #   in Loop: Header=BB22_27 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB22_29:                              # %.lr.ph.i.i14
                                        #   Parent Loop BB22_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa1, $a1, 0
	fld.d	$fa1, $a1, -16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB22_29
	b	.LBB22_26
.Lfunc_end22:
	.size	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_, .Lfunc_end22-_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_,"axG",@progbits,_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_,comdat
	.weak	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_ # -- Begin function _ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_,@function
_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_: # @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 3
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB23_2
.LBB23_1:                               # %.loopexit
	ret
.LBB23_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB23_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB23_6
	.p2align	4, , 16
.LBB23_4:                               #   in Loop: Header=BB23_6 Depth=1
	move	$t0, $a7
.LBB23_5:                               # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit
                                        #   in Loop: Header=BB23_6 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB23_1
.LBB23_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_8 Depth 2
                                        #     Child Loop BB23_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB23_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB23_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB23_8:                               # %.lr.ph.i
                                        #   Parent Loop BB23_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	alsl.d	$t3, $t0, $a0, 4
	fldx.d	$fa1, $a0, $t2
	fld.d	$fa2, $t3, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a7, $a7, 1
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a7
	blt	$a7, $a1, .LBB23_8
.LBB23_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB23_6 Depth=1
	bne	$a7, $a2, .LBB23_11
# %bb.10:                               #   in Loop: Header=BB23_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
.LBB23_11:                              #   in Loop: Header=BB23_6 Depth=1
	bge	$a6, $a7, .LBB23_4
	.p2align	4, , 16
.LBB23_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB23_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB23_4
# %bb.13:                               #   in Loop: Header=BB23_12 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB23_12
	b	.LBB23_5
	.p2align	4, , 16
.LBB23_14:                              #   in Loop: Header=BB23_16 Depth=1
	move	$a4, $a2
.LBB23_15:                              # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit.us
                                        #   in Loop: Header=BB23_16 Depth=1
	slli.d	$a2, $a4, 3
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB23_1
.LBB23_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_18 Depth 2
                                        #     Child Loop BB23_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB23_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB23_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB23_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a2, 2
	slli.d	$a6, $a5, 3
	alsl.d	$a7, $a4, $a0, 4
	fldx.d	$fa1, $a0, $a6
	fld.d	$fa2, $a7, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a2, $a2, 1
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 3
	fldx.d	$fa1, $a0, $a5
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $a0, $a4
	blt	$a2, $a1, .LBB23_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB23_16 Depth=1
	bge	$a3, $a2, .LBB23_14
	.p2align	4, , 16
.LBB23_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB23_14
# %bb.21:                               #   in Loop: Header=BB23_20 Depth=2
	slli.d	$a2, $a2, 3
	fstx.d	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB23_20
	b	.LBB23_15
.Lfunc_end23:
	.size	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_, .Lfunc_end23-_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_,@function
_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_: # @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	move	$fp, $a0
	sub.d	$s8, $a1, $a0
	ori	$a0, $zero, 129
	blt	$s8, $a0, .LBB24_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a3
	move	$s1, $a2
	andi	$s2, $a3, 255
	addi.d	$s4, $fp, 8
	addi.w	$a0, $zero, -8
	sub.d	$s5, $a0, $fp
	lu52i.d	$s6, $a0, 2047
	ori	$s7, $zero, 128
	b	.LBB24_3
	.p2align	4, , 16
.LBB24_2:                               # %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_.exit
                                        #   in Loop: Header=BB24_3 Depth=1
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bge	$s7, $s8, .LBB24_35
.LBB24_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_16 Depth 2
                                        #       Child Loop BB24_17 Depth 3
                                        #       Child Loop BB24_19 Depth 3
	beqz	$s1, .LBB24_22
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	srli.d	$a0, $s8, 1
	and	$a0, $a0, $s6
	fld.d	$fa1, $fp, 8
	fldx.d	$fa2, $fp, $a0
	fld.d	$fa0, $a1, -8
	fcmp.cule.d	$fcc0, $fa2, $fa1
	add.d	$a0, $fp, $a0
	bcnez	$fcc0, .LBB24_7
# %bb.5:                                #   in Loop: Header=BB24_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB24_9
# %bb.6:                                #   in Loop: Header=BB24_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 0
	fst.d	$fa0, $a0, 0
	b	.LBB24_15
	.p2align	4, , 16
.LBB24_7:                               #   in Loop: Header=BB24_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_11
# %bb.8:                                #   in Loop: Header=BB24_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB24_15
	.p2align	4, , 16
.LBB24_9:                               #   in Loop: Header=BB24_3 Depth=1
	fld.d	$fa2, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_13
# %bb.10:                               #   in Loop: Header=BB24_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $a1, -8
	b	.LBB24_15
	.p2align	4, , 16
.LBB24_11:                              #   in Loop: Header=BB24_3 Depth=1
	fld.d	$fa1, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB24_14
# %bb.12:                               #   in Loop: Header=BB24_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $a1, -8
	b	.LBB24_15
.LBB24_13:                              #   in Loop: Header=BB24_3 Depth=1
	fst.d	$fa1, $fp, 0
	fst.d	$fa2, $fp, 8
	b	.LBB24_15
.LBB24_14:                              #   in Loop: Header=BB24_3 Depth=1
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $a0, 0
	.p2align	4, , 16
.LBB24_15:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader
                                        #   in Loop: Header=BB24_3 Depth=1
	addi.d	$s1, $s1, -1
	move	$a2, $a1
	move	$a0, $s4
	.p2align	4, , 16
.LBB24_16:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i
                                        #   Parent Loop BB24_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_17 Depth 3
                                        #       Child Loop BB24_19 Depth 3
	fld.d	$fa0, $fp, 0
	add.d	$s8, $s5, $a0
	.p2align	4, , 16
.LBB24_17:                              #   Parent Loop BB24_3 Depth=1
                                        #     Parent Loop BB24_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	fcmp.clt.d	$fcc0, $fa1, $fa0
	addi.d	$s8, $s8, 8
	bcnez	$fcc0, .LBB24_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB24_16 Depth=2
	addi.d	$s3, $a0, -8
	.p2align	4, , 16
.LBB24_19:                              # %.preheader.i.i
                                        #   Parent Loop BB24_3 Depth=1
                                        #     Parent Loop BB24_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa2
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB24_19
# %bb.20:                               #   in Loop: Header=BB24_16 Depth=2
	bgeu	$s3, $a2, .LBB24_2
# %bb.21:                               #   in Loop: Header=BB24_16 Depth=2
	fst.d	$fa2, $s3, 0
	fst.d	$fa1, $a2, 0
	b	.LBB24_16
.LBB24_22:
	st.b	$s0, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	b	.LBB24_25
	.p2align	4, , 16
.LBB24_23:                              #   in Loop: Header=BB24_25 Depth=1
	move	$a4, $zero
.LBB24_24:                              # %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i
                                        #   in Loop: Header=BB24_25 Depth=1
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $fp, $a4
	bge	$a2, $a3, .LBB24_35
.LBB24_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_27 Depth 2
                                        #     Child Loop BB24_33 Depth 2
	move	$a4, $s0
	fld.d	$fa0, $s0, -8
	fld.d	$fa1, $fp, 0
	addi.d	$s0, $s0, -8
	sub.d	$a3, $s0, $fp
	srai.d	$a5, $a3, 3
	fst.d	$fa1, $a4, -8
	blt	$a5, $a0, .LBB24_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB24_25 Depth=1
	move	$a6, $zero
	addi.d	$a4, $a5, -1
	srli.d	$a7, $a4, 63
	add.d	$a4, $a4, $a7
	srai.d	$a7, $a4, 1
	.p2align	4, , 16
.LBB24_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB24_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a6, 1
	addi.d	$t0, $a4, 2
	slli.d	$t1, $t0, 3
	alsl.d	$t2, $a6, $fp, 4
	fldx.d	$fa1, $fp, $t1
	fld.d	$fa2, $t2, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a4, $a4, 1
	movcf2gr	$t1, $fcc0
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	slli.d	$t0, $a4, 3
	fldx.d	$fa1, $fp, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $fp, $a6
	move	$a6, $a4
	blt	$a4, $a7, .LBB24_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB24_25 Depth=1
	andi	$a6, $a3, 8
	beqz	$a6, .LBB24_30
	b	.LBB24_32
	.p2align	4, , 16
.LBB24_29:                              #   in Loop: Header=BB24_25 Depth=1
	move	$a4, $zero
	andi	$a6, $a3, 8
	bnez	$a6, .LBB24_32
.LBB24_30:                              #   in Loop: Header=BB24_25 Depth=1
	addi.d	$a5, $a5, -2
	srai.d	$a5, $a5, 1
	bne	$a4, $a5, .LBB24_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB24_25 Depth=1
	slli.d	$a5, $a4, 1
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 3
	fldx.d	$fa1, $fp, $a6
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a5
	b	.LBB24_33
	.p2align	4, , 16
.LBB24_32:                              #   in Loop: Header=BB24_25 Depth=1
	beqz	$a4, .LBB24_23
	.p2align	4, , 16
.LBB24_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB24_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 1
	slli.d	$a7, $a6, 3
	fldx.d	$fa1, $fp, $a7
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_24
# %bb.34:                               #   in Loop: Header=BB24_33 Depth=2
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a6
	bltu	$a1, $a5, .LBB24_33
	b	.LBB24_23
.LBB24_35:                              # %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_.exit
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end24:
	.size	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_, .Lfunc_end24-_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_ # -- Begin function _ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_,@function
_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_: # @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 129
	blt	$a0, $a1, .LBB25_2
# %bb.1:
	addi.d	$s1, $s0, 8
	ori	$s2, $zero, 8
	ori	$s3, $zero, 9
	ori	$s4, $zero, 128
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB25_18
.LBB25_2:
	beq	$s0, $fp, .LBB25_25
# %bb.3:
	addi.d	$a2, $s0, 8
	beq	$a2, $fp, .LBB25_25
# %bb.4:                                # %.lr.ph.i19.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $s0
	b	.LBB25_9
	.p2align	4, , 16
.LBB25_5:                               #   in Loop: Header=BB25_9 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB25_13
# %bb.6:                                #   in Loop: Header=BB25_9 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB25_7:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22
                                        #   in Loop: Header=BB25_9 Depth=1
	move	$a0, $s0
.LBB25_8:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22
                                        #   in Loop: Header=BB25_9 Depth=1
	addi.d	$a2, $s3, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $fp, .LBB25_25
.LBB25_9:                               # %.lr.ph.i19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_12 Depth 2
	move	$a1, $s3
	fld.d	$fs0, $s3, 8
	fld.d	$fa0, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$s3, $a2
	bceqz	$fcc0, .LBB25_5
# %bb.10:                               #   in Loop: Header=BB25_9 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB25_8
# %bb.11:                               # %.lr.ph.i.i26.preheader
                                        #   in Loop: Header=BB25_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB25_12:                              # %.lr.ph.i.i26
                                        #   Parent Loop BB25_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB25_12
	b	.LBB25_8
.LBB25_13:                              #   in Loop: Header=BB25_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB25_8
# %bb.14:                               #   in Loop: Header=BB25_9 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB25_7
.LBB25_15:                              #   in Loop: Header=BB25_18 Depth=1
	fst.d	$fa0, $a0, 8
	.p2align	4, , 16
.LBB25_16:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB25_18 Depth=1
	move	$a0, $s0
.LBB25_17:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB25_18 Depth=1
	fst.d	$fs0, $a0, 0
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	beq	$s2, $s4, .LBB25_24
.LBB25_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_23 Depth 2
	fldx.d	$fs0, $s0, $s2
	fld.d	$fa0, $s0, 0
	move	$a0, $s6
	fcmp.cule.d	$fcc0, $fa0, $fs0
	add.d	$s6, $s0, $s2
	bcnez	$fcc0, .LBB25_21
# %bb.19:                               #   in Loop: Header=BB25_18 Depth=1
	bltu	$s2, $s3, .LBB25_15
# %bb.20:                               #   in Loop: Header=BB25_18 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB25_16
	.p2align	4, , 16
.LBB25_21:                              #   in Loop: Header=BB25_18 Depth=1
	fld.d	$fa0, $a0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s6
	bcnez	$fcc0, .LBB25_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB25_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB25_23:                              # %.lr.ph.i.i
                                        #   Parent Loop BB25_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB25_23
	b	.LBB25_17
.LBB25_24:                              # %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit
	addi.d	$a0, $s0, 128
	bne	$a0, $fp, .LBB25_27
.LBB25_25:                              # %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
	.p2align	4, , 16
.LBB25_26:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_.exit.i
                                        #   in Loop: Header=BB25_27 Depth=1
	addi.d	$a0, $a0, 8
	fst.d	$fa0, $a1, 0
	beq	$a0, $fp, .LBB25_25
.LBB25_27:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_29 Depth 2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a1, $a0
	bcnez	$fcc0, .LBB25_26
# %bb.28:                               # %.lr.ph.i.i14.preheader
                                        #   in Loop: Header=BB25_27 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB25_29:                              # %.lr.ph.i.i14
                                        #   Parent Loop BB25_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa1, $a1, 0
	fld.d	$fa1, $a1, -16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB25_29
	b	.LBB25_26
.Lfunc_end25:
	.size	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_, .Lfunc_end25-_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_,"axG",@progbits,_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_,comdat
	.weak	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_ # -- Begin function _ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_,@function
_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_: # @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 3
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB26_2
.LBB26_1:                               # %.loopexit
	ret
.LBB26_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB26_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB26_6
	.p2align	4, , 16
.LBB26_4:                               #   in Loop: Header=BB26_6 Depth=1
	move	$t0, $a7
.LBB26_5:                               # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit
                                        #   in Loop: Header=BB26_6 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB26_1
.LBB26_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_8 Depth 2
                                        #     Child Loop BB26_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB26_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB26_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB26_8:                               # %.lr.ph.i
                                        #   Parent Loop BB26_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	alsl.d	$t3, $t0, $a0, 4
	fldx.d	$fa1, $a0, $t2
	fld.d	$fa2, $t3, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a7, $a7, 1
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a7
	blt	$a7, $a1, .LBB26_8
.LBB26_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB26_6 Depth=1
	bne	$a7, $a2, .LBB26_11
# %bb.10:                               #   in Loop: Header=BB26_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
.LBB26_11:                              #   in Loop: Header=BB26_6 Depth=1
	bge	$a6, $a7, .LBB26_4
	.p2align	4, , 16
.LBB26_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB26_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB26_4
# %bb.13:                               #   in Loop: Header=BB26_12 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB26_12
	b	.LBB26_5
	.p2align	4, , 16
.LBB26_14:                              #   in Loop: Header=BB26_16 Depth=1
	move	$a4, $a2
.LBB26_15:                              # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us
                                        #   in Loop: Header=BB26_16 Depth=1
	slli.d	$a2, $a4, 3
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB26_1
.LBB26_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_18 Depth 2
                                        #     Child Loop BB26_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB26_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB26_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB26_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB26_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a2, 2
	slli.d	$a6, $a5, 3
	alsl.d	$a7, $a4, $a0, 4
	fldx.d	$fa1, $a0, $a6
	fld.d	$fa2, $a7, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a2, $a2, 1
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 3
	fldx.d	$fa1, $a0, $a5
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $a0, $a4
	blt	$a2, $a1, .LBB26_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB26_16 Depth=1
	bge	$a3, $a2, .LBB26_14
	.p2align	4, , 16
.LBB26_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB26_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB26_14
# %bb.21:                               #   in Loop: Header=BB26_20 Depth=2
	slli.d	$a2, $a2, 3
	fstx.d	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB26_20
	b	.LBB26_15
.Lfunc_end26:
	.size	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_, .Lfunc_end26-_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,@function
_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_: # @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	sub.d	$s6, $a1, $a0
	ori	$a0, $zero, 129
	blt	$s6, $a0, .LBB27_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 8
	addi.w	$a0, $zero, -8
	sub.d	$s3, $a0, $fp
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 128
	b	.LBB27_3
	.p2align	4, , 16
.LBB27_2:                               # %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
                                        #   in Loop: Header=BB27_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bge	$s5, $s6, .LBB27_35
.LBB27_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_16 Depth 2
                                        #       Child Loop BB27_17 Depth 3
                                        #       Child Loop BB27_19 Depth 3
	beqz	$s0, .LBB27_22
# %bb.4:                                #   in Loop: Header=BB27_3 Depth=1
	srli.d	$a0, $s6, 1
	and	$a0, $a0, $s4
	fld.d	$fa1, $fp, 8
	fldx.d	$fa2, $fp, $a0
	fld.d	$fa0, $a1, -8
	fcmp.cule.d	$fcc0, $fa2, $fa1
	add.d	$a0, $fp, $a0
	bcnez	$fcc0, .LBB27_7
# %bb.5:                                #   in Loop: Header=BB27_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB27_9
# %bb.6:                                #   in Loop: Header=BB27_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 0
	fst.d	$fa0, $a0, 0
	b	.LBB27_15
	.p2align	4, , 16
.LBB27_7:                               #   in Loop: Header=BB27_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB27_11
# %bb.8:                                #   in Loop: Header=BB27_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB27_15
	.p2align	4, , 16
.LBB27_9:                               #   in Loop: Header=BB27_3 Depth=1
	fld.d	$fa2, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB27_13
# %bb.10:                               #   in Loop: Header=BB27_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $a1, -8
	b	.LBB27_15
	.p2align	4, , 16
.LBB27_11:                              #   in Loop: Header=BB27_3 Depth=1
	fld.d	$fa1, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB27_14
# %bb.12:                               #   in Loop: Header=BB27_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $a1, -8
	b	.LBB27_15
.LBB27_13:                              #   in Loop: Header=BB27_3 Depth=1
	fst.d	$fa1, $fp, 0
	fst.d	$fa2, $fp, 8
	b	.LBB27_15
.LBB27_14:                              #   in Loop: Header=BB27_3 Depth=1
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $a0, 0
	.p2align	4, , 16
.LBB27_15:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader
                                        #   in Loop: Header=BB27_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB27_16:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_17 Depth 3
                                        #       Child Loop BB27_19 Depth 3
	fld.d	$fa0, $fp, 0
	add.d	$s6, $s3, $a0
	.p2align	4, , 16
.LBB27_17:                              #   Parent Loop BB27_3 Depth=1
                                        #     Parent Loop BB27_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	fcmp.clt.d	$fcc0, $fa1, $fa0
	addi.d	$s6, $s6, 8
	bcnez	$fcc0, .LBB27_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB27_16 Depth=2
	addi.d	$s1, $a0, -8
	.p2align	4, , 16
.LBB27_19:                              # %.preheader.i.i
                                        #   Parent Loop BB27_3 Depth=1
                                        #     Parent Loop BB27_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa2
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB27_19
# %bb.20:                               #   in Loop: Header=BB27_16 Depth=2
	bgeu	$s1, $a2, .LBB27_2
# %bb.21:                               #   in Loop: Header=BB27_16 Depth=2
	fst.d	$fa2, $s1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB27_16
.LBB27_22:
	st.b	$zero, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	b	.LBB27_25
	.p2align	4, , 16
.LBB27_23:                              #   in Loop: Header=BB27_25 Depth=1
	move	$a4, $zero
.LBB27_24:                              # %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
                                        #   in Loop: Header=BB27_25 Depth=1
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $fp, $a4
	bge	$a2, $a3, .LBB27_35
.LBB27_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_27 Depth 2
                                        #     Child Loop BB27_33 Depth 2
	move	$a4, $s0
	fld.d	$fa0, $s0, -8
	fld.d	$fa1, $fp, 0
	addi.d	$s0, $s0, -8
	sub.d	$a3, $s0, $fp
	srai.d	$a5, $a3, 3
	fst.d	$fa1, $a4, -8
	blt	$a5, $a0, .LBB27_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB27_25 Depth=1
	move	$a6, $zero
	addi.d	$a4, $a5, -1
	srli.d	$a7, $a4, 63
	add.d	$a4, $a4, $a7
	srai.d	$a7, $a4, 1
	.p2align	4, , 16
.LBB27_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB27_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a6, 1
	addi.d	$t0, $a4, 2
	slli.d	$t1, $t0, 3
	alsl.d	$t2, $a6, $fp, 4
	fldx.d	$fa1, $fp, $t1
	fld.d	$fa2, $t2, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a4, $a4, 1
	movcf2gr	$t1, $fcc0
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	slli.d	$t0, $a4, 3
	fldx.d	$fa1, $fp, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $fp, $a6
	move	$a6, $a4
	blt	$a4, $a7, .LBB27_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB27_25 Depth=1
	andi	$a6, $a3, 8
	beqz	$a6, .LBB27_30
	b	.LBB27_32
	.p2align	4, , 16
.LBB27_29:                              #   in Loop: Header=BB27_25 Depth=1
	move	$a4, $zero
	andi	$a6, $a3, 8
	bnez	$a6, .LBB27_32
.LBB27_30:                              #   in Loop: Header=BB27_25 Depth=1
	addi.d	$a5, $a5, -2
	srai.d	$a5, $a5, 1
	bne	$a4, $a5, .LBB27_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB27_25 Depth=1
	slli.d	$a5, $a4, 1
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 3
	fldx.d	$fa1, $fp, $a6
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a5
	b	.LBB27_33
	.p2align	4, , 16
.LBB27_32:                              #   in Loop: Header=BB27_25 Depth=1
	beqz	$a4, .LBB27_23
	.p2align	4, , 16
.LBB27_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB27_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 1
	slli.d	$a7, $a6, 3
	fldx.d	$fa1, $fp, $a7
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB27_24
# %bb.34:                               #   in Loop: Header=BB27_33 Depth=2
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a6
	bltu	$a1, $a5, .LBB27_33
	b	.LBB27_23
.LBB27_35:                              # %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end27:
	.size	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .Lfunc_end27-_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ # -- Begin function _ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,@function
_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_: # @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 129
	blt	$a0, $a1, .LBB28_2
# %bb.1:
	addi.d	$s1, $s0, 8
	ori	$s2, $zero, 8
	ori	$s3, $zero, 9
	ori	$s4, $zero, 128
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB28_18
.LBB28_2:
	beq	$s0, $fp, .LBB28_25
# %bb.3:
	addi.d	$a2, $s0, 8
	beq	$a2, $fp, .LBB28_25
# %bb.4:                                # %.lr.ph.i17.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $s0
	b	.LBB28_9
	.p2align	4, , 16
.LBB28_5:                               #   in Loop: Header=BB28_9 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB28_13
# %bb.6:                                #   in Loop: Header=BB28_9 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB28_7:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB28_9 Depth=1
	move	$a0, $s0
.LBB28_8:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB28_9 Depth=1
	addi.d	$a2, $s3, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $fp, .LBB28_25
.LBB28_9:                               # %.lr.ph.i17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_12 Depth 2
	move	$a1, $s3
	fld.d	$fs0, $s3, 8
	fld.d	$fa0, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$s3, $a2
	bceqz	$fcc0, .LBB28_5
# %bb.10:                               #   in Loop: Header=BB28_9 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB28_8
# %bb.11:                               # %.lr.ph.i.i24.preheader
                                        #   in Loop: Header=BB28_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB28_12:                              # %.lr.ph.i.i24
                                        #   Parent Loop BB28_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB28_12
	b	.LBB28_8
.LBB28_13:                              #   in Loop: Header=BB28_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB28_8
# %bb.14:                               #   in Loop: Header=BB28_9 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB28_7
.LBB28_15:                              #   in Loop: Header=BB28_18 Depth=1
	fst.d	$fa0, $a0, 8
	.p2align	4, , 16
.LBB28_16:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB28_18 Depth=1
	move	$a0, $s0
.LBB28_17:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB28_18 Depth=1
	fst.d	$fs0, $a0, 0
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	beq	$s2, $s4, .LBB28_24
.LBB28_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_23 Depth 2
	fldx.d	$fs0, $s0, $s2
	fld.d	$fa0, $s0, 0
	move	$a0, $s6
	fcmp.cule.d	$fcc0, $fa0, $fs0
	add.d	$s6, $s0, $s2
	bcnez	$fcc0, .LBB28_21
# %bb.19:                               #   in Loop: Header=BB28_18 Depth=1
	bltu	$s2, $s3, .LBB28_15
# %bb.20:                               #   in Loop: Header=BB28_18 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB28_16
	.p2align	4, , 16
.LBB28_21:                              #   in Loop: Header=BB28_18 Depth=1
	fld.d	$fa0, $a0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s6
	bcnez	$fcc0, .LBB28_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB28_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB28_23:                              # %.lr.ph.i.i
                                        #   Parent Loop BB28_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB28_23
	b	.LBB28_17
.LBB28_24:                              # %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	addi.d	$a0, $s0, 128
	bne	$a0, $fp, .LBB28_27
.LBB28_25:                              # %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
	.p2align	4, , 16
.LBB28_26:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB28_27 Depth=1
	addi.d	$a0, $a0, 8
	fst.d	$fa0, $a1, 0
	beq	$a0, $fp, .LBB28_25
.LBB28_27:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_29 Depth 2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a1, $a0
	bcnez	$fcc0, .LBB28_26
# %bb.28:                               # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB28_27 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB28_29:                              # %.lr.ph.i.i12
                                        #   Parent Loop BB28_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa1, $a1, 0
	fld.d	$fa1, $a1, -16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB28_29
	b	.LBB28_26
.Lfunc_end28:
	.size	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .Lfunc_end28-_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 3
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB29_2
.LBB29_1:                               # %.loopexit
	ret
.LBB29_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB29_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB29_6
	.p2align	4, , 16
.LBB29_4:                               #   in Loop: Header=BB29_6 Depth=1
	move	$t0, $a7
.LBB29_5:                               # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
                                        #   in Loop: Header=BB29_6 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB29_1
.LBB29_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_8 Depth 2
                                        #     Child Loop BB29_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB29_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB29_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB29_8:                               # %.lr.ph.i
                                        #   Parent Loop BB29_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	alsl.d	$t3, $t0, $a0, 4
	fldx.d	$fa1, $a0, $t2
	fld.d	$fa2, $t3, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a7, $a7, 1
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a7
	blt	$a7, $a1, .LBB29_8
.LBB29_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB29_6 Depth=1
	bne	$a7, $a2, .LBB29_11
# %bb.10:                               #   in Loop: Header=BB29_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
.LBB29_11:                              #   in Loop: Header=BB29_6 Depth=1
	bge	$a6, $a7, .LBB29_4
	.p2align	4, , 16
.LBB29_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB29_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB29_4
# %bb.13:                               #   in Loop: Header=BB29_12 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB29_12
	b	.LBB29_5
	.p2align	4, , 16
.LBB29_14:                              #   in Loop: Header=BB29_16 Depth=1
	move	$a4, $a2
.LBB29_15:                              # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
                                        #   in Loop: Header=BB29_16 Depth=1
	slli.d	$a2, $a4, 3
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB29_1
.LBB29_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_18 Depth 2
                                        #     Child Loop BB29_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB29_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB29_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB29_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB29_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a2, 2
	slli.d	$a6, $a5, 3
	alsl.d	$a7, $a4, $a0, 4
	fldx.d	$fa1, $a0, $a6
	fld.d	$fa2, $a7, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a2, $a2, 1
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 3
	fldx.d	$fa1, $a0, $a5
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $a0, $a4
	blt	$a2, $a1, .LBB29_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB29_16 Depth=1
	bge	$a3, $a2, .LBB29_14
	.p2align	4, , 16
.LBB29_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB29_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB29_14
# %bb.21:                               #   in Loop: Header=BB29_20 Depth=2
	slli.d	$a2, $a2, 3
	fstx.d	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB29_20
	b	.LBB29_15
.Lfunc_end29:
	.size	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end29-_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
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

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"test %i failed\n"
	.size	.L.str.11, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z19less_than_function1PKvS0_
	.addrsig_sym _Z19less_than_function2dd
