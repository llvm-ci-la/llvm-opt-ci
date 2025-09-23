	.file	"cvrm.c"
	.text
	.globl	unravel_range                   # -- Begin function unravel_range
	.p2align	5
	.type	unravel_range,@function
unravel_range:                          # @unravel_range
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s6, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s6, 80
	ld.d	$s1, $a0, 8
	ld.d	$a1, $s6, 96
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	blez	$fp, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$s0, $a0, 3
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 72
	ldx.d	$a2, $a0, $fp
	move	$a0, $s1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	bne	$s0, $fp, .LBB0_2
.LBB0_3:                                # %.preheader55
	ld.w	$a0, $s6, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s7, $a1, 1
	bge	$s7, $a0, .LBB0_6
# %bb.4:                                # %.lr.ph59.preheader
	slli.d	$fp, $s7, 3
	move	$s0, $s7
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph59
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 72
	ldx.d	$a2, $a0, $fp
	move	$a0, $s1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 4
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	blt	$s0, $a0, .LBB0_5
.LBB0_6:                                # %._crit_edge
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $s2, 12
	ld.w	$a0, $s2, 0
	mul.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a2, $a2, $a3
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	blez	$a1, .LBB0_16
# %bb.7:                                # %.preheader.lr.ph
	ld.d	$s3, $s2, 24
	alsl.d	$a4, $a1, $s3, 2
	slli.d	$a1, $a3, 3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a2, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 2
	lu12i.w	$a1, 244
	ori	$fp, $a1, 577
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s5, $a1, %pc_lo12(.L.str)
	move	$s4, $zero
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %._crit_edge64.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s2, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
.LBB0_9:                                # %._crit_edge64
                                        #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$s3, $a0, $s3, 2
	add.w	$s4, $s1, $s4
	bgeu	$s3, $a4, .LBB0_17
.LBB0_10:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	ori	$s1, $zero, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	blt	$a1, $a3, .LBB0_9
# %bb.11:                               # %.lr.ph63.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$s1, $zero, 1
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=2
	addi.w	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	beqz	$s2, .LBB0_8
.LBB0_13:                               # %.lr.ph63
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 72
	ldx.d	$a1, $a0, $s0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(set_dist)
	jirl	$ra, $ra, 0
	blt	$a0, $s8, .LBB0_12
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	mul.w	$s1, $a0, $s1
	blt	$s1, $fp, .LBB0_12
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	b	.LBB0_12
.LBB0_16:
	move	$s4, $zero
.LBB0_17:                               # %._crit_edge67
	ld.w	$a1, $s6, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	ld.w	$a2, $s2, 0
	mul.w	$a1, $a2, $a1
	move	$s3, $a0
	blez	$a1, .LBB0_53
# %bb.18:                               # %.lr.ph71
	ld.d	$s4, $s2, 24
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$a0, $a1, $s4, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s0, $zero, 2
	ori	$s1, $zero, 1
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %cb_unravel.exit
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s2, 0
	alsl.d	$s4, $a0, $s4, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_53
.LBB0_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_41 Depth 3
                                        #         Child Loop BB0_45 Depth 4
                                        #           Child Loop BB0_47 Depth 5
	ld.d	$a0, $s6, 80
	ld.d	$s5, $a0, 0
	move	$a0, $s5
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_48
.LBB0_21:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_20 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s3, 12
	ld.w	$a0, $s3, 0
	add.d	$a2, $fp, $s8
	addi.d	$a1, $fp, -1
	mul.w	$a1, $a0, $a1
	add.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 2
	mul.w	$a0, $a0, $a2
	slli.d	$a3, $a0, 2
	st.w	$a2, $s3, 12
	ori	$t1, $zero, 7
	ori	$t2, $zero, 32
	bge	$a1, $a3, .LBB0_32
# %bb.22:                               # %.lr.ph95.preheader.i
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a2, $s3, 24
	alsl.d	$a0, $a0, $a2, 2
	add.d	$a1, $a2, $a1
	addi.d	$a2, $s5, -12
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %.loopexit
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.w	$a3, $s3, 0
	alsl.d	$a1, $a3, $a1, 2
	bgeu	$a1, $a0, .LBB0_32
.LBB0_24:                               # %.lr.ph95.i
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	ld.wu	$a3, $s5, 0
	andi	$a7, $a3, 1023
	bltu	$a7, $t1, .LBB0_29
# %bb.25:                               # %.lr.ph95.i
                                        #   in Loop: Header=BB0_24 Depth=2
	sub.d	$a3, $s5, $a1
	bltu	$a3, $t2, .LBB0_29
# %bb.26:                               # %vector.ph
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a4, $a7, 1
	andi	$a5, $a4, 2040
	sub.d	$a3, $a7, $a5
	alsl.d	$a6, $a7, $a2, 2
	alsl.d	$a7, $a7, $a1, 2
	addi.d	$a7, $a7, -12
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_27:                               # %vector.body
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a6, 0
	vld	$vr1, $a6, -16
	vst	$vr0, $a7, 0
	vst	$vr1, $a7, -16
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB0_24 Depth=2
	beq	$a4, $a5, .LBB0_23
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_24 Depth=2
	move	$a3, $a7
.LBB0_30:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a4, $a3, 1
	alsl.d	$a5, $a3, $a1, 2
	alsl.d	$a3, $a3, $s5, 2
	.p2align	4, , 16
.LBB0_31:                               # %scalar.ph
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a3, 0
	st.w	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, -4
	bnez	$a4, .LBB0_31
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_32:                               # %.preheader89.i
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$s5, $a1
	move	$s2, $s8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_35
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_33:                               #   in Loop: Header=BB0_35 Depth=2
	move	$s2, $a1
.LBB0_34:                               # %.loopexit.i
                                        #   in Loop: Header=BB0_35 Depth=2
	addi.d	$s5, $s5, 1
	addi.w	$a0, $s5, 0
	beq	$s7, $a0, .LBB0_19
.LBB0_35:                               # %.lr.ph109.i
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
                                        #         Child Loop BB0_45 Depth 4
                                        #           Child Loop BB0_47 Depth 5
	ld.d	$a0, $s6, 72
	slli.d	$a1, $s5, 3
	ldx.d	$a1, $a0, $a1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(set_dist)
	jirl	$ra, $ra, 0
	blt	$a0, $s0, .LBB0_34
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a1, $s6, 16
	ld.d	$a3, $s6, 24
	slli.d	$a2, $s5, 2
	ldx.w	$a6, $a1, $a2
	ldx.w	$a5, $a3, $a2
	div.wu	$a1, $s2, $a0
	blt	$a5, $a6, .LBB0_33
