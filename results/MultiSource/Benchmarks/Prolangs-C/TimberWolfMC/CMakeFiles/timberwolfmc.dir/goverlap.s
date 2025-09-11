	.file	"goverlap.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function goverlap
.LCPI0_0:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
	.text
	.globl	goverlap
	.p2align	5
	.type	goverlap,@function
goverlap:                               # @goverlap
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(cellarray)
	ld.d	$a5, $a5, %got_pc_lo12(cellarray)
	ld.d	$a7, $a5, 0
	slli.d	$a5, $a0, 3
	ldx.d	$a5, $a7, $a5
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a3, $a3, $a5, 3
	ld.d	$a5, $a3, 152
	vld	$vr1, $a5, 56
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a2, 1
	vshuf4i.w	$vr0, $vr0, 80
	vadd.w	$vr2, $vr1, $vr0
	pcalau12i	$a1, %got_pc_hi20(numcells)
	ld.d	$a1, $a1, %got_pc_lo12(numcells)
	ld.w	$a2, $a1, 0
	pcalau12i	$t1, %pc_hi20(.LCPI0_0)
	blt	$a2, $a0, .LBB0_2
# %bb.1:
	vld	$vr1, $a5, 40
	vadd.w	$vr3, $vr2, $vr1
	vsub.w	$vr1, $vr2, $vr1
	vld	$vr2, $t1, %pc_lo12(.LCPI0_0)
	vshuf.w	$vr2, $vr3, $vr1
.LBB0_2:
	pcalau12i	$a1, %got_pc_hi20(binOffsetX)
	ld.d	$a1, $a1, %got_pc_lo12(binOffsetX)
	ld.w	$a1, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(binWidthX)
	ld.d	$a3, $a3, %got_pc_lo12(binWidthX)
	ld.w	$a3, $a3, 0
	pcalau12i	$a6, %got_pc_hi20(numBinsX)
	ld.d	$a6, $a6, %got_pc_lo12(numBinsX)
	ld.w	$a6, $a6, 0
	pcalau12i	$t0, %got_pc_hi20(binOffsetY)
	ld.d	$t0, $t0, %got_pc_lo12(binOffsetY)
	ld.w	$t0, $t0, 0
	pcalau12i	$t2, %got_pc_hi20(binWidthY)
	ld.d	$t2, $t2, %got_pc_lo12(binWidthY)
	ld.w	$t2, $t2, 0
	pcalau12i	$t3, %got_pc_hi20(numBinsY)
	ld.d	$t3, $t3, %got_pc_lo12(numBinsY)
	ld.w	$t3, $t3, 0
	vshuf4i.w	$vr1, $vr2, 2
	vinsgr2vr.w	$vr3, $t0, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vsub.w	$vr1, $vr1, $vr3
	vpickve2gr.w	$a1, $vr1, 1
	div.w	$a1, $a1, $a3
	vpickve2gr.w	$t0, $vr1, 0
	div.w	$t0, $t0, $t2
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vslti.w	$vr4, $vr1, 1
	vrepli.w	$vr5, 1
	vinsgr2vr.w	$vr6, $t3, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vmin.w	$vr1, $vr1, $vr6
	vbitsel.v	$vr4, $vr1, $vr5, $vr4
	vori.b	$vr1, $vr2, 0
	vextrins.w	$vr1, $vr2, 3
	vsub.w	$vr1, $vr1, $vr3
	vpickve2gr.w	$a1, $vr1, 1
	div.w	$a1, $a1, $a3
	vpickve2gr.w	$a3, $vr1, 0
	div.w	$a3, $a3, $t2
	vinsgr2vr.w	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vslt.w	$vr3, $vr6, $vr1
	vmaxi.w	$vr1, $vr1, 1
	vbitsel.v	$vr1, $vr1, $vr6, $vr3
	vpickve2gr.w	$a3, $vr1, 1
	vseq.w	$vr3, $vr4, $vr1
	vshuf4i.w	$vr5, $vr3, 16
	vpickve2gr.d	$a1, $vr3, 0
	vpickve2gr.d	$a6, $vr5, 1
	and	$a1, $a6, $a1
	andi	$a1, $a1, 1
	vpickve2gr.w	$a6, $vr4, 1
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a6, $a6, $a1
	vpickve2gr.w	$t0, $vr4, 0
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	maskeqz	$a1, $t0, $a1
	pcalau12i	$t0, %got_pc_hi20(binX)
	ld.d	$t0, $t0, %got_pc_lo12(binX)
	st.w	$a6, $t0, 0
	pcalau12i	$a6, %got_pc_hi20(binY)
	ld.d	$a6, $a6, %got_pc_lo12(binY)
	st.w	$a1, $a6, 0
	bltz	$a3, .LBB0_57
