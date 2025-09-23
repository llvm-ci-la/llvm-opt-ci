	.file	"weighted_prediction.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function estimate_weighting_factor_P_slice
.LCPI0_0:
	.dword	0x4040000000000000              # double 32
	.text
	.globl	estimate_weighting_factor_P_slice
	.p2align	5
	.type	estimate_weighting_factor_P_slice,@function
estimate_weighting_factor_P_slice:      # @estimate_weighting_factor_P_slice
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a3, $a1, 0
	ldptr.w	$a2, $a3, 15268
	ori	$a1, $zero, 2
	beqz	$a2, .LBB0_3
# %bb.1:
	ld.w	$a2, $a3, 12
	ldptr.d	$a4, $a3, 14224
	ori	$a5, $zero, 536
	mul.d	$a5, $a2, $a5
	add.d	$a4, $a4, $a5
	ld.w	$a4, $a4, 424
	beqz	$a4, .LBB0_3
# %bb.2:
	andi	$a1, $a2, 1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 6
	masknez	$a2, $a2, $a1
	ori	$a4, $zero, 4
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
.LBB0_3:
	addi.d	$sp, $sp, -1648
	st.d	$ra, $sp, 1640                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1560                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(luma_log_weight_denom)
	ori	$a4, $zero, 5
	st.w	$a4, $a2, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a2, %pc_hi20(chroma_log_weight_denom)
	st.w	$a4, $a2, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a2, %pc_hi20(wp_luma_round)
	ori	$a4, $zero, 16
	st.w	$a4, $a2, %pc_lo12(wp_luma_round)
	pcalau12i	$a2, %pc_hi20(wp_chroma_round)
	pcalau12i	$a5, %pc_hi20(wp_weight)
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a6, $a5, %pc_lo12(wp_weight)
	pcalau12i	$a5, %pc_hi20(wp_offset)
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a7, $a5, %pc_lo12(wp_offset)
	st.w	$a4, $a2, %pc_lo12(wp_chroma_round)
	addi.d	$t0, $sp, 24
	addi.d	$t1, $sp, 800
	pcalau12i	$a2, %got_pc_hi20(listXsize)
	ld.d	$a2, $a2, %got_pc_lo12(listXsize)
	move	$t2, $zero
	ori	$t3, $zero, 32
	ori	$t4, $zero, 32
	lu32i.d	$t4, 32
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %._crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$t0, $t0, 384
	addi.d	$t1, $t1, 384
	beq	$t2, $a1, .LBB0_8
.LBB0_5:                                # %.preheader122
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	slli.d	$a4, $t2, 2
	ldx.w	$a4, $a2, $a4
	blez	$a4, .LBB0_4
# %bb.6:                                # %.preheader121.lr.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	slli.d	$a4, $t2, 3
	ldx.d	$t5, $a6, $a4
	ldx.d	$t6, $a7, $a4
	move	$t7, $zero
	alsl.d	$t8, $t2, $a2, 2
	move	$fp, $t1
	move	$s0, $t0
	.p2align	4, , 16
.LBB0_7:                                # %.preheader121
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $t5, 0
	ld.d	$s1, $t6, 0
	st.d	$zero, $s0, 0
	st.w	$zero, $s0, 8
	st.d	$t4, $fp, -8
	st.w	$t3, $fp, 0
	st.w	$t3, $a4, 0
	st.w	$zero, $s1, 0
	st.w	$t3, $a4, 4
	st.w	$zero, $s1, 4
	st.w	$t3, $a4, 8
	st.w	$zero, $s1, 8
	addi.d	$t7, $t7, 1
	ld.w	$a4, $t8, 0
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$s0, $s0, 12
	addi.d	$fp, $fp, 12
	blt	$t7, $a4, .LBB0_7
	b	.LBB0_4
.LBB0_8:                                # %.preheader120
	ld.w	$a6, $a3, 68
	movgr2fr.d	$fa0, $zero
	blez	$a6, .LBB0_14
# %bb.9:                                # %.preheader119.lr.ph
	ld.w	$a7, $a3, 52
	blez	$a7, .LBB0_14
# %bb.10:                               # %.preheader119.us.preheader
	pcalau12i	$a4, %pc_hi20(imgY_org)
	ld.d	$t0, $a4, %pc_lo12(imgY_org)
	move	$t1, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB0_11:                               # %.preheader119.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	slli.d	$a4, $t1, 3
	ldx.d	$t2, $t0, $a4
	move	$t3, $a7
	.p2align	4, , 16
.LBB0_12:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a4, $t2, 0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 2
	bnez	$t3, .LBB0_12
# %bb.13:                               # %._crit_edge128.us
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$t1, $t1, 1
	bne	$t1, $a6, .LBB0_11
.LBB0_14:                               # %.preheader118
	addi.w	$a4, $a6, 20
	ori	$a7, $zero, 21
	slt	$t0, $a7, $a4
	masknez	$a7, $a7, $t0
	maskeqz	$a4, $a4, $t0
	or	$a7, $a4, $a7
	beqz	$a0, .LBB0_27
# %bb.15:                               # %.preheader117.preheader
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	move	$t0, $zero
	addi.d	$t1, $sp, 24
	addi.d	$t2, $sp, 792
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -928
	addi.w	$t3, $zero, -128
	ori	$t4, $zero, 127
	ori	$t5, $zero, 32
	ori	$t6, $zero, 32
	lu32i.d	$t6, 32
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_16:                               # %._crit_edge141.split
                                        #   in Loop: Header=BB0_18 Depth=1
	pcalau12i	$a4, %pc_hi20(ref_pic_sub)
	st.d	$s2, $a4, %pc_lo12(ref_pic_sub)
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a1, .LBB0_48
.LBB0_18:                               # %.preheader117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #         Child Loop BB0_25 Depth 4
	slli.d	$a4, $t0, 2
	ldx.w	$t7, $a2, $a4
	blez	$t7, .LBB0_17
# %bb.19:                               # %.lr.ph
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$t8, $zero
	slli.d	$a4, $t0, 3
	ldx.d	$fp, $a0, $a4
	alsl.d	$a4, $t0, $t0, 1
	ld.w	$a5, $a3, 88
	slli.d	$a4, $a4, 7
	add.d	$s0, $t1, $a4
	add.d	$s1, $t2, $a4
	movgr2fr.w	$fa3, $a5
	ffint.d.w	$fa3, $fa3
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               # %._crit_edge138
                                        #   in Loop: Header=BB0_21 Depth=2
	fsub.d	$fa4, $fa0, $fa4
	fdiv.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa4, $fa2
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a4, $fa4
	alsl.d	$a5, $t8, $s3, 2
	slt	$s3, $t3, $a4
	maskeqz	$a4, $a4, $s3
	masknez	$s3, $t3, $s3
	or	$a4, $a4, $s3
	slti	$s3, $a4, 127
	maskeqz	$a4, $a4, $s3
	masknez	$s3, $t4, $s3
	or	$a4, $a4, $s3
	stx.w	$a4, $s0, $a5
	add.d	$a4, $s1, $a5
	stx.d	$t6, $s1, $a5
	addi.d	$t8, $t8, 1
	st.w	$t5, $a4, 8
	beq	$t8, $t7, .LBB0_16
.LBB0_21:                               #   Parent Loop BB0_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #         Child Loop BB0_25 Depth 4
	slli.d	$s3, $t8, 3
	ldx.d	$a4, $fp, $s3
	ldptr.d	$s2, $a4, 6448
	fmov.d	$fa4, $fa1
	blez	$a6, .LBB0_20
# %bb.22:                               # %.preheader116.lr.ph
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.w	$a4, $a3, 52
	fmov.d	$fa4, $fa1
	blez	$a4, .LBB0_20
# %bb.23:                               # %.preheader116.lr.ph.split.us
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.d	$a5, $s2, 0
	ld.d	$s4, $a5, 0
	addi.w	$a4, $a4, 19
	ori	$s5, $zero, 20
	slt	$a5, $s5, $a4
	masknez	$s6, $s5, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $s6
	addi.d	$s6, $a4, -19
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB0_24:                               # %.preheader116.us
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_25 Depth 4
	slli.d	$a4, $s5, 3
	ldx.d	$a4, $s4, $a4
	addi.d	$s7, $a4, 40
	move	$a4, $s6
	.p2align	4, , 16
.LBB0_25:                               #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a5, $s7, 0
	movgr2fr.w	$fa5, $a5
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$a4, $a4, -1
	addi.d	$s7, $s7, 2
	bnez	$a4, .LBB0_25
# %bb.26:                               # %._crit_edge135.us
                                        #   in Loop: Header=BB0_24 Depth=3
	addi.d	$s5, $s5, 1
	bne	$s5, $a7, .LBB0_24
	b	.LBB0_20
.LBB0_27:                               # %.preheader117.us.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	fmul.d	$fa0, $fa0, $fa1
	addi.d	$a0, $sp, 792
	addi.d	$t0, $sp, 812
	pcalau12i	$a4, %got_pc_hi20(listX)
	ld.d	$t1, $a4, %got_pc_lo12(listX)
	move	$t2, $zero
	ori	$t3, $zero, 20
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -928
	ori	$t4, $zero, 32
	ori	$t5, $zero, 1
	vrepli.w	$vr3, 32
	addi.d	$t6, $sp, 792
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_28:                               # %._crit_edge141.split.us.us
                                        #   in Loop: Header=BB0_30 Depth=1
	pcalau12i	$a4, %pc_hi20(ref_pic_sub)
	st.d	$s0, $a4, %pc_lo12(ref_pic_sub)
.LBB0_29:                               #   in Loop: Header=BB0_30 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$t0, $t0, 384
	addi.d	$t6, $t6, 384
	beq	$t2, $a1, .LBB0_48
.LBB0_30:                               # %.preheader117.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_36 Depth 3
                                        #         Child Loop BB0_37 Depth 4
	slli.d	$a4, $t2, 2
	ldx.wu	$s1, $a2, $a4
	addi.w	$fp, $s1, 0
	blez	$fp, .LBB0_29
# %bb.31:                               # %.lr.ph.us
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a4, $t2, 3
	ldx.d	$t8, $t1, $a4
	ori	$t7, $zero, 32
	lu32i.d	$t7, 32
	blez	$a6, .LBB0_41
# %bb.32:                               # %.lr.ph.split.us.us.split.us
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$s1, $zero
	ld.w	$s2, $a3, 52
	alsl.d	$a4, $t2, $t2, 1
	slli.d	$a4, $a4, 7
	add.d	$s3, $a0, $a4
	addi.w	$a4, $s2, 19
	slt	$s0, $t3, $a4
	masknez	$s4, $t3, $s0
	maskeqz	$a4, $a4, $s0
	or	$a4, $a4, $s4
	addi.d	$a4, $a4, -19
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %._crit_edge138.us.us.us.thread
                                        #   in Loop: Header=BB0_34 Depth=2
	alsl.d	$s4, $s1, $s5, 2
	add.d	$s5, $s3, $s4
	addi.w	$s7, $s6, -128
	sltui	$s7, $s7, -192
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $t4, $s7
	or	$s6, $s7, $s6
	stx.w	$s6, $s3, $s4
	addi.d	$s1, $s1, 1
	st.d	$t7, $s5, 4
	beq	$s1, $fp, .LBB0_28
