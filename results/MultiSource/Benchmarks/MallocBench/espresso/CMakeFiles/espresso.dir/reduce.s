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
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s4, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 128
	beqz	$a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(sccc.sccc_level)
	ld.w	$a2, $a0, %pc_lo12(sccc.sccc_level)
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, %pc_lo12(sccc.sccc_level)
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
	bne	$a0, $a1, .LBB2_34
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.w	$s1, $s2, 0
	ori	$s0, $zero, 8
	ori	$s3, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $s3, .LBB2_5
# %bb.4:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_5:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s2, 0
	move	$s1, $a0
	blt	$s2, $s3, .LBB2_7
# %bb.6:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s0, $a0, 8
.LBB2_7:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a3, $zero, 128
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 0
	andi	$a1, $a1, 1023
	sltu	$a3, $zero, $a1
	sub.d	$a2, $a1, $a3
	addi.d	$a2, $a2, 1
	ori	$a4, $zero, 12
	bltu	$a2, $a4, .LBB2_13
# %bb.8:                                # %vector.memcheck
	alsl.d	$a6, $a3, $s0, 2
	slli.d	$a4, $a1, 2
	addi.d	$a5, $a4, 4
	add.d	$a7, $s1, $a5
	bgeu	$a6, $a7, .LBB2_10
# %bb.9:                                # %vector.memcheck
	add.d	$a5, $s0, $a5
	alsl.d	$a3, $a3, $s1, 2
	bltu	$a3, $a5, .LBB2_13
.LBB2_10:                               # %vector.ph
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a1, $a1, $a3
	addi.d	$a5, $a4, -12
	add.d	$a4, $s0, $a5
	add.d	$a5, $s1, $a5
	move	$a6, $a3
	.p2align	4, , 16
.LBB2_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a5, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB2_11
# %bb.12:                               # %middle.block
	beq	$a2, $a3, .LBB2_15
.LBB2_13:                               # %scalar.ph.preheader
	addi.d	$a2, $a1, 1
	alsl.d	$a3, $a1, $s1, 2
	alsl.d	$a1, $a1, $s0, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB2_14:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	and	$a5, $a6, $a5
	st.w	$a5, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a2, .LBB2_14
.LBB2_15:                               # %.loopexit100
	ld.wu	$a1, $a0, 0
	andi	$a1, $a1, 1023
	sltu	$a3, $zero, $a1
	sub.d	$a2, $a1, $a3
	addi.d	$a2, $a2, 1
	ori	$a4, $zero, 12
	bltu	$a2, $a4, .LBB2_21
# %bb.16:                               # %vector.memcheck36
	alsl.d	$a6, $a3, $a0, 2
	slli.d	$a4, $a1, 2
	addi.d	$a5, $a4, 4
	add.d	$a7, $s2, $a5
	bgeu	$a6, $a7, .LBB2_18
# %bb.17:                               # %vector.memcheck36
	add.d	$a5, $a0, $a5
	alsl.d	$a3, $a3, $s2, 2
	bltu	$a3, $a5, .LBB2_21
.LBB2_18:                               # %vector.ph48
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a1, $a1, $a3
	addi.d	$a5, $a4, -12
	add.d	$a4, $a0, $a5
	add.d	$a5, $s2, $a5
	move	$a6, $a3
	.p2align	4, , 16
.LBB2_19:                               # %vector.body51
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a5, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB2_19
# %bb.20:                               # %middle.block65
	beq	$a2, $a3, .LBB2_23
.LBB2_21:                               # %scalar.ph46.preheader
	addi.d	$a2, $a1, 1
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a1, $a1, $a0, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB2_22:                               # %scalar.ph46
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	and	$a5, $a6, $a5
	st.w	$a5, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a2, .LBB2_22
.LBB2_23:                               # %.loopexit
	ld.wu	$a1, $s0, 0
	andi	$a1, $a1, 1023
	sltu	$a3, $zero, $a1
	sub.d	$a2, $a1, $a3
	addi.d	$a2, $a2, 1
	ori	$a4, $zero, 12
	bltu	$a2, $a4, .LBB2_29
