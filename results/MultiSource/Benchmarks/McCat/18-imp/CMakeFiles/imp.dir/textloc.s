	.file	"textloc.c"
	.text
	.globl	ConvertToFloat                  # -- Begin function ConvertToFloat
	.p2align	5
	.type	ConvertToFloat,@function
ConvertToFloat:                         # @ConvertToFloat
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 36
	ld.w	$a1, $fp, 32
	mul.w	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	blez	$s0, .LBB0_7
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 48
	ori	$a2, $zero, 8
	bltu	$s0, $a2, .LBB0_4
# %bb.2:                                # %vector.memcheck
	add.d	$a2, $a1, $s0
	bgeu	$a0, $a2, .LBB0_8
# %bb.3:                                # %vector.memcheck
	alsl.d	$a2, $s0, $a0, 2
	bgeu	$a1, $a2, .LBB0_8
.LBB0_4:
	move	$a2, $zero
.LBB0_5:                                # %scalar.ph.preheader
	sub.d	$a3, $s0, $a2
	alsl.d	$a0, $a2, $a0, 2
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB0_6:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB0_6
.LBB0_7:                                # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_8:                                # %vector.ph
	bstrpick.d	$a2, $s0, 30, 2
	slli.d	$a2, $a2, 2
	move	$a3, $a1
	move	$a4, $a0
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	vinsgr2vr.w	$vr0, $a6, 0
	vpickve2gr.b	$a6, $vr0, 1
	andi	$a6, $a6, 255
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	vpickve2gr.b	$a6, $vr0, 0
	andi	$a6, $a6, 255
	movgr2fr.w	$fa2, $a6
	ffint.s.w	$fa2, $fa2
	vextrins.w	$vr2, $vr1, 16
	vpickve2gr.b	$a6, $vr0, 2
	andi	$a6, $a6, 255
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	vextrins.w	$vr2, $vr1, 32
	vpickve2gr.b	$a6, $vr0, 3
	andi	$a6, $a6, 255
	movgr2fr.w	$fa0, $a6
	ffint.s.w	$fa0, $fa0
	vextrins.w	$vr2, $vr0, 48
	vst	$vr2, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB0_9
# %bb.10:                               # %middle.block
	beq	$a2, $s0, .LBB0_7
	b	.LBB0_5
.Lfunc_end0:
	.size	ConvertToFloat, .Lfunc_end0-ConvertToFloat
                                        # -- End function
	.globl	HorzVariance                    # -- Begin function HorzVariance
	.p2align	5
	.type	HorzVariance,@function
HorzVariance:                           # @HorzVariance
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.wu	$s2, $a0, 36
	ld.w	$s1, $a0, 32
	move	$fp, $a1
	mul.w	$a0, $s1, $s2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 72
	blez	$s1, .LBB1_11
# %bb.1:                                # %.preheader.lr.ph
	addi.w	$a1, $s2, 0
	ori	$a2, $zero, 21
	blt	$a1, $a2, .LBB1_11
# %bb.2:                                # %.preheader.lr.ph.split.us
	addi.w	$a4, $a1, -10
	pcalau12i	$a2, %got_pc_hi20(HVAR_WINDOW)
	ld.d	$a2, $a2, %got_pc_lo12(HVAR_WINDOW)
	ld.w	$a5, $a2, 0
	slli.d	$a2, $a5, 1
	addi.d	$a2, $a2, 1
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $fp
	ffint.s.w	$fa1, $fa1
	bltz	$a5, .LBB1_12
# %bb.3:                                # %.preheader.lr.ph.split.us.split
	ld.d	$a6, $s0, 48
	move	$a3, $zero
	sub.w	$a5, $zero, $a5
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 10
	movgr2fr.w	$fa2, $zero
	addi.d	$a6, $fp, 1
	sltui	$a6, $a6, 1
	lu12i.w	$a7, 276464
	movgr2fr.w	$fa3, $a7
	movgr2cf	$fcc0, $a6
	.p2align	4, , 16
.LBB1_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_6 Depth 3
                                        #       Child Loop BB1_8 Depth 3
	mul.d	$a6, $a3, $a1
	ori	$a7, $zero, 10
	move	$t0, $a5
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph.us65
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_6 Depth 3
                                        #       Child Loop BB1_8 Depth 3
	add.d	$t1, $a7, $a6
	move	$t2, $a2
	move	$t3, $t0
	fmov.s	$fa5, $fa2
	.p2align	4, , 16
.LBB1_6:                                #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$t4, $t3, 0
	movgr2fr.w	$fa4, $t4
	ffint.s.w	$fa4, $fa4
	fadd.s	$fa5, $fa5, $fa4
	addi.w	$t2, $t2, -1
	addi.d	$t3, $t3, 1
	bnez	$t2, .LBB1_6
# %bb.7:                                # %.lr.ph54.us
                                        #   in Loop: Header=BB1_5 Depth=2
	slli.d	$t2, $t1, 2
	fldx.s	$fa4, $a0, $t2
	move	$t2, $zero
	fdiv.s	$fa5, $fa5, $fa0
	alsl.d	$t1, $t1, $a0, 2
	move	$t3, $a2
	.p2align	4, , 16
.LBB1_8:                                #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$t4, $t0, $t2
	movgr2fr.w	$fa6, $t4
	ffint.s.w	$fa6, $fa6
	fsub.s	$fa6, $fa6, $fa5
	fmadd.s	$fa4, $fa6, $fa6, $fa4
	fst.s	$fa4, $t1, 0
	addi.w	$t3, $t3, -1
	addi.d	$t2, $t2, 1
	bnez	$t3, .LBB1_8
# %bb.9:                                # %._crit_edge55.us
                                        #   in Loop: Header=BB1_5 Depth=2
	fdiv.s	$fa4, $fa4, $fa0
	fcmp.cult.s	$fcc1, $fa1, $fa4
	fsel	$fa5, $fa2, $fa3, $fcc1
	fsel	$fa4, $fa5, $fa4, $fcc0
	fst.s	$fa4, $t1, 0
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	bne	$a7, $a4, .LBB1_5
# %bb.10:                               # %._crit_edge58.split.us67
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a5, $a5, $a1
	bne	$a3, $s1, .LBB1_4
.LBB1_11:                               # %._crit_edge60
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_12:                               # %.preheader.lr.ph.split.us.split.us.split.us
	bstrpick.d	$a1, $a4, 31, 0
	addi.w	$a3, $zero, -1
	addi.d	$a2, $a1, -10
	beq	$fp, $a3, .LBB1_21
# %bb.13:                               # %.preheader.us.us.us.preheader
	move	$a3, $zero
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	addi.d	$a5, $a4, 10
	vreplvei.w	$vr2, $vr0, 0
	vreplvei.w	$vr3, $vr1, 0
	addi.d	$a6, $a0, 56
	slli.d	$a7, $s2, 2
	ori	$t0, $zero, 8
	lu12i.w	$t1, 276464
	movgr2fr.w	$fa4, $t1
	movgr2fr.w	$fa5, $zero
	vreplgr2vr.w	$vr6, $t1
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               # %._crit_edge58.split.us.split.us.split.us73.us.us
                                        #   in Loop: Header=BB1_15 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a6, $a6, $a7
	add.d	$a0, $a0, $a7
	beq	$a3, $s1, .LBB1_11
.LBB1_15:                               # %.preheader.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_20 Depth 2
	ori	$t2, $zero, 10
	bltu	$a2, $t0, .LBB1_19
# %bb.16:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$t1, $a4
	move	$t2, $a6
	.p2align	4, , 16
