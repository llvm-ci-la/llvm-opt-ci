	.file	"KS-2.c"
	.text
	.globl	CAiBj                           # -- Begin function CAiBj
	.p2align	5
	.type	CAiBj,@function
CAiBj:                                  # @CAiBj
# %bb.0:
	ld.d	$a0, $a0, 8
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(modules)
	ld.d	$a2, $a2, %got_pc_lo12(modules)
	ldx.d	$a0, $a2, $a0
	beqz	$a0, .LBB0_6
# %bb.1:                                # %.lr.ph23.preheader
	ld.d	$a1, $a1, 8
	movgr2fr.w	$fa0, $zero
	pcalau12i	$a2, %got_pc_hi20(cost)
	ld.d	$a2, $a2, %got_pc_lo12(cost)
	pcalau12i	$a3, %got_pc_hi20(nets)
	ld.d	$a3, $a3, %got_pc_lo12(nets)
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_7
.LBB0_3:                                # %.lr.ph23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	ld.d	$a5, $a0, 8
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a3, $a4
	beqz	$a4, .LBB0_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a5, $a5, 2
	fldx.s	$fa1, $a2, $a5
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 8
	ld.d	$a4, $a4, 0
	xor	$a5, $a5, $a1
	sltui	$a5, $a5, 1
	fadd.s	$fa2, $fa1, $fa0
	movgr2cf	$fcc0, $a5
	fsel	$fa0, $fa0, $fa2, $fcc0
	bnez	$a4, .LBB0_5
	b	.LBB0_2
.LBB0_6:
	movgr2fr.w	$fa0, $zero
.LBB0_7:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	CAiBj, .Lfunc_end0-CAiBj
                                        # -- End function
	.globl	SwapNode                        # -- Begin function SwapNode
	.p2align	5
	.type	SwapNode,@function
SwapNode:                               # @SwapNode
# %bb.0:
	beqz	$a0, .LBB1_4
# %bb.1:
	ld.d	$a4, $a2, 8
	bne	$a4, $a1, .LBB1_3
# %bb.2:
	st.d	$a0, $a2, 8
.LBB1_3:
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	b	.LBB1_7
.LBB1_4:
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a2, 8
	beq	$a0, $a4, .LBB1_6
# %bb.5:
	ld.d	$a0, $a1, 0
	st.d	$a0, $a2, 0
	b	.LBB1_7
.LBB1_6:
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 0
.LBB1_7:
	ld.d	$a0, $a3, 8
	sltui	$a2, $a0, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	st.d	$a1, $a0, 0
	st.d	$a1, $a3, 8
	st.d	$zero, $a1, 0
	ret
.Lfunc_end1:
	.size	SwapNode, .Lfunc_end1-SwapNode
                                        # -- End function
	.globl	UpdateDs                        # -- Begin function UpdateDs
	.p2align	5
	.type	UpdateDs,@function
UpdateDs:                               # @UpdateDs
# %bb.0:
	ld.d	$a0, $a0, 8
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(modules)
	ld.d	$a2, $a2, %got_pc_lo12(modules)
	ldx.d	$a0, $a2, $a0
	beqz	$a0, .LBB2_8
# %bb.1:
	pcalau12i	$a2, %got_pc_hi20(nets)
	ld.d	$a2, $a2, %got_pc_lo12(nets)
	pcalau12i	$a3, %got_pc_hi20(cost)
	ld.d	$a3, $a3, %got_pc_lo12(cost)
	pcalau12i	$a4, %got_pc_hi20(moduleToGroup)
	ld.d	$a4, $a4, %got_pc_lo12(moduleToGroup)
	ori	$a5, $zero, 1
	pcalau12i	$a6, %got_pc_hi20(D)
	ld.d	$a6, $a6, %got_pc_lo12(D)
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB2_8
.LBB2_3:                                # %.lr.ph23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	ld.d	$t0, $a0, 8
	slli.d	$a7, $t0, 3
	ldx.d	$a7, $a2, $a7
	beqz	$a7, .LBB2_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	alsl.d	$t0, $t0, $a3, 2
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=2
	ld.d	$a7, $a7, 0
	beqz	$a7, .LBB2_2
.LBB2_6:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 8
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $a4, $t1
	bltu	$a5, $t2, .LBB2_5
# %bb.7:                                # %.sink.split
                                        #   in Loop: Header=BB2_6 Depth=2
	fld.s	$fa0, $t0, 0
	xor	$t2, $t2, $a1
	fldx.s	$fa1, $a6, $t1
	sltui	$t2, $t2, 1
	fneg.s	$fa2, $fa0
	movgr2cf	$fcc0, $t2
	fsel	$fa0, $fa2, $fa0, $fcc0
	fadd.s	$fa0, $fa1, $fa0
	fstx.s	$fa0, $a6, $t1
	b	.LBB2_5
.LBB2_8:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	UpdateDs, .Lfunc_end2-UpdateDs
                                        # -- End function
	.globl	FindMaxGpAndSwap                # -- Begin function FindMaxGpAndSwap
	.p2align	5
	.type	FindMaxGpAndSwap,@function
