	.file	"cofactor.c"
	.text
	.globl	cofactor                        # -- Begin function cofactor
	.p2align	5
	.type	cofactor,@function
cofactor:                               # @cofactor
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s5, 80
	ld.d	$a1, $s1, 8
	ld.d	$s2, $a0, 0
	sub.d	$a0, $a1, $s1
	slli.d	$a0, $a0, 29
	ori	$a1, $zero, 0
	lu32i.d	$a1, 2
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 29
	bstrins.d	$a0, $zero, 2, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s5, 0
	move	$s0, $a0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s3, $a1, .LBB0_2
# %bb.1:
	addi.d	$a0, $s3, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s1, 0
	ld.d	$a1, $s5, 88
	move	$s4, $a0
	move	$a0, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$t3, $s1, 16
	st.d	$a0, $s0, 0
	addi.d	$a0, $s0, 16
	beqz	$t3, .LBB0_20
# %bb.3:                                # %.lr.ph87
	ld.wu	$t1, $s5, 108
	addi.d	$a3, $s1, 24
	addi.w	$a1, $t1, 0
	alsl.d	$a2, $a1, $fp, 2
	ld.w	$a4, $s5, 104
	ld.w	$a5, $s5, 8
	ld.w	$a6, $s5, 4
	ld.d	$a7, $s5, 72
	addi.d	$t0, $fp, 4
	addi.d	$t1, $t1, -1
	addi.w	$t2, $zero, -1
	slli.d	$t4, $a1, 2
	ori	$t5, $zero, 2
	lu12i.w	$t6, 349525
	ori	$t6, $t6, 1365
	b	.LBB0_6
.LBB0_4:                                # %._crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$t7, $a0, 8
	st.d	$t3, $a0, 0
	move	$a0, $t7
	.p2align	4, , 16
.LBB0_5:                                # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$t3, $a3, 0
	addi.d	$a3, $a3, 8
	beqz	$t3, .LBB0_20
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_17 Depth 3
	beq	$t3, $fp, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	beq	$a1, $t2, .LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	ldx.w	$t7, $t3, $t4
	ld.w	$t8, $a2, 0
	and	$t7, $t8, $t7
	bstrpick.d	$t8, $t7, 31, 1
	or	$t7, $t8, $t7
	andn	$t7, $a4, $t7
	addi.w	$t7, $t7, 0
	bnez	$t7, .LBB0_5
# %bb.9:                                # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	blt	$a1, $t5, .LBB0_13
# %bb.10:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$t7, $t3, 4
	move	$t8, $t1
	move	$s1, $t0
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s2, $t7, 0
	ld.w	$s3, $s1, 0
	and	$s2, $s3, $s2
	srli.d	$s3, $s2, 1
	or	$s2, $s3, $s2
	and	$s2, $s2, $t6
	bne	$s2, $t6, .LBB0_5
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	addi.d	$s1, $s1, 4
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB0_11
	.p2align	4, , 16
.LBB0_13:                               # %.loopexit74
                                        #   in Loop: Header=BB0_6 Depth=1
	bge	$a5, $a6, .LBB0_4
# %bb.14:                               # %.lr.ph82
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$t7, $s5, 48
	ld.d	$t8, $s5, 40
	move	$s1, $a5
.LBB0_15:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
	slli.d	$s2, $s1, 2
	ldx.w	$s6, $t7, $s2
	ldx.w	$s7, $t8, $s2
	blt	$s6, $s7, .LBB0_5
# %bb.16:                               # %.lr.ph79.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$s2, $s1, 3
	ldx.d	$s4, $a7, $s2
	alsl.d	$s2, $s7, $t3, 2
	alsl.d	$s3, $s7, $fp, 2
	alsl.d	$s4, $s7, $s4, 2
	sub.d	$s6, $s6, $s7
	addi.d	$s6, $s6, 1
	.p2align	4, , 16
.LBB0_17:                               # %.lr.ph79
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s7, $s2, 0
	ld.w	$s8, $s3, 0
	ld.w	$ra, $s4, 0
	and	$s7, $s8, $s7
	and	$s7, $s7, $ra
	bnez	$s7, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=3
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 4
	addi.w	$s6, $s6, -1
	addi.d	$s4, $s4, 4
	bnez	$s6, .LBB0_17
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$s1, $s1, 1
	bne	$s1, $a6, .LBB0_15
	b	.LBB0_4
.LBB0_20:                               # %._crit_edge88
	addi.d	$a1, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a1, $s0, 8
	move	$a0, $s0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	cofactor, .Lfunc_end0-cofactor
                                        # -- End function
	.globl	scofactor                       # -- Begin function scofactor
	.p2align	5
	.type	scofactor,@function