.LBB1_17:                               # %vector.body
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr7, $t2, -16
	vld	$vr8, $t2, 0
	vfdiv.s	$vr7, $vr7, $vr2
	vfdiv.s	$vr8, $vr8, $vr2
	vfcmp.cult.s	$vr7, $vr3, $vr7
	vfcmp.cult.s	$vr8, $vr3, $vr8
	vand.v	$vr7, $vr7, $vr6
	vand.v	$vr8, $vr8, $vr6
	vst	$vr7, $t2, -16
	vst	$vr8, $t2, 0
	addi.d	$t1, $t1, -8
	addi.d	$t2, $t2, 32
	bnez	$t1, .LBB1_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$t2, $a5
	beq	$a2, $a4, .LBB1_14
.LBB1_19:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	alsl.d	$t1, $t2, $a0, 2
	sub.d	$t2, $a1, $t2
	.p2align	4, , 16
.LBB1_20:                               # %scalar.ph
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa7, $t1, 0
	fdiv.s	$fa7, $fa7, $fa0
	fcmp.cult.s	$fcc0, $fa1, $fa7
	fsel	$fa7, $fa5, $fa4, $fcc0
	fst.s	$fa7, $t1, 0
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	bnez	$t2, .LBB1_20
	b	.LBB1_14
.LBB1_21:                               # %.preheader.us.us.us.us.preheader
	move	$a3, $zero
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	addi.d	$a5, $a4, 10
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$a6, $a0, 56
	slli.d	$a7, $s2, 2
	ori	$t0, $zero, 8
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_22:                               # %._crit_edge58.split.us.split.us.split.us.us.us.us.us
                                        #   in Loop: Header=BB1_23 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a6, $a6, $a7
	add.d	$a0, $a0, $a7
	beq	$a3, $s1, .LBB1_11
.LBB1_23:                               # %.preheader.us.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_28 Depth 2
	ori	$t2, $zero, 10
	bltu	$a2, $t0, .LBB1_27
# %bb.24:                               # %vector.body130.preheader
                                        #   in Loop: Header=BB1_23 Depth=1
	move	$t1, $a4
	move	$t2, $a6
	.p2align	4, , 16
.LBB1_25:                               # %vector.body130
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t2, -16
	vld	$vr3, $t2, 0
	vfdiv.s	$vr2, $vr2, $vr1
	vfdiv.s	$vr3, $vr3, $vr1
	vst	$vr2, $t2, -16
	vst	$vr3, $t2, 0
	addi.d	$t1, $t1, -8
	addi.d	$t2, $t2, 32
	bnez	$t1, .LBB1_25
# %bb.26:                               # %middle.block136
                                        #   in Loop: Header=BB1_23 Depth=1
	move	$t2, $a5
	beq	$a2, $a4, .LBB1_22
.LBB1_27:                               # %scalar.ph123.preheader
                                        #   in Loop: Header=BB1_23 Depth=1
	alsl.d	$t1, $t2, $a0, 2
	sub.d	$t2, $a1, $t2
	.p2align	4, , 16
.LBB1_28:                               # %scalar.ph123
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fdiv.s	$fa2, $fa2, $fa0
	fst.s	$fa2, $t1, 0
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	bnez	$t2, .LBB1_28
	b	.LBB1_22
.Lfunc_end1:
	.size	HorzVariance, .Lfunc_end1-HorzVariance
                                        # -- End function
	.globl	BuildConnectedComponents        # -- Begin function BuildConnectedComponents
	.p2align	5
	.type	BuildConnectedComponents,@function
BuildConnectedComponents:               # @BuildConnectedComponents
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s0, $a0, 36
	ld.w	$s1, $a0, 32
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	mul.w	$a0, $s1, $s0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 88
	blez	$s1, .LBB2_83
# %bb.1:                                # %.preheader175.lr.ph
	ori	$a0, $zero, 3
                                        # implicit-def: $r27
	blt	$s0, $a0, .LBB2_84
# %bb.2:                                # %.preheader175.preheader
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	move	$s5, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fs0, $fa0
	addi.d	$a0, $zero, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s3, $zero, 2
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
                                        # implicit-def: $r27
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_3:                                # %._crit_edge196.loopexit
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$s1, $fp, 32
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
.LBB2_4:                                # %._crit_edge196
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $a1
	bge	$a1, $s1, .LBB2_84
.LBB2_5:                                # %.preheader175
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_13 Depth 4
                                        #       Child Loop BB2_20 Depth 3
                                        #       Child Loop BB2_34 Depth 3
                                        #         Child Loop BB2_39 Depth 4
                                        #         Child Loop BB2_42 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_74 Depth 4
                                        #         Child Loop BB2_77 Depth 4
	bge	$s3, $s0, .LBB2_82
# %bb.6:                                # %.lr.ph195
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a2, $zero
	addi.d	$a0, $s5, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $s5, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_7:                                # %.loopexit.loopexit
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.w	$s0, $fp, 36
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
.LBB2_8:                                # %.loopexit
                                        #   in Loop: Header=BB2_9 Depth=2
	addi.w	$a0, $s0, -1
	addi.d	$a2, $a2, 1
	move	$s8, $s6
	bge	$s6, $a0, .LBB2_3
.LBB2_9:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_13 Depth 4
                                        #       Child Loop BB2_20 Depth 3
                                        #       Child Loop BB2_34 Depth 3
                                        #         Child Loop BB2_39 Depth 4
                                        #         Child Loop BB2_42 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_74 Depth 4
                                        #         Child Loop BB2_77 Depth 4
	mul.d	$a0, $s0, $s5
	add.w	$a0, $a0, $s8
	slli.d	$s2, $a0, 2
	addi.w	$s6, $s8, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bltz	$a0, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=2
	ld.d	$a0, $fp, 80
	fldx.s	$fa0, $a0, $s2
	fcmp.cune.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB2_8
.LBB2_11:                               #   in Loop: Header=BB2_9 Depth=2
	ld.d	$s7, $fp, 88
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $s0
	addi.w	$a1, $zero, -1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	add.w	$a2, $a2, $a0
	move	$a4, $a1
	.p2align	4, , 16
.LBB2_12:                               # %.preheader172
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_13 Depth 4
	move	$a3, $a4
	move	$a4, $a2
	move	$a5, $a1
	.p2align	4, , 16
.LBB2_13:                               #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a0, $a4, 2
	ldx.w	$a0, $s7, $a0
	bnez	$a0, .LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=4
	move	$a6, $a5
	addi.d	$a5, $a5, 1
	addi.w	$a4, $a4, 1
	blez	$a6, .LBB2_13
.LBB2_15:                               #   in Loop: Header=BB2_12 Depth=3
	bnez	$a0, .LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_12 Depth=3
	addi.w	$a4, $a3, 1
	add.w	$a2, $a2, $s0
	bltz	$a3, .LBB2_12
.LBB2_17:                               #   in Loop: Header=BB2_9 Depth=2
	beqz	$a0, .LBB2_21
# %bb.18:                               # %.preheader173
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.w	$a1, $s4, 0
	move	$s1, $s4
	bne	$a1, $a0, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_9 Depth=2
	move	$s1, $s4
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_20:                               # %.lr.ph
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s1, 72
	ld.w	$a1, $s1, 0
	bne	$a1, $a0, .LBB2_20
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_21:                               #   in Loop: Header=BB2_9 Depth=2
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_9 Depth=2
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	b	.LBB2_24
.LBB2_23:                               #   in Loop: Header=BB2_9 Depth=2
	ori	$a0, $zero, 1
