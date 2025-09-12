	.file	"stepanov_abstraction.cpp"
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
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
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
	ori	$s1, $zero, 2
	pcalau12i	$s5, %pc_hi20(iterations)
	pcalau12i	$s2, %pc_hi20(init_value)
	blt	$a0, $s1, .LBB5_3
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, %pc_lo12(iterations)
	beq	$s0, $s1, .LBB5_3
# %bb.2:
	ld.d	$a0, $fp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s2, %pc_lo12(init_value)
.LBB5_3:                                # %.thread
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a0, $a0, 123
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	pcalau12i	$s7, %pc_hi20(dpb)
	ld.d	$s1, $s7, %pc_lo12(dpb)
	pcalau12i	$s8, %pc_hi20(dpe)
	ld.d	$s6, $s8, %pc_lo12(dpe)
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	beq	$s1, $s6, .LBB5_10
# %bb.4:                                # %.lr.ph.i.preheader
	sub.d	$a0, $s6, $s1
	addi.d	$a1, $a0, -8
	ori	$a2, $zero, 24
	move	$a0, $s1
	bltu	$a1, $a2, .LBB5_8
# %bb.5:                                # %vector.ph
	srli.d	$a0, $a1, 3
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 61, 2
	slli.d	$a2, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s1, $a0
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $s1, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB5_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_6
# %bb.7:                                # %middle.block
	beq	$a1, $a2, .LBB5_9
	.p2align	4, , 16
.LBB5_8:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	bne	$a1, $s6, .LBB5_8
.LBB5_9:                                # %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit.loopexit
	fld.d	$fa0, $s2, %pc_lo12(init_value)
.LBB5_10:                               # %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit
	pcalau12i	$a0, %pc_hi20(DVpb)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a4, $a0, %pc_lo12(DVpb)
	pcalau12i	$a0, %pc_hi20(DVpe)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(DVpe)
	beq	$a4, $a0, .LBB5_18
# %bb.11:                               # %.lr.ph.i68.preheader
	sub.d	$a1, $a0, $a4
	addi.d	$a1, $a1, -8
	ori	$a2, $zero, 24
	bgeu	$a1, $a2, .LBB5_13
# %bb.12:
	move	$a1, $a4
	b	.LBB5_16
.LBB5_13:                               # %vector.ph298
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
.LBB5_14:                               # %vector.body303
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_14
# %bb.15:                               # %middle.block308
	beq	$a2, $a3, .LBB5_17
	.p2align	4, , 16
.LBB5_16:                               # %.lr.ph.i68
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a1, $a2
	bne	$a2, $a0, .LBB5_16
.LBB5_17:                               # %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit.loopexit
	fld.d	$fa0, $s2, %pc_lo12(init_value)
.LBB5_18:                               # %_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_.exit
	pcalau12i	$a0, %pc_hi20(DV10pb)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a4, $a0, %pc_lo12(DV10pb)
	pcalau12i	$a0, %pc_hi20(DV10pe)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(DV10pe)
	beq	$a4, $a0, .LBB5_25
# %bb.19:                               # %.lr.ph.i71.preheader
	sub.d	$a1, $a0, $a4
	addi.d	$a1, $a1, -8
	ori	$a2, $zero, 24
	bgeu	$a1, $a2, .LBB5_21
# %bb.20:
	move	$a1, $a4
	b	.LBB5_24
.LBB5_21:                               # %vector.ph313
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
.LBB5_22:                               # %vector.body318
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_22
# %bb.23:                               # %middle.block323
	beq	$a2, $a3, .LBB5_25
	.p2align	4, , 16
.LBB5_24:                               # %.lr.ph.i71
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a1, $a2
	bne	$a2, $a0, .LBB5_24
.LBB5_25:                               # %_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_.exit
	ld.w	$a0, $s5, %pc_lo12(iterations)
	pcalau12i	$a1, %pc_hi20(dPb)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(dPe)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(DVPb)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(DVPe)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(DV10Pb)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(DV10Pe)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	blez	$a0, .LBB5_97
# %bb.26:                               # %.lr.ph.i74
	pcalau12i	$s0, %pc_hi20(current_test)
	beq	$s1, $s6, .LBB5_33
# %bb.27:                               # %.lr.ph.i.preheader.i.preheader
	movgr2fr.d	$fs0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs1, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s3, $zero
	b	.LBB5_29
	.p2align	4, , 16
.LBB5_28:                               # %_Z9check_sumd.exit.i
                                        #   in Loop: Header=BB5_29 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB5_37
.LBB5_29:                               # %.lr.ph.i.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_30 Depth 2
	fmov.d	$fa0, $fs0
	move	$a1, $s1
	.p2align	4, , 16
.LBB5_30:                               # %.lr.ph.i.i
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s6, .LBB5_30
# %bb.31:                               # %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i
                                        #   in Loop: Header=BB5_29 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs1
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_28
# %bb.32:                               #   in Loop: Header=BB5_29 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_28
.LBB5_33:                               # %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.preheader.i
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs0, $a1
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s1, $zero
	b	.LBB5_35
	.p2align	4, , 16
.LBB5_34:                               # %_Z9check_sumd.exit.us.i
                                        #   in Loop: Header=BB5_35 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_37
.LBB5_35:                               # %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_34
# %bb.36:                               #   in Loop: Header=BB5_35 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_34
.LBB5_37:                               # %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit
	blez	$a0, .LBB5_97
# %bb.38:                               # %.lr.ph.i76
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(dPb)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(dPe)
	beq	$s1, $s3, .LBB5_45
# %bb.39:                               # %.lr.ph.preheader.i.i.preheader
	movgr2fr.d	$fs0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs1, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s4, $zero
	b	.LBB5_41
	.p2align	4, , 16
.LBB5_40:                               # %_Z9check_sumd.exit.i80
                                        #   in Loop: Header=BB5_41 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB5_49
.LBB5_41:                               # %.lr.ph.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_42 Depth 2
	fmov.d	$fa0, $fs0
	move	$a1, $s1
	.p2align	4, , 16
.LBB5_42:                               # %.lr.ph.i.i78
                                        #   Parent Loop BB5_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_42
# %bb.43:                               # %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.loopexit.i
                                        #   in Loop: Header=BB5_41 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs1
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_40
# %bb.44:                               #   in Loop: Header=BB5_41 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_40
.LBB5_45:                               # %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.preheader.i
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs0, $a1
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s1, $zero
	b	.LBB5_47
	.p2align	4, , 16
.LBB5_46:                               # %_Z9check_sumd.exit.us.i83
                                        #   in Loop: Header=BB5_47 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_49
.LBB5_47:                               # %_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_.exit.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_46
# %bb.48:                               #   in Loop: Header=BB5_47 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_46
.LBB5_49:                               # %_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc.exit
	blez	$a0, .LBB5_97
# %bb.50:                               # %.lr.ph.i85
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(DVpb)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(DVpe)
	beq	$s1, $s3, .LBB5_57
# %bb.51:                               # %.lr.ph.i.preheader.i87.preheader
	movgr2fr.d	$fs0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs1, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s4, $zero
	b	.LBB5_53
	.p2align	4, , 16
.LBB5_52:                               # %_Z9check_sumd.exit.i92
                                        #   in Loop: Header=BB5_53 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB5_61
.LBB5_53:                               # %.lr.ph.i.preheader.i87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_54 Depth 2
	move	$a1, $s1
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB5_54:                               # %.lr.ph.i.i89
                                        #   Parent Loop BB5_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_54
# %bb.55:                               # %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.loopexit.i
                                        #   in Loop: Header=BB5_53 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs1
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_52
# %bb.56:                               #   in Loop: Header=BB5_53 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_52
.LBB5_57:                               # %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.preheader.i
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs0, $a1
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s1, $zero
	b	.LBB5_59
	.p2align	4, , 16
.LBB5_58:                               # %_Z9check_sumd.exit.us.i96
                                        #   in Loop: Header=BB5_59 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_61
.LBB5_59:                               # %_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_.exit.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_58
# %bb.60:                               #   in Loop: Header=BB5_59 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_58
.LBB5_61:                               # %_Z15test_accumulateIP12ValueWrapperIdES1_EvT_S3_T0_PKc.exit
	blez	$a0, .LBB5_97
# %bb.62:                               # %.lr.ph.i99
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(DVPb)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(DVPe)
	beq	$s1, $s3, .LBB5_69
# %bb.63:                               # %.lr.ph.preheader.i.i100.preheader
	movgr2fr.d	$fs0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs1, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s4, $zero
	b	.LBB5_65
	.p2align	4, , 16
.LBB5_64:                               # %_Z9check_sumd.exit.i103
                                        #   in Loop: Header=BB5_65 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB5_73
.LBB5_65:                               # %.lr.ph.preheader.i.i100
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_66 Depth 2
	move	$a1, $s1
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB5_66:                               # %.lr.ph.i.i101
                                        #   Parent Loop BB5_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_66
# %bb.67:                               # %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.loopexit.i
                                        #   in Loop: Header=BB5_65 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs1
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_64
# %bb.68:                               #   in Loop: Header=BB5_65 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_64
.LBB5_69:                               # %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.us.preheader.i
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs0, $a1
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s1, $zero
	b	.LBB5_71
	.p2align	4, , 16
.LBB5_70:                               # %_Z9check_sumd.exit.us.i105
                                        #   in Loop: Header=BB5_71 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_73
.LBB5_71:                               # %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_.exit.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_70
# %bb.72:                               #   in Loop: Header=BB5_71 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_70
.LBB5_73:                               # %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc.exit
	blez	$a0, .LBB5_97
# %bb.74:                               # %.lr.ph.i107
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(DV10pb)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(DV10pe)
	beq	$s1, $s3, .LBB5_81
# %bb.75:                               # %.lr.ph.i.preheader.i109.preheader
	movgr2fr.d	$fs0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs1, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s4, $zero
	b	.LBB5_77
	.p2align	4, , 16
.LBB5_76:                               # %_Z9check_sumd.exit.i115
                                        #   in Loop: Header=BB5_77 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB5_85
.LBB5_77:                               # %.lr.ph.i.preheader.i109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_78 Depth 2
	move	$a1, $s1
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB5_78:                               # %.lr.ph.i.i111
                                        #   Parent Loop BB5_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_78
# %bb.79:                               # %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.loopexit.i
                                        #   in Loop: Header=BB5_77 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs1
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_76
# %bb.80:                               #   in Loop: Header=BB5_77 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_76
.LBB5_81:                               # %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.preheader.i
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs0, $a1
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s1, $zero
	b	.LBB5_83
	.p2align	4, , 16
.LBB5_82:                               # %_Z9check_sumd.exit.us.i119
                                        #   in Loop: Header=BB5_83 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_85
.LBB5_83:                               # %_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_.exit.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_82
# %bb.84:                               #   in Loop: Header=BB5_83 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_82
.LBB5_85:                               # %_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc.exit
	blez	$a0, .LBB5_97
# %bb.86:                               # %.lr.ph.i122
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(DV10Pb)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(DV10Pe)
	beq	$s1, $s3, .LBB5_93
# %bb.87:                               # %.lr.ph.preheader.i.i124.preheader
	movgr2fr.d	$fs0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs1, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s4, $zero
	b	.LBB5_89
	.p2align	4, , 16
.LBB5_88:                               # %_Z9check_sumd.exit.i130
                                        #   in Loop: Header=BB5_89 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB5_97
.LBB5_89:                               # %.lr.ph.preheader.i.i124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_90 Depth 2
	move	$a1, $s1
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB5_90:                               # %.lr.ph.i.i126
                                        #   Parent Loop BB5_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_90
# %bb.91:                               # %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.loopexit.i
                                        #   in Loop: Header=BB5_89 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs1
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_88
# %bb.92:                               #   in Loop: Header=BB5_89 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_88
.LBB5_93:                               # %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.preheader.i
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs0, $a1
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$fp, $a1, %pc_lo12(.L.str.50)
	move	$s1, $zero
	b	.LBB5_95
	.p2align	4, , 16
.LBB5_94:                               # %_Z9check_sumd.exit.us.i134
                                        #   in Loop: Header=BB5_95 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_97
.LBB5_95:                               # %_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_.exit.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_94
# %bb.96:                               #   in Loop: Header=BB5_95 Depth=1
	ld.w	$a1, $s0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ld.w	$a0, $s5, %pc_lo12(iterations)
	b	.LBB5_94
.LBB5_97:                               # %_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc.exit
	lu12i.w	$a1, 67108
	ori	$a1, $a1, 3539
	mul.d	$a0, $a0, $a1
	pcalau12i	$s1, %pc_hi20(dMpb)
	ld.d	$fp, $s1, %pc_lo12(dMpb)
	pcalau12i	$s2, %pc_hi20(dMpe)
	ld.d	$s0, $s2, %pc_lo12(dMpe)
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 39
	add.d	$a0, $a0, $a1
	st.w	$a0, $s5, %pc_lo12(iterations)
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	beq	$fp, $s0, .LBB5_100
	.p2align	4, , 16
.LBB5_98:                               # %.lr.ph.i138
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.d	$a0, $fp, 8
	fst.d	$fa0, $fp, 0
	move	$fp, $a0
	bne	$a0, $s0, .LBB5_98
# %bb.99:                               # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit
	ld.d	$fp, $s1, %pc_lo12(dMpb)
	ld.d	$s0, $s2, %pc_lo12(dMpe)
.LBB5_100:                              # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(DVMpb)
	pcalau12i	$s1, %pc_hi20(DV10Mpb)
	beq	$fp, $s0, .LBB5_115
# %bb.101:                              # %.lr.ph.i141.preheader
	ld.d	$a6, $s3, %pc_lo12(DVMpb)
	sub.d	$a0, $s0, $fp
	addi.d	$a1, $a0, -8
	srli.d	$a0, $a1, 3
	ori	$a2, $zero, 24
	addi.d	$a0, $a0, 1
	bltu	$a1, $a2, .LBB5_106
