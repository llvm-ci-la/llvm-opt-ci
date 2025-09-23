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
	ld.d	$a5, $t6, 0
	st.d	$zero, $s0, 0
	st.w	$zero, $s0, 8
	st.d	$t4, $fp, -8
	st.w	$t3, $fp, 0
	st.w	$t3, $a4, 0
	st.w	$zero, $a5, 0
	st.w	$t3, $a4, 4
	st.w	$zero, $a5, 4
	st.w	$t3, $a4, 8
	st.w	$zero, $a5, 8
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
	fmov.d	$fa1, $fa0
	blez	$a6, .LBB0_14
# %bb.9:                                # %.preheader119.lr.ph
	ld.wu	$a7, $a3, 52
	pcalau12i	$a4, %pc_hi20(imgY_org)
	ld.d	$t0, $a4, %pc_lo12(imgY_org)
	move	$t1, $zero
	addi.w	$t2, $a7, 0
	movgr2fr.d	$fa1, $zero
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %._crit_edge128
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$t1, $t1, 1
	beq	$t1, $a6, .LBB0_14
.LBB0_11:                               # %.preheader119
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	blez	$t2, .LBB0_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	slli.d	$a4, $t1, 3
	ldx.d	$t3, $t0, $a4
	move	$t4, $a7
	.p2align	4, , 16
.LBB0_13:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a4, $t3, 0
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 2
	bnez	$t4, .LBB0_13
	b	.LBB0_10
.LBB0_14:                               # %.preheader118
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a4, %pc_lo12(.LCPI0_0)
	fmul.d	$fa2, $fa1, $fa2
	addi.w	$a4, $a6, 19
	ori	$a5, $zero, 20
	slt	$a7, $a5, $a4
	masknez	$a5, $a5, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $a5
	addi.d	$a7, $a4, 1
	pcalau12i	$a4, %got_pc_hi20(listX)
	ld.d	$t0, $a4, %got_pc_lo12(listX)
	move	$t1, $zero
	addi.d	$t3, $sp, 792
	vldi	$vr3, -928
	ori	$t4, $zero, 32
	ori	$t5, $zero, 32
	lu32i.d	$t5, 32
	pcalau12i	$t6, %pc_hi20(ref_pic_sub)
	addi.w	$t7, $zero, -128
	ori	$t8, $zero, 127
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               # %._crit_edge141
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$s4, $t6, %pc_lo12(ref_pic_sub)
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t1, $t1, 1
	beq	$t1, $a1, .LBB0_33
.LBB0_17:                               # %.preheader117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_27 Depth 4
	slli.d	$a4, $t1, 2
	ldx.w	$fp, $a2, $a4
	blez	$fp, .LBB0_16
# %bb.18:                               # %.lr.ph140
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s0, $zero
	slli.d	$a4, $t1, 3
	ldx.d	$s1, $t0, $a4
	alsl.d	$a4, $t1, $t1, 1
	slli.d	$a4, $a4, 7
	addi.d	$a5, $sp, 24
	add.d	$s2, $a5, $a4
	add.d	$s3, $t3, $a4
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_19:                               # %._crit_edge138
                                        #   in Loop: Header=BB0_22 Depth=2
	beqz	$a0, .LBB0_29
.LBB0_20:                               #   in Loop: Header=BB0_22 Depth=2
	ld.w	$a4, $a3, 88
	fsub.d	$fa4, $fa1, $fa4
	movgr2fr.w	$fa5, $a4
	ffint.d.w	$fa5, $fa5
	fdiv.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa3
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a4, $fa4
	alsl.d	$a5, $s0, $s5, 2
	slt	$t2, $t7, $a4
	maskeqz	$a4, $a4, $t2
	masknez	$t2, $t7, $t2
	or	$a4, $a4, $t2
	slti	$t2, $a4, 127
	maskeqz	$a4, $a4, $t2
	masknez	$t2, $t8, $t2
	or	$a4, $a4, $t2
	stx.w	$a4, $s2, $a5
	stx.w	$t4, $s3, $a5
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a4, $s0, $s5, 2
	add.d	$a4, $s3, $a4
	addi.d	$s0, $s0, 1
	st.d	$t5, $a4, 4
	beq	$s0, $fp, .LBB0_15
.LBB0_22:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_27 Depth 4
	slli.d	$s5, $s0, 3
	ldx.d	$a4, $s1, $s5
	ldptr.d	$s4, $a4, 6448
	blez	$a6, .LBB0_28
# %bb.23:                               # %.preheader116.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a4, $s4, 0
	ld.w	$s6, $a3, 52
	ld.d	$s7, $a4, 0
	addi.w	$a4, $s6, 19
	ori	$s8, $zero, 20
	slt	$a5, $s8, $a4
	masknez	$ra, $s8, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $ra
	addi.d	$a5, $a4, -19
	fmov.d	$fa4, $fa0
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %._crit_edge135
                                        #   in Loop: Header=BB0_25 Depth=3
	addi.d	$s8, $s8, 1
	beq	$s8, $a7, .LBB0_19
.LBB0_25:                               # %.preheader116
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_27 Depth 4
	blez	$s6, .LBB0_24
# %bb.26:                               # %.lr.ph134
                                        #   in Loop: Header=BB0_25 Depth=3
	slli.d	$a4, $s8, 3
	ldx.d	$a4, $s7, $a4
	addi.d	$a4, $a4, 40
	move	$ra, $a5
	.p2align	4, , 16
.LBB0_27:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$t2, $a4, 0
	movgr2fr.w	$fa5, $t2
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$ra, $ra, -1
	addi.d	$a4, $a4, 2
	bnez	$ra, .LBB0_27
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_28:                               # %._crit_edge138.thread
                                        #   in Loop: Header=BB0_22 Depth=2
	fmov.d	$fa4, $fa0
	bnez	$a0, .LBB0_20
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_22 Depth=2
	fcmp.ceq.d	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_22 Depth=2
	fdiv.d	$fa4, $fa2, $fa4
	fadd.d	$fa4, $fa4, $fa3
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a4, $fa4
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_22 Depth=2
	ori	$a4, $zero, 32
.LBB0_32:                               # %.thread
                                        #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a5, $s0, $s5, 2
	addi.w	$t2, $a4, -128
	sltui	$t2, $t2, -192
	masknez	$a4, $a4, $t2
	maskeqz	$t2, $t4, $t2
	or	$a4, $t2, $a4
	stx.w	$a4, $s3, $a5
	b	.LBB0_21
.LBB0_33:                               # %.preheader115
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(wp_weight)
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(wp_offset)
	move	$a4, $zero
	addi.d	$a5, $sp, 32
	addi.d	$a6, $sp, 800
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %._crit_edge146
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 384
	addi.d	$a6, $a6, 384
	beq	$a4, $a1, .LBB0_38
.LBB0_35:                               # %.preheader114
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
	slli.d	$a7, $a4, 2
	ldx.w	$a7, $a2, $a7
	blez	$a7, .LBB0_34
# %bb.36:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB0_35 Depth=1
	slli.d	$t0, $a4, 3
	ldx.d	$a7, $a0, $t0
	ldx.d	$t0, $a3, $t0
	move	$t1, $zero
	alsl.d	$t2, $a4, $a2, 2
	move	$t3, $a6
	move	$t4, $a5
	.p2align	4, , 16
