	.file	"Divsol.c"
	.text
	.globl	HouseMatrix                     # -- Begin function HouseMatrix
	.p2align	5
	.type	HouseMatrix,@function
HouseMatrix:                            # @HouseMatrix
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$s2, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(xty)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MakeID)
	jirl	$ra, $ra, 0
	bge	$s2, $fp, .LBB0_2
.LBB0_1:                                # %._crit_edge27
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_2:                                # %.preheader.preheader
	vldi	$vr0, -1024
	fdiv.d	$fa0, $fa0, $fs0
	addi.w	$a0, $s2, 1
	slli.d	$a1, $fp, 3
	sub.w	$a2, $s2, $fp
	bstrpick.d	$a6, $a2, 31, 0
	add.d	$a3, $fp, $a6
	slli.d	$a3, $a3, 3
	addi.d	$a3, $a3, 8
	alsl.d	$a4, $fp, $s0, 3
	add.d	$a5, $s0, $a3
	addi.d	$a6, $a6, 1
	bstrpick.d	$t0, $a6, 32, 2
	slli.d	$a7, $t0, 2
	alsl.d	$t0, $t0, $fp, 2
	addi.d	$t1, $a1, 16
	add.d	$t2, $s0, $t1
	ori	$t3, $zero, 3
	move	$t4, $fp
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$t4, $t4, 1
	addi.w	$t5, $t4, 0
	beq	$a0, $t5, .LBB0_1
.LBB0_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
	slli.d	$t5, $t4, 3
	ldx.d	$t6, $s1, $t5
	alsl.d	$t5, $t4, $s0, 3
	move	$t8, $fp
	bltu	$a2, $t3, .LBB0_10
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_4 Depth=1
	add.d	$t7, $t6, $a1
	bgeu	$t7, $a5, .LBB0_7
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_4 Depth=1
	add.d	$t7, $t6, $a3
	move	$t8, $fp
	bltu	$a4, $t7, .LBB0_10
.LBB0_7:                                # %vector.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	fld.d	$fa1, $t5, 0
	fneg.d	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	vreplvei.d	$vr1, $vr1, 0
	add.d	$t7, $t6, $t1
	move	$t8, $t2
	move	$s2, $a7
	.p2align	4, , 16
.LBB0_8:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t8, -16
	vld	$vr3, $t8, 0
	vld	$vr4, $t7, -16
	vld	$vr5, $t7, 0
	vfmadd.d	$vr2, $vr1, $vr2, $vr4
	vfmadd.d	$vr3, $vr1, $vr3, $vr5
	vst	$vr2, $t7, -16
	vst	$vr3, $t7, 0
	addi.d	$s2, $s2, -4
	addi.d	$t7, $t7, 32
	addi.d	$t8, $t8, 32
	bnez	$s2, .LBB0_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t8, $t0
	beq	$a6, $a7, .LBB0_3
	.p2align	4, , 16
.LBB0_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$t7, $t8, $s0, 3
	alsl.d	$t6, $t8, $t6, 3
	sub.d	$t8, $a0, $t8
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $t5, 0
	fld.d	$fa2, $t7, 0
	fld.d	$fa3, $t6, 0
	fneg.d	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmadd.d	$fa1, $fa1, $fa2, $fa3
	fst.d	$fa1, $t6, 0
	addi.d	$t7, $t7, 8
	addi.w	$t8, $t8, -1
	addi.d	$t6, $t6, 8
	bnez	$t8, .LBB0_11
	b	.LBB0_3
.Lfunc_end0:
	.size	HouseMatrix, .Lfunc_end0-HouseMatrix
                                        # -- End function
	.globl	ApplyHouse                      # -- Begin function ApplyHouse
	.p2align	5
	.type	ApplyHouse,@function
