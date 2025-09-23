	.file	"comm.c"
	.text
	.globl	comm                            # -- Begin function comm
	.p2align	5
	.type	comm,@function
comm:                                   # @comm
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 216                  # 8-byte Folded Spill
	move	$s6, $a1
	move	$s3, $a0
	lu12i.w	$a0, 174762
	ori	$a0, $a0, 2731
	mul.d	$a0, $a2, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 2
	alsl.d	$a0, $a0, $a1, 1
	sub.w	$a0, $a2, $a0
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.L__const.comm.permutations)
	addi.d	$a1, $a1, %pc_lo12(.L__const.comm.permutations)
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(permute)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(sorted_index)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(num_refine)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(counter_bc)
	addi.d	$a0, $a0, %pc_lo12(counter_bc)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(timer_comm_bc)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_bc)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(counter_diff)
	addi.d	$a0, $a0, %pc_lo12(counter_diff)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(timer_comm_diff)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_diff)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(counter_same)
	addi.d	$a0, $a0, %pc_lo12(counter_same)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(timer_comm_same)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_same)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(sorted_list)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(blocks)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$s4, $zero, 2
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 184                   # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
.LBB0_2:                                # %._crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	slli.d	$a0, $fp, 3
	pcalau12i	$a1, %pc_hi20(timer_comm_dir)
	addi.d	$a1, $a1, %pc_lo12(timer_comm_dir)
	fldx.d	$fa1, $a1, $a0
	fadd.d	$fa0, $fa1, $fa0
	addi.d	$s0, $s0, 1
	fstx.d	$fa0, $a1, $a0
	ori	$a0, $zero, 3
	beq	$s0, $a0, .LBB0_42
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_14 Depth 3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(permute)
	beqz	$a0, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$fp, $a1, $a0
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	move	$fp, $s0
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(sorted_index)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(num_refine)
	alsl.d	$a2, $a1, $a0, 2
	ld.w	$a2, $a2, 4
	fmov.d	$fs0, $fa0
	blez	$a2, .LBB0_41
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	move	$a5, $zero
	slli.d	$a4, $fp, 1
	addi.w	$a3, $fp, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a2, $a4, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s5, $a3, $a2, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$s7, $a3, $a2, 3
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	addi.w	$a2, $a4, 0
	slli.d	$a3, $a2, 2
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 4
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %.loopexit102.loopexit
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(sorted_index)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(num_refine)
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
.LBB0_9:                                # %.loopexit102
                                        #   in Loop: Header=BB0_10 Depth=2
	alsl.d	$a2, $a1, $a0, 2
	ld.w	$a2, $a2, 4
	addi.d	$a5, $a5, 1
	bge	$a5, $a2, .LBB0_1
.LBB0_10:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(sorted_list)
	alsl.d	$a2, $a5, $a2, 3
	ld.w	$s1, $a2, 4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(blocks)
	alsl.d	$a3, $s1, $s1, 1
	slli.d	$a3, $a3, 6
	ldx.w	$a4, $a2, $a3
	bltz	$a4, .LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	move	$s8, $zero
	add.d	$s2, $a2, $a3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a3
	addi.d	$fp, $a0, 52
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a3
	addi.d	$s0, $a0, 76
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s7, 0
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s7, 0
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=3
	addi.w	$s8, $s8, 1
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 16
	beq	$s8, $s4, .LBB0_8
.LBB0_14:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s2, 4
	bne	$a0, $a1, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	fmov.d	$fs1, $fa0
	bge	$s1, $a1, .LBB0_12
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $s8
	move	$a0, $s1
	move	$a3, $s3
	move	$a4, $s6
	pcaddu18i	$ra, %call36(on_proc_comm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $a1, 0
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=3
	addi.w	$a2, $a1, 1
	bne	$a0, $a2, .LBB0_24
# %bb.18:                               # %.preheader
                                        #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	fmov.d	$fs1, $fa0
	blt	$s1, $a1, .LBB0_33
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=3
	ld.w	$a1, $s0, 4
	blt	$s1, $a1, .LBB0_34
.LBB0_20:                               # %.preheader.1
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.w	$a1, $s0, 8
	blt	$s1, $a1, .LBB0_35
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=3
	ld.w	$a1, $s0, 12
	bge	$s1, $a1, .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $s8
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a5, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_24:                               #   in Loop: Header=BB0_14 Depth=3
	addi.w	$a1, $a1, -1
	bne	$a0, $a1, .LBB0_36
# %bb.25:                               #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s0, 0
	fmov.d	$fs1, $fa0
	bge	$s1, $s3, .LBB0_32
# %bb.26:                               # %.preheader101
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s8
	bstrpick.d	$a1, $a0, 31, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blocks)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.w	$s4, $a2, $a1
	alsl.d	$a1, $s3, $s3, 1
	slli.d	$s6, $a1, 6
	add.d	$a1, $a0, $s6
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 76
	beq	$a1, $s1, .LBB0_39
# %bb.27:                               #   in Loop: Header=BB0_14 Depth=3
	add.d	$a1, $a0, $s6
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 80
	beq	$a1, $s1, .LBB0_40
.LBB0_28:                               # %.preheader101.1
                                        #   in Loop: Header=BB0_14 Depth=3
	add.d	$a1, $a0, $s6
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 84
	bne	$a1, $s1, .LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_14 Depth=3
	ori	$a3, $zero, 1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	move	$a4, $zero
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blocks)
	addi.d	$a1, $a1, 2
	st.w	$a1, $s5, 0
.LBB0_30:                               #   in Loop: Header=BB0_14 Depth=3
	add.d	$a0, $a0, $s6
	alsl.d	$a0, $s4, $a0, 4
	ld.w	$a0, $a0, 88
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_14 Depth=3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$a6, $s6
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
.LBB0_32:                               # %.loopexit
                                        #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	ori	$s4, $zero, 2
	b	.LBB0_13
.LBB0_33:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $s8
	move	$a0, $s1
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
	ld.w	$a1, $s0, 4
	bge	$s1, $a1, .LBB0_20
.LBB0_34:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $s8
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a3, $zero
	move	$a5, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
	ld.w	$a1, $s0, 8
	bge	$s1, $a1, .LBB0_21
.LBB0_35:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $s8
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
	ld.w	$a1, $s0, 12
	blt	$s1, $a1, .LBB0_22
	b	.LBB0_23
.LBB0_36:                               #   in Loop: Header=BB0_14 Depth=3
	addi.w	$a1, $zero, -2
	bne	$a0, $a1, .LBB0_43
# %bb.37:                               #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s6
	pcaddu18i	$ra, %call36(apply_bc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
.LBB0_38:                               #   in Loop: Header=BB0_14 Depth=3
	fld.d	$fa1, $a0, 0
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
	b	.LBB0_13
.LBB0_39:                               #   in Loop: Header=BB0_14 Depth=3
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blocks)
	addi.d	$a1, $a1, 2
	st.w	$a1, $s5, 0
	add.d	$a1, $a0, $s6
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 80
	bne	$a1, $s1, .LBB0_28
.LBB0_40:                               #   in Loop: Header=BB0_14 Depth=3
	ori	$a4, $zero, 1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $zero
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blocks)
	addi.d	$a1, $a1, 2
	st.w	$a1, $s5, 0
	add.d	$a1, $a0, $s6
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 84
	beq	$a1, $s1, .LBB0_29
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_41:                               # %.._crit_edge_crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.w	$fp, $fp, 0
	b	.LBB0_2
.LBB0_42:
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB0_43:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	comm, .Lfunc_end0-comm
                                        # -- End function
	.globl	on_proc_comm                    # -- Begin function on_proc_comm
	.p2align	5
	.type	on_proc_comm,@function
on_proc_comm:                           # @on_proc_comm
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(code)
	ld.w	$a6, $a5, %pc_lo12(code)
	addi.w	$a5, $a2, 1
	beqz	$a6, .LBB1_21
# %bb.1:
	ori	$a6, $zero, 2
	bltu	$a6, $a5, .LBB1_40
# %bb.2:
	blez	$a4, .LBB1_99
# %bb.3:                                # %.preheader248.lr.ph
	pcalau12i	$a5, %pc_hi20(y_block_size)
	ld.w	$a5, $a5, %pc_lo12(y_block_size)
	addi.w	$a7, $zero, -1
	blt	$a5, $a7, .LBB1_99
# %bb.4:                                # %.preheader248.lr.ph
	pcalau12i	$a6, %pc_hi20(z_block_size)
	ld.w	$a6, $a6, %pc_lo12(z_block_size)
	blt	$a6, $a7, .LBB1_99
# %bb.5:                                # %.preheader248.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$a7, %pc_hi20(blocks)
	ld.d	$a7, $a7, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t0, $zero, 192
	mul.d	$a1, $a1, $t0
	add.d	$a1, $a7, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a7, $a0
	masknez	$a7, $a0, $a2
	maskeqz	$t0, $a1, $a2
	or	$a7, $t0, $a7
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $a7, 184
	addi.w	$a2, $a6, 2
	addi.d	$a5, $a5, 2
	bstrpick.d	$a5, $a5, 31, 0
	bstrpick.d	$a6, $a2, 31, 0
	bstrpick.d	$a7, $a2, 31, 3
	slli.d	$a7, $a7, 3
	pcalau12i	$t0, %pc_hi20(x_block_size)
	ori	$t1, $zero, 12
	ori	$t2, $zero, 64
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %._crit_edge278.split
                                        #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a4, .LBB1_99
.LBB1_7:                                # %.preheader248
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_12 Depth 3
	ld.w	$t4, $t0, %pc_lo12(x_block_size)
	slli.d	$t3, $a3, 3
	ldx.d	$t6, $a0, $t3
	ldx.d	$t5, $a1, $t3
	ld.d	$t3, $t6, 8
	alsl.d	$t7, $t4, $t5, 3
	slli.d	$t8, $t4, 3
	ld.d	$t4, $t7, 8
	ldx.d	$t5, $t5, $t8
	ld.d	$t6, $t6, 0
	move	$t7, $zero
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_8:                                # %._crit_edge275
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$t7, $t7, 1
	beq	$t7, $a5, .LBB1_6
.LBB1_9:                                # %.preheader247
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_12 Depth 3
	slli.d	$s1, $t7, 3
	ldx.d	$t8, $t3, $s1
	ldx.d	$fp, $t4, $s1
	ldx.d	$s0, $t5, $s1
	ldx.d	$s1, $t6, $s1
	bgeu	$a2, $t1, .LBB1_13
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	move	$s2, $zero
.LBB1_11:                               # %scalar.ph439.preheader
                                        #   in Loop: Header=BB1_9 Depth=2
	alsl.d	$s1, $s2, $s1, 3
	alsl.d	$s0, $s2, $s0, 3
	alsl.d	$fp, $s2, $fp, 3
	alsl.d	$t8, $s2, $t8, 3
	sub.d	$s2, $a6, $s2
	.p2align	4, , 16
.LBB1_12:                               # %scalar.ph439
                                        #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t8, 0
	fst.d	$fa0, $fp, 0
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$t8, $t8, 8
	bnez	$s2, .LBB1_12
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_13:                               # %vector.memcheck429
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $s1, $fp
	move	$s2, $zero
	bltu	$s3, $t2, .LBB1_11
# %bb.14:                               # %vector.memcheck429
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $fp, $t8
	bltu	$s3, $t2, .LBB1_11
# %bb.15:                               # %vector.memcheck429
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $s0, $fp
	bltu	$s3, $t2, .LBB1_11
# %bb.16:                               # %vector.memcheck429
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $s1, $t8
	bltu	$s3, $t2, .LBB1_11
# %bb.17:                               # %vector.memcheck429
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $s1, $s0
	bltu	$s3, $t2, .LBB1_11
# %bb.18:                               # %vector.body444.preheader
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$s2, $t8, 32
	addi.d	$s3, $s1, 32
	addi.d	$s4, $fp, 32
	addi.d	$s5, $s0, 32
	move	$s6, $a7
	.p2align	4, , 16
.LBB1_19:                               # %vector.body444
                                        #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $s2, -32
	xvld	$xr1, $s2, 0
	xvst	$xr0, $s4, -32
	xvst	$xr1, $s4, 0
	xvld	$xr0, $s5, -32
	xvld	$xr1, $s5, 0
	xvst	$xr0, $s3, -32
	xvst	$xr1, $s3, 0
	addi.d	$s6, $s6, -8
	addi.d	$s2, $s2, 64
	addi.d	$s3, $s3, 64
	addi.d	$s4, $s4, 64
	addi.d	$s5, $s5, 64
	bnez	$s6, .LBB1_19
# %bb.20:                               # %middle.block451
                                        #   in Loop: Header=BB1_9 Depth=2
	move	$s2, $a7
	beq	$a7, $a6, .LBB1_8
	b	.LBB1_11
.LBB1_21:
	ori	$a6, $zero, 2
	bltu	$a6, $a5, .LBB1_61
# %bb.22:
	blez	$a4, .LBB1_99
# %bb.23:                               # %.preheader240.lr.ph
	pcalau12i	$a5, %pc_hi20(y_block_size)
	ld.w	$a6, $a5, %pc_lo12(y_block_size)
	blez	$a6, .LBB1_99
# %bb.24:                               # %.preheader240.lr.ph
	pcalau12i	$a5, %pc_hi20(z_block_size)
	ld.w	$a5, $a5, %pc_lo12(z_block_size)
	blez	$a5, .LBB1_99
# %bb.25:                               # %.preheader240.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$a7, %pc_hi20(blocks)
	ld.d	$a7, $a7, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t0, $zero, 192
	mul.d	$a1, $a1, $t0
	add.d	$a1, $a7, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a7, $a0
	masknez	$a7, $a0, $a2
	maskeqz	$t0, $a1, $a2
	or	$a7, $t0, $a7
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $a7, 184
	addi.d	$a7, $a5, 1
	addi.d	$a2, $a6, 1
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$a6, $a7, 31, 0
	bstrpick.d	$a7, $a5, 30, 3
	slli.d	$a7, $a7, 3
	srli.d	$t1, $a5, 3
	ori	$t0, $zero, 1
	bstrins.d	$t0, $t1, 30, 3
	pcalau12i	$t1, %pc_hi20(x_block_size)
	ori	$t2, $zero, 12
	ori	$t3, $zero, 64
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_26:                               # %._crit_edge305.split
                                        #   in Loop: Header=BB1_27 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a4, .LBB1_99
.LBB1_27:                               # %.preheader240
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
                                        #       Child Loop BB1_38 Depth 3
                                        #       Child Loop BB1_31 Depth 3
	ld.w	$t5, $t1, %pc_lo12(x_block_size)
	slli.d	$t4, $a3, 3
	ldx.d	$t7, $a0, $t4
	ldx.d	$t6, $a1, $t4
	ld.d	$t4, $t7, 8
	alsl.d	$t8, $t5, $t6, 3
	slli.d	$fp, $t5, 3
	ld.d	$t5, $t8, 8
	ldx.d	$t6, $t6, $fp
	ld.d	$t7, $t7, 0
	ori	$t8, $zero, 1
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %._crit_edge302
                                        #   in Loop: Header=BB1_29 Depth=2
	addi.d	$t8, $t8, 1
	beq	$t8, $a2, .LBB1_26