.LBB2_24:                               #   in Loop: Header=BB2_9 Depth=2
	st.w	$a0, $s4, 0
	st.w	$zero, $s4, 4
	st.w	$s5, $s4, 8
	st.w	$s8, $s4, 12
	st.w	$s5, $s4, 16
	st.w	$s8, $s4, 20
	st.w	$s5, $s4, 24
	st.w	$s5, $s4, 28
	st.w	$s5, $s4, 32
	st.d	$zero, $s4, 36
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s4, 48
	st.b	$zero, $s4, 64
	st.d	$a1, $s4, 72
	move	$s1, $s4
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
.LBB2_25:                               # %.loopexit174
                                        #   in Loop: Header=BB2_9 Depth=2
	stx.w	$a0, $s7, $s2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 48
	st.w	$s8, $a0, 0
	st.w	$s5, $a0, 4
	ld.w	$a2, $s1, 4
	st.d	$a1, $a0, 8
	ld.w	$a1, $s1, 8
	st.d	$a0, $s1, 48
	addi.w	$a3, $a2, 1
	st.w	$a3, $s1, 4
	mul.d	$a1, $a1, $a2
	ld.w	$a0, $s1, 12
	add.w	$a1, $a1, $s5
	div.w	$a1, $a1, $a3
	st.w	$a1, $s1, 8
	slt	$a1, $a0, $s8
	masknez	$a2, $a0, $a1
	ld.w	$a3, $s1, 16
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 12
	slt	$a1, $a3, $s5
	masknez	$a2, $a3, $a1
	ld.w	$a3, $s1, 20
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 16
	slt	$a1, $s8, $a3
	masknez	$a2, $a3, $a1
	ld.w	$a4, $s1, 24
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 20
	slt	$a1, $s5, $a4
	masknez	$a2, $a4, $a1
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 24
	blt	$a3, $s8, .LBB2_27
# %bb.26:                               #   in Loop: Header=BB2_9 Depth=2
	st.w	$s5, $s1, 28
.LBB2_27:                               #   in Loop: Header=BB2_9 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	blt	$s8, $a0, .LBB2_29
# %bb.28:                               #   in Loop: Header=BB2_9 Depth=2
	st.w	$s5, $s1, 32
.LBB2_29:                               #   in Loop: Header=BB2_9 Depth=2
	ld.w	$a0, $fp, 36
	ld.d	$a1, $fp, 72
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a2, $a0, $a2
	add.w	$a2, $a2, $s8
	slli.d	$a2, $a2, 2
	fldx.s	$fa0, $a1, $a2
	fld.s	$fa1, $s1, 36
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s1, 36
	mul.d	$a0, $a0, $a3
	add.w	$a0, $a0, $s8
	slli.d	$a0, $a0, 2
	fldx.s	$fa0, $a1, $a0
	fld.s	$fa1, $s1, 40
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s1, 40
	addi.d	$s2, $s8, -1
	addi.d	$s7, $zero, -1
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_30:                               # %._crit_edge.thread.i.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $a0, 72
	beqz	$a2, .LBB2_49
# %bb.31:                               #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $a2, 72
.LBB2_32:                               # %MergeComponents.exit.2
                                        #   in Loop: Header=BB2_34 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_33:                               #   in Loop: Header=BB2_34 Depth=3
	addi.w	$s7, $s7, 1
	beq	$s7, $s3, .LBB2_7
.LBB2_34:                               # %.preheader171
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_39 Depth 4
                                        #         Child Loop BB2_42 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_74 Depth 4
                                        #         Child Loop BB2_77 Depth 4
	ld.w	$a0, $fp, 36
	add.d	$s0, $s7, $s5
	ld.d	$a1, $fp, 88
	mul.d	$a0, $a0, $s0
	add.w	$a2, $s2, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a1, $a2
	beqz	$a4, .LBB2_52
# %bb.35:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $s1, 0
	beq	$a4, $a3, .LBB2_52
# %bb.36:                               # %.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a0, $s4, 0
	bne	$a0, $a4, .LBB2_38
# %bb.37:                               #   in Loop: Header=BB2_34 Depth=3
	move	$a2, $zero
	move	$a0, $s4
	b	.LBB2_40
.LBB2_38:                               # %.lr.ph182.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a0, $s4
	.p2align	4, , 16
.LBB2_39:                               # %.lr.ph182
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a2, $a0
	ld.d	$a0, $a0, 72
	ld.w	$a5, $a0, 0
	bne	$a5, $a4, .LBB2_39
.LBB2_40:                               # %._crit_edge
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a4, $a0, 48
	beqz	$a4, .LBB2_47
# %bb.41:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_42:                               # %.lr.ph.i
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a5, $a6
	ld.w	$a7, $a6, 4
	ld.w	$t0, $fp, 36
	ld.w	$t1, $a6, 0
	ld.d	$a6, $a6, 8
	mul.d	$a7, $t0, $a7
	add.w	$a7, $a7, $t1
	slli.d	$a7, $a7, 2
	stx.w	$a3, $a1, $a7
	bnez	$a6, .LBB2_42
# %bb.43:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $s1, 48
	ld.w	$a3, $a0, 4
	ld.w	$a6, $s1, 4
	st.d	$a1, $a5, 8
	add.w	$a1, $a6, $a3
	st.w	$a1, $s1, 4
	ld.w	$a3, $a0, 4
	ld.w	$a5, $s1, 8
	ld.w	$a6, $a0, 8
	st.d	$a4, $s1, 48
	sub.d	$a4, $a1, $a3
	mul.d	$a4, $a4, $a5
	mul.d	$a3, $a6, $a3
	ld.w	$a5, $a0, 12
	ld.w	$a6, $s1, 12
	add.w	$a3, $a4, $a3
	div.w	$a1, $a3, $a1
	st.w	$a1, $s1, 8
	slt	$a1, $a6, $a5
	ld.w	$a3, $a0, 16
	ld.w	$a4, $s1, 16
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a6
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	ld.w	$a6, $a0, 20
	ld.w	$a7, $s1, 20
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 16
	slt	$a3, $a6, $a7
	masknez	$a4, $a7, $a3
	ld.w	$a5, $a0, 24
	ld.w	$a7, $s1, 24
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 20
	slt	$a4, $a5, $a7
	masknez	$a6, $a7, $a4
	ld.w	$a7, $a0, 20
	maskeqz	$a4, $a5, $a4
	st.w	$a1, $s1, 12
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 24
	bne	$a3, $a7, .LBB2_45
# %bb.44:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 28
	st.w	$a3, $s1, 28
.LBB2_45:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 12
	bne	$a1, $a3, .LBB2_47
# %bb.46:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a1, $a0, 32
	st.w	$a1, $s1, 32
.LBB2_47:                               # %._crit_edge.thread.i
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $a0, 72
	beqz	$a2, .LBB2_50
# %bb.48:                               #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $a2, 72
	b	.LBB2_51
.LBB2_49:                               #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a1
	b	.LBB2_32
.LBB2_50:                               #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a1
.LBB2_51:                               # %MergeComponents.exit
                                        #   in Loop: Header=BB2_34 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.d	$a1, $fp, 88
	mul.d	$a0, $a0, $s0
.LBB2_52:                               #   in Loop: Header=BB2_34 Depth=3
	add.w	$a2, $s8, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a1, $a2
	beqz	$a4, .LBB2_69
# %bb.53:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $s1, 0
	beq	$a4, $a3, .LBB2_69
# %bb.54:                               # %.preheader.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a0, $s4, 0
	bne	$a0, $a4, .LBB2_56
# %bb.55:                               #   in Loop: Header=BB2_34 Depth=3
	move	$a2, $zero
	move	$a0, $s4
	b	.LBB2_58
.LBB2_56:                               # %.lr.ph182.1.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a0, $s4
	.p2align	4, , 16
.LBB2_57:                               # %.lr.ph182.1
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a2, $a0
	ld.d	$a0, $a0, 72
	ld.w	$a5, $a0, 0
	bne	$a5, $a4, .LBB2_57
