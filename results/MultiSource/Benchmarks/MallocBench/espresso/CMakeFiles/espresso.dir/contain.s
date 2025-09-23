	.file	"contain.c"
	.text
	.globl	sf_contain                      # -- Begin function sf_contain
	.p2align	5
	.type	sf_contain,@function
sf_contain:                             # @sf_contain
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s1, $a0, 12
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	mul.w	$a1, $a1, $s1
	move	$s0, $a0
	blez	$a1, .LBB0_4
# %bb.1:                                # %.lr.ph.i.preheader
	ld.d	$s1, $fp, 24
	alsl.d	$s2, $a1, $s1, 2
	move	$a0, $s0
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $s1, 0
	move	$s3, $a0
	st.w	$a1, $s1, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	slli.d	$a0, $a0, 16
	or	$a0, $a1, $a0
	st.w	$a0, $s1, 0
	ld.w	$a0, $fp, 0
	st.d	$s1, $s3, 0
	alsl.d	$s1, $a0, $s1, 2
	addi.d	$a0, $s3, 8
	bltu	$s1, $s2, .LBB0_2
# %bb.3:                                # %._crit_edge.loopexit.i
	ld.w	$s1, $fp, 12
.LBB0_4:                                # %sf_sort.exit
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(descend)
	ld.d	$a3, $a0, %got_pc_lo12(descend)
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$a0, $s0
	beqz	$a1, .LBB0_22
# %bb.5:                                # %.preheader.i
	ld.d	$a0, $s0, 8
	move	$s3, $s0
	beqz	$a0, .LBB0_11
# %bb.6:                                # %.lr.ph.i7.preheader
	move	$s1, $s0
	move	$s3, $s0
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $s1, 16
	move	$s1, $s2
	beqz	$a0, .LBB0_10
.LBB0_8:                                # %.lr.ph.i7
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s2, $s1, 8
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(descend)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a1, $s3, 8
	st.d	$a0, $s3, 0
	move	$s3, $a1
	b	.LBB0_7
.LBB0_10:                               # %._crit_edge.loopexit.i9
	ld.d	$a1, $s2, 0
.LBB0_11:                               # %rm_equal.exit
	st.d	$a1, $s3, 0
	st.d	$zero, $s3, 8
	ld.d	$a2, $s0, 0
	move	$a0, $s0
	beqz	$a2, .LBB0_22
# %bb.12:                               # %.lr.ph.i11.preheader
	addi.d	$a4, $zero, -1
	ori	$a1, $zero, 1
	move	$a3, $s0
	move	$a0, $s0
                                        # implicit-def: $r9
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_15 Depth=1
	addi.d	$a6, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a6
.LBB0_14:                               # %.loopexit.i
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a2, $a3, 0
	beqz	$a2, .LBB0_22
.LBB0_15:                               # %.lr.ph.i11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_20 Depth 3
	ld.wu	$a6, $a2, 0
	addi.d	$a3, $a3, 8
	addi.w	$a7, $a4, 0
	srli.d	$a4, $a6, 16
	xor	$a7, $a4, $a7
	sltui	$a7, $a7, 1
	masknez	$t0, $a0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	andi	$a6, $a6, 1023
	sltui	$a7, $a6, 1
	sub.w	$a7, $zero, $a7
	move	$t0, $s0
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	move	$t1, $a7
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	beqz	$t1, .LBB0_14
.LBB0_18:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
	beq	$t0, $a5, .LBB0_13
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=2
	ld.d	$t2, $t0, 0
	addi.d	$t0, $t0, 8
	move	$t3, $a6
	.p2align	4, , 16
.LBB0_20:                               #   Parent Loop BB0_15 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t1, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t4, $a2, $t3
	ldx.w	$t3, $t2, $t3
	andn	$t3, $t4, $t3
	bnez	$t3, .LBB0_17
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=3
	addi.w	$t3, $t1, -1
	blt	$a1, $t1, .LBB0_20
	b	.LBB0_16
.LBB0_22:                               # %rm_contain.exit
	st.d	$zero, $a0, 0
	ld.w	$a1, $fp, 4
	sub.d	$a0, $a0, $s0
	srli.d	$s2, $a0, 3
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s0, 0
	move	$s1, $a0
	st.w	$s2, $a0, 12
	beqz	$a4, .LBB0_33
# %bb.23:                               # %.lr.ph.preheader.i
	ld.d	$a0, $s1, 24
	ori	$a1, $zero, 7
	ori	$a2, $zero, 32
	move	$a3, $s0
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %.loopexit
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.w	$a5, $s1, 0
	ld.d	$a4, $a3, 8
	addi.d	$a3, $a3, 8
	alsl.d	$a0, $a5, $a0, 2
	beqz	$a4, .LBB0_33
.LBB0_25:                               # %.lr.ph.i15
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	ld.wu	$a5, $a4, 0
	andi	$t1, $a5, 1023
	bltu	$t1, $a1, .LBB0_30
# %bb.26:                               # %.lr.ph.i15
                                        #   in Loop: Header=BB0_25 Depth=1
	sub.d	$a5, $a4, $a0
	bltu	$a5, $a2, .LBB0_30
# %bb.27:                               # %vector.ph
                                        #   in Loop: Header=BB0_25 Depth=1
	addi.d	$a6, $t1, 1
	andi	$a7, $a6, 2040
	sub.d	$a5, $t1, $a7
	alsl.d	$t0, $t1, $a4, 2
	addi.d	$t0, $t0, -12
	alsl.d	$t1, $t1, $a0, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB0_28:                               # %vector.body
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t0, -16
	vst	$vr0, $t1, 0
	vst	$vr1, $t1, -16
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB0_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB0_25 Depth=1
	beq	$a6, $a7, .LBB0_24
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_25 Depth=1
	move	$a5, $t1
.LBB0_31:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_25 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a4, $a5, $a4, 2
	.p2align	4, , 16
.LBB0_32:                               # %scalar.ph
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bnez	$a6, .LBB0_32
	b	.LBB0_24
.LBB0_33:                               # %sf_unlist.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	sf_contain, .Lfunc_end0-sf_contain
                                        # -- End function
	.globl	sf_rev_contain                  # -- Begin function sf_rev_contain
	.p2align	5
	.type	sf_rev_contain,@function
sf_rev_contain:                         # @sf_rev_contain
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s1, $a0, 12
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	mul.w	$a1, $a1, $s1
	move	$s0, $a0
	blez	$a1, .LBB1_4
# %bb.1:                                # %.lr.ph.i.preheader
	ld.d	$s1, $fp, 24
	alsl.d	$s2, $a1, $s1, 2
	move	$a0, $s0
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $s1, 0
	move	$s3, $a0
	st.w	$a1, $s1, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	slli.d	$a0, $a0, 16
	or	$a0, $a1, $a0
	st.w	$a0, $s1, 0
	ld.w	$a0, $fp, 0
	st.d	$s1, $s3, 0
	alsl.d	$s1, $a0, $s1, 2
	addi.d	$a0, $s3, 8
	bltu	$s1, $s2, .LBB1_2
# %bb.3:                                # %._crit_edge.loopexit.i
	ld.w	$s1, $fp, 12
.LBB1_4:                                # %sf_sort.exit
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(ascend)
	ld.d	$a3, $a0, %got_pc_lo12(ascend)
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$a0, $s0
	beqz	$a1, .LBB1_22
# %bb.5:                                # %.preheader.i
	ld.d	$a0, $s0, 8
	move	$s3, $s0
	beqz	$a0, .LBB1_11
# %bb.6:                                # %.lr.ph.i7.preheader
	move	$s1, $s0
	move	$s3, $s0
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $s1, 16
	move	$s1, $s2
	beqz	$a0, .LBB1_10