# %bb.24:                               # %vector.memcheck68
	alsl.d	$a6, $a3, $s0, 2
	slli.d	$a4, $a1, 2
	addi.d	$a5, $a4, 4
	add.d	$a7, $a0, $a5
	bgeu	$a6, $a7, .LBB2_26
# %bb.25:                               # %vector.memcheck68
	add.d	$a5, $s0, $a5
	alsl.d	$a3, $a3, $a0, 2
	bltu	$a3, $a5, .LBB2_29
.LBB2_26:                               # %vector.ph80
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a1, $a1, $a3
	addi.d	$a5, $a4, -12
	add.d	$a4, $s0, $a5
	add.d	$a5, $a0, $a5
	move	$a6, $a3
	.p2align	4, , 16
.LBB2_27:                               # %vector.body83
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a5, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB2_27
# %bb.28:                               # %middle.block97
	beq	$a2, $a3, .LBB2_31
.LBB2_29:                               # %scalar.ph78.preheader
	addi.d	$a2, $a1, 1
	alsl.d	$a3, $a1, $a0, 2
	alsl.d	$a1, $a1, $s0, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB2_30:                               # %scalar.ph78
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	or	$a5, $a6, $a5
	st.w	$a5, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a2, .LBB2_30
.LBB2_31:                               # %sccc_merge.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB2_33
# %bb.32:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_33:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 128
	bnez	$a0, .LBB2_35
	b	.LBB2_36
.LBB2_34:                               # %._crit_edge
	ld.d	$s0, $sp, 16
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 128
	beqz	$a0, .LBB2_36
.LBB2_35:
	pcalau12i	$a0, %pc_hi20(sccc.sccc_level)
	ld.w	$a1, $a0, %pc_lo12(sccc.sccc_level)
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, %pc_lo12(sccc.sccc_level)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_36:
	move	$a0, $s0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
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
	ld.wu	$a0, $a0, 0
	andi	$a4, $a0, 1023
	sltu	$a6, $zero, $a4
	sub.d	$a0, $a4, $a6
	addi.d	$a5, $a0, 1
	ori	$a7, $zero, 12
	move	$s0, $a3
	move	$s1, $a2
	move	$a0, $a1
	bltu	$a5, $a7, .LBB3_6
# %bb.1:                                # %vector.memcheck
	alsl.d	$a3, $a6, $fp, 2
	slli.d	$a2, $a4, 2
	addi.d	$a1, $a2, 4
	add.d	$a7, $s1, $a1
	bgeu	$a3, $a7, .LBB3_3
# %bb.2:                                # %vector.memcheck
	add.d	$a1, $fp, $a1
	alsl.d	$a3, $a6, $s1, 2
	bltu	$a3, $a1, .LBB3_6
.LBB3_3:                                # %vector.ph
	move	$a1, $a5
	bstrins.d	$a1, $zero, 2, 0
	sub.d	$a4, $a4, $a1
	addi.d	$a3, $a2, -12
	add.d	$a2, $fp, $a3
	add.d	$a3, $s1, $a3
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, -16
	vld	$vr2, $a3, 0
	vld	$vr3, $a3, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a2, 0
	vst	$vr1, $a2, -16
	addi.d	$a6, $a6, -8
	addi.d	$a2, $a2, -32
	addi.d	$a3, $a3, -32
	bnez	$a6, .LBB3_4
# %bb.5:                                # %middle.block
	beq	$a5, $a1, .LBB3_8
.LBB3_6:                                # %scalar.ph.preheader
	addi.d	$a1, $a4, 1
	alsl.d	$a2, $a4, $s1, 2
	alsl.d	$a3, $a4, $fp, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_7:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	and	$a5, $a6, $a5
	st.w	$a5, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	bltu	$a4, $a1, .LBB3_7
.LBB3_8:                                # %.loopexit125
	ld.wu	$a1, $a0, 0
	andi	$a1, $a1, 1023
	sltu	$a3, $zero, $a1
	sub.d	$a2, $a1, $a3
	addi.d	$a2, $a2, 1
	ori	$a4, $zero, 12
	bltu	$a2, $a4, .LBB3_14
