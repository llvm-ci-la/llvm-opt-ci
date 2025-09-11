	.file	"goverlapf.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function goverlapf
.LCPI0_0:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
	.text
	.globl	goverlapf
	.p2align	5
	.type	goverlapf,@function
goverlapf:                              # @goverlapf
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	move	$s1, $a4
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$s3, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $s3, 0
	slli.d	$a4, $s2, 3
	ldx.d	$t7, $a0, $a4
	alsl.d	$a0, $a3, $t7, 3
	ld.d	$s4, $a0, 152
	vld	$vr0, $s4, 56
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vshuf4i.w	$vr1, $vr1, 80
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vadd.w	$vr0, $vr0, $vr1
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s5, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $s5, 0
	pcalau12i	$t8, %pc_hi20(.LCPI0_0)
	blt	$a0, $s2, .LBB0_2
# %bb.1:
	vld	$vr1, $s4, 40
	vadd.w	$vr2, $vr0, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vld	$vr0, $t8, %pc_lo12(.LCPI0_0)
	vshuf.w	$vr0, $vr2, $vr1
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(binOffsetX)
	ld.d	$a0, $a0, %got_pc_lo12(binOffsetX)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(binWidthX)
	ld.d	$a1, $a1, %got_pc_lo12(binWidthX)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(numBinsX)
	ld.d	$a2, $a2, %got_pc_lo12(numBinsX)
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(binOffsetY)
	ld.d	$a3, $a3, %got_pc_lo12(binOffsetY)
	ld.w	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(binWidthY)
	ld.d	$a4, $a4, %got_pc_lo12(binWidthY)
	ld.w	$a4, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(numBinsY)
	ld.d	$a6, $a6, %got_pc_lo12(numBinsY)
	ld.w	$a6, $a6, 0
	vshuf4i.w	$vr1, $vr0, 2
	vinsgr2vr.w	$vr2, $a3, 0
	vinsgr2vr.w	$vr2, $a0, 1
	vsub.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a0, $vr1, 1
	div.w	$a0, $a0, $a1
	vpickve2gr.w	$a3, $vr1, 0
	div.w	$a3, $a3, $a4
	vinsgr2vr.w	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $a0, 1
	vslti.w	$vr3, $vr1, 1
	vrepli.w	$vr4, 1
	vinsgr2vr.w	$vr5, $a6, 0
	vinsgr2vr.w	$vr5, $a2, 1
	vmin.w	$vr1, $vr1, $vr5
	vbitsel.v	$vr3, $vr1, $vr4, $vr3
	vori.b	$vr1, $vr0, 0
	vextrins.w	$vr1, $vr0, 3
	vsub.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a0, $vr1, 1
	div.w	$a0, $a0, $a1
	vpickve2gr.w	$a1, $vr1, 0
	div.w	$a1, $a1, $a4
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a0, 1
	vslt.w	$vr2, $vr5, $vr1
	vmaxi.w	$vr1, $vr1, 1
	vbitsel.v	$vr1, $vr1, $vr5, $vr2
	vpickve2gr.w	$a0, $vr1, 1
	vseq.w	$vr2, $vr3, $vr1
	vshuf4i.w	$vr4, $vr2, 16
	vpickve2gr.d	$a1, $vr2, 0
	vpickve2gr.d	$a2, $vr4, 1
	and	$a1, $a2, $a1
	andi	$a1, $a1, 1
	vpickve2gr.w	$a2, $vr3, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a2, $a2, $a1
	vpickve2gr.w	$a3, $vr3, 0
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	pcalau12i	$a3, %got_pc_hi20(binX)
	ld.d	$a3, $a3, %got_pc_lo12(binX)
	st.w	$a2, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(binY)
	ld.d	$a2, $a2, %got_pc_lo12(binY)
	st.w	$a1, $a2, 0
	bltz	$a0, .LBB0_57