# %bb.102:                              # %.lr.ph.i141.preheader
	sub.d	$a2, $a6, $fp
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB5_106
# %bb.103:                              # %vector.ph328
	bstrpick.d	$a2, $a0, 61, 2
	slli.d	$a4, $a2, 2
	slli.d	$a3, $a2, 5
	add.d	$a2, $a6, $a3
	add.d	$a3, $fp, $a3
	addi.d	$a5, $fp, 16
	addi.d	$a6, $a6, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB5_104:                              # %vector.body331
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB5_104
# %bb.105:                              # %middle.block339
	bne	$a0, $a4, .LBB5_107
	b	.LBB5_108
.LBB5_106:
	move	$a2, $a6
	move	$a3, $fp
	.p2align	4, , 16
.LBB5_107:                              # %.lr.ph.i141
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	addi.d	$a5, $a3, 8
	addi.d	$a3, $a2, 8
	st.d	$a4, $a2, 0
	move	$a2, $a3
	move	$a3, $a5
	bne	$a5, $s0, .LBB5_107
.LBB5_108:                              # %_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit
	ld.d	$a5, $s1, %pc_lo12(DV10Mpb)
	ori	$a2, $zero, 24
	bltu	$a1, $a2, .LBB5_113
# %bb.109:                              # %_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit
	sub.d	$a1, $a5, $fp
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB5_113
# %bb.110:                              # %vector.ph347
	bstrpick.d	$a1, $a0, 61, 2
	slli.d	$a3, $a1, 2
	slli.d	$a2, $a1, 5
	add.d	$a1, $a5, $a2
	add.d	$a2, $fp, $a2
	addi.d	$a4, $fp, 16
	addi.d	$a5, $a5, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB5_111:                              # %vector.body350
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_111
# %bb.112:                              # %middle.block359
	bne	$a0, $a3, .LBB5_114
	b	.LBB5_115
.LBB5_113:
	move	$a1, $a5
	move	$a2, $fp
	.p2align	4, , 16
.LBB5_114:                              # %.lr.ph.i145
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, 0
	addi.d	$a3, $a2, 8
	addi.d	$a2, $a1, 8
	st.d	$a0, $a1, 0
	move	$a1, $a2
	move	$a2, $a3
	bne	$a3, $s0, .LBB5_114
.LBB5_115:                              # %_ZN9benchmark4copyIPdP12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEvT_SE_T0_.exit
	ld.d	$a2, $s7, %pc_lo12(dpb)
	ld.d	$a3, $s8, %pc_lo12(dpe)
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a4, $a0, %pc_lo12(.L.str.32)
	movgr2fr.d	$fs0, $zero
	move	$a0, $fp
	move	$a1, $s0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(dMPb)
	ld.d	$a0, $s4, %pc_lo12(dMPb)
	pcalau12i	$fp, %pc_hi20(dMPe)
	ld.d	$a1, $fp, %pc_lo12(dMPe)
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $s6, %pc_lo12(dPb)
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(dPe)
	pcalau12i	$a4, %pc_hi20(.L.str.33)
	addi.d	$a4, $a4, %pc_lo12(.L.str.33)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(DVMpb)
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(DVMpe)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(DVMpe)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DVpb)
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DVpe)
	pcalau12i	$a4, %pc_hi20(.L.str.34)
	addi.d	$a4, $a4, %pc_lo12(.L.str.34)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(DVMPb)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(DVMPb)
	pcalau12i	$a1, %pc_hi20(DVMPe)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(DVMPe)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DVPb)
	move	$s0, $s3
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DVPe)
	pcalau12i	$a4, %pc_hi20(.L.str.35)
	addi.d	$a4, $a4, %pc_lo12(.L.str.35)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(DV10Mpb)
	pcalau12i	$a1, %pc_hi20(DV10Mpe)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(DV10Mpe)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DV10pb)
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DV10pe)
	pcalau12i	$a4, %pc_hi20(.L.str.36)
	addi.d	$a4, $a4, %pc_lo12(.L.str.36)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(DV10MPb)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(DV10MPb)
	move	$s2, $s8
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(DV10MPe)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(DV10MPe)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DV10Pb)
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DV10Pe)
	pcalau12i	$a4, %pc_hi20(.L.str.37)
	addi.d	$a4, $a4, %pc_lo12(.L.str.37)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s5, %pc_lo12(iterations)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dMpb)
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $s8, %pc_lo12(dMpe)
	ld.d	$a2, $s7, %pc_lo12(dpb)
	ld.d	$a3, $s2, %pc_lo12(dpe)
	slli.d	$a4, $a4, 3
	st.w	$a4, $s5, %pc_lo12(iterations)
	pcalau12i	$a4, %pc_hi20(.L.str.38)
	addi.d	$a4, $a4, %pc_lo12(.L.str.38)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
	move	$s5, $s4
	ld.d	$a0, $s4, %pc_lo12(dMPb)
	ld.d	$a1, $fp, %pc_lo12(dMPe)
	ld.d	$a2, $s6, %pc_lo12(dPb)
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $s3, %pc_lo12(dPe)
	pcalau12i	$a4, %pc_hi20(.L.str.39)
	addi.d	$a4, $a4, %pc_lo12(.L.str.39)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(DVMpb)
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $s7, %pc_lo12(DVMpe)
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $fp, %pc_lo12(DVpb)
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $s4, %pc_lo12(DVpe)
	pcalau12i	$a4, %pc_hi20(.L.str.40)
	addi.d	$a4, $a4, %pc_lo12(.L.str.40)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(DVMPb)
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $s2, %pc_lo12(DVMPe)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DVPb)
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DVPe)
	pcalau12i	$a4, %pc_hi20(.L.str.41)
	addi.d	$a4, $a4, %pc_lo12(.L.str.41)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(DV10Mpb)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(DV10Mpe)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DV10pb)
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DV10pe)
	pcalau12i	$a4, %pc_hi20(.L.str.42)
	addi.d	$a4, $a4, %pc_lo12(.L.str.42)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(DV10MPb)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(DV10MPe)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DV10Pb)
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DV10Pe)
	pcalau12i	$a4, %pc_hi20(.L.str.43)
	addi.d	$a4, $a4, %pc_lo12(.L.str.43)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dMpb)
	ld.d	$a1, $s8, %pc_lo12(dMpe)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(dpb)
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(dpe)
	pcalau12i	$a4, %pc_hi20(.L.str.44)
	addi.d	$a4, $a4, %pc_lo12(.L.str.44)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(dMPb)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dMPe)
	ld.d	$a2, $s6, %pc_lo12(dPb)
	ld.d	$a3, $s3, %pc_lo12(dPe)
	pcalau12i	$a4, %pc_hi20(.L.str.45)
	addi.d	$a4, $a4, %pc_lo12(.L.str.45)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(DVMpb)
	ld.d	$a1, $s7, %pc_lo12(DVMpe)
	ld.d	$a2, $fp, %pc_lo12(DVpb)
	ld.d	$a3, $s4, %pc_lo12(DVpe)
	pcalau12i	$a4, %pc_hi20(.L.str.46)
	addi.d	$a4, $a4, %pc_lo12(.L.str.46)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(DVMPb)
	ld.d	$a1, $s2, %pc_lo12(DVMPe)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DVPb)
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DVPe)
	pcalau12i	$a4, %pc_hi20(.L.str.47)
	addi.d	$a4, $a4, %pc_lo12(.L.str.47)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(DV10Mpb)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(DV10Mpe)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DV10pb)
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DV10pe)
	pcalau12i	$a4, %pc_hi20(.L.str.48)
	addi.d	$a4, $a4, %pc_lo12(.L.str.48)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(DV10MPb)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(DV10MPe)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(DV10Pb)
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(DV10Pe)
	pcalau12i	$a4, %pc_hi20(.L.str.49)
	addi.d	$a4, $a4, %pc_lo12(.L.str.49)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.section	.text._Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc,"axG",@progbits,_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc,comdat
	.weak	_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc # -- Begin function _Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc,@function
_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc: # @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$a4, %pc_hi20(iterations)
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a4, %pc_lo12(iterations)
	blez	$a4, .LBB6_50
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB6_20
# %bb.2:                                # %.lr.ph.split
	beq	$s2, $s1, .LBB6_32
# %bb.3:                                # %.lr.ph.i.preheader.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s4, $s0, 16
	addi.w	$s6, $zero, -8
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_4:                                # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
                                        #   in Loop: Header=BB6_6 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_5:                                # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB6_50
.LBB6_6:                                # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_10 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #       Child Loop BB6_14 Depth 3
                                        #     Child Loop BB6_18 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB6_10
# %bb.7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a0, $s8
	move	$a1, $s4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_8:                                # %vector.body
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB6_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB6_11
	.p2align	4, , 16
.LBB6_10:                               # %.lr.ph.i
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB6_10
.LBB6_11:                               # %.lr.ph.i8.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB6_13
	.p2align	4, , 16
.LBB6_12:                               # %..critedge.i_crit_edge
                                        #   in Loop: Header=BB6_13 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB6_17
.LBB6_13:                               # %.lr.ph.i8
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_14 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_14:                               #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB6_12
# %bb.15:                               #   in Loop: Header=BB6_14 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB6_14
# %bb.16:                               #   in Loop: Header=BB6_13 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB6_13
.LBB6_17:                               # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_18:                               # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_5
# %bb.19:                               #   in Loop: Header=BB6_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_18
	b	.LBB6_4
.LBB6_20:                               # %.lr.ph.split.us
	beq	$s2, $s1, .LBB6_44
# %bb.21:                               # %.lr.ph.i.preheader.us.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s4, $zero
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_22:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
                                        #   in Loop: Header=BB6_24 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_23:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB6_24 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a4, .LBB6_50
.LBB6_24:                               # %.lr.ph.i.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
                                        #     Child Loop BB6_28 Depth 2
                                        #     Child Loop BB6_30 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s6, .LBB6_28
# %bb.25:                               # %vector.body61.preheader
                                        #   in Loop: Header=BB6_24 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_26:                               # %vector.body61
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB6_26
# %bb.27:                               # %middle.block70
                                        #   in Loop: Header=BB6_24 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB6_29
	.p2align	4, , 16
.LBB6_28:                               # %.lr.ph.i.us
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB6_28
.LBB6_29:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB6_24 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_30:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_23
# %bb.31:                               #   in Loop: Header=BB6_30 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_30
	b	.LBB6_22
.LBB6_32:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12.preheader
	addi.w	$s2, $zero, -8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s4, $zero
	b	.LBB6_35
	.p2align	4, , 16
.LBB6_33:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16
                                        #   in Loop: Header=BB6_35 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_34:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us17
                                        #   in Loop: Header=BB6_35 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a4, .LBB6_50
.LBB6_35:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_37 Depth 2
                                        #       Child Loop BB6_38 Depth 3
                                        #     Child Loop BB6_42 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB6_37
	.p2align	4, , 16
.LBB6_36:                               # %..critedge.i.us_crit_edge
                                        #   in Loop: Header=BB6_37 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB6_41
.LBB6_37:                               # %.lr.ph.i8.us
                                        #   Parent Loop BB6_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_38 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_38:                               #   Parent Loop BB6_35 Depth=1
                                        #     Parent Loop BB6_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB6_36
# %bb.39:                               #   in Loop: Header=BB6_38 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s2, .LBB6_38
# %bb.40:                               #   in Loop: Header=BB6_37 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB6_37
.LBB6_41:                               # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB6_35 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_42:                               # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us
                                        #   Parent Loop BB6_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_34
# %bb.43:                               #   in Loop: Header=BB6_42 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_42
	b	.LBB6_33
.LBB6_44:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us.preheader
	pcalau12i	$s1, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s0, $a0, %pc_lo12(.L.str.51)
	move	$s2, $zero
	b	.LBB6_47
	.p2align	4, , 16
.LBB6_45:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us
                                        #   in Loop: Header=BB6_47 Depth=1
	ld.w	$a1, $s1, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_46:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us.us
                                        #   in Loop: Header=BB6_47 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB6_50
.LBB6_47:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_48 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_48:                               #   Parent Loop BB6_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_46
# %bb.49:                               #   in Loop: Header=BB6_48 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_48
	b	.LBB6_45
.LBB6_50:                               # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end6:
	.size	_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc, .Lfunc_end6-_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc,"axG",@progbits,_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc,comdat
	.weak	_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc # -- Begin function _Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc,@function
_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc: # @_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB7_52
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB7_15
# %bb.2:                                # %.lr.ph.split
	bne	$s2, $s1, .LBB7_22
# %bb.3:                                # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us16.preheader
	addi.w	$s2, $zero, -8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s6, $zero
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_4:                                # %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us19
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_5:                                # %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us20
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB7_52
.LBB7_6:                                # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #       Child Loop BB7_9 Depth 3
                                        #     Child Loop BB7_13 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %..critedge.i.us_crit_edge
                                        #   in Loop: Header=BB7_8 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB7_12
.LBB7_8:                                # %.lr.ph.i12.us
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_9 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_9:                                #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB7_7
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s2, .LBB7_9
# %bb.11:                               #   in Loop: Header=BB7_8 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB7_8
.LBB7_12:                               # %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_13:                               # %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit.us
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_5
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_13
	b	.LBB7_4
.LBB7_15:                               # %.lr.ph.split.us
	bne	$s2, $s1, .LBB7_40
# %bb.16:                               # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us.us.preheader
	pcalau12i	$s1, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s0, $a0, %pc_lo12(.L.str.51)
	move	$s2, $zero
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_17:                               # %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us.us
                                        #   in Loop: Header=BB7_19 Depth=1
	ld.w	$a1, $s1, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_18:                               # %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us.us
                                        #   in Loop: Header=BB7_19 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB7_52