# %bb.37:                               # %.lr.ph105.i
                                        #   in Loop: Header=BB0_35 Depth=2
	move	$a2, $zero
	alsl.d	$a3, $s5, $a3, 2
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_38:                               # %._crit_edge100.loopexit.i
                                        #   in Loop: Header=BB0_41 Depth=3
	ld.w	$a5, $a3, 0
.LBB0_39:                               # %._crit_edge100.i
                                        #   in Loop: Header=BB0_41 Depth=3
	add.w	$a2, $a2, $a1
.LBB0_40:                               #   in Loop: Header=BB0_41 Depth=3
	addi.w	$a6, $a4, 1
	bge	$a4, $a5, .LBB0_33
.LBB0_41:                               #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_45 Depth 4
                                        #           Child Loop BB0_47 Depth 5
	move	$a4, $a6
	srai.d	$a6, $a6, 5
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	ldx.w	$t0, $s4, $a7
	sll.w	$a7, $s1, $a4
	and	$t0, $a7, $t0
	beqz	$t0, .LBB0_40
# %bb.42:                               # %.preheader88.i
                                        #   in Loop: Header=BB0_41 Depth=3
	bge	$a2, $s8, .LBB0_39
# %bb.43:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB0_41 Depth=3
	add.d	$a5, $fp, $a2
	move	$t0, $a2
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_44:                               # %._crit_edge98.i
                                        #   in Loop: Header=BB0_45 Depth=4
	add.w	$t0, $t0, $s2
	add.d	$a5, $a5, $s2
	bge	$t0, $s8, .LBB0_38
.LBB0_45:                               # %.preheader.i
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        #       Parent Loop BB0_41 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_47 Depth 5
	bltu	$s2, $a0, .LBB0_44
# %bb.46:                               # %.lr.ph97.i
                                        #   in Loop: Header=BB0_45 Depth=4
	ld.d	$t2, $s3, 24
	move	$t1, $zero
	alsl.d	$t2, $a6, $t2, 2
	.p2align	4, , 16
.LBB0_47:                               #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        #       Parent Loop BB0_41 Depth=3
                                        #         Parent Loop BB0_45 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t3, $s3, 0
	add.d	$t4, $a5, $t1
	mul.w	$t3, $t3, $t4
	slli.d	$t3, $t3, 2
	ldx.w	$t4, $t2, $t3
	or	$t4, $t4, $a7
	addi.w	$t1, $t1, 1
	stx.w	$t4, $t2, $t3
	blt	$t1, $a1, .LBB0_47
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_48:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_20 Depth=1
	ori	$s8, $zero, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_51 Depth=2
	mul.w	$s8, $a0, $s8
.LBB0_50:                               #   in Loop: Header=BB0_51 Depth=2
	addi.w	$fp, $fp, -1
	addi.d	$s2, $s2, 8
	beqz	$fp, .LBB0_21
.LBB0_51:                               # %.lr.ph.i
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 72
	ldx.d	$a1, $a0, $s2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(set_dist)
	jirl	$ra, $ra, 0
	blt	$s1, $a0, .LBB0_49
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=2
	ld.d	$a0, $s6, 72
	ldx.d	$a2, $a0, $s2
	move	$a0, $s5
	move	$a1, $s5
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	b	.LBB0_50
.LBB0_53:                               # %._crit_edge72
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end0:
	.size	unravel_range, .Lfunc_end0-unravel_range
                                        # -- End function
	.globl	unravel                         # -- Begin function unravel
	.p2align	5
	.type	unravel,@function
unravel:                                # @unravel
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$a2, $a2, %got_pc_lo12(cube)
	ld.w	$a2, $a2, 4
	addi.w	$a2, $a2, -1
	pcaddu18i	$t8, %call36(unravel_range)
	jr	$t8
.Lfunc_end1:
	.size	unravel, .Lfunc_end1-unravel
                                        # -- End function
	.globl	lex_sort                        # -- Begin function lex_sort
	.p2align	5
	.type	lex_sort,@function
lex_sort:                               # @lex_sort
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(lex_order)
	ld.d	$a1, $a0, %got_pc_lo12(lex_order)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_sort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 4
	pcaddu18i	$ra, %call36(sf_unlist)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	lex_sort, .Lfunc_end2-lex_sort
                                        # -- End function
	.globl	size_sort                       # -- Begin function size_sort
	.p2align	5
	.type	size_sort,@function
size_sort:                              # @size_sort
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(descend)
	ld.d	$a1, $a0, %got_pc_lo12(descend)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_sort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 4
	pcaddu18i	$ra, %call36(sf_unlist)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	size_sort, .Lfunc_end3-size_sort
                                        # -- End function
	.globl	mini_sort                       # -- Begin function mini_sort
	.p2align	5
	.type	mini_sort,@function
mini_sort:                              # @mini_sort
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.wu	$s1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_count)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a3, $a2, $a1
	blez	$a3, .LBB4_9
# %bb.1:                                # %.preheader.lr.ph
	ld.d	$a1, $fp, 24
	addi.w	$a2, $s1, 0
	alsl.d	$a3, $a3, $a1, 2
	lu12i.w	$a4, 131071
	ori	$a4, $a4, 4092
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a5, $a6, 16
.LBB4_3:                                # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.hu	$a6, $a1, 0
	or	$a5, $a6, $a5
	st.w	$a5, $a1, 0
	ld.w	$a5, $fp, 0
	alsl.d	$a1, $a5, $a1, 2
	bgeu	$a1, $a3, .LBB4_9
.LBB4_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	move	$a5, $zero
	blez	$a2, .LBB4_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a7, $zero
	move	$a6, $zero
	move	$t0, $a0
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 1
	addi.d	$t0, $t0, 4
	beq	$s1, $a7, .LBB4_2
.LBB4_7:                                # %.lr.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t1, $a7, 3
	and	$t1, $t1, $a4
	add.d	$t1, $a1, $t1
	ld.w	$t1, $t1, 4
	srl.w	$t1, $t1, $a5
	andi	$t1, $t1, 1
	beqz	$t1, .LBB4_6
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=2
	ld.w	$t1, $t0, 0
	add.d	$a6, $t1, $a6
	b	.LBB4_6
.LBB4_9:                                # %._crit_edge37
	beqz	$a0, .LBB4_11
# %bb.10:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$s1, $a0
	ori	$a2, $zero, 8
	move	$a3, $s0
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_unlist)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	mini_sort, .Lfunc_end4-mini_sort
                                        # -- End function
	.globl	sort_reduce                     # -- Begin function sort_reduce
	.p2align	5
	.type	sort_reduce,@function
sort_reduce:                            # @sort_reduce
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
	ld.w	$a0, $a0, 12
	beqz	$a0, .LBB5_10