# %bb.3:                                # %.lr.ph330
	vpickve2gr.w	$a1, $vr1, 0
	bltz	$a1, .LBB0_57
# %bb.4:                                # %.lr.ph330.split.preheader
	vpickve2gr.w	$s8, $vr0, 3
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	vpickve2gr.w	$fp, $vr0, 1
	vpickve2gr.w	$s6, $vr0, 0
	vpickve2gr.w	$ra, $vr0, 2
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	ld.d	$a0, $a0, %got_pc_lo12(blockarray)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $zero
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$t7, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	st.d	$t8, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %..loopexit292_crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_58
.LBB0_6:                                # %.lr.ph330.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_45 Depth 4
                                        #           Child Loop BB0_49 Depth 5
                                        #         Child Loop BB0_34 Depth 4
                                        #           Child Loop BB0_38 Depth 5
	beqz	$a1, .LBB0_8
# %bb.7:                                # %.lr.ph330.split
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_5
.LBB0_8:                                # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $zero
	sltui	$a0, $a1, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.loopexit291
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB0_5
.LBB0_10:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_45 Depth 4
                                        #           Child Loop BB0_49 Depth 5
                                        #         Child Loop BB0_34 Depth 4
                                        #           Child Loop BB0_38 Depth 5
	or	$a0, $a2, $a1
	slli.d	$a0, $a0, 32
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	slt	$a0, $a2, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	bnez	$a0, .LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ldx.d	$s7, $a0, $a1
	ld.w	$a0, $s7, 0
	blez	$a0, .LBB0_9
# %bb.13:                               # %.lr.ph318.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=3
	beqz	$a5, .LBB0_19
	.p2align	4, , 16
.LBB0_15:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a1, $s7, 0
	addi.d	$a0, $s0, 1
	bge	$s0, $a1, .LBB0_9
.LBB0_16:                               # %.lr.ph318
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_45 Depth 4
                                        #           Child Loop BB0_49 Depth 5
                                        #         Child Loop BB0_34 Depth 4
                                        #           Child Loop BB0_38 Depth 5
	move	$s0, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a3, $s7, $a0
	beq	$a3, $s2, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a3, 3
	ldx.d	$a4, $a0, $a1
	beq	$a3, $s1, .LBB0_14
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a0, $a4, 56
	alsl.d	$a0, $a0, $a4, 3
	addi.d	$a0, $a0, 152
	move	$a1, $a4
	b	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a4, 3
	addi.d	$a0, $a0, 152
	move	$a1, $t7
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t6, $a0, 0
	ld.w	$a0, $a1, 16
	ld.w	$a1, $a1, 12
	ld.w	$a6, $t6, 56
	ld.w	$a7, $t6, 60
	ld.w	$t2, $t6, 64
	ld.w	$t3, $t6, 68
	ld.w	$a2, $s5, 0
	add.w	$t1, $a6, $a1
	add.w	$t0, $a7, $a1
	add.w	$a7, $t2, $a0
	add.w	$a6, $t3, $a0
	blt	$a2, $a3, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t2, $t6, 40
	ld.w	$t3, $t6, 44
	ld.w	$t4, $t6, 48
	ld.w	$t5, $t6, 52
	sub.w	$t1, $t1, $t2
	add.w	$t0, $t3, $t0
	sub.w	$a7, $a7, $t4
	add.w	$a6, $t5, $a6
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$t1, $fp, .LBB0_15
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$s6, $t0, .LBB0_15
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$a7, $s8, .LBB0_15
# %bb.25:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$ra, $a6, .LBB0_15
# %bb.26:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t2, $t7, 60
	ori	$t3, $zero, 1
	bne	$t2, $t3, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a4, $a4, 60
	ori	$t2, $zero, 1
	bne	$a4, $t2, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_16 Depth=3
	slt	$a0, $t1, $s6
	masknez	$a1, $t1, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	slt	$a1, $fp, $t0
	masknez	$a2, $t0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a7, $ra
	masknez	$a4, $a7, $a2
	maskeqz	$a2, $ra, $a2
	or	$a2, $a2, $a4
	slt	$a4, $s8, $a6
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $s8, $a4
	or	$a4, $a4, $a6
	sub.d	$a2, $a4, $a2
	sub.d	$a0, $a1, $a0
	mulw.d.w	$fp, $a2, $a0
	b	.LBB0_55
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a4, $s4, 0
	beqz	$a4, .LBB0_15