ApplyHouse:                             # @ApplyHouse
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$s2, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(newMatrix)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(newMatrix)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a3, $zero, 50
	move	$a0, $s2
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(xty)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1024
	fdiv.d	$fs0, $fa1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MakeID)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $s2, 408
	ori	$a2, $zero, 408
	ori	$a3, $zero, 51
	.p2align	4, , 16
.LBB1_1:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	slli.d	$a4, $a0, 3
	ldx.d	$a4, $s1, $a4
	alsl.d	$a5, $a0, $s2, 3
	bgeu	$a4, $a1, .LBB1_4
# %bb.2:                                # %.preheader.i
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a6, $a4, 408
	bgeu	$s2, $a6, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	move	$a6, $zero
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %vector.body
                                        #   in Loop: Header=BB1_1 Depth=1
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 0
	vld	$vr2, $s2, 16
	vld	$vr3, $a4, 0
	vld	$vr4, $a4, 16
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr2, $vr0, $vr2, $vr4
	vld	$vr3, $s2, 32
	vld	$vr4, $s2, 48
	vld	$vr5, $a4, 32
	vld	$vr6, $a4, 48
	vst	$vr1, $a4, 0
	vst	$vr2, $a4, 16
	vfmadd.d	$vr1, $vr0, $vr3, $vr5
	vfmadd.d	$vr2, $vr0, $vr4, $vr6
	vld	$vr3, $s2, 64
	vld	$vr4, $s2, 80
	vld	$vr5, $a4, 64
	vld	$vr6, $a4, 80
	vst	$vr1, $a4, 32
	vst	$vr2, $a4, 48
	vfmadd.d	$vr1, $vr0, $vr3, $vr5
	vfmadd.d	$vr0, $vr0, $vr4, $vr6
	vst	$vr1, $a4, 64
	vst	$vr0, $a4, 80
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 96
	vld	$vr2, $s2, 112
	vld	$vr3, $a4, 96
	vld	$vr4, $a4, 112
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a4, 96
	vst	$vr0, $a4, 112
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 128
	vld	$vr2, $s2, 144
	vld	$vr3, $a4, 128
	vld	$vr4, $a4, 144
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a4, 128
	vst	$vr0, $a4, 144
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 160
	vld	$vr2, $s2, 176
	vld	$vr3, $a4, 160
	vld	$vr4, $a4, 176
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a4, 160
	vst	$vr0, $a4, 176
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 192
	vld	$vr2, $s2, 208
	vld	$vr3, $a4, 192
	vld	$vr4, $a4, 208
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a4, 192
	vst	$vr0, $a4, 208
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 224
	vld	$vr2, $s2, 240
	vld	$vr3, $a4, 224
	vld	$vr4, $a4, 240
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a4, 224
	vst	$vr0, $a4, 240
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 256
	vld	$vr2, $s2, 272
	vld	$vr3, $a4, 256
	vld	$vr4, $a4, 272
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a4, 256
	vst	$vr0, $a4, 272
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 288
	vld	$vr2, $s2, 304
	vld	$vr3, $a4, 288
	vld	$vr4, $a4, 304
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a4, 288
	vst	$vr0, $a4, 304
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 320
	vld	$vr2, $s2, 336
	vld	$vr3, $a4, 320
	vld	$vr4, $a4, 336
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a4, 320
	vst	$vr0, $a4, 336
	fld.d	$fa0, $a5, 0
	vld	$vr1, $s2, 352
	vld	$vr2, $s2, 368
	vld	$vr3, $a4, 352
	vld	$vr4, $a4, 368
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a4, 352
	vst	$vr0, $a4, 368
	ori	$a6, $zero, 48
.LBB1_5:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	slli.d	$a6, $a6, 3
	.p2align	4, , 16
.LBB1_6:                                # %scalar.ph
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a5, 0
	fldx.d	$fa1, $s2, $a6
	fldx.d	$fa2, $a4, $a6
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $a4, $a6
	addi.d	$a6, $a6, 8
	bne	$a6, $a2, .LBB1_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $a3, .LBB1_1