# %bb.1:
	ld.w	$a1, $fp, 0
	mul.w	$a0, $a1, $a0
	blez	$a0, .LBB5_9
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.d	$s1, $fp, 24
	ld.w	$s3, $a1, 4
	move	$s0, $zero
	alsl.d	$s2, $a0, $s1, 2
	addi.w	$s4, $zero, -1
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	slt	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $a0, $a1
	ld.w	$a0, $fp, 0
	or	$s4, $a3, $a2
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $s1, $a1
	alsl.d	$s1, $a0, $s1, 2
	or	$s0, $a1, $a2
	bltu	$s1, $s2, .LBB5_3
# %bb.4:                                # %._crit_edge
	ld.w	$a1, $fp, 12
	mul.w	$a0, $a0, $a1
	blez	$a0, .LBB5_9
# %bb.5:                                # %.lr.ph49.preheader
	ld.d	$s1, $fp, 24
	alsl.d	$s4, $a0, $s1, 2
	lu12i.w	$s5, 2032
	ori	$s6, $zero, 126
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=1
	ld.w	$a0, $s1, 0
	sub.d	$a2, $s3, $s2
	slli.d	$a2, $a2, 23
	add.d	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $s1, 0
	ld.w	$a0, $fp, 0
	alsl.d	$s1, $a0, $s1, 2
	bgeu	$s1, $s4, .LBB5_9
.LBB5_7:                                # %.lr.ph49
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s1, 0
	st.w	$a0, $s1, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cdist)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	blt	$s6, $a0, .LBB5_6
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 16
	b	.LBB5_6
.LBB5_9:                                # %._crit_edge50
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(descend)
	ld.d	$a3, $a0, %got_pc_lo12(descend)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_unlist)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB5_11
.LBB5_10:
	move	$a0, $fp
.LBB5_11:
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
	ret
.Lfunc_end5:
	.size	sort_reduce, .Lfunc_end5-sort_reduce
                                        # -- End function
	.globl	random_order                    # -- Begin function random_order
	.p2align	5
	.type	random_order,@function
random_order:                           # @random_order
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
	ld.w	$s0, $a0, 4
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $a1, .LBB6_2
# %bb.1:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB6_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ori	$s1, $zero, 2
	move	$s0, $a0
	blt	$a1, $s1, .LBB6_5
# %bb.3:                                # %.lr.ph
	addi.d	$s2, $a1, 1
	ori	$a0, $zero, 23
	mul.d	$a0, $a1, $a0
	addi.w	$s3, $a0, 974
	.p2align	4, , 16
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 0
	ld.d	$a1, $fp, 24
	addi.w	$s4, $s2, -2
	mod.wu	$s5, $s3, $s4
	mul.w	$a0, $a0, $s5
	alsl.d	$a1, $a0, $a1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $fp, 24
	mul.w	$a0, $a1, $s5
	alsl.d	$a0, $a0, $a2, 2
	mul.w	$a1, $a1, $s4
	alsl.d	$a1, $a1, $a2, 2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.d	$a1, $fp, 24
	mul.w	$a0, $a0, $s4
	alsl.d	$a0, $a0, $a1, 2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	addi.w	$s3, $s3, -23
	bltu	$s1, $s2, .LBB6_4
.LBB6_5:                                # %._crit_edge
	beqz	$s0, .LBB6_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB6_7:
	move	$a0, $fp
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
.Lfunc_end6:
	.size	random_order, .Lfunc_end6-random_order
                                        # -- End function
	.globl	cubelist_partition              # -- Begin function cubelist_partition
	.p2align	5
	.type	cubelist_partition,@function
cubelist_partition:                     # @cubelist_partition
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
	ld.d	$a0, $a0, 8
	ld.d	$s3, $fp, 16
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	sub.d	$a0, $a0, $fp
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	srli.d	$a0, $a0, 3
	beqz	$s3, .LBB7_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a5, $fp, 24
	lu12i.w	$a2, -1
	ori	$a2, $a2, 2047
	lu32i.d	$a2, 0
	move	$a3, $s3
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a4, $a3, 0
	and	$a4, $a4, $a2
	st.w	$a4, $a3, 0
	ld.d	$a3, $a5, 0
	addi.d	$a5, $a5, 8
	bnez	$a3, .LBB7_2
.LBB7_3:                                # %._crit_edge
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $s3, 0
	addi.w	$a0, $a0, -3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB7_5
# %bb.4:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB7_5:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$s6, $fp, 16
	ld.w	$a1, $s6, 0
	move	$s4, $a0
	ld.d	$s5, $fp, 0
	ori	$a0, $a1, 2048
	st.w	$a0, $s6, 0
	addi.d	$s8, $fp, 24
	addi.d	$s2, $s4, 4
	addi.d	$a0, $s4, -12
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
	move	$s7, $s8
	ori	$s3, $zero, 1
	ori	$s0, $zero, 1
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_6:                                # %._crit_edge100
                                        #   in Loop: Header=BB7_8 Depth=1
	andi	$a0, $s0, 1
	bnez	$a0, .LBB7_21
.LBB7_7:                                # %thread-pre-split
                                        #   in Loop: Header=BB7_8 Depth=1
	ld.d	$s6, $fp, 16
	ori	$s0, $zero, 1
	move	$s7, $s8
	beqz	$s6, .LBB7_21
.LBB7_8:                                # %.lr.ph99.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #     Child Loop BB7_16 Depth 2
                                        #     Child Loop BB7_19 Depth 2
	addi.d	$s7, $s7, 8
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                #   in Loop: Header=BB7_10 Depth=2
	ld.d	$s6, $s7, -8
	addi.d	$s7, $s7, 8
	beqz	$s6, .LBB7_6
.LBB7_10:                               # %.lr.ph99
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s6, 1
	andi	$a0, $a0, 8
	bnez	$a0, .LBB7_9
# %bb.11:                               #   in Loop: Header=BB7_10 Depth=2
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(ccommon)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_9
# %bb.12:                               #   in Loop: Header=BB7_8 Depth=1
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 8
	bltu	$a0, $a3, .LBB7_18
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_8 Depth=1
	alsl.d	$a3, $a2, $s4, 2
	alsl.d	$a4, $a1, $s6, 2
	addi.d	$a5, $a4, 4
	bgeu	$a3, $a5, .LBB7_15
# %bb.14:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_8 Depth=1
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a2, $a2, $s6, 2
	bltu	$a2, $a3, .LBB7_18
.LBB7_15:                               # %vector.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a5, 2
	addi.d	$a4, $a4, -12
	move	$a5, $a2
	.p2align	4, , 16