# %bb.9:                                # %vector.memcheck60
	alsl.d	$a6, $a3, $a0, 2
	slli.d	$a4, $a1, 2
	addi.d	$a5, $a4, 4
	add.d	$a7, $s0, $a5
	bgeu	$a6, $a7, .LBB3_11
# %bb.10:                               # %vector.memcheck60
	add.d	$a5, $a0, $a5
	alsl.d	$a3, $a3, $s0, 2
	bltu	$a3, $a5, .LBB3_14
.LBB3_11:                               # %vector.ph72
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a1, $a1, $a3
	addi.d	$a5, $a4, -12
	add.d	$a4, $a0, $a5
	add.d	$a5, $s0, $a5
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_12:                               # %vector.body75
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a5, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB3_12
# %bb.13:                               # %middle.block89
	beq	$a2, $a3, .LBB3_16
.LBB3_14:                               # %scalar.ph70.preheader
	addi.d	$a2, $a1, 1
	alsl.d	$a3, $a1, $s0, 2
	alsl.d	$a1, $a1, $a0, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_15:                               # %scalar.ph70
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	and	$a5, $a6, $a5
	st.w	$a5, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a2, .LBB3_15
.LBB3_16:                               # %.loopexit124
	ld.wu	$a1, $fp, 0
	andi	$a1, $a1, 1023
	sltu	$a3, $zero, $a1
	sub.d	$a2, $a1, $a3
	addi.d	$a2, $a2, 1
	ori	$a4, $zero, 12
	bltu	$a2, $a4, .LBB3_22
# %bb.17:                               # %vector.memcheck92
	alsl.d	$a6, $a3, $fp, 2
	slli.d	$a4, $a1, 2
	addi.d	$a5, $a4, 4
	add.d	$a7, $a0, $a5
	bgeu	$a6, $a7, .LBB3_19
# %bb.18:                               # %vector.memcheck92
	add.d	$a5, $fp, $a5
	alsl.d	$a3, $a3, $a0, 2
	bltu	$a3, $a5, .LBB3_22
.LBB3_19:                               # %vector.ph104
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a1, $a1, $a3
	addi.d	$a5, $a4, -12
	add.d	$a4, $fp, $a5
	add.d	$a5, $a0, $a5
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_20:                               # %vector.body107
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a5, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB3_20
# %bb.21:                               # %middle.block121
	beq	$a2, $a3, .LBB3_24
.LBB3_22:                               # %scalar.ph102.preheader
	addi.d	$a2, $a1, 1
	alsl.d	$a3, $a1, $a0, 2
	alsl.d	$a1, $a1, $fp, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_23:                               # %scalar.ph102
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	or	$a5, $a6, $a5
	st.w	$a5, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a2, .LBB3_23
.LBB3_24:                               # %.loopexit
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
	bltz	$a0, .LBB4_13
# %bb.1:
	ld.d	$a1, $s2, 72
	ld.wu	$a2, $s1, 0
	ld.wu	$a3, $s0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	srli.d	$a1, $a2, 10
	andi	$a4, $a3, 1023
	bstrins.d	$a3, $a1, 63, 10
	sltu	$a1, $zero, $a4
	sub.d	$a1, $a4, $a1
	addi.d	$a1, $a1, 1
	ori	$a2, $zero, 8
	st.w	$a3, $s1, 0
	bgeu	$a1, $a2, .LBB4_14
.LBB4_2:
	move	$a2, $a4
.LBB4_3:                                # %scalar.ph.preheader
	addi.d	$a1, $a2, 1
	alsl.d	$a3, $a2, $s1, 2
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a2, $a2, $s0, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB4_4:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a0, 0
	xor	$a5, $a6, $a5
	st.w	$a5, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -4
	addi.d	$a0, $a0, -4
	addi.d	$a2, $a2, -4
	bltu	$a4, $a1, .LBB4_4
.LBB4_5:                                # %.loopexit65
	ld.wu	$a0, $fp, 0
	andi	$a0, $a0, 1023
	sltu	$a2, $zero, $a0
	sub.d	$a1, $a0, $a2
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 12
	bltu	$a1, $a3, .LBB4_11
