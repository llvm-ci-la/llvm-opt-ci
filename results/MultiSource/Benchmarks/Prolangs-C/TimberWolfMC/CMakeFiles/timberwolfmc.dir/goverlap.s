	.file	"goverlap.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function goverlap
.LCPI0_0:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
.LCPI0_1:
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	6                               # 0x6
.LCPI0_2:
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	5                               # 0x5
	.text
	.globl	goverlap
	.p2align	5
	.type	goverlap,@function
goverlap:                               # @goverlap
# %bb.0:
	pcalau12i	$a7, %got_pc_hi20(cellarray)
	ld.d	$a7, $a7, %got_pc_lo12(cellarray)
	ld.d	$a7, $a7, 0
	slli.d	$t0, $a0, 3
	ldx.d	$t0, $a7, $t0
	alsl.d	$a3, $a3, $t0, 3
	ld.d	$t1, $a3, 152
	vld	$vr0, $t1, 56
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vshuf4i.w	$vr1, $vr1, 5
	vadd.w	$vr0, $vr0, $vr1
	pcalau12i	$a3, %got_pc_hi20(numcells)
	ld.d	$a3, $a3, %got_pc_lo12(numcells)
	ld.w	$t2, $a3, 0
	blt	$t2, $a0, .LBB0_2
# %bb.1:
	vld	$vr1, $t1, 40
	vadd.w	$vr2, $vr0, $vr1
	vsub.w	$vr1, $vr0, $vr1
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_0)
	vshuf.w	$vr0, $vr2, $vr1
.LBB0_2:
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
	pcalau12i	$a3, %got_pc_hi20(binOffsetX)
	ld.d	$a3, $a3, %got_pc_lo12(binOffsetX)
	ld.w	$a3, $a3, 0
	pcalau12i	$t3, %got_pc_hi20(binWidthX)
	ld.d	$t3, $t3, %got_pc_lo12(binWidthX)
	ld.w	$t3, $t3, 0
	pcalau12i	$t4, %got_pc_hi20(numBinsX)
	ld.d	$t4, $t4, %got_pc_lo12(numBinsX)
	ld.w	$t4, $t4, 0
	pcalau12i	$t5, %got_pc_hi20(binOffsetY)
	ld.d	$t5, $t5, %got_pc_lo12(binOffsetY)
	ld.w	$t5, $t5, 0
	pcalau12i	$t6, %got_pc_hi20(binWidthY)
	ld.d	$t6, $t6, %got_pc_lo12(binWidthY)
	ld.w	$t6, $t6, 0
	pcalau12i	$t7, %got_pc_hi20(numBinsY)
	ld.d	$t7, $t7, %got_pc_lo12(numBinsY)
	ld.w	$t7, $t7, 0
	vshuf4i.w	$vr1, $vr0, 2
	vinsgr2vr.w	$vr2, $t5, 0
	vinsgr2vr.w	$vr2, $a3, 1
	vsub.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a3, $vr1, 1
	div.w	$a3, $a3, $t3
	vpickve2gr.w	$t5, $vr1, 0
	div.w	$t5, $t5, $t6
	vinsgr2vr.w	$vr1, $t5, 0
	vinsgr2vr.w	$vr1, $a3, 1
	vslti.w	$vr3, $vr1, 1
	vrepli.w	$vr4, 1
	vinsgr2vr.w	$vr5, $t7, 0
	vinsgr2vr.w	$vr5, $t4, 1
	vmin.w	$vr1, $vr1, $vr5
	vbitsel.v	$vr3, $vr1, $vr4, $vr3
	vori.b	$vr1, $vr0, 0
	vextrins.w	$vr1, $vr0, 3
	vsub.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a3, $vr1, 1
	div.w	$a3, $a3, $t3
	vpickve2gr.w	$t3, $vr1, 0
	div.w	$t3, $t3, $t6
	vinsgr2vr.w	$vr1, $t3, 0
	vinsgr2vr.w	$vr1, $a3, 1
	vslt.w	$vr2, $vr5, $vr1
	vmaxi.w	$vr1, $vr1, 1
	vbitsel.v	$vr1, $vr1, $vr5, $vr2
	vpickve2gr.w	$t3, $vr1, 1
	vseq.w	$vr2, $vr3, $vr1
	vshuf4i.w	$vr4, $vr2, 16
	vpickve2gr.d	$a3, $vr2, 0
	vpickve2gr.d	$t4, $vr4, 1
	and	$a3, $t4, $a3
	andi	$a3, $a3, 1
	vpickve2gr.w	$t4, $vr3, 1
	st.d	$t4, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$t5, $t4, $a3
	vpickve2gr.w	$t4, $vr3, 0
	maskeqz	$a3, $t4, $a3
	pcalau12i	$t6, %got_pc_hi20(binX)
	ld.d	$t6, $t6, %got_pc_lo12(binX)
	st.w	$t5, $t6, 0
	pcalau12i	$t5, %got_pc_hi20(binY)
	ld.d	$t5, $t5, %got_pc_lo12(binY)
	st.w	$a3, $t5, 0
	bltz	$t3, .LBB0_47