.LBB2_58:                               # %._crit_edge.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a4, $a0, 48
	beqz	$a4, .LBB2_65
# %bb.59:                               # %.lr.ph.i.1.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_60:                               # %.lr.ph.i.1
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a5, $a6
	ld.w	$a7, $a6, 4
	ld.w	$t0, $fp, 36
	ld.w	$t1, $a6, 0
	ld.d	$a6, $a6, 8
	mul.d	$a7, $t0, $a7
	add.w	$a7, $a7, $t1
	slli.d	$a7, $a7, 2
	stx.w	$a3, $a1, $a7
	bnez	$a6, .LBB2_60
# %bb.61:                               # %._crit_edge.i.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $s1, 48
	ld.w	$a3, $a0, 4
	ld.w	$a6, $s1, 4
	st.d	$a1, $a5, 8
	add.w	$a1, $a6, $a3
	st.w	$a1, $s1, 4
	ld.w	$a3, $a0, 4
	ld.w	$a5, $s1, 8
	ld.w	$a6, $a0, 8
	st.d	$a4, $s1, 48
	sub.d	$a4, $a1, $a3
	mul.d	$a4, $a4, $a5
	mul.d	$a3, $a6, $a3
	ld.w	$a5, $a0, 12
	ld.w	$a6, $s1, 12
	add.w	$a3, $a4, $a3
	div.w	$a1, $a3, $a1
	st.w	$a1, $s1, 8
	slt	$a1, $a6, $a5
	ld.w	$a3, $a0, 16
	ld.w	$a4, $s1, 16
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a6
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	ld.w	$a6, $a0, 20
	ld.w	$a7, $s1, 20
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 16
	slt	$a3, $a6, $a7
	masknez	$a4, $a7, $a3
	ld.w	$a5, $a0, 24
	ld.w	$a7, $s1, 24
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 20
	slt	$a4, $a5, $a7
	masknez	$a6, $a7, $a4
	ld.w	$a7, $a0, 20
	maskeqz	$a4, $a5, $a4
	st.w	$a1, $s1, 12
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 24
	bne	$a3, $a7, .LBB2_63
# %bb.62:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 28
	st.w	$a3, $s1, 28
.LBB2_63:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 12
	bne	$a1, $a3, .LBB2_65
# %bb.64:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a1, $a0, 32
	st.w	$a1, $s1, 32
.LBB2_65:                               # %._crit_edge.thread.i.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $a0, 72
	beqz	$a2, .LBB2_67
# %bb.66:                               #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $a2, 72
	b	.LBB2_68
.LBB2_67:                               #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a1
.LBB2_68:                               # %MergeComponents.exit.1
                                        #   in Loop: Header=BB2_34 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.d	$a1, $fp, 88
	mul.d	$a0, $a0, $s0
.LBB2_69:                               #   in Loop: Header=BB2_34 Depth=3
	add.w	$a0, $s6, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $a1, $a0
	beqz	$a4, .LBB2_33
# %bb.70:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $s1, 0
	beq	$a4, $a3, .LBB2_33
# %bb.71:                               # %.preheader.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a0, $s4, 0
	bne	$a0, $a4, .LBB2_73
# %bb.72:                               #   in Loop: Header=BB2_34 Depth=3
	move	$a2, $zero
	move	$a0, $s4
	b	.LBB2_75
.LBB2_73:                               # %.lr.ph182.2.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a0, $s4
	.p2align	4, , 16
.LBB2_74:                               # %.lr.ph182.2
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a2, $a0
	ld.d	$a0, $a0, 72
	ld.w	$a5, $a0, 0
	bne	$a5, $a4, .LBB2_74
.LBB2_75:                               # %._crit_edge.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a4, $a0, 48
	beqz	$a4, .LBB2_30
# %bb.76:                               # %.lr.ph.i.2.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_77:                               # %.lr.ph.i.2
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a5, $a6
	ld.w	$a7, $a6, 4
	ld.w	$t0, $fp, 36
	ld.w	$t1, $a6, 0
	ld.d	$a6, $a6, 8
	mul.d	$a7, $t0, $a7
	add.w	$a7, $a7, $t1
	slli.d	$a7, $a7, 2
	stx.w	$a3, $a1, $a7
	bnez	$a6, .LBB2_77
# %bb.78:                               # %._crit_edge.i.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $s1, 48
	ld.w	$a3, $a0, 4
	ld.w	$a6, $s1, 4
	st.d	$a1, $a5, 8
	add.w	$a1, $a6, $a3
	st.w	$a1, $s1, 4
	ld.w	$a3, $a0, 4
	ld.w	$a5, $s1, 8
	ld.w	$a6, $a0, 8
	st.d	$a4, $s1, 48
	sub.d	$a4, $a1, $a3
	mul.d	$a4, $a4, $a5
	mul.d	$a3, $a6, $a3
	ld.w	$a5, $a0, 12
	ld.w	$a6, $s1, 12
	add.w	$a3, $a4, $a3
	div.w	$a1, $a3, $a1
	st.w	$a1, $s1, 8
	slt	$a1, $a6, $a5
	ld.w	$a3, $a0, 16
	ld.w	$a4, $s1, 16
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a6
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	ld.w	$a6, $a0, 20
	ld.w	$a7, $s1, 20
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 16
	slt	$a3, $a6, $a7
	masknez	$a4, $a7, $a3
	ld.w	$a5, $a0, 24
	ld.w	$a7, $s1, 24
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 20
	slt	$a4, $a5, $a7
	masknez	$a6, $a7, $a4
	ld.w	$a7, $a0, 20
	maskeqz	$a4, $a5, $a4
	st.w	$a1, $s1, 12
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 24
	bne	$a3, $a7, .LBB2_80
# %bb.79:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 28
	st.w	$a3, $s1, 28
.LBB2_80:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 12
	bne	$a1, $a3, .LBB2_30
# %bb.81:                               #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a1, $a0, 32
	st.w	$a1, $s1, 32
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_82:                               # %.preheader175.._crit_edge196_crit_edge
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$a1, $s5, 1
	b	.LBB2_4
.LBB2_83:
                                        # implicit-def: $r27
.LBB2_84:                               # %._crit_edge204
	move	$a0, $s4
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end2:
	.size	BuildConnectedComponents, .Lfunc_end2-BuildConnectedComponents
                                        # -- End function
	.globl	MergeComponents                 # -- Begin function MergeComponents
	.p2align	5
	.type	MergeComponents,@function
MergeComponents:                        # @MergeComponents
# %bb.0:
	ld.d	$a5, $a1, 48
	beqz	$a5, .LBB3_7
# %bb.1:                                # %.lr.ph
	ld.d	$a7, $a4, 88
	ld.w	$t0, $a0, 0
	move	$t1, $a5
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	move	$a6, $t1
	ld.w	$t2, $t1, 4
	ld.w	$t3, $a4, 36
	ld.w	$t4, $t1, 0
	ld.d	$t1, $t1, 8
	mul.d	$t2, $t3, $t2
	add.w	$t2, $t2, $t4
	slli.d	$t2, $t2, 2
	stx.w	$t0, $a7, $t2
	bnez	$t1, .LBB3_2