.LBB0_34:                               # %.preheader116.lr.ph.us.us.us
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_36 Depth 3
                                        #         Child Loop BB0_37 Depth 4
	slli.d	$s5, $s1, 3
	ldx.d	$s0, $t8, $s5
	ldptr.d	$s0, $s0, 6448
	ori	$s6, $zero, 32
	blez	$s2, .LBB0_33
# %bb.35:                               # %.preheader116.us.us.us.us.preheader
                                        #   in Loop: Header=BB0_34 Depth=2
	ld.d	$s4, $s0, 0
	ld.d	$s7, $s4, 0
	ori	$s8, $zero, 20
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB0_36:                               # %.preheader116.us.us.us.us
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_37 Depth 4
	slli.d	$s4, $s8, 3
	ldx.d	$s4, $s7, $s4
	addi.d	$ra, $s4, 40
	move	$s4, $a4
	.p2align	4, , 16
.LBB0_37:                               #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        #       Parent Loop BB0_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a5, $ra, 0
	movgr2fr.w	$fa5, $a5
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$s4, $s4, -1
	addi.d	$ra, $ra, 2
	bnez	$s4, .LBB0_37
# %bb.38:                               # %._crit_edge135.us.us.us.us
                                        #   in Loop: Header=BB0_36 Depth=3
	addi.d	$s8, $s8, 1
	bne	$s8, $a7, .LBB0_36
# %bb.39:                               # %._crit_edge138.us.us.us
                                        #   in Loop: Header=BB0_34 Depth=2
	fcmp.cune.d	$fcc0, $fa4, $fa1
	bceqz	$fcc0, .LBB0_33
# %bb.40:                               #   in Loop: Header=BB0_34 Depth=2
	fdiv.d	$fa4, $fa0, $fa4
	fadd.d	$fa4, $fa4, $fa2
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$s6, $fa4
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_41:                               # %.lr.ph.split.us.us.split.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	bne	$fp, $t5, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_30 Depth=1
	move	$fp, $zero
	b	.LBB0_46
.LBB0_43:                               # %vector.ph
                                        #   in Loop: Header=BB0_30 Depth=1
	bstrpick.d	$a4, $s1, 30, 1
	slli.d	$fp, $a4, 1
	addi.d	$s2, $t8, 8
	move	$s3, $fp
	move	$s4, $t0
	.p2align	4, , 16
.LBB0_44:                               # %vector.body
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $s2, 0
	ldptr.d	$s0, $a4, 6448
	st.d	$t7, $s4, -4
	vst	$vr3, $s4, -20
	addi.d	$s2, $s2, 16
	addi.d	$s3, $s3, -2
	addi.d	$s4, $s4, 24
	bnez	$s3, .LBB0_44
# %bb.45:                               # %middle.block
                                        #   in Loop: Header=BB0_30 Depth=1
	beq	$fp, $s1, .LBB0_28
.LBB0_46:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a4, $fp, 3
	alsl.d	$t8, $fp, $t8, 3
	alsl.d	$s2, $fp, $a4, 2
	sub.d	$fp, $s1, $fp
	.p2align	4, , 16
.LBB0_47:                               # %scalar.ph
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $t8, 0
	ldptr.d	$s0, $a4, 6448
	add.d	$a4, $t6, $s2
	stx.d	$t7, $t6, $s2
	st.w	$t4, $a4, 8
	addi.d	$t8, $t8, 8
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 12
	bnez	$fp, .LBB0_47
	b	.LBB0_28
.LBB0_48:                               # %.preheader115
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(wp_weight)
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(wp_offset)
	move	$a4, $zero
	addi.d	$a5, $sp, 32
	addi.d	$a6, $sp, 800
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_49:                               # %._crit_edge152
                                        #   in Loop: Header=BB0_50 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 384
	addi.d	$a6, $a6, 384
	beq	$a4, $a1, .LBB0_53
.LBB0_50:                               # %.preheader114
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	slli.d	$a7, $a4, 2
	ldx.w	$a7, $a2, $a7
	blez	$a7, .LBB0_49
# %bb.51:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB0_50 Depth=1
	slli.d	$t0, $a4, 3
	ldx.d	$a7, $a0, $t0
	ldx.d	$t0, $a3, $t0
	move	$t1, $zero
	alsl.d	$t2, $a4, $a2, 2
	move	$t3, $a6
	move	$t4, $a5
	.p2align	4, , 16
.LBB0_52:                               # %.preheader
                                        #   Parent Loop BB0_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t5, $a7, 0
	ld.d	$t6, $t0, 0
	ld.w	$t7, $t3, -8
	ld.w	$t8, $t4, -8
	st.w	$t7, $t5, 0
	st.w	$t8, $t6, 0
	ld.w	$t7, $t3, -4
	ld.w	$t8, $t4, -4
	ld.w	$fp, $t3, 0
	ld.w	$s0, $t4, 0
	st.w	$t7, $t5, 4
	st.w	$t8, $t6, 4
	st.w	$fp, $t5, 8
	st.w	$s0, $t6, 8
	addi.d	$t1, $t1, 1
	ld.w	$t5, $t2, 0
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$t4, $t4, 12
	addi.d	$t3, $t3, 12
	blt	$t1, $t5, .LBB0_52
	b	.LBB0_49
.LBB0_53:
	ld.d	$s8, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1640                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1648
	ret
.Lfunc_end0:
	.size	estimate_weighting_factor_P_slice, .Lfunc_end0-estimate_weighting_factor_P_slice
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function estimate_weighting_factor_B_slice
.LCPI1_0:
	.dword	0x4040000000000000              # double 32
	.text
	.globl	estimate_weighting_factor_B_slice
	.p2align	5
	.type	estimate_weighting_factor_B_slice,@function
estimate_weighting_factor_B_slice:      # @estimate_weighting_factor_B_slice
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2784
	sub.d	$sp, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$s8, $a0, 0
	ldptr.w	$a0, $s8, 15268
	ori	$s7, $zero, 2
	beqz	$a0, .LBB1_3
# %bb.1:
	ld.w	$a0, $s8, 12
	ldptr.d	$a1, $s8, 14224
	ori	$a2, $zero, 536
	mul.d	$a2, $a0, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 424
	beqz	$a1, .LBB1_3
# %bb.2:
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 6
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 4
	maskeqz	$a0, $a2, $a0
	or	$s7, $a0, $a1
.LBB1_3:
	pcalau12i	$a0, %pc_hi20(luma_log_weight_denom)
	ori	$a1, $zero, 5
	st.w	$a1, $a0, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a0, %pc_hi20(chroma_log_weight_denom)
	st.w	$a1, $a0, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a0, %pc_hi20(wp_luma_round)
	ori	$a2, $zero, 16
	st.w	$a2, $a0, %pc_lo12(wp_luma_round)
	pcalau12i	$a3, %pc_hi20(wp_chroma_round)
	pcalau12i	$s5, %pc_hi20(wp_weight)
	ld.d	$a0, $s5, %pc_lo12(wp_weight)
	pcalau12i	$s6, %pc_hi20(wp_offset)
	ld.d	$a1, $s6, %pc_lo12(wp_offset)
	st.w	$a2, $a3, %pc_lo12(wp_chroma_round)
	lu12i.w	$a2, 18
	ori	$a2, $a2, 104
	add.d	$a2, $sp, $a2
	lu12i.w	$a3, 18
	ori	$a3, $a3, 2416
	add.d	$a3, $sp, $a3
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$ra, $a4, %got_pc_lo12(listXsize)
	move	$a4, $zero
	ori	$a5, $zero, 32
	ori	$a6, $zero, 32
	lu32i.d	$a6, 32
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %._crit_edge
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 384
	addi.d	$a3, $a3, 384
	beq	$a4, $s7, .LBB1_8
.LBB1_5:                                # %.preheader266
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	slli.d	$a7, $a4, 2
	ldx.w	$a7, $ra, $a7
	blez	$a7, .LBB1_4
# %bb.6:                                # %.preheader265.lr.ph
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$t0, $a4, 3
	ldx.d	$a7, $a0, $t0
	ldx.d	$t0, $a1, $t0
	move	$t1, $zero
	alsl.d	$t2, $a4, $ra, 2
	move	$t3, $a3
	move	$t4, $a2
	.p2align	4, , 16
.LBB1_7:                                # %.preheader265
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t5, $a7, 0
	ld.d	$t6, $t0, 0
	st.d	$zero, $t4, 0
	st.w	$zero, $t4, 8
	st.d	$a6, $t3, -8
	st.w	$a5, $t3, 0
	st.w	$a5, $t5, 0
	st.w	$zero, $t6, 0
	st.w	$a5, $t5, 4
	st.w	$zero, $t6, 4
	st.w	$a5, $t5, 8
	st.w	$zero, $t6, 8
	addi.d	$t1, $t1, 1
	ld.w	$t5, $t2, 0
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$t4, $t4, 12
	addi.d	$t3, $t3, 12
	blt	$t1, $t5, .LBB1_7
	b	.LBB1_4
.LBB1_8:                                # %.preheader264
	ld.w	$a0, $ra, 0
	blez	$a0, .LBB1_26
# %bb.9:                                # %.preheader263.lr.ph
	ld.w	$a2, $ra, 4
	lu12i.w	$a1, 3
	blez	$a2, .LBB1_18
# %bb.10:                               # %.preheader263.lr.ph.split.us
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a4, $a3, %got_pc_lo12(listX)
	ld.d	$a3, $a4, 8
	ld.d	$a4, $a4, 0
	addi.d	$a5, $sp, 104
	add.d	$a5, $a5, $a1
	pcalau12i	$a6, %got_pc_hi20(enc_picture)
	ld.d	$a6, $a6, %got_pc_lo12(enc_picture)
	ld.d	$a7, $a6, 0
	move	$a6, $zero
	ld.w	$a7, $a7, 4
	addi.w	$t0, $zero, -128
	ori	$t1, $zero, 127
	lu12i.w	$t2, 4
	addi.w	$t3, $zero, -1024
	ori	$t4, $zero, 1023
	addi.w	$t5, $zero, -193
	ori	$t6, $zero, 64
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_11:                               # %._crit_edge275.us
                                        #   in Loop: Header=BB1_12 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 384
	beq	$a6, $a0, .LBB1_18
.LBB1_12:                               # %.preheader263.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	slli.d	$t7, $a6, 3
	ldx.d	$t7, $a4, $t7
	ld.w	$t7, $t7, 4
	sub.w	$t8, $a7, $t7
	slt	$fp, $t0, $t8
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $t0, $fp
	or	$t8, $t8, $fp
	slti	$fp, $t8, 127
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $t1, $fp
	or	$t8, $t8, $fp
	move	$fp, $a5
	move	$s0, $a2
	move	$s1, $a3
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_13:                               # %.split.split.us.us.preheader
                                        #   in Loop: Header=BB1_15 Depth=2
	ori	$s2, $zero, 32
	st.w	$s2, $fp, 0
	ori	$s3, $zero, 32