.LBB7_19:                               # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_20:                               #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_18
# %bb.21:                               #   in Loop: Header=BB7_20 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_20
	b	.LBB7_17
.LBB7_22:                               # %.lr.ph.preheader.i.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s6, $zero, -8
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_23:                               # %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i
                                        #   in Loop: Header=BB7_25 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_24:                               # %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit
                                        #   in Loop: Header=BB7_25 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB7_52
.LBB7_25:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
                                        #     Child Loop BB7_30 Depth 2
                                        #     Child Loop BB7_33 Depth 2
                                        #       Child Loop BB7_34 Depth 3
                                        #     Child Loop BB7_38 Depth 2
	beqz	$s7, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_27:                               # %vector.body.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_28:                               # %vector.body
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB7_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB7_25 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB7_31
	.p2align	4, , 16
.LBB7_30:                               # %.lr.ph.i
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB7_30
.LBB7_31:                               # %.lr.ph.i12.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_32:                               # %..critedge.i_crit_edge
                                        #   in Loop: Header=BB7_33 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB7_37
.LBB7_33:                               # %.lr.ph.i12
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_34 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_34:                               #   Parent Loop BB7_25 Depth=1
                                        #     Parent Loop BB7_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB7_32
# %bb.35:                               #   in Loop: Header=BB7_34 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB7_34
# %bb.36:                               #   in Loop: Header=BB7_33 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB7_33
.LBB7_37:                               # %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_38:                               # %_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_.exit.loopexit
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_24
# %bb.39:                               #   in Loop: Header=BB7_38 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_38
	b	.LBB7_23
.LBB7_40:                               # %.lr.ph.preheader.i.us.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s6, $zero
	b	.LBB7_43
	.p2align	4, , 16
.LBB7_41:                               # %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us
                                        #   in Loop: Header=BB7_43 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_42:                               # %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us
                                        #   in Loop: Header=BB7_43 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB7_52
.LBB7_43:                               # %.lr.ph.preheader.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_46 Depth 2
                                        #     Child Loop BB7_48 Depth 2
                                        #     Child Loop BB7_50 Depth 2
	beqz	$s7, .LBB7_45
# %bb.44:                               #   in Loop: Header=BB7_43 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_45:                               # %vector.body64.preheader
                                        #   in Loop: Header=BB7_43 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_46:                               # %vector.body64
                                        #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB7_46
# %bb.47:                               # %middle.block73
                                        #   in Loop: Header=BB7_43 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB7_49
	.p2align	4, , 16
.LBB7_48:                               # %.lr.ph.i.us
                                        #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB7_48
.LBB7_49:                               # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB7_43 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_50:                               # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit.us
                                        #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_42
# %bb.51:                               #   in Loop: Header=BB7_50 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_50
	b	.LBB7_41
.LBB7_52:                               # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end7:
	.size	_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc, .Lfunc_end7-_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc,"axG",@progbits,_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc,comdat
	.weak	_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc # -- Begin function _Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc,@function
_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc: # @_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$a4, %pc_hi20(iterations)
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a4, %pc_lo12(iterations)
	blez	$a4, .LBB8_50
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB8_20
# %bb.2:                                # %.lr.ph.split
	beq	$s2, $s1, .LBB8_32
# %bb.3:                                # %.lr.ph.i.preheader.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s4, $s0, 16
	addi.w	$s6, $zero, -8
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_4:                                # %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i
                                        #   in Loop: Header=BB8_6 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB8_5:                                # %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit
                                        #   in Loop: Header=BB8_6 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB8_50
.LBB8_6:                                # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #     Child Loop BB8_10 Depth 2
                                        #     Child Loop BB8_13 Depth 2
                                        #       Child Loop BB8_14 Depth 3
                                        #     Child Loop BB8_18 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB8_10
# %bb.7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $s8
	move	$a1, $s4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_8:                                # %vector.body
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB8_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB8_11
	.p2align	4, , 16
.LBB8_10:                               # %.lr.ph.i
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a1, 8
	addi.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a1
	move	$a1, $a3
	bne	$a3, $s1, .LBB8_10
.LBB8_11:                               # %.lr.ph.i8.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_12:                               # %..critedge.i_crit_edge
                                        #   in Loop: Header=BB8_13 Depth=2
	addi.d	$a3, $a5, 8
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB8_17
.LBB8_13:                               # %.lr.ph.i8
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_14 Depth 3
	ld.d	$a2, $a1, 0
	movgr2fr.d	$fa0, $a2
	move	$a3, $a0
	.p2align	4, , 16
.LBB8_14:                               #   Parent Loop BB8_6 Depth=1
                                        #     Parent Loop BB8_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a5, $s0, $a3
	bcnez	$fcc0, .LBB8_12
# %bb.15:                               #   in Loop: Header=BB8_14 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a5, 8
	bne	$a3, $s6, .LBB8_14
# %bb.16:                               #   in Loop: Header=BB8_13 Depth=2
	move	$a3, $s0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB8_13
.LBB8_17:                               # %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB8_18:                               # %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB8_5
# %bb.19:                               #   in Loop: Header=BB8_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB8_18
	b	.LBB8_4
.LBB8_20:                               # %.lr.ph.split.us
	beq	$s2, $s1, .LBB8_44
# %bb.21:                               # %.lr.ph.i.preheader.us.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s4, $zero
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_22:                               # %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us
                                        #   in Loop: Header=BB8_24 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB8_23:                               # %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us
                                        #   in Loop: Header=BB8_24 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a4, .LBB8_50
.LBB8_24:                               # %.lr.ph.i.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_26 Depth 2
                                        #     Child Loop BB8_28 Depth 2
                                        #     Child Loop BB8_30 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s6, .LBB8_28
# %bb.25:                               # %vector.body61.preheader
                                        #   in Loop: Header=BB8_24 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_26:                               # %vector.body61
                                        #   Parent Loop BB8_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB8_26
# %bb.27:                               # %middle.block70
                                        #   in Loop: Header=BB8_24 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB8_29
	.p2align	4, , 16
.LBB8_28:                               # %.lr.ph.i.us
                                        #   Parent Loop BB8_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a1, 8
	addi.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a1
	move	$a1, $a3
	bne	$a3, $s1, .LBB8_28
.LBB8_29:                               # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB8_24 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB8_30:                               # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit.us
                                        #   Parent Loop BB8_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB8_23
# %bb.31:                               #   in Loop: Header=BB8_30 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB8_30
	b	.LBB8_22
.LBB8_32:                               # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us12.preheader
	addi.w	$s2, $zero, -8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s4, $zero
	b	.LBB8_35
	.p2align	4, , 16
.LBB8_33:                               # %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us16
                                        #   in Loop: Header=BB8_35 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB8_34:                               # %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us17
                                        #   in Loop: Header=BB8_35 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a4, .LBB8_50
.LBB8_35:                               # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_37 Depth 2
                                        #       Child Loop BB8_38 Depth 3
                                        #     Child Loop BB8_42 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB8_37
	.p2align	4, , 16
.LBB8_36:                               # %..critedge.i.us_crit_edge
                                        #   in Loop: Header=BB8_37 Depth=2
	addi.d	$a3, $a5, 8
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB8_41
.LBB8_37:                               # %.lr.ph.i8.us
                                        #   Parent Loop BB8_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_38 Depth 3
	ld.d	$a2, $a1, 0
	movgr2fr.d	$fa0, $a2
	move	$a3, $a0
	.p2align	4, , 16
.LBB8_38:                               #   Parent Loop BB8_35 Depth=1
                                        #     Parent Loop BB8_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a5, $s0, $a3
	bcnez	$fcc0, .LBB8_36
# %bb.39:                               #   in Loop: Header=BB8_38 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a5, 8
	bne	$a3, $s2, .LBB8_38
# %bb.40:                               #   in Loop: Header=BB8_37 Depth=2
	move	$a3, $s0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB8_37
.LBB8_41:                               # %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB8_35 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB8_42:                               # %_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_.exit.loopexit.us
                                        #   Parent Loop BB8_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB8_34
# %bb.43:                               #   in Loop: Header=BB8_42 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB8_42
	b	.LBB8_33
.LBB8_44:                               # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us.us.preheader
	pcalau12i	$s1, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s0, $a0, %pc_lo12(.L.str.51)
	move	$s2, $zero
	b	.LBB8_47
	.p2align	4, , 16
.LBB8_45:                               # %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us.us
                                        #   in Loop: Header=BB8_47 Depth=1
	ld.w	$a1, $s1, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB8_46:                               # %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us.us
                                        #   in Loop: Header=BB8_47 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB8_50
.LBB8_47:                               # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_48 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB8_48:                               #   Parent Loop BB8_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB8_46
# %bb.49:                               #   in Loop: Header=BB8_48 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB8_48
	b	.LBB8_45
.LBB8_50:                               # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end8:
	.size	_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc, .Lfunc_end8-_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc,"axG",@progbits,_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc,comdat
	.weak	_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc # -- Begin function _Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc,@function
_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc: # @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB9_52
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB9_15
# %bb.2:                                # %.lr.ph.split
	bne	$s2, $s1, .LBB9_22
# %bb.3:                                # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us17.preheader
	addi.w	$s2, $zero, -8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s6, $zero
	b	.LBB9_6
	.p2align	4, , 16
.LBB9_4:                                # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us20
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB9_5:                                # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us21
                                        #   in Loop: Header=BB9_6 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB9_52
.LBB9_6:                                # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
                                        #       Child Loop BB9_9 Depth 3
                                        #     Child Loop BB9_13 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB9_8
	.p2align	4, , 16
.LBB9_7:                                # %..critedge.i.us_crit_edge
                                        #   in Loop: Header=BB9_8 Depth=2
	addi.d	$a3, $a5, 8
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB9_12
.LBB9_8:                                # %.lr.ph.i13.us
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
	ld.d	$a2, $a1, 0
	movgr2fr.d	$fa0, $a2
	move	$a3, $a0
	.p2align	4, , 16
.LBB9_9:                                #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a5, $s0, $a3
	bcnez	$fcc0, .LBB9_7
# %bb.10:                               #   in Loop: Header=BB9_9 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a5, 8
	bne	$a3, $s2, .LBB9_9
# %bb.11:                               #   in Loop: Header=BB9_8 Depth=2
	move	$a3, $s0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB9_8
.LBB9_12:                               # %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB9_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB9_13:                               # %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit.us
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB9_5
# %bb.14:                               #   in Loop: Header=BB9_13 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB9_13
	b	.LBB9_4
.LBB9_15:                               # %.lr.ph.split.us
	bne	$s2, $s1, .LBB9_40
# %bb.16:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us.us.preheader
	pcalau12i	$s1, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s0, $a0, %pc_lo12(.L.str.51)
	move	$s2, $zero
	b	.LBB9_19
	.p2align	4, , 16
.LBB9_17:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us.us
                                        #   in Loop: Header=BB9_19 Depth=1
	ld.w	$a1, $s1, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB9_18:                               # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us.us
                                        #   in Loop: Header=BB9_19 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB9_52
.LBB9_19:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_20 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB9_20:                               #   Parent Loop BB9_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB9_18
# %bb.21:                               #   in Loop: Header=BB9_20 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB9_20
	b	.LBB9_17
.LBB9_22:                               # %.lr.ph.preheader.i.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s6, $zero, -8
	b	.LBB9_25
	.p2align	4, , 16
.LBB9_23:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i
                                        #   in Loop: Header=BB9_25 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB9_24:                               # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit
                                        #   in Loop: Header=BB9_25 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB9_52
.LBB9_25:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_28 Depth 2
                                        #     Child Loop BB9_30 Depth 2
                                        #     Child Loop BB9_33 Depth 2
                                        #       Child Loop BB9_34 Depth 3
                                        #     Child Loop BB9_38 Depth 2
	beqz	$s7, .LBB9_27
# %bb.26:                               #   in Loop: Header=BB9_25 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB9_30
	.p2align	4, , 16
.LBB9_27:                               # %vector.body.preheader
                                        #   in Loop: Header=BB9_25 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_28:                               # %vector.body
                                        #   Parent Loop BB9_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB9_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB9_25 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB9_31
	.p2align	4, , 16
.LBB9_30:                               # %.lr.ph.i
                                        #   Parent Loop BB9_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 8
	addi.d	$a5, $a1, 8
	st.d	$a2, $a1, 0
	move	$a0, $a3
	move	$a1, $a5
	bne	$a3, $s1, .LBB9_30
.LBB9_31:                               # %.lr.ph.i13.preheader
                                        #   in Loop: Header=BB9_25 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB9_33
	.p2align	4, , 16
.LBB9_32:                               # %..critedge.i_crit_edge
                                        #   in Loop: Header=BB9_33 Depth=2
	addi.d	$a3, $a5, 8
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB9_37
.LBB9_33:                               # %.lr.ph.i13
                                        #   Parent Loop BB9_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_34 Depth 3
	ld.d	$a2, $a1, 0
	movgr2fr.d	$fa0, $a2
	move	$a3, $a0
	.p2align	4, , 16
.LBB9_34:                               #   Parent Loop BB9_25 Depth=1
                                        #     Parent Loop BB9_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a5, $s0, $a3
	bcnez	$fcc0, .LBB9_32
# %bb.35:                               #   in Loop: Header=BB9_34 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a5, 8
	bne	$a3, $s6, .LBB9_34
# %bb.36:                               #   in Loop: Header=BB9_33 Depth=2
	move	$a3, $s0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB9_33
.LBB9_37:                               # %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit.preheader
                                        #   in Loop: Header=BB9_25 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB9_38:                               # %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_.exit.loopexit
                                        #   Parent Loop BB9_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB9_24
