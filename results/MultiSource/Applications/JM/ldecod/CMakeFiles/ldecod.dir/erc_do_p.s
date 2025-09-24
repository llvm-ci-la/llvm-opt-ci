	.file	"erc_do_p.c"
	.text
	.globl	ercConcealInterFrame            # -- Begin function ercConcealInterFrame
	.p2align	5
	.type	ercConcealInterFrame,@function
ercConcealInterFrame:                   # @ercConcealInterFrame
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
	move	$fp, $a4
	beqz	$a4, .LBB0_5
# %bb.1:
	move	$a4, $a0
	ld.w	$a0, $fp, 64
	beqz	$a0, .LBB0_5
# %bb.2:
	move	$s0, $a2
	ld.w	$a2, $fp, 60
	ori	$a0, $zero, 1
	beqz	$a2, .LBB0_44
# %bb.3:
	move	$s2, $a3
	beqz	$a5, .LBB0_6
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	lu12i.w	$a3, 1
	ori	$a2, $a3, 1836
	ldx.w	$a2, $a0, $a2
	ori	$a3, $a3, 1840
	ldx.w	$a0, $a0, $a3
	mul.d	$a0, $a2, $a0
	slli.w	$a0, $a0, 1
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 512
	b	.LBB0_7
.LBB0_5:
	move	$a0, $zero
	b	.LBB0_44
.LBB0_6:
	ori	$a0, $zero, 512
.LBB0_7:
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	bnez	$a0, .LBB0_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_9:
	srai.d	$s1, $s0, 4
	blez	$s1, .LBB0_43
# %bb.10:                               # %.lr.ph170
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	srai.d	$s2, $s2, 4
	srli.d	$a0, $s0, 2
	lu12i.w	$a1, 262143
	ori	$a1, $a1, 4094
	and	$t0, $a0, $a1
	slli.d	$a0, $s2, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$t1, $zero, 2
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %._crit_edge167
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beq	$a0, $s1, .LBB0_43
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_18 Depth 3
                                        #       Child Loop BB0_32 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_39 Depth 3
	blez	$s2, .LBB0_11
# %bb.13:                               # %.lr.ph166
                                        #   in Loop: Header=BB0_12 Depth=1
	move	$s5, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	andi	$a0, $a1, 1
	sltui	$a0, $a0, 1
	bstrpick.d	$a1, $a1, 31, 1
	nor	$a2, $a1, $zero
	add.d	$a2, $s1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.w	$a2, $a0, 1
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=2
	move	$a0, $s5
	move	$a2, $t2
.LBB0_15:                               # %.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.w	$s5, $a0, 1
	bge	$s5, $s2, .LBB0_11
.LBB0_16:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_18 Depth 3
                                        #       Child Loop BB0_32 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_39 Depth 3
	ld.d	$a0, $fp, 8
	mul.d	$a1, $t0, $s5
	move	$t2, $a2
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	ori	$a2, $zero, 1
	blt	$a2, $a1, .LBB0_14
# %bb.17:                               # %.preheader155.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a3, $zero
	addi.d	$a2, $s5, -1
	addi.d	$a1, $s5, 1
	mul.d	$a4, $t0, $a1
	add.w	$a4, $t2, $a4
	mul.d	$a5, $s1, $s5
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	add.w	$s7, $a6, $a5
	slli.w	$a5, $s5, 1
	move	$a6, $s7
	.p2align	4, , 16
.LBB0_18:                               # %.preheader155
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a7, $a2, 2
	bge	$a7, $s2, .LBB0_28
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=3
	move	$s4, $a3
	move	$s8, $a6
	move	$s3, $a5
	slli.d	$a3, $a4, 2
	ldx.w	$a7, $a0, $a3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $s4, -1
	add.w	$a4, $a4, $t0
	add.w	$a6, $a6, $s1
	addi.w	$a5, $a5, 2
	blt	$a7, $t1, .LBB0_18
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	nor	$a0, $a3, $zero
	add.w	$s6, $a0, $s5
	bge	$s6, $s2, .LBB0_28
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a0, $s5, $a3
	beqz	$s5, .LBB0_35
# %bb.22:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $t2
	blt	$s6, $s5, .LBB0_15
# %bb.23:                               # %.lr.ph161.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s7, $zero
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_24:                               #   in Loop: Header=BB0_26 Depth=3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(concealByCopy)
	jirl	$ra, $ra, 0
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=3
	sub.d	$s6, $s6, $s8
	xori	$a0, $s8, 1
	add.d	$s5, $a0, $s5
	addi.w	$a1, $zero, -1
	move	$a0, $s3
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(ercMarkCurrMBConcealed)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 1
	add.w	$a0, $s4, $s7
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_42
.LBB0_26:                               # %.lr.ph161
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s8, $s7, 1
	masknez	$a0, $s5, $s8
	ld.d	$a3, $fp, 8
	maskeqz	$a1, $s6, $s8
	or	$s3, $a1, $a0
	slli.w	$a1, $s3, 1
	addi.d	$a0, $sp, 88
	ori	$a6, $zero, 2
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(ercCollect8PredBlocks)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(erc_mvperMB)
	ld.d	$a0, $a0, %got_pc_lo12(erc_mvperMB)
	ld.w	$a0, $a0, 0
	mul.d	$a1, $s3, $s1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.w	$s3, $a1, $a2
	ori	$a1, $zero, 8
	blt	$a0, $a1, .LBB0_24
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=3
	ld.d	$a6, $fp, 8
	addi.d	$a4, $sp, 88
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	move	$a5, $s0
	pcaddu18i	$ra, %call36(concealByTrial)
	jirl	$ra, $ra, 0
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_28:                               # %.preheader153
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a0, $s2
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $t2
	bge	$s5, $s2, .LBB0_15
# %bb.29:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	slli.w	$s3, $s5, 1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_32 Depth=3
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(concealByCopy)
	jirl	$ra, $ra, 0
.LBB0_31:                               #   in Loop: Header=BB0_32 Depth=3
	addi.w	$a1, $zero, -1
	move	$a0, $s7
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(ercMarkCurrMBConcealed)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, 1
	add.w	$s7, $s7, $s1
	addi.w	$s3, $s3, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beq	$s2, $s5, .LBB0_34
.LBB0_32:                               # %.lr.ph
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $fp, 8
	addi.d	$a0, $sp, 88
	ori	$a6, $zero, 2
	move	$a1, $s3
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(ercCollect8PredBlocks)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(erc_mvperMB)
	ld.d	$a0, $a0, %got_pc_lo12(erc_mvperMB)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 8
	blt	$a0, $a1, .LBB0_30
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=3
	ld.d	$a6, $fp, 8
	addi.d	$a4, $sp, 88
	move	$a0, $s6
	move	$a1, $s8
	move	$a2, $s7
	move	$a3, $s4
	move	$a5, $s0
	pcaddu18i	$ra, %call36(concealByTrial)
	jirl	$ra, $ra, 0
	b	.LBB0_31
.LBB0_34:                               #   in Loop: Header=BB0_16 Depth=2
	move	$a0, $s2
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	ori	$t1, $zero, 2
	b	.LBB0_15
.LBB0_35:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$s7, $a0
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	bltz	$a2, .LBB0_41
# %bb.36:                               # %.lr.ph163.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$s4, $a1, $s4
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_37:                               #   in Loop: Header=BB0_39 Depth=3
	move	$a0, $s6
	move	$a1, $s8
	move	$a2, $s5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(concealByCopy)
	jirl	$ra, $ra, 0
.LBB0_38:                               #   in Loop: Header=BB0_39 Depth=3
	addi.w	$a1, $zero, -1
	move	$a0, $s8
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(ercMarkCurrMBConcealed)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	sub.w	$s8, $s8, $s1
	addi.w	$s3, $s3, -2
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	blez	$s4, .LBB0_41
.LBB0_39:                               # %.lr.ph163
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $fp, 8
	addi.d	$a0, $sp, 88
	ori	$a6, $zero, 2
	move	$a1, $s3
	move	$a2, $t2
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(ercCollect8PredBlocks)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(erc_mvperMB)
	ld.d	$a0, $a0, %got_pc_lo12(erc_mvperMB)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 8
	blt	$a0, $a1, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=3
	ld.d	$a6, $fp, 8
	addi.d	$a4, $sp, 88
	move	$a0, $s6
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s8
	move	$a3, $s5
	move	$a5, $s0
	pcaddu18i	$ra, %call36(concealByTrial)
	jirl	$ra, $ra, 0
	b	.LBB0_38
.LBB0_41:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	ori	$t1, $zero, 2
	move	$a2, $t2
	move	$a0, $s7
	b	.LBB0_15
.LBB0_42:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	ori	$t1, $zero, 2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	b	.LBB0_15
.LBB0_43:                               # %._crit_edge171
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB0_44:
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
	.size	ercConcealInterFrame, .Lfunc_end0-ercConcealInterFrame
                                        # -- End function
	.p2align	5                               # -- Begin function concealByTrial
	.type	concealByTrial,@function
concealByTrial:                         # @concealByTrial
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a4
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $zero
	move	$s8, $zero
	move	$t0, $zero
	srai.d	$a0, $a5, 4
	slli.w	$a1, $a2, 2
	slli.d	$a4, $a1, 4
	alsl.d	$a1, $a1, $a4, 3
	add.d	$a6, $a3, $a1
	div.w	$a1, $a2, $a0
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	srai.d	$a5, $a5, 3
	mul.d	$a4, $a5, $a1
	slli.d	$a4, $a4, 1
	mul.d	$a1, $a1, $a0
	sub.w	$a1, $a2, $a1
	alsl.d	$a1, $a1, $a4, 1
	addi.w	$a4, $a1, 0
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	div.w	$a4, $a4, $a5
	mul.d	$a5, $a4, $a5
	sub.d	$a1, $a1, $a5
	slli.d	$a1, $a1, 3
	st.w	$a1, $a6, 4
	slli.d	$a1, $a4, 3
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.w	$a1, $a6, 8
	addi.d	$a1, $a2, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	add.d	$a1, $a0, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	sub.d	$a0, $a2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a2, $zero, 3
	ori	$a4, $zero, 32
	ori	$a5, $zero, 6
	ori	$a6, $zero, 2
	ori	$s7, $zero, 3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s2, $zero
	ori	$s4, $zero, 16
	ori	$s0, $zero, 4
	b	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=2
	move	$s2, $s1
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=2
	addi.d	$s4, $s4, 4
	addi.w	$s0, $s0, 1
	beq	$s4, $a4, .LBB1_56
.LBB1_4:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a0, $s6, $s4
	blt	$a0, $s7, .LBB1_3
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=2
	addi.d	$a0, $s0, -4
	bltu	$a2, $a0, .LBB1_11
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=2
	ori	$s8, $zero, 2
	ori	$fp, $zero, 3
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB1_11
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=2
	move	$s8, $zero
	ori	$fp, $zero, 1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB1_11
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=2
	move	$s8, $zero
	ori	$fp, $zero, 2
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB1_11
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=2
	ori	$s8, $zero, 1
	ori	$fp, $zero, 3
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_11:                               #   in Loop: Header=BB1_4 Depth=2
	slli.w	$a0, $t0, 2
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	ldx.bu	$s5, $a3, $a0
	add.d	$s3, $a3, $a0
	bltu	$s5, $a2, .LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=2
	slli.d	$a0, $s8, 4
	alsl.d	$a0, $s8, $a0, 3
	ldx.bu	$a0, $s3, $a0
	beq	$a0, $a5, .LBB1_3
# %bb.13:                               #   in Loop: Header=BB1_4 Depth=2
	slli.d	$a0, $fp, 4
	alsl.d	$a0, $fp, $a0, 3
	ldx.bu	$a0, $s3, $a0
	beq	$a0, $a5, .LBB1_3
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=2
	beq	$s5, $a6, .LBB1_3
.LBB1_15:                               # %.peel.begin
                                        #   in Loop: Header=BB1_4 Depth=2
	ld.bu	$a0, $s3, 0
	bgeu	$a6, $a0, .LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_4 Depth=2
	slli.d	$a0, $s8, 4
	alsl.d	$a0, $s8, $a0, 3
	ldx.bu	$a1, $s3, $a0
	beq	$a1, $a5, .LBB1_20
# %bb.17:                               #   in Loop: Header=BB1_4 Depth=2
	move	$a0, $s8
	ori	$a7, $zero, 4
	beq	$a1, $a7, .LBB1_21
	b	.LBB1_24
.LBB1_18:                               #   in Loop: Header=BB1_4 Depth=2
	beqz	$a0, .LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_4 Depth=2
	bne	$a0, $a6, .LBB1_23
.LBB1_20:                               #   in Loop: Header=BB1_4 Depth=2
	move	$s1, $s2
	b	.LBB1_35
.LBB1_21:                               #   in Loop: Header=BB1_4 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_25
# %bb.22:                               #   in Loop: Header=BB1_4 Depth=2
	move	$s1, $s2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB1_35
.LBB1_23:                               #   in Loop: Header=BB1_4 Depth=2
	move	$a0, $zero
.LBB1_24:                               # %._crit_edge.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $s3, $a0
	ld.d	$a2, $a0, 12
	ld.w	$a1, $a0, 20
	st.d	$a2, $sp, 136
	b	.LBB1_26
.LBB1_25:                               #   in Loop: Header=BB1_4 Depth=2
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $zero
	st.d	$zero, $sp, 136
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
.LBB1_26:                               #   in Loop: Header=BB1_4 Depth=2
	pcalau12i	$a0, %pc_hi20(erc_img)
	ld.d	$a0, $a0, %pc_lo12(erc_img)
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a3, 4
	ld.w	$a3, $a3, 8
	st.w	$a1, $sp, 144
	addi.d	$a1, $sp, 136
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s1
	pcaddu18i	$ra, %call36(buildPredRegionYUV)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $s1
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(edgeDistortion)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$s1, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s6, $a0, .LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_4 Depth=2
	bnez	$s2, .LBB1_34
.LBB1_28:                               # %.preheader235.preheader.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	ld.w	$a1, $sp, 144
	ld.d	$a2, $sp, 136
	ld.bu	$a0, $s3, 0
	st.w	$a1, $sp, 160
	st.d	$a2, $sp, 152
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB1_31
# %bb.29:                               #   in Loop: Header=BB1_4 Depth=2
	slli.d	$a0, $s8, 4
	alsl.d	$a0, $s8, $a0, 3
	ldx.bu	$a0, $s3, $a0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_32
.LBB1_30:                               #   in Loop: Header=BB1_4 Depth=2
	move	$a0, $zero
	b	.LBB1_33
.LBB1_31:                               #   in Loop: Header=BB1_4 Depth=2
	beqz	$a0, .LBB1_30
.LBB1_32:                               #   in Loop: Header=BB1_4 Depth=2
	ori	$a0, $zero, 1
.LBB1_33:                               #   in Loop: Header=BB1_4 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.b	$a0, $a1, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(copyPredMB)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
.LBB1_34:                               #   in Loop: Header=BB1_4 Depth=2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 3
	ori	$a4, $zero, 32
	ori	$a5, $zero, 6
	ori	$a6, $zero, 2
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
.LBB1_35:                               #   in Loop: Header=BB1_4 Depth=2
	sltu	$a0, $a6, $s5
	xor	$a1, $s8, $fp
	sltu	$a1, $zero, $a1
	and	$a0, $a1, $a0
	beqz	$a0, .LBB1_2
# %bb.36:                               # %.peel.newph
                                        #   in Loop: Header=BB1_4 Depth=2
	ld.bu	$a0, $s3, 0
	slli.d	$a1, $fp, 4
	alsl.d	$a1, $fp, $a1, 3
	add.d	$s5, $s3, $a1
	bltu	$a0, $a2, .LBB1_39
# %bb.37:                               #   in Loop: Header=BB1_4 Depth=2
	ld.bu	$a1, $s5, 0
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB1_41
# %bb.38:                               #   in Loop: Header=BB1_4 Depth=2
	move	$a0, $fp
	beq	$a1, $a5, .LBB1_2
	b	.LBB1_44
.LBB1_39:                               #   in Loop: Header=BB1_4 Depth=2
	beq	$a0, $a6, .LBB1_2
# %bb.40:                               #   in Loop: Header=BB1_4 Depth=2
	bnez	$a0, .LBB1_43
.LBB1_41:                               #   in Loop: Header=BB1_4 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_45
# %bb.42:                               #   in Loop: Header=BB1_4 Depth=2
	move	$s2, $s1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB1_3
.LBB1_43:                               #   in Loop: Header=BB1_4 Depth=2
	move	$a0, $zero
.LBB1_44:                               # %._crit_edge
                                        #   in Loop: Header=BB1_4 Depth=2
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $s3, $a0
	ld.d	$a2, $a0, 12
	ld.w	$a1, $a0, 20
	st.d	$a2, $sp, 136
	b	.LBB1_46
