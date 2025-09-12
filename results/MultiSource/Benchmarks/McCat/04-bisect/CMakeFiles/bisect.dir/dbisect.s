	.file	"dbisect.c"
	.text
	.globl	sturm                           # -- Begin function sturm
	.p2align	5
	.type	sturm,@function
sturm:                                  # @sturm
# %bb.0:
	move	$a4, $zero
	blez	$a0, .LBB0_6
# %bb.1:                                # %.lr.ph.preheader
	vldi	$vr3, -912
	movgr2fr.d	$fa1, $zero
	lu52i.d	$a5, $zero, 1075
	movgr2fr.d	$fa2, $a5
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	fld.d	$fa3, $a2, 0
	fabs.d	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa2
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	fld.d	$fa4, $a1, 0
	fsub.d	$fa4, $fa4, $fa0
	fsub.d	$fa3, $fa4, $fa3
	fcmp.clt.d	$fcc0, $fa3, $fa1
	movcf2gr	$a5, $fcc0
	add.w	$a4, $a4, $a5
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB0_6
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	fld.d	$fa4, $a3, 0
	fdiv.d	$fa3, $fa4, $fa3
	b	.LBB0_3
.LBB0_6:                                # %._crit_edge
	move	$a0, $a4
	ret
.Lfunc_end0:
	.size	sturm, .Lfunc_end0-sturm
                                        # -- End function
	.globl	dbisect                         # -- Begin function dbisect
	.p2align	5
	.type	dbisect,@function
dbisect:                                # @dbisect
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	ld.d	$s6, $sp, 112
	st.d	$zero, $a1, 0
	st.d	$zero, $a2, 0
	slli.d	$a1, $a3, 3
	addi.d	$a1, $a1, -8
	fldx.d	$fa1, $s1, $a1
	move	$s2, $a7
	move	$s5, $a5
	move	$s3, $a4
	move	$s4, $a0
	fldx.d	$fa2, $a0, $a1
	fabs.d	$fa3, $fa1
	lu12i.w	$a0, -251659
	ori	$a0, $a0, 3113
	lu32i.d	$a0, 10485
	lu52i.d	$a1, $a0, -1025
	movgr2fr.d	$fa1, $a1
	fmadd.d	$fs0, $fa3, $fa1, $fa2
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa1, $a0
	ori	$a0, $zero, 2
	fmadd.d	$fs1, $fa3, $fa1, $fa2
	blt	$a3, $a0, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $fp, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	addi.w	$a1, $zero, -8
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $s1, $a0
	add.d	$a2, $s1, $a0
	fld.d	$fa3, $a2, 8
	fabs.d	$fa2, $fa2
	fldx.d	$fa4, $s4, $a0
	fabs.d	$fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa1
	fadd.d	$fa3, $fa4, $fa2
	fcmp.clt.d	$fcc0, $fs1, $fa3
	fsel	$fs1, $fs1, $fa3, $fcc0
	fsub.d	$fa2, $fa4, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fs0
	addi.d	$a0, $a0, -8
	fsel	$fs0, $fs0, $fa2, $fcc0
	bne	$a0, $a1, .LBB1_2
.LBB1_3:                                # %._crit_edge
	fadd.d	$fa1, $fs0, $fs1
	fneg.d	$fa2, $fs0
	movgr2fr.d	$fs2, $zero
	fcmp.clt.d	$fcc0, $fs2, $fa1
	fsel	$fa1, $fa2, $fs1, $fcc0
	lu52i.d	$a0, $zero, 971
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa1, $fa1, $fa2
	fcmp.cult.d	$fcc0, $fs2, $fa0
	fsel	$fs3, $fa1, $fa0, $fcc0
	vldi	$vr0, -996
	fmul.d	$fa0, $fa1, $fa0
	vldi	$vr1, -928
	fmadd.d	$fa0, $fs3, $fa1, $fa0
	fst.d	$fa0, $a6, 0
	addi.w	$a0, $fp, 1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_35
# %bb.4:                                # %.preheader133
	bge	$s5, $s3, .LBB1_7
# %bb.5:                                # %._crit_edge141.thread
	st.w	$zero, $s2, 0
.LBB1_6:                                # %._crit_edge155
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_7:                                # %.lr.ph140.preheader
	sub.d	$a1, $s5, $s3
	addi.d	$a2, $a1, 1
	ori	$a3, $zero, 2
	move	$a1, $s5
	bltu	$a2, $a3, .LBB1_11
# %bb.8:                                # %vector.ph
	move	$a3, $a2
	bstrins.d	$a3, $zero, 0, 0
	sub.d	$a1, $s5, $a3
	alsl.d	$a4, $s5, $a0, 3
	alsl.d	$a5, $s5, $s6, 3
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fs1, $a5, 0
	fst.d	$fs1, $a5, -8
	fst.d	$fs0, $a4, 0
	fst.d	$fs0, $a4, -8
	addi.d	$a6, $a6, -2
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, -16
	bnez	$a6, .LBB1_9
# %bb.10:                               # %middle.block
	beq	$a2, $a3, .LBB1_13
.LBB1_11:                               # %.lr.ph140.preheader175
	addi.d	$a2, $a1, 1
	alsl.d	$a3, $a1, $s6, 3
	alsl.d	$a1, $a1, $a0, 3
	.p2align	4, , 16
.LBB1_12:                               # %.lr.ph140
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fs1, $a3, 0
	fst.d	$fs0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, -8
	blt	$s3, $a2, .LBB1_12