.LBB1_8:                                # %.lr.ph.i7
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s2, $s1, 8
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ascend)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_7
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a1, $s3, 8
	st.d	$a0, $s3, 0
	move	$s3, $a1
	b	.LBB1_7
.LBB1_10:                               # %._crit_edge.loopexit.i9
	ld.d	$a1, $s2, 0
.LBB1_11:                               # %rm_equal.exit
	st.d	$a1, $s3, 0
	st.d	$zero, $s3, 8
	ld.d	$a2, $s0, 0
	move	$a0, $s0
	beqz	$a2, .LBB1_22
# %bb.12:                               # %.lr.ph.i11.preheader
	addi.w	$a4, $zero, -1
	ori	$a1, $zero, 1
	move	$a3, $s0
	move	$a0, $s0
                                        # implicit-def: $r9
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_15 Depth=1
	addi.d	$a6, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a6
.LBB1_14:                               # %.loopexit.i
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.d	$a2, $a3, 0
	beqz	$a2, .LBB1_22
.LBB1_15:                               # %.lr.ph.i11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
                                        #       Child Loop BB1_20 Depth 3
	move	$a6, $a4
	ld.hu	$a4, $a2, 2
	addi.d	$a3, $a3, 8
	xor	$a6, $a4, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a0, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a7
	move	$a6, $s0
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_18 Depth=2
	move	$t0, $t1
.LBB1_17:                               #   in Loop: Header=BB1_18 Depth=2
	beqz	$t0, .LBB1_14
.LBB1_18:                               #   Parent Loop BB1_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_20 Depth 3
	beq	$a6, $a5, .LBB1_13
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=2
	ld.d	$a7, $a6, 0
	ld.wu	$t0, $a7, 0
	addi.d	$a6, $a6, 8
	andi	$t2, $t0, 1023
	sltui	$t0, $t2, 1
	sub.w	$t1, $zero, $t0
	.p2align	4, , 16
.LBB1_20:                               #   Parent Loop BB1_15 Depth=1
                                        #     Parent Loop BB1_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t0, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t3, $a7, $t2
	ldx.w	$t2, $a2, $t2
	andn	$t2, $t3, $t2
	bnez	$t2, .LBB1_17
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=3
	addi.w	$t2, $t0, -1
	blt	$a1, $t0, .LBB1_20
	b	.LBB1_16
.LBB1_22:                               # %rm_rev_contain.exit
	st.d	$zero, $a0, 0
	ld.w	$a1, $fp, 4
	sub.d	$a0, $a0, $s0
	srli.d	$s2, $a0, 3
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s0, 0
	move	$s1, $a0
	st.w	$s2, $a0, 12
	beqz	$a4, .LBB1_33
# %bb.23:                               # %.lr.ph.preheader.i
	ld.d	$a0, $s1, 24
	ori	$a1, $zero, 7
	ori	$a2, $zero, 32
	move	$a3, $s0
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_24:                               # %.loopexit
                                        #   in Loop: Header=BB1_25 Depth=1
	ld.w	$a5, $s1, 0
	ld.d	$a4, $a3, 8
	addi.d	$a3, $a3, 8
	alsl.d	$a0, $a5, $a0, 2
	beqz	$a4, .LBB1_33
.LBB1_25:                               # %.lr.ph.i15
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_32 Depth 2
	ld.wu	$a5, $a4, 0
	andi	$t1, $a5, 1023
	bltu	$t1, $a1, .LBB1_30
# %bb.26:                               # %.lr.ph.i15
                                        #   in Loop: Header=BB1_25 Depth=1
	sub.d	$a5, $a4, $a0
	bltu	$a5, $a2, .LBB1_30
# %bb.27:                               # %vector.ph
                                        #   in Loop: Header=BB1_25 Depth=1
	addi.d	$a6, $t1, 1
	andi	$a7, $a6, 2040
	sub.d	$a5, $t1, $a7
	alsl.d	$t0, $t1, $a4, 2
	addi.d	$t0, $t0, -12
	alsl.d	$t1, $t1, $a0, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB1_28:                               # %vector.body
                                        #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t0, -16
	vst	$vr0, $t1, 0
	vst	$vr1, $t1, -16
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB1_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB1_25 Depth=1
	beq	$a6, $a7, .LBB1_24
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_30:                               #   in Loop: Header=BB1_25 Depth=1
	move	$a5, $t1
.LBB1_31:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_25 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a4, $a5, $a4, 2
	.p2align	4, , 16
.LBB1_32:                               # %scalar.ph
                                        #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bnez	$a6, .LBB1_32
	b	.LBB1_24
.LBB1_33:                               # %sf_unlist.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	sf_rev_contain, .Lfunc_end1-sf_rev_contain
                                        # -- End function
	.globl	sf_ind_contain                  # -- Begin function sf_ind_contain
	.p2align	5
	.type	sf_ind_contain,@function
sf_ind_contain:                         # @sf_ind_contain
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s2, $a0, 12
	move	$s0, $a1
	slli.d	$a0, $s2, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	mul.w	$a1, $a1, $s2
	move	$s1, $a0
	blez	$a1, .LBB2_4
# %bb.1:                                # %.lr.ph.i.preheader
	ld.d	$s2, $fp, 24
	alsl.d	$s3, $a1, $s2, 2
	move	$a0, $s1
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $s2, 0
	move	$s4, $a0
	st.w	$a1, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	slli.d	$a0, $a0, 16
	or	$a0, $a1, $a0
	st.w	$a0, $s2, 0
	ld.w	$a0, $fp, 0
	st.d	$s2, $s4, 0
	alsl.d	$s2, $a0, $s2, 2
	addi.d	$a0, $s4, 8
	bltu	$s2, $s3, .LBB2_2
# %bb.3:                                # %._crit_edge.loopexit.i
	ld.w	$s2, $fp, 12
.LBB2_4:                                # %sf_sort.exit
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(descend)
	ld.d	$a3, $a0, %got_pc_lo12(descend)
	ori	$a2, $zero, 8
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$a0, $s1
	beqz	$a1, .LBB2_22
# %bb.5:                                # %.preheader.i
	ld.d	$a0, $s1, 8
	move	$s4, $s1
	beqz	$a0, .LBB2_11
# %bb.6:                                # %.lr.ph.i9.preheader
	move	$s2, $s1
	move	$s4, $s1
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a0, $s2, 16
	move	$s2, $s3
	beqz	$a0, .LBB2_10
.LBB2_8:                                # %.lr.ph.i9
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s3, $s2, 8
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(descend)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_7
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a0, $s2, 0
	addi.d	$a1, $s4, 8
	st.d	$a0, $s4, 0
	move	$s4, $a1
	b	.LBB2_7
.LBB2_10:                               # %._crit_edge.loopexit.i11
	ld.d	$a1, $s3, 0
.LBB2_11:                               # %rm_equal.exit
	st.d	$a1, $s4, 0
	st.d	$zero, $s4, 8
	ld.d	$a2, $s1, 0
	move	$a0, $s1
	beqz	$a2, .LBB2_22
# %bb.12:                               # %.lr.ph.i13.preheader
	addi.d	$a4, $zero, -1
	ori	$a1, $zero, 1
	move	$a3, $s1
	move	$a0, $s1
                                        # implicit-def: $r9
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_13:                               #   in Loop: Header=BB2_15 Depth=1
	addi.d	$a6, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a6
.LBB2_14:                               # %.loopexit.i
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.d	$a2, $a3, 0
	beqz	$a2, .LBB2_22
.LBB2_15:                               # %.lr.ph.i13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
                                        #       Child Loop BB2_20 Depth 3
	ld.wu	$a6, $a2, 0
	addi.d	$a3, $a3, 8
	addi.w	$a7, $a4, 0
	srli.d	$a4, $a6, 16
	xor	$a7, $a4, $a7
	sltui	$a7, $a7, 1
	masknez	$t0, $a0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	andi	$a6, $a6, 1023
	sltui	$a7, $a6, 1
	sub.w	$a7, $zero, $a7
	move	$t0, $s1
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_16:                               #   in Loop: Header=BB2_18 Depth=2
	move	$t1, $a7