.LBB1_45:                               #   in Loop: Header=BB1_4 Depth=2
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $zero
	st.d	$zero, $sp, 136
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
.LBB1_46:                               #   in Loop: Header=BB1_4 Depth=2
	pcalau12i	$a0, %pc_hi20(erc_img)
	ld.d	$a0, $a0, %pc_lo12(erc_img)
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a3, 4
	ld.w	$a3, $a3, 8
	st.w	$a1, $sp, 144
	addi.d	$a1, $sp, 136
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(buildPredRegionYUV)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(edgeDistortion)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s6, $a0, .LBB1_49
# %bb.47:                               #   in Loop: Header=BB1_4 Depth=2
	beqz	$s1, .LBB1_49
# %bb.48:                               #   in Loop: Header=BB1_4 Depth=2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 3
	ori	$a4, $zero, 32
	ori	$a5, $zero, 6
	ori	$a6, $zero, 2
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB1_55
.LBB1_49:                               # %.preheader235.preheader
                                        #   in Loop: Header=BB1_4 Depth=2
	ld.w	$a1, $sp, 144
	ld.d	$a2, $sp, 136
	ld.bu	$a0, $s3, 0
	st.w	$a1, $sp, 160
	st.d	$a2, $sp, 152
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB1_52
# %bb.50:                               #   in Loop: Header=BB1_4 Depth=2
	ld.bu	$a0, $s5, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_53
.LBB1_51:                               #   in Loop: Header=BB1_4 Depth=2
	move	$a0, $zero
	b	.LBB1_54
.LBB1_52:                               #   in Loop: Header=BB1_4 Depth=2
	beqz	$a0, .LBB1_51
.LBB1_53:                               #   in Loop: Header=BB1_4 Depth=2
	ori	$a0, $zero, 1
.LBB1_54:                               #   in Loop: Header=BB1_4 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.b	$a0, $a1, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(copyPredMB)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 3
	ori	$a4, $zero, 32
	ori	$a5, $zero, 6
	ori	$a6, $zero, 2
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ori	$s2, $zero, 1
.LBB1_55:                               # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=2
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_56:                               #   in Loop: Header=BB1_1 Depth=1
	addi.w	$a0, $s7, -3
	addi.w	$a1, $zero, -3
	bltu	$a1, $a0, .LBB1_58
# %bb.57:                               #   in Loop: Header=BB1_1 Depth=1
	ori	$s7, $zero, 2
	beqz	$s2, .LBB1_1
.LBB1_58:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_62
# %bb.59:
	pcalau12i	$a0, %pc_hi20(erc_img)
	ld.d	$a0, $a0, %pc_lo12(erc_img)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 4
	ld.w	$a3, $a1, 8
	st.d	$zero, $sp, 136
	st.w	$zero, $sp, 144
	addi.d	$a1, $sp, 136
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(buildPredRegionYUV)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(edgeDistortion)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB1_61
# %bb.60:
	bnez	$s2, .LBB1_62
.LBB1_61:                               # %.preheader.preheader
	ld.w	$a0, $sp, 144
	ld.d	$a1, $sp, 136
	st.w	$a0, $sp, 160
	st.d	$a1, $sp, 152
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(copyPredMB)
	jirl	$ra, $ra, 0
.LBB1_62:
	ld.w	$a0, $sp, 160
	ld.d	$a1, $sp, 152
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a2, 20
	st.d	$a1, $a2, 12
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	stx.w	$a1, $a2, $a0
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end1:
	.size	concealByTrial, .Lfunc_end1-concealByTrial
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function concealByCopy
	.type	concealByCopy,@function
concealByCopy:                          # @concealByCopy
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
	slli.w	$a4, $a1, 2
	slli.d	$a5, $a4, 4
	alsl.d	$a4, $a4, $a5, 3
	add.d	$a5, $a2, $a4
	stx.b	$zero, $a2, $a4
	srai.d	$a2, $a3, 4
	div.w	$a4, $a1, $a2
	mul.d	$a2, $a4, $a2
	sub.w	$a1, $a1, $a2
	slli.d	$a2, $a1, 4
	st.w	$a2, $a5, 4
	slli.d	$a2, $a4, 4
	st.w	$a2, $a5, 8
	srai.d	$a5, $a3, 3
	mul.d	$a2, $a5, $a4
	slli.d	$a2, $a2, 1
	alsl.d	$a4, $a1, $a2, 1
	addi.w	$a6, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	ld.d	$a1, $a1, 0
	ld.d	$t0, $a1, 0
	lu12i.w	$a2, 77
	ori	$t1, $a2, 1528
	add.d	$a1, $t0, $t1
	div.w	$a6, $a6, $a5
	mul.d	$a5, $a6, $a5
	sub.d	$a4, $a4, $a5
	slli.w	$a7, $a4, 3
	slli.w	$a4, $a6, 3
	ori	$a5, $zero, 16
	alsl.w	$a5, $a6, $a5, 3
	ldx.d	$a6, $t0, $t1
	ld.d	$t0, $a0, 0
	addi.d	$t2, $a7, 1
	addi.d	$t3, $a7, 2
	addi.d	$t4, $a7, 3
	addi.d	$t5, $a7, 4
	addi.d	$t6, $a7, 5
	addi.d	$t7, $a7, 6
	addi.d	$t8, $a7, 7
	addi.d	$fp, $a7, 8
	addi.d	$s0, $a7, 9
	addi.d	$s1, $a7, 10
	addi.d	$s2, $a7, 11
	addi.d	$s3, $a7, 12
	addi.d	$s4, $a7, 13
	addi.d	$s5, $a7, 14
	addi.d	$s6, $a7, 15
	alsl.d	$a6, $a4, $a6, 3
	mul.d	$t1, $a3, $a4
	slli.d	$t1, $t1, 1
	alsl.d	$t1, $a7, $t1, 1
	add.d	$t0, $t1, $t0
	addi.d	$t0, $t0, 16
	slli.d	$t1, $a3, 1
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 1
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 1
	slli.d	$t7, $t7, 1
	slli.d	$t8, $t8, 1
	slli.d	$fp, $fp, 1
	slli.d	$s0, $s0, 1
	slli.d	$s1, $s1, 1
	slli.d	$s2, $s2, 1
	slli.d	$s3, $s3, 1
	slli.d	$s4, $s4, 1
	slli.d	$s5, $s5, 1
	slli.d	$s6, $s6, 1
	move	$s7, $a4
	.p2align	4, , 16
.LBB2_1:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $a6, 0
	slli.d	$ra, $a7, 1
	ldx.h	$ra, $s8, $ra
	st.h	$ra, $t0, -16
	ldx.h	$ra, $s8, $t2
	st.h	$ra, $t0, -14
	ldx.h	$ra, $s8, $t3
	st.h	$ra, $t0, -12
	ldx.h	$ra, $s8, $t4
	st.h	$ra, $t0, -10
	ldx.h	$ra, $s8, $t5
	st.h	$ra, $t0, -8
	ldx.h	$ra, $s8, $t6
	st.h	$ra, $t0, -6
	ldx.h	$ra, $s8, $t7
	st.h	$ra, $t0, -4
	ldx.h	$ra, $s8, $t8
	st.h	$ra, $t0, -2
	ldx.h	$ra, $s8, $fp
	st.h	$ra, $t0, 0
	ldx.h	$ra, $s8, $s0
	st.h	$ra, $t0, 2
	ldx.h	$ra, $s8, $s1
	st.h	$ra, $t0, 4
	ldx.h	$ra, $s8, $s2
	st.h	$ra, $t0, 6
	ldx.h	$ra, $s8, $s3
	st.h	$ra, $t0, 8
	ldx.h	$ra, $s8, $s4
	st.h	$ra, $t0, 10
	ldx.h	$ra, $s8, $s5
	st.h	$ra, $t0, 12
	ldx.h	$s8, $s8, $s6
	st.h	$s8, $t0, 14
	addi.d	$s7, $s7, 1
	addi.d	$a6, $a6, 8
	add.d	$t0, $t0, $t1
	blt	$s7, $a5, .LBB2_1
# %bb.2:
	pcalau12i	$a6, %got_pc_hi20(dec_picture)
	ld.d	$a6, $a6, %got_pc_lo12(dec_picture)
	ld.d	$a6, $a6, 0
	ori	$a2, $a2, 1652
	ldx.w	$a6, $a6, $a2
	pcalau12i	$a2, %pc_hi20(uv_div)
	addi.d	$t0, $a2, %pc_lo12(uv_div)
	alsl.d	$a2, $a6, $t0, 2
	ld.wu	$t1, $a2, 16
	sra.w	$a2, $a4, $t1
	sra.w	$a4, $a5, $t1
	bge	$a2, $a4, .LBB2_23
# %bb.3:                                # %.lr.ph52.i
	slli.d	$a5, $a6, 2
	ldx.wu	$a5, $t0, $a5
	sra.w	$a6, $a7, $a5
	addi.d	$a7, $a7, 16
	sra.w	$a7, $a7, $a5
	sub.d	$t0, $a7, $a6
	move	$t1, $t0
	bstrins.d	$t1, $zero, 3, 0
	add.d	$t2, $t1, $a6
	andi	$t3, $t0, 8
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	move	$t4, $t0
	bstrins.d	$t4, $zero, 2, 0
	add.d	$t5, $t4, $a6
	slli.d	$t3, $a6, 1
	addi.d	$t6, $t3, 16
	sub.d	$t7, $zero, $t4
	ori	$t8, $zero, 8
	ori	$fp, $zero, 32
	ori	$s0, $zero, 16
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %._crit_edge.i
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a4, .LBB2_23
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_20 Depth 2
                                        #     Child Loop BB2_17 Depth 2
                                        #     Child Loop BB2_8 Depth 2
	bge	$a6, $a7, .LBB2_4
# %bb.6:                                # %iter.check
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$t3, $a1, 8
	ld.d	$s1, $t3, 0
	ld.d	$t3, $t3, 8
	slli.d	$s3, $a2, 3
	ldx.d	$s2, $s1, $s3
	ld.d	$s1, $a0, 8
	ldx.d	$s4, $t3, $s3
	ld.d	$s3, $a0, 16
	mul.d	$t3, $a3, $a2
	sra.w	$s5, $t3, $a5
	move	$s7, $a6
	bgeu	$t0, $t8, .LBB2_9
.LBB2_7:                                # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$s6, $a7, $s7
	alsl.d	$s4, $s7, $s4, 1
	alsl.d	$s2, $s7, $s2, 1
	add.d	$t3, $s7, $s5
	alsl.d	$s3, $t3, $s3, 1
	alsl.d	$t3, $t3, $s1, 1
	.p2align	4, , 16
.LBB2_8:                                # %vec.epilog.scalar.ph
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s1, $s2, 0
	st.h	$s1, $t3, 0
	ld.h	$s1, $s4, 0
	st.h	$s1, $s3, 0
	addi.d	$s6, $s6, -1
	addi.d	$s4, $s4, 2
	addi.d	$s2, $s2, 2
	addi.d	$s3, $s3, 2
	addi.d	$t3, $t3, 2
	bnez	$s6, .LBB2_8
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_9:                                # %vector.memcheck
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t3, $s3, $s1
	move	$s7, $a6
	bltu	$t3, $fp, .LBB2_7
# %bb.10:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t3, $s5, $s1, 1
	sub.d	$s6, $t3, $s2
	move	$s7, $a6
	bltu	$s6, $fp, .LBB2_7
# %bb.11:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t3, $s4, $t3
	move	$s7, $a6
	bltu	$t3, $fp, .LBB2_7
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t3, $s5, $s3, 1
	sub.d	$s6, $t3, $s2
	move	$s7, $a6
	bltu	$s6, $fp, .LBB2_7
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t3, $t3, $s4
	move	$s7, $a6
	bltu	$t3, $fp, .LBB2_7
# %bb.14:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_5 Depth=1
	bgeu	$t0, $s0, .LBB2_19
# %bb.15:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t3, $zero
.LBB2_16:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	add.d	$s6, $t7, $t3
	add.d	$t3, $a6, $t3
	alsl.d	$s7, $t3, $s4, 1
	alsl.d	$s8, $t3, $s2, 1
	add.d	$t3, $t3, $s5
	alsl.d	$ra, $t3, $s3, 1
	alsl.d	$t3, $t3, $s1, 1
	.p2align	4, , 16
.LBB2_17:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s8, 0
	vst	$vr0, $t3, 0
	vld	$vr0, $s7, 0
	vst	$vr0, $ra, 0
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 16
	addi.d	$s8, $s8, 16
	addi.d	$ra, $ra, 16
	addi.d	$t3, $t3, 16
	bnez	$s6, .LBB2_17
# %bb.18:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s7, $t5
	beq	$t0, $t4, .LBB2_4
	b	.LBB2_7
.LBB2_19:                               # %vector.body.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	add.d	$t3, $a6, $s5
	alsl.d	$s6, $t3, $s1, 1
	addi.d	$s6, $s6, 16
	add.d	$s7, $s4, $t6
	alsl.d	$t3, $t3, $s3, 1
	addi.d	$s8, $t3, 16
	add.d	$ra, $s2, $t6
	move	$t3, $t1
	.p2align	4, , 16
.LBB2_20:                               # %vector.body
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $ra, -16
	vld	$vr1, $ra, 0
	vst	$vr0, $s6, -16
	vst	$vr1, $s6, 0
	vld	$vr0, $s7, -16
	vld	$vr1, $s7, 0
	vst	$vr0, $s8, -16
	vst	$vr1, $s8, 0
	addi.d	$t3, $t3, -16
	addi.d	$s6, $s6, 32
	addi.d	$s7, $s7, 32
	addi.d	$s8, $s8, 32
	addi.d	$ra, $ra, 32
	bnez	$t3, .LBB2_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t0, $t1, .LBB2_4
# %bb.22:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t3, $t1
	move	$s7, $t2
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	beqz	$s6, .LBB2_7
	b	.LBB2_16
.LBB2_23:                               # %copyBetweenFrames.exit
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
.Lfunc_end2:
	.size	concealByCopy, .Lfunc_end2-concealByCopy
                                        # -- End function
	.globl	conceal_lost_frames             # -- Begin function conceal_lost_frames
	.p2align	5
	.type	conceal_lost_frames,@function
conceal_lost_frames:                    # @conceal_lost_frames
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
	move	$fp, $a0
	lu12i.w	$a0, 1
	ori	$a1, $a0, 1600
	ldx.w	$a3, $fp, $a1
	ori	$a1, $a0, 1604
	ldptr.w	$a2, $fp, 6080
	ldx.w	$a4, $fp, $a1
	ori	$a1, $zero, 1
	stptr.d	$zero, $fp, 5696
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	bne	$a2, $a1, .LBB3_2
# %bb.1:
	ori	$a1, $a0, 1968
	ldx.w	$a1, $fp, $a1
	move	$s3, $zero
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $fp, 6056
	stptr.w	$zero, $fp, 6072
	ldptr.w	$s1, $fp, 5676
	beq	$s1, $s3, .LBB3_3
	b	.LBB3_4
.LBB3_2:
	ori	$a1, $a0, 1564
	ldx.w	$a1, $fp, $a1
	ldptr.w	$a2, $fp, 5816
	addi.w	$a1, $a1, 1
	mod.wu	$s3, $a1, $a2
	ldptr.w	$s1, $fp, 5676
	bne	$s1, $s3, .LBB3_4
.LBB3_3:                                # %._crit_edge
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	stptr.w	$a0, $fp, 5696
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	stptr.w	$a0, $fp, 5700
	stptr.w	$s1, $fp, 5676
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
.LBB3_4:                                # %.lr.ph
	lu12i.w	$a1, 77
	ori	$s5, $a1, 1432
	ori	$s6, $zero, 1
	ori	$a2, $a0, 1960
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $a0, 1964
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$a0, $a0, %got_pc_lo12(dpb)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s2, $zero, 3
	ori	$s7, $a1, 1452
	ori	$a0, $zero, 2
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_flag)
	addi.d	$s8, $a0, %pc_lo12(ref_flag)
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, 8
	st.d	$a0, $s8, 4
	ld.d	$a0, $s8, 16
	st.d	$a1, $s8, 12
	ld.d	$a1, $s8, 24
	st.d	$a0, $s8, 20
	ld.d	$a0, $s8, 32
	st.d	$a1, $s8, 28
	ld.d	$a1, $s8, 40
	st.d	$a0, $s8, 36
	ld.d	$a0, $s8, 48
	st.d	$a1, $s8, 44
	ld.d	$a1, $s8, 56
	stptr.w	$s3, $fp, 5660
	ldptr.w	$a2, $fp, 5816
	st.d	$a0, $s8, 52
	st.d	$a1, $s8, 60
	addi.w	$a0, $s3, 1
	mod.w	$s3, $a0, $a2
	st.w	$zero, $s8, 0
	beq	$s1, $s3, .LBB3_3
