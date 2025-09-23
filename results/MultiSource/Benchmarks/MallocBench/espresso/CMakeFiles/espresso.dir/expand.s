	.file	"expand.c"
	.text
	.globl	expand                          # -- Begin function expand
	.p2align	5
	.type	expand,@function
expand:                                 # @expand
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
	move	$s6, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(use_random_order)
	ld.d	$a1, $a1, %got_pc_lo12(use_random_order)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB0_2
# %bb.1:
	pcaddu18i	$ra, %call36(random_order)
	jirl	$ra, $ra, 0
	b	.LBB0_3
.LBB0_2:
	pcalau12i	$a1, %got_pc_hi20(ascend)
	ld.d	$a1, $a1, %got_pc_lo12(ascend)
	pcaddu18i	$ra, %call36(mini_sort)
	jirl	$ra, $ra, 0
.LBB0_3:
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s7, $a0, %got_pc_lo12(cube)
	ld.w	$s0, $s7, 0
	ori	$s1, $zero, 8
	ori	$s2, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s2, .LBB0_5
# %bb.4:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_5:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s7, 0
	move	$s0, $a0
	blt	$s3, $s2, .LBB0_7
# %bb.6:
	addi.d	$a0, $s3, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s1, $a0, 8
.LBB0_7:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s7, 0
	move	$s8, $a0
	ori	$s4, $zero, 8
	ori	$s1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s3, $s1, .LBB0_9
# %bb.8:
	addi.d	$a0, $s3, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_9:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s7, 0
	move	$s3, $a0
	blt	$s5, $s1, .LBB0_11
# %bb.10:
	addi.d	$a0, $s5, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s4, $a0, 8
.LBB0_11:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s7, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s5, $a1, .LBB0_13
# %bb.12:
	addi.d	$a0, $s5, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_13:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$s6, .LBB0_19
# %bb.14:
	ld.w	$a0, $s7, 4
	blez	$a0, .LBB0_19
# %bb.15:                               # %.lr.ph.preheader
	ld.d	$a1, $s7, 112
	move	$s1, $zero
	move	$s2, $zero
	move	$s4, $zero
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 4
	bge	$s4, $a0, .LBB0_19
.LBB0_17:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a1, $s1
	beqz	$a2, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $s7, 72
	ldx.d	$a2, $a0, $s2
	move	$a0, $s3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 112
	ld.w	$a0, $s7, 4
	b	.LBB0_16
.LBB0_19:                               # %.loopexit
	ld.w	$a0, $fp, 12
	ld.w	$a1, $fp, 0
	mul.w	$a0, $a1, $a0
	blez	$a0, .LBB0_32
# %bb.20:                               # %.lr.ph100.preheader
	ld.d	$s6, $fp, 24
	alsl.d	$a0, $a0, $s6, 2
	lu12i.w	$a1, -5
	ori	$a1, $a1, 2047
	lu32i.d	$a1, 0
	move	$a2, $s6
	.p2align	4, , 16
.LBB0_21:                               # %.lr.ph100
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a3, $a2, 0
	and	$a3, $a3, $a1
	st.w	$a3, $a2, 0
	ld.w	$a3, $fp, 0
	alsl.d	$a2, $a3, $a2, 2
	bltu	$a2, $a0, .LBB0_21
# %bb.22:                               # %._crit_edge
	ld.w	$a0, $fp, 12
	mul.w	$a0, $a3, $a0
	blez	$a0, .LBB0_32
# %bb.23:                               # %.lr.ph103.preheader
	move	$s7, $s8
	alsl.d	$s2, $a0, $s6, 2
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s1, $a0, %got_pc_lo12(debug)
	lu12i.w	$a0, -9
	ori	$s4, $a0, 2047
	lu32i.d	$s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$a1, $fp, 0
	alsl.d	$s6, $a1, $s6, 2
	bgeu	$s6, $s2, .LBB0_44
.LBB0_25:                               # %.lr.ph103
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s6, 1
	andi	$a0, $a0, 136
	bnez	$a0, .LBB0_24
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	addi.d	$a7, $sp, 52
	st.d	$s6, $sp, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s5
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(expand1)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	andi	$a0, $a0, 4
	bnez	$a0, .LBB0_28
# %bb.27:                               # %thread-pre-split
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.w	$s8, $sp, 52
	b	.LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_25 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	ld.w	$s8, $sp, 52
	move	$a1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_29:                               #   in Loop: Header=BB0_25 Depth=1
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 0
	and	$a0, $a0, $s4
	lu12i.w	$a1, 8
	or	$a0, $a0, $a1
	st.w	$a0, $s6, 0
	bnez	$s8, .LBB0_24
# %bb.30:                               #   in Loop: Header=BB0_25 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_24
# %bb.31:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$a0, $s6, 0
	lu12i.w	$a1, 4
	or	$a0, $a0, $a1
	st.w	$a0, $s6, 0
	b	.LBB0_24
.LBB0_32:                               # %._crit_edge104.thread
	st.w	$zero, $fp, 16
.LBB0_33:                               # %._crit_edge109.thread
	beqz	$s0, .LBB0_35
# %bb.34:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_35:
	beqz	$s8, .LBB0_37
# %bb.36:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_37:
	beqz	$s3, .LBB0_39
# %bb.38:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_39:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_41
# %bb.40:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_41:
	beqz	$s5, .LBB0_43
# %bb.42:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_43:
	move	$a0, $fp
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
.LBB0_44:                               # %._crit_edge104
	ld.w	$a2, $fp, 12
	ld.d	$a0, $fp, 24
	mul.w	$a1, $a1, $a2
	st.w	$zero, $fp, 16
	blez	$a1, .LBB0_51
# %bb.45:                               # %.lr.ph108.outer.preheader
	alsl.d	$a1, $a1, $a0, 2
	ori	$a4, $zero, 1
	lu12i.w	$a2, 2
	lu12i.w	$a3, -3
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	move	$s8, $s7
	.p2align	4, , 16
.LBB0_46:                               # %.lr.ph108
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a5, $a0, 0
	slli.d	$a6, $a5, 52
	bltz	$a6, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=1
	or	$a5, $a5, $a2
	st.w	$a5, $a0, 0
	ld.w	$a5, $fp, 16
	ld.w	$a6, $fp, 0
	addi.d	$a5, $a5, 1
	alsl.d	$a0, $a6, $a0, 2
	st.w	$a5, $fp, 16
	bltu	$a0, $a1, .LBB0_46
	b	.LBB0_49
.LBB0_48:                               # %.thread
                                        #   in Loop: Header=BB0_46 Depth=1
	and	$a4, $a5, $a3
	st.w	$a4, $a0, 0
	ld.w	$a4, $fp, 0
	alsl.d	$a0, $a4, $a0, 2
	move	$a4, $zero
	bltu	$a0, $a1, .LBB0_46
	b	.LBB0_50
.LBB0_49:                               # %._crit_edge109
	andi	$a0, $a4, 1
	bnez	$a0, .LBB0_33
.LBB0_50:                               # %._crit_edge109.thread148
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_inactive)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB0_33
.LBB0_51:
	move	$s8, $s7
	b	.LBB0_33
.Lfunc_end0:
	.size	expand, .Lfunc_end0-expand
                                        # -- End function
	.globl	expand1                         # -- Begin function expand1
	.p2align	5
	.type	expand1,@function
expand1:                                # @expand1
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
	ld.d	$s7, $sp, 96
	move	$s3, $a7
	move	$s6, $a6
	move	$s4, $a5
	move	$s5, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 8
	beqz	$a0, .LBB1_2