.LBB1_14:                               # %.split272.us.us
                                        #   in Loop: Header=BB1_15 Depth=2
	stptr.w	$s2, $fp, -12288
	st.w	$s3, $fp, 4
	stptr.w	$s2, $fp, -12284
	st.w	$s3, $fp, 8
	stptr.w	$s2, $fp, -12280
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 12
	beqz	$s0, .LBB1_11
.LBB1_15:                               #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s1, 0
	ld.w	$s2, $s2, 4
	beq	$s2, $t7, .LBB1_13
# %bb.16:                               # %.split.us280
                                        #   in Loop: Header=BB1_15 Depth=2
	sub.w	$s2, $s2, $t7
	slt	$s3, $t0, $s2
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $t0, $s3
	or	$s2, $s2, $s3
	slti	$s3, $s2, 127
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $t1, $s3
	or	$s2, $s2, $s3
	bstrpick.d	$s3, $s2, 7, 7
	add.d	$s3, $s2, $s3
	ext.w.b	$s3, $s3
	srai.d	$s3, $s3, 1
	srai.d	$s4, $s3, 63
	xor	$s3, $s3, $s4
	sub.d	$s3, $s3, $s4
	or	$s3, $s3, $t2
	ext.w.h	$s2, $s2
	div.d	$s2, $s3, $s2
	ext.w.h	$s2, $s2
	mul.d	$s2, $t8, $s2
	addi.w	$s2, $s2, 32
	srai.d	$s2, $s2, 6
	slt	$s3, $t3, $s2
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $t3, $s3
	or	$s2, $s2, $s3
	slti	$s3, $s2, 1023
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $t4, $s3
	or	$s2, $s2, $s3
	srai.d	$s3, $s2, 2
	addi.d	$s2, $s3, -129
	bltu	$s2, $t5, .LBB1_13
# %bb.17:                               # %.split.split.us281.preheader
                                        #   in Loop: Header=BB1_15 Depth=2
	st.w	$s3, $fp, 0
	sub.d	$s2, $t6, $s3
	b	.LBB1_14
.LBB1_18:                               # %._crit_edge277.thread453
	pcalau12i	$a2, %pc_hi20(active_pps)
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.w	$a6, $a2, 196
	ori	$a2, $zero, 2
	bne	$a6, $a2, .LBB1_32
# %bb.19:                               # %.preheader246.lr.ph
	ld.w	$a7, $ra, 4
	blez	$a7, .LBB1_27
# %bb.20:                               # %.preheader246.preheader
	move	$a2, $zero
	pcalau12i	$a3, %pc_hi20(wbp_weight)
	ld.d	$a3, $a3, %pc_lo12(wbp_weight)
	ori	$a1, $a1, 8
	addi.d	$a4, $sp, 104
	add.d	$a1, $a4, $a1
	lu12i.w	$a5, -4
	ori	$a4, $a5, 4088
	ori	$a5, $a5, 4092
	lu12i.w	$a6, -3
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               # %._crit_edge320
                                        #   in Loop: Header=BB1_22 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 384
	bge	$a2, $a0, .LBB1_27
.LBB1_22:                               # %.preheader246
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
	blez	$a7, .LBB1_21
# %bb.23:                               # %.preheader245.lr.ph
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.d	$a0, $a3, 8
	ld.d	$a7, $a3, 0
	slli.d	$t0, $a2, 3
	ldx.d	$a0, $a0, $t0
	ldx.d	$t0, $a7, $t0
	move	$t1, $zero
	move	$t2, $a1
	.p2align	4, , 16
.LBB1_24:                               # %.preheader245
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a0, 0
	ld.d	$t3, $t0, 0
	ld.w	$t4, $t2, -8
	ldx.w	$t5, $t2, $a4
	st.w	$t4, $a7, 0
	st.w	$t5, $t3, 0
	ld.w	$t4, $t2, -4
	ldx.w	$t5, $t2, $a5
	ld.w	$t6, $t2, 0
	ldx.w	$t7, $t2, $a6
	st.w	$t4, $a7, 4
	st.w	$t5, $t3, 4
	st.w	$t6, $a7, 8
	st.w	$t7, $t3, 8
	ld.w	$a7, $ra, 4
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 8
	addi.d	$a0, $a0, 8
	addi.d	$t2, $t2, 12
	blt	$t1, $a7, .LBB1_24
# %bb.25:                               # %._crit_edge320.loopexit
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $ra, 0
	b	.LBB1_21
.LBB1_26:                               # %._crit_edge277.thread
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a6, $a0, 196
	ori	$a0, $zero, 2
	bne	$a6, $a0, .LBB1_32
.LBB1_27:                               # %.preheader244
	move	$a0, $zero
	ld.d	$a1, $s5, %pc_lo12(wp_weight)
	ld.d	$a2, $s6, %pc_lo12(wp_offset)
	ori	$a3, $zero, 32
	ori	$a4, $zero, 32
	lu32i.d	$a4, 32
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %._crit_edge324
                                        #   in Loop: Header=BB1_29 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s7, .LBB1_78
.LBB1_29:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
	slli.d	$a5, $a0, 2
	ldx.w	$a5, $ra, $a5
	blez	$a5, .LBB1_28
# %bb.30:                               # %.lr.ph323
                                        #   in Loop: Header=BB1_29 Depth=1
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $a1, $a6
	ldx.d	$a6, $a2, $a6
	move	$a7, $zero
	alsl.d	$t0, $a0, $ra, 2
	.p2align	4, , 16
.LBB1_31:                               #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a5, 0
	st.d	$a4, $t1, 0
	ld.d	$t2, $a6, 0
	st.w	$a3, $t1, 8
	st.d	$zero, $t2, 0
	st.w	$zero, $t2, 8
	ld.w	$t1, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	blt	$a7, $t1, .LBB1_31
	b	.LBB1_28
.LBB1_32:                               # %.preheader262
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $s8, 68
	movgr2fr.d	$fs0, $zero
	fmov.d	$fs1, $fs0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	blez	$a0, .LBB1_39
# %bb.33:                               # %.preheader261.lr.ph
	ld.w	$a0, $s8, 52
	fmov.d	$fs1, $fs0
	blez	$a0, .LBB1_39
# %bb.34:                               # %.preheader261.us.preheader
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a1, $a1, %pc_lo12(imgY_org)
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB1_35:                               # %.preheader261.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_36:                               #   Parent Loop BB1_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a3, 0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 2
	bnez	$a4, .LBB1_36
# %bb.37:                               # %._crit_edge285.us
                                        #   in Loop: Header=BB1_35 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB1_35
# %bb.38:                               # %.preheader260.loopexit
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_0)
	fmul.d	$fs1, $fa0, $fa1
.LBB1_39:                               # %.preheader260
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 20
	ori	$a1, $zero, 21
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s6, $a0, $a1
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2428
	add.d	$s8, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s4, $zero
	ori	$s3, $zero, 32
	vrepli.w	$vr3, 32
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2408
	add.d	$s1, $sp, $a0
	st.d	$ra, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	vst	$vr3, $sp, 32                   # 16-byte Folded Spill
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_40:                               # %._crit_edge298
                                        #   in Loop: Header=BB1_42 Depth=1
	pcalau12i	$a1, %pc_hi20(ref_qpic_sub)
	st.d	$a0, $a1, %pc_lo12(ref_qpic_sub)
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
.LBB1_41:                               #   in Loop: Header=BB1_42 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s8, $s8, 384
	addi.d	$s1, $s1, 384
	beq	$s4, $s7, .LBB1_59
.LBB1_42:                               # %.preheader259
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_55 Depth 2
                                        #     Child Loop BB1_58 Depth 2
                                        #     Child Loop BB1_46 Depth 2
                                        #       Child Loop BB1_48 Depth 3
                                        #         Child Loop BB1_49 Depth 4
	slli.d	$a0, $s4, 2
	ldx.wu	$fp, $ra, $a0
	addi.w	$s5, $fp, 0
	blez	$s5, .LBB1_41
# %bb.43:                               # %.lr.ph
                                        #   in Loop: Header=BB1_42 Depth=1
	alsl.d	$a0, $s4, $s4, 1
	slli.d	$a1, $a0, 7
	slli.d	$a0, $s4, 3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s2, $a2, $a0
	lu12i.w	$a0, 18
	ori	$a0, $a0, 104
	add.d	$a0, $sp, $a0
	add.d	$a0, $a0, $a1
	ori	$s7, $zero, 32
	lu32i.d	$s7, 32
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	blez	$a2, .LBB1_53
# %bb.44:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB1_42 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s0, $a2, 52
	lu12i.w	$a2, 18
	ori	$a2, $a2, 2408
	add.d	$a2, $sp, $a2
	add.d	$fp, $a2, $a1
	addi.w	$a1, $s0, 19
	ori	$a3, $zero, 20
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a1, $s5, 3
	alsl.d	$a2, $s5, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a0, -19
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	vldi	$vr2, -928
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_45:                               # %._crit_edge295.us.thread
                                        #   in Loop: Header=BB1_46 Depth=2
	addi.w	$a5, $a4, -128
	sltui	$a5, $a5, -256
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $s3, $a5
	or	$a4, $a5, $a4
	alsl.d	$a3, $a1, $a3, 2
	add.d	$a5, $fp, $a3
	stx.w	$a4, $fp, $a3
	addi.d	$a1, $a1, 1
	st.d	$s7, $a5, 4
	beq	$a1, $s5, .LBB1_40
.LBB1_46:                               # %.preheader258.lr.ph.us
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_48 Depth 3
                                        #         Child Loop BB1_49 Depth 4
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $s2, $a3
	ldptr.d	$a0, $a0, 6448
	ori	$a4, $zero, 32
	blez	$s0, .LBB1_45
# %bb.47:                               # %.preheader258.us.us.preheader
                                        #   in Loop: Header=BB1_46 Depth=2
	ld.d	$a5, $a0, 0
	ld.d	$a5, $a5, 0
	ori	$a6, $zero, 20
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB1_48:                               # %.preheader258.us.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_49 Depth 4
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a5, $a7
	addi.d	$a7, $a7, 40
	move	$t0, $a2
	.p2align	4, , 16
.LBB1_49:                               #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$t1, $a7, 0
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 2
	bnez	$t0, .LBB1_49
# %bb.50:                               # %._crit_edge292.us.us
                                        #   in Loop: Header=BB1_48 Depth=3
	addi.d	$a6, $a6, 1
	bne	$a6, $s6, .LBB1_48
# %bb.51:                               # %._crit_edge295.us
                                        #   in Loop: Header=BB1_46 Depth=2
	fcmp.cune.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB1_45
# %bb.52:                               #   in Loop: Header=BB1_46 Depth=2
	fdiv.d	$fa0, $fs1, $fa0
	fadd.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_53:                               # %.lr.ph.split.preheader
                                        #   in Loop: Header=BB1_42 Depth=1
	slli.d	$a1, $fp, 3
	alsl.d	$a2, $fp, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	beq	$s5, $a0, .LBB1_57