FindMaxGpAndSwap:                       # @FindMaxGpAndSwap
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(groupA)
	ld.d	$a3, $a0, %got_pc_lo12(groupA)
	ld.d	$a4, $a3, 0
	lu12i.w	$a0, -216695
	ori	$a0, $a0, 1663
	lu32i.d	$a0, 0
	movgr2fr.w	$fa0, $a0
	beqz	$a4, .LBB3_18
# %bb.1:                                # %.preheader.lr.ph
	pcalau12i	$a1, %got_pc_hi20(groupB)
	ld.d	$a1, $a1, %got_pc_lo12(groupB)
	ld.d	$a5, $a1, 0
	beqz	$a5, .LBB3_18
# %bb.2:                                # %.preheader.preheader
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %got_pc_hi20(D)
	ld.d	$a6, $a0, %got_pc_lo12(D)
	pcalau12i	$a0, %got_pc_hi20(modules)
	ld.d	$a7, $a0, %got_pc_lo12(modules)
	move	$a2, $zero
	move	$a0, $zero
	move	$t0, $zero
	move	$a1, $zero
	move	$t1, $zero
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -1152
	move	$t3, $a4
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %..loopexit_crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t3, $t1, 0
	beqz	$t3, .LBB3_21
.LBB3_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_9 Depth 3
                                        #         Child Loop BB3_11 Depth 4
                                        #     Child Loop BB3_16 Depth 2
	move	$t2, $t1
	move	$t1, $t3
	ld.d	$t3, $t3, 8
	slli.d	$t4, $t3, 2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a7, $t3
	fldx.s	$fa3, $a6, $t4
	move	$t4, $zero
	beqz	$t3, .LBB3_14
# %bb.5:                                # %.lr.ph23.i.preheader.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t6, $a5
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=2
	ld.d	$t6, $t4, 0
	beqz	$t6, .LBB3_3
.LBB3_7:                                # %.lr.ph23.i.preheader
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_9 Depth 3
                                        #         Child Loop BB3_11 Depth 4
	move	$t5, $t4
	move	$t4, $t6
	ld.d	$t6, $t6, 8
	slli.d	$t7, $t6, 2
	fldx.s	$fa4, $a6, $t7
	move	$t7, $t3
	fmov.s	$fa5, $fa1
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_8:                                # %.loopexit.i
                                        #   in Loop: Header=BB3_9 Depth=3
	ld.d	$t7, $t7, 0
	beqz	$t7, .LBB3_12
.LBB3_9:                                # %.lr.ph23.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_11 Depth 4
	ld.d	$fp, $t7, 8
	slli.d	$t8, $fp, 3
	pcalau12i	$s0, %got_pc_hi20(nets)
	ld.d	$s0, $s0, %got_pc_lo12(nets)
	ldx.d	$t8, $s0, $t8
	beqz	$t8, .LBB3_8
# %bb.10:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB3_9 Depth=3
	slli.d	$fp, $fp, 2
	pcalau12i	$s0, %got_pc_hi20(cost)
	ld.d	$s0, $s0, %got_pc_lo12(cost)
	fldx.s	$fa6, $s0, $fp
	.p2align	4, , 16
.LBB3_11:                               # %.lr.ph.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$fp, $t8, 8
	ld.d	$t8, $t8, 0
	xor	$fp, $fp, $t6
	sltui	$fp, $fp, 1
	fadd.s	$fa7, $fa6, $fa5
	movgr2cf	$fcc0, $fp
	fsel	$fa5, $fa5, $fa7, $fcc0
	bnez	$t8, .LBB3_11
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_12:                               # %CAiBj.exit.loopexit
                                        #   in Loop: Header=BB3_7 Depth=2
	fadd.s	$fa4, $fa3, $fa4
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB3_6
# %bb.13:                               #   in Loop: Header=BB3_7 Depth=2
	move	$a1, $t1
	move	$t0, $t2
	move	$a0, $t4
	move	$a2, $t5
	fmov.s	$fa0, $fa4
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_14:                               # %CAiBj.exit.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t5, $a5
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_16 Depth=2
	ld.d	$t5, $t3, 0
	move	$t4, $t3
	beqz	$t5, .LBB3_3
.LBB3_16:                               # %CAiBj.exit.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t3, $t5
	ld.d	$t5, $t5, 8
	slli.d	$t5, $t5, 2
	fldx.s	$fa4, $a6, $t5
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB3_15
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=2
	move	$a1, $t1
	move	$t0, $t2
	move	$a0, $t3
	move	$a2, $t4
	fmov.s	$fa0, $fa4
	b	.LBB3_15
.LBB3_18:
	move	$a2, $zero
	move	$a0, $zero
	move	$a1, $zero
.LBB3_19:                               # %._crit_edge.thread
	ld.d	$a5, $a3, 8
	beq	$a4, $a5, .LBB3_25
# %bb.20:
	ld.d	$a4, $a1, 0
	st.d	$a4, $a3, 0
	b	.LBB3_26
.LBB3_21:                               # %._crit_edge
	beqz	$t0, .LBB3_19