# %bb.3:                                # %._crit_edge
	ld.d	$a4, $a0, 48
	ld.w	$a7, $a1, 4
	ld.w	$t0, $a0, 4
	st.d	$a4, $a6, 8
	add.w	$a4, $t0, $a7
	st.w	$a4, $a0, 4
	ld.w	$a6, $a1, 4
	ld.w	$a7, $a0, 8
	ld.w	$t0, $a1, 8
	st.d	$a5, $a0, 48
	sub.d	$a5, $a4, $a6
	mul.d	$a5, $a5, $a7
	mul.d	$a6, $t0, $a6
	ld.w	$a7, $a1, 12
	ld.w	$t0, $a0, 12
	add.w	$a5, $a5, $a6
	div.w	$a4, $a5, $a4
	st.w	$a4, $a0, 8
	slt	$a4, $t0, $a7
	ld.w	$a5, $a1, 16
	ld.w	$a6, $a0, 16
	masknez	$t0, $t0, $a4
	maskeqz	$a4, $a7, $a4
	or	$a4, $a4, $t0
	slt	$a7, $a6, $a5
	masknez	$a6, $a6, $a7
	ld.w	$t0, $a1, 20
	ld.w	$t1, $a0, 20
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	st.w	$a5, $a0, 16
	slt	$a5, $t0, $t1
	masknez	$a6, $t1, $a5
	ld.w	$a7, $a1, 24
	ld.w	$t1, $a0, 24
	maskeqz	$a5, $t0, $a5
	or	$a5, $a5, $a6
	st.w	$a5, $a0, 20
	slt	$a6, $a7, $t1
	masknez	$t0, $t1, $a6
	ld.w	$t1, $a1, 20
	maskeqz	$a6, $a7, $a6
	st.w	$a4, $a0, 12
	or	$a6, $a6, $t0
	st.w	$a6, $a0, 24
	bne	$a5, $t1, .LBB3_5
# %bb.4:
	ld.w	$a5, $a1, 28
	st.w	$a5, $a0, 28
.LBB3_5:
	ld.w	$a5, $a1, 12
	bne	$a4, $a5, .LBB3_7
# %bb.6:
	ld.w	$a4, $a1, 32
	st.w	$a4, $a0, 32
.LBB3_7:                                # %._crit_edge.thread
	ld.d	$a0, $a1, 72
	beqz	$a2, .LBB3_9
# %bb.8:
	st.d	$a0, $a2, 72
	move	$a0, $a1
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB3_9:
	st.d	$a0, $a3, 0
	move	$a0, $a1
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end3:
	.size	MergeComponents, .Lfunc_end3-MergeComponents
                                        # -- End function
	.globl	EliminateLargeSpreadComponents  # -- Begin function EliminateLargeSpreadComponents
	.p2align	5
	.type	EliminateLargeSpreadComponents,@function
EliminateLargeSpreadComponents:         # @EliminateLargeSpreadComponents
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB4_11
# %bb.1:                                # %.lr.ph37
	move	$fp, $a1
	pcalau12i	$a1, %got_pc_hi20(KILL_SMALL_COMP)
	ld.d	$s1, $a1, %got_pc_lo12(KILL_SMALL_COMP)
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(VSPREAD_THRESHOLD)
	ld.d	$s2, $a2, %got_pc_lo12(VSPREAD_THRESHOLD)
	pcalau12i	$a2, %got_pc_hi20(SMALL_THRESHOLD)
	ld.d	$s3, $a2, %got_pc_lo12(SMALL_THRESHOLD)
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	fld.s	$fa0, $a0, 36
	fld.s	$fa1, $a0, 40
	fcmp.cult.s	$fcc0, $fa0, $fa1
	movcf2gr	$a2, $fcc0
	st.b	$a2, $a0, 44
	addi.d	$s0, $a0, 72
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_11
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a0, 24
	sub.d	$a2, $a2, $a3
	ld.w	$a3, $fp, 32
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fld.d	$fa1, $s2, 0
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fcmp.cult.d	$fcc0, $fa0, $fa1
	beqz	$a1, .LBB4_6
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	bceqz	$fcc0, .LBB4_7
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a2, $a0, 12
	ld.w	$a3, $a0, 20
	ld.w	$a4, $s3, 0
	sub.w	$a2, $a2, $a3
	bge	$a2, $a4, .LBB4_2
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	bcnez	$fcc0, .LBB4_2
.LBB4_7:                                # %.critedge
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $a0, 48
	beqz	$a1, .LBB4_10
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a2, $fp, 88
	.p2align	4, , 16
.LBB4_9:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 4
	ld.w	$a4, $fp, 36
	ld.w	$a5, $a1, 0
	ld.d	$a1, $a1, 8
	mul.d	$a3, $a4, $a3
	add.w	$a3, $a3, $a5
	slli.d	$a3, $a3, 2
	stx.w	$zero, $a2, $a3
	bnez	$a1, .LBB4_9
.LBB4_10:                               # %._crit_edge
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $a0, 72
	st.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB4_3
.LBB4_11:                               # %._crit_edge38
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	EliminateLargeSpreadComponents, .Lfunc_end4-EliminateLargeSpreadComponents
                                        # -- End function
	.globl	PrintConnectedComponents        # -- Begin function PrintConnectedComponents
	.p2align	5
	.type	PrintConnectedComponents,@function
PrintConnectedComponents:               # @PrintConnectedComponents
# %bb.0:
	beqz	$a0, .LBB5_4
# %bb.1:                                # %.lr.ph.preheader
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s3, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s4, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s5, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s7, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s8, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s1, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s2, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	move	$s6, $zero
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	move	$a0, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	move	$a0, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 44
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	ld.d	$fp, $fp, 72
	add.w	$s6, $a0, $s6
	bnez	$fp, .LBB5_2
# %bb.3:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s6
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
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB5_4:                                # %._crit_edge.thread
	ret
.Lfunc_end5:
	.size	PrintConnectedComponents, .Lfunc_end5-PrintConnectedComponents
                                        # -- End function
	.globl	WriteConnectedComponentsToPGM   # -- Begin function WriteConnectedComponentsToPGM
	.p2align	5
	.type	WriteConnectedComponentsToPGM,@function
WriteConnectedComponentsToPGM:          # @WriteConnectedComponentsToPGM
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB6_9
# %bb.1:
	move	$fp, $a1
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB6_9
# %bb.2:
	ld.w	$s1, $fp, 36
	beqz	$s1, .LBB6_9
# %bb.3:
	ld.w	$a1, $fp, 32
	beqz	$a1, .LBB6_9
# %bb.4:
	pcalau12i	$s4, %pc_hi20(WriteConnectedComponentsToPGM.index)
	ld.w	$s2, $s4, %pc_lo12(WriteConnectedComponentsToPGM.index)
	ori	$a2, $zero, 99
	blt	$a2, $s2, .LBB6_9
# %bb.5:
	mul.w	$a2, $a1, $s1
	ori	$a1, $zero, 1
	move	$s3, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	ori	$a1, $zero, 255
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_6:                                # %._crit_edge
                                        #   in Loop: Header=BB6_7 Depth=1
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB6_10
.LBB6_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
	ld.d	$a2, $a0, 48
	beqz	$a2, .LBB6_6
	.p2align	4, , 16
.LBB6_8:                                # %.lr.ph
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a2, 0
	ld.d	$a2, $a2, 8
	mul.d	$a3, $a3, $s1
	add.w	$a3, $a3, $a4
	stx.b	$a1, $s0, $a3
	bnez	$a2, .LBB6_8
	b	.LBB6_6
.LBB6_9:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB6_10:
	ld.d	$s3, $fp, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 12
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $s2, 1
	st.w	$a0, $s4, %pc_lo12(WriteConnectedComponentsToPGM.index)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s1
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 36
	ld.w	$a3, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.w	$a1, $fp, 32
	mul.w	$a0, $a1, $a0
	blez	$a0, .LBB6_13
# %bb.11:                               # %.lr.ph47.preheader
	move	$s3, $zero
	.p2align	4, , 16