# %bb.1:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_2:
	ld.w	$a0, $s7, 0
	lu12i.w	$a1, 8
	or	$a0, $a0, $a1
	st.w	$a0, $s7, 0
	ld.w	$a0, $s1, 12
	ld.w	$a2, $s1, 0
	st.w	$a0, $s1, 16
	mul.w	$a3, $a2, $a0
	lu12i.w	$a0, 2
	blez	$a3, .LBB1_5
# %bb.3:                                # %.lr.ph.i.preheader
	ld.d	$a2, $s1, 24
	alsl.d	$a3, $a3, $a2, 2
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	or	$a4, $a4, $a0
	st.w	$a4, $a2, 0
	ld.w	$a4, $s1, 0
	alsl.d	$a2, $a4, $a2, 2
	bltu	$a2, $a3, .LBB1_4
.LBB1_5:                                # %._crit_edge.i
	beqz	$s2, .LBB1_12
# %bb.6:
	ld.w	$a2, $s2, 12
	ld.w	$a3, $s2, 0
	mul.w	$a3, $a3, $a2
	st.w	$a2, $s2, 16
	blez	$a3, .LBB1_12
# %bb.7:                                # %.lr.ph33.i.preheader
	ld.d	$a2, $s2, 24
	alsl.d	$a3, $a3, $a2, 2
	ori	$a1, $a1, 2048
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_8:                                #   in Loop: Header=BB1_10 Depth=1
	or	$a4, $a4, $a0
.LBB1_9:                                #   in Loop: Header=BB1_10 Depth=1
	st.w	$a4, $a2, 0
	ld.w	$a4, $s2, 0
	alsl.d	$a2, $a4, $a2, 2
	bgeu	$a2, $a3, .LBB1_12
.LBB1_10:                               # %.lr.ph33.i
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a4, $a2, 0
	and	$a5, $a4, $a1
	beqz	$a5, .LBB1_8
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	ld.w	$a4, $s2, 16
	addi.d	$a4, $a4, -1
	st.w	$a4, $s2, 16
	ld.w	$a4, $a2, 0
	bstrins.d	$a4, $zero, 13, 13
	b	.LBB1_9
.LBB1_12:                               # %setup_BB_CC.exit
	st.w	$zero, $s3, 0
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $a0, 88
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(setp_empty)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_14
# %bb.13:
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(elim_lowering)
	jirl	$ra, $ra, 0
.LBB1_14:
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(essen_parts)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 16
	blez	$a0, .LBB1_19
# %bb.15:
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	pcaddu18i	$ra, %call36(select_feasible)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 16
	blez	$a0, .LBB1_19