scofactor:                              # @scofactor
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a2
	move	$fp, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s8, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s8, 80
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s8, 40
	ld.d	$a1, $s8, 48
	ld.d	$a2, $s2, 8
	slli.d	$a3, $s3, 2
	ldx.w	$s6, $a0, $a3
	ldx.w	$s7, $a1, $a3
	sub.d	$a0, $a2, $s2
	slli.d	$a0, $a0, 29
	ori	$a1, $zero, 0
	lu32i.d	$a1, 2
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 29
	bstrins.d	$a0, $zero, 2, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s8, 0
	move	$s1, $a0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s4, $a1, .LBB1_2
# %bb.1:
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s2, 0
	ld.d	$a1, $s8, 88
	move	$s5, $a0
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 72
	st.d	$a0, $s1, 0
	slli.d	$a0, $s3, 3
	ldx.d	$a1, $a1, $a0
	addi.d	$s3, $s1, 16
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 16
	beqz	$a3, .LBB1_10
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$a0, $s2, 24
	slt	$a1, $s7, $s6
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $s6, $a1
	or	$a2, $a1, $a2
	slli.d	$a1, $s6, 2
	sub.d	$a2, $a2, $s6
	addi.d	$a2, $a2, 1
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_4:                                #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a4, $s3, 8
	st.d	$a3, $s3, 0
	move	$s3, $a4
.LBB1_5:                                # %.loopexit
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a3, $a0, 0
	addi.d	$a0, $a0, 8
	beqz	$a3, .LBB1_10
.LBB1_6:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	beq	$a3, $fp, .LBB1_5
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a4, $a2
	move	$a5, $a1
	.p2align	4, , 16
.LBB1_8:                                # %.preheader
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a6, $a3, $a5
	ldx.w	$a7, $s0, $a5
	and	$a6, $a7, $a6
	bnez	$a6, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	addi.w	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB1_8
	b	.LBB1_5
.LBB1_10:                               # %._crit_edge
	addi.d	$a0, $s3, 8
	st.d	$zero, $s3, 0
	st.d	$a0, $s1, 8
	move	$a0, $s1
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	scofactor, .Lfunc_end1-scofactor
                                        # -- End function
	.globl	massive_count                   # -- Begin function massive_count
	.p2align	5
	.type	massive_count,@function
massive_count:                          # @massive_count
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s1, $a0, %got_pc_lo12(cdata)
	ld.d	$fp, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.w	$a0, $s2, 0
	blez	$a0, .LBB2_2
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a2, $a0, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %._crit_edge
	ld.d	$a7, $s0, 16
	beqz	$a7, .LBB2_77
# %bb.3:                                # %.lr.ph209.preheader
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s2, 88
	addi.d	$a4, $s0, 24
	addi.d	$a2, $fp, -64
	ori	$a3, $zero, 1
	lu12i.w	$a5, 4080
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %.loopexit202
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a7, $a4, 0
	addi.d	$a4, $a4, 8
	beqz	$a7, .LBB2_77
.LBB2_5:                                # %.lr.ph209
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	ld.wu	$a6, $a7, 0
	andi	$t2, $a6, 1023
	beqz	$t2, .LBB2_4
# %bb.6:                                # %.lr.ph206.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$a6, $t2, $a1, 2
	alsl.d	$a7, $t2, $a7, 2
	alsl.d	$t0, $t2, $a0, 2
	addi.d	$t1, $t2, 1
	slli.d	$t2, $t2, 7
	add.d	$t2, $a2, $t2
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=2
	addi.d	$a6, $a6, -4
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, -4
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, -128
	bge	$a3, $t1, .LBB2_4
.LBB2_8:                                # %.lr.ph206
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $a7, 0
	ld.w	$t4, $t0, 0
	ld.w	$t5, $a6, 0
	or	$t3, $t4, $t3
	andn	$t3, $t5, $t3
	beqz	$t3, .LBB2_7
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=2
	bstrpick.d	$t4, $t3, 31, 24
	beqz	$t4, .LBB2_19
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=2
	bltz	$t3, .LBB2_70
# %bb.11:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 33
	bltz	$t4, .LBB2_71
.LBB2_12:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 34
	bltz	$t4, .LBB2_72
.LBB2_13:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 35
	bltz	$t4, .LBB2_73
.LBB2_14:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 36
	bltz	$t4, .LBB2_74
.LBB2_15:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 37
	bltz	$t4, .LBB2_75
.LBB2_16:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 38
	bltz	$t4, .LBB2_76
.LBB2_17:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 39
	bgez	$t4, .LBB2_19
.LBB2_18:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 32
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 32
.LBB2_19:                               #   in Loop: Header=BB2_8 Depth=2
	and	$t4, $t3, $a5
	beqz	$t4, .LBB2_29
# %bb.20:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 40
	bltz	$t4, .LBB2_48