# %bb.54:                               # %vector.ph
                                        #   in Loop: Header=BB1_42 Depth=1
	bstrpick.d	$a0, $fp, 30, 1
	slli.d	$a1, $a0, 1
	addi.d	$a2, $s2, 8
	move	$a3, $a1
	move	$a4, $s8
	.p2align	4, , 16
.LBB1_55:                               # %vector.body
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ldptr.d	$a0, $a0, 6448
	st.d	$s7, $a4, -4
	vst	$vr3, $a4, -20
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -2
	addi.d	$a4, $a4, 24
	bnez	$a3, .LBB1_55
# %bb.56:                               # %middle.block
                                        #   in Loop: Header=BB1_42 Depth=1
	beq	$a1, $fp, .LBB1_40
.LBB1_57:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_42 Depth=1
	slli.d	$a0, $a1, 3
	alsl.d	$a2, $a1, $s2, 3
	alsl.d	$a3, $a1, $a0, 2
	sub.d	$a1, $fp, $a1
	.p2align	4, , 16
.LBB1_58:                               # %scalar.ph
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ldptr.d	$a0, $a0, 6448
	add.d	$a4, $s1, $a3
	stx.d	$s7, $s1, $a3
	st.w	$s3, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 12
	bnez	$a1, .LBB1_58
	b	.LBB1_40
.LBB1_59:
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(wp_weight)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	bne	$a3, $a2, .LBB1_65
# %bb.60:                               # %.preheader252.preheader
	move	$a2, $zero
	lu12i.w	$a3, 18
	ori	$a3, $a3, 112
	add.d	$a3, $sp, $a3
	lu12i.w	$a4, 18
	ori	$a4, $a4, 2416
	add.d	$a4, $sp, $a4
	b	.LBB1_62
	.p2align	4, , 16
.LBB1_61:                               # %._crit_edge312
                                        #   in Loop: Header=BB1_62 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 384
	addi.d	$a4, $a4, 384
	beq	$a2, $s7, .LBB1_70
.LBB1_62:                               # %.preheader252
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_64 Depth 2
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $ra, $a5
	blez	$a5, .LBB1_61
# %bb.63:                               # %.preheader251.lr.ph
                                        #   in Loop: Header=BB1_62 Depth=1
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	move	$a7, $zero
	alsl.d	$t0, $a2, $ra, 2
	move	$t1, $a4
	move	$t2, $a3
	.p2align	4, , 16
.LBB1_64:                               # %.preheader251
                                        #   Parent Loop BB1_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $a5, 0
	ld.d	$t4, $a6, 0
	ld.w	$t5, $t1, -8
	ld.w	$t6, $t2, -8
	st.w	$t5, $t3, 0
	st.w	$t6, $t4, 0
	ld.w	$t5, $t1, -4
	ld.w	$t6, $t2, -4
	ld.w	$t7, $t1, 0
	ld.w	$t8, $t2, 0
	st.w	$t5, $t3, 4
	st.w	$t6, $t4, 4
	st.w	$t7, $t3, 8
	st.w	$t8, $t4, 8
	addi.d	$a7, $a7, 1
	ld.w	$t3, $t0, 0
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$t2, $t2, 12
	addi.d	$t1, $t1, 12
	blt	$a7, $t3, .LBB1_64
	b	.LBB1_61
.LBB1_65:                               # %.preheader255.preheader
	move	$a2, $zero
	ori	$a3, $zero, 32
	ori	$a4, $zero, 32
	lu32i.d	$a4, 32
	b	.LBB1_67
	.p2align	4, , 16
.LBB1_66:                               # %._crit_edge308
                                        #   in Loop: Header=BB1_67 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s7, .LBB1_70
.LBB1_67:                               # %.preheader255
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_69 Depth 2
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $ra, $a5
	blez	$a5, .LBB1_66
# %bb.68:                               # %.lr.ph307
                                        #   in Loop: Header=BB1_67 Depth=1
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	move	$a7, $zero
	alsl.d	$t0, $a2, $ra, 2
	.p2align	4, , 16
.LBB1_69:                               #   Parent Loop BB1_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a5, 0
	st.d	$a4, $t1, 0
	ld.d	$t2, $a6, 0
	st.w	$a3, $t1, 8
	st.d	$zero, $t2, 0
	st.w	$zero, $t2, 8
	ld.w	$t1, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	blt	$a7, $t1, .LBB1_69
	b	.LBB1_66
.LBB1_70:                               # %.loopexit254
	ld.w	$a4, $ra, 0
	blez	$a4, .LBB1_78
# %bb.71:                               # %.preheader249.lr.ph
	ld.w	$a3, $ra, 4
	blez	$a3, .LBB1_78
# %bb.72:                               # %.preheader249.preheader
	ld.d	$a0, $fp, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wbp_weight)
	ld.d	$a1, $a1, %pc_lo12(wbp_weight)
	move	$a2, $zero
	b	.LBB1_74
	.p2align	4, , 16
.LBB1_73:                               # %._crit_edge316
                                        #   in Loop: Header=BB1_74 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a4, .LBB1_78
.LBB1_74:                               # %.preheader249
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_76 Depth 2
	blez	$a3, .LBB1_73
# %bb.75:                               # %.preheader248.lr.ph
                                        #   in Loop: Header=BB1_74 Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a5, $a1, 0
	slli.d	$a7, $a2, 3
	ld.d	$t0, $a1, 8
	ldx.d	$a4, $a3, $a7
	ldx.d	$a5, $a5, $a7
	ld.d	$a6, $a0, 8
	ldx.d	$a7, $t0, $a7
	move	$t0, $zero
	.p2align	4, , 16
.LBB1_76:                               # %.preheader248
                                        #   Parent Loop BB1_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a5, 0
	ld.w	$t1, $a4, 0
	ld.d	$t2, $a6, 0
	ld.d	$t3, $a7, 0
	st.w	$t1, $a3, 0
	ld.w	$t1, $t2, 0
	st.w	$t1, $t3, 0
	ld.w	$t1, $a4, 4
	st.w	$t1, $a3, 4
	ld.w	$t1, $t2, 4
	st.w	$t1, $t3, 4
	ld.w	$t1, $a4, 8
	st.w	$t1, $a3, 8
	ld.w	$a3, $t2, 8
	st.w	$a3, $t3, 8
	ld.w	$a3, $ra, 4
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	blt	$t0, $a3, .LBB1_76
# %bb.77:                               # %._crit_edge316.loopexit
                                        #   in Loop: Header=BB1_74 Depth=1
	ld.w	$a4, $ra, 0
	b	.LBB1_73
.LBB1_78:                               # %.loopexit
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2784
	add.d	$sp, $sp, $a0
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	estimate_weighting_factor_B_slice, .Lfunc_end1-estimate_weighting_factor_B_slice
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_wp_P_slice
.LCPI2_0:
	.dword	0x4040000000000000              # double 32
	.text
	.globl	test_wp_P_slice
	.p2align	5
	.type	test_wp_P_slice,@function
test_wp_P_slice:                        # @test_wp_P_slice
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a3, $a1, 0
	ldptr.w	$a2, $a3, 15268
	ori	$a1, $zero, 2
	beqz	$a2, .LBB2_3
# %bb.1:
	ld.w	$a2, $a3, 12
	ldptr.d	$a4, $a3, 14224
	ori	$a5, $zero, 536
	mul.d	$a5, $a2, $a5
	add.d	$a4, $a4, $a5
	ld.w	$a4, $a4, 424
	beqz	$a4, .LBB2_3
# %bb.2:
	andi	$a1, $a2, 1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 6
	masknez	$a2, $a2, $a1
	ori	$a4, $zero, 4
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
.LBB2_3:
	addi.d	$sp, $sp, -1632
	st.d	$ra, $sp, 1624                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1560                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1552                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1544                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(luma_log_weight_denom)
	ori	$a4, $zero, 5
	st.w	$a4, $a2, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a2, %pc_hi20(chroma_log_weight_denom)
	st.w	$a4, $a2, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a2, %pc_hi20(wp_luma_round)
	ori	$a6, $zero, 16
	st.w	$a6, $a2, %pc_lo12(wp_luma_round)
	pcalau12i	$a2, %pc_hi20(wp_chroma_round)
	pcalau12i	$a4, %pc_hi20(wp_weight)
	ld.d	$a4, $a4, %pc_lo12(wp_weight)
	pcalau12i	$a5, %pc_hi20(wp_offset)
	ld.d	$a5, $a5, %pc_lo12(wp_offset)
	st.w	$a6, $a2, %pc_lo12(wp_chroma_round)
	addi.d	$a6, $sp, 8
	addi.d	$a7, $sp, 784
	pcalau12i	$a2, %got_pc_hi20(listXsize)
	ld.d	$a2, $a2, %got_pc_lo12(listXsize)
	move	$t0, $zero
	ori	$t1, $zero, 32
	ori	$t2, $zero, 32
	lu32i.d	$t2, 32
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %._crit_edge
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 384
	addi.d	$a6, $a6, 384
	beq	$t0, $a1, .LBB2_8
.LBB2_5:                                # %.preheader141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a2, $t3
	blez	$t3, .LBB2_4
# %bb.6:                                # %.preheader140.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t4, $t0, 3
	ldx.d	$t3, $a4, $t4
	ldx.d	$t4, $a5, $t4
	move	$t5, $zero
	alsl.d	$t6, $t0, $a2, 2
	move	$t7, $a6
	move	$t8, $a7
	.p2align	4, , 16
.LBB2_7:                                # %.preheader140
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $t3, 0
	ld.d	$s0, $t4, 0
	st.d	$zero, $t7, 0
	st.w	$zero, $t7, 8
	st.w	$t1, $t8, -8
	st.w	$t1, $fp, 0
	st.w	$zero, $s0, 0
	st.d	$t2, $t8, -4
	st.w	$t1, $fp, 4
	st.w	$zero, $s0, 4
	st.w	$t1, $fp, 8
	st.w	$zero, $s0, 8
	addi.d	$t5, $t5, 1
	ld.w	$fp, $t6, 0
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t8, $t8, 12
	addi.d	$t7, $t7, 12
	blt	$t5, $fp, .LBB2_7
	b	.LBB2_4
.LBB2_8:                                # %.preheader139
	ld.w	$a4, $a3, 68
	movgr2fr.d	$fa0, $zero
	blez	$a4, .LBB2_14
# %bb.9:                                # %.preheader138.lr.ph
	ld.w	$a5, $a3, 52
	blez	$a5, .LBB2_14
# %bb.10:                               # %.preheader138.us.preheader
	pcalau12i	$a6, %pc_hi20(imgY_org)
	ld.d	$a6, $a6, %pc_lo12(imgY_org)
	move	$a7, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB2_11:                               # %.preheader138.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a6, $t0
	move	$t1, $a5
	.p2align	4, , 16
.LBB2_12:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t2, $t0, 0
	movgr2fr.w	$fa1, $t2
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 2
	bnez	$t1, .LBB2_12
