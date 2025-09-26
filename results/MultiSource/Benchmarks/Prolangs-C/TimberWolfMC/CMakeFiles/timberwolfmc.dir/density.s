	.file	"density.c"
	.text
	.globl	density                         # -- Begin function density
	.p2align	5
	.type	density,@function
density:                                # @density
# %bb.0:
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
	pcalau12i	$a0, %got_pc_hi20(eNum)
	ld.d	$a6, $a0, %got_pc_lo12(eNum)
	ld.w	$a0, $a6, 0
	blez	$a0, .LBB0_7
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$a1, $a1, %got_pc_lo12(eArray)
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB0_5
# %bb.2:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$a3, $a2, 1
	ori	$a2, $a0, 1
	addi.d	$a4, $a1, 160
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a4, -56
	st.d	$zero, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 112
	bnez	$a5, .LBB0_3
# %bb.4:                                # %middle.block
	beq	$a3, $a0, .LBB0_7
.LBB0_5:                                # %scalar.ph.preheader
	addi.d	$a0, $a0, 1
	bstrpick.d	$a3, $a0, 31, 0
	ori	$a0, $zero, 56
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 48
	sub.d	$a1, $a3, $a2
	.p2align	4, , 16
.LBB0_6:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 56
	bnez	$a1, .LBB0_6
.LBB0_7:                                # %.preheader300
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(largestNet)
	ld.d	$a0, $a0, %got_pc_lo12(largestNet)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_16
# %bb.8:                                # %.lr.ph311.preheader
	ori	$a1, $zero, 1
	pcalau12i	$a2, %got_pc_hi20(netRoutes)
	ld.d	$a2, $a2, %got_pc_lo12(netRoutes)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(eIndexArray)
	ld.d	$s3, $a2, %got_pc_lo12(eIndexArray)
	pcalau12i	$a2, %got_pc_hi20(eArray)
	ld.d	$s4, $a2, %got_pc_lo12(eArray)
	ori	$s5, $zero, 56
	ori	$s6, $zero, 12
	ori	$s7, $zero, 8
	addi.w	$fp, $zero, -1
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_9:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_10:                               # %._crit_edge
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$a1, $s8, 1
	bge	$s8, $a0, .LBB0_16
.LBB0_11:                               # %.lr.ph311
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$s8, $a1
	slli.d	$a1, $a1, 4
	alsl.d	$a1, $s8, $a1, 3
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 12
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$s2, $a1, 16
	beqz	$s2, .LBB0_10
# %bb.12:                               # %.lr.ph308.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $s4, 0
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s2, $s2, 16
	beqz	$s2, .LBB0_9
.LBB0_14:                               # %.lr.ph308
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s2, 0
	slli.d	$a3, $a1, 3
	ld.w	$a4, $s2, 4
	ldx.d	$a3, $a0, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	mul.d	$s0, $a3, $s5
	ldx.w	$a4, $a2, $s0
	add.d	$a3, $a2, $s0
	xor	$a1, $a1, $a4
	sltui	$a1, $a1, 1
	ld.w	$a4, $a3, 20
	masknez	$a5, $s6, $a1
	maskeqz	$a6, $s7, $a1
	or	$a5, $a6, $a5
	masknez	$a6, $s7, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a6
	ldx.w	$a6, $s2, $a1
	ldx.w	$a1, $s2, $a5
	sub.w	$s1, $a4, $a6
	bge	$a1, $s1, .LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a0, $a3, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	add.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 48
	addi.w	$a1, $s1, 1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $s4, 0
	b	.LBB0_13
.LBB0_16:                               # %._crit_edge312
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s3, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 19
	ori	$a0, $a0, 2184
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $s6, 0
	move	$fp, $a0
	blez	$a1, .LBB0_31
# %bb.17:                               # %.lr.ph327.preheader
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$s4, $a0, %got_pc_lo12(eArray)
	ld.d	$a0, $s4, 0
	ori	$s5, $zero, 56
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$s0, $a1, %pc_lo12(.L.str.1)
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	ld.d	$a0, $s3, 0
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 4
	st.w	$a5, $a1, 40
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a1, $s6, 0
	addi.d	$s2, $s1, 1
	bge	$s1, $a1, .LBB0_31
.LBB0_19:                               # %.lr.ph327
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_28 Depth 3
	move	$s1, $s2
	mul.d	$a1, $s2, $s5
	add.d	$a1, $a0, $a1
	ld.d	$a3, $a1, 48
	beqz	$a3, .LBB0_30
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	move	$a4, $zero
	move	$a5, $zero
	move	$a2, $zero
	move	$a0, $zero
	st.d	$a3, $fp, 0
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_21:                               #   in Loop: Header=BB0_23 Depth=2
	addi.w	$a2, $a2, 3
	slli.d	$a6, $a2, 3
	stx.d	$a4, $fp, $a6
