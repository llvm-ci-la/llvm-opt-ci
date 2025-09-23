	.file	"goverlapf.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function goverlapf
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
	.globl	goverlapf
	.p2align	5
	.type	goverlapf,@function
goverlapf:                              # @goverlapf
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	move	$t0, $a5
	move	$t1, $a4
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$t2, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $t2, 0
	slli.d	$a4, $s2, 3
	ldx.d	$t3, $a0, $a4
	alsl.d	$a0, $a3, $t3, 3
	ld.d	$t4, $a0, 152
	vld	$vr0, $t4, 56
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vshuf4i.w	$vr1, $vr1, 5
	vadd.w	$vr7, $vr0, $vr1
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s4, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $s4, 0
	blt	$a0, $s2, .LBB0_2
# %bb.1:
	vld	$vr0, $t4, 40
	vadd.w	$vr1, $vr7, $vr0
	vsub.w	$vr0, $vr7, $vr0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr7, $a0, %pc_lo12(.LCPI0_0)
	vshuf.w	$vr7, $vr1, $vr0
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(binOffsetX)
	ld.d	$a0, $a0, %got_pc_lo12(binOffsetX)
	ld.w	$a0, $a0, 0
	pcalau12i	$a3, %got_pc_hi20(binWidthX)
	ld.d	$a3, $a3, %got_pc_lo12(binWidthX)
	ld.w	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(numBinsX)
	ld.d	$a4, $a4, %got_pc_lo12(numBinsX)
	ld.w	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(binOffsetY)
	ld.d	$a5, $a5, %got_pc_lo12(binOffsetY)
	ld.w	$a5, $a5, 0
	pcalau12i	$a6, %got_pc_hi20(binWidthY)
	ld.d	$a6, $a6, %got_pc_lo12(binWidthY)
	ld.w	$a6, $a6, 0
	pcalau12i	$a7, %got_pc_hi20(numBinsY)
	ld.d	$a7, $a7, %got_pc_lo12(numBinsY)
	ld.w	$a7, $a7, 0
	vshuf4i.w	$vr0, $vr7, 2
	vinsgr2vr.w	$vr1, $a5, 0
	vinsgr2vr.w	$vr1, $a0, 1
	vsub.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 1
	div.w	$a0, $a0, $a3
	vpickve2gr.w	$a5, $vr0, 0
	div.w	$a5, $a5, $a6
	vinsgr2vr.w	$vr0, $a5, 0
	vinsgr2vr.w	$vr0, $a0, 1
	vslti.w	$vr2, $vr0, 1
	vrepli.w	$vr3, 1
	vinsgr2vr.w	$vr4, $a7, 0
	vinsgr2vr.w	$vr4, $a4, 1
	vmin.w	$vr0, $vr0, $vr4
	vbitsel.v	$vr2, $vr0, $vr3, $vr2
	vori.b	$vr0, $vr7, 0
	vextrins.w	$vr0, $vr7, 3
	vsub.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 1
	div.w	$a0, $a0, $a3
	vpickve2gr.w	$a3, $vr0, 0
	div.w	$a3, $a3, $a6
	vinsgr2vr.w	$vr0, $a3, 0
	vinsgr2vr.w	$vr0, $a0, 1
	vslt.w	$vr1, $vr4, $vr0
	vmaxi.w	$vr0, $vr0, 1
	vbitsel.v	$vr0, $vr0, $vr4, $vr1
	vpickve2gr.w	$a0, $vr0, 1
	vseq.w	$vr1, $vr2, $vr0
	vshuf4i.w	$vr3, $vr1, 16
	vpickve2gr.d	$a3, $vr1, 0
	vpickve2gr.d	$a4, $vr3, 1
	and	$a3, $a4, $a3
	andi	$a3, $a3, 1
	vpickve2gr.w	$a4, $vr2, 1
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a4, $a4, $a3
	vpickve2gr.w	$a5, $vr2, 0
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	maskeqz	$a3, $a5, $a3
	pcalau12i	$a5, %got_pc_hi20(binX)
	ld.d	$a5, $a5, %got_pc_lo12(binX)
	st.w	$a4, $a5, 0
	pcalau12i	$a4, %got_pc_hi20(binY)
	ld.d	$a4, $a4, %got_pc_lo12(binY)
	st.w	$a3, $a4, 0
	bltz	$a0, .LBB0_46
# %bb.3:                                # %.lr.ph330
	vpickve2gr.w	$a3, $vr0, 0
	bltz	$a3, .LBB0_46