# %bb.13:                               # %._crit_edge147.us
                                        #   in Loop: Header=BB2_11 Depth=1
	addi.d	$a7, $a7, 1
	bne	$a7, $a4, .LBB2_11
.LBB2_14:                               # %.preheader137
	addi.w	$a5, $a4, 20
	ori	$a6, $zero, 21
	slt	$a7, $a6, $a5
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	pcalau12i	$a6, %pc_hi20(ref_pic_sub)
	beqz	$a0, .LBB2_27
# %bb.15:                               # %.preheader136.preheader
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	move	$a7, $zero
	addi.d	$t0, $sp, 8
	addi.d	$t1, $sp, 776
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -928
	addi.w	$t2, $zero, -128
	ori	$t3, $zero, 127
	ori	$t4, $zero, 32
	ori	$t5, $zero, 32
	lu32i.d	$t5, 32
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_16:                               # %._crit_edge160.split
                                        #   in Loop: Header=BB2_18 Depth=1
	st.d	$s1, $a6, %pc_lo12(ref_pic_sub)
.LBB2_17:                               #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a1, .LBB2_48
.LBB2_18:                               # %.preheader136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
                                        #       Child Loop BB2_24 Depth 3
                                        #         Child Loop BB2_25 Depth 4
	slli.d	$t6, $a7, 2
	ldx.w	$t6, $a2, $t6
	blez	$t6, .LBB2_17
# %bb.19:                               # %.lr.ph
                                        #   in Loop: Header=BB2_18 Depth=1
	move	$t7, $zero
	slli.d	$t8, $a7, 3
	ldx.d	$t8, $a0, $t8
	alsl.d	$fp, $a7, $a7, 1
	ld.w	$s1, $a3, 88
	slli.d	$s0, $fp, 7
	add.d	$fp, $t0, $s0
	add.d	$s0, $t1, $s0
	movgr2fr.w	$fa3, $s1
	ffint.d.w	$fa3, $fa3
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_20:                               # %._crit_edge157
                                        #   in Loop: Header=BB2_21 Depth=2
	fsub.d	$fa4, $fa0, $fa4
	fdiv.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa4, $fa2
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$s3, $fa4
	alsl.d	$s2, $t7, $s2, 2
	slt	$s4, $t2, $s3
	maskeqz	$s3, $s3, $s4
	masknez	$s4, $t2, $s4
	or	$s3, $s3, $s4
	slti	$s4, $s3, 127
	maskeqz	$s3, $s3, $s4
	masknez	$s4, $t3, $s4
	or	$s3, $s3, $s4
	stx.w	$s3, $fp, $s2
	add.d	$s3, $s0, $s2
	stx.d	$t5, $s0, $s2
	addi.d	$t7, $t7, 1
	st.w	$t4, $s3, 8
	beq	$t7, $t6, .LBB2_16
.LBB2_21:                               #   Parent Loop BB2_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_24 Depth 3
                                        #         Child Loop BB2_25 Depth 4
	slli.d	$s2, $t7, 3
	ldx.d	$s1, $t8, $s2
	ldptr.d	$s1, $s1, 6448
	fmov.d	$fa4, $fa1
	blez	$a4, .LBB2_20
# %bb.22:                               # %.preheader135.lr.ph
                                        #   in Loop: Header=BB2_21 Depth=2
	ld.w	$s4, $a3, 52
	fmov.d	$fa4, $fa1
	blez	$s4, .LBB2_20
# %bb.23:                               # %.preheader135.lr.ph.split.us
                                        #   in Loop: Header=BB2_21 Depth=2
	ld.d	$s3, $s1, 0
	ld.d	$s3, $s3, 0
	addi.w	$s5, $s4, 19
	ori	$s4, $zero, 20
	slt	$s6, $s4, $s5
	masknez	$s7, $s4, $s6
	maskeqz	$s5, $s5, $s6
	or	$s5, $s5, $s7
	addi.d	$s5, $s5, -19
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB2_24:                               # %.preheader135.us
                                        #   Parent Loop BB2_18 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_25 Depth 4
	slli.d	$s6, $s4, 3
	ldx.d	$s6, $s3, $s6
	addi.d	$s6, $s6, 40
	move	$s7, $s5
	.p2align	4, , 16
.LBB2_25:                               #   Parent Loop BB2_18 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        #       Parent Loop BB2_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s8, $s6, 0
	movgr2fr.w	$fa5, $s8
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 2
	bnez	$s7, .LBB2_25
# %bb.26:                               # %._crit_edge154.us
                                        #   in Loop: Header=BB2_24 Depth=3
	addi.d	$s4, $s4, 1
	bne	$s4, $a5, .LBB2_24
	b	.LBB2_20
.LBB2_27:                               # %.preheader136.us.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_0)
	fmul.d	$fa0, $fa0, $fa1
	addi.d	$a0, $sp, 776
	addi.d	$a7, $sp, 796
	pcalau12i	$t0, %got_pc_hi20(listX)
	ld.d	$t0, $t0, %got_pc_lo12(listX)
	move	$t1, $zero
	ori	$t2, $zero, 20
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -928
	ori	$t3, $zero, 32
	vrepli.w	$vr3, 32
	addi.d	$t5, $sp, 776
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_28:                               # %._crit_edge160.split.us.us
                                        #   in Loop: Header=BB2_30 Depth=1
	st.d	$fp, $a6, %pc_lo12(ref_pic_sub)
.LBB2_29:                               #   in Loop: Header=BB2_30 Depth=1
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 384
	addi.d	$t5, $t5, 384
	beq	$t1, $a1, .LBB2_48
.LBB2_30:                               # %.preheader136.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_44 Depth 2
                                        #     Child Loop BB2_47 Depth 2
                                        #     Child Loop BB2_34 Depth 2
                                        #       Child Loop BB2_36 Depth 3
                                        #         Child Loop BB2_37 Depth 4
	slli.d	$t6, $t1, 2
	ldx.wu	$s0, $a2, $t6
	addi.w	$t8, $s0, 0
	blez	$t8, .LBB2_29
# %bb.31:                               # %.lr.ph.us
                                        #   in Loop: Header=BB2_30 Depth=1
	slli.d	$t6, $t1, 3
	ldx.d	$t7, $t0, $t6
	ori	$t6, $zero, 32
	lu32i.d	$t6, 32
	blez	$a4, .LBB2_41
# %bb.32:                               # %.lr.ph.split.us.us.split.us
                                        #   in Loop: Header=BB2_30 Depth=1
	move	$s0, $zero
	ld.w	$s1, $a3, 52
	alsl.d	$fp, $t1, $t1, 1
	slli.d	$fp, $fp, 7
	add.d	$s2, $a0, $fp
	addi.w	$fp, $s1, 19
	slt	$s3, $t2, $fp
	masknez	$s4, $t2, $s3
	maskeqz	$fp, $fp, $s3
	or	$fp, $fp, $s4
	addi.d	$s3, $fp, -19
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_33:                               # %._crit_edge157.us.us.us.thread
                                        #   in Loop: Header=BB2_34 Depth=2
	alsl.d	$s4, $s0, $s4, 2
	add.d	$s6, $s2, $s4
	addi.w	$s7, $s5, -128
	sltui	$s7, $s7, -192
	masknez	$s5, $s5, $s7
	maskeqz	$s7, $t3, $s7
	or	$s5, $s7, $s5
	stx.w	$s5, $s2, $s4
	addi.d	$s0, $s0, 1
	st.d	$t6, $s6, 4
	beq	$s0, $t8, .LBB2_28
.LBB2_34:                               # %.preheader135.lr.ph.us.us.us
                                        #   Parent Loop BB2_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_36 Depth 3
                                        #         Child Loop BB2_37 Depth 4
	slli.d	$s4, $s0, 3
	ldx.d	$fp, $t7, $s4
	ldptr.d	$fp, $fp, 6448
	ori	$s5, $zero, 32
	blez	$s1, .LBB2_33
# %bb.35:                               # %.preheader135.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_34 Depth=2
	ld.d	$s6, $fp, 0
	ld.d	$s6, $s6, 0
	ori	$s7, $zero, 20
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB2_36:                               # %.preheader135.us.us.us.us
                                        #   Parent Loop BB2_30 Depth=1
                                        #     Parent Loop BB2_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_37 Depth 4
	slli.d	$s8, $s7, 3
	ldx.d	$s8, $s6, $s8
	addi.d	$s8, $s8, 40
	move	$ra, $s3
	.p2align	4, , 16
.LBB2_37:                               #   Parent Loop BB2_30 Depth=1
                                        #     Parent Loop BB2_34 Depth=2
                                        #       Parent Loop BB2_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$t4, $s8, 0
	movgr2fr.w	$fa5, $t4
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$ra, $ra, -1
	addi.d	$s8, $s8, 2
	bnez	$ra, .LBB2_37
# %bb.38:                               # %._crit_edge154.us.us.us.us
                                        #   in Loop: Header=BB2_36 Depth=3
	addi.d	$s7, $s7, 1
	bne	$s7, $a5, .LBB2_36
# %bb.39:                               # %._crit_edge157.us.us.us
                                        #   in Loop: Header=BB2_34 Depth=2
	fcmp.cune.d	$fcc0, $fa4, $fa1
	bceqz	$fcc0, .LBB2_33
# %bb.40:                               #   in Loop: Header=BB2_34 Depth=2
	fdiv.d	$fa4, $fa0, $fa4
	fadd.d	$fa4, $fa4, $fa2
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$s5, $fa4
	b	.LBB2_33
	.p2align	4, , 16
.LBB2_41:                               # %.lr.ph.split.us.us.split.preheader
                                        #   in Loop: Header=BB2_30 Depth=1
	ori	$t4, $zero, 1
	bne	$t8, $t4, .LBB2_43
# %bb.42:                               #   in Loop: Header=BB2_30 Depth=1
	move	$t8, $zero
	b	.LBB2_46
.LBB2_43:                               # %vector.ph
                                        #   in Loop: Header=BB2_30 Depth=1
	bstrpick.d	$t8, $s0, 30, 1
	slli.d	$t8, $t8, 1
	addi.d	$s1, $t7, 8
	move	$s2, $t8
	move	$s3, $a7
	.p2align	4, , 16
.LBB2_44:                               # %vector.body
                                        #   Parent Loop BB2_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $s1, 0
	ldptr.d	$fp, $fp, 6448
	st.d	$t6, $s3, -4
	vst	$vr3, $s3, -20
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, -2
	addi.d	$s3, $s3, 24
	bnez	$s2, .LBB2_44
# %bb.45:                               # %middle.block
                                        #   in Loop: Header=BB2_30 Depth=1
	beq	$t8, $s0, .LBB2_28
.LBB2_46:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_30 Depth=1
	slli.d	$fp, $t8, 3
	alsl.d	$t7, $t8, $t7, 3
	alsl.d	$s1, $t8, $fp, 2
	sub.d	$t8, $s0, $t8
	.p2align	4, , 16
