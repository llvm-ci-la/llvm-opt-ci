	.file	"box_algebra.c"
	.text
	.globl	hypre_IntersectBoxes            # -- Begin function hypre_IntersectBoxes
	.p2align	5
	.type	hypre_IntersectBoxes,@function
hypre_IntersectBoxes:                   # @hypre_IntersectBoxes
# %bb.0:
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a1, 0
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 0
	ld.w	$a3, $a0, 12
	ld.w	$a4, $a1, 12
	slt	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a1, 4
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 4
	ld.w	$a3, $a0, 16
	ld.w	$a4, $a1, 16
	slt	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 16
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a1, 8
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 8
	ld.w	$a0, $a0, 20
	ld.w	$a1, $a1, 20
	slt	$a3, $a0, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	st.w	$a0, $a2, 20
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	hypre_IntersectBoxes, .Lfunc_end0-hypre_IntersectBoxes
                                        # -- End function
	.globl	hypre_SubtractBoxes             # -- Begin function hypre_SubtractBoxes
	.p2align	5
	.type	hypre_SubtractBoxes,@function
hypre_SubtractBoxes:                    # @hypre_SubtractBoxes
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a1, $zero, 7
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a6, $s1, 0
	st.w	$a6, $a0, 144
	ld.w	$a3, $s1, 4
	st.w	$a3, $a0, 148
	ld.w	$a4, $s1, 8
	st.w	$a4, $a0, 152
	ld.w	$a7, $s1, 12
	st.w	$a7, $a0, 156
	ld.w	$a2, $s1, 16
	st.w	$a2, $a0, 160
	ld.w	$a5, $s1, 20
	st.w	$a5, $a0, 164
	ld.w	$a1, $s0, 0
	blt	$a7, $a1, .LBB1_14
# %bb.1:
	ld.w	$t0, $s0, 12
	blt	$t0, $a6, .LBB1_14
# %bb.2:
	bge	$a6, $a1, .LBB1_4
# %bb.3:
	st.w	$a6, $a0, 0
	st.w	$a3, $a0, 4
	st.w	$a4, $a0, 8
	st.w	$a7, $a0, 12
	st.w	$a2, $a0, 16
	st.w	$a5, $a0, 20
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 12
	ld.w	$a6, $s0, 0
	st.w	$a6, $a0, 144
	ld.w	$t0, $s0, 12
	ori	$a1, $zero, 1
	blt	$t0, $a7, .LBB1_5
	b	.LBB1_6
.LBB1_4:
	move	$a1, $zero
	bge	$t0, $a7, .LBB1_6
.LBB1_5:
	slli.d	$t0, $a1, 3
	slli.d	$t1, $a1, 4
	or	$t0, $t1, $t0
	add.d	$t1, $a0, $t0
	stx.w	$a6, $a0, $t0
	st.w	$a3, $t1, 4
	st.w	$a4, $t1, 8
	st.w	$a7, $t1, 12
	st.w	$a2, $t1, 16
	st.w	$a5, $t1, 20
	ld.w	$a7, $s0, 12
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a0, $t0
	ld.w	$a7, $s0, 12
	st.w	$a7, $a0, 156
	addi.d	$a1, $a1, 1
.LBB1_6:
	ld.w	$t1, $s0, 4
	blt	$a2, $t1, .LBB1_14
# %bb.7:
	ld.w	$t0, $s0, 16
	blt	$t0, $a3, .LBB1_14
# %bb.8:
	bge	$a3, $t1, .LBB1_10
# %bb.9:
	slli.d	$t0, $a1, 4
	alsl.d	$t0, $a1, $t0, 3
	add.d	$t1, $a0, $t0
	stx.w	$a6, $a0, $t0
	st.w	$a3, $t1, 4
	st.w	$a4, $t1, 8
	st.w	$a7, $t1, 12
	st.w	$a2, $t1, 16
	st.w	$a5, $t1, 20
	ld.w	$a2, $s0, 4
	addi.d	$a2, $a2, -1
	st.w	$a2, $t1, 16
	ld.w	$a3, $s0, 4
	st.w	$a3, $a0, 148
	ld.w	$t0, $s0, 16
	ld.w	$a2, $a0, 160
	addi.d	$a1, $a1, 1
.LBB1_10:
	bge	$t0, $a2, .LBB1_12
