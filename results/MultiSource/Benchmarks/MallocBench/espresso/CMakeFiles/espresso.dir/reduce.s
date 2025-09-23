	.file	"reduce.c"
	.text
	.globl	reduce                          # -- Begin function reduce
	.p2align	5
	.type	reduce,@function
reduce:                                 # @reduce
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
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(use_random_order)
	ld.d	$a1, $a1, %got_pc_lo12(use_random_order)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB0_2
# %bb.1:
	pcaddu18i	$ra, %call36(random_order)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB0_6
.LBB0_2:
	pcalau12i	$s1, %pc_hi20(toggle)
	ld.w	$a1, $s1, %pc_lo12(toggle)
	beqz	$a1, .LBB0_4
# %bb.3:
	pcaddu18i	$ra, %call36(sort_reduce)
	jirl	$ra, $ra, 0
	b	.LBB0_5
.LBB0_4:
	pcalau12i	$a1, %got_pc_hi20(descend)
	ld.d	$a1, $a1, %got_pc_lo12(descend)
	pcaddu18i	$ra, %call36(mini_sort)
	jirl	$ra, $ra, 0
.LBB0_5:
	move	$fp, $a0
	ld.w	$a0, $s1, %pc_lo12(toggle)
	sltui	$a0, $a0, 1
	st.w	$a0, $s1, %pc_lo12(toggle)
.LBB0_6:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cube2list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a1, $a2, $a1
	move	$s0, $a0
	blez	$a1, .LBB0_17
# %bb.7:                                # %.lr.ph.preheader
	ld.d	$s1, $fp, 24
	alsl.d	$s6, $a1, $s1, 2
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s7, $a0, %got_pc_lo12(debug)
	lu12i.w	$a0, -9
	ori	$s8, $a0, 4095
	lu32i.d	$s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s2, 10
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=1
	ld.w	$a0, $fp, 0
	alsl.d	$s1, $a0, $s1, 2
	bgeu	$s1, $s6, .LBB0_17
.LBB0_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	ld.w	$a0, $s1, 0
	or	$a1, $a0, $s2
	st.w	$a1, $s1, 0
	bnez	$s3, .LBB0_16
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	ld.bu	$a0, $s7, 0
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s1, 0
	and	$a0, $a0, $s8
	st.w	$a0, $s1, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(setp_empty)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	beqz	$a0, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=1
	bstrins.d	$a1, $zero, 13, 13
	st.w	$a1, $s1, 0
	bnez	$s3, .LBB0_16
	b	.LBB0_8
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=1
	lu12i.w	$a0, 2
	or	$a1, $a1, $a0
	st.w	$a1, $s1, 0
	beqz	$s3, .LBB0_8
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_17:                               # %._crit_edge
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB0_19
# %bb.18:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_19:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(sf_inactive)
	jr	$t8
.Lfunc_end0:
	.size	reduce, .Lfunc_end0-reduce
                                        # -- End function
	.globl	reduce_cube                     # -- Begin function reduce_cube
	.p2align	5
	.type	reduce_cube,@function
reduce_cube:                            # @reduce_cube
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(cofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a2, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(set_and)
	jr	$t8
.Lfunc_end1:
	.size	reduce_cube, .Lfunc_end1-reduce_cube
                                        # -- End function
	.globl	sccc                            # -- Begin function sccc
	.p2align	5
	.type	sccc,@function
sccc:                                   # @sccc
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s5, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 128
	pcalau12i	$s4, %pc_hi20(sccc.sccc_level)
	beqz	$a0, .LBB2_2
# %bb.1:
	ld.w	$a2, $s4, %pc_lo12(sccc.sccc_level)
	addi.d	$a0, $a2, 1
	st.w	$a0, $s4, %pc_lo12(sccc.sccc_level)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(debug_print)
	jirl	$ra, $ra, 0
.LBB2_2:
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sccc_special_cases)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB2_16
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.w	$s0, $s2, 0
	ori	$s1, $zero, 8
	ori	$s6, $zero, 33
	lu12i.w	$s3, 131071
	ori	$a0, $zero, 8
	blt	$s0, $s6, .LBB2_5