.LBB2_47:                               # %scalar.ph
                                        #   Parent Loop BB2_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t7, 0
	ldptr.d	$fp, $t4, 6448
	add.d	$t4, $t5, $s1
	stx.d	$t6, $t5, $s1
	st.w	$t3, $t4, 8
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, -1
	addi.d	$s1, $s1, 12
	bnez	$t8, .LBB2_47
	b	.LBB2_28
.LBB2_48:                               # %.preheader133
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	move	$a3, $zero
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a5, $a0, %pc_lo12(active_sps)
	addi.d	$a6, $sp, 784
	addi.d	$a7, $sp, 8
	addi.d	$t0, $sp, 16
	ori	$t1, $zero, 32
	ori	$t2, $zero, 66
	ori	$t3, $zero, 2
.LBB2_49:                               # %.preheader132
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_60 Depth 2
                                        #     Child Loop BB2_53 Depth 2
                                        #     Child Loop BB2_68 Depth 2
	slli.d	$a0, $a3, 2
	ldx.w	$a0, $a2, $a0
	blez	$a0, .LBB2_75
# %bb.50:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB2_49 Depth=1
	ldptr.w	$t5, $a4, 2952
	bstrpick.d	$t4, $a0, 31, 0
	beqz	$t5, .LBB2_67
# %bb.51:                               # %.preheader.lr.ph.split
                                        #   in Loop: Header=BB2_49 Depth=1
	ld.w	$a0, $a5, 4
	move	$t5, $t0
	move	$t6, $a6
	bne	$a0, $t2, .LBB2_60
# %bb.52:                               # %.preheader.us174.preheader
                                        #   in Loop: Header=BB2_49 Depth=1
	move	$t5, $zero
	slli.d	$a0, $t4, 3
	alsl.d	$t4, $t4, $a0, 2
	.p2align	4, , 16
.LBB2_53:                               # %.preheader.us174
                                        #   Parent Loop BB2_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t6, $a6, $t5
	ld.w	$t7, $t6, -8
	ori	$a0, $zero, 1
	bne	$t7, $t1, .LBB2_77
# %bb.54:                               # %.preheader.us174
                                        #   in Loop: Header=BB2_53 Depth=2
	ldx.w	$t7, $a7, $t5
	bnez	$t7, .LBB2_77
# %bb.55:                               #   in Loop: Header=BB2_53 Depth=2
	ld.w	$t6, $t6, -4
	bne	$t6, $t1, .LBB2_77
# %bb.56:                               #   in Loop: Header=BB2_53 Depth=2
	add.d	$t6, $a7, $t5
	ld.w	$t7, $t6, 4
	bnez	$t7, .LBB2_77
# %bb.57:                               #   in Loop: Header=BB2_53 Depth=2
	ldx.w	$t7, $a6, $t5
	bne	$t7, $t1, .LBB2_77
# %bb.58:                               #   in Loop: Header=BB2_53 Depth=2
	ld.w	$t6, $t6, 8
	bnez	$t6, .LBB2_77
# %bb.59:                               # %.critedge131.loopexit.split.split.us.us
                                        #   in Loop: Header=BB2_53 Depth=2
	addi.d	$t5, $t5, 12
	bne	$t4, $t5, .LBB2_53
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_60:                               # %.preheader
                                        #   Parent Loop BB2_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, -8
	ori	$a0, $zero, 1
	bne	$t7, $t1, .LBB2_77
# %bb.61:                               # %.preheader
                                        #   in Loop: Header=BB2_60 Depth=2
	ld.w	$t7, $t5, -8
	srai.d	$t8, $t7, 31
	xor	$t7, $t7, $t8
	sub.w	$t7, $t7, $t8
	bltu	$t3, $t7, .LBB2_77
# %bb.62:                               #   in Loop: Header=BB2_60 Depth=2
	ld.w	$t7, $t6, -4
	bne	$t7, $t1, .LBB2_77
# %bb.63:                               #   in Loop: Header=BB2_60 Depth=2
	ld.w	$t7, $t5, -4
	srai.d	$t8, $t7, 31
	xor	$t7, $t7, $t8
	sub.w	$t7, $t7, $t8
	bltu	$t3, $t7, .LBB2_77
# %bb.64:                               #   in Loop: Header=BB2_60 Depth=2
	ld.w	$t7, $t6, 0
	bne	$t7, $t1, .LBB2_77
# %bb.65:                               #   in Loop: Header=BB2_60 Depth=2
	ld.w	$t7, $t5, 0
	srai.d	$t8, $t7, 31
	xor	$t7, $t7, $t8
	sub.w	$t7, $t7, $t8
	bltu	$t3, $t7, .LBB2_77
# %bb.66:                               # %.critedge131
                                        #   in Loop: Header=BB2_60 Depth=2
	addi.d	$t4, $t4, -1
	addi.d	$t6, $t6, 12
	addi.d	$t5, $t5, 12
	bnez	$t4, .LBB2_60
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_67:                               # %.preheader.us.preheader
                                        #   in Loop: Header=BB2_49 Depth=1
	move	$t5, $zero
	slli.d	$a0, $t4, 3
	alsl.d	$t4, $t4, $a0, 2
	.p2align	4, , 16
.LBB2_68:                               # %.preheader.us
                                        #   Parent Loop BB2_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t6, $a6, $t5
	ld.w	$t7, $t6, -8
	ori	$a0, $zero, 1
	bne	$t7, $t1, .LBB2_77
# %bb.69:                               # %.preheader.us
                                        #   in Loop: Header=BB2_68 Depth=2
	ldx.w	$t7, $a7, $t5
	bnez	$t7, .LBB2_77
# %bb.70:                               #   in Loop: Header=BB2_68 Depth=2
	ld.w	$t6, $t6, -4
	bne	$t6, $t1, .LBB2_77
# %bb.71:                               #   in Loop: Header=BB2_68 Depth=2
	add.d	$t6, $a7, $t5
	ld.w	$t7, $t6, 4
	bnez	$t7, .LBB2_77
# %bb.72:                               #   in Loop: Header=BB2_68 Depth=2
	ldx.w	$t7, $a6, $t5
	bne	$t7, $t1, .LBB2_77
# %bb.73:                               #   in Loop: Header=BB2_68 Depth=2
	ld.w	$t6, $t6, 8
	bnez	$t6, .LBB2_77
# %bb.74:                               # %.critedge131.loopexit.split.us.us
                                        #   in Loop: Header=BB2_68 Depth=2
	addi.d	$t5, $t5, 12
	bne	$t4, $t5, .LBB2_68
	.p2align	4, , 16
.LBB2_75:                               # %.critedge
                                        #   in Loop: Header=BB2_49 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 384
	addi.d	$t0, $t0, 384
	addi.d	$a7, $a7, 384
	bne	$a3, $a1, .LBB2_49
# %bb.76:
	move	$a0, $zero
.LBB2_77:                               # %.loopexit
	ld.d	$s8, $sp, 1544                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1552                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1624                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1632
	ret
.Lfunc_end2:
	.size	test_wp_P_slice, .Lfunc_end2-test_wp_P_slice
                                        # -- End function
	.globl	test_wp_B_slice                 # -- Begin function test_wp_B_slice
	.p2align	5
	.type	test_wp_B_slice,@function
test_wp_B_slice:                        # @test_wp_B_slice
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	lu12i.w	$a1, 18
	ori	$a1, $a1, 2784
	sub.d	$sp, $sp, $a1
	move	$s7, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$t5, $a0, 0
	ldptr.w	$a0, $t5, 15268
	ori	$ra, $zero, 2
	beqz	$a0, .LBB3_3
# %bb.1:
	ld.w	$a0, $t5, 12
	ldptr.d	$a1, $t5, 14224
	ori	$a2, $zero, 536
	mul.d	$a2, $a0, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 424
	beqz	$a1, .LBB3_3
# %bb.2:
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 6
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 4
	maskeqz	$a0, $a2, $a0
	or	$ra, $a0, $a1
.LBB3_3:
	addi.d	$a0, $s7, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(luma_log_weight_denom)
	ori	$a2, $zero, 6
	sub.d	$a2, $a2, $a0
	st.w	$a2, $a1, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a1, %pc_hi20(chroma_log_weight_denom)
	st.w	$a2, $a1, %pc_lo12(chroma_log_weight_denom)
	xori	$a0, $a0, 5
	ori	$a3, $zero, 1
	sll.w	$a0, $a3, $a0
	pcalau12i	$a1, %pc_hi20(wp_luma_round)
	st.w	$a0, $a1, %pc_lo12(wp_luma_round)
	pcalau12i	$a1, %pc_hi20(wp_chroma_round)
	st.w	$a0, $a1, %pc_lo12(wp_chroma_round)
	pcalau12i	$s6, %pc_hi20(wp_weight)
	ld.d	$a0, $s6, %pc_lo12(wp_weight)
	pcalau12i	$s8, %pc_hi20(wp_offset)
	ld.d	$a1, $s8, %pc_lo12(wp_offset)
	sll.w	$s1, $a3, $a2
	lu12i.w	$a2, 18
	ori	$a2, $a2, 104
	add.d	$a2, $sp, $a2
	lu12i.w	$a3, 18
	ori	$a3, $a3, 2416
	add.d	$a3, $sp, $a3
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$s3, $a4, %got_pc_lo12(listXsize)
	move	$a4, $zero
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %._crit_edge
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 384
	addi.d	$a3, $a3, 384
	beq	$a4, $ra, .LBB3_8
.LBB3_5:                                # %.preheader303
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	slli.d	$a5, $a4, 2
	ldx.w	$a5, $s3, $a5
	blez	$a5, .LBB3_4
# %bb.6:                                # %.preheader302.lr.ph
                                        #   in Loop: Header=BB3_5 Depth=1
	slli.d	$a6, $a4, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	move	$a7, $zero
	alsl.d	$t0, $a4, $s3, 2
	move	$t1, $a3
	move	$t2, $a2
	.p2align	4, , 16
.LBB3_7:                                # %.preheader302
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $a5, 0
	ld.d	$t4, $a6, 0
	st.d	$zero, $t2, 0
	st.w	$zero, $t2, 8
	st.w	$s1, $t1, -8
	st.w	$s1, $t1, -4
	st.w	$s1, $t1, 0
	st.w	$s1, $t3, 0
	st.w	$zero, $t4, 0
	st.w	$s1, $t3, 4
	st.w	$zero, $t4, 4
	st.w	$s1, $t3, 8
	st.w	$zero, $t4, 8
	addi.d	$a7, $a7, 1
	ld.w	$t3, $t0, 0
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$t2, $t2, 12
	addi.d	$t1, $t1, 12
	blt	$a7, $t3, .LBB3_7
	b	.LBB3_4
.LBB3_8:                                # %.preheader301
	ld.w	$a0, $s3, 0
	blez	$a0, .LBB3_17
# %bb.9:                                # %.preheader300.lr.ph
	ld.w	$a1, $s3, 4
	blez	$a1, .LBB3_18