.LBB3_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	ld.w	$a1, $fp, 48
	ld.w	$a2, $fp, 52
	ld.w	$a3, $fp, 56
	ld.w	$a4, $fp, 64
	move	$a0, $zero
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	add.d	$s4, $a0, $s5
	st.w	$s6, $s4, 76
	st.w	$s3, $s4, 8
	stx.w	$s3, $a0, $s5
	st.w	$zero, $s4, 32
	st.d	$s6, $s4, 24
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a1, $fp, $a1
	st.w	$s6, $s4, 272
	st.w	$zero, $s4, 216
	stptr.w	$s3, $fp, 5676
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 8
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 28
	st.w	$a1, $s0, 12
	st.w	$a1, $s0, 16
	st.w	$a1, $s0, 4
	addi.w	$a0, $a0, -1
	stptr.w	$a1, $fp, 6056
	bltz	$a0, .LBB3_12
# %bb.7:                                # %.lr.ph.i.i
                                        #   in Loop: Header=BB3_6 Depth=1
	ld.d	$a2, $a2, 0
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $a2, 3
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_8:                                #   in Loop: Header=BB3_9 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -8
	blez	$a1, .LBB3_12
.LBB3_9:                                #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a3, $a0, 0
	bne	$a3, $s2, .LBB3_8
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=2
	ld.d	$a0, $a0, 48
	add.d	$a3, $a0, $s7
	ld.w	$a4, $a3, 4
	beqz	$a4, .LBB3_8
# %bb.11:                               #   in Loop: Header=BB3_9 Depth=2
	ld.w	$a3, $a3, 0
	bnez	$a3, .LBB3_8
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               #   in Loop: Header=BB3_6 Depth=1
	move	$a0, $zero
.LBB3_13:                               # %copy_prev_pic_to_concealed_pic.exit
                                        #   in Loop: Header=BB3_6 Depth=1
	stptr.w	$zero, $fp, 6084
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(copy_to_conceal)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 6080
	bne	$a0, $s6, .LBB3_5
# %bb.14:                               #   in Loop: Header=BB3_6 Depth=1
	move	$s6, $s1
	addi.d	$s1, $s0, 4
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $s4, 200
	pcaddu18i	$ra, %call36(flush_dpb)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s1, 0
	move	$s1, $s6
	ori	$s6, $zero, 1
	stptr.w	$zero, $fp, 6056
	b	.LBB3_5
.Lfunc_end3:
	.size	conceal_lost_frames, .Lfunc_end3-conceal_lost_frames
                                        # -- End function
	.globl	update_ref_list_for_concealment # -- Begin function update_ref_list_for_concealment
	.p2align	5
	.type	update_ref_list_for_concealment,@function
update_ref_list_for_concealment:        # @update_ref_list_for_concealment
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$a0, $a0, %got_pc_lo12(dpb)
	ld.wu	$a1, $a0, 28
	beqz	$a1, .LBB4_5
# %bb.1:                                # %.lr.ph
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a0, 8
	move	$a4, $zero
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB4_5
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 44
	beqz	$a6, .LBB4_2
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a6, $a4, 31, 0
	addi.w	$a4, $a4, 1
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
	b	.LBB4_2
.LBB4_5:                                # %._crit_edge
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1112
	st.w	$a1, $a0, 32
	ret
.Lfunc_end4:
	.size	update_ref_list_for_concealment, .Lfunc_end4-update_ref_list_for_concealment
                                        # -- End function
	.globl	init_lists_for_non_reference_loss # -- Begin function init_lists_for_non_reference_loss
	.p2align	5
	.type	init_lists_for_non_reference_loss,@function
init_lists_for_non_reference_loss:      # @init_lists_for_non_reference_loss
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$s2, %pc_hi20(active_sps)
	beqz	$a1, .LBB5_3
.LBB5_1:                                # %.loopexit
	or	$a0, $s0, $s1
	beqz	$a0, .LBB5_8
# %bb.2:
	move	$fp, $zero
	ori	$a0, $zero, 1
	beq	$s1, $a0, .LBB5_15
	b	.LBB5_22
.LBB5_3:                                # %.preheader92
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$a4, $a0, %got_pc_lo12(dpb)
	ld.wu	$a0, $a4, 32
	beqz	$a0, .LBB5_1
# %bb.4:                                # %.lr.ph
	ld.d	$a1, $s2, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1008
	ld.d	$a1, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $zero, -1
	sll.w	$a2, $a3, $a2
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ld.d	$a4, $a4, 8
	ori	$a5, $zero, 1
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1440
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB5_1
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a1, 0
	ld.w	$t0, $a7, 44
	bne	$t0, $a5, .LBB5_5
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	ld.w	$a7, $a7, 20
	ldptr.w	$t0, $a3, 6076
	ld.d	$t1, $a4, 0
	sltu	$t0, $t0, $a7
	ld.d	$t2, $t1, 48
	maskeqz	$t0, $a2, $t0
	add.d	$a7, $a7, $t0
	st.w	$a7, $t1, 28
	stx.w	$a7, $t2, $a6
	b	.LBB5_5
.LBB5_8:                                # %.preheader91
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$a2, $a0, %got_pc_lo12(dpb)
	ld.wu	$a1, $a2, 28
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	ld.d	$a0, $a0, 0
	beqz	$a1, .LBB5_13
# %bb.9:                                # %.lr.ph96
	ld.d	$a2, $a2, 0
	move	$fp, $zero
	ori	$a3, $zero, 1
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               #   in Loop: Header=BB5_11 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB5_14
.LBB5_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 44
	bne	$a5, $a3, .LBB5_10
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=1
	ld.d	$a4, $a4, 48
	slli.d	$a5, $fp, 3
	addi.w	$fp, $fp, 1
	stx.d	$a4, $a0, $a5
	b	.LBB5_10
.LBB5_13:
	move	$fp, $zero
.LBB5_14:                               # %._crit_edge
	pcalau12i	$a1, %pc_hi20(compare_pic_by_pic_num_desc)
	addi.d	$a3, $a1, %pc_lo12(compare_pic_by_pic_num_desc)
	ori	$a2, $zero, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$a0, $a0, %got_pc_lo12(listXsize)
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB5_22
.LBB5_15:
	bnez	$s0, .LBB5_22
# %bb.16:                               # %.preheader90
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$s0, $a0, %got_pc_lo12(dpb)
	ld.wu	$a1, $s0, 28
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$s1, $a0, %got_pc_lo12(listX)
	ld.d	$a0, $s1, 0
	beqz	$a1, .LBB5_23
# %bb.17:                               # %.lr.ph99
	ld.d	$a2, $s0, 0
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 1
	b	.LBB5_19
	.p2align	4, , 16
.LBB5_18:                               #   in Loop: Header=BB5_19 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB5_23
.LBB5_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 44
	bne	$a6, $a4, .LBB5_18
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=1
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a3, 6072
	ld.w	$a7, $a5, 4
	bge	$a7, $a6, .LBB5_18
# %bb.21:                               #   in Loop: Header=BB5_19 Depth=1
	slli.d	$a6, $fp, 3
	addi.w	$fp, $fp, 1
	stx.d	$a5, $a0, $a6
	b	.LBB5_18
.LBB5_22:                               # %._crit_edge158
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$a1, $a0, %got_pc_lo12(listXsize)
	ld.w	$a0, $a1, 0
	ld.w	$s3, $a1, 4
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB5_44
	b	.LBB5_54
.LBB5_23:                               # %._crit_edge100
	pcalau12i	$a1, %pc_hi20(compare_pic_by_poc_desc)
	addi.d	$a3, $a1, %pc_lo12(compare_pic_by_poc_desc)
	ori	$a2, $zero, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 28
	ld.d	$a0, $s1, 0
	move	$s3, $fp
	beqz	$a1, .LBB5_29
# %bb.24:                               # %.lr.ph105
	ld.d	$a2, $s0, 0
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 1
	move	$s3, $fp
	b	.LBB5_26
	.p2align	4, , 16
.LBB5_25:                               #   in Loop: Header=BB5_26 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB5_29
.LBB5_26:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 44
	bne	$a6, $a4, .LBB5_25
# %bb.27:                               #   in Loop: Header=BB5_26 Depth=1
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a3, 6072
	ld.w	$a7, $a5, 4
	bge	$a6, $a7, .LBB5_25
# %bb.28:                               #   in Loop: Header=BB5_26 Depth=1
	slli.d	$a6, $s3, 3
	addi.w	$s3, $s3, 1
	stx.d	$a5, $a0, $a6
	b	.LBB5_25
.LBB5_29:                               # %._crit_edge106
	alsl.d	$a0, $fp, $a0, 3
	sub.w	$s0, $s3, $fp
	pcalau12i	$a1, %pc_hi20(compare_pic_by_poc_asc)
	addi.d	$a3, $a1, %pc_lo12(compare_pic_by_poc_asc)
	ori	$a2, $zero, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	slli.d	$a1, $fp, 3
	blez	$fp, .LBB5_35
# %bb.30:                               # %.lr.ph110
	ld.d	$a2, $s1, 8
	ori	$a3, $zero, 12
	bltu	$fp, $a3, .LBB5_32
# %bb.31:                               # %vector.memcheck
	alsl.d	$a3, $s3, $a2, 3
	alsl.d	$a4, $fp, $a0, 3
	sub.d	$a3, $a3, $a4
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB5_57
.LBB5_32:
	move	$a3, $zero
.LBB5_33:                               # %scalar.ph.preheader
	slli.d	$a4, $a3, 3
	alsl.d	$a4, $s3, $a4, 3
	sub.d	$a4, $a4, $a1
	add.d	$a2, $a2, $a4
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $fp, $a3
	.p2align	4, , 16
.LBB5_34:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB5_34
.LBB5_35:                               # %.preheader89
	bge	$fp, $s3, .LBB5_43
# %bb.36:                               # %.lr.ph112
	ld.d	$a2, $s1, 8
	ori	$a3, $zero, 6
	bltu	$s0, $a3, .LBB5_41
# %bb.37:                               # %vector.memcheck172
	alsl.d	$a3, $fp, $a0, 3
	sub.d	$a3, $a2, $a3
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB5_41
# %bb.38:                               # %vector.ph176
	move	$a3, $s0
	bstrins.d	$a3, $zero, 1, 0
	add.d	$fp, $a3, $fp
	add.d	$a4, $a1, $a0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB5_39:                               # %vector.body179
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_39
# %bb.40:                               # %middle.block184
	beq	$a3, $s0, .LBB5_43
.LBB5_41:                               # %scalar.ph174.preheader
	slli.d	$a3, $fp, 3
	sub.d	$a1, $a3, $a1
	add.d	$a1, $a2, $a1
	alsl.d	$a2, $fp, $a0, 3
	sub.d	$a3, $s3, $fp
	.p2align	4, , 16
.LBB5_42:                               # %scalar.ph174
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	st.d	$a4, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB5_42
.LBB5_43:                               # %._crit_edge113
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$s0, $a1, %got_pc_lo12(listXsize)
	st.w	$s3, $s0, 4
	st.w	$s3, $s0, 0
	alsl.d	$a0, $s3, $a0, 3
	pcalau12i	$a1, %pc_hi20(compare_pic_by_lt_pic_num_asc)
	addi.d	$fp, $a1, %pc_lo12(compare_pic_by_lt_pic_num_asc)
	ori	$a2, $zero, 8
	move	$a1, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.w	$a1, $s0, 0
	alsl.d	$a0, $a1, $a0, 3
	sub.w	$a1, $s3, $a1
	ori	$a2, $zero, 8
	move	$a3, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB5_54
.LBB5_44:
	bne	$a0, $s3, .LBB5_54
# %bb.45:                               # %.preheader88
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 8
	ori	$a4, $zero, 4
	bstrpick.d	$a3, $s3, 31, 0
	bgeu	$s3, $a4, .LBB5_47
# %bb.46:
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB5_50
.LBB5_47:                               # %vector.ph189
	bstrpick.d	$a4, $a3, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a1, 16
	addi.d	$a6, $a2, 16
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	move	$a7, $a4
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB5_48:                               # %vector.body192
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a5, -16
	vld	$vr5, $a6, 0
	vld	$vr6, $a5, 0
	vseq.d	$vr3, $vr3, $vr4
	vxor.v	$vr3, $vr3, $vr1
	vseq.d	$vr4, $vr5, $vr6
	vxor.v	$vr4, $vr4, $vr1
	vor.v	$vr0, $vr0, $vr3
	vor.v	$vr2, $vr2, $vr4
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB5_48
# %bb.49:                               # %middle.block200
	vor.v	$vr0, $vr2, $vr0
	vslli.d	$vr0, $vr0, 63
	vmskltz.d	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	sltu	$a5, $zero, $a5
	beq	$a4, $a3, .LBB5_52
.LBB5_50:                               # %scalar.ph187.preheader
	alsl.d	$a6, $a4, $a1, 3
	alsl.d	$a2, $a4, $a2, 3
	sub.d	$a3, $a3, $a4
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB5_51:                               # %scalar.ph187
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a2, 0
	ld.d	$t0, $a6, 0
	xor	$a7, $a7, $t0
	sltui	$a7, $a7, 1
	masknez	$t0, $a4, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	addi.d	$a6, $a6, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB5_51
.LBB5_52:                               # %.loopexit203
	bnez	$a5, .LBB5_54
# %bb.53:
	ld.d	$a2, $a1, 8
	ld.d	$a3, $a1, 0
	st.d	$a2, $a1, 0
	st.d	$a3, $a1, 8
.LBB5_54:
	ld.d	$a1, $s2, %pc_lo12(active_sps)
	ldptr.w	$a1, $a1, 2060
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$a1, $a1, %got_pc_lo12(listXsize)
	st.w	$a0, $a1, 0
	ori	$a2, $zero, 32
	st.w	$zero, $a1, 4
	bltu	$a2, $a0, .LBB5_56
# %bb.55:                               # %.lr.ph118
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	addi.w	$a0, $a2, 0
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 264
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 3
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %.preheader
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	ld.d	$a0, $a0, 8
	ori	$a2, $zero, 264
	move	$a1, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB5_57:                               # %vector.ph
	slli.d	$a4, $s3, 3
	bstrpick.d	$a3, $fp, 30, 2
	slli.d	$a3, $a3, 2
	sub.d	$a4, $a4, $a1
	add.d	$a4, $a4, $a2
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB5_58:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_58
# %bb.59:                               # %middle.block
	beq	$a3, $fp, .LBB5_35
	b	.LBB5_33
.Lfunc_end5:
	.size	init_lists_for_non_reference_loss, .Lfunc_end5-init_lists_for_non_reference_loss
                                        # -- End function
	.p2align	5                               # -- Begin function compare_pic_by_pic_num_desc
	.type	compare_pic_by_pic_num_desc,@function
compare_pic_by_pic_num_desc:            # @compare_pic_by_pic_num_desc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1440
	ldx.w	$a0, $a0, $a2
	ldx.w	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	slt	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end6:
	.size	compare_pic_by_pic_num_desc, .Lfunc_end6-compare_pic_by_pic_num_desc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc,@function
compare_pic_by_poc_desc:                # @compare_pic_by_poc_desc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 4
	ld.w	$a1, $a1, 4
	slt	$a2, $a1, $a0
	slt	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end7:
	.size	compare_pic_by_poc_desc, .Lfunc_end7-compare_pic_by_poc_desc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc,@function
compare_pic_by_poc_asc:                 # @compare_pic_by_poc_asc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 4
	ld.w	$a1, $a1, 4
	slt	$a2, $a0, $a1
	slt	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end8:
	.size	compare_pic_by_poc_asc, .Lfunc_end8-compare_pic_by_poc_asc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc,@function
compare_pic_by_lt_pic_num_asc:          # @compare_pic_by_lt_pic_num_asc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1444
	ldx.w	$a0, $a0, $a2
	ldx.w	$a1, $a1, $a2
	slt	$a2, $a0, $a1
	slt	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end9:
	.size	compare_pic_by_lt_pic_num_asc, .Lfunc_end9-compare_pic_by_lt_pic_num_asc
                                        # -- End function
	.globl	get_pic_from_dpb                # -- Begin function get_pic_from_dpb
	.p2align	5
	.type	get_pic_from_dpb,@function
get_pic_from_dpb:                       # @get_pic_from_dpb
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(dpb)
	ld.d	$a2, $a2, %got_pc_lo12(dpb)
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ldptr.w	$a4, $a3, 6068
	ori	$a5, $zero, 2
	beq	$a4, $a5, .LBB10_3
# %bb.1:
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB10_4
# %bb.2:
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1968
	ldx.w	$a3, $a3, $a4
	sub.w	$a0, $a0, $a3
	b	.LBB10_5
.LBB10_3:
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1968
	ldx.w	$a3, $a3, $a4
	add.w	$a0, $a3, $a0
	b	.LBB10_5
.LBB10_4:
	move	$a0, $zero
.LBB10_5:
	ld.w	$a3, $a2, 28
	ld.d	$a2, $a2, 0
	.p2align	4, , 16
.LBB10_6:                               # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $a3, -1
	bltz	$a3, .LBB10_9
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a2, $a4
	ld.w	$a5, $a4, 40
	bne	$a5, $a0, .LBB10_6
# %bb.8:
	ld.d	$a0, $a4, 48
	st.w	$a3, $a1, 0
	ret