# %bb.4:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s3, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_5:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s2, 0
	move	$s0, $a0
	blt	$s2, $s6, .LBB2_7
# %bb.6:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s3, 4092
	and	$a0, $a0, $a1
	addi.d	$s1, $a0, 8
.LBB2_7:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a3, $zero, 128
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s1, 0
	andi	$a2, $a1, 1023
	addi.d	$a1, $a2, 1
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $s1, $a2
	ldx.w	$a5, $s0, $a2
	and	$a4, $a5, $a4
	stx.w	$a4, $s1, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bltu	$a3, $a1, .LBB2_8
# %bb.9:
	ld.wu	$a1, $a0, 0
	andi	$a2, $a1, 1023
	addi.d	$a1, $a2, 1
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a0, $a2
	ldx.w	$a5, $s2, $a2
	and	$a4, $a5, $a4
	stx.w	$a4, $a0, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bltu	$a3, $a1, .LBB2_10
# %bb.11:
	ld.wu	$a1, $s1, 0
	andi	$a2, $a1, 1023
	addi.d	$a1, $a2, 1
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $s1, $a2
	ldx.w	$a5, $a0, $a2
	or	$a4, $a5, $a4
	stx.w	$a4, $s1, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bltu	$a3, $a1, .LBB2_12
# %bb.13:                               # %sccc_merge.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB2_15
# %bb.14:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_15:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 128
	bnez	$a0, .LBB2_17
	b	.LBB2_18
.LBB2_16:                               # %._crit_edge
	ld.d	$s1, $sp, 16
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 128
	beqz	$a0, .LBB2_18
.LBB2_17:
	ld.w	$a0, $s4, %pc_lo12(sccc.sccc_level)
	addi.w	$fp, $a0, -1
	st.w	$fp, $s4, %pc_lo12(sccc.sccc_level)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_18:
	move	$a0, $s1
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
.Lfunc_end2:
	.size	sccc, .Lfunc_end2-sccc
                                        # -- End function
	.globl	sccc_merge                      # -- Begin function sccc_merge
	.p2align	5
	.type	sccc_merge,@function
sccc_merge:                             # @sccc_merge
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$a4, $a0, 0
	move	$s0, $a3
	move	$s1, $a2
	move	$a0, $a1
	andi	$a2, $a4, 1023
	addi.d	$a1, $a2, 1
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $fp, $a2
	ldx.w	$a5, $s1, $a2
	and	$a4, $a5, $a4
	stx.w	$a4, $fp, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bltu	$a3, $a1, .LBB3_1
# %bb.2:
	ld.wu	$a1, $a0, 0
	andi	$a2, $a1, 1023
	addi.d	$a1, $a2, 1
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a0, $a2
	ldx.w	$a5, $s0, $a2
	and	$a4, $a5, $a4
	stx.w	$a4, $a0, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bltu	$a3, $a1, .LBB3_3
# %bb.4:
	ld.wu	$a1, $fp, 0
	andi	$a2, $a1, 1023
	addi.d	$a1, $a2, 1
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $fp, $a2
	ldx.w	$a5, $a0, $a2
	or	$a4, $a5, $a4
	stx.w	$a4, $fp, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bltu	$a3, $a1, .LBB3_5
# %bb.6:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	sccc_merge, .Lfunc_end3-sccc_merge
                                        # -- End function
	.globl	sccc_cube                       # -- Begin function sccc_cube
	.p2align	5
	.type	sccc_cube,@function
sccc_cube:                              # @sccc_cube
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
	ld.d	$a0, $s2, 80
	ld.d	$s1, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cactive)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_5
# %bb.1:
	ld.d	$a1, $s2, 72
	ld.wu	$a2, $s1, 0
	ld.wu	$a3, $s0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a4, $a1, $a0
	srli.d	$a0, $a2, 10
	andi	$a5, $a3, 1023
	bstrins.d	$a3, $a0, 63, 10
	st.w	$a3, $s1, 0
	addi.d	$a0, $a5, 1
	alsl.d	$a1, $a5, $s1, 2
	alsl.d	$a2, $a5, $a4, 2
	alsl.d	$a3, $a5, $s0, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	xor	$a5, $a6, $a5
	st.w	$a5, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	bltu	$a4, $a0, .LBB4_2