.LBB2_17:                               #   in Loop: Header=BB2_18 Depth=2
	beqz	$t1, .LBB2_14
.LBB2_18:                               #   Parent Loop BB2_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_20 Depth 3
	beq	$t0, $a5, .LBB2_13
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=2
	ld.d	$t2, $t0, 0
	addi.d	$t0, $t0, 8
	move	$t3, $a6
	.p2align	4, , 16
.LBB2_20:                               #   Parent Loop BB2_15 Depth=1
                                        #     Parent Loop BB2_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t1, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t4, $a2, $t3
	ldx.w	$t3, $t2, $t3
	andn	$t3, $t4, $t3
	bnez	$t3, .LBB2_17
# %bb.21:                               #   in Loop: Header=BB2_20 Depth=3
	addi.w	$t3, $t1, -1
	blt	$a1, $t1, .LBB2_20
	b	.LBB2_16
.LBB2_22:                               # %rm_contain.exit
	st.d	$zero, $a0, 0
	ld.w	$a2, $fp, 4
	ld.d	$a4, $fp, 24
	sub.d	$a0, $a0, $s1
	srli.d	$a0, $a0, 3
	addi.w	$a1, $a0, 0
	move	$a0, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sf_ind_unlist)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
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
	ret
.Lfunc_end2:
	.size	sf_ind_contain, .Lfunc_end2-sf_ind_contain
                                        # -- End function
	.globl	sf_dupl                         # -- Begin function sf_dupl
	.p2align	5
	.type	sf_dupl,@function
sf_dupl:                                # @sf_dupl
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s1, $a0, 12
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	mul.w	$a1, $a1, $s1
	move	$s0, $a0
	blez	$a1, .LBB3_4
# %bb.1:                                # %.lr.ph.i.preheader
	ld.d	$s1, $fp, 24
	alsl.d	$s2, $a1, $s1, 2
	move	$a0, $s0
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $s1, 0
	move	$s3, $a0
	st.w	$a1, $s1, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	slli.d	$a0, $a0, 16
	or	$a0, $a1, $a0
	st.w	$a0, $s1, 0
	ld.w	$a0, $fp, 0
	st.d	$s1, $s3, 0
	alsl.d	$s1, $a0, $s1, 2
	addi.d	$a0, $s3, 8
	bltu	$s1, $s2, .LBB3_2
# %bb.3:                                # %._crit_edge.loopexit.i
	ld.w	$s1, $fp, 12
.LBB3_4:                                # %sf_sort.exit
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(descend)
	ld.d	$a3, $a0, %got_pc_lo12(descend)
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	move	$a2, $s0
	beqz	$a0, .LBB3_12
# %bb.5:                                # %.preheader.i
	ld.d	$a1, $s0, 8
	move	$s3, $s0
	beqz	$a1, .LBB3_11
# %bb.6:                                # %.lr.ph.i6.preheader
	move	$s1, $s0
	move	$s3, $s0
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_7:                                #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $s1, 16
	move	$s1, $s2
	beqz	$a0, .LBB3_10
.LBB3_8:                                # %.lr.ph.i6
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s2, $s1, 8
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(descend)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_7
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a1, $s3, 8
	st.d	$a0, $s3, 0
	move	$s3, $a1
	b	.LBB3_7
.LBB3_10:                               # %._crit_edge.loopexit.i8
	ld.d	$a0, $s2, 0
.LBB3_11:                               # %._crit_edge.i
	addi.d	$a2, $s3, 8
	st.d	$a0, $s3, 0
	st.d	$zero, $s3, 8
.LBB3_12:                               # %rm_equal.exit
	ld.w	$a1, $fp, 4
	sub.d	$a0, $a2, $s0
	srli.d	$s2, $a0, 3
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s0, 0
	move	$s1, $a0
	st.w	$s2, $a0, 12
	beqz	$a4, .LBB3_23
# %bb.13:                               # %.lr.ph.preheader.i
	ld.d	$a0, $s1, 24
	ori	$a1, $zero, 7
	ori	$a2, $zero, 32
	move	$a3, $s0
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               # %.loopexit
                                        #   in Loop: Header=BB3_15 Depth=1
	ld.w	$a5, $s1, 0
	ld.d	$a4, $a3, 8
	addi.d	$a3, $a3, 8
	alsl.d	$a0, $a5, $a0, 2
	beqz	$a4, .LBB3_23
.LBB3_15:                               # %.lr.ph.i10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
                                        #     Child Loop BB3_22 Depth 2
	ld.wu	$a5, $a4, 0
	andi	$t1, $a5, 1023
	bltu	$t1, $a1, .LBB3_20
# %bb.16:                               # %.lr.ph.i10
                                        #   in Loop: Header=BB3_15 Depth=1
	sub.d	$a5, $a4, $a0
	bltu	$a5, $a2, .LBB3_20
# %bb.17:                               # %vector.ph
                                        #   in Loop: Header=BB3_15 Depth=1
	addi.d	$a6, $t1, 1
	andi	$a7, $a6, 2040
	sub.d	$a5, $t1, $a7
	alsl.d	$t0, $t1, $a4, 2
	addi.d	$t0, $t0, -12
	alsl.d	$t1, $t1, $a0, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB3_18:                               # %vector.body
                                        #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t0, -16
	vst	$vr0, $t1, 0
	vst	$vr1, $t1, -16
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB3_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB3_15 Depth=1
	beq	$a6, $a7, .LBB3_14
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_20:                               #   in Loop: Header=BB3_15 Depth=1
	move	$a5, $t1
.LBB3_21:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_15 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a4, $a5, $a4, 2
	.p2align	4, , 16
.LBB3_22:                               # %scalar.ph
                                        #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bnez	$a6, .LBB3_22
	b	.LBB3_14
.LBB3_23:                               # %sf_unlist.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	sf_dupl, .Lfunc_end3-sf_dupl
                                        # -- End function
	.globl	sf_union                        # -- Begin function sf_union
	.p2align	5
	.type	sf_union,@function
sf_union:                               # @sf_union
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
	move	$s0, $a0
	ld.w	$fp, $a0, 12
	move	$s5, $a1
	slli.d	$a0, $fp, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 0
	mul.w	$a2, $a3, $fp
	move	$s1, $a0
	move	$a1, $a0
	blez	$a2, .LBB4_3
# %bb.1:                                # %.lr.ph.i
	ld.d	$a0, $s0, 24
	alsl.d	$a2, $a2, $a0, 2
	slli.d	$a3, $a3, 2
	move	$a4, $s1
	.p2align	4, , 16
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a4, 8
	st.d	$a0, $a4, 0
	add.d	$a0, $a0, $a3
	move	$a4, $a1
	bltu	$a0, $a2, .LBB4_2
.LBB4_3:                                # %sf_list.exit
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s0, $s5, 12
	st.d	$zero, $a1, 0
	slli.d	$a0, $s0, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 0
	mul.w	$a1, $a2, $s0
	move	$s2, $a0
	move	$a3, $a0
	blez	$a1, .LBB4_6
# %bb.4:                                # %.lr.ph.i24
	ld.d	$a0, $s5, 24
	alsl.d	$a1, $a1, $a0, 2
	slli.d	$a2, $a2, 2
	move	$a4, $s2
	.p2align	4, , 16
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a4, 8
	st.d	$a0, $a4, 0
	add.d	$a0, $a0, $a2
	move	$a4, $a3
	bltu	$a0, $a1, .LBB4_5
.LBB4_6:                                # %sf_list.exit27
	st.d	$zero, $a3, 0
	slt	$a0, $s0, $fp
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$s3, $a0
	move	$s6, $a0
	move	$s8, $s2
	move	$s4, $s2
	move	$s7, $s1
	beqz	$a1, .LBB4_20