# %bb.10:                               # %.preheader300.lr.ph.split.us
	st.d	$t5, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a3, $a2, %got_pc_lo12(listX)
	ld.d	$a2, $a3, 8
	ld.d	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	ld.d	$a5, $a4, 0
	move	$a4, $zero
	ld.w	$a5, $a5, 4
	lu12i.w	$a6, 3
	ori	$a6, $a6, 8
	addi.d	$a7, $sp, 104
	add.d	$a6, $a7, $a6
	addi.w	$a7, $zero, -128
	ori	$t0, $zero, 127
	lu12i.w	$t1, 4
	addi.w	$t2, $zero, -1024
	ori	$t3, $zero, 1023
	ori	$t4, $zero, 32
	ori	$t5, $zero, 64
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %._crit_edge311.us
                                        #   in Loop: Header=BB3_12 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, 384
	beq	$a4, $a0, .LBB3_16
.LBB3_12:                               # %.preheader300.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
	slli.d	$t6, $a4, 3
	ldx.d	$t6, $a3, $t6
	ld.w	$t6, $t6, 4
	sub.w	$t7, $a5, $t6
	slt	$t8, $a7, $t7
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $a7, $t8
	or	$t7, $t7, $t8
	slti	$t8, $t7, 127
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t0, $t8
	or	$t7, $t7, $t8
	move	$t8, $a6
	move	$fp, $a1
	move	$s0, $a2
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_13:                               # %.split309.us314
                                        #   in Loop: Header=BB3_14 Depth=2
	st.w	$s2, $t8, -8
	stptr.w	$s4, $t8, -12296
	st.w	$s2, $t8, -4
	stptr.w	$s4, $t8, -12292
	st.w	$s2, $t8, 0
	stptr.w	$s4, $t8, -12288
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 12
	beqz	$fp, .LBB3_11
.LBB3_14:                               #   Parent Loop BB3_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s0, 0
	ld.w	$s5, $s2, 4
	move	$s2, $s1
	move	$s4, $s1
	beq	$s5, $t6, .LBB3_13
# %bb.15:                               # %.split.us316
                                        #   in Loop: Header=BB3_14 Depth=2
	sub.w	$s2, $s5, $t6
	slt	$s4, $a7, $s2
	maskeqz	$s2, $s2, $s4
	masknez	$s4, $a7, $s4
	or	$s2, $s2, $s4
	slti	$s4, $s2, 127
	maskeqz	$s2, $s2, $s4
	masknez	$s4, $t0, $s4
	or	$s2, $s2, $s4
	bstrpick.d	$s4, $s2, 7, 7
	add.d	$s4, $s2, $s4
	ext.w.b	$s4, $s4
	srai.d	$s4, $s4, 1
	srai.d	$s5, $s4, 63
	xor	$s4, $s4, $s5
	sub.d	$s4, $s4, $s5
	or	$s4, $s4, $t1
	ext.w.h	$s2, $s2
	div.d	$s2, $s4, $s2
	ext.w.h	$s2, $s2
	mul.d	$s2, $t7, $s2
	addi.w	$s2, $s2, 32
	srai.d	$s2, $s2, 6
	slt	$s4, $t2, $s2
	maskeqz	$s2, $s2, $s4
	masknez	$s4, $t2, $s4
	or	$s2, $s2, $s4
	slti	$s4, $s2, 1023
	maskeqz	$s2, $s2, $s4
	masknez	$s4, $t3, $s4
	or	$s2, $s2, $s4
	srai.d	$s2, $s2, 2
	addi.d	$s4, $s2, -129
	sltui	$s4, $s4, -193
	masknez	$s2, $s2, $s4
	maskeqz	$s4, $t4, $s4
	or	$s2, $s4, $s2
	sub.d	$s4, $t5, $s2
	b	.LBB3_13
.LBB3_16:                               # %._crit_edge313
	ori	$a1, $zero, 1
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	beq	$s7, $a1, .LBB3_19
	b	.LBB3_26
.LBB3_17:                               # %._crit_edge313.thread
	ori	$a0, $zero, 1
	bne	$s7, $a0, .LBB3_26
	b	.LBB3_52
.LBB3_18:                               # %._crit_edge313.thread497
	ori	$a1, $zero, 1
	bne	$s7, $a1, .LBB3_26
.LBB3_19:                               # %.preheader283.lr.ph
	ld.w	$a7, $s3, 4
	blez	$a7, .LBB3_52
# %bb.20:                               # %.preheader283.preheader
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(wbp_weight)
	ld.d	$a2, $a2, %pc_lo12(wbp_weight)
	lu12i.w	$a3, 3
	ori	$a3, $a3, 8
	addi.d	$a4, $sp, 104
	add.d	$a3, $a4, $a3
	lu12i.w	$a5, -4
	ori	$a4, $a5, 4088
	ori	$a5, $a5, 4092
	lu12i.w	$a6, -3
	b	.LBB3_22
	.p2align	4, , 16
.LBB3_21:                               # %._crit_edge354
                                        #   in Loop: Header=BB3_22 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 384
	bge	$a1, $a0, .LBB3_52
.LBB3_22:                               # %.preheader283
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_24 Depth 2
	blez	$a7, .LBB3_21
# %bb.23:                               # %.preheader282.lr.ph
                                        #   in Loop: Header=BB3_22 Depth=1
	ld.d	$a0, $a2, 8
	ld.d	$a7, $a2, 0
	slli.d	$t0, $a1, 3
	ldx.d	$a0, $a0, $t0
	ldx.d	$t0, $a7, $t0
	move	$t1, $zero
	move	$t2, $a3
	.p2align	4, , 16
.LBB3_24:                               # %.preheader282
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a0, 0
	ld.d	$t3, $t0, 0
	ld.w	$t4, $t2, -8
	ldx.w	$t5, $t2, $a4
	st.w	$t4, $a7, 0
	st.w	$t5, $t3, 0
	ld.w	$t4, $t2, -4
	ldx.w	$t5, $t2, $a5
	ld.w	$t6, $t2, 0
	ldx.w	$t7, $t2, $a6
	st.w	$t4, $a7, 4
	st.w	$t5, $t3, 4
	st.w	$t6, $a7, 8
	st.w	$t7, $t3, 8
	ld.w	$a7, $s3, 4
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 8
	addi.d	$a0, $a0, 8
	addi.d	$t2, $t2, 12
	blt	$t1, $a7, .LBB3_24
# %bb.25:                               # %._crit_edge354.loopexit
                                        #   in Loop: Header=BB3_22 Depth=1
	ld.w	$a0, $s3, 0
	b	.LBB3_21
.LBB3_26:                               # %.preheader299
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $t5, 68
	movgr2fr.d	$fs0, $zero
	fmov.d	$fa0, $fs0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	blez	$a0, .LBB3_32
# %bb.27:                               # %.preheader298.lr.ph
	ld.w	$a0, $t5, 52
	fmov.d	$fa0, $fs0
	blez	$a0, .LBB3_32
# %bb.28:                               # %.preheader298.us.preheader
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a1, $a1, %pc_lo12(imgY_org)
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB3_29:                               # %.preheader298.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_30 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	move	$a4, $a0
	.p2align	4, , 16
.LBB3_30:                               #   Parent Loop BB3_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a3, 0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 2
	bnez	$a4, .LBB3_30
# %bb.31:                               # %._crit_edge319.us
                                        #   in Loop: Header=BB3_29 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB3_29
.LBB3_32:                               # %.preheader297
	st.d	$t5, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 20
	bstrpick.d	$a1, $s1, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmul.d	$fs1, $fa0, $fa1
	ori	$a1, $zero, 21
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s7, $a0, $a1
	vreplgr2vr.w	$vr2, $s1
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2428
	add.d	$s2, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s8, $zero
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2408
	add.d	$s4, $sp, $a0
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	b	.LBB3_35
	.p2align	4, , 16
.LBB3_33:                               # %._crit_edge332
                                        #   in Loop: Header=BB3_35 Depth=1
	pcalau12i	$a1, %pc_hi20(ref_pic_sub)
	st.d	$a0, $a1, %pc_lo12(ref_pic_sub)
.LBB3_34:                               #   in Loop: Header=BB3_35 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s2, $s2, 384
	addi.d	$s4, $s4, 384
	beq	$s8, $ra, .LBB3_57
.LBB3_35:                               # %.preheader296
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_48 Depth 2
                                        #     Child Loop BB3_51 Depth 2
                                        #     Child Loop BB3_39 Depth 2
                                        #       Child Loop BB3_41 Depth 3
                                        #         Child Loop BB3_42 Depth 4
	slli.d	$a0, $s8, 2
	ldx.wu	$s0, $s3, $a0
	addi.w	$fp, $s0, 0
	blez	$fp, .LBB3_34
# %bb.36:                               # %.lr.ph
                                        #   in Loop: Header=BB3_35 Depth=1
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s5, $a1, $a0
	alsl.d	$a0, $s8, $s8, 1
	slli.d	$a1, $a0, 7
	lu12i.w	$a0, 18
	ori	$a0, $a0, 104
	add.d	$a0, $sp, $a0
	add.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	blez	$a2, .LBB3_46
# %bb.37:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB3_35 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s6, $a2, 52
	lu12i.w	$a2, 18
	ori	$a2, $a2, 2408
	add.d	$a2, $sp, $a2
	add.d	$s0, $a2, $a1
	addi.w	$a1, $s6, 19
	ori	$a3, $zero, 20
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a1, $fp, 3
	alsl.d	$a2, $fp, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a2, $a0, -19
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	vldi	$vr3, -928
	b	.LBB3_39
	.p2align	4, , 16
.LBB3_38:                               # %._crit_edge329.us.thread
                                        #   in Loop: Header=BB3_39 Depth=2
	addi.w	$a5, $a4, -128
	sltui	$a5, $a5, -192
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $s1, $a5
	or	$a4, $a5, $a4
	alsl.d	$a3, $a1, $a3, 2
	add.d	$a5, $s0, $a3
	stx.w	$a4, $s0, $a3
	st.w	$s1, $a5, 4
	addi.d	$a1, $a1, 1
	st.w	$s1, $a5, 8
	beq	$a1, $fp, .LBB3_33
.LBB3_39:                               # %.preheader295.lr.ph.us
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_41 Depth 3
                                        #         Child Loop BB3_42 Depth 4
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $s5, $a3
	ldptr.d	$a0, $a0, 6448
	move	$a4, $s1
	blez	$s6, .LBB3_38
# %bb.40:                               # %.preheader295.us.us.preheader
                                        #   in Loop: Header=BB3_39 Depth=2
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 0
	ori	$a5, $zero, 20
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB3_41:                               # %.preheader295.us.us
                                        #   Parent Loop BB3_35 Depth=1
                                        #     Parent Loop BB3_39 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_42 Depth 4
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a4, $a6
	addi.d	$a6, $a6, 40
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_42:                               #   Parent Loop BB3_35 Depth=1
                                        #     Parent Loop BB3_39 Depth=2
                                        #       Parent Loop BB3_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$t0, $a6, 0
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 2
	bnez	$a7, .LBB3_42
# %bb.43:                               # %._crit_edge326.us.us
                                        #   in Loop: Header=BB3_41 Depth=3
	addi.d	$a5, $a5, 1
	bne	$a5, $s7, .LBB3_41