# %bb.3:                                # %.lr.ph316
	vpickve2gr.w	$a6, $vr1, 0
	bltz	$a6, .LBB0_57
# %bb.4:                                # %.lr.ph316.split.preheader
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	vpickve2gr.w	$t4, $vr2, 3
	pcalau12i	$a1, %got_pc_hi20(blockarray)
	ld.d	$a1, $a1, %got_pc_lo12(blockarray)
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(lapFactor)
	ld.d	$a1, $a1, %got_pc_lo12(lapFactor)
	fld.d	$fa1, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	move	$a5, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $a6, 1
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	vpickve2gr.w	$s0, $vr2, 0
	vpickve2gr.w	$s1, $vr2, 1
	vpickve2gr.w	$s2, $vr2, 2
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %..loopexit278_crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a5, $a5, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a5, $a1, .LBB0_58
.LBB0_6:                                # %.lr.ph316.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_45 Depth 4
                                        #           Child Loop BB0_49 Depth 5
                                        #         Child Loop BB0_34 Depth 4
                                        #           Child Loop BB0_38 Depth 5
	beqz	$a5, .LBB0_8
# %bb.7:                                # %.lr.ph316.split
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	blt	$a5, $a1, .LBB0_5
.LBB0_8:                                # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s4, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	sltui	$a1, $a5, 1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.loopexit277
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$s4, $s4, 1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$s4, $a1, .LBB0_5
.LBB0_10:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_45 Depth 4
                                        #           Child Loop BB0_49 Depth 5
                                        #         Child Loop BB0_34 Depth 4
                                        #           Child Loop BB0_38 Depth 5
	or	$a1, $s4, $a5
	slli.d	$a1, $a1, 32
	beqz	$a1, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	slt	$a1, $s4, $a1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	or	$a1, $a3, $a1
	bnez	$a1, .LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a3, $s4, 3
	ldx.d	$s7, $a1, $a3
	ld.w	$a1, $s7, 0
	blez	$a1, .LBB0_9
# %bb.13:                               # %.lr.ph304.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$a1, $a1, 1
	bstrpick.d	$s8, $a1, 31, 0
	ori	$ra, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_19
	.p2align	4, , 16
.LBB0_15:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	addi.d	$ra, $ra, 1
	beq	$ra, $s8, .LBB0_9