# %bb.11:
	ld.w	$a4, $a0, 144
	slli.d	$a5, $a1, 4
	alsl.d	$a5, $a1, $a5, 3
	stx.w	$a4, $a0, $a5
	ld.d	$a6, $a0, 152
	add.d	$a5, $a0, $a5
	ld.w	$a4, $a0, 164
	st.w	$a3, $a5, 4
	st.d	$a6, $a5, 8
	st.w	$a2, $a5, 16
	st.w	$a4, $a5, 20
	ld.w	$a2, $s0, 16
	addi.d	$a2, $a2, 1
	st.w	$a2, $a5, 4
	ld.w	$a2, $s0, 16
	st.w	$a2, $a0, 160
	addi.d	$a1, $a1, 1
	ld.w	$a6, $s0, 8
	bge	$a4, $a6, .LBB1_13
	b	.LBB1_14
.LBB1_12:                               # %._crit_edge
	ld.w	$a4, $a0, 164
	ld.w	$a6, $s0, 8
	blt	$a4, $a6, .LBB1_14
.LBB1_13:
	ld.w	$a5, $s0, 20
	ld.w	$a3, $a0, 152
	bge	$a5, $a3, .LBB1_16
.LBB1_14:
	ld.w	$a1, $s1, 0
	st.w	$a1, $a0, 0
	ld.w	$a1, $s1, 4
	st.w	$a1, $a0, 4
	ld.w	$a1, $s1, 8
	st.w	$a1, $a0, 8
	ld.w	$a1, $s1, 12
	st.w	$a1, $a0, 12
	ld.w	$a1, $s1, 16
	st.w	$a1, $a0, 16
	ld.w	$a1, $s1, 20
	st.w	$a1, $a0, 20
	ori	$a1, $zero, 1
.LBB1_15:                               # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_16:
	bge	$a3, $a6, .LBB1_18
# %bb.17:
	ld.d	$a5, $a0, 144
	slli.d	$a6, $a1, 4
	alsl.d	$a6, $a1, $a6, 3
	ld.w	$a7, $a0, 156
	stx.d	$a5, $a0, $a6
	add.d	$a5, $a0, $a6
	st.w	$a3, $a5, 8
	st.w	$a7, $a5, 12
	st.w	$a2, $a5, 16
	st.w	$a4, $a5, 20
	ld.w	$a2, $s0, 8
	addi.d	$a2, $a2, -1
	st.w	$a2, $a5, 20
	ld.w	$a3, $s0, 8
	st.w	$a3, $a0, 152
	ld.w	$a5, $s0, 20
	ld.w	$a4, $a0, 164
	addi.d	$a1, $a1, 1
.LBB1_18:
	bge	$a5, $a4, .LBB1_15
# %bb.19:
	ld.d	$a2, $a0, 144
	slli.d	$a5, $a1, 4
	alsl.d	$a5, $a1, $a5, 3
	ld.d	$a6, $a0, 156
	stx.d	$a2, $a0, $a5
	add.d	$a2, $a0, $a5
	st.w	$a3, $a2, 8
	st.d	$a6, $a2, 12
	st.w	$a4, $a2, 20
	ld.w	$a3, $s0, 20
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 8
	ld.w	$a2, $s0, 20
	st.w	$a2, $a0, 164
	addi.d	$a1, $a1, 1
	b	.LBB1_15
.Lfunc_end1:
	.size	hypre_SubtractBoxes, .Lfunc_end1-hypre_SubtractBoxes
                                        # -- End function
	.globl	hypre_UnionBoxes                # -- Begin function hypre_UnionBoxes
	.p2align	5
	.type	hypre_UnionBoxes,@function