.LBB1_29:                               # %.preheader
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_38 Depth 3
                                        #       Child Loop BB1_31 Depth 3
	slli.d	$s2, $t8, 3
	ldx.d	$fp, $t4, $s2
	ldx.d	$s0, $t5, $s2
	ldx.d	$s1, $t6, $s2
	ldx.d	$s2, $t7, $s2
	ori	$s3, $zero, 1
	bgeu	$a5, $t2, .LBB1_32
.LBB1_30:                               # %scalar.ph489.preheader
                                        #   in Loop: Header=BB1_29 Depth=2
	alsl.d	$s2, $s3, $s2, 3
	alsl.d	$s1, $s3, $s1, 3
	alsl.d	$s0, $s3, $s0, 3
	alsl.d	$fp, $s3, $fp, 3
	sub.d	$s3, $a6, $s3
	.p2align	4, , 16
.LBB1_31:                               # %scalar.ph489
                                        #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $fp, 0
	fst.d	$fa0, $s0, 0
	fld.d	$fa0, $s1, 0
	fst.d	$fa0, $s2, 0
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB1_31
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_32:                               # %vector.memcheck479
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s2, $s0
	bltu	$s4, $t3, .LBB1_30
# %bb.33:                               # %vector.memcheck479
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s0, $fp
	bltu	$s4, $t3, .LBB1_30
# %bb.34:                               # %vector.memcheck479
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s1, $s0
	bltu	$s4, $t3, .LBB1_30
# %bb.35:                               # %vector.memcheck479
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s2, $fp
	bltu	$s4, $t3, .LBB1_30
# %bb.36:                               # %vector.memcheck479
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s2, $s1
	bltu	$s4, $t3, .LBB1_30
# %bb.37:                               # %vector.body494.preheader
                                        #   in Loop: Header=BB1_29 Depth=2
	addi.d	$s3, $fp, 40
	addi.d	$s4, $s0, 40
	addi.d	$s5, $s2, 40
	addi.d	$s6, $s1, 40
	move	$s7, $a7
	.p2align	4, , 16
.LBB1_38:                               # %vector.body494
                                        #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $s3, -32
	xvld	$xr1, $s3, 0
	xvst	$xr0, $s4, -32
	xvst	$xr1, $s4, 0
	xvld	$xr0, $s6, -32
	xvld	$xr1, $s6, 0
	xvst	$xr0, $s5, -32
	xvst	$xr1, $s5, 0
	addi.d	$s3, $s3, 64
	addi.d	$s7, $s7, -8
	addi.d	$s4, $s4, 64
	addi.d	$s5, $s5, 64
	addi.d	$s6, $s6, 64
	bnez	$s7, .LBB1_38
# %bb.39:                               # %middle.block502
                                        #   in Loop: Header=BB1_29 Depth=2
	move	$s3, $t0
	beq	$a7, $a5, .LBB1_28
	b	.LBB1_30
.LBB1_40:
	move	$a5, $a2
	bstrins.d	$a5, $zero, 0, 0
	ori	$a6, $zero, 4
	beq	$a5, $a6, .LBB1_81
# %bb.41:
	ori	$a6, $zero, 2
	bne	$a5, $a6, .LBB1_99
# %bb.42:
	blez	$a4, .LBB1_99
# %bb.43:                               # %.preheader251.lr.ph
	pcalau12i	$a5, %pc_hi20(x_block_size)
	ld.w	$a5, $a5, %pc_lo12(x_block_size)
	addi.w	$a7, $zero, -1
	blt	$a5, $a7, .LBB1_99
# %bb.44:                               # %.preheader251.lr.ph
	pcalau12i	$a6, %pc_hi20(z_block_size)
	ld.w	$a6, $a6, %pc_lo12(z_block_size)
	blt	$a6, $a7, .LBB1_99
# %bb.45:                               # %.preheader251.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$a7, %pc_hi20(blocks)
	ld.d	$a7, $a7, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t0, $zero, 192
	mul.d	$a1, $a1, $t0
	add.d	$a1, $a7, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a7, $a0
	masknez	$a7, $a0, $a2
	maskeqz	$t0, $a1, $a2
	or	$a7, $t0, $a7
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $a7, 184
	addi.w	$a2, $a6, 2
	addi.d	$a5, $a5, 2
	bstrpick.d	$a5, $a5, 31, 0
	bstrpick.d	$a6, $a2, 31, 0
	bstrpick.d	$a7, $a2, 31, 3
	slli.d	$a7, $a7, 3
	pcalau12i	$t0, %pc_hi20(y_block_size)
	ori	$t1, $zero, 12
	ori	$t2, $zero, 64
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               # %._crit_edge269.split
                                        #   in Loop: Header=BB1_47 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a4, .LBB1_99
.LBB1_47:                               # %.preheader251
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_49 Depth 2
                                        #       Child Loop BB1_59 Depth 3
                                        #       Child Loop BB1_52 Depth 3
	ld.w	$t3, $t0, %pc_lo12(y_block_size)
	slli.d	$t5, $a3, 3
	ldx.d	$t4, $a0, $t5
	ldx.d	$t5, $a1, $t5
	move	$t6, $zero
	slli.d	$t7, $t3, 3
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_48:                               # %._crit_edge266
                                        #   in Loop: Header=BB1_49 Depth=2
	addi.d	$t6, $t6, 1
	beq	$t6, $a5, .LBB1_46
.LBB1_49:                               # %.preheader250
                                        #   Parent Loop BB1_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_59 Depth 3
                                        #       Child Loop BB1_52 Depth 3
	slli.d	$t8, $t6, 3
	ldx.d	$s1, $t4, $t8
	ldx.d	$s0, $t5, $t8
	ld.d	$t8, $s1, 8
	alsl.d	$fp, $t3, $s0, 3
	ld.d	$fp, $fp, 8
	ldx.d	$s0, $s0, $t7
	ld.d	$s1, $s1, 0
	bgeu	$a2, $t1, .LBB1_53
# %bb.50:                               #   in Loop: Header=BB1_49 Depth=2
	move	$s2, $zero
.LBB1_51:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_49 Depth=2
	alsl.d	$s1, $s2, $s1, 3
	alsl.d	$s0, $s2, $s0, 3
	alsl.d	$fp, $s2, $fp, 3
	alsl.d	$t8, $s2, $t8, 3
	sub.d	$s2, $a6, $s2
	.p2align	4, , 16
.LBB1_52:                               # %scalar.ph
                                        #   Parent Loop BB1_47 Depth=1
                                        #     Parent Loop BB1_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t8, 0
	fst.d	$fa0, $fp, 0
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$t8, $t8, 8
	bnez	$s2, .LBB1_52
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_53:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $s1, $fp
	move	$s2, $zero
	bltu	$s3, $t2, .LBB1_51
# %bb.54:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $fp, $t8
	bltu	$s3, $t2, .LBB1_51
# %bb.55:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $s0, $fp
	bltu	$s3, $t2, .LBB1_51
# %bb.56:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $s1, $t8
	bltu	$s3, $t2, .LBB1_51
# %bb.57:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $s1, $s0
	bltu	$s3, $t2, .LBB1_51
# %bb.58:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_49 Depth=2
	addi.d	$s2, $t8, 32
	addi.d	$s3, $s1, 32
	addi.d	$s4, $fp, 32
	addi.d	$s5, $s0, 32
	move	$s6, $a7
	.p2align	4, , 16
.LBB1_59:                               # %vector.body
                                        #   Parent Loop BB1_47 Depth=1
                                        #     Parent Loop BB1_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $s2, -32
	xvld	$xr1, $s2, 0
	xvst	$xr0, $s4, -32
	xvst	$xr1, $s4, 0
	xvld	$xr0, $s5, -32
	xvld	$xr1, $s5, 0
	xvst	$xr0, $s3, -32
	xvst	$xr1, $s3, 0
	addi.d	$s6, $s6, -8
	addi.d	$s2, $s2, 64
	addi.d	$s3, $s3, 64
	addi.d	$s4, $s4, 64
	addi.d	$s5, $s5, 64
	bnez	$s6, .LBB1_59
# %bb.60:                               # %middle.block
                                        #   in Loop: Header=BB1_49 Depth=2
	move	$s2, $a7
	beq	$a7, $a6, .LBB1_48
	b	.LBB1_51
.LBB1_61:
	move	$a5, $a2
	bstrins.d	$a5, $zero, 0, 0
	ori	$a6, $zero, 4
	beq	$a5, $a6, .LBB1_90
# %bb.62:
	ori	$a6, $zero, 2
	bne	$a5, $a6, .LBB1_99
# %bb.63:
	blez	$a4, .LBB1_99
# %bb.64:                               # %.preheader242.lr.ph
	pcalau12i	$a5, %pc_hi20(stencil)
	ld.w	$a5, $a5, %pc_lo12(stencil)
	pcalau12i	$a6, %pc_hi20(x_block_size)
	ld.w	$a6, $a6, %pc_lo12(x_block_size)
	addi.d	$a5, $a5, -7
	sltu	$a7, $zero, $a5
	add.w	$a7, $a6, $a7
	sltui	$a5, $a5, 1
	blt	$a7, $a5, .LBB1_99
# %bb.65:                               # %.preheader242.lr.ph
	pcalau12i	$a6, %pc_hi20(z_block_size)
	ld.w	$a6, $a6, %pc_lo12(z_block_size)
	blez	$a6, .LBB1_99
# %bb.66:                               # %.preheader242.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$t0, %pc_hi20(blocks)
	ld.d	$t0, $t0, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t1, $zero, 192
	mul.d	$a1, $a1, $t1
	add.d	$a1, $t0, $a1
	mul.d	$a0, $a0, $t1
	add.d	$a0, $t0, $a0
	masknez	$t0, $a0, $a2
	maskeqz	$t1, $a1, $a2
	or	$t0, $t1, $t0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $t0, 184
	addi.d	$t0, $a6, 1
	addi.d	$a2, $a7, 1
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$a7, $t0, 31, 0
	bstrpick.d	$t0, $a6, 30, 3
	slli.d	$t0, $t0, 3
	srli.d	$t2, $a6, 3
	ori	$t1, $zero, 1
	bstrins.d	$t1, $t2, 30, 3
	pcalau12i	$t2, %pc_hi20(y_block_size)
	ori	$t3, $zero, 12
	ori	$t4, $zero, 64
	b	.LBB1_68
	.p2align	4, , 16
.LBB1_67:                               # %._crit_edge296.split
                                        #   in Loop: Header=BB1_68 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a4, .LBB1_99
.LBB1_68:                               # %.preheader242
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_70 Depth 2
                                        #       Child Loop BB1_79 Depth 3
                                        #       Child Loop BB1_72 Depth 3
	ld.w	$t5, $t2, %pc_lo12(y_block_size)
	slli.d	$t7, $a3, 3
	ldx.d	$t6, $a0, $t7
	ldx.d	$t7, $a1, $t7
	slli.d	$t8, $t5, 3
	move	$fp, $a5
	b	.LBB1_70
	.p2align	4, , 16
.LBB1_69:                               # %._crit_edge293
                                        #   in Loop: Header=BB1_70 Depth=2
	addi.d	$fp, $fp, 1
	beq	$fp, $a2, .LBB1_67
.LBB1_70:                               # %.preheader241
                                        #   Parent Loop BB1_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_79 Depth 3
                                        #       Child Loop BB1_72 Depth 3
	slli.d	$s0, $fp, 3
	ldx.d	$s3, $t6, $s0
	ldx.d	$s2, $t7, $s0
	ld.d	$s0, $s3, 8
	alsl.d	$s1, $t5, $s2, 3
	ld.d	$s1, $s1, 8
	ldx.d	$s2, $s2, $t8
	ld.d	$s3, $s3, 0
	ori	$s4, $zero, 1
	bgeu	$a6, $t3, .LBB1_73
.LBB1_71:                               # %scalar.ph464.preheader
                                        #   in Loop: Header=BB1_70 Depth=2
	alsl.d	$s3, $s4, $s3, 3
	alsl.d	$s2, $s4, $s2, 3
	alsl.d	$s1, $s4, $s1, 3
	alsl.d	$s0, $s4, $s0, 3
	sub.d	$s4, $a7, $s4
	.p2align	4, , 16
.LBB1_72:                               # %scalar.ph464
                                        #   Parent Loop BB1_68 Depth=1
                                        #     Parent Loop BB1_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
	fld.d	$fa0, $s2, 0
	fst.d	$fa0, $s3, 0
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 8
	bnez	$s4, .LBB1_72
	b	.LBB1_69
	.p2align	4, , 16
.LBB1_73:                               # %vector.memcheck454
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s3, $s1
	bltu	$s5, $t4, .LBB1_71
# %bb.74:                               # %vector.memcheck454
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s1, $s0
	bltu	$s5, $t4, .LBB1_71
# %bb.75:                               # %vector.memcheck454
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s2, $s1
	bltu	$s5, $t4, .LBB1_71
# %bb.76:                               # %vector.memcheck454
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s3, $s0
	bltu	$s5, $t4, .LBB1_71
# %bb.77:                               # %vector.memcheck454
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s3, $s2
	bltu	$s5, $t4, .LBB1_71
# %bb.78:                               # %vector.body469.preheader
                                        #   in Loop: Header=BB1_70 Depth=2
	addi.d	$s4, $s0, 40
	addi.d	$s5, $s1, 40
	addi.d	$s6, $s3, 40
	addi.d	$s7, $s2, 40
	move	$s8, $t0
	.p2align	4, , 16
.LBB1_79:                               # %vector.body469
                                        #   Parent Loop BB1_68 Depth=1
                                        #     Parent Loop BB1_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $s4, -32
	xvld	$xr1, $s4, 0
	xvst	$xr0, $s5, -32
	xvst	$xr1, $s5, 0
	xvld	$xr0, $s7, -32
	xvld	$xr1, $s7, 0
	xvst	$xr0, $s6, -32
	xvst	$xr1, $s6, 0
	addi.d	$s4, $s4, 64
	addi.d	$s8, $s8, -8
	addi.d	$s5, $s5, 64
	addi.d	$s6, $s6, 64
	addi.d	$s7, $s7, 64
	bnez	$s8, .LBB1_79
# %bb.80:                               # %middle.block476
                                        #   in Loop: Header=BB1_70 Depth=2
	move	$s4, $t1
	beq	$t0, $a6, .LBB1_69
	b	.LBB1_71
.LBB1_81:
	blez	$a4, .LBB1_99
# %bb.82:                               # %.preheader254.lr.ph
	pcalau12i	$a5, %pc_hi20(x_block_size)
	ld.w	$a5, $a5, %pc_lo12(x_block_size)
	addi.w	$a7, $zero, -1
	blt	$a5, $a7, .LBB1_99
# %bb.83:                               # %.preheader254.lr.ph
	pcalau12i	$a6, %pc_hi20(y_block_size)
	ld.w	$a6, $a6, %pc_lo12(y_block_size)
	blt	$a6, $a7, .LBB1_99
# %bb.84:                               # %.preheader254.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$a7, %pc_hi20(blocks)
	ld.d	$a7, $a7, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t0, $zero, 192
	mul.d	$a1, $a1, $t0
	add.d	$a1, $a7, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a7, $a0
	masknez	$a7, $a0, $a2
	maskeqz	$t0, $a1, $a2
	or	$a7, $t0, $a7
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $a7, 184
	addi.d	$a6, $a6, 2
	addi.d	$a2, $a5, 2
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$a5, $a6, 31, 0
	pcalau12i	$a6, %pc_hi20(z_block_size)
	.p2align	4, , 16