# %bb.22:
	ld.d	$a4, $a3, 8
	bne	$a4, $a1, .LBB3_24
# %bb.23:
	st.d	$t0, $a3, 8
.LBB3_24:
	ld.d	$a3, $a1, 0
	st.d	$a3, $t0, 0
	b	.LBB3_26
.LBB3_25:
	vrepli.b	$vr1, 0
	vst	$vr1, $a3, 0
.LBB3_26:                               # %SwapNode.exit
	pcalau12i	$a3, %got_pc_hi20(swapToB)
	ld.d	$a3, $a3, %got_pc_lo12(swapToB)
	ld.d	$a4, $a3, 8
	sltui	$a5, $a4, 1
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a3, $a5
	or	$a4, $a5, $a4
	st.d	$a1, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$zero, $a1, 0
	beqz	$a2, .LBB3_29
# %bb.27:
	pcalau12i	$a3, %got_pc_hi20(groupB)
	ld.d	$a3, $a3, %got_pc_lo12(groupB)
	ld.d	$a4, $a3, 8
	bne	$a4, $a0, .LBB3_30
# %bb.28:
	st.d	$a2, $a3, 8
	b	.LBB3_30
.LBB3_29:
	pcalau12i	$a2, %got_pc_hi20(groupB)
	ld.d	$a2, $a2, %got_pc_lo12(groupB)
	ld.d	$a3, $a2, 0
	ld.d	$a4, $a2, 8
	beq	$a3, $a4, .LBB3_48
.LBB3_30:
	ld.d	$a3, $a0, 0
	st.d	$a3, $a2, 0
.LBB3_31:                               # %SwapNode.exit45
	pcalau12i	$a2, %got_pc_hi20(swapToA)
	ld.d	$a2, $a2, %got_pc_lo12(swapToA)
	ld.d	$a3, $a2, 8
	sltui	$a4, $a3, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	ld.d	$a4, $a1, 8
	st.d	$a0, $a3, 0
	st.d	$a0, $a2, 8
	st.d	$zero, $a0, 0
	slli.d	$a2, $a4, 2
	pcalau12i	$a1, %got_pc_hi20(moduleToGroup)
	ld.d	$a1, $a1, %got_pc_lo12(moduleToGroup)
	ld.d	$a0, $a0, 8
	ori	$a3, $zero, 3
	stx.w	$a3, $a1, $a2
	slli.d	$a2, $a0, 2
	ori	$a3, $zero, 2
	stx.w	$a3, $a1, $a2
	slli.d	$a3, $a4, 3
	pcalau12i	$a2, %got_pc_hi20(modules)
	ld.d	$a2, $a2, %got_pc_lo12(modules)
	ldx.d	$a3, $a2, $a3
	beqz	$a3, .LBB3_39
# %bb.32:
	pcalau12i	$a4, %got_pc_hi20(nets)
	ld.d	$a4, $a4, %got_pc_lo12(nets)
	pcalau12i	$a5, %got_pc_hi20(cost)
	ld.d	$a5, $a5, %got_pc_lo12(cost)
	ori	$a6, $zero, 1
	pcalau12i	$a7, %got_pc_hi20(D)
	ld.d	$a7, $a7, %got_pc_lo12(D)
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_33:                               # %.loopexit.i50
                                        #   in Loop: Header=BB3_34 Depth=1
	ld.d	$a3, $a3, 0
	beqz	$a3, .LBB3_39
.LBB3_34:                               # %.lr.ph23.i46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_37 Depth 2
	ld.d	$t1, $a3, 8
	slli.d	$t0, $t1, 3
	ldx.d	$t0, $a4, $t0
	beqz	$t0, .LBB3_33
# %bb.35:                               # %.lr.ph.i47
                                        #   in Loop: Header=BB3_34 Depth=1
	alsl.d	$t1, $t1, $a5, 2
	b	.LBB3_37
	.p2align	4, , 16
.LBB3_36:                               #   in Loop: Header=BB3_37 Depth=2
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB3_33
.LBB3_37:                               #   Parent Loop BB3_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t0, 8
	slli.d	$t2, $t2, 2
	ldx.w	$t3, $a1, $t2
	bltu	$a6, $t3, .LBB3_36
# %bb.38:                               # %.sink.split.i
                                        #   in Loop: Header=BB3_37 Depth=2
	fld.s	$fa1, $t1, 0
	fldx.s	$fa2, $a7, $t2
	sltui	$t3, $t3, 1
	fneg.s	$fa3, $fa1
	movgr2cf	$fcc0, $t3
	fsel	$fa1, $fa3, $fa1, $fcc0
	fadd.s	$fa1, $fa2, $fa1
	fstx.s	$fa1, $a7, $t2
	b	.LBB3_36