# %bb.39:                               #   in Loop: Header=BB9_38 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB9_38
	b	.LBB9_23
.LBB9_40:                               # %.lr.ph.preheader.i.us.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s6, $zero
	b	.LBB9_43
	.p2align	4, , 16
.LBB9_41:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us
                                        #   in Loop: Header=BB9_43 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB9_42:                               # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us
                                        #   in Loop: Header=BB9_43 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB9_52
.LBB9_43:                               # %.lr.ph.preheader.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_46 Depth 2
                                        #     Child Loop BB9_48 Depth 2
                                        #     Child Loop BB9_50 Depth 2
	beqz	$s7, .LBB9_45
# %bb.44:                               #   in Loop: Header=BB9_43 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB9_48
	.p2align	4, , 16
.LBB9_45:                               # %vector.body65.preheader
                                        #   in Loop: Header=BB9_43 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_46:                               # %vector.body65
                                        #   Parent Loop BB9_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB9_46
# %bb.47:                               # %middle.block74
                                        #   in Loop: Header=BB9_43 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB9_49
	.p2align	4, , 16
.LBB9_48:                               # %.lr.ph.i.us
                                        #   Parent Loop BB9_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 8
	addi.d	$a5, $a1, 8
	st.d	$a2, $a1, 0
	move	$a0, $a3
	move	$a1, $a5
	bne	$a3, $s1, .LBB9_48
.LBB9_49:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB9_43 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB9_50:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit.us
                                        #   Parent Loop BB9_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB9_42
# %bb.51:                               #   in Loop: Header=BB9_50 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB9_50
	b	.LBB9_41
.LBB9_52:                               # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end9:
	.size	_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc, .Lfunc_end9-_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc,"axG",@progbits,_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc,comdat
	.weak	_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc # -- Begin function _Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc,@function
_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc: # @_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$a4, %pc_hi20(iterations)
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a4, %pc_lo12(iterations)
	blez	$a4, .LBB10_50
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB10_20
# %bb.2:                                # %.lr.ph.split
	beq	$s2, $s1, .LBB10_32
# %bb.3:                                # %.lr.ph.i.preheader.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s4, $s0, 16
	addi.w	$s6, $zero, -8
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_4:                               # %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i
                                        #   in Loop: Header=BB10_6 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB10_5:                               # %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit
                                        #   in Loop: Header=BB10_6 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB10_50
.LBB10_6:                               # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_8 Depth 2
                                        #     Child Loop BB10_10 Depth 2
                                        #     Child Loop BB10_13 Depth 2
                                        #       Child Loop BB10_14 Depth 3
                                        #     Child Loop BB10_18 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB10_10
# %bb.7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB10_6 Depth=1
	move	$a0, $s8
	move	$a1, $s4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_8:                               # %vector.body
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB10_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB10_11
	.p2align	4, , 16
.LBB10_10:                              # %.lr.ph.i
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a1, 8
	addi.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a1
	move	$a1, $a3
	bne	$a3, $s1, .LBB10_10
.LBB10_11:                              # %.lr.ph.i8.preheader
                                        #   in Loop: Header=BB10_6 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB10_13
	.p2align	4, , 16
.LBB10_12:                              # %..critedge.i_crit_edge
                                        #   in Loop: Header=BB10_13 Depth=2
	addi.d	$a3, $a5, 8
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB10_17
.LBB10_13:                              # %.lr.ph.i8
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_14 Depth 3
	ld.d	$a2, $a1, 0
	movgr2fr.d	$fa0, $a2
	move	$a3, $a0
	.p2align	4, , 16
.LBB10_14:                              #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a5, $s0, $a3
	bcnez	$fcc0, .LBB10_12
# %bb.15:                               #   in Loop: Header=BB10_14 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a5, 8
	bne	$a3, $s6, .LBB10_14
# %bb.16:                               #   in Loop: Header=BB10_13 Depth=2
	move	$a3, $s0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB10_13
.LBB10_17:                              # %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit.preheader
                                        #   in Loop: Header=BB10_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB10_18:                              # %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB10_5
# %bb.19:                               #   in Loop: Header=BB10_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_18
	b	.LBB10_4
.LBB10_20:                              # %.lr.ph.split.us
	beq	$s2, $s1, .LBB10_44
# %bb.21:                               # %.lr.ph.i.preheader.us.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s4, $zero
	b	.LBB10_24
	.p2align	4, , 16
.LBB10_22:                              # %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us
                                        #   in Loop: Header=BB10_24 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB10_23:                              # %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us
                                        #   in Loop: Header=BB10_24 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a4, .LBB10_50
.LBB10_24:                              # %.lr.ph.i.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_26 Depth 2
                                        #     Child Loop BB10_28 Depth 2
                                        #     Child Loop BB10_30 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s6, .LBB10_28
# %bb.25:                               # %vector.body61.preheader
                                        #   in Loop: Header=BB10_24 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_26:                              # %vector.body61
                                        #   Parent Loop BB10_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB10_26
# %bb.27:                               # %middle.block70
                                        #   in Loop: Header=BB10_24 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB10_29
	.p2align	4, , 16
.LBB10_28:                              # %.lr.ph.i.us
                                        #   Parent Loop BB10_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a1, 8
	addi.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a1
	move	$a1, $a3
	bne	$a3, $s1, .LBB10_28
.LBB10_29:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB10_24 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB10_30:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit.us
                                        #   Parent Loop BB10_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB10_23
# %bb.31:                               #   in Loop: Header=BB10_30 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_30
	b	.LBB10_22
.LBB10_32:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us12.preheader
	addi.w	$s2, $zero, -8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s4, $zero
	b	.LBB10_35
	.p2align	4, , 16
.LBB10_33:                              # %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us16
                                        #   in Loop: Header=BB10_35 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB10_34:                              # %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us17
                                        #   in Loop: Header=BB10_35 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a4, .LBB10_50
.LBB10_35:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_37 Depth 2
                                        #       Child Loop BB10_38 Depth 3
                                        #     Child Loop BB10_42 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB10_37
	.p2align	4, , 16
.LBB10_36:                              # %..critedge.i.us_crit_edge
                                        #   in Loop: Header=BB10_37 Depth=2
	addi.d	$a3, $a5, 8
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB10_41
.LBB10_37:                              # %.lr.ph.i8.us
                                        #   Parent Loop BB10_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_38 Depth 3
	ld.d	$a2, $a1, 0
	movgr2fr.d	$fa0, $a2
	move	$a3, $a0
	.p2align	4, , 16
.LBB10_38:                              #   Parent Loop BB10_35 Depth=1
                                        #     Parent Loop BB10_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a5, $s0, $a3
	bcnez	$fcc0, .LBB10_36
# %bb.39:                               #   in Loop: Header=BB10_38 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a5, 8
	bne	$a3, $s2, .LBB10_38
# %bb.40:                               #   in Loop: Header=BB10_37 Depth=2
	move	$a3, $s0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB10_37
.LBB10_41:                              # %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB10_35 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB10_42:                              # %_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_.exit.loopexit.us
                                        #   Parent Loop BB10_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB10_34
# %bb.43:                               #   in Loop: Header=BB10_42 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_42
	b	.LBB10_33
.LBB10_44:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us.us.preheader
	pcalau12i	$s1, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s0, $a0, %pc_lo12(.L.str.51)
	move	$s2, $zero
	b	.LBB10_47
	.p2align	4, , 16
.LBB10_45:                              # %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us.us
                                        #   in Loop: Header=BB10_47 Depth=1
	ld.w	$a1, $s1, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB10_46:                              # %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us.us
                                        #   in Loop: Header=BB10_47 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB10_50
.LBB10_47:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_48 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB10_48:                              #   Parent Loop BB10_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB10_46
# %bb.49:                               #   in Loop: Header=BB10_48 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_48
	b	.LBB10_45
.LBB10_50:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end10:
	.size	_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc, .Lfunc_end10-_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc,"axG",@progbits,_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc,comdat
	.weak	_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc # -- Begin function _Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc,@function
_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc: # @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB11_52
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB11_15
# %bb.2:                                # %.lr.ph.split
	bne	$s2, $s1, .LBB11_22
# %bb.3:                                # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us17.preheader
	addi.w	$s2, $zero, -8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s6, $zero
	b	.LBB11_6
	.p2align	4, , 16
.LBB11_4:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us20
                                        #   in Loop: Header=BB11_6 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB11_5:                               # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us21
                                        #   in Loop: Header=BB11_6 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB11_52
.LBB11_6:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_8 Depth 2
                                        #       Child Loop BB11_9 Depth 3
                                        #     Child Loop BB11_13 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB11_8
	.p2align	4, , 16
.LBB11_7:                               # %..critedge.i.us_crit_edge
                                        #   in Loop: Header=BB11_8 Depth=2
	addi.d	$a3, $a5, 8
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB11_12
.LBB11_8:                               # %.lr.ph.i13.us
                                        #   Parent Loop BB11_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_9 Depth 3
	ld.d	$a2, $a1, 0
	movgr2fr.d	$fa0, $a2
	move	$a3, $a0
	.p2align	4, , 16
.LBB11_9:                               #   Parent Loop BB11_6 Depth=1
                                        #     Parent Loop BB11_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a5, $s0, $a3
	bcnez	$fcc0, .LBB11_7
# %bb.10:                               #   in Loop: Header=BB11_9 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a5, 8
	bne	$a3, $s2, .LBB11_9
# %bb.11:                               #   in Loop: Header=BB11_8 Depth=2
	move	$a3, $s0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB11_8
.LBB11_12:                              # %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB11_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB11_13:                              # %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit.us
                                        #   Parent Loop BB11_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB11_5
# %bb.14:                               #   in Loop: Header=BB11_13 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB11_13
	b	.LBB11_4
.LBB11_15:                              # %.lr.ph.split.us
	bne	$s2, $s1, .LBB11_40
# %bb.16:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us.us.preheader
	pcalau12i	$s1, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s0, $a0, %pc_lo12(.L.str.51)
	move	$s2, $zero
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_17:                              # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us.us
                                        #   in Loop: Header=BB11_19 Depth=1
	ld.w	$a1, $s1, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB11_18:                              # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us.us
                                        #   in Loop: Header=BB11_19 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB11_52
.LBB11_19:                              # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_20 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB11_20:                              #   Parent Loop BB11_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB11_18
# %bb.21:                               #   in Loop: Header=BB11_20 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB11_20
	b	.LBB11_17
.LBB11_22:                              # %.lr.ph.preheader.i.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s6, $zero, -8
	b	.LBB11_25
	.p2align	4, , 16
.LBB11_23:                              # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i
                                        #   in Loop: Header=BB11_25 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB11_24:                              # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit
                                        #   in Loop: Header=BB11_25 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB11_52
.LBB11_25:                              # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_28 Depth 2
                                        #     Child Loop BB11_30 Depth 2
                                        #     Child Loop BB11_33 Depth 2
                                        #       Child Loop BB11_34 Depth 3
                                        #     Child Loop BB11_38 Depth 2
	beqz	$s7, .LBB11_27
# %bb.26:                               #   in Loop: Header=BB11_25 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB11_30
	.p2align	4, , 16
.LBB11_27:                              # %vector.body.preheader
                                        #   in Loop: Header=BB11_25 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_28:                              # %vector.body
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB11_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB11_25 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB11_31
	.p2align	4, , 16
.LBB11_30:                              # %.lr.ph.i
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 8
	addi.d	$a5, $a1, 8
	st.d	$a2, $a1, 0
	move	$a0, $a3
	move	$a1, $a5
	bne	$a3, $s1, .LBB11_30
.LBB11_31:                              # %.lr.ph.i13.preheader
                                        #   in Loop: Header=BB11_25 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB11_33
	.p2align	4, , 16
.LBB11_32:                              # %..critedge.i_crit_edge
                                        #   in Loop: Header=BB11_33 Depth=2
	addi.d	$a3, $a5, 8
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB11_37
.LBB11_33:                              # %.lr.ph.i13
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_34 Depth 3
	ld.d	$a2, $a1, 0
	movgr2fr.d	$fa0, $a2
	move	$a3, $a0
	.p2align	4, , 16
.LBB11_34:                              #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a5, $s0, $a3
	bcnez	$fcc0, .LBB11_32
# %bb.35:                               #   in Loop: Header=BB11_34 Depth=3
	addi.d	$a3, $a3, -8
	fst.d	$fa1, $a5, 8
	bne	$a3, $s6, .LBB11_34
# %bb.36:                               #   in Loop: Header=BB11_33 Depth=2
	move	$a3, $s0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB11_33
.LBB11_37:                              # %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit.preheader
                                        #   in Loop: Header=BB11_25 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB11_38:                              # %_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_.exit.loopexit
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB11_24
# %bb.39:                               #   in Loop: Header=BB11_38 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB11_38
	b	.LBB11_23
.LBB11_40:                              # %.lr.ph.preheader.i.us.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s6, $zero
	b	.LBB11_43
	.p2align	4, , 16
.LBB11_41:                              # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us
                                        #   in Loop: Header=BB11_43 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB11_42:                              # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us
                                        #   in Loop: Header=BB11_43 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB11_52
.LBB11_43:                              # %.lr.ph.preheader.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_46 Depth 2
                                        #     Child Loop BB11_48 Depth 2
                                        #     Child Loop BB11_50 Depth 2
	beqz	$s7, .LBB11_45
# %bb.44:                               #   in Loop: Header=BB11_43 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB11_48
	.p2align	4, , 16
.LBB11_45:                              # %vector.body65.preheader
                                        #   in Loop: Header=BB11_43 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_46:                              # %vector.body65
                                        #   Parent Loop BB11_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB11_46
# %bb.47:                               # %middle.block74
                                        #   in Loop: Header=BB11_43 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB11_49
	.p2align	4, , 16