# %bb.6:                                # %vector.memcheck37
	alsl.d	$a5, $a2, $fp, 2
	slli.d	$a3, $a0, 2
	addi.d	$a4, $a3, 4
	add.d	$a6, $s1, $a4
	bgeu	$a5, $a6, .LBB4_8
# %bb.7:                                # %vector.memcheck37
	add.d	$a4, $fp, $a4
	alsl.d	$a2, $a2, $s1, 2
	bltu	$a2, $a4, .LBB4_11
.LBB4_8:                                # %vector.ph45
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a0, $a0, $a2
	addi.d	$a4, $a3, -12
	add.d	$a3, $fp, $a4
	add.d	$a4, $s1, $a4
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_9:                                # %vector.body48
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a4, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a3, 0
	vst	$vr1, $a3, -16
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB4_9
# %bb.10:                               # %middle.block62
	beq	$a1, $a2, .LBB4_13
.LBB4_11:                               # %scalar.ph43.preheader
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s1, 2
	alsl.d	$a0, $a0, $fp, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB4_12:                               # %scalar.ph43
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a2, 0
	and	$a4, $a5, $a4
	st.w	$a4, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -4
	bltu	$a3, $a1, .LBB4_12
.LBB4_13:                               # %.loopexit
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_14:                               # %vector.memcheck
	sub.d	$a3, $s0, $s1
	ori	$a2, $zero, 32
	bltu	$a3, $a2, .LBB4_2
# %bb.15:                               # %vector.memcheck
	sub.d	$a3, $a0, $s1
	bltu	$a3, $a2, .LBB4_2
# %bb.16:                               # %vector.ph
	move	$a3, $a1
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a2, $a4, $a3
	slli.d	$a4, $a4, 2
	addi.d	$a6, $a4, -12
	add.d	$a4, $s0, $a6
	add.d	$a5, $s1, $a6
	add.d	$a6, $a0, $a6
	move	$a7, $a3
	.p2align	4, , 16
.LBB4_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a6, -16
	vxor.v	$vr0, $vr2, $vr0
	vxor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a5, 0
	vst	$vr1, $a5, -16
	addi.d	$a7, $a7, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	bnez	$a7, .LBB4_17
# %bb.18:                               # %middle.block
	bne	$a1, $a3, .LBB4_3
	b	.LBB4_5
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
	move	$s8, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s4, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB5_19
# %bb.1:                                # %.preheader.preheader
	ld.d	$a1, $s4, 80
	ld.d	$s2, $a1, 8
	ld.d	$s1, $fp, 0
	addi.d	$s5, $fp, 16
	ori	$s0, $zero, 24
	.p2align	4, , 16
.LBB5_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_49
# %bb.3:                                # %thread-pre-split
                                        #   in Loop: Header=BB5_2 Depth=1
	ldx.d	$a0, $fp, $s0
	addi.d	$s0, $s0, 8
	bnez	$a0, .LBB5_2
# %bb.4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s0, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $s0, 36
	ld.w	$a1, $s0, 32
	beq	$a0, $a1, .LBB5_22
# %bb.5:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB5_22
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
	ld.d	$a5, $s5, 0
	move	$s1, $a0
	beqz	$a5, .LBB5_45
# %bb.9:                                # %.lr.ph.preheader
	addi.d	$a2, $fp, 24
	addi.d	$a0, $s1, 4
	addi.d	$a1, $s1, -12
	ori	$a3, $zero, 8
	ori	$a4, $zero, 1
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               # %.loopexit
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.d	$a5, $a2, 0
	addi.d	$a2, $a2, 8
	beqz	$a5, .LBB5_45
.LBB5_11:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
                                        #     Child Loop BB5_18 Depth 2
	ld.wu	$a6, $s1, 0
	andi	$a7, $a6, 1023
	sltu	$t0, $zero, $a7
	sub.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	bltu	$a6, $a3, .LBB5_17
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_11 Depth=1
	alsl.d	$t1, $t0, $s1, 2
	alsl.d	$t2, $a7, $a5, 2
	addi.d	$t3, $t2, 4
	bgeu	$t1, $t3, .LBB5_14
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_11 Depth=1
	alsl.d	$t1, $a7, $a0, 2
	alsl.d	$t0, $t0, $a5, 2
	bltu	$t0, $t1, .LBB5_17