.LBB0_37:                               # %.preheader
                                        #   Parent Loop BB0_35 Depth=1
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
	blt	$t1, $t5, .LBB0_37
	b	.LBB0_34
.LBB0_38:
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
	ori	$a0, $a0, 2736
	sub.d	$sp, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$s3, $a0, 0
	ldptr.w	$a0, $s3, 15268
	ori	$ra, $zero, 2
	beqz	$a0, .LBB1_3
# %bb.1:
	ld.w	$a0, $s3, 12
	ldptr.d	$a1, $s3, 14224
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
	or	$ra, $a0, $a1
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
	pcalau12i	$a0, %pc_hi20(wp_weight)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wp_offset)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	st.w	$a2, $a3, %pc_lo12(wp_chroma_round)
	lu12i.w	$a2, 18
	ori	$a2, $a2, 56
	add.d	$a2, $sp, $a2
	lu12i.w	$a3, 18
	ori	$a3, $a3, 2368
	add.d	$a3, $sp, $a3
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$fp, $a4, %got_pc_lo12(listXsize)
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
	beq	$a4, $ra, .LBB1_8
.LBB1_5:                                # %.preheader266
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	slli.d	$a7, $a4, 2
	ldx.w	$a7, $fp, $a7
	blez	$a7, .LBB1_4
# %bb.6:                                # %.preheader265.lr.ph
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$t0, $a4, 3
	ldx.d	$a7, $a0, $t0
	ldx.d	$t0, $a1, $t0
	move	$t1, $zero
	alsl.d	$t2, $a4, $fp, 2
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
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(active_pps)
	blez	$a0, .LBB1_24
# %bb.9:                                # %.preheader263.lr.ph
	ld.wu	$a3, $fp, 4
	addi.w	$a4, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	ld.d	$a5, $a2, 8
	ld.d	$a6, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	move	$a7, $zero
	ld.d	$t0, $a2, 0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 8
	addi.d	$t1, $sp, 56
	add.d	$t1, $t1, $a2
	addi.w	$t2, $zero, -128
	ori	$t3, $zero, 127
	lu12i.w	$t4, 4
	addi.w	$t5, $zero, -1024
	ori	$t6, $zero, 1023
	ori	$t7, $zero, 32
	ori	$t8, $zero, 64
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               # %._crit_edge272
                                        #   in Loop: Header=BB1_11 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$t1, $t1, 384
	beq	$a7, $a0, .LBB1_17
.LBB1_11:                               # %.preheader263
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	blez	$a4, .LBB1_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB1_11 Depth=1
	slli.d	$s0, $a7, 3
	ldx.d	$s0, $a6, $s0
	ld.w	$s0, $s0, 4
	ld.w	$s1, $t0, 4
	sub.w	$s1, $s1, $s0
	slt	$s2, $t2, $s1
	maskeqz	$s1, $s1, $s2
	masknez	$s2, $t2, $s2
	or	$s1, $s1, $s2
	slti	$s2, $s1, 127
	maskeqz	$s1, $s1, $s2
	masknez	$s2, $t3, $s2
	or	$s1, $s1, $s2
	move	$s2, $t1
	move	$s4, $a3
	move	$s5, $a5
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_15 Depth=2
	ori	$s6, $zero, 32
	ori	$s7, $zero, 32
	lu32i.d	$s7, 32
	st.d	$s7, $s2, -8
	stptr.d	$s7, $s2, -12296
	st.w	$s6, $s2, 0
.LBB1_14:                               #   in Loop: Header=BB1_15 Depth=2
	stptr.w	$s6, $s2, -12288
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 12
	beqz	$s4, .LBB1_10
.LBB1_15:                               #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s5, 0
	ld.w	$s6, $s6, 4
	beq	$s6, $s0, .LBB1_13
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=2
	sub.w	$s6, $s6, $s0
	slt	$s7, $t2, $s6
	maskeqz	$s6, $s6, $s7
	masknez	$s7, $t2, $s7
	or	$s6, $s6, $s7
	slti	$s7, $s6, 127
	maskeqz	$s6, $s6, $s7
	masknez	$s7, $t3, $s7
	or	$s6, $s6, $s7
	bstrpick.d	$s7, $s6, 7, 7
	add.d	$s7, $s6, $s7
	ext.w.b	$s7, $s7
	srai.d	$s7, $s7, 1
	srai.d	$s8, $s7, 63
	xor	$s7, $s7, $s8
	sub.d	$s7, $s7, $s8
	or	$s7, $s7, $t4
	ext.w.h	$s6, $s6
	div.d	$s6, $s7, $s6
	ext.w.h	$s6, $s6
	mul.d	$s6, $s1, $s6
	addi.w	$s6, $s6, 32
	srai.d	$s6, $s6, 6
	slt	$s7, $t5, $s6
	maskeqz	$s6, $s6, $s7
	masknez	$s7, $t5, $s7
	or	$s6, $s6, $s7
	slti	$s7, $s6, 1023
	maskeqz	$s6, $s6, $s7
	masknez	$s7, $t6, $s7
	or	$s6, $s6, $s7
	srai.d	$s6, $s6, 2
	addi.d	$s7, $s6, -129
	sltui	$s7, $s7, -193
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $t7, $s7
	or	$s7, $s7, $s6
	st.w	$s7, $s2, -8
	sub.d	$s6, $t8, $s7
	stptr.w	$s6, $s2, -12296
	st.w	$s7, $s2, -4
	stptr.w	$s6, $s2, -12292
	st.w	$s7, $s2, 0
	b	.LBB1_14
.LBB1_17:                               # %._crit_edge274
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a7, $a1, 196
	ori	$a1, $zero, 2
	bne	$a7, $a1, .LBB1_30
# %bb.18:                               # %.preheader246.lr.ph
	move	$a1, $zero
	pcalau12i	$a3, %pc_hi20(wbp_weight)
	ld.d	$a3, $a3, %pc_lo12(wbp_weight)
	ld.w	$t0, $fp, 4
	addi.d	$a4, $sp, 56
	add.d	$a2, $a4, $a2
	lu12i.w	$a5, -4
	ori	$a4, $a5, 4088
	ori	$a5, $a5, 4092
	lu12i.w	$a6, -3
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_19:                               # %._crit_edge308
                                        #   in Loop: Header=BB1_20 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 384
	bge	$a1, $a0, .LBB1_25
.LBB1_20:                               # %.preheader246
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	blez	$t0, .LBB1_19
# %bb.21:                               # %.preheader245.lr.ph
                                        #   in Loop: Header=BB1_20 Depth=1
	ld.d	$a0, $a3, 8
	ld.d	$a7, $a3, 0
	slli.d	$t0, $a1, 3
	ldx.d	$a0, $a0, $t0
	ldx.d	$a7, $a7, $t0
	move	$t1, $zero
	move	$t2, $a2
	.p2align	4, , 16