# %bb.21:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 41
	bltz	$t4, .LBB2_49
.LBB2_22:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 42
	bltz	$t4, .LBB2_50
.LBB2_23:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 43
	bltz	$t4, .LBB2_51
.LBB2_24:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 44
	bltz	$t4, .LBB2_52
.LBB2_25:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 45
	bltz	$t4, .LBB2_53
.LBB2_26:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 46
	bltz	$t4, .LBB2_54
.LBB2_27:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 47
	bgez	$t4, .LBB2_29
.LBB2_28:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 0
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 0
.LBB2_29:                               #   in Loop: Header=BB2_8 Depth=2
	bstrpick.d	$t4, $t3, 15, 8
	slli.d	$t4, $t4, 8
	beqz	$t4, .LBB2_39
# %bb.30:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 48
	bltz	$t4, .LBB2_55
# %bb.31:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 49
	bltz	$t4, .LBB2_56
.LBB2_32:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 50
	bltz	$t4, .LBB2_57
.LBB2_33:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 51
	bltz	$t4, .LBB2_58
.LBB2_34:                               #   in Loop: Header=BB2_8 Depth=2
	slli.d	$t4, $t3, 52
	bltz	$t4, .LBB2_59
.LBB2_35:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 1024
	bnez	$t4, .LBB2_60
.LBB2_36:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 512
	bnez	$t4, .LBB2_61
.LBB2_37:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 256
	beqz	$t4, .LBB2_39
.LBB2_38:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -32
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -32
.LBB2_39:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 255
	beqz	$t4, .LBB2_7
# %bb.40:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 128
	bnez	$t4, .LBB2_62
# %bb.41:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 64
	bnez	$t4, .LBB2_63
.LBB2_42:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 32
	bnez	$t4, .LBB2_64
.LBB2_43:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 16
	bnez	$t4, .LBB2_65
.LBB2_44:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 8
	bnez	$t4, .LBB2_66
.LBB2_45:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 4
	bnez	$t4, .LBB2_67
.LBB2_46:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t4, $t3, 2
	bnez	$t4, .LBB2_68
.LBB2_47:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$t3, $t3, 1
	beqz	$t3, .LBB2_7
	b	.LBB2_69
.LBB2_48:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 28
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 28
	slli.d	$t4, $t3, 41
	bgez	$t4, .LBB2_22
.LBB2_49:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 24
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 24
	slli.d	$t4, $t3, 42
	bgez	$t4, .LBB2_23
.LBB2_50:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 20
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 20
	slli.d	$t4, $t3, 43
	bgez	$t4, .LBB2_24
.LBB2_51:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 16
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 16
	slli.d	$t4, $t3, 44
	bgez	$t4, .LBB2_25
.LBB2_52:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 12
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 12
	slli.d	$t4, $t3, 45
	bgez	$t4, .LBB2_26
.LBB2_53:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 8
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 8
	slli.d	$t4, $t3, 46
	bgez	$t4, .LBB2_27
.LBB2_54:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 4
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 4
	slli.d	$t4, $t3, 47
	bltz	$t4, .LBB2_28
	b	.LBB2_29
.LBB2_55:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -4
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -4
	slli.d	$t4, $t3, 49
	bgez	$t4, .LBB2_32
.LBB2_56:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -8
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -8
	slli.d	$t4, $t3, 50
	bgez	$t4, .LBB2_33
.LBB2_57:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -12
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -12
	slli.d	$t4, $t3, 51
	bgez	$t4, .LBB2_34
.LBB2_58:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -16
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -16
	slli.d	$t4, $t3, 52
	bgez	$t4, .LBB2_35
.LBB2_59:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -20
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -20
	andi	$t4, $t3, 1024
	beqz	$t4, .LBB2_36
.LBB2_60:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -24
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -24
	andi	$t4, $t3, 512
	beqz	$t4, .LBB2_37
.LBB2_61:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -28
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -28
	andi	$t4, $t3, 256
	bnez	$t4, .LBB2_38
	b	.LBB2_39
.LBB2_62:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -36
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -36
	andi	$t4, $t3, 64
	beqz	$t4, .LBB2_42
.LBB2_63:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -40
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -40
	andi	$t4, $t3, 32
	beqz	$t4, .LBB2_43
.LBB2_64:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -44
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -44
	andi	$t4, $t3, 16
	beqz	$t4, .LBB2_44
.LBB2_65:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -48
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -48
	andi	$t4, $t3, 8
	beqz	$t4, .LBB2_45
.LBB2_66:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -52
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -52
	andi	$t4, $t3, 4
	beqz	$t4, .LBB2_46
.LBB2_67:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -56
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -56
	andi	$t4, $t3, 2
	beqz	$t4, .LBB2_47