# %bb.30:                               # %.lr.ph301
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t8, $t6, 0
	beqz	$t8, .LBB0_15
# %bb.31:                               # %.lr.ph301.split
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$fp, $zero
	bge	$a2, $a3, .LBB0_43
# %bb.32:                               # %.lr.ph301.split.split.us.preheader
                                        #   in Loop: Header=BB0_16 Depth=3
	vld	$vr3, $sp, 48                   # 16-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %..loopexit_crit_edge.split.us.us
                                        #   in Loop: Header=BB0_34 Depth=4
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_54
.LBB0_34:                               # %.lr.ph301.split.split.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_38 Depth 5
	vld	$vr0, $a4, 56
	vadd.w	$vr0, $vr0, $vr3
	blt	$a2, $s2, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=4
	vld	$vr1, $a4, 40
	vadd.w	$vr2, $vr0, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vld	$vr0, $s6, %pc_lo12(.LCPI0_0)
	vshuf.w	$vr0, $vr2, $vr1
.LBB0_36:                               # %.lr.ph.us
                                        #   in Loop: Header=BB0_34 Depth=4
	vpickve2gr.w	$a6, $vr0, 0
	vpickve2gr.w	$a7, $vr0, 1
	vpickve2gr.w	$t0, $vr0, 2
	vpickve2gr.w	$t1, $vr0, 3
	move	$t2, $t8
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_37:                               #   in Loop: Header=BB0_38 Depth=5
	ld.d	$t2, $t2, 0
	beqz	$t2, .LBB0_33
.LBB0_38:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_34 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t3, $t2, 56
	add.w	$t3, $t3, $a1
	bge	$t3, $a7, .LBB0_37
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=5
	ld.w	$t4, $t2, 60
	add.w	$t4, $t4, $a1
	bge	$a6, $t4, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=5
	ld.w	$t5, $t2, 64
	add.w	$t5, $t5, $a0
	bge	$t5, $t1, .LBB0_37
# %bb.41:                               #   in Loop: Header=BB0_38 Depth=5
	ld.w	$t6, $t2, 68
	add.w	$t6, $t6, $a0
	bge	$t0, $t6, .LBB0_37
# %bb.42:                               #   in Loop: Header=BB0_38 Depth=5
	slt	$t7, $t3, $a6
	masknez	$t3, $t3, $t7
	maskeqz	$t7, $a6, $t7
	or	$t3, $t7, $t3
	slt	$t7, $a7, $t4
	masknez	$t4, $t4, $t7
	maskeqz	$t7, $a7, $t7
	or	$t4, $t7, $t4
	slt	$t7, $t5, $t0
	masknez	$t5, $t5, $t7
	maskeqz	$t7, $t0, $t7
	or	$t5, $t7, $t5
	slt	$t7, $t1, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t7, $t1, $t7
	or	$t6, $t7, $t6
	sub.d	$t5, $t6, $t5
	sub.d	$t3, $t4, $t3
	mul.d	$t3, $t5, $t3
	add.w	$fp, $t3, $fp
	b	.LBB0_37
.LBB0_43:                               # %.lr.ph301.split.split.preheader
                                        #   in Loop: Header=BB0_16 Depth=3
	vld	$vr3, $sp, 48                   # 16-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_44:                               # %..loopexit_crit_edge.split
                                        #   in Loop: Header=BB0_45 Depth=4
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_54
.LBB0_45:                               # %.lr.ph301.split.split
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_49 Depth 5
	vld	$vr0, $a4, 56
	vadd.w	$vr0, $vr0, $vr3
	blt	$a2, $s2, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=4
	vld	$vr1, $a4, 40
	vadd.w	$vr2, $vr0, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vld	$vr0, $s6, %pc_lo12(.LCPI0_0)
	vshuf.w	$vr0, $vr2, $vr1