.LBB5_14:                               # %vector.ph
                                        #   in Loop: Header=BB5_11 Depth=1
	move	$t0, $a6
	bstrins.d	$t0, $zero, 2, 0
	sub.d	$t1, $a7, $t0
	alsl.d	$a7, $a7, $a1, 2
	addi.d	$t2, $t2, -12
	move	$t3, $t0
	.p2align	4, , 16
.LBB5_15:                               # %vector.body
                                        #   Parent Loop BB5_11 Depth=1
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
	bnez	$t3, .LBB5_15
# %bb.16:                               # %middle.block
                                        #   in Loop: Header=BB5_11 Depth=1
	move	$a7, $t1
	beq	$a6, $t0, .LBB5_10
	.p2align	4, , 16
.LBB5_17:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_11 Depth=1
	addi.d	$a6, $a7, 1
	alsl.d	$a5, $a7, $a5, 2
	alsl.d	$a7, $a7, $s1, 2
	.p2align	4, , 16
.LBB5_18:                               # %scalar.ph
                                        #   Parent Loop BB5_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	ld.w	$t1, $a5, 0
	or	$t0, $t1, $t0
	st.w	$t0, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, -4
	addi.d	$a7, $a7, -4
	bltu	$a4, $a6, .LBB5_18
	b	.LBB5_10
.LBB5_19:
	ld.d	$s1, $s4, 88
	ld.w	$a0, $s1, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB5_21
# %bb.20:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_21:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB5_79
	b	.LBB5_80
.LBB5_22:
	ld.d	$s3, $s4, 88
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB5_24
# %bb.23:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_24:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 0
	ld.d	$a1, $s5, 0
	beqz	$a1, .LBB5_78
# %bb.25:                               # %.lr.ph131.preheader
	ori	$s7, $zero, 1
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_26:                               # %sccc_cube.exit
                                        #   in Loop: Header=BB5_27 Depth=1
	addi.d	$s5, $s5, 8
	ld.d	$a1, $s5, 0
	move	$s8, $s6
	beqz	$a1, .LBB5_78
.LBB5_27:                               # %.lr.ph131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_43 Depth 2
                                        #     Child Loop BB5_31 Depth 2
                                        #     Child Loop BB5_36 Depth 2
                                        #     Child Loop BB5_39 Depth 2
	move	$s6, $s8
	ld.d	$s8, $s8, 0
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.d	$s0, $a1, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(cactive)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_26
# %bb.28:                               #   in Loop: Header=BB5_27 Depth=1
	ld.d	$a1, $s4, 72
	ld.wu	$a2, $s0, 0
	ld.wu	$a3, $s3, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	srli.d	$a1, $a2, 10
	andi	$a6, $a3, 1023
	bstrins.d	$a3, $a1, 63, 10
	sltu	$a1, $zero, $a6
	sub.d	$a1, $a6, $a1
	addi.d	$a2, $a1, 1
	st.w	$a3, $s0, 0
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB5_40
.LBB5_29:                               #   in Loop: Header=BB5_27 Depth=1
	move	$a1, $a6
.LBB5_30:                               # %scalar.ph264.preheader
                                        #   in Loop: Header=BB5_27 Depth=1
	addi.d	$a2, $a1, 1
	alsl.d	$a3, $a1, $s0, 2
	alsl.d	$a0, $a1, $a0, 2
	alsl.d	$a1, $a1, $s3, 2
	.p2align	4, , 16
.LBB5_31:                               # %scalar.ph264
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a0, 0
	xor	$a4, $a5, $a4
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, -4
	bltu	$s7, $a2, .LBB5_31
.LBB5_32:                               # %.loopexit286
                                        #   in Loop: Header=BB5_27 Depth=1
	ld.wu	$a0, $s8, 0
	andi	$a0, $a0, 1023
	sltu	$a2, $zero, $a0
	sub.d	$a1, $a0, $a2
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB5_38
# %bb.33:                               # %vector.memcheck225
                                        #   in Loop: Header=BB5_27 Depth=1
	alsl.d	$a5, $a2, $s8, 2
	alsl.d	$a4, $a0, $s0, 2
	addi.d	$a6, $a4, 4
	alsl.d	$a3, $a0, $s8, 2
	bgeu	$a5, $a6, .LBB5_35
