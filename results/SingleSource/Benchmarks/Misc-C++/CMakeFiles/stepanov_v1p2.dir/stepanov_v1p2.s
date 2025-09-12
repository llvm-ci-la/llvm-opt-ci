	.file	"stepanov_v1p2.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z9summarizev
.LCPI0_0:
	.dword	0x409f400000000000              # double 2000
.LCPI0_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI0_2:
	.dword	0x3e7ad7f29abcaf48              # double 9.9999999999999995E-8
	.text
	.globl	_Z9summarizev
	.p2align	5
	.type	_Z9summarizev,@function
_Z9summarizev:                          # @_Z9summarizev
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(current_test)
	ld.w	$a0, $s1, %pc_lo12(current_test)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$s2, %pc_hi20(.LCPI0_2)
	blez	$a0, .LBB0_7
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(iterations)
	ld.w	$a0, $a0, %pc_lo12(iterations)
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_1)
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa2, $fa0
	fdiv.d	$fs3, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(result_times)
	addi.d	$s3, $a0, %pc_lo12(result_times)
	fld.d	$fs4, $s2, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s0, $zero
	move	$s4, $zero
	move	$s5, $s3
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s5, 0
	fld.d	$fa1, $s3, 0
	fmul.d	$fa2, $fa0, $fs4
	fdiv.d	$fa3, $fs3, $fa0
	fmul.d	$fa3, $fa3, $fs4
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs4
	movfr2gr.d	$a2, $fa2
	movfr2gr.d	$a3, $fa3
	movfr2gr.d	$a4, $fa0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(current_test)
	addi.d	$s4, $s4, 1
	addi.w	$s0, $s0, 1
	addi.d	$s5, $s5, 8
	blt	$s4, $a0, .LBB0_2
# %bb.3:                                # %.preheader
	fmov.d	$fs0, $fs1
	fmov.d	$fs5, $fs1
	fmov.d	$fs2, $fs1
	blez	$a0, .LBB0_8
# %bb.4:                                # %.lr.ph34
	pcalau12i	$a0, %pc_hi20(result_times)
	addi.d	$fp, $a0, %pc_lo12(result_times)
	fld.d	$fs6, $fp, 0
	movgr2fr.d	$fs2, $zero
	move	$s0, $zero
	fmov.d	$fs5, $fs2
	fmov.d	$fs7, $fs2
	fmov.d	$fs1, $fs2
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fs0, $fp, 0
	fadd.d	$fs7, $fs7, $fs0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fadd.d	$fs1, $fs1, $fa0
	fdiv.d	$fa0, $fs3, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fadd.d	$fs5, $fs5, $fa0
	fdiv.d	$fa0, $fs0, $fs6
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(current_test)
	fadd.d	$fs2, $fs2, $fa0
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	blt	$s0, $a0, .LBB0_5
# %bb.6:                                # %._crit_edge.loopexit
	fmul.d	$fs0, $fs7, $fs4
	b	.LBB0_8
.LBB0_7:
	fmov.d	$fs0, $fs1
	fmov.d	$fs5, $fs1
	fmov.d	$fs2, $fs1
.LBB0_8:                                # %._crit_edge
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $s2, %pc_lo12(.LCPI0_2)
	ld.w	$a0, $s1, %pc_lo12(current_test)
	fmul.d	$fs3, $fa0, $fs1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs5, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(current_test)
	fmul.d	$fs4, $fa0, $fs1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs2, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs1
	movfr2gr.d	$a1, $fs3
	movfr2gr.d	$a2, $fs4
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a1, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(current_test)
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs2, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	fld.d	$fs7, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end0:
	.size	_Z9summarizev, .Lfunc_end0-_Z9summarizev
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z5test0PdS_
.LCPI1_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI1_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI1_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.text
	.globl	_Z5test0PdS_
	.p2align	5
	.type	_Z5test0PdS_,@function
_Z5test0PdS_:                           # @_Z5test0PdS_
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(iterations)
	ld.w	$a1, $s3, %pc_lo12(iterations)
	pcalau12i	$s2, %pc_hi20(start_time)
	st.d	$a0, $s2, %pc_lo12(start_time)
	pcalau12i	$s1, %pc_hi20(current_test)
	blez	$a1, .LBB1_10
# %bb.1:                                # %.preheader.lr.ph
	sub.d	$a0, $s0, $fp
	srai.d	$s4, $a0, 3
	blez	$s4, .LBB1_8