# %bb.3:                                # %.lr.ph316
	vpickve2gr.w	$t6, $vr1, 0
	bltz	$t6, .LBB0_47
# %bb.4:                                # %.lr.ph316.split.preheader
	vpickve2gr.w	$t5, $vr0, 3
	pcalau12i	$a3, %got_pc_hi20(blockarray)
	ld.d	$a3, $a3, %got_pc_lo12(blockarray)
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(lapFactor)
	ld.d	$a3, $a3, %got_pc_lo12(lapFactor)
	fld.d	$fa1, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(offset)
	ld.d	$t8, $a3, %got_pc_lo12(offset)
	move	$t7, $zero
	move	$a3, $zero
	ld.w	$t8, $t8, 0
	st.d	$t8, $sp, 32                    # 8-byte Folded Spill
	addi.d	$t6, $t6, 1
	addi.d	$t3, $t3, 1
	bstrpick.d	$t3, $t3, 31, 0
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$s0, $t6, 31, 0
	vpickve2gr.w	$s1, $vr0, 0
	vpickve2gr.w	$s2, $vr0, 1
	vpickve2gr.w	$s3, $vr0, 2
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr2, $a2, 1
	ori	$a1, $zero, 1
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %..loopexit278_crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$t7, $t7, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	beq	$t7, $a2, .LBB0_48
.LBB0_6:                                # %.lr.ph316.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #           Child Loop BB0_43 Depth 5
                                        #         Child Loop BB0_31 Depth 4
                                        #           Child Loop BB0_35 Depth 5
	beqz	$t7, .LBB0_8
# %bb.7:                                # %.lr.ph316.split
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	blt	$t7, $a2, .LBB0_5
.LBB0_8:                                # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $zero
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$s4, $t7, $t3, 3
	sltui	$s5, $t7, 1
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.loopexit277
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$a2, $a2, 1
	beq	$a2, $s0, .LBB0_5
.LBB0_10:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #           Child Loop BB0_43 Depth 5
                                        #         Child Loop BB0_31 Depth 4
                                        #           Child Loop BB0_35 Depth 5
	or	$t3, $a2, $t7
	slli.d	$t3, $t3, 32
	beqz	$t3, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	slt	$t3, $a2, $t4
	or	$t3, $s5, $t3
	bnez	$t3, .LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$t3, $s4, 0
	slli.d	$t6, $a2, 3
	ldx.d	$s6, $t3, $t6
	ld.w	$t3, $s6, 0
	blez	$t3, .LBB0_9
# %bb.13:                               # %.lr.ph304.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$t3, $t3, 1
	bstrpick.d	$s7, $t3, 31, 0
	ori	$s8, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=3
	beqz	$a5, .LBB0_19
	.p2align	4, , 16
.LBB0_15:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	addi.d	$s8, $s8, 1
	beq	$s8, $s7, .LBB0_9