# %bb.7:                                # %.lr.ph.i28.preheader
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	move	$s6, $s3
	move	$s8, $s2
	move	$s7, $s1
	move	$s5, $s1
	move	$s4, $s2
	beqz	$a0, .LBB4_17
# %bb.8:
	ori	$fp, $zero, 1
	addi.w	$s0, $zero, -1
	move	$s4, $s2
	move	$s5, $s1
	move	$s7, $s1
	move	$s8, $s2
	move	$s6, $s3
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(descend)
	jirl	$ra, $ra, 0
	beq	$a0, $fp, .LBB4_16
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB4_9 Depth=1
	beqz	$a0, .LBB4_13
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB4_9 Depth=1
	bne	$a0, $s0, .LBB4_14
# %bb.12:                               #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a0, $s5, 0
	addi.d	$s5, $s5, 8
	addi.d	$a1, $s7, 8
	st.d	$a0, $s7, 0
	move	$s7, $a1
	ld.d	$a1, $s5, 0
	bnez	$a1, .LBB4_15
	b	.LBB4_19
	.p2align	4, , 16
.LBB4_13:                               #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a0, $s5, 0
	addi.d	$s5, $s5, 8
	st.d	$a0, $s6, 0
	addi.d	$s6, $s6, 8
	addi.d	$s4, $s4, 8
.LBB4_14:                               #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a1, $s5, 0
	beqz	$a1, .LBB4_19
.LBB4_15:                               # %.lr.ph.i28
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB4_9
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a0, $s4, 0
	addi.d	$s4, $s4, 8
	addi.d	$a1, $s8, 8
	st.d	$a0, $s8, 0
	move	$s8, $a1
	ld.d	$a1, $s5, 0
	bnez	$a1, .LBB4_15
	b	.LBB4_19
.LBB4_17:                               # %.lr.ph61.i.preheader
	addi.d	$a0, $s5, 8
	.p2align	4, , 16
.LBB4_18:                               # %.lr.ph61.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $s7, 0
	ld.d	$a1, $a0, 0
	addi.d	$s7, $s7, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB4_18
.LBB4_19:
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
.LBB4_20:                               # %.preheader.i
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB4_23
# %bb.21:                               # %.lr.ph66.i.preheader
	addi.d	$a1, $s4, 8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_22:                               # %.lr.ph66.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s8, 0
	ld.d	$a0, $a1, 0
	addi.d	$a3, $s8, 8
	addi.d	$a1, $a1, 8
	move	$s8, $a3
	bnez	$a0, .LBB4_22
	b	.LBB4_24
.LBB4_23:
	move	$a3, $s8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
.LBB4_24:                               # %rm2_equal.exit
	st.d	$zero, $s7, 0
	ld.d	$a2, $s1, 0
	st.d	$zero, $s6, 0
	st.d	$zero, $a3, 0
	move	$a0, $s1
	beqz	$a2, .LBB4_36
# %bb.25:                               # %.preheader.i29.preheader
	ori	$a1, $zero, 1
	move	$a3, $s1
	move	$a0, $s1
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_26:                               # %.critedge.i
                                        #   in Loop: Header=BB4_28 Depth=1
	addi.d	$a4, $a0, 8
	st.d	$a2, $a0, 0
	move	$a0, $a4
.LBB4_27:                               # %.loopexit.i
                                        #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a2, $a3, 0
	beqz	$a2, .LBB4_36
.LBB4_28:                               # %.preheader.i29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_31 Depth 2
                                        #       Child Loop BB4_34 Depth 3
	addi.d	$a3, $a3, 8
	move	$a4, $s2
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_29:                               #   in Loop: Header=BB4_31 Depth=2
	move	$a6, $a7
.LBB4_30:                               #   in Loop: Header=BB4_31 Depth=2
	beqz	$a6, .LBB4_27
.LBB4_31:                               #   Parent Loop BB4_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_34 Depth 3
	ld.d	$a5, $a4, 0
	beqz	$a5, .LBB4_26
# %bb.32:                               #   in Loop: Header=BB4_31 Depth=2
	ld.wu	$a6, $a2, 0
	ld.hu	$a7, $a5, 2
	srli.d	$t0, $a6, 16
	bgeu	$t0, $a7, .LBB4_26
# %bb.33:                               #   in Loop: Header=BB4_31 Depth=2
	addi.d	$a4, $a4, 8
	andi	$t0, $a6, 1023
	sltui	$a6, $t0, 1
	sub.w	$a7, $zero, $a6
	.p2align	4, , 16
.LBB4_34:                               #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a6, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$t1, $a2, $t0
	ldx.w	$t0, $a5, $t0
	andn	$t0, $t1, $t0
	bnez	$t0, .LBB4_30
# %bb.35:                               #   in Loop: Header=BB4_34 Depth=3
	addi.w	$t0, $a6, -1
	blt	$a1, $a6, .LBB4_34
	b	.LBB4_29
.LBB4_36:                               # %rm2_contain.exit
	ld.d	$a3, $s2, 0
	st.d	$zero, $a0, 0
	move	$a1, $s2
	beqz	$a3, .LBB4_48
# %bb.37:                               # %.preheader.i33.preheader
	ori	$a2, $zero, 1
	move	$a4, $s2
	move	$a1, $s2
	b	.LBB4_40
	.p2align	4, , 16
.LBB4_38:                               # %.critedge.i38
                                        #   in Loop: Header=BB4_40 Depth=1
	addi.d	$a5, $a1, 8
	st.d	$a3, $a1, 0
	move	$a1, $a5
.LBB4_39:                               # %.loopexit.i39
                                        #   in Loop: Header=BB4_40 Depth=1
	ld.d	$a3, $a4, 0
	beqz	$a3, .LBB4_48
.LBB4_40:                               # %.preheader.i33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_43 Depth 2
                                        #       Child Loop BB4_46 Depth 3
	addi.d	$a4, $a4, 8
	move	$a5, $s1
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_41:                               #   in Loop: Header=BB4_43 Depth=2
	move	$a7, $t0
.LBB4_42:                               #   in Loop: Header=BB4_43 Depth=2
	beqz	$a7, .LBB4_39
.LBB4_43:                               #   Parent Loop BB4_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_46 Depth 3
	ld.d	$a6, $a5, 0
	beqz	$a6, .LBB4_38
# %bb.44:                               #   in Loop: Header=BB4_43 Depth=2
	ld.wu	$a7, $a3, 0
	ld.hu	$t0, $a6, 2
	srli.d	$t1, $a7, 16
	bgeu	$t1, $t0, .LBB4_38
# %bb.45:                               #   in Loop: Header=BB4_43 Depth=2
	addi.d	$a5, $a5, 8
	andi	$t1, $a7, 1023
	sltui	$a7, $t1, 1
	sub.w	$t0, $zero, $a7
	.p2align	4, , 16
.LBB4_46:                               #   Parent Loop BB4_40 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a7, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $a3, $t1
	ldx.w	$t1, $a6, $t1
	andn	$t1, $t2, $t1
	bnez	$t1, .LBB4_42
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=3
	addi.w	$t1, $a7, -1
	blt	$a2, $a7, .LBB4_46
	b	.LBB4_41
.LBB4_48:                               # %rm2_contain.exit48
	sub.d	$a0, $a0, $s1
	srli.d	$a0, $a0, 3
	sub.d	$a2, $s6, $s3
	srli.d	$a2, $a2, 3
	st.d	$zero, $a1, 0
	sub.d	$a1, $a1, $s2
	ld.w	$a4, $fp, 4
	srli.d	$a1, $a1, 3
	add.d	$a0, $a0, $a2
	add.w	$a3, $a0, $a1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sf_merge)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
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
.Lfunc_end4:
	.size	sf_union, .Lfunc_end4-sf_union
                                        # -- End function
	.globl	dist_merge                      # -- Begin function dist_merge
	.p2align	5
	.type	dist_merge,@function
