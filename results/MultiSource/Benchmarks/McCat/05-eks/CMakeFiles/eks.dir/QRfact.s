	.file	"QRfact.c"
	.text
	.globl	Givens                          # -- Begin function Givens
	.p2align	5
	.type	Givens,@function
Givens:                                 # @Givens
# %bb.0:
	movgr2fr.d	$fa2, $zero
	fcmp.cune.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB0_2
# %bb.1:
	lu52i.d	$a2, $zero, 1023
	st.d	$a2, $a1, 0
	st.d	$zero, $a0, 0
	ret
.LBB0_2:
	fabs.d	$fa2, $fa1
	fabs.d	$fa3, $fa0
	fcmp.cule.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB0_4
# %bb.3:
	fneg.d	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fmadd.d	$fa1, $fa0, $fa0, $fa1
	frsqrt.d	$fa1, $fa1
	fst.d	$fa1, $a0, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	ret
.LBB0_4:
	fneg.d	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	vldi	$vr1, -912
	fmadd.d	$fa1, $fa0, $fa0, $fa1
	frsqrt.d	$fa1, $fa1
	fst.d	$fa1, $a1, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, 0
	ret
.Lfunc_end0:
	.size	Givens, .Lfunc_end0-Givens
                                        # -- End function
	.globl	sign                            # -- Begin function sign
	.p2align	5
	.type	sign,@function
sign:                                   # @sign
# %bb.0:
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.Lfunc_end1:
	.size	sign, .Lfunc_end1-sign
                                        # -- End function
	.globl	ApplyRGivens                    # -- Begin function ApplyRGivens
	.p2align	5
	.type	ApplyRGivens,@function
ApplyRGivens:                           # @ApplyRGivens
# %bb.0:
	move	$a3, $zero
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 3
	ori	$a4, $zero, 408
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ldx.d	$a5, $a0, $a3
	fldx.d	$fa2, $a5, $a2
	fldx.d	$fa3, $a5, $a1
	fneg.d	$fa4, $fa2
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa3, $fa4
	fstx.d	$fa4, $a5, $a1
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	addi.d	$a3, $a3, 8
	fstx.d	$fa2, $a5, $a2
	bne	$a3, $a4, .LBB2_1
# %bb.2:
	ret
.Lfunc_end2:
	.size	ApplyRGivens, .Lfunc_end2-ApplyRGivens
                                        # -- End function
	.globl	QRiterate                       # -- Begin function QRiterate
	.p2align	5
	.type	QRiterate,@function
QRiterate:                              # @QRiterate
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$t7, $zero
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 392
	lu12i.w	$a4, -156293
	ori	$a4, $a4, 3515
	lu32i.d	$a4, -295713
	lu52i.d	$a4, $a4, 989
	movgr2fr.d	$fa0, $a4
	ori	$t8, $zero, 50
	movgr2fr.d	$fa1, $zero
	ori	$a5, $zero, 1
	vldi	$vr2, -928
	vldi	$vr3, -784
	vldi	$vr4, -912
	ori	$a6, $zero, 408
	move	$a4, $a2
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_9 Depth 2
                                        #     Child Loop BB3_15 Depth 2
                                        #       Child Loop BB3_25 Depth 3
                                        #       Child Loop BB3_28 Depth 3
                                        #       Child Loop BB3_30 Depth 3
                                        #       Child Loop BB3_32 Depth 3
	addi.d	$a7, $t7, 1
	slli.d	$t1, $a7, 3
	ldx.d	$t0, $a0, $t1
	slli.d	$t2, $t7, 3
	fldx.d	$fa5, $t0, $t2
	fldx.d	$fa6, $a4, $t2
	fldx.d	$fa7, $t0, $t1
	fabs.d	$fa5, $fa5
	fabs.d	$fa6, $fa6
	fabs.d	$fa7, $fa7
	fadd.d	$fa6, $fa6, $fa7
	fmul.d	$fa6, $fa6, $fa0
	fcmp.cule.d	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	alsl.d	$t2, $t7, $t0, 3
	stx.d	$zero, $a4, $t1
	st.d	$zero, $t2, 0
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	move	$a4, $t0
	move	$t7, $a7
	bne	$a7, $t8, .LBB3_1