# %bb.2:                                # %.preheader.us.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s0, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %_Z5checkd.exit.us
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB1_10
.LBB1_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	move	$a0, $s4
	move	$a2, $fp
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB1_5:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a2, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB1_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB1_4 Depth=1
	fcmp.cune.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB1_3
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a1, $s1, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(iterations)
	b	.LBB1_3
.LBB1_8:                                # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB1_9:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s1, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB1_9
.LBB1_10:                               # %._crit_edge15
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI1_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI1_2)
	ld.w	$a1, $s1, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s1, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	_Z5test0PdS_, .Lfunc_end1-_Z5test0PdS_
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB2_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(iterations)
	st.w	$a0, $a1, %pc_lo12(iterations)
.LBB2_2:
	pcalau12i	$fp, %pc_hi20(dpb)
	ld.d	$a0, $fp, %pc_lo12(dpb)
	pcalau12i	$s0, %pc_hi20(dpe)
	ld.d	$a1, $s0, %pc_lo12(dpe)
	beq	$a0, $a1, .LBB2_9
# %bb.3:                                # %.lr.ph.i.preheader
	sub.d	$a2, $a1, $a0
	addi.d	$a3, $a2, -8
	ori	$a4, $zero, 24
	move	$a2, $a0
	bltu	$a3, $a4, .LBB2_7
# %bb.4:                                # %vector.ph
	srli.d	$a2, $a3, 3
	addi.d	$a3, $a2, 1
	bstrpick.d	$a2, $a3, 61, 2
	slli.d	$a4, $a2, 2
	slli.d	$a2, $a2, 5
	add.d	$a2, $a0, $a2
	addi.d	$a5, $a0, 16
	ori	$a6, $zero, 0
	lu32i.d	$a6, -524288
	lu52i.d	$a6, $a6, 1024
	vreplgr2vr.d	$vr0, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_5
# %bb.6:                                # %middle.block
	beq	$a3, $a4, .LBB2_9
.LBB2_7:                                # %.lr.ph.i.preheader45
	ori	$a3, $zero, 0
	lu32i.d	$a3, -524288
	lu52i.d	$a3, $a3, 1024
	.p2align	4, , 16
.LBB2_8:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a2, 8
	st.d	$a3, $a2, 0
	move	$a2, $a4
	bne	$a4, $a1, .LBB2_8
.LBB2_9:                                # %_Z4fillIPddEvT_S1_T0_.exit
	pcalau12i	$s1, %pc_hi20(Dpb)
	ld.d	$a6, $s1, %pc_lo12(Dpb)
	pcalau12i	$s2, %pc_hi20(Dpe)
	ld.d	$a2, $s2, %pc_lo12(Dpe)
	beq	$a6, $a2, .LBB2_17
# %bb.10:                               # %.lr.ph.i26.preheader
	sub.d	$a3, $a2, $a6
	addi.d	$a3, $a3, -8
	ori	$a4, $zero, 24
	bgeu	$a3, $a4, .LBB2_12
# %bb.11:
	move	$a3, $a6
	b	.LBB2_15
.LBB2_12:                               # %vector.ph33
	srli.d	$a3, $a3, 3
	addi.d	$a4, $a3, 1
	bstrpick.d	$a3, $a4, 61, 2
	slli.d	$a5, $a3, 2
	slli.d	$a3, $a3, 5
	add.d	$a3, $a6, $a3
	addi.d	$a6, $a6, 16
	ori	$a7, $zero, 0
	lu32i.d	$a7, -524288
	lu52i.d	$a7, $a7, 1024
	vreplgr2vr.d	$vr0, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_13:                               # %vector.body36
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a6, -16
	vst	$vr0, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB2_13
# %bb.14:                               # %middle.block41
	beq	$a4, $a5, .LBB2_17
.LBB2_15:                               # %.lr.ph.i26.preheader44
	ori	$a4, $zero, 0
	lu32i.d	$a4, -524288
	lu52i.d	$a4, $a4, 1024
	.p2align	4, , 16
.LBB2_16:                               # %.lr.ph.i26
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a3, 8
	st.d	$a4, $a3, 0
	move	$a3, $a5
	bne	$a5, $a2, .LBB2_16