dist_merge:                             # @dist_merge
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $a0, 80
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 12
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	mul.w	$a1, $a1, $s1
	move	$s0, $a0
	blez	$a1, .LBB5_4
# %bb.1:                                # %.lr.ph.i.preheader
	ld.d	$s1, $fp, 24
	alsl.d	$s2, $a1, $s1, 2
	move	$a0, $s0
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $s1, 0
	move	$s3, $a0
	st.w	$a1, $s1, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	slli.d	$a0, $a0, 16
	or	$a0, $a1, $a0
	st.w	$a0, $s1, 0
	ld.w	$a0, $fp, 0
	st.d	$s1, $s3, 0
	alsl.d	$s1, $a0, $s1, 2
	addi.d	$a0, $s3, 8
	bltu	$s1, $s2, .LBB5_2
# %bb.3:                                # %._crit_edge.loopexit.i
	ld.w	$s1, $fp, 12
.LBB5_4:                                # %sf_sort.exit
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(d1_order)
	ld.d	$a3, $a0, %got_pc_lo12(d1_order)
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB5_12
# %bb.5:                                # %.preheader.i
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB5_13
# %bb.6:                                # %.lr.ph.i7.preheader
	move	$s3, $zero
	move	$s4, $zero
	addi.d	$s1, $s0, 8
	ori	$s2, $zero, 1
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_7:                                #   in Loop: Header=BB5_9 Depth=1
	slli.d	$a0, $s3, 3
	addi.w	$s3, $s3, 1
	stx.d	$a1, $s0, $a0
	move	$s4, $s2
.LBB5_8:                                #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a0, $s1, 8
	addi.d	$s1, $s1, 8
	addi.w	$s2, $s2, 1
	beqz	$a0, .LBB5_11
.LBB5_9:                                # %.lr.ph.i7
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a0, $s4, $s0, 3
	slli.d	$s5, $s4, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(d1_order)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s0, $s5
	bnez	$a0, .LBB5_7
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a2, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	b	.LBB5_8
.LBB5_11:                               # %._crit_edge.loopexit.i8
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s0, $a0
	b	.LBB5_14
.LBB5_12:
	move	$s2, $zero
	b	.LBB5_15
.LBB5_13:
	move	$s3, $zero
.LBB5_14:                               # %._crit_edge.i
	addi.w	$s2, $s3, 1
	slli.d	$a1, $s3, 3
	stx.d	$a0, $s0, $a1
.LBB5_15:                               # %d1_rm_equal.exit
	ld.w	$a1, $fp, 4
	slli.d	$a0, $s2, 3
	stx.d	$zero, $s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s0, 0
	move	$s1, $a0
	st.w	$s2, $a0, 12
	beqz	$a4, .LBB5_26
# %bb.16:                               # %.lr.ph.preheader.i
	ld.d	$a0, $s1, 24
	ori	$a1, $zero, 7
	ori	$a2, $zero, 32
	move	$a3, $s0
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_17:                               # %.loopexit
                                        #   in Loop: Header=BB5_18 Depth=1
	ld.w	$a5, $s1, 0
	ld.d	$a4, $a3, 8
	addi.d	$a3, $a3, 8
	alsl.d	$a0, $a5, $a0, 2
	beqz	$a4, .LBB5_26
.LBB5_18:                               # %.lr.ph.i10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
                                        #     Child Loop BB5_25 Depth 2
	ld.wu	$a5, $a4, 0
	andi	$t1, $a5, 1023
	bltu	$t1, $a1, .LBB5_23
# %bb.19:                               # %.lr.ph.i10
                                        #   in Loop: Header=BB5_18 Depth=1
	sub.d	$a5, $a4, $a0
	bltu	$a5, $a2, .LBB5_23
# %bb.20:                               # %vector.ph
                                        #   in Loop: Header=BB5_18 Depth=1
	addi.d	$a6, $t1, 1
	andi	$a7, $a6, 2040
	sub.d	$a5, $t1, $a7
	alsl.d	$t0, $t1, $a4, 2
	addi.d	$t0, $t0, -12
	alsl.d	$t1, $t1, $a0, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB5_21:                               # %vector.body
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t0, -16
	vst	$vr0, $t1, 0
	vst	$vr1, $t1, -16
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB5_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB5_18 Depth=1
	beq	$a6, $a7, .LBB5_17
	b	.LBB5_24
	.p2align	4, , 16
.LBB5_23:                               #   in Loop: Header=BB5_18 Depth=1
	move	$a5, $t1
.LBB5_24:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_18 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a4, $a5, $a4, 2
	.p2align	4, , 16
.LBB5_25:                               # %scalar.ph
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bnez	$a6, .LBB5_25
	b	.LBB5_17
.LBB5_26:                               # %sf_unlist.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	dist_merge, .Lfunc_end5-dist_merge
                                        # -- End function
	.globl	d1merge                         # -- Begin function d1merge
	.p2align	5
	.type	d1merge,@function
d1merge:                                # @d1merge
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$a2, $a2, %got_pc_lo12(cube)
	ld.d	$a2, $a2, 72
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	pcaddu18i	$t8, %call36(dist_merge)
	jr	$t8
.Lfunc_end6:
	.size	d1merge, .Lfunc_end6-d1merge
                                        # -- End function
	.globl	d1_rm_equal                     # -- Begin function d1_rm_equal
	.p2align	5
	.type	d1_rm_equal,@function
d1_rm_equal:                            # @d1_rm_equal
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
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB7_8
# %bb.1:                                # %.preheader
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB7_9
# %bb.2:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$s2, $zero
	move	$s4, $zero
	addi.d	$s1, $fp, 8
	ori	$s3, $zero, 1
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_3:                                #   in Loop: Header=BB7_5 Depth=1
	slli.d	$a0, $s2, 3
	addi.w	$s2, $s2, 1
	stx.d	$a1, $fp, $a0
	move	$s4, $s3
.LBB7_4:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a0, $s1, 8
	addi.d	$s1, $s1, 8
	addi.w	$s3, $s3, 1
	beqz	$a0, .LBB7_7
.LBB7_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a0, $s4, $fp, 3
	slli.d	$s5, $s4, 3
	move	$a1, $s1
	jirl	$ra, $s0, 0
	ldx.d	$a1, $fp, $s5
	bnez	$a0, .LBB7_3
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a2, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	b	.LBB7_4
.LBB7_7:                                # %._crit_edge.loopexit
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $fp, $a0
	b	.LBB7_10
.LBB7_8:
	move	$a0, $zero
	b	.LBB7_11
.LBB7_9:
	move	$s2, $zero
.LBB7_10:                               # %._crit_edge
	addi.w	$a0, $s2, 1
	slli.d	$a1, $s2, 3
	stx.d	$a2, $fp, $a1
.LBB7_11:
	slli.d	$a1, $a0, 3
	stx.d	$zero, $fp, $a1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end7:
	.size	d1_rm_equal, .Lfunc_end7-d1_rm_equal
                                        # -- End function
	.globl	rm_equal                        # -- Begin function rm_equal
	.p2align	5
	.type	rm_equal,@function
rm_equal:                               # @rm_equal
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a1
	move	$a1, $fp
	beqz	$a0, .LBB8_8
# %bb.1:                                # %.preheader
	ld.d	$a1, $fp, 8
	move	$s3, $fp
	beqz	$a1, .LBB8_7
# %bb.2:                                # %.lr.ph.preheader
	move	$s1, $fp
	move	$s3, $fp
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_3:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a0, $s1, 16
	move	$s1, $s2
	beqz	$a0, .LBB8_6