.LBB0_16:                               # %.lr.ph304
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_45 Depth 4
                                        #           Child Loop BB0_49 Depth 5
                                        #         Child Loop BB0_34 Depth 4
                                        #           Child Loop BB0_38 Depth 5
	slli.d	$a1, $ra, 2
	ldx.w	$t3, $s7, $a1
	beq	$t3, $a0, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=3
	slli.d	$a1, $t3, 3
	ldx.d	$t7, $a7, $a1
	beq	$t3, $a4, .LBB0_14
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a1, $t7, 56
	alsl.d	$a1, $a1, $t7, 3
	addi.d	$a1, $a1, 152
	move	$a6, $t7
	b	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $t7, 3
	addi.d	$a1, $a1, 152
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $a1, 0
	ld.w	$t5, $a6, 16
	ld.w	$t2, $a6, 12
	ld.w	$a1, $a3, 56
	ld.w	$a6, $a3, 60
	ld.w	$t0, $a3, 64
	ld.w	$t6, $a3, 68
	add.w	$s5, $a1, $t2
	add.w	$fp, $a6, $t2
	add.w	$t8, $t0, $t5
	add.w	$a6, $t6, $t5
	blt	$a2, $t3, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a1, $a3, 40
	ld.w	$t0, $a3, 44
	ld.w	$t6, $a3, 48
	ld.w	$s3, $a3, 52
	sub.w	$s5, $s5, $a1
	add.w	$fp, $t0, $fp
	sub.w	$t8, $t8, $t6
	add.w	$a6, $s3, $a6
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$s5, $s1, .LBB0_15
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$s0, $fp, .LBB0_15
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$t8, $t4, .LBB0_15
# %bb.25:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$s2, $a6, .LBB0_15
# %bb.26:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 60
	ori	$a5, $zero, 1
	bne	$a1, $a5, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a1, $t7, 60
	ori	$a5, $zero, 1
	bne	$a1, $a5, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_16 Depth=3
	slt	$a1, $s5, $s0
	masknez	$a3, $s5, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a3
	slt	$a3, $s1, $fp
	masknez	$t0, $fp, $a3
	maskeqz	$a3, $s1, $a3
	or	$a3, $a3, $t0
	slt	$t0, $t8, $s2
	masknez	$t2, $t8, $t0
	maskeqz	$t0, $s2, $t0
	or	$t0, $t0, $t2
	slt	$t2, $t4, $a6
	masknez	$a6, $a6, $t2
	maskeqz	$t2, $t4, $t2
	or	$a6, $t2, $a6
	sub.d	$a6, $a6, $t0
	sub.d	$a1, $a3, $a1
	mul.d	$a1, $a6, $a1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	b	.LBB0_56
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t8, $a1, 0
	beqz	$t8, .LBB0_15
# %bb.30:                               # %.lr.ph287
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $a3, 0
	beqz	$a3, .LBB0_15
# %bb.31:                               # %.lr.ph287.split
                                        #   in Loop: Header=BB0_16 Depth=3
	bge	$a2, $t3, .LBB0_43
# %bb.32:                               # %.lr.ph287.split.split.us.preheader
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$t3, $zero
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %..loopexit_crit_edge.split.us.us
                                        #   in Loop: Header=BB0_34 Depth=4
	ld.d	$t8, $t8, 0
	beqz	$t8, .LBB0_54
.LBB0_34:                               # %.lr.ph287.split.split.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_38 Depth 5
	vld	$vr2, $t8, 56
	vadd.w	$vr2, $vr2, $vr0
	blt	$a2, $a0, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=4
	vld	$vr3, $t8, 40
	vadd.w	$vr4, $vr2, $vr3
	vsub.w	$vr3, $vr2, $vr3
	vld	$vr2, $t1, %pc_lo12(.LCPI0_0)
	vshuf.w	$vr2, $vr4, $vr3
.LBB0_36:                               # %.lr.ph.us
                                        #   in Loop: Header=BB0_34 Depth=4
	vpickve2gr.w	$a6, $vr2, 0
	vpickve2gr.w	$t7, $vr2, 1
	vpickve2gr.w	$fp, $vr2, 2
	vpickve2gr.w	$s5, $vr2, 3
	move	$s6, $a3
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_37:                               #   in Loop: Header=BB0_38 Depth=5
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB0_33
.LBB0_38:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_34 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a1, $s6, 56
	add.w	$a1, $a1, $t2
	bge	$a1, $t7, .LBB0_37
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=5
	ld.w	$t0, $s6, 60
	add.w	$t0, $t0, $t2
	bge	$a6, $t0, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=5
	ld.w	$t6, $s6, 64
	add.w	$t6, $t6, $t5
	bge	$t6, $s5, .LBB0_37
# %bb.41:                               #   in Loop: Header=BB0_38 Depth=5
	ld.w	$s3, $s6, 68
	add.w	$s3, $s3, $t5
	bge	$fp, $s3, .LBB0_37