hypre_UnionBoxes:                       # @hypre_UnionBoxes
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$s2, $a0
	ld.w	$a1, $a0, 8
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB2_106
# %bb.1:                                # %.preheader207
	slli.d	$a0, $a1, 4
	alsl.w	$a0, $a1, $a0, 3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	slli.d	$fp, $a1, 3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 192
	st.w	$zero, $sp, 180
	st.d	$zero, $sp, 184
	bstrpick.d	$a2, $fp, 33, 3
	ld.w	$a1, $s2, 8
	alsl.d	$s3, $a2, $a0, 3
	st.d	$s3, $sp, 200
	alsl.d	$s4, $a2, $s3, 3
	st.d	$s4, $sp, 208
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	blez	$a1, .LBB2_35
# %bb.2:                                # %.lr.ph227
	move	$a0, $zero
	ld.d	$a1, $s2, 0
	addi.d	$a2, $sp, 180
	addi.d	$a3, $sp, 192
	ori	$a4, $zero, 8
	ori	$a5, $zero, 3
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a6, $s2, 8
	addi.d	$a0, $a0, 1
	bge	$a0, $a6, .LBB2_34
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_9 Depth 3
                                        #       Child Loop BB2_16 Depth 3
                                        #       Child Loop BB2_19 Depth 3
                                        #       Child Loop BB2_23 Depth 3
                                        #       Child Loop BB2_30 Depth 3
                                        #       Child Loop BB2_33 Depth 3
	move	$a6, $zero
	slli.d	$a7, $a0, 4
	alsl.d	$a7, $a0, $a7, 3
	add.d	$a7, $a1, $a7
	addi.d	$t0, $a7, 12
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_5:                                # %._crit_edge.1
                                        #   in Loop: Header=BB2_7 Depth=2
	slli.d	$t3, $t5, 2
	stx.w	$t4, $t2, $t3
	addi.d	$t1, $t1, 1
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=2
	alsl.d	$t2, $a6, $a2, 2
	addi.d	$a6, $a6, 1
	st.w	$t1, $t2, 0
	beq	$a6, $a5, .LBB2_3
.LBB2_7:                                # %.preheader206
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_9 Depth 3
                                        #       Child Loop BB2_16 Depth 3
                                        #       Child Loop BB2_19 Depth 3
                                        #       Child Loop BB2_23 Depth 3
                                        #       Child Loop BB2_30 Depth 3
                                        #       Child Loop BB2_33 Depth 3
	slli.d	$t1, $a6, 2
	ldx.w	$t4, $a7, $t1
	ldx.w	$t3, $t0, $t1
	ldx.w	$t1, $t1, $a2
	slli.d	$t2, $a6, 3
	ldx.d	$t2, $t2, $a3
	move	$t5, $zero
	blez	$t1, .LBB2_20
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$t6, $zero
	move	$t7, $t1
	move	$t8, $t1
	move	$fp, $t2
	.p2align	4, , 16
.LBB2_9:                                #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s0, $fp, 0
	bge	$s0, $t4, .LBB2_12
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=3
	addi.d	$t6, $t6, 1
	addi.w	$t5, $t5, 1
	addi.d	$fp, $fp, 4
	addi.d	$t8, $t8, -1
	bne	$t7, $t6, .LBB2_9
# %bb.11:                               #   in Loop: Header=BB2_7 Depth=2
	move	$t5, $t1
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_12:                               #   in Loop: Header=BB2_7 Depth=2
	beq	$t4, $s0, .LBB2_21
# %bb.13:                               # %.critedge
                                        #   in Loop: Header=BB2_7 Depth=2
	bge	$t5, $t1, .LBB2_20
# %bb.14:                               # %.lr.ph222
                                        #   in Loop: Header=BB2_7 Depth=2
	sub.d	$fp, $t1, $t6
	bltu	$fp, $a4, .LBB2_18
# %bb.15:                               # %vector.ph437
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.w	$s1, $zero, -8
	and	$s0, $fp, $s1
	sub.d	$t7, $t1, $s0
	and	$t8, $t8, $s1
	alsl.d	$s1, $t1, $t2, 2
	addi.d	$s1, $s1, -16
	.p2align	4, , 16
.LBB2_16:                               # %vector.body440
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $s1, 0
	vld	$vr1, $s1, -16
	vst	$vr0, $s1, 4
	vst	$vr1, $s1, -12
	addi.d	$t8, $t8, -8
	addi.d	$s1, $s1, -32
	bnez	$t8, .LBB2_16
# %bb.17:                               # %middle.block450
                                        #   in Loop: Header=BB2_7 Depth=2
	beq	$fp, $s0, .LBB2_20
.LBB2_18:                               # %scalar.ph435.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	alsl.d	$t8, $t7, $t2, 2
	.p2align	4, , 16
.LBB2_19:                               # %scalar.ph435
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$fp, $t8, -4
	addi.d	$s0, $t8, -4
	addi.d	$t7, $t7, -1
	st.w	$fp, $t8, 0
	move	$t8, $s0
	blt	$t6, $t7, .LBB2_19
	.p2align	4, , 16