.LBB0_22:                               #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a4, $a3, 1
	bge	$a3, $a2, .LBB0_18
.LBB0_23:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
	move	$a3, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $fp, $a4
	ld.w	$a6, $a4, 4
	blez	$a6, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a6, $a4, 8
	alsl.d	$a7, $a2, $fp, 3
	ld.d	$t0, $a4, 16
	ld.d	$a4, $a4, 24
	st.d	$a6, $a7, 8
	addi.w	$a6, $a2, 2
	slli.d	$a7, $a6, 3
	stx.d	$t0, $fp, $a7
	bnez	$a4, .LBB0_21
# %bb.25:                               #   in Loop: Header=BB0_23 Depth=2
	move	$a2, $a6
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a4, $a4, 56
	beqz	$a4, .LBB0_29
# %bb.27:                               # %.lr.ph318
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a6, $a4, 0
	.p2align	4, , 16
.LBB0_28:                               #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a4, 8
	add.w	$a0, $a0, $a6
	bnez	$a4, .LBB0_28
.LBB0_29:                               # %._crit_edge319
                                        #   in Loop: Header=BB0_23 Depth=2
	slt	$a4, $a5, $a0
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a0, $a4
	or	$a5, $a4, $a5
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_19 Depth=1
	st.w	$zero, $a1, 40
	ld.w	$a1, $s6, 0
	addi.d	$s2, $s1, 1
	blt	$s1, $a1, .LBB0_19
.LBB0_31:                               # %._crit_edge328
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numXnodes)
	ld.w	$a3, $a0, 0
	addi.d	$a2, $a3, 1
	blez	$a3, .LBB0_54