.LBB2_17:                               # %_Z4fillIP6DoubleS0_EvT_S2_T0_.exit
	pcaddu18i	$ra, %call36(_Z5test0PdS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(dpb)
	ld.d	$a1, $s0, %pc_lo12(dpe)
	pcalau12i	$s0, %pc_hi20(d)
	fld.d	$fa0, $s0, %pc_lo12(d)
	pcaddu18i	$ra, %call36(_Z4testIPddEvT_S1_T0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(Dpb)
	ld.d	$a1, $s2, %pc_lo12(Dpe)
	pcalau12i	$fp, %pc_hi20(D)
	fld.d	$fa0, $fp, %pc_lo12(D)
	pcaddu18i	$ra, %call36(_Z4testIP6DoubleS0_EvT_S2_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(dPb)
	ld.d	$a0, $a0, %pc_lo12(dPb)
	pcalau12i	$a1, %pc_hi20(dPe)
	ld.d	$a1, $a1, %pc_lo12(dPe)
	fld.d	$fa0, $s0, %pc_lo12(d)
	pcaddu18i	$ra, %call36(_Z4testI14double_pointerdEvT_S1_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(DPb)
	ld.d	$a0, $a0, %pc_lo12(DPb)
	pcalau12i	$a1, %pc_hi20(DPe)
	ld.d	$a1, $a1, %pc_lo12(DPe)
	fld.d	$fa0, $fp, %pc_lo12(D)
	pcaddu18i	$ra, %call36(_Z4testI14Double_pointer6DoubleEvT_S2_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rdpb)
	ld.d	$a0, $a0, %pc_lo12(rdpb)
	pcalau12i	$a1, %pc_hi20(rdpe)
	ld.d	$a1, $a1, %pc_lo12(rdpe)
	fld.d	$fa0, $s0, %pc_lo12(d)
	pcaddu18i	$ra, %call36(_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rDpb)
	ld.d	$a0, $a0, %pc_lo12(rDpb)
	pcalau12i	$a1, %pc_hi20(rDpe)
	ld.d	$a1, $a1, %pc_lo12(rDpe)
	fld.d	$fa0, $fp, %pc_lo12(D)
	pcaddu18i	$ra, %call36(_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rdPb)
	ld.d	$a0, $a0, %pc_lo12(rdPb)
	pcalau12i	$a1, %pc_hi20(rdPe)
	ld.d	$a1, $a1, %pc_lo12(rdPe)
	fld.d	$fa0, $s0, %pc_lo12(d)
	pcaddu18i	$ra, %call36(_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rDPb)
	ld.d	$a0, $a0, %pc_lo12(rDPb)
	pcalau12i	$a1, %pc_hi20(rDPe)
	ld.d	$a1, $a1, %pc_lo12(rDPe)
	fld.d	$fa0, $fp, %pc_lo12(D)
	pcaddu18i	$ra, %call36(_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rrdpb)
	ld.d	$a0, $a0, %pc_lo12(rrdpb)
	pcalau12i	$a1, %pc_hi20(rrdpe)
	ld.d	$a1, $a1, %pc_lo12(rrdpe)
	fld.d	$fa0, $s0, %pc_lo12(d)
	pcaddu18i	$ra, %call36(_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rrDpb)
	ld.d	$a0, $a0, %pc_lo12(rrDpb)
	pcalau12i	$a1, %pc_hi20(rrDpe)
	ld.d	$a1, $a1, %pc_lo12(rrDpe)
	fld.d	$fa0, $fp, %pc_lo12(D)
	pcaddu18i	$ra, %call36(_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rrdPb)
	ld.d	$a0, $a0, %pc_lo12(rrdPb)
	pcalau12i	$a1, %pc_hi20(rrdPe)
	ld.d	$a1, $a1, %pc_lo12(rrdPe)
	fld.d	$fa0, $s0, %pc_lo12(d)
	pcaddu18i	$ra, %call36(_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rrDPb)
	ld.d	$a0, $a0, %pc_lo12(rrDPb)
	pcalau12i	$a1, %pc_hi20(rrDPe)
	ld.d	$a1, $a1, %pc_lo12(rrDPe)
	fld.d	$fa0, $fp, %pc_lo12(D)
	pcaddu18i	$ra, %call36(_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z9summarizev)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testIPddEvT_S1_T0_
.LCPI3_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI3_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI3_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testIPddEvT_S1_T0_,"axG",@progbits,_Z4testIPddEvT_S1_T0_,comdat
	.weak	_Z4testIPddEvT_S1_T0_
	.p2align	5
	.type	_Z4testIPddEvT_S1_T0_,@function
_Z4testIPddEvT_S1_T0_:                  # @_Z4testIPddEvT_S1_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB3_11
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	beq	$s0, $fp, .LBB3_8
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI3_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %_Z5checkd.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB3_11
.LBB3_4:                                # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB3_5:                                # %.lr.ph.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	addi.d	$a2, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB3_5
# %bb.6:                                # %_Z10accumulateIPddET0_T_S2_S1_.exit.loopexit
                                        #   in Loop: Header=BB3_4 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB3_3
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB3_3
.LBB3_8:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB3_11
# %bb.9:                                # %_Z10accumulateIPddET0_T_S2_S1_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_10:                               # %_Z10accumulateIPddET0_T_S2_S1_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB3_10
.LBB3_11:                               # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI3_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI3_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI3_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI3_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	_Z4testIPddEvT_S1_T0_, .Lfunc_end3-_Z4testIPddEvT_S1_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testIP6DoubleS0_EvT_S2_T0_
.LCPI4_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI4_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI4_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testIP6DoubleS0_EvT_S2_T0_,"axG",@progbits,_Z4testIP6DoubleS0_EvT_S2_T0_,comdat
	.weak	_Z4testIP6DoubleS0_EvT_S2_T0_
	.p2align	5
	.type	_Z4testIP6DoubleS0_EvT_S2_T0_,@function
_Z4testIP6DoubleS0_EvT_S2_T0_:          # @_Z4testIP6DoubleS0_EvT_S2_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB4_11
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	beq	$s0, $fp, .LBB4_8
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %_Z5checkd.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB4_11
.LBB4_4:                                # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB4_5:                                # %.lr.ph.i
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	addi.d	$a2, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB4_5
# %bb.6:                                # %_Z10accumulateIP6DoubleS0_ET0_T_S3_S2_.exit.loopexit
                                        #   in Loop: Header=BB4_4 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB4_3
# %bb.7:                                #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB4_3
.LBB4_8:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB4_11
# %bb.9:                                # %_Z10accumulateIP6DoubleS0_ET0_T_S3_S2_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB4_10:                               # %_Z10accumulateIP6DoubleS0_ET0_T_S3_S2_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB4_10
.LBB4_11:                               # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI4_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI4_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI4_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI4_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	_Z4testIP6DoubleS0_EvT_S2_T0_, .Lfunc_end4-_Z4testIP6DoubleS0_EvT_S2_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI14double_pointerdEvT_S1_T0_
.LCPI5_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI5_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI5_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI14double_pointerdEvT_S1_T0_,"axG",@progbits,_Z4testI14double_pointerdEvT_S1_T0_,comdat
	.weak	_Z4testI14double_pointerdEvT_S1_T0_
	.p2align	5
	.type	_Z4testI14double_pointerdEvT_S1_T0_,@function
_Z4testI14double_pointerdEvT_S1_T0_:    # @_Z4testI14double_pointerdEvT_S1_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB5_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	bne	$s0, $fp, .LBB5_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI5_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB5_5
# %bb.3:                                # %_Z10accumulateI14double_pointerdET0_T_S2_S1_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB5_4:                                # %_Z10accumulateI14double_pointerdET0_T_S2_S1_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB5_4
.LBB5_5:                                # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI5_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI5_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI5_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI5_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB5_6:                                # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_7:                                # %_Z5checkd.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB5_5
.LBB5_8:                                # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB5_9:                                # %.lr.ph.i
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	addi.d	$a2, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB5_9
# %bb.10:                               # %_Z10accumulateI14double_pointerdET0_T_S2_S1_.exit.loopexit
                                        #   in Loop: Header=BB5_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB5_7
# %bb.11:                               #   in Loop: Header=BB5_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB5_7
.Lfunc_end5:
	.size	_Z4testI14double_pointerdEvT_S1_T0_, .Lfunc_end5-_Z4testI14double_pointerdEvT_S1_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI14Double_pointer6DoubleEvT_S2_T0_
.LCPI6_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI6_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI6_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI14Double_pointer6DoubleEvT_S2_T0_,"axG",@progbits,_Z4testI14Double_pointer6DoubleEvT_S2_T0_,comdat
	.weak	_Z4testI14Double_pointer6DoubleEvT_S2_T0_
	.p2align	5
	.type	_Z4testI14Double_pointer6DoubleEvT_S2_T0_,@function
_Z4testI14Double_pointer6DoubleEvT_S2_T0_: # @_Z4testI14Double_pointer6DoubleEvT_S2_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB6_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	bne	$s0, $fp, .LBB6_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB6_5
# %bb.3:                                # %_Z10accumulateI14Double_pointer6DoubleET0_T_S3_S2_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB6_4:                                # %_Z10accumulateI14Double_pointer6DoubleET0_T_S3_S2_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB6_4
.LBB6_5:                                # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI6_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI6_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI6_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI6_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB6_6:                                # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI6_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_7:                                # %_Z5checkd.exit
                                        #   in Loop: Header=BB6_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB6_5
.LBB6_8:                                # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB6_9:                                # %.lr.ph.i
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	addi.d	$a2, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB6_9
# %bb.10:                               # %_Z10accumulateI14Double_pointer6DoubleET0_T_S3_S2_.exit.loopexit
                                        #   in Loop: Header=BB6_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB6_7
# %bb.11:                               #   in Loop: Header=BB6_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB6_7
.Lfunc_end6:
	.size	_Z4testI14Double_pointer6DoubleEvT_S2_T0_, .Lfunc_end6-_Z4testI14Double_pointer6DoubleEvT_S2_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI16reverse_iteratorIPddEdEvT_S3_T0_
.LCPI7_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI7_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI7_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI16reverse_iteratorIPddEdEvT_S3_T0_,"axG",@progbits,_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_,comdat
	.weak	_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_
	.p2align	5
	.type	_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_,@function
_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_: # @_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB7_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	bne	$s0, $fp, .LBB7_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB7_5
# %bb.3:                                # %_Z10accumulateI16reverse_iteratorIPddEdET0_T_S4_S3_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB7_4:                                # %_Z10accumulateI16reverse_iteratorIPddEdET0_T_S4_S3_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB7_4
.LBB7_5:                                # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI7_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB7_6:                                # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI7_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %_Z5checkd.exit
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB7_5
.LBB7_8:                                # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB7_9:                                # %.lr.ph.i
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, -8
	addi.d	$a2, $a0, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB7_9
# %bb.10:                               # %_Z10accumulateI16reverse_iteratorIPddEdET0_T_S4_S3_.exit.loopexit
                                        #   in Loop: Header=BB7_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB7_7
# %bb.11:                               #   in Loop: Header=BB7_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB7_7
.Lfunc_end7:
	.size	_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_, .Lfunc_end7-_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_
.LCPI8_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI8_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI8_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_,"axG",@progbits,_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_,comdat
	.weak	_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_
	.p2align	5
	.type	_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_,@function
_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_: # @_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB8_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	bne	$s0, $fp, .LBB8_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI8_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB8_5
# %bb.3:                                # %_Z10accumulateI16reverse_iteratorIP6DoubleS1_ES1_ET0_T_S5_S4_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB8_4:                                # %_Z10accumulateI16reverse_iteratorIP6DoubleS1_ES1_ET0_T_S5_S4_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB8_4
.LBB8_5:                                # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI8_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI8_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI8_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB8_6:                                # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI8_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_7:                                # %_Z5checkd.exit
                                        #   in Loop: Header=BB8_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB8_5
.LBB8_8:                                # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB8_9:                                # %.lr.ph.i
                                        #   Parent Loop BB8_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, -8
	addi.d	$a2, $a0, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB8_9
# %bb.10:                               # %_Z10accumulateI16reverse_iteratorIP6DoubleS1_ES1_ET0_T_S5_S4_.exit.loopexit
                                        #   in Loop: Header=BB8_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB8_7
# %bb.11:                               #   in Loop: Header=BB8_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB8_7
.Lfunc_end8:
	.size	_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_, .Lfunc_end8-_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_
.LCPI9_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI9_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI9_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_,"axG",@progbits,_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_,comdat
	.weak	_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_
	.p2align	5
	.type	_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_,@function
_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_: # @_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB9_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	bne	$s0, $fp, .LBB9_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI9_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB9_5
# %bb.3:                                # %_Z10accumulateI16reverse_iteratorI14double_pointerdEdET0_T_S4_S3_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB9_4:                                # %_Z10accumulateI16reverse_iteratorI14double_pointerdEdET0_T_S4_S3_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB9_4
.LBB9_5:                                # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI9_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI9_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI9_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI9_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB9_6:                                # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI9_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB9_8
	.p2align	4, , 16
.LBB9_7:                                # %_Z5checkd.exit
                                        #   in Loop: Header=BB9_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB9_5
.LBB9_8:                                # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB9_9:                                # %.lr.ph.i
                                        #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, -8
	addi.d	$a2, $a0, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB9_9
# %bb.10:                               # %_Z10accumulateI16reverse_iteratorI14double_pointerdEdET0_T_S4_S3_.exit.loopexit
                                        #   in Loop: Header=BB9_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB9_7
# %bb.11:                               #   in Loop: Header=BB9_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB9_7
.Lfunc_end9:
	.size	_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_, .Lfunc_end9-_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_
.LCPI10_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI10_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI10_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_,"axG",@progbits,_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_,comdat
	.weak	_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_
	.p2align	5
	.type	_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_,@function
_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_: # @_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB10_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	bne	$s0, $fp, .LBB10_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI10_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB10_5
# %bb.3:                                # %_Z10accumulateI16reverse_iteratorI14Double_pointer6DoubleES2_ET0_T_S5_S4_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB10_4:                               # %_Z10accumulateI16reverse_iteratorI14Double_pointer6DoubleES2_ET0_T_S5_S4_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB10_4
.LBB10_5:                               # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI10_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI10_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI10_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI10_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB10_6:                               # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI10_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB10_8
	.p2align	4, , 16
.LBB10_7:                               # %_Z5checkd.exit
                                        #   in Loop: Header=BB10_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB10_5
.LBB10_8:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB10_9:                               # %.lr.ph.i
                                        #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, -8
	addi.d	$a2, $a0, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB10_9
# %bb.10:                               # %_Z10accumulateI16reverse_iteratorI14Double_pointer6DoubleES2_ET0_T_S5_S4_.exit.loopexit
                                        #   in Loop: Header=BB10_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB10_7
# %bb.11:                               #   in Loop: Header=BB10_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB10_7
.Lfunc_end10:
	.size	_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_, .Lfunc_end10-_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_
.LCPI11_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI11_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI11_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_,"axG",@progbits,_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_,comdat
	.weak	_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_
	.p2align	5
	.type	_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_,@function
_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_: # @_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB11_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	bne	$s0, $fp, .LBB11_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI11_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB11_5
# %bb.3:                                # %_Z10accumulateI16reverse_iteratorIS0_IPddEdEdET0_T_S5_S4_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB11_4:                               # %_Z10accumulateI16reverse_iteratorIS0_IPddEdEdET0_T_S5_S4_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB11_4
.LBB11_5:                               # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI11_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI11_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI11_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI11_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB11_6:                               # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI11_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB11_8
	.p2align	4, , 16
.LBB11_7:                               # %_Z5checkd.exit
                                        #   in Loop: Header=BB11_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB11_5
.LBB11_8:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB11_9:                               # %.lr.ph.i
                                        #   Parent Loop BB11_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	addi.d	$a2, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB11_9
# %bb.10:                               # %_Z10accumulateI16reverse_iteratorIS0_IPddEdEdET0_T_S5_S4_.exit.loopexit
                                        #   in Loop: Header=BB11_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB11_7
# %bb.11:                               #   in Loop: Header=BB11_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB11_7
.Lfunc_end11:
	.size	_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_, .Lfunc_end11-_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_
.LCPI12_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI12_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI12_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_,"axG",@progbits,_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_,comdat
	.weak	_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_
	.p2align	5
	.type	_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_,@function
_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_: # @_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB12_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	bne	$s0, $fp, .LBB12_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI12_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB12_5
# %bb.3:                                # %_Z10accumulateI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_ET0_T_S6_S5_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB12_4:                               # %_Z10accumulateI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_ET0_T_S6_S5_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB12_4
.LBB12_5:                               # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI12_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI12_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI12_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI12_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB12_6:                               # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI12_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB12_8
	.p2align	4, , 16
.LBB12_7:                               # %_Z5checkd.exit
                                        #   in Loop: Header=BB12_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB12_5
.LBB12_8:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB12_9:                               # %.lr.ph.i
                                        #   Parent Loop BB12_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	addi.d	$a2, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB12_9
# %bb.10:                               # %_Z10accumulateI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_ET0_T_S6_S5_.exit.loopexit
                                        #   in Loop: Header=BB12_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB12_7
# %bb.11:                               #   in Loop: Header=BB12_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB12_7
.Lfunc_end12:
	.size	_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_, .Lfunc_end12-_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_
.LCPI13_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI13_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI13_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_,"axG",@progbits,_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_,comdat
	.weak	_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_
	.p2align	5
	.type	_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_,@function
_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_: # @_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB13_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	bne	$s0, $fp, .LBB13_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI13_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB13_5
# %bb.3:                                # %_Z10accumulateI16reverse_iteratorIS0_I14double_pointerdEdEdET0_T_S5_S4_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB13_4:                               # %_Z10accumulateI16reverse_iteratorIS0_I14double_pointerdEdEdET0_T_S5_S4_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB13_4
.LBB13_5:                               # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI13_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI13_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI13_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI13_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB13_6:                               # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI13_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB13_8
	.p2align	4, , 16
.LBB13_7:                               # %_Z5checkd.exit
                                        #   in Loop: Header=BB13_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB13_5
.LBB13_8:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB13_9:                               # %.lr.ph.i
                                        #   Parent Loop BB13_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	addi.d	$a2, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB13_9
# %bb.10:                               # %_Z10accumulateI16reverse_iteratorIS0_I14double_pointerdEdEdET0_T_S5_S4_.exit.loopexit
                                        #   in Loop: Header=BB13_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB13_7
# %bb.11:                               #   in Loop: Header=BB13_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB13_7
.Lfunc_end13:
	.size	_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_, .Lfunc_end13-_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_
.LCPI14_0:
	.dword	0x40b7700000000000              # double 6000
.LCPI14_1:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI14_2:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.section	.text._Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_,"axG",@progbits,_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_,comdat
	.weak	_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_
	.p2align	5
	.type	_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_,@function
_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_: # @_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a1, $s4, %pc_lo12(iterations)
	pcalau12i	$s3, %pc_hi20(start_time)
	st.d	$a0, $s3, %pc_lo12(start_time)
	pcalau12i	$s2, %pc_hi20(current_test)
	blez	$a1, .LBB14_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	bne	$s0, $fp, .LBB14_6
# %bb.2:                                # %.lr.ph.split.us
	fld.d	$fa0, $a0, %pc_lo12(.LCPI14_0)
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB14_5
# %bb.3:                                # %_Z10accumulateI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_ET0_T_S6_S5_.exit.us.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$fp, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB14_4:                               # %_Z10accumulateI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_ET0_T_S6_S5_.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB14_4
.LBB14_5:                               # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(.LCPI14_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI14_1)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI14_2)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI14_2)
	ld.w	$a1, $s2, %pc_lo12(current_test)
	pcalau12i	$a2, %pc_hi20(end_time)
	st.d	$a0, $a2, %pc_lo12(end_time)
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(current_test)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(result_times)
	addi.d	$a1, $a1, %pc_lo12(result_times)
	fstx.d	$fa0, $a1, $a0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB14_6:                               # %.lr.ph.preheader.i.preheader
	fld.d	$fs1, $a0, %pc_lo12(.LCPI14_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s5, $zero
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_7:                               # %_Z5checkd.exit
                                        #   in Loop: Header=BB14_8 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB14_5
.LBB14_8:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_9 Depth 2
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB14_9:                               # %.lr.ph.i
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	addi.d	$a2, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $fp, .LBB14_9
# %bb.10:                               # %_Z10accumulateI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_ET0_T_S6_S5_.exit.loopexit
                                        #   in Loop: Header=BB14_8 Depth=1
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB14_7
# %bb.11:                               #   in Loop: Header=BB14_8 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(iterations)
	b	.LBB14_7
.Lfunc_end14:
	.size	_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_, .Lfunc_end14-_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_
	.cfi_endproc
                                        # -- End function
	.type	iterations,@object              # @iterations
	.data
	.globl	iterations
	.p2align	2, 0x0
iterations:
	.word	250000                          # 0x3d090
	.size	iterations, 4

	.type	current_test,@object            # @current_test
	.bss
	.globl	current_test
	.p2align	2, 0x0
current_test:
	.word	0                               # 0x0
	.size	current_test, 4

	.type	result_times,@object            # @result_times
	.globl	result_times
	.p2align	3, 0x0
result_times:
	.space	160
	.size	result_times, 160

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%2i       %5.2fsec    %5.2fM         %.2f\n"
	.size	.L.str.2, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"mean:    %5.2fsec    %5.2fM         %.2f\n"
	.size	.L.str.3, 42

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\nTotal absolute time: %.2f sec\n"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\nAbstraction Penalty: %.2f\n\n"
	.size	.L.str.5, 29

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

	.type	data,@object                    # @data
	.globl	data
	.p2align	3, 0x0
data:
	.space	16000
	.size	data, 16000

	.type	Data,@object                    # @Data
	.globl	Data
	.p2align	3, 0x0
Data:
	.space	16000
	.size	Data, 16000

	.type	d,@object                       # @d
	.globl	d
	.p2align	3, 0x0
d:
	.dword	0x0000000000000000              # double 0
	.size	d, 8

	.type	D,@object                       # @D
	.globl	D
	.p2align	3, 0x0
D:
	.space	8
	.size	D, 8

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

	.type	Dpb,@object                     # @Dpb
	.globl	Dpb
	.p2align	3, 0x0
Dpb:
	.dword	Data
	.size	Dpb, 8

	.type	Dpe,@object                     # @Dpe
	.globl	Dpe
	.p2align	3, 0x0
Dpe:
	.dword	Data+16000
	.size	Dpe, 8

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

	.type	DPb,@object                     # @DPb
	.globl	DPb
	.p2align	3, 0x0
DPb:
	.dword	Data
	.size	DPb, 8

	.type	DPe,@object                     # @DPe
	.globl	DPe
	.p2align	3, 0x0
DPe:
	.dword	Data+16000
	.size	DPe, 8

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

	.type	rDpb,@object                    # @rDpb
	.globl	rDpb
	.p2align	3, 0x0
rDpb:
	.dword	Data+16000
	.size	rDpb, 8

	.type	rDpe,@object                    # @rDpe
	.globl	rDpe
	.p2align	3, 0x0
rDpe:
	.dword	Data
	.size	rDpe, 8

	.type	rdPb,@object                    # @rdPb
	.globl	rdPb
	.p2align	3, 0x0
rdPb:
	.dword	data+16000
	.size	rdPb, 8

	.type	rdPe,@object                    # @rdPe
	.globl	rdPe
	.p2align	3, 0x0
rdPe:
	.dword	data
	.size	rdPe, 8

	.type	rDPb,@object                    # @rDPb
	.globl	rDPb
	.p2align	3, 0x0
rDPb:
	.dword	Data+16000
	.size	rDPb, 8

	.type	rDPe,@object                    # @rDPe
	.globl	rDPe
	.p2align	3, 0x0
rDPe:
	.dword	Data
	.size	rDPe, 8

	.type	rrdpb,@object                   # @rrdpb
	.globl	rrdpb
	.p2align	3, 0x0
rrdpb:
	.dword	data
	.size	rrdpb, 8

	.type	rrdpe,@object                   # @rrdpe
	.globl	rrdpe
	.p2align	3, 0x0
rrdpe:
	.dword	data+16000
	.size	rrdpe, 8

	.type	rrDpb,@object                   # @rrDpb
	.globl	rrDpb
	.p2align	3, 0x0
rrDpb:
	.dword	Data
	.size	rrDpb, 8

	.type	rrDpe,@object                   # @rrDpe
	.globl	rrDpe
	.p2align	3, 0x0
rrDpe:
	.dword	Data+16000
	.size	rrDpe, 8

	.type	rrdPb,@object                   # @rrdPb
	.globl	rrdPb
	.p2align	3, 0x0
rrdPb:
	.dword	data
	.size	rrdPb, 8

	.type	rrdPe,@object                   # @rrdPe
	.globl	rrdPe
	.p2align	3, 0x0
rrdPe:
	.dword	data+16000
	.size	rrdPe, 8

	.type	rrDPb,@object                   # @rrDPb
	.globl	rrDPb
	.p2align	3, 0x0
rrDPb:
	.dword	Data
	.size	rrDPb, 8

	.type	rrDPe,@object                   # @rrDPe
	.globl	rrDPe
	.p2align	3, 0x0
rrDPe:
	.dword	Data+16000
	.size	rrDPe, 8

	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"test %i failed\n"
	.size	.L.str.27, 16

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\ntest      absolute   additions      ratio with"
	.size	.Lstr, 48

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"number    time       per second     test0\n"
	.size	.Lstr.1, 43

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym data
	.addrsig_sym Data