.LBB2_20:                               # %._crit_edge
                                        #   in Loop: Header=BB2_7 Depth=2
	slli.d	$t5, $t5, 2
	stx.w	$t4, $t2, $t5
	addi.w	$t1, $t1, 1
.LBB2_21:                               # %.preheader206.1
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.w	$t4, $t3, 1
	move	$t5, $zero
	blez	$t1, .LBB2_27
# %bb.22:                               # %.lr.ph.1
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$t6, $t2
	move	$t7, $t1
	.p2align	4, , 16
.LBB2_23:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t6, 0
	blt	$t3, $t8, .LBB2_26
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=3
	addi.w	$t5, $t5, 1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB2_23
# %bb.25:                               #   in Loop: Header=BB2_7 Depth=2
	move	$t5, $t1
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_7 Depth=2
	beq	$t4, $t8, .LBB2_6
	.p2align	4, , 16
.LBB2_27:                               # %.critedge.1
                                        #   in Loop: Header=BB2_7 Depth=2
	bge	$t5, $t1, .LBB2_5
# %bb.28:                               # %.lr.ph222.1
                                        #   in Loop: Header=BB2_7 Depth=2
	sub.d	$t6, $t1, $t5
	move	$t3, $t1
	bltu	$t6, $a4, .LBB2_32
# %bb.29:                               # %vector.ph
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$t7, $t6
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t3, $t1, $t7
	alsl.d	$t8, $t1, $t2, 2
	addi.d	$t8, $t8, -16
	move	$fp, $t7
	.p2align	4, , 16
.LBB2_30:                               # %vector.body
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t8, 0
	vld	$vr1, $t8, -16
	vst	$vr0, $t8, 4
	vst	$vr1, $t8, -12
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, -32
	bnez	$fp, .LBB2_30
# %bb.31:                               # %middle.block
                                        #   in Loop: Header=BB2_7 Depth=2
	beq	$t6, $t7, .LBB2_5
.LBB2_32:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	alsl.d	$t6, $t3, $t2, 2
	.p2align	4, , 16
.LBB2_33:                               # %scalar.ph
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t7, $t6, -4
	addi.d	$t8, $t6, -4
	addi.d	$t3, $t3, -1
	st.w	$t7, $t6, 0
	move	$t6, $t8
	blt	$t5, $t3, .LBB2_33
	b	.LBB2_5
.LBB2_34:                               # %.preheader205.loopexit
	ld.w	$s5, $sp, 180
	ld.w	$a0, $sp, 188
	ld.w	$a1, $sp, 184
	addi.w	$a2, $a0, -1
	b	.LBB2_36
.LBB2_35:
	move	$a1, $zero
	move	$s5, $zero
	addi.w	$a2, $zero, -1
.LBB2_36:                               # %.preheader205
	addi.w	$s6, $s5, -1
	st.w	$s6, $sp, 180
	addi.w	$s8, $a1, -1
	st.w	$s8, $sp, 184
	st.w	$a2, $sp, 188
	mul.d	$a0, $s8, $s6
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	mul.w	$a0, $a0, $a2
	ori	$a2, $zero, 1
	st.w	$a2, $sp, 168
	st.w	$s5, $sp, 172
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	mul.w	$s2, $a1, $s5
	st.w	$s2, $sp, 176
	ori	$a1, $zero, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	move	$s1, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	blez	$a1, .LBB2_65
# %bb.37:                               # %.lr.ph244
	move	$a1, $zero
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $s5, $s2
	addi.d	$a2, $a0, 1
	vreplgr2vr.w	$vr0, $a2
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s6, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	mul.d	$a0, $s8, $s6
	slli.d	$t2, $a0, 2
	slli.d	$a0, $s5, 2
	addi.d	$a6, $a0, -4
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$t0, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu32i.d	$t0, 1
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_38:                               # %._crit_edge241.loopexit
                                        #   in Loop: Header=BB2_40 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
.LBB2_39:                               # %._crit_edge241
                                        #   in Loop: Header=BB2_40 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB2_65