.LBB6_12:                               # %.lr.ph47
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a0, $s0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.w	$a1, $fp, 32
	addi.d	$s3, $s3, 1
	mul.w	$a0, $a1, $a0
	blt	$s3, $a0, .LBB6_12
.LBB6_13:                               # %._crit_edge48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end6:
	.size	WriteConnectedComponentsToPGM, .Lfunc_end6-WriteConnectedComponentsToPGM
                                        # -- End function
	.globl	FreeConnectedComponents         # -- Begin function FreeConnectedComponents
	.p2align	5
	.type	FreeConnectedComponents,@function
FreeConnectedComponents:                # @FreeConnectedComponents
# %bb.0:
	beqz	$a0, .LBB7_6
# %bb.1:                                # %.lr.ph17.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %._crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	beqz	$s0, .LBB7_5
.LBB7_3:                                # %.lr.ph17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	ld.d	$a0, $fp, 48
	ld.d	$s0, $fp, 72
	beqz	$a0, .LBB7_2
	.p2align	4, , 16
.LBB7_4:                                # %.lr.ph
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s1, .LBB7_4
	b	.LBB7_2
.LBB7_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB7_6:                                # %._crit_edge18
	ret
.Lfunc_end7:
	.size	FreeConnectedComponents, .Lfunc_end7-FreeConnectedComponents
                                        # -- End function
	.globl	MergeRowComponents              # -- Begin function MergeRowComponents
	.p2align	5
	.type	MergeRowComponents,@function
MergeRowComponents:                     # @MergeRowComponents
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB8_3
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a0
	move	$s1, $a1
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MergeToLeft)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 72
	bnez	$s0, .LBB8_2
.LBB8_3:                                # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	MergeRowComponents, .Lfunc_end8-MergeRowComponents
                                        # -- End function
	.globl	MergeToLeft                     # -- Begin function MergeToLeft
	.p2align	5
	.type	MergeToLeft,@function
MergeToLeft:                            # @MergeToLeft
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $a1
	pcalau12i	$a1, %got_pc_hi20(SAME_ROW_V)
	ld.d	$a5, $a1, %got_pc_lo12(SAME_ROW_V)
	ld.w	$a1, $a5, 0
	bltz	$a1, .LBB9_23
# %bb.1:                                # %.lr.ph90
	move	$fp, $a2
	move	$s0, $a0
	ld.w	$s4, $a0, 20
	ld.w	$s1, $a0, 28
	sub.w	$a2, $zero, $a1
	pcalau12i	$a4, %got_pc_hi20(SAME_ROW_H)
	ld.d	$s6, $a4, %got_pc_lo12(SAME_ROW_H)
	move	$t0, $zero
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	b	.LBB9_4
.LBB9_2:                                # %._crit_edge80.loopexit93
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a1, $a5, 0
	.p2align	4, , 16
.LBB9_3:                                # %._crit_edge80
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.w	$a2, $s7, 1
	bge	$s7, $a1, .LBB9_23
.LBB9_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_9 Depth 2
                                        #       Child Loop BB9_19 Depth 3
	ld.w	$a4, $s6, 0
	move	$s7, $a2
	bltz	$a4, .LBB9_3
# %bb.5:                                # %.lr.ph79
                                        #   in Loop: Header=BB9_4 Depth=1
	add.w	$s8, $s7, $s1
	bltz	$s8, .LBB9_3
# %bb.6:                                # %.lr.ph79.split
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a2, $fp, 32
	bge	$s8, $a2, .LBB9_3
# %bb.7:                                # %.lr.ph79.split.split.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	sub.w	$a2, $zero, $a4
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_8:                                #   in Loop: Header=BB9_9 Depth=2
	addi.w	$a2, $s3, 1
	beqz	$s3, .LBB9_2
.LBB9_9:                                # %.lr.ph79.split.split
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_19 Depth 3
	ld.w	$a1, $fp, 32
	move	$s3, $a2
	bge	$s8, $a1, .LBB9_8
# %bb.10:                               #   in Loop: Header=BB9_9 Depth=2
	add.w	$a2, $s3, $s4
	bltz	$a2, .LBB9_8
# %bb.11:                               #   in Loop: Header=BB9_9 Depth=2
	ld.w	$a6, $fp, 36
	bge	$a2, $a6, .LBB9_8
# %bb.12:                               #   in Loop: Header=BB9_9 Depth=2
	mul.d	$a4, $a6, $s8
	add.w	$a2, $a4, $a2
	mul.w	$a1, $a6, $a1
	bltu	$a1, $a2, .LBB9_8
# %bb.13:                               #   in Loop: Header=BB9_9 Depth=2
	ld.d	$a1, $fp, 88
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	beqz	$a1, .LBB9_8
# %bb.14:                               #   in Loop: Header=BB9_9 Depth=2
	ld.w	$a2, $s0, 0
	beq	$a1, $a2, .LBB9_8
# %bb.15:                               #   in Loop: Header=BB9_9 Depth=2
	beq	$a1, $t0, .LBB9_8
# %bb.16:                               # %.preheader
                                        #   in Loop: Header=BB9_9 Depth=2
	ld.d	$s2, $s5, 0
	beqz	$s2, .LBB9_24
# %bb.17:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB9_9 Depth=2
	ld.w	$a2, $s2, 0
	bne	$a2, $a1, .LBB9_19
# %bb.18:                               #   in Loop: Header=BB9_9 Depth=2
	move	$a2, $zero
	b	.LBB9_21
	.p2align	4, , 16
.LBB9_19:                               # %.lr.ph114
                                        #   Parent Loop BB9_4 Depth=1
                                        #     Parent Loop BB9_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $s2
	ld.d	$s2, $s2, 72
	beqz	$s2, .LBB9_24
# %bb.20:                               # %.lr.ph
                                        #   in Loop: Header=BB9_19 Depth=3
	ld.w	$a4, $s2, 0
	bne	$a4, $a1, .LBB9_19
.LBB9_21:                               # %.critedge
                                        #   in Loop: Header=BB9_9 Depth=2
	ld.bu	$a6, $s0, 44
	ld.bu	$a4, $s2, 44
	move	$t0, $a1
	bne	$a6, $a4, .LBB9_8
# %bb.22:                               #   in Loop: Header=BB9_9 Depth=2
	move	$a0, $s0
	move	$a1, $s2
	move	$a3, $s5
	move	$a4, $fp
	pcaddu18i	$ra, %call36(MergeComponents)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(MergeToLeft)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.w	$t0, $s2, 0
	b	.LBB9_8
.LBB9_23:                               # %._crit_edge91
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB9_24:                               # %.preheader._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	MergeToLeft, .Lfunc_end9-MergeToLeft
                                        # -- End function
	.globl	PairComponents                  # -- Begin function PairComponents
	.p2align	5
	.type	PairComponents,@function
PairComponents:                         # @PairComponents
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s1, $a0, 0
	beqz	$s1, .LBB10_47
# %bb.1:                                # %.lr.ph193
	move	$s2, $a0
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(MAX_CHAR_SIZE)
	ld.d	$s3, $a0, %got_pc_lo12(MAX_CHAR_SIZE)
	move	$s4, $zero
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %.critedge137
                                        #   in Loop: Header=BB10_3 Depth=1
	addi.d	$a0, $s1, 72
	move	$s4, $s1
	ld.d	$s1, $a0, 0
	beqz	$s1, .LBB10_47
.LBB10_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_12 Depth 3
                                        #         Child Loop BB10_28 Depth 4
                                        #     Child Loop BB10_42 Depth 2
	ld.d	$a0, $s1, 56
	bnez	$a0, .LBB10_2
# %bb.4:                                # %.preheader139
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.w	$a4, $s3, 0
	blez	$a4, .LBB10_41
