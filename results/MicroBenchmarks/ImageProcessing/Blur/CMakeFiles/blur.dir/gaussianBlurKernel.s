	.file	"gaussianBlurKernel.c"
	.text
	.globl	gaussianBlurKernel              # -- Begin function gaussianBlurKernel
	.p2align	5
	.type	gaussianBlurKernel,@function
gaussianBlurKernel:                     # @gaussianBlurKernel
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 352                  # 8-byte Folded Spill
	move	$fp, $a3
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 324
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fs1, $zero
	addi.w	$s3, $zero, -4
	addi.d	$s4, $sp, 40
	addi.w	$s5, $zero, -16
	lu12i.w	$a0, 274976
	movgr2fr.w	$fs4, $a0
	lu12i.w	$a0, 92772
	ori	$a0, $a0, 2322
	lu32i.d	$a0, -12542
	lu52i.d	$a0, $a0, 1031
	movgr2fr.d	$fs5, $a0
	addi.w	$s6, $zero, -9
	ori	$s7, $zero, 5
	move	$s8, $s3
	.p2align	4, , 16
.LBB0_1:                                # %.preheader72
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$s0, $s8, $s8
	sub.d	$a0, $s5, $s0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs4
	fcvt.d.s	$fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, -16
	fadd.s	$fs2, $fs1, $fa0
	sub.d	$a0, $s6, $s0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs4
	fcvt.d.s	$fs1, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, -12
	fadd.s	$fs3, $fs2, $fa0
	sub.d	$a0, $s3, $s0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs4
	fcvt.d.s	$fs2, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, -8
	fadd.s	$fs6, $fs3, $fa0
	nor	$a0, $s0, $zero
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs4
	fcvt.d.s	$fs3, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, -4
	fadd.s	$fs6, $fs6, $fa0
	sub.d	$a0, $zero, $s0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs4
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, 0
	fadd.s	$fs6, $fs6, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, 4
	fadd.s	$fs3, $fs6, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, 8
	fadd.s	$fs2, $fs3, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, 12
	fadd.s	$fs1, $fs2, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, 16
	fadd.s	$fs1, $fs1, $fa0
	addi.d	$s8, $s8, 1
	addi.d	$s4, $s4, 36
	bne	$s8, $s7, .LBB0_1
# %bb.2:                                # %.preheader71
	ori	$a0, $zero, 9
	blt	$s2, $a0, .LBB0_10
# %bb.3:                                # %.preheader71
	blt	$s1, $a0, .LBB0_10
# %bb.4:                                # %.preheader70.us.preheader
	bstrpick.d	$a0, $s1, 31, 0
	addi.w	$a1, $s2, -4
	addi.d	$a2, $s1, -4
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	slli.d	$a4, $a0, 2
	ori	$a5, $zero, 4
	movgr2fr.w	$fa0, $zero
	addi.d	$a6, $sp, 24
	ori	$a7, $zero, 324
	.p2align	4, , 16
.LBB0_5:                                # %.preheader70.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_7 Depth 3
	mul.d	$t0, $a5, $a0
	alsl.d	$t0, $t0, $fp, 2
	move	$t1, $a3
	ori	$t2, $zero, 4
	.p2align	4, , 16
.LBB0_6:                                # %.preheader69.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
	move	$t4, $zero
	move	$t3, $t2
	addi.d	$t2, $t2, 1
	move	$t5, $t1
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB0_7:                                # %.preheader.us
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t6, $t5, -16
	movgr2fr.w	$fa2, $t6
	fldx.s	$fa3, $t4, $a6
	ffint.s.w	$fa2, $fa2
	add.d	$t6, $a6, $t4
	ld.w	$t7, $t5, -12
	fmul.s	$fa2, $fa3, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $t6, 4
	movgr2fr.w	$fa3, $t7
	ffint.s.w	$fa3, $fa3
	ld.w	$t7, $t5, -8
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $t6, 8
	movgr2fr.w	$fa3, $t7
	ffint.s.w	$fa3, $fa3
	ld.w	$t7, $t5, -4
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $t6, 12
	movgr2fr.w	$fa3, $t7
	ffint.s.w	$fa3, $fa3
	ld.w	$t7, $t5, 0
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $t6, 16
	movgr2fr.w	$fa3, $t7
	ffint.s.w	$fa3, $fa3
	ld.w	$t7, $t5, 4
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $t6, 20
	movgr2fr.w	$fa3, $t7
	ffint.s.w	$fa3, $fa3
	ld.w	$t7, $t5, 8
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $t6, 24
	movgr2fr.w	$fa3, $t7
	ffint.s.w	$fa3, $fa3
	ld.w	$t7, $t5, 12
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $t6, 28
	movgr2fr.w	$fa3, $t7
	ffint.s.w	$fa3, $fa3
	ld.w	$t7, $t5, 16
	fmul.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $t6, 32
	fadd.s	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $t7
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fadd.s	$fa1, $fa1, $fa2
	addi.d	$t4, $t4, 36
	add.d	$t5, $t5, $a4
	bne	$t4, $a7, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	fdiv.s	$fa1, $fa1, $fs1
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$t4, $fa1
	slli.d	$t3, $t3, 2
	stx.w	$t4, $t0, $t3
	addi.d	$t1, $t1, 4
	bne	$t2, $a2, .LBB0_6
# %bb.9:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a3, $a3, $a4
	bne	$a5, $a1, .LBB0_5
.LBB0_10:                               # %._crit_edge83
	fld.d	$fs6, $sp, 352                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 400                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end0:
	.size	gaussianBlurKernel, .Lfunc_end0-gaussianBlurKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