.LBB2_40:                               # %.preheader204
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_41 Depth 2
                                        #     Child Loop BB2_43 Depth 2
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_47 Depth 2
                                        #     Child Loop BB2_49 Depth 2
                                        #     Child Loop BB2_51 Depth 2
                                        #     Child Loop BB2_55 Depth 2
                                        #       Child Loop BB2_58 Depth 3
                                        #         Child Loop BB2_61 Depth 4
                                        #         Child Loop BB2_64 Depth 4
	slli.d	$a0, $a1, 4
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a1, $a4, $a0
	move	$a3, $zero
	add.d	$fp, $a4, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_41:                               #   Parent Loop BB2_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s7, $t1
	move	$t3, $t4
	move	$ra, $a3
	ld.w	$a4, $a0, 0
	add.d	$t1, $t1, $t0
	addi.d	$t4, $t4, 1
	addi.d	$a0, $a0, 4
	addi.w	$a3, $a3, 1
	bne	$a1, $a4, .LBB2_41
# %bb.42:                               #   in Loop: Header=BB2_40 Depth=1
	ld.w	$a1, $fp, 12
	addi.w	$a1, $a1, 1
	addi.w	$a3, $zero, -4
	move	$a4, $ra
	.p2align	4, , 16
.LBB2_43:                               #   Parent Loop BB2_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t5, $a4
	ldx.w	$a5, $a0, $a3
	add.d	$s7, $s7, $t0
	addi.d	$t3, $t3, 1
	addi.d	$a3, $a3, 4
	addi.w	$a4, $a4, 1
	bne	$a1, $a5, .LBB2_43
# %bb.44:                               # %.preheader204.1
                                        #   in Loop: Header=BB2_40 Depth=1
	move	$a5, $zero
	ld.w	$a4, $fp, 4
	addi.w	$t7, $zero, -1
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_45:                               #   Parent Loop BB2_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $a1
	move	$t8, $t7
	move	$a7, $a5
	ld.w	$t6, $a0, 0
	add.d	$a1, $a1, $t0
	addi.d	$t7, $t7, 1
	addi.d	$a0, $a0, 4
	addi.w	$a5, $a5, 1
	bne	$a4, $t6, .LBB2_45
# %bb.46:                               #   in Loop: Header=BB2_40 Depth=1
	ld.w	$a4, $fp, 16
	addi.w	$a4, $a4, 1
	addi.w	$a5, $zero, -4
	.p2align	4, , 16
.LBB2_47:                               #   Parent Loop BB2_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t6, $a0, $a5
	add.d	$a3, $a3, $t0
	addi.d	$t8, $t8, 1
	addi.d	$a5, $a5, 4
	bne	$a4, $t6, .LBB2_47
# %bb.48:                               # %.preheader204.2
                                        #   in Loop: Header=BB2_40 Depth=1
	move	$a5, $zero
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	ld.w	$s0, $fp, 8
	addi.w	$a4, $zero, -1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_49:                               #   Parent Loop BB2_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a0
	move	$s4, $a4
	move	$s3, $a5
	ld.w	$t2, $t6, 0
	add.d	$a0, $a0, $t0
	addi.d	$a4, $a4, 1
	addi.d	$t6, $t6, 4
	addi.w	$a5, $a5, 1
	bne	$s0, $t2, .LBB2_49
# %bb.50:                               #   in Loop: Header=BB2_40 Depth=1
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 20
	addi.w	$a5, $a5, 1
	addi.w	$s0, $zero, -4
	.p2align	4, , 16
.LBB2_51:                               #   Parent Loop BB2_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t2, $t6, $s0
	add.d	$fp, $fp, $t0
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 4
	bne	$a5, $t2, .LBB2_51
# %bb.52:                               #   in Loop: Header=BB2_40 Depth=1
	bgeu	$a4, $s4, .LBB2_39
# %bb.53:                               # %.lr.ph240
                                        #   in Loop: Header=BB2_40 Depth=1
	srai.d	$a4, $t1, 32
	srai.d	$a1, $a1, 32
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	srai.d	$a1, $a0, 32
	srai.d	$a0, $fp, 32
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	srai.d	$a3, $a3, 32
	srai.d	$a0, $s7, 32
	sub.d	$s7, $a0, $a4
	addi.w	$a5, $zero, -8
	and	$a0, $s7, $a5
	add.d	$t1, $a4, $a0
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$t2, $ra, $t2, 2
	mul.d	$t6, $s8, $s3
	add.d	$a7, $a7, $t6
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a7, $t6, $a7
	add.d	$fp, $t2, $a7
	sub.d	$t2, $t5, $ra
	and	$ra, $t2, $a5
	add.d	$t6, $s1, $a7
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_55
	.p2align	4, , 16