.LBB1_22:                               # %.preheader245
                                        #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a0, 0
	ld.d	$t3, $a7, 0
	ld.w	$t4, $t2, -8
	ldx.w	$t5, $t2, $a4
	st.w	$t4, $t0, 0
	st.w	$t5, $t3, 0
	ld.w	$t4, $t2, -4
	ldx.w	$t5, $t2, $a5
	ld.w	$t6, $t2, 0
	ldx.w	$t7, $t2, $a6
	st.w	$t4, $t0, 4
	st.w	$t5, $t3, 4
	st.w	$t6, $t0, 8
	st.w	$t7, $t3, 8
	ld.w	$t0, $fp, 4
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 8
	addi.d	$a0, $a0, 8
	addi.d	$t2, $t2, 12
	blt	$t1, $t0, .LBB1_22
# %bb.23:                               # %._crit_edge308.loopexit
                                        #   in Loop: Header=BB1_20 Depth=1
	ld.w	$a0, $fp, 0
	b	.LBB1_19
.LBB1_24:                               # %._crit_edge274.thread
	ld.d	$a0, $a1, %pc_lo12(active_pps)
	ld.w	$a7, $a0, 196
	ori	$a0, $zero, 2
	bne	$a7, $a0, .LBB1_30
.LBB1_25:                               # %.preheader244
	move	$a0, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(wp_weight)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(wp_offset)
	ori	$a3, $zero, 32
	ori	$a4, $zero, 32
	lu32i.d	$a4, 32
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_26:                               # %._crit_edge312
                                        #   in Loop: Header=BB1_27 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $ra, .LBB1_69
.LBB1_27:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
	slli.d	$a5, $a0, 2
	ldx.w	$a5, $fp, $a5
	blez	$a5, .LBB1_26
# %bb.28:                               # %.lr.ph311
                                        #   in Loop: Header=BB1_27 Depth=1
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $a1, $a6
	ldx.d	$a6, $a2, $a6
	move	$a7, $zero
	alsl.d	$t0, $a0, $fp, 2
	.p2align	4, , 16
.LBB1_29:                               #   Parent Loop BB1_27 Depth=1
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
	blt	$a7, $t1, .LBB1_29
	b	.LBB1_26
.LBB1_30:                               # %.preheader262
	ld.w	$s5, $s3, 68
	movgr2fr.d	$fs0, $zero
	fmov.d	$fs1, $fs0
	blez	$s5, .LBB1_37
# %bb.31:                               # %.preheader261.lr.ph
	ld.wu	$a0, $s3, 52
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a1, $a1, %pc_lo12(imgY_org)
	move	$a2, $zero
	addi.w	$a3, $a0, 0
	movgr2fr.d	$fa0, $zero
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               # %._crit_edge278
                                        #   in Loop: Header=BB1_33 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s5, .LBB1_36
.LBB1_33:                               # %.preheader261
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_35 Depth 2
	blez	$a3, .LBB1_32
# %bb.34:                               # %.lr.ph277
                                        #   in Loop: Header=BB1_33 Depth=1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a1, $a4
	move	$a5, $a0
	.p2align	4, , 16
.LBB1_35:                               #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a4, 0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 2
	bnez	$a5, .LBB1_35
	b	.LBB1_32
.LBB1_36:                               # %.preheader260.loopexit
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_0)
	fmul.d	$fs1, $fa0, $fa1
.LBB1_37:                               # %.preheader260
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $s5, 19
	ori	$a1, $zero, 20
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	addi.d	$s6, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $zero
	ori	$s4, $zero, 32
	ori	$s7, $zero, 32
	lu32i.d	$s7, 32
	st.d	$ra, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_38:                               # %._crit_edge291
                                        #   in Loop: Header=BB1_40 Depth=1
	pcalau12i	$a0, %pc_hi20(ref_qpic_sub)
	st.d	$a1, $a0, %pc_lo12(ref_qpic_sub)
	ld.d	$ra, $sp, 48                    # 8-byte Folded Reload
.LBB1_39:                               #   in Loop: Header=BB1_40 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $ra, .LBB1_51
.LBB1_40:                               # %.preheader259
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_43 Depth 2
                                        #       Child Loop BB1_46 Depth 3
                                        #         Child Loop BB1_48 Depth 4
	slli.d	$a0, $s1, 2
	ldx.w	$s2, $fp, $a0
	blez	$s2, .LBB1_39
# %bb.41:                               # %.lr.ph290
                                        #   in Loop: Header=BB1_40 Depth=1
	alsl.d	$a0, $s1, $s1, 1
	slli.d	$a1, $a0, 7
	lu12i.w	$a0, 18
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	add.d	$a0, $a0, $a1
	slli.d	$a2, $s1, 3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$s8, $a3, $a2
	lu12i.w	$a2, 18
	ori	$a2, $a2, 2360
	add.d	$a2, $sp, $a2
	add.d	$s0, $a2, $a1
	slli.d	$a1, $s2, 3
	alsl.d	$a2, $s2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vldi	$vr2, -928
	move	$a0, $zero
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_42:                               # %._crit_edge288.thread
                                        #   in Loop: Header=BB1_43 Depth=2
	addi.w	$a4, $a3, -128
	sltui	$a4, $a4, -256
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $s4, $a4
	or	$a3, $a4, $a3
	alsl.d	$a2, $a0, $a2, 2
	add.d	$a4, $s0, $a2
	stx.w	$a3, $s0, $a2
	addi.d	$a0, $a0, 1
	st.d	$s7, $a4, 4
	beq	$a0, $s2, .LBB1_38
.LBB1_43:                               #   Parent Loop BB1_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_46 Depth 3
                                        #         Child Loop BB1_48 Depth 4
	slli.d	$a2, $a0, 3
	ldx.d	$a1, $s8, $a2
	ldptr.d	$a1, $a1, 6448
	ori	$a3, $zero, 32
	blez	$s5, .LBB1_42
# %bb.44:                               # %.preheader258.lr.ph
                                        #   in Loop: Header=BB1_43 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s3, 52
	ld.d	$a5, $a5, 0
	addi.w	$a7, $a4, 19
	ori	$a6, $zero, 20
	slt	$t0, $a6, $a7
	masknez	$t1, $a6, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	addi.d	$a7, $a7, -19
	fmov.d	$fa0, $fs0
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_45:                               # %._crit_edge285
                                        #   in Loop: Header=BB1_46 Depth=3
	addi.d	$a6, $a6, 1
	beq	$a6, $s6, .LBB1_49
.LBB1_46:                               # %.preheader258
                                        #   Parent Loop BB1_40 Depth=1
                                        #     Parent Loop BB1_43 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_48 Depth 4
	blez	$a4, .LBB1_45
# %bb.47:                               # %.lr.ph284
                                        #   in Loop: Header=BB1_46 Depth=3
	slli.d	$t0, $a6, 3
	ldx.d	$t0, $a5, $t0
	addi.d	$t0, $t0, 40
	move	$t1, $a7
	.p2align	4, , 16
.LBB1_48:                               #   Parent Loop BB1_40 Depth=1
                                        #     Parent Loop BB1_43 Depth=2
                                        #       Parent Loop BB1_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$t2, $t0, 0
	movgr2fr.w	$fa1, $t2
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 2
	bnez	$t1, .LBB1_48
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_49:                               # %._crit_edge288
                                        #   in Loop: Header=BB1_43 Depth=2
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB1_42
# %bb.50:                               #   in Loop: Header=BB1_43 Depth=2
	fdiv.d	$fa0, $fs1, $fa0
	fadd.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	b	.LBB1_42