# %bb.8:                                # %HouseMatrix.exit
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(matrixMult)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(matrixMult)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(freeMatrix)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(freeMatrix)
	jr	$t8
.Lfunc_end1:
	.size	ApplyHouse, .Lfunc_end1-ApplyHouse
                                        # -- End function
	.globl	WeirdHouse                      # -- Begin function WeirdHouse
	.p2align	5
	.type	WeirdHouse,@function
WeirdHouse:                             # @WeirdHouse
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$s2, $a0
	slli.d	$s3, $a2, 3
	ldx.d	$a0, $a0, $s3
	move	$s0, $a4
	move	$s1, $a3
	move	$fp, $a1
	bge	$a4, $a3, .LBB2_2
# %bb.1:
	movgr2fr.d	$fs0, $zero
	b	.LBB2_4
.LBB2_2:                                # %.lr.ph
	alsl.d	$a1, $s1, $a0, 3
	sub.d	$a2, $s0, $s1
	addi.d	$a2, $a2, 1
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fmadd.d	$fs0, $fa0, $fa0, $fs0
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB2_3
.LBB2_4:                                # %._crit_edge
	slli.d	$a1, $s0, 3
	fldx.d	$fs1, $a0, $a1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sign)
	jirl	$ra, $ra, 0
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_14
# %bb.5:                                # %._crit_edge.split
	bge	$s1, $s0, .LBB2_13
.LBB2_6:                                # %.lr.ph36
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs1
	ldx.d	$a0, $s2, $s3
	sub.d	$a1, $s0, $s1
	ori	$a2, $zero, 4
	frecip.d	$fa0, $fa0
	bltu	$a1, $a2, .LBB2_11
# %bb.7:                                # %.lr.ph36
	sub.d	$a2, $fp, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB2_11
# %bb.8:                                # %vector.ph
	move	$a2, $a1
	bstrins.d	$a2, $zero, 1, 0
	add.d	$a3, $a2, $s1
	vreplvei.d	$vr1, $vr0, 0
	slli.d	$a4, $s1, 3
	addi.d	$a5, $a4, 16
	add.d	$a4, $fp, $a5
	add.d	$a5, $a0, $a5
	move	$a6, $a2
	.p2align	4, , 16
.LBB2_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vst	$vr2, $a4, -16
	vst	$vr3, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_9
# %bb.10:                               # %middle.block
	move	$s1, $a3
	beq	$a1, $a2, .LBB2_13
.LBB2_11:                               # %scalar.ph.preheader
	alsl.d	$a0, $s1, $a0, 3
	alsl.d	$a1, $s1, $fp, 3
	sub.d	$a2, $s0, $s1
	.p2align	4, , 16
.LBB2_12:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB2_12
.LBB2_13:                               # %._crit_edge37
	slli.d	$a0, $s0, 3
	lu52i.d	$a1, $zero, 1023
	stx.d	$a1, $fp, $a0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB2_14:                               # %call.sqrt
	fmov.d	$fa0, $fs0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	blt	$s1, $s0, .LBB2_6
	b	.LBB2_13
.Lfunc_end2:
	.size	WeirdHouse, .Lfunc_end2-WeirdHouse
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DivideAndSolve
.LCPI3_0:
	.dword	0x4049000000000000              # double 50
.LCPI3_1:
	.dword	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
	.text
	.globl	DivideAndSolve
	.p2align	5
	.type	DivideAndSolve,@function
DivideAndSolve:                         # @DivideAndSolve
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 88                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(newIdMatrix)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(newMatrix)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(newVector)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 49
	blt	$a1, $s1, .LBB3_37
