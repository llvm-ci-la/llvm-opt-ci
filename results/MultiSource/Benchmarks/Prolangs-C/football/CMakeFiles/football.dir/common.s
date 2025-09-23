	.file	"common.c"
	.text
	.globl	matches_any_team                # -- Begin function matches_any_team
	.p2align	5
	.type	matches_any_team,@function
matches_any_team:                       # @matches_any_team
# %bb.0:
	blez	$a0, .LBB0_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcalau12i	$a2, %pc_hi20(common_teams+4)
	addi.d	$a2, $a2, %pc_lo12(common_teams+4)
	addi.d	$a3, $a0, -1
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	beq	$a4, $a1, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_2
.LBB0_4:
	move	$a0, $zero
.LBB0_5:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	matches_any_team, .Lfunc_end0-matches_any_team
                                        # -- End function
	.globl	common                          # -- Begin function common
	.p2align	5
	.type	common,@function
common:                                 # @common
# %bb.0:                                # %.preheader95
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 112
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 1
	vreplgr2vr.w	$vr1, $fp
	addi.d	$a2, $fp, 1
	pcalau12i	$a0, %pc_hi20(common_teams)
	addi.d	$a1, $a0, %pc_lo12(common_teams)
	vori.b	$vr6, $vr0, 0
	vori.b	$vr5, $vr0, 0
	vori.b	$vr4, $vr0, 0
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	blez	$fp, .LBB1_4
# %bb.1:                                # %.preheader94.preheader
	vrepli.b	$vr2, 0
	bstrpick.d	$a3, $a2, 31, 0
	vld	$vr6, $sp, 16
	vld	$vr5, $sp, 32
	vld	$vr4, $sp, 48
	vld	$vr3, $sp, 80
	vld	$vr7, $sp, 96
	vld	$vr8, $sp, 112
	addi.d	$a0, $a1, 4
	addi.d	$a3, $a3, -1
	ori	$a4, $zero, 116
	pcalau12i	$a5, %got_pc_hi20(team_plays)
	ld.d	$a5, $a5, %got_pc_lo12(team_plays)
	.p2align	4, , 16
.LBB1_2:                                # %.preheader94
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	mul.d	$a6, $a6, $a4
	add.d	$a6, $a5, $a6
	vld	$vr9, $a6, 4
	vld	$vr10, $a6, 20
	vld	$vr11, $a6, 36
	vadd.w	$vr6, $vr6, $vr9
	vadd.w	$vr5, $vr5, $vr10
	vadd.w	$vr4, $vr4, $vr11
	vld	$vr9, $a6, 52
	vld	$vr10, $a6, 68
	vld	$vr11, $a6, 84
	vld	$vr12, $a6, 100
	vadd.w	$vr2, $vr2, $vr9
	vadd.w	$vr3, $vr3, $vr10
	vadd.w	$vr7, $vr7, $vr11
	vadd.w	$vr8, $vr8, $vr12
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB1_2
# %bb.3:                                # %.preheader93.loopexit
	vst	$vr6, $sp, 16
	vst	$vr5, $sp, 32
	vst	$vr4, $sp, 48
	vstelm.w	$vr2, $sp, 64, 0
	vstelm.w	$vr2, $sp, 68, 1
	vstelm.w	$vr2, $sp, 72, 2
	ld.w	$a0, $sp, 56
	vst	$vr3, $sp, 80
	vst	$vr7, $sp, 96
	vst	$vr8, $sp, 112
	vori.b	$vr7, $vr4, 0
	vinsgr2vr.w	$vr7, $a0, 2
	vshuf4i.d	$vr4, $vr7, 12
	vsle.w	$vr6, $vr1, $vr6
	vrepli.w	$vr7, 1
	vand.v	$vr6, $vr6, $vr7
	vsle.w	$vr5, $vr1, $vr5
	vand.v	$vr5, $vr5, $vr7
	vsle.w	$vr4, $vr1, $vr4
	vand.v	$vr4, $vr4, $vr7
	vsle.w	$vr2, $vr1, $vr2
	vand.v	$vr2, $vr2, $vr7
	vsle.w	$vr3, $vr1, $vr3
	vand.v	$vr3, $vr3, $vr7
.LBB1_4:                                # %.preheader93
	vst	$vr6, $sp, 16
	vst	$vr5, $sp, 32
	vst	$vr4, $sp, 48
	vld	$vr4, $sp, 96
	vst	$vr2, $sp, 64
	vst	$vr3, $sp, 80
	vld	$vr2, $sp, 112
	vsle.w	$vr3, $vr1, $vr4
	vand.v	$vr3, $vr3, $vr0
	vst	$vr3, $sp, 96
	vsle.w	$vr1, $vr1, $vr2
	vand.v	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(common_games)
	addi.d	$a0, $a0, %pc_lo12(common_games)
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 92
	st.w	$zero, $a0, 108
	vst	$vr0, $a0, 184
	st.w	$zero, $a0, 200
	vst	$vr0, $a0, 276
	st.w	$zero, $a0, 292
	st.w	$zero, $a0, 384
	vst	$vr0, $a0, 368
	vst	$vr0, $a0, 460
	st.w	$zero, $a0, 476
	st.w	$zero, $a0, 568
	vst	$vr0, $a0, 552
	vst	$vr0, $a0, 644
	st.w	$zero, $a0, 660
	vst	$vr0, $a0, 736
	st.w	$zero, $a0, 752
	vst	$vr0, $a0, 828
	st.w	$zero, $a0, 844
	vst	$vr0, $a0, 920
	st.w	$zero, $a0, 936
	vst	$vr0, $a0, 1012
	st.w	$zero, $a0, 1028
	vst	$vr0, $a0, 1104
	st.w	$zero, $a0, 1120
	vst	$vr0, $a0, 1196
	st.w	$zero, $a0, 1212
	vst	$vr0, $a0, 1288
	st.w	$zero, $a0, 1304
	st.w	$zero, $a0, 1396
	vst	$vr0, $a0, 1380
	st.w	$zero, $a0, 1488
	vst	$vr0, $a0, 1472
	vst	$vr0, $a0, 1564
	st.w	$zero, $a0, 1580
	vst	$vr0, $a0, 1656
	st.w	$zero, $a0, 1672
	vst	$vr0, $a0, 1748
	st.w	$zero, $a0, 1764
	vst	$vr0, $a0, 1840
	st.w	$zero, $a0, 1856
	vst	$vr0, $a0, 1932
	st.w	$zero, $a0, 1948
	vst	$vr0, $a0, 2024
	st.w	$zero, $a0, 2040
	ori	$a3, $zero, 2116
	vstx	$vr0, $a0, $a3
	stptr.w	$zero, $a0, 2132
	ori	$a3, $zero, 2208
	vstx	$vr0, $a0, $a3
	stptr.w	$zero, $a0, 2224
	ori	$a3, $zero, 2300
	vstx	$vr0, $a0, $a3
	stptr.w	$zero, $a0, 2316
	ori	$a3, $zero, 2392
	vstx	$vr0, $a0, $a3
	stptr.w	$zero, $a0, 2408
	ori	$a3, $zero, 2484
	vstx	$vr0, $a0, $a3
	stptr.w	$zero, $a0, 2500
	ori	$a3, $zero, 2576
	vstx	$vr0, $a0, $a3
	stptr.w	$zero, $a0, 2592
	pcalau12i	$a3, %got_pc_hi20(num_games)
	ld.d	$a3, $a3, %got_pc_lo12(num_games)
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB1_36
# %bb.5:                                # %.preheader90.lr.ph
	blez	$fp, .LBB1_36