.LBB11_48:                              # %.lr.ph.i.us
                                        #   Parent Loop BB11_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 8
	addi.d	$a5, $a1, 8
	st.d	$a2, $a1, 0
	move	$a0, $a3
	move	$a1, $a5
	bne	$a3, $s1, .LBB11_48
.LBB11_49:                              # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB11_43 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB11_50:                              # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit.us
                                        #   Parent Loop BB11_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB11_42
# %bb.51:                               #   in Loop: Header=BB11_50 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB11_50
	b	.LBB11_41
.LBB11_52:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end11:
	.size	_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc, .Lfunc_end11-_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc,"axG",@progbits,_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc,comdat
	.weak	_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc # -- Begin function _Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc,@function
_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc: # @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB12_19
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB12_13
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB12_5
	.p2align	4, , 16
.LBB12_3:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB12_4:                               # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB12_19
.LBB12_5:                               # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
                                        #     Child Loop BB12_9 Depth 2
                                        #     Child Loop BB12_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s6, .LBB12_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_7:                               # %vector.body
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB12_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB12_10
	.p2align	4, , 16
.LBB12_9:                               # %.lr.ph.i
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB12_9
.LBB12_10:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB12_11:                              #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB12_4
# %bb.12:                               #   in Loop: Header=BB12_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB12_11
	b	.LBB12_3
.LBB12_13:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB12_16
	.p2align	4, , 16
.LBB12_14:                              # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
                                        #   in Loop: Header=BB12_16 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB12_15:                              # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB12_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB12_19
.LBB12_16:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB12_17:                              #   Parent Loop BB12_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB12_15
# %bb.18:                               #   in Loop: Header=BB12_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB12_17
	b	.LBB12_14
.LBB12_19:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end12:
	.size	_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc, .Lfunc_end12-_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc,"axG",@progbits,_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc,comdat
	.weak	_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc # -- Begin function _Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc,@function
_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc: # @_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB13_20
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB13_8
# %bb.2:                                # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB13_5
	.p2align	4, , 16
.LBB13_3:                               # %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us
                                        #   in Loop: Header=BB13_5 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB13_4:                               # %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us
                                        #   in Loop: Header=BB13_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB13_20
.LBB13_5:                               # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB13_6:                               #   Parent Loop BB13_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB13_4
# %bb.7:                                #   in Loop: Header=BB13_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB13_6
	b	.LBB13_3
.LBB13_8:                               # %.lr.ph.preheader.i.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB13_11
	.p2align	4, , 16
.LBB13_9:                               # %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB13_10:                              # %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB13_20
.LBB13_11:                              # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_14 Depth 2
                                        #     Child Loop BB13_16 Depth 2
                                        #     Child Loop BB13_18 Depth 2
	beqz	$s6, .LBB13_13
# %bb.12:                               #   in Loop: Header=BB13_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB13_16
	.p2align	4, , 16
.LBB13_13:                              # %vector.body.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_14:                              # %vector.body
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB13_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB13_17
	.p2align	4, , 16
.LBB13_16:                              # %.lr.ph.i
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB13_16
.LBB13_17:                              # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB13_18:                              #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB13_10
# %bb.19:                               #   in Loop: Header=BB13_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB13_18
	b	.LBB13_9
.LBB13_20:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end13:
	.size	_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc, .Lfunc_end13-_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc,"axG",@progbits,_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc,comdat
	.weak	_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc # -- Begin function _Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc,@function
_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc: # @_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB14_19
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB14_13
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB14_5
	.p2align	4, , 16
.LBB14_3:                               # %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i
                                        #   in Loop: Header=BB14_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB14_4:                               # %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit
                                        #   in Loop: Header=BB14_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB14_19
.LBB14_5:                               # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_7 Depth 2
                                        #     Child Loop BB14_9 Depth 2
                                        #     Child Loop BB14_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s6, .LBB14_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB14_5 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB14_7:                               # %vector.body
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB14_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB14_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB14_10
	.p2align	4, , 16
.LBB14_9:                               # %.lr.ph.i
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a1, 8
	addi.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a1
	move	$a1, $a3
	bne	$a3, $s1, .LBB14_9
.LBB14_10:                              # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit
                                        #   in Loop: Header=BB14_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB14_11:                              #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB14_4
# %bb.12:                               #   in Loop: Header=BB14_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB14_11
	b	.LBB14_3
.LBB14_13:                              # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB14_16
	.p2align	4, , 16
.LBB14_14:                              # %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us
                                        #   in Loop: Header=BB14_16 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB14_15:                              # %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us
                                        #   in Loop: Header=BB14_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB14_19
.LBB14_16:                              # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB14_17:                              #   Parent Loop BB14_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB14_15
# %bb.18:                               #   in Loop: Header=BB14_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB14_17
	b	.LBB14_14
.LBB14_19:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end14:
	.size	_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc, .Lfunc_end14-_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc,"axG",@progbits,_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc,comdat
	.weak	_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc # -- Begin function _Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc,@function
_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc: # @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB15_20
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB15_8
# %bb.2:                                # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB15_5
	.p2align	4, , 16
.LBB15_3:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us
                                        #   in Loop: Header=BB15_5 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB15_4:                               # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us
                                        #   in Loop: Header=BB15_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB15_20
.LBB15_5:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB15_6:                               #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB15_4
# %bb.7:                                #   in Loop: Header=BB15_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB15_6
	b	.LBB15_3
.LBB15_8:                               # %.lr.ph.preheader.i.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB15_11
	.p2align	4, , 16
.LBB15_9:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i
                                        #   in Loop: Header=BB15_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB15_10:                              # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit
                                        #   in Loop: Header=BB15_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB15_20
.LBB15_11:                              # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_14 Depth 2
                                        #     Child Loop BB15_16 Depth 2
                                        #     Child Loop BB15_18 Depth 2
	beqz	$s6, .LBB15_13
# %bb.12:                               #   in Loop: Header=BB15_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB15_16
	.p2align	4, , 16
.LBB15_13:                              # %vector.body.preheader
                                        #   in Loop: Header=BB15_11 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_14:                              # %vector.body
                                        #   Parent Loop BB15_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB15_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB15_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB15_17
	.p2align	4, , 16
.LBB15_16:                              # %.lr.ph.i
                                        #   Parent Loop BB15_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 8
	addi.d	$a4, $a1, 8
	st.d	$a2, $a1, 0
	move	$a0, $a3
	move	$a1, $a4
	bne	$a3, $s1, .LBB15_16
.LBB15_17:                              # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit
                                        #   in Loop: Header=BB15_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB15_18:                              #   Parent Loop BB15_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB15_10
# %bb.19:                               #   in Loop: Header=BB15_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB15_18
	b	.LBB15_9
.LBB15_20:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end15:
	.size	_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc, .Lfunc_end15-_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc,"axG",@progbits,_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc,comdat
	.weak	_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc # -- Begin function _Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc,@function
_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc: # @_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB16_19
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB16_13
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB16_5
	.p2align	4, , 16
.LBB16_3:                               # %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB16_4:                               # %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB16_19
.LBB16_5:                               # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_7 Depth 2
                                        #     Child Loop BB16_9 Depth 2
                                        #     Child Loop BB16_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s6, .LBB16_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB16_5 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_7:                               # %vector.body
                                        #   Parent Loop BB16_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB16_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB16_10
	.p2align	4, , 16
.LBB16_9:                               # %.lr.ph.i
                                        #   Parent Loop BB16_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a1, 8
	addi.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a1
	move	$a1, $a3
	bne	$a3, $s1, .LBB16_9
.LBB16_10:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit
                                        #   in Loop: Header=BB16_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB16_11:                              #   Parent Loop BB16_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB16_4
# %bb.12:                               #   in Loop: Header=BB16_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB16_11
	b	.LBB16_3
.LBB16_13:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB16_16
	.p2align	4, , 16
.LBB16_14:                              # %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us
                                        #   in Loop: Header=BB16_16 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB16_15:                              # %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us
                                        #   in Loop: Header=BB16_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB16_19
.LBB16_16:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB16_17:                              #   Parent Loop BB16_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB16_15
# %bb.18:                               #   in Loop: Header=BB16_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB16_17
	b	.LBB16_14
.LBB16_19:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end16:
	.size	_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc, .Lfunc_end16-_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc,"axG",@progbits,_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc,comdat
	.weak	_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc # -- Begin function _Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc,@function
_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc: # @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB17_20
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB17_8
# %bb.2:                                # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB17_5
	.p2align	4, , 16
.LBB17_3:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB17_4:                               # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB17_20
.LBB17_5:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB17_6:                               #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB17_4
# %bb.7:                                #   in Loop: Header=BB17_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB17_6
	b	.LBB17_3
.LBB17_8:                               # %.lr.ph.preheader.i.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB17_11
	.p2align	4, , 16
.LBB17_9:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i
                                        #   in Loop: Header=BB17_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB17_10:                              # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit
                                        #   in Loop: Header=BB17_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB17_20
.LBB17_11:                              # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_14 Depth 2
                                        #     Child Loop BB17_16 Depth 2
                                        #     Child Loop BB17_18 Depth 2
	beqz	$s6, .LBB17_13
# %bb.12:                               #   in Loop: Header=BB17_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB17_16
	.p2align	4, , 16
.LBB17_13:                              # %vector.body.preheader
                                        #   in Loop: Header=BB17_11 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_14:                              # %vector.body
                                        #   Parent Loop BB17_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB17_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB17_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB17_17
	.p2align	4, , 16
.LBB17_16:                              # %.lr.ph.i
                                        #   Parent Loop BB17_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 8
	addi.d	$a4, $a1, 8
	st.d	$a2, $a1, 0
	move	$a0, $a3
	move	$a1, $a4
	bne	$a3, $s1, .LBB17_16
.LBB17_17:                              # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit
                                        #   in Loop: Header=BB17_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB17_18:                              #   Parent Loop BB17_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB17_10
# %bb.19:                               #   in Loop: Header=BB17_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB17_18
	b	.LBB17_9
.LBB17_20:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end17:
	.size	_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc, .Lfunc_end17-_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc,"axG",@progbits,_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc,comdat
	.weak	_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc # -- Begin function _Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc,@function
_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc: # @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB18_19
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB18_13
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB18_5
	.p2align	4, , 16
.LBB18_3:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB18_4:                               # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB18_19
.LBB18_5:                               # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
                                        #     Child Loop BB18_9 Depth 2
                                        #     Child Loop BB18_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s6, .LBB18_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_7:                               # %vector.body
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB18_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB18_10
	.p2align	4, , 16
.LBB18_9:                               # %.lr.ph.i
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB18_9
.LBB18_10:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB18_11:                              #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB18_4
# %bb.12:                               #   in Loop: Header=BB18_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB18_11
	b	.LBB18_3
.LBB18_13:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB18_16
	.p2align	4, , 16
.LBB18_14:                              # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
                                        #   in Loop: Header=BB18_16 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB18_15:                              # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB18_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB18_19
.LBB18_16:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB18_17:                              #   Parent Loop BB18_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB18_15
# %bb.18:                               #   in Loop: Header=BB18_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB18_17
	b	.LBB18_14
.LBB18_19:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end18:
	.size	_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc, .Lfunc_end18-_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc,"axG",@progbits,_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc,comdat
	.weak	_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc # -- Begin function _Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc,@function
_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc: # @_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB19_20
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB19_8
# %bb.2:                                # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB19_5
	.p2align	4, , 16
.LBB19_3:                               # %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i.us
                                        #   in Loop: Header=BB19_5 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB19_4:                               # %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit.us
                                        #   in Loop: Header=BB19_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB19_20
.LBB19_5:                               # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB19_6:                               #   Parent Loop BB19_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB19_4
# %bb.7:                                #   in Loop: Header=BB19_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB19_6
	b	.LBB19_3
.LBB19_8:                               # %.lr.ph.preheader.i.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB19_11
	.p2align	4, , 16
.LBB19_9:                               # %_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_.exit.i
                                        #   in Loop: Header=BB19_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB19_10:                              # %_Z13verify_sortedI14PointerWrapperIdEEvT_S2_.exit
                                        #   in Loop: Header=BB19_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB19_20
.LBB19_11:                              # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_14 Depth 2
                                        #     Child Loop BB19_16 Depth 2
                                        #     Child Loop BB19_18 Depth 2
	beqz	$s6, .LBB19_13
# %bb.12:                               #   in Loop: Header=BB19_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB19_16
	.p2align	4, , 16
.LBB19_13:                              # %vector.body.preheader
                                        #   in Loop: Header=BB19_11 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB19_14:                              # %vector.body
                                        #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB19_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB19_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB19_17
	.p2align	4, , 16
.LBB19_16:                              # %.lr.ph.i
                                        #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB19_16
.LBB19_17:                              # %_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_.exit.loopexit
                                        #   in Loop: Header=BB19_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB19_18:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB19_10
# %bb.19:                               #   in Loop: Header=BB19_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB19_18
	b	.LBB19_9
.LBB19_20:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end19:
	.size	_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc, .Lfunc_end19-_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc,"axG",@progbits,_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc,comdat
	.weak	_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc # -- Begin function _Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc,@function
_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc: # @_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB20_19
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB20_13
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB20_5
	.p2align	4, , 16
.LBB20_3:                               # %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB20_4:                               # %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB20_19
.LBB20_5:                               # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_7 Depth 2
                                        #     Child Loop BB20_9 Depth 2
                                        #     Child Loop BB20_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s6, .LBB20_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB20_5 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB20_7:                               # %vector.body
                                        #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB20_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB20_10
	.p2align	4, , 16
.LBB20_9:                               # %.lr.ph.i
                                        #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a1, 8
	addi.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a1
	move	$a1, $a3
	bne	$a3, $s1, .LBB20_9