# %bb.1:                                # %.lr.ph113.preheader
	move	$s0, $a0
	addi.d	$a0, $s1, 1
	addi.w	$s8, $a0, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a0, $s0, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s4, $s0, 408
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vldi	$vr2, -784
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI3_0)
	movgr2fr.d	$fs4, $zero
	ori	$s5, $zero, 51
	ori	$s3, $zero, 408
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %._crit_edge110
                                        #   in Loop: Header=BB3_3 Depth=1
	ftintrz.w.d	$fa0, $fs5
	movfr2gr.s	$s8, $fa0
	vldi	$vr2, -784
	bge	$s8, $s5, .LBB3_37
.LBB3_3:                                # %.lr.ph113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_18 Depth 4
                                        #     Child Loop BB3_22 Depth 2
                                        #     Child Loop BB3_28 Depth 2
                                        #     Child Loop BB3_32 Depth 2
                                        #     Child Loop BB3_35 Depth 2
	movgr2fr.w	$fa0, $s8
	ffint.d.w	$fa0, $fa0
	fsub.d	$fa1, $fa0, $fs2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$s2, $fa1
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $fs2, $fa1
	fadd.d	$fa1, $fa1, $fa2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$s1, $fa1
	fadd.d	$fs5, $fs2, $fa0
	bge	$s1, $s2, .LBB3_5
# %bb.4:                                # %._crit_edge108.thread
                                        #   in Loop: Header=BB3_3 Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $fp, $a0
	alsl.d	$s6, $s8, $fp, 3
	fmov.d	$fs0, $fs4
	b	.LBB3_23
	.p2align	4, , 16
.LBB3_5:                                # %.lr.ph107
                                        #   in Loop: Header=BB3_3 Depth=1
	fadd.d	$fa0, $fs5, $fa2
	fmin.d	$fa0, $fa0, $fs3
	ftintrz.w.d	$fa0, $fa0
	move	$a1, $s2
	movfr2gr.s	$s2, $fa0
	bstrpick.d	$a0, $s8, 31, 0
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 49
	sub.d	$a0, $a0, $s2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $a1
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s6
	move	$a2, $s8
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printVector)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printMatrix)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s6, 1
	beq	$s6, $s1, .LBB3_21
.LBB3_7:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_18 Depth 4
	move	$s6, $a0
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s8
	move	$a3, $s2
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB3_6
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=2
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s6
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(House)
	jirl	$ra, $ra, 0
	blez	$s8, .LBB3_10
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_7 Depth=2
	move	$a0, $s0
	move	$a1, $zero
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_10:                               # %.preheader
                                        #   in Loop: Header=BB3_7 Depth=2
	move	$s1, $s8
	ori	$a0, $zero, 49
	blt	$a0, $s2, .LBB3_12
# %bb.11:                               # %.lr.ph103.preheader
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_12:                               # %._crit_edge
                                        #   in Loop: Header=BB3_7 Depth=2
	pcaddu18i	$ra, %call36(newMatrix)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	pcaddu18i	$ra, %call36(newMatrix)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ori	$a3, $zero, 50
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(xty)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1024
	fdiv.d	$fs0, $fa1, $fa0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(MakeID)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB3_13:                               # %.preheader.i.i
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_18 Depth 4
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s8, $a1
	alsl.d	$a2, $a0, $s0, 3
	bgeu	$a1, $s4, .LBB3_16