.LBB2_68:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, -60
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, -60
	andi	$t3, $t3, 1
	beqz	$t3, .LBB2_7
.LBB2_69:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t3, $t2, -64
	addi.d	$t3, $t3, 1
	st.w	$t3, $t2, -64
	b	.LBB2_7
.LBB2_70:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 60
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 60
	slli.d	$t4, $t3, 33
	bgez	$t4, .LBB2_12
.LBB2_71:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 56
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 56
	slli.d	$t4, $t3, 34
	bgez	$t4, .LBB2_13
.LBB2_72:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 52
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 52
	slli.d	$t4, $t3, 35
	bgez	$t4, .LBB2_14
.LBB2_73:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 48
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 48
	slli.d	$t4, $t3, 36
	bgez	$t4, .LBB2_15
.LBB2_74:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 44
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 44
	slli.d	$t4, $t3, 37
	bgez	$t4, .LBB2_16
.LBB2_75:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 40
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 40
	slli.d	$t4, $t3, 38
	bgez	$t4, .LBB2_17
.LBB2_76:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t4, $t2, 36
	addi.d	$t4, $t4, 1
	st.w	$t4, $t2, 36
	slli.d	$t4, $t3, 39
	bltz	$t4, .LBB2_18
	b	.LBB2_19
.LBB2_77:                               # %._crit_edge210
	ld.w	$a0, $s2, 4
	st.d	$zero, $s1, 32
	blez	$a0, .LBB2_92
# %bb.78:                               # %.lr.ph224
	move	$a0, $zero
	move	$t1, $zero
	move	$a4, $zero
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s2, 24
	ld.d	$a3, $s2, 16
	ld.d	$a5, $s1, 16
	ld.d	$a6, $s1, 24
	addi.d	$a7, $zero, -1
	lu12i.w	$t0, 7
	ori	$t2, $t0, 3328
	b	.LBB2_81
	.p2align	4, , 16
.LBB2_79:                               #   in Loop: Header=BB2_81 Depth=1
	move	$a7, $a0
	move	$a4, $t5
.LBB2_80:                               #   in Loop: Header=BB2_81 Depth=1
	stx.w	$t5, $a5, $t0
	addi.d	$t1, $t5, -1
	sltui	$t1, $t1, 1
	stx.w	$t1, $a6, $t0
	ld.w	$t0, $s1, 32
	slt	$t2, $zero, $t5
	ld.w	$t5, $s1, 36
	add.d	$t0, $t0, $t2
	ld.w	$t6, $s2, 4
	st.w	$t0, $s1, 32
	add.d	$t0, $t5, $t1
	addi.d	$a0, $a0, 1
	st.w	$t0, $s1, 36
	move	$t2, $t4
	move	$t1, $t3
	bge	$a0, $t6, .LBB2_93
.LBB2_81:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_85 Depth 2
	ld.w	$t3, $s2, 8
	slli.d	$t0, $a0, 2
	bge	$a0, $t3, .LBB2_83
# %bb.82:                               #   in Loop: Header=BB2_81 Depth=1
	slli.d	$t3, $a0, 3
	alsl.d	$t4, $a0, $fp, 3
	ldx.w	$t6, $fp, $t3
	ld.w	$t4, $t4, 4
	slt	$t3, $zero, $t6
	slt	$t5, $zero, $t4
	add.d	$t5, $t5, $t3
	add.w	$t3, $t4, $t6
	stx.w	$t3, $a1, $t0
	slt	$t7, $t4, $t6
	masknez	$t4, $t4, $t7
	maskeqz	$t6, $t6, $t7
	or	$t4, $t6, $t4
	b	.LBB2_86
	.p2align	4, , 16
.LBB2_83:                               #   in Loop: Header=BB2_81 Depth=1
	stx.w	$zero, $a1, $t0
	ldx.w	$t8, $a2, $t0
	ldx.w	$s0, $a3, $t0
	move	$t3, $zero
	move	$t5, $zero
	move	$t4, $zero
	blt	$t8, $s0, .LBB2_86
# %bb.84:                               # %.lr.ph216
                                        #   in Loop: Header=BB2_81 Depth=1
	move	$t3, $zero
	move	$t4, $zero
	move	$t5, $zero
	alsl.d	$t6, $a0, $a1, 2
	alsl.d	$t7, $s0, $fp, 2
	sub.d	$t8, $t8, $s0
	addi.d	$t8, $t8, 1
	.p2align	4, , 16
.LBB2_85:                               #   Parent Loop BB2_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s0, $t7, 0
	add.w	$t3, $t3, $s0
	st.w	$t3, $t6, 0
	ld.w	$s0, $t7, 0
	slt	$s0, $zero, $s0
	add.w	$t5, $t5, $s0
	slt	$s0, $t4, $t5
	maskeqz	$s3, $t5, $s0
	masknez	$t4, $t4, $s0
	or	$t4, $s3, $t4
	addi.w	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB2_85