# %bb.42:                               #   in Loop: Header=BB0_38 Depth=5
	slt	$a5, $a1, $a6
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a6, $a5
	or	$a1, $a5, $a1
	slt	$a5, $t7, $t0
	masknez	$t0, $t0, $a5
	maskeqz	$a5, $t7, $a5
	or	$a5, $a5, $t0
	slt	$t0, $t6, $fp
	masknez	$t6, $t6, $t0
	maskeqz	$t0, $fp, $t0
	or	$t0, $t0, $t6
	slt	$t6, $s5, $s3
	masknez	$s3, $s3, $t6
	maskeqz	$t6, $s5, $t6
	or	$t6, $t6, $s3
	sub.d	$t0, $t6, $t0
	sub.d	$a1, $a5, $a1
	mul.d	$a1, $t0, $a1
	add.w	$t3, $a1, $t3
	b	.LBB0_37
.LBB0_43:                               # %.lr.ph287.split.split.preheader
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$t3, $zero
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_44:                               # %..loopexit_crit_edge.split
                                        #   in Loop: Header=BB0_45 Depth=4
	ld.d	$t8, $t8, 0
	beqz	$t8, .LBB0_54
.LBB0_45:                               # %.lr.ph287.split.split
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_49 Depth 5
	vld	$vr2, $t8, 56
	vadd.w	$vr2, $vr2, $vr0
	blt	$a2, $a0, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=4
	vld	$vr3, $t8, 40
	vadd.w	$vr4, $vr2, $vr3
	vsub.w	$vr3, $vr2, $vr3
	vld	$vr2, $t1, %pc_lo12(.LCPI0_0)
	vshuf.w	$vr2, $vr4, $vr3
.LBB0_47:                               # %.lr.ph
                                        #   in Loop: Header=BB0_45 Depth=4
	vpickve2gr.w	$t7, $vr2, 0
	vpickve2gr.w	$a6, $vr2, 1
	vpickve2gr.w	$s6, $vr2, 2
	vpickve2gr.w	$fp, $vr2, 3
	move	$s5, $a3
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_48:                               #   in Loop: Header=BB0_49 Depth=5
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB0_44
.LBB0_49:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_45 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a1, $s5, 56
	ld.w	$a5, $s5, 40
	add.d	$a1, $a1, $t2
	sub.w	$s3, $a1, $a5
	bge	$s3, $a6, .LBB0_48
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=5
	ld.w	$a1, $s5, 60
	ld.w	$a5, $s5, 44
	add.d	$a1, $a1, $t2
	add.w	$a1, $a5, $a1
	bge	$t7, $a1, .LBB0_48
# %bb.51:                               #   in Loop: Header=BB0_49 Depth=5
	ld.w	$a5, $s5, 64
	ld.w	$t0, $s5, 48
	add.d	$a5, $a5, $t5
	sub.w	$t6, $a5, $t0
	bge	$t6, $fp, .LBB0_48
# %bb.52:                               #   in Loop: Header=BB0_49 Depth=5
	ld.w	$a5, $s5, 68
	ld.w	$t0, $s5, 52
	add.d	$a5, $a5, $t5
	add.w	$t0, $t0, $a5
	bge	$s6, $t0, .LBB0_48
# %bb.53:                               #   in Loop: Header=BB0_49 Depth=5
	slt	$a5, $s3, $t7
	masknez	$s3, $s3, $a5
	maskeqz	$a5, $t7, $a5
	or	$a5, $a5, $s3
	slt	$s3, $a6, $a1
	masknez	$a1, $a1, $s3
	maskeqz	$s3, $a6, $s3
	or	$a1, $s3, $a1
	slt	$s3, $t6, $s6
	masknez	$t6, $t6, $s3
	maskeqz	$s3, $s6, $s3
	or	$t6, $s3, $t6
	slt	$s3, $fp, $t0
	masknez	$t0, $t0, $s3
	maskeqz	$s3, $fp, $s3
	or	$t0, $s3, $t0
	sub.d	$t0, $t0, $t6
	sub.d	$a1, $a1, $a5
	mul.d	$a1, $t0, $a1
	add.w	$t3, $a1, $t3
	b	.LBB0_48
.LBB0_54:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=3
	beqz	$t3, .LBB0_15
# %bb.55:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a1, $t3
.LBB0_56:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a1, $fa2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $a3, $a1
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	b	.LBB0_15
.LBB0_57:
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
.LBB0_58:                               # %._crit_edge317
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end0:
	.size	goverlap, .Lfunc_end0-goverlap
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