.LBB3_39:                               # %UpdateDs.exit
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	beqz	$a0, .LBB3_47
# %bb.40:
	pcalau12i	$a2, %got_pc_hi20(nets)
	ld.d	$a2, $a2, %got_pc_lo12(nets)
	pcalau12i	$a3, %got_pc_hi20(cost)
	ld.d	$a3, $a3, %got_pc_lo12(cost)
	ori	$a4, $zero, 1
	pcalau12i	$a5, %got_pc_hi20(D)
	ld.d	$a5, $a5, %got_pc_lo12(D)
	b	.LBB3_42
	.p2align	4, , 16
.LBB3_41:                               # %.loopexit.i62
                                        #   in Loop: Header=BB3_42 Depth=1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_47
.LBB3_42:                               # %.lr.ph23.i54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_45 Depth 2
	ld.d	$a7, $a0, 8
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $a2, $a6
	beqz	$a6, .LBB3_41
# %bb.43:                               # %.lr.ph.i58
                                        #   in Loop: Header=BB3_42 Depth=1
	alsl.d	$a7, $a7, $a3, 2
	b	.LBB3_45
	.p2align	4, , 16
.LBB3_44:                               #   in Loop: Header=BB3_45 Depth=2
	ld.d	$a6, $a6, 0
	beqz	$a6, .LBB3_41
.LBB3_45:                               #   Parent Loop BB3_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a6, 8
	slli.d	$t0, $t0, 2
	ldx.w	$t1, $a1, $t0
	bltu	$a4, $t1, .LBB3_44
# %bb.46:                               # %.sink.split.i65
                                        #   in Loop: Header=BB3_45 Depth=2
	fld.s	$fa1, $a7, 0
	addi.d	$t1, $t1, -1
	fldx.s	$fa2, $a5, $t0
	sltui	$t1, $t1, 1
	fneg.s	$fa3, $fa1
	movgr2cf	$fcc0, $t1
	fsel	$fa1, $fa3, $fa1, $fcc0
	fadd.s	$fa1, $fa2, $fa1
	fstx.s	$fa1, $a5, $t0
	b	.LBB3_44
.LBB3_47:                               # %UpdateDs.exit68
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_48:
	vrepli.b	$vr1, 0
	vst	$vr1, $a2, 0
	b	.LBB3_31
.Lfunc_end3:
	.size	FindMaxGpAndSwap, .Lfunc_end3-FindMaxGpAndSwap
                                        # -- End function
	.globl	FindGMax                        # -- Begin function FindGMax
	.p2align	5
	.type	FindGMax,@function
FindGMax:                               # @FindGMax
# %bb.0:
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(numModules)
	ld.d	$a1, $a1, %got_pc_lo12(numModules)
	ld.d	$a2, $a1, 0
	lu12i.w	$a3, -216695
	ori	$a5, $a3, 1663
	ori	$a3, $zero, 2
	lu32i.d	$a5, 0
	bgeu	$a2, $a3, .LBB4_2
# %bb.1:
	movgr2fr.w	$fa0, $a5
	ret
.LBB4_2:                                # %.lr.ph.preheader
	pcalau12i	$a3, %got_pc_hi20(GP)
	ld.d	$a3, $a3, %got_pc_lo12(GP)
	move	$a4, $zero
	movgr2fr.w	$fa0, $a5
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a4, $a4, 1
	srli.d	$a5, $a2, 1
	addi.d	$a3, $a3, 4
	bgeu	$a4, $a5, .LBB4_6
.LBB4_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a3, 0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_3
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	st.d	$a4, $a0, 0
	ld.d	$a2, $a1, 0
	fmov.s	$fa0, $fa1
	b	.LBB4_3
.LBB4_6:                                # %._crit_edge
	ret
.Lfunc_end4:
	.size	FindGMax, .Lfunc_end4-FindGMax
                                        # -- End function
	.globl	SwapSubsetAndReset              # -- Begin function SwapSubsetAndReset
	.p2align	5
	.type	SwapSubsetAndReset,@function
SwapSubsetAndReset:                     # @SwapSubsetAndReset
# %bb.0:
	addi.d	$a2, $a0, 2
	pcalau12i	$a0, %got_pc_hi20(swapToB)
	ld.d	$a4, $a0, %got_pc_lo12(swapToB)
	pcalau12i	$a0, %got_pc_hi20(swapToA)
	ld.d	$a3, $a0, %got_pc_lo12(swapToA)
	move	$a0, $zero
	move	$a5, $zero
	.p2align	4, , 16
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	move	$a1, $a5
	move	$a6, $a0
	ld.d	$a5, $a4, 0
	ld.d	$a0, $a3, 0
	addi.d	$a2, $a2, -1
	move	$a3, $a0
	move	$a4, $a5
	bnez	$a2, .LBB5_1
# %bb.2:
	beqz	$a0, .LBB5_4
# %bb.3:
	st.d	$a5, $a6, 0
	pcalau12i	$a2, %got_pc_hi20(swapToA)
	ld.d	$a2, $a2, %got_pc_lo12(swapToA)
	ld.d	$a3, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(groupA)
	ld.d	$a4, $a4, %got_pc_lo12(groupA)
	st.d	$a3, $a4, 0
	pcalau12i	$a3, %got_pc_hi20(swapToB)
	ld.d	$a3, $a3, %got_pc_lo12(swapToB)
	ld.d	$a5, $a3, 8
	ld.d	$a3, $a3, 0
	st.d	$a5, $a4, 8
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(groupB)
	ld.d	$a0, $a0, %got_pc_lo12(groupB)
	ld.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	st.d	$a1, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(groupA)
	ld.d	$a0, $a0, %got_pc_lo12(groupA)
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB5_5
	b	.LBB5_7
