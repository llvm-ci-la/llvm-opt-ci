	.file	"init.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function init
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	init
	.p2align	5
	.type	init,@function
init:                                   # @init
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
	pcalau12i	$a0, %pc_hi20(error_tol)
	ld.w	$a0, $a0, %pc_lo12(error_tol)
	sub.d	$a0, $zero, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p8)
	ld.d	$a3, $a0, %pc_lo12(p8)
	pcalau12i	$a0, %pc_hi20(p2)
	ld.d	$a1, $a0, %pc_lo12(p2)
	ori	$a0, $zero, 1
	st.w	$a0, $a3, 0
	st.w	$a0, $a1, 0
	pcalau12i	$a4, %pc_hi20(num_refine)
	ld.w	$a7, $a4, %pc_lo12(num_refine)
	pcalau12i	$a0, %pc_hi20(sorted_index)
	ld.d	$a0, $a0, %pc_lo12(sorted_index)
	pcalau12i	$a2, %pc_hi20(tol)
	fst.d	$fa0, $a2, %pc_lo12(tol)
	bltz	$a7, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a2, $a1, 4
	addi.d	$a3, $a3, 4
	addi.w	$a5, $zero, -1
	move	$a6, $a0
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a3, -4
	slli.d	$a7, $a7, 3
	st.w	$a7, $a3, 0
	ld.w	$a7, $a2, -4
	slli.d	$a7, $a7, 1
	st.w	$a7, $a2, 0
	st.w	$zero, $a6, 0
	ld.w	$a7, $a4, %pc_lo12(num_refine)
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	blt	$a5, $a7, .LBB0_2
.LBB0_3:                                # %._crit_edge
	pcalau12i	$a2, %pc_hi20(block_start)
	ld.d	$t0, $a2, %pc_lo12(block_start)
	alsl.d	$a0, $a7, $a0, 2
	st.w	$zero, $a0, 4
	st.w	$zero, $t0, 0
	pcalau12i	$t2, %pc_hi20(init_block_x)
	ld.w	$a0, $t2, %pc_lo12(init_block_x)
	pcalau12i	$t3, %pc_hi20(init_block_y)
	ld.w	$a2, $t3, %pc_lo12(init_block_y)
	pcalau12i	$a3, %pc_hi20(init_block_z)
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a3, $a3, %pc_lo12(init_block_z)
	mul.d	$a5, $a2, $a0
	mul.d	$a7, $a5, $a3
	pcalau12i	$a5, %pc_hi20(global_max_b)
	ld.w	$a6, $a4, %pc_lo12(num_refine)
	st.w	$a7, $a5, %pc_lo12(global_max_b)
	pcalau12i	$a5, %pc_hi20(local_max_b)
	st.w	$a7, $a5, %pc_lo12(local_max_b)
	pcalau12i	$a5, %pc_hi20(num_pes)
	blez	$a6, .LBB0_11
# %bb.4:                                # %.lver.check
	ld.w	$a0, $a5, %pc_lo12(num_pes)
	pcalau12i	$a2, %pc_hi20(num_blocks)
	ld.d	$a3, $a2, %pc_lo12(num_blocks)
	mul.d	$a0, $a0, $a7
	addi.w	$a6, $zero, -1
	addi.d	$a2, $a3, 4
	beq	$t0, $a6, .LBB0_8
# %bb.5:                                # %.lver.check
	beq	$a2, $a6, .LBB0_8
# %bb.6:                                # %.ph.lver.orig.preheader
	move	$a2, $zero
	addi.d	$a3, $a3, 4
	addi.d	$a7, $t0, 4
	.p2align	4, , 16
.LBB0_7:                                # %.ph.lver.orig
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a7, -4
	add.d	$a6, $a6, $a0
	st.w	$a6, $a7, 0
	st.w	$zero, $a3, 0
	ld.w	$a6, $a4, %pc_lo12(num_refine)
	slli.d	$a0, $a0, 3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 4
	blt	$a2, $a6, .LBB0_7
	b	.LBB0_10