.LBB10_9:
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	get_pic_from_dpb, .Lfunc_end10-get_pic_from_dpb
                                        # -- End function
	.globl	comp                            # -- Begin function comp
	.p2align	5
	.type	comp,@function
comp:                                   # @comp
# %bb.0:
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	ret
.Lfunc_end11:
	.size	comp, .Lfunc_end11-comp
                                        # -- End function
	.globl	init_node                       # -- Begin function init_node
	.p2align	5
	.type	init_node,@function
init_node:                              # @init_node
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_2
# %bb.1:
	st.d	$s0, $a0, 0
	st.w	$fp, $a0, 8
.LBB12_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	init_node, .Lfunc_end12-init_node
                                        # -- End function
	.globl	print_node                      # -- Begin function print_node
	.p2align	5
	.type	print_node,@function
print_node:                             # @print_node
# %bb.0:
	ld.w	$a1, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end13:
	.size	print_node, .Lfunc_end13-print_node
                                        # -- End function
	.globl	print_list                      # -- Begin function print_list
	.p2align	5
	.type	print_list,@function
print_list:                             # @print_list
# %bb.0:
	beqz	$a0, .LBB14_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB14_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB14_2
# %bb.3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB14_4:                               # %._crit_edge
	ret
.Lfunc_end14:
	.size	print_list, .Lfunc_end14-print_list
                                        # -- End function
	.globl	add_node                        # -- Begin function add_node
	.p2align	5
	.type	add_node,@function
add_node:                               # @add_node
# %bb.0:
	pcalau12i	$a2, %pc_hi20(concealment_head)
	ld.d	$a3, $a2, %pc_lo12(concealment_head)
	pcalau12i	$a1, %pc_hi20(concealment_end)
	beqz	$a3, .LBB15_2
# %bb.1:
	ld.d	$a2, $a1, %pc_lo12(concealment_end)
	st.d	$a0, $a2, 16
	st.d	$a0, $a1, %pc_lo12(concealment_end)
	ret
.LBB15_2:
	st.d	$a0, $a2, %pc_lo12(concealment_head)
	st.d	$a0, $a1, %pc_lo12(concealment_end)
	ret
.Lfunc_end15:
	.size	add_node, .Lfunc_end15-add_node
                                        # -- End function
	.globl	delete_node                     # -- Begin function delete_node
	.p2align	5
	.type	delete_node,@function
delete_node:                            # @delete_node
# %bb.0:
	pcalau12i	$a1, %pc_hi20(concealment_head)
	ld.d	$a2, $a1, %pc_lo12(concealment_head)
	beq	$a0, $a2, .LBB16_2
# %bb.1:
	ret
.LBB16_2:
	ld.d	$a4, $a2, 16
	pcalau12i	$a2, %pc_hi20(concealment_end)
	ld.d	$a3, $a2, %pc_lo12(concealment_end)
	st.d	$a4, $a1, %pc_lo12(concealment_head)
	beq	$a3, $a0, .LBB16_4
# %bb.3:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB16_4:
	ld.d	$a1, $a3, 16
	st.d	$a1, $a2, %pc_lo12(concealment_end)
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end16:
	.size	delete_node, .Lfunc_end16-delete_node
                                        # -- End function
	.globl	delete_list                     # -- Begin function delete_list
	.p2align	5
	.type	delete_list,@function
delete_list:                            # @delete_list
# %bb.0:
	pcalau12i	$a2, %pc_hi20(concealment_head)
	ld.d	$a1, $a2, %pc_lo12(concealment_head)
	beqz	$a1, .LBB17_7
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	beq	$a0, $a1, .LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a1
	ld.d	$a1, $a1, 16
	bne	$a1, $a0, .LBB17_2
	b	.LBB17_4
.LBB17_3:
	move	$a3, $zero
	st.d	$zero, $a2, %pc_lo12(concealment_head)
.LBB17_4:                               # %.loopexit14
	pcalau12i	$a1, %pc_hi20(concealment_end)
	st.d	$a3, $a1, %pc_lo12(concealment_end)
	beqz	$a0, .LBB17_6
	.p2align	4, , 16
.LBB17_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB17_5
.LBB17_6:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB17_7:                               # %.loopexit
	ret
.Lfunc_end17:
	.size	delete_list, .Lfunc_end17-delete_list
                                        # -- End function
	.globl	conceal_non_ref_pics            # -- Begin function conceal_non_ref_pics
	.p2align	5
	.type	conceal_non_ref_pics,@function
conceal_non_ref_pics:                   # @conceal_non_ref_pics
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$s2, $a0, %got_pc_lo12(dpb)
	ld.w	$a0, $s2, 28
	beqz	$a0, .LBB18_3
# %bb.1:
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.wu	$a1, $s2, 24
	pcalau12i	$a0, %pc_hi20(pocs_in_dpb)
	addi.d	$s0, $a0, %pc_lo12(pocs_in_dpb)
	pcalau12i	$a0, %pc_hi20(comp)
	addi.d	$a3, $a0, %pc_lo12(comp)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 24
	bne	$a0, $fp, .LBB18_4
.LBB18_2:                               # %._crit_edge
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $s2, 28
.LBB18_3:
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
.LBB18_4:                               # %.lr.ph.preheader
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s4, $a1, %got_pc_lo12(img)
	move	$s6, $zero
	ld.d	$a2, $s4, 0
	lu12i.w	$a1, 1
	ori	$s5, $a1, 1968
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1432
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(active_pps)
                                        # implicit-def: $r26
	b	.LBB18_8
.LBB18_5:                               #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a3, $a1, %pc_lo12(concealment_end)
	st.d	$a0, $a3, 16
.LBB18_6:                               # %add_node.exit
                                        #   in Loop: Header=BB18_8 Depth=1
	st.d	$a0, $a1, %pc_lo12(concealment_end)
.LBB18_7:                               #   in Loop: Header=BB18_8 Depth=1
	ld.w	$a0, $s2, 24
	sub.d	$a1, $a0, $fp
	bstrpick.d	$a1, $a1, 31, 0
	bgeu	$s6, $a1, .LBB18_2
.LBB18_8:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_15 Depth 2
                                        #     Child Loop BB18_26 Depth 2
	move	$a6, $s6
	addi.d	$s6, $s6, 1
	slli.d	$a1, $s6, 2
	ldx.w	$a1, $s0, $a1
	slli.d	$a3, $a6, 2
	ldx.w	$a3, $s0, $a3
	ldptr.w	$a4, $a2, 6064
	sub.w	$a1, $a1, $a3
	st.w	$a0, $s2, 28
	bge	$a4, $a1, .LBB18_7
# %bb.9:                                #   in Loop: Header=BB18_8 Depth=1
	ld.w	$a1, $a2, 48
	ld.w	$a5, $a2, 52
	ld.w	$a3, $a2, 56
	ld.w	$a4, $a2, 64
	alsl.d	$s1, $a6, $s0, 2
	move	$a0, $zero
	move	$a2, $a5
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s4, 0
	ld.w	$a3, $s1, 0
	ldx.w	$a1, $a2, $s5
	ldptr.w	$a4, $a2, 6072
	add.w	$s8, $a1, $a3
	bge	$a4, $s8, .LBB18_7
# %bb.10:                               #   in Loop: Header=BB18_8 Depth=1
	move	$s1, $a0
	stptr.w	$s8, $a2, 6072
	ldptr.w	$a0, $a2, 6068
	st.w	$s8, $s1, 8
	st.w	$s8, $s1, 12
	st.w	$s8, $s1, 16
	st.w	$s8, $s1, 4
	ori	$a4, $zero, 2
	beq	$a0, $a4, .LBB18_13
# %bb.11:                               #   in Loop: Header=BB18_8 Depth=1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB18_14
# %bb.12:                               #   in Loop: Header=BB18_8 Depth=1
	move	$a3, $zero
	b	.LBB18_14
.LBB18_13:                              #   in Loop: Header=BB18_8 Depth=1
	add.w	$a3, $s8, $a1
.LBB18_14:                              #   in Loop: Header=BB18_8 Depth=1
	ld.w	$a4, $s2, 28
	ld.d	$a1, $s2, 0
	.p2align	4, , 16
.LBB18_15:                              #   Parent Loop BB18_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $a4, -1
	bltz	$a4, .LBB18_18
# %bb.16:                               #   in Loop: Header=BB18_15 Depth=2
	slli.d	$a0, $a4, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a5, $a0, 40
	bne	$a5, $a3, .LBB18_15
# %bb.17:                               #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a0, $a0, 48
	move	$s3, $a4
	b	.LBB18_19
.LBB18_18:                              #   in Loop: Header=BB18_8 Depth=1
	move	$a0, $zero
.LBB18_19:                              # %get_pic_from_dpb.exit
                                        #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a3
	bstrpick.d	$a4, $s3, 31, 0
	addi.d	$a4, $a4, 1
	st.w	$a4, $s2, 28
	addi.d	$a3, $a3, 1
	slli.d	$a5, $a4, 31
	stptr.w	$a3, $a2, 6076
	bgez	$a5, .LBB18_24
.LBB18_20:                              # %update_ref_list_for_concealment.exit
                                        #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1112
	st.w	$a1, $s2, 32
	ori	$a1, $zero, 1
	stptr.w	$a1, $a2, 6084
	move	$a1, $s1
	pcaddu18i	$ra, %call36(copy_to_conceal)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s4, 0
	beqz	$a0, .LBB18_22
# %bb.21:                               #   in Loop: Header=BB18_8 Depth=1
	st.d	$s1, $a0, 0
	st.w	$s8, $a0, 8
.LBB18_22:                              # %init_node.exit
                                        #   in Loop: Header=BB18_8 Depth=1
	pcalau12i	$a3, %pc_hi20(concealment_head)
	ld.d	$a4, $a3, %pc_lo12(concealment_head)
	pcalau12i	$a1, %pc_hi20(concealment_end)
	bnez	$a4, .LBB18_5
# %bb.23:                               #   in Loop: Header=BB18_8 Depth=1
	st.d	$a0, $a3, %pc_lo12(concealment_head)
	b	.LBB18_6
.LBB18_24:                              # %.lr.ph.i
                                        #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a3, $s2, 8
	move	$a5, $zero
	bstrpick.d	$a4, $a4, 31, 0
	b	.LBB18_26
	.p2align	4, , 16
.LBB18_25:                              #   in Loop: Header=BB18_26 Depth=2
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 8
	beqz	$a4, .LBB18_20
.LBB18_26:                              #   Parent Loop BB18_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a1, 0
	ld.w	$a7, $a6, 44
	beqz	$a7, .LBB18_25
# %bb.27:                               #   in Loop: Header=BB18_26 Depth=2
	bstrpick.d	$a7, $a5, 31, 0
	addi.w	$a5, $a5, 1
	slli.d	$a7, $a7, 3
	stx.d	$a6, $a3, $a7
	b	.LBB18_25
.Lfunc_end18:
	.size	conceal_non_ref_pics, .Lfunc_end18-conceal_non_ref_pics
                                        # -- End function
	.p2align	5                               # -- Begin function copy_to_conceal
	.type	copy_to_conceal,@function
copy_to_conceal:                        # @copy_to_conceal
# %bb.0:
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	lu12i.w	$s6, 77
	ori	$a3, $s6, 1516
	add.d	$a4, $a0, $a3
	ld.w	$fp, $a4, 4
	ldptr.w	$s1, $a2, 6084
	add.d	$s3, $a1, $a3
	st.w	$zero, $a2, 4
	st.w	$fp, $s3, 4
	st.w	$s1, $a4, 116
	st.w	$s1, $s3, 116
	st.w	$zero, $s3, 120
	ld.d	$a1, $a4, 124
	st.d	$a1, $s3, 124
	st.w	$zero, $a4, 132
	st.w	$zero, $s3, 132
	vld	$vr0, $a4, 136
	ld.w	$a1, $a4, 136
	vst	$vr0, $s3, 136
	vld	$vr0, $a4, 152
	vst	$vr0, $s3, 152
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a3, $a4, 176
	st.w	$a3, $s3, 176
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$s7, $a3, %got_pc_lo12(dec_picture)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ldptr.w	$a2, $a2, 6068
	ori	$a3, $zero, 2
	st.d	$a0, $s7, 0
	beq	$a2, $a3, .LBB19_19
# %bb.1:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a2, $a0, .LBB19_62
# %bb.2:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a4, $a1, 52
	st.w	$a0, $s3, 0
	st.w	$fp, $s3, 4
	blez	$a4, .LBB19_62
# %bb.3:                                # %.preheader33.lr.ph.i
	move	$a3, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 12
	ld.wu	$a5, $a1, 48
	ld.d	$a0, $a0, 20
	ld.d	$a7, $s3, 12
	ld.d	$a1, $s3, 20
	bstrpick.d	$a2, $a5, 30, 4
	slli.d	$t0, $a2, 4
	andi	$t1, $a5, 8
	bstrpick.d	$a2, $a5, 30, 3
	slli.d	$t2, $a2, 3
	sub.d	$t3, $zero, $t2
	addi.w	$a2, $a5, 0
	ori	$t4, $zero, 8
	ori	$t5, $zero, 31
	ori	$t6, $zero, 16
	b	.LBB19_5
	.p2align	4, , 16
.LBB19_4:                               # %._crit_edge.i
                                        #   in Loop: Header=BB19_5 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a4, .LBB19_21
.LBB19_5:                               # %.preheader33.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_14 Depth 2
                                        #     Child Loop BB19_11 Depth 2
                                        #     Child Loop BB19_18 Depth 2
	blez	$a2, .LBB19_4
# %bb.6:                                # %iter.check
                                        #   in Loop: Header=BB19_5 Depth=1
	slli.d	$t8, $a3, 3
	ldx.d	$t7, $a6, $t8
	ldx.d	$t8, $a7, $t8
	move	$s0, $zero
	bltu	$a5, $t4, .LBB19_17
# %bb.7:                                # %iter.check
                                        #   in Loop: Header=BB19_5 Depth=1
	sub.d	$fp, $t8, $t7
	bgeu	$t5, $fp, .LBB19_17
# %bb.8:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB19_5 Depth=1
	bgeu	$a5, $t6, .LBB19_13
# %bb.9:                                #   in Loop: Header=BB19_5 Depth=1
	move	$s1, $zero
.LBB19_10:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB19_5 Depth=1
	add.d	$fp, $t3, $s1
	alsl.d	$s0, $s1, $t8, 1
	alsl.d	$s1, $s1, $t7, 1
	.p2align	4, , 16
.LBB19_11:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB19_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s1, 0
	vst	$vr0, $s0, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 16
	addi.d	$s1, $s1, 16
	bnez	$fp, .LBB19_11
# %bb.12:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB19_5 Depth=1
	move	$s0, $t2
	beq	$t2, $a5, .LBB19_4
	b	.LBB19_17
.LBB19_13:                              # %vector.body.preheader
                                        #   in Loop: Header=BB19_5 Depth=1
	addi.d	$fp, $t8, 16
	addi.d	$s0, $t7, 16
	move	$s1, $t0
	.p2align	4, , 16
.LBB19_14:                              # %vector.body
                                        #   Parent Loop BB19_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s0, -16
	vld	$vr1, $s0, 0
	vst	$vr0, $fp, -16
	vst	$vr1, $fp, 0
	addi.d	$s1, $s1, -16
	addi.d	$fp, $fp, 32
	addi.d	$s0, $s0, 32
	bnez	$s1, .LBB19_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB19_5 Depth=1
	beq	$t0, $a5, .LBB19_4
# %bb.16:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB19_5 Depth=1
	move	$s0, $t0
	move	$s1, $t0
	bnez	$t1, .LBB19_10
	.p2align	4, , 16
.LBB19_17:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB19_5 Depth=1
	sub.d	$fp, $a5, $s0
	alsl.d	$t8, $s0, $t8, 1
	alsl.d	$t7, $s0, $t7, 1
	.p2align	4, , 16
.LBB19_18:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB19_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s0, $t7, 0
	st.h	$s0, $t8, 0
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 2
	addi.d	$t7, $t7, 2
	bnez	$fp, .LBB19_18
	b	.LBB19_4
.LBB19_19:
	lu12i.w	$s8, 1
	beqz	$a1, .LBB19_43
# %bb.20:
	ori	$a0, $s8, 1836
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a0, $s0, $a0
	ori	$a1, $s8, 1840
	ldx.w	$a1, $s0, $a1
	mul.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 62, 60
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 32
	b	.LBB19_44
.LBB19_21:                              # %.preheader32.i
	ori	$a3, $zero, 1
	beq	$a4, $a3, .LBB19_62
# %bb.22:                               # %.preheader.lr.ph.i
	move	$a3, $zero
	bstrpick.d	$a4, $a4, 31, 1
	srli.d	$a6, $a5, 31
	add.w	$a6, $a5, $a6
	srai.d	$a5, $a6, 1
	bstrpick.d	$a6, $a6, 32, 1
	lu12i.w	$t1, 262143
	ori	$a7, $t1, 4080
	and	$a7, $a5, $a7
	andi	$t0, $a5, 8
	ori	$t1, $t1, 4088
	and	$t1, $a5, $t1
	sub.d	$t2, $zero, $t1
	ori	$t3, $zero, 2
	ori	$t4, $zero, 8
	ori	$t5, $zero, 32
	ori	$t6, $zero, 16
	b	.LBB19_24
	.p2align	4, , 16