# %bb.34:                               # %vector.memcheck225
                                        #   in Loop: Header=BB5_27 Depth=1
	addi.d	$a5, $a3, 4
	alsl.d	$a2, $a2, $s0, 2
	bltu	$a2, $a5, .LBB5_38
.LBB5_35:                               # %vector.ph239
                                        #   in Loop: Header=BB5_27 Depth=1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a0, $a0, $a2
	addi.d	$a3, $a3, -12
	addi.d	$a4, $a4, -12
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_36:                               # %vector.body242
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a4, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a3, 0
	vst	$vr1, $a3, -16
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB5_36
# %bb.37:                               # %middle.block256
                                        #   in Loop: Header=BB5_27 Depth=1
	beq	$a1, $a2, .LBB5_26
	.p2align	4, , 16
.LBB5_38:                               # %scalar.ph237.preheader
                                        #   in Loop: Header=BB5_27 Depth=1
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s0, 2
	alsl.d	$a0, $a0, $s8, 2
	.p2align	4, , 16
.LBB5_39:                               # %scalar.ph237
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a2, 0
	and	$a3, $a4, $a3
	st.w	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -4
	bltu	$s7, $a1, .LBB5_39
	b	.LBB5_26
	.p2align	4, , 16
.LBB5_40:                               # %vector.memcheck259
                                        #   in Loop: Header=BB5_27 Depth=1
	sub.d	$a1, $s3, $s0
	ori	$a3, $zero, 32
	bltu	$a1, $a3, .LBB5_29
# %bb.41:                               # %vector.memcheck259
                                        #   in Loop: Header=BB5_27 Depth=1
	sub.d	$a1, $a0, $s0
	bltu	$a1, $a3, .LBB5_29
# %bb.42:                               # %vector.ph266
                                        #   in Loop: Header=BB5_27 Depth=1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a1, $a6, $a3
	alsl.d	$a4, $a6, $s3, 2
	addi.d	$a4, $a4, -12
	alsl.d	$a5, $a6, $s0, 2
	addi.d	$a5, $a5, -12
	alsl.d	$a6, $a6, $a0, 2
	addi.d	$a6, $a6, -12
	move	$a7, $a3
	.p2align	4, , 16
.LBB5_43:                               # %vector.body269
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a6, -16
	vxor.v	$vr0, $vr2, $vr0
	vxor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a5, 0
	vst	$vr1, $a5, -16
	addi.d	$a7, $a7, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	bnez	$a7, .LBB5_43
# %bb.44:                               # %middle.block283
                                        #   in Loop: Header=BB5_27 Depth=1
	bne	$a2, $a3, .LBB5_30
	b	.LBB5_32
.LBB5_45:                               # %._crit_edge
	ld.d	$a1, $s4, 88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_52
# %bb.46:
	beqz	$s1, .LBB5_48
# %bb.47:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_48:
	ld.w	$a0, $s0, 32
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_70
.LBB5_49:
	ld.w	$s1, $s4, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $a1, .LBB5_51
# %bb.50:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_51:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB5_79
	b	.LBB5_80
.LBB5_52:
	ld.d	$s2, $s4, 88
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB5_54
# %bb.53:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_54:
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
	bltz	$a0, .LBB5_67
# %bb.55:
	ld.d	$a1, $s4, 72
	ld.wu	$a2, $s3, 0
	ld.wu	$a3, $s1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	srli.d	$a1, $a2, 10
	andi	$a4, $a3, 1023
	bstrins.d	$a3, $a1, 63, 10
	sltu	$a1, $zero, $a4
	sub.d	$a1, $a4, $a1
	addi.d	$a1, $a1, 1
	ori	$a2, $zero, 8
	st.w	$a3, $s3, 0
	bgeu	$a1, $a2, .LBB5_82
.LBB5_56:
	move	$a2, $a4
