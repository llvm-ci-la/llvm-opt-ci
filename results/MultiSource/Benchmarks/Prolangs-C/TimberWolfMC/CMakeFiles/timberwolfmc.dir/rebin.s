	.file	"rebin.c"
	.text
	.globl	rebin                           # -- Begin function rebin
	.p2align	5
	.type	rebin,@function
rebin:                                  # @rebin
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(numBinsX)
	ld.d	$a1, $a1, %got_pc_lo12(numBinsX)
	ld.w	$t1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(numBinsY)
	ld.d	$a2, $a2, %got_pc_lo12(numBinsY)
	bltz	$t1, .LBB0_13
# %bb.1:
	ld.w	$a7, $a2, 0
	bltz	$a7, .LBB0_13
# %bb.2:                                # %.preheader83.preheader
	pcalau12i	$a3, %got_pc_hi20(blockarray)
	ld.d	$a3, $a3, %got_pc_lo12(blockarray)
	pcalau12i	$a4, %got_pc_hi20(numcells)
	ld.d	$a4, $a4, %got_pc_lo12(numcells)
	move	$t2, $zero
	addi.w	$a5, $zero, -4
	addi.w	$a6, $zero, -1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge88.loopexit95
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$t1, $a1, 0
.LBB0_4:                                # %._crit_edge88
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$t2, $t0, 1
	bge	$t0, $t1, .LBB0_13
.LBB0_5:                                # %.preheader83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	move	$t0, $t2
	bltz	$a7, .LBB0_4
# %bb.6:                                # %.preheader82.lr.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$t2, $a4, 0
	blt	$t2, $a5, .LBB0_4
# %bb.7:                                # %.preheader82.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$t1, $a3, 0
	move	$t4, $zero
	alsl.d	$t1, $t0, $t1, 3
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %._crit_edge
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$t4, $t3, 1
	bge	$t3, $a7, .LBB0_3
.LBB0_9:                                # %.preheader82
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	move	$t3, $t4
	blt	$t2, $a5, .LBB0_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a7, $t1, 0
	slli.d	$t2, $t3, 3
	ldx.d	$a7, $a7, $t2
	move	$t4, $a6
	.p2align	4, , 16
.LBB0_11:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$zero, $a7, 0
	ld.w	$t2, $a4, 0
	addi.w	$t5, $t2, 4
	addi.d	$t4, $t4, 1
	addi.d	$a7, $a7, 4
	blt	$t4, $t5, .LBB0_11
# %bb.12:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a7, $a2, 0
	b	.LBB0_8
.LBB0_13:                               # %.preheader
	pcalau12i	$a3, %got_pc_hi20(numcells)
	ld.d	$a3, $a3, %got_pc_lo12(numcells)
	ld.w	$t5, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(numpads)
	ld.d	$a4, $a4, %got_pc_lo12(numpads)
	ld.w	$t6, $a4, 0
	add.w	$t7, $t6, $t5
	addi.w	$a5, $zero, -3
	bge	$t7, $a5, .LBB0_15