# %bb.6:                                # %.preheader90.preheader
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a2, $a3, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a4, -1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 180
	pcalau12i	$a6, %got_pc_hi20(sched)
	ld.d	$a6, $a6, %got_pc_lo12(sched)
	pcalau12i	$a7, %got_pc_hi20(scores)
	ld.d	$a7, $a7, %got_pc_lo12(scores)
	ori	$t0, $zero, 15
	addi.d	$t1, $sp, 12
	addi.d	$a1, $a1, 4
	ori	$t2, $zero, 92
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.split105
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a2, .LBB1_36
.LBB1_8:                                # %.preheader90
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_24 Depth 3
	mul.d	$t4, $a4, $a5
	add.d	$t3, $a6, $t4
	add.d	$t4, $a7, $t4
	ori	$t5, $zero, 1
	b	.LBB1_11
.LBB1_9:                                #   in Loop: Header=BB1_11 Depth=2
	mul.d	$t6, $t6, $t2
	add.d	$t6, $a0, $t6
	ld.w	$t7, $t6, 12
	addi.d	$t7, $t7, 1
	st.w	$t7, $t6, 12
	.p2align	4, , 16
.LBB1_10:                               # %matches_any_team.exit.thread.1
                                        #   in Loop: Header=BB1_11 Depth=2
	addi.d	$t5, $t5, 1
	beq	$t5, $t0, .LBB1_7
.LBB1_11:                               # %.preheader89
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_24 Depth 3
	slli.d	$t6, $t5, 3
	alsl.d	$t7, $t5, $t6, 2
	add.d	$t8, $t3, $t7
	ld.w	$t6, $t8, 8
	ld.w	$t8, $t8, 4
	add.d	$t7, $t4, $t7
	beqz	$t6, .LBB1_21
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=2
	slli.d	$fp, $t6, 2
	ldx.w	$fp, $fp, $t1
	beqz	$fp, .LBB1_21
# %bb.13:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_11 Depth=2
	move	$fp, $a1
	move	$s0, $a3
	.p2align	4, , 16
.LBB1_14:                               # %.lr.ph.i
                                        #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s1, $fp, 0
	beq	$s1, $t8, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=3
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 4
	bnez	$s0, .LBB1_14
	b	.LBB1_21
.LBB1_16:                               # %matches_any_team.exit
                                        #   in Loop: Header=BB1_11 Depth=2
	ld.w	$fp, $t7, 8
	bltz	$fp, .LBB1_20
# %bb.17:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$s1, $t7, 4
	bltz	$s1, .LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_11 Depth=2
	bgeu	$fp, $s1, .LBB1_30
# %bb.19:                               #   in Loop: Header=BB1_11 Depth=2
	mul.d	$fp, $t8, $t2
	ldx.w	$s0, $a0, $fp
	addi.d	$s0, $s0, 1
	stx.w	$s0, $a0, $fp
	b	.LBB1_21
.LBB1_20:                               #   in Loop: Header=BB1_11 Depth=2
	mul.d	$fp, $t8, $t2
	add.d	$fp, $a0, $fp
	ld.w	$s0, $fp, 12
	addi.d	$s0, $s0, 1
	st.w	$s0, $fp, 12
	.p2align	4, , 16
.LBB1_21:                               # %matches_any_team.exit.thread
                                        #   in Loop: Header=BB1_11 Depth=2
	beqz	$t8, .LBB1_10
# %bb.22:                               #   in Loop: Header=BB1_11 Depth=2
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $t8, $t1
	beqz	$t8, .LBB1_10
# %bb.23:                               # %.lr.ph.i.1.preheader
                                        #   in Loop: Header=BB1_11 Depth=2
	move	$t8, $a1
	move	$fp, $a3
	.p2align	4, , 16
.LBB1_24:                               # %.lr.ph.i.1
                                        #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s0, $t8, 0
	beq	$s0, $t6, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=3
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 4
	bnez	$fp, .LBB1_24
	b	.LBB1_10
.LBB1_26:                               # %matches_any_team.exit.1
                                        #   in Loop: Header=BB1_11 Depth=2
	ld.w	$t8, $t7, 8
	bltz	$t8, .LBB1_9
# %bb.27:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$t7, $t7, 4
	bltz	$t7, .LBB1_9
# %bb.28:                               #   in Loop: Header=BB1_11 Depth=2
	mul.d	$t6, $t6, $t2
	bgeu	$t7, $t8, .LBB1_32
# %bb.29:                               #   in Loop: Header=BB1_11 Depth=2
	ldx.w	$t7, $a0, $t6
	addi.d	$t7, $t7, 1
	stx.w	$t7, $a0, $t6
	b	.LBB1_10
.LBB1_30:                               #   in Loop: Header=BB1_11 Depth=2
	mul.d	$s0, $t8, $t2
	add.d	$s0, $a0, $s0
	bgeu	$s1, $fp, .LBB1_34
# %bb.31:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$fp, $s0, 4
	addi.d	$fp, $fp, 1
	st.w	$fp, $s0, 4
	b	.LBB1_21
.LBB1_32:                               #   in Loop: Header=BB1_11 Depth=2
	add.d	$t6, $a0, $t6
	bgeu	$t8, $t7, .LBB1_35