.LBB7_16:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, 0
	vld	$vr1, $a1, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a4, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a1, 0
	vst	$vr1, $a1, -16
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB7_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB7_20
	.p2align	4, , 16
.LBB7_18:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s6, 2
	alsl.d	$a1, $a1, $s4, 2
	.p2align	4, , 16
.LBB7_19:                               # %scalar.ph
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	and	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$s1, $a0, .LBB7_19
.LBB7_20:                               # %.thread
                                        #   in Loop: Header=BB7_8 Depth=1
	ld.w	$a0, $s6, 0
	ori	$a0, $a0, 2048
	st.w	$a0, $s6, 0
	ld.d	$s6, $s7, -8
	move	$s0, $zero
	addi.w	$s3, $s3, 1
	bnez	$s6, .LBB7_8
	b	.LBB7_7
.LBB7_21:                               # %._crit_edge100.thread
	beqz	$s4, .LBB7_23
# %bb.22:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_23:
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	sub.w	$s4, $s0, $s3
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_25
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB7_25:
	beq	$s0, $s3, .LBB7_33
# %bb.26:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a0, $a0, 29
	srai.d	$s2, $a0, 29
	bstrins.d	$s2, $zero, 2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 0
	ld.w	$a1, $s3, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	slli.d	$a0, $a1, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$s2, $zero, 8
	ori	$s0, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $s0, .LBB7_28
# %bb.27:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB7_28:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $a1, 0
	ld.d	$s3, $fp, 0
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a0, $a0, 5
	bltu	$a0, $s0, .LBB7_30
# %bb.29:
	addi.d	$a0, $a0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s2, $a0, 8
.LBB7_30:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a4, $fp, 16
	addi.d	$a3, $a0, 16
	addi.d	$a2, $a1, 16
	beqz	$a4, .LBB7_32
	.p2align	4, , 16
.LBB7_31:                               # %.lr.ph106
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a5, $a4, 0
	andi	$a5, $a5, 2048
	sltui	$a6, $a5, 1
	masknez	$a7, $a3, $a6
	maskeqz	$t0, $a2, $a6
	or	$a7, $t0, $a7
	st.d	$a4, $a7, 0
	ld.d	$a4, $s8, 0
	srli.d	$a5, $a5, 8
	add.d	$a3, $a3, $a5
	addi.d	$s8, $s8, 8
	alsl.d	$a2, $a6, $a2, 3
	bnez	$a4, .LBB7_31
.LBB7_32:                               # %._crit_edge107
	addi.d	$a4, $a3, 8
	st.d	$zero, $a3, 0
	st.d	$a4, $a0, 8
	addi.d	$a0, $a2, 8
	st.d	$zero, $a2, 0
	st.d	$a0, $a1, 8
.LBB7_33:
	move	$a0, $s4
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
.Lfunc_end7:
	.size	cubelist_partition, .Lfunc_end7-cubelist_partition
                                        # -- End function
	.globl	cof_output                      # -- Begin function cof_output
	.p2align	5
	.type	cof_output,@function
cof_output:                             # @cof_output
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a1, $a0, %got_pc_lo12(cube)
	ld.w	$a0, $a1, 124
	ld.d	$a2, $a1, 72
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $a2, $a0
	ld.w	$a0, $fp, 12
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$t2, $fp, 0
	mul.w	$a2, $t2, $a1
	blez	$a2, .LBB8_14
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 24
	alsl.d	$a2, $a2, $a1, 2
	srai.d	$a3, $s0, 5
	ori	$a4, $zero, 1
	sll.w	$a5, $a4, $s0
	addi.d	$a6, $s1, -12
	ori	$a7, $zero, 8
	lu12i.w	$t0, -9
	ori	$t0, $t0, 4095
	lu32i.d	$t0, 0
	ori	$t1, $zero, 32
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                # %.loopexit
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.wu	$t3, $t2, 0
	and	$t3, $t3, $t0
	st.w	$t3, $t2, 0
	ld.w	$t2, $fp, 0
.LBB8_3:                                #   in Loop: Header=BB8_4 Depth=1
	alsl.d	$a1, $t2, $a1, 2
	bgeu	$a1, $a2, .LBB8_14
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
                                        #     Child Loop BB8_8 Depth 2
	alsl.d	$t3, $a3, $a1, 2
	ld.w	$t3, $t3, 4
	and	$t3, $t3, $a5
	beqz	$t3, .LBB8_3
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	ld.w	$t2, $a0, 12
	ld.w	$t4, $a0, 0
	ld.d	$t3, $a0, 24
	addi.d	$t5, $t2, 1
	st.w	$t5, $a0, 12
	mul.w	$t4, $t2, $t4
	slli.d	$s0, $t4, 2
	ldx.wu	$t5, $t3, $s0
	ld.wu	$t7, $a1, 0
	alsl.d	$t2, $t4, $t3, 2
	srli.d	$t5, $t5, 10
	andi	$s2, $t7, 1023
	bstrins.d	$t7, $t5, 63, 10
	sltu	$t5, $zero, $s2
	sub.d	$t5, $s2, $t5
	addi.d	$t6, $t5, 1
	stx.w	$t7, $t3, $s0
	bgeu	$t6, $a7, .LBB8_9
.LBB8_6:                                #   in Loop: Header=BB8_4 Depth=1
	move	$t5, $s2
.LBB8_7:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$t6, $t5, 1
	slli.d	$t7, $t5, 2
	alsl.d	$t4, $t4, $t7, 2
	add.d	$t3, $t3, $t4
	alsl.d	$t4, $t5, $s1, 2
	alsl.d	$t5, $t5, $a1, 2
	.p2align	4, , 16
.LBB8_8:                                # %scalar.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, 0
	ld.w	$t8, $t4, 0
	or	$t7, $t8, $t7
	st.w	$t7, $t3, 0
	addi.d	$t6, $t6, -1
	addi.d	$t3, $t3, -4
	addi.d	$t4, $t4, -4
	addi.d	$t5, $t5, -4
	bltu	$a4, $t6, .LBB8_8
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_9:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	sub.d	$t5, $a1, $t2
	bltu	$t5, $t1, .LBB8_6
# %bb.10:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	sub.d	$t5, $s1, $t2
	bltu	$t5, $t1, .LBB8_6
# %bb.11:                               # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t5, $s2, $t7
	alsl.d	$t8, $s2, $a1, 2
	addi.d	$t8, $t8, -12
	alsl.d	$s0, $s2, $s0, 2
	add.d	$s0, $t3, $s0
	addi.d	$s0, $s0, -12
	alsl.d	$s2, $s2, $a6, 2
	move	$s3, $t7
	.p2align	4, , 16