.LBB1_85:                               # %.preheader254
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_86 Depth 2
                                        #       Child Loop BB1_87 Depth 3
	ld.w	$a7, $a6, %pc_lo12(z_block_size)
	slli.d	$t1, $a3, 3
	ldx.d	$t0, $a0, $t1
	ldx.d	$t1, $a1, $t1
	move	$t2, $zero
	slli.d	$t3, $a7, 3
	.p2align	4, , 16
.LBB1_86:                               # %.preheader253
                                        #   Parent Loop BB1_85 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_87 Depth 3
	slli.d	$t5, $t2, 3
	ldx.d	$t4, $t0, $t5
	ldx.d	$t5, $t1, $t5
	move	$t6, $a5
	.p2align	4, , 16
.LBB1_87:                               #   Parent Loop BB1_85 Depth=1
                                        #     Parent Loop BB1_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	fld.d	$fa0, $t7, 8
	fldx.d	$fa1, $t8, $t3
	alsl.d	$t8, $a7, $t8, 3
	fst.d	$fa0, $t8, 8
	fst.d	$fa1, $t7, 0
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, -1
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB1_87
# %bb.88:                               # %._crit_edge
                                        #   in Loop: Header=BB1_86 Depth=2
	addi.d	$t2, $t2, 1
	bne	$t2, $a2, .LBB1_86
# %bb.89:                               # %._crit_edge260.split
                                        #   in Loop: Header=BB1_85 Depth=1
	addi.d	$a3, $a3, 1
	blt	$a3, $a4, .LBB1_85
	b	.LBB1_99
.LBB1_90:
	blez	$a4, .LBB1_99
# %bb.91:                               # %.preheader245.lr.ph
	pcalau12i	$a5, %pc_hi20(stencil)
	ld.w	$a5, $a5, %pc_lo12(stencil)
	pcalau12i	$a6, %pc_hi20(x_block_size)
	ld.w	$a6, $a6, %pc_lo12(x_block_size)
	addi.d	$a7, $a5, -7
	sltui	$a5, $a7, 1
	sltu	$a7, $zero, $a7
	add.w	$a6, $a6, $a7
	blt	$a6, $a5, .LBB1_99
# %bb.92:                               # %.preheader245.lr.ph
	pcalau12i	$t0, %pc_hi20(y_block_size)
	ld.w	$t0, $t0, %pc_lo12(y_block_size)
	add.w	$a7, $t0, $a7
	blt	$a7, $a5, .LBB1_99
# %bb.93:                               # %.preheader245.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$t0, %pc_hi20(blocks)
	ld.d	$t0, $t0, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t1, $zero, 192
	mul.d	$a1, $a1, $t1
	add.d	$a1, $t0, $a1
	mul.d	$a0, $a0, $t1
	add.d	$a0, $t0, $a0
	masknez	$t0, $a0, $a2
	maskeqz	$t1, $a1, $a2
	or	$t0, $t1, $t0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $t0, 184
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a6, 1
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a6, $a5, 3
	sub.d	$a7, $a7, $a5
	pcalau12i	$t0, %pc_hi20(z_block_size)
	.p2align	4, , 16
.LBB1_94:                               # %.preheader245
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_95 Depth 2
                                        #       Child Loop BB1_96 Depth 3
	ld.w	$t1, $t0, %pc_lo12(z_block_size)
	slli.d	$t3, $a3, 3
	ldx.d	$t2, $a0, $t3
	ldx.d	$t3, $a1, $t3
	slli.d	$t4, $t1, 3
	move	$t5, $a5
	.p2align	4, , 16
.LBB1_95:                               # %.preheader244
                                        #   Parent Loop BB1_94 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_96 Depth 3
	slli.d	$t6, $t5, 3
	ldx.d	$t7, $t3, $t6
	ldx.d	$t8, $t2, $t6
	add.d	$t6, $t7, $a6
	add.d	$t7, $t8, $a6
	move	$t8, $a7
	.p2align	4, , 16
.LBB1_96:                               #   Parent Loop BB1_94 Depth=1
                                        #     Parent Loop BB1_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $t7, 0
	ld.d	$s0, $t6, 0
	fld.d	$fa0, $fp, 8
	fldx.d	$fa1, $s0, $t4
	alsl.d	$s0, $t1, $s0, 3
	fst.d	$fa0, $s0, 8
	fst.d	$fa1, $fp, 0
	addi.d	$t6, $t6, 8
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB1_96
# %bb.97:                               # %._crit_edge284
                                        #   in Loop: Header=BB1_95 Depth=2
	addi.d	$t5, $t5, 1
	bne	$t5, $a2, .LBB1_95
# %bb.98:                               # %._crit_edge287.split
                                        #   in Loop: Header=BB1_94 Depth=1
	addi.d	$a3, $a3, 1
	blt	$a3, $a4, .LBB1_94
.LBB1_99:                               # %.loopexit
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	on_proc_comm, .Lfunc_end1-on_proc_comm
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function on_proc_comm_diff
.LCPI2_0:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.text
	.globl	on_proc_comm_diff
	.p2align	5
	.type	on_proc_comm_diff,@function
on_proc_comm_diff:                      # @on_proc_comm_diff
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(blocks)
	ld.d	$a4, $a4, %pc_lo12(blocks)
	ori	$a7, $zero, 192
	mul.d	$a0, $a0, $a7
	pcalau12i	$t0, %pc_hi20(code)
	ld.w	$t0, $t0, %pc_lo12(code)
	mul.d	$a1, $a1, $a7
	move	$a7, $a2
	add.d	$t7, $a4, $a0
	add.d	$t8, $a4, $a1
	addi.w	$a0, $a2, 1
	ori	$a1, $zero, 2
	beqz	$t0, .LBB2_4
# %bb.1:
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB2_7
# %bb.2:
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$s2, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $s2, 1
	beqz	$a7, .LBB2_15
# %bb.3:
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$t0, $s2
	ori	$s2, $zero, 1
	move	$a0, $zero
	bgtz	$a6, .LBB2_16
	b	.LBB2_181
.LBB2_4:
	bltu	$a1, $a0, .LBB2_11
# %bb.5:
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$t2, $a0, %pc_lo12(x_block_size)
	addi.w	$t1, $t2, 1
	beqz	$a7, .LBB2_70
# %bb.6:
	move	$t3, $t1
	move	$t0, $t2
	ori	$t2, $zero, 1
	move	$t1, $zero
	bgtz	$a6, .LBB2_71
	b	.LBB2_181
.LBB2_7:
	bstrins.d	$a2, $zero, 0, 0
	ori	$a0, $zero, 4
	beq	$a2, $a0, .LBB2_68
# %bb.8:
	ori	$a0, $zero, 2
	bne	$a2, $a0, .LBB2_181
# %bb.9:
	pcalau12i	$a1, %pc_hi20(y_block_size)
	ld.w	$fp, $a1, %pc_lo12(y_block_size)
	addi.w	$a4, $fp, 1
	bne	$a7, $a0, .LBB2_81
# %bb.10:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB2_82
.LBB2_11:
	bstrins.d	$a2, $zero, 0, 0
	ori	$a0, $zero, 4
	beq	$a2, $a0, .LBB2_79
# %bb.12:
	ori	$a0, $zero, 2
	bne	$a2, $a0, .LBB2_181
# %bb.13:
	pcalau12i	$a1, %pc_hi20(y_block_size)
	ld.w	$t2, $a1, %pc_lo12(y_block_size)
	addi.w	$t1, $t2, 1
	bne	$a7, $a0, .LBB2_161
# %bb.14:
	move	$t3, $zero
	ori	$t0, $zero, 1
	b	.LBB2_162
.LBB2_15:
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	ori	$t0, $zero, 1
	blez	$a6, .LBB2_181
.LBB2_16:                               # %.lr.ph1196
	pcalau12i	$a1, %pc_hi20(z_block_half)
	ld.w	$a7, $a1, %pc_lo12(z_block_half)
	pcalau12i	$a1, %pc_hi20(y_block_half)
	ld.w	$t2, $a1, %pc_lo12(y_block_half)
	add.w	$a1, $a6, $a5
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	mul.w	$a1, $a7, $a3
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	mul.w	$t1, $t2, $a2
	pcalau12i	$a2, %pc_hi20(z_block_size)
	ld.w	$a2, $a2, %pc_lo12(z_block_size)
	pcalau12i	$a4, %pc_hi20(y_block_size)
	ld.w	$a4, $a4, %pc_lo12(y_block_size)
	addi.w	$a6, $a7, 1
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a2, $t2, 1
	addi.w	$a4, $a4, 1
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a4, $t7, 184
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a4, $t8, 184
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	add.w	$a4, $a6, $a1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	add.w	$a4, $a2, $t1
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a6, $a6, 31, 0
	bstrpick.d	$fp, $a2, 31, 0
	slli.d	$s0, $a1, 3
	add.d	$a1, $a1, $a6
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$t2, $a6, -1
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a1, $a6, 4
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $t2
	bstrins.d	$a1, $zero, 1, 0
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	move	$a2, $t2
	bstrins.d	$a2, $a1, 1, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s7, $s0, 8
	slli.d	$a1, $t0, 3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	vldi	$vr0, -944
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	xvldi	$xr1, -944
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               # %.loopexit1098
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a5, $a5, 1
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bge	$a5, $a0, .LBB2_181
.LBB2_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_26 Depth 2
                                        #     Child Loop BB2_35 Depth 2
                                        #     Child Loop BB2_38 Depth 2
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_46 Depth 3
                                        #     Child Loop BB2_52 Depth 2
                                        #     Child Loop BB2_55 Depth 2
                                        #     Child Loop BB2_64 Depth 2
                                        #     Child Loop BB2_67 Depth 2
	slli.d	$a1, $a5, 3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$s6, $a0, $a1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $s6, $a0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$s3, $a2, $a1
	slli.d	$a1, $t1, 3
	ldx.d	$t0, $a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a6, $s3, $a1
	fldx.d	$fa2, $t0, $s0
	ld.d	$t4, $a6, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $t4, 0
	blez	$a7, .LBB2_27
# %bb.19:                               # %.lr.ph1169.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_25
# %bb.20:                               # %vector.memcheck1554
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a2, $t4, 8
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $t0, $a4
	bgeu	$a2, $a4, .LBB2_22
# %bb.21:                               # %vector.memcheck1554
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $t4, $a2
	addi.d	$a2, $a2, -8
	add.d	$a4, $t0, $s0
	addi.d	$a4, $a4, 8
	bltu	$a4, $a2, .LBB2_25
.LBB2_22:                               # %vector.body1567.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a1, $t0, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_23:                               # %vector.body1567
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a1, 0
	xvfmul.d	$xr3, $xr3, $xr1
	xvslli.d	$xr4, $xr2, 4
	xvpickve2gr.d	$a4, $xr4, 0
	add.d	$a4, $t4, $a4
	xvpickve2gr.d	$t3, $xr4, 1
	add.d	$t3, $t4, $t3
	xvpickve2gr.d	$t5, $xr4, 2
	add.d	$t5, $t4, $t5
	xvpickve2gr.d	$t6, $xr4, 3
	add.d	$t6, $t4, $t6
	xvstelm.d	$xr3, $a4, 0, 0
	xvstelm.d	$xr3, $t3, 0, 1
	xvstelm.d	$xr3, $t5, 0, 2
	xvstelm.d	$xr3, $t6, 0, 3
	xvstelm.d	$xr3, $a4, -8, 0
	xvstelm.d	$xr3, $t3, -8, 1
	xvstelm.d	$xr3, $t5, -8, 2
	xvstelm.d	$xr3, $t6, -8, 3
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_23
# %bb.24:                               # %middle.block1574
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	beq	$t2, $a2, .LBB2_27
	.p2align	4, , 16
.LBB2_25:                               # %.lr.ph1169.preheader1580
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a2, $t0, $s0
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $t4, 4
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB2_26:                               # %.lr.ph1169
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_26
.LBB2_27:                               # %._crit_edge1170
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t3, $a1, 3
	fldx.d	$fa2, $t0, $t3
	fmul.d	$fa2, $fa2, $fa0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	slli.d	$s1, $a1, 3
	fstx.d	$fa2, $t4, $s1
	slli.d	$s4, $s2, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_39
# %bb.28:                               #   in Loop: Header=BB2_18 Depth=1
	ldx.d	$a1, $s3, $s4
	ld.d	$t4, $a1, 0
	beqz	$a3, .LBB2_30
# %bb.29:                               #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s6, $a1
	fldx.d	$fa2, $t4, $s1
	ld.d	$t0, $a1, 0
	fstx.d	$fa2, $t0, $s1
	bgtz	$a7, .LBB2_31
	b	.LBB2_39
.LBB2_30:                               #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s6, $a1
	fld.d	$fa2, $t4, 0
	ld.d	$t0, $a1, 0
	fst.d	$fa2, $t0, 0
	blez	$a7, .LBB2_39
.LBB2_31:                               # %.lr.ph1174
                                        #   in Loop: Header=BB2_18 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_37
# %bb.32:                               # %vector.memcheck1532
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a2, $t0, $s0
	addi.d	$a2, $a2, 8
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $t4, $a4
	addi.d	$a4, $a4, -8
	bgeu	$a2, $a4, .LBB2_34
# %bb.33:                               # %vector.memcheck1532
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $t0, $a2
	addi.d	$a4, $t4, 8
	bltu	$a4, $a2, .LBB2_37
.LBB2_34:                               # %vector.body1545.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$t5, $t0, $s7
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_35:                               # %vector.body1545
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr2, 4
	xvpickve2gr.d	$a1, $xr3, 0
	add.d	$a2, $t4, $a1
	xvpickve2gr.d	$a4, $xr3, 1
	add.d	$t7, $t4, $a4
	xvpickve2gr.d	$t8, $xr3, 2
	add.d	$s2, $t4, $t8
	xvpickve2gr.d	$s5, $xr3, 3
	fld.d	$fa3, $a2, -8
	fld.d	$fa4, $t7, -8
	fld.d	$fa5, $s2, -8
	add.d	$a2, $t4, $s5
	fld.d	$fa6, $a2, -8
	xvinsve0.d	$xr3, $xr4, 1
	xvinsve0.d	$xr3, $xr5, 2
	fldx.d	$fa4, $t4, $a1
	fldx.d	$fa5, $t4, $a4
	fldx.d	$fa7, $t4, $t8
	fldx.d	$ft0, $t4, $s5
	xvinsve0.d	$xr3, $xr6, 3
	xvinsve0.d	$xr4, $xr5, 1
	xvinsve0.d	$xr4, $xr7, 2
	xvinsve0.d	$xr4, $xr8, 3
	xvfadd.d	$xr3, $xr3, $xr4
	xvst	$xr3, $t5, 0
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$t6, $t6, -4
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB2_35
# %bb.36:                               # %middle.block1551
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	beq	$t2, $a2, .LBB2_39
	.p2align	4, , 16
.LBB2_37:                               # %scalar.ph1540.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a2, $t0, $s0
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $t4, 4
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a1, $t0, $a1
	.p2align	4, , 16
.LBB2_38:                               # %scalar.ph1540
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_38
.LBB2_39:                               # %.loopexit1099
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	blez	$a1, .LBB2_47
# %bb.40:                               # %.lr.ph1183
                                        #   in Loop: Header=BB2_18 Depth=1
	ldx.d	$t4, $s3, $s4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$t5, $a1, $s6, 3
	ori	$t6, $zero, 1
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_41:                               # %._crit_edge1179
                                        #   in Loop: Header=BB2_42 Depth=2
	fldx.d	$fa2, $t7, $t3
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $s8, $s1
	addi.d	$t6, $t6, 1
	fstx.d	$fa2, $t0, $s1
	beq	$t6, $fp, .LBB2_47