.LBB2_86:                               # %.loopexit
                                        #   in Loop: Header=BB2_81 Depth=1
	addi.w	$t6, $a4, 0
	blt	$t6, $t5, .LBB2_79
# %bb.87:                               #   in Loop: Header=BB2_81 Depth=1
	bne	$t5, $t6, .LBB2_90
# %bb.88:                               #   in Loop: Header=BB2_81 Depth=1
	bge	$t1, $t3, .LBB2_91
# %bb.89:                               #   in Loop: Header=BB2_81 Depth=1
	move	$a7, $a0
	b	.LBB2_80
	.p2align	4, , 16
.LBB2_90:                               #   in Loop: Header=BB2_81 Depth=1
	move	$t3, $t1
	move	$t4, $t2
	b	.LBB2_80
.LBB2_91:                               #   in Loop: Header=BB2_81 Depth=1
	xor	$t3, $t3, $t1
	sltui	$t3, $t3, 1
	slt	$t6, $t4, $t2
	and	$t3, $t3, $t6
	masknez	$a7, $a7, $t3
	maskeqz	$t6, $a0, $t3
	or	$a7, $t6, $a7
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $t4, $t3
	or	$t4, $t3, $t2
	move	$t3, $t1
	b	.LBB2_80
.LBB2_92:
	addi.d	$a7, $zero, -1
.LBB2_93:                               # %._crit_edge225
	st.w	$a7, $s1, 40
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	massive_count, .Lfunc_end2-massive_count
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function binate_split_select
.LCPI3_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	binate_split_select
	.p2align	5
	.type	binate_split_select,@function
binate_split_select:                    # @binate_split_select
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a3
	move	$s0, $a2
	move	$s1, $a1
	pcalau12i	$a1, %got_pc_hi20(cdata)
	ld.d	$a1, $a1, %got_pc_lo12(cdata)
	ld.w	$fp, $a1, 40
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s5, $a1, %got_pc_lo12(cube)
	ld.d	$a1, $s5, 24
	slli.d	$s6, $fp, 2
	ldx.w	$s4, $a1, $s6
	ld.d	$a2, $s5, 72
	ld.d	$s3, $a0, 0
	ld.d	$a1, $s5, 88
	slli.d	$s7, $fp, 3
	ldx.d	$a2, $a2, $s7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 72
	ld.d	$a1, $s5, 88
	ldx.d	$a2, $a0, $s7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 16
	ldx.w	$a0, $a0, $s6
	addi.w	$a1, $s4, 1
	blt	$s4, $a0, .LBB3_8
# %bb.1:                                # %.lr.ph.preheader
	sub.w	$a3, $a1, $a0
	ori	$a2, $zero, 8
	bgeu	$a3, $a2, .LBB3_3
# %bb.2:
	move	$a5, $zero
	move	$a2, $a0
	b	.LBB3_6
.LBB3_3:                                # %vector.ph
	move	$a4, $a3
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI3_0)
	bstrins.d	$a4, $zero, 2, 0
	add.w	$a2, $a0, $a4
	vreplgr2vr.w	$vr1, $a0
	vadd.w	$vr1, $vr1, $vr0
	vrepli.b	$vr0, 0
	vrepli.b	$vr2, -1
	vrepli.w	$vr3, 1
	move	$a5, $a4
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr5, $vr1, 4
	vsrai.w	$vr6, $vr1, 5
	vsrai.w	$vr7, $vr5, 5
	vshuf4i.w	$vr8, $vr6, 50
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr6, $vr6, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vshuf4i.w	$vr9, $vr7, 50
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a6, $vr6, 0
	alsl.d	$a6, $a6, $s3, 2
	vpickve2gr.d	$a7, $vr6, 1
	alsl.d	$a7, $a7, $s3, 2
	vpickve2gr.d	$t0, $vr8, 0
	alsl.d	$t0, $t0, $s3, 2
	vpickve2gr.d	$t1, $vr8, 1
	alsl.d	$t1, $t1, $s3, 2
	vpickve2gr.d	$t2, $vr7, 0
	alsl.d	$t2, $t2, $s3, 2
	vpickve2gr.d	$t3, $vr7, 1
	alsl.d	$t3, $t3, $s3, 2
	vpickve2gr.d	$t4, $vr9, 0
	alsl.d	$t4, $t4, $s3, 2
	vpickve2gr.d	$t5, $vr9, 1
	alsl.d	$t5, $t5, $s3, 2
	ld.w	$a6, $a6, 4
	ld.w	$a7, $a7, 4
	ld.w	$t0, $t0, 4
	ld.w	$t1, $t1, 4
	vinsgr2vr.w	$vr6, $a6, 0
	vinsgr2vr.w	$vr6, $a7, 1
	vinsgr2vr.w	$vr6, $t0, 2
	vinsgr2vr.w	$vr6, $t1, 3
	ld.w	$a6, $t2, 4
	ld.w	$a7, $t3, 4
	ld.w	$t0, $t4, 4
	ld.w	$t1, $t5, 4
	vinsgr2vr.w	$vr7, $a6, 0
	vinsgr2vr.w	$vr7, $a7, 1
	vinsgr2vr.w	$vr7, $t0, 2
	vinsgr2vr.w	$vr7, $t1, 3
	vxor.v	$vr6, $vr6, $vr2
	vxor.v	$vr7, $vr7, $vr2
	vsrl.w	$vr6, $vr6, $vr1
	vsrl.w	$vr5, $vr7, $vr5
	vand.v	$vr6, $vr6, $vr3
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr0, $vr6, $vr0
	vadd.w	$vr4, $vr5, $vr4
	addi.w	$a5, $a5, -8
	vaddi.wu	$vr1, $vr1, 8
	bnez	$a5, .LBB3_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr4, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a5, $vr0, 0
	beq	$a3, $a4, .LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a3, $a2, 5
	alsl.d	$a3, $a3, $s3, 2
	ld.w	$a3, $a3, 4
	nor	$a3, $a3, $zero
	srl.w	$a3, $a3, $a2
	andi	$a3, $a3, 1
	addi.w	$a2, $a2, 1
	add.w	$a5, $a3, $a5
	bne	$a1, $a2, .LBB3_6