.LBB5_57:                               # %scalar.ph171.preheader
	addi.d	$a1, $a2, 1
	alsl.d	$a3, $a2, $s3, 2
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a2, $a2, $s1, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB5_58:                               # %scalar.ph171
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a0, 0
	xor	$a5, $a6, $a5
	st.w	$a5, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -4
	addi.d	$a0, $a0, -4
	addi.d	$a2, $a2, -4
	bltu	$a4, $a1, .LBB5_58
.LBB5_59:                               # %.loopexit287
	ld.wu	$a0, $s2, 0
	andi	$a0, $a0, 1023
	sltu	$a2, $zero, $a0
	sub.d	$a1, $a0, $a2
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 12
	bltu	$a1, $a3, .LBB5_65
# %bb.60:                               # %vector.memcheck193
	alsl.d	$a5, $a2, $s2, 2
	slli.d	$a3, $a0, 2
	addi.d	$a4, $a3, 4
	add.d	$a6, $s3, $a4
	bgeu	$a5, $a6, .LBB5_62
# %bb.61:                               # %vector.memcheck193
	add.d	$a4, $s2, $a4
	alsl.d	$a2, $a2, $s3, 2
	bltu	$a2, $a4, .LBB5_65
.LBB5_62:                               # %vector.ph205
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a0, $a0, $a2
	addi.d	$a4, $a3, -12
	add.d	$a3, $s2, $a4
	add.d	$a4, $s3, $a4
	move	$a5, $a2
.LBB5_63:                               # %vector.body208
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a4, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a3, 0
	vst	$vr1, $a3, -16
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB5_63
# %bb.64:                               # %middle.block222
	beq	$a1, $a2, .LBB5_67
.LBB5_65:                               # %scalar.ph203.preheader
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s3, 2
	alsl.d	$a0, $a0, $s2, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB5_66:                               # %scalar.ph203
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a2, 0
	and	$a4, $a5, $a4
	st.w	$a4, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -4
	bltu	$a3, $a1, .LBB5_66
.LBB5_67:                               # %sccc_cube.exit125
	st.d	$s2, $s8, 0
	ld.d	$a1, $s4, 88
	move	$a0, $s2
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_75
# %bb.68:
	beqz	$s1, .LBB5_78
# %bb.69:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB5_78
.LBB5_70:
	ld.w	$a0, $s0, 40
	ld.d	$a1, $s0, 8
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
	bge	$a1, $a2, .LBB5_81
# %bb.71:
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
	beqz	$a1, .LBB5_81
# %bb.72:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB5_74
# %bb.73:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_74:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	st.d	$a0, $s8, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sccc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	move	$fp, $a0
	move	$a0, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bnez	$fp, .LBB5_80
	b	.LBB5_81
.LBB5_75:
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
	bltu	$a1, $a2, .LBB5_77
# %bb.76:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_77:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s8, 0
	move	$a1, $a0
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sccc_merge)
	jirl	$ra, $ra, 0
	st.d	$s2, $s8, 0
.LBB5_78:                               # %._crit_edge132
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB5_80
.LBB5_79:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_80:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB5_81:
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
.LBB5_82:                               # %vector.memcheck168
	sub.d	$a3, $s1, $s3
	ori	$a2, $zero, 32
	bltu	$a3, $a2, .LBB5_56
# %bb.83:                               # %vector.memcheck168
	sub.d	$a3, $a0, $s3
	bltu	$a3, $a2, .LBB5_56
# %bb.84:                               # %vector.ph173
	move	$a3, $a1
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a2, $a4, $a3
	slli.d	$a4, $a4, 2
	addi.d	$a6, $a4, -12
	add.d	$a4, $s1, $a6
	add.d	$a5, $s3, $a6
	add.d	$a6, $a0, $a6
	move	$a7, $a3
.LBB5_85:                               # %vector.body176
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a6, -16
	vxor.v	$vr0, $vr2, $vr0
	vxor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a5, 0
	vst	$vr1, $a5, -16
	addi.d	$a7, $a7, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	bnez	$a7, .LBB5_85
# %bb.86:                               # %middle.block190
	bne	$a1, $a3, .LBB5_57
	b	.LBB5_59
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