.LBB1_51:
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(wp_weight)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	bne	$a3, $a2, .LBB1_57
# %bb.52:                               # %.preheader252.preheader
	move	$a2, $zero
	lu12i.w	$a3, 18
	ori	$a3, $a3, 64
	add.d	$a3, $sp, $a3
	lu12i.w	$a4, 18
	ori	$a4, $a4, 2368
	add.d	$a4, $sp, $a4
	b	.LBB1_54
	.p2align	4, , 16
.LBB1_53:                               # %._crit_edge300
                                        #   in Loop: Header=BB1_54 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 384
	addi.d	$a4, $a4, 384
	beq	$a2, $ra, .LBB1_62
.LBB1_54:                               # %.preheader252
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_56 Depth 2
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $fp, $a5
	blez	$a5, .LBB1_53
# %bb.55:                               # %.preheader251.lr.ph
                                        #   in Loop: Header=BB1_54 Depth=1
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	move	$a7, $zero
	alsl.d	$t0, $a2, $fp, 2
	move	$t1, $a4
	move	$t2, $a3
	.p2align	4, , 16
.LBB1_56:                               # %.preheader251
                                        #   Parent Loop BB1_54 Depth=1
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
	blt	$a7, $t3, .LBB1_56
	b	.LBB1_53
.LBB1_57:                               # %.preheader255.preheader
	move	$a2, $zero
	ori	$a3, $zero, 32
	ori	$a4, $zero, 32
	lu32i.d	$a4, 32
	b	.LBB1_59
	.p2align	4, , 16
.LBB1_58:                               # %._crit_edge296
                                        #   in Loop: Header=BB1_59 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $ra, .LBB1_62
.LBB1_59:                               # %.preheader255
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_61 Depth 2
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $fp, $a5
	blez	$a5, .LBB1_58
# %bb.60:                               # %.lr.ph295
                                        #   in Loop: Header=BB1_59 Depth=1
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	move	$a7, $zero
	alsl.d	$t0, $a2, $fp, 2
	.p2align	4, , 16
.LBB1_61:                               #   Parent Loop BB1_59 Depth=1
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
	blt	$a7, $t1, .LBB1_61
	b	.LBB1_58
.LBB1_62:                               # %.loopexit254
	ld.w	$a3, $fp, 0
	blez	$a3, .LBB1_69
# %bb.63:                               # %.preheader249.lr.ph
	ld.d	$a0, $s0, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wbp_weight)
	ld.d	$a1, $a1, %pc_lo12(wbp_weight)
	ld.w	$a7, $fp, 4
	move	$a2, $zero
	b	.LBB1_65
	.p2align	4, , 16
.LBB1_64:                               # %._crit_edge304
                                        #   in Loop: Header=BB1_65 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB1_69
.LBB1_65:                               # %.preheader249
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_67 Depth 2
	blez	$a7, .LBB1_64
# %bb.66:                               # %.preheader248.lr.ph
                                        #   in Loop: Header=BB1_65 Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	slli.d	$a6, $a2, 3
	ld.d	$a7, $a1, 8
	ldx.d	$a3, $a3, $a6
	ldx.d	$a4, $a4, $a6
	ld.d	$a5, $a0, 8
	ldx.d	$a6, $a7, $a6
	move	$t0, $zero
	.p2align	4, , 16
.LBB1_67:                               # %.preheader248
                                        #   Parent Loop BB1_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a4, 0
	ld.w	$t1, $a3, 0
	ld.d	$t2, $a5, 0
	ld.d	$t3, $a6, 0
	st.w	$t1, $a7, 0
	ld.w	$t1, $t2, 0
	st.w	$t1, $t3, 0
	ld.w	$t1, $a3, 4
	st.w	$t1, $a7, 4
	ld.w	$t1, $t2, 4
	st.w	$t1, $t3, 4
	ld.w	$t1, $a3, 8
	st.w	$t1, $a7, 8
	ld.w	$a7, $t2, 8
	st.w	$a7, $t3, 8
	ld.w	$a7, $fp, 4
	addi.d	$t0, $t0, 1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	blt	$t0, $a7, .LBB1_67
# %bb.68:                               # %._crit_edge304.loopexit
                                        #   in Loop: Header=BB1_65 Depth=1
	ld.w	$a3, $fp, 0
	b	.LBB1_64
.LBB1_69:                               # %.loopexit
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2736
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
	fmov.d	$fa1, $fa0
	blez	$a4, .LBB2_14
# %bb.9:                                # %.preheader138.lr.ph
	ld.wu	$a5, $a3, 52
	pcalau12i	$a6, %pc_hi20(imgY_org)
	ld.d	$a6, $a6, %pc_lo12(imgY_org)
	move	$a7, $zero
	addi.w	$t0, $a5, 0
	movgr2fr.d	$fa1, $zero
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %._crit_edge147
                                        #   in Loop: Header=BB2_11 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a4, .LBB2_14
.LBB2_11:                               # %.preheader138
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	blez	$t0, .LBB2_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB2_11 Depth=1
	slli.d	$t1, $a7, 3
	ldx.d	$t1, $a6, $t1
	move	$t2, $a5
	.p2align	4, , 16
.LBB2_13:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t3, $t1, 0
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 2
	bnez	$t2, .LBB2_13
	b	.LBB2_10
.LBB2_14:                               # %.preheader137
	pcalau12i	$a5, %pc_hi20(.LCPI2_0)
	fld.d	$fa2, $a5, %pc_lo12(.LCPI2_0)
	fmul.d	$fa2, $fa1, $fa2
	addi.w	$a5, $a4, 19
	ori	$a6, $zero, 20
	slt	$a7, $a6, $a5
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	move	$a7, $zero
	addi.d	$t1, $sp, 776
	vldi	$vr3, -928
	ori	$t2, $zero, 32
	ori	$t3, $zero, 32
	lu32i.d	$t3, 32
	pcalau12i	$t4, %pc_hi20(ref_pic_sub)
	addi.w	$t5, $zero, -128
	ori	$t6, $zero, 127
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_15:                               # %._crit_edge160
                                        #   in Loop: Header=BB2_17 Depth=1
	st.d	$s2, $t4, %pc_lo12(ref_pic_sub)
.LBB2_16:                               #   in Loop: Header=BB2_17 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a1, .LBB2_33
.LBB2_17:                               # %.preheader136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_22 Depth 2
                                        #       Child Loop BB2_25 Depth 3
                                        #         Child Loop BB2_27 Depth 4
	slli.d	$t7, $a7, 2
	ldx.w	$t7, $a2, $t7
	blez	$t7, .LBB2_16
# %bb.18:                               # %.lr.ph159
                                        #   in Loop: Header=BB2_17 Depth=1
	move	$t8, $zero
	slli.d	$fp, $a7, 3
	ldx.d	$fp, $a6, $fp
	alsl.d	$s0, $a7, $a7, 1
	slli.d	$s1, $s0, 7
	addi.d	$t0, $sp, 8
	add.d	$s0, $t0, $s1
	add.d	$s1, $t1, $s1
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_19:                               # %._crit_edge157
                                        #   in Loop: Header=BB2_22 Depth=2
	beqz	$a0, .LBB2_29