# %bb.5:                                # %.lr.ph176
                                        #   in Loop: Header=BB10_3 Depth=1
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $zero
	move	$a2, $zero
	move	$a1, $zero
	move	$a0, $zero
	ori	$a3, $zero, 1
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_6:                               #   in Loop: Header=BB10_7 Depth=2
	move	$a2, $zero
	move	$a1, $zero
	addi.w	$a3, $s6, 1
	bge	$s6, $a4, .LBB10_39
.LBB10_7:                               #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_12 Depth 3
                                        #         Child Loop BB10_28 Depth 4
	or	$a5, $a1, $a2
	bnez	$a5, .LBB10_39
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=2
	move	$s6, $a3
	ld.w	$a5, $s1, 20
	ld.w	$a3, $s1, 12
	blt	$a3, $a5, .LBB10_6
# %bb.9:                                # %.lr.ph156
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$a2, $zero
	move	$a1, $zero
	sub.d	$s7, $zero, $s6
	b	.LBB10_12
	.p2align	4, , 16
.LBB10_10:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a1, $zero
	move	$a2, $zero
.LBB10_11:                              #   in Loop: Header=BB10_12 Depth=3
	addi.w	$a5, $s8, 1
	bge	$s8, $a3, .LBB10_38
.LBB10_12:                              #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_28 Depth 4
	or	$a4, $a1, $a2
	bnez	$a4, .LBB10_38
# %bb.13:                               #   in Loop: Header=BB10_12 Depth=3
	move	$s8, $a5
	beqz	$s5, .LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_12 Depth=3
	ld.w	$a1, $s1, 20
	beq	$s8, $a1, .LBB10_37
.LBB10_15:                              #   in Loop: Header=BB10_12 Depth=3
	ld.bu	$a2, $s1, 44
	sltui	$a1, $a2, 1
	ld.w	$a4, $s1, 8
	masknez	$a5, $s6, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a5
	add.w	$a1, $a1, $a4
	bltz	$a1, .LBB10_10
# %bb.16:                               #   in Loop: Header=BB10_12 Depth=3
	ld.w	$a4, $s0, 32
	bge	$a1, $a4, .LBB10_10
# %bb.17:                               #   in Loop: Header=BB10_12 Depth=3
	ld.w	$a6, $s0, 36
	mul.d	$a1, $a1, $a6
	add.w	$a5, $a1, $s8
	move	$a1, $zero
	bltz	$a5, .LBB10_24
# %bb.18:                               #   in Loop: Header=BB10_12 Depth=3
	mul.w	$a4, $a4, $a6
	blt	$a4, $a5, .LBB10_24
# %bb.19:                               #   in Loop: Header=BB10_12 Depth=3
	ld.d	$a1, $s0, 88
	slli.d	$fp, $a5, 2
	ldx.w	$a3, $a1, $fp
	beqz	$a3, .LBB10_25
# %bb.20:                               #   in Loop: Header=BB10_12 Depth=3
	ld.w	$a4, $s1, 0
	move	$a1, $zero
	beq	$a3, $a4, .LBB10_26
# %bb.21:                               #   in Loop: Header=BB10_12 Depth=3
	beq	$a3, $a0, .LBB10_26
# %bb.22:                               #   in Loop: Header=BB10_12 Depth=3
	pcalau12i	$a0, %got_pc_hi20(MIN_CHAR_SIZE)
	ld.d	$a0, $a0, %got_pc_lo12(MIN_CHAR_SIZE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bge	$s6, $a0, .LBB10_27
# %bb.23:                               #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $zero
	b	.LBB10_36
.LBB10_24:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $a1
	b	.LBB10_11
.LBB10_25:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB10_36
.LBB10_26:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $a1
	b	.LBB10_36
.LBB10_27:                              # %.preheader
                                        #   in Loop: Header=BB10_12 Depth=3
	move	$s4, $s2
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB10_48
	.p2align	4, , 16
.LBB10_28:                              # %.lr.ph
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        #       Parent Loop BB10_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s2, 0
	beq	$a0, $a3, .LBB10_30
# %bb.29:                               #   in Loop: Header=BB10_28 Depth=4
	ld.d	$s2, $s2, 72
	bnez	$s2, .LBB10_28
	b	.LBB10_48
.LBB10_30:                              # %.critedge5
                                        #   in Loop: Header=BB10_12 Depth=3
	ld.bu	$a0, $s2, 44
	bne	$a2, $a0, .LBB10_32
# %bb.31:                               #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $zero
	b	.LBB10_35
.LBB10_32:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Overlap)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	beqz	$a0, .LBB10_34
# %bb.33:                               #   in Loop: Header=BB10_12 Depth=3
	st.d	$s2, $s1, 56
	st.d	$s1, $s2, 56
	ori	$a2, $zero, 1
	b	.LBB10_35
.LBB10_34:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $zero
	ori	$s5, $zero, 1
.LBB10_35:                              #   in Loop: Header=BB10_12 Depth=3
	move	$s2, $s4
.LBB10_36:                              #   in Loop: Header=BB10_12 Depth=3
	ld.d	$a0, $s0, 88
	ldx.w	$a0, $a0, $fp
	ld.w	$a3, $s1, 12
	b	.LBB10_11
.LBB10_37:                              #   in Loop: Header=BB10_7 Depth=2
	move	$a2, $zero
	ori	$s5, $zero, 1
	ori	$a1, $zero, 1
.LBB10_38:                              # %.critedge2.loopexit
                                        #   in Loop: Header=BB10_7 Depth=2
	ld.w	$a4, $s3, 0
	addi.w	$a3, $s6, 1
	blt	$s6, $a4, .LBB10_7
.LBB10_39:                              # %.critedge
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	bnez	$a1, .LBB10_41
# %bb.40:                               # %.critedge
                                        #   in Loop: Header=BB10_3 Depth=1
	bnez	$a2, .LBB10_2
.LBB10_41:                              # %.critedge.thread
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $s1, 48
	beqz	$a0, .LBB10_43
	.p2align	4, , 16
.LBB10_42:                              # %.lr.ph185
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 4
	ld.w	$a2, $s0, 36
	ld.w	$a3, $a0, 0
	ld.d	$a4, $s0, 88
	mul.d	$a1, $a2, $a1
	ld.d	$fp, $a0, 8
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a4, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB10_42
.LBB10_43:                              # %._crit_edge186
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $s1, 72
	beqz	$s4, .LBB10_45
# %bb.44:                               #   in Loop: Header=BB10_3 Depth=1
	st.d	$a0, $s4, 72
	b	.LBB10_46
.LBB10_45:                              #   in Loop: Header=BB10_3 Depth=1
	st.d	$a0, $s2, 0
.LBB10_46:                              #   in Loop: Header=BB10_3 Depth=1
	sltui	$fp, $s4, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 72
	masknez	$a0, $a0, $fp
	maskeqz	$a1, $s2, $fp
	or	$a0, $a1, $a0
	ld.d	$s1, $a0, 0
	bnez	$s1, .LBB10_3
.LBB10_47:                              # %._crit_edge194
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB10_48:                              # %.preheader._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	PairComponents, .Lfunc_end10-PairComponents
                                        # -- End function
	.globl	Overlap                         # -- Begin function Overlap
	.p2align	5
	.type	Overlap,@function
Overlap:                                # @Overlap
# %bb.0:
	ld.w	$a4, $a0, 12
	ld.w	$a6, $a1, 20
	ld.w	$a5, $a0, 20
	ld.w	$a7, $a1, 12
	sub.w	$a3, $a4, $a6
	sub.w	$a2, $a6, $a5
	sub.w	$a1, $a7, $a4
	sub.w	$a0, $a7, $a5
	sub.w	$a5, $a4, $a5
	sub.w	$a4, $a7, $a6
	bltz	$a3, .LBB11_5