.LBB20_10:                              # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.loopexit
                                        #   in Loop: Header=BB20_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB20_11:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB20_4
# %bb.12:                               #   in Loop: Header=BB20_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB20_11
	b	.LBB20_3
.LBB20_13:                              # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB20_16
	.p2align	4, , 16
.LBB20_14:                              # %_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_.exit.i.us
                                        #   in Loop: Header=BB20_16 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB20_15:                              # %_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_.exit.us
                                        #   in Loop: Header=BB20_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB20_19
.LBB20_16:                              # %_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB20_17:                              #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB20_15
# %bb.18:                               #   in Loop: Header=BB20_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB20_17
	b	.LBB20_14
.LBB20_19:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end20:
	.size	_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc, .Lfunc_end20-_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc,"axG",@progbits,_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc,comdat
	.weak	_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc # -- Begin function _Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc,@function
_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc: # @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB21_20
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB21_8
# %bb.2:                                # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB21_5
	.p2align	4, , 16
.LBB21_3:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i.us
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB21_4:                               # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit.us
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB21_20
.LBB21_5:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB21_6:                               #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB21_4
# %bb.7:                                #   in Loop: Header=BB21_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB21_6
	b	.LBB21_3
.LBB21_8:                               # %.lr.ph.preheader.i.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB21_11
	.p2align	4, , 16
.LBB21_9:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_.exit.i
                                        #   in Loop: Header=BB21_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB21_10:                              # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_.exit
                                        #   in Loop: Header=BB21_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB21_20
.LBB21_11:                              # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_14 Depth 2
                                        #     Child Loop BB21_16 Depth 2
                                        #     Child Loop BB21_18 Depth 2
	beqz	$s6, .LBB21_13
# %bb.12:                               #   in Loop: Header=BB21_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB21_16
	.p2align	4, , 16
.LBB21_13:                              # %vector.body.preheader
                                        #   in Loop: Header=BB21_11 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_14:                              # %vector.body
                                        #   Parent Loop BB21_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB21_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB21_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB21_17
	.p2align	4, , 16
.LBB21_16:                              # %.lr.ph.i
                                        #   Parent Loop BB21_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 8
	addi.d	$a4, $a1, 8
	st.d	$a2, $a1, 0
	move	$a0, $a3
	move	$a1, $a4
	bne	$a3, $s1, .LBB21_16
.LBB21_17:                              # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_.exit.loopexit
                                        #   in Loop: Header=BB21_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB21_18:                              #   Parent Loop BB21_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB21_10
# %bb.19:                               #   in Loop: Header=BB21_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB21_18
	b	.LBB21_9
.LBB21_20:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end21:
	.size	_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc, .Lfunc_end21-_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc,"axG",@progbits,_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc,comdat
	.weak	_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc # -- Begin function _Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc,@function
_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc: # @_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB22_19
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB22_13
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB22_5
	.p2align	4, , 16
.LBB22_3:                               # %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i
                                        #   in Loop: Header=BB22_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB22_4:                               # %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit
                                        #   in Loop: Header=BB22_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB22_19
.LBB22_5:                               # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_7 Depth 2
                                        #     Child Loop BB22_9 Depth 2
                                        #     Child Loop BB22_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s6, .LBB22_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB22_5 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB22_7:                               # %vector.body
                                        #   Parent Loop BB22_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB22_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB22_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB22_10
	.p2align	4, , 16
.LBB22_9:                               # %.lr.ph.i
                                        #   Parent Loop BB22_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a1, 8
	addi.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a1
	move	$a1, $a3
	bne	$a3, $s1, .LBB22_9
.LBB22_10:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.loopexit
                                        #   in Loop: Header=BB22_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB22_11:                              #   Parent Loop BB22_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB22_4
# %bb.12:                               #   in Loop: Header=BB22_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB22_11
	b	.LBB22_3
.LBB22_13:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB22_16
	.p2align	4, , 16
.LBB22_14:                              # %_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_.exit.i.us
                                        #   in Loop: Header=BB22_16 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB22_15:                              # %_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_.exit.us
                                        #   in Loop: Header=BB22_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB22_19
.LBB22_16:                              # %_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB22_17:                              #   Parent Loop BB22_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB22_15
# %bb.18:                               #   in Loop: Header=BB22_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB22_17
	b	.LBB22_14
.LBB22_19:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end22:
	.size	_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc, .Lfunc_end22-_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc,"axG",@progbits,_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc,comdat
	.weak	_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc # -- Begin function _Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc,@function
_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc: # @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB23_20
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB23_8
# %bb.2:                                # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us.preheader
	addi.d	$s2, $s0, 8
	pcalau12i	$s3, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB23_5
	.p2align	4, , 16
.LBB23_3:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i.us
                                        #   in Loop: Header=BB23_5 Depth=1
	ld.w	$a1, $s3, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB23_4:                               # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit.us
                                        #   in Loop: Header=BB23_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB23_20
.LBB23_5:                               # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	.p2align	4, , 16
.LBB23_6:                               #   Parent Loop BB23_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB23_4
# %bb.7:                                #   in Loop: Header=BB23_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB23_6
	b	.LBB23_3
.LBB23_8:                               # %.lr.ph.preheader.i.preheader
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s3, $a0, %pc_lo12(.L.str.51)
	move	$s5, $zero
	b	.LBB23_11
	.p2align	4, , 16
.LBB23_9:                               # %_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_.exit.i
                                        #   in Loop: Header=BB23_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB23_10:                              # %_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_.exit
                                        #   in Loop: Header=BB23_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB23_20
.LBB23_11:                              # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_14 Depth 2
                                        #     Child Loop BB23_16 Depth 2
                                        #     Child Loop BB23_18 Depth 2
	beqz	$s6, .LBB23_13
# %bb.12:                               #   in Loop: Header=BB23_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB23_16
	.p2align	4, , 16
.LBB23_13:                              # %vector.body.preheader
                                        #   in Loop: Header=BB23_11 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB23_14:                              # %vector.body
                                        #   Parent Loop BB23_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB23_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB23_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB23_17
	.p2align	4, , 16
.LBB23_16:                              # %.lr.ph.i
                                        #   Parent Loop BB23_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 8
	addi.d	$a4, $a1, 8
	st.d	$a2, $a1, 0
	move	$a0, $a3
	move	$a1, $a4
	bne	$a3, $s1, .LBB23_16
.LBB23_17:                              # %_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_.exit.loopexit
                                        #   in Loop: Header=BB23_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB23_18:                              #   Parent Loop BB23_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB23_10
# %bb.19:                               #   in Loop: Header=BB23_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB23_18
	b	.LBB23_9
.LBB23_20:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end23:
	.size	_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc, .Lfunc_end23-_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc
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
	blt	$a1, $a2, .LBB24_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB24_3
	.p2align	4, , 16
.LBB24_2:                               # %tailrecurse
                                        #   in Loop: Header=BB24_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB24_11
.LBB24_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_4 Depth 2
                                        #       Child Loop BB24_5 Depth 3
                                        #       Child Loop BB24_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB24_4:                               #   Parent Loop BB24_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_5 Depth 3
                                        #       Child Loop BB24_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB24_5:                               #   Parent Loop BB24_3 Depth=1
                                        #     Parent Loop BB24_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB24_5
# %bb.6:                                #   in Loop: Header=BB24_4 Depth=2
	bgeu	$a2, $a1, .LBB24_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB24_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB24_8:                               # %.preheader
                                        #   Parent Loop BB24_3 Depth=1
                                        #     Parent Loop BB24_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB24_8
# %bb.9:                                #   in Loop: Header=BB24_4 Depth=2
	bgeu	$a2, $a1, .LBB24_2
# %bb.10:                               #   in Loop: Header=BB24_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB24_4
.LBB24_11:                              # %tailrecurse._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	_ZN9benchmark9quicksortIPddEEvT_S2_, .Lfunc_end24-_ZN9benchmark9quicksortIPddEEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_,"axG",@progbits,_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_,comdat
	.weak	_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_ # -- Begin function _ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_
	.p2align	5
	.type	_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_,@function
_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_: # @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_
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
	blt	$a0, $a1, .LBB25_11
# %bb.1:                                # %.lr.ph
	ori	$s1, $zero, 8
	b	.LBB25_3
	.p2align	4, , 16
.LBB25_2:                               # %tailrecurse
                                        #   in Loop: Header=BB25_3 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_)
	jirl	$ra, $ra, 0
	sub.d	$a0, $fp, $s0
	bge	$s1, $a0, .LBB25_11
.LBB25_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_4 Depth 2
                                        #       Child Loop BB25_5 Depth 3
                                        #       Child Loop BB25_8 Depth 3
	move	$a0, $s0
	fld.d	$fa0, $s0, 0
	move	$a1, $s0
	move	$a2, $fp
	.p2align	4, , 16
.LBB25_4:                               #   Parent Loop BB25_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_5 Depth 3
                                        #       Child Loop BB25_8 Depth 3
	addi.d	$s0, $a2, 8
	.p2align	4, , 16
.LBB25_5:                               #   Parent Loop BB25_3 Depth=1
                                        #     Parent Loop BB25_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a2, -8
	addi.d	$a2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB25_5
# %bb.6:                                #   in Loop: Header=BB25_4 Depth=2
	bgeu	$a1, $a2, .LBB25_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB25_4 Depth=2
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB25_8:                               # %.preheader
                                        #   Parent Loop BB25_3 Depth=1
                                        #     Parent Loop BB25_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB25_8
# %bb.9:                                #   in Loop: Header=BB25_4 Depth=2
	bgeu	$a1, $a2, .LBB25_2
# %bb.10:                               #   in Loop: Header=BB25_4 Depth=2
	fst.d	$fa2, $a2, 0
	fst.d	$fa1, $a1, 0
	b	.LBB25_4
.LBB25_11:                              # %tailrecurse._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end25:
	.size	_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_, .Lfunc_end25-_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_,"axG",@progbits,_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_,comdat
	.weak	_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_ # -- Begin function _ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_
	.p2align	5
	.type	_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_,@function
_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_: # @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_
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
	blt	$a1, $a2, .LBB26_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB26_3
	.p2align	4, , 16
.LBB26_2:                               # %tailrecurse
                                        #   in Loop: Header=BB26_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB26_11
.LBB26_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_4 Depth 2
                                        #       Child Loop BB26_5 Depth 3
                                        #       Child Loop BB26_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB26_4:                               #   Parent Loop BB26_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_5 Depth 3
                                        #       Child Loop BB26_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB26_5:                               #   Parent Loop BB26_3 Depth=1
                                        #     Parent Loop BB26_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB26_5
# %bb.6:                                #   in Loop: Header=BB26_4 Depth=2
	bgeu	$a2, $a1, .LBB26_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB26_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB26_8:                               # %.preheader
                                        #   Parent Loop BB26_3 Depth=1
                                        #     Parent Loop BB26_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB26_8
# %bb.9:                                #   in Loop: Header=BB26_4 Depth=2
	bgeu	$a2, $a1, .LBB26_2
# %bb.10:                               #   in Loop: Header=BB26_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB26_4
.LBB26_11:                              # %tailrecurse._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_, .Lfunc_end26-_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_,"axG",@progbits,_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_,comdat
	.weak	_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_ # -- Begin function _ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_
	.p2align	5
	.type	_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_,@function
_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_: # @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_
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
	blt	$a0, $a1, .LBB27_11
# %bb.1:                                # %.lr.ph
	ori	$s1, $zero, 8
	b	.LBB27_3
	.p2align	4, , 16
.LBB27_2:                               # %tailrecurse
                                        #   in Loop: Header=BB27_3 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_)
	jirl	$ra, $ra, 0
	sub.d	$a0, $fp, $s0
	bge	$s1, $a0, .LBB27_11
.LBB27_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_4 Depth 2
                                        #       Child Loop BB27_5 Depth 3
                                        #       Child Loop BB27_8 Depth 3
	move	$a0, $s0
	fld.d	$fa0, $s0, 0
	move	$a1, $s0
	move	$a2, $fp
	.p2align	4, , 16
.LBB27_4:                               #   Parent Loop BB27_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_5 Depth 3
                                        #       Child Loop BB27_8 Depth 3
	addi.d	$s0, $a2, 8
	.p2align	4, , 16
.LBB27_5:                               #   Parent Loop BB27_3 Depth=1
                                        #     Parent Loop BB27_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a2, -8
	addi.d	$a2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB27_5
# %bb.6:                                #   in Loop: Header=BB27_4 Depth=2
	bgeu	$a1, $a2, .LBB27_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB27_4 Depth=2
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB27_8:                               # %.preheader
                                        #   Parent Loop BB27_3 Depth=1
                                        #     Parent Loop BB27_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB27_8
# %bb.9:                                #   in Loop: Header=BB27_4 Depth=2
	bgeu	$a1, $a2, .LBB27_2
# %bb.10:                               #   in Loop: Header=BB27_4 Depth=2
	fst.d	$fa2, $a2, 0
	fst.d	$fa1, $a1, 0
	b	.LBB27_4
.LBB27_11:                              # %tailrecurse._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end27:
	.size	_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_, .Lfunc_end27-_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_,"axG",@progbits,_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_,comdat
	.weak	_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_ # -- Begin function _ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_
	.p2align	5
	.type	_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_,@function
_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_: # @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_
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
	blt	$a1, $a2, .LBB28_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB28_3
	.p2align	4, , 16
.LBB28_2:                               # %tailrecurse
                                        #   in Loop: Header=BB28_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB28_11
.LBB28_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_4 Depth 2
                                        #       Child Loop BB28_5 Depth 3
                                        #       Child Loop BB28_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB28_4:                               #   Parent Loop BB28_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_5 Depth 3
                                        #       Child Loop BB28_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB28_5:                               #   Parent Loop BB28_3 Depth=1
                                        #     Parent Loop BB28_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB28_5