# %bb.4:                                # %.lr.ph330.split.preheader
	vpickve2gr.w	$a4, $vr7, 3
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a3, 31, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr8, $a1, 0
	vinsgr2vr.w	$vr8, $a2, 1
	vpickve2gr.w	$a0, $vr7, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vpickve2gr.w	$a0, $vr7, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vpickve2gr.w	$a0, $vr7, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	ld.d	$a0, $a0, %got_pc_lo12(blockarray)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	ori	$a5, $zero, 1
	st.d	$t3, $sp, 152                   # 8-byte Folded Spill
	st.d	$t0, $sp, 144                   # 8-byte Folded Spill
	vst	$vr7, $sp, 128                  # 16-byte Folded Spill
	st.d	$t1, $sp, 120                   # 8-byte Folded Spill
	vst	$vr8, $sp, 96                   # 16-byte Folded Spill
	st.d	$t2, $sp, 88                    # 8-byte Folded Spill
	st.d	$t4, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %..loopexit292_crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB0_47
.LBB0_6:                                # %.lr.ph330.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_37 Depth 4
                                        #           Child Loop BB0_41 Depth 5
                                        #         Child Loop BB0_30 Depth 4
                                        #           Child Loop BB0_34 Depth 5
	beqz	$s6, .LBB0_8
# %bb.7:                                # %.lr.ph330.split
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	blt	$s6, $a0, .LBB0_5
.LBB0_8:                                # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $zero
	sltui	$a0, $s6, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $s6, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.loopexit291
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$s1, $s1, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB0_5
.LBB0_10:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_37 Depth 4
                                        #           Child Loop BB0_41 Depth 5
                                        #         Child Loop BB0_30 Depth 4
                                        #           Child Loop BB0_34 Depth 5
	or	$a0, $s1, $s6
	slli.d	$a0, $a0, 32
	beqz	$a0, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	slt	$a0, $s1, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	bnez	$a0, .LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $s1, 3
	ldx.d	$s8, $a0, $a1
	ld.w	$a0, $s8, 0
	blez	$a0, .LBB0_9
# %bb.13:                               # %.lr.ph318.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=3
	beqz	$t0, .LBB0_19
	.p2align	4, , 16
.LBB0_15:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a1, $s8, 0
	addi.d	$a0, $s3, 1
	bge	$s3, $a1, .LBB0_9
.LBB0_16:                               # %.lr.ph318
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_37 Depth 4
                                        #           Child Loop BB0_41 Depth 5
                                        #         Child Loop BB0_30 Depth 4
                                        #           Child Loop BB0_34 Depth 5
	move	$s3, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a3, $s8, $a0
	beq	$a3, $s2, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a0, $t2, 0
	slli.d	$a1, $a3, 3
	ldx.d	$a1, $a0, $a1
	beq	$a3, $t1, .LBB0_14
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a0, $a1, 56
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 152
	move	$a4, $a1
	b	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 152
	move	$a4, $t3
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a4, 12
	vld	$vr1, $a2, 56
	ld.w	$a0, $s4, 0
	vinsgr2vr.d	$vr0, $a4, 0
	vreplvei.d	$vr2, $vr0, 0
	vshuf4i.w	$vr1, $vr1, 141
	vadd.w	$vr1, $vr1, $vr2
	blt	$a0, $a3, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=3
	vld	$vr2, $a2, 40
	vshuf4i.w	$vr2, $vr2, 141
	vsub.w	$vr3, $vr1, $vr2
	vadd.w	$vr1, $vr1, $vr2
	vshuf4i.d	$vr1, $vr3, 12
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=3
	pcalau12i	$a4, %pc_hi20(.LCPI0_1)
	vld	$vr2, $a4, %pc_lo12(.LCPI0_1)
	pcalau12i	$a4, %pc_hi20(.LCPI0_2)
	vld	$vr3, $a4, %pc_lo12(.LCPI0_2)
	vshuf.w	$vr2, $vr7, $vr1
	vshuf.w	$vr3, $vr1, $vr7
	vsle.w	$vr2, $vr3, $vr2
	vmskltz.w	$vr2, $vr2
	vpickve2gr.hu	$a4, $vr2, 0
	bnez	$a4, .LBB0_15
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a4, $t3, 60
	bne	$a4, $a5, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a1, $a1, 60
	bne	$a1, $a5, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_16 Depth=3
	vpickve2gr.w	$a0, $vr1, 2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	vpickve2gr.w	$a1, $vr1, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	slt	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	vpickve2gr.w	$a2, $vr1, 3
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	slt	$a4, $a2, $a5
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a5, $a4
	or	$a2, $a4, $a2
	vpickve2gr.w	$a4, $vr1, 1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	slt	$a5, $a6, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	sub.d	$a2, $a4, $a2
	sub.d	$a0, $a1, $a0
	mulw.d.w	$fp, $a2, $a0
	b	.LBB0_44
.LBB0_26:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a1, $t4, 0
	beqz	$a1, .LBB0_15
# %bb.27:                               # %.lr.ph301
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a2, $a2, 0
	beqz	$a2, .LBB0_15