.LBB19_23:                              # %._crit_edge38.i
                                        #   in Loop: Header=BB19_24 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a4, .LBB19_62
.LBB19_24:                              # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_40 Depth 2
                                        #     Child Loop BB19_37 Depth 2
                                        #     Child Loop BB19_28 Depth 2
	blt	$a2, $t3, .LBB19_23
# %bb.25:                               # %iter.check233
                                        #   in Loop: Header=BB19_24 Depth=1
	ld.d	$t7, $a0, 0
	slli.d	$s0, $a3, 3
	ld.d	$t8, $a1, 0
	ld.d	$fp, $a0, 8
	ld.d	$s1, $a1, 8
	ldx.d	$t7, $t7, $s0
	ldx.d	$t8, $t8, $s0
	ldx.d	$fp, $fp, $s0
	ldx.d	$s0, $s1, $s0
	bgeu	$a5, $t4, .LBB19_29
# %bb.26:                               #   in Loop: Header=BB19_24 Depth=1
	move	$s1, $zero
.LBB19_27:                              # %vec.epilog.scalar.ph249.preheader
                                        #   in Loop: Header=BB19_24 Depth=1
	sub.d	$s2, $a6, $s1
	alsl.d	$s0, $s1, $s0, 1
	alsl.d	$fp, $s1, $fp, 1
	alsl.d	$t8, $s1, $t8, 1
	alsl.d	$t7, $s1, $t7, 1
	.p2align	4, , 16
.LBB19_28:                              # %vec.epilog.scalar.ph249
                                        #   Parent Loop BB19_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s1, $t7, 0
	st.h	$s1, $t8, 0
	ld.h	$s1, $fp, 0
	st.h	$s1, $s0, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 2
	addi.d	$fp, $fp, 2
	addi.d	$t8, $t8, 2
	addi.d	$t7, $t7, 2
	bnez	$s2, .LBB19_28
	b	.LBB19_23
	.p2align	4, , 16
.LBB19_29:                              # %vector.memcheck222
                                        #   in Loop: Header=BB19_24 Depth=1
	sub.d	$s2, $s0, $t8
	move	$s1, $zero
	bltu	$s2, $t5, .LBB19_27
# %bb.30:                               # %vector.memcheck222
                                        #   in Loop: Header=BB19_24 Depth=1
	sub.d	$s2, $t8, $t7
	bltu	$s2, $t5, .LBB19_27
# %bb.31:                               # %vector.memcheck222
                                        #   in Loop: Header=BB19_24 Depth=1
	sub.d	$s2, $fp, $t8
	bltu	$s2, $t5, .LBB19_27
# %bb.32:                               # %vector.memcheck222
                                        #   in Loop: Header=BB19_24 Depth=1
	sub.d	$s2, $s0, $t7
	bltu	$s2, $t5, .LBB19_27
# %bb.33:                               # %vector.memcheck222
                                        #   in Loop: Header=BB19_24 Depth=1
	sub.d	$s2, $s0, $fp
	bltu	$s2, $t5, .LBB19_27
# %bb.34:                               # %vector.main.loop.iter.check235
                                        #   in Loop: Header=BB19_24 Depth=1
	bgeu	$a5, $t6, .LBB19_39
# %bb.35:                               #   in Loop: Header=BB19_24 Depth=1
	move	$s5, $zero
.LBB19_36:                              # %vec.epilog.ph250
                                        #   in Loop: Header=BB19_24 Depth=1
	add.d	$s1, $t2, $s5
	alsl.d	$s2, $s5, $s0, 1
	alsl.d	$s3, $s5, $fp, 1
	alsl.d	$s4, $s5, $t8, 1
	alsl.d	$s5, $s5, $t7, 1
	.p2align	4, , 16
.LBB19_37:                              # %vec.epilog.vector.body256
                                        #   Parent Loop BB19_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s5, 0
	vst	$vr0, $s4, 0
	vld	$vr0, $s3, 0
	vst	$vr0, $s2, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 16
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 16
	bnez	$s1, .LBB19_37
# %bb.38:                               # %vec.epilog.middle.block261
                                        #   in Loop: Header=BB19_24 Depth=1
	move	$s1, $t1
	beq	$t1, $a6, .LBB19_23
	b	.LBB19_27
.LBB19_39:                              # %vector.body239.preheader
                                        #   in Loop: Header=BB19_24 Depth=1
	addi.d	$s1, $s0, 16
	addi.d	$s2, $fp, 16
	addi.d	$s3, $t8, 16
	addi.d	$s4, $t7, 16
	move	$s5, $a7
	.p2align	4, , 16
.LBB19_40:                              # %vector.body239
                                        #   Parent Loop BB19_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s4, -16
	vld	$vr1, $s4, 0
	vst	$vr0, $s3, -16
	vst	$vr1, $s3, 0
	vld	$vr0, $s2, -16
	vld	$vr1, $s2, 0
	vst	$vr0, $s1, -16
	vst	$vr1, $s1, 0
	addi.d	$s5, $s5, -16
	addi.d	$s1, $s1, 32
	addi.d	$s2, $s2, 32
	addi.d	$s3, $s3, 32
	addi.d	$s4, $s4, 32
	bnez	$s5, .LBB19_40
# %bb.41:                               # %middle.block246
                                        #   in Loop: Header=BB19_24 Depth=1
	beq	$a7, $a6, .LBB19_23
# %bb.42:                               # %vec.epilog.iter.check251
                                        #   in Loop: Header=BB19_24 Depth=1
	move	$s5, $a7
	move	$s1, $a7
	beqz	$t0, .LBB19_27
	b	.LBB19_36
.LBB19_43:
	ori	$a0, $zero, 32
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB19_44:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ldptr.d	$a0, $s0, 5592
	pcalau12i	$a1, %pc_hi20(erc_img)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $a1, %pc_lo12(erc_img)
	st.w	$a2, $s3, 0
	ld.w	$a1, $a0, 16
	st.w	$fp, $s3, 4
	ori	$a0, $zero, 1
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	div.wu	$fp, $fp, $a2
	bne	$s1, $a0, .LBB19_46
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(init_lists_for_non_reference_loss)
	jirl	$ra, $ra, 0
	bgtz	$fp, .LBB19_47
	b	.LBB19_61
.LBB19_46:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(init_lists)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB19_61
.LBB19_47:                              # %.lr.ph169
	move	$a4, $zero
	addi.d	$a0, $s1, -1
	sltui	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.w	$a0, $fp, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.w	$a0, $a0, 2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 32
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	b	.LBB19_49
	.p2align	4, , 16
.LBB19_48:                              # %._crit_edge
                                        #   in Loop: Header=BB19_49 Depth=1
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$a4, $a0, .LBB19_61
.LBB19_49:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_52 Depth 2
                                        #       Child Loop BB19_56 Depth 3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	blez	$a0, .LBB19_48
# %bb.50:                               # %.lr.ph
                                        #   in Loop: Header=BB19_49 Depth=1
	move	$a6, $zero
	slli.d	$a1, $a4, 1
	slli.d	$a0, $a4, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a4, 4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 1
	slli.d	$a1, $a4, 3
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	b	.LBB19_52
	.p2align	4, , 16
.LBB19_51:                              # %.loopexit
                                        #   in Loop: Header=BB19_52 Depth=2
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a6, $a0, .LBB19_48
.LBB19_52:                              #   Parent Loop BB19_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_56 Depth 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 44
	ld.d	$a1, $a1, 68
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a7
	ld.d	$a2, $s3, 68
	ldx.d	$a1, $a1, $a7
	ldx.b	$a0, $a0, $a6
	slli.d	$a5, $a6, 3
	ld.d	$a2, $a2, 0
	ldx.d	$a1, $a1, $a5
	srai.d	$a3, $a0, 63
	andn	$s2, $a0, $a3
	ldx.d	$a0, $a2, $a7
	ld.d	$a2, $s3, 44
	ld.h	$a3, $a1, 0
	ld.h	$a1, $a1, 2
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a5
	ld.d	$a2, $a2, 0
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	div.w	$s4, $a3, $a5
	div.w	$s5, $a1, $a5
	st.h	$s4, $a0, 0
	ldx.d	$a1, $a2, $a7
	st.h	$s5, $a0, 2
	or	$a0, $a6, $a4
	andi	$a0, $a0, 3
	stx.b	$s2, $a1, $a6
	bnez	$a0, .LBB19_54
# %bb.53:                               #   in Loop: Header=BB19_52 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 4
.LBB19_54:                              #   in Loop: Header=BB19_52 Depth=2
	ld.d	$a0, $s7, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(erc_img)
	ori	$a1, $s6, 1652
	ldx.w	$s0, $a0, $a1
	ori	$a0, $s8, 1840
	ldx.w	$a0, $s1, $a0
	st.w	$a6, $s1, 72
	st.w	$a4, $s1, 68
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $s1, 76
	mul.w	$a0, $a0, $a4
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	ori	$a1, $s8, 1836
	ldx.w	$a1, $s1, $a1
	st.w	$a0, $s1, 88
	slli.d	$a0, $a6, 2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.w	$a0, $s1, 92
	mul.w	$a0, $a1, $a6
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	st.w	$a0, $s1, 96
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	alsl.w	$a2, $a6, $s4, 4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a3, $s5, $a0
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$fp, $a0, %got_pc_lo12(listX)
	ld.d	$a1, $fp, 0
	addi.d	$a5, $sp, 280
	move	$a0, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 280
	vld	$vr1, $sp, 296
	vpickev.h	$vr2, $vr1, $vr0
	vstelm.h	$vr0, $s1, 104, 0
	vstelm.h	$vr0, $s1, 106, 2
	vstelm.h	$vr0, $s1, 108, 4
	vstelm.h	$vr0, $s1, 110, 6
	vstelm.h	$vr1, $s1, 136, 0
	vstelm.h	$vr1, $s1, 138, 2
	vld	$vr0, $sp, 312
	vld	$vr3, $sp, 328
	vstelm.h	$vr1, $s1, 140, 4
	vstelm.h	$vr1, $s1, 142, 6
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	vst	$vr2, $a2, 0
	vpickev.h	$vr1, $vr3, $vr0
	vstelm.h	$vr0, $s1, 168, 0
	vstelm.h	$vr0, $s1, 170, 2
	vstelm.h	$vr0, $s1, 172, 4
	ld.d	$a0, $s7, 0
	vstelm.h	$vr0, $s1, 174, 6
	vstelm.h	$vr3, $s1, 200, 0
	ori	$a1, $s6, 1480
	add.d	$t2, $a0, $a1
	ld.w	$a0, $t2, 172
	vstelm.h	$vr3, $s1, 202, 2
	vstelm.h	$vr3, $s1, 204, 4
	vstelm.h	$vr3, $s1, 206, 6
	vst	$vr1, $a2, 16
	beqz	$a0, .LBB19_58
# %bb.55:                               #   in Loop: Header=BB19_52 Depth=2
	ldptr.w	$a0, $s1, 5932
	ldptr.w	$a1, $s1, 5936
	ori	$a2, $zero, 64
	div.w	$a7, $a2, $a0
	addi.d	$t0, $a7, -1
	div.w	$a3, $a2, $a1
	addi.d	$a4, $a3, -1
	mul.w	$a1, $a3, $a7
	srai.d	$a2, $a1, 1
	slli.d	$a0, $s0, 5
	addi.d	$a0, $a0, -32
	pcalau12i	$a5, %got_pc_hi20(subblk_offset_y)
	ld.d	$a5, $a5, %got_pc_lo12(subblk_offset_y)
	ldx.bu	$a5, $a5, $a0
	ld.w	$a6, $s1, 88
	add.d	$a6, $a6, $a5
	pcalau12i	$a5, %got_pc_hi20(subblk_offset_x)
	ld.d	$a5, $a5, %got_pc_lo12(subblk_offset_x)
	ldx.bu	$a5, $a5, $a0
	ld.w	$t1, $s1, 96
	move	$t7, $zero
	add.d	$t1, $t1, $a5
	ld.d	$a0, $fp, 0
	ld.w	$a5, $t2, 0
	st.d	$t2, $sp, 152                   # 8-byte Folded Spill
	ld.w	$t2, $t2, 4
	slli.d	$t3, $s2, 3
	ldx.d	$a0, $a0, $t3
	addi.w	$t3, $a5, -1
	addi.w	$a5, $t2, -1
	ori	$t2, $s6, 1536
	ldx.d	$a0, $a0, $t2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	mul.d	$a0, $t1, $a7
	add.w	$t2, $a0, $s4
	div.w	$a0, $t2, $a7
	srai.d	$t4, $a0, 63
	andn	$a0, $a0, $t4
	slt	$t4, $a0, $t3
	maskeqz	$a0, $a0, $t4
	masknez	$t4, $t3, $t4
	or	$s6, $a0, $t4
	add.w	$a0, $t2, $t0
	div.w	$a0, $a0, $a7
	srai.d	$t4, $a0, 63
	andn	$a0, $a0, $t4
	slt	$t4, $a0, $t3
	maskeqz	$a0, $a0, $t4
	masknez	$t4, $t3, $t4
	or	$t5, $a0, $t4
	and	$t8, $t2, $t0
	sub.d	$fp, $a7, $t8
	addi.d	$t1, $t1, 1
	mul.d	$t1, $t1, $a7
	add.w	$t1, $t1, $s4
	div.w	$t2, $t1, $a7
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $t3
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $t3, $t4
	or	$s0, $t2, $t4
	add.w	$t2, $t1, $t0
	div.w	$t2, $t2, $a7
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $t3
	maskeqz	$t2, $t2, $t4
	masknez	$t3, $t3, $t4
	or	$s8, $t2, $t3
	and	$t0, $t1, $t0
	sub.d	$a7, $a7, $t0
	mul.d	$t1, $a6, $a3
	add.w	$t1, $t1, $s5
	div.w	$t2, $t1, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a5
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a5, $t3
	or	$s3, $t2, $t3
	add.w	$t2, $t1, $a4
	div.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a5
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a5, $t3
	or	$a0, $t2, $t3
	and	$t4, $t1, $a4
	sub.d	$t6, $a3, $t4
	mul.d	$t1, $fp, $t4
	st.d	$t1, $sp, 264                   # 8-byte Folded Spill
	mul.d	$t1, $t8, $t4
	st.d	$t1, $sp, 256                   # 8-byte Folded Spill
	mulw.d.w	$t1, $fp, $t6
	st.d	$t1, $sp, 248                   # 8-byte Folded Spill
	mul.d	$t1, $t8, $t6
	st.d	$t1, $sp, 240                   # 8-byte Folded Spill
	mul.d	$t1, $a7, $t4
	st.d	$t1, $sp, 232                   # 8-byte Folded Spill
	mul.d	$t1, $t0, $t4
	st.d	$t1, $sp, 224                   # 8-byte Folded Spill
	mulw.d.w	$t1, $a7, $t6
	st.d	$t1, $sp, 216                   # 8-byte Folded Spill
	mul.d	$t1, $t0, $t6
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 1
	mul.d	$a6, $a6, $a3
	add.w	$a6, $a6, $s5
	div.w	$s2, $a6, $a3
	srai.d	$s4, $s2, 63
	andn	$s2, $s2, $s4
	slt	$s4, $s2, $a5
	maskeqz	$s2, $s2, $s4
	masknez	$s4, $a5, $s4
	or	$t1, $s2, $s4
	add.w	$s2, $a6, $a4
	div.w	$s2, $s2, $a3
	srai.d	$s4, $s2, 63
	andn	$s2, $s2, $s4
	slt	$s4, $s2, $a5
	maskeqz	$s2, $s2, $s4
	masknez	$a5, $a5, $s4
	or	$t2, $s2, $a5
	and	$a5, $a6, $a4
	sub.d	$s5, $a3, $a5
	mul.d	$a3, $fp, $a5
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	mul.d	$a3, $t8, $a5
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	mulw.d.w	$a6, $fp, $s5
	mul.d	$t8, $t8, $s5
	mul.d	$fp, $a7, $a5
	mul.d	$s2, $t0, $a5
	mulw.d.w	$s4, $a7, $s5
	mul.d	$s5, $t0, $s5
	ori	$s7, $zero, 1
	slli.d	$ra, $s3, 3
	slli.d	$s3, $a0, 3
	slli.d	$s6, $s6, 1
	slli.d	$a0, $t5, 1
	slli.d	$s0, $s0, 1
	slli.d	$s8, $s8, 1
	slli.d	$a5, $t1, 3
	slli.d	$a7, $t2, 3
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB19_56:                              # %.preheader.preheader.i
                                        #   Parent Loop BB19_49 Depth=1
                                        #     Parent Loop BB19_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t7, $t7, 3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ldx.d	$t1, $a3, $t7
	ldx.d	$t2, $t1, $ra
	ldx.d	$t3, $t1, $s3
	ldx.hu	$t7, $t2, $s6
	ldx.hu	$t4, $t2, $a0
	ldx.hu	$t5, $t3, $s6
	ldx.hu	$t6, $t3, $a0
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	mul.d	$t7, $a3, $t7
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	mul.d	$t4, $a3, $t4
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	mul.d	$t5, $a3, $t5
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	mul.d	$t6, $a3, $t6
	add.d	$t5, $t6, $t5
	add.d	$t4, $t4, $t7
	add.d	$t4, $t4, $a2
	add.w	$t4, $t4, $t5
	div.w	$t7, $t4, $a1
	st.h	$t7, $s1, 104
	ldx.hu	$t4, $t2, $s0
	ldx.hu	$t2, $t2, $s8
	ldx.hu	$t5, $t3, $s0
	ldx.hu	$t3, $t3, $s8
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	mul.d	$t4, $a3, $t4
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	mul.d	$t2, $a3, $t2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	mul.d	$t5, $a3, $t5
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	mul.d	$t3, $a3, $t3
	add.d	$t3, $t3, $t5
	add.d	$t2, $t2, $t4
	add.d	$t2, $t2, $a2
	add.w	$t2, $t2, $t3
	ldx.d	$t3, $t1, $a7
	div.w	$t2, $t2, $a1
	ldx.d	$t1, $t1, $a5
	st.h	$t2, $s1, 106
	ldx.hu	$t4, $t3, $s6
	ldx.hu	$t5, $t3, $a0
	ldx.hu	$t6, $t1, $s6
	ldx.hu	$a3, $t1, $a0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	mul.d	$t4, $a4, $t4
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	mul.d	$t5, $a4, $t5
	add.d	$t4, $t5, $t4
	mul.d	$t5, $a6, $t6
	mul.d	$a3, $t8, $a3
	add.d	$a3, $a3, $t5
	add.d	$a3, $a3, $a2
	add.w	$a3, $a3, $t4
	div.w	$a3, $a3, $a1
	st.h	$a3, $s1, 136
	ldx.hu	$t4, $t3, $s0
	ldx.hu	$t3, $t3, $s8
	ldx.hu	$t5, $t1, $s0
	ldx.hu	$t1, $t1, $s8
	mul.d	$t4, $fp, $t4
	mul.d	$t3, $s2, $t3
	add.d	$t3, $t3, $t4
	mul.d	$t4, $s4, $t5
	mul.d	$t1, $s5, $t1
	add.d	$t1, $t1, $t4
	add.d	$t1, $t1, $a2
	add.w	$t1, $t1, $t3
	st.h	$t7, $t0, 0
	st.h	$t2, $t0, 2
	div.w	$t1, $t1, $a1
	st.h	$t1, $s1, 138
	st.h	$a3, $t0, 4
	st.h	$t1, $t0, 6
	addi.d	$t0, $t0, 8
	andi	$a3, $s7, 1
	ori	$t7, $zero, 1
	move	$s7, $zero
	bnez	$a3, .LBB19_56