.LBB5_4:
	pcalau12i	$a0, %got_pc_hi20(swapToA)
	ld.d	$a0, $a0, %got_pc_lo12(swapToA)
	vld	$vr0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(groupA)
	ld.d	$a0, $a0, %got_pc_lo12(groupA)
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(swapToB)
	ld.d	$a0, $a0, %got_pc_lo12(swapToB)
	vld	$vr0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(groupB)
	ld.d	$a0, $a0, %got_pc_lo12(groupB)
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(groupA)
	ld.d	$a0, $a0, %got_pc_lo12(groupA)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB5_7
.LBB5_5:
	pcalau12i	$a1, %got_pc_hi20(moduleToGroup)
	ld.d	$a1, $a1, %got_pc_lo12(moduleToGroup)
	.p2align	4, , 16
.LBB5_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a2, 2
	stx.w	$zero, $a1, $a2
	bnez	$a0, .LBB5_6
.LBB5_7:                                # %.preheader
	pcalau12i	$a0, %got_pc_hi20(groupB)
	ld.d	$a0, $a0, %got_pc_lo12(groupB)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB5_10
# %bb.8:
	pcalau12i	$a1, %got_pc_hi20(moduleToGroup)
	ld.d	$a1, $a1, %got_pc_lo12(moduleToGroup)
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB5_9:                                # %.lr.ph30
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 8
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a3, 2
	stx.w	$a2, $a1, $a3
	bnez	$a0, .LBB5_9
.LBB5_10:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(swapToA)
	ld.d	$a0, $a0, %got_pc_lo12(swapToA)
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(swapToB)
	ld.d	$a0, $a0, %got_pc_lo12(swapToB)
	vst	$vr0, $a0, 0
	ret
.Lfunc_end5:
	.size	SwapSubsetAndReset, .Lfunc_end5-SwapSubsetAndReset
                                        # -- End function
	.globl	PrintResults                    # -- Begin function PrintResults
	.p2align	5
	.type	PrintResults,@function
PrintResults:                           # @PrintResults
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(maxStat)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $s2, %pc_lo12(maxStat)
	pcalau12i	$a0, %pc_hi20(netStats)
	addi.d	$s4, $a0, %pc_lo12(netStats)
	lu12i.w	$a0, 1
	ori	$a2, $a0, 2048
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	beqz	$fp, .LBB6_18
# %bb.1:
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(groupA)
	ld.d	$fp, $a0, %got_pc_lo12(groupA)
	ld.d	$s0, $fp, 0
	beqz	$s0, .LBB6_4
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB6_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.d	$a0, $s3, 0
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB6_3
.LBB6_4:                                # %._crit_edge
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(groupB)
	ld.d	$a0, $a0, %got_pc_lo12(groupB)
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB6_7
# %bb.5:                                # %.lr.ph95.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB6_6:                                # %.lr.ph95
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.d	$a0, $s3, 0
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB6_6
.LBB6_7:                                # %.thread
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s6, $fp, 0
	beqz	$s6, .LBB6_31
# %bb.8:                                # %.lr.ph115.split.preheader
	pcalau12i	$a0, %got_pc_hi20(modules)
	ld.d	$a0, $a0, %got_pc_lo12(modules)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nets)
	ld.d	$s8, $a0, %got_pc_lo12(nets)
	addi.d	$s4, $s4, -16
	pcalau12i	$a0, %got_pc_hi20(moduleToGroup)
	ld.d	$s0, $a0, %got_pc_lo12(moduleToGroup)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s2, $a0, %pc_lo12(.L.str.5)
	move	$s1, $zero
	b	.LBB6_10
	.p2align	4, , 16
.LBB6_9:                                # %.loopexit86
                                        #   in Loop: Header=BB6_10 Depth=1
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB6_32
.LBB6_10:                               # %.lr.ph115.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
                                        #       Child Loop BB6_13 Depth 3
                                        #       Child Loop BB6_16 Depth 3
	ld.d	$a0, $s6, 8
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s5, $a1, $a0
	bnez	$s5, .LBB6_12
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_11:                               # %.loopexit85
                                        #   in Loop: Header=BB6_12 Depth=2
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB6_9
.LBB6_12:                               # %.lr.ph107
                                        #   Parent Loop BB6_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_13 Depth 3
                                        #       Child Loop BB6_16 Depth 3
	ld.d	$a0, $s5, 8
	alsl.d	$a0, $a0, $s8, 3
	move	$fp, $s4
	move	$a1, $a0
	.p2align	4, , 16
.LBB6_13:                               #   Parent Loop BB6_10 Depth=1
                                        #     Parent Loop BB6_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 0
	addi.d	$fp, $fp, 24
	bnez	$a1, .LBB6_13