# %bb.33:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$t7, $t6, 4
	addi.d	$t7, $t7, 1
	st.w	$t7, $t6, 4
	b	.LBB1_10
.LBB1_34:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$fp, $s0, 8
	addi.d	$fp, $fp, 1
	st.w	$fp, $s0, 8
	b	.LBB1_21
.LBB1_35:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$t7, $t6, 8
	addi.d	$t7, $t7, 1
	st.w	$t7, $t6, 8
	b	.LBB1_10
.LBB1_36:                               # %.preheader.preheader
	lu12i.w	$a1, -1
	ori	$a1, $a1, 1520
	ori	$a2, $zero, 2668
	ori	$a3, $zero, 3
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	b	.LBB1_38
	.p2align	4, , 16
.LBB1_37:                               #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a1, $a1, 92
	beqz	$a1, .LBB1_40
.LBB1_38:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a0, $a1
	vldx	$vr0, $a5, $a2
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a6, $vr0, 0
	addi.w	$a6, $a6, 0
	blt	$a3, $a6, .LBB1_37
# %bb.39:                               #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a5, $a5, 92
	stptr.w	$a4, $a5, 2576
	b	.LBB1_37
.LBB1_40:
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end1:
	.size	common, .Lfunc_end1-common
                                        # -- End function
	.globl	head_to_head_sweap              # -- Begin function head_to_head_sweap
	.p2align	5
	.type	head_to_head_sweap,@function
head_to_head_sweap:                     # @head_to_head_sweap
# %bb.0:
	blez	$a1, .LBB2_13
# %bb.1:                                # %.preheader.us.preheader
	slli.d	$a2, $a1, 2
	ori	$a4, $zero, 2668
	pcalau12i	$a3, %got_pc_hi20(h_to_h_stats)
	ld.d	$a5, $a3, %got_pc_lo12(h_to_h_stats)
	move	$a6, $zero
	move	$a3, $zero
	ori	$a7, $zero, 92
	.p2align	4, , 16
.LBB2_2:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	move	$t0, $zero
	alsl.d	$t1, $a3, $a0, 2
	ori	$t2, $zero, 1
	ori	$t3, $zero, 1
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_6 Depth=2
	move	$t2, $zero
	move	$t3, $zero
.LBB2_4:                                #   in Loop: Header=BB2_6 Depth=2
	ld.w	$t5, $t5, 4
	sltui	$t5, $t5, 1
	maskeqz	$t3, $t3, $t5
	sltui	$t4, $t4, 1
	maskeqz	$t2, $t2, $t4
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=2
	addi.d	$t0, $t0, 4
	beq	$a2, $t0, .LBB2_10
.LBB2_6:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $t0, .LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=2
	ld.w	$t4, $t1, 0
	ldx.w	$t5, $a0, $t0
	mul.d	$t4, $t4, $a4
	add.d	$t4, $a5, $t4
	mul.d	$t6, $t5, $a7
	add.d	$t5, $t4, $t6
	ld.w	$t7, $t5, 8
	ldx.w	$t4, $t4, $t6
	bnez	$t7, .LBB2_3
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=2
	bnez	$t4, .LBB2_4
# %bb.9:                                #   in Loop: Header=BB2_6 Depth=2
	ld.w	$t6, $t5, 4
	sltui	$t6, $t6, 1
	masknez	$t3, $t3, $t6
	masknez	$t2, $t2, $t6
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB2_2 Depth=1
	bnez	$t3, .LBB2_14
# %bb.11:                               #   in Loop: Header=BB2_2 Depth=1
	bnez	$t2, .LBB2_15
# %bb.12:                               #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 4
	bne	$a3, $a1, .LBB2_2
.LBB2_13:                               # %.loopexit
	move	$a0, $a1
	ret
.LBB2_14:                               # %.split.us
	bstrpick.d	$a1, $a3, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a0, $a1
	ld.w	$a3, $a0, 0
	st.w	$a2, $a0, 0
	stx.w	$a3, $a0, $a1
	ori	$a0, $zero, 1
	ret
.LBB2_15:                               # %.split78.us
	addi.w	$a1, $a1, -1
	slli.d	$a2, $a1, 2
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $a0, $a3
	ldx.w	$a5, $a0, $a2
	stx.w	$a4, $a0, $a2
	stx.w	$a5, $a0, $a3
	move	$a0, $a1
	ret
.Lfunc_end2:
	.size	head_to_head_sweap, .Lfunc_end2-head_to_head_sweap
                                        # -- End function
	.globl	split_around                    # -- Begin function split_around
	.p2align	5
	.type	split_around,@function
split_around:                           # @split_around
# %bb.0:
	blez	$a2, .LBB3_6
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	slli.d	$a2, $a2, 2
	addi.d	$a7, $sp, 8
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	add.w	$t1, $a5, $a1
	slli.d	$t1, $t1, 2
	stx.w	$t0, $t1, $a7
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 8
	beq	$a2, $a4, .LBB3_5
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a3, 0
	ldx.w	$t0, $a0, $a4
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	slli.d	$t1, $a6, 2
	stx.w	$t0, $t1, $a7
	addi.w	$a6, $a6, 1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 8
	bne	$a2, $a4, .LBB3_3
.LBB3_5:                                # %.lr.ph29.preheader
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
.LBB3_6:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	split_around, .Lfunc_end3-split_around
                                        # -- End function
	.globl	head_to_head                    # -- Begin function head_to_head
	.p2align	5
	.type	head_to_head,@function
head_to_head:                           # @head_to_head
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	ori	$a2, $zero, 5
	blt	$a2, $a1, .LBB4_17
# %bb.1:                                # %.preheader56
	blez	$a1, .LBB4_15
# %bb.2:                                # %.preheader.us.preheader
	slli.d	$a2, $a1, 2
	movgr2fr.d	$fa1, $zero
	addi.d	$a3, $sp, 8
	vldi	$vr2, -928
	ori	$a4, $zero, 2668
	pcalau12i	$a5, %got_pc_hi20(h_to_h_stats)
	ld.d	$a5, $a5, %got_pc_lo12(h_to_h_stats)
	move	$a6, $zero
	move	$a7, $zero
	move	$fp, $zero
	ori	$t0, $zero, 92
	fmov.d	$fa0, $fa1
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	slli.d	$t1, $a7, 3
	fstx.d	$fa3, $t1, $a3
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa0, $fa3, $fcc0
	movcf2gr	$t1, $fcc0
	fcmp.ceq.d	$fcc0, $fa3, $fa0
	masknez	$t1, $fp, $t1
	movcf2gr	$t2, $fcc0
	add.w	$fp, $t1, $t2
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	beq	$a7, $a1, .LBB4_10
.LBB4_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	move	$t3, $zero
	move	$t1, $zero
	move	$t4, $zero
	move	$t2, $zero
	alsl.d	$t5, $a7, $a0, 2
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=2
	addi.d	$t3, $t3, 4
	beq	$a2, $t3, .LBB4_8