.LBB8_12:                               # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t8, 0
	vld	$vr1, $t8, -16
	vld	$vr2, $s2, 0
	vld	$vr3, $s2, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $s0, 0
	vst	$vr1, $s0, -16
	addi.d	$s3, $s3, -8
	addi.d	$t8, $t8, -32
	addi.d	$s0, $s0, -32
	addi.d	$s2, $s2, -32
	bnez	$s3, .LBB8_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	beq	$t6, $t7, .LBB8_2
	b	.LBB8_7
.LBB8_14:                               # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	cof_output, .Lfunc_end8-cof_output
                                        # -- End function
	.globl	uncof_output                    # -- Begin function uncof_output
	.p2align	5
	.type	uncof_output,@function
uncof_output:                           # @uncof_output
# %bb.0:
	beqz	$a0, .LBB9_12
# %bb.1:
	ld.w	$a2, $a0, 12
	ld.w	$a3, $a0, 0
	mul.w	$a4, $a3, $a2
	blez	$a4, .LBB9_12
# %bb.2:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$a2, $a2, %got_pc_lo12(cube)
	ld.w	$a3, $a2, 124
	ld.d	$a5, $a2, 72
	ld.d	$a2, $a0, 24
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	alsl.d	$a4, $a4, $a2, 2
	ori	$a5, $zero, 1
	sll.w	$a6, $a5, $a1
	srai.d	$a1, $a1, 5
	addi.d	$a7, $a3, 4
	addi.d	$t0, $a3, -12
	ori	$t1, $zero, 8
	vrepli.b	$vr0, -1
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_3:                                # %.loopexit44
                                        #   in Loop: Header=BB9_4 Depth=1
	alsl.d	$t2, $a1, $a2, 2
	ld.w	$t3, $t2, 4
	or	$t3, $t3, $a6
	st.w	$t3, $t2, 4
	ld.w	$t2, $a0, 0
	alsl.d	$a2, $t2, $a2, 2
	bgeu	$a2, $a4, .LBB9_12
.LBB9_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
                                        #     Child Loop BB9_11 Depth 2
	ld.wu	$t2, $a2, 0
	andi	$t4, $t2, 1023
	sltu	$t3, $zero, $t4
	sub.d	$t2, $t4, $t3
	addi.d	$t2, $t2, 1
	bltu	$t2, $t1, .LBB9_10
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB9_4 Depth=1
	alsl.d	$t5, $t3, $a2, 2
	alsl.d	$t7, $t4, $a7, 2
	alsl.d	$t6, $t4, $a2, 2
	bgeu	$t5, $t7, .LBB9_7
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$t5, $t6, 4
	alsl.d	$t3, $t3, $a3, 2
	bltu	$t3, $t5, .LBB9_10
.LBB9_7:                                # %vector.ph
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$t3, $t2
	bstrins.d	$t3, $zero, 2, 0
	sub.d	$t5, $t4, $t3
	addi.d	$t6, $t6, -12
	alsl.d	$t4, $t4, $t0, 2
	move	$t7, $t3
	.p2align	4, , 16
.LBB9_8:                                # %vector.body
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t4, 0
	vld	$vr2, $t4, -16
	vld	$vr3, $t6, 0
	vld	$vr4, $t6, -16
	vxor.v	$vr1, $vr1, $vr0
	vxor.v	$vr2, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vand.v	$vr2, $vr4, $vr2
	vst	$vr1, $t6, 0
	vst	$vr2, $t6, -16
	addi.d	$t7, $t7, -8
	addi.d	$t6, $t6, -32
	addi.d	$t4, $t4, -32
	bnez	$t7, .LBB9_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$t4, $t5
	beq	$t2, $t3, .LBB9_3
	.p2align	4, , 16
.LBB9_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$t2, $t4, 1
	alsl.d	$t3, $t4, $a3, 2
	alsl.d	$t4, $t4, $a2, 2
	.p2align	4, , 16
.LBB9_11:                               # %scalar.ph
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t4, 0
	ld.w	$t6, $t3, 0
	andn	$t5, $t5, $t6
	st.w	$t5, $t4, 0
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, -4
	addi.d	$t4, $t4, -4
	bltu	$a5, $t2, .LBB9_11
	b	.LBB9_3
.LBB9_12:                               # %.loopexit
	ret
.Lfunc_end9:
	.size	uncof_output, .Lfunc_end9-uncof_output
                                        # -- End function
	.globl	foreach_output_function         # -- Begin function foreach_output_function
	.p2align	5
	.type	foreach_output_function,@function
foreach_output_function:                # @foreach_output_function
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
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s4, $a0, %got_pc_lo12(cube)
	ld.w	$a0, $s4, 124
	ld.d	$a1, $s4, 32
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	blez	$a0, .LBB10_45
# %bb.1:                                # %.lr.ph
	move	$fp, $a2
	move	$s2, $zero
	ori	$s5, $zero, 1
	ori	$s6, $zero, 8
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_11 Depth 3
                                        #       Child Loop BB10_14 Depth 3
                                        #     Child Loop BB10_21 Depth 2
                                        #       Child Loop BB10_25 Depth 3
                                        #       Child Loop BB10_28 Depth 3
                                        #     Child Loop BB10_34 Depth 2
                                        #       Child Loop BB10_38 Depth 3
                                        #       Child Loop BB10_41 Depth 3
	pcaddu18i	$ra, %call36(new_PLA)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 124
	ld.d	$a2, $s4, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	ld.d	$a2, $s1, 0
	move	$s3, $a0
	add.w	$a1, $a1, $s2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cof_output)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 124
	ld.d	$a2, $s4, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	ld.d	$a2, $s1, 16
	st.d	$a0, $s3, 0
	add.w	$a1, $a1, $s2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cof_output)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 124
	ld.d	$a2, $s4, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	ld.d	$a2, $s1, 8
	st.d	$a0, $s3, 16
	add.w	$a1, $a1, $s2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cof_output)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 8
	move	$a0, $s3
	move	$a1, $s2
	jirl	$ra, $s0, 0
	beqz	$a0, .LBB10_44
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a3, $s4, 124
	ld.d	$a0, $s4, 16
	ld.d	$a1, $s3, 0
	slli.d	$a2, $a3, 2
	ldx.w	$a2, $a0, $a2
	add.w	$a6, $a2, $s2
	beqz	$a1, .LBB10_17