.LBB2_42:                               #   Parent Loop BB2_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_46 Depth 3
	add.d	$a1, $t6, $t1
	slli.d	$a1, $a1, 3
	ldx.d	$t7, $a0, $a1
	fldx.d	$fa2, $t7, $s0
	fmul.d	$fa2, $fa2, $fa0
	slli.d	$a2, $t6, 4
	ldx.d	$s8, $a6, $a2
	addi.d	$a2, $a2, -8
	ldx.d	$t0, $a6, $a2
	slli.d	$t8, $t6, 1
	ldx.d	$a4, $t4, $a2
	fst.d	$fa2, $s8, 0
	fst.d	$fa2, $t0, 0
	slli.d	$a2, $t8, 3
	beqz	$a3, .LBB2_44
# %bb.43:                               #   in Loop: Header=BB2_42 Depth=2
	ldx.d	$t8, $t4, $a2
	ld.d	$a2, $t5, 0
	fldx.d	$fa2, $a4, $s1
	fldx.d	$fa3, $t8, $s1
	ldx.d	$a1, $a2, $a1
	fadd.d	$fa2, $fa2, $fa3
	fstx.d	$fa2, $a1, $s1
	bgtz	$a7, .LBB2_45
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_44:                               #   in Loop: Header=BB2_42 Depth=2
	ldx.d	$t8, $t4, $a2
	ld.d	$a2, $t5, 0
	fld.d	$fa2, $a4, 0
	fld.d	$fa3, $t8, 0
	ldx.d	$a1, $a2, $a1
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a1, 0
	blez	$a7, .LBB2_41
.LBB2_45:                               # %.lr.ph1178.preheader
                                        #   in Loop: Header=BB2_42 Depth=2
	add.d	$ra, $t7, $s7
	add.d	$s5, $a1, $s7
	addi.d	$a1, $s8, 16
	addi.d	$a2, $t0, 16
	addi.d	$a4, $a4, 16
	addi.d	$t8, $t8, 16
	move	$s2, $t2
	.p2align	4, , 16
.LBB2_46:                               # %.lr.ph1178
                                        #   Parent Loop BB2_18 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $ra, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a1, 0
	fst.d	$fa2, $a1, -8
	fst.d	$fa2, $a2, 0
	fst.d	$fa2, $a2, -8
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fld.d	$fa4, $t8, -8
	fld.d	$fa5, $t8, 0
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fst.d	$fa2, $s5, 0
	addi.d	$ra, $ra, 8
	addi.d	$s5, $s5, 8
	addi.d	$s2, $s2, -1
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, 16
	addi.d	$t8, $t8, 16
	bnez	$s2, .LBB2_46
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_47:                               # %._crit_edge1184
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$t0, $a0, $a1
	fldx.d	$fa2, $t0, $s0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ldx.d	$a6, $a6, $a0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a6, 0
	blez	$a7, .LBB2_56
# %bb.48:                               # %.lr.ph1188.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_54
# %bb.49:                               # %vector.memcheck1509
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a2, $a6, 8
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $t0, $a4
	bgeu	$a2, $a4, .LBB2_51
# %bb.50:                               # %vector.memcheck1509
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a6, $a2
	addi.d	$a2, $a2, -8
	add.d	$a4, $t0, $s0
	addi.d	$a4, $a4, 8
	bltu	$a4, $a2, .LBB2_54
.LBB2_51:                               # %vector.body1522.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a1, $t0, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_52:                               # %vector.body1522
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a1, 0
	xvfmul.d	$xr3, $xr3, $xr1
	xvslli.d	$xr4, $xr2, 4
	xvpickve2gr.d	$a4, $xr4, 0
	add.d	$a4, $a6, $a4
	xvpickve2gr.d	$t4, $xr4, 1
	add.d	$t4, $a6, $t4
	xvpickve2gr.d	$t5, $xr4, 2
	add.d	$t5, $a6, $t5
	xvpickve2gr.d	$t6, $xr4, 3
	add.d	$t6, $a6, $t6
	xvstelm.d	$xr3, $a4, 0, 0
	xvstelm.d	$xr3, $t4, 0, 1
	xvstelm.d	$xr3, $t5, 0, 2
	xvstelm.d	$xr3, $t6, 0, 3
	xvstelm.d	$xr3, $a4, -8, 0
	xvstelm.d	$xr3, $t4, -8, 1
	xvstelm.d	$xr3, $t5, -8, 2
	xvstelm.d	$xr3, $t6, -8, 3
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_52
# %bb.53:                               # %middle.block1529
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	beq	$t2, $a2, .LBB2_56
	.p2align	4, , 16
.LBB2_54:                               # %.lr.ph1188.preheader1579
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a2, $t0, $s0
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $a6, 4
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a1, $t4, $a1
	.p2align	4, , 16
.LBB2_55:                               # %.lr.ph1188
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_55
.LBB2_56:                               # %._crit_edge1189
                                        #   in Loop: Header=BB2_18 Depth=1
	fldx.d	$fa2, $t0, $t3
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a6, $s1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB2_17
# %bb.57:                               #   in Loop: Header=BB2_18 Depth=1
	ldx.d	$a1, $s3, $s4
	ldx.d	$a6, $a1, $a0
	beqz	$a3, .LBB2_59
# %bb.58:                               #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s6, $a1
	fldx.d	$fa2, $a6, $s1
	ldx.d	$a0, $a1, $a0
	fstx.d	$fa2, $a0, $s1
	bgtz	$a7, .LBB2_60
	b	.LBB2_17
.LBB2_59:                               #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s6, $a1
	fld.d	$fa2, $a6, 0
	ldx.d	$a0, $a1, $a0
	fst.d	$fa2, $a0, 0
	blez	$a7, .LBB2_17
.LBB2_60:                               # %.lr.ph1193
                                        #   in Loop: Header=BB2_18 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_66
# %bb.61:                               # %vector.memcheck1487
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a2, $a0, $s0
	addi.d	$a2, $a2, 8
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
	addi.d	$a4, $a4, -8
	bgeu	$a2, $a4, .LBB2_63
# %bb.62:                               # %vector.memcheck1487
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a0, $a2
	addi.d	$a4, $a6, 8
	bltu	$a4, $a2, .LBB2_66
.LBB2_63:                               # %vector.body1500.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$t0, $a0, $s7
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_64:                               # %vector.body1500
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr2, 4
	xvpickve2gr.d	$a1, $xr3, 0
	add.d	$a2, $a6, $a1
	xvpickve2gr.d	$a4, $xr3, 1
	add.d	$t4, $a6, $a4
	xvpickve2gr.d	$t5, $xr3, 2
	add.d	$t6, $a6, $t5
	xvpickve2gr.d	$t7, $xr3, 3
	fld.d	$fa3, $a2, -8
	fld.d	$fa4, $t4, -8
	fld.d	$fa5, $t6, -8
	add.d	$a2, $a6, $t7
	fld.d	$fa6, $a2, -8
	xvinsve0.d	$xr3, $xr4, 1
	xvinsve0.d	$xr3, $xr5, 2
	fldx.d	$fa4, $a6, $a1
	fldx.d	$fa5, $a6, $a4
	fldx.d	$fa7, $a6, $t5
	fldx.d	$ft0, $a6, $t7
	xvinsve0.d	$xr3, $xr6, 3
	xvinsve0.d	$xr4, $xr5, 1
	xvinsve0.d	$xr4, $xr7, 2
	xvinsve0.d	$xr4, $xr8, 3
	xvfadd.d	$xr3, $xr3, $xr4
	xvst	$xr3, $t0, 0
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$t3, $t3, -4
	addi.d	$t0, $t0, 32
	bnez	$t3, .LBB2_64
# %bb.65:                               # %middle.block1506
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	beq	$t2, $a2, .LBB2_17
	.p2align	4, , 16
.LBB2_66:                               # %scalar.ph1495.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a0, $a0, $s0
	alsl.d	$a0, $a1, $a0, 3
	alsl.d	$a2, $a1, $a6, 4
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a1, $a4, $a1
	.p2align	4, , 16
.LBB2_67:                               # %scalar.ph1495
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, -8
	fld.d	$fa3, $a2, 0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB2_67
	b	.LBB2_17
.LBB2_68:
	pcalau12i	$a1, %pc_hi20(z_block_size)
	ld.w	$t2, $a1, %pc_lo12(z_block_size)
	addi.w	$t3, $t2, 1
	bne	$a7, $a0, .LBB2_135
# %bb.69:
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB2_136
.LBB2_70:
	move	$t3, $zero
	ori	$t0, $zero, 1
	blez	$a6, .LBB2_181
.LBB2_71:                               # %.preheader1091.lr.ph
	pcalau12i	$a0, %pc_hi20(y_block_half)
	ld.w	$a4, $a0, %pc_lo12(y_block_half)
	blez	$a4, .LBB2_181
# %bb.72:                               # %.preheader1091.lr.ph
	pcalau12i	$a0, %pc_hi20(z_block_half)
	ld.w	$a7, $a0, %pc_lo12(z_block_half)
	blez	$a7, .LBB2_181
# %bb.73:                               # %.preheader1091.lr.ph.split.split
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a0, $a4, $a0
	mul.w	$t4, $a7, $a3
	add.w	$a1, $a6, $a5
	ld.d	$a2, $t7, 184
	ld.d	$a3, $t8, 184
	addi.d	$a6, $a7, 1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$a7, $a6, 31, 0
	slli.d	$a6, $t4, 3
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	slli.d	$t0, $t0, 3
	slli.d	$t1, $t1, 3
	slli.d	$t2, $t2, 3
	slli.d	$t3, $t3, 3
	vldi	$vr0, -944
	.p2align	4, , 16
.LBB2_74:                               # %.preheader1091
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_75 Depth 2
                                        #       Child Loop BB2_76 Depth 3
	slli.d	$t4, $a5, 3
	ldx.d	$t7, $a2, $t4
	ldx.d	$t6, $a3, $t4
	ldx.d	$t4, $t7, $t0
	ldx.d	$t5, $t6, $t1
	ldx.d	$t6, $t6, $t2
	ldx.d	$t7, $t7, $t3
	ori	$t8, $zero, 1
	.p2align	4, , 16
.LBB2_75:                               # %.preheader
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_76 Depth 3
	add.d	$fp, $t8, $a0
	slli.d	$fp, $fp, 3
	ldx.d	$s0, $t4, $fp
	slli.d	$s1, $t8, 4
	ldx.d	$s2, $t5, $s1
	addi.d	$s3, $s1, -8
	ldx.d	$s4, $t5, $s3
	ldx.d	$s5, $t7, $fp
	ldx.d	$s3, $t6, $s3
	ldx.d	$s6, $t6, $s1
	add.d	$fp, $s0, $a6
	add.d	$s0, $s5, $a6
	addi.d	$s1, $s2, 16
	addi.d	$s2, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s6, 16
	move	$s5, $a7
	.p2align	4, , 16
.LBB2_76:                               #   Parent Loop BB2_74 Depth=1
                                        #     Parent Loop BB2_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $s1, 0
	fst.d	$fa1, $s1, -8
	fst.d	$fa1, $s2, 0
	fst.d	$fa1, $s2, -8
	fld.d	$fa1, $s3, -8
	fld.d	$fa2, $s3, 0
	fld.d	$fa3, $s4, -8
	fld.d	$fa4, $s4, 0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fst.d	$fa1, $s0, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 8
	addi.d	$s5, $s5, -1
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s4, 16
	bnez	$s5, .LBB2_76
# %bb.77:                               # %._crit_edge1220
                                        #   in Loop: Header=BB2_75 Depth=2
	addi.d	$t8, $t8, 1
	bne	$t8, $a4, .LBB2_75
# %bb.78:                               # %._crit_edge1223.split
                                        #   in Loop: Header=BB2_74 Depth=1
	addi.d	$a5, $a5, 1
	blt	$a5, $a1, .LBB2_74
	b	.LBB2_181
.LBB2_79:
	pcalau12i	$a1, %pc_hi20(z_block_size)
	ld.w	$t2, $a1, %pc_lo12(z_block_size)
	addi.w	$t1, $t2, 1
	bne	$a7, $a0, .LBB2_171
# %bb.80:
	move	$t3, $zero
	ori	$t0, $zero, 1
	b	.LBB2_172
.LBB2_81:
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	move	$a4, $zero
.LBB2_82:
	blez	$a6, .LBB2_181
# %bb.83:                               # %.lr.ph1165
	pcalau12i	$a0, %pc_hi20(z_block_half)
	ld.w	$t1, $a0, %pc_lo12(z_block_half)
	pcalau12i	$a0, %pc_hi20(x_block_half)
	ld.w	$a7, $a0, %pc_lo12(x_block_half)
	add.w	$a0, $a6, $a5
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.w	$a0, $t1, $a3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a6, $a7, $a1
	pcalau12i	$a1, %pc_hi20(z_block_size)
	ld.w	$a1, $a1, %pc_lo12(z_block_size)
	pcalau12i	$a2, %pc_hi20(x_block_size)
	ld.w	$a2, $a2, %pc_lo12(x_block_size)
	addi.w	$t0, $t1, 1
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a1, $a7, 1
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a2, $t7, 184
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $t8, 184
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	add.w	$a2, $t0, $a0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	add.w	$a2, $a1, $a6
	st.d	$t0, $sp, 160                   # 8-byte Folded Spill
	bstrpick.d	$a6, $t0, 31, 0
	bstrpick.d	$s1, $a1, 31, 0
	slli.d	$s2, $a0, 3
	add.d	$a0, $a0, $a6
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s0, $a6, -1
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $a6, 4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s0
	bstrins.d	$a0, $zero, 1, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	move	$a1, $s0
	bstrins.d	$a1, $a0, 1, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$ra, $s2, 8
	vldi	$vr0, -944
	slli.d	$a0, $a2, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	xvldi	$xr1, -944
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	b	.LBB2_85
	.p2align	4, , 16
.LBB2_84:                               # %.loopexit1101
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	move	$fp, $t4
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bge	$a5, $a0, .LBB2_181
.LBB2_85:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_90 Depth 2
                                        #     Child Loop BB2_93 Depth 2
                                        #     Child Loop BB2_102 Depth 2
                                        #     Child Loop BB2_105 Depth 2
                                        #     Child Loop BB2_109 Depth 2
                                        #       Child Loop BB2_113 Depth 3
                                        #     Child Loop BB2_119 Depth 2
                                        #     Child Loop BB2_122 Depth 2
                                        #     Child Loop BB2_131 Depth 2
                                        #     Child Loop BB2_134 Depth 2
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a5, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$s8, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s8, $a1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	slli.d	$s6, $a2, 3
	ldx.d	$t0, $a1, $s6
	ld.d	$t5, $a0, 0
	fldx.d	$fa2, $t0, $s2
	slli.d	$a7, $a4, 3
	ldx.d	$t6, $t5, $a7
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $t6, 0
	blez	$t1, .LBB2_94
# %bb.86:                               # %.lr.ph1138.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_92
# %bb.87:                               # %vector.memcheck1464
                                        #   in Loop: Header=BB2_85 Depth=1
	addi.d	$a2, $t6, 8
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $t0, $a4
	bgeu	$a2, $a4, .LBB2_89