# %bb.6:                                #   in Loop: Header=BB28_4 Depth=2
	bgeu	$a2, $a1, .LBB28_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB28_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB28_8:                               # %.preheader
                                        #   Parent Loop BB28_3 Depth=1
                                        #     Parent Loop BB28_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB28_8
# %bb.9:                                #   in Loop: Header=BB28_4 Depth=2
	bgeu	$a2, $a1, .LBB28_2
# %bb.10:                               #   in Loop: Header=BB28_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB28_4
.LBB28_11:                              # %tailrecurse._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end28:
	.size	_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_, .Lfunc_end28-_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_,"axG",@progbits,_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_,comdat
	.weak	_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_ # -- Begin function _ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_
	.p2align	5
	.type	_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_,@function
_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_: # @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_
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
	blt	$a0, $a1, .LBB29_11
# %bb.1:                                # %.lr.ph
	ori	$s1, $zero, 8
	b	.LBB29_3
	.p2align	4, , 16
.LBB29_2:                               # %tailrecurse
                                        #   in Loop: Header=BB29_3 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_)
	jirl	$ra, $ra, 0
	sub.d	$a0, $fp, $s0
	bge	$s1, $a0, .LBB29_11
.LBB29_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_4 Depth 2
                                        #       Child Loop BB29_5 Depth 3
                                        #       Child Loop BB29_8 Depth 3
	move	$a0, $s0
	fld.d	$fa0, $s0, 0
	move	$a1, $s0
	move	$a2, $fp
	.p2align	4, , 16
.LBB29_4:                               #   Parent Loop BB29_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_5 Depth 3
                                        #       Child Loop BB29_8 Depth 3
	addi.d	$s0, $a2, 8
	.p2align	4, , 16
.LBB29_5:                               #   Parent Loop BB29_3 Depth=1
                                        #     Parent Loop BB29_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a2, -8
	addi.d	$a2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB29_5
# %bb.6:                                #   in Loop: Header=BB29_4 Depth=2
	bgeu	$a1, $a2, .LBB29_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB29_4 Depth=2
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB29_8:                               # %.preheader
                                        #   Parent Loop BB29_3 Depth=1
                                        #     Parent Loop BB29_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB29_8
# %bb.9:                                #   in Loop: Header=BB29_4 Depth=2
	bgeu	$a1, $a2, .LBB29_2
# %bb.10:                               #   in Loop: Header=BB29_4 Depth=2
	fst.d	$fa2, $a2, 0
	fst.d	$fa1, $a1, 0
	b	.LBB29_4
.LBB29_11:                              # %tailrecurse._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end29:
	.size	_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_, .Lfunc_end29-_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_
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
	blt	$a1, $a2, .LBB30_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB30_4
	.p2align	4, , 16
.LBB30_2:                               #   in Loop: Header=BB30_4 Depth=1
	move	$t0, $a7
.LBB30_3:                               # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit
                                        #   in Loop: Header=BB30_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB30_13
.LBB30_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_6 Depth 2
                                        #     Child Loop BB30_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB30_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB30_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB30_6:                               # %.lr.ph.i
                                        #   Parent Loop BB30_4 Depth=1
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
	blt	$t0, $a1, .LBB30_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB30_4 Depth=1
	bne	$t0, $a1, .LBB30_9
.LBB30_8:                               #   in Loop: Header=BB30_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB30_9:                               #   in Loop: Header=BB30_4 Depth=1
	blt	$a7, $a6, .LBB30_2
	.p2align	4, , 16
.LBB30_10:                              # %.lr.ph50.i
                                        #   Parent Loop BB30_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB30_2
# %bb.11:                               #   in Loop: Header=BB30_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB30_10
	b	.LBB30_3
	.p2align	4, , 16
.LBB30_12:                              #   in Loop: Header=BB30_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB30_8
	b	.LBB30_9
.LBB30_13:                              # %.lr.ph44.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB30_16
	.p2align	4, , 16
.LBB30_14:                              #   in Loop: Header=BB30_16 Depth=1
	move	$a6, $zero
.LBB30_15:                              # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34
                                        #   in Loop: Header=BB30_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB30_25
.LBB30_16:                              # %.lr.ph44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_18 Depth 2
                                        #     Child Loop BB30_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB30_21
# %bb.17:                               # %.lr.ph.i30.preheader
                                        #   in Loop: Header=BB30_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB30_18:                              # %.lr.ph.i30
                                        #   Parent Loop BB30_16 Depth=1
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
	blt	$a7, $a1, .LBB30_18
# %bb.19:                               # %._crit_edge.i21
                                        #   in Loop: Header=BB30_16 Depth=1
	bne	$a7, $a1, .LBB30_22
.LBB30_20:                              # %.thread
                                        #   in Loop: Header=BB30_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB30_23
	.p2align	4, , 16
.LBB30_21:                              #   in Loop: Header=BB30_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB30_20
.LBB30_22:                              #   in Loop: Header=BB30_16 Depth=1
	blez	$a6, .LBB30_15
	.p2align	4, , 16
.LBB30_23:                              # %.lr.ph50.i26
                                        #   Parent Loop BB30_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB30_15
# %bb.24:                               #   in Loop: Header=BB30_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB30_23
	b	.LBB30_14
.LBB30_25:                              # %._crit_edge
	ret
.Lfunc_end30:
	.size	_ZN9benchmark8heapsortIPddEEvT_S2_, .Lfunc_end30-_ZN9benchmark8heapsortIPddEEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_,"axG",@progbits,_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_,comdat
	.weak	_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_ # -- Begin function _ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_
	.p2align	5
	.type	_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_,@function
_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_: # @_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB31_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB31_4
	.p2align	4, , 16
.LBB31_2:                               #   in Loop: Header=BB31_4 Depth=1
	move	$t0, $a7
.LBB31_3:                               # %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB31_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB31_13
.LBB31_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_6 Depth 2
                                        #     Child Loop BB31_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB31_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB31_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB31_6:                               # %.lr.ph.i
                                        #   Parent Loop BB31_4 Depth=1
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
	blt	$t0, $a1, .LBB31_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB31_4 Depth=1
	bne	$t0, $a1, .LBB31_9
.LBB31_8:                               #   in Loop: Header=BB31_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB31_9:                               #   in Loop: Header=BB31_4 Depth=1
	blt	$a7, $a6, .LBB31_2
	.p2align	4, , 16
.LBB31_10:                              # %.lr.ph58.i
                                        #   Parent Loop BB31_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB31_2
# %bb.11:                               #   in Loop: Header=BB31_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB31_10
	b	.LBB31_3
	.p2align	4, , 16
.LBB31_12:                              #   in Loop: Header=BB31_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB31_8
	b	.LBB31_9
.LBB31_13:                              # %.lr.ph44.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB31_16
	.p2align	4, , 16
.LBB31_14:                              #   in Loop: Header=BB31_16 Depth=1
	move	$a6, $zero
.LBB31_15:                              # %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit29
                                        #   in Loop: Header=BB31_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB31_25
.LBB31_16:                              # %.lr.ph44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_18 Depth 2
                                        #     Child Loop BB31_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB31_21
# %bb.17:                               # %.lr.ph.i25.preheader
                                        #   in Loop: Header=BB31_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB31_18:                              # %.lr.ph.i25
                                        #   Parent Loop BB31_16 Depth=1
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
	blt	$a7, $a1, .LBB31_18
# %bb.19:                               # %._crit_edge.i16
                                        #   in Loop: Header=BB31_16 Depth=1
	bne	$a7, $a1, .LBB31_22
.LBB31_20:                              # %.thread
                                        #   in Loop: Header=BB31_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB31_23
	.p2align	4, , 16
.LBB31_21:                              #   in Loop: Header=BB31_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB31_20
.LBB31_22:                              #   in Loop: Header=BB31_16 Depth=1
	blez	$a6, .LBB31_15
	.p2align	4, , 16
.LBB31_23:                              # %.lr.ph58.i21
                                        #   Parent Loop BB31_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB31_15
# %bb.24:                               #   in Loop: Header=BB31_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB31_23
	b	.LBB31_14
.LBB31_25:                              # %._crit_edge
	ret
.Lfunc_end31:
	.size	_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_, .Lfunc_end31-_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_,"axG",@progbits,_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_,comdat
	.weak	_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_ # -- Begin function _ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_
	.p2align	5
	.type	_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_,@function
_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_: # @_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB32_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB32_4
	.p2align	4, , 16
.LBB32_2:                               #   in Loop: Header=BB32_4 Depth=1
	move	$t0, $a7
.LBB32_3:                               # %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit
                                        #   in Loop: Header=BB32_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB32_13
.LBB32_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_6 Depth 2
                                        #     Child Loop BB32_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB32_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB32_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB32_6:                               # %.lr.ph.i
                                        #   Parent Loop BB32_4 Depth=1
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
	ldx.d	$t2, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	stx.d	$t2, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB32_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB32_4 Depth=1
	bne	$t0, $a1, .LBB32_9
.LBB32_8:                               #   in Loop: Header=BB32_4 Depth=1
	ld.d	$t0, $a4, 0
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a0, $a7
	move	$a7, $a2
.LBB32_9:                               #   in Loop: Header=BB32_4 Depth=1
	blt	$a7, $a6, .LBB32_2
	.p2align	4, , 16
.LBB32_10:                              # %.lr.ph47.i
                                        #   Parent Loop BB32_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB32_2
# %bb.11:                               #   in Loop: Header=BB32_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB32_10
	b	.LBB32_3
	.p2align	4, , 16
.LBB32_12:                              #   in Loop: Header=BB32_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB32_8
	b	.LBB32_9
.LBB32_13:                              # %.lr.ph45.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB32_16
	.p2align	4, , 16
.LBB32_14:                              #   in Loop: Header=BB32_16 Depth=1
	move	$a6, $zero
.LBB32_15:                              # %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit35
                                        #   in Loop: Header=BB32_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB32_25
.LBB32_16:                              # %.lr.ph45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_18 Depth 2
                                        #     Child Loop BB32_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	ld.d	$a7, $a0, 0
	fldx.d	$fa0, $a0, $a6
	stx.d	$a7, $a0, $a6
	bltu	$a1, $a2, .LBB32_21
# %bb.17:                               # %.lr.ph.i31.preheader
                                        #   in Loop: Header=BB32_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB32_18:                              # %.lr.ph.i31
                                        #   Parent Loop BB32_16 Depth=1
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
	ldx.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	stx.d	$t1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB32_18
# %bb.19:                               # %._crit_edge.i22
                                        #   in Loop: Header=BB32_16 Depth=1
	bne	$a7, $a1, .LBB32_22
.LBB32_20:                              # %.thread
                                        #   in Loop: Header=BB32_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a0, $a6
	move	$a6, $a7
	b	.LBB32_23
	.p2align	4, , 16
.LBB32_21:                              #   in Loop: Header=BB32_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB32_20
.LBB32_22:                              #   in Loop: Header=BB32_16 Depth=1
	blez	$a6, .LBB32_15
	.p2align	4, , 16
.LBB32_23:                              # %.lr.ph47.i27
                                        #   Parent Loop BB32_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB32_15
# %bb.24:                               #   in Loop: Header=BB32_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB32_23
	b	.LBB32_14
.LBB32_25:                              # %._crit_edge
	ret
.Lfunc_end32:
	.size	_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_, .Lfunc_end32-_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_,"axG",@progbits,_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_,comdat
	.weak	_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_ # -- Begin function _ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_
	.p2align	5
	.type	_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_,@function
_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_: # @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB33_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB33_4
	.p2align	4, , 16
.LBB33_2:                               #   in Loop: Header=BB33_4 Depth=1
	move	$t0, $a7
.LBB33_3:                               # %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit
                                        #   in Loop: Header=BB33_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB33_13
.LBB33_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_6 Depth 2
                                        #     Child Loop BB33_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB33_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB33_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB33_6:                               # %.lr.ph.i
                                        #   Parent Loop BB33_4 Depth=1
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
	ldx.d	$t2, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	stx.d	$t2, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB33_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB33_4 Depth=1
	bne	$t0, $a1, .LBB33_9
.LBB33_8:                               #   in Loop: Header=BB33_4 Depth=1
	ld.d	$t0, $a4, 0
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a0, $a7
	move	$a7, $a2
.LBB33_9:                               #   in Loop: Header=BB33_4 Depth=1
	blt	$a7, $a6, .LBB33_2
	.p2align	4, , 16
.LBB33_10:                              # %.lr.ph58.i
                                        #   Parent Loop BB33_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB33_2
# %bb.11:                               #   in Loop: Header=BB33_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB33_10
	b	.LBB33_3
	.p2align	4, , 16
.LBB33_12:                              #   in Loop: Header=BB33_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB33_8
	b	.LBB33_9
.LBB33_13:                              # %.lr.ph47.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB33_16
	.p2align	4, , 16
.LBB33_14:                              #   in Loop: Header=BB33_16 Depth=1
	move	$a6, $zero
.LBB33_15:                              # %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit32
                                        #   in Loop: Header=BB33_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB33_25
.LBB33_16:                              # %.lr.ph47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_18 Depth 2
                                        #     Child Loop BB33_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	ld.d	$a7, $a0, 0
	fldx.d	$fa0, $a0, $a6
	stx.d	$a7, $a0, $a6
	bltu	$a1, $a2, .LBB33_21
# %bb.17:                               # %.lr.ph.i28.preheader
                                        #   in Loop: Header=BB33_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB33_18:                              # %.lr.ph.i28
                                        #   Parent Loop BB33_16 Depth=1
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
	ldx.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	stx.d	$t1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB33_18
# %bb.19:                               # %._crit_edge.i19
                                        #   in Loop: Header=BB33_16 Depth=1
	bne	$a7, $a1, .LBB33_22