# %bb.16:
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB1_17:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(most_frequent)
	jirl	$ra, $ra, 0
	srai.d	$a1, $a0, 5
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, 4
	ldx.w	$a2, $s0, $a1
	sll.w	$a0, $s3, $a0
	or	$a2, $a0, $a2
	stx.w	$a2, $s0, $a1
	ldx.w	$a2, $fp, $a1
	andn	$a0, $a2, $a0
	stx.w	$a0, $fp, $a1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(essen_parts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 16
	bgtz	$a0, .LBB1_17
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_18:                               # %.lr.ph53
                                        #   in Loop: Header=BB1_19 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(mincov)
	jirl	$ra, $ra, 0
.LBB1_19:                               # %.lr.ph53
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 16
	bgtz	$a0, .LBB1_18
# %bb.20:                               # %._crit_edge
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $fp
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
	pcaddu18i	$t8, %call36(set_or)
	jr	$t8
.Lfunc_end1:
	.size	expand1, .Lfunc_end1-expand1
                                        # -- End function
	.globl	essen_parts                     # -- Begin function essen_parts
	.p2align	5
	.type	essen_parts,@function
essen_parts:                            # @essen_parts
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
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a2
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s5, 80
	ld.d	$s3, $a0, 0
	ld.d	$a1, $s5, 96
	move	$a0, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 12
	ld.w	$a1, $s2, 0
	mul.w	$a0, $a1, $a0
	blez	$a0, .LBB2_27
# %bb.1:                                # %.lr.ph119
	ld.d	$s4, $s2, 24
	alsl.d	$s6, $a0, $s4, 2
	addi.d	$a0, $s0, 4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
	lu12i.w	$a0, -3
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$fp, $a0, 1365
	ori	$s7, $zero, 1
	lu12i.w	$s1, -4096
	lu32i.d	$s1, 0
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_2:                                # %._crit_edge113
                                        #   in Loop: Header=BB2_5 Depth=1
	beqz	$a0, .LBB2_26
# %bb.3:                                #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(force_lower)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 16
	addi.d	$a0, $a0, -1
	st.w	$a0, $s2, 16
	ld.wu	$a0, $s4, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.w	$a0, $s4, 0
	.p2align	4, , 16
.LBB2_4:                                # %.thread
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $s2, 0
	alsl.d	$s4, $a0, $s4, 2
	bgeu	$s4, $s6, .LBB2_27
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_20 Depth 2
                                        #       Child Loop BB2_22 Depth 3
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB2_4
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a2, $s5, 108
	beq	$a2, $s8, .LBB2_10
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a0, $a2, 2
	ldx.w	$a1, $s4, $a0
	ldx.w	$a0, $s0, $a0
	ld.w	$a3, $s5, 104
	and	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 1
	or	$a0, $a1, $a0
	andn	$a0, $a3, $a0
	addi.w	$a1, $a0, 0
	beqz	$a1, .LBB2_11
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	and	$a1, $a0, $s1
	andi	$a3, $a0, 255
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %got_pc_hi20(bit_count)
	ld.d	$a4, $a4, %got_pc_lo12(bit_count)
	ldx.w	$a3, $a4, $a3
	srli.d	$a5, $a0, 6
	andi	$a5, $a5, 1020
	ldx.w	$a5, $a4, $a5
	srli.d	$a0, $a0, 14
	andi	$a0, $a0, 1020
	ldx.w	$a0, $a4, $a0
	srli.d	$a1, $a1, 22
	ldx.w	$a1, $a4, $a1
	add.d	$a3, $a5, $a3
	add.d	$a0, $a3, $a0
	add.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB2_4
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	ori	$a1, $zero, 2
	bge	$a2, $a1, .LBB2_12
	b	.LBB2_17
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $zero
	b	.LBB2_17
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 2
	blt	$a2, $a1, .LBB2_17
.LBB2_12:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a1, $s4, 4
	addi.d	$a2, $a2, -1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_13:                               #   in Loop: Header=BB2_14 Depth=2
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB2_17
.LBB2_14:                               # %.lr.ph
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a3, 0
	and	$a4, $a5, $a4
	srli.d	$a5, $a4, 1
	or	$a4, $a5, $a4
	and	$a4, $a4, $fp
	beq	$a4, $fp, .LBB2_13
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=2
	beq	$a0, $s7, .LBB2_4
# %bb.16:                               #   in Loop: Header=BB2_14 Depth=2
	xor	$a4, $a4, $fp
	andi	$a5, $a4, 85
	slli.d	$a5, $a5, 2
	pcalau12i	$a6, %got_pc_hi20(bit_count)
	ld.d	$a6, $a6, %got_pc_lo12(bit_count)
	ldx.w	$a5, $a6, $a5
	srli.d	$a7, $a4, 6
	andi	$a7, $a7, 340
	ldx.w	$a7, $a6, $a7
	srli.d	$t0, $a4, 14
	andi	$t0, $t0, 340
	ldx.w	$t0, $a6, $t0
	srli.d	$a4, $a4, 22
	andi	$a4, $a4, 508
	ldx.w	$a4, $a6, $a4
	add.d	$a0, $a5, $a0
	add.d	$a0, $a0, $a7
	add.d	$a0, $a0, $t0
	add.w	$a0, $a0, $a4
	bge	$s7, $a0, .LBB2_13
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_17:                               # %.loopexit100
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a1, $s5, 8
	ld.w	$a2, $s5, 4
	bge	$a1, $a2, .LBB2_2
# %bb.18:                               # %.lr.ph112
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a3, $s5, 72
	ld.d	$a4, $s5, 48
	ld.d	$a5, $s5, 40
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               # %.loopexit
                                        #   in Loop: Header=BB2_20 Depth=2
	addi.d	$a1, $a1, 1
	addi.w	$a6, $a1, 0
	beq	$a2, $a6, .LBB2_2
.LBB2_20:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_22 Depth 3
	slli.d	$a6, $a1, 2
	ldx.w	$t1, $a4, $a6
	ldx.w	$t2, $a5, $a6
	blt	$t1, $t2, .LBB2_24
# %bb.21:                               # %.lr.ph108.preheader
                                        #   in Loop: Header=BB2_20 Depth=2
	slli.d	$a6, $a1, 3
	ldx.d	$t0, $a3, $a6
	alsl.d	$a6, $t2, $s4, 2
	alsl.d	$a7, $t2, $s0, 2
	alsl.d	$t0, $t2, $t0, 2
	sub.d	$t1, $t1, $t2
	addi.d	$t1, $t1, 1
	.p2align	4, , 16
.LBB2_22:                               # %.lr.ph108
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $a6, 0
	ld.w	$t3, $a7, 0
	ld.w	$t4, $t0, 0
	and	$t2, $t3, $t2
	and	$t2, $t2, $t4
	bnez	$t2, .LBB2_19
# %bb.23:                               #   in Loop: Header=BB2_22 Depth=3
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	addi.w	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	bnez	$t1, .LBB2_22
.LBB2_24:                               # %._crit_edge
                                        #   in Loop: Header=BB2_20 Depth=2
	bgtz	$a0, .LBB2_4
# %bb.25:                               #   in Loop: Header=BB2_20 Depth=2
	addi.w	$a0, $a0, 1
	b	.LBB2_19
.LBB2_26:                               #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	b	.LBB2_4
.LBB2_27:                               # %._crit_edge120
	move	$a0, $s3
	pcaddu18i	$ra, %call36(setp_empty)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_29
# %bb.28:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(elim_lowering)
	jirl	$ra, $ra, 0
.LBB2_29:
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 8
	bnez	$a0, .LBB2_31
# %bb.30:
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
.LBB2_31:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s0
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
.Lfunc_end2:
	.size	essen_parts, .Lfunc_end2-essen_parts
                                        # -- End function
	.globl	essen_raising                   # -- Begin function essen_raising
	.p2align	5
	.type	essen_raising,@function
essen_raising:                          # @essen_raising
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $a0, 80
	ld.d	$s1, $a1, 0
	ld.d	$a1, $a0, 96
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 12
	ld.w	$a6, $s2, 0
	mul.w	$a1, $a6, $a0
	blez	$a1, .LBB3_13
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a0, $s2, 24
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a2, $s1, 4
	addi.d	$a3, $s1, -12
	ori	$a4, $zero, 8
	ori	$a5, $zero, 1
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                # %.loopexit.loopexit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a6, $s2, 0
.LBB3_3:                                # %.loopexit
                                        #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$a0, $a6, $a0, 2
	bgeu	$a0, $a1, .LBB3_13
.LBB3_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #     Child Loop BB3_12 Depth 2
	ld.bu	$a7, $a0, 1
	andi	$a7, $a7, 32
	beqz	$a7, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld.wu	$a6, $s1, 0
	andi	$a7, $a6, 1023
	sltu	$t0, $zero, $a7
	sub.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	bltu	$a6, $a4, .LBB3_11
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$t1, $t0, $s1, 2
	alsl.d	$t2, $a7, $a0, 2
	addi.d	$t3, $t2, 4
	bgeu	$t1, $t3, .LBB3_8
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$t1, $a7, $a2, 2
	alsl.d	$t0, $t0, $a0, 2
	bltu	$t0, $t1, .LBB3_11
.LBB3_8:                                # %vector.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $a6
	bstrins.d	$t0, $zero, 2, 0
	sub.d	$t1, $a7, $t0
	alsl.d	$a7, $a7, $a3, 2
	addi.d	$t2, $t2, -12
	move	$t3, $t0
	.p2align	4, , 16
.LBB3_9:                                # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a7, 0
	vld	$vr1, $a7, -16
	vld	$vr2, $t2, 0
	vld	$vr3, $t2, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a7, 0
	vst	$vr1, $a7, -16
	addi.d	$t3, $t3, -8
	addi.d	$a7, $a7, -32
	addi.d	$t2, $t2, -32
	bnez	$t3, .LBB3_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a7, $t1
	beq	$a6, $t0, .LBB3_2
	.p2align	4, , 16
.LBB3_11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a6, $a7, 1
	alsl.d	$t0, $a7, $a0, 2
	alsl.d	$a7, $a7, $s1, 2
	.p2align	4, , 16
.LBB3_12:                               # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	ld.w	$t2, $t0, 0
	or	$t1, $t2, $t1
	st.w	$t1, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -4
	bltu	$a5, $a6, .LBB3_12
	b	.LBB3_2
.LBB3_13:                               # %._crit_edge
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 8
	bnez	$a0, .LBB3_15
# %bb.14:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_15:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end3:
	.size	essen_raising, .Lfunc_end3-essen_raising
                                        # -- End function
	.globl	elim_lowering                   # -- Begin function elim_lowering
	.p2align	5
	.type	elim_lowering,@function
elim_lowering:                          # @elim_lowering
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s1, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s1, 80
	ld.d	$a0, $a0, 0
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	mul.w	$a4, $a2, $a1
	lu12i.w	$a1, -3
	blez	$a4, .LBB4_17
# %bb.1:                                # %.lr.ph104
	ld.d	$a3, $s0, 24
	alsl.d	$a4, $a4, $a3, 2
	ld.d	$a5, $s1, 72
	ld.d	$a6, $s1, 48
	ld.d	$a7, $s1, 40
	addi.d	$t0, $a0, 4
	addi.w	$t1, $zero, -1
	ori	$t2, $a1, 4095
	lu32i.d	$t2, 0
	ori	$t3, $zero, 2
	lu12i.w	$t4, 349525
	ori	$t4, $t4, 1365
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                # %.loopexit90
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a2, $s0, 16
	addi.d	$a2, $a2, -1
	st.w	$a2, $s0, 16
	ld.wu	$a2, $a3, 0
	and	$a2, $a2, $t2
	st.w	$a2, $a3, 0
	ld.w	$a2, $s0, 0
.LBB4_3:                                # %.thread87
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$a3, $a2, $a3, 2
	bgeu	$a3, $a4, .LBB4_17
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
	ld.bu	$t5, $a3, 1
	andi	$t5, $t5, 32
	beqz	$t5, .LBB4_3
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	ld.w	$t6, $s1, 108
	beq	$t6, $t1, .LBB4_11
# %bb.6:                                #   in Loop: Header=BB4_4 Depth=1
	slli.d	$t5, $t6, 2
	ldx.w	$t7, $a3, $t5
	ldx.w	$t5, $a0, $t5
	ld.w	$t8, $s1, 104
	and	$t5, $t5, $t7
	bstrpick.d	$t7, $t5, 31, 1
	or	$t5, $t7, $t5
	andn	$t5, $t8, $t5
	addi.w	$t5, $t5, 0
	bnez	$t5, .LBB4_2
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	blt	$t6, $t3, .LBB4_11
# %bb.8:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$t5, $a3, 4
	addi.d	$t6, $t6, -1
	move	$t7, $t0
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t5, 0
	ld.w	$s2, $t7, 0
	and	$t8, $s2, $t8
	srli.d	$s2, $t8, 1
	or	$t8, $s2, $t8
	and	$t8, $t8, $t4
	bne	$t8, $t4, .LBB4_2
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=2
	addi.d	$t7, $t7, 4
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB4_9
	.p2align	4, , 16
.LBB4_11:                               # %.loopexit91
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$t5, $s1, 8
	ld.w	$t6, $s1, 4
	bge	$t5, $t6, .LBB4_3
.LBB4_12:                               # %.lr.ph99
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
	slli.d	$t7, $t5, 2
	ldx.w	$s3, $a6, $t7
	ldx.w	$s4, $a7, $t7
	blt	$s3, $s4, .LBB4_2
# %bb.13:                               # %.lr.ph96.preheader
                                        #   in Loop: Header=BB4_12 Depth=2
	slli.d	$t7, $t5, 3
	ldx.d	$s2, $a5, $t7
	alsl.d	$t7, $s4, $a3, 2
	alsl.d	$t8, $s4, $a0, 2
	alsl.d	$s2, $s4, $s2, 2
	sub.d	$s3, $s3, $s4
	addi.d	$s3, $s3, 1
	.p2align	4, , 16
.LBB4_14:                               # %.lr.ph96
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $t7, 0
	ld.w	$s5, $t8, 0
	ld.w	$s6, $s2, 0
	and	$s4, $s5, $s4
	and	$s4, $s4, $s6
	bnez	$s4, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=3
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 4
	addi.w	$s3, $s3, -1
	addi.d	$s2, $s2, 4
	bnez	$s3, .LBB4_14
	b	.LBB4_2
	.p2align	4, , 16
.LBB4_16:                               #   in Loop: Header=BB4_12 Depth=2
	addi.d	$t5, $t5, 1
	addi.w	$t7, $t5, 0
	bne	$t6, $t7, .LBB4_12
	b	.LBB4_3
.LBB4_17:                               # %._crit_edge
	beqz	$fp, .LBB4_28
# %bb.18:
	ld.w	$a2, $fp, 12
	ld.w	$a4, $fp, 0
	mul.w	$a3, $a4, $a2
	blez	$a3, .LBB4_28
# %bb.19:                               # %.lr.ph107
	ld.d	$a2, $fp, 24
	alsl.d	$a3, $a3, $a2, 2
	ori	$a5, $zero, 1
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_20:                               #   in Loop: Header=BB4_21 Depth=1
	alsl.d	$a2, $a4, $a2, 2
	bgeu	$a2, $a3, .LBB4_28
.LBB4_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_23 Depth 2
	ld.wu	$a6, $a2, 0
	slli.d	$a7, $a6, 50
	bgez	$a7, .LBB4_20
# %bb.22:                               #   in Loop: Header=BB4_21 Depth=1
	andi	$t0, $a6, 1023
	sltui	$a6, $t0, 1
	sub.w	$a7, $zero, $a6
	.p2align	4, , 16
.LBB4_23:                               #   Parent Loop BB4_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$t1, $a2, $t0
	ldx.w	$t0, $a0, $t0
	andn	$t0, $t1, $t0
	bnez	$t0, .LBB4_26
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=2
	addi.w	$t0, $a6, -1
	blt	$a5, $a6, .LBB4_23
# %bb.25:                               #   in Loop: Header=BB4_21 Depth=1
	move	$a6, $a7
.LBB4_26:                               #   in Loop: Header=BB4_21 Depth=1
	beqz	$a6, .LBB4_20
# %bb.27:                               #   in Loop: Header=BB4_21 Depth=1
	ld.w	$a4, $fp, 16
	addi.d	$a4, $a4, -1
	st.w	$a4, $fp, 16
	ld.wu	$a4, $a2, 0
	and	$a4, $a4, $a1
	st.w	$a4, $a2, 0
	ld.w	$a4, $fp, 0
	b	.LBB4_20
.LBB4_28:                               # %.loopexit
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
.Lfunc_end4:
	.size	elim_lowering, .Lfunc_end4-elim_lowering
                                        # -- End function
	.globl	most_frequent                   # -- Begin function most_frequent
	.p2align	5
	.type	most_frequent,@function
most_frequent:                          # @most_frequent
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s4, $a0, %got_pc_lo12(cube)
	ld.w	$s3, $s4, 0
	slli.d	$s2, $s3, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$s3, .LBB5_2
# %bb.1:                                # %.lr.ph.preheader
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %._crit_edge
	beqz	$s1, .LBB5_9
# %bb.3:
	ld.w	$a1, $s1, 12
	ld.w	$a0, $s1, 0
	mul.w	$a1, $a0, $a1
	blez	$a1, .LBB5_9
# %bb.4:                                # %.lr.ph47.preheader
	ld.d	$s2, $s1, 24
	alsl.d	$s3, $a1, $s2, 2
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_6 Depth=1
	alsl.d	$s2, $a0, $s2, 2
	bgeu	$s2, $s3, .LBB5_8
.LBB5_6:                                # %.lr.ph47
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s2, 1
	andi	$a1, $a1, 32
	beqz	$a1, .LBB5_5
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_adjcnt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	b	.LBB5_5
.LBB5_8:                                # %.loopexit.loopexit
	ld.w	$s3, $s4, 0
.LBB5_9:                                # %.loopexit
	blez	$s3, .LBB5_14
# %bb.10:                               # %.lr.ph52.preheader
	move	$a0, $zero
	move	$a1, $zero
	addi.w	$a3, $zero, -1
	lu12i.w	$a2, 131071
	ori	$a2, $a2, 4092
	move	$a4, $s0
	move	$s1, $a3
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_11:                               #   in Loop: Header=BB5_12 Depth=1
	addi.d	$a1, $a1, 1
	addi.w	$a0, $a0, 1
	addi.d	$a4, $a4, 4
	beq	$s3, $a1, .LBB5_15
.LBB5_12:                               # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a5, $a1, 3
	and	$a5, $a5, $a2
	add.d	$a5, $fp, $a5
	ld.w	$a5, $a5, 4
	srl.w	$a5, $a5, $a0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB5_11
# %bb.13:                               #   in Loop: Header=BB5_12 Depth=1
	ld.w	$a5, $a4, 0
	slt	$a6, $a3, $a5
	masknez	$a7, $s1, $a6
	maskeqz	$t0, $a0, $a6
	or	$s1, $t0, $a7
	masknez	$a3, $a3, $a6
	maskeqz	$a5, $a5, $a6
	or	$a3, $a5, $a3
	b	.LBB5_11
.LBB5_14:
	addi.w	$s1, $zero, -1
.LBB5_15:                               # %._crit_edge53
	beqz	$s0, .LBB5_17
# %bb.16:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_17:
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 8
	beqz	$a0, .LBB5_19
# %bb.18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_19:
	move	$a0, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	most_frequent, .Lfunc_end5-most_frequent
                                        # -- End function
	.globl	setup_BB_CC                     # -- Begin function setup_BB_CC
	.p2align	5
	.type	setup_BB_CC,@function
setup_BB_CC:                            # @setup_BB_CC
# %bb.0:
	ld.w	$a2, $a0, 12
	ld.w	$a3, $a0, 0
	st.w	$a2, $a0, 16
	mul.w	$a4, $a3, $a2
	lu12i.w	$a2, 2
	blez	$a4, .LBB6_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a3, $a0, 24
	alsl.d	$a4, $a4, $a3, 2
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	or	$a5, $a5, $a2
	st.w	$a5, $a3, 0
	ld.w	$a5, $a0, 0
	alsl.d	$a3, $a5, $a3, 2
	bltu	$a3, $a4, .LBB6_2
.LBB6_3:                                # %._crit_edge
	beqz	$a1, .LBB6_10
# %bb.4:
	ld.w	$a0, $a1, 12
	ld.w	$a3, $a1, 0
	mul.w	$a3, $a3, $a0
	st.w	$a0, $a1, 16
	blez	$a3, .LBB6_10
# %bb.5:                                # %.lr.ph33.preheader
	ld.d	$a0, $a1, 24
	alsl.d	$a3, $a3, $a0, 2
	lu12i.w	$a4, 8
	ori	$a4, $a4, 2048
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_6:                                #   in Loop: Header=BB6_8 Depth=1
	or	$a5, $a5, $a2
.LBB6_7:                                #   in Loop: Header=BB6_8 Depth=1
	st.w	$a5, $a0, 0
	ld.w	$a5, $a1, 0
	alsl.d	$a0, $a5, $a0, 2
	bgeu	$a0, $a3, .LBB6_10
.LBB6_8:                                # %.lr.ph33
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a5, $a0, 0
	and	$a6, $a5, $a4
	beqz	$a6, .LBB6_6
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=1
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, -1
	st.w	$a5, $a1, 16
	ld.w	$a5, $a0, 0
	bstrins.d	$a5, $zero, 13, 13
	b	.LBB6_7
.LBB6_10:                               # %.loopexit
	ret
.Lfunc_end6:
	.size	setup_BB_CC, .Lfunc_end6-setup_BB_CC
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function select_feasible
.LCPI7_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	select_feasible
	.p2align	5
	.type	select_feasible,@function
select_feasible:                        # @select_feasible
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
	move	$s2, $a1
	ld.w	$a1, $a1, 16
	move	$s5, $a5
	move	$s7, $a4
	move	$s4, $a3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a0
	slli.d	$s6, $a1, 3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	ld.w	$a2, $s2, 0
	mul.w	$a1, $a2, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	blez	$a1, .LBB7_5
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s2, 24
	move	$s1, $zero
	alsl.d	$a1, $a1, $a0, 2
	slli.d	$a2, $a2, 2
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_3 Depth=1
	add.d	$a0, $a0, $a2
	bgeu	$a0, $a1, .LBB7_6
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 1
	andi	$a3, $a3, 32
	beqz	$a3, .LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	slli.d	$a3, $s1, 3
	addi.w	$s1, $s1, 1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	stx.d	$a0, $a5, $a3
	b	.LBB7_2
.LBB7_5:
	move	$s1, $zero
.LBB7_6:                                # %._crit_edge
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	blez	$s1, .LBB7_14
# %bb.7:                                # %.lr.ph129
	ld.d	$a5, $a0, 24
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 4
	bgeu	$s1, $a2, .LBB7_9
# %bb.8:
	move	$a2, $zero
	b	.LBB7_12
.LBB7_9:                                # %vector.ph
	bstrpick.d	$a2, $s1, 30, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI7_0)
	vreplgr2vr.d	$vr1, $a1
	addi.d	$a3, $s0, 16
	vreplgr2vr.d	$vr2, $a5
	move	$a4, $a2
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr3, $vr0, 2
	vmul.d	$vr4, $vr0, $vr1
	vmul.d	$vr3, $vr3, $vr1
	vslli.d	$vr4, $vr4, 2
	vadd.d	$vr4, $vr2, $vr4
	vslli.d	$vr3, $vr3, 2
	vadd.d	$vr3, $vr2, $vr3
	vst	$vr4, $a3, -16
	vst	$vr3, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB7_10