.LBB2_20:                               #   in Loop: Header=BB2_22 Depth=2
	ld.w	$t0, $a3, 88
	fsub.d	$fa4, $fa1, $fa4
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	fdiv.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa3
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$t0, $fa4
	alsl.d	$s4, $t8, $s3, 2
	slt	$s5, $t5, $t0
	maskeqz	$t0, $t0, $s5
	masknez	$s5, $t5, $s5
	or	$t0, $t0, $s5
	slti	$s5, $t0, 127
	maskeqz	$t0, $t0, $s5
	masknez	$s5, $t6, $s5
	or	$t0, $t0, $s5
	stx.w	$t0, $s0, $s4
	stx.w	$t2, $s1, $s4
.LBB2_21:                               #   in Loop: Header=BB2_22 Depth=2
	alsl.d	$t0, $t8, $s3, 2
	add.d	$t0, $s1, $t0
	addi.d	$t8, $t8, 1
	st.d	$t3, $t0, 4
	beq	$t8, $t7, .LBB2_15
.LBB2_22:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_25 Depth 3
                                        #         Child Loop BB2_27 Depth 4
	slli.d	$s3, $t8, 3
	ldx.d	$s2, $fp, $s3
	ldptr.d	$s2, $s2, 6448
	blez	$a4, .LBB2_28
# %bb.23:                               # %.preheader135.lr.ph
                                        #   in Loop: Header=BB2_22 Depth=2
	ld.d	$s5, $s2, 0
	ld.w	$s4, $a3, 52
	ld.d	$s5, $s5, 0
	addi.w	$s7, $s4, 19
	ori	$s6, $zero, 20
	slt	$s8, $s6, $s7
	masknez	$ra, $s6, $s8
	maskeqz	$s7, $s7, $s8
	or	$s7, $s7, $ra
	addi.d	$s7, $s7, -19
	fmov.d	$fa4, $fa0
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               # %._crit_edge154
                                        #   in Loop: Header=BB2_25 Depth=3
	addi.d	$s6, $s6, 1
	beq	$s6, $a5, .LBB2_19
.LBB2_25:                               # %.preheader135
                                        #   Parent Loop BB2_17 Depth=1
                                        #     Parent Loop BB2_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_27 Depth 4
	blez	$s4, .LBB2_24
# %bb.26:                               # %.lr.ph153
                                        #   in Loop: Header=BB2_25 Depth=3
	slli.d	$s8, $s6, 3
	ldx.d	$s8, $s5, $s8
	addi.d	$s8, $s8, 40
	move	$ra, $s7
	.p2align	4, , 16
.LBB2_27:                               #   Parent Loop BB2_17 Depth=1
                                        #     Parent Loop BB2_22 Depth=2
                                        #       Parent Loop BB2_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$t0, $s8, 0
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$ra, $ra, -1
	addi.d	$s8, $s8, 2
	bnez	$ra, .LBB2_27
	b	.LBB2_24
	.p2align	4, , 16
.LBB2_28:                               # %._crit_edge157.thread
                                        #   in Loop: Header=BB2_22 Depth=2
	fmov.d	$fa4, $fa0
	bnez	$a0, .LBB2_20
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_29:                               #   in Loop: Header=BB2_22 Depth=2
	fcmp.ceq.d	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_22 Depth=2
	fdiv.d	$fa4, $fa2, $fa4
	fadd.d	$fa4, $fa4, $fa3
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$s4, $fa4
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_31:                               #   in Loop: Header=BB2_22 Depth=2
	ori	$s4, $zero, 32
.LBB2_32:                               # %.thread
                                        #   in Loop: Header=BB2_22 Depth=2
	alsl.d	$t0, $t8, $s3, 2
	addi.w	$s5, $s4, -128
	sltui	$s5, $s5, -192
	masknez	$s4, $s4, $s5
	maskeqz	$s5, $t2, $s5
	or	$s4, $s5, $s4
	stx.w	$s4, $s1, $t0
	b	.LBB2_21
.LBB2_33:                               # %.preheader133
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	move	$a3, $zero
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a5, $a0, %pc_lo12(active_sps)
	addi.d	$a6, $sp, 780
	addi.d	$a7, $sp, 16
	ori	$t0, $zero, 2952
	ori	$t1, $zero, 32
	ori	$t2, $zero, 66
	ori	$t3, $zero, 2
.LBB2_34:                               # %.preheader132
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_36 Depth 2
	slli.d	$a0, $a3, 2
	ldx.w	$t4, $a2, $a0
	blez	$t4, .LBB2_57
# %bb.35:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB2_34 Depth=1
	ldx.w	$t5, $a4, $t0
	move	$t6, $a7
	move	$t7, $a6
	.p2align	4, , 16
.LBB2_36:                               # %.preheader
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$t5, .LBB2_40
# %bb.37:                               #   in Loop: Header=BB2_36 Depth=2
	ld.w	$a0, $a5, 4
	ld.w	$t8, $t6, -8
	bne	$a0, $t2, .LBB2_44
# %bb.38:                               # %.thread220
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.w	$fp, $t7, -4
	ori	$a0, $zero, 1
	bne	$fp, $t1, .LBB2_59
# %bb.39:                               # %.thread220
                                        #   in Loop: Header=BB2_36 Depth=2
	beqz	$t8, .LBB2_46
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_40:                               #   in Loop: Header=BB2_36 Depth=2
	ld.w	$t8, $t7, -4
	ori	$a0, $zero, 1
	bne	$t8, $t1, .LBB2_59
# %bb.41:                               #   in Loop: Header=BB2_36 Depth=2
	ld.w	$t8, $t6, -8
	bnez	$t8, .LBB2_59
# %bb.42:                               #   in Loop: Header=BB2_36 Depth=2
	ld.w	$t8, $t7, 0
	bne	$t8, $t1, .LBB2_59
# %bb.43:                               #   in Loop: Header=BB2_36 Depth=2
	ld.w	$t8, $t6, -4
	beqz	$t8, .LBB2_52
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_44:                               # %.thread212
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.w	$fp, $t7, -4
	ori	$a0, $zero, 1
	bne	$fp, $t1, .LBB2_59
# %bb.45:                               # %.thread212
                                        #   in Loop: Header=BB2_36 Depth=2
	srai.d	$fp, $t8, 31
	xor	$t8, $t8, $fp
	sub.w	$t8, $t8, $fp
	bltu	$t3, $t8, .LBB2_59
.LBB2_46:                               # %.thread215
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.w	$a0, $a5, 4
	ld.w	$t8, $t6, -4
	bne	$a0, $t2, .LBB2_49
# %bb.47:                               # %.thread223
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.w	$fp, $t7, 0
	ori	$a0, $zero, 1
	bne	$fp, $t1, .LBB2_59
# %bb.48:                               # %.thread223
                                        #   in Loop: Header=BB2_36 Depth=2
	beqz	$t8, .LBB2_51
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_49:                               # %.thread216
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.w	$fp, $t7, 0
	ori	$a0, $zero, 1
	bne	$fp, $t1, .LBB2_59