# %bb.1:
	bltz	$a2, .LBB11_5
# %bb.2:
	bltz	$a1, .LBB11_5
# %bb.3:
	blez	$a0, .LBB11_5
# %bb.4:
	bstrpick.d	$a0, $a3, 31, 0
	b	.LBB11_9
.LBB11_5:
	slt	$a6, $zero, $a3
	slti	$a7, $a2, 1
	and	$a6, $a6, $a7
	beqz	$a6, .LBB11_10
# %bb.6:
	bgtz	$a1, .LBB11_10
# %bb.7:
	bltz	$a0, .LBB11_10
# %bb.8:
	bstrpick.d	$a0, $a0, 31, 0
.LBB11_9:
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa0, $fa1
	movgr2fr.w	$fa2, $a4
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa0, $fa0, $fa2
	vldi	$vr2, -1184
	fcmp.cle.s	$fcc0, $fa2, $fa1
	fcmp.cle.s	$fcc1, $fa2, $fa0
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	and	$a0, $a0, $a1
	ret
.LBB11_10:
	addi.w	$a7, $zero, -1
	slt	$a7, $a7, $a1
	and	$a6, $a6, $a7
	beqz	$a6, .LBB11_13
# %bb.11:
	blez	$a0, .LBB11_13
# %bb.12:
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	b	.LBB11_18
.LBB11_13:
	blez	$a3, .LBB11_19
# %bb.14:
	bltz	$a2, .LBB11_19
# %bb.15:
	bgtz	$a1, .LBB11_19
# %bb.16:
	blez	$a0, .LBB11_19
# %bb.17:
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
.LBB11_18:
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1184
	fcmp.cle.s	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ret
.LBB11_19:
	bgez	$a3, .LBB11_23
# %bb.20:
	blez	$a2, .LBB11_23
# %bb.21:
	blez	$a1, .LBB11_23
# %bb.22:
	bgtz	$a0, .LBB11_27
.LBB11_23:
	blez	$a3, .LBB11_28
# %bb.24:
	bgez	$a2, .LBB11_28
# %bb.25:
	bgez	$a1, .LBB11_28
# %bb.26:
	bgez	$a0, .LBB11_28
.LBB11_27:
	move	$a0, $zero
	ret
.LBB11_28:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	Overlap, .Lfunc_end11-Overlap
                                        # -- End function
	.globl	ComputeBoundingBoxes            # -- Begin function ComputeBoundingBoxes
	.p2align	5
	.type	ComputeBoundingBoxes,@function
ComputeBoundingBoxes:                   # @ComputeBoundingBoxes
# %bb.0:
	beqz	$a0, .LBB12_14
# %bb.1:                                # %.preheader81
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ori	$a1, $zero, 255
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %.backedge
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB12_10
.LBB12_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
                                        #     Child Loop BB12_9 Depth 2
	ld.bu	$a2, $a0, 44
	bnez	$a2, .LBB12_2
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a3, $a0, 56
	ld.w	$a2, $a0, 20
	ld.w	$a4, $a3, 20
	slt	$a5, $a2, $a4
	ld.w	$t0, $a0, 12
	ld.w	$a6, $a3, 12
	masknez	$a4, $a4, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	slt	$t1, $a6, $t0
	masknez	$t2, $a6, $t1
	ld.w	$a5, $a0, 24
	ld.w	$a7, $a3, 24
	ld.w	$a4, $a0, 16
	ld.w	$a6, $a3, 16
	maskeqz	$a3, $t0, $t1
	or	$a3, $a3, $t2
	blt	$a3, $a2, .LBB12_7
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.w	$t0, $a3, 1
	move	$t1, $a2
	.p2align	4, , 16
.LBB12_6:                               # %.lr.ph
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a0, 16
	ld.w	$t3, $fp, 36
	ld.d	$t4, $fp, 48
	mul.d	$t2, $t3, $t2
	add.w	$t2, $t1, $t2
	stx.b	$a1, $t4, $t2
	ld.d	$t2, $a0, 56
	ld.w	$t2, $t2, 24
	ld.w	$t3, $fp, 36
	ld.d	$t4, $fp, 48
	mul.d	$t2, $t3, $t2
	add.w	$t2, $t1, $t2
	addi.w	$t1, $t1, 1
	stx.b	$a1, $t4, $t2
	bne	$t0, $t1, .LBB12_6
.LBB12_7:                               # %.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	slt	$t0, $a5, $a7
	masknez	$a7, $a7, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $a7
	slt	$a7, $a6, $a4
	masknez	$a6, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $a6
	blt	$a4, $a5, .LBB12_2
# %bb.8:                                # %.lr.ph86.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.w	$a4, $a4, 1
	.p2align	4, , 16
.LBB12_9:                               # %.lr.ph86
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $fp, 36
	ld.d	$a7, $fp, 48
	mul.d	$a6, $a6, $a5
	add.w	$a6, $a6, $a2
	stx.b	$a1, $a7, $a6
	ld.w	$a6, $fp, 36
	ld.d	$a7, $fp, 48
	mul.d	$a6, $a6, $a5
	add.w	$a6, $a6, $a3
	addi.w	$a5, $a5, 1
	stx.b	$a1, $a7, $a6
	bne	$a4, $a5, .LBB12_9
	b	.LBB12_2
.LBB12_10:
	ld.d	$s1, $fp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 9
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 36
	ld.w	$a3, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.w	$a1, $fp, 32
	mul.w	$a0, $a1, $a0
	blez	$a0, .LBB12_13
# %bb.11:                               # %.lr.ph90.preheader
	move	$s2, $zero
	.p2align	4, , 16
.LBB12_12:                              # %.lr.ph90
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.b	$a0, $a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.w	$a1, $fp, 32
	addi.d	$s2, $s2, 1
	mul.w	$a0, $a1, $a0
	blt	$s2, $a0, .LBB12_12
.LBB12_13:                              # %._crit_edge91
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB12_14:
	ret
.Lfunc_end12:
	.size	ComputeBoundingBoxes, .Lfunc_end12-ComputeBoundingBoxes
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"component:\t %d\n"
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"# points:\t %d\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"average row:\t %d\n"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"x max:\t\t %d\n"
	.size	.L.str.4, 13

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"y max:\t\t %d\n"
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"x min:\t\t %d\n"
	.size	.L.str.6, 13

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"y min:\t\t %d\n"
	.size	.L.str.7, 13

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"type:\t\t %s\n"
	.size	.L.str.8, 12

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"falling"
	.size	.L.str.9, 8

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"rising"
	.size	.L.str.10, 7

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Total points: %d\n"
	.size	.L.str.12, 18

	.type	WriteConnectedComponentsToPGM.index,@object # @WriteConnectedComponentsToPGM.index
	.local	WriteConnectedComponentsToPGM.index
	.comm	WriteConnectedComponentsToPGM.index,4,4
	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s.comp%d.pgm"
	.size	.L.str.13, 14

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"P5\n"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%d %d\n"
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"255\n"
	.size	.L.str.16, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Unexpected error in PairComponents(). "
	.size	.L.str.18, 39

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Unexpected case or mathematical absurdity reached in Overlap(). "
	.size	.L.str.20, 65

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%s.out.pgm"
	.size	.L.str.22, 11

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"------------------------\n"
	.size	.Lstr, 26

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"------------------------"
	.size	.Lstr.1, 25

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Unexpected error in MergeToLeft(), aborting."
	.size	.Lstr.2, 45

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Exiting."
	.size	.Lstr.3, 9

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Twink!"
	.size	.Lstr.4, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