.LBB3_7:                                # %._crit_edge
	addi.w	$a2, $a5, 0
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB3_17
.LBB3_8:                                # %.preheader
	bge	$s4, $a0, .LBB3_13
.LBB3_9:                                # %._crit_edge59
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.w	$a0, $a0, 0
	and	$a0, $a0, $s2
	beqz	$a0, .LBB3_12
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(verbose_debug)
	ld.d	$a0, $a0, %got_pc_lo12(verbose_debug)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_12
# %bb.11:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_12:
	move	$a0, $fp
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB3_13:                               # %.lr.ph58.preheader
	ori	$a2, $zero, 1
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=1
	addi.w	$a0, $a0, 1
	beq	$a1, $a0, .LBB3_9
.LBB3_15:                               # %.lr.ph58
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a3, $a0, 5
	addi.d	$a3, $a3, 1
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $s3, $a3
	sll.w	$a4, $a2, $a0
	and	$a5, $a5, $a4
	bnez	$a5, .LBB3_14
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=1
	ldx.w	$a5, $s0, $a3
	or	$a4, $a5, $a4
	stx.w	$a4, $s0, $a3
	b	.LBB3_14
.LBB3_17:                               # %.lr.ph54.preheader
	bstrpick.d	$a2, $a5, 31, 1
	ori	$a3, $zero, 1
	b	.LBB3_19
	.p2align	4, , 16
.LBB3_18:                               #   in Loop: Header=BB3_19 Depth=1
	addi.w	$a4, $a2, 0
	addi.w	$a0, $a0, 1
	blez	$a4, .LBB3_8
.LBB3_19:                               # %.lr.ph54
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a4, $a0, 5
	addi.d	$a4, $a4, 1
	slli.d	$a4, $a4, 2
	ldx.w	$a6, $s3, $a4
	sll.w	$a5, $a3, $a0
	and	$a6, $a6, $a5
	bnez	$a6, .LBB3_18
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=1
	ldx.w	$a6, $s1, $a4
	addi.d	$a2, $a2, -1
	or	$a5, $a6, $a5
	stx.w	$a5, $s1, $a4
	b	.LBB3_18
.Lfunc_end3:
	.size	binate_split_select, .Lfunc_end3-binate_split_select
                                        # -- End function
	.globl	cube1list                       # -- Begin function cube1list
	.p2align	5
	.type	cube1list,@function
cube1list:                              # @cube1list
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 12
	slli.d	$a0, $a0, 3
	addi.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$s1, $a0, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $a1, .LBB4_2
# %bb.1:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB4_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a3, $s0, 0
	st.d	$a0, $fp, 0
	mul.w	$a2, $a3, $a1
	addi.d	$a0, $fp, 16
	blez	$a2, .LBB4_5
# %bb.3:                                # %.lr.ph
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a0, 8
	st.d	$a1, $a0, 0
	add.d	$a1, $a1, $a3
	move	$a0, $a4
	bltu	$a1, $a2, .LBB4_4
	b	.LBB4_6
.LBB4_5:
	move	$a4, $a0