# %bb.50:                               # %.thread216
                                        #   in Loop: Header=BB2_36 Depth=2
	srai.d	$fp, $t8, 31
	xor	$t8, $t8, $fp
	sub.w	$t8, $t8, $fp
	bltu	$t3, $t8, .LBB2_59
.LBB2_51:                               # %.thread219
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.w	$a0, $a5, 4
	bne	$a0, $t2, .LBB2_53
.LBB2_52:                               #   in Loop: Header=BB2_36 Depth=2
	ld.w	$a0, $t6, 0
	sltu	$t8, $zero, $a0
	b	.LBB2_54
	.p2align	4, , 16
.LBB2_53:                               #   in Loop: Header=BB2_36 Depth=2
	ld.w	$a0, $t6, 0
	srai.d	$t8, $a0, 31
	xor	$a0, $a0, $t8
	sub.w	$a0, $a0, $t8
	sltu	$t8, $t3, $a0
.LBB2_54:                               #   in Loop: Header=BB2_36 Depth=2
	ld.w	$fp, $t7, 4
	ori	$a0, $zero, 1
	bne	$fp, $t1, .LBB2_59
# %bb.55:                               #   in Loop: Header=BB2_36 Depth=2
	bnez	$t8, .LBB2_59
# %bb.56:                               # %.critedge131
                                        #   in Loop: Header=BB2_36 Depth=2
	addi.d	$t4, $t4, -1
	addi.d	$t7, $t7, 12
	addi.d	$t6, $t6, 12
	bnez	$t4, .LBB2_36
.LBB2_57:                               # %.critedge
                                        #   in Loop: Header=BB2_34 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 384
	addi.d	$a7, $a7, 384
	bne	$a3, $a1, .LBB2_34
# %bb.58:
	move	$a0, $zero
.LBB2_59:                               # %.loopexit
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
	ori	$a1, $a1, 2736
	sub.d	$sp, $sp, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$s5, $a0, 0
	ldptr.w	$a0, $s5, 15268
	ori	$s0, $zero, 2
	beqz	$a0, .LBB3_3
# %bb.1:
	ld.w	$a0, $s5, 12
	ldptr.d	$a1, $s5, 14224
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
	or	$s0, $a0, $a1
.LBB3_3:
	addi.d	$a0, $s2, -1
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
	pcalau12i	$a0, %pc_hi20(wp_weight)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wp_offset)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	sll.w	$s1, $a3, $a2
	lu12i.w	$a2, 18
	ori	$a2, $a2, 56
	add.d	$a2, $sp, $a2
	lu12i.w	$a3, 18
	ori	$a3, $a3, 2368
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
	beq	$a4, $s0, .LBB3_8
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
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	blez	$a0, .LBB3_24
# %bb.9:                                # %.preheader300.lr.ph
	ld.wu	$a1, $s3, 4
	addi.w	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$a4, $a3, 8
	ld.d	$a5, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$a3, $a3, %got_pc_lo12(enc_picture)
	move	$a6, $zero
	ld.d	$a7, $a3, 0
	lu12i.w	$a3, 3
	ori	$a3, $a3, 8
	addi.d	$t0, $sp, 56
	add.d	$t0, $t0, $a3
	addi.w	$t1, $zero, -128
	ori	$t2, $zero, 127
	lu12i.w	$t3, 4
	addi.w	$t4, $zero, -1024
	ori	$t5, $zero, 1023
	ori	$t6, $zero, 32
	ori	$t7, $zero, 64
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               # %._crit_edge309
                                        #   in Loop: Header=BB3_11 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 384
	beq	$a6, $a0, .LBB3_17
.LBB3_11:                               # %.preheader300
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	blez	$a2, .LBB3_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB3_11 Depth=1
	slli.d	$t8, $a6, 3
	ldx.d	$t8, $a5, $t8
	ld.w	$t8, $t8, 4
	ld.w	$fp, $a7, 4
	sub.w	$fp, $fp, $t8
	slt	$s2, $t1, $fp
	maskeqz	$fp, $fp, $s2
	masknez	$s2, $t1, $s2
	or	$fp, $fp, $s2
	slti	$s2, $fp, 127
	maskeqz	$fp, $fp, $s2
	masknez	$s2, $t2, $s2
	or	$fp, $fp, $s2
	move	$s2, $t0
	move	$s4, $a1
	move	$s6, $a4
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_13:                               #   in Loop: Header=BB3_15 Depth=2
	st.w	$s1, $s2, -8
	stptr.w	$s1, $s2, -12296
	st.w	$s1, $s2, -4
	stptr.w	$s1, $s2, -12292
	st.w	$s1, $s2, 0
	move	$s7, $s1
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=2
	stptr.w	$s7, $s2, -12288
	addi.d	$s6, $s6, 8
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 12
	beqz	$s4, .LBB3_10
.LBB3_15:                               #   Parent Loop BB3_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s6, 0
	ld.w	$s7, $s7, 4
	beq	$s7, $t8, .LBB3_13
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=2
	sub.w	$s7, $s7, $t8
	slt	$s8, $t1, $s7
	maskeqz	$s7, $s7, $s8
	masknez	$s8, $t1, $s8
	or	$s7, $s7, $s8
	slti	$s8, $s7, 127
	maskeqz	$s7, $s7, $s8
	masknez	$s8, $t2, $s8
	or	$s7, $s7, $s8
	bstrpick.d	$s8, $s7, 7, 7
	add.d	$s8, $s7, $s8
	ext.w.b	$s8, $s8
	srai.d	$s8, $s8, 1
	srai.d	$ra, $s8, 63
	xor	$s8, $s8, $ra
	sub.d	$s8, $s8, $ra
	or	$s8, $s8, $t3
	ext.w.h	$s7, $s7
	div.d	$s7, $s8, $s7
	ext.w.h	$s7, $s7
	mul.d	$s7, $fp, $s7
	addi.w	$s7, $s7, 32
	srai.d	$s7, $s7, 6
	slt	$s8, $t4, $s7
	maskeqz	$s7, $s7, $s8
	masknez	$s8, $t4, $s8
	or	$s7, $s7, $s8
	slti	$s8, $s7, 1023
	maskeqz	$s7, $s7, $s8
	masknez	$s8, $t5, $s8
	or	$s7, $s7, $s8
	srai.d	$s7, $s7, 2
	addi.d	$s8, $s7, -129
	sltui	$s8, $s8, -193
	masknez	$s7, $s7, $s8
	maskeqz	$s8, $t6, $s8
	or	$s8, $s8, $s7
	st.w	$s8, $s2, -8
	sub.d	$s7, $t7, $s8
	stptr.w	$s7, $s2, -12296
	st.w	$s8, $s2, -4
	stptr.w	$s7, $s2, -12292
	st.w	$s8, $s2, 0
	b	.LBB3_14
.LBB3_17:                               # %._crit_edge311
	ori	$a1, $zero, 1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	bne	$s2, $a1, .LBB3_30