.LBB0_8:                                # %.ph
	ld.w	$a3, $t0, 0
	move	$a7, $zero
	addi.d	$t0, $t0, 4
	.p2align	4, , 16
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a3, $a0
	st.w	$a3, $t0, 0
	st.w	$zero, $a2, 0
	ld.w	$a6, $a4, %pc_lo12(num_refine)
	slli.d	$a0, $a0, 3
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 4
	addi.d	$a2, $a2, 4
	blt	$a7, $a6, .LBB0_9
.LBB0_10:                               # %._crit_edge135.loopexit
	ld.w	$a0, $t2, %pc_lo12(init_block_x)
	ld.w	$a2, $t3, %pc_lo12(init_block_y)
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(init_block_z)
	mul.d	$a4, $a2, $a0
	mul.d	$a7, $a4, $a3
.LBB0_11:                               # %._crit_edge135
	pcalau12i	$s4, %pc_hi20(x_block_size)
	ld.wu	$a4, $s4, %pc_lo12(x_block_size)
	srli.d	$t0, $a4, 31
	add.w	$a4, $a4, $t0
	pcalau12i	$s5, %pc_hi20(y_block_size)
	ld.wu	$t0, $s5, %pc_lo12(y_block_size)
	srli.d	$a4, $a4, 1
	pcalau12i	$t1, %pc_hi20(x_block_half)
	st.w	$a4, $t1, %pc_lo12(x_block_half)
	srli.d	$a4, $t0, 31
	add.w	$a4, $t0, $a4
	pcalau12i	$s6, %pc_hi20(z_block_size)
	ld.wu	$t0, $s6, %pc_lo12(z_block_size)
	srli.d	$a4, $a4, 1
	pcalau12i	$t1, %pc_hi20(y_block_half)
	st.w	$a4, $t1, %pc_lo12(y_block_half)
	srli.d	$a4, $t0, 31
	add.w	$a4, $t0, $a4
	srli.d	$a4, $a4, 1
	pcalau12i	$t0, %pc_hi20(z_block_half)
	st.w	$a4, $t0, %pc_lo12(z_block_half)
	pcalau12i	$a4, %pc_hi20(max_active_block)
	ld.w	$a5, $a5, %pc_lo12(num_pes)
	st.w	$a7, $a4, %pc_lo12(max_active_block)
	pcalau12i	$a4, %pc_hi20(num_active)
	st.w	$a7, $a4, %pc_lo12(num_active)
	mul.d	$a4, $a5, $a7
	pcalau12i	$a5, %pc_hi20(global_active)
	st.w	$a4, $a5, %pc_lo12(global_active)
	pcalau12i	$a4, %pc_hi20(max_active_parent)
	st.w	$zero, $a4, %pc_lo12(max_active_parent)
	pcalau12i	$a4, %pc_hi20(num_parents)
	st.w	$zero, $a4, %pc_lo12(num_parents)
	alsl.d	$a1, $a6, $a1, 2
	ld.w	$a7, $a1, 4
	pcalau12i	$a1, %pc_hi20(npx)
	ld.w	$a1, $a1, %pc_lo12(npx)
	mul.d	$a4, $a7, $a0
	mul.d	$a1, $a4, $a1
	pcalau12i	$a4, %pc_hi20(mesh_size)
	addi.d	$a4, $a4, %pc_lo12(mesh_size)
	st.w	$a1, $a4, 0
	pcalau12i	$a1, %pc_hi20(npy)
	ld.w	$a1, $a1, %pc_lo12(npy)
	mul.d	$a5, $a7, $a2
	pcalau12i	$a6, %pc_hi20(npz)
	ld.w	$a6, $a6, %pc_lo12(npz)
	mul.d	$a1, $a5, $a1
	st.w	$a1, $a4, 4
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	mul.d	$a1, $a7, $a3
	mul.d	$a1, $a1, $a6
	st.w	$a1, $a4, 8
	pcalau12i	$s0, %pc_hi20(num_vars)
	blez	$a3, .LBB0_53
# %bb.12:                               # %.preheader126.lr.ph
	blez	$a2, .LBB0_53