# %bb.88:                               # %vector.memcheck1464
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $t6, $a2
	addi.d	$a2, $a2, -8
	add.d	$a4, $t0, $s2
	addi.d	$a4, $a4, 8
	bltu	$a4, $a2, .LBB2_92
.LBB2_89:                               # %vector.body1477.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a1, $t0, $ra
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_90:                               # %vector.body1477
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a1, 0
	xvfmul.d	$xr3, $xr3, $xr1
	xvslli.d	$xr4, $xr2, 4
	xvpickve2gr.d	$a4, $xr4, 0
	add.d	$a4, $t6, $a4
	xvpickve2gr.d	$a6, $xr4, 1
	add.d	$a6, $t6, $a6
	xvpickve2gr.d	$t2, $xr4, 2
	add.d	$t2, $t6, $t2
	xvpickve2gr.d	$t3, $xr4, 3
	add.d	$t3, $t6, $t3
	xvstelm.d	$xr3, $a4, 0, 0
	xvstelm.d	$xr3, $a6, 0, 1
	xvstelm.d	$xr3, $t2, 0, 2
	xvstelm.d	$xr3, $t3, 0, 3
	xvstelm.d	$xr3, $a4, -8, 0
	xvstelm.d	$xr3, $a6, -8, 1
	xvstelm.d	$xr3, $t2, -8, 2
	xvstelm.d	$xr3, $t3, -8, 3
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_90
# %bb.91:                               # %middle.block1484
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$s0, $a2, .LBB2_94
	.p2align	4, , 16
.LBB2_92:                               # %.lr.ph1138.preheader1583
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $t0, $s2
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $t6, 4
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $a5, $a1
	.p2align	4, , 16
.LBB2_93:                               # %.lr.ph1138
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_93
.LBB2_94:                               # %._crit_edge1139
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a6, $a1, 3
	fldx.d	$fa2, $t0, $a6
	fmul.d	$fa2, $fa2, $fa0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$s3, $a1, 3
	fstx.d	$fa2, $t6, $s3
	move	$t4, $fp
	slli.d	$t0, $fp, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	slli.d	$s5, $a1, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_106
# %bb.95:                               #   in Loop: Header=BB2_85 Depth=1
	ldx.d	$t5, $t5, $t0
	beqz	$a3, .LBB2_97
# %bb.96:                               #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $s8, 0
	fldx.d	$fa2, $t5, $s3
	ldx.d	$t6, $a1, $s5
	fstx.d	$fa2, $t6, $s3
	bgtz	$t1, .LBB2_98
	b	.LBB2_106
.LBB2_97:                               #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $s8, 0
	fld.d	$fa2, $t5, 0
	ldx.d	$t6, $a1, $s5
	fst.d	$fa2, $t6, 0
	blez	$t1, .LBB2_106
.LBB2_98:                               # %.lr.ph1143
                                        #   in Loop: Header=BB2_85 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_104
# %bb.99:                               # %vector.memcheck1442
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $t6, $s2
	addi.d	$a2, $a2, 8
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a4, $t5, $a4
	addi.d	$a4, $a4, -8
	bgeu	$a2, $a4, .LBB2_101
# %bb.100:                              # %vector.memcheck1442
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $t6, $a2
	addi.d	$a4, $t5, 8
	bltu	$a4, $a2, .LBB2_104
.LBB2_101:                              # %vector.body1455.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a2, $t6, $ra
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_102:                              # %vector.body1455
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr2, 4
	xvpickve2gr.d	$a1, $xr3, 0
	add.d	$a4, $t5, $a1
	xvpickve2gr.d	$t2, $xr3, 1
	add.d	$t3, $t5, $t2
	xvpickve2gr.d	$t8, $xr3, 2
	add.d	$fp, $t5, $t8
	xvpickve2gr.d	$s4, $xr3, 3
	fld.d	$fa3, $a4, -8
	fld.d	$fa4, $t3, -8
	fld.d	$fa5, $fp, -8
	add.d	$a4, $t5, $s4
	fld.d	$fa6, $a4, -8
	xvinsve0.d	$xr3, $xr4, 1
	xvinsve0.d	$xr3, $xr5, 2
	fldx.d	$fa4, $t5, $a1
	fldx.d	$fa5, $t5, $t2
	fldx.d	$fa7, $t5, $t8
	fldx.d	$ft0, $t5, $s4
	xvinsve0.d	$xr3, $xr6, 3
	xvinsve0.d	$xr4, $xr5, 1
	xvinsve0.d	$xr4, $xr7, 2
	xvinsve0.d	$xr4, $xr8, 3
	xvfadd.d	$xr3, $xr3, $xr4
	xvst	$xr3, $a2, 0
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$t7, $t7, -4
	addi.d	$a2, $a2, 32
	bnez	$t7, .LBB2_102
# %bb.103:                              # %middle.block1461
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$s0, $a2, .LBB2_106
	.p2align	4, , 16
.LBB2_104:                              # %scalar.ph1450.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $t6, $s2
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $t5, 4
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $a5, $a1
	.p2align	4, , 16
.LBB2_105:                              # %scalar.ph1450
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_105
.LBB2_106:                              # %.loopexit1102
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	blez	$a1, .LBB2_114
# %bb.107:                              # %.lr.ph1152.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$t5, $a1, $s8, 3
	ori	$t6, $zero, 1
	b	.LBB2_109
	.p2align	4, , 16
.LBB2_108:                              # %._crit_edge1148
                                        #   in Loop: Header=BB2_109 Depth=2
	fldx.d	$fa2, $t7, $a6
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a2, $s3
	addi.d	$t6, $t6, 1
	fstx.d	$fa2, $t8, $s3
	beq	$t6, $s1, .LBB2_114
.LBB2_109:                              # %.lr.ph1152
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_113 Depth 3
	slli.d	$a1, $t6, 3
	ldx.d	$a4, $t5, $a1
	ldx.d	$t7, $a4, $s6
	slli.d	$a1, $t6, 4
	alsl.d	$a2, $t6, $a0, 4
	ldx.d	$t2, $a0, $a1
	ld.d	$a1, $a2, -8
	fldx.d	$fa2, $t7, $s2
	ldx.d	$a2, $t2, $a7
	ldx.d	$t8, $a1, $a7
	ldx.d	$a1, $a1, $t0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a2, 0
	fst.d	$fa2, $t8, 0
	beqz	$a3, .LBB2_111
# %bb.110:                              #   in Loop: Header=BB2_109 Depth=2
	ldx.d	$t3, $t2, $t0
	fldx.d	$fa2, $a1, $s3
	fldx.d	$fa3, $t3, $s3
	ldx.d	$a4, $a4, $s5
	fadd.d	$fa2, $fa2, $fa3
	fstx.d	$fa2, $a4, $s3
	bgtz	$t1, .LBB2_112
	b	.LBB2_108
	.p2align	4, , 16
.LBB2_111:                              #   in Loop: Header=BB2_109 Depth=2
	ldx.d	$t3, $t2, $t0
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $t3, 0
	ldx.d	$a4, $a4, $s5
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a4, 0
	blez	$t1, .LBB2_108
.LBB2_112:                              # %.lr.ph1147.preheader
                                        #   in Loop: Header=BB2_109 Depth=2
	add.d	$fp, $t7, $ra
	add.d	$t2, $a4, $ra
	addi.d	$s7, $a2, 16
	addi.d	$a4, $t8, 16
	addi.d	$a1, $a1, 16
	addi.d	$t3, $t3, 16
	move	$s4, $s0
	.p2align	4, , 16
.LBB2_113:                              # %.lr.ph1147
                                        #   Parent Loop BB2_85 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $fp, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $s7, 0
	fst.d	$fa2, $s7, -8
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$fa4, $t3, -8
	fld.d	$fa5, $t3, 0
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fst.d	$fa2, $t2, 0
	addi.d	$fp, $fp, 8
	addi.d	$t2, $t2, 8
	addi.d	$s4, $s4, -1
	addi.d	$s7, $s7, 16
	addi.d	$a4, $a4, 16
	addi.d	$a1, $a1, 16
	addi.d	$t3, $t3, 16
	bnez	$s4, .LBB2_113
	b	.LBB2_108
	.p2align	4, , 16
.LBB2_114:                              # %._crit_edge1153
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a1, $s8, $a1
	ldx.d	$t6, $a1, $s6
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t5, $a1, 3
	ldx.d	$a0, $a0, $t5
	fldx.d	$fa2, $t6, $s2
	ldx.d	$a7, $a0, $a7
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a7, 0
	blez	$t1, .LBB2_123
# %bb.115:                              # %.lr.ph1157.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_121
# %bb.116:                              # %vector.memcheck1420
                                        #   in Loop: Header=BB2_85 Depth=1
	addi.d	$a2, $a7, 8
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $t6, $a4
	bgeu	$a2, $a4, .LBB2_118
# %bb.117:                              # %vector.memcheck1420
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a7, $a2
	addi.d	$a2, $a2, -8
	add.d	$a4, $t6, $s2
	addi.d	$a4, $a4, 8
	bltu	$a4, $a2, .LBB2_121
.LBB2_118:                              # %vector.body1433.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a1, $t6, $ra
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_119:                              # %vector.body1433
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a1, 0
	xvfmul.d	$xr3, $xr3, $xr1
	xvslli.d	$xr4, $xr2, 4
	xvpickve2gr.d	$a4, $xr4, 0
	add.d	$a4, $a7, $a4
	xvpickve2gr.d	$t2, $xr4, 1
	add.d	$t2, $a7, $t2
	xvpickve2gr.d	$t3, $xr4, 2
	add.d	$t3, $a7, $t3
	xvpickve2gr.d	$t7, $xr4, 3
	add.d	$t7, $a7, $t7
	xvstelm.d	$xr3, $a4, 0, 0
	xvstelm.d	$xr3, $t2, 0, 1
	xvstelm.d	$xr3, $t3, 0, 2
	xvstelm.d	$xr3, $t7, 0, 3
	xvstelm.d	$xr3, $a4, -8, 0
	xvstelm.d	$xr3, $t2, -8, 1
	xvstelm.d	$xr3, $t3, -8, 2
	xvstelm.d	$xr3, $t7, -8, 3
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_119
# %bb.120:                              # %middle.block1439
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$s0, $a2, .LBB2_123
	.p2align	4, , 16
.LBB2_121:                              # %.lr.ph1157.preheader1582
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $t6, $s2
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $a7, 4
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $a5, $a1
	.p2align	4, , 16
.LBB2_122:                              # %.lr.ph1157
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_122
.LBB2_123:                              # %._crit_edge1158
                                        #   in Loop: Header=BB2_85 Depth=1
	fldx.d	$fa2, $t6, $a6
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a7, $s3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB2_84
# %bb.124:                              #   in Loop: Header=BB2_85 Depth=1
	ldx.d	$a0, $a0, $t0
	beqz	$a3, .LBB2_126
# %bb.125:                              #   in Loop: Header=BB2_85 Depth=1
	ldx.d	$a1, $s8, $t5
	fldx.d	$fa2, $a0, $s3
	ldx.d	$a6, $a1, $s5
	fstx.d	$fa2, $a6, $s3
	bgtz	$t1, .LBB2_127
	b	.LBB2_84
.LBB2_126:                              #   in Loop: Header=BB2_85 Depth=1
	ldx.d	$a1, $s8, $t5
	fld.d	$fa2, $a0, 0
	ldx.d	$a6, $a1, $s5
	fst.d	$fa2, $a6, 0
	blez	$t1, .LBB2_84
.LBB2_127:                              # %.lr.ph1162
                                        #   in Loop: Header=BB2_85 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_133
# %bb.128:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $a6, $s2
	addi.d	$a2, $a2, 8
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a4, $a0, $a4
	addi.d	$a4, $a4, -8
	bgeu	$a2, $a4, .LBB2_130
# %bb.129:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a6, $a2
	addi.d	$a4, $a0, 8
	bltu	$a4, $a2, .LBB2_133
.LBB2_130:                              # %vector.body.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a2, $a6, $ra
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_131:                              # %vector.body
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr2, 4
	xvpickve2gr.d	$a1, $xr3, 0
	add.d	$a4, $a0, $a1
	xvpickve2gr.d	$t0, $xr3, 1
	add.d	$t2, $a0, $t0
	xvpickve2gr.d	$t3, $xr3, 2
	add.d	$t5, $a0, $t3
	xvpickve2gr.d	$t6, $xr3, 3
	fld.d	$fa3, $a4, -8
	fld.d	$fa4, $t2, -8
	fld.d	$fa5, $t5, -8
	add.d	$a4, $a0, $t6
	fld.d	$fa6, $a4, -8
	xvinsve0.d	$xr3, $xr4, 1
	xvinsve0.d	$xr3, $xr5, 2
	fldx.d	$fa4, $a0, $a1
	fldx.d	$fa5, $a0, $t0
	fldx.d	$fa7, $a0, $t3
	fldx.d	$ft0, $a0, $t6
	xvinsve0.d	$xr3, $xr6, 3
	xvinsve0.d	$xr4, $xr5, 1
	xvinsve0.d	$xr4, $xr7, 2
	xvinsve0.d	$xr4, $xr8, 3
	xvfadd.d	$xr3, $xr3, $xr4
	xvst	$xr3, $a2, 0
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$a7, $a7, -4
	addi.d	$a2, $a2, 32
	bnez	$a7, .LBB2_131
# %bb.132:                              # %middle.block
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$s0, $a2, .LBB2_84
	.p2align	4, , 16
.LBB2_133:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $a6, $s2
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a0, $a1, $a0, 4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $a4, $a1
	.p2align	4, , 16
.LBB2_134:                              # %scalar.ph
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a0, -8
	fld.d	$fa3, $a0, 0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB2_134
	b	.LBB2_84
.LBB2_135:
	st.d	$t3, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	ori	$t2, $zero, 1
	move	$t3, $zero
.LBB2_136:
	blez	$a6, .LBB2_181
# %bb.137:                              # %.lr.ph1134
	pcalau12i	$a0, %pc_hi20(y_block_half)
	ld.w	$t0, $a0, %pc_lo12(y_block_half)
	pcalau12i	$a0, %pc_hi20(x_block_half)
	ld.w	$a7, $a0, %pc_lo12(x_block_half)
	add.w	$a0, $a6, $a5
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.w	$a0, $t0, $a3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a6, $a7, $a1
	pcalau12i	$a1, %pc_hi20(y_block_size)
	ld.w	$a1, $a1, %pc_lo12(y_block_size)
	pcalau12i	$a2, %pc_hi20(x_block_size)
	ld.w	$a2, $a2, %pc_lo12(x_block_size)
	addi.d	$a4, $t0, 1
	addi.w	$t1, $a1, 1
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a1, $a7, 1
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a2, $t7, 184
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $t8, 184
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	add.w	$a2, $a4, $a0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	sltui	$a7, $a3, 1
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	add.w	$a2, $a1, $a6
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$fp, $a1, 31, 0
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	masknez	$a1, $t1, $a7
	slli.d	$s0, $a0, 3
	addi.d	$s1, $s0, 8
	addi.d	$t1, $a4, -1
	vldi	$vr0, -944
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$t2, $sp, 128                   # 8-byte Folded Spill
	st.d	$t3, $sp, 120                   # 8-byte Folded Spill
	b	.LBB2_139
	.p2align	4, , 16