# %bb.18:                               # %.preheader283.lr.ph
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(wbp_weight)
	ld.d	$a2, $a2, %pc_lo12(wbp_weight)
	ld.w	$t0, $s3, 4
	addi.d	$a4, $sp, 56
	add.d	$a3, $a4, $a3
	lu12i.w	$a5, -4
	ori	$a4, $a5, 4088
	ori	$a5, $a5, 4092
	lu12i.w	$a6, -3
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_19:                               # %._crit_edge345
                                        #   in Loop: Header=BB3_20 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 384
	bge	$a1, $a0, .LBB3_25
.LBB3_20:                               # %.preheader283
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
	blez	$t0, .LBB3_19
# %bb.21:                               # %.preheader282.lr.ph
                                        #   in Loop: Header=BB3_20 Depth=1
	ld.d	$a0, $a2, 8
	ld.d	$a7, $a2, 0
	slli.d	$t0, $a1, 3
	ldx.d	$a0, $a0, $t0
	ldx.d	$a7, $a7, $t0
	move	$t1, $zero
	move	$t2, $a3
	.p2align	4, , 16
.LBB3_22:                               # %.preheader282
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a0, 0
	ld.d	$t3, $a7, 0
	ld.w	$t4, $t2, -8
	ldx.w	$t5, $t2, $a4
	st.w	$t4, $t0, 0
	st.w	$t5, $t3, 0
	ld.w	$t4, $t2, -4
	ldx.w	$t5, $t2, $a5
	ld.w	$t6, $t2, 0
	ldx.w	$t7, $t2, $a6
	st.w	$t4, $t0, 4
	st.w	$t5, $t3, 4
	st.w	$t6, $t0, 8
	st.w	$t7, $t3, 8
	ld.w	$t0, $s3, 4
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 8
	addi.d	$a0, $a0, 8
	addi.d	$t2, $t2, 12
	blt	$t1, $t0, .LBB3_22
# %bb.23:                               # %._crit_edge345.loopexit
                                        #   in Loop: Header=BB3_20 Depth=1
	ld.w	$a0, $s3, 0
	b	.LBB3_19
.LBB3_24:                               # %._crit_edge311.thread
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB3_30
.LBB3_25:                               # %.preheader280
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(wp_weight)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	move	$a2, $zero
	b	.LBB3_27
	.p2align	4, , 16
.LBB3_26:                               # %._crit_edge349
                                        #   in Loop: Header=BB3_27 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s0, .LBB3_68
.LBB3_27:                               # %.preheader279
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $s3, $a3
	blez	$a3, .LBB3_26
# %bb.28:                               # %.lr.ph348
                                        #   in Loop: Header=BB3_27 Depth=1
	slli.d	$a4, $a2, 3
	ldx.d	$a3, $a0, $a4
	ldx.d	$a4, $a1, $a4
	move	$a5, $zero
	alsl.d	$a6, $a2, $s3, 2
	.p2align	4, , 16
.LBB3_29:                               #   Parent Loop BB3_27 Depth=1
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
	blt	$a5, $a7, .LBB3_29
	b	.LBB3_26
.LBB3_30:                               # %.preheader299
	ld.w	$s6, $s5, 68
	movgr2fr.d	$fs0, $zero
	fmov.d	$fa0, $fs0
	blez	$s6, .LBB3_36
# %bb.31:                               # %.preheader298.lr.ph
	ld.wu	$a0, $s5, 52
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a1, $a1, %pc_lo12(imgY_org)
	move	$a2, $zero
	addi.w	$a3, $a0, 0
	movgr2fr.d	$fa0, $zero
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_32:                               # %._crit_edge315
                                        #   in Loop: Header=BB3_33 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s6, .LBB3_36
.LBB3_33:                               # %.preheader298
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_35 Depth 2
	blez	$a3, .LBB3_32
# %bb.34:                               # %.lr.ph314
                                        #   in Loop: Header=BB3_33 Depth=1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a1, $a4
	move	$a5, $a0
	.p2align	4, , 16
.LBB3_35:                               #   Parent Loop BB3_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a4, 0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 2
	bnez	$a5, .LBB3_35
	b	.LBB3_32
.LBB3_36:                               # %.preheader297
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fs1, $fa0, $fa1
	addi.w	$a0, $s6, 19
	ori	$a1, $zero, 20
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	addi.d	$s7, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $zero
	b	.LBB3_39
	.p2align	4, , 16
.LBB3_37:                               # %._crit_edge328
                                        #   in Loop: Header=BB3_39 Depth=1
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	st.d	$a1, $a0, %pc_lo12(ref_pic_sub)
.LBB3_38:                               #   in Loop: Header=BB3_39 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s0, .LBB3_50
.LBB3_39:                               # %.preheader296
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_42 Depth 2
                                        #       Child Loop BB3_45 Depth 3
                                        #         Child Loop BB3_47 Depth 4
	slli.d	$a0, $fp, 2
	ldx.w	$s8, $s3, $a0
	blez	$s8, .LBB3_38
# %bb.40:                               # %.lr.ph327
                                        #   in Loop: Header=BB3_39 Depth=1
	alsl.d	$a0, $fp, $fp, 1
	slli.d	$a1, $a0, 7
	lu12i.w	$a0, 18
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	add.d	$a0, $a0, $a1
	slli.d	$a2, $fp, 3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$s4, $a3, $a2
	lu12i.w	$a2, 18
	ori	$a2, $a2, 2360
	add.d	$a2, $sp, $a2
	add.d	$s2, $a2, $a1
	slli.d	$a1, $s8, 3
	alsl.d	$a2, $s8, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vldi	$vr2, -928
	move	$a0, $zero
	b	.LBB3_42
	.p2align	4, , 16
.LBB3_41:                               # %._crit_edge325.thread
                                        #   in Loop: Header=BB3_42 Depth=2
	addi.w	$a4, $a3, -128
	sltui	$a4, $a4, -192
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $s1, $a4
	or	$a3, $a4, $a3
	alsl.d	$a2, $a0, $a2, 2
	add.d	$a4, $s2, $a2
	stx.w	$a3, $s2, $a2
	st.w	$s1, $a4, 4
	addi.d	$a0, $a0, 1
	st.w	$s1, $a4, 8
	beq	$a0, $s8, .LBB3_37
.LBB3_42:                               #   Parent Loop BB3_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_45 Depth 3
                                        #         Child Loop BB3_47 Depth 4
	slli.d	$a2, $a0, 3
	ldx.d	$a1, $s4, $a2
	ldptr.d	$a1, $a1, 6448
	move	$a3, $s1
	blez	$s6, .LBB3_41
# %bb.43:                               # %.preheader295.lr.ph
                                        #   in Loop: Header=BB3_42 Depth=2
	ld.d	$a4, $a1, 0
	ld.w	$a3, $s5, 52
	ld.d	$a4, $a4, 0
	addi.w	$a6, $a3, 19
	ori	$a5, $zero, 20
	slt	$a7, $a5, $a6
	masknez	$t0, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	addi.d	$a6, $a6, -19
	fmov.d	$fa0, $fs0
	b	.LBB3_45
	.p2align	4, , 16
.LBB3_44:                               # %._crit_edge322
                                        #   in Loop: Header=BB3_45 Depth=3
	addi.d	$a5, $a5, 1
	beq	$a5, $s7, .LBB3_48