.LBB4_6:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $t3, .LBB4_5
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=2
	ld.w	$t6, $t5, 0
	ldx.w	$t7, $a0, $t3
	mul.d	$t6, $t6, $a4
	add.d	$t6, $a5, $t6
	mul.d	$t7, $t7, $t0
	add.d	$t8, $t6, $t7
	ldx.w	$t6, $t6, $t7
	ld.w	$t7, $t8, 4
	ld.w	$t8, $t8, 8
	add.w	$t2, $t6, $t2
	add.d	$t4, $t7, $t4
	add.w	$t1, $t8, $t1
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_8:                                # %._crit_edge.us
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$t3, $t4, $t2
	add.w	$t3, $t3, $t1
	fmov.d	$fa3, $fa1
	beqz	$t3, .LBB4_3
# %bb.9:                                #   in Loop: Header=BB4_4 Depth=1
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	movgr2fr.w	$fa4, $t1
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fa2, $fa3
	movgr2fr.w	$fa4, $t3
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa3, $fa3, $fa4
	b	.LBB4_3
.LBB4_10:                               # %._crit_edge66
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 2
	addi.d	$a1, $sp, 8
	addi.d	$a6, $sp, 48
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_12 Depth=1
	add.w	$t0, $a4, $fp
	slli.d	$t0, $t0, 2
	stx.w	$a7, $t0, $a6
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 8
	beq	$a2, $a3, .LBB4_14
.LBB4_12:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	ldx.w	$a7, $a0, $a3
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_11
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=1
	slli.d	$t0, $a5, 2
	stx.w	$a7, $t0, $a6
	addi.w	$a5, $a5, 1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 8
	bne	$a2, $a3, .LBB4_12
.LBB4_14:                               # %.preheader.i
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB4_16
.LBB4_15:                               # %._crit_edge66.thread
	move	$fp, $zero
.LBB4_16:                               # %split_around.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB4_17:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	head_to_head, .Lfunc_end4-head_to_head
                                        # -- End function
	.globl	break_common                    # -- Begin function break_common
	.p2align	5
	.type	break_common,@function
break_common:                           # @break_common
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	ori	$a2, $zero, 28
	blt	$a2, $a1, .LBB5_24
# %bb.1:                                # %.preheader54
	move	$s0, $a1
	blez	$a1, .LBB5_16
# %bb.2:                                # %.lr.ph.preheader
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(common_teams)
	addi.d	$a0, $a0, %pc_lo12(common_teams)
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s0, $a2, .LBB5_7
# %bb.3:                                # %.lr.ph.preheader
	sub.d	$a2, $a0, $fp
	addi.d	$a2, $a2, 4
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB5_7
# %bb.4:                                # %vector.ph
	bstrpick.d	$a1, $s0, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 20
	addi.d	$a3, $fp, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB5_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_5
# %bb.6:                                # %middle.block
	beq	$a1, $s0, .LBB5_9
.LBB5_7:                                # %.lr.ph.preheader78
	alsl.d	$a2, $a1, $fp, 2
	sub.d	$a3, $s0, $a1
	alsl.d	$a0, $a1, $a0, 2
	addi.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB5_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a2, 0
	st.w	$a1, $a0, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB5_8
.LBB5_9:                                # %.lr.ph58.preheader
	move	$a0, $s0
	pcaddu18i	$ra, %call36(common)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s0, 31, 0
	ori	$a2, $zero, 92
	pcalau12i	$a1, %pc_hi20(common_games)
	addi.d	$a1, $a1, %pc_lo12(common_games)
	addi.w	$a3, $zero, -1
	move	$a4, $a0
	move	$a5, $fp
	.p2align	4, , 16
.LBB5_10:                               # %.lr.ph58
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	mul.d	$a6, $a6, $a2
	ldx.w	$a6, $a1, $a6
	beq	$a6, $a3, .LBB5_23
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB5_10
# %bb.12:                               # %.lr.ph62.preheader
	move	$s1, $zero
	movgr2fr.d	$fa1, $zero
	addi.d	$a2, $sp, 16
	ori	$a3, $zero, 92
	vldi	$vr2, -928
	move	$a4, $fp
	fmov.d	$fa0, $fa1
	b	.LBB5_14
	.p2align	4, , 16
.LBB5_13:                               #   in Loop: Header=BB5_14 Depth=1
	fst.d	$fa3, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa0, $fa3, $fcc0
	movcf2gr	$a5, $fcc0
	fcmp.ceq.d	$fcc0, $fa3, $fa0
	masknez	$a5, $s1, $a5
	movcf2gr	$a6, $fcc0
	add.w	$s1, $a5, $a6
	addi.d	$a4, $a4, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	beqz	$a0, .LBB5_17
.LBB5_14:                               # %.lr.ph62
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, 0
	mul.d	$a5, $a5, $a3
	add.d	$a6, $a1, $a5
	ldx.w	$a5, $a1, $a5
	ld.w	$t0, $a6, 4
	ld.w	$a7, $a6, 8
	add.d	$a6, $t0, $a5
	add.w	$a6, $a6, $a7
	fmov.d	$fa3, $fa1
	beqz	$a6, .LBB5_13
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=1
	movgr2fr.w	$fa3, $a5
	ffint.d.w	$fa3, $fa3
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fa2, $fa3
	movgr2fr.w	$fa4, $a6
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa3, $fa3, $fa4
	b	.LBB5_13
.LBB5_16:                               # %.preheader.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(common)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	b	.LBB5_22
.LBB5_17:                               # %._crit_edge63
	move	$a0, $zero
	move	$a2, $zero
	bstrpick.d	$a1, $s0, 31, 0
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 240
	move	$a5, $fp
	move	$a6, $a1
	b	.LBB5_19
	.p2align	4, , 16
.LBB5_18:                               #   in Loop: Header=BB5_19 Depth=1
	add.w	$t0, $a0, $s1
	slli.d	$t0, $t0, 2
	stx.w	$a7, $t0, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 8
	beqz	$a6, .LBB5_21