.LBB4_6:                                # %._crit_edge
	addi.d	$a0, $a4, 8
	st.d	$zero, $a4, 0
	st.d	$a0, $fp, 8
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	cube1list, .Lfunc_end4-cube1list
                                        # -- End function
	.globl	cube2list                       # -- Begin function cube2list
	.p2align	5
	.type	cube2list,@function
cube2list:                              # @cube2list
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $a1, 12
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 3
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$s2, $a0, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB5_2
# %bb.1:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	ld.w	$a4, $s1, 0
	st.d	$a0, $fp, 0
	mul.w	$a0, $a4, $a1
	addi.d	$a1, $fp, 16
	blez	$a0, .LBB5_5
# %bb.3:                                # %.lr.ph
	ld.d	$a2, $s1, 24
	alsl.d	$a3, $a0, $a2, 2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a1, 8
	st.d	$a2, $a1, 0
	add.d	$a2, $a2, $a4
	move	$a1, $a0
	bltu	$a2, $a3, .LBB5_4
	b	.LBB5_6
.LBB5_5:
	move	$a0, $a1
.LBB5_6:                                # %._crit_edge
	ld.w	$a1, $s0, 12
	ld.w	$a3, $s0, 0
	mul.w	$a2, $a3, $a1
	blez	$a2, .LBB5_9
# %bb.7:                                # %.lr.ph36
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a0, 8
	st.d	$a1, $a0, 0
	add.d	$a1, $a1, $a3
	move	$a0, $a4
	bltu	$a1, $a2, .LBB5_8
	b	.LBB5_10
.LBB5_9:
	move	$a4, $a0
.LBB5_10:                               # %._crit_edge37
	addi.d	$a0, $a4, 8
	st.d	$zero, $a4, 0
	st.d	$a0, $fp, 8
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	cube2list, .Lfunc_end5-cube2list
                                        # -- End function
	.globl	cube3list                       # -- Begin function cube3list
	.p2align	5
	.type	cube3list,@function
cube3list:                              # @cube3list
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $a1, 12
	ld.w	$a2, $a2, 12
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 3
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$s3, $a0, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s3, $a1, .LBB6_2
# %bb.1:
	addi.d	$a0, $s3, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB6_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	ld.w	$a4, $s2, 0
	st.d	$a0, $fp, 0
	mul.w	$a0, $a4, $a1
	addi.d	$a1, $fp, 16
	blez	$a0, .LBB6_5
# %bb.3:                                # %.lr.ph
	ld.d	$a2, $s2, 24
	alsl.d	$a3, $a0, $a2, 2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a1, 8
	st.d	$a2, $a1, 0
	add.d	$a2, $a2, $a4
	move	$a1, $a0
	bltu	$a2, $a3, .LBB6_4
	b	.LBB6_6
.LBB6_5:
	move	$a0, $a1
.LBB6_6:                                # %._crit_edge
	ld.w	$a2, $s1, 12
	ld.w	$a1, $s1, 0
	mul.w	$a3, $a1, $a2
	blez	$a3, .LBB6_9
# %bb.7:                                # %.lr.ph49
	ld.d	$a2, $s1, 24
	alsl.d	$a3, $a3, $a2, 2
	slli.d	$a4, $a1, 2
	.p2align	4, , 16
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	add.d	$a2, $a2, $a4
	move	$a0, $a1
	bltu	$a2, $a3, .LBB6_8
	b	.LBB6_10
.LBB6_9:
	move	$a1, $a0
.LBB6_10:                               # %._crit_edge50
	ld.w	$a0, $s0, 12
	ld.w	$a3, $s0, 0
	mul.w	$a2, $a3, $a0
	blez	$a2, .LBB6_13
# %bb.11:                               # %.lr.ph55
	ld.d	$a0, $s0, 24
	alsl.d	$a2, $a2, $a0, 2
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a1, 8
	st.d	$a0, $a1, 0
	add.d	$a0, $a0, $a3
	move	$a1, $a4
	bltu	$a0, $a2, .LBB6_12
	b	.LBB6_14
.LBB6_13:
	move	$a4, $a1
.LBB6_14:                               # %._crit_edge56
	addi.d	$a0, $a4, 8
	st.d	$zero, $a4, 0
	st.d	$a0, $fp, 8
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	cube3list, .Lfunc_end6-cube3list
                                        # -- End function
	.globl	cubeunlist                      # -- Begin function cubeunlist
	.p2align	5
	.type	cubeunlist,@function