# %bb.4:                                #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a2, $a1, 12
	ld.w	$a4, $a1, 0
	mul.w	$a4, $a4, $a2
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	blez	$a4, .LBB10_16
# %bb.5:                                # %.lr.ph.i
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a5, $s4, 72
	ld.d	$a2, $a1, 24
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	alsl.d	$a4, $a4, $a2, 2
	sll.w	$a5, $s5, $a6
	srai.d	$a6, $a6, 5
	addi.d	$a7, $a3, 4
	addi.d	$t0, $a3, -12
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_6:                               # %.loopexit150
                                        #   in Loop: Header=BB10_7 Depth=2
	alsl.d	$t1, $a6, $a2, 2
	ld.w	$t2, $t1, 4
	or	$t2, $t2, $a5
	st.w	$t2, $t1, 4
	ld.w	$t1, $a1, 0
	alsl.d	$a2, $t1, $a2, 2
	bgeu	$a2, $a4, .LBB10_15
.LBB10_7:                               #   Parent Loop BB10_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_11 Depth 3
                                        #       Child Loop BB10_14 Depth 3
	ld.wu	$t1, $a2, 0
	andi	$t3, $t1, 1023
	sltu	$t2, $zero, $t3
	sub.d	$t1, $t3, $t2
	addi.d	$t1, $t1, 1
	bltu	$t1, $s6, .LBB10_13
# %bb.8:                                # %vector.memcheck114
                                        #   in Loop: Header=BB10_7 Depth=2
	alsl.d	$t4, $t2, $a2, 2
	alsl.d	$t6, $t3, $a7, 2
	alsl.d	$t5, $t3, $a2, 2
	bgeu	$t4, $t6, .LBB10_10
# %bb.9:                                # %vector.memcheck114
                                        #   in Loop: Header=BB10_7 Depth=2
	addi.d	$t4, $t5, 4
	alsl.d	$t2, $t2, $a3, 2
	bltu	$t2, $t4, .LBB10_13
.LBB10_10:                              # %vector.ph128
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$t2, $t1
	bstrins.d	$t2, $zero, 2, 0
	sub.d	$t4, $t3, $t2
	addi.d	$t5, $t5, -12
	alsl.d	$t3, $t3, $t0, 2
	move	$t6, $t2
	.p2align	4, , 16
.LBB10_11:                              # %vector.body131
                                        #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t3, 0
	vld	$vr1, $t3, -16
	vld	$vr2, $t5, 0
	vld	$vr3, $t5, -16
	vxor.v	$vr0, $vr0, $vr4
	vxor.v	$vr1, $vr1, $vr4
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $t5, 0
	vst	$vr1, $t5, -16
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, -32
	addi.d	$t3, $t3, -32
	bnez	$t6, .LBB10_11
# %bb.12:                               # %middle.block145
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$t3, $t4
	beq	$t1, $t2, .LBB10_6
	.p2align	4, , 16
.LBB10_13:                              # %scalar.ph126.preheader
                                        #   in Loop: Header=BB10_7 Depth=2
	addi.d	$t1, $t3, 1
	alsl.d	$t2, $t3, $a3, 2
	alsl.d	$t3, $t3, $a2, 2
	.p2align	4, , 16
.LBB10_14:                              # %scalar.ph126
                                        #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t4, $t3, 0
	ld.w	$t5, $t2, 0
	andn	$t4, $t4, $t5
	st.w	$t4, $t3, 0
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, -4
	addi.d	$t3, $t3, -4
	bltu	$s5, $t1, .LBB10_14
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_15:                              # %uncof_output.exit.loopexit
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a3, $s4, 124
	slli.d	$a1, $a3, 2
	ldx.w	$a1, $a0, $a1
	add.w	$a6, $a1, $s2
.LBB10_16:                              # %uncof_output.exit
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a1, $s3, 16
	bnez	$a1, .LBB10_18
	b	.LBB10_30
	.p2align	4, , 16
.LBB10_17:                              #   in Loop: Header=BB10_2 Depth=1
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	ld.d	$a1, $s3, 16
	beqz	$a1, .LBB10_30
.LBB10_18:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a2, $a1, 12
	ld.w	$a4, $a1, 0
	mul.w	$a4, $a4, $a2
	blez	$a4, .LBB10_30
# %bb.19:                               # %.lr.ph.i31
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a5, $s4, 72
	ld.d	$a2, $a1, 24
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	alsl.d	$a4, $a4, $a2, 2
	sll.w	$a5, $s5, $a6
	srai.d	$a6, $a6, 5
	addi.d	$a7, $a3, 4
	addi.d	$t0, $a3, -12
	b	.LBB10_21
	.p2align	4, , 16
.LBB10_20:                              # %.loopexit149
                                        #   in Loop: Header=BB10_21 Depth=2
	alsl.d	$t1, $a6, $a2, 2
	ld.w	$t2, $t1, 4
	or	$t2, $t2, $a5
	st.w	$t2, $t1, 4
	ld.w	$t1, $a1, 0
	alsl.d	$a2, $t1, $a2, 2
	bgeu	$a2, $a4, .LBB10_29
.LBB10_21:                              #   Parent Loop BB10_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_25 Depth 3
                                        #       Child Loop BB10_28 Depth 3
	ld.wu	$t1, $a2, 0
	andi	$t3, $t1, 1023
	sltu	$t2, $zero, $t3
	sub.d	$t1, $t3, $t2
	addi.d	$t1, $t1, 1
	bltu	$t1, $s6, .LBB10_27
# %bb.22:                               # %vector.memcheck80
                                        #   in Loop: Header=BB10_21 Depth=2
	alsl.d	$t4, $t2, $a2, 2
	alsl.d	$t6, $t3, $a7, 2
	alsl.d	$t5, $t3, $a2, 2
	bgeu	$t4, $t6, .LBB10_24
# %bb.23:                               # %vector.memcheck80
                                        #   in Loop: Header=BB10_21 Depth=2
	addi.d	$t4, $t5, 4
	alsl.d	$t2, $t2, $a3, 2
	bltu	$t2, $t4, .LBB10_27
.LBB10_24:                              # %vector.ph94
                                        #   in Loop: Header=BB10_21 Depth=2
	move	$t2, $t1
	bstrins.d	$t2, $zero, 2, 0
	sub.d	$t4, $t3, $t2
	addi.d	$t5, $t5, -12
	alsl.d	$t3, $t3, $t0, 2
	move	$t6, $t2
	.p2align	4, , 16
.LBB10_25:                              # %vector.body97
                                        #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t3, 0
	vld	$vr1, $t3, -16
	vld	$vr2, $t5, 0
	vld	$vr3, $t5, -16
	vxor.v	$vr0, $vr0, $vr4
	vxor.v	$vr1, $vr1, $vr4
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $t5, 0
	vst	$vr1, $t5, -16
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, -32
	addi.d	$t3, $t3, -32
	bnez	$t6, .LBB10_25
# %bb.26:                               # %middle.block111
                                        #   in Loop: Header=BB10_21 Depth=2
	move	$t3, $t4
	beq	$t1, $t2, .LBB10_20
	.p2align	4, , 16