.LBB5_19:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a3, 0
	ld.w	$a7, $a5, 0
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_18
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=1
	slli.d	$t0, $a2, 2
	stx.w	$a7, $t0, $a4
	addi.w	$a2, $a2, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 8
	bnez	$a6, .LBB5_19
.LBB5_21:                               # %.preheader.i
	slli.d	$a2, $a1, 2
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_22:                               # %split_around.exit
	move	$s0, $s1
.LBB5_23:                               # %.loopexit
	move	$a0, $s0
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB5_24:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	break_common, .Lfunc_end5-break_common
                                        # -- End function
	.globl	div_conf_rec                    # -- Begin function div_conf_rec
	.p2align	5
	.type	div_conf_rec,@function
div_conf_rec:                           # @div_conf_rec
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	ori	$a3, $zero, 28
	blt	$a3, $a1, .LBB6_18
# %bb.1:                                # %.preheader
	blez	$a1, .LBB6_7
# %bb.2:                                # %.lr.ph
	movgr2fr.d	$fa1, $zero
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB6_8
# %bb.3:                                # %.lr.ph.split.us.preheader
	addi.d	$a2, $sp, 16
	ori	$a3, $zero, 92
	pcalau12i	$a4, %got_pc_hi20(team_info_wi_div)
	ld.d	$a4, $a4, %got_pc_lo12(team_info_wi_div)
	move	$fp, $zero
	vldi	$vr2, -928
	move	$a5, $a1
	move	$a6, $a0
	fmov.d	$fa0, $fa1
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                #   in Loop: Header=BB6_5 Depth=1
	fst.d	$fa3, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa0, $fa3, $fcc0
	movcf2gr	$a7, $fcc0
	fcmp.ceq.d	$fcc0, $fa3, $fa0
	masknez	$a7, $fp, $a7
	movcf2gr	$t0, $fcc0
	add.w	$fp, $a7, $t0
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 8
	beqz	$a5, .LBB6_12
.LBB6_5:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, 0
	mul.d	$a7, $a7, $a3
	add.d	$t0, $a4, $a7
	ldx.w	$a7, $a4, $a7
	ld.w	$t2, $t0, 4
	ld.w	$t1, $t0, 8
	add.d	$t0, $t2, $a7
	add.w	$t0, $t0, $t1
	fmov.d	$fa3, $fa1
	beqz	$t0, .LBB6_4
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	movgr2fr.w	$fa4, $t1
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fa2, $fa3
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa3, $fa3, $fa4
	b	.LBB6_4
.LBB6_7:                                # %._crit_edge.thread
	move	$fp, $zero
	b	.LBB6_17
.LBB6_8:                                # %.lr.ph.split.preheader
	addi.d	$a2, $sp, 16
	ori	$a3, $zero, 92
	pcalau12i	$a4, %got_pc_hi20(team_info_wi_conf)
	ld.d	$a4, $a4, %got_pc_lo12(team_info_wi_conf)
	move	$fp, $zero
	vldi	$vr2, -928
	move	$a5, $a1
	move	$a6, $a0
	fmov.d	$fa0, $fa1
	b	.LBB6_10
	.p2align	4, , 16
.LBB6_9:                                #   in Loop: Header=BB6_10 Depth=1
	fst.d	$fa3, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa0, $fa3, $fcc0
	movcf2gr	$a7, $fcc0
	fcmp.ceq.d	$fcc0, $fa3, $fa0
	masknez	$a7, $fp, $a7
	movcf2gr	$t0, $fcc0
	add.w	$fp, $a7, $t0
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 8
	beqz	$a5, .LBB6_12
.LBB6_10:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, 0
	mul.d	$a7, $a7, $a3
	add.d	$t0, $a4, $a7
	ldx.w	$a7, $a4, $a7
	ld.w	$t2, $t0, 4
	ld.w	$t1, $t0, 8
	add.d	$t0, $t2, $a7
	add.w	$t0, $t0, $t1
	fmov.d	$fa3, $fa1
	beqz	$t0, .LBB6_9
# %bb.11:                               #   in Loop: Header=BB6_10 Depth=1
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	movgr2fr.w	$fa4, $t1
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fa2, $fa3
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa3, $fa3, $fa4
	b	.LBB6_9
.LBB6_12:                               # %._crit_edge
	move	$a2, $zero
	move	$a3, $zero
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $sp, 16
	addi.d	$a5, $sp, 240
	move	$a6, $a0
	move	$a7, $a1
	b	.LBB6_14
	.p2align	4, , 16
.LBB6_13:                               #   in Loop: Header=BB6_14 Depth=1
	add.w	$t1, $a2, $fp
	slli.d	$t1, $t1, 2
	stx.w	$t0, $t1, $a5
	addi.d	$a2, $a2, 1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 8
	beqz	$a7, .LBB6_16
.LBB6_14:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a4, 0
	ld.w	$t0, $a6, 0
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_13
# %bb.15:                               #   in Loop: Header=BB6_14 Depth=1
	slli.d	$t1, $a3, 2
	stx.w	$t0, $t1, $a5
	addi.w	$a3, $a3, 1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 8
	bnez	$a7, .LBB6_14
.LBB6_16:                               # %.preheader.i
	slli.d	$a2, $a1, 2
	addi.d	$a1, $sp, 240
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_17:                               # %split_around.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB6_18:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	div_conf_rec, .Lfunc_end6-div_conf_rec
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function break_net_points
.LCPI7_0:
	.dword	0xc0c3880000000000              # double -1.0E+4
	.text
	.globl	break_net_points
	.p2align	5
	.type	break_net_points,@function
break_net_points:                       # @break_net_points
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	ori	$a3, $zero, 28
	blt	$a3, $a1, .LBB7_17
# %bb.1:                                # %.preheader
	blez	$a1, .LBB7_6
# %bb.2:                                # %.lr.ph
	move	$fp, $a2
	ori	$a2, $zero, 1
	beq	$fp, $a2, .LBB7_7
# %bb.3:                                # %.lr.ph
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_0)
	addi.d	$a2, $sp, 16
	ori	$a3, $zero, 92
	bnez	$fp, .LBB7_9
# %bb.4:                                # %.lr.ph.split.us42.preheader
	pcalau12i	$a4, %got_pc_hi20(team_info_wi_conf)
	ld.d	$a4, $a4, %got_pc_lo12(team_info_wi_conf)
	move	$a5, $a1
	move	$a6, $a0
	.p2align	4, , 16