.LBB1_13:                               # %.preheader.lr.ph
	move	$a1, $zero
	st.w	$zero, $s2, 0
	bstrpick.d	$a2, $fp, 31, 0
	alsl.d	$a3, $s3, $a0, 3
	addi.d	$a4, $s5, 1
	alsl.d	$a5, $s5, $a0, 3
	lu52i.d	$a6, $zero, 972
	movgr2fr.d	$fa0, $a6
	vldi	$vr1, -928
	lu52i.d	$a6, $zero, 1075
	movgr2fr.d	$fa2, $a6
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_14:                               # %._crit_edge149
                                        #   in Loop: Header=BB1_16 Depth=1
	st.w	$a1, $s2, 0
.LBB1_15:                               # %._crit_edge164
                                        #   in Loop: Header=BB1_16 Depth=1
	alsl.d	$a7, $a6, $s6, 3
	fmul.d	$fa3, $fa4, $fa1
	fst.d	$fa3, $a7, 0
	addi.d	$s5, $a6, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -8
	bge	$s3, $a6, .LBB1_6
.LBB1_16:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_23 Depth 2
                                        #       Child Loop BB1_27 Depth 3
	move	$a6, $s5
	move	$a7, $a5
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_17:                               #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a7, 0
	fcmp.cule.d	$fcc0, $fa3, $fs0
	bceqz	$fcc0, .LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=2
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, -8
	blt	$s3, $t0, .LBB1_17
# %bb.19:                               #   in Loop: Header=BB1_16 Depth=1
	fmov.d	$fa3, $fs0
.LBB1_20:                               #   in Loop: Header=BB1_16 Depth=1
	slli.d	$a7, $a6, 3
	fldx.d	$fa4, $s6, $a7
	fcmp.clt.d	$fcc0, $fa4, $fs1
	fsel	$fs1, $fs1, $fa4, $fcc0
	fsub.d	$fa4, $fs1, $fa3
	fabs.d	$fa5, $fa3
	fabs.d	$fa6, $fs1
	fadd.d	$fa5, $fa5, $fa6
	fmadd.d	$fa5, $fa5, $fa0, $fs3
	fcmp.cule.d	$fcc0, $fa4, $fa5
	fadd.d	$fa4, $fa3, $fs1
	bceqz	$fcc0, .LBB1_23
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_21:                               #   in Loop: Header=BB1_23 Depth=2
	fmov.d	$fs1, $fa4
.LBB1_22:                               #   in Loop: Header=BB1_23 Depth=2
	addi.d	$a1, $a1, 1
	fsub.d	$fa4, $fs1, $fa3
	fabs.d	$fa5, $fa3
	fabs.d	$fa6, $fs1
	fadd.d	$fa5, $fa5, $fa6
	fmadd.d	$fa5, $fa5, $fa0, $fs3
	fcmp.clt.d	$fcc0, $fa5, $fa4
	fadd.d	$fa4, $fa3, $fs1
	bceqz	$fcc0, .LBB1_14
.LBB1_23:                               # %.lr.ph148
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_27 Depth 3
	fmul.d	$fa4, $fa4, $fa1
	move	$a7, $zero
	blez	$fp, .LBB1_29
# %bb.24:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_23 Depth=2
	vldi	$vr5, -912
	move	$t0, $s4
	move	$t1, $s1
	move	$t2, $a2
	move	$t3, $s0
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_25:                               #   in Loop: Header=BB1_27 Depth=3
	fld.d	$fa5, $t1, 0
	fabs.d	$fa5, $fa5
	fmul.d	$fa5, $fa5, $fa2
.LBB1_26:                               #   in Loop: Header=BB1_27 Depth=3
	fld.d	$fa6, $t0, 0
	fsub.d	$fa6, $fa6, $fa4
	fsub.d	$fa5, $fa6, $fa5
	fcmp.clt.d	$fcc0, $fa5, $fs2
	movcf2gr	$t4, $fcc0
	add.w	$a7, $a7, $t4
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	beqz	$t2, .LBB1_29
.LBB1_27:                               # %.lr.ph.i
                                        #   Parent Loop BB1_16 Depth=1
                                        #     Parent Loop BB1_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fcmp.ceq.d	$fcc0, $fa5, $fs2
	bcnez	$fcc0, .LBB1_25
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=3
	fld.d	$fa6, $t3, 0
	fdiv.d	$fa5, $fa6, $fa5
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_29:                               # %sturm.exit
                                        #   in Loop: Header=BB1_23 Depth=2
	bge	$a7, $a6, .LBB1_21
# %bb.30:                               #   in Loop: Header=BB1_23 Depth=2
	bge	$a7, $s3, .LBB1_32
# %bb.31:                               #   in Loop: Header=BB1_23 Depth=2
	fst.d	$fa4, $a3, 0
	b	.LBB1_34
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_23 Depth=2
	slli.d	$t0, $a7, 3
	fldx.d	$fa3, $s6, $t0
	alsl.d	$t0, $a7, $a0, 3
	fcmp.cule.d	$fcc0, $fa3, $fa4
	fst.d	$fa4, $t0, 8
	bcnez	$fcc0, .LBB1_34
# %bb.33:                               #   in Loop: Header=BB1_23 Depth=2
	alsl.d	$a7, $a7, $s6, 3
	fst.d	$fa4, $a7, 0
.LBB1_34:                               #   in Loop: Header=BB1_23 Depth=2
	fmov.d	$fa3, $fa4
	b	.LBB1_22
.LBB1_35:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	dbisect, .Lfunc_end1-dbisect
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bisect: Couldn't allocate memory for wu"
	.size	.L.str, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
