	.file	"MM.c"
	.text
	.globl	MakeMatrix                      # -- Begin function MakeMatrix
	.p2align	5
	.type	MakeMatrix,@function
MakeMatrix:                             # @MakeMatrix
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
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(newMatrix)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s4, $zero
	move	$s2, $zero
	movgr2fr.d	$fs0, $zero
	ori	$s3, $zero, 408
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$a0, $a0, -1027
	movgr2fr.d	$fs1, $a0
	lu12i.w	$a0, 169833
	ori	$a0, $a0, 475
	lu32i.d	$a0, 290052
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fs2, $a0
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	ori	$a0, $zero, 51
	beq	$s2, $a0, .LBB0_6
.LBB0_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	slli.d	$s5, $s2, 3
	ldx.d	$s6, $s0, $s5
	move	$s7, $zero
	move	$s8, $zero
	move	$s1, $s4
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=2
	ldx.d	$a0, $s0, $s1
	fstx.d	$fa0, $a0, $s5
	fstx.d	$fa0, $s6, $s1
	addi.d	$s1, $s1, 8
	addi.w	$s8, $s8, -1
	addi.d	$s7, $s7, 1
	beq	$s1, $s3, .LBB0_1
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.d	$fa0, $fs0
	blt	$fp, $s7, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	movgr2fr.w	$fa0, $s8
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa1, $fa0, $fs1
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs2
	b	.LBB0_3
.LBB0_6:
	move	$a0, $s0
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	MakeMatrix, .Lfunc_end0-MakeMatrix
                                        # -- End function
	.globl	newMatrix                       # -- Begin function newMatrix
	.p2align	5
	.type	newMatrix,@function
newMatrix:                              # @newMatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 40
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 80
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 88
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 96
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 104
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 112
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 120
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 128
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 136
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 144
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 152
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 160
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 168
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 176
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 184
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 192
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 200
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 208
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 216
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 224
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 232
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 240
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 248
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 256
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 264
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 272
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 280
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 288
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 296
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 304
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 312
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 320
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 328
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 336
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 344
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 352
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 360
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 368
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 376
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 384
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 392
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 400
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	newMatrix, .Lfunc_end1-newMatrix
                                        # -- End function
	.globl	newVector                       # -- Begin function newVector
	.p2align	5
	.type	newVector,@function
newVector:                              # @newVector
# %bb.0:
	ori	$a0, $zero, 408
	pcaddu18i	$t8, %call36(malloc)
	jr	$t8
.Lfunc_end2:
	.size	newVector, .Lfunc_end2-newVector
                                        # -- End function
	.globl	matrixMult                      # -- Begin function matrixMult
	.p2align	5
	.type	matrixMult,@function
matrixMult:                             # @matrixMult
# %bb.0:
	move	$a3, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a4, $zero, 408
	ori	$a5, $zero, 51
	.p2align	4, , 16
.LBB3_1:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
                                        #       Child Loop BB3_3 Depth 3
	slli.d	$a7, $a3, 3
	ldx.d	$a6, $a0, $a7
	ldx.d	$a7, $a1, $a7
	move	$t0, $zero
	.p2align	4, , 16
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_3 Depth 3
	move	$t1, $zero
	alsl.d	$t2, $t0, $a6, 3
	slli.d	$t3, $t0, 3
	stx.d	$zero, $a6, $t3
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$t4, $a2, $t1
	fldx.d	$fa2, $a7, $t1
	fldx.d	$fa3, $t4, $t3
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$t1, $t1, 8
	fst.d	$fa1, $t2, 0
	bne	$t1, $a4, .LBB3_3
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=2
	addi.d	$t0, $t0, 1
	bne	$t0, $a5, .LBB3_2
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a3, $a3, 1
	bne	$a3, $a5, .LBB3_1
# %bb.6:
	ret
.Lfunc_end3:
	.size	matrixMult, .Lfunc_end3-matrixMult
                                        # -- End function
	.globl	matrixTranspose                 # -- Begin function matrixTranspose
	.p2align	5
	.type	matrixTranspose,@function
matrixTranspose:                        # @matrixTranspose
# %bb.0:
	move	$a1, $zero
	addi.d	$a2, $a0, 8
	ori	$a3, $zero, 8
	ori	$a4, $zero, 50
	ori	$a5, $zero, 49
	ori	$a6, $zero, 51
	b	.LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %.loopexit
                                        #   in Loop: Header=BB4_2 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, -1
	beq	$a1, $a6, .LBB4_5
.LBB4_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	bltu	$a5, $a1, .LBB4_1
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB4_2 Depth=1
	slli.d	$a7, $a1, 3
	ldx.d	$t0, $a0, $a7
	add.d	$t0, $t0, $a3
	move	$t1, $a4
	move	$t2, $a2
	.p2align	4, , 16
.LBB4_4:                                #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t2, 0
	fldx.d	$fa0, $t3, $a7
	fld.d	$fa1, $t0, 0
	fst.d	$fa0, $t0, 0
	fstx.d	$fa1, $t3, $a7
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB4_4
	b	.LBB4_1
.LBB4_5:
	ret
.Lfunc_end4:
	.size	matrixTranspose, .Lfunc_end4-matrixTranspose
                                        # -- End function
	.globl	newIdMatrix                     # -- Begin function newIdMatrix
	.p2align	5
	.type	newIdMatrix,@function