# %bb.28:                               # %.lr.ph301.split
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$fp, $zero
	bge	$a0, $a3, .LBB0_37
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %..loopexit_crit_edge.split.us.us
                                        #   in Loop: Header=BB0_30 Depth=4
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB0_43
.LBB0_30:                               # %.lr.ph301.split.split.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_34 Depth 5
	vld	$vr2, $a1, 56
	vshuf4i.w	$vr1, $vr2, 8
	vadd.w	$vr1, $vr1, $vr8
	vshuf4i.w	$vr2, $vr2, 13
	vadd.w	$vr2, $vr2, $vr8
	blt	$a0, $s2, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=4
	vld	$vr3, $a1, 40
	vshuf4i.w	$vr4, $vr3, 8
	vsub.w	$vr1, $vr1, $vr4
	vshuf4i.w	$vr3, $vr3, 13
	vadd.w	$vr2, $vr3, $vr2
.LBB0_32:                               # %.lr.ph.us
                                        #   in Loop: Header=BB0_30 Depth=4
	move	$a4, $a2
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=5
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_29
.LBB0_34:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr4, $a4, 56
	vshuf4i.w	$vr3, $vr4, 8
	vadd.w	$vr3, $vr3, $vr0
	vshuf4i.w	$vr4, $vr4, 13
	vadd.w	$vr4, $vr4, $vr0
	vilvl.w	$vr5, $vr1, $vr3
	vilvl.w	$vr6, $vr4, $vr2
	vsle.w	$vr5, $vr6, $vr5
	vmskltz.w	$vr5, $vr5
	vpickve2gr.hu	$a5, $vr5, 0
	bnez	$a5, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=5
	vmax.w	$vr3, $vr1, $vr3
	vmin.w	$vr4, $vr2, $vr4
	vsub.w	$vr3, $vr4, $vr3
	vreplvei.w	$vr4, $vr3, 1
	vmul.w	$vr3, $vr4, $vr3
	vpickve2gr.w	$a5, $vr3, 0
	add.w	$fp, $a5, $fp
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_36:                               # %..loopexit_crit_edge.split
                                        #   in Loop: Header=BB0_37 Depth=4
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB0_43
.LBB0_37:                               # %.lr.ph301.split.split
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_41 Depth 5
	vld	$vr2, $a1, 56
	vshuf4i.w	$vr1, $vr2, 8
	vadd.w	$vr1, $vr1, $vr8
	vshuf4i.w	$vr2, $vr2, 13
	vadd.w	$vr2, $vr2, $vr8
	blt	$a0, $s2, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=4
	vld	$vr3, $a1, 40
	vshuf4i.w	$vr4, $vr3, 8
	vsub.w	$vr1, $vr1, $vr4
	vshuf4i.w	$vr3, $vr3, 13
	vadd.w	$vr2, $vr3, $vr2
.LBB0_39:                               # %.lr.ph
                                        #   in Loop: Header=BB0_37 Depth=4
	move	$a4, $a2
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_40:                               #   in Loop: Header=BB0_41 Depth=5
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_36
.LBB0_41:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_37 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr3, $a4, 56
	vshuf4i.w	$vr4, $vr3, 8
	vld	$vr5, $a4, 40
	vadd.w	$vr4, $vr4, $vr0
	vshuf4i.w	$vr3, $vr3, 13
	vadd.w	$vr6, $vr3, $vr0
	vshuf4i.w	$vr3, $vr5, 8
	vsub.w	$vr3, $vr4, $vr3
	vshuf4i.w	$vr4, $vr5, 13
	vadd.w	$vr4, $vr4, $vr6
	vilvl.w	$vr5, $vr1, $vr3
	vilvl.w	$vr6, $vr4, $vr2
	vsle.w	$vr5, $vr6, $vr5
	vmskltz.w	$vr5, $vr5
	vpickve2gr.hu	$a5, $vr5, 0
	bnez	$a5, .LBB0_40
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=5
	vmax.w	$vr3, $vr1, $vr3
	vmin.w	$vr4, $vr2, $vr4
	vsub.w	$vr3, $vr4, $vr3
	vreplvei.w	$vr4, $vr3, 1
	vmul.w	$vr3, $vr4, $vr3
	vpickve2gr.w	$a5, $vr3, 0
	add.w	$fp, $a5, $fp
	b	.LBB0_40
.LBB0_43:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=3
	beqz	$fp, .LBB0_45
.LBB0_44:                               # %._crit_edge.thread.sink.split
                                        #   in Loop: Header=BB0_16 Depth=3
	pcalau12i	$a0, %got_pc_hi20(lapFactor)
	ld.d	$s5, $a0, %got_pc_lo12(lapFactor)
	fld.d	$fa0, $s5, 0
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$s0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $s0, 0
	add.d	$a0, $a0, $fp
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s7, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a0, $s7, 0
	fld.d	$fa0, $s5, 0
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
	vld	$vr8, $sp, 96                   # 16-byte Folded Reload
	vld	$vr7, $sp, 128                  # 16-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
.LBB0_45:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	b	.LBB0_15
.LBB0_46:
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
.LBB0_47:                               # %._crit_edge331
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
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