.LBB0_47:                               # %.lr.ph
                                        #   in Loop: Header=BB0_45 Depth=4
	vpickve2gr.w	$a6, $vr0, 0
	vpickve2gr.w	$a7, $vr0, 1
	vpickve2gr.w	$t0, $vr0, 2
	vpickve2gr.w	$t1, $vr0, 3
	move	$t2, $t8
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_48:                               #   in Loop: Header=BB0_49 Depth=5
	ld.d	$t2, $t2, 0
	beqz	$t2, .LBB0_44
.LBB0_49:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_45 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t3, $t2, 56
	ld.w	$t4, $t2, 40
	add.d	$t3, $t3, $a1
	sub.w	$t3, $t3, $t4
	bge	$t3, $a7, .LBB0_48
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=5
	ld.w	$t4, $t2, 60
	ld.w	$t5, $t2, 44
	add.d	$t4, $t4, $a1
	add.w	$t4, $t5, $t4
	bge	$a6, $t4, .LBB0_48
# %bb.51:                               #   in Loop: Header=BB0_49 Depth=5
	ld.w	$t5, $t2, 64
	ld.w	$t6, $t2, 48
	add.d	$t5, $t5, $a0
	sub.w	$t5, $t5, $t6
	bge	$t5, $t1, .LBB0_48
# %bb.52:                               #   in Loop: Header=BB0_49 Depth=5
	ld.w	$t6, $t2, 68
	ld.w	$t7, $t2, 52
	add.d	$t6, $t6, $a0
	add.w	$t6, $t7, $t6
	bge	$t0, $t6, .LBB0_48
# %bb.53:                               #   in Loop: Header=BB0_49 Depth=5
	slt	$t7, $t3, $a6
	masknez	$t3, $t3, $t7
	maskeqz	$t7, $a6, $t7
	or	$t3, $t7, $t3
	slt	$t7, $a7, $t4
	masknez	$t4, $t4, $t7
	maskeqz	$t7, $a7, $t7
	or	$t4, $t7, $t4
	slt	$t7, $t5, $t0
	masknez	$t5, $t5, $t7
	maskeqz	$t7, $t0, $t7
	or	$t5, $t7, $t5
	slt	$t7, $t1, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t7, $t1, $t7
	or	$t6, $t7, $t6
	sub.d	$t5, $t6, $t5
	sub.d	$t3, $t4, $t3
	mul.d	$t3, $t5, $t3
	add.w	$fp, $t3, $fp
	b	.LBB0_48
.LBB0_54:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=3
	beqz	$fp, .LBB0_56
.LBB0_55:                               # %._crit_edge.thread.sink.split
                                        #   in Loop: Header=BB0_16 Depth=3
	pcalau12i	$a0, %got_pc_hi20(lapFactor)
	ld.d	$s3, $a0, %got_pc_lo12(lapFactor)
	fld.d	$fa0, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$s1, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $s1, 0
	add.d	$a0, $a0, $fp
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fpo)
	move	$s6, $s8
	move	$s8, $s5
	move	$s5, $s4
	ld.d	$s4, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s4, 0
	move	$s4, $s5
	move	$s5, $s8
	move	$s8, $s6
	fld.d	$fa0, $s3, 0
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a1, $fp
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	addi.w	$a3, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
.LBB0_56:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_15
.LBB0_57:
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
.LBB0_58:                               # %._crit_edge331
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end0:
	.size	goverlapf, .Lfunc_end0-goverlapf
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Overlap condition: cell1:%d cell2:%d"
	.size	.L.str, 37

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"   value:%d   amount:%d\n"
	.size	.L.str.1, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