# %bb.11:                               # %middle.block
	beq	$a2, $s1, .LBB7_14
.LBB7_12:                               # %scalar.ph.preheader
	mul.d	$a3, $a2, $a1
	alsl.d	$a4, $a3, $a5, 2
	slli.d	$a1, $a1, 2
	alsl.d	$a3, $a2, $s0, 3
	sub.d	$a2, $s1, $a2
	.p2align	4, , 16
.LBB7_13:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a4, $a3, 0
	add.d	$a4, $a4, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB7_13
.LBB7_14:                               # %.preheader124.preheader
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2047
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1807
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
                                        # implicit-def: $r26
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_15:                               #   in Loop: Header=BB7_16 Depth=1
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s4
	pcaddu18i	$ra, %call36(essen_parts)
	jirl	$ra, $ra, 0
	move	$s1, $s7
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
.LBB7_16:                               # %.preheader124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
                                        #     Child Loop BB7_24 Depth 2
                                        #       Child Loop BB7_25 Depth 3
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(essen_raising)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	bgtz	$s1, .LBB7_30
.LBB7_17:                               # %._crit_edge134
                                        #   in Loop: Header=BB7_16 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 8
	beqz	$a0, .LBB7_19
# %bb.18:                               #   in Loop: Header=BB7_16 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB7_19:                               #   in Loop: Header=BB7_16 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_37
# %bb.20:                               # %.preheader
                                        #   in Loop: Header=BB7_16 Depth=1
	move	$s7, $a0
	blez	$a0, .LBB7_28