.LBB8_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s2, $s1, 8
	move	$a0, $s2
	move	$a1, $s1
	jirl	$ra, $s0, 0
	beqz	$a0, .LBB8_3
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a1, $s3, 8
	st.d	$a0, $s3, 0
	move	$s3, $a1
	b	.LBB8_3
.LBB8_6:                                # %._crit_edge.loopexit
	ld.d	$a0, $s2, 0
.LBB8_7:                                # %._crit_edge
	addi.d	$a1, $s3, 8
	st.d	$a0, $s3, 0
	st.d	$zero, $s3, 8
.LBB8_8:
	sub.d	$a0, $a1, $fp
	srli.d	$a0, $a0, 3
	addi.w	$a0, $a0, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	rm_equal, .Lfunc_end8-rm_equal
                                        # -- End function
	.globl	rm_contain                      # -- Begin function rm_contain
	.p2align	5
	.type	rm_contain,@function
rm_contain:                             # @rm_contain
# %bb.0:
	ld.d	$a3, $a0, 0
	move	$a1, $a0
	beqz	$a3, .LBB9_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a5, $zero, -1
	ori	$a2, $zero, 1
	move	$a4, $a0
	move	$a1, $a0
                                        # implicit-def: $r10
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a7, $a1, 8
	st.d	$a3, $a1, 0
	move	$a1, $a7
.LBB9_3:                                # %.loopexit
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a3, $a4, 0
	beqz	$a3, .LBB9_11
.LBB9_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_9 Depth 3
	ld.wu	$a7, $a3, 0
	addi.d	$a4, $a4, 8
	addi.w	$t0, $a5, 0
	srli.d	$a5, $a7, 16
	xor	$t0, $a5, $t0
	sltui	$t0, $t0, 1
	masknez	$t1, $a1, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $t1
	andi	$a7, $a7, 1023
	sltui	$t0, $a7, 1
	sub.w	$t0, $zero, $t0
	move	$t1, $a0
	b	.LBB9_7
	.p2align	4, , 16
.LBB9_5:                                #   in Loop: Header=BB9_7 Depth=2
	move	$t2, $t0
.LBB9_6:                                #   in Loop: Header=BB9_7 Depth=2
	beqz	$t2, .LBB9_3
.LBB9_7:                                #   Parent Loop BB9_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
	beq	$t1, $a6, .LBB9_2
# %bb.8:                                #   in Loop: Header=BB9_7 Depth=2
	ld.d	$t3, $t1, 0
	addi.d	$t1, $t1, 8
	move	$t4, $a7
	.p2align	4, , 16
.LBB9_9:                                #   Parent Loop BB9_4 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t2, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t5, $a3, $t4
	ldx.w	$t4, $t3, $t4
	andn	$t4, $t5, $t4
	bnez	$t4, .LBB9_6
# %bb.10:                               #   in Loop: Header=BB9_9 Depth=3
	addi.w	$t4, $t2, -1
	blt	$a2, $t2, .LBB9_9
	b	.LBB9_5
.LBB9_11:                               # %._crit_edge
	sub.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 3
	addi.w	$a0, $a0, 0
	st.d	$zero, $a1, 0
	ret
.Lfunc_end9:
	.size	rm_contain, .Lfunc_end9-rm_contain
                                        # -- End function
	.globl	rm_rev_contain                  # -- Begin function rm_rev_contain
	.p2align	5
	.type	rm_rev_contain,@function
rm_rev_contain:                         # @rm_rev_contain
# %bb.0:
	ld.d	$a3, $a0, 0
	move	$a1, $a0
	beqz	$a3, .LBB10_11
# %bb.1:                                # %.lr.ph.preheader
	addi.w	$a5, $zero, -1
	ori	$a2, $zero, 1
	move	$a4, $a0
	move	$a1, $a0
                                        # implicit-def: $r10
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_2:                               #   in Loop: Header=BB10_4 Depth=1
	addi.d	$a7, $a1, 8
	st.d	$a3, $a1, 0
	move	$a1, $a7
.LBB10_3:                               # %.loopexit
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a3, $a4, 0
	beqz	$a3, .LBB10_11
.LBB10_4:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_9 Depth 3
	move	$a7, $a5
	ld.hu	$a5, $a3, 2
	addi.d	$a4, $a4, 8
	xor	$a7, $a5, $a7
	sltui	$a7, $a7, 1
	masknez	$t0, $a1, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	move	$a7, $a0
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_5:                               #   in Loop: Header=BB10_7 Depth=2
	move	$t1, $t2
.LBB10_6:                               #   in Loop: Header=BB10_7 Depth=2
	beqz	$t1, .LBB10_3
.LBB10_7:                               #   Parent Loop BB10_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_9 Depth 3
	beq	$a7, $a6, .LBB10_2
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=2
	ld.d	$t0, $a7, 0
	ld.wu	$t1, $t0, 0
	addi.d	$a7, $a7, 8
	andi	$t3, $t1, 1023
	sltui	$t1, $t3, 1
	sub.w	$t2, $zero, $t1
	.p2align	4, , 16
.LBB10_9:                               #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t1, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t4, $t0, $t3
	ldx.w	$t3, $a3, $t3
	andn	$t3, $t4, $t3
	bnez	$t3, .LBB10_6
# %bb.10:                               #   in Loop: Header=BB10_9 Depth=3
	addi.w	$t3, $t1, -1
	blt	$a2, $t1, .LBB10_9
	b	.LBB10_5
.LBB10_11:                              # %._crit_edge
	sub.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 3
	addi.w	$a0, $a0, 0
	st.d	$zero, $a1, 0
	ret
.Lfunc_end10:
	.size	rm_rev_contain, .Lfunc_end10-rm_rev_contain
                                        # -- End function
	.globl	rm2_equal                       # -- Begin function rm2_equal
	.p2align	5
	.type	rm2_equal,@function
rm2_equal:                              # @rm2_equal
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
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	move	$fp, $a2
	move	$s0, $a1
	beqz	$a0, .LBB11_11
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a1, $s0, 0
	beqz	$a1, .LBB11_12
# %bb.2:
	move	$s2, $a3
	ori	$s6, $zero, 1
	addi.w	$s7, $zero, -1
	move	$s4, $s1
	move	$s5, $s0
	move	$s3, $fp
	.p2align	4, , 16
.LBB11_3:                               # %.lr.ph105
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s0
	jirl	$ra, $s2, 0
	beq	$a0, $s6, .LBB11_10
# %bb.4:                                # %.lr.ph105
                                        #   in Loop: Header=BB11_3 Depth=1
	beqz	$a0, .LBB11_7
# %bb.5:                                # %.lr.ph105
                                        #   in Loop: Header=BB11_3 Depth=1
	bne	$a0, $s7, .LBB11_8
# %bb.6:                                #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$s1, $s1, 8
	addi.d	$a1, $s4, 8
	st.d	$a0, $s4, 0
	move	$s4, $a1
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB11_9
	b	.LBB11_15
	.p2align	4, , 16
.LBB11_7:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$s1, $s1, 8
	st.d	$a0, $s3, 0
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, 8
.LBB11_8:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB11_15
.LBB11_9:                               # %.lr.ph
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a1, $s0, 0
	bnez	$a1, .LBB11_3
	b	.LBB11_13
	.p2align	4, , 16
.LBB11_10:                              #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s0, 0
	addi.d	$s0, $s0, 8
	addi.d	$a1, $s5, 8
	st.d	$a0, $s5, 0
	move	$s5, $a1
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB11_9
	b	.LBB11_15
.LBB11_11:
	move	$s3, $fp
	move	$s5, $s0
	move	$s4, $s1
	b	.LBB11_15
.LBB11_12:
	move	$s3, $fp
	move	$s5, $s0
	move	$s4, $s1
.LBB11_13:                              # %.lr.ph61.preheader
	addi.d	$a1, $s1, 8
	.p2align	4, , 16