# %bb.57:                               # %buildPredblockRegionYUV.exit.loopexit
                                        #   in Loop: Header=BB19_52 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 172
	sltui	$a0, $a0, 1
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	lu12i.w	$s6, 77
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	lu12i.w	$s8, 1
	b	.LBB19_59
	.p2align	4, , 16
.LBB19_58:                              #   in Loop: Header=BB19_52 Depth=2
	ori	$a0, $zero, 1
.LBB19_59:                              # %buildPredblockRegionYUV.exit
                                        #   in Loop: Header=BB19_52 Depth=2
	ld.d	$a1, $s3, 12
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 32, 3
	slli.d	$a2, $a2, 3
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a1, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $t1, 0
	ld.d	$a5, $a3, 8
	ld.d	$a6, $t1, 8
	ld.d	$a7, $a3, 16
	ld.d	$t0, $t1, 16
	ld.d	$a3, $a3, 24
	ld.d	$t1, $t1, 24
	stx.d	$a4, $a1, $a2
	stx.d	$a6, $a5, $a2
	stx.d	$t0, $a7, $a2
	stx.d	$t1, $a3, $a2
	bnez	$a0, .LBB19_51
# %bb.60:                               # %.preheader158
                                        #   in Loop: Header=BB19_52 Depth=2
	ld.d	$a0, $s3, 20
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a3, $a1, $a2
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.h	$a4, $t0, 32
	ld.d	$t2, $sp, 160                   # 8-byte Folded Reload
	stx.h	$a4, $a3, $t2
	ld.h	$a4, $t0, 34
	addi.d	$a5, $t2, 2
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $t1
	ld.h	$a6, $t0, 36
	ld.h	$a7, $t0, 38
	ld.d	$a0, $a0, 8
	stx.h	$a4, $a3, $a5
	stx.h	$a6, $a1, $t2
	stx.h	$a7, $a1, $a5
	ldx.d	$a1, $a0, $a2
	ld.h	$a2, $t0, 40
	ld.h	$a3, $t0, 42
	ldx.d	$a0, $a0, $t1
	ld.h	$a4, $t0, 44
	ld.h	$a6, $t0, 46
	stx.h	$a2, $a1, $t2
	stx.h	$a3, $a1, $a5
	stx.h	$a4, $a0, $t2
	stx.h	$a6, $a0, $a5
	b	.LBB19_51
.LBB19_61:                              # %._crit_edge170
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_62:                              # %CopyImgData.exit.thread
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.Lfunc_end19:
	.size	copy_to_conceal, .Lfunc_end19-copy_to_conceal
                                        # -- End function
	.globl	sliding_window_poc_management   # -- Begin function sliding_window_poc_management
	.p2align	5
	.type	sliding_window_poc_management,@function
sliding_window_poc_management:          # @sliding_window_poc_management
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$a1, $a0, %got_pc_lo12(dpb)
	ld.w	$a0, $a1, 28
	ld.w	$a1, $a1, 24
	bne	$a0, $a1, .LBB20_3
# %bb.1:                                # %.preheader
	addi.w	$a0, $a0, -1
	beqz	$a0, .LBB20_3
# %bb.2:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	pcalau12i	$a0, %pc_hi20(pocs_in_dpb)
	addi.d	$a0, $a0, %pc_lo12(pocs_in_dpb)
	addi.d	$a1, $a0, 4
	pcaddu18i	$t8, %call36(memmove)
	jr	$t8
.LBB20_3:                               # %.loopexit
	ret
.Lfunc_end20:
	.size	sliding_window_poc_management, .Lfunc_end20-sliding_window_poc_management
                                        # -- End function
	.globl	write_lost_non_ref_pic          # -- Begin function write_lost_non_ref_pic
	.p2align	5
	.type	write_lost_non_ref_pic,@function
write_lost_non_ref_pic:                 # @write_lost_non_ref_pic
# %bb.0:
	blez	$a0, .LBB21_5
# %bb.1:
	pcalau12i	$a2, %got_pc_hi20(dpb)
	ld.d	$a2, $a2, %got_pc_lo12(dpb)
	ld.w	$a2, $a2, 40
	sub.w	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ldptr.w	$a2, $a2, 6064
	bge	$a2, $a0, .LBB21_5
# %bb.2:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(concealment_head)
	ld.d	$a0, $fp, %pc_lo12(concealment_head)
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 56
	st.w	$zero, $sp, 44
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(write_stored_frame)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(concealment_head)
	ld.d	$a3, $a0, 16
	pcalau12i	$a1, %pc_hi20(concealment_end)
	ld.d	$a2, $a1, %pc_lo12(concealment_end)
	st.d	$a3, $fp, %pc_lo12(concealment_head)
	bne	$a2, $a0, .LBB21_4
# %bb.3:
	ld.d	$a2, $a2, 16
	st.d	$a2, $a1, %pc_lo12(concealment_end)
.LBB21_4:                               # %delete_node.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
.LBB21_5:
	ret
.Lfunc_end21:
	.size	write_lost_non_ref_pic, .Lfunc_end21-write_lost_non_ref_pic
                                        # -- End function
	.globl	write_lost_ref_after_idr        # -- Begin function write_lost_ref_after_idr
	.p2align	5
	.type	write_lost_ref_after_idr,@function
write_lost_ref_after_idr:               # @write_lost_ref_after_idr
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(last_out_fs)
	ld.d	$a1, $s0, %pc_lo12(last_out_fs)
	ld.d	$a1, $a1, 48
	move	$fp, $a0
	bnez	$a1, .LBB22_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 48
	ld.w	$a2, $a0, 52
	ld.w	$a3, $a0, 56
	ld.w	$a4, $a0, 64
	move	$a0, $zero
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, %pc_lo12(last_out_fs)
	move	$a1, $a0
	st.d	$a0, $a2, 48
	ori	$a0, $zero, 3
	st.w	$a0, $a2, 0
.LBB22_2:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a2, $s0, 0
	ldptr.w	$a0, $a2, 6068
	ori	$a3, $zero, 2
	ori	$s1, $zero, 1
	bne	$a0, $a3, .LBB22_4
# %bb.3:
	ori	$a0, $zero, 1
	stptr.w	$a0, $a2, 6068
	ori	$s1, $zero, 2