.LBB2_138:                              # %.loopexit1104
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bge	$a5, $a0, .LBB2_181
.LBB2_139:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_141 Depth 2
                                        #     Child Loop BB2_145 Depth 2
                                        #     Child Loop BB2_149 Depth 2
                                        #       Child Loop BB2_153 Depth 3
                                        #     Child Loop BB2_156 Depth 2
                                        #     Child Loop BB2_160 Depth 2
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a5, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ldx.d	$a4, $a2, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$s3, $a1, $a0
	ldx.d	$a1, $a4, $s0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	slli.d	$s7, $a2, 3
	fldx.d	$fa1, $a1, $s7
	ld.d	$a1, $a0, 0
	fmul.d	$fa1, $fa1, $fa0
	slli.d	$s8, $t3, 3
	fstx.d	$fa1, $a1, $s8
	blez	$t0, .LBB2_142
# %bb.140:                              # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_139 Depth=1
	add.d	$a2, $a4, $s1
	addi.d	$a6, $a0, 16
	move	$a7, $t1
	.p2align	4, , 16
.LBB2_141:                              # %.lr.ph
                                        #   Parent Loop BB2_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $a2, 0
	fldx.d	$fa1, $t4, $s7
	ld.d	$t4, $a6, 0
	ld.d	$t5, $a6, -8
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $t4, $s8
	fstx.d	$fa1, $t5, $s8
	addi.d	$a2, $a2, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB2_141
.LBB2_142:                              # %._crit_edge
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a4, $a2
	fldx.d	$fa1, $a4, $s7
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a7, $a5, 3
	ldx.d	$a6, $a0, $a7
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a6, $s8
	slli.d	$ra, $t2, 3
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	slli.d	$s5, $a4, 3
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	bnez	$a4, .LBB2_146
# %bb.143:                              #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	masknez	$a6, $a6, $t4
	maskeqz	$a1, $a1, $t4
	or	$a1, $a1, $a6
	fldx.d	$fa1, $a1, $ra
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	fstx.d	$fa1, $a1, $s5
	blez	$t0, .LBB2_146
# %bb.144:                              # %.lr.ph1112
                                        #   in Loop: Header=BB2_139 Depth=1
	add.d	$a1, $a4, $s1
	addi.d	$a0, $a0, 16
	move	$a4, $t1
	.p2align	4, , 16
.LBB2_145:                              #   Parent Loop BB2_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a0, -8
	ld.d	$t4, $a0, 0
	fldx.d	$fa1, $a6, $ra
	fldx.d	$fa2, $t4, $ra
	ld.d	$a6, $a1, 0
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a6, $s5
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 16
	bnez	$a4, .LBB2_145
.LBB2_146:                              # %.loopexit1105
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blez	$a0, .LBB2_154
# %bb.147:                              # %.lr.ph1121.preheader
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	ori	$a6, $zero, 1
	b	.LBB2_149
	.p2align	4, , 16
.LBB2_148:                              # %._crit_edge1117
                                        #   in Loop: Header=BB2_149 Depth=2
	ldx.d	$a0, $a0, $a2
	fldx.d	$fa1, $a0, $s7
	ldx.d	$a0, $t4, $a7
	ldx.d	$a4, $t5, $a7
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a0, $s8
	addi.d	$a6, $a6, 1
	fstx.d	$fa1, $a4, $s8
	beq	$a6, $fp, .LBB2_154
.LBB2_149:                              # %.lr.ph1121
                                        #   Parent Loop BB2_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_153 Depth 3
	slli.d	$a0, $a6, 3
	ldx.d	$a0, $a1, $a0
	ldx.d	$a4, $a0, $s0
	slli.d	$t4, $a6, 4
	alsl.d	$t5, $a6, $s3, 4
	ldx.d	$t4, $s3, $t4
	ld.d	$t5, $t5, -8
	fldx.d	$fa1, $a4, $s7
	ld.d	$a4, $t4, 0
	ld.d	$t6, $t5, 0
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a4, $s8
	fstx.d	$fa1, $t6, $s8
	beqz	$a3, .LBB2_151
# %bb.150:                              #   in Loop: Header=BB2_149 Depth=2
	ldx.d	$a4, $t5, $a7
	ldx.d	$t6, $t4, $a7
	fldx.d	$fa1, $a4, $ra
	fldx.d	$fa2, $t6, $ra
	fadd.d	$fa1, $fa1, $fa2
	alsl.d	$a4, $a5, $a0, 3
	ld.d	$a4, $a4, 0
	fstx.d	$fa1, $a4, $s5
	bgtz	$t0, .LBB2_152
	b	.LBB2_148
	.p2align	4, , 16
.LBB2_151:                              #   in Loop: Header=BB2_149 Depth=2
	fldx.d	$fa1, $t6, $ra
	fldx.d	$fa2, $a4, $ra
	fadd.d	$fa1, $fa1, $fa2
	move	$a4, $a0
	ld.d	$a4, $a4, 0
	fstx.d	$fa1, $a4, $s5
	blez	$t0, .LBB2_148
.LBB2_152:                              # %.lr.ph1116.preheader
                                        #   in Loop: Header=BB2_149 Depth=2
	add.d	$a4, $a0, $s1
	addi.d	$t6, $t4, 16
	addi.d	$t7, $t5, 16
	move	$s2, $t1
	.p2align	4, , 16
.LBB2_153:                              # %.lr.ph1116
                                        #   Parent Loop BB2_139 Depth=1
                                        #     Parent Loop BB2_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $a4, 0
	fldx.d	$fa1, $s4, $s7
	fmul.d	$fa1, $fa1, $fa0
	ld.d	$t2, $t6, 0
	ld.d	$t8, $t6, -8
	ld.d	$s6, $t7, 0
	ld.d	$t3, $t7, -8
	fstx.d	$fa1, $t2, $s8
	fstx.d	$fa1, $t8, $s8
	fstx.d	$fa1, $s6, $s8
	fstx.d	$fa1, $t3, $s8
	fldx.d	$fa1, $t3, $ra
	fldx.d	$fa2, $s6, $ra
	fldx.d	$fa3, $t8, $ra
	fldx.d	$fa4, $t2, $ra
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fstx.d	$fa1, $s4, $s5
	addi.d	$a4, $a4, 8
	addi.d	$t6, $t6, 16
	addi.d	$s2, $s2, -1
	addi.d	$t7, $t7, 16
	bnez	$s2, .LBB2_153
	b	.LBB2_148
	.p2align	4, , 16
.LBB2_154:                              # %._crit_edge1122
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	ldx.d	$a4, $a6, $s0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a1, $a0, 3
	ldx.d	$a0, $s3, $a1
	fldx.d	$fa1, $a4, $s7
	ld.d	$a4, $a0, 0
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a4, $s8
	blez	$t0, .LBB2_157
# %bb.155:                              # %.lr.ph1126.preheader
                                        #   in Loop: Header=BB2_139 Depth=1
	add.d	$t4, $a6, $s1
	addi.d	$t5, $a0, 16
	move	$t6, $t1
	.p2align	4, , 16
.LBB2_156:                              # %.lr.ph1126
                                        #   Parent Loop BB2_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t4, 0
	fldx.d	$fa1, $t2, $s7
	ld.d	$t2, $t5, 0
	ld.d	$t3, $t5, -8
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $t2, $s8
	fstx.d	$fa1, $t3, $s8
	addi.d	$t4, $t4, 8
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 16
	bnez	$t6, .LBB2_156
.LBB2_157:                              # %._crit_edge1127
                                        #   in Loop: Header=BB2_139 Depth=1
	ldx.d	$a2, $a6, $a2
	fldx.d	$fa1, $a2, $s7
	ldx.d	$a2, $a0, $a7
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a2, $s8
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ori	$a6, $zero, 1
	bne	$a5, $a6, .LBB2_138
# %bb.158:                              #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a1, $a5, $a1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$a2, $a4, $a2
	fldx.d	$fa1, $a2, $ra
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a2
	fstx.d	$fa1, $a2, $s5
	blez	$t0, .LBB2_138
# %bb.159:                              # %.lr.ph1131
                                        #   in Loop: Header=BB2_139 Depth=1
	add.d	$a1, $a1, $s1
	addi.d	$a0, $a0, 16
	move	$a2, $t1
	.p2align	4, , 16
.LBB2_160:                              #   Parent Loop BB2_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a0, -8
	ld.d	$a6, $a0, 0
	fldx.d	$fa1, $a4, $ra
	fldx.d	$fa2, $a6, $ra
	ld.d	$a4, $a1, 0
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a4, $s5
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 16
	bnez	$a2, .LBB2_160
	b	.LBB2_138
.LBB2_161:
	move	$t3, $t1
	move	$t0, $t2
	ori	$t2, $zero, 1
	move	$t1, $zero
.LBB2_162:
	blez	$a6, .LBB2_181
# %bb.163:                              # %.preheader1093.lr.ph
	pcalau12i	$a0, %pc_hi20(x_block_half)
	ld.w	$a4, $a0, %pc_lo12(x_block_half)
	blez	$a4, .LBB2_181
# %bb.164:                              # %.preheader1093.lr.ph
	pcalau12i	$a0, %pc_hi20(z_block_half)
	ld.w	$a7, $a0, %pc_lo12(z_block_half)
	blez	$a7, .LBB2_181
# %bb.165:                              # %.preheader1093.lr.ph.split.split
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a0, $a4, $a0
	mul.w	$t4, $a7, $a3
	add.w	$a1, $a6, $a5
	ld.d	$a2, $t7, 184
	ld.d	$a3, $t8, 184
	addi.d	$a6, $a7, 1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$a7, $a6, 31, 0
	slli.d	$a6, $t4, 3
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	slli.d	$t0, $t0, 3
	slli.d	$t1, $t1, 3
	slli.d	$t2, $t2, 3
	slli.d	$t3, $t3, 3
	vldi	$vr0, -944
	.p2align	4, , 16
.LBB2_166:                              # %.preheader1093
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_167 Depth 2
                                        #       Child Loop BB2_168 Depth 3
	slli.d	$t4, $a5, 3
	ldx.d	$t5, $a2, $t4
	ldx.d	$t4, $a3, $t4
	alsl.d	$t5, $a0, $t5, 3
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB2_167:                              # %.preheader1092
                                        #   Parent Loop BB2_166 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_168 Depth 3
	slli.d	$t7, $t6, 3
	ldx.d	$t7, $t5, $t7
	slli.d	$t8, $t6, 4
	alsl.d	$fp, $t6, $t4, 4
	ldx.d	$t8, $t4, $t8
	ld.d	$fp, $fp, -8
	ldx.d	$s0, $t7, $t0
	ldx.d	$s1, $t8, $t1
	ldx.d	$s2, $fp, $t1
	ldx.d	$s3, $t7, $t3
	ldx.d	$s4, $fp, $t2
	ldx.d	$s5, $t8, $t2
	add.d	$t7, $s0, $a6
	add.d	$t8, $s3, $a6
	addi.d	$fp, $s1, 16
	addi.d	$s0, $s2, 16
	addi.d	$s1, $s4, 16
	addi.d	$s2, $s5, 16
	move	$s3, $a7
	.p2align	4, , 16
.LBB2_168:                              #   Parent Loop BB2_166 Depth=1
                                        #     Parent Loop BB2_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $t7, 0
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $fp, 0
	fst.d	$fa1, $fp, -8
	fst.d	$fa1, $s0, 0
	fst.d	$fa1, $s0, -8
	fld.d	$fa1, $s1, -8
	fld.d	$fa2, $s1, 0
	fld.d	$fa3, $s2, -8
	fld.d	$fa4, $s2, 0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fst.d	$fa1, $t8, 0
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 16
	addi.d	$s0, $s0, 16
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	bnez	$s3, .LBB2_168
# %bb.169:                              # %._crit_edge1210
                                        #   in Loop: Header=BB2_167 Depth=2
	addi.d	$t6, $t6, 1
	bne	$t6, $a4, .LBB2_167
# %bb.170:                              # %._crit_edge1213.split
                                        #   in Loop: Header=BB2_166 Depth=1
	addi.d	$a5, $a5, 1
	blt	$a5, $a1, .LBB2_166
	b	.LBB2_181
.LBB2_171:
	move	$t3, $t1
	move	$t0, $t2
	ori	$t2, $zero, 1
	move	$t1, $zero
.LBB2_172:
	blez	$a6, .LBB2_181
# %bb.173:                              # %.preheader1096.lr.ph
	pcalau12i	$a0, %pc_hi20(x_block_half)
	ld.w	$a4, $a0, %pc_lo12(x_block_half)
	blez	$a4, .LBB2_181
# %bb.174:                              # %.preheader1096.lr.ph
	pcalau12i	$a0, %pc_hi20(y_block_half)
	ld.w	$a7, $a0, %pc_lo12(y_block_half)
	blez	$a7, .LBB2_181
# %bb.175:                              # %.preheader1096.lr.ph.split.split
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a0, $a4, $a0
	mul.w	$t4, $a7, $a3
	add.w	$a1, $a6, $a5
	ld.d	$a2, $t7, 184
	ld.d	$a3, $t8, 184
	addi.d	$a6, $a7, 1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$a7, $a6, 31, 0
	slli.d	$a6, $t4, 3
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	slli.d	$t0, $t0, 3
	vldi	$vr0, -944
	slli.d	$t1, $t1, 3
	slli.d	$t2, $t2, 3
	slli.d	$t3, $t3, 3
	.p2align	4, , 16
.LBB2_176:                              # %.preheader1096
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_177 Depth 2
                                        #       Child Loop BB2_178 Depth 3
	slli.d	$t4, $a5, 3
	ldx.d	$t5, $a2, $t4
	ldx.d	$t4, $a3, $t4
	alsl.d	$t5, $a0, $t5, 3
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB2_177:                              # %.preheader1095
                                        #   Parent Loop BB2_176 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_178 Depth 3
	slli.d	$t7, $t6, 3
	ldx.d	$t7, $t5, $t7
	slli.d	$t8, $t6, 4
	alsl.d	$fp, $t6, $t4, 4
	ldx.d	$t8, $t4, $t8
	ld.d	$fp, $fp, -8
	add.d	$t7, $t7, $a6
	addi.d	$t8, $t8, 16
	addi.d	$fp, $fp, 16
	move	$s0, $a7
	.p2align	4, , 16
.LBB2_178:                              #   Parent Loop BB2_176 Depth=1
                                        #     Parent Loop BB2_177 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $t7, 0
	fldx.d	$fa1, $s1, $t0
	fmul.d	$fa1, $fa1, $fa0
	ld.d	$s2, $t8, 0
	ld.d	$s3, $t8, -8
	ld.d	$s4, $fp, 0
	ld.d	$s5, $fp, -8
	fstx.d	$fa1, $s2, $t1
	fstx.d	$fa1, $s3, $t1
	fstx.d	$fa1, $s4, $t1
	fstx.d	$fa1, $s5, $t1
	fldx.d	$fa1, $s5, $t2
	fldx.d	$fa2, $s4, $t2
	fldx.d	$fa3, $s3, $t2
	fldx.d	$fa4, $s2, $t2
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fstx.d	$fa1, $s1, $t3
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 16
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 16
	bnez	$s0, .LBB2_178
# %bb.179:                              # %._crit_edge1200
                                        #   in Loop: Header=BB2_177 Depth=2
	addi.d	$t6, $t6, 1
	bne	$t6, $a4, .LBB2_177