# %bb.13:                               # %.preheader126.preheader
	move	$a1, $zero
	move	$a7, $zero
	move	$a6, $zero
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a5, 31, 31
	add.w	$a4, $a5, $a4
	srai.d	$a4, $a4, 1
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(blocks)
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               # %._crit_edge159.loopexit
                                        #   in Loop: Header=BB0_16 Depth=1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(init_block_z)
.LBB0_15:                               # %._crit_edge159
                                        #   in Loop: Header=BB0_16 Depth=1
	addi.w	$a7, $a7, 1
	bge	$a7, $a3, .LBB0_53
.LBB0_16:                               # %.preheader126
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #           Child Loop BB0_35 Depth 5
                                        #             Child Loop BB0_39 Depth 6
                                        #               Child Loop BB0_41 Depth 7
	blez	$a2, .LBB0_15
# %bb.17:                               # %.preheader125.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=1
	blez	$a0, .LBB0_15
# %bb.18:                               # %.preheader125.preheader
                                        #   in Loop: Header=BB0_16 Depth=1
	move	$a5, $zero
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	mul.d	$a3, $a7, $a3
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_19:                               # %._crit_edge153.loopexit
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.w	$a2, $t3, %pc_lo12(init_block_y)
.LBB0_20:                               # %._crit_edge153
                                        #   in Loop: Header=BB0_21 Depth=2
	addi.w	$a5, $a5, 1
	bge	$a5, $a2, .LBB0_14
.LBB0_21:                               # %.preheader125
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #           Child Loop BB0_35 Depth 5
                                        #             Child Loop BB0_39 Depth 6
                                        #               Child Loop BB0_41 Depth 7
	blez	$a0, .LBB0_20
# %bb.22:                               # %.lr.ph152
                                        #   in Loop: Header=BB0_21 Depth=2
	move	$a4, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	mul.d	$a0, $a5, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a3, $a6, 0
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=3
	st.w	$zero, $s3, 72
	ld.w	$a0, $t2, %pc_lo12(init_block_x)
	ld.w	$a2, $t3, %pc_lo12(init_block_y)
	mul.d	$a0, $a2, $a0
	add.d	$a2, $a0, $t0
.LBB0_24:                               #   in Loop: Header=BB0_25 Depth=3
	st.w	$a2, $s3, 156
	st.w	$zero, $s3, 48
	ld.w	$a0, $t2, %pc_lo12(init_block_x)
	addi.w	$a4, $a4, 1
	addi.w	$a1, $a1, 1
	move	$a3, $a6
	bge	$a4, $a0, .LBB0_19
.LBB0_25:                               #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_30 Depth 4
                                        #           Child Loop BB0_35 Depth 5
                                        #             Child Loop BB0_39 Depth 6
                                        #               Child Loop BB0_41 Depth 7
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blocks)
	alsl.d	$a2, $a3, $a3, 1
	slli.d	$a2, $a2, 6
	add.d	$s3, $a0, $a2
	st.w	$zero, $s3, 4
	stx.w	$a1, $a0, $a2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $s3, 16
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	mul.d	$a0, $a4, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.w	$a0, $s3, 172
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $s3, 176
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $s3, 180
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $a3
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	move	$a2, $zero
	pcaddu18i	$ra, %call36(add_sorted_list)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, %pc_lo12(num_vars)
	blez	$a2, .LBB0_43
# %bb.26:                               # %.preheader124.lr.ph
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.w	$a0, $s4, %pc_lo12(x_block_size)
	blez	$a0, .LBB0_43
# %bb.27:                               # %.preheader124.preheader
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$s8, $zero
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_28:                               # %._crit_edge146.loopexit171
                                        #   in Loop: Header=BB0_30 Depth=4
	ld.w	$a2, $s0, %pc_lo12(num_vars)
.LBB0_29:                               # %._crit_edge146
                                        #   in Loop: Header=BB0_30 Depth=4
	addi.d	$s8, $s8, 1
	bge	$s8, $a2, .LBB0_43