.LBB11_14:                              # %.lr.ph61
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s4, 0
	ld.d	$a0, $a1, 0
	addi.d	$s4, $s4, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB11_14
.LBB11_15:                              # %.preheader
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB11_18
# %bb.16:                               # %.lr.ph66.preheader
	addi.d	$a1, $s0, 8
	.p2align	4, , 16
.LBB11_17:                              # %.lr.ph66
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s5, 0
	ld.d	$a0, $a1, 0
	addi.d	$a2, $s5, 8
	addi.d	$a1, $a1, 8
	move	$s5, $a2
	bnez	$a0, .LBB11_17
	b	.LBB11_19
.LBB11_18:
	move	$a2, $s5
.LBB11_19:                              # %._crit_edge
	st.d	$zero, $s3, 0
	st.d	$zero, $a2, 0
	sub.d	$a0, $s3, $fp
	srli.d	$a0, $a0, 3
	addi.w	$a0, $a0, 0
	st.d	$zero, $s4, 0
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
.Lfunc_end11:
	.size	rm2_equal, .Lfunc_end11-rm2_equal
                                        # -- End function
	.globl	rm2_contain                     # -- Begin function rm2_contain
	.p2align	5
	.type	rm2_contain,@function
rm2_contain:                            # @rm2_contain
# %bb.0:
	ld.d	$a4, $a0, 0
	move	$a2, $a0
	beqz	$a4, .LBB12_12
# %bb.1:                                # %.preheader.preheader
	ori	$a3, $zero, 1
	move	$a5, $a0
	move	$a2, $a0
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_2:                               # %.critedge
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$a6, $a2, 8
	st.d	$a4, $a2, 0
	move	$a2, $a6
.LBB12_3:                               # %.loopexit
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a4, $a5, 0
	beqz	$a4, .LBB12_12
.LBB12_4:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
                                        #       Child Loop BB12_10 Depth 3
	addi.d	$a5, $a5, 8
	move	$a6, $a1
	b	.LBB12_7
	.p2align	4, , 16
.LBB12_5:                               #   in Loop: Header=BB12_7 Depth=2
	move	$t0, $t1
.LBB12_6:                               #   in Loop: Header=BB12_7 Depth=2
	beqz	$t0, .LBB12_3
.LBB12_7:                               #   Parent Loop BB12_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_10 Depth 3
	ld.d	$a7, $a6, 0
	beqz	$a7, .LBB12_2
# %bb.8:                                #   in Loop: Header=BB12_7 Depth=2
	ld.wu	$t0, $a4, 0
	ld.hu	$t1, $a7, 2
	srli.d	$t2, $t0, 16
	bgeu	$t2, $t1, .LBB12_2
# %bb.9:                                #   in Loop: Header=BB12_7 Depth=2
	addi.d	$a6, $a6, 8
	andi	$t2, $t0, 1023
	sltui	$t0, $t2, 1
	sub.w	$t1, $zero, $t0
	.p2align	4, , 16
.LBB12_10:                              #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t0, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t3, $a4, $t2
	ldx.w	$t2, $a7, $t2
	andn	$t2, $t3, $t2
	bnez	$t2, .LBB12_6
# %bb.11:                               #   in Loop: Header=BB12_10 Depth=3
	addi.w	$t2, $t0, -1
	blt	$a3, $t0, .LBB12_10
	b	.LBB12_5
.LBB12_12:                              # %._crit_edge
	sub.d	$a0, $a2, $a0
	srli.d	$a0, $a0, 3
	addi.w	$a0, $a0, 0
	st.d	$zero, $a2, 0
	ret
.Lfunc_end12:
	.size	rm2_contain, .Lfunc_end12-rm2_contain
                                        # -- End function
	.globl	sf_sort                         # -- Begin function sf_sort
	.p2align	5
	.type	sf_sort,@function
sf_sort:                                # @sf_sort
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.w	$s2, $a0, 12
	move	$fp, $a1
	slli.d	$a0, $s2, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	mul.w	$a1, $a1, $s2
	move	$s0, $a0
	blez	$a1, .LBB13_4
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$s2, $s1, 24
	alsl.d	$s3, $a1, $s2, 2
	move	$a0, $s0
	.p2align	4, , 16
.LBB13_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $s2, 0
	move	$s4, $a0
	st.w	$a1, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	slli.d	$a0, $a0, 16
	or	$a0, $a1, $a0
	st.w	$a0, $s2, 0
	ld.w	$a0, $s1, 0
	st.d	$s2, $s4, 0
	alsl.d	$s2, $a0, $s2, 2
	addi.d	$a0, $s4, 8
	bltu	$s2, $s3, .LBB13_2
# %bb.3:                                # %._crit_edge.loopexit
	ld.w	$s2, $s1, 12
.LBB13_4:                               # %._crit_edge
	st.d	$zero, $a0, 0
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(qsort)
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
	ret
.Lfunc_end13:
	.size	sf_sort, .Lfunc_end13-sf_sort
                                        # -- End function
	.globl	sf_list                         # -- Begin function sf_list
	.p2align	5
	.type	sf_list,@function
sf_list:                                # @sf_list
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s0, $a0, 12
	slli.d	$a0, $s0, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 0
	mul.w	$a2, $a3, $s0
	move	$a4, $a0
	blez	$a2, .LBB14_3
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 24
	alsl.d	$a2, $a2, $a1, 2
	slli.d	$a3, $a3, 2
	move	$a5, $a0
	.p2align	4, , 16
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a5, 8
	st.d	$a1, $a5, 0
	add.d	$a1, $a1, $a3
	move	$a5, $a4
	bltu	$a1, $a2, .LBB14_2
.LBB14_3:                               # %._crit_edge
	st.d	$zero, $a4, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	sf_list, .Lfunc_end14-sf_list
                                        # -- End function
	.globl	sf_unlist                       # -- Begin function sf_unlist
	.p2align	5
	.type	sf_unlist,@function
sf_unlist:                              # @sf_unlist
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 0
	move	$s0, $a0
	st.w	$s1, $a0, 12
	beqz	$a4, .LBB15_11
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a0, $s0, 24
	ori	$a1, $zero, 7
	ori	$a2, $zero, 32
	move	$a3, $fp
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %.loopexit31
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a5, $s0, 0
	ld.d	$a4, $a3, 8
	addi.d	$a3, $a3, 8
	alsl.d	$a0, $a5, $a0, 2
	beqz	$a4, .LBB15_11
.LBB15_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
                                        #     Child Loop BB15_10 Depth 2
	ld.wu	$a5, $a4, 0
	andi	$t1, $a5, 1023
	bltu	$t1, $a1, .LBB15_8
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB15_3 Depth=1
	sub.d	$a5, $a4, $a0
	bltu	$a5, $a2, .LBB15_8
# %bb.5:                                # %vector.ph
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.d	$a6, $t1, 1
	andi	$a7, $a6, 2040
	sub.d	$a5, $t1, $a7
	alsl.d	$t0, $t1, $a4, 2
	addi.d	$t0, $t0, -12
	alsl.d	$t1, $t1, $a0, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB15_6:                               # %vector.body
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t0, -16
	vst	$vr0, $t1, 0
	vst	$vr1, $t1, -16
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB15_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB15_3 Depth=1
	beq	$a6, $a7, .LBB15_2
	b	.LBB15_9
	.p2align	4, , 16
.LBB15_8:                               #   in Loop: Header=BB15_3 Depth=1
	move	$a5, $t1
.LBB15_9:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a4, $a5, $a4, 2
	.p2align	4, , 16
.LBB15_10:                              # %scalar.ph
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bnez	$a6, .LBB15_10
	b	.LBB15_2
.LBB15_11:                              # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	sf_unlist, .Lfunc_end15-sf_unlist
                                        # -- End function
	.globl	sf_ind_unlist                   # -- Begin function sf_ind_unlist
	.p2align	5
	.type	sf_ind_unlist,@function