# %bb.180:                              # %._crit_edge1203.split
                                        #   in Loop: Header=BB2_176 Depth=1
	addi.d	$a5, $a5, 1
	blt	$a5, $a1, .LBB2_176
.LBB2_181:                              # %.loopexit
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end2:
	.size	on_proc_comm_diff, .Lfunc_end2-on_proc_comm_diff
                                        # -- End function
	.globl	apply_bc                        # -- Begin function apply_bc
	.p2align	5
	.type	apply_bc,@function
apply_bc:                               # @apply_bc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(code)
	ld.w	$a4, $a4, %pc_lo12(code)
	bnez	$a4, .LBB3_19
# %bb.1:
	pcalau12i	$a4, %pc_hi20(stencil)
	ld.w	$a4, $a4, %pc_lo12(stencil)
	ori	$a5, $zero, 7
	bne	$a4, $a5, .LBB3_19
# %bb.2:
	ori	$a4, $zero, 5
	bltu	$a4, $a0, .LBB3_86
# %bb.3:
	ori	$a4, $zero, 1
	slli.d	$a5, $a0, 2
	pcalau12i	$a6, %pc_hi20(.LJTI3_1)
	addi.d	$a6, $a6, %pc_lo12(.LJTI3_1)
	ldx.w	$a5, $a6, $a5
	add.d	$a5, $a6, $a5
	move	$t1, $zero
	move	$a6, $zero
	jr	$a5
.LBB3_4:
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a4, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $a4, 1
.LBB3_5:
	blez	$a3, .LBB3_86
# %bb.6:                                # %.preheader151.lr.ph
	pcalau12i	$a5, %pc_hi20(y_block_size)
	ld.w	$a6, $a5, %pc_lo12(y_block_size)
	blez	$a6, .LBB3_86
# %bb.7:                                # %.preheader151.lr.ph
	pcalau12i	$a5, %pc_hi20(z_block_size)
	ld.w	$a5, $a5, %pc_lo12(z_block_size)
	blez	$a5, .LBB3_86
# %bb.8:                                # %.preheader151.lr.ph.split.split
	add.w	$a3, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.d	$a7, $a5, 1
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 31, 0
	bstrpick.d	$a7, $a7, 31, 0
	bstrpick.d	$t0, $a5, 30, 3
	slli.d	$t0, $t0, 3
	srli.d	$t2, $a5, 3
	ori	$t1, $zero, 1
	bstrins.d	$t1, $t2, 30, 3
	slli.d	$a4, $a4, 3
	slli.d	$a0, $a0, 3
	ori	$t2, $zero, 8
	ori	$t3, $zero, 64
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %._crit_edge216.split
                                        #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB3_86
.LBB3_10:                               # %.preheader151
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
                                        #       Child Loop BB3_15 Depth 3
                                        #       Child Loop BB3_18 Depth 3
	slli.d	$t4, $a2, 3
	ldx.d	$t5, $a1, $t4
	ldx.d	$t4, $t5, $a4
	ldx.d	$t5, $t5, $a0
	ori	$t6, $zero, 1
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %._crit_edge213
                                        #   in Loop: Header=BB3_12 Depth=2
	addi.d	$t6, $t6, 1
	beq	$t6, $a6, .LBB3_9
.LBB3_12:                               # %.preheader
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_15 Depth 3
                                        #       Child Loop BB3_18 Depth 3
	slli.d	$t8, $t6, 3
	ldx.d	$t7, $t4, $t8
	ldx.d	$t8, $t5, $t8
	ori	$fp, $zero, 1
	bltu	$a5, $t2, .LBB3_17
# %bb.13:                               # %.preheader
                                        #   in Loop: Header=BB3_12 Depth=2
	sub.d	$s0, $t8, $t7
	bltu	$s0, $t3, .LBB3_17
# %bb.14:                               # %vector.body361.preheader
                                        #   in Loop: Header=BB3_12 Depth=2
	addi.d	$fp, $t7, 40
	addi.d	$s0, $t8, 40
	move	$s1, $t0
	.p2align	4, , 16
.LBB3_15:                               # %vector.body361
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $fp, -32
	xvld	$xr1, $fp, 0
	xvst	$xr0, $s0, -32
	xvst	$xr1, $s0, 0
	addi.d	$fp, $fp, 64
	addi.d	$s1, $s1, -8
	addi.d	$s0, $s0, 64
	bnez	$s1, .LBB3_15
# %bb.16:                               # %middle.block367
                                        #   in Loop: Header=BB3_12 Depth=2
	move	$fp, $t1
	beq	$t0, $a5, .LBB3_11
.LBB3_17:                               # %scalar.ph356.preheader
                                        #   in Loop: Header=BB3_12 Depth=2
	alsl.d	$t8, $fp, $t8, 3
	alsl.d	$t7, $fp, $t7, 3
	sub.d	$fp, $a7, $fp
	.p2align	4, , 16
.LBB3_18:                               # %scalar.ph356
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t7, 0
	fst.d	$fa0, $t8, 0
	addi.d	$t8, $t8, 8
	addi.d	$fp, $fp, -1
	addi.d	$t7, $t7, 8
	bnez	$fp, .LBB3_18
	b	.LBB3_11
.LBB3_19:
	ori	$a4, $zero, 5
	bltu	$a4, $a0, .LBB3_86
# %bb.20:
	ori	$a4, $zero, 1
	slli.d	$a5, $a0, 2
	pcalau12i	$a6, %pc_hi20(.LJTI3_0)
	addi.d	$a6, $a6, %pc_lo12(.LJTI3_0)
	ldx.w	$a5, $a6, $a5
	add.d	$a5, $a6, $a5
	move	$t0, $zero
	move	$a6, $zero
	jr	$a5
.LBB3_21:
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a4, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $a4, 1
.LBB3_22:
	blez	$a3, .LBB3_86
# %bb.23:                               # %.preheader159.lr.ph
	pcalau12i	$a5, %pc_hi20(y_block_size)
	ld.w	$a6, $a5, %pc_lo12(y_block_size)
	addi.w	$a7, $zero, -1
	blt	$a6, $a7, .LBB3_86
# %bb.24:                               # %.preheader159.lr.ph
	pcalau12i	$a5, %pc_hi20(z_block_size)
	ld.w	$a5, $a5, %pc_lo12(z_block_size)
	blt	$a5, $a7, .LBB3_86
# %bb.25:                               # %.preheader159.lr.ph.split.split
	add.w	$a3, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.w	$a5, $a5, 2
	addi.d	$a6, $a6, 2
	bstrpick.d	$a6, $a6, 31, 0
	bstrpick.d	$a7, $a5, 31, 0
	bstrpick.d	$t0, $a5, 31, 3
	slli.d	$t0, $t0, 3
	slli.d	$a4, $a4, 3
	slli.d	$a0, $a0, 3
	ori	$t1, $zero, 8
	ori	$t2, $zero, 64
	b	.LBB3_27
	.p2align	4, , 16
.LBB3_26:                               # %._crit_edge189.split
                                        #   in Loop: Header=BB3_27 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB3_86
.LBB3_27:                               # %.preheader159
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
                                        #       Child Loop BB3_32 Depth 3
                                        #       Child Loop BB3_35 Depth 3
	slli.d	$t3, $a2, 3
	ldx.d	$t4, $a1, $t3
	ldx.d	$t3, $t4, $a4
	ldx.d	$t4, $t4, $a0
	move	$t5, $zero
	b	.LBB3_29
	.p2align	4, , 16
.LBB3_28:                               # %._crit_edge186
                                        #   in Loop: Header=BB3_29 Depth=2
	addi.d	$t5, $t5, 1
	beq	$t5, $a6, .LBB3_26
.LBB3_29:                               # %.preheader158
                                        #   Parent Loop BB3_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_32 Depth 3
                                        #       Child Loop BB3_35 Depth 3
	slli.d	$t7, $t5, 3
	ldx.d	$t6, $t3, $t7
	ldx.d	$t7, $t4, $t7
	move	$t8, $zero
	bltu	$a5, $t1, .LBB3_34
# %bb.30:                               # %.preheader158
                                        #   in Loop: Header=BB3_29 Depth=2
	sub.d	$fp, $t7, $t6
	bltu	$fp, $t2, .LBB3_34
# %bb.31:                               # %vector.body331.preheader
                                        #   in Loop: Header=BB3_29 Depth=2
	addi.d	$t8, $t7, 32
	addi.d	$fp, $t6, 32
	move	$s0, $t0
	.p2align	4, , 16
.LBB3_32:                               # %vector.body331
                                        #   Parent Loop BB3_27 Depth=1
                                        #     Parent Loop BB3_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $fp, -32
	xvld	$xr1, $fp, 0
	xvst	$xr0, $t8, -32
	xvst	$xr1, $t8, 0
	addi.d	$s0, $s0, -8
	addi.d	$t8, $t8, 64
	addi.d	$fp, $fp, 64
	bnez	$s0, .LBB3_32
# %bb.33:                               # %middle.block336
                                        #   in Loop: Header=BB3_29 Depth=2
	move	$t8, $t0
	beq	$t0, $a7, .LBB3_28
.LBB3_34:                               # %scalar.ph326.preheader
                                        #   in Loop: Header=BB3_29 Depth=2
	alsl.d	$t7, $t8, $t7, 3
	alsl.d	$t6, $t8, $t6, 3
	sub.d	$t8, $a7, $t8
	.p2align	4, , 16
.LBB3_35:                               # %scalar.ph326
                                        #   Parent Loop BB3_27 Depth=1
                                        #     Parent Loop BB3_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t6, 0
	fst.d	$fa0, $t7, 0
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, -1
	addi.d	$t6, $t6, 8
	bnez	$t8, .LBB3_35
	b	.LBB3_28
.LBB3_36:
	pcalau12i	$a0, %pc_hi20(y_block_size)
	ld.w	$a4, $a0, %pc_lo12(y_block_size)
	addi.w	$t0, $a4, 1
.LBB3_37:
	blez	$a3, .LBB3_86
# %bb.38:                               # %.preheader162.lr.ph
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a5, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $zero, -1
	blt	$a5, $a0, .LBB3_86
# %bb.39:                               # %.preheader162.lr.ph
	pcalau12i	$a6, %pc_hi20(z_block_size)
	ld.w	$a6, $a6, %pc_lo12(z_block_size)
	blt	$a6, $a0, .LBB3_86
# %bb.40:                               # %.preheader162.lr.ph.split.split
	add.w	$a0, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.w	$a3, $a6, 2
	addi.d	$a5, $a5, 2
	bstrpick.d	$a5, $a5, 31, 0
	bstrpick.d	$a6, $a3, 31, 0
	bstrpick.d	$a7, $a3, 31, 3
	slli.d	$a7, $a7, 3
	slli.d	$a4, $a4, 3
	slli.d	$t0, $t0, 3
	ori	$t1, $zero, 8
	ori	$t2, $zero, 64
	b	.LBB3_42
	.p2align	4, , 16
.LBB3_41:                               # %._crit_edge180.split
                                        #   in Loop: Header=BB3_42 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a0, .LBB3_86
.LBB3_42:                               # %.preheader162
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_44 Depth 2
                                        #       Child Loop BB3_47 Depth 3
                                        #       Child Loop BB3_50 Depth 3
	slli.d	$t3, $a2, 3
	ldx.d	$t3, $a1, $t3
	move	$t4, $zero
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_43:                               # %._crit_edge177
                                        #   in Loop: Header=BB3_44 Depth=2
	addi.d	$t4, $t4, 1
	beq	$t4, $a5, .LBB3_41
.LBB3_44:                               # %.preheader161
                                        #   Parent Loop BB3_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_47 Depth 3
                                        #       Child Loop BB3_50 Depth 3
	slli.d	$t5, $t4, 3
	ldx.d	$t6, $t3, $t5
	ldx.d	$t5, $t6, $a4
	ldx.d	$t6, $t6, $t0
	move	$t7, $zero
	bltu	$a3, $t1, .LBB3_49
# %bb.45:                               # %.preheader161
                                        #   in Loop: Header=BB3_44 Depth=2
	sub.d	$t8, $t6, $t5
	bltu	$t8, $t2, .LBB3_49
# %bb.46:                               # %vector.body.preheader
                                        #   in Loop: Header=BB3_44 Depth=2
	addi.d	$t7, $t6, 32
	addi.d	$t8, $t5, 32
	move	$fp, $a7
	.p2align	4, , 16
.LBB3_47:                               # %vector.body
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $t8, -32
	xvld	$xr1, $t8, 0
	xvst	$xr0, $t7, -32
	xvst	$xr1, $t7, 0
	addi.d	$fp, $fp, -8
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	bnez	$fp, .LBB3_47
# %bb.48:                               # %middle.block
                                        #   in Loop: Header=BB3_44 Depth=2
	move	$t7, $a7
	beq	$a7, $a6, .LBB3_43
.LBB3_49:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_44 Depth=2
	alsl.d	$t6, $t7, $t6, 3
	alsl.d	$t5, $t7, $t5, 3
	sub.d	$t7, $a6, $t7
	.p2align	4, , 16
.LBB3_50:                               # %scalar.ph
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t5, 0
	fst.d	$fa0, $t6, 0
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, -1
	addi.d	$t5, $t5, 8
	bnez	$t7, .LBB3_50
	b	.LBB3_43
.LBB3_51:
	pcalau12i	$a0, %pc_hi20(y_block_size)
	ld.w	$a4, $a0, %pc_lo12(y_block_size)
	addi.w	$t1, $a4, 1
.LBB3_52:
	blez	$a3, .LBB3_86
# %bb.53:                               # %.preheader153.lr.ph
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a5, $a0, %pc_lo12(x_block_size)
	blez	$a5, .LBB3_86
# %bb.54:                               # %.preheader153.lr.ph
	pcalau12i	$a0, %pc_hi20(z_block_size)
	ld.w	$a0, $a0, %pc_lo12(z_block_size)
	blez	$a0, .LBB3_86
# %bb.55:                               # %.preheader153.lr.ph.split.split
	add.w	$a3, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.d	$a6, $a0, 1
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	bstrpick.d	$a6, $a6, 31, 0
	bstrpick.d	$a7, $a0, 30, 3
	slli.d	$a7, $a7, 3
	srli.d	$t2, $a0, 3
	ori	$t0, $zero, 1
	bstrins.d	$t0, $t2, 30, 3
	slli.d	$a4, $a4, 3
	slli.d	$t1, $t1, 3
	ori	$t2, $zero, 8
	ori	$t3, $zero, 64
	b	.LBB3_57
	.p2align	4, , 16
.LBB3_56:                               # %._crit_edge207.split
                                        #   in Loop: Header=BB3_57 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB3_86
.LBB3_57:                               # %.preheader153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_59 Depth 2
                                        #       Child Loop BB3_62 Depth 3
                                        #       Child Loop BB3_65 Depth 3
	slli.d	$t4, $a2, 3
	ldx.d	$t4, $a1, $t4
	ori	$t5, $zero, 1
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_58:                               # %._crit_edge204
                                        #   in Loop: Header=BB3_59 Depth=2
	addi.d	$t5, $t5, 1
	beq	$t5, $a5, .LBB3_56
.LBB3_59:                               # %.preheader152
                                        #   Parent Loop BB3_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_62 Depth 3
                                        #       Child Loop BB3_65 Depth 3
	slli.d	$t6, $t5, 3
	ldx.d	$t7, $t4, $t6
	ldx.d	$t6, $t7, $a4
	ldx.d	$t7, $t7, $t1
	ori	$t8, $zero, 1
	bltu	$a0, $t2, .LBB3_64