# %bb.14:                               # %.preheader
                                        #   in Loop: Header=BB6_12 Depth=2
	ld.d	$s7, $a0, 0
	bnez	$s7, .LBB6_16
	b	.LBB6_11
	.p2align	4, , 16
.LBB6_15:                               #   in Loop: Header=BB6_16 Depth=3
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB6_11
.LBB6_16:                               #   Parent Loop BB6_10 Depth=1
                                        #     Parent Loop BB6_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s6, 8
	ld.d	$a3, $s7, 8
	slli.d	$a0, $a1, 2
	ldx.w	$a0, $s0, $a0
	slli.d	$a2, $a3, 2
	ldx.w	$a2, $s0, $a2
	beq	$a0, $a2, .LBB6_15
# %bb.17:                               #   in Loop: Header=BB6_16 Depth=3
	ld.d	$a0, $s3, 0
	addi.d	$a2, $a1, 1
	addi.d	$a3, $a3, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 0
	addi.d	$s1, $s1, 1
	b	.LBB6_15
.LBB6_18:
	pcalau12i	$a0, %got_pc_hi20(groupA)
	ld.d	$a0, $a0, %got_pc_lo12(groupA)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB6_31
# %bb.19:                               # %.lr.ph115.split.us.preheader
	pcalau12i	$a1, %got_pc_hi20(modules)
	ld.d	$a1, $a1, %got_pc_lo12(modules)
	pcalau12i	$a2, %got_pc_hi20(moduleToGroup)
	ld.d	$a2, $a2, %got_pc_lo12(moduleToGroup)
	pcalau12i	$a3, %got_pc_hi20(nets)
	ld.d	$a3, $a3, %got_pc_lo12(nets)
	move	$s1, $zero
	addi.d	$a4, $s4, -16
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_20:                               # %.loopexit86.us
                                        #   in Loop: Header=BB6_21 Depth=1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB6_32
.LBB6_21:                               # %.lr.ph115.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_24 Depth 2
                                        #       Child Loop BB6_25 Depth 3
                                        #       Child Loop BB6_29 Depth 3
	ld.d	$a6, $a0, 8
	slli.d	$a5, $a6, 3
	ldx.d	$a5, $a1, $a5
	beqz	$a5, .LBB6_20
# %bb.22:                               # %.lr.ph107.us.preheader
                                        #   in Loop: Header=BB6_21 Depth=1
	alsl.d	$a6, $a6, $a2, 2
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_23:                               # %.loopexit85.us.us
                                        #   in Loop: Header=BB6_24 Depth=2
	ld.d	$a5, $a5, 0
	beqz	$a5, .LBB6_20
.LBB6_24:                               # %.lr.ph107.us
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_25 Depth 3
                                        #       Child Loop BB6_29 Depth 3
	ld.d	$a7, $a5, 8
	alsl.d	$t0, $a7, $a3, 3
	move	$a7, $a4
	move	$t1, $t0
	.p2align	4, , 16
.LBB6_25:                               #   Parent Loop BB6_21 Depth=1
                                        #     Parent Loop BB6_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t1, $t1, 0
	addi.d	$a7, $a7, 24
	bnez	$t1, .LBB6_25
# %bb.26:                               # %.preheader.us.us
                                        #   in Loop: Header=BB6_24 Depth=2
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB6_23
# %bb.27:                               # %.lr.ph101.us.us
                                        #   in Loop: Header=BB6_24 Depth=2
	ld.w	$t1, $a6, 0
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_28:                               #   in Loop: Header=BB6_29 Depth=3
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB6_23
.LBB6_29:                               #   Parent Loop BB6_21 Depth=1
                                        #     Parent Loop BB6_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t2, $t0, 8
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a2, $t2
	beq	$t1, $t2, .LBB6_28
# %bb.30:                               #   in Loop: Header=BB6_29 Depth=3
	ld.d	$t2, $a7, 0
	addi.d	$t2, $t2, 1
	st.d	$t2, $a7, 0
	addi.d	$s1, $s1, 1
	b	.LBB6_28
.LBB6_31:
	move	$s1, $zero
.LBB6_32:                               # %._crit_edge116
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(numNets)
	ld.d	$s6, $a0, %got_pc_lo12(numNets)
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB6_45
# %bb.33:                               # %.lr.ph121.preheader
	pcalau12i	$a1, %got_pc_hi20(nets)
	ld.d	$s7, $a1, %got_pc_lo12(nets)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s8, $a1, -8
	pcalau12i	$a1, %got_pc_hi20(moduleToGroup)
	ld.d	$fp, $a1, %got_pc_lo12(moduleToGroup)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$s2, $a1, %pc_lo12(.L.str.7)
	move	$s0, $zero
	move	$s1, $zero
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	b	.LBB6_36
	.p2align	4, , 16
.LBB6_34:                               #   in Loop: Header=BB6_36 Depth=1
	ld.d	$a1, $s5, 0
	addi.d	$s1, $s1, 1
	addi.d	$a1, $a1, 1
	st.d	$a1, $s5, 0