sf_ind_unlist:                          # @sf_ind_unlist
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
	move	$s2, $a4
	move	$s1, $a3
	move	$s3, $a1
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$s3, $a0, 12
	slli.d	$s5, $s3, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s4, $a0
	beqz	$a1, .LBB16_11
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s0, 24
	move	$a2, $zero
	ori	$a3, $zero, 7
	ori	$a4, $zero, 32
	move	$a5, $fp
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_2:                               # %.loopexit
                                        #   in Loop: Header=BB16_3 Depth=1
	ld.w	$a6, $s0, 0
	sub.d	$a1, $a1, $s2
	srai.d	$a1, $a1, 2
	div.d	$a1, $a1, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a7, $s1, $a1
	ld.d	$a1, $a5, 8
	addi.d	$a5, $a5, 8
	slli.d	$t0, $a2, 2
	stx.w	$a7, $s4, $t0
	alsl.d	$a0, $a6, $a0, 2
	addi.d	$a2, $a2, 1
	beqz	$a1, .LBB16_11
.LBB16_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #     Child Loop BB16_10 Depth 2
	ld.wu	$a6, $a1, 0
	andi	$t2, $a6, 1023
	bltu	$t2, $a3, .LBB16_8
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	sub.d	$a6, $a1, $a0
	bltu	$a6, $a4, .LBB16_8
# %bb.5:                                # %vector.ph
                                        #   in Loop: Header=BB16_3 Depth=1
	addi.d	$a7, $t2, 1
	andi	$t0, $a7, 2040
	sub.d	$a6, $t2, $t0
	alsl.d	$t1, $t2, $a1, 2
	addi.d	$t1, $t1, -12
	alsl.d	$t2, $t2, $a0, 2
	addi.d	$t2, $t2, -12
	move	$t3, $t0
	.p2align	4, , 16
.LBB16_6:                               # %vector.body
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, 0
	vld	$vr1, $t1, -16
	vst	$vr0, $t2, 0
	vst	$vr1, $t2, -16
	addi.d	$t3, $t3, -8
	addi.d	$t1, $t1, -32
	addi.d	$t2, $t2, -32
	bnez	$t3, .LBB16_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB16_3 Depth=1
	beq	$a7, $t0, .LBB16_2
	b	.LBB16_9
	.p2align	4, , 16
.LBB16_8:                               #   in Loop: Header=BB16_3 Depth=1
	move	$a6, $t2
.LBB16_9:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	addi.d	$a7, $a6, 1
	alsl.d	$t0, $a6, $a0, 2
	alsl.d	$a6, $a6, $a1, 2
	.p2align	4, , 16
.LBB16_10:                              # %scalar.ph
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a6, 0
	st.w	$t1, $t0, 0
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, -4
	bnez	$a7, .LBB16_10
	b	.LBB16_2
.LBB16_11:                              # %.preheader
	blez	$s3, .LBB16_13
# %bb.12:                               # %.lr.ph47.preheader
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB16_13:                              # %._crit_edge
	beqz	$s4, .LBB16_15
# %bb.14:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB16_15:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end16:
	.size	sf_ind_unlist, .Lfunc_end16-sf_ind_unlist
                                        # -- End function
	.globl	sf_merge                        # -- Begin function sf_merge
	.p2align	5
	.type	sf_merge,@function
sf_merge:                               # @sf_merge
# %bb.0:                                # %.lr.ph
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
	move	$s3, $a3
	move	$s6, $a2
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $a3
	move	$a1, $a4
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$s4, $a0, 24
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	st.w	$s3, $s0, 12
	pcaddu18i	$ra, %call36(desc1)
	jirl	$ra, $ra, 0
	slt	$a2, $zero, $a0
	masknez	$a0, $s2, $a2
	maskeqz	$a1, $s1, $a2
	or	$s5, $a1, $a0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	masknez	$a3, $s1, $a2
	maskeqz	$a2, $s2, $a2
	or	$fp, $a2, $a3
	pcaddu18i	$ra, %call36(desc1)
	jirl	$ra, $ra, 0
	slt	$a2, $zero, $a0
	maskeqz	$a0, $s5, $a2
	masknez	$a1, $s6, $a2
	or	$s3, $a0, $a1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s3, 0
	masknez	$a3, $s5, $a2
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a2, $s6, $a2
	or	$s8, $a2, $a3
	pcaddu18i	$ra, %call36(desc1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB17_14
# %bb.1:                                # %.lr.ph73.preheader
	slt	$a0, $zero, $a0
	masknez	$a2, $fp, $a0
	maskeqz	$a3, $s3, $a0
	or	$s7, $a3, $a2
	masknez	$a2, $s3, $a0
	maskeqz	$a0, $fp, $a0
	or	$s5, $a0, $a2
	ori	$s3, $zero, 7
	ori	$s6, $zero, 32
	b	.LBB17_4
	.p2align	4, , 16
.LBB17_2:                               #   in Loop: Header=BB17_4 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s7, 0
	pcaddu18i	$ra, %call36(desc1)
	jirl	$ra, $ra, 0
	slt	$a0, $zero, $a0
	masknez	$a1, $s8, $a0
	maskeqz	$a2, $s7, $a0
	masknez	$a3, $s7, $a0
	or	$s7, $a2, $a1
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a3
.LBB17_3:                               #   in Loop: Header=BB17_4 Depth=1
	move	$s8, $s7
	ld.d	$a1, $s7, 0
	alsl.d	$s4, $fp, $s4, 2
	move	$s7, $a0
	beqz	$a1, .LBB17_14
.LBB17_4:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
                                        #     Child Loop BB17_11 Depth 2
	ld.wu	$a0, $a1, 0
	andi	$a5, $a0, 1023
	bltu	$a5, $s3, .LBB17_9
# %bb.5:                                # %.lr.ph73
                                        #   in Loop: Header=BB17_4 Depth=1
	sub.d	$a0, $a1, $s4
	bltu	$a0, $s6, .LBB17_9
# %bb.6:                                # %vector.ph
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a2, $a5, 1
	andi	$a3, $a2, 2040
	sub.d	$a0, $a5, $a3
	alsl.d	$a4, $a5, $a1, 2
	addi.d	$a4, $a4, -12
	alsl.d	$a5, $a5, $s4, 2
	addi.d	$a5, $a5, -12
	move	$a6, $a3
	.p2align	4, , 16
.LBB17_7:                               # %vector.body
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vst	$vr0, $a5, 0
	vst	$vr1, $a5, -16
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB17_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB17_4 Depth=1
	bne	$a2, $a3, .LBB17_10
	b	.LBB17_12
	.p2align	4, , 16
.LBB17_9:                               #   in Loop: Header=BB17_4 Depth=1
	move	$a0, $a5
.LBB17_10:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a2, $a0, 1
	alsl.d	$a3, $a0, $s4, 2
	alsl.d	$a0, $a0, $a1, 2
	.p2align	4, , 16
.LBB17_11:                              # %scalar.ph
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	st.w	$a1, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	addi.d	$a0, $a0, -4
	bnez	$a2, .LBB17_11
.LBB17_12:                              # %.loopexit95
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.w	$fp, $s0, 0
	ld.d	$a0, $s8, 8
	ld.d	$a1, $s5, 0
	addi.d	$s8, $s8, 8
	pcaddu18i	$ra, %call36(desc1)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB17_2
# %bb.13:                               #   in Loop: Header=BB17_4 Depth=1
	move	$a0, $s5
	move	$s5, $s8
	b	.LBB17_3
.LBB17_14:                              # %.loopexit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
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
.Lfunc_end17:
	.size	sf_merge, .Lfunc_end17-sf_merge
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym descend
	.addrsig_sym ascend
	.addrsig_sym d1_order