# %bb.21:                               # %.lr.ph146.preheader
                                        #   in Loop: Header=BB7_16 Depth=1
	move	$s1, $zero
	move	$s6, $zero
	move	$s8, $s3
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_22:                               #   in Loop: Header=BB7_24 Depth=2
	xor	$a0, $fp, $s6
	sltui	$a0, $a0, 1
	slt	$a1, $s2, $s4
	and	$a0, $a0, $a1
	masknez	$a1, $s4, $a0
	maskeqz	$a2, $s2, $a0
	or	$s2, $a2, $a1
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
.LBB7_23:                               #   in Loop: Header=BB7_24 Depth=2
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s1, $s1, 1
	move	$s8, $s3
	move	$s4, $s2
	beq	$s1, $s7, .LBB7_28
.LBB7_24:                               # %.lr.ph146
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_25 Depth 3
	slli.d	$fp, $s1, 3
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$s3, $s5, $fp
	move	$a0, $s3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(set_dist)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$s0, $a1, $fp
	move	$s2, $a0
	move	$fp, $zero
	.p2align	4, , 16
.LBB7_25:                               #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s5, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	add.w	$fp, $fp, $a0
	addi.d	$s7, $s7, -1
	addi.d	$s5, $s5, 8
	bnez	$s7, .LBB7_25
# %bb.26:                               # %._crit_edge140
                                        #   in Loop: Header=BB7_24 Depth=2
	bge	$s6, $fp, .LBB7_22
# %bb.27:                               #   in Loop: Header=BB7_24 Depth=2
	move	$s6, $fp
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_28:                               # %._crit_edge147
                                        #   in Loop: Header=BB7_16 Depth=1
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	move	$a0, $s6
	move	$a1, $s6
	move	$a2, $s3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 8
	beqz	$a0, .LBB7_15
# %bb.29:                               #   in Loop: Header=BB7_16 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_30:                               # %.lr.ph133.preheader
                                        #   in Loop: Header=BB7_16 Depth=1
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_31:                               #   in Loop: Header=BB7_33 Depth=2
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 0
	move	$a0, $s7
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 16
	addi.d	$a0, $a0, -1
	st.w	$a0, $s2, 16
	ld.wu	$a0, $s4, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	ori	$a0, $a0, 2048
	st.w	$a0, $s4, 0
.LBB7_32:                               #   in Loop: Header=BB7_33 Depth=2
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	beqz	$fp, .LBB7_17
.LBB7_33:                               # %.lr.ph133
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s0, 0
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB7_32
# %bb.34:                               #   in Loop: Header=BB7_33 Depth=2
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(setp_implies)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_31
# %bb.35:                               #   in Loop: Header=BB7_33 Depth=2
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	slli.d	$s1, $s8, 3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a3, $a0, $s1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(feasibly_covered)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_32
# %bb.36:                               #   in Loop: Header=BB7_33 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	stx.d	$s4, $a0, $s1
	addi.w	$s8, $s8, 1
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	b	.LBB7_32
.LBB7_37:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_39
# %bb.38:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_39:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB7_41
# %bb.40:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_41:
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(sf_free)
	jr	$t8