.LBB0_16:                               # %.lr.ph304
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_39 Depth 4
                                        #           Child Loop BB0_43 Depth 5
                                        #         Child Loop BB0_31 Depth 4
                                        #           Child Loop BB0_35 Depth 5
	slli.d	$t3, $s8, 2
	ldx.w	$t3, $s6, $t3
	beq	$t3, $a0, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=3
	slli.d	$t6, $t3, 3
	ldx.d	$t6, $a7, $t6
	beq	$t3, $a4, .LBB0_14
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$fp, $t6, 56
	alsl.d	$fp, $fp, $t6, 3
	addi.d	$fp, $fp, 152
	move	$ra, $t6
	b	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=3
	alsl.d	$fp, $a6, $t6, 3
	addi.d	$fp, $fp, 152
	move	$ra, $t0
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$fp, $fp, 0
	ld.d	$ra, $ra, 12
	vld	$vr4, $fp, 56
	vinsgr2vr.d	$vr3, $ra, 0
	vreplvei.d	$vr5, $vr3, 0
	vshuf4i.w	$vr4, $vr4, 141
	vadd.w	$vr4, $vr4, $vr5
	blt	$t2, $t3, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=3
	vld	$vr5, $fp, 40
	vshuf4i.w	$vr5, $vr5, 141
	vsub.w	$vr6, $vr4, $vr5
	vadd.w	$vr4, $vr4, $vr5
	vshuf4i.d	$vr4, $vr6, 12
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=3
	pcalau12i	$ra, %pc_hi20(.LCPI0_1)
	vld	$vr5, $ra, %pc_lo12(.LCPI0_1)
	pcalau12i	$ra, %pc_hi20(.LCPI0_2)
	vld	$vr6, $ra, %pc_lo12(.LCPI0_2)
	vshuf.w	$vr5, $vr0, $vr4
	vshuf.w	$vr6, $vr4, $vr0
	vsle.w	$vr5, $vr6, $vr5
	vmskltz.w	$vr5, $vr5
	vpickve2gr.hu	$ra, $vr5, 0
	bnez	$ra, .LBB0_15
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$ra, $t0, 60
	bne	$ra, $a1, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t6, $t6, 60
	bne	$t6, $a1, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_16 Depth=3
	vpickve2gr.w	$t3, $vr4, 2
	slt	$t6, $t3, $s1
	masknez	$t3, $t3, $t6
	maskeqz	$t6, $s1, $t6
	or	$t3, $t6, $t3
	vpickve2gr.w	$t6, $vr4, 0
	slt	$fp, $s2, $t6
	masknez	$t6, $t6, $fp
	maskeqz	$fp, $s2, $fp
	or	$t6, $fp, $t6
	vpickve2gr.w	$fp, $vr4, 3
	slt	$ra, $fp, $s3
	masknez	$fp, $fp, $ra
	maskeqz	$ra, $s3, $ra
	or	$fp, $ra, $fp
	vpickve2gr.w	$ra, $vr4, 1
	slt	$t8, $t5, $ra
	masknez	$ra, $ra, $t8
	maskeqz	$t8, $t5, $t8
	or	$t8, $t8, $ra
	sub.d	$t8, $t8, $fp
	sub.d	$t3, $t6, $t3
	mul.d	$t3, $t8, $t3
	b	.LBB0_46
.LBB0_26:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$ra, $t1, 0
	beqz	$ra, .LBB0_15
# %bb.27:                               # %.lr.ph287
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t6, $fp, 0
	beqz	$t6, .LBB0_15
# %bb.28:                               # %.lr.ph287.split
                                        #   in Loop: Header=BB0_16 Depth=3
	bge	$t2, $t3, .LBB0_37
# %bb.29:                               # %.lr.ph287.split.split.us.preheader
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$t3, $zero
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %..loopexit_crit_edge.split.us.us
                                        #   in Loop: Header=BB0_31 Depth=4
	ld.d	$ra, $ra, 0
	beqz	$ra, .LBB0_45
.LBB0_31:                               # %.lr.ph287.split.split.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_35 Depth 5
	vld	$vr5, $ra, 56
	vshuf4i.w	$vr4, $vr5, 8
	vadd.w	$vr4, $vr4, $vr2
	vshuf4i.w	$vr5, $vr5, 13
	vadd.w	$vr5, $vr5, $vr2
	blt	$t2, $a0, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=4
	vld	$vr6, $ra, 40
	vshuf4i.w	$vr7, $vr6, 8
	vsub.w	$vr4, $vr4, $vr7
	vshuf4i.w	$vr6, $vr6, 13
	vadd.w	$vr5, $vr6, $vr5