# %bb.60:                               # %.preheader152
                                        #   in Loop: Header=BB3_59 Depth=2
	sub.d	$fp, $t7, $t6
	bltu	$fp, $t3, .LBB3_64
# %bb.61:                               # %vector.body346.preheader
                                        #   in Loop: Header=BB3_59 Depth=2
	addi.d	$t8, $t6, 40
	addi.d	$fp, $t7, 40
	move	$s0, $a7
	.p2align	4, , 16
.LBB3_62:                               # %vector.body346
                                        #   Parent Loop BB3_57 Depth=1
                                        #     Parent Loop BB3_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $t8, -32
	xvld	$xr1, $t8, 0
	xvst	$xr0, $fp, -32
	xvst	$xr1, $fp, 0
	addi.d	$t8, $t8, 64
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, 64
	bnez	$s0, .LBB3_62
# %bb.63:                               # %middle.block351
                                        #   in Loop: Header=BB3_59 Depth=2
	move	$t8, $t0
	beq	$a7, $a0, .LBB3_58
.LBB3_64:                               # %scalar.ph341.preheader
                                        #   in Loop: Header=BB3_59 Depth=2
	alsl.d	$t7, $t8, $t7, 3
	alsl.d	$t6, $t8, $t6, 3
	sub.d	$t8, $a6, $t8
	.p2align	4, , 16
.LBB3_65:                               # %scalar.ph341
                                        #   Parent Loop BB3_57 Depth=1
                                        #     Parent Loop BB3_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t6, 0
	fst.d	$fa0, $t7, 0
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, -1
	addi.d	$t6, $t6, 8
	bnez	$t8, .LBB3_65
	b	.LBB3_58
.LBB3_66:
	pcalau12i	$a0, %pc_hi20(z_block_size)
	ld.w	$a4, $a0, %pc_lo12(z_block_size)
	addi.w	$a6, $a4, 1
.LBB3_67:
	blez	$a3, .LBB3_86
# %bb.68:                               # %.preheader165.lr.ph
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a5, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $zero, -1
	blt	$a5, $a0, .LBB3_86
# %bb.69:                               # %.preheader165.lr.ph
	pcalau12i	$a7, %pc_hi20(y_block_size)
	ld.w	$a7, $a7, %pc_lo12(y_block_size)
	blt	$a7, $a0, .LBB3_86
# %bb.70:                               # %.preheader165.lr.ph.split.split
	add.w	$a0, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.d	$a7, $a7, 2
	addi.d	$a3, $a5, 2
	bstrpick.d	$a3, $a3, 31, 0
	bstrpick.d	$a5, $a7, 31, 0
	slli.d	$a4, $a4, 3
	slli.d	$a6, $a6, 3
	.p2align	4, , 16
.LBB3_71:                               # %.preheader165
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_72 Depth 2
                                        #       Child Loop BB3_73 Depth 3
	slli.d	$a7, $a2, 3
	ldx.d	$a7, $a1, $a7
	move	$t0, $zero
	.p2align	4, , 16
.LBB3_72:                               # %.preheader164
                                        #   Parent Loop BB3_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_73 Depth 3
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a7, $t1
	move	$t2, $a5
	.p2align	4, , 16
.LBB3_73:                               #   Parent Loop BB3_71 Depth=1
                                        #     Parent Loop BB3_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t3, $t1, 0
	fldx.d	$fa0, $t3, $a4
	fstx.d	$fa0, $t3, $a6
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB3_73
# %bb.74:                               # %._crit_edge
                                        #   in Loop: Header=BB3_72 Depth=2
	addi.d	$t0, $t0, 1
	bne	$t0, $a3, .LBB3_72
# %bb.75:                               # %._crit_edge171.split
                                        #   in Loop: Header=BB3_71 Depth=1
	addi.d	$a2, $a2, 1
	blt	$a2, $a0, .LBB3_71
	b	.LBB3_86
.LBB3_76:
	pcalau12i	$a0, %pc_hi20(z_block_size)
	ld.w	$a4, $a0, %pc_lo12(z_block_size)
	addi.w	$a6, $a4, 1
.LBB3_77:
	blez	$a3, .LBB3_86
# %bb.78:                               # %.preheader156.lr.ph
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a5, $a0, %pc_lo12(x_block_size)
	blez	$a5, .LBB3_86
# %bb.79:                               # %.preheader156.lr.ph
	pcalau12i	$a0, %pc_hi20(y_block_size)
	ld.w	$a7, $a0, %pc_lo12(y_block_size)
	blez	$a7, .LBB3_86
# %bb.80:                               # %.preheader156.lr.ph.split.split
	add.w	$a0, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.d	$a7, $a7, 1
	addi.d	$a3, $a5, 1
	bstrpick.d	$a3, $a3, 31, 0
	bstrpick.d	$a5, $a7, 31, 0
	addi.d	$a5, $a5, -1
	slli.d	$a4, $a4, 3
	slli.d	$a6, $a6, 3
	.p2align	4, , 16
.LBB3_81:                               # %.preheader156
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_82 Depth 2
                                        #       Child Loop BB3_83 Depth 3
	slli.d	$a7, $a2, 3
	ldx.d	$a7, $a1, $a7
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB3_82:                               # %.preheader155
                                        #   Parent Loop BB3_81 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_83 Depth 3
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a7, $t1
	addi.d	$t1, $t1, 8
	move	$t2, $a5
	.p2align	4, , 16
.LBB3_83:                               #   Parent Loop BB3_81 Depth=1
                                        #     Parent Loop BB3_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t3, $t1, 0
	fldx.d	$fa0, $t3, $a4
	fstx.d	$fa0, $t3, $a6
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB3_83
# %bb.84:                               # %._crit_edge195
                                        #   in Loop: Header=BB3_82 Depth=2
	addi.d	$t0, $t0, 1
	bne	$t0, $a3, .LBB3_82
# %bb.85:                               # %._crit_edge198.split
                                        #   in Loop: Header=BB3_81 Depth=1
	addi.d	$a2, $a2, 1
	blt	$a2, $a0, .LBB3_81
.LBB3_86:                               # %.loopexit
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	apply_bc, .Lfunc_end3-apply_bc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_21-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_36-.LJTI3_0
	.word	.LBB3_67-.LJTI3_0
	.word	.LBB3_66-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_5-.LJTI3_1
	.word	.LBB3_4-.LJTI3_1
	.word	.LBB3_52-.LJTI3_1
	.word	.LBB3_51-.LJTI3_1
	.word	.LBB3_77-.LJTI3_1
	.word	.LBB3_76-.LJTI3_1
                                        # -- End function
	.type	.L__const.comm.permutations,@object # @__const.comm.permutations
	.p2align	2, 0x0
.L__const.comm.permutations:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	.L__const.comm.permutations, 72

	.type	permute,@object                 # @permute
	.comm	permute,4,4
	.type	sorted_index,@object            # @sorted_index
	.comm	sorted_index,8,8
	.type	num_refine,@object              # @num_refine
	.comm	num_refine,4,4
	.type	sorted_list,@object             # @sorted_list
	.comm	sorted_list,8,8
	.type	blocks,@object                  # @blocks
	.comm	blocks,8,8
	.type	counter_same,@object            # @counter_same
	.comm	counter_same,12,4
	.type	timer_comm_same,@object         # @timer_comm_same
	.comm	timer_comm_same,24,8
	.type	counter_diff,@object            # @counter_diff
	.comm	counter_diff,12,4
	.type	timer_comm_diff,@object         # @timer_comm_diff
	.comm	timer_comm_diff,24,8
	.type	counter_bc,@object              # @counter_bc
	.comm	counter_bc,12,4
	.type	timer_comm_bc,@object           # @timer_comm_bc
	.comm	timer_comm_bc,24,8
	.type	timer_comm_dir,@object          # @timer_comm_dir
	.comm	timer_comm_dir,24,8
	.type	code,@object                    # @code
	.comm	code,4,4
	.type	y_block_size,@object            # @y_block_size
	.comm	y_block_size,4,4
	.type	z_block_size,@object            # @z_block_size
	.comm	z_block_size,4,4
	.type	x_block_size,@object            # @x_block_size
	.comm	x_block_size,4,4
	.type	stencil,@object                 # @stencil
	.comm	stencil,4,4
	.type	y_block_half,@object            # @y_block_half
	.comm	y_block_half,4,4
	.type	z_block_half,@object            # @z_block_half
	.comm	z_block_half,4,4
	.type	x_block_half,@object            # @x_block_half
	.comm	x_block_half,4,4
	.type	parents,@object                 # @parents
	.comm	parents,8,8
	.type	my_pe,@object                   # @my_pe
	.comm	my_pe,4,4
	.type	num_pes,@object                 # @num_pes
	.comm	num_pes,4,4
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
	.type	num_vars,@object                # @num_vars
	.comm	num_vars,4,4
	.type	comm_vars,@object               # @comm_vars
	.comm	comm_vars,4,4
	.type	init_block_x,@object            # @init_block_x
	.comm	init_block_x,4,4
	.type	init_block_y,@object            # @init_block_y
	.comm	init_block_y,4,4
	.type	init_block_z,@object            # @init_block_z
	.comm	init_block_z,4,4
	.type	reorder,@object                 # @reorder
	.comm	reorder,4,4
	.type	npx,@object                     # @npx
	.comm	npx,4,4
	.type	npy,@object                     # @npy
	.comm	npy,4,4
	.type	npz,@object                     # @npz
	.comm	npz,4,4
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
	.type	error_tol,@object               # @error_tol
	.comm	error_tol,4,4
	.type	num_tsteps,@object              # @num_tsteps
	.comm	num_tsteps,4,4
	.type	report_perf,@object             # @report_perf
	.comm	report_perf,4,4
	.type	plot_freq,@object               # @plot_freq
	.comm	plot_freq,4,4
	.type	lb_opt,@object                  # @lb_opt
	.comm	lb_opt,4,4
	.type	block_change,@object            # @block_change
	.comm	block_change,4,4
	.type	nonblocking,@object             # @nonblocking
	.comm	nonblocking,4,4
	.type	refine_ghost,@object            # @refine_ghost
	.comm	refine_ghost,4,4
	.type	max_num_parents,@object         # @max_num_parents
	.comm	max_num_parents,4,4
	.type	num_parents,@object             # @num_parents
	.comm	num_parents,4,4
	.type	max_active_parent,@object       # @max_active_parent
	.comm	max_active_parent,4,4
	.type	cur_max_level,@object           # @cur_max_level
	.comm	cur_max_level,4,4
	.type	num_blocks,@object              # @num_blocks
	.comm	num_blocks,8,8
	.type	block_start,@object             # @block_start
	.comm	block_start,8,8
	.type	num_active,@object              # @num_active
	.comm	num_active,4,4
	.type	max_active_block,@object        # @max_active_block
	.comm	max_active_block,4,4
	.type	global_active,@object           # @global_active
	.comm	global_active,4,4
	.type	tol,@object                     # @tol
	.comm	tol,8,8
	.type	grid_sum,@object                # @grid_sum
	.comm	grid_sum,8,8
	.type	p8,@object                      # @p8
	.comm	p8,8,8
	.type	p2,@object                      # @p2
	.comm	p2,8,8
	.type	mesh_size,@object               # @mesh_size
	.comm	mesh_size,12,4
	.type	max_mesh_size,@object           # @max_mesh_size
	.comm	max_mesh_size,4,4
	.type	from,@object                    # @from
	.comm	from,8,8
	.type	to,@object                      # @to
	.comm	to,8,8
	.type	msg_len,@object                 # @msg_len
	.comm	msg_len,48,4
	.type	local_max_b,@object             # @local_max_b
	.comm	local_max_b,4,4
	.type	global_max_b,@object            # @global_max_b
	.comm	global_max_b,4,4
	.type	num_objects,@object             # @num_objects
	.comm	num_objects,4,4
	.type	objects,@object                 # @objects
	.comm	objects,8,8
	.type	average,@object                 # @average
	.comm	average,1024,8
	.type	stddev,@object                  # @stddev
	.comm	stddev,1024,8
	.type	minimum,@object                 # @minimum
	.comm	minimum,1024,8
	.type	maximum,@object                 # @maximum
	.comm	maximum,1024,8
	.type	timer_all,@object               # @timer_all
	.comm	timer_all,8,8
	.type	timer_comm_all,@object          # @timer_comm_all
	.comm	timer_comm_all,8,8
	.type	timer_calc_all,@object          # @timer_calc_all
	.comm	timer_calc_all,8,8
	.type	timer_cs_all,@object            # @timer_cs_all
	.comm	timer_cs_all,8,8
	.type	timer_cs_calc,@object           # @timer_cs_calc
	.comm	timer_cs_calc,8,8
	.type	timer_refine_all,@object        # @timer_refine_all
	.comm	timer_refine_all,8,8
	.type	timer_refine_co,@object         # @timer_refine_co
	.comm	timer_refine_co,8,8
	.type	timer_refine_mr,@object         # @timer_refine_mr
	.comm	timer_refine_mr,8,8
	.type	timer_refine_sb,@object         # @timer_refine_sb
	.comm	timer_refine_sb,8,8
	.type	timer_refine_cc,@object         # @timer_refine_cc
	.comm	timer_refine_cc,8,8
	.type	timer_cb_all,@object            # @timer_cb_all
	.comm	timer_cb_all,8,8
	.type	timer_target_all,@object        # @timer_target_all
	.comm	timer_target_all,8,8
	.type	timer_target_rb,@object         # @timer_target_rb
	.comm	timer_target_rb,8,8
	.type	timer_target_dc,@object         # @timer_target_dc
	.comm	timer_target_dc,8,8
	.type	timer_target_cb,@object         # @timer_target_cb
	.comm	timer_target_cb,8,8
	.type	timer_target_ab,@object         # @timer_target_ab
	.comm	timer_target_ab,8,8
	.type	timer_target_da,@object         # @timer_target_da
	.comm	timer_target_da,8,8
	.type	timer_target_sb,@object         # @timer_target_sb
	.comm	timer_target_sb,8,8
	.type	timer_plot,@object              # @timer_plot
	.comm	timer_plot,8,8
	.type	total_blocks,@object            # @total_blocks
	.comm	total_blocks,8,8
	.type	nb_min,@object                  # @nb_min
	.comm	nb_min,4,4
	.type	nb_max,@object                  # @nb_max
	.comm	nb_max,4,4
	.type	nrs,@object                     # @nrs
	.comm	nrs,4,4
	.type	nps,@object                     # @nps
	.comm	nps,4,4
	.type	num_refined,@object             # @num_refined
	.comm	num_refined,4,4
	.type	num_reformed,@object            # @num_reformed
	.comm	num_reformed,4,4
	.type	counter_malloc,@object          # @counter_malloc
	.comm	counter_malloc,4,4
	.type	size_malloc,@object             # @size_malloc
	.comm	size_malloc,8,8
	.type	counter_malloc_init,@object     # @counter_malloc_init
	.comm	counter_malloc_init,4,4
	.type	size_malloc_init,@object        # @size_malloc_init
	.comm	size_malloc_init,8,8
	.type	total_red,@object               # @total_red
	.comm	total_red,4,4
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"ERROR: misconnected block"
	.size	.Lstr, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