.Lfunc_end7:
	.size	select_feasible, .Lfunc_end7-select_feasible
                                        # -- End function
	.globl	feasibly_covered                # -- Begin function feasibly_covered
	.p2align	5
	.type	feasibly_covered,@function
feasibly_covered:                       # @feasibly_covered
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
	move	$fp, $a3
	move	$a3, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s3, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s3, 80
	ld.d	$a0, $a0, 0
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 96
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a0, $s0, 0
	mul.w	$a1, $a0, $a1
	blez	$a1, .LBB8_26
# %bb.1:                                # %.lr.ph104.preheader
	ld.d	$s2, $s0, 24
	alsl.d	$s4, $a1, $s2, 2
	addi.d	$a1, $s1, 4
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s6, $zero, -1
	lu12i.w	$a1, 349525
	ori	$s8, $a1, 1365
	ori	$s7, $zero, 1
	lu12i.w	$s5, -4096
	lu32i.d	$s5, 0
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_2:                                # %._crit_edge98
                                        #   in Loop: Header=BB8_5 Depth=1
	beqz	$a1, .LBB8_28
# %bb.3:                                #   in Loop: Header=BB8_5 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(force_lower)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
.LBB8_4:                                # %.thread
                                        #   in Loop: Header=BB8_5 Depth=1
	alsl.d	$s2, $a0, $s2, 2
	bgeu	$s2, $s4, .LBB8_26
.LBB8_5:                                # %.lr.ph104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_14 Depth 2
                                        #     Child Loop BB8_20 Depth 2
                                        #       Child Loop BB8_22 Depth 3
	ld.bu	$a1, $s2, 1
	andi	$a1, $a1, 32
	beqz	$a1, .LBB8_4
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	ld.w	$a3, $s3, 108
	beq	$a3, $s6, .LBB8_10
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	slli.d	$a1, $a3, 2
	ldx.w	$a2, $s2, $a1
	ldx.w	$a1, $s1, $a1
	ld.w	$a4, $s3, 104
	and	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 1
	or	$a1, $a2, $a1
	andn	$a1, $a4, $a1
	addi.w	$a2, $a1, 0
	beqz	$a2, .LBB8_11
# %bb.8:                                #   in Loop: Header=BB8_5 Depth=1
	and	$a2, $a1, $s5
	andi	$a4, $a1, 255
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %got_pc_hi20(bit_count)
	ld.d	$a5, $a5, %got_pc_lo12(bit_count)
	ldx.w	$a4, $a5, $a4
	srli.d	$a6, $a1, 6
	andi	$a6, $a6, 1020
	ldx.w	$a6, $a5, $a6
	srli.d	$a1, $a1, 14
	andi	$a1, $a1, 1020
	ldx.w	$a1, $a5, $a1
	srli.d	$a2, $a2, 22
	ldx.w	$a2, $a5, $a2
	add.d	$a4, $a6, $a4
	add.d	$a1, $a4, $a1
	add.w	$a1, $a1, $a2
	blt	$s7, $a1, .LBB8_4
# %bb.9:                                #   in Loop: Header=BB8_5 Depth=1
	ori	$a2, $zero, 2
	bge	$a3, $a2, .LBB8_12
	b	.LBB8_17
.LBB8_10:                               #   in Loop: Header=BB8_5 Depth=1
	move	$a1, $zero
	b	.LBB8_17
.LBB8_11:                               #   in Loop: Header=BB8_5 Depth=1
	move	$a1, $zero
	ori	$a2, $zero, 2
	blt	$a3, $a2, .LBB8_17
.LBB8_12:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a2, $s2, 4
	addi.d	$a3, $a3, -1
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	b	.LBB8_14
	.p2align	4, , 16
.LBB8_13:                               #   in Loop: Header=BB8_14 Depth=2
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	beqz	$a3, .LBB8_17
.LBB8_14:                               # %.lr.ph
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a4, 0
	and	$a5, $a6, $a5
	srli.d	$a6, $a5, 1
	or	$a5, $a6, $a5
	and	$a5, $a5, $s8
	beq	$a5, $s8, .LBB8_13
# %bb.15:                               #   in Loop: Header=BB8_14 Depth=2
	beq	$a1, $s7, .LBB8_4
# %bb.16:                               #   in Loop: Header=BB8_14 Depth=2
	xor	$a5, $a5, $s8
	andi	$a6, $a5, 85
	slli.d	$a6, $a6, 2
	pcalau12i	$a7, %got_pc_hi20(bit_count)
	ld.d	$a7, $a7, %got_pc_lo12(bit_count)
	ldx.w	$a6, $a7, $a6
	srli.d	$t0, $a5, 6
	andi	$t0, $t0, 340
	ldx.w	$t0, $a7, $t0
	srli.d	$t1, $a5, 14
	andi	$t1, $t1, 340
	ldx.w	$t1, $a7, $t1
	srli.d	$a5, $a5, 22
	andi	$a5, $a5, 508
	ldx.w	$a5, $a7, $a5
	add.d	$a1, $a6, $a1
	add.d	$a1, $a1, $t0
	add.d	$a1, $a1, $t1
	add.w	$a1, $a1, $a5
	bge	$s7, $a1, .LBB8_13
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_17:                               # %.loopexit85
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.w	$a2, $s3, 8
	ld.w	$a3, $s3, 4
	bge	$a2, $a3, .LBB8_2
# %bb.18:                               # %.lr.ph97
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a4, $s3, 72
	ld.d	$a5, $s3, 48
	ld.d	$a6, $s3, 40
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_19:                               # %.loopexit
                                        #   in Loop: Header=BB8_20 Depth=2
	addi.d	$a2, $a2, 1
	addi.w	$a7, $a2, 0
	beq	$a3, $a7, .LBB8_2
.LBB8_20:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_22 Depth 3
	slli.d	$a7, $a2, 2
	ldx.w	$t2, $a5, $a7
	ldx.w	$t3, $a6, $a7
	blt	$t2, $t3, .LBB8_24
# %bb.21:                               # %.lr.ph93.preheader
                                        #   in Loop: Header=BB8_20 Depth=2
	slli.d	$a7, $a2, 3
	ldx.d	$t1, $a4, $a7
	alsl.d	$a7, $t3, $s2, 2
	alsl.d	$t0, $t3, $s1, 2
	alsl.d	$t1, $t3, $t1, 2
	sub.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 1
	.p2align	4, , 16
.LBB8_22:                               # %.lr.ph93
                                        #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $a7, 0
	ld.w	$t4, $t0, 0
	ld.w	$t5, $t1, 0
	and	$t3, $t4, $t3
	and	$t3, $t3, $t5
	bnez	$t3, .LBB8_19
# %bb.23:                               #   in Loop: Header=BB8_22 Depth=3
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	bnez	$t2, .LBB8_22
.LBB8_24:                               # %._crit_edge
                                        #   in Loop: Header=BB8_20 Depth=2
	bgtz	$a1, .LBB8_4
# %bb.25:                               #   in Loop: Header=BB8_20 Depth=2
	addi.w	$a1, $a1, 1
	b	.LBB8_19
.LBB8_26:
	ori	$a0, $zero, 1
.LBB8_27:                               # %._crit_edge105
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
.LBB8_28:
	move	$a0, $zero
	b	.LBB8_27