.LBB0_30:                               # %.preheader124
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_35 Depth 5
                                        #             Child Loop BB0_39 Depth 6
                                        #               Child Loop BB0_41 Depth 7
	blez	$a0, .LBB0_29
# %bb.31:                               # %.preheader124
                                        #   in Loop: Header=BB0_30 Depth=4
	ld.w	$a1, $s5, %pc_lo12(y_block_size)
	blez	$a1, .LBB0_29
# %bb.32:                               # %.preheader123.preheader
                                        #   in Loop: Header=BB0_30 Depth=4
	ori	$a2, $zero, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_33:                               # %._crit_edge143.loopexit170
                                        #   in Loop: Header=BB0_35 Depth=5
	ld.w	$a0, $s4, %pc_lo12(x_block_size)
.LBB0_34:                               # %._crit_edge143
                                        #   in Loop: Header=BB0_35 Depth=5
	addi.d	$a2, $s1, 1
	bge	$s1, $a0, .LBB0_28
.LBB0_35:                               # %.preheader123
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_39 Depth 6
                                        #               Child Loop BB0_41 Depth 7
	move	$s1, $a2
	blez	$a1, .LBB0_34
# %bb.36:                               # %.preheader123
                                        #   in Loop: Header=BB0_35 Depth=5
	ld.w	$a2, $s6, %pc_lo12(z_block_size)
	blez	$a2, .LBB0_34
# %bb.37:                               # %.preheader122.preheader
                                        #   in Loop: Header=BB0_35 Depth=5
	ori	$a0, $zero, 1
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %._crit_edge140
                                        #   in Loop: Header=BB0_39 Depth=6
	addi.d	$a0, $s7, 1
	bge	$s7, $a1, .LBB0_33
.LBB0_39:                               # %.preheader122
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        #           Parent Loop BB0_35 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB0_41 Depth 7
	move	$s7, $a0
	blez	$a2, .LBB0_38
# %bb.40:                               # %.lr.ph139.preheader
                                        #   in Loop: Header=BB0_39 Depth=6
	move	$fp, $zero
	ori	$s2, $zero, 8
	.p2align	4, , 16
.LBB0_41:                               # %.lr.ph139
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        #           Parent Loop BB0_35 Depth=5
                                        #             Parent Loop BB0_39 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 184
	slli.d	$a2, $s8, 3
	ldx.d	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a0
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_0)
	slli.d	$a1, $s7, 3
	ldx.d	$a0, $a0, $a1
	ffint.d.w	$fa0, $fa0
	ld.w	$a2, $s6, %pc_lo12(z_block_size)
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $s2
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 8
	blt	$fp, $a2, .LBB0_41
# %bb.42:                               # %._crit_edge140.loopexit
                                        #   in Loop: Header=BB0_39 Depth=6
	ld.w	$a1, $s5, %pc_lo12(y_block_size)
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_43:                               # %._crit_edge148
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	sltui	$a1, $a4, 1
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $t0, -1
	addi.w	$a0, $zero, -2
	maskeqz	$a3, $a0, $a1
	masknez	$a1, $a2, $a1
	st.w	$a3, $s3, 52
	st.w	$a1, $s3, 76
	st.w	$zero, $s3, 28
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $t2, %pc_lo12(init_block_x)
	addi.w	$a1, $a1, -1
	xor	$a1, $a4, $a1
	sltui	$a2, $a1, 1
	addi.d	$a6, $t0, 1
	maskeqz	$a3, $a0, $a2
	masknez	$a2, $a6, $a2
	st.w	$a3, $s3, 56
	st.w	$a2, $s3, 92
	st.w	$zero, $s3, 32
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	beqz	$a5, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_25 Depth=3
	st.w	$zero, $s3, 60
	ld.w	$a2, $t2, %pc_lo12(init_block_x)
	sub.d	$a2, $t0, $a2
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               #   in Loop: Header=BB0_25 Depth=3
	move	$a2, $zero
	move	$a3, $a0
	lu32i.d	$a3, 0
	st.w	$a3, $s3, 60