.LBB0_14:                               # %._crit_edge94
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_15:                               # %.lr.ph93
	pcalau12i	$a5, %got_pc_hi20(cellarray)
	ld.d	$a5, $a5, %got_pc_lo12(cellarray)
	ld.d	$a6, $a5, 0
	pcalau12i	$a5, %got_pc_hi20(blockarray)
	ld.d	$a5, $a5, %got_pc_lo12(blockarray)
	ld.d	$a5, $a5, 0
	addi.d	$a6, $a6, 8
	ori	$a7, $zero, 1
	pcalau12i	$t0, %got_pc_hi20(binOffsetX)
	ld.d	$t0, $t0, %got_pc_lo12(binOffsetX)
	pcalau12i	$t1, %got_pc_hi20(binWidthX)
	ld.d	$t1, $t1, %got_pc_lo12(binWidthX)
	pcalau12i	$t2, %got_pc_hi20(bucket)
	ld.d	$t2, $t2, %got_pc_lo12(bucket)
	move	$t3, $zero
	ori	$t4, $zero, 1
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=1
	ld.d	$t5, $t8, 0
	ld.w	$t6, $t5, 0
	addi.w	$t6, $t6, 1
	st.w	$t6, $t5, 0
	slli.d	$t6, $t6, 2
	stx.w	$t4, $t5, $t6
	ld.w	$t5, $a3, 0
	ld.w	$t6, $a4, 0
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=1
	add.w	$t7, $t6, $t5
	addi.w	$t8, $t7, 4
	addi.d	$t4, $t4, 1
	addi.d	$a6, $a6, 8
	bge	$t3, $t8, .LBB0_14
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	addi.d	$t3, $t3, 1
	bge	$t5, $t3, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	bge	$t7, $t3, .LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=1
	ld.d	$t6, $a6, 0
	ld.w	$t7, $t6, 56
	alsl.d	$t7, $t7, $t6, 3
	ld.d	$s0, $t7, 152
	ld.w	$t7, $t6, 12
	ld.w	$t8, $s0, 56
	ld.w	$s1, $s0, 60
	ld.w	$t6, $t6, 16
	ld.w	$s2, $s0, 64
	ld.w	$s3, $s0, 68
	add.d	$fp, $t8, $t7
	add.d	$t8, $s1, $t7
	add.d	$t7, $s2, $t6
	add.d	$t6, $s3, $t6
	bne	$a0, $a7, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_18 Depth=1
	blt	$t5, $t3, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=1
	ld.w	$t5, $s0, 40
	ld.w	$s1, $s0, 44
	ld.w	$s2, $s0, 48
	ld.w	$s0, $s0, 52
	sub.d	$fp, $fp, $t5
	add.d	$t8, $s1, $t8
	sub.d	$t7, $t7, $s2
	add.d	$t6, $s0, $t6
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=1
	ld.w	$s0, $t0, 0
	ld.w	$s1, $t1, 0
	ld.w	$s2, $a1, 0
	sub.w	$t5, $fp, $s0
	div.w	$t5, $t5, $s1
	slti	$fp, $t5, 1
	slt	$s3, $t5, $s2
	maskeqz	$t5, $t5, $s3
	masknez	$s3, $s2, $s3
	or	$t5, $t5, $s3
	masknez	$t5, $t5, $fp
	maskeqz	$fp, $a7, $fp
	or	$t5, $fp, $t5
	sub.w	$t8, $t8, $s0
	div.w	$t8, $t8, $s1
	slt	$fp, $s2, $t8
	slt	$s0, $a7, $t8
	maskeqz	$t8, $t8, $s0
	masknez	$s0, $a7, $s0
	or	$t8, $t8, $s0
	masknez	$t8, $t8, $fp
	maskeqz	$fp, $s2, $fp
	or	$fp, $fp, $t8
	move	$t8, $t2
	bne	$t5, $fp, .LBB0_16
# %bb.24:                               #   in Loop: Header=BB0_18 Depth=1
	pcalau12i	$t8, %got_pc_hi20(binOffsetY)
	ld.d	$t8, $t8, %got_pc_lo12(binOffsetY)
	ld.w	$t8, $t8, 0
	sub.w	$t7, $t7, $t8
	pcalau12i	$fp, %got_pc_hi20(binWidthY)
	ld.d	$fp, $fp, %got_pc_lo12(binWidthY)
	ld.w	$fp, $fp, 0
	ld.w	$s0, $a2, 0
	div.w	$t7, $t7, $fp
	slti	$s1, $t7, 1
	slt	$s2, $t7, $s0
	maskeqz	$t7, $t7, $s2
	masknez	$s2, $s0, $s2
	or	$t7, $t7, $s2
	masknez	$t7, $t7, $s1
	maskeqz	$s1, $a7, $s1
	or	$t7, $s1, $t7
	sub.w	$t6, $t6, $t8
	div.w	$t6, $t6, $fp
	slt	$t8, $s0, $t6
	slt	$fp, $a7, $t6
	maskeqz	$t6, $t6, $fp
	masknez	$fp, $a7, $fp
	or	$t6, $t6, $fp
	masknez	$t6, $t6, $t8
	maskeqz	$t8, $s0, $t8
	or	$t6, $t8, $t6
	move	$t8, $t2
	bne	$t7, $t6, .LBB0_16
# %bb.25:                               #   in Loop: Header=BB0_18 Depth=1
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a5, $t5
	alsl.d	$t8, $t7, $t5, 3
	b	.LBB0_16
.Lfunc_end0:
	.size	rebin, .Lfunc_end0-rebin
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