.LBB10_27:                              # %scalar.ph92.preheader
                                        #   in Loop: Header=BB10_21 Depth=2
	addi.d	$t1, $t3, 1
	alsl.d	$t2, $t3, $a3, 2
	alsl.d	$t3, $t3, $a2, 2
	.p2align	4, , 16
.LBB10_28:                              # %scalar.ph92
                                        #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t4, $t3, 0
	ld.w	$t5, $t2, 0
	andn	$t4, $t4, $t5
	st.w	$t4, $t3, 0
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, -4
	addi.d	$t3, $t3, -4
	bltu	$s5, $t1, .LBB10_28
	b	.LBB10_20
	.p2align	4, , 16
.LBB10_29:                              # %uncof_output.exit35.loopexit
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a3, $s4, 124
	slli.d	$a1, $a3, 2
	ldx.w	$a0, $a0, $a1
	add.w	$a6, $a0, $s2
.LBB10_30:                              # %uncof_output.exit35
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $s3, 8
	beqz	$a0, .LBB10_42
# %bb.31:                               #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 0
	mul.w	$a4, $a2, $a1
	blez	$a4, .LBB10_42
# %bb.32:                               # %.lr.ph.i37
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a2, $s4, 72
	ld.d	$a1, $a0, 24
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	alsl.d	$a3, $a4, $a1, 2
	sll.w	$a4, $s5, $a6
	srai.d	$a5, $a6, 5
	addi.d	$a6, $a2, 4
	addi.d	$a7, $a2, -12
	b	.LBB10_34
	.p2align	4, , 16
.LBB10_33:                              # %.loopexit148
                                        #   in Loop: Header=BB10_34 Depth=2
	alsl.d	$t0, $a5, $a1, 2
	ld.w	$t1, $t0, 4
	or	$t1, $t1, $a4
	st.w	$t1, $t0, 4
	ld.w	$t0, $a0, 0
	alsl.d	$a1, $t0, $a1, 2
	bgeu	$a1, $a3, .LBB10_42
.LBB10_34:                              #   Parent Loop BB10_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_38 Depth 3
                                        #       Child Loop BB10_41 Depth 3
	ld.wu	$t0, $a1, 0
	andi	$t2, $t0, 1023
	sltu	$t1, $zero, $t2
	sub.d	$t0, $t2, $t1
	addi.d	$t0, $t0, 1
	bltu	$t0, $s6, .LBB10_40
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB10_34 Depth=2
	alsl.d	$t3, $t1, $a1, 2
	alsl.d	$t5, $t2, $a6, 2
	alsl.d	$t4, $t2, $a1, 2
	bgeu	$t3, $t5, .LBB10_37
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB10_34 Depth=2
	addi.d	$t3, $t4, 4
	alsl.d	$t1, $t1, $a2, 2
	bltu	$t1, $t3, .LBB10_40
.LBB10_37:                              # %vector.ph
                                        #   in Loop: Header=BB10_34 Depth=2
	move	$t1, $t0
	bstrins.d	$t1, $zero, 2, 0
	sub.d	$t3, $t2, $t1
	addi.d	$t4, $t4, -12
	alsl.d	$t2, $t2, $a7, 2
	move	$t5, $t1
	.p2align	4, , 16
.LBB10_38:                              # %vector.body
                                        #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t2, 0
	vld	$vr1, $t2, -16
	vld	$vr2, $t4, 0
	vld	$vr3, $t4, -16
	vxor.v	$vr0, $vr0, $vr4
	vxor.v	$vr1, $vr1, $vr4
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $t4, 0
	vst	$vr1, $t4, -16
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, -32
	addi.d	$t2, $t2, -32
	bnez	$t5, .LBB10_38
# %bb.39:                               # %middle.block
                                        #   in Loop: Header=BB10_34 Depth=2
	move	$t2, $t3
	beq	$t0, $t1, .LBB10_33
	.p2align	4, , 16
.LBB10_40:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_34 Depth=2
	addi.d	$t0, $t2, 1
	alsl.d	$t1, $t2, $a2, 2
	alsl.d	$t2, $t2, $a1, 2
	.p2align	4, , 16
.LBB10_41:                              # %scalar.ph
                                        #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $t2, 0
	ld.w	$t4, $t1, 0
	andn	$t3, $t3, $t4
	st.w	$t3, $t2, 0
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, -4
	addi.d	$t2, $t2, -4
	bltu	$s5, $t0, .LBB10_41
	b	.LBB10_33
	.p2align	4, , 16
.LBB10_42:                              # %uncof_output.exit41
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	jirl	$ra, $fp, 0
	beqz	$a0, .LBB10_44
# %bb.43:                               #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free_PLA)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 124
	ld.d	$a1, $s4, 32
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.w	$s2, $s2, 1
	blt	$s2, $a0, .LBB10_2
	b	.LBB10_45
.LBB10_44:                              # %.loopexit.sink.split
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free_PLA)
	jirl	$ra, $ra, 0
.LBB10_45:                              # %.loopexit
	move	$a0, $zero
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
.Lfunc_end10:
	.size	foreach_output_function, .Lfunc_end10-foreach_output_function
                                        # -- End function
	.globl	so_espresso                     # -- Begin function so_espresso
	.p2align	5
	.type	so_espresso,@function
so_espresso:                            # @so_espresso
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(Fmin)
	st.d	$a0, $s1, %pc_lo12(Fmin)
	sltui	$a0, $s0, 1
	pcalau12i	$a1, %pc_hi20(so_do_exact)
	addi.d	$a1, $a1, %pc_lo12(so_do_exact)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(so_do_espresso)
	addi.d	$a2, $a2, %pc_lo12(so_do_espresso)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(so_save)
	addi.d	$a2, $a0, %pc_lo12(so_save)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(foreach_output_function)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(Fmin)
	st.d	$a0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	so_espresso, .Lfunc_end11-so_espresso
                                        # -- End function
	.globl	so_both_espresso                # -- Begin function so_both_espresso
	.p2align	5
	.type	so_both_espresso,@function
so_both_espresso:                       # @so_both_espresso
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.d	$s1, $s2, 88
	ld.w	$a0, $s1, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB12_2