.LBB0_46:                               #   in Loop: Header=BB0_25 Depth=3
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $s3, 108
	st.w	$zero, $s3, 36
	ld.w	$a2, $t3, %pc_lo12(init_block_y)
	addi.w	$a2, $a2, -1
	bne	$a5, $a2, .LBB0_49
# %bb.47:                               #   in Loop: Header=BB0_25 Depth=3
	move	$a2, $zero
	move	$a3, $a0
	lu32i.d	$a3, 0
	st.w	$a3, $s3, 64
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a2, $s3, 124
	st.w	$zero, $s3, 40
	beqz	$a7, .LBB0_50
.LBB0_48:                               #   in Loop: Header=BB0_25 Depth=3
	st.w	$zero, $s3, 68
	ld.w	$a2, $t2, %pc_lo12(init_block_x)
	ld.w	$a3, $t3, %pc_lo12(init_block_y)
	mul.d	$a2, $a3, $a2
	sub.d	$a2, $t0, $a2
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_25 Depth=3
	st.w	$zero, $s3, 64
	ld.w	$a2, $t2, %pc_lo12(init_block_x)
	add.d	$a2, $a2, $t0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a2, $s3, 124
	st.w	$zero, $s3, 40
	bnez	$a7, .LBB0_48
.LBB0_50:                               #   in Loop: Header=BB0_25 Depth=3
	move	$a2, $zero
	move	$a3, $a0
	lu32i.d	$a3, 0
	st.w	$a3, $s3, 68
.LBB0_51:                               #   in Loop: Header=BB0_25 Depth=3
	st.w	$a2, $s3, 140
	st.w	$zero, $s3, 44
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(init_block_z)
	addi.w	$a2, $a2, -1
	bne	$a7, $a2, .LBB0_23
# %bb.52:                               #   in Loop: Header=BB0_25 Depth=3
	move	$a2, $zero
	lu32i.d	$a0, 0
	st.w	$a0, $s3, 72
	b	.LBB0_24
.LBB0_53:                               # %.preheader
	ld.w	$a0, $s0, %pc_lo12(num_vars)
	blez	$a0, .LBB0_56
# %bb.54:                               # %.lr.ph168.preheader
	move	$s3, $s0
	move	$s0, $zero
	move	$fp, $zero
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(grid_sum)
	.p2align	4, , 16