.LBB6_35:                               # %.loopexit
                                        #   in Loop: Header=BB6_36 Depth=1
	addi.d	$s0, $s0, 1
	bgeu	$s0, $a0, .LBB6_46
.LBB6_36:                               # %.lr.ph121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_37 Depth 2
                                        #     Child Loop BB6_41 Depth 2
	alsl.d	$a1, $s0, $s7, 3
	move	$s5, $s8
	move	$a2, $a5
	move	$a3, $a1
	.p2align	4, , 16
.LBB6_37:                               #   Parent Loop BB6_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$s5, $s5, 24
	bnez	$a3, .LBB6_37
# %bb.38:                               #   in Loop: Header=BB6_36 Depth=1
	ld.d	$a3, $s5, -16
	ld.d	$a4, $s4, %pc_lo12(maxStat)
	addi.d	$a3, $a3, 1
	st.d	$a3, $s5, -16
	bge	$a4, $a2, .LBB6_40
# %bb.39:                               #   in Loop: Header=BB6_36 Depth=1
	st.d	$a2, $s4, %pc_lo12(maxStat)
.LBB6_40:                               #   in Loop: Header=BB6_36 Depth=1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a1, 8
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $fp, $a2
	.p2align	4, , 16
.LBB6_41:                               #   Parent Loop BB6_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB6_35
# %bb.42:                               #   in Loop: Header=BB6_41 Depth=2
	ld.d	$a3, $a1, 8
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $fp, $a3
	beq	$a2, $a3, .LBB6_41
# %bb.43:                               #   in Loop: Header=BB6_36 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_34
# %bb.44:                               #   in Loop: Header=BB6_36 Depth=1
	ld.d	$a0, $s3, 0
	addi.w	$a2, $s0, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	b	.LBB6_34
.LBB6_45:
	move	$s1, $zero
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB6_46:                               # %._crit_edge122
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(maxStat)
	ori	$s0, $zero, 2
	blt	$a0, $s0, .LBB6_49
# %bb.47:                               # %.lr.ph127.preheader
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s1, $a0, 64
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$fp, $a0, %pc_lo12(.L.str.9)
	.p2align	4, , 16
.LBB6_48:                               # %.lr.ph127
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a3, $s1, -16
	ld.d	$a4, $s1, -8
	ld.d	$a5, $s1, 0
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(maxStat)
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 24
	addi.w	$s0, $s0, 1
	blt	$s2, $a0, .LBB6_48
.LBB6_49:                               # %._crit_edge128
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
.Lfunc_end6:
	.size	PrintResults, .Lfunc_end6-PrintResults
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	ori	$s1, $zero, 2
	bne	$a0, $s1, .LBB7_21