# %bb.4:                                # %.preheader151.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$t6, $zero
	ori	$t2, $zero, 49
	ori	$t0, $zero, 50
	ori	$t5, $zero, 51
	ori	$t1, $zero, 50
	.p2align	4, , 16
.LBB3_5:                                # %.preheader151
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a4, $a3, $t6
	add.d	$a4, $a4, $t6
	fld.d	$fa5, $a4, 400
	fcmp.cune.d	$fcc0, $fa5, $fa1
	bcnez	$fcc0, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=2
	addi.d	$t6, $t6, -8
	addi.d	$a4, $t2, 1
	addi.d	$t2, $t2, -1
	addi.w	$t1, $t1, -1
	addi.d	$t5, $t5, -1
	addi.d	$t0, $t0, -1
	bltu	$a5, $a4, .LBB3_5
	b	.LBB3_36
	.p2align	4, , 16
.LBB3_7:                                # %.preheader150
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$t3, $t2, 1
	move	$t7, $zero
	move	$a4, $a2
	blez	$t3, .LBB3_1
# %bb.8:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$a4, $t6
	move	$t4, $t1
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a7, $a3, $a4
	add.d	$a7, $a7, $a4
	fld.d	$fa5, $a7, 400
	fcmp.ceq.d	$fcc0, $fa5, $fa1
	bcnez	$fcc0, .LBB3_12
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=2
	addi.w	$t4, $t4, -1
	addi.d	$t5, $t5, -1
	addi.d	$a4, $a4, -8
	blt	$a5, $t5, .LBB3_9
# %bb.11:                               #   in Loop: Header=BB3_1 Depth=1
	move	$t4, $zero
.LBB3_12:                               # %.critedge2
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$t7, $zero
	move	$a4, $a2
	bge	$t4, $t1, .LBB3_1
# %bb.13:                               # %.lr.ph166.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$t5, $zero
	add.d	$a4, $a3, $t6
	ld.d	$a4, $a4, 8
	alsl.d	$a7, $t4, $a0, 3
	slli.d	$t7, $t4, 3
	ld.d	$a7, $a7, 8
	add.d	$a4, $a4, $t6
	ldx.d	$t8, $a3, $t6
	fld.d	$fa6, $a4, 400
	fld.d	$fa7, $a4, 392
	ldx.d	$a4, $a0, $t7
	add.d	$t6, $t8, $t6
	fld.d	$ft0, $t6, 392
	fldx.d	$fa5, $a7, $t7
	fldx.d	$ft1, $a4, $t7
	fmul.d	$fa7, $fa7, $fa7
	fsub.d	$ft0, $ft0, $fa6
	fmul.d	$ft0, $ft0, $fa2
	fcmp.clt.d	$fcc0, $ft0, $fa1
	fsel	$ft2, $fa4, $fa3, $fcc0
	fmadd.d	$ft3, $ft0, $ft0, $fa7
	fsqrt.d	$ft3, $ft3
	fmadd.d	$ft0, $ft2, $ft3, $ft0
	fdiv.d	$fa7, $fa7, $ft0
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa6, $ft1, $fa6
	addi.w	$t6, $t4, 2
	addi.d	$t7, $t4, -1
	move	$t8, $t6
	move	$fp, $t4
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=2
	addi.d	$t7, $t7, 1
	addi.d	$t5, $t5, 1
	addi.w	$t8, $t8, 1
	move	$fp, $s2
	beq	$t3, $s2, .LBB3_35
.LBB3_15:                               # %.lr.ph166
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_25 Depth 3
                                        #       Child Loop BB3_28 Depth 3
                                        #       Child Loop BB3_30 Depth 3
                                        #       Child Loop BB3_32 Depth 3
	fcmp.ceq.d	$fcc0, $fa5, $fa1
	bceqz	$fcc0, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=2
	vldi	$vr7, -912
	fmov.d	$ft0, $fa1
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_17:                               #   in Loop: Header=BB3_15 Depth=2
	fabs.d	$fa7, $fa5
	fabs.d	$ft0, $fa6
	fcmp.cule.d	$fcc0, $fa7, $ft0
	bcnez	$fcc0, .LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_15 Depth=2
	fneg.d	$fa7, $fa6
	fdiv.d	$fa7, $fa7, $fa5
	fmadd.d	$ft0, $fa7, $fa7, $fa4
	frsqrt.d	$ft0, $ft0
	fmul.d	$fa7, $fa7, $ft0
	b	.LBB3_20