.Lfunc_end8:
	.size	feasibly_covered, .Lfunc_end8-feasibly_covered
                                        # -- End function
	.globl	mincov                          # -- Begin function mincov
	.p2align	5
	.type	mincov,@function
mincov:                                 # @mincov
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
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s5, 80
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $s1, 16
	ld.w	$a1, $s5, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 12
	ld.w	$a1, $s1, 0
	mul.w	$a2, $a1, $a2
	move	$s3, $a0
	blez	$a2, .LBB9_5
# %bb.1:                                # %.lr.ph
	ld.d	$s4, $s1, 24
	alsl.d	$s2, $a2, $s4, 2
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_3 Depth=1
	alsl.d	$s4, $a1, $s4, 2
	bgeu	$s4, $s2, .LBB9_5
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB9_2
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a0, $s3, 12
	ld.d	$a2, $s3, 24
	ld.w	$a3, $s3, 0
	addi.d	$a4, $a0, 1
	ld.d	$a1, $s5, 96
	st.w	$a4, $s3, 12
	mul.w	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a2, 2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(force_lower)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	b	.LBB9_2
.LBB9_5:                                # %._crit_edge
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $s3, 12
	ld.w	$a1, $s3, 0
	mul.w	$a1, $a1, $a0
	blez	$a1, .LBB9_14
# %bb.6:                                # %.lr.ph78.preheader
	ld.d	$s4, $s3, 24
	move	$s6, $zero
	ld.w	$a0, $s5, 4
	alsl.d	$a1, $a1, $s4, 2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s8, $zero, 2
	ori	$s2, $zero, 500
.LBB9_7:                                # %.lr.ph78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
	ld.w	$fp, $s5, 8
	ori	$s7, $zero, 1
	bge	$fp, $a0, .LBB9_12
# %bb.8:                                # %.lr.ph73.preheader
                                        #   in Loop: Header=BB9_7 Depth=1
	slli.d	$s0, $fp, 3
	ori	$s7, $zero, 1
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_9:                                #   in Loop: Header=BB9_10 Depth=2
	ld.w	$a0, $s5, 4
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bge	$fp, $a0, .LBB9_12
.LBB9_10:                               # %.lr.ph73
                                        #   Parent Loop BB9_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 72
	ldx.d	$a1, $a0, $s0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(set_dist)
	jirl	$ra, $ra, 0
	blt	$a0, $s8, .LBB9_9
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=2
	mul.w	$s7, $a0, $s7
	bge	$s2, $s7, .LBB9_9
	b	.LBB9_18
	.p2align	4, , 16
.LBB9_12:                               # %._crit_edge74
                                        #   in Loop: Header=BB9_7 Depth=1
	add.w	$s6, $s7, $s6
	blt	$s2, $s6, .LBB9_18
# %bb.13:                               #   in Loop: Header=BB9_7 Depth=1
	ld.w	$a1, $s3, 0
	alsl.d	$s4, $a1, $s4, 2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bltu	$s4, $a1, .LBB9_7
.LBB9_14:                               # %._crit_edge79
	ld.w	$a1, $s5, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(unravel)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(do_sm_minimum_cover)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	st.w	$zero, $s1, 16
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 8
	beqz	$a0, .LBB9_16
# %bb.15:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_16:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB9_19
# %bb.17:
	move	$a0, $s4
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB9_18:                               # %.loopexit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(most_frequent)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	sll.w	$fp, $a1, $a0
	move	$a0, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(most_frequent)
	jirl	$ra, $ra, 0
	srai.d	$a0, $a0, 5
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s2, 2
	ld.w	$a1, $a0, 4
	or	$a1, $a1, $fp
	st.w	$a1, $a0, 4
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $s0
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
	pcaddu18i	$t8, %call36(essen_parts)
	jr	$t8
.LBB9_19:
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
.Lfunc_end9:
	.size	mincov, .Lfunc_end9-mincov
                                        # -- End function
	.globl	find_all_primes                 # -- Begin function find_all_primes
	.p2align	5
	.type	find_all_primes,@function
find_all_primes:                        # @find_all_primes
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
	move	$s1, $a0
	ld.w	$a0, $a0, 16
	move	$fp, $a1
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s4, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $s4, 0
	beqz	$a0, .LBB10_26
# %bb.1:
	move	$s0, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 12
	ld.w	$a1, $s1, 0
	mul.w	$a2, $a1, $a2
	move	$s2, $a0
	blez	$a2, .LBB10_6
# %bb.2:                                # %.lr.ph
	ld.d	$s3, $s1, 24
	alsl.d	$s5, $a2, $s3, 2
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_3:                               #   in Loop: Header=BB10_4 Depth=1
	alsl.d	$s3, $a1, $s3, 2
	bgeu	$s3, $s5, .LBB10_6
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s3, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB10_3
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	ld.w	$a0, $s2, 12
	ld.d	$a2, $s2, 24
	ld.w	$a3, $s2, 0
	addi.d	$a4, $a0, 1
	ld.d	$a1, $s4, 96
	st.w	$a4, $s2, 12
	mul.w	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a2, 2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(force_lower)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	b	.LBB10_3
.LBB10_6:                               # %._crit_edge
	ld.w	$a1, $s4, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(unravel)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_rev_contain)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(exact_minimum_cover)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s1, 0
	mul.w	$a1, $a1, $a0
	blez	$a1, .LBB10_25
# %bb.7:                                # %.lr.ph64.preheader
	ld.d	$a0, $s1, 24
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a2, $fp, 4
	addi.d	$a3, $s0, 4
	addi.d	$a4, $s0, -12
	addi.d	$a5, $fp, -12
	ori	$a6, $zero, 8
	ori	$a7, $zero, 1
	lu12i.w	$t0, 8
	vrepli.b	$vr0, -1
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_8:                               # %.loopexit
                                        #   in Loop: Header=BB10_9 Depth=1
	ld.w	$t1, $a0, 0
	or	$t1, $t1, $t0
	st.w	$t1, $a0, 0
	ld.w	$t1, $s1, 0
	alsl.d	$a0, $t1, $a0, 2
	bgeu	$a0, $a1, .LBB10_25
.LBB10_9:                               # %.lr.ph64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_13 Depth 2
                                        #     Child Loop BB10_16 Depth 2
                                        #     Child Loop BB10_21 Depth 2
                                        #     Child Loop BB10_24 Depth 2
	ld.wu	$t1, $a0, 0
	ld.wu	$t4, $s0, 0
	srli.d	$t1, $t1, 10
	andi	$t2, $t4, 1023
	bstrins.d	$t4, $t1, 63, 10
	sltu	$t3, $zero, $t2
	sub.d	$t1, $t2, $t3
	addi.d	$t1, $t1, 1
	st.w	$t4, $a0, 0
	bltu	$t1, $a6, .LBB10_15
# %bb.10:                               # %vector.memcheck85
                                        #   in Loop: Header=BB10_9 Depth=1
	alsl.d	$t4, $t3, $a0, 2
	alsl.d	$t6, $t2, $a3, 2
	alsl.d	$t5, $t2, $a0, 2
	bgeu	$t4, $t6, .LBB10_12
# %bb.11:                               # %vector.memcheck85
                                        #   in Loop: Header=BB10_9 Depth=1
	addi.d	$t4, $t5, 4
	alsl.d	$t3, $t3, $s0, 2
	bltu	$t3, $t4, .LBB10_15
.LBB10_12:                              # %vector.ph99
                                        #   in Loop: Header=BB10_9 Depth=1
	move	$t3, $t1
	bstrins.d	$t3, $zero, 2, 0
	sub.d	$t4, $t2, $t3
	alsl.d	$t2, $t2, $a4, 2
	addi.d	$t5, $t5, -12
	move	$t6, $t3
	.p2align	4, , 16