.LBB3_45:                               # %.preheader295
                                        #   Parent Loop BB3_39 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_47 Depth 4
	blez	$a3, .LBB3_44
# %bb.46:                               # %.lr.ph321
                                        #   in Loop: Header=BB3_45 Depth=3
	slli.d	$a7, $a5, 3
	ldx.d	$a7, $a4, $a7
	addi.d	$a7, $a7, 40
	move	$t0, $a6
	.p2align	4, , 16
.LBB3_47:                               #   Parent Loop BB3_39 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        #       Parent Loop BB3_45 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$t1, $a7, 0
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 2
	bnez	$t0, .LBB3_47
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_48:                               # %._crit_edge325
                                        #   in Loop: Header=BB3_42 Depth=2
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	move	$a3, $s1
	bcnez	$fcc0, .LBB3_41
# %bb.49:                               #   in Loop: Header=BB3_42 Depth=2
	fdiv.d	$fa0, $fs1, $fa0
	fadd.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	b	.LBB3_41
.LBB3_50:
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(wp_weight)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	beqz	$s2, .LBB3_56
# %bb.51:                               # %.preheader292.preheader
	move	$a2, $zero
	b	.LBB3_53
	.p2align	4, , 16
.LBB3_52:                               # %._crit_edge333
                                        #   in Loop: Header=BB3_53 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s0, .LBB3_61
.LBB3_53:                               # %.preheader292
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_55 Depth 2
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $s3, $a3
	blez	$a3, .LBB3_52
# %bb.54:                               # %.lr.ph332
                                        #   in Loop: Header=BB3_53 Depth=1
	slli.d	$a4, $a2, 3
	ldx.d	$a3, $a0, $a4
	ldx.d	$a4, $a1, $a4
	move	$a5, $zero
	alsl.d	$a6, $a2, $s3, 2
	.p2align	4, , 16
.LBB3_55:                               #   Parent Loop BB3_53 Depth=1
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
	blt	$a5, $a7, .LBB3_55
	b	.LBB3_52
.LBB3_56:                               # %.preheader289.preheader
	move	$a2, $zero
	lu12i.w	$a3, 18
	ori	$a3, $a3, 64
	add.d	$a3, $sp, $a3
	lu12i.w	$a4, 18
	ori	$a4, $a4, 2368
	add.d	$a4, $sp, $a4
	b	.LBB3_58
	.p2align	4, , 16
.LBB3_57:                               # %._crit_edge337
                                        #   in Loop: Header=BB3_58 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 384
	addi.d	$a4, $a4, 384
	beq	$a2, $s0, .LBB3_61
.LBB3_58:                               # %.preheader289
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_60 Depth 2
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $s3, $a5
	blez	$a5, .LBB3_57
# %bb.59:                               # %.preheader288.lr.ph
                                        #   in Loop: Header=BB3_58 Depth=1
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	move	$a7, $zero
	alsl.d	$t0, $a2, $s3, 2
	move	$t1, $a4
	move	$t2, $a3
	.p2align	4, , 16
.LBB3_60:                               # %.preheader288
                                        #   Parent Loop BB3_58 Depth=1
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
	blt	$a7, $t3, .LBB3_60
	b	.LBB3_57
.LBB3_61:                               # %.loopexit291
	ld.w	$a3, $s3, 0
	blez	$a3, .LBB3_68
# %bb.62:                               # %.preheader286.lr.ph
	ld.d	$a0, $fp, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wbp_weight)
	ld.d	$a1, $a1, %pc_lo12(wbp_weight)
	ld.w	$a7, $s3, 4
	move	$a2, $zero
	b	.LBB3_64
	.p2align	4, , 16
.LBB3_63:                               # %._crit_edge341
                                        #   in Loop: Header=BB3_64 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB3_68
.LBB3_64:                               # %.preheader286
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_66 Depth 2
	blez	$a7, .LBB3_63
# %bb.65:                               # %.preheader285.lr.ph
                                        #   in Loop: Header=BB3_64 Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	slli.d	$a6, $a2, 3
	ld.d	$a7, $a1, 8
	ldx.d	$a3, $a3, $a6
	ldx.d	$a4, $a4, $a6
	ld.d	$a5, $a0, 8
	ldx.d	$a6, $a7, $a6
	move	$t0, $zero
	.p2align	4, , 16
.LBB3_66:                               # %.preheader285
                                        #   Parent Loop BB3_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a4, 0
	ld.w	$t1, $a3, 0
	ld.d	$t2, $a5, 0
	ld.d	$t3, $a6, 0
	st.w	$t1, $a7, 0
	ld.w	$t1, $t2, 0
	st.w	$t1, $t3, 0
	ld.w	$t1, $a3, 4
	st.w	$t1, $a7, 4
	ld.w	$t1, $t2, 4
	st.w	$t1, $t3, 4
	ld.w	$t1, $a3, 8
	st.w	$t1, $a7, 8
	ld.w	$a7, $t2, 8
	st.w	$a7, $t3, 8
	ld.w	$a7, $s3, 4
	addi.d	$t0, $t0, 1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	blt	$t0, $a7, .LBB3_66
# %bb.67:                               # %._crit_edge341.loopexit
                                        #   in Loop: Header=BB3_64 Depth=1
	ld.w	$a3, $s3, 0
	b	.LBB3_63
.LBB3_68:                               # %.loopexit281
	beqz	$s2, .LBB3_71
.LBB3_69:
	move	$a0, $zero
.LBB3_70:
	lu12i.w	$a1, 18
	ori	$a1, $a1, 2736
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
.LBB3_71:
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
	st.w	$a3, $sp, 48
	sltui	$a0, $a0, 1
	slt	$a3, $a2, $a5
	masknez	$a4, $a5, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	masknez	$a3, $a2, $a0
	maskeqz	$a0, $a5, $a0
	ld.d	$a2, $fp, %pc_lo12(wp_weight)
	or	$a0, $a0, $a3
	st.w	$a0, $sp, 52
	addi.d	$a3, $sp, 48
.LBB3_72:                               # %.preheader277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_74 Depth 2
	slli.d	$a0, $a1, 2
	ldx.w	$a4, $a0, $a3
	blez	$a4, .LBB3_78
# %bb.73:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB3_72 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a5, $a2, $a0
	.p2align	4, , 16
.LBB3_74:                               # %.preheader
                                        #   Parent Loop BB3_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.w	$a7, $a6, 0
	ori	$a0, $zero, 1
	bne	$a7, $s1, .LBB3_70
# %bb.75:                               #   in Loop: Header=BB3_74 Depth=2
	ld.w	$a7, $a6, 4
	bne	$a7, $s1, .LBB3_70
# %bb.76:                               #   in Loop: Header=BB3_74 Depth=2
	ld.w	$a6, $a6, 8
	bne	$a6, $s1, .LBB3_70
# %bb.77:                               # %.critedge
                                        #   in Loop: Header=BB3_74 Depth=2
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB3_74
.LBB3_78:                               # %.critedge276
                                        #   in Loop: Header=BB3_72 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $s0, .LBB3_72
	b	.LBB3_69
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