.LBB3_19:                               #   in Loop: Header=BB3_15 Depth=2
	fneg.d	$fa7, $fa5
	fdiv.d	$ft0, $fa7, $fa6
	fmadd.d	$fa7, $ft0, $ft0, $fa4
	frsqrt.d	$fa7, $fa7
	fmul.d	$ft0, $ft0, $fa7
	.p2align	4, , 16
.LBB3_20:                               # %Givens.exit
                                        #   in Loop: Header=BB3_15 Depth=2
	addi.w	$a4, $fp, -1
	slt	$a7, $t4, $a4
	masknez	$s0, $t4, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $s0
	addi.d	$s0, $fp, 2
	addi.w	$a7, $s0, 0
	slt	$s1, $t1, $a7
	masknez	$a7, $a7, $s1
	maskeqz	$s1, $t1, $s1
	or	$s2, $s1, $a7
	slli.d	$s1, $fp, 3
	blt	$s2, $a4, .LBB3_31
# %bb.21:                               # %.lr.ph159
                                        #   in Loop: Header=BB3_15 Depth=2
	slt	$a4, $t4, $t7
	masknez	$a7, $t4, $a4
	maskeqz	$a4, $t7, $a4
	or	$s3, $a4, $a7
	add.w	$a4, $t6, $t5
	slt	$a7, $t3, $a4
	masknez	$a4, $a4, $a7
	maskeqz	$a7, $t3, $a7
	or	$a4, $a7, $a4
	slt	$a7, $a4, $s3
	masknez	$a4, $a4, $a7
	maskeqz	$a7, $s3, $a7
	or	$a4, $a7, $a4
	alsl.d	$a7, $fp, $a0, 3
	ldx.d	$s4, $a0, $s1
	ld.d	$s5, $a7, 8
	sub.d	$a7, $a4, $s3
	addi.d	$s6, $a7, 1
	move	$ra, $s3
	ori	$a7, $zero, 2
	bltu	$s6, $a7, .LBB3_27
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_15 Depth=2
	slli.d	$a7, $s3, 3
	slli.d	$a4, $a4, 3
	add.d	$s7, $s4, $a7
	add.d	$s8, $s5, $a4
	addi.d	$ra, $s8, 8
	add.d	$s8, $s5, $a7
	bgeu	$s7, $ra, .LBB3_24
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_15 Depth=2
	add.d	$a4, $s4, $a4
	addi.d	$a4, $a4, 8
	move	$ra, $s3
	bltu	$s8, $a4, .LBB3_27
.LBB3_24:                               # %vector.ph
                                        #   in Loop: Header=BB3_15 Depth=2
	slt	$a4, $t0, $t8
	masknez	$a7, $t8, $a4
	maskeqz	$a4, $t0, $a4
	or	$a4, $a4, $a7
	slt	$a7, $a4, $s3
	masknez	$a4, $a4, $a7
	maskeqz	$a7, $s3, $a7
	or	$a4, $a7, $a4
	sub.d	$a4, $a4, $s3
	addi.d	$a4, $a4, 1
	bstrins.d	$a4, $zero, 0, 0
	move	$a7, $s6
	bstrins.d	$a7, $zero, 0, 0
	add.d	$ra, $s3, $a7
	vreplvei.d	$vr9, $vr8, 0
	vreplvei.d	$vr10, $vr7, 0
	.p2align	4, , 16