.LBB7_5:                                # %.lr.ph.split.us42
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, 0
	mul.d	$a7, $a7, $a3
	add.d	$a7, $a4, $a7
	ld.w	$t0, $a7, 12
	ld.w	$a7, $a7, 16
	sub.d	$a7, $t0, $a7
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fst.d	$fa1, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a7, $fcc0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	masknez	$a7, $fp, $a7
	movcf2gr	$t0, $fcc0
	add.w	$fp, $a7, $t0
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 8
	bnez	$a5, .LBB7_5
	b	.LBB7_11
.LBB7_6:                                # %._crit_edge
	move	$fp, $zero
	b	.LBB7_16
.LBB7_7:                                # %.lr.ph.split.us.preheader
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_0)
	addi.d	$a2, $sp, 16
	ori	$a3, $zero, 92
	pcalau12i	$a4, %got_pc_hi20(team_info_wi_div)
	ld.d	$a4, $a4, %got_pc_lo12(team_info_wi_div)
	move	$fp, $zero
	move	$a5, $a1
	move	$a6, $a0
	.p2align	4, , 16
.LBB7_8:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, 0
	mul.d	$a7, $a7, $a3
	add.d	$a7, $a4, $a7
	ld.w	$t0, $a7, 12
	ld.w	$a7, $a7, 16
	sub.d	$a7, $t0, $a7
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fst.d	$fa1, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a7, $fcc0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	masknez	$a7, $fp, $a7
	movcf2gr	$t0, $fcc0
	add.w	$fp, $a7, $t0
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 8
	bnez	$a5, .LBB7_8
	b	.LBB7_11
.LBB7_9:                                # %.lr.ph.split.preheader
	pcalau12i	$a4, %got_pc_hi20(team_info)
	ld.d	$a4, $a4, %got_pc_lo12(team_info)
	move	$fp, $zero
	move	$a5, $a1
	move	$a6, $a0
	.p2align	4, , 16
.LBB7_10:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, 0
	mul.d	$a7, $a7, $a3
	add.d	$a7, $a4, $a7
	ld.w	$t0, $a7, 12
	ld.w	$a7, $a7, 16
	sub.d	$a7, $t0, $a7
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fst.d	$fa1, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a7, $fcc0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	masknez	$a7, $fp, $a7
	movcf2gr	$t0, $fcc0
	add.w	$fp, $a7, $t0
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 8
	bnez	$a5, .LBB7_10
.LBB7_11:                               # %.lr.ph.preheader.i
	move	$a2, $zero
	move	$a3, $zero
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $sp, 16
	addi.d	$a5, $sp, 240
	move	$a6, $a0
	move	$a7, $a1
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_12:                               #   in Loop: Header=BB7_13 Depth=1
	add.w	$t1, $a2, $fp
	slli.d	$t1, $t1, 2
	stx.w	$t0, $t1, $a5
	addi.d	$a2, $a2, 1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 8
	beqz	$a7, .LBB7_15
.LBB7_13:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a4, 0
	ld.w	$t0, $a6, 0
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_12
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=1
	slli.d	$t1, $a3, 2
	stx.w	$t0, $t1, $a5
	addi.w	$a3, $a3, 1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 8
	bnez	$a7, .LBB7_13
.LBB7_15:                               # %.preheader.i
	slli.d	$a2, $a1, 2
	addi.d	$a1, $sp, 240
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_16:                               # %split_around.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB7_17:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	break_net_points, .Lfunc_end7-break_net_points
                                        # -- End function
	.globl	break_a_tie                     # -- Begin function break_a_tie
	.p2align	5
	.type	break_a_tie,@function
break_a_tie:                            # @break_a_tie
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ori	$a3, $zero, 2
	bge	$a1, $a3, .LBB8_2
.LBB8_1:                                # %.loopexit
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB8_2:                                # %.preheader.preheader
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s4, $zero, 30
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$s7, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 2668
	ori	$s3, $zero, 92
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_3:                                # %display_split.exit224
                                        #   in Loop: Header=BB8_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
.LBB8_4:                                # %tailrecurse.backedge
                                        #   in Loop: Header=BB8_6 Depth=1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(break_a_tie)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
.LBB8_5:                                # %tailrecurse.backedge
                                        #   in Loop: Header=BB8_6 Depth=1
	sub.w	$s2, $s2, $s5
	alsl.d	$s0, $s5, $s0, 2
	ori	$a0, $zero, 2
	blt	$s2, $a0, .LBB8_1
.LBB8_6:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #     Child Loop BB8_12 Depth 2
                                        #     Child Loop BB8_17 Depth 2
                                        #       Child Loop BB8_21 Depth 3
                                        #     Child Loop BB8_46 Depth 2
                                        #     Child Loop BB8_40 Depth 2
                                        #     Child Loop BB8_57 Depth 2
                                        #     Child Loop BB8_52 Depth 2
                                        #     Child Loop BB8_64 Depth 2
	bstrpick.d	$fp, $s2, 31, 0
	addi.d	$a0, $fp, -1
	ori	$a1, $zero, 4
	ori	$s6, $zero, 1
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_7:                                #   in Loop: Header=BB8_8 Depth=2
	ld.w	$a2, $s0, 0
	pcalau12i	$a3, %got_pc_hi20(divisions)
	ld.d	$a3, $a3, %got_pc_lo12(divisions)
	ldx.w	$a4, $s0, $a1
	alsl.d	$a2, $a2, $a3, 3
	ld.w	$a2, $a2, 4
	alsl.d	$a3, $a4, $a3, 3
	ld.w	$a3, $a3, 4
	xor	$a2, $a2, $a3
	sltui	$s6, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB8_10
.LBB8_8:                                #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB8_7
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=2
	move	$s6, $zero
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB8_8
.LBB8_10:                               #   in Loop: Header=BB8_6 Depth=1
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	beqz	$s1, .LBB8_14
# %bb.11:                               # %.lr.ph.i
                                        #   in Loop: Header=BB8_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $a0, 0
	move	$s1, $s0
	move	$s2, $fp
	.p2align	4, , 16
.LBB8_12:                               # %.lr.ph.split.us.i
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s1, 0
	mul.d	$a0, $a0, $s4
	add.d	$a0, $s7, $a0
	addi.d	$a2, $a0, 15
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 4
	bnez	$s2, .LBB8_12
# %bb.13:                               # %display_split.exit
                                        #   in Loop: Header=BB8_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