# %bb.1:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB12_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.w	$a2, $a1, 12
	ld.w	$a1, $s2, 0
	pcalau12i	$s1, %pc_hi20(phase)
	st.d	$a0, $s1, %pc_lo12(phase)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(Fmin)
	st.d	$a0, $s2, %pc_lo12(Fmin)
	sltui	$a0, $s0, 1
	pcalau12i	$a1, %pc_hi20(so_both_do_exact)
	addi.d	$a1, $a1, %pc_lo12(so_both_do_exact)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(so_both_do_espresso)
	addi.d	$a2, $a2, %pc_lo12(so_both_do_espresso)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(so_both_save)
	addi.d	$a2, $a0, %pc_lo12(so_both_save)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(foreach_output_function)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(Fmin)
	ld.d	$a1, $s1, %pc_lo12(phase)
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 40
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	so_both_espresso, .Lfunc_end12-so_both_espresso
                                        # -- End function
	.globl	so_do_espresso                  # -- Begin function so_do_espresso
	.p2align	5
	.type	so_do_espresso,@function
so_do_espresso:                         # @so_do_espresso
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	move	$a2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(skip_make_sparse)
	ld.d	$a0, $a0, %got_pc_lo12(skip_make_sparse)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s1, 16
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(summary)
	ld.d	$a0, $a0, %got_pc_lo12(summary)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB13_2
# %bb.1:
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $fp
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB13_2:
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end13:
	.size	so_do_espresso, .Lfunc_end13-so_do_espresso
                                        # -- End function
	.globl	so_do_exact                     # -- Begin function so_do_exact
	.p2align	5
	.type	so_do_exact,@function
so_do_exact:                            # @so_do_exact
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	move	$a2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(skip_make_sparse)
	ld.d	$a0, $a0, %got_pc_lo12(skip_make_sparse)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s1, 0
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s1, 16
	move	$fp, $a0
	ori	$a3, $zero, 1
	move	$a0, $a4
	pcaddu18i	$ra, %call36(minimize_exact)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(summary)
	ld.d	$a0, $a0, %got_pc_lo12(summary)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB14_2
# %bb.1:
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $fp
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB14_2:
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end14:
	.size	so_do_exact, .Lfunc_end14-so_do_exact
                                        # -- End function
	.globl	so_save                         # -- Begin function so_save
	.p2align	5
	.type	so_save,@function
so_save:                                # @so_save
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$s0, %pc_hi20(Fmin)
	ld.d	$a0, $s0, %pc_lo12(Fmin)
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(Fmin)
	ori	$a0, $zero, 1
	st.d	$zero, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	so_save, .Lfunc_end15-so_save
                                        # -- End function
	.globl	so_both_do_espresso             # -- Begin function so_both_do_espresso
	.p2align	5
	.type	so_both_do_espresso,@function
so_both_do_espresso:                    # @so_both_do_espresso
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
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(skip_make_sparse)
	ld.d	$s3, $a0, %got_pc_lo12(skip_make_sparse)
	ori	$s4, $zero, 1
	st.w	$s4, $s3, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 16
	move	$s1, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(summary)
	ld.d	$s5, $a0, %got_pc_lo12(summary)
	ld.w	$a0, $s5, 0
	beqz	$a0, .LBB16_2
# %bb.1:
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s1
	addi.d	$a1, $sp, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB16_2:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	st.w	$s4, $s3, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 16
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 0
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	st.d	$a0, $fp, 16
	beqz	$a1, .LBB16_4
# %bb.3:
	move	$s1, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s0
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB16_4:
	ori	$a0, $zero, 1
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
.Lfunc_end16:
	.size	so_both_do_espresso, .Lfunc_end16-so_both_do_espresso
                                        # -- End function
	.globl	so_both_do_exact                # -- Begin function so_both_do_exact
	.p2align	5
	.type	so_both_do_exact,@function
so_both_do_exact:                       # @so_both_do_exact
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
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(skip_make_sparse)
	ld.d	$s3, $a0, %got_pc_lo12(skip_make_sparse)
	ori	$s4, $zero, 1
	st.w	$s4, $s3, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 16
	move	$s1, $a0
	ori	$a3, $zero, 1
	move	$a0, $a4
	pcaddu18i	$ra, %call36(minimize_exact)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(summary)
	ld.d	$s5, $a0, %got_pc_lo12(summary)
	ld.w	$a0, $s5, 0
	beqz	$a0, .LBB17_2
# %bb.1:
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s1
	addi.d	$a1, $sp, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB17_2:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	st.w	$s4, $s3, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 16
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 0
	move	$s0, $a0
	ori	$a3, $zero, 1
	move	$a0, $a4
	pcaddu18i	$ra, %call36(minimize_exact)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	st.d	$a0, $fp, 16
	beqz	$a1, .LBB17_4
# %bb.3:
	move	$s1, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s0
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB17_4:
	ori	$a0, $zero, 1
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
	.size	so_both_do_exact, .Lfunc_end17-so_both_do_exact
                                        # -- End function
	.globl	so_both_save                    # -- Begin function so_both_save
	.p2align	5
	.type	so_both_save,@function
so_both_save:                           # @so_both_save
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $fp, 16
	ld.w	$a3, $a0, 12
	ld.w	$a4, $a2, 12
	bge	$a4, $a3, .LBB18_2
# %bb.1:
	move	$s0, $a1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a1, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a2, $a0, 124
	ld.d	$a0, $a0, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(phase)
	ld.d	$a2, $a2, %pc_lo12(phase)
	add.w	$a0, $a0, $s0
	srai.d	$a3, $a0, 5
	alsl.d	$a2, $a3, $a2, 2
	ld.w	$a3, $a2, 4
	ori	$a4, $zero, 1
	sll.w	$a0, $a4, $a0
	andn	$a0, $a3, $a0
	st.w	$a0, $a2, 4
	b	.LBB18_3
.LBB18_2:
	move	$a0, $a2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
.LBB18_3:
	pcalau12i	$s0, %pc_hi20(Fmin)
	ld.d	$a0, $s0, %pc_lo12(Fmin)
	st.d	$zero, $fp, 16
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(Fmin)
	ori	$a0, $zero, 1
	st.d	$zero, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	so_both_save, .Lfunc_end18-so_both_save
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unreasonable expansion in unravel"
	.size	.L.str, 34

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"COMPONENT_REDUCTION: split into %d %d\n"
	.size	.L.str.1, 39

	.type	Fmin,@object                    # @Fmin
	.local	Fmin
	.comm	Fmin,8,8
	.type	phase,@object                   # @phase
	.local	phase
	.comm	phase,8,8
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ESPRESSO-POS(%d)"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"EXACT-POS(%d)"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ESPRESSO-NEG(%d)"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"EXACT-NEG(%d)"
	.size	.L.str.5, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lex_order
	.addrsig_sym descend
	.addrsig_sym so_do_espresso
	.addrsig_sym so_do_exact
	.addrsig_sym so_save
	.addrsig_sym so_both_do_espresso
	.addrsig_sym so_both_do_exact
	.addrsig_sym so_both_save