# %bb.32:                               # %.lr.ph343
	pcalau12i	$a0, %got_pc_hi20(xNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(xNodeArray)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$a1, $a1, %got_pc_lo12(eArray)
	ld.d	$a1, $a1, 0
	pcalau12i	$a4, %got_pc_hi20(defaultTracks)
	ld.d	$a4, $a4, %got_pc_lo12(defaultTracks)
	ld.w	$a7, $a4, 0
	pcalau12i	$a4, %got_pc_hi20(pitch)
	ld.d	$a4, $a4, %got_pc_lo12(pitch)
	ld.w	$a4, $a4, 0
	addi.d	$a5, $a7, 2
	bstrpick.d	$a6, $a2, 31, 0
	blez	$a7, .LBB0_44
# %bb.33:                               # %.lr.ph343.split.us.preheader
	addi.d	$a7, $a7, 1
	mul.d	$a7, $a4, $a7
	ori	$t0, $zero, 1
	ori	$t1, $zero, 56
	ori	$t2, $zero, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %._crit_edge339.split.us.us
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.d	$t2, $t2, 1
	beq	$t2, $a6, .LBB0_54
.LBB0_35:                               # %.lr.ph343.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
                                        #       Child Loop BB0_41 Depth 3
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $a0, $t3
	bnez	$t3, .LBB0_38
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_36:                               # %.sink.split
                                        #   in Loop: Header=BB0_38 Depth=2
	st.w	$t7, $t3, 16
.LBB0_37:                               #   in Loop: Header=BB0_38 Depth=2
	ld.d	$t3, $t3, 24
	beqz	$t3, .LBB0_34
.LBB0_38:                               # %.lr.ph338.us
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
	ld.w	$t4, $t3, 0
	beq	$t4, $t0, .LBB0_37
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	ld.d	$t5, $t3, 8
	st.w	$zero, $t3, 16
	ld.w	$t6, $t5, 0
	move	$t7, $a7
	blez	$t6, .LBB0_36
# %bb.40:                               # %.lr.ph332.us.us
                                        #   in Loop: Header=BB0_38 Depth=2
	move	$t4, $zero
	addi.d	$t6, $t6, 1
	bstrpick.d	$t6, $t6, 31, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, -1
	.p2align	4, , 16
.LBB0_41:                               #   Parent Loop BB0_35 Depth=1
                                        #     Parent Loop BB0_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t7, $t5, 0
	mul.d	$t7, $t7, $t1
	add.d	$t7, $a1, $t7
	ld.w	$t7, $t7, 40
	add.w	$t4, $t4, $t7
	st.w	$t4, $t3, 16
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_41
# %bb.42:                               # %._crit_edge333.us.us
                                        #   in Loop: Header=BB0_38 Depth=2
	move	$t7, $a7
	blez	$t4, .LBB0_36
# %bb.43:                               #   in Loop: Header=BB0_38 Depth=2
	add.d	$t4, $t4, $a5
	mul.d	$t7, $t4, $a4
	b	.LBB0_36
.LBB0_44:                               # %.lr.ph343.split.preheader
	ori	$a7, $zero, 1
	ori	$t0, $zero, 56
	ori	$t1, $zero, 1
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               # %._crit_edge339.split
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.d	$t1, $t1, 1
	beq	$t1, $a6, .LBB0_54
.LBB0_46:                               # %.lr.ph343.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
                                        #       Child Loop BB0_51 Depth 3
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a0, $t2
	bnez	$t2, .LBB0_48
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_47:                               # %._crit_edge333.thread
                                        #   in Loop: Header=BB0_48 Depth=2
	ld.d	$t2, $t2, 24
	beqz	$t2, .LBB0_45
.LBB0_48:                               # %.lr.ph338
                                        #   Parent Loop BB0_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
	ld.w	$t3, $t2, 0
	beq	$t3, $a7, .LBB0_47
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=2
	ld.d	$t4, $t2, 8
	st.w	$zero, $t2, 16
	ld.w	$t5, $t4, 0
	blez	$t5, .LBB0_47
# %bb.50:                               # %.lr.ph332
                                        #   in Loop: Header=BB0_48 Depth=2
	move	$t3, $zero
	addi.d	$t5, $t5, 1
	bstrpick.d	$t5, $t5, 31, 0
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, -1
	.p2align	4, , 16
.LBB0_51:                               #   Parent Loop BB0_46 Depth=1
                                        #     Parent Loop BB0_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t6, $t4, 0
	mul.d	$t6, $t6, $t0
	add.d	$t6, $a1, $t6
	ld.w	$t6, $t6, 40
	add.w	$t3, $t3, $t6
	st.w	$t3, $t2, 16
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB0_51
# %bb.52:                               # %._crit_edge333
                                        #   in Loop: Header=BB0_48 Depth=2
	blez	$t3, .LBB0_47
# %bb.53:                               #   in Loop: Header=BB0_48 Depth=2
	add.d	$t3, $t3, $a5
	mul.d	$t3, $t3, $a4
	st.w	$t3, $t2, 16
	b	.LBB0_47
.LBB0_54:                               # %.preheader299
	pcalau12i	$a0, %got_pc_hi20(numYnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numYnodes)
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a1, 1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	blez	$a1, .LBB0_77
# %bb.55:                               # %.lr.ph362
	pcalau12i	$a4, %got_pc_hi20(yNodeArray)
	ld.d	$a4, $a4, %got_pc_lo12(yNodeArray)
	ld.d	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(eArray)
	ld.d	$a5, $a5, %got_pc_lo12(eArray)
	ld.d	$a5, $a5, 0
	pcalau12i	$a6, %got_pc_hi20(defaultTracks)
	ld.d	$a6, $a6, %got_pc_lo12(defaultTracks)
	ld.w	$t1, $a6, 0
	pcalau12i	$a6, %got_pc_hi20(pitch)
	ld.d	$a6, $a6, %got_pc_lo12(pitch)
	ld.w	$a6, $a6, 0
	addi.d	$a7, $t1, 2
	bstrpick.d	$t0, $a0, 31, 0
	blez	$t1, .LBB0_67
# %bb.56:                               # %.lr.ph362.split.us.preheader
	addi.d	$t1, $t1, 1
	mul.d	$t1, $a6, $t1
	ori	$t2, $zero, 1
	ori	$t3, $zero, 56
	ori	$t4, $zero, 1
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_57:                               # %._crit_edge356.split.us.us
                                        #   in Loop: Header=BB0_58 Depth=1
	addi.d	$t4, $t4, 1
	beq	$t4, $t0, .LBB0_77
.LBB0_58:                               # %.lr.ph362.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_61 Depth 2
                                        #       Child Loop BB0_64 Depth 3
	slli.d	$t5, $t4, 3
	ldx.d	$t5, $a4, $t5
	bnez	$t5, .LBB0_61
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_59:                               # %.sink.split510
                                        #   in Loop: Header=BB0_61 Depth=2
	st.w	$fp, $t5, 16
.LBB0_60:                               #   in Loop: Header=BB0_61 Depth=2
	ld.d	$t5, $t5, 24
	beqz	$t5, .LBB0_57
.LBB0_61:                               # %.lr.ph355.us
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_64 Depth 3
	ld.w	$t6, $t5, 0
	beq	$t6, $t2, .LBB0_60
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=2
	ld.d	$t7, $t5, 8
	st.w	$zero, $t5, 16
	ld.w	$t8, $t7, 0
	move	$fp, $t1
	blez	$t8, .LBB0_59
# %bb.63:                               # %.lr.ph348.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	move	$t6, $zero
	addi.d	$t8, $t8, 1
	bstrpick.d	$t8, $t8, 31, 0
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, -1
	.p2align	4, , 16
.LBB0_64:                               #   Parent Loop BB0_58 Depth=1
                                        #     Parent Loop BB0_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$fp, $t7, 0
	mul.d	$fp, $fp, $t3
	add.d	$fp, $a5, $fp
	ld.w	$fp, $fp, 40
	add.w	$t6, $t6, $fp
	st.w	$t6, $t5, 16
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB0_64
# %bb.65:                               # %._crit_edge349.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	move	$fp, $t1
	blez	$t6, .LBB0_59
# %bb.66:                               #   in Loop: Header=BB0_61 Depth=2
	add.d	$t6, $t6, $a7
	mul.d	$fp, $t6, $a6
	b	.LBB0_59
.LBB0_67:                               # %.lr.ph362.split.preheader
	ori	$t1, $zero, 1
	ori	$t2, $zero, 56
	ori	$t3, $zero, 1
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %._crit_edge356.split
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.d	$t3, $t3, 1
	beq	$t3, $t0, .LBB0_77
.LBB0_69:                               # %.lr.ph362.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_74 Depth 3
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a4, $t4
	bnez	$t4, .LBB0_71
	b	.LBB0_68
	.p2align	4, , 16
.LBB0_70:                               # %._crit_edge349.thread
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t4, $t4, 24
	beqz	$t4, .LBB0_68
.LBB0_71:                               # %.lr.ph355
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_74 Depth 3
	ld.w	$t5, $t4, 0
	beq	$t5, $t1, .LBB0_70
# %bb.72:                               #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t6, $t4, 8
	st.w	$zero, $t4, 16
	ld.w	$t7, $t6, 0
	blez	$t7, .LBB0_70
# %bb.73:                               # %.lr.ph348
                                        #   in Loop: Header=BB0_71 Depth=2
	move	$t5, $zero
	addi.d	$t7, $t7, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, -1
	.p2align	4, , 16
.LBB0_74:                               #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t6, 0
	mul.d	$t8, $t8, $t2
	add.d	$t8, $a5, $t8
	ld.w	$t8, $t8, 40
	add.w	$t5, $t5, $t8
	st.w	$t5, $t4, 16
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB0_74
# %bb.75:                               # %._crit_edge349
                                        #   in Loop: Header=BB0_71 Depth=2
	blez	$t5, .LBB0_70
# %bb.76:                               #   in Loop: Header=BB0_71 Depth=2
	add.d	$t5, $t5, $a7
	mul.d	$t5, $t5, $a6
	st.w	$t5, $t4, 16
	b	.LBB0_70
.LBB0_77:                               # %.preheader298
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blez	$a3, .LBB0_105
# %bb.78:                               # %.lr.ph380
	vrepli.b	$vr0, 0
	pcalau12i	$a3, %got_pc_hi20(xNodeArray)
	ld.d	$a3, $a3, %got_pc_lo12(xNodeArray)
	ld.d	$a3, $a3, 0
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a4, $zero, 1
	pcalau12i	$a5, %got_pc_hi20(eArray)
	ld.d	$a5, $a5, %got_pc_lo12(eArray)
	pcalau12i	$a6, %got_pc_hi20(edgeList)
	ld.d	$a6, $a6, %got_pc_lo12(edgeList)
	pcalau12i	$a7, %got_pc_hi20(cellList)
	ld.d	$a7, $a7, %got_pc_lo12(cellList)
	ori	$t0, $zero, 56
	ori	$t1, $zero, 40
	ori	$t2, $zero, 8
	ori	$t3, $zero, 1
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_79:                               # %._crit_edge377
                                        #   in Loop: Header=BB0_80 Depth=1
	addi.d	$t3, $t3, 1
	beq	$t3, $a2, .LBB0_105
.LBB0_80:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_84 Depth 2
                                        #       Child Loop BB0_90 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_102 Depth 3
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a3, $t4
	beqz	$t4, .LBB0_79
# %bb.81:                               # %.lr.ph376
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.d	$t5, $a5, 0
	ld.d	$t6, $a6, 0
	ld.d	$t7, $a7, 0
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_82:                               #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s2, 12
	st.w	$zero, $s0, 8
	st.w	$a0, $s0, 12
	ld.d	$a0, $s2, 4
	st.d	$a0, $s0, 16
.LBB0_83:                               #   in Loop: Header=BB0_84 Depth=2
	ld.d	$t4, $t4, 24
	beqz	$t4, .LBB0_79
.LBB0_84:                               #   Parent Loop BB0_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_90 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_102 Depth 3
	ld.w	$t8, $t4, 0
	beq	$t8, $a4, .LBB0_83
# %bb.85:                               #   in Loop: Header=BB0_84 Depth=2
	ld.d	$t8, $t4, 8
	ld.w	$fp, $t8, 0
	blez	$fp, .LBB0_88
# %bb.86:                               # %.lr.ph369.preheader
                                        #   in Loop: Header=BB0_84 Depth=2
	bgeu	$fp, $t2, .LBB0_89
# %bb.87:                               #   in Loop: Header=BB0_84 Depth=2
	move	$s2, $zero
	ori	$s0, $zero, 1
	b	.LBB0_92
.LBB0_88:                               #   in Loop: Header=BB0_84 Depth=2
	move	$s2, $zero
	b	.LBB0_94
.LBB0_89:                               # %vector.ph522
                                        #   in Loop: Header=BB0_84 Depth=2
	bstrpick.d	$s0, $fp, 30, 3
	slli.d	$s1, $s0, 3
	srli.d	$s2, $fp, 3
	ori	$s0, $zero, 1
	bstrins.d	$s0, $s2, 30, 3
	addi.d	$s2, $t8, 20
	move	$s3, $s1
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_90:                               # %vector.body525
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $s2, -16
	vld	$vr4, $s2, 0
	vshuf4i.w	$vr5, $vr3, 14
	vsllwil.d.w	$vr5, $vr5, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vshuf4i.w	$vr6, $vr4, 14
	vsllwil.d.w	$vr6, $vr6, 0
	vsllwil.d.w	$vr4, $vr4, 0
	vpickve2gr.d	$s4, $vr3, 0
	mul.d	$s4, $s4, $t0
	add.d	$s4, $t5, $s4
	vpickve2gr.d	$s5, $vr3, 1
	mul.d	$s5, $s5, $t0
	add.d	$s5, $t5, $s5
	vpickve2gr.d	$s6, $vr5, 0
	mul.d	$s6, $s6, $t0
	add.d	$s6, $t5, $s6
	vpickve2gr.d	$s7, $vr5, 1
	mul.d	$s7, $s7, $t0
	add.d	$s7, $t5, $s7
	vpickve2gr.d	$s8, $vr4, 0
	mul.d	$s8, $s8, $t0
	add.d	$s8, $t5, $s8
	vpickve2gr.d	$ra, $vr4, 1
	mul.d	$ra, $ra, $t0
	add.d	$ra, $t5, $ra
	vpickve2gr.d	$a0, $vr6, 0
	mul.d	$a0, $a0, $t0
	add.d	$a0, $t5, $a0
	vpickve2gr.d	$a1, $vr6, 1
	mul.d	$a1, $a1, $t0
	add.d	$a1, $t5, $a1
	ld.w	$s4, $s4, 8
	ld.w	$s5, $s5, 8
	ld.w	$s6, $s6, 8
	ld.w	$s7, $s7, 8
	vinsgr2vr.w	$vr3, $s4, 0
	vinsgr2vr.w	$vr3, $s5, 1
	vinsgr2vr.w	$vr3, $s6, 2
	vinsgr2vr.w	$vr3, $s7, 3
	ld.w	$s4, $s8, 8
	ld.w	$s5, $ra, 8
	ld.w	$a0, $a0, 8
	ld.w	$a1, $a1, 8
	vinsgr2vr.w	$vr4, $s4, 0
	vinsgr2vr.w	$vr4, $s5, 1
	vinsgr2vr.w	$vr4, $a0, 2
	vinsgr2vr.w	$vr4, $a1, 3
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr2, $vr4, $vr2
	addi.d	$s3, $s3, -8
	addi.d	$s2, $s2, 32
	bnez	$s3, .LBB0_90
# %bb.91:                               # %middle.block531
                                        #   in Loop: Header=BB0_84 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$s2, $vr1, 0
	beq	$s1, $fp, .LBB0_94
.LBB0_92:                               # %.lr.ph369.preheader558
                                        #   in Loop: Header=BB0_84 Depth=2
	addi.d	$a0, $fp, 1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$s1, $s0, $t8, 2
	sub.d	$s0, $a0, $s0
	.p2align	4, , 16
.LBB0_93:                               # %.lr.ph369
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s1, 0
	mul.d	$a0, $a0, $t0
	add.d	$a0, $t5, $a0
	ld.w	$a0, $a0, 8
	add.d	$s2, $a0, $s2
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 4
	bnez	$s0, .LBB0_93
.LBB0_94:                               # %._crit_edge370
                                        #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $t8, 4
	slli.d	$a1, $fp, 2
	ldx.w	$a1, $t8, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $t5, $a0
	ld.w	$s5, $a0, 32
	mul.d	$a0, $a1, $t0
	add.d	$a0, $t5, $a0
	ld.w	$t8, $a0, 36
	mul.d	$s6, $s5, $t1
	ld.wu	$s0, $t4, 16
	ldx.w	$s7, $t6, $s6
	mul.d	$s3, $t8, $t1
	ldx.w	$s1, $t6, $s3
	srli.d	$a0, $s0, 31
	add.w	$a0, $s0, $a0
	srai.d	$s4, $a0, 1
	sub.w	$fp, $s2, $s0
	blez	$s7, .LBB0_100
# %bb.95:                               #   in Loop: Header=BB0_84 Depth=2
	add.d	$s2, $t6, $s6
	alsl.d	$s7, $s7, $t7, 3
	.p2align	4, , 16
.LBB0_96:                               #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s7, 0
	ld.w	$a0, $s6, 0
	addi.d	$s7, $s6, 32
	bne	$a0, $s5, .LBB0_96
# %bb.97:                               #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s6, 24
	bge	$fp, $a0, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_84 Depth=2
	st.w	$fp, $s6, 24
	st.w	$s4, $s6, 4
.LBB0_99:                               #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s2, 12
	st.w	$zero, $s6, 8
	st.w	$a0, $s6, 12
	ld.d	$a0, $s2, 4
	st.d	$a0, $s6, 16
.LBB0_100:                              #   in Loop: Header=BB0_84 Depth=2
	blez	$s1, .LBB0_83
# %bb.101:                              #   in Loop: Header=BB0_84 Depth=2
	add.d	$s2, $t6, $s3
	sub.d	$s3, $s0, $s4
	alsl.d	$s1, $s1, $t7, 3
	.p2align	4, , 16
.LBB0_102:                              #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s1, 0
	ld.w	$a0, $s0, 0
	addi.d	$s1, $s0, 32
	bne	$a0, $t8, .LBB0_102
# %bb.103:                              #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s0, 24
	bge	$fp, $a0, .LBB0_82
# %bb.104:                              #   in Loop: Header=BB0_84 Depth=2
	st.w	$fp, $s0, 24
	st.w	$s3, $s0, 4
	b	.LBB0_82
.LBB0_105:                              # %.preheader297
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blez	$a0, .LBB0_133
# %bb.106:                              # %.lr.ph396
	pcalau12i	$a1, %got_pc_hi20(yNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(yNodeArray)
	ld.d	$a1, $a1, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a2, $zero, 1
	pcalau12i	$a3, %got_pc_hi20(eArray)
	ld.d	$a3, $a3, %got_pc_lo12(eArray)
	pcalau12i	$a4, %got_pc_hi20(edgeList)
	ld.d	$a4, $a4, %got_pc_lo12(edgeList)
	pcalau12i	$a5, %got_pc_hi20(cellList)
	ld.d	$a5, $a5, %got_pc_lo12(cellList)
	ori	$a6, $zero, 56
	ori	$a7, $zero, 40
	ori	$t0, $zero, 8
	vrepli.b	$vr0, 0
	ori	$t1, $zero, 1
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_107:                              # %._crit_edge393
                                        #   in Loop: Header=BB0_108 Depth=1
	addi.d	$t1, $t1, 1
	beq	$t1, $a0, .LBB0_133
.LBB0_108:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_130 Depth 3
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a1, $t2
	beqz	$t2, .LBB0_107
# %bb.109:                              # %.lr.ph392
                                        #   in Loop: Header=BB0_108 Depth=1
	ld.d	$t3, $a3, 0
	ld.d	$t4, $a4, 0
	ld.d	$t5, $a5, 0
	b	.LBB0_112
	.p2align	4, , 16
.LBB0_110:                              #   in Loop: Header=BB0_112 Depth=2
	ld.w	$t6, $s0, 12
	st.w	$a2, $t8, 8
	st.w	$t6, $t8, 12
	ld.d	$t6, $s0, 4
	st.d	$t6, $t8, 16
.LBB0_111:                              #   in Loop: Header=BB0_112 Depth=2
	ld.d	$t2, $t2, 24
	beqz	$t2, .LBB0_107
.LBB0_112:                              #   Parent Loop BB0_108 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_130 Depth 3
	ld.w	$t6, $t2, 0
	beq	$t6, $a2, .LBB0_111
# %bb.113:                              #   in Loop: Header=BB0_112 Depth=2
	ld.d	$t6, $t2, 8
	ld.w	$t7, $t6, 0
	blez	$t7, .LBB0_116
# %bb.114:                              # %.lr.ph385.preheader
                                        #   in Loop: Header=BB0_112 Depth=2
	bgeu	$t7, $t0, .LBB0_117
# %bb.115:                              #   in Loop: Header=BB0_112 Depth=2
	move	$s0, $zero
	ori	$t8, $zero, 1
	b	.LBB0_120
.LBB0_116:                              #   in Loop: Header=BB0_112 Depth=2
	move	$s0, $zero
	b	.LBB0_122
.LBB0_117:                              # %vector.ph536
                                        #   in Loop: Header=BB0_112 Depth=2
	bstrpick.d	$t8, $t7, 30, 3
	slli.d	$fp, $t8, 3
	srli.d	$s0, $t7, 3
	ori	$t8, $zero, 1
	bstrins.d	$t8, $s0, 30, 3
	addi.d	$s0, $t6, 20
	move	$s1, $fp
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_118:                              # %vector.body539
                                        #   Parent Loop BB0_108 Depth=1
                                        #     Parent Loop BB0_112 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $s0, -16
	vld	$vr4, $s0, 0
	vshuf4i.w	$vr5, $vr3, 14
	vsllwil.d.w	$vr5, $vr5, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vshuf4i.w	$vr6, $vr4, 14
	vsllwil.d.w	$vr6, $vr6, 0
	vsllwil.d.w	$vr4, $vr4, 0
	vpickve2gr.d	$s2, $vr3, 0
	mul.d	$s2, $s2, $a6
	add.d	$s2, $t3, $s2
	vpickve2gr.d	$s3, $vr3, 1
	mul.d	$s3, $s3, $a6
	add.d	$s3, $t3, $s3
	vpickve2gr.d	$s4, $vr5, 0
	mul.d	$s4, $s4, $a6
	add.d	$s4, $t3, $s4
	vpickve2gr.d	$s5, $vr5, 1
	mul.d	$s5, $s5, $a6
	add.d	$s5, $t3, $s5
	vpickve2gr.d	$s6, $vr4, 0
	mul.d	$s6, $s6, $a6
	add.d	$s6, $t3, $s6
	vpickve2gr.d	$s7, $vr4, 1
	mul.d	$s7, $s7, $a6
	add.d	$s7, $t3, $s7
	vpickve2gr.d	$s8, $vr6, 0
	mul.d	$s8, $s8, $a6
	add.d	$s8, $t3, $s8
	vpickve2gr.d	$ra, $vr6, 1
	mul.d	$ra, $ra, $a6
	add.d	$ra, $t3, $ra
	ld.w	$s2, $s2, 8
	ld.w	$s3, $s3, 8
	ld.w	$s4, $s4, 8
	ld.w	$s5, $s5, 8
	vinsgr2vr.w	$vr3, $s2, 0
	vinsgr2vr.w	$vr3, $s3, 1
	vinsgr2vr.w	$vr3, $s4, 2
	vinsgr2vr.w	$vr3, $s5, 3
	ld.w	$s2, $s6, 8
	ld.w	$s3, $s7, 8
	ld.w	$s4, $s8, 8
	ld.w	$s5, $ra, 8
	vinsgr2vr.w	$vr4, $s2, 0
	vinsgr2vr.w	$vr4, $s3, 1
	vinsgr2vr.w	$vr4, $s4, 2
	vinsgr2vr.w	$vr4, $s5, 3
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr2, $vr4, $vr2
	addi.d	$s1, $s1, -8
	addi.d	$s0, $s0, 32
	bnez	$s1, .LBB0_118
# %bb.119:                              # %middle.block547
                                        #   in Loop: Header=BB0_112 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$s0, $vr1, 0
	beq	$fp, $t7, .LBB0_122
.LBB0_120:                              # %.lr.ph385.preheader555
                                        #   in Loop: Header=BB0_112 Depth=2
	addi.d	$fp, $t7, 1
	bstrpick.d	$s1, $fp, 31, 0
	alsl.d	$fp, $t8, $t6, 2
	sub.d	$t8, $s1, $t8
	.p2align	4, , 16
.LBB0_121:                              # %.lr.ph385
                                        #   Parent Loop BB0_108 Depth=1
                                        #     Parent Loop BB0_112 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s1, $fp, 0
	mul.d	$s1, $s1, $a6
	add.d	$s1, $t3, $s1
	ld.w	$s1, $s1, 8
	add.d	$s0, $s1, $s0
	addi.d	$t8, $t8, -1
	addi.d	$fp, $fp, 4
	bnez	$t8, .LBB0_121
.LBB0_122:                              # %._crit_edge386
                                        #   in Loop: Header=BB0_112 Depth=2
	ld.w	$t8, $t6, 4
	slli.d	$t7, $t7, 2
	ldx.w	$t6, $t6, $t7
	mul.d	$t7, $t8, $a6
	add.d	$t7, $t3, $t7
	ld.w	$s3, $t7, 32
	mul.d	$t6, $t6, $a6
	add.d	$t6, $t3, $t6
	ld.w	$t6, $t6, 36
	mul.d	$s4, $s3, $a7
	ld.wu	$t8, $t2, 16
	ldx.w	$s5, $t4, $s4
	mul.d	$s1, $t6, $a7
	ldx.w	$fp, $t4, $s1
	srli.d	$t7, $t8, 31
	add.w	$t7, $t8, $t7
	srai.d	$s2, $t7, 1
	sub.w	$t7, $s0, $t8
	blez	$s5, .LBB0_128
# %bb.123:                              #   in Loop: Header=BB0_112 Depth=2
	add.d	$s0, $t4, $s4
	alsl.d	$s5, $s5, $t5, 3
	.p2align	4, , 16
.LBB0_124:                              #   Parent Loop BB0_108 Depth=1
                                        #     Parent Loop BB0_112 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s5, 0
	ld.w	$s6, $s4, 0
	addi.d	$s5, $s4, 32
	bne	$s6, $s3, .LBB0_124
# %bb.125:                              #   in Loop: Header=BB0_112 Depth=2
	ld.w	$s3, $s4, 24
	bge	$t7, $s3, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_112 Depth=2
	st.w	$t7, $s4, 24
	st.w	$s2, $s4, 4
.LBB0_127:                              #   in Loop: Header=BB0_112 Depth=2
	ld.w	$s3, $s0, 12
	st.w	$a2, $s4, 8
	st.w	$s3, $s4, 12
	ld.d	$s0, $s0, 4
	st.d	$s0, $s4, 16
.LBB0_128:                              #   in Loop: Header=BB0_112 Depth=2
	blez	$fp, .LBB0_111
# %bb.129:                              #   in Loop: Header=BB0_112 Depth=2
	add.d	$s0, $t4, $s1
	sub.d	$s1, $t8, $s2
	alsl.d	$fp, $fp, $t5, 3
	.p2align	4, , 16
.LBB0_130:                              #   Parent Loop BB0_108 Depth=1
                                        #     Parent Loop BB0_112 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t8, $fp, 0
	ld.w	$s2, $t8, 0
	addi.d	$fp, $t8, 32
	bne	$s2, $t6, .LBB0_130
# %bb.131:                              #   in Loop: Header=BB0_112 Depth=2
	ld.w	$t6, $t8, 24
	bge	$t7, $t6, .LBB0_110
# %bb.132:                              #   in Loop: Header=BB0_112 Depth=2
	st.w	$t7, $t8, 24
	st.w	$s1, $t8, 4
	b	.LBB0_110
.LBB0_133:                              # %.preheader
	pcalau12i	$a0, %got_pc_hi20(numberCells)
	ld.d	$s4, $a0, %got_pc_lo12(numberCells)
	ld.w	$a0, $s4, 0
	blez	$a0, .LBB0_138
# %bb.134:                              # %.lr.ph404.preheader
	ori	$a0, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(cellList)
	ld.d	$s5, $a1, %got_pc_lo12(cellList)
	pcalau12i	$a1, %got_pc_hi20(fpdebug)
	ld.d	$s6, $a1, %got_pc_lo12(fpdebug)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$fp, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$s0, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s2, $a1, %pc_lo12(.L.str.5)
	b	.LBB0_136
	.p2align	4, , 16
.LBB0_135:                              # %._crit_edge401
                                        #   in Loop: Header=BB0_136 Depth=1
	ld.w	$a1, $s4, 0
	addi.d	$a0, $s3, 1
	bge	$s3, $a1, .LBB0_138
.LBB0_136:                              # %.lr.ph404
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_137 Depth 2
	ld.d	$a1, $s5, 0
	move	$s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $a1, $a0
	ld.d	$a0, $s6, 0
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB0_135
	.p2align	4, , 16
.LBB0_137:                              # %.lr.ph400
                                        #   Parent Loop BB0_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	ld.w	$a2, $s7, 0
	ld.w	$a3, $s7, 4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.w	$a2, $s7, 8
	ld.w	$a3, $s7, 12
	ld.w	$a4, $s7, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.w	$a2, $s7, 20
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 32
	bnez	$s7, .LBB0_137
	b	.LBB0_135
.LBB0_138:                              # %._crit_edge405
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
	.size	density, .Lfunc_end0-density
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CHANNEL DENSITIES:\n"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"channel:%d  node1:%d  node2:%d  density:%d\n"
	.size	.L.str.1, 44

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"CELL: <%d>\n"
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"edge:%d  extraSpace:%d  "
	.size	.L.str.3, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"HorV:%d  loc:%d  start:%d  "
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"end:%d\n"
	.size	.L.str.5, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