.LBB2_54:                               # %._crit_edge237
                                        #   in Loop: Header=BB2_55 Depth=2
	addi.d	$a1, $a1, 1
	add.d	$fp, $fp, $t2
	add.d	$t6, $t6, $t2
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	beq	$a1, $a5, .LBB2_38
.LBB2_55:                               #   Parent Loop BB2_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_58 Depth 3
                                        #         Child Loop BB2_61 Depth 4
                                        #         Child Loop BB2_64 Depth 4
	bgeu	$t7, $t8, .LBB2_54
# %bb.56:                               # %.lr.ph236
                                        #   in Loop: Header=BB2_55 Depth=2
	move	$a5, $t6
	move	$a7, $fp
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	b	.LBB2_58
	.p2align	4, , 16
.LBB2_57:                               # %._crit_edge233
                                        #   in Loop: Header=BB2_58 Depth=3
	addi.d	$s4, $s4, 1
	add.d	$a7, $a7, $a6
	add.d	$a5, $a5, $a6
	beq	$s4, $a3, .LBB2_54
.LBB2_58:                               #   Parent Loop BB2_40 Depth=1
                                        #     Parent Loop BB2_55 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_61 Depth 4
                                        #         Child Loop BB2_64 Depth 4
	bgeu	$t4, $t3, .LBB2_57
# %bb.59:                               # %.lr.ph232
                                        #   in Loop: Header=BB2_58 Depth=3
	move	$s3, $a4
	ori	$s0, $zero, 8
	bltu	$s7, $s0, .LBB2_63
# %bb.60:                               # %vector.ph455
                                        #   in Loop: Header=BB2_58 Depth=3
	move	$s0, $ra
	move	$s3, $a7
	.p2align	4, , 16
.LBB2_61:                               # %vector.body458
                                        #   Parent Loop BB2_40 Depth=1
                                        #     Parent Loop BB2_55 Depth=2
                                        #       Parent Loop BB2_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr0, $s3, -16
	vst	$vr0, $s3, 0
	addi.d	$s0, $s0, -8
	addi.d	$s3, $s3, 32
	bnez	$s0, .LBB2_61
# %bb.62:                               # %middle.block462
                                        #   in Loop: Header=BB2_58 Depth=3
	move	$s3, $t1
	beq	$s7, $a0, .LBB2_57
.LBB2_63:                               # %scalar.ph453.preheader
                                        #   in Loop: Header=BB2_58 Depth=3
	alsl.d	$s0, $s3, $a5, 2
	sub.d	$s3, $t5, $s3
	.p2align	4, , 16
.LBB2_64:                               # %scalar.ph453
                                        #   Parent Loop BB2_40 Depth=1
                                        #     Parent Loop BB2_55 Depth=2
                                        #       Parent Loop BB2_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a2, $s0, 0
	addi.d	$s3, $s3, -1
	addi.d	$s0, $s0, 4
	bnez	$s3, .LBB2_64
	b	.LBB2_57
.LBB2_65:                               # %.preheader203.preheader
	move	$a0, $zero
	addi.d	$a1, $sp, 164
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 188
	addi.d	$a4, $sp, 184
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	slli.w	$a7, $a5, 1
	addi.d	$t0, $sp, 168
	ori	$t1, $zero, 3
	ori	$t2, $zero, 2
                                        # implicit-def: $r15
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_66:                               # %._crit_edge265
                                        #   in Loop: Header=BB2_67 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $t1, .LBB2_85
.LBB2_67:                               # %.preheader203
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_75 Depth 2
                                        #       Child Loop BB2_78 Depth 3
                                        #         Child Loop BB2_82 Depth 4
	move	$t4, $a1
	move	$a5, $a3
	move	$t5, $a2
	move	$a6, $a4
	beqz	$a0, .LBB2_71
# %bb.68:                               # %.preheader203
                                        #   in Loop: Header=BB2_67 Depth=1
	bne	$a0, $t2, .LBB2_70
# %bb.69:                               #   in Loop: Header=BB2_67 Depth=1
	addi.d	$a5, $sp, 180
	addi.d	$t4, $sp, 156
	move	$t5, $a2
	move	$a6, $a4
	b	.LBB2_71
	.p2align	4, , 16
.LBB2_70:                               #   in Loop: Header=BB2_67 Depth=1
	addi.d	$a6, $sp, 180
	addi.d	$t5, $sp, 156
	move	$t4, $a1
	move	$a5, $a3