cubeunlist:                             # @cubeunlist
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s0, $fp, 0
	sub.d	$a0, $a0, $fp
	srai.d	$a0, $a0, 3
	addi.d	$a0, $a0, -3
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$t2, $fp, 16
	beqz	$t2, .LBB7_12
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a0, 24
	move	$a2, $zero
	move	$a3, $zero
	addi.d	$a4, $a1, -12
	addi.d	$a5, $s0, -12
	ori	$a6, $zero, 2
	ori	$a7, $zero, 8
	ori	$t0, $zero, 1
	ori	$t1, $zero, 32
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %.loopexit
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$a6, $a6, 1
	slli.d	$t2, $a6, 3
	ldx.d	$t2, $fp, $t2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	beqz	$t2, .LBB7_12
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #     Child Loop BB7_6 Depth 2
	ld.w	$t5, $a0, 0
	addi.d	$t3, $a6, -2
	mul.d	$t3, $t3, $t5
	slli.d	$t3, $t3, 2
	ldx.wu	$t4, $a1, $t3
	ld.wu	$t6, $t2, 0
	srli.d	$t4, $t4, 10
	andi	$s1, $t6, 1023
	bstrins.d	$t6, $t4, 63, 10
	stx.w	$t6, $a1, $t3
	sltu	$t3, $zero, $s1
	sub.d	$t3, $s1, $t3
	addi.d	$t4, $t3, 1
	mul.d	$t3, $a2, $t5
	bgeu	$t4, $a7, .LBB7_7
.LBB7_4:                                #   in Loop: Header=BB7_3 Depth=1
	move	$t5, $s1
.LBB7_5:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$t4, $t5, 1
	alsl.d	$t3, $t5, $t3, 2
	add.d	$t3, $a1, $t3
	alsl.d	$t6, $t5, $s0, 2
	alsl.d	$t2, $t5, $t2, 2
	.p2align	4, , 16
.LBB7_6:                                # %scalar.ph
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t2, 0
	ld.w	$t7, $t6, 0
	or	$t5, $t7, $t5
	st.w	$t5, $t3, 0
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, -4
	addi.d	$t6, $t6, -4
	addi.d	$t2, $t2, -4
	bltu	$t0, $t4, .LBB7_6
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_7:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_3 Depth=1
	mul.d	$t5, $a3, $t5
	alsl.d	$t5, $t5, $a1, 2
	sub.d	$t6, $t2, $t5
	bltu	$t6, $t1, .LBB7_4
# %bb.8:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_3 Depth=1
	sub.d	$t5, $s0, $t5
	bltu	$t5, $t1, .LBB7_4
# %bb.9:                                # %vector.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$t6, $t4
	bstrins.d	$t6, $zero, 2, 0
	sub.d	$t5, $s1, $t6
	alsl.d	$t7, $s1, $t2, 2
	addi.d	$t7, $t7, -12
	alsl.d	$t8, $s1, $t3, 2
	add.d	$t8, $a4, $t8
	alsl.d	$s1, $s1, $a5, 2
	move	$s2, $t6
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, 0
	vld	$vr1, $t7, -16
	vld	$vr2, $s1, 0
	vld	$vr3, $s1, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $t8, 0
	vst	$vr1, $t8, -16
	addi.d	$s2, $s2, -8
	addi.d	$t7, $t7, -32
	addi.d	$t8, $t8, -32
	addi.d	$s1, $s1, -32
	bnez	$s2, .LBB7_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB7_3 Depth=1
	beq	$t4, $t6, .LBB7_2
	b	.LBB7_5
.LBB7_12:                               # %._crit_edge
	ld.d	$a1, $fp, 8
	sub.d	$a1, $a1, $fp
	srli.d	$a1, $a1, 3
	addi.d	$a1, $a1, -3
	st.w	$a1, $a0, 12
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	cubeunlist, .Lfunc_end7-cubeunlist
                                        # -- End function
	.globl	simplify_cubelist               # -- Begin function simplify_cubelist
	.p2align	5
	.type	simplify_cubelist,@function
simplify_cubelist:                      # @simplify_cubelist
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $a0, 80
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	sub.d	$a0, $a0, $s0
	srli.d	$a0, $a0, 3
	addi.w	$s1, $a0, -3
	addi.d	$fp, $s0, 16
	pcalau12i	$a0, %got_pc_hi20(d1_order)
	ld.d	$a3, $a0, %got_pc_lo12(d1_order)
	ori	$a2, $zero, 8
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	blt	$s1, $a0, .LBB8_5
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s0, $s0, 24
	addi.d	$s1, $s1, -3
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	beqz	$s1, .LBB8_5
.LBB8_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s0, -8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(d1_order)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $s0, 0
	addi.d	$a1, $fp, 8
	st.d	$a0, $fp, 0
	move	$fp, $a1
	b	.LBB8_2
.LBB8_5:                                # %._crit_edge
	addi.d	$a0, $fp, 8
	st.d	$zero, $fp, 0
	st.d	$a0, $fp, 16
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	simplify_cubelist, .Lfunc_end8-simplify_cubelist
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"BINATE_SPLIT_SELECT: split against %d\n"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cl=%s\ncr=%s\n"
	.size	.L.str.1, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym d1_order