.LBB33_20:                              # %.thread
                                        #   in Loop: Header=BB33_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a0, $a6
	move	$a6, $a7
	b	.LBB33_23
	.p2align	4, , 16
.LBB33_21:                              #   in Loop: Header=BB33_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB33_20
.LBB33_22:                              #   in Loop: Header=BB33_16 Depth=1
	blez	$a6, .LBB33_15
	.p2align	4, , 16
.LBB33_23:                              # %.lr.ph58.i24
                                        #   Parent Loop BB33_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB33_15
# %bb.24:                               #   in Loop: Header=BB33_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB33_23
	b	.LBB33_14
.LBB33_25:                              # %._crit_edge
	ret
.Lfunc_end33:
	.size	_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_, .Lfunc_end33-_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_,"axG",@progbits,_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_,comdat
	.weak	_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_ # -- Begin function _ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_
	.p2align	5
	.type	_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_,@function
_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_: # @_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB34_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB34_4
	.p2align	4, , 16
.LBB34_2:                               #   in Loop: Header=BB34_4 Depth=1
	move	$t0, $a7
.LBB34_3:                               # %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit
                                        #   in Loop: Header=BB34_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB34_13
.LBB34_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_6 Depth 2
                                        #     Child Loop BB34_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB34_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB34_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB34_6:                               # %.lr.ph.i
                                        #   Parent Loop BB34_4 Depth=1
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
	ldx.d	$t2, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	stx.d	$t2, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB34_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB34_4 Depth=1
	bne	$t0, $a1, .LBB34_9
.LBB34_8:                               #   in Loop: Header=BB34_4 Depth=1
	ld.d	$t0, $a4, 0
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a0, $a7
	move	$a7, $a2
.LBB34_9:                               #   in Loop: Header=BB34_4 Depth=1
	blt	$a7, $a6, .LBB34_2
	.p2align	4, , 16
.LBB34_10:                              # %.lr.ph47.i
                                        #   Parent Loop BB34_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB34_2
# %bb.11:                               #   in Loop: Header=BB34_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB34_10
	b	.LBB34_3
	.p2align	4, , 16
.LBB34_12:                              #   in Loop: Header=BB34_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB34_8
	b	.LBB34_9
.LBB34_13:                              # %.lr.ph45.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB34_16
	.p2align	4, , 16
.LBB34_14:                              #   in Loop: Header=BB34_16 Depth=1
	move	$a6, $zero
.LBB34_15:                              # %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit35
                                        #   in Loop: Header=BB34_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB34_25
.LBB34_16:                              # %.lr.ph45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_18 Depth 2
                                        #     Child Loop BB34_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	ld.d	$a7, $a0, 0
	fldx.d	$fa0, $a0, $a6
	stx.d	$a7, $a0, $a6
	bltu	$a1, $a2, .LBB34_21
# %bb.17:                               # %.lr.ph.i31.preheader
                                        #   in Loop: Header=BB34_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB34_18:                              # %.lr.ph.i31
                                        #   Parent Loop BB34_16 Depth=1
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
	ldx.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	stx.d	$t1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB34_18
# %bb.19:                               # %._crit_edge.i22
                                        #   in Loop: Header=BB34_16 Depth=1
	bne	$a7, $a1, .LBB34_22
.LBB34_20:                              # %.thread
                                        #   in Loop: Header=BB34_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a0, $a6
	move	$a6, $a7
	b	.LBB34_23
	.p2align	4, , 16
.LBB34_21:                              #   in Loop: Header=BB34_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB34_20
.LBB34_22:                              #   in Loop: Header=BB34_16 Depth=1
	blez	$a6, .LBB34_15
	.p2align	4, , 16
.LBB34_23:                              # %.lr.ph47.i27
                                        #   Parent Loop BB34_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB34_15
# %bb.24:                               #   in Loop: Header=BB34_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB34_23
	b	.LBB34_14
.LBB34_25:                              # %._crit_edge
	ret
.Lfunc_end34:
	.size	_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_, .Lfunc_end34-_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_,"axG",@progbits,_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_,comdat
	.weak	_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_ # -- Begin function _ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_
	.p2align	5
	.type	_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_,@function
_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_: # @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB35_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB35_4
	.p2align	4, , 16
.LBB35_2:                               #   in Loop: Header=BB35_4 Depth=1
	move	$t0, $a7
.LBB35_3:                               # %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit
                                        #   in Loop: Header=BB35_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB35_13
.LBB35_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_6 Depth 2
                                        #     Child Loop BB35_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB35_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB35_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB35_6:                               # %.lr.ph.i
                                        #   Parent Loop BB35_4 Depth=1
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
	ldx.d	$t2, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	stx.d	$t2, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB35_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB35_4 Depth=1
	bne	$t0, $a1, .LBB35_9
.LBB35_8:                               #   in Loop: Header=BB35_4 Depth=1
	ld.d	$t0, $a4, 0
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a0, $a7
	move	$a7, $a2
.LBB35_9:                               #   in Loop: Header=BB35_4 Depth=1
	blt	$a7, $a6, .LBB35_2
	.p2align	4, , 16
.LBB35_10:                              # %.lr.ph58.i
                                        #   Parent Loop BB35_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB35_2
# %bb.11:                               #   in Loop: Header=BB35_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB35_10
	b	.LBB35_3
	.p2align	4, , 16
.LBB35_12:                              #   in Loop: Header=BB35_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB35_8
	b	.LBB35_9
.LBB35_13:                              # %.lr.ph47.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB35_16
	.p2align	4, , 16
.LBB35_14:                              #   in Loop: Header=BB35_16 Depth=1
	move	$a6, $zero
.LBB35_15:                              # %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit32
                                        #   in Loop: Header=BB35_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB35_25
.LBB35_16:                              # %.lr.ph47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_18 Depth 2
                                        #     Child Loop BB35_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	ld.d	$a7, $a0, 0
	fldx.d	$fa0, $a0, $a6
	stx.d	$a7, $a0, $a6
	bltu	$a1, $a2, .LBB35_21
# %bb.17:                               # %.lr.ph.i28.preheader
                                        #   in Loop: Header=BB35_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB35_18:                              # %.lr.ph.i28
                                        #   Parent Loop BB35_16 Depth=1
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
	ldx.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	stx.d	$t1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB35_18
# %bb.19:                               # %._crit_edge.i19
                                        #   in Loop: Header=BB35_16 Depth=1
	bne	$a7, $a1, .LBB35_22
.LBB35_20:                              # %.thread
                                        #   in Loop: Header=BB35_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a0, $a6
	move	$a6, $a7
	b	.LBB35_23
	.p2align	4, , 16
.LBB35_21:                              #   in Loop: Header=BB35_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB35_20
.LBB35_22:                              #   in Loop: Header=BB35_16 Depth=1
	blez	$a6, .LBB35_15
	.p2align	4, , 16
.LBB35_23:                              # %.lr.ph58.i24
                                        #   Parent Loop BB35_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB35_15
# %bb.24:                               #   in Loop: Header=BB35_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB35_23
	b	.LBB35_14
.LBB35_25:                              # %._crit_edge
	ret
.Lfunc_end35:
	.size	_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_, .Lfunc_end35-_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_
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
	.word	200000                          # 0x30d40
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

	.type	VData,@object                   # @VData
	.globl	VData
	.p2align	3, 0x0
VData:
	.space	16000
	.size	VData, 16000

	.type	V10Data,@object                 # @V10Data
	.globl	V10Data
	.p2align	3, 0x0
V10Data:
	.space	16000
	.size	V10Data, 16000

	.type	dataMaster,@object              # @dataMaster
	.globl	dataMaster
	.p2align	3, 0x0
dataMaster:
	.space	16000
	.size	dataMaster, 16000

	.type	VDataMaster,@object             # @VDataMaster
	.globl	VDataMaster
	.p2align	3, 0x0
VDataMaster:
	.space	16000
	.size	VDataMaster, 16000

	.type	V10DataMaster,@object           # @V10DataMaster
	.globl	V10DataMaster
	.p2align	3, 0x0
V10DataMaster:
	.space	16000
	.size	V10DataMaster, 16000

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

	.type	DVpb,@object                    # @DVpb
	.globl	DVpb
	.p2align	3, 0x0
DVpb:
	.dword	VData
	.size	DVpb, 8

	.type	DVpe,@object                    # @DVpe
	.globl	DVpe
	.p2align	3, 0x0
DVpe:
	.dword	VData+16000
	.size	DVpe, 8

	.type	DVMpb,@object                   # @DVMpb
	.globl	DVMpb
	.p2align	3, 0x0
DVMpb:
	.dword	VDataMaster
	.size	DVMpb, 8

	.type	DVMpe,@object                   # @DVMpe
	.globl	DVMpe
	.p2align	3, 0x0
DVMpe:
	.dword	VDataMaster+16000
	.size	DVMpe, 8

	.type	DV10pb,@object                  # @DV10pb
	.globl	DV10pb
	.p2align	3, 0x0
DV10pb:
	.dword	V10Data
	.size	DV10pb, 8

	.type	DV10pe,@object                  # @DV10pe
	.globl	DV10pe
	.p2align	3, 0x0
DV10pe:
	.dword	V10Data+16000
	.size	DV10pe, 8

	.type	DV10Mpb,@object                 # @DV10Mpb
	.globl	DV10Mpb
	.p2align	3, 0x0
DV10Mpb:
	.dword	V10DataMaster
	.size	DV10Mpb, 8

	.type	DV10Mpe,@object                 # @DV10Mpe
	.globl	DV10Mpe
	.p2align	3, 0x0
DV10Mpe:
	.dword	V10DataMaster+16000
	.size	DV10Mpe, 8

	.type	dPb,@object                     # @dPb
	.globl	dPb
	.p2align	3, 0x0
dPb:
	.dword	data
	.size	dPb, 8

	.type	dPe,@object                     # @dPe
	.globl	dPe
	.p2align	3, 0x0
dPe:
	.dword	data+16000
	.size	dPe, 8

	.type	dMPb,@object                    # @dMPb
	.globl	dMPb
	.p2align	3, 0x0
dMPb:
	.dword	dataMaster
	.size	dMPb, 8

	.type	dMPe,@object                    # @dMPe
	.globl	dMPe
	.p2align	3, 0x0
dMPe:
	.dword	dataMaster+16000
	.size	dMPe, 8

	.type	DVPb,@object                    # @DVPb
	.globl	DVPb
	.p2align	3, 0x0
DVPb:
	.dword	VData
	.size	DVPb, 8

	.type	DVPe,@object                    # @DVPe
	.globl	DVPe
	.p2align	3, 0x0
DVPe:
	.dword	VData+16000
	.size	DVPe, 8

	.type	DVMPb,@object                   # @DVMPb
	.globl	DVMPb
	.p2align	3, 0x0
DVMPb:
	.dword	VDataMaster
	.size	DVMPb, 8

	.type	DVMPe,@object                   # @DVMPe
	.globl	DVMPe
	.p2align	3, 0x0
DVMPe:
	.dword	VDataMaster+16000
	.size	DVMPe, 8

	.type	DV10Pb,@object                  # @DV10Pb
	.globl	DV10Pb
	.p2align	3, 0x0
DV10Pb:
	.dword	V10Data
	.size	DV10Pb, 8

	.type	DV10Pe,@object                  # @DV10Pe
	.globl	DV10Pe
	.p2align	3, 0x0
DV10Pe:
	.dword	V10Data+16000
	.size	DV10Pe, 8

	.type	DV10MPb,@object                 # @DV10MPb
	.globl	DV10MPb
	.p2align	3, 0x0
DV10MPb:
	.dword	V10DataMaster
	.size	DV10MPb, 8

	.type	DV10MPe,@object                 # @DV10MPe
	.globl	DV10MPe
	.p2align	3, 0x0
DV10MPe:
	.dword	V10DataMaster+16000
	.size	DV10MPe, 8

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"insertion_sort double pointer"
	.size	.L.str.32, 30

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"insertion_sort double pointer_class"
	.size	.L.str.33, 36

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"insertion_sort DoubleValueWrapper pointer"
	.size	.L.str.34, 42

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"insertion_sort DoubleValueWrapper pointer_class"
	.size	.L.str.35, 48

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"insertion_sort DoubleValueWrapper10 pointer"
	.size	.L.str.36, 44

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"insertion_sort DoubleValueWrapper10 pointer_class"
	.size	.L.str.37, 50

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"quicksort double pointer"
	.size	.L.str.38, 25

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"quicksort double pointer_class"
	.size	.L.str.39, 31

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"quicksort DoubleValueWrapper pointer"
	.size	.L.str.40, 37

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"quicksort DoubleValueWrapper pointer_class"
	.size	.L.str.41, 43

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"quicksort DoubleValueWrapper10 pointer"
	.size	.L.str.42, 39

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"quicksort DoubleValueWrapper10 pointer_class"
	.size	.L.str.43, 45

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"heap_sort double pointer"
	.size	.L.str.44, 25

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"heap_sort double pointer_class"
	.size	.L.str.45, 31

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"heap_sort DoubleValueWrapper pointer"
	.size	.L.str.46, 37

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"heap_sort DoubleValueWrapper pointer_class"
	.size	.L.str.47, 43

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"heap_sort DoubleValueWrapper10 pointer"
	.size	.L.str.48, 39

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"heap_sort DoubleValueWrapper10 pointer_class"
	.size	.L.str.49, 45

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"test %i failed\n"
	.size	.L.str.50, 16

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"sort test %i failed\n"
	.size	.L.str.51, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym data
	.addrsig_sym VData
	.addrsig_sym V10Data
	.addrsig_sym dataMaster
	.addrsig_sym VDataMaster
	.addrsig_sym V10DataMaster