.LBB2_71:                               #   in Loop: Header=BB2_67 Depth=1
	ld.w	$t6, $a5, 0
	st.w	$zero, $t4, 0
	blez	$t6, .LBB2_66
# %bb.72:                               # %.lr.ph264
                                        #   in Loop: Header=BB2_67 Depth=1
	move	$a5, $zero
	ld.w	$t7, $a6, 0
	addi.d	$a6, $sp, 156
	alsl.d	$t8, $a0, $a6, 2
	addi.d	$a6, $sp, 180
	alsl.d	$s7, $a0, $a6, 2
	alsl.d	$ra, $a0, $t0, 2
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_73:                               # %._crit_edge258.loopexit
                                        #   in Loop: Header=BB2_75 Depth=2
	ld.w	$a5, $t4, 0
.LBB2_74:                               # %._crit_edge258
                                        #   in Loop: Header=BB2_75 Depth=2
	addi.w	$a5, $a5, 1
	st.w	$a5, $t4, 0
	bge	$a5, $t6, .LBB2_66
.LBB2_75:                               #   Parent Loop BB2_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_78 Depth 3
                                        #         Child Loop BB2_82 Depth 4
	st.w	$zero, $t5, 0
	blez	$t7, .LBB2_74
# %bb.76:                               # %.lr.ph257
                                        #   in Loop: Header=BB2_75 Depth=2
	ld.w	$a5, $s7, 0
	b	.LBB2_78
	.p2align	4, , 16
.LBB2_77:                               # %._crit_edge251
                                        #   in Loop: Header=BB2_78 Depth=3
	ld.w	$a6, $t5, 0
	addi.w	$a6, $a6, 1
	st.w	$a6, $t5, 0
	bge	$a6, $t7, .LBB2_73
.LBB2_78:                               #   Parent Loop BB2_67 Depth=1
                                        #     Parent Loop BB2_75 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_82 Depth 4
	st.w	$zero, $t8, 0
	blez	$a5, .LBB2_77
# %bb.79:                               # %.lr.ph250.preheader
                                        #   in Loop: Header=BB2_78 Depth=3
	move	$fp, $zero
	move	$a6, $zero
	b	.LBB2_82
	.p2align	4, , 16
.LBB2_80:                               # %.lr.ph250._crit_edge
                                        #   in Loop: Header=BB2_82 Depth=4
	sltu	$fp, $zero, $s3
	masknez	$a7, $a7, $fp
	maskeqz	$s0, $s0, $fp
	or	$a7, $s0, $a7
	masknez	$t3, $t3, $fp
	maskeqz	$s0, $s3, $fp
	or	$t3, $s0, $t3
.LBB2_81:                               #   in Loop: Header=BB2_82 Depth=4
	addi.w	$a6, $a6, 1
	st.w	$a6, $t8, 0
	beq	$a5, $a6, .LBB2_77
.LBB2_82:                               # %.lr.ph250
                                        #   Parent Loop BB2_67 Depth=1
                                        #     Parent Loop BB2_75 Depth=2
                                        #       Parent Loop BB2_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s0, $sp, 164
	ld.w	$s3, $sp, 160
	ld.w	$s4, $sp, 156
	mul.d	$s0, $s0, $s8
	add.d	$s0, $s0, $s3
	mul.d	$s0, $s0, $s6
	add.w	$s0, $s0, $s4
	slli.d	$s3, $s0, 2
	ldx.w	$s3, $s1, $s3
	beqz	$fp, .LBB2_80
# %bb.83:                               # %.lr.ph250
                                        #   in Loop: Header=BB2_82 Depth=4
	addi.w	$fp, $t3, 0
	bne	$s3, $fp, .LBB2_80
# %bb.84:                               #   in Loop: Header=BB2_82 Depth=4
	alsl.d	$fp, $s0, $s1, 2
	st.w	$zero, $fp, 0
	ld.w	$fp, $ra, 0
	slli.d	$s0, $a7, 2
	ldx.w	$s3, $s1, $s0
	add.d	$fp, $s3, $fp
	stx.w	$fp, $s1, $s0
	ori	$fp, $zero, 1
	b	.LBB2_81
.LBB2_85:                               # %.preheader202
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	blez	$a3, .LBB2_88
# %bb.86:                               # %.lr.ph273.preheader
	ori	$a0, $zero, 8
	bgeu	$a3, $a0, .LBB2_89