# %bb.3:
	ld.wu	$a0, $fp, 0
	andi	$a2, $a0, 1023
	addi.d	$a0, $a2, 1
	alsl.d	$a1, $a2, $s1, 2
	alsl.d	$a2, $a2, $fp, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a1, 0
	and	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bltu	$a3, $a0, .LBB4_4
.LBB4_5:                                # %.loopexit
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	sccc_cube, .Lfunc_end4-sccc_cube
                                        # -- End function
	.globl	sccc_special_cases              # -- Begin function sccc_special_cases
	.p2align	5
	.type	sccc_special_cases,@function
sccc_special_cases:                     # @sccc_special_cases
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
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s4, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB5_20
# %bb.1:                                # %.preheader.preheader
	ld.d	$a1, $s4, 80
	ld.d	$s2, $a1, 8
	ld.d	$s1, $fp, 0
	addi.d	$s5, $fp, 16
	ori	$s3, $zero, 24
	.p2align	4, , 16
.LBB5_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_17
# %bb.3:                                # %thread-pre-split
                                        #   in Loop: Header=BB5_2 Depth=1
	ldx.d	$a0, $fp, $s3
	addi.d	$s3, $s3, 8
	bnez	$a0, .LBB5_2
# %bb.4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s3, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $s3, 36
	ld.w	$a1, $s3, 32
	beq	$a0, $a1, .LBB5_23
# %bb.5:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB5_23
# %bb.6:
	ld.w	$a0, $s1, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB5_8
# %bb.7:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_8:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	move	$s1, $a0
	beqz	$a3, .LBB5_13
# %bb.9:
	addi.d	$a1, $fp, 24
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB5_10:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
	ld.wu	$a2, $s1, 0
	andi	$a4, $a2, 1023
	addi.d	$a2, $a4, 1
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a4, $a4, $s1, 2
	.p2align	4, , 16
.LBB5_11:                               #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	ld.w	$a6, $a3, 0
	or	$a5, $a6, $a5
	st.w	$a5, $a4, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	addi.d	$a4, $a4, -4
	bltu	$a0, $a2, .LBB5_11
# %bb.12:                               # %.loopexit
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB5_10
.LBB5_13:                               # %._crit_edge
	ld.d	$a1, $s4, 88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_33
# %bb.14:
	beqz	$s1, .LBB5_16
# %bb.15:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_16:
	ld.w	$a0, $s3, 32
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_43
.LBB5_17:
	ld.w	$s1, $s4, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $a1, .LBB5_19
# %bb.18:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_19:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB5_52
	b	.LBB5_53
.LBB5_20:
	ld.d	$s1, $s4, 88
	ld.w	$a0, $s1, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB5_22
# %bb.21:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_22:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB5_52
	b	.LBB5_53
.LBB5_23:
	ld.d	$s3, $s4, 88
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB5_25
# %bb.24:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_25:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	ld.d	$a1, $s5, 0
	beqz	$a1, .LBB5_51
# %bb.26:                               # %.lr.ph131.preheader
	ori	$s6, $zero, 1
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_27:                               # %sccc_cube.exit
                                        #   in Loop: Header=BB5_28 Depth=1
	addi.d	$s5, $s5, 8
	ld.d	$a1, $s5, 0
	beqz	$a1, .LBB5_51
.LBB5_28:                               # %.lr.ph131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_30 Depth 2
                                        #     Child Loop BB5_32 Depth 2
	ld.d	$s7, $s0, 0
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.d	$s8, $a1, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(cactive)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_27
# %bb.29:                               #   in Loop: Header=BB5_28 Depth=1
	ld.d	$a1, $s4, 72
	ld.wu	$a2, $s8, 0
	ld.wu	$a3, $s3, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a4, $a1, $a0
	srli.d	$a0, $a2, 10
	andi	$a5, $a3, 1023
	bstrins.d	$a3, $a0, 63, 10
	st.w	$a3, $s8, 0
	addi.d	$a0, $a5, 1
	alsl.d	$a1, $a5, $s8, 2
	alsl.d	$a2, $a5, $a4, 2
	alsl.d	$a3, $a5, $s3, 2
	.p2align	4, , 16