.LBB8_14:                               #   in Loop: Header=BB8_6 Depth=1
	ori	$a0, $zero, 2
	beq	$s2, $a0, .LBB8_28
# %bb.15:                               #   in Loop: Header=BB8_6 Depth=1
	bnez	$s6, .LBB8_28
# %bb.16:                               # %.preheader.us.preheader.i
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB8_17:                               # %.preheader.us.i
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_21 Depth 3
	move	$a1, $zero
	alsl.d	$a2, $a0, $s0, 2
	ori	$a3, $zero, 1
	move	$a4, $s0
	ori	$a5, $zero, 1
	b	.LBB8_21
	.p2align	4, , 16
.LBB8_18:                               #   in Loop: Header=BB8_21 Depth=3
	move	$a3, $zero
	move	$a5, $zero
.LBB8_19:                               #   in Loop: Header=BB8_21 Depth=3
	ld.w	$a7, $a7, 4
	sltui	$a7, $a7, 1
	maskeqz	$a5, $a5, $a7
	sltui	$a6, $a6, 1
	maskeqz	$a3, $a3, $a6
.LBB8_20:                               #   in Loop: Header=BB8_21 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 4
	beq	$fp, $a1, .LBB8_25
.LBB8_21:                               #   Parent Loop BB8_6 Depth=1
                                        #     Parent Loop BB8_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a0, $a1, .LBB8_20
# %bb.22:                               #   in Loop: Header=BB8_21 Depth=3
	ld.w	$a6, $a2, 0
	mul.d	$a6, $a6, $s8
	pcalau12i	$a7, %got_pc_hi20(h_to_h_stats)
	ld.d	$a7, $a7, %got_pc_lo12(h_to_h_stats)
	ld.w	$t0, $a4, 0
	add.d	$a6, $a7, $a6
	mul.d	$t0, $t0, $s3
	add.d	$a7, $a6, $t0
	ld.w	$t1, $a7, 8
	ldx.w	$a6, $a6, $t0
	bnez	$t1, .LBB8_18
# %bb.23:                               #   in Loop: Header=BB8_21 Depth=3
	bnez	$a6, .LBB8_19
# %bb.24:                               #   in Loop: Header=BB8_21 Depth=3
	ld.w	$t0, $a7, 4
	sltui	$t0, $t0, 1
	masknez	$a5, $a5, $t0
	masknez	$a3, $a3, $t0
	b	.LBB8_19
	.p2align	4, , 16
.LBB8_25:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB8_17 Depth=2
	bnez	$a5, .LBB8_42
# %bb.26:                               #   in Loop: Header=BB8_17 Depth=2
	bnez	$a3, .LBB8_43
# %bb.27:                               #   in Loop: Header=BB8_17 Depth=2
	addi.d	$a0, $a0, 1
	bne	$a0, $s2, .LBB8_17
	b	.LBB8_29
	.p2align	4, , 16
.LBB8_28:                               #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(head_to_head)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB8_37
.LBB8_29:                               # %head_to_head_sweap.exit.thread
                                        #   in Loop: Header=BB8_6 Depth=1
	beqz	$s6, .LBB8_31
# %bb.30:                               #   in Loop: Header=BB8_6 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(div_conf_rec)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB8_54
.LBB8_31:                               # %head_to_head_sweap.exit.thread.thread
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(div_conf_rec)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB8_49
# %bb.32:                               #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(break_common)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB8_61
# %bb.33:                               #   in Loop: Header=BB8_6 Depth=1
	beqz	$s6, .LBB8_67
# %bb.34:                               #   in Loop: Header=BB8_6 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(break_net_points)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB8_68
# %bb.35:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s5, $a0
	beqz	$s1, .LBB8_74
# %bb.36:                               # %.split163
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(display_split)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	b	.LBB8_73
	.p2align	4, , 16
.LBB8_37:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s5, $a0
	beqz	$s1, .LBB8_74
# %bb.38:                               # %.split148
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	addi.d	$a0, $s5, -1
	bstrpick.d	$s1, $a0, 31, 0
	move	$s2, $s0
	b	.LBB8_40
	.p2align	4, , 16
.LBB8_39:                               #   in Loop: Header=BB8_40 Depth=2
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 4
	beqz	$fp, .LBB8_48
.LBB8_40:                               # %.lr.ph.split.i
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s2, 0
	mul.d	$a0, $a0, $s4
	add.d	$a0, $s7, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $s6
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB8_39
# %bb.41:                               #   in Loop: Header=BB8_40 Depth=2
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_39
.LBB8_42:                               # %head_to_head_sweap.exit
                                        #   in Loop: Header=BB8_6 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	ld.w	$a2, $s0, 0
	st.w	$a1, $s0, 0
	stx.w	$a2, $s0, $a0
	ori	$s5, $zero, 1
	bnez	$s1, .LBB8_44
	b	.LBB8_74
.LBB8_43:                               # %head_to_head_sweap.exit.thread278
                                        #   in Loop: Header=BB8_6 Depth=1
	addi.w	$s5, $s2, -1
	slli.d	$a1, $s5, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $s0, $a0
	ldx.w	$a3, $s0, $a1
	stx.w	$a2, $s0, $a1
	stx.w	$a3, $s0, $a0
	beqz	$s1, .LBB8_74
.LBB8_44:                               # %.split151
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	addi.d	$a0, $s5, -1
	bstrpick.d	$s2, $a0, 31, 0
	move	$s1, $s0
	b	.LBB8_46
	.p2align	4, , 16
.LBB8_45:                               #   in Loop: Header=BB8_46 Depth=2
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 4
	beqz	$fp, .LBB8_3
.LBB8_46:                               # %.lr.ph.split.i213
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s1, 0
	mul.d	$a0, $a0, $s4
	add.d	$a0, $s7, $a0
	addi.d	$a2, $a0, 15
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB8_45
# %bb.47:                               #   in Loop: Header=BB8_46 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_45
.LBB8_48:                               # %display_split.exit204
                                        #   in Loop: Header=BB8_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	b	.LBB8_4
.LBB8_49:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s5, $a0
	beqz	$s1, .LBB8_74
# %bb.50:                               # %.split157
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	addi.d	$a0, $s5, -1
	bstrpick.d	$s2, $a0, 31, 0
	move	$s1, $s0
	b	.LBB8_52
	.p2align	4, , 16
.LBB8_51:                               #   in Loop: Header=BB8_52 Depth=2
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 4
	beqz	$fp, .LBB8_59