# %bb.14:                               # %.preheader.i.i
                                        #   in Loop: Header=BB3_13 Depth=3
	addi.d	$a3, $a1, 408
	bgeu	$s0, $a3, .LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_13 Depth=3
	move	$a3, $zero
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_16:                               # %vector.body136
                                        #   in Loop: Header=BB3_13 Depth=3
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 0
	vld	$vr2, $s0, 16
	vld	$vr3, $a1, 0
	vld	$vr4, $a1, 16
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr2, $vr0, $vr2, $vr4
	vld	$vr3, $s0, 32
	vld	$vr4, $s0, 48
	vld	$vr5, $a1, 32
	vld	$vr6, $a1, 48
	vst	$vr1, $a1, 0
	vst	$vr2, $a1, 16
	vfmadd.d	$vr1, $vr0, $vr3, $vr5
	vfmadd.d	$vr2, $vr0, $vr4, $vr6
	vld	$vr3, $s0, 64
	vld	$vr4, $s0, 80
	vld	$vr5, $a1, 64
	vld	$vr6, $a1, 80
	vst	$vr1, $a1, 32
	vst	$vr2, $a1, 48
	vfmadd.d	$vr1, $vr0, $vr3, $vr5
	vfmadd.d	$vr0, $vr0, $vr4, $vr6
	vst	$vr1, $a1, 64
	vst	$vr0, $a1, 80
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 96
	vld	$vr2, $s0, 112
	vld	$vr3, $a1, 96
	vld	$vr4, $a1, 112
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a1, 96
	vst	$vr0, $a1, 112
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 128
	vld	$vr2, $s0, 144
	vld	$vr3, $a1, 128
	vld	$vr4, $a1, 144
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a1, 128
	vst	$vr0, $a1, 144
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 160
	vld	$vr2, $s0, 176
	vld	$vr3, $a1, 160
	vld	$vr4, $a1, 176
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a1, 160
	vst	$vr0, $a1, 176
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 192
	vld	$vr2, $s0, 208
	vld	$vr3, $a1, 192
	vld	$vr4, $a1, 208
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a1, 192
	vst	$vr0, $a1, 208
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 224
	vld	$vr2, $s0, 240
	vld	$vr3, $a1, 224
	vld	$vr4, $a1, 240
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a1, 224
	vst	$vr0, $a1, 240
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 256
	vld	$vr2, $s0, 272
	vld	$vr3, $a1, 256
	vld	$vr4, $a1, 272
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a1, 256
	vst	$vr0, $a1, 272
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 288
	vld	$vr2, $s0, 304
	vld	$vr3, $a1, 288
	vld	$vr4, $a1, 304
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a1, 288
	vst	$vr0, $a1, 304
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 320
	vld	$vr2, $s0, 336
	vld	$vr3, $a1, 320
	vld	$vr4, $a1, 336
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a1, 320
	vst	$vr0, $a1, 336
	fld.d	$fa0, $a2, 0
	vld	$vr1, $s0, 352
	vld	$vr2, $s0, 368
	vld	$vr3, $a1, 352
	vld	$vr4, $a1, 368
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vst	$vr1, $a1, 352
	vst	$vr0, $a1, 368
	ori	$a3, $zero, 48
.LBB3_17:                               # %scalar.ph132.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB3_18:                               # %scalar.ph132
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $a2, 0
	fldx.d	$fa1, $s0, $a3
	fldx.d	$fa2, $a1, $a3
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $a1, $a3
	addi.d	$a3, $a3, 8
	bne	$a3, $s3, .LBB3_18
# %bb.19:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB3_13 Depth=3
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB3_13
# %bb.20:                               # %ApplyHouse.exit
                                        #   in Loop: Header=BB3_7 Depth=2
	move	$a0, $s7
	move	$a1, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(matrixMult)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(matrixMult)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(freeMatrix)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(freeMatrix)
	jirl	$ra, $ra, 0
	move	$s8, $s1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_21:                               # %._crit_edge108
                                        #   in Loop: Header=BB3_3 Depth=1
	alsl.d	$s6, $s8, $fp, 3
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, 1
	slli.d	$a2, $s2, 3
	fmov.d	$fs0, $fs4
	.p2align	4, , 16
.LBB3_22:                               #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $a0, $a2
	fmadd.d	$fs0, $fa0, $fa0, $fs0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB3_22
.LBB3_23:                               # %._crit_edge.i
                                        #   in Loop: Header=BB3_3 Depth=1
	slli.d	$s7, $s1, 3
	fldx.d	$fs1, $a0, $s7
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sign)
	jirl	$ra, $ra, 0
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_36
# %bb.24:                               # %._crit_edge.i.split
                                        #   in Loop: Header=BB3_3 Depth=1
	bge	$s2, $s1, .LBB3_33