.LBB5_30:                               #   Parent Loop BB5_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a2, 0
	xor	$a4, $a5, $a4
	st.w	$a4, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	bltu	$s6, $a0, .LBB5_30
# %bb.31:                               #   in Loop: Header=BB5_28 Depth=1
	ld.wu	$a0, $s7, 0
	andi	$a2, $a0, 1023
	addi.d	$a0, $a2, 1
	alsl.d	$a1, $a2, $s8, 2
	alsl.d	$a2, $a2, $s7, 2
	.p2align	4, , 16
.LBB5_32:                               #   Parent Loop BB5_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a1, 0
	and	$a3, $a4, $a3
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bltu	$s6, $a0, .LBB5_32
	b	.LBB5_27
.LBB5_33:
	ld.d	$s2, $s4, 88
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB5_35
# %bb.34:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_35:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.d	$s3, $a1, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cactive)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_40
# %bb.36:
	ld.d	$a1, $s4, 72
	ld.wu	$a2, $s3, 0
	ld.wu	$a3, $s1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a4, $a1, $a0
	srli.d	$a0, $a2, 10
	andi	$a5, $a3, 1023
	bstrins.d	$a3, $a0, 63, 10
	st.w	$a3, $s3, 0
	addi.d	$a0, $a5, 1
	alsl.d	$a1, $a5, $s3, 2
	alsl.d	$a2, $a5, $a4, 2
	alsl.d	$a3, $a5, $s1, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB5_37:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	xor	$a5, $a6, $a5
	st.w	$a5, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	bltu	$a4, $a0, .LBB5_37
# %bb.38:
	ld.wu	$a0, $s2, 0
	andi	$a2, $a0, 1023
	addi.d	$a0, $a2, 1
	alsl.d	$a1, $a2, $s3, 2
	alsl.d	$a2, $a2, $s2, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB5_39:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a1, 0
	and	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bltu	$a3, $a0, .LBB5_39
.LBB5_40:                               # %sccc_cube.exit125
	st.d	$s2, $s0, 0
	ld.d	$a1, $s4, 88
	move	$a0, $s2
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_48
# %bb.41:
	beqz	$s1, .LBB5_51
# %bb.42:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB5_51
.LBB5_43:
	ld.w	$a0, $s3, 40
	ld.d	$a1, $s3, 8
	ld.d	$a2, $fp, 8
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $a1, $a0
	sub.d	$a0, $a2, $fp
	srai.d	$a0, $a0, 3
	addi.d	$a0, $a0, -3
	srli.d	$a2, $a0, 63
	add.d	$a0, $a0, $a2
	srai.d	$a2, $a0, 1
	ori	$a0, $zero, 2
	bge	$a1, $a2, .LBB5_54
# %bb.44:
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.wu	$a0, $a0, 0
	andi	$a3, $a0, 128
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cubelist_partition)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	beqz	$a1, .LBB5_54
# %bb.45:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB5_47
# %bb.46:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_47:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	st.d	$a0, $s0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$fp, $a0
	move	$a0, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bnez	$fp, .LBB5_53
	b	.LBB5_54
.LBB5_48:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s4, 88
	ld.w	$a1, $s3, 0
	move	$s2, $a0
	slli.d	$a0, $a1, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB5_50
# %bb.49:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_50:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	move	$a1, $a0
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sccc_merge)
	jirl	$ra, $ra, 0
	st.d	$s2, $s0, 0
.LBB5_51:                               # %._crit_edge132
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB5_53
.LBB5_52:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_53:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB5_54:
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
.Lfunc_end5:
	.size	sccc_special_cases, .Lfunc_end5-sccc_special_cases
                                        # -- End function
	.type	toggle,@object                  # @toggle
	.data
	.p2align	2, 0x0
toggle:
	.word	1                               # 0x1
	.size	toggle, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"REDUCE: %s to %s %s\n"
	.size	.L.str, 21

	.type	sccc.sccc_level,@object         # @sccc.sccc_level
	.local	sccc.sccc_level
	.comm	sccc.sccc_level,4,4
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SCCC"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SCCC[%d]: result is %s\n"
	.size	.L.str.2, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym descend