.LBB8_52:                               # %.lr.ph.split.i247
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s1, 0
	mul.d	$a0, $a0, $s4
	add.d	$a0, $s7, $a0
	addi.d	$a2, $a0, 15
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB8_51
# %bb.53:                               #   in Loop: Header=BB8_52 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_51
.LBB8_54:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s5, $a0
	beqz	$s1, .LBB8_74
# %bb.55:                               # %.split154
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	addi.d	$a0, $s5, -1
	bstrpick.d	$s2, $a0, 31, 0
	move	$s1, $s0
	b	.LBB8_57
	.p2align	4, , 16
.LBB8_56:                               #   in Loop: Header=BB8_57 Depth=2
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 4
	beqz	$fp, .LBB8_60
.LBB8_57:                               # %.lr.ph.split.i230
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s1, 0
	mul.d	$a0, $a0, $s4
	add.d	$a0, $s7, $a0
	addi.d	$a2, $a0, 15
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB8_56
# %bb.58:                               #   in Loop: Header=BB8_57 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_56
.LBB8_59:                               # %display_split.exit258
                                        #   in Loop: Header=BB8_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.10)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.10)
	b	.LBB8_4
.LBB8_60:                               # %display_split.exit241
                                        #   in Loop: Header=BB8_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	b	.LBB8_4
.LBB8_61:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s5, $a0
	beqz	$s1, .LBB8_74
# %bb.62:                               # %.split160
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	addi.d	$a0, $s5, -1
	bstrpick.d	$s2, $a0, 31, 0
	move	$s1, $s0
	b	.LBB8_64
	.p2align	4, , 16
.LBB8_63:                               #   in Loop: Header=BB8_64 Depth=2
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 4
	beqz	$fp, .LBB8_66
.LBB8_64:                               # %.lr.ph.split.i264
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s1, 0
	mul.d	$a0, $a0, $s4
	add.d	$a0, $s7, $a0
	addi.d	$a2, $a0, 15
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB8_63
# %bb.65:                               #   in Loop: Header=BB8_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_63
.LBB8_66:                               # %display_split.exit275
                                        #   in Loop: Header=BB8_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.9)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.9)
	b	.LBB8_4
.LBB8_67:                               #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(break_net_points)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB8_71
.LBB8_68:                               #   in Loop: Header=BB8_6 Depth=1
	ori	$a2, $zero, 2
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(break_net_points)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB8_76
# %bb.69:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s5, $a0
	beqz	$s1, .LBB8_74
# %bb.70:                               # %.split169
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(display_split)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	b	.LBB8_73
.LBB8_71:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s5, $a0
	beqz	$s1, .LBB8_74
# %bb.72:                               # %.split166
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(display_split)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
.LBB8_73:                               # %tailrecurse.backedge
                                        #   in Loop: Header=BB8_6 Depth=1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $s1
	b	.LBB8_75
	.p2align	4, , 16
.LBB8_74:                               # %.split
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $zero
.LBB8_75:                               # %tailrecurse.backedge
                                        #   in Loop: Header=BB8_6 Depth=1
	pcaddu18i	$ra, %call36(break_a_tie)
	jirl	$ra, $ra, 0
	b	.LBB8_5
.LBB8_76:
	beqz	$s1, .LBB8_1
# %bb.77:
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end8:
	.size	break_a_tie, .Lfunc_end8-break_a_tie
                                        # -- End function
	.globl	display_split                   # -- Begin function display_split
	.p2align	5
	.type	display_split,@function
display_split:                          # @display_split
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	blez	$a3, .LBB9_4
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	bne	$a2, $a3, .LBB9_5
# %bb.2:                                # %.lr.ph.split.us.preheader
	bstrpick.d	$s2, $a3, 31, 0
	ori	$s3, $zero, 30
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$s4, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s1, $a0, %pc_lo12(.L.str.14)
	.p2align	4, , 16
.LBB9_3:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 0
	mul.d	$a0, $a0, $s3
	add.d	$a0, $s4, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB9_3
.LBB9_4:                                # %._crit_edge
	ori	$a0, $zero, 10
	move	$a1, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB9_5:                                # %.lr.ph.split.preheader
	addi.d	$a0, $a2, -1
	bstrpick.d	$s3, $a0, 31, 0
	bstrpick.d	$s4, $a3, 31, 0
	ori	$s5, $zero, 30
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$s6, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s1, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s2, $a0, %pc_lo12(.L.str.15)
	b	.LBB9_7
	.p2align	4, , 16
.LBB9_6:                                #   in Loop: Header=BB9_7 Depth=1
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 4
	beqz	$s4, .LBB9_4
.LBB9_7:                                # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 0
	mul.d	$a0, $a0, $s5
	add.d	$a0, $s6, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB9_6
# %bb.8:                                #   in Loop: Header=BB9_7 Depth=1
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB9_6
.Lfunc_end9:
	.size	display_split, .Lfunc_end9-display_split
                                        # -- End function
	.type	common_teams,@object            # @common_teams
	.bss
	.globl	common_teams
	.p2align	2, 0x0
common_teams:
	.space	116
	.size	common_teams, 116

	.type	common_games,@object            # @common_games
	.globl	common_games
	.p2align	3, 0x0
common_games:
	.space	2668
	.size	common_games, 2668

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"------ Break a tie (all same div: %d) -------\n"
	.size	.L.str.4, 47

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%s "
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"  *   "
	.size	.L.str.15, 7

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"ERROR in head_to_head (common.c). Assumption violated."
	.size	.Lstr, 55

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"ERROR in break_common (common.c). Assumption violated."
	.size	.Lstr.1, 55

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"ERROR in div_conf_rec (common.c). Assumption violated."
	.size	.Lstr.2, 55

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"ERROR in break_net_points (common.c). Assumption violated."
	.size	.Lstr.3, 59

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Split because of head to head sweap."
	.size	.Lstr.4, 37

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"Split because of conference net points."
	.size	.Lstr.5, 40

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"Ordered by COIN TOSS."
	.size	.Lstr.6, 22

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"Split because of net points."
	.size	.Lstr.7, 29

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"Split because of division net points."
	.size	.Lstr.8, 38

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"Split because of common game record."
	.size	.Lstr.9, 37

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"Split because of conference record."
	.size	.Lstr.10, 36

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"Split because of divisional record."
	.size	.Lstr.11, 36

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"Split because of head to head record."
	.size	.Lstr.12, 38

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym team