.LBB3_25:                               # %vector.body
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr11, $s8, 0
	vld	$vr12, $s7, 0
	vbitrevi.d	$vr13, $vr11, 63
	vfmul.d	$vr13, $vr9, $vr13
	vfmadd.d	$vr13, $vr10, $vr12, $vr13
	vst	$vr13, $s7, 0
	vfmul.d	$vr11, $vr10, $vr11
	vfmadd.d	$vr11, $vr9, $vr12, $vr11
	vst	$vr11, $s8, 0
	addi.d	$a4, $a4, -2
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	bnez	$a4, .LBB3_25
# %bb.26:                               # %middle.block
                                        #   in Loop: Header=BB3_15 Depth=2
	beq	$s6, $a7, .LBB3_29
	.p2align	4, , 16
.LBB3_27:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_15 Depth=2
	addi.d	$a4, $ra, -1
	alsl.d	$a7, $ra, $s4, 3
	alsl.d	$s4, $ra, $s5, 3
	.p2align	4, , 16
.LBB3_28:                               # %scalar.ph
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$ft1, $s4, 0
	fld.d	$ft2, $a7, 0
	fneg.d	$ft3, $ft1
	fmul.d	$ft3, $ft0, $ft3
	fmadd.d	$ft3, $fa7, $ft2, $ft3
	fst.d	$ft3, $a7, 0
	fmul.d	$ft1, $fa7, $ft1
	fmadd.d	$ft1, $ft0, $ft2, $ft1
	fst.d	$ft1, $s4, 0
	addi.d	$a4, $a4, 1
	addi.d	$a7, $a7, 8
	addi.d	$s4, $s4, 8
	blt	$a4, $s2, .LBB3_28
.LBB3_29:                               # %.lr.ph162
                                        #   in Loop: Header=BB3_15 Depth=2
	addi.d	$a4, $s3, -1
	alsl.d	$a7, $s3, $a0, 3
	.p2align	4, , 16
.LBB3_30:                               #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $a7, 0
	alsl.d	$s4, $fp, $s3, 3
	fld.d	$ft1, $s4, 8
	fldx.d	$ft2, $s3, $s1
	fneg.d	$ft3, $ft1
	fmul.d	$ft3, $ft0, $ft3
	fmadd.d	$ft3, $fa7, $ft2, $ft3
	fstx.d	$ft3, $s3, $s1
	fmul.d	$ft1, $fa7, $ft1
	fmadd.d	$ft1, $ft0, $ft2, $ft1
	fst.d	$ft1, $s4, 8
	addi.d	$a4, $a4, 1
	addi.d	$a7, $a7, 8
	blt	$a4, $s2, .LBB3_30
.LBB3_31:                               # %._crit_edge
                                        #   in Loop: Header=BB3_15 Depth=2
	move	$a7, $zero
	addi.d	$s2, $fp, 1
	.p2align	4, , 16
.LBB3_32:                               #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$s3, $a1, $a7
	slli.d	$a4, $s2, 3
	fldx.d	$ft1, $s3, $a4
	fldx.d	$ft2, $s3, $s1
	fneg.d	$ft3, $ft1
	fmul.d	$ft3, $ft0, $ft3
	fmadd.d	$ft3, $fa7, $ft2, $ft3
	fstx.d	$ft3, $s3, $s1
	fmul.d	$ft1, $fa7, $ft1
	fmadd.d	$ft1, $ft0, $ft2, $ft1
	addi.d	$a7, $a7, 8
	fstx.d	$ft1, $s3, $a4
	bne	$a7, $a6, .LBB3_32
# %bb.33:                               # %ApplyRGivens.exit
                                        #   in Loop: Header=BB3_15 Depth=2
	bge	$fp, $t2, .LBB3_14
# %bb.34:                               #   in Loop: Header=BB3_15 Depth=2
	ldx.d	$a4, $a0, $a4
	slli.d	$a7, $s0, 3
	ldx.d	$a7, $a0, $a7
	fldx.d	$fa6, $a4, $s1
	fldx.d	$fa5, $a7, $s1
	b	.LBB3_14
.LBB3_35:                               #   in Loop: Header=BB3_1 Depth=1
	move	$t7, $zero
	move	$a4, $a2
	ori	$t8, $zero, 50
	b	.LBB3_1
.LBB3_36:                               # %.critedge138
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	QRiterate, .Lfunc_end3-QRiterate
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