.LBB10_13:                              # %vector.body102
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t5, 0
	vld	$vr2, $t5, -16
	vld	$vr3, $t2, 0
	vld	$vr4, $t2, -16
	vxor.v	$vr1, $vr1, $vr0
	vxor.v	$vr2, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vand.v	$vr2, $vr4, $vr2
	vst	$vr1, $t5, 0
	vst	$vr2, $t5, -16
	addi.d	$t6, $t6, -8
	addi.d	$t2, $t2, -32
	addi.d	$t5, $t5, -32
	bnez	$t6, .LBB10_13
# %bb.14:                               # %middle.block116
                                        #   in Loop: Header=BB10_9 Depth=1
	move	$t2, $t4
	beq	$t1, $t3, .LBB10_17
	.p2align	4, , 16
.LBB10_15:                              # %scalar.ph97.preheader
                                        #   in Loop: Header=BB10_9 Depth=1
	addi.d	$t1, $t2, 1
	alsl.d	$t3, $t2, $a0, 2
	alsl.d	$t2, $t2, $s0, 2
	.p2align	4, , 16
.LBB10_16:                              # %scalar.ph97
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, 0
	ld.w	$t5, $t3, 0
	andn	$t4, $t4, $t5
	st.w	$t4, $t3, 0
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, -4
	addi.d	$t2, $t2, -4
	bltu	$a7, $t1, .LBB10_16
.LBB10_17:                              # %.loopexit119
                                        #   in Loop: Header=BB10_9 Depth=1
	ld.wu	$t1, $a0, 0
	andi	$t2, $t1, 1023
	sltu	$t3, $zero, $t2
	sub.d	$t1, $t2, $t3
	addi.d	$t1, $t1, 1
	bltu	$t1, $a6, .LBB10_23
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB10_9 Depth=1
	alsl.d	$t4, $t3, $a0, 2
	alsl.d	$t6, $t2, $a2, 2
	alsl.d	$t5, $t2, $a0, 2
	bgeu	$t4, $t6, .LBB10_20
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB10_9 Depth=1
	addi.d	$t4, $t5, 4
	alsl.d	$t3, $t3, $fp, 2
	bltu	$t3, $t4, .LBB10_23
.LBB10_20:                              # %vector.ph
                                        #   in Loop: Header=BB10_9 Depth=1
	move	$t3, $t1
	bstrins.d	$t3, $zero, 2, 0
	sub.d	$t4, $t2, $t3
	addi.d	$t5, $t5, -12
	alsl.d	$t2, $t2, $a5, 2
	move	$t6, $t3
	.p2align	4, , 16
.LBB10_21:                              # %vector.body
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t5, 0
	vld	$vr2, $t5, -16
	vld	$vr3, $t2, 0
	vld	$vr4, $t2, -16
	vor.v	$vr1, $vr3, $vr1
	vor.v	$vr2, $vr4, $vr2
	vst	$vr1, $t5, 0
	vst	$vr2, $t5, -16
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, -32
	addi.d	$t2, $t2, -32
	bnez	$t6, .LBB10_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB10_9 Depth=1
	move	$t2, $t4
	beq	$t1, $t3, .LBB10_8
	.p2align	4, , 16
.LBB10_23:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_9 Depth=1
	addi.d	$t1, $t2, 1
	alsl.d	$t3, $t2, $fp, 2
	alsl.d	$t2, $t2, $a0, 2
	.p2align	4, , 16
.LBB10_24:                              # %scalar.ph
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, 0
	ld.w	$t5, $t3, 0
	or	$t4, $t5, $t4
	st.w	$t4, $t2, 0
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, -4
	addi.d	$t2, $t2, -4
	bltu	$a7, $t1, .LBB10_24
	b	.LBB10_8
.LBB10_25:                              # %._crit_edge65
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	b	.LBB10_27
.LBB10_26:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s1, 0
	ld.d	$s0, $s1, 24
	addi.d	$a2, $a0, 1
	st.w	$a2, $s1, 12
	mul.w	$a0, $a0, $a1
	slli.d	$s2, $a0, 2
	alsl.d	$a0, $a0, $s0, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s0, $s2
	lu12i.w	$a1, 8
	or	$a0, $a0, $a1
	stx.w	$a0, $s0, $s2
.LBB10_27:
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
.Lfunc_end10:
	.size	find_all_primes, .Lfunc_end10-find_all_primes
                                        # -- End function
	.globl	all_primes                      # -- Begin function all_primes
	.p2align	5
	.type	all_primes,@function
all_primes:                             # @all_primes
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.w	$s1, $s5, 0
	ori	$s2, $zero, 8
	ori	$s4, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $s4, .LBB11_2
# %bb.1:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB11_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s5, 0
	move	$s1, $a0
	blt	$s3, $s4, .LBB11_4
# %bb.3:
	addi.d	$a0, $s3, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s2, $a0, 8
.LBB11_4:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 12
	ld.w	$a1, $s5, 0
	move	$s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	mul.w	$a1, $a2, $a1
	blez	$a1, .LBB11_13
# %bb.5:                                # %.lr.ph
	ld.d	$s3, $s0, 24
	alsl.d	$s6, $a1, $s3, 2
	lu12i.w	$s7, 2
	b	.LBB11_8
	.p2align	4, , 16
.LBB11_6:                               #   in Loop: Header=BB11_8 Depth=1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
.LBB11_7:                               #   in Loop: Header=BB11_8 Depth=1
	ld.w	$a1, $s0, 0
	alsl.d	$s3, $a1, $s3, 2
	bgeu	$s3, $s6, .LBB11_13
.LBB11_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_11 Depth 2
	ld.bu	$a1, $s3, 1
	andi	$a1, $a1, 128
	bnez	$a1, .LBB11_6
# %bb.9:                                #   in Loop: Header=BB11_8 Depth=1
	move	$s4, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 88
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.w	$a1, $fp, 0
	mul.w	$a1, $a1, $a0
	st.w	$a0, $fp, 16
	blez	$a1, .LBB11_12
# %bb.10:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB11_8 Depth=1
	ld.d	$a0, $fp, 24
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB11_11:                              # %.lr.ph.i
                                        #   Parent Loop BB11_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 0
	or	$a2, $a2, $s7
	st.w	$a2, $a0, 0
	ld.w	$a2, $fp, 0
	alsl.d	$a0, $a2, $a0, 2
	bltu	$a0, $a1, .LBB11_11
.LBB11_12:                              # %setup_BB_CC.exit
                                        #   in Loop: Header=BB11_8 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(essen_parts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(find_all_primes)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	b	.LBB11_7
.LBB11_13:                              # %._crit_edge
	beqz	$s2, .LBB11_15
# %bb.14:
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB11_15:
	beqz	$s1, .LBB11_17
# %bb.16:
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB11_17:
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
	.size	all_primes, .Lfunc_end11-all_primes
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"EXPAND: %s (covered %d)\n"
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\nEXPAND1:    \t%s\n"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ON-set and OFF-set are not orthogonal"
	.size	.L.str.2, 38

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ESSEN_PARTS:\tRAISE=%s FREESET=%s\n"
	.size	.L.str.3, 34

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ESSEN_RAISING:\tRAISE=%s FREESET=%s\n"
	.size	.L.str.4, 36

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"MOST_FREQUENT:\tbest=%d FREESET=%s\n"
	.size	.L.str.5, 35

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"SELECT_FEASIBLE: started with %d pfcc, ended with %d fcc\n"
	.size	.L.str.6, 58

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"FEASIBLE:  \tRAISE=%s FREESET=%s\n"
	.size	.L.str.7, 33

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"MINCOV:    \tRAISE=%s FREESET=%s\n"
	.size	.L.str.8, 33

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ascend