.LBB0_55:                               # %.lr.ph168
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(check_sum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(grid_sum)
	ld.w	$a1, $s3, %pc_lo12(num_vars)
	fstx.d	$fa0, $a0, $s0
	addi.d	$s1, $s1, 1
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a1, .LBB0_55
.LBB0_56:                               # %._crit_edge169
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
	.size	init, .Lfunc_end0-init
                                        # -- End function
	.type	num_pes,@object                 # @num_pes
	.comm	num_pes,4,4
	.type	npx,@object                     # @npx
	.comm	npx,4,4
	.type	npy,@object                     # @npy
	.comm	npy,4,4
	.type	npz,@object                     # @npz
	.comm	npz,4,4
	.type	error_tol,@object               # @error_tol
	.comm	error_tol,4,4
	.type	tol,@object                     # @tol
	.comm	tol,8,8
	.type	p8,@object                      # @p8
	.comm	p8,8,8
	.type	p2,@object                      # @p2
	.comm	p2,8,8
	.type	num_refine,@object              # @num_refine
	.comm	num_refine,4,4
	.type	sorted_index,@object            # @sorted_index
	.comm	sorted_index,8,8
	.type	block_start,@object             # @block_start
	.comm	block_start,8,8
	.type	init_block_x,@object            # @init_block_x
	.comm	init_block_x,4,4
	.type	init_block_y,@object            # @init_block_y
	.comm	init_block_y,4,4
	.type	init_block_z,@object            # @init_block_z
	.comm	init_block_z,4,4
	.type	global_max_b,@object            # @global_max_b
	.comm	global_max_b,4,4
	.type	local_max_b,@object             # @local_max_b
	.comm	local_max_b,4,4
	.type	num_blocks,@object              # @num_blocks
	.comm	num_blocks,8,8
	.type	x_block_size,@object            # @x_block_size
	.comm	x_block_size,4,4
	.type	x_block_half,@object            # @x_block_half
	.comm	x_block_half,4,4
	.type	y_block_size,@object            # @y_block_size
	.comm	y_block_size,4,4
	.type	y_block_half,@object            # @y_block_half
	.comm	y_block_half,4,4
	.type	z_block_size,@object            # @z_block_size
	.comm	z_block_size,4,4
	.type	z_block_half,@object            # @z_block_half
	.comm	z_block_half,4,4
	.type	max_active_block,@object        # @max_active_block
	.comm	max_active_block,4,4
	.type	num_active,@object              # @num_active
	.comm	num_active,4,4
	.type	global_active,@object           # @global_active
	.comm	global_active,4,4
	.type	max_active_parent,@object       # @max_active_parent
	.comm	max_active_parent,4,4
	.type	num_parents,@object             # @num_parents
	.comm	num_parents,4,4
	.type	mesh_size,@object               # @mesh_size
	.comm	mesh_size,12,4
	.type	blocks,@object                  # @blocks
	.comm	blocks,8,8
	.type	num_vars,@object                # @num_vars
	.comm	num_vars,4,4
	.type	grid_sum,@object                # @grid_sum
	.comm	grid_sum,8,8
	.type	parents,@object                 # @parents
	.comm	parents,8,8
	.type	sorted_list,@object             # @sorted_list
	.comm	sorted_list,8,8
	.type	my_pe,@object                   # @my_pe
	.comm	my_pe,4,4
	.type	max_num_blocks,@object          # @max_num_blocks
	.comm	max_num_blocks,4,4
	.type	target_active,@object           # @target_active
	.comm	target_active,4,4
	.type	target_max,@object              # @target_max
	.comm	target_max,4,4
	.type	target_min,@object              # @target_min
	.comm	target_min,4,4
	.type	uniform_refine,@object          # @uniform_refine
	.comm	uniform_refine,4,4
	.type	comm_vars,@object               # @comm_vars
	.comm	comm_vars,4,4
	.type	reorder,@object                 # @reorder
	.comm	reorder,4,4
	.type	inbalance,@object               # @inbalance
	.comm	inbalance,4,4
	.type	refine_freq,@object             # @refine_freq
	.comm	refine_freq,4,4
	.type	report_diffusion,@object        # @report_diffusion
	.comm	report_diffusion,4,4
	.type	checksum_freq,@object           # @checksum_freq
	.comm	checksum_freq,4,4
	.type	stages_per_ts,@object           # @stages_per_ts
	.comm	stages_per_ts,4,4
	.type	num_tsteps,@object              # @num_tsteps
	.comm	num_tsteps,4,4
	.type	stencil,@object                 # @stencil
	.comm	stencil,4,4
	.type	report_perf,@object             # @report_perf
	.comm	report_perf,4,4
	.type	plot_freq,@object               # @plot_freq
	.comm	plot_freq,4,4
	.type	lb_opt,@object                  # @lb_opt
	.comm	lb_opt,4,4
	.type	block_change,@object            # @block_change
	.comm	block_change,4,4
	.type	code,@object                    # @code
	.comm	code,4,4
	.type	permute,@object                 # @permute
	.comm	permute,4,4
	.type	nonblocking,@object             # @nonblocking
	.comm	nonblocking,4,4
	.type	refine_ghost,@object            # @refine_ghost
	.comm	refine_ghost,4,4
	.type	max_num_parents,@object         # @max_num_parents
	.comm	max_num_parents,4,4
	.type	cur_max_level,@object           # @cur_max_level
	.comm	cur_max_level,4,4
	.type	max_mesh_size,@object           # @max_mesh_size
	.comm	max_mesh_size,4,4
	.type	from,@object                    # @from
	.comm	from,8,8
	.type	to,@object                      # @to
	.comm	to,8,8
	.type	msg_len,@object                 # @msg_len
	.comm	msg_len,48,4
	.type	num_objects,@object             # @num_objects
	.comm	num_objects,4,4
	.type	objects,@object                 # @objects
	.comm	objects,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