newIdMatrix:                            # @newIdMatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(newMatrix)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a2, $zero
	ori	$a3, $zero, 408
	ori	$a4, $zero, 51
	movgr2fr.d	$fa0, $zero
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_1:                                #   in Loop: Header=BB5_2 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	beq	$a2, $a4, .LBB5_7
.LBB5_2:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	slli.d	$a5, $a2, 3
	ldx.d	$a6, $a0, $a5
	move	$a7, $zero
	move	$t0, $a1
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_3:                                #   in Loop: Header=BB5_5 Depth=2
	ldx.d	$t2, $a0, $t0
	add.d	$t1, $a2, $a7
	stx.d	$zero, $t2, $a5
	fmov.d	$fa1, $fa0
.LBB5_4:                                #   in Loop: Header=BB5_5 Depth=2
	slli.d	$t1, $t1, 3
	fstx.d	$fa1, $a6, $t1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 1
	beq	$t0, $a3, .LBB5_1
.LBB5_5:                                #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$a7, .LBB5_3
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=2
	vldi	$vr1, -912
	move	$t1, $a2
	b	.LBB5_4
.LBB5_7:                                # %MakeID.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	newIdMatrix, .Lfunc_end5-newIdMatrix
                                        # -- End function
	.globl	MakeID                          # -- Begin function MakeID
	.p2align	5
	.type	MakeID,@function
MakeID:                                 # @MakeID
# %bb.0:
	move	$a1, $zero
	ori	$a2, $zero, 51
	movgr2fr.d	$fa0, $zero
	move	$a3, $a0
	b	.LBB6_2
	.p2align	4, , 16
.LBB6_1:                                #   in Loop: Header=BB6_2 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	beq	$a1, $a2, .LBB6_7
.LBB6_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	slli.d	$a4, $a1, 3
	ldx.d	$a5, $a0, $a4
	move	$a6, $zero
	move	$a7, $a3
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_3:                                #   in Loop: Header=BB6_5 Depth=2
	ld.d	$t1, $a7, 0
	add.d	$t0, $a1, $a6
	stx.d	$zero, $t1, $a4
	fmov.d	$fa1, $fa0
.LBB6_4:                                #   in Loop: Header=BB6_5 Depth=2
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a5, $t0
	addi.d	$a6, $a6, 1
	add.d	$t0, $a1, $a6
	addi.d	$a7, $a7, 8
	beq	$t0, $a2, .LBB6_1
.LBB6_5:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$a6, .LBB6_3
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=2
	vldi	$vr1, -912
	move	$t0, $a1
	b	.LBB6_4
.LBB6_7:
	ret
.Lfunc_end6:
	.size	MakeID, .Lfunc_end6-MakeID
                                        # -- End function
	.globl	freeMatrix                      # -- Begin function freeMatrix
	.p2align	5
	.type	freeMatrix,@function
freeMatrix:                             # @freeMatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 104
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 112
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 128
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 136
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 144
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 152
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 160
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 168
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 176
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 184
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 200
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 208
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 216
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 224
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 232
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 240
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 248
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 264
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 272
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 280
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 288
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 296
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 304
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 312
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 320
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 328
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 336
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 344
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 352
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 360
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 368
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 376
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 384
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 392
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 400
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end7:
	.size	freeMatrix, .Lfunc_end7-freeMatrix
                                        # -- End function
	.globl	NormInf                         # -- Begin function NormInf
	.p2align	5
	.type	NormInf,@function
NormInf:                                # @NormInf
# %bb.0:
	move	$a1, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 408
	.p2align	4, , 16
.LBB8_1:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a3, $a0, $a1
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a3, 8
	fabs.d	$fa1, $fa1
	fld.d	$fa3, $a3, 16
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 24
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 32
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 40
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 48
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 56
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 64
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 72
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 80
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 88
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 96
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 104
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 112
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 120
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 128
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 136
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 144
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 152
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 160
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 168
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 176
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 184
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 192
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 200
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 208
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 216
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 224
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 232
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 240
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 248
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 256
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 264
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 272
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 280
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 288
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 296
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 304
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 312
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 320
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 328
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 336
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 344
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 352
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 360
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 368
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 376
	fabs.d	$fa3, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $a3, 384
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a3, 392
	fabs.d	$fa3, $fa3
	fld.d	$fa4, $a3, 400
	fadd.d	$fa1, $fa1, $fa3
	fabs.d	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fabs.d	$fa2, $fa4
	fadd.d	$fa1, $fa1, $fa2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	fsel	$fa0, $fa0, $fa1, $fcc0
	bne	$a1, $a2, .LBB8_1
# %bb.2:
	ret
.Lfunc_end8:
	.size	NormInf, .Lfunc_end8-NormInf
                                        # -- End function
	.globl	NormOne                         # -- Begin function NormOne
	.p2align	5
	.type	NormOne,@function
NormOne:                                # @NormOne
# %bb.0:
	move	$a1, $zero
	movgr2fr.d	$fa1, $zero
	ori	$a2, $zero, 408
	ori	$a3, $zero, 51
	fmov.d	$fa0, $fa1
	.p2align	4, , 16
.LBB9_1:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_2 Depth 2
	move	$a4, $zero
	slli.d	$a5, $a1, 3
	fmov.d	$fa2, $fa1
	.p2align	4, , 16
.LBB9_2:                                #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a6, $a0, $a4
	fldx.d	$fa3, $a6, $a5
	fabs.d	$fa3, $fa3
	addi.d	$a4, $a4, 8
	fadd.d	$fa2, $fa2, $fa3
	bne	$a4, $a2, .LBB9_2
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	fcmp.clt.d	$fcc0, $fa0, $fa2
	addi.d	$a1, $a1, 1
	fsel	$fa0, $fa0, $fa2, $fcc0
	bne	$a1, $a3, .LBB9_1
# %bb.4:
	ret
.Lfunc_end9:
	.size	NormOne, .Lfunc_end9-NormOne
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