# %bb.44:                               # %._crit_edge329.us
                                        #   in Loop: Header=BB3_39 Depth=2
	fcmp.cune.d	$fcc0, $fa0, $fs0
	move	$a4, $s1
	bceqz	$fcc0, .LBB3_38
# %bb.45:                               #   in Loop: Header=BB3_39 Depth=2
	fdiv.d	$fa0, $fs1, $fa0
	fadd.d	$fa0, $fa0, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	b	.LBB3_38
	.p2align	4, , 16
.LBB3_46:                               # %.lr.ph.split.preheader
                                        #   in Loop: Header=BB3_35 Depth=1
	slli.d	$a1, $s0, 3
	alsl.d	$a2, $s0, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 1
	beq	$fp, $a0, .LBB3_50
# %bb.47:                               # %vector.ph
                                        #   in Loop: Header=BB3_35 Depth=1
	bstrpick.d	$a0, $s0, 30, 1
	slli.d	$a1, $a0, 1
	addi.d	$a2, $s5, 8
	move	$a3, $a1
	move	$a4, $s2
	.p2align	4, , 16
.LBB3_48:                               # %vector.body
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ldptr.d	$a0, $a0, 6448
	st.w	$s1, $a4, -4
	vst	$vr2, $a4, -20
	st.w	$s1, $a4, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -2
	addi.d	$a4, $a4, 24
	bnez	$a3, .LBB3_48
# %bb.49:                               # %middle.block
                                        #   in Loop: Header=BB3_35 Depth=1
	beq	$a1, $s0, .LBB3_33
.LBB3_50:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_35 Depth=1
	slli.d	$a0, $a1, 3
	alsl.d	$a2, $a1, $s5, 3
	alsl.d	$a3, $a1, $a0, 2
	sub.d	$a1, $s0, $a1
	.p2align	4, , 16
.LBB3_51:                               # %scalar.ph
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ldptr.d	$a0, $a0, 6448
	add.d	$a4, $s4, $a3
	stx.w	$s1, $s4, $a3
	st.w	$s1, $a4, 4
	st.w	$s1, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 12
	bnez	$a1, .LBB3_51
	b	.LBB3_33
.LBB3_52:                               # %.preheader280
	ld.d	$a0, $s6, %pc_lo12(wp_weight)
	ld.d	$a1, $s8, %pc_lo12(wp_offset)
	move	$a2, $zero
	b	.LBB3_54
	.p2align	4, , 16
.LBB3_53:                               # %._crit_edge358
                                        #   in Loop: Header=BB3_54 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $ra, .LBB3_76
.LBB3_54:                               # %.preheader279
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_56 Depth 2
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $s3, $a3
	blez	$a3, .LBB3_53
# %bb.55:                               # %.lr.ph357
                                        #   in Loop: Header=BB3_54 Depth=1
	slli.d	$a4, $a2, 3
	ldx.d	$a3, $a0, $a4
	ldx.d	$a4, $a1, $a4
	move	$a5, $zero
	alsl.d	$a6, $a2, $s3, 2
	.p2align	4, , 16
.LBB3_56:                               #   Parent Loop BB3_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a4, 0
	st.w	$s1, $a7, 0
	st.w	$s1, $a7, 4
	st.w	$s1, $a7, 8
	st.d	$zero, $t0, 0
	st.w	$zero, $t0, 8
	ld.w	$a7, $a6, 0
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	blt	$a5, $a7, .LBB3_56
	b	.LBB3_53
.LBB3_57:
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $s6, %pc_lo12(wp_weight)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	beqz	$s7, .LBB3_63
# %bb.58:                               # %.preheader292.preheader
	move	$a2, $zero
	b	.LBB3_60
	.p2align	4, , 16
.LBB3_59:                               # %._crit_edge342
                                        #   in Loop: Header=BB3_60 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $ra, .LBB3_68
.LBB3_60:                               # %.preheader292
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_62 Depth 2
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $s3, $a3
	blez	$a3, .LBB3_59
# %bb.61:                               # %.lr.ph341
                                        #   in Loop: Header=BB3_60 Depth=1
	slli.d	$a4, $a2, 3
	ldx.d	$a3, $a0, $a4
	ldx.d	$a4, $a1, $a4
	move	$a5, $zero
	alsl.d	$a6, $a2, $s3, 2
	.p2align	4, , 16
.LBB3_62:                               #   Parent Loop BB3_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a4, 0
	st.w	$s1, $a7, 0
	st.w	$s1, $a7, 4
	st.w	$s1, $a7, 8
	st.d	$zero, $t0, 0
	st.w	$zero, $t0, 8
	ld.w	$a7, $a6, 0
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	blt	$a5, $a7, .LBB3_62
	b	.LBB3_59
.LBB3_63:                               # %.preheader289.preheader
	move	$a2, $zero
	lu12i.w	$a3, 18
	ori	$a3, $a3, 112
	add.d	$a3, $sp, $a3
	lu12i.w	$a4, 18
	ori	$a4, $a4, 2416
	add.d	$a4, $sp, $a4
	b	.LBB3_65
	.p2align	4, , 16
.LBB3_64:                               # %._crit_edge346
                                        #   in Loop: Header=BB3_65 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 384
	addi.d	$a4, $a4, 384
	beq	$a2, $ra, .LBB3_68
.LBB3_65:                               # %.preheader289
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_67 Depth 2
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $s3, $a5
	blez	$a5, .LBB3_64
# %bb.66:                               # %.preheader288.lr.ph
                                        #   in Loop: Header=BB3_65 Depth=1
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	move	$a7, $zero
	alsl.d	$t0, $a2, $s3, 2
	move	$t1, $a4
	move	$t2, $a3
	.p2align	4, , 16
.LBB3_67:                               # %.preheader288
                                        #   Parent Loop BB3_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $a5, 0
	ld.d	$t4, $a6, 0
	ld.w	$t5, $t1, -8
	ld.w	$t6, $t2, -8
	st.w	$t5, $t3, 0
	st.w	$t6, $t4, 0
	ld.w	$t5, $t1, -4
	ld.w	$t6, $t2, -4
	ld.w	$t7, $t1, 0
	ld.w	$t8, $t2, 0
	st.w	$t5, $t3, 4
	st.w	$t6, $t4, 4
	st.w	$t7, $t3, 8
	st.w	$t8, $t4, 8
	addi.d	$a7, $a7, 1
	ld.w	$t3, $t0, 0
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$t2, $t2, 12
	addi.d	$t1, $t1, 12
	blt	$a7, $t3, .LBB3_67
	b	.LBB3_64
.LBB3_68:                               # %.loopexit291
	ld.w	$a4, $s3, 0
	blez	$a4, .LBB3_76
# %bb.69:                               # %.preheader286.lr.ph
	ld.w	$a3, $s3, 4
	blez	$a3, .LBB3_76
# %bb.70:                               # %.preheader286.preheader
	ld.d	$a0, $s6, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wbp_weight)
	ld.d	$a1, $a1, %pc_lo12(wbp_weight)
	move	$a2, $zero
	b	.LBB3_72
	.p2align	4, , 16
.LBB3_71:                               # %._crit_edge350
                                        #   in Loop: Header=BB3_72 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a4, .LBB3_76
.LBB3_72:                               # %.preheader286
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_74 Depth 2
	blez	$a3, .LBB3_71
# %bb.73:                               # %.preheader285.lr.ph
                                        #   in Loop: Header=BB3_72 Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a5, $a1, 0
	slli.d	$a7, $a2, 3
	ld.d	$t0, $a1, 8
	ldx.d	$a4, $a3, $a7
	ldx.d	$a5, $a5, $a7
	ld.d	$a6, $a0, 8
	ldx.d	$a7, $t0, $a7
	move	$t0, $zero
	.p2align	4, , 16
.LBB3_74:                               # %.preheader285
                                        #   Parent Loop BB3_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a5, 0
	ld.w	$t1, $a4, 0
	ld.d	$t2, $a6, 0
	ld.d	$t3, $a7, 0
	st.w	$t1, $a3, 0
	ld.w	$t1, $t2, 0
	st.w	$t1, $t3, 0
	ld.w	$t1, $a4, 4
	st.w	$t1, $a3, 4
	ld.w	$t1, $t2, 4
	st.w	$t1, $t3, 4
	ld.w	$t1, $a4, 8
	st.w	$t1, $a3, 8
	ld.w	$a3, $t2, 8
	st.w	$a3, $t3, 8
	ld.w	$a3, $s3, 4
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	blt	$t0, $a3, .LBB3_74
# %bb.75:                               # %._crit_edge350.loopexit
                                        #   in Loop: Header=BB3_72 Depth=1
	ld.w	$a4, $s3, 0
	b	.LBB3_71
.LBB3_76:                               # %.loopexit281
	beqz	$s7, .LBB3_79
.LBB3_77:
	move	$a0, $zero
.LBB3_78:
	lu12i.w	$a1, 18
	ori	$a1, $a1, 2784
	add.d	$sp, $sp, $a1
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB3_79:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 40
	ld.w	$a3, $s3, 0
	move	$a1, $zero
	slt	$a4, $a2, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a5
	sltui	$a5, $a2, 1
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	ld.w	$a0, $a0, 44
	ld.w	$a5, $s3, 4
	or	$a3, $a3, $a4
	st.w	$a3, $sp, 96
	sltui	$a0, $a0, 1
	slt	$a3, $a2, $a5
	masknez	$a4, $a5, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	masknez	$a3, $a2, $a0
	maskeqz	$a0, $a5, $a0
	ld.d	$a2, $s6, %pc_lo12(wp_weight)
	or	$a0, $a0, $a3
	st.w	$a0, $sp, 100
	addi.d	$a3, $sp, 96
.LBB3_80:                               # %.preheader277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_82 Depth 2
	slli.d	$a0, $a1, 2
	ldx.w	$a4, $a0, $a3
	blez	$a4, .LBB3_86
# %bb.81:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB3_80 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a5, $a2, $a0
	.p2align	4, , 16
.LBB3_82:                               # %.preheader
                                        #   Parent Loop BB3_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.w	$a7, $a6, 0
	ori	$a0, $zero, 1
	bne	$a7, $s1, .LBB3_78
# %bb.83:                               #   in Loop: Header=BB3_82 Depth=2
	ld.w	$a7, $a6, 4
	bne	$a7, $s1, .LBB3_78
# %bb.84:                               #   in Loop: Header=BB3_82 Depth=2
	ld.w	$a6, $a6, 8
	bne	$a6, $s1, .LBB3_78
# %bb.85:                               # %.critedge
                                        #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB3_82
.LBB3_86:                               # %.critedge276
                                        #   in Loop: Header=BB3_80 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $ra, .LBB3_80
	b	.LBB3_77
.Lfunc_end3:
	.size	test_wp_B_slice, .Lfunc_end3-test_wp_B_slice
                                        # -- End function
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	ref_pic_sub,@object             # @ref_pic_sub
	.local	ref_pic_sub
	.comm	ref_pic_sub,24,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	ref_qpic_sub,@object            # @ref_qpic_sub
	.local	ref_qpic_sub
	.comm	ref_qpic_sub,24,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