# %bb.1:
	ld.d	$a0, $a1, 8
	pcaddu18i	$ra, %call36(ReadNetList)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(NetsToModules)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ComputeNetCosts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(InitLists)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %got_pc_hi20(groupA)
	ld.d	$s0, $a0, %got_pc_lo12(groupA)
	pcalau12i	$a0, %got_pc_hi20(groupB)
	ld.d	$fp, $a0, %got_pc_lo12(groupB)
	ori	$s6, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(numModules)
	ld.d	$s7, $a0, %got_pc_lo12(numModules)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, -216695
	ori	$a0, $a0, 1663
	lu32i.d	$a0, 0
	movgr2fr.w	$fs1, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(swapToB)
	ld.d	$s5, $a0, %got_pc_lo12(swapToB)
	pcalau12i	$a0, %got_pc_hi20(swapToA)
	ld.d	$s2, $a0, %got_pc_lo12(swapToA)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(moduleToGroup)
	ld.d	$s4, $a0, %got_pc_lo12(moduleToGroup)
	pcalau12i	$a0, %got_pc_hi20(GP)
	ld.d	$a0, $a0, %got_pc_lo12(GP)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	fmov.s	$fs3, $fs0
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %SwapSubsetAndReset.exit
                                        #   in Loop: Header=BB7_3 Depth=1
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s2, 0
	vst	$vr0, $s5, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(PrintResults)
	jirl	$ra, $ra, 0
	fmov.s	$fs3, $fs2
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_17 Depth 2
                                        #     Child Loop BB7_19 Depth 2
	ori	$a2, $zero, 2
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ComputeDs)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ComputeDs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	fmov.s	$fs2, $fs1
	bltu	$a0, $s1, .LBB7_9
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$s3, $zero
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_5:                                # %.lr.ph
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(FindMaxGpAndSwap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	fst.s	$fa0, $s1, 0
	addi.d	$s3, $s3, 1
	srli.d	$a1, $a0, 1
	addi.d	$s1, $s1, 4
	bltu	$s3, $a1, .LBB7_5
# %bb.6:                                # %._crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	fmov.s	$fs2, $fs1
	ori	$s1, $zero, 2
	bltu	$a0, $s1, .LBB7_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$a1, $zero
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $a0
	fmov.s	$fs2, $fs1
	.p2align	4, , 16
.LBB7_8:                                # %.lr.ph.i
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc0, $fs2, $fa0
	fsel	$fs2, $fs2, $fa0, $fcc0
	movcf2gr	$a4, $fcc0
	masknez	$a5, $s3, $a4
	maskeqz	$a6, $a1, $a4
	or	$s3, $a6, $a5
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a0, $a4
	or	$a3, $a4, $a3
	addi.d	$a1, $a1, 1
	srli.d	$a4, $a3, 1
	addi.d	$a2, $a2, 4
	bltu	$a1, $a4, .LBB7_8
.LBB7_9:                                # %FindGMax.exit
                                        #   in Loop: Header=BB7_3 Depth=1
	fcmp.ceq.s	$fcc0, $fs3, $fs2
	bceqz	$fcc0, .LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_3 Depth=1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	fcvt.d.s	$fs3, $fs2
	movfr2gr.d	$a2, $fs3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %FindGMax.exit._crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	fcvt.d.s	$fs3, $fs2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
.LBB7_12:                               #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $a0, 0
	movfr2gr.d	$a2, $fs3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fcmp.cule.s	$fcc0, $fs2, $fs0
	bcnez	$fcc0, .LBB7_22
# %bb.13:                               #   in Loop: Header=BB7_3 Depth=1
	move	$a2, $zero
	addi.d	$a3, $s3, 2
	move	$a5, $s2
	move	$a6, $s5
	.p2align	4, , 16
.LBB7_14:                               #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	move	$a4, $a0
	ld.d	$a2, $a6, 0
	ld.d	$a0, $a5, 0
	addi.d	$a3, $a3, -1
	move	$a5, $a0
	move	$a6, $a2
	bnez	$a3, .LBB7_14
# %bb.15:                               #   in Loop: Header=BB7_3 Depth=1
	beqz	$a0, .LBB7_20
# %bb.16:                               #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a3, $s2, 0
	st.d	$a2, $a4, 0
	ld.d	$a2, $s5, 8
	st.d	$a3, $s0, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $s2, 8
	st.d	$a2, $s0, 8
	st.d	$a0, $a1, 0
	st.d	$a3, $fp, 0
	st.d	$a4, $fp, 8
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB7_18
	.p2align	4, , 16
.LBB7_17:                               # %.lr.ph.i22
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s4, $a1
	bnez	$a0, .LBB7_17
.LBB7_18:                               # %.preheader.i
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB7_2
	.p2align	4, , 16
.LBB7_19:                               # %.lr.ph30.i
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$s6, $s4, $a1
	bnez	$a0, .LBB7_19
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_20:                               #   in Loop: Header=BB7_3 Depth=1
	vld	$vr0, $s2, 0
	vld	$vr1, $s5, 0
	vst	$vr0, $s0, 0
	vst	$vr1, $fp, 0
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB7_17
	b	.LBB7_18
.LBB7_21:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_22:                               # %.critedge
	pcaddu18i	$ra, %call36(PrintResults)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(swapToB)
	ld.d	$a0, $a0, %got_pc_lo12(swapToB)
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	st.d	$a1, $s0, 8
	st.d	$a0, $s0, 0
	beqz	$a0, .LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %.lr.ph31
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s4, $a1
	bnez	$a0, .LBB7_23
.LBB7_24:                               # %._crit_edge32
	pcalau12i	$a0, %got_pc_hi20(swapToA)
	ld.d	$a0, $a0, %got_pc_lo12(swapToA)
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	st.d	$a1, $fp, 8
	st.d	$a0, $fp, 0
	beqz	$a0, .LBB7_27
# %bb.25:                               # %.lr.ph37.preheader
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB7_26:                               # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a2, 2
	stx.w	$a1, $s4, $a2
	bnez	$a0, .LBB7_26
.LBB7_27:                               # %._crit_edge38
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(PrintResults)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"----------------------------------------------\n"
	.size	.L.str, 48

	.type	maxStat,@object                 # @maxStat
	.bss
	.globl	maxStat
	.p2align	3, 0x0
maxStat:
	.dword	0                               # 0x0
	.size	maxStat, 8

	.type	netStats,@object                # @netStats
	.globl	netStats
	.p2align	3, 0x0
netStats:
	.space	6144
	.size	netStats, 6144

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Group A:  \n"
	.size	.L.str.1, 12

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%3lu "
	.size	.L.str.2, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Group B:  \n"
	.size	.L.str.4, 12

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Conn %3lu - %3lu cut.\n"
	.size	.L.str.5, 23

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Total edge cuts = %lu\n"
	.size	.L.str.6, 23

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Net %3lu cut.\n"
	.size	.L.str.7, 15

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Total net cuts  = %lu\n"
	.size	.L.str.8, 23

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"sz:%5lu     total:%5lu     edgesCut:%5lu     netsCuts:%5lu\n"
	.size	.L.str.9, 60

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Usage: KL <input_file>\n"
	.size	.L.str.10, 24

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"No progress: gMax = %f\n"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"gMax = %f, iMax = %lu\n"
	.size	.L.str.12, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym groupA
	.addrsig_sym groupB