.LBB0_33:                               # %.lr.ph.us
                                        #   in Loop: Header=BB0_31 Depth=4
	move	$fp, $t6
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_35 Depth=5
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB0_30
.LBB0_35:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_31 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr7, $fp, 56
	vshuf4i.w	$vr6, $vr7, 8
	vadd.w	$vr6, $vr6, $vr3
	vshuf4i.w	$vr7, $vr7, 13
	vadd.w	$vr7, $vr7, $vr3
	vilvl.w	$vr8, $vr4, $vr6
	vilvl.w	$vr9, $vr7, $vr5
	vsle.w	$vr8, $vr9, $vr8
	vmskltz.w	$vr8, $vr8
	vpickve2gr.hu	$t8, $vr8, 0
	bnez	$t8, .LBB0_34
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=5
	vmax.w	$vr6, $vr4, $vr6
	vmin.w	$vr7, $vr5, $vr7
	vsub.w	$vr6, $vr7, $vr6
	vreplvei.w	$vr7, $vr6, 1
	vmul.w	$vr6, $vr7, $vr6
	vpickve2gr.w	$t8, $vr6, 0
	add.w	$t3, $t8, $t3
	b	.LBB0_34
.LBB0_37:                               # %.lr.ph287.split.split.preheader
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$t3, $zero
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %..loopexit_crit_edge.split
                                        #   in Loop: Header=BB0_39 Depth=4
	ld.d	$ra, $ra, 0
	beqz	$ra, .LBB0_45
.LBB0_39:                               # %.lr.ph287.split.split
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_43 Depth 5
	vld	$vr5, $ra, 56
	vshuf4i.w	$vr4, $vr5, 8
	vadd.w	$vr4, $vr4, $vr2
	vshuf4i.w	$vr5, $vr5, 13
	vadd.w	$vr5, $vr5, $vr2
	blt	$t2, $a0, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=4
	vld	$vr6, $ra, 40
	vshuf4i.w	$vr7, $vr6, 8
	vsub.w	$vr4, $vr4, $vr7
	vshuf4i.w	$vr6, $vr6, 13
	vadd.w	$vr5, $vr6, $vr5
.LBB0_41:                               # %.lr.ph
                                        #   in Loop: Header=BB0_39 Depth=4
	move	$fp, $t6
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               #   in Loop: Header=BB0_43 Depth=5
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB0_38
.LBB0_43:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_39 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr6, $fp, 56
	vshuf4i.w	$vr7, $vr6, 8
	vld	$vr8, $fp, 40
	vadd.w	$vr7, $vr7, $vr3
	vshuf4i.w	$vr6, $vr6, 13
	vadd.w	$vr9, $vr6, $vr3
	vshuf4i.w	$vr6, $vr8, 8
	vsub.w	$vr6, $vr7, $vr6
	vshuf4i.w	$vr7, $vr8, 13
	vadd.w	$vr7, $vr7, $vr9
	vilvl.w	$vr8, $vr4, $vr6
	vilvl.w	$vr9, $vr7, $vr5
	vsle.w	$vr8, $vr9, $vr8
	vmskltz.w	$vr8, $vr8
	vpickve2gr.hu	$t8, $vr8, 0
	bnez	$t8, .LBB0_42
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=5
	vmax.w	$vr6, $vr4, $vr6
	vmin.w	$vr7, $vr5, $vr7
	vsub.w	$vr6, $vr7, $vr6
	vreplvei.w	$vr7, $vr6, 1
	vmul.w	$vr6, $vr7, $vr6
	vpickve2gr.w	$t8, $vr6, 0
	add.w	$t3, $t8, $t3
	b	.LBB0_42
.LBB0_45:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=3
	beqz	$t3, .LBB0_15
.LBB0_46:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	add.d	$t3, $t6, $t3
	movgr2fr.w	$fa3, $t3
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t3, $fa3
	add.w	$a3, $a3, $t3
	b	.LBB0_15
.LBB0_47:
	move	$a3, $zero
.LBB0_48:                               # %._crit_edge317
	move	$a0, $a3
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
	.size	goverlap, .Lfunc_end0-goverlap
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