.LBB22_4:
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$a0, $a0, %got_pc_lo12(dpb)
	ld.d	$a0, $a0, 0
	slli.d	$a3, $fp, 3
	ldx.d	$a0, $a0, $a3
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(copy_to_conceal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	stptr.w	$s1, $a0, 6068
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	write_lost_ref_after_idr, .Lfunc_end22-write_lost_ref_after_idr
                                        # -- End function
	.p2align	5                               # -- Begin function buildPredRegionYUV
	.type	buildPredRegionYUV,@function
buildPredRegionYUV:                     # @buildPredRegionYUV
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 8
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1652
	ldx.w	$a0, $a0, $a4
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	srai.d	$a0, $a1, 63
	andn	$s1, $a1, $a0
	bstrpick.d	$a0, $a2, 62, 59
	add.w	$a0, $a2, $a0
	bstrpick.d	$a1, $a3, 62, 59
	add.w	$a1, $a3, $a1
	srai.d	$a1, $a1, 4
	slli.d	$a2, $a1, 2
	st.w	$a2, $s3, 76
	lu12i.w	$a3, 1
	ori	$a2, $a3, 1840
	ldx.w	$a2, $s3, $a2
	srai.d	$a0, $a0, 4
	st.w	$a0, $s3, 72
	st.w	$a1, $s3, 68
	mul.d	$a1, $a2, $a1
	ori	$a2, $a3, 1836
	ldx.w	$a2, $s3, $a2
	st.w	$a1, $s3, 88
	slli.d	$a1, $a0, 2
	st.w	$a1, $s3, 92
	mul.d	$a0, $a2, $a0
	st.w	$a0, $s3, 96
	addi.d	$a0, $s3, 104
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a1, $zero, 104
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$s8, $a0, %got_pc_lo12(listX)
	move	$s4, $zero
	ori	$s7, $zero, 32
	.p2align	4, , 16
.LBB23_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_2 Depth 2
	ld.w	$a0, $s3, 76
	move	$fp, $zero
	move	$s6, $zero
	add.d	$a0, $a0, $s4
	slli.d	$s2, $a0, 4
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	add.d	$s5, $s3, $a1
	.p2align	4, , 16
.LBB23_2:                               # %.preheader177
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s3, 92
	ld.w	$a2, $s0, 0
	ld.w	$a3, $s0, 4
	ld.d	$a1, $s8, 0
	add.d	$a0, $s6, $a0
	alsl.w	$a2, $a0, $a2, 4
	add.w	$a3, $a3, $s2
	addi.d	$a5, $sp, 184
	move	$a0, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	ld.h	$a0, $sp, 184
	stx.h	$a0, $s5, $fp
	ld.h	$a0, $sp, 200
	ld.h	$a1, $sp, 216
	ld.h	$a2, $sp, 232
	add.d	$a3, $s5, $fp
	st.h	$a0, $a3, 32
	st.h	$a1, $a3, 64
	st.h	$a2, $a3, 96
	ld.h	$a0, $sp, 188
	ld.h	$a1, $sp, 204
	ld.h	$a2, $sp, 220
	ld.h	$a4, $sp, 236
	st.h	$a0, $a3, 2
	st.h	$a1, $a3, 34
	st.h	$a2, $a3, 66
	st.h	$a4, $a3, 98
	ld.h	$a0, $sp, 192
	ld.h	$a1, $sp, 208
	ld.h	$a2, $sp, 224
	ld.h	$a4, $sp, 240
	st.h	$a0, $a3, 4
	st.h	$a1, $a3, 36
	st.h	$a2, $a3, 68
	st.h	$a4, $a3, 100
	ld.h	$a0, $sp, 196
	ld.h	$a1, $sp, 212
	ld.h	$a2, $sp, 228
	ld.h	$a4, $sp, 244
	st.h	$a0, $a3, 6
	st.h	$a1, $a3, 38
	st.h	$a2, $a3, 70
	st.h	$a4, $a3, 102
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 1
	bne	$fp, $s7, .LBB23_2
# %bb.3:                                #   in Loop: Header=BB23_1 Depth=1
	addi.d	$s4, $s4, 1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 128
	ori	$a0, $zero, 4
	bne	$s4, $a0, .LBB23_1
# %bb.4:                                # %.preheader175.preheader
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $zero
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a6, 30
	ori	$a2, $zero, 512
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB23_5:                               # %.preheader175
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a3, $t3, $a0
	add.d	$a4, $t3, $a0
	add.d	$a5, $a1, $a0
	st.h	$a3, $a5, -30
	ld.h	$a3, $a4, 2
	st.h	$a3, $a5, -28
	ld.h	$a3, $a4, 4
	st.h	$a3, $a5, -26
	ld.h	$a3, $a4, 6
	st.h	$a3, $a5, -24
	ld.h	$a3, $a4, 8
	st.h	$a3, $a5, -22
	ld.h	$a3, $a4, 10
	st.h	$a3, $a5, -20
	ld.h	$a3, $a4, 12
	st.h	$a3, $a5, -18
	ld.h	$a3, $a4, 14
	st.h	$a3, $a5, -16
	ld.h	$a3, $a4, 16
	st.h	$a3, $a5, -14
	ld.h	$a3, $a4, 18
	st.h	$a3, $a5, -12
	ld.h	$a3, $a4, 20
	st.h	$a3, $a5, -10
	ld.h	$a3, $a4, 22
	st.h	$a3, $a5, -8
	ld.h	$a3, $a4, 24
	st.h	$a3, $a5, -6
	ld.h	$a3, $a4, 26
	st.h	$a3, $a5, -4
	ld.h	$a3, $a4, 28
	st.h	$a3, $a5, -2
	ld.h	$a3, $a4, 30
	stx.h	$a3, $a1, $a0
	addi.d	$a0, $a0, 32
	bne	$a0, $a2, .LBB23_5
# %bb.6:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$t2, 77
	ori	$a1, $t2, 1480
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 172
	beqz	$a0, .LBB23_18
# %bb.7:
	ldptr.w	$a0, $s3, 5932
	addi.d	$a5, $a6, 512
	ldptr.w	$a1, $s3, 5936
	ori	$a4, $zero, 64
	div.w	$a2, $a4, $a0
	addi.d	$a3, $a2, -1
	div.w	$a4, $a4, $a1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1828
	ldx.wu	$a0, $s3, $a0
	addi.d	$a1, $a4, -1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	mul.w	$a6, $a4, $a2
	srai.d	$a7, $a6, 1
	addi.w	$a1, $a0, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	srli.d	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 5
	addi.d	$a1, $a0, -32
	pcalau12i	$a0, %got_pc_hi20(subblk_offset_y)
	ld.d	$a0, $a0, %got_pc_lo12(subblk_offset_y)
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(subblk_offset_x)
	ld.d	$t0, $a0, %got_pc_lo12(subblk_offset_x)
	ld.d	$t1, $s8, 0
	move	$a0, $zero
	add.d	$a1, $t0, $a1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a1, $s1, $t1, 3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a4, 31, 0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$t0, $zero, 1
	ori	$a1, $t2, 1536
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s1, $zero, 8
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	b	.LBB23_9
	.p2align	4, , 16
.LBB23_8:                               # %.preheader173
                                        #   in Loop: Header=BB23_9 Depth=1
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.h	$a0, $s3, 104
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	st.h	$a0, $a5, 0
	ld.h	$a0, $s3, 106
	st.h	$a0, $a5, 2
	ld.h	$a0, $s3, 108
	st.h	$a0, $a5, 4
	ld.h	$a0, $s3, 110
	st.h	$a0, $a5, 6
	ld.h	$a0, $s3, 112
	st.h	$a0, $a5, 8
	ld.h	$a0, $s3, 114
	st.h	$a0, $a5, 10
	ld.h	$a0, $s3, 116
	st.h	$a0, $a5, 12
	ld.h	$a0, $s3, 118
	st.h	$a0, $a5, 14
	ld.h	$a0, $s3, 136
	st.h	$a0, $a5, 16
	ld.h	$a0, $s3, 138
	st.h	$a0, $a5, 18
	ld.h	$a0, $s3, 140
	st.h	$a0, $a5, 20
	ld.h	$a0, $s3, 142
	st.h	$a0, $a5, 22
	ld.h	$a0, $s3, 144
	st.h	$a0, $a5, 24
	ld.h	$a0, $s3, 146
	st.h	$a0, $a5, 26
	ld.h	$a0, $s3, 148
	st.h	$a0, $a5, 28
	ld.h	$a0, $s3, 150
	st.h	$a0, $a5, 30
	ld.h	$a0, $s3, 168
	st.h	$a0, $a5, 32
	ld.h	$a0, $s3, 170
	st.h	$a0, $a5, 34
	ld.h	$a0, $s3, 172
	st.h	$a0, $a5, 36
	ld.h	$a0, $s3, 174
	st.h	$a0, $a5, 38
	ld.h	$a0, $s3, 176
	st.h	$a0, $a5, 40
	ld.h	$a0, $s3, 178
	st.h	$a0, $a5, 42
	ld.h	$a0, $s3, 180
	st.h	$a0, $a5, 44
	ld.h	$a0, $s3, 182
	st.h	$a0, $a5, 46
	ld.h	$a0, $s3, 200
	st.h	$a0, $a5, 48
	ld.h	$a0, $s3, 202
	st.h	$a0, $a5, 50
	ld.h	$a0, $s3, 204
	st.h	$a0, $a5, 52
	ld.h	$a0, $s3, 206
	st.h	$a0, $a5, 54
	ld.h	$a0, $s3, 208
	st.h	$a0, $a5, 56
	ld.h	$a0, $s3, 210
	st.h	$a0, $a5, 58
	ld.h	$a0, $s3, 212
	st.h	$a0, $a5, 60
	ld.h	$a0, $s3, 214
	st.h	$a0, $a5, 62
	ld.h	$a0, $s3, 232
	st.h	$a0, $a5, 64
	ld.h	$a0, $s3, 234
	st.h	$a0, $a5, 66
	ld.h	$a0, $s3, 236
	st.h	$a0, $a5, 68
	ld.h	$a0, $s3, 238
	st.h	$a0, $a5, 70
	ld.h	$a0, $s3, 240
	st.h	$a0, $a5, 72
	ld.h	$a0, $s3, 242
	st.h	$a0, $a5, 74
	ld.h	$a0, $s3, 244
	st.h	$a0, $a5, 76
	ld.h	$a0, $s3, 246
	st.h	$a0, $a5, 78
	ld.h	$a0, $s3, 264
	st.h	$a0, $a5, 80
	ld.h	$a0, $s3, 266
	st.h	$a0, $a5, 82
	ld.h	$a0, $s3, 268
	st.h	$a0, $a5, 84
	ld.h	$a0, $s3, 270
	st.h	$a0, $a5, 86
	ld.h	$a0, $s3, 272
	st.h	$a0, $a5, 88
	ld.h	$a0, $s3, 274
	st.h	$a0, $a5, 90
	ld.h	$a0, $s3, 276
	st.h	$a0, $a5, 92
	ld.h	$a0, $s3, 278
	st.h	$a0, $a5, 94
	ld.h	$a0, $s3, 296
	st.h	$a0, $a5, 96
	ld.h	$a0, $s3, 298
	st.h	$a0, $a5, 98
	ld.h	$a0, $s3, 300
	st.h	$a0, $a5, 100
	ld.h	$a0, $s3, 302
	st.h	$a0, $a5, 102
	ld.h	$a0, $s3, 304
	st.h	$a0, $a5, 104
	ld.h	$a0, $s3, 306
	st.h	$a0, $a5, 106
	ld.h	$a0, $s3, 308
	st.h	$a0, $a5, 108
	ld.h	$a0, $s3, 310
	st.h	$a0, $a5, 110
	ld.h	$a0, $s3, 328
	st.h	$a0, $a5, 112
	ld.h	$a0, $s3, 330
	st.h	$a0, $a5, 114
	ld.h	$a0, $s3, 332
	st.h	$a0, $a5, 116
	ld.h	$a0, $s3, 334
	st.h	$a0, $a5, 118
	ld.h	$a0, $s3, 336
	st.h	$a0, $a5, 120
	ld.h	$a0, $s3, 338
	st.h	$a0, $a5, 122
	ld.h	$a0, $s3, 340
	st.h	$a0, $a5, 124
	ld.h	$a0, $s3, 342
	st.h	$a0, $a5, 126
	addi.d	$a5, $a5, 128
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	move	$t0, $zero
	beqz	$a1, .LBB23_18
.LBB23_9:                               # %.preheader174
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_11 Depth 2
                                        #       Child Loop BB23_12 Depth 3
                                        #         Child Loop BB23_13 Depth 4
                                        #           Child Loop BB23_14 Depth 5
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	blt	$a1, $a5, .LBB23_8
# %bb.10:                               # %.preheader172.lr.ph
                                        #   in Loop: Header=BB23_9 Depth=1
	move	$t2, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a5, 88
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$t5, $a5, 96
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.w	$t7, $a5, 0
	ld.wu	$s8, $a5, 4
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a5
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.w	$t0, $a5, 0
	ld.w	$t1, $a5, 4
	slli.d	$a0, $a0, 3
	ldx.d	$ra, $a1, $a0
	addi.w	$t6, $t0, -1
	addi.w	$t4, $t1, -1
	st.d	$t5, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $t5, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB23_11:                              # %.preheader172
                                        #   Parent Loop BB23_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_12 Depth 3
                                        #         Child Loop BB23_13 Depth 4
                                        #           Child Loop BB23_14 Depth 5
	move	$a5, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a0, $t2, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB23_12:                              #   Parent Loop BB23_9 Depth=1
                                        #     Parent Loop BB23_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB23_13 Depth 4
                                        #           Child Loop BB23_14 Depth 5
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $a5
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.bu	$fp, $a0, $a5
	move	$t1, $zero
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$t2, $a0, $a1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$s0, $a0, $fp
	bstrpick.d	$t2, $t2, 31, 0
	slli.d	$a1, $a1, 5
	add.d	$a1, $t3, $a1
	alsl.d	$t3, $fp, $a1, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a0, $fp
	mul.d	$a1, $a2, $a1
	addi.d	$fp, $a1, -1
	mul.d	$a1, $a2, $s0
	.p2align	4, , 16
.LBB23_13:                              #   Parent Loop BB23_9 Depth=1
                                        #     Parent Loop BB23_11 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB23_14 Depth 5
	add.d	$s0, $t1, $t2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	mul.d	$s0, $s0, $a0
	add.w	$s5, $s0, $s8
	div.w	$s0, $s5, $a4
	srai.d	$s3, $s0, 63
	andn	$s0, $s0, $s3
	slt	$s3, $s0, $t4
	maskeqz	$s0, $s0, $s3
	masknez	$s3, $t4, $s3
	or	$s0, $s0, $s3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.w	$s3, $a0, $s5
	div.w	$s3, $s3, $a4
	srai.d	$s4, $s3, 63
	andn	$s3, $s3, $s4
	slt	$s4, $s3, $t4
	maskeqz	$s3, $s3, $s4
	masknez	$s4, $t4, $s4
	or	$s3, $s3, $s4
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $ra, $s0
	slli.d	$s3, $s3, 3
	ldx.d	$s4, $ra, $s3
	move	$s3, $zero
	and	$s5, $a0, $s5
	sub.d	$s6, $a4, $s5
	move	$s7, $t7
	.p2align	4, , 16
.LBB23_14:                              #   Parent Loop BB23_9 Depth=1
                                        #     Parent Loop BB23_11 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_13 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.w	$a0, $a1, $s7
	div.w	$t8, $a0, $a2
	srai.d	$s2, $t8, 63
	andn	$t8, $t8, $s2
	slt	$s2, $t8, $t6
	maskeqz	$t8, $t8, $s2
	masknez	$s2, $t6, $s2
	or	$t8, $t8, $s2
	add.w	$s2, $fp, $s7
	div.w	$s2, $s2, $a2
	srai.d	$t0, $s2, 63
	andn	$t0, $s2, $t0
	slt	$s2, $t0, $t6
	maskeqz	$t0, $t0, $s2
	masknez	$s2, $t6, $s2
	or	$t0, $t0, $s2
	and	$a0, $a3, $a0
	sub.d	$s2, $a2, $a0
	slli.d	$t8, $t8, 1
	ldx.hu	$t5, $s0, $t8
	slli.d	$t0, $t0, 1
	ldx.hu	$a5, $s0, $t0
	ldx.hu	$t8, $s4, $t8
	ldx.hu	$t0, $s4, $t0
	mul.d	$t5, $s2, $t5
	mul.d	$a5, $a0, $a5
	mul.d	$t8, $s2, $t8
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a0, $t8
	mul.d	$a0, $a0, $s5
	add.d	$a5, $a5, $t5
	mul.d	$a5, $a5, $s6
	add.d	$a5, $a5, $a7
	add.w	$a0, $a5, $a0
	div.w	$a0, $a0, $a6
	stx.h	$a0, $t3, $s3
	addi.d	$s3, $s3, 2
	add.d	$s7, $s7, $a2
	bne	$s3, $s1, .LBB23_14
# %bb.15:                               #   in Loop: Header=BB23_13 Depth=4
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 32
	ori	$a0, $zero, 4
	bne	$t1, $a0, .LBB23_13
# %bb.16:                               #   in Loop: Header=BB23_12 Depth=3
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	ori	$a0, $zero, 4
	bne	$a5, $a0, .LBB23_12
# %bb.17:                               #   in Loop: Header=BB23_11 Depth=2
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$t2, $a0, .LBB23_11
	b	.LBB23_8
.LBB23_18:                              # %.loopexit
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end23:
	.size	buildPredRegionYUV, .Lfunc_end23-buildPredRegionYUV
                                        # -- End function
	.p2align	5                               # -- Begin function edgeDistortion
	.type	edgeDistortion,@function
edgeDistortion:                         # @edgeDistortion
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	srai.d	$a5, $a4, 3
	div.w	$a6, $a1, $a5
	mul.d	$a7, $a4, $a6
	slli.w	$a7, $a7, 3
	alsl.d	$a3, $a7, $a3, 1
	mul.d	$a5, $a6, $a5
	sub.d	$a1, $a1, $a5
	slli.w	$a1, $a1, 3
	alsl.d	$a1, $a1, $a3, 1
	addi.d	$a3, $a1, 32
	slli.w	$a5, $a4, 4
	alsl.d	$a5, $a5, $a1, 1
	addi.d	$a6, $a1, -2
	slli.d	$a7, $a4, 1
	sub.d	$t0, $a1, $a7
	addi.d	$t1, $a2, 30
	ori	$t5, $zero, 3
	ori	$t2, $zero, 8
	addi.w	$t3, $zero, -3
	ori	$t4, $zero, 3
	pcalau12i	$t6, %pc_hi20(.LJTI24_0)
	addi.d	$t6, $t6, %pc_lo12(.LJTI24_0)
	vrepli.b	$vr0, 0
	ori	$t7, $zero, 1
	ori	$t8, $zero, 512
	.p2align	4, , 16
.LBB24_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_7 Depth 2
                                        #       Child Loop BB24_17 Depth 3
                                        #       Child Loop BB24_19 Depth 3
	move	$fp, $zero
	move	$s1, $zero
	ori	$s0, $zero, 4
	b	.LBB24_7
.LBB24_2:                               # %vector.body25
                                        #   in Loop: Header=BB24_7 Depth=2
	ld.d	$s2, $a2, 480
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $s1, 0
	ld.d	$s1, $a2, 488
	vinsgr2vr.d	$vr2, $s2, 0
	ld.d	$s2, $a5, 0
	ld.d	$s3, $a5, 8
	vinsgr2vr.d	$vr3, $s1, 0
	ld.d	$s1, $a2, 496
	vinsgr2vr.d	$vr4, $s2, 0
	vinsgr2vr.d	$vr5, $s3, 0
	ld.d	$s2, $a2, 504
	vinsgr2vr.d	$vr6, $s1, 0
	ld.d	$s1, $a5, 16
	vabsd.hu	$vr2, $vr2, $vr4
	vinsgr2vr.d	$vr4, $s2, 0
	vabsd.hu	$vr3, $vr3, $vr5
	vinsgr2vr.d	$vr5, $s1, 0
	ld.d	$s1, $a5, 24
.LBB24_3:                               # %.loopexit
                                        #   in Loop: Header=BB24_7 Depth=2
	vilvl.h	$vr2, $vr0, $vr2
	vilvl.h	$vr3, $vr0, $vr3
	vadd.w	$vr1, $vr2, $vr1
	vinsgr2vr.d	$vr2, $s1, 0
	vabsd.hu	$vr5, $vr6, $vr5
	vilvl.h	$vr5, $vr0, $vr5
	vabsd.hu	$vr2, $vr4, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vadd.w	$vr1, $vr5, $vr1
	vadd.w	$vr2, $vr2, $vr3
.LBB24_4:                               # %.loopexit
                                        #   in Loop: Header=BB24_7 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$s1, $vr1, 0
.LBB24_5:                               # %.loopexit
                                        #   in Loop: Header=BB24_7 Depth=2
	addi.w	$fp, $fp, 1
.LBB24_6:                               #   in Loop: Header=BB24_7 Depth=2
	addi.d	$s0, $s0, 1
	beq	$s0, $t2, .LBB24_20
.LBB24_7:                               #   Parent Loop BB24_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_17 Depth 3
                                        #       Child Loop BB24_19 Depth 3
	slli.d	$s2, $s0, 2
	ldx.w	$s2, $a0, $s2
	blt	$s2, $t5, .LBB24_6
# %bb.8:                                #   in Loop: Header=BB24_7 Depth=2
	addi.d	$s2, $s0, -4
	bltu	$t4, $s2, .LBB24_5
# %bb.9:                                #   in Loop: Header=BB24_7 Depth=2
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $t6, $s2
	add.d	$s2, $t6, $s2
	jr	$s2
.LBB24_10:                              # %vector.body
                                        #   in Loop: Header=BB24_7 Depth=2
	ld.d	$s2, $a2, 0
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $s1, 0
	ld.d	$s1, $a2, 8
	vinsgr2vr.d	$vr2, $s2, 0
	ld.d	$s2, $t0, 0
	ld.d	$s3, $t0, 8
	vinsgr2vr.d	$vr3, $s1, 0
	ld.d	$s1, $a2, 16
	vinsgr2vr.d	$vr4, $s2, 0
	vinsgr2vr.d	$vr5, $s3, 0
	ld.d	$s2, $a2, 24
	vinsgr2vr.d	$vr6, $s1, 0
	ld.d	$s1, $t0, 16
	vabsd.hu	$vr2, $vr2, $vr4
	vinsgr2vr.d	$vr4, $s2, 0
	vabsd.hu	$vr3, $vr3, $vr5
	vinsgr2vr.d	$vr5, $s1, 0
	ld.d	$s1, $t0, 24
	b	.LBB24_3
.LBB24_11:                              # %vector.scevcheck36
                                        #   in Loop: Header=BB24_7 Depth=2
	bne	$a4, $t7, .LBB24_16
# %bb.12:                               # %vector.body40
                                        #   in Loop: Header=BB24_7 Depth=2
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $s1, 0
	ld.h	$s1, $a2, 30
	ld.h	$s2, $a2, 62
	ld.h	$s3, $a2, 94
	ld.h	$s4, $a2, 126
	vinsgr2vr.h	$vr2, $s1, 0
	vinsgr2vr.h	$vr2, $s2, 1
	vinsgr2vr.h	$vr2, $s3, 2
	vinsgr2vr.h	$vr2, $s4, 3
	ld.h	$s1, $a2, 158
	ld.h	$s2, $a2, 190
	ld.h	$s3, $a2, 222
	ld.h	$s4, $a2, 254
	vinsgr2vr.h	$vr3, $s1, 0
	vinsgr2vr.h	$vr3, $s2, 1
	ld.d	$s1, $a1, 32
	ld.d	$s2, $a1, 40
	vinsgr2vr.h	$vr3, $s3, 2
	vinsgr2vr.h	$vr3, $s4, 3
	vinsgr2vr.d	$vr4, $s1, 0
	vinsgr2vr.d	$vr5, $s2, 0
	vabsd.hu	$vr2, $vr2, $vr4
	vilvl.h	$vr2, $vr0, $vr2
	vabsd.hu	$vr3, $vr3, $vr5
	vilvl.h	$vr3, $vr0, $vr3
	vadd.w	$vr1, $vr2, $vr1
	ld.h	$s1, $a2, 286
	ld.h	$s2, $a2, 318
	ld.h	$s3, $a2, 350
	ld.h	$s4, $a2, 382
	vinsgr2vr.h	$vr2, $s1, 0
	vinsgr2vr.h	$vr2, $s2, 1
	vinsgr2vr.h	$vr2, $s3, 2
	vinsgr2vr.h	$vr2, $s4, 3
	ld.h	$s1, $a2, 414
	ld.h	$s2, $a2, 446
	ld.h	$s3, $a2, 478
	ld.h	$s4, $a2, 510
	vinsgr2vr.h	$vr4, $s1, 0
	vinsgr2vr.h	$vr4, $s2, 1
	ld.d	$s1, $a1, 48
	ld.d	$s2, $a1, 56
	b	.LBB24_15
.LBB24_13:                              # %vector.scevcheck
                                        #   in Loop: Header=BB24_7 Depth=2
	bne	$a4, $t7, .LBB24_18
# %bb.14:                               # %vector.body14
                                        #   in Loop: Header=BB24_7 Depth=2
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $s1, 0
	ld.h	$s1, $a2, 0
	ld.h	$s2, $a2, 32
	ld.h	$s3, $a2, 64
	ld.h	$s4, $a2, 96
	vinsgr2vr.h	$vr2, $s1, 0
	vinsgr2vr.h	$vr2, $s2, 1
	vinsgr2vr.h	$vr2, $s3, 2
	vinsgr2vr.h	$vr2, $s4, 3
	ld.h	$s1, $a2, 128
	ld.h	$s2, $a2, 160
	ld.h	$s3, $a2, 192
	ld.h	$s4, $a2, 224
	vinsgr2vr.h	$vr3, $s1, 0
	vinsgr2vr.h	$vr3, $s2, 1
	ld.d	$s1, $a1, -2
	ld.d	$s2, $a1, 6
	vinsgr2vr.h	$vr3, $s3, 2
	vinsgr2vr.h	$vr3, $s4, 3
	vinsgr2vr.d	$vr4, $s1, 0
	vinsgr2vr.d	$vr5, $s2, 0
	vabsd.hu	$vr2, $vr2, $vr4
	vilvl.h	$vr2, $vr0, $vr2
	vabsd.hu	$vr3, $vr3, $vr5
	vilvl.h	$vr3, $vr0, $vr3
	vadd.w	$vr1, $vr2, $vr1
	ld.h	$s1, $a2, 256
	ld.h	$s2, $a2, 288
	ld.h	$s3, $a2, 320
	ld.h	$s4, $a2, 352
	vinsgr2vr.h	$vr2, $s1, 0
	vinsgr2vr.h	$vr2, $s2, 1
	vinsgr2vr.h	$vr2, $s3, 2
	vinsgr2vr.h	$vr2, $s4, 3
	ld.h	$s1, $a2, 384
	ld.h	$s2, $a2, 416
	ld.h	$s3, $a2, 448
	ld.h	$s4, $a2, 480
	vinsgr2vr.h	$vr4, $s1, 0
	vinsgr2vr.h	$vr4, $s2, 1
	ld.d	$s1, $a1, 14
	ld.d	$s2, $a1, 22
.LBB24_15:                              # %.loopexit
                                        #   in Loop: Header=BB24_7 Depth=2
	vinsgr2vr.h	$vr4, $s3, 2
	vinsgr2vr.h	$vr4, $s4, 3
	vinsgr2vr.d	$vr5, $s1, 0
	vinsgr2vr.d	$vr6, $s2, 0
	vabsd.hu	$vr2, $vr2, $vr5
	vilvl.h	$vr2, $vr0, $vr2
	vabsd.hu	$vr4, $vr4, $vr6
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr2, $vr4, $vr3
	b	.LBB24_4
.LBB24_16:                              # %.preheader142.preheader
                                        #   in Loop: Header=BB24_7 Depth=2
	move	$s2, $zero
	move	$s3, $a3
	.p2align	4, , 16
.LBB24_17:                              # %.preheader142
                                        #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.hu	$s4, $t1, $s2
	ld.hu	$s5, $s3, 0
	sub.d	$s4, $s4, $s5
	srai.d	$s5, $s4, 63
	xor	$s4, $s4, $s5
	sub.d	$s4, $s4, $s5
	add.d	$s1, $s4, $s1
	addi.d	$s2, $s2, 32
	add.d	$s3, $s3, $a7
	bne	$s2, $t8, .LBB24_17
	b	.LBB24_5
.LBB24_18:                              # %.preheader138.preheader
                                        #   in Loop: Header=BB24_7 Depth=2
	move	$s2, $zero
	move	$s3, $a6
	.p2align	4, , 16
.LBB24_19:                              # %.preheader138
                                        #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.hu	$s4, $a2, $s2
	ld.hu	$s5, $s3, 0
	sub.d	$s4, $s4, $s5
	srai.d	$s5, $s4, 63
	xor	$s4, $s4, $s5
	sub.d	$s4, $s4, $s5
	add.d	$s1, $s4, $s1
	addi.d	$s2, $s2, 32
	add.d	$s3, $s3, $a7
	bne	$s2, $t8, .LBB24_19
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_20:                              #   in Loop: Header=BB24_1 Depth=1
	addi.w	$t5, $t5, -3
	bltu	$t3, $t5, .LBB24_22
# %bb.21:                               #   in Loop: Header=BB24_1 Depth=1
	ori	$t5, $zero, 2
	beqz	$fp, .LBB24_1
.LBB24_22:
	beqz	$fp, .LBB24_24
# %bb.23:
	addi.w	$a0, $s1, 0
	div.w	$a0, $a0, $fp
	b	.LBB24_25
.LBB24_24:
	move	$a0, $zero
.LBB24_25:
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end24:
	.size	edgeDistortion, .Lfunc_end24-edgeDistortion
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI24_0:
	.word	.LBB24_10-.LJTI24_0
	.word	.LBB24_13-.LJTI24_0
	.word	.LBB24_2-.LJTI24_0
	.word	.LBB24_11-.LJTI24_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function copyPredMB
	.type	copyPredMB,@function
copyPredMB:                             # @copyPredMB
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
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a3, 0
	lu12i.w	$a3, 77
	ori	$t2, $a3, 1528
	add.d	$a3, $a4, $t2
	ld.w	$a5, $a3, 124
	pcalau12i	$a6, %pc_hi20(uv_div)
	addi.d	$a6, $a6, %pc_lo12(uv_div)
	alsl.d	$a7, $a5, $a6, 2
	slli.d	$t0, $a5, 2
	ldx.w	$a6, $a6, $t0
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a6, $a7, 16
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	srai.d	$a2, $a2, 3
	div.w	$a7, $a0, $a2
	mul.d	$a2, $a7, $a2
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.w	$a2, $a0, 3
	slli.w	$a0, $a7, 3
	ori	$t1, $zero, 15
	alsl.w	$a7, $a7, $t1, 3
	ldx.d	$a4, $a4, $t2
	slt	$t2, $a7, $a0
	masknez	$t3, $a7, $t2
	maskeqz	$t2, $a0, $t2
	or	$t3, $t2, $t3
	addi.d	$t4, $a2, 1
	addi.d	$t5, $a2, 2
	addi.d	$t6, $a2, 3
	addi.d	$t7, $a2, 4
	addi.d	$t8, $a2, 5
	addi.d	$fp, $a2, 6
	addi.d	$s0, $a2, 7
	addi.d	$s1, $a2, 8
	addi.d	$s2, $a2, 9
	addi.d	$s3, $a2, 10
	addi.d	$s4, $a2, 11
	addi.d	$s5, $a2, 12
	addi.d	$s6, $a2, 13
	addi.d	$s7, $a2, 14
	addi.d	$s8, $a2, 15
	alsl.d	$t2, $a0, $a4, 3
	sub.d	$a4, $t3, $a0
	addi.d	$t3, $a4, 1
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 1
	slli.d	$t7, $t7, 1
	slli.d	$t8, $t8, 1
	slli.d	$fp, $fp, 1
	slli.d	$s0, $s0, 1
	slli.d	$s1, $s1, 1
	slli.d	$s2, $s2, 1
	slli.d	$s3, $s3, 1
	slli.d	$s4, $s4, 1
	slli.d	$s5, $s5, 1
	slli.d	$s6, $s6, 1
	slli.d	$s7, $s7, 1
	slli.d	$s8, $s8, 1
	move	$ra, $a1
	.p2align	4, , 16
.LBB25_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $t2, 0
	ld.h	$t0, $ra, 0
	slli.d	$a6, $a2, 1
	stx.h	$t0, $a4, $a6
	addi.w	$a6, $t1, -14
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $t4
	addi.w	$a6, $t1, -13
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $t5
	addi.w	$a6, $t1, -12
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $t6
	addi.w	$a6, $t1, -11
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $t7
	addi.w	$a6, $t1, -10
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $t8
	addi.w	$a6, $t1, -9
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $fp
	addi.w	$a6, $t1, -8
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $s0
	addi.w	$a6, $t1, -7
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $s1
	addi.w	$a6, $t1, -6
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $s2
	addi.w	$a6, $t1, -5
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $s3
	addi.w	$a6, $t1, -4
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $s4
	addi.w	$a6, $t1, -3
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $s5
	addi.w	$a6, $t1, -2
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $s6
	addi.w	$a6, $t1, -1
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $s7
	slli.d	$a6, $t1, 1
	ldx.h	$a6, $a1, $a6
	stx.h	$a6, $a4, $s8
	addi.d	$t2, $t2, 8
	addi.d	$ra, $ra, 32
	addi.w	$t3, $t3, -1
	addi.w	$t1, $t1, 16
	bnez	$t3, .LBB25_1
# %bb.2:
	beqz	$a5, .LBB25_4
# %bb.3:
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	sra.w	$a0, $a0, $a4
	sra.w	$t1, $a7, $a4
	bge	$t1, $a0, .LBB25_5
.LBB25_4:                               # %.loopexit
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
.LBB25_5:                               # %.lr.ph70
	addi.d	$a4, $a2, 15
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	sra.w	$a2, $a2, $a5
	sra.w	$a4, $a4, $a5
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a7, $a5, %got_pc_lo12(img)
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$a7, $a7, 0
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	slli.w	$t7, $t0, 2
	addi.w	$t0, $t1, 1
	slli.d	$t1, $a2, 1
	sub.w	$t2, $a4, $a2
	bstrpick.d	$t6, $t2, 31, 0
	add.d	$t3, $a2, $t6
	slli.d	$t5, $t3, 1
	addi.d	$t3, $t5, 2
	slli.d	$t8, $t7, 1
	sub.d	$t4, $t1, $t8
	add.d	$fp, $t4, $a1
	addi.d	$t4, $fp, 512
	sub.d	$t5, $t5, $t8
	add.d	$t5, $t5, $a1
	addi.d	$t5, $t5, 642
	addi.d	$t6, $t6, 1
	bstrpick.d	$s0, $t6, 32, 4
	slli.d	$s5, $s0, 4
	alsl.d	$s0, $s0, $a2, 4
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	andi	$s0, $t6, 8
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$s0, $t6, 32, 3
	slli.d	$s1, $s0, 3
	alsl.d	$s0, $s0, $a2, 3
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$fp, $fp, 656
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	addi.d	$fp, $t1, 16
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	sub.d	$fp, $zero, $s1
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $a1, 640
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	sub.d	$t7, $a2, $t7
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s7, $a4, 1
	sub.d	$a1, $a1, $t8
	addi.d	$a1, $a1, 640
	ori	$s8, $zero, 7
	b	.LBB25_7
	.p2align	4, , 16
.LBB25_6:                               # %._crit_edge
                                        #   in Loop: Header=BB25_7 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$t7, $a0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	beq	$t0, $t7, .LBB25_4
.LBB25_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_20 Depth 2
                                        #     Child Loop BB25_17 Depth 2
                                        #     Child Loop BB25_10 Depth 2
	blt	$a4, $a2, .LBB25_6
# %bb.8:                                # %iter.check
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$t7, $a3, 8
	ld.d	$t8, $t7, 0
	ld.d	$fp, $t7, 8
	ldptr.w	$t7, $a7, 5932
	slli.d	$s0, $a0, 3
	ldx.d	$t8, $t8, $s0
	ldx.d	$ra, $fp, $s0
	mul.d	$fp, $a5, $t7
	move	$s2, $a2
	bgeu	$t2, $s8, .LBB25_11
.LBB25_9:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB25_7 Depth=1
	alsl.d	$t8, $s2, $t8, 1
	alsl.d	$s1, $s2, $ra, 1
	sub.d	$t7, $s7, $s2
	alsl.d	$fp, $s2, $fp, 1
	add.d	$fp, $a1, $fp
	.p2align	4, , 16
.LBB25_10:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB25_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s0, $fp, -128
	st.h	$s0, $t8, 0
	ld.h	$s0, $fp, 0
	st.h	$s0, $s1, 0
	addi.d	$t8, $t8, 2
	addi.d	$s1, $s1, 2
	addi.w	$t7, $t7, -1
	addi.d	$fp, $fp, 2
	bnez	$t7, .LBB25_10
	b	.LBB25_6
	.p2align	4, , 16
.LBB25_11:                              # %vector.memcheck
                                        #   in Loop: Header=BB25_7 Depth=1
	add.d	$s6, $t8, $t1
	add.d	$s0, $t8, $t3
	add.d	$s1, $ra, $t1
	add.d	$s4, $ra, $t3
	sltu	$s2, $s6, $s4
	sltu	$s3, $s1, $s0
	and	$s3, $s2, $s3
	move	$s2, $a2
	bnez	$s3, .LBB25_9
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB25_7 Depth=1
	slli.d	$s2, $a6, 1
	mul.d	$s2, $s2, $t7
	add.d	$t7, $t4, $s2
	add.d	$s3, $t5, $s2
	sltu	$s2, $s6, $s3
	sltu	$s0, $t7, $s0
	and	$s0, $s2, $s0
	move	$s2, $a2
	bnez	$s0, .LBB25_9
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB25_7 Depth=1
	sltu	$s0, $s1, $s3
	sltu	$t7, $t7, $s4
	and	$t7, $s0, $t7
	move	$s2, $a2
	bnez	$t7, .LBB25_9
# %bb.14:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB25_7 Depth=1
	ori	$t7, $zero, 15
	bgeu	$t2, $t7, .LBB25_19
# %bb.15:                               #   in Loop: Header=BB25_7 Depth=1
	move	$t7, $zero
.LBB25_16:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	add.d	$s1, $s0, $t7
	add.d	$s0, $a2, $t7
	alsl.d	$s2, $s0, $ra, 1
	alsl.d	$s4, $s0, $t8, 1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	add.d	$t7, $s0, $t7
	alsl.d	$t7, $t7, $fp, 1
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	add.d	$t7, $s0, $t7
	.p2align	4, , 16
.LBB25_17:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB25_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, -128
	vld	$vr1, $t7, 0
	vst	$vr0, $s4, 0
	vst	$vr1, $s2, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 16
	addi.d	$s4, $s4, 16
	addi.d	$t7, $t7, 16
	bnez	$s1, .LBB25_17
# %bb.18:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	beq	$t6, $t7, .LBB25_6
	b	.LBB25_9
.LBB25_19:                              # %vector.body.preheader
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
	add.d	$s2, $t7, $fp
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	add.d	$s1, $ra, $t7
	add.d	$s4, $t8, $t7
	move	$t7, $s5
	.p2align	4, , 16
.LBB25_20:                              # %vector.body
                                        #   Parent Loop BB25_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s2, -144
	vld	$vr1, $s2, -128
	vld	$vr2, $s2, -16
	vld	$vr3, $s2, 0
	vst	$vr0, $s4, -16
	vst	$vr1, $s4, 0
	vst	$vr2, $s1, -16
	vst	$vr3, $s1, 0
	addi.d	$t7, $t7, -16
	addi.d	$s2, $s2, 32
	addi.d	$s1, $s1, 32
	addi.d	$s4, $s4, 32
	bnez	$t7, .LBB25_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB25_7 Depth=1
	beq	$t6, $s5, .LBB25_6
# %bb.22:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB25_7 Depth=1
	move	$t7, $s5
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beqz	$s0, .LBB25_9
	b	.LBB25_16
.Lfunc_end25:
	.size	copyPredMB, .Lfunc_end25-copyPredMB
                                        # -- End function
	.type	concealment_head,@object        # @concealment_head
	.bss
	.globl	concealment_head
	.p2align	3, 0x0
concealment_head:
	.dword	0
	.size	concealment_head, 8

	.type	concealment_end,@object         # @concealment_end
	.globl	concealment_end
	.p2align	3, 0x0
concealment_end:
	.dword	0
	.size	concealment_end, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ercConcealInterFrame: predMB"
	.size	.L.str, 29

	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Missing POC=%d\n"
	.size	.L.str.1, 16

	.type	pocs_in_dpb,@object             # @pocs_in_dpb
	.comm	pocs_in_dpb,400,4
	.type	last_out_fs,@object             # @last_out_fs
	.comm	last_out_fs,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.type	erc_img,@object                 # @erc_img
	.comm	erc_img,8,8
	.type	uv_div,@object                  # @uv_div
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
uv_div:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	uv_div, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compare_pic_by_pic_num_desc
	.addrsig_sym compare_pic_by_poc_desc
	.addrsig_sym compare_pic_by_poc_asc
	.addrsig_sym compare_pic_by_lt_pic_num_asc
	.addrsig_sym comp
	.addrsig_sym pocs_in_dpb