# %bb.87:
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB2_92
.LBB2_88:
	move	$a1, $zero
	b	.LBB2_94
.LBB2_89:                               # %vector.ph467
	bstrpick.d	$a0, $a3, 30, 3
	slli.d	$a0, $a0, 3
	vrepli.b	$vr0, 0
	addi.d	$a1, $s1, 16
	move	$a2, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_90:                               # %vector.body470
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vseqi.w	$vr2, $vr2, 0
	vseqi.w	$vr3, $vr3, 0
	vadd.w	$vr0, $vr0, $vr2
	vaddi.wu	$vr0, $vr0, 1
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_90
# %bb.91:                               # %middle.block476
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a0, $a3, .LBB2_94
.LBB2_92:                               # %.lr.ph273.preheader479
	alsl.d	$a2, $a0, $s1, 2
	sub.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB2_93:                               # %.lr.ph273
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	sltu	$a3, $zero, $a3
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB2_93
.LBB2_94:                               # %._crit_edge274
	addi.w	$a1, $a1, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	blez	$s7, .LBB2_105
# %bb.95:                               # %.preheader201.lr.ph
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	bstrpick.d	$a3, $s6, 31, 0
	ori	$a4, $zero, 2
	b	.LBB2_97
	.p2align	4, , 16
.LBB2_96:                               # %._crit_edge286
                                        #   in Loop: Header=BB2_97 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s7, .LBB2_105
.LBB2_97:                               # %.preheader201
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_100 Depth 2
                                        #       Child Loop BB2_103 Depth 3
	blt	$s4, $a4, .LBB2_96
# %bb.98:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB2_97 Depth=1
	move	$a5, $zero
	alsl.d	$a6, $a0, $s3, 2
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	b	.LBB2_100
	.p2align	4, , 16
.LBB2_99:                               # %._crit_edge280
                                        #   in Loop: Header=BB2_100 Depth=2
	addi.d	$a5, $a5, 1
	beq	$a5, $s8, .LBB2_96
.LBB2_100:                              # %.preheader
                                        #   Parent Loop BB2_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_103 Depth 3
	blt	$s5, $a4, .LBB2_99
# %bb.101:                              # %.lr.ph279
                                        #   in Loop: Header=BB2_100 Depth=2
	move	$a7, $zero
	alsl.d	$t0, $a5, $s0, 2
	alsl.d	$t1, $a2, $s1, 2
	move	$t2, $fp
	b	.LBB2_103
	.p2align	4, , 16
.LBB2_102:                              #   in Loop: Header=BB2_103 Depth=3
	addi.d	$a7, $a7, 1
	addi.d	$t1, $t1, 4
	addi.w	$a2, $a2, 1
	addi.d	$t2, $t2, 4
	beq	$a3, $a7, .LBB2_99
.LBB2_103:                              #   Parent Loop BB2_97 Depth=1
                                        #     Parent Loop BB2_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $t1, 0
	beqz	$t3, .LBB2_102
# %bb.104:                              #   in Loop: Header=BB2_103 Depth=3
	ld.d	$t4, $t8, 0
	ld.w	$t5, $t2, 0
	slli.d	$t6, $a1, 4
	alsl.d	$t6, $a1, $t6, 3
	stx.w	$t5, $t4, $t6
	ld.w	$t5, $t0, 0
	add.d	$t4, $t4, $t6
	st.w	$t5, $t4, 4
	ld.w	$t5, $a6, 0
	mod.w	$t6, $t3, $s5
	div.w	$t7, $t3, $s2
	st.w	$t5, $t4, 8
	add.d	$t5, $a7, $t6
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $fp, $t5
	mul.d	$t6, $t7, $s2
	sub.w	$t3, $t3, $t6
	div.w	$t3, $t3, $s5
	addi.d	$t5, $t5, -1
	st.w	$t5, $t4, 12
	add.w	$t3, $t3, $a5
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $s0, $t3
	addi.d	$t3, $t3, -1
	st.w	$t3, $t4, 16
	add.w	$t3, $t7, $a0
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $s3, $t3
	addi.d	$t3, $t3, -1
	st.w	$t3, $t4, 20
	addi.w	$a1, $a1, 1
	b	.LBB2_102
.LBB2_105:                              # %._crit_edge292
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB2_106:
	move	$a0, $zero
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end2:
	.size	hypre_UnionBoxes, .Lfunc_end2-hypre_UnionBoxes
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