.LBB3_25:                               # %.lr.ph36.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	ld.d	$a0, $s6, 0
	fmadd.d	$fa0, $fa1, $fa0, $fs1
	sub.d	$a1, $s1, $s2
	frecip.d	$fa0, $fa0
	ori	$a2, $zero, 4
	bltu	$a1, $a2, .LBB3_30
# %bb.26:                               # %.lr.ph36.i
                                        #   in Loop: Header=BB3_3 Depth=1
	sub.d	$a3, $s0, $a0
	move	$a2, $s2
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB3_31
# %bb.27:                               # %vector.ph
                                        #   in Loop: Header=BB3_3 Depth=1
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a2, $a3, $s2
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	alsl.d	$a5, $s2, $a0, 3
	addi.d	$a5, $a5, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_28:                               # %vector.body
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vst	$vr2, $a4, -16
	vst	$vr3, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB3_3 Depth=1
	bne	$a1, $a3, .LBB3_31
	b	.LBB3_33
.LBB3_30:                               #   in Loop: Header=BB3_3 Depth=1
	move	$a2, $s2
.LBB3_31:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	sub.d	$a1, $s1, $a2
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB3_32:                               # %scalar.ph
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_32
.LBB3_33:                               # %WeirdHouse.exit
                                        #   in Loop: Header=BB3_3 Depth=1
	lu52i.d	$a0, $zero, 1023
	stx.d	$a0, $s0, $s7
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ApplyHouse)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s8, -1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a1, $s6, 0
	addi.w	$a2, $s1, 1
	fldx.d	$fa0, $a0, $s7
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	slli.d	$s8, $a2, 3
	fldx.d	$fa1, $a1, $s8
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI3_1)
	fldx.d	$fa2, $a1, $s7
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB3_2
# %bb.34:                               # %.lr.ph109
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s1, $a0, $fp, 3
	alsl.d	$s2, $s2, $fp, 3
	.p2align	4, , 16
.LBB3_35:                               #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printMatrix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s6, 0
	fldx.d	$fa0, $a0, $s7
	fldx.d	$fa1, $a1, $s8
	fldx.d	$fs6, $a1, $s7
	fsub.d	$fa0, $fa0, $fa1
	vldi	$vr2, -928
	fmul.d	$fs0, $fa0, $fa2
	fadd.d	$fs7, $fa1, $fs0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sign)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa1, $fs6, $fs6
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s6, 0
	fmadd.d	$fa1, $fs0, $fs0, $fa1
	fsqrt.d	$fa2, $fa1
	fldx.d	$fa3, $a0, $s7
	fldx.d	$fa1, $a1, $s7
	fneg.d	$fa0, $fa0
	fmadd.d	$fa0, $fa0, $fa2, $fs7
	fsub.d	$fa0, $fa3, $fa0
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(Givens)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 80
	fld.d	$fa1, $sp, 72
	ori	$a4, $zero, 50
	move	$a0, $fp
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(ApplyGivens)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldx.d	$a1, $a0, $s7
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s6, 0
	fldx.d	$fa0, $a0, $s7
	fldx.d	$fa1, $a1, $s8
	fldx.d	$fa2, $a1, $s7
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs1
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB3_35
	b	.LBB3_2
.LBB3_36:                               # %call.sqrt
                                        #   in Loop: Header=BB3_3 Depth=1
	fmov.d	$fa0, $fs0
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	blt	$s2, $s1, .LBB3_25
	b	.LBB3_33
.LBB3_37:                               # %._crit_edge114
	fld.d	$fs7, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end3:
	.size	DivideAndSolve, .Lfunc_end3-DivideAndSolve
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"m=%i, rowstart=%i, rowend=%i\n"
	.size	.L.str, 30

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%e\n"
	.size	.L.str.1, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
