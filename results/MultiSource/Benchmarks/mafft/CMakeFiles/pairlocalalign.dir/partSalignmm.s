	.file	"partSalignmm.c"
	.text
	.globl	part_imp_match_out_sc           # -- Begin function part_imp_match_out_sc
	.p2align	5
	.type	part_imp_match_out_sc,@function
part_imp_match_out_sc:                  # @part_imp_match_out_sc
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	part_imp_match_out_sc, .Lfunc_end0-part_imp_match_out_sc
                                        # -- End function
	.globl	part_imp_match_init_strict      # -- Begin function part_imp_match_init_strict
	.p2align	5
	.type	part_imp_match_init_strict,@function
part_imp_match_init_strict:             # @part_imp_match_init_strict
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
	pcalau12i	$s7, %pc_hi20(impalloclen)
	ld.w	$a0, $s7, %pc_lo12(impalloclen)
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s5, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$s3, $a1
	addi.w	$a1, $a3, 2
	pcalau12i	$s6, %pc_hi20(impmtx)
	bge	$a1, $a0, .LBB1_2
# %bb.1:
	addi.w	$a1, $s5, 2
	blt	$a1, $a0, .LBB1_5
.LBB1_2:
	ld.d	$a0, $s6, %pc_lo12(impmtx)
	beqz	$a0, .LBB1_4
# %bb.3:
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_4:
	slt	$a0, $s5, $s4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $a0, 2
	st.w	$a1, $s7, %pc_lo12(impalloclen)
	addi.w	$a0, $a0, 102
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(impmtx)
.LBB1_5:
	blez	$s4, .LBB1_9
# %bb.6:                                # %.preheader169.lr.ph
	blez	$s5, .LBB1_9
# %bb.7:                                # %.preheader169.us.preheader
	ld.d	$s7, $s6, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB1_8:                                # %.preheader169.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s7, $s7, 8
	bnez	$s4, .LBB1_8
.LBB1_9:                                # %._crit_edge172
	blez	$s3, .LBB1_47
# %bb.10:                               # %.preheader168.lr.ph
	blez	$s2, .LBB1_47
# %bb.11:                               # %.preheader168.us.preheader
	ld.d	$a0, $sp, 104
	ld.d	$a1, $sp, 96
	pcalau12i	$a2, %got_pc_hi20(fastathreshold)
	ld.d	$a2, $a2, %got_pc_lo12(fastathreshold)
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $s6, %pc_lo12(impmtx)
	move	$a3, $zero
	ori	$a4, $zero, 45
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               # %._crit_edge178.us
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB1_47
.LBB1_13:                               # %.preheader168.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_23 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #         Child Loop BB1_31 Depth 4
                                        #         Child Loop BB1_35 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               # %._crit_edge.us181
                                        #   in Loop: Header=BB1_15 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB1_12
.LBB1_15:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_23 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #         Child Loop BB1_31 Depth 4
                                        #         Child Loop BB1_35 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB1_14
# %bb.16:                               # %.lr.ph.us
                                        #   in Loop: Header=BB1_15 Depth=2
	fldx.d	$fa2, $a1, $t2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa0, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_17:                               # %.critedge.us
                                        #   in Loop: Header=BB1_18 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB1_14
.LBB1_18:                               #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_23 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #         Child Loop BB1_31 Depth 4
                                        #         Child Loop BB1_35 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB1_19:                               #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB1_19
# %bb.21:                               #   in Loop: Header=BB1_18 Depth=3
	move	$t8, $s4
.LBB1_22:                               #   in Loop: Header=BB1_18 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t3, $t7
	move	$t6, $t5
	beq	$s4, $s5, .LBB1_26
	.p2align	4, , 16
.LBB1_23:                               # %.preheader167.us
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB1_23
.LBB1_25:                               #   in Loop: Header=BB1_18 Depth=3
	add.w	$t6, $t3, $t7
.LBB1_26:                               #   in Loop: Header=BB1_18 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB1_27:                               #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB1_30
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB1_27
# %bb.29:                               #   in Loop: Header=BB1_18 Depth=3
	move	$s5, $s6
.LBB1_30:                               #   in Loop: Header=BB1_18 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $t4, $s4
	move	$t8, $t7
	beq	$s6, $s7, .LBB1_34
	.p2align	4, , 16
.LBB1_31:                               # %.preheader.us
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB1_31
.LBB1_33:                               #   in Loop: Header=BB1_18 Depth=3
	add.w	$t8, $t4, $s4
.LBB1_34:                               #   in Loop: Header=BB1_18 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB1_35:                               #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB1_17
# %bb.36:                               #   in Loop: Header=BB1_35 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB1_17
# %bb.37:                               #   in Loop: Header=BB1_35 Depth=4
	beq	$s7, $a4, .LBB1_40
# %bb.38:                               #   in Loop: Header=BB1_35 Depth=4
	beq	$s6, $a4, .LBB1_40
# %bb.39:                               #   in Loop: Header=BB1_35 Depth=4
	slli.d	$s6, $t5, 3
	ldx.d	$s6, $a2, $s6
	fld.s	$fa3, $t0, 64
	slli.d	$s7, $t7, 2
	fldx.s	$fa4, $s6, $s7
	fcvt.d.s	$fa3, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa3, $fa2, $fa4
	fcvt.s.d	$fa3, $fa3
	fstx.s	$fa3, $s6, $s7
	addi.w	$t5, $t5, 1
	addi.w	$t7, $t7, 1
	addi.d	$s4, $s4, 1
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_40:                               #   in Loop: Header=BB1_35 Depth=4
	bne	$s7, $a4, .LBB1_42
# %bb.41:                               #   in Loop: Header=BB1_35 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB1_42:                               #   in Loop: Header=BB1_35 Depth=4
	bne	$s6, $a4, .LBB1_45
# %bb.43:                               #   in Loop: Header=BB1_35 Depth=4
	addi.w	$t7, $t7, 1
.LBB1_44:                               #   in Loop: Header=BB1_35 Depth=4
	addi.d	$s5, $s5, 1
.LBB1_45:                               #   in Loop: Header=BB1_35 Depth=4
	blt	$t6, $t5, .LBB1_17
# %bb.46:                               #   in Loop: Header=BB1_35 Depth=4
	bge	$t8, $t7, .LBB1_35
	b	.LBB1_17
.LBB1_47:                               # %._crit_edge180
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
	.size	part_imp_match_init_strict, .Lfunc_end1-part_imp_match_init_strict
                                        # -- End function
	.globl	part_imp_rna                    # -- Begin function part_imp_rna
	.p2align	5
	.type	part_imp_rna,@function
part_imp_rna:                           # @part_imp_rna
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	vld	$vr0, $sp, 48
	ld.d	$t0, $sp, 64
	pcalau12i	$t1, %pc_hi20(impmtx)
	ld.d	$t1, $t1, %pc_lo12(impmtx)
	st.d	$t0, $sp, 24
	vst	$vr0, $sp, 8
	st.d	$t1, $sp, 0
	pcaddu18i	$ra, %call36(foldrna)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	part_imp_rna, .Lfunc_end2-part_imp_rna
                                        # -- End function
	.globl	part_imp_match_init             # -- Begin function part_imp_match_init
	.p2align	5
	.type	part_imp_match_init,@function
part_imp_match_init:                    # @part_imp_match_init
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
	pcalau12i	$fp, %pc_hi20(part_imp_match_init.impalloclen)
	ld.w	$a0, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $a6
	move	$s0, $a5
	move	$s4, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$a1, %pc_hi20(impmtx)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(part_imp_match_init.nocount1)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(part_imp_match_init.nocount2)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	blt	$a0, $a3, .LBB3_2
# %bb.1:
	bge	$a0, $s4, .LBB3_9
.LBB3_2:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB3_4
# %bb.3:
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB3_4:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount1)
	beqz	$a0, .LBB3_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_6:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount2)
	beqz	$a0, .LBB3_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_8:
	slt	$a0, $s4, $s1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(part_imp_match_init.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(part_imp_match_init.nocount2)
	addi.d	$a0, $a1, -2
	st.w	$a0, $fp, %pc_lo12(part_imp_match_init.impalloclen)
.LBB3_9:
	blez	$s1, .LBB3_22
# %bb.10:                               # %.preheader244.lr.ph
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount1)
	blez	$s3, .LBB3_18
# %bb.11:                               # %.preheader244.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_12:                               # %._crit_edge.us.thread
                                        #   in Loop: Header=BB3_14 Depth=1
	move	$a4, $zero
.LBB3_13:                               #   in Loop: Header=BB3_14 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s1, .LBB3_22
.LBB3_14:                               # %.preheader244.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	move	$a4, $s3
	move	$a5, $s0
	move	$a3, $s3
	.p2align	4, , 16
.LBB3_15:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB3_15
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_17:                               # %._crit_edge.us
                                        #   in Loop: Header=BB3_14 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB3_13
	b	.LBB3_12
.LBB3_18:                               # %.preheader244.lr.ph.split
	beqz	$s3, .LBB3_20
# %bb.19:                               # %.preheader244.preheader
	ori	$a1, $zero, 1
	b	.LBB3_21
.LBB3_20:                               # %.preheader244.us249.preheader
	move	$a1, $zero
.LBB3_21:                               # %.preheader243
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_22:                               # %.preheader243.thread
	blez	$s4, .LBB3_38
# %bb.23:                               # %.preheader242.lr.ph
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount2)
	blez	$s2, .LBB3_31
# %bb.24:                               # %.preheader242.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB3_27
	.p2align	4, , 16
.LBB3_25:                               # %._crit_edge.us255.thread
                                        #   in Loop: Header=BB3_27 Depth=1
	move	$a4, $zero
.LBB3_26:                               #   in Loop: Header=BB3_27 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB3_35
.LBB3_27:                               # %.preheader242.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
	move	$a4, $s2
	move	$a5, $s5
	move	$a3, $s2
	.p2align	4, , 16
.LBB3_28:                               #   Parent Loop BB3_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB3_30
# %bb.29:                               #   in Loop: Header=BB3_28 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB3_28
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_30:                               # %._crit_edge.us255
                                        #   in Loop: Header=BB3_27 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB3_26
	b	.LBB3_25
.LBB3_31:                               # %.preheader242.lr.ph.split
	beqz	$s2, .LBB3_33
# %bb.32:                               # %.preheader242.preheader
	ori	$a1, $zero, 1
	b	.LBB3_34
.LBB3_33:                               # %.preheader242.us257.preheader
	move	$a1, $zero
.LBB3_34:                               # %.preheader241
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_35:                               # %.preheader241
	blez	$s1, .LBB3_38
# %bb.36:                               # %.preheader240.lr.ph
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(impmtx)
	slli.d	$s4, $s4, 2
	.p2align	4, , 16
.LBB3_37:                               # %.preheader240.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB3_37
.LBB3_38:                               # %.preheader239
	blez	$s3, .LBB3_87
# %bb.39:                               # %.lr.ph282
	blez	$s2, .LBB3_85
# %bb.40:                               # %.lr.ph279.us.preheader
	ld.d	$a0, $sp, 280
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 272
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
.LBB3_41:                               # %.lr.ph279.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_42 Depth 2
                                        #       Child Loop BB3_43 Depth 3
                                        #       Child Loop BB3_46 Depth 3
                                        #       Child Loop BB3_49 Depth 3
                                        #       Child Loop BB3_52 Depth 3
                                        #       Child Loop BB3_57 Depth 3
                                        #       Child Loop BB3_77 Depth 3
                                        #         Child Loop BB3_80 Depth 4
                                        #       Child Loop BB3_64 Depth 3
                                        #         Child Loop BB3_67 Depth 4
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a3, $s0, $a1
	alsl.d	$a1, $fp, $s0, 3
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s6, $fp, $a0, 3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$fp, $fp, $a0, 3
.LBB3_42:                               #   Parent Loop BB3_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_43 Depth 3
                                        #       Child Loop BB3_46 Depth 3
                                        #       Child Loop BB3_49 Depth 3
                                        #       Child Loop BB3_52 Depth 3
                                        #       Child Loop BB3_57 Depth 3
                                        #       Child Loop BB3_77 Depth 3
                                        #         Child Loop BB3_80 Depth 4
                                        #       Child Loop BB3_64 Depth 3
                                        #         Child Loop BB3_67 Depth 4
	ld.d	$a0, $s6, 0
	slli.d	$s2, $s4, 3
	ldx.d	$a1, $a0, $s2
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.w	$a2, $a1, 24
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldx.d	$a1, $a0, $s2
	ld.d	$a0, $s0, 0
	ld.w	$a2, $a1, 28
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$a3, $s5, $s2
	alsl.d	$s0, $s4, $s5, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	addi.d	$a1, $zero, -1
	move	$a0, $a2
	.p2align	4, , 16
.LBB3_43:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, 0
	beqz	$a3, .LBB3_45
# %bb.44:                               #   in Loop: Header=BB3_43 Depth=3
	ld.d	$a4, $s6, 0
	ldx.d	$a4, $a4, $s2
	ld.w	$a4, $a4, 24
	addi.d	$a3, $a3, -45
	sltu	$a3, $zero, $a3
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bne	$a1, $a4, .LBB3_43
.LBB3_45:                               #   in Loop: Header=BB3_42 Depth=2
	nor	$a2, $a2, $zero
	add.w	$s8, $a0, $a2
	.p2align	4, , 16
.LBB3_46:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, 0
	beqz	$a3, .LBB3_48
# %bb.47:                               #   in Loop: Header=BB3_46 Depth=3
	ld.d	$a4, $s6, 0
	ldx.d	$a4, $a4, $s2
	ld.w	$a4, $a4, 28
	addi.d	$a3, $a3, -45
	sltu	$a3, $zero, $a3
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bne	$a1, $a4, .LBB3_46
.LBB3_48:                               #   in Loop: Header=BB3_42 Depth=2
	ld.d	$a1, $s0, 0
	add.w	$s3, $a0, $a2
	addi.d	$a0, $zero, -1
	move	$s7, $a1
	.p2align	4, , 16
.LBB3_49:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $s7, 0
	beqz	$a2, .LBB3_51
# %bb.50:                               #   in Loop: Header=BB3_49 Depth=3
	ld.d	$a3, $s6, 0
	ldx.d	$a3, $a3, $s2
	ld.w	$a3, $a3, 32
	addi.d	$a2, $a2, -45
	sltu	$a2, $zero, $a2
	add.w	$a0, $a0, $a2
	addi.d	$s7, $s7, 1
	bne	$a0, $a3, .LBB3_49
.LBB3_51:                               #   in Loop: Header=BB3_42 Depth=2
	nor	$a1, $a1, $zero
	add.w	$a4, $s7, $a1
	move	$s5, $s7
	.p2align	4, , 16
.LBB3_52:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $s5, 0
	beqz	$a2, .LBB3_54
# %bb.53:                               #   in Loop: Header=BB3_52 Depth=3
	ld.d	$a3, $s6, 0
	ldx.d	$a3, $a3, $s2
	ld.w	$a3, $a3, 36
	addi.d	$a2, $a2, -45
	sltu	$a2, $zero, $a2
	add.w	$a0, $a0, $a2
	addi.d	$s5, $s5, 1
	bne	$a0, $a3, .LBB3_52
.LBB3_54:                               #   in Loop: Header=BB3_42 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	add.w	$s1, $s5, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$s0, $s4, $a0, 3
	blt	$s3, $s8, .LBB3_62
# %bb.55:                               #   in Loop: Header=BB3_42 Depth=2
	blt	$s1, $t0, .LBB3_62
# %bb.56:                               # %.lr.ph.us
                                        #   in Loop: Header=BB3_42 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount1)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_init.nocount2)
	slli.d	$a2, $t0, 2
	alsl.d	$a3, $s8, $a3, 3
	move	$a6, $t0
	move	$a4, $s8
	.p2align	4, , 16
.LBB3_57:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a7, $a0, $a4
	move	$a5, $a6
	bnez	$a7, .LBB3_60
# %bb.58:                               #   in Loop: Header=BB3_57 Depth=3
	ldx.bu	$a6, $a1, $a5
	bnez	$a6, .LBB3_60
# %bb.59:                               #   in Loop: Header=BB3_57 Depth=3
	ld.d	$a6, $s6, 0
	ldx.d	$a6, $a6, $s2
	ld.d	$a7, $a3, 0
	fld.d	$fa0, $a6, 72
	fld.d	$fa1, $fp, 0
	fldx.s	$fa2, $a7, $a2
	fld.d	$fa3, $s0, 0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a7, $a2
	.p2align	4, , 16
.LBB3_60:                               #   in Loop: Header=BB3_57 Depth=3
	bge	$a4, $s3, .LBB3_62
# %bb.61:                               #   in Loop: Header=BB3_57 Depth=3
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a5, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 8
	blt	$a5, $s1, .LBB3_57
.LBB3_62:                               # %._crit_edge.us284
                                        #   in Loop: Header=BB3_42 Depth=2
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.d	$a1, $s3, $s8
	sub.d	$a2, $t0, $s1
	add.w	$s4, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s4
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	move	$s8, $t0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB3_75
# %bb.63:                               # %.preheader.us
                                        #   in Loop: Header=BB3_42 Depth=2
	srai.d	$a0, $s8, 63
	andn	$s7, $s8, $a0
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a0, $s8, 3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
.LBB3_64:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_67 Depth 4
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s5, $s4
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	blt	$s3, $s8, .LBB3_73
# %bb.65:                               #   in Loop: Header=BB3_64 Depth=3
	sub.w	$a5, $a0, $s5
	blt	$s1, $a5, .LBB3_73
# %bb.66:                               # %.lr.ph275.us
                                        #   in Loop: Header=BB3_64 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount1)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_init.nocount2)
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	move	$a3, $s8
	.p2align	4, , 16
.LBB3_67:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        #       Parent Loop BB3_64 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a4, $a5
	blt	$a5, $s7, .LBB3_71
# %bb.68:                               #   in Loop: Header=BB3_67 Depth=4
	ldx.bu	$a5, $a0, $a3
	bnez	$a5, .LBB3_71
# %bb.69:                               #   in Loop: Header=BB3_67 Depth=4
	ldx.bu	$a5, $a1, $a4
	bnez	$a5, .LBB3_71
# %bb.70:                               #   in Loop: Header=BB3_67 Depth=4
	ld.d	$a5, $s6, 0
	ldx.d	$a5, $a5, $s2
	fld.d	$fa0, $a5, 72
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $s0, 0
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a5, $a2, 0
	fmul.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	slli.d	$a6, $a4, 2
	fstx.s	$fa0, $a5, $a6
	.p2align	4, , 16
.LBB3_71:                               #   in Loop: Header=BB3_67 Depth=4
	bge	$a3, $s3, .LBB3_73
# %bb.72:                               #   in Loop: Header=BB3_67 Depth=4
	addi.d	$a3, $a3, 1
	addi.w	$a5, $a4, 1
	addi.d	$a2, $a2, 8
	blt	$a4, $s1, .LBB3_67
.LBB3_73:                               # %._crit_edge276.us
                                        #   in Loop: Header=BB3_64 Depth=3
	addi.w	$s4, $s5, -1
	bnez	$s5, .LBB3_64
.LBB3_74:                               # %.loopexit.us
                                        #   in Loop: Header=BB3_42 Depth=2
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s4, $s4, 1
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	bne	$s4, $s2, .LBB3_42
	b	.LBB3_84
	.p2align	4, , 16
.LBB3_75:                               # %.preheader237.us
                                        #   in Loop: Header=BB3_42 Depth=2
	ld.d	$t4, $sp, 128                   # 8-byte Folded Reload
	srai.d	$a0, $t4, 63
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(part_imp_match_init.nocount2)
	andn	$a0, $t4, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_init.nocount1)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	add.d	$a3, $a3, $s8
	slli.d	$a4, $s8, 2
	sub.d	$a5, $s5, $s7
	addi.d	$a5, $a5, 1
	b	.LBB3_77
	.p2align	4, , 16
.LBB3_76:                               # %._crit_edge269.us
                                        #   in Loop: Header=BB3_77 Depth=3
	addi.w	$s4, $a6, 1
	addi.d	$a5, $a5, -1
	beqz	$a6, .LBB3_74
.LBB3_77:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_80 Depth 4
	move	$a6, $s4
	add.w	$a7, $s4, $t4
	blt	$s3, $a7, .LBB3_76
# %bb.78:                               # %.lr.ph268.us.preheader
                                        #   in Loop: Header=BB3_77 Depth=3
	move	$t0, $a5
	move	$t1, $a4
	move	$t2, $a3
	b	.LBB3_80
	.p2align	4, , 16
.LBB3_79:                               #   in Loop: Header=BB3_80 Depth=4
	addi.w	$a7, $a7, 1
	addi.d	$t2, $t2, 1
	addi.w	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	beqz	$t0, .LBB3_76
.LBB3_80:                               # %.lr.ph268.us
                                        #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_42 Depth=2
                                        #       Parent Loop BB3_77 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	blt	$a7, $a0, .LBB3_79
# %bb.81:                               #   in Loop: Header=BB3_80 Depth=4
	ldx.bu	$t3, $a1, $a7
	bnez	$t3, .LBB3_79
# %bb.82:                               #   in Loop: Header=BB3_80 Depth=4
	ld.bu	$t3, $t2, 0
	bnez	$t3, .LBB3_79
# %bb.83:                               #   in Loop: Header=BB3_80 Depth=4
	ld.d	$t3, $s6, 0
	ldx.d	$t3, $t3, $s2
	fld.d	$fa0, $t3, 72
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $s0, 0
	slli.d	$t3, $a7, 3
	ldx.d	$t3, $a2, $t3
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $t3, $t1
	b	.LBB3_79
	.p2align	4, , 16
.LBB3_84:                               # %._crit_edge280.us
                                        #   in Loop: Header=BB3_41 Depth=1
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	bne	$fp, $s3, .LBB3_41
	b	.LBB3_87
.LBB3_85:                               # %.lr.ph282.split.preheader
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	move	$s2, $zero
.LBB3_86:                               # %.lr.ph282.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a3, $s0, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s3, -1
	addi.d	$s0, $s0, 8
	bnez	$s3, .LBB3_86
.LBB3_87:                               # %._crit_edge283
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
.Lfunc_end3:
	.size	part_imp_match_init, .Lfunc_end3-part_imp_match_init
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function partA__align
.LCPI4_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI4_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI4_2:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI4_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI4_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI4_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI4_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	partA__align
	.p2align	5
	.type	partA__align,@function
partA__align:                           # @partA__align
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	move	$s6, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$s5, %pc_hi20(partA__align.orlgth1)
	ld.w	$s4, $s5, %pc_lo12(partA__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.mseq1)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.mseq2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bnez	$s4, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(partA__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(partA__align.orlgth1)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.mseq2)
.LBB4_2:
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	move	$s0, $a0
	addi.w	$s3, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(partA__align.orlgth2)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.w	$s7, $a1, %pc_lo12(partA__align.orlgth2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(partA__align.w1)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.w2)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.initverticalw)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.lastverticalw)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.m)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.mp)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(partA__align.mseq)
	pcalau12i	$a0, %pc_hi20(partA__align.ogcp1)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.ogcp2)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.fgcp1)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.fgcp2)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.cpmx1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.cpmx2)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.floatwork)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.intwork)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	blt	$s4, $s3, .LBB4_4
# %bb.3:
	bge	$s7, $a1, .LBB4_9
.LBB4_4:
	pcalau12i	$s6, %pc_hi20(partA__align.match)
	blez	$s4, .LBB4_7
# %bb.5:
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	blez	$s7, .LBB4_8
# %bb.6:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(partA__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(partA__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(partA__align.orlgth1)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(partA__align.orlgth2)
	b	.LBB4_8
.LBB4_7:
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
.LBB4_8:
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_0)
	movgr2fr.w	$fa1, $s0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	addi.w	$s0, $s4, 100
	movgr2fr.w	$fa1, $s3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$s3, $s7, 100
	addi.w	$s5, $s7, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(partA__align.match)
	addi.w	$s6, $s4, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s3, $s0
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(partA__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.cpmx2)
	slt	$a0, $s3, $s0
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.intwork)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.w	$s4, $a0, %pc_lo12(partA__align.orlgth1)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(partA__align.orlgth2)
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
.LBB4_9:
	blez	$s1, .LBB4_17
# %bb.10:                               # %.lr.ph
	ld.d	$a0, $s8, %pc_lo12(partA__align.mseq)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.mseq1)
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$s1, $a3, .LBB4_15
# %bb.11:                               # %.lr.ph
	sub.d	$a3, $a1, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB4_15
# %bb.12:                               # %vector.ph
	bstrpick.d	$a2, $s1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 32
	addi.d	$a4, $a0, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_13:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB4_13
# %bb.14:                               # %middle.block
	beq	$a2, $s1, .LBB4_17
.LBB4_15:                               # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 3
	alsl.d	$a0, $a2, $a0, 3
	sub.d	$a2, $s1, $a2
	.p2align	4, , 16
.LBB4_16:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB4_16
.LBB4_17:                               # %.preheader459
	blez	$fp, .LBB4_23
# %bb.18:                               # %.lr.ph463
	ld.d	$a0, $s8, %pc_lo12(partA__align.mseq)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.mseq2)
	ori	$a2, $zero, 8
	bltu	$fp, $a2, .LBB4_20
# %bb.19:                               # %vector.memcheck641
	alsl.d	$a2, $s1, $a0, 3
	sub.d	$a2, $a1, $a2
	ori	$a3, $zero, 64
	bgeu	$a2, $a3, .LBB4_165
.LBB4_20:
	move	$a2, $zero
.LBB4_21:                               # %scalar.ph643.preheader
	slli.d	$a3, $a2, 3
	alsl.d	$a3, $s1, $a3, 3
	add.d	$a0, $a0, $a3
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a2, $fp, $a2
	.p2align	4, , 16
.LBB4_22:                               # %scalar.ph643
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB4_22
.LBB4_23:                               # %._crit_edge
	ld.d	$s5, $sp, 440
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s3, 0
	blt	$a0, $s4, .LBB4_26
# %bb.24:                               # %._crit_edge
	blt	$a1, $s7, .LBB4_26
# %bb.25:                               # %._crit_edge589
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB4_30
.LBB4_26:
	beqz	$a0, .LBB4_29
# %bb.27:
	beqz	$a1, .LBB4_29
# %bb.28:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(partA__align.orlgth1)
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s7, $a1, %pc_lo12(partA__align.orlgth2)
	ld.w	$a1, $s3, 0
.LBB4_29:
	slt	$a2, $a0, $s4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$s4, $a2, $a0
	slt	$a0, $a1, $s7
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$s6, $a0, $a1
	addi.w	$a0, $s4, 10
	addi.w	$a1, $s6, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s4, $s0, 0
	st.w	$s6, $s3, 0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
.LBB4_30:
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.cpmx1)
	ffint.s.w	$fs0, $fs0
	pcalau12i	$a2, %pc_hi20(partA__align.ijp)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(partA__align.ijp)
	move	$a0, $s2
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	move	$a2, $s3
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(partA__align.cpmx2)
	move	$a0, $s6
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp1)
	beqz	$s5, .LBB4_32
# %bb.31:
	ld.d	$s6, $sp, 464
	ld.d	$s7, $sp, 456
	move	$a5, $s5
	ld.d	$s5, $sp, 448
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	move	$a1, $fp
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s0
	move	$a5, $s5
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp2)
	move	$a1, $fp
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s0
	move	$a5, $s6
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB4_33
.LBB4_32:
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s8
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp2)
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s8
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB4_33:
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	fcvt.d.s	$fa0, $fs0
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	blez	$s4, .LBB4_40
# %bb.34:                               # %.lr.ph466
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(partA__align.fgcp1)
	bstrpick.d	$a1, $a7, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB4_37
# %bb.35:                               # %vector.memcheck656
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB4_159
# %bb.36:                               # %vector.memcheck656
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB4_159
.LBB4_37:
	move	$a3, $zero
.LBB4_38:                               # %scalar.ph658.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB4_39:                               # %scalar.ph658
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a0, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a0, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB4_39
.LBB4_40:                               # %.preheader458
	move	$s0, $s4
	blez	$t1, .LBB4_47
# %bb.41:                               # %.lr.ph468
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(partA__align.fgcp2)
	bstrpick.d	$a1, $t0, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB4_44
# %bb.42:                               # %vector.memcheck671
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB4_162
# %bb.43:                               # %vector.memcheck671
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB4_162
.LBB4_44:
	move	$a3, $zero
.LBB4_45:                               # %scalar.ph677.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB4_46:                               # %scalar.ph677
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a0, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a0, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB4_46
.LBB4_47:                               # %._crit_edge469
	ld.d	$a0, $sp, 432
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 424
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 408
	ld.d	$a0, $sp, 392
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.w1)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.w2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.initverticalw)
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(partA__align.cpmx2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s8, $a1, %pc_lo12(partA__align.cpmx1)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(partA__align.floatwork)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s7, $a1, %pc_lo12(partA__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$a1, $s4
	move	$a2, $s8
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	beqz	$a0, .LBB4_54
# %bb.48:
	move	$s8, $s3
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	blez	$s0, .LBB4_51
# %bb.49:                               # %.lr.ph.i
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $t0, 30, 0
	add.w	$a2, $a2, $s5
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_50:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	add.w	$a5, $a5, $s3
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	fldx.s	$fa0, $a5, $a2
	fld.s	$fa1, $a6, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB4_50
.LBB4_51:                               # %part_imp_match_out_vead_tate_gapmap.exit
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a5, $s8
	move	$a6, $s7
	move	$s4, $t0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t8, $s4
	ld.d	$t6, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	blez	$t6, .LBB4_55
# %bb.52:                               # %.lr.ph.i337
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	add.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	bstrpick.d	$a1, $t4, 30, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_53:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	add.w	$a4, $a4, $s5
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB4_53
	b	.LBB4_55
.LBB4_54:                               # %.critedge
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s4
	move	$a3, $zero
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t6, $s4
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	move	$s8, $s3
.LBB4_55:                               # %part_imp_match_out_vead_gapmap.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$t7, $a0, %got_pc_lo12(outgap)
	ld.w	$t0, $t7, 0
	ori	$a0, $zero, 1
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	bne	$t0, $a0, .LBB4_64
# %bb.56:                               # %.preheader454
	blez	$s0, .LBB4_60
# %bb.57:                               # %iter.check
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(partA__align.fgcp1)
	addi.d	$a1, $t8, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	ori	$a4, $zero, 1
	bltu	$a5, $a3, .LBB4_168
.LBB4_58:                               # %vec.epilog.scalar.ph.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB4_59:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB4_59
.LBB4_60:                               # %.preheader452
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	blez	$t6, .LBB4_87
# %bb.61:                               # %iter.check778
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(partA__align.fgcp2)
	addi.d	$a1, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	ori	$a4, $zero, 1
	bltu	$a5, $a3, .LBB4_172
.LBB4_62:                               # %vec.epilog.scalar.ph796.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a3, $a4, $t3, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB4_63:                               # %vec.epilog.scalar.ph796
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB4_63
	b	.LBB4_79
.LBB4_64:                               # %.preheader457
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	blez	$t6, .LBB4_71
# %bb.65:                               # %.lr.ph472
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB4_69
# %bb.66:                               # %vector.ph694
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI4_1)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_67:                               # %vector.body699
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a5, 0
	xvffint.d.l	$xr3, $xr3
	xvfmul.d	$xr3, $xr3, $xr2
	xvfmul.d	$xr4, $xr4, $xr2
	xvpermi.q	$xr6, $xr5, 1
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr7, 1
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr8, $xr7, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr8, $xr6, 3
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	xvfadd.d	$xr4, $xr8, $xr4
	xvfadd.d	$xr3, $xr7, $xr3
	xvpickve.d	$xr5, $xr3, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr3, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve.d	$xr5, $xr3, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve.d	$xr3, $xr4, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve.d	$xr3, $xr4, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve.d	$xr3, $xr4, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve.d	$xr3, $xr4, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_67
# %bb.68:                               # %middle.block703
	beq	$a2, $a4, .LBB4_71
.LBB4_69:                               # %scalar.ph692.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_70:                               # %scalar.ph692
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	add.w	$a2, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB4_70
.LBB4_71:                               # %.preheader455
	blez	$s0, .LBB4_78
# %bb.72:                               # %.lr.ph475
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t8, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB4_76
# %bb.73:                               # %vector.ph708
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI4_1)
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_74:                               # %vector.body713
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a5, 0
	xvffint.d.l	$xr3, $xr3
	xvfmul.d	$xr3, $xr3, $xr2
	xvfmul.d	$xr4, $xr4, $xr2
	xvpermi.q	$xr6, $xr5, 1
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr7, 1
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr8, $xr7, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr8, $xr6, 3
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	xvfadd.d	$xr4, $xr8, $xr4
	xvfadd.d	$xr3, $xr7, $xr3
	xvpickve.d	$xr5, $xr3, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr3, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve.d	$xr5, $xr3, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve.d	$xr3, $xr4, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve.d	$xr3, $xr4, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve.d	$xr3, $xr4, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve.d	$xr3, $xr4, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_74
# %bb.75:                               # %middle.block720
	beq	$a2, $a4, .LBB4_78
.LBB4_76:                               # %scalar.ph706.preheader
	mul.d	$a2, $a0, $a3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_77:                               # %scalar.ph706
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	add.w	$a2, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB4_77
.LBB4_78:                               # %.loopexit453
	blez	$t6, .LBB4_88
.LBB4_79:                               # %iter.check830
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(partA__align.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.m)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partA__align.mp)
	addi.d	$a3, $t4, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a7, $zero, 4
	ori	$a5, $zero, 1
	bgeu	$a4, $a7, .LBB4_83
.LBB4_80:                               # %vec.epilog.scalar.ph846.preheader
	alsl.d	$a4, $a5, $t3, 2
	addi.d	$a4, $a4, -4
	alsl.d	$a1, $a5, $a1, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB4_81:                               # %vec.epilog.scalar.ph846
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB4_81
.LBB4_82:                               # %._crit_edge486.loopexit
	ld.w	$t0, $t7, 0
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	b	.LBB4_89
.LBB4_83:                               # %vector.memcheck815
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $t3, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $t3, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_80
# %bb.84:                               # %vector.memcheck815
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB4_80
# %bb.85:                               # %vector.main.loop.iter.check832
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB4_234
# %bb.86:
	move	$a6, $zero
	b	.LBB4_238
.LBB4_87:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ori	$t0, $zero, 1
	b	.LBB4_89
.LBB4_88:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB4_89:                               # %._crit_edge486
	slli.d	$a0, $t4, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 30
	fldx.s	$fa0, $t3, $a1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(partA__align.lastverticalw)
	sltu	$a1, $zero, $t0
	add.w	$a3, $a1, $t8
	ori	$a1, $zero, 2
	fst.s	$fa0, $s4, 0
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	blt	$a3, $a1, .LBB4_104
# %bb.90:                               # %.lr.ph510
	st.d	$t7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t4, 30, 0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sltu	$a1, $zero, $a1
	slt	$a2, $zero, $t6
	and	$a1, $a1, $a2
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $a1, %pc_lo12(partA__align.ogcp2)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.ijp)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.m)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partA__align.mp)
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partA__align.fgcp2)
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partA__align.fgcp1)
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partA__align.ogcp1)
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a1, $a2, 4
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a1, $a4, 4
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s7, $zero, 1
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	b	.LBB4_92
	.p2align	4, , 16
.LBB4_91:                               # %._crit_edge502
                                        #   in Loop: Header=BB4_92 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	fldx.s	$fa0, $s3, $a1
	addi.d	$s7, $s7, 1
	fstx.s	$fa0, $s4, $a0
	move	$t3, $s3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beq	$s7, $a0, .LBB4_105
.LBB4_92:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_94 Depth 2
                                        #     Child Loop BB4_98 Depth 2
	move	$s8, $s2
	addi.d	$s6, $s7, -1
	slli.d	$s0, $s6, 2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s0
	move	$s3, $t5
	move	$s2, $t3
	fst.s	$fa0, $t3, 0
	move	$a0, $t5
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $t6
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_95
# %bb.93:                               # %.lr.ph.i342
                                        #   in Loop: Header=BB4_92 Depth=1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_94:                               #   Parent Loop BB4_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	add.w	$a5, $a5, $s5
	slli.d	$a5, $a5, 2
	fldx.s	$fa0, $a1, $a5
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB4_94
.LBB4_95:                               # %part_imp_match_out_vead_gapmap.exit347
                                        #   in Loop: Header=BB4_92 Depth=1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s3, 0
	move	$t5, $s2
	move	$s2, $s8
	ld.d	$t6, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	bnez	$a1, .LBB4_91
# %bb.96:                               # %.lr.ph501.preheader
                                        #   in Loop: Header=BB4_92 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	fld.s	$fa2, $t5, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	fld.s	$fa3, $a3, 4
	slli.d	$a3, $s7, 3
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $s0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	fldx.s	$fa1, $a4, $a0
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a3, $a3, 4
	addi.d	$a4, $s3, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	move	$t2, $t5
	b	.LBB4_98
	.p2align	4, , 16
.LBB4_97:                               #   in Loop: Header=BB4_98 Depth=2
	fadd.s	$fa3, $fa3, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	fld.s	$fa3, $a4, 0
	masknez	$t4, $a1, $t3
	maskeqz	$a2, $a2, $t3
	or	$a2, $a2, $t4
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $a4, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$a3, $a3, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, 4
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, -1
	beq	$t6, $a1, .LBB4_91
.LBB4_98:                               # %.lr.ph501
                                        #   Parent Loop BB4_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a3, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB4_100
# %bb.99:                               #   in Loop: Header=BB4_98 Depth=2
	add.d	$t3, $a2, $a5
	st.w	$t3, $a3, 0
	fmov.s	$fs0, $fa4
.LBB4_100:                              #   in Loop: Header=BB4_98 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB4_102
# %bb.101:                              #   in Loop: Header=BB4_98 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s7, $t3
	st.w	$t3, $a3, 0
	fmov.s	$fs0, $fa6
.LBB4_102:                              #   in Loop: Header=BB4_98 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB4_97
# %bb.103:                              #   in Loop: Header=BB4_98 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$s6, $a7, 0
	b	.LBB4_97
.LBB4_104:
	movgr2fr.w	$fs0, $zero
	bnez	$t0, .LBB4_120
	b	.LBB4_106
.LBB4_105:                              # %._crit_edge511.loopexit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$t0, $a0, 0
	move	$t3, $s3
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	bnez	$t0, .LBB4_120
.LBB4_106:                              # %.preheader451
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_113
# %bb.107:                              # %.lr.ph516
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB4_111
# %bb.108:                              # %vector.ph866
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $t4
	pcalau12i	$a5, %pc_hi20(.LCPI4_2)
	xvld	$xr2, $a5, %pc_lo12(.LCPI4_2)
	pcalau12i	$a5, %pc_hi20(.LCPI4_3)
	xvld	$xr3, $a5, %pc_lo12(.LCPI4_3)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_109:                              # %vector.body873
                                        # =>This Inner Loop Header: Depth=1
	xvsub.d	$xr5, $xr1, $xr2
	xvsub.d	$xr6, $xr1, $xr3
	xvpickve2gr.d	$a7, $xr6, 0
	xvinsgr2vr.w	$xr7, $a7, 0
	xvpickve2gr.d	$a7, $xr6, 1
	xvinsgr2vr.w	$xr7, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	xvinsgr2vr.w	$xr7, $a7, 2
	xvpickve2gr.d	$a7, $xr6, 3
	xvinsgr2vr.w	$xr7, $a7, 3
	xvpickve2gr.d	$a7, $xr5, 0
	xvinsgr2vr.w	$xr7, $a7, 4
	xvpickve2gr.d	$a7, $xr5, 1
	xvinsgr2vr.w	$xr7, $a7, 5
	xvpickve2gr.d	$a7, $xr5, 2
	xvinsgr2vr.w	$xr7, $a7, 6
	xvpickve2gr.d	$a7, $xr5, 3
	xvinsgr2vr.w	$xr7, $a7, 7
	xvmul.w	$xr5, $xr0, $xr7
	xvpermi.q	$xr6, $xr5, 1
	vext2xv.d.w	$xr6, $xr6
	xvffint.d.l	$xr6, $xr6
	vext2xv.d.w	$xr5, $xr5
	xvld	$xr7, $a5, 0
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr4
	xvfmul.d	$xr6, $xr6, $xr4
	xvpermi.q	$xr8, $xr7, 1
	vreplvei.w	$vr9, $vr8, 1
	fcvt.d.s	$ft1, $ft1
	vreplvei.w	$vr10, $vr8, 0
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr10, $xr9, 1
	vreplvei.w	$vr9, $vr8, 2
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr10, $xr9, 2
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr10, $xr8, 3
	vreplvei.w	$vr8, $vr7, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr9, $vr7, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr9, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr9, $xr7, 3
	xvfadd.d	$xr6, $xr10, $xr6
	xvfadd.d	$xr5, $xr9, $xr5
	xvpickve.d	$xr7, $xr5, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr5, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr5, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 3
	xvpickve.d	$xr5, $xr6, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 4
	xvpickve.d	$xr5, $xr6, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 5
	xvpickve.d	$xr5, $xr6, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 6
	xvpickve.d	$xr5, $xr6, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $a5, 0
	xvaddi.du	$xr3, $xr3, 8
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_109
# %bb.110:                              # %middle.block880
	beq	$a2, $a4, .LBB4_113
.LBB4_111:                              # %scalar.ph864.preheader
	sub.w	$a2, $t4, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_112:                              # %scalar.ph864
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	sub.w	$a2, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB4_112
.LBB4_113:                              # %.preheader450
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blez	$a0, .LBB4_120
# %bb.114:                              # %.lr.ph519
	bstrpick.d	$a0, $t8, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fneg.d	$fa1, $fa1
	addi.d	$a0, $t8, 1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a2, $a3, .LBB4_118
# %bb.115:                              # %vector.ph885
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$a0, $a2
	bstrins.d	$a0, $a4, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a4, %pc_hi20(.LCPI4_4)
	vld	$vr4, $a4, %pc_lo12(.LCPI4_4)
	addi.d	$a4, $s4, 4
	lu52i.d	$a5, $zero, -1026
	xvreplgr2vr.d	$xr5, $a5
	move	$a5, $a3
	.p2align	4, , 16
.LBB4_116:                              # %vector.body892
                                        # =>This Inner Loop Header: Depth=1
	vext2xv.du.wu	$xr6, $xr4
	vld	$vr7, $a4, 0
	xvffint.d.lu	$xr6, $xr6
	xvfmul.d	$xr6, $xr6, $xr5
	xvfadd.d	$xr6, $xr2, $xr6
	vreplvei.w	$vr8, $vr7, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr9, $vr7, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr9, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr9, $xr7, 3
	xvfmadd.d	$xr6, $xr3, $xr6, $xr9
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	vextrins.w	$vr8, $vr7, 16
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr8, $vr7, 32
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr8, $vr6, 48
	vst	$vr8, $a4, 0
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB4_116
# %bb.117:                              # %middle.block899
	beq	$a2, $a3, .LBB4_120
.LBB4_118:                              # %scalar.ph883.preheader
	alsl.d	$a2, $a0, $s4, 2
	sub.d	$a1, $a1, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB4_119:                              # %scalar.ph883
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 0
	movgr2fr.d	$fa3, $a3
	fld.s	$fa4, $a2, 0
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa0, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa1, $fa3, $fa4
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB4_119
.LBB4_120:                              # %.loopexit
	st.d	$t0, $sp, 264                   # 8-byte Folded Spill
	move	$s0, $t3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(partA__align.mseq1)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(partA__align.mseq2)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ijp)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s8, 0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	addi.w	$a3, $a0, 0
	add.w	$a1, $a0, $s8
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	beqz	$a2, .LBB4_127
# %bb.121:
	ori	$a4, $zero, 1
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	beq	$a5, $a4, .LBB4_138
# %bb.122:
	move	$a2, $s0
	fld.s	$fa0, $s4, 0
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	blez	$a4, .LBB4_133
# %bb.123:                              # %.lr.ph.i348
	slli.d	$a4, $s8, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	slli.d	$a5, $a0, 32
	srai.d	$a5, $a5, 30
	bstrpick.d	$a6, $s8, 30, 0
	move	$a7, $s8
	b	.LBB4_125
	.p2align	4, , 16
.LBB4_124:                              #   in Loop: Header=BB4_125 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$s4, $s4, 4
	beqz	$a6, .LBB4_133
.LBB4_125:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s4, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_124
# %bb.126:                              #   in Loop: Header=BB4_125 Depth=1
	ldx.d	$t0, $ra, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_124
.LBB4_127:
	ori	$a2, $zero, 1
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	beq	$a4, $a2, .LBB4_156
# %bb.128:
	move	$t0, $s0
	fld.s	$fa0, $s4, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	blez	$a2, .LBB4_151
# %bb.129:                              # %.lr.ph.i441
	slli.d	$a2, $s8, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a4, $a2, 3
	slli.d	$a2, $a0, 32
	srai.d	$a5, $a2, 30
	bstrpick.d	$a6, $s8, 30, 0
	move	$a7, $s8
	b	.LBB4_131
	.p2align	4, , 16
.LBB4_130:                              #   in Loop: Header=BB4_131 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$s4, $s4, 4
	beqz	$a6, .LBB4_151
.LBB4_131:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s4, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_130
# %bb.132:                              #   in Loop: Header=BB4_131 Depth=1
	ldx.d	$a2, $s5, $a4
	stx.w	$a7, $a2, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_130
.LBB4_133:                              # %.preheader9.i
	blez	$a3, .LBB4_138
# %bb.134:                              # %.lr.ph14.i
	slli.d	$a4, $s8, 32
	srai.d	$a4, $a4, 29
	slli.d	$a5, $a0, 2
	bstrpick.d	$a5, $a5, 32, 2
	slli.d	$a5, $a5, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_136
	.p2align	4, , 16
.LBB4_135:                              #   in Loop: Header=BB4_136 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 4
	beqz	$a6, .LBB4_138
.LBB4_136:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a2, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_135
# %bb.137:                              #   in Loop: Header=BB4_136 Depth=1
	ldx.d	$t0, $ra, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_135
.LBB4_138:                              # %.loopexit.i
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	bltz	$a2, .LBB4_146
# %bb.139:                              # %.lr.ph17.preheader.i
	addi.d	$a5, $s8, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 4
	bgeu	$a4, $a6, .LBB4_141
# %bb.140:
	move	$a5, $zero
	b	.LBB4_144
.LBB4_141:                              # %vector.ph954
	pcalau12i	$a6, %pc_hi20(.LCPI4_5)
	vld	$vr0, $a6, %pc_lo12(.LCPI4_5)
	bstrpick.d	$a5, $a5, 31, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $ra, 16
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_142:                              # %vector.body957
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$t0, $vr1, 0
	vstelm.w	$vr4, $t0, 0, 0
	vpickve2gr.d	$t0, $vr1, 1
	vstelm.w	$vr4, $t0, 0, 1
	vpickve2gr.d	$t0, $vr2, 0
	vstelm.w	$vr3, $t0, 0, 0
	vpickve2gr.d	$t0, $vr2, 1
	vstelm.w	$vr3, $t0, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_142
# %bb.143:                              # %middle.block965
	beq	$a4, $a5, .LBB4_146
.LBB4_144:                              # %.lr.ph17.i.preheader
	alsl.d	$a6, $a5, $ra, 3
	sub.d	$a4, $a4, $a5
	addi.d	$a5, $a5, 1
	.p2align	4, , 16
.LBB4_145:                              # %.lr.ph17.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB4_145
.LBB4_146:                              # %.preheader8.i
	bltz	$a3, .LBB4_195
# %bb.147:                              # %iter.check971
	ld.d	$a3, $ra, 0
	addi.d	$a6, $a0, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB4_149
# %bb.148:
	move	$a5, $zero
	b	.LBB4_193
.LBB4_149:                              # %vector.main.loop.iter.check973
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB4_186
# %bb.150:
	move	$a5, $zero
	b	.LBB4_190
.LBB4_151:                              # %.preheader9.i353
	blez	$a3, .LBB4_156
# %bb.152:                              # %.lr.ph14.i433
	slli.d	$a2, $s8, 32
	srai.d	$a4, $a2, 29
	slli.d	$a2, $a0, 2
	bstrpick.d	$a2, $a2, 32, 2
	slli.d	$a5, $a2, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_154
	.p2align	4, , 16
.LBB4_153:                              #   in Loop: Header=BB4_154 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 4
	beqz	$a6, .LBB4_156
.LBB4_154:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_153
# %bb.155:                              #   in Loop: Header=BB4_154 Depth=1
	ldx.d	$a2, $s5, $a4
	stx.w	$a7, $a2, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_153
.LBB4_156:                              # %.loopexit.i355
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	bltz	$a2, .LBB4_181
# %bb.157:                              # %.lr.ph17.preheader.i357
	addi.d	$a4, $s8, 1
	bstrpick.d	$a2, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a2, $a5, .LBB4_176
# %bb.158:
	move	$a4, $zero
	b	.LBB4_179
.LBB4_159:                              # %vector.ph660
	bstrpick.d	$a3, $a7, 30, 3
	slli.d	$a3, $a3, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr2, $a4
	lu52i.d	$a4, $zero, 1022
	xvreplgr2vr.d	$xr3, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_160:                              # %vector.body663
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a4, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	xvld	$xr5, $a5, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a4, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB4_160
# %bb.161:                              # %middle.block668
	beq	$a1, $a3, .LBB4_40
	b	.LBB4_38
.LBB4_162:                              # %vector.ph679
	bstrpick.d	$a3, $t0, 30, 3
	slli.d	$a3, $a3, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr2, $a4
	lu52i.d	$a4, $zero, 1022
	xvreplgr2vr.d	$xr3, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_163:                              # %vector.body684
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a4, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	xvld	$xr5, $a5, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a4, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB4_163
# %bb.164:                              # %middle.block689
	beq	$a1, $a3, .LBB4_47
	b	.LBB4_45
.LBB4_165:                              # %vector.ph645
	slli.d	$a4, $s1, 3
	bstrpick.d	$a2, $fp, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 32
	add.d	$a4, $a4, $a0
	addi.d	$a4, $a4, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_166:                              # %vector.body648
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB4_166
# %bb.167:                              # %middle.block653
	beq	$a2, $fp, .LBB4_23
	b	.LBB4_21
.LBB4_168:                              # %vector.memcheck723
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a1, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_58
# %bb.169:                              # %vector.memcheck723
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB4_58
# %bb.170:                              # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB4_296
# %bb.171:
	move	$a5, $zero
	b	.LBB4_300
.LBB4_172:                              # %vector.memcheck763
	addi.d	$a5, $t3, 4
	alsl.d	$a6, $a1, $t3, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_62
# %bb.173:                              # %vector.memcheck763
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB4_62
# %bb.174:                              # %vector.main.loop.iter.check780
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB4_303
# %bb.175:
	move	$a5, $zero
	b	.LBB4_307
.LBB4_176:                              # %vector.ph904
	pcalau12i	$a5, %pc_hi20(.LCPI4_5)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_5)
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s5, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_177:                              # %vector.body907
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, -16
	vld	$vr2, $a5, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a7, $vr1, 0
	vstelm.w	$vr4, $a7, 0, 0
	vpickve2gr.d	$a7, $vr1, 1
	vstelm.w	$vr4, $a7, 0, 1
	vpickve2gr.d	$a7, $vr2, 0
	vstelm.w	$vr3, $a7, 0, 0
	vpickve2gr.d	$a7, $vr2, 1
	vstelm.w	$vr3, $a7, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_177
# %bb.178:                              # %middle.block914
	beq	$a2, $a4, .LBB4_181
.LBB4_179:                              # %.lr.ph17.i359.preheader
	alsl.d	$a5, $a4, $s5, 3
	sub.d	$a2, $a2, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB4_180:                              # %.lr.ph17.i359
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 1
	bnez	$a2, .LBB4_180
.LBB4_181:                              # %.preheader8.i363
	bltz	$a3, .LBB4_250
# %bb.182:                              # %iter.check920
	ld.d	$a2, $s5, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB4_184
# %bb.183:
	move	$a4, $zero
	b	.LBB4_248
.LBB4_184:                              # %vector.main.loop.iter.check922
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB4_241
# %bb.185:
	move	$a4, $zero
	b	.LBB4_245
.LBB4_186:                              # %vector.ph974
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI4_6)
	xvld	$xr0, $a7, %pc_lo12(.LCPI4_6)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB4_187:                              # %vector.body977
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB4_187
# %bb.188:                              # %middle.block983
	beq	$a4, $a5, .LBB4_195
# %bb.189:                              # %vec.epilog.iter.check988
	andi	$a7, $a6, 12
	beqz	$a7, .LBB4_193
.LBB4_190:                              # %vec.epilog.ph987
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI4_7)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_7)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB4_191:                              # %vec.epilog.vector.body996
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB4_191
# %bb.192:                              # %vec.epilog.middle.block1001
	beq	$a4, $a5, .LBB4_195
.LBB4_193:                              # %vec.epilog.scalar.ph986.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB4_194:                              # %vec.epilog.scalar.ph986
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB4_194
.LBB4_195:                              # %.preheader7.i
	blez	$s1, .LBB4_198
# %bb.196:                              # %.lr.ph22.i
	move	$a3, $s3
	move	$a4, $s1
	.p2align	4, , 16
.LBB4_197:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	add.d	$a6, $a5, $a1
	st.d	$a6, $a3, 0
	stx.b	$zero, $a5, $a1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_197
.LBB4_198:                              # %.preheader6.i
	ld.d	$a2, $sp, 384
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	blez	$fp, .LBB4_201
# %bb.199:                              # %.lr.ph24.i
	move	$a4, $s7
	move	$a5, $fp
	.p2align	4, , 16
.LBB4_200:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	add.d	$a7, $a6, $a1
	st.d	$a7, $a4, 0
	stx.b	$zero, $a6, $a1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB4_200
.LBB4_201:                              # %._crit_edge.i
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.w	$zero, $a2, 0
	bltz	$a1, .LBB4_286
# %bb.202:                              # %.lr.ph53.i
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(impmtx)
	ld.d	$a2, $a5, %pc_lo12(impmtx)
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	bstrpick.d	$a6, $s1, 31, 0
	bstrpick.d	$a7, $fp, 31, 0
	addi.w	$t0, $zero, -1
	ori	$t1, $zero, 45
	move	$t2, $a0
	b	.LBB4_204
	.p2align	4, , 16
.LBB4_203:                              # %._crit_edge47.i
                                        #   in Loop: Header=BB4_204 Depth=1
	addi.w	$a4, $a4, 2
	move	$s8, $t3
	blt	$a1, $a4, .LBB4_286
.LBB4_204:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_211 Depth 2
                                        #       Child Loop BB4_212 Depth 3
                                        #       Child Loop BB4_214 Depth 3
                                        #     Child Loop BB4_219 Depth 2
                                        #       Child Loop BB4_220 Depth 3
                                        #       Child Loop BB4_222 Depth 3
                                        #     Child Loop BB4_230 Depth 2
                                        #     Child Loop BB4_233 Depth 2
	addi.w	$t4, $s8, 0
	slli.d	$t3, $t4, 3
	ldx.d	$t3, $ra, $t3
	addi.w	$t5, $t2, 0
	slli.d	$t6, $t5, 2
	ldx.w	$t7, $t3, $t6
	bltz	$t7, .LBB4_207
# %bb.205:                              #   in Loop: Header=BB4_204 Depth=1
	beqz	$t7, .LBB4_208
# %bb.206:                              #   in Loop: Header=BB4_204 Depth=1
	sub.w	$t3, $s8, $t7
	b	.LBB4_209
	.p2align	4, , 16
.LBB4_207:                              #   in Loop: Header=BB4_204 Depth=1
	addi.w	$t3, $s8, -1
	nor	$t8, $t3, $zero
	add.w	$s0, $s8, $t8
	bnez	$s0, .LBB4_211
	b	.LBB4_216
	.p2align	4, , 16
.LBB4_208:                              #   in Loop: Header=BB4_204 Depth=1
	addi.w	$t3, $s8, -1
.LBB4_209:                              #   in Loop: Header=BB4_204 Depth=1
	move	$t7, $t0
	nor	$t8, $t3, $zero
	add.w	$s0, $s8, $t8
	bnez	$s0, .LBB4_211
	b	.LBB4_216
	.p2align	4, , 16
.LBB4_210:                              # %._crit_edge29.i
                                        #   in Loop: Header=BB4_211 Depth=2
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB4_215
.LBB4_211:                              # %.preheader3.i
                                        #   Parent Loop BB4_204 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_212 Depth 3
                                        #       Child Loop BB4_214 Depth 3
	move	$s4, $s2
	move	$s6, $s3
	move	$ra, $a6
	blez	$s1, .LBB4_213
	.p2align	4, , 16
.LBB4_212:                              # %.lr.ph26.i
                                        #   Parent Loop BB4_204 Depth=1
                                        #     Parent Loop BB4_211 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s4, 0
	ld.d	$a5, $s6, 0
	add.d	$a2, $a2, $s0
	ldx.b	$a2, $a2, $t3
	addi.d	$a3, $a5, -1
	st.d	$a3, $s6, 0
	st.b	$a2, $a5, -1
	addi.d	$ra, $ra, -1
	addi.d	$s6, $s6, 8
	addi.d	$s4, $s4, 8
	bnez	$ra, .LBB4_212
.LBB4_213:                              # %.preheader2.i
                                        #   in Loop: Header=BB4_211 Depth=2
	move	$s4, $s7
	move	$s6, $a7
	blez	$fp, .LBB4_210
	.p2align	4, , 16
.LBB4_214:                              # %.lr.ph28.i
                                        #   Parent Loop BB4_204 Depth=1
                                        #     Parent Loop BB4_211 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s4, 0
	addi.d	$a3, $a2, -1
	st.d	$a3, $s4, 0
	st.b	$t1, $a2, -1
	addi.d	$s6, $s6, -1
	addi.d	$s4, $s4, 8
	bnez	$s6, .LBB4_214
	b	.LBB4_210
	.p2align	4, , 16
.LBB4_215:                              # %._crit_edge32.loopexit.i
                                        #   in Loop: Header=BB4_204 Depth=1
	add.d	$a2, $s8, $a4
	add.d	$a4, $t8, $a2
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
.LBB4_216:                              # %._crit_edge32.i
                                        #   in Loop: Header=BB4_204 Depth=1
	add.w	$t2, $t7, $t2
	beq	$t7, $t0, .LBB4_223
# %bb.217:                              # %.preheader1.preheader.i
                                        #   in Loop: Header=BB4_204 Depth=1
	nor	$t7, $t7, $zero
	b	.LBB4_219
	.p2align	4, , 16
.LBB4_218:                              # %._crit_edge38.i
                                        #   in Loop: Header=BB4_219 Depth=2
	addi.d	$t7, $t7, -1
	addi.d	$a4, $a4, 1
	beqz	$t7, .LBB4_223
.LBB4_219:                              # %.preheader1.i
                                        #   Parent Loop BB4_204 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_220 Depth 3
                                        #       Child Loop BB4_222 Depth 3
	move	$t8, $s3
	move	$s0, $a6
	blez	$s1, .LBB4_221
	.p2align	4, , 16
.LBB4_220:                              # %.lr.ph35.i
                                        #   Parent Loop BB4_204 Depth=1
                                        #     Parent Loop BB4_219 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $t8, 0
	addi.d	$a3, $a2, -1
	st.d	$a3, $t8, 0
	st.b	$t1, $a2, -1
	addi.d	$s0, $s0, -1
	addi.d	$t8, $t8, 8
	bnez	$s0, .LBB4_220
.LBB4_221:                              # %.preheader.i
                                        #   in Loop: Header=BB4_219 Depth=2
	move	$t8, $s6
	move	$s0, $s7
	move	$s4, $a7
	blez	$fp, .LBB4_218
	.p2align	4, , 16
.LBB4_222:                              # %.lr.ph37.i
                                        #   Parent Loop BB4_204 Depth=1
                                        #     Parent Loop BB4_219 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $t8, 0
	ld.d	$a3, $s0, 0
	add.d	$a2, $a2, $t7
	ldx.b	$a2, $a2, $t2
	addi.d	$a5, $a3, -1
	st.d	$a5, $s0, 0
	st.b	$a2, $a3, -1
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 8
	addi.d	$t8, $t8, 8
	bnez	$s4, .LBB4_222
	b	.LBB4_218
	.p2align	4, , 16
.LBB4_223:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	beq	$t4, $a2, .LBB4_226
# %bb.224:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB4_204 Depth=1
	addi.w	$a2, $a0, 0
	beq	$t5, $a2, .LBB4_226
# %bb.225:                              #   in Loop: Header=BB4_204 Depth=1
	slli.d	$a2, $t4, 2
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $t6
	slli.d	$a2, $a2, 3
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a2, $a5, $a2
	add.w	$a3, $a3, $s5
	slli.d	$a3, $a3, 2
	fldx.s	$fa0, $a2, $a3
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
.LBB4_226:                              #   in Loop: Header=BB4_204 Depth=1
	blez	$t4, .LBB4_286
# %bb.227:                              #   in Loop: Header=BB4_204 Depth=1
	blez	$t5, .LBB4_286
# %bb.228:                              # %.preheader5.i
                                        #   in Loop: Header=BB4_204 Depth=1
	blez	$s1, .LBB4_231
# %bb.229:                              # %.lr.ph44.i
                                        #   in Loop: Header=BB4_204 Depth=1
	move	$t4, $s2
	move	$t5, $s3
	move	$t6, $a6
	.p2align	4, , 16
.LBB4_230:                              #   Parent Loop BB4_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $t4, 0
	ld.d	$a3, $t5, 0
	ldx.b	$a2, $a2, $t3
	addi.d	$a5, $a3, -1
	st.d	$a5, $t5, 0
	st.b	$a2, $a3, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB4_230
.LBB4_231:                              # %.preheader4.i
                                        #   in Loop: Header=BB4_204 Depth=1
	blez	$fp, .LBB4_203
# %bb.232:                              # %.lr.ph46.i
                                        #   in Loop: Header=BB4_204 Depth=1
	move	$t4, $s6
	move	$t5, $s7
	move	$t6, $a7
	.p2align	4, , 16
.LBB4_233:                              #   Parent Loop BB4_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $t4, 0
	ld.d	$a3, $t5, 0
	ldx.b	$a2, $a2, $t2
	addi.d	$a5, $a3, -1
	st.d	$a5, $t5, 0
	st.b	$a2, $a3, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB4_233
	b	.LBB4_203
.LBB4_234:                              # %vector.ph833
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	xvldrepl.w	$xr0, $a0, 0
	addi.d	$a5, $t3, 32
	addi.d	$a7, $a1, 36
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	move	$t1, $a6
	.p2align	4, , 16
.LBB4_235:                              # %vector.body836
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a7, -32
	xvst	$xr3, $a7, 0
	xvst	$xr1, $t0, -32
	xvst	$xr1, $t0, 0
	addi.d	$t1, $t1, -16
	addi.d	$a5, $a5, 64
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB4_235
# %bb.236:                              # %middle.block843
	beq	$a4, $a6, .LBB4_82
# %bb.237:                              # %vec.epilog.iter.check848
	andi	$a5, $a4, 12
	beqz	$a5, .LBB4_310
.LBB4_238:                              # %vec.epilog.ph847
	move	$a7, $a4
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $t0, 1, 0
	vldrepl.w	$vr0, $a0, 0
	slli.d	$t1, $a6, 2
	alsl.d	$t0, $a6, $t3, 2
	addi.d	$t2, $t1, 4
	add.d	$t1, $a1, $t2
	add.d	$t2, $a2, $t2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB4_239:                              # %vec.epilog.vector.body853
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t1, 0
	vst	$vr1, $t2, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a6, $a6, 4
	addi.d	$t2, $t2, 16
	bnez	$a6, .LBB4_239
# %bb.240:                              # %vec.epilog.middle.block860
	bne	$a4, $a7, .LBB4_80
	b	.LBB4_82
.LBB4_241:                              # %vector.ph923
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI4_6)
	xvld	$xr0, $a6, %pc_lo12(.LCPI4_6)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_242:                              # %vector.body926
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_242
# %bb.243:                              # %middle.block932
	beq	$a3, $a4, .LBB4_250
# %bb.244:                              # %vec.epilog.iter.check937
	andi	$a6, $a5, 12
	beqz	$a6, .LBB4_248
.LBB4_245:                              # %vec.epilog.ph936
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI4_7)
	vld	$vr0, $a4, %pc_lo12(.LCPI4_7)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB4_246:                              # %vec.epilog.vector.body944
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB4_246
# %bb.247:                              # %vec.epilog.middle.block949
	beq	$a3, $a4, .LBB4_250
.LBB4_248:                              # %vec.epilog.scalar.ph935.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB4_249:                              # %vec.epilog.scalar.ph935
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB4_249
.LBB4_250:                              # %.preheader7.i369
	blez	$s1, .LBB4_253
# %bb.251:                              # %.lr.ph22.i428
	move	$a2, $s3
	move	$a3, $s1
	.p2align	4, , 16
.LBB4_252:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB4_252
.LBB4_253:                              # %.preheader6.i370
	blez	$fp, .LBB4_256
# %bb.254:                              # %.lr.ph24.i423
	move	$a2, $s7
	move	$a3, $fp
	.p2align	4, , 16
.LBB4_255:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB4_255
.LBB4_256:                              # %._crit_edge.i371
	bltz	$a1, .LBB4_286
# %bb.257:                              # %.lr.ph53.i372
	move	$a3, $zero
	bstrpick.d	$a2, $s1, 31, 0
	bstrpick.d	$a4, $fp, 31, 0
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 45
	b	.LBB4_259
	.p2align	4, , 16
.LBB4_258:                              # %._crit_edge47.i398
                                        #   in Loop: Header=BB4_259 Depth=1
	addi.w	$a3, $a3, 2
	move	$s8, $a7
	blt	$a1, $a3, .LBB4_286
.LBB4_259:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_266 Depth 2
                                        #       Child Loop BB4_267 Depth 3
                                        #       Child Loop BB4_269 Depth 3
                                        #     Child Loop BB4_274 Depth 2
                                        #       Child Loop BB4_275 Depth 3
                                        #       Child Loop BB4_277 Depth 3
                                        #     Child Loop BB4_282 Depth 2
                                        #     Child Loop BB4_285 Depth 2
	addi.w	$t0, $s8, 0
	slli.d	$a7, $t0, 3
	ldx.d	$a7, $s5, $a7
	addi.w	$t1, $a0, 0
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a7, $t2
	bltz	$t2, .LBB4_262
# %bb.260:                              #   in Loop: Header=BB4_259 Depth=1
	beqz	$t2, .LBB4_263
# %bb.261:                              #   in Loop: Header=BB4_259 Depth=1
	sub.w	$a7, $s8, $t2
	b	.LBB4_264
	.p2align	4, , 16
.LBB4_262:                              #   in Loop: Header=BB4_259 Depth=1
	addi.w	$a7, $s8, -1
	nor	$t3, $a7, $zero
	add.w	$t4, $s8, $t3
	bnez	$t4, .LBB4_266
	b	.LBB4_271
	.p2align	4, , 16
.LBB4_263:                              #   in Loop: Header=BB4_259 Depth=1
	addi.w	$a7, $s8, -1
.LBB4_264:                              #   in Loop: Header=BB4_259 Depth=1
	move	$t2, $a5
	nor	$t3, $a7, $zero
	add.w	$t4, $s8, $t3
	bnez	$t4, .LBB4_266
	b	.LBB4_271
	.p2align	4, , 16
.LBB4_265:                              # %._crit_edge29.i384
                                        #   in Loop: Header=BB4_266 Depth=2
	addi.d	$t4, $t4, -1
	beqz	$t4, .LBB4_270
.LBB4_266:                              # %.preheader3.i381
                                        #   Parent Loop BB4_259 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_267 Depth 3
                                        #       Child Loop BB4_269 Depth 3
	move	$t5, $s2
	move	$t6, $s3
	move	$t7, $a2
	blez	$s1, .LBB4_268
	.p2align	4, , 16
.LBB4_267:                              # %.lr.ph26.i419
                                        #   Parent Loop BB4_259 Depth=1
                                        #     Parent Loop BB4_266 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t8, $t5, 0
	ld.d	$s0, $t6, 0
	add.d	$t8, $t8, $t4
	ldx.b	$t8, $t8, $a7
	addi.d	$s4, $s0, -1
	st.d	$s4, $t6, 0
	st.b	$t8, $s0, -1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	bnez	$t7, .LBB4_267
.LBB4_268:                              # %.preheader2.i383
                                        #   in Loop: Header=BB4_266 Depth=2
	move	$t5, $s7
	move	$t6, $a4
	blez	$fp, .LBB4_265
	.p2align	4, , 16
.LBB4_269:                              # %.lr.ph28.i415
                                        #   Parent Loop BB4_259 Depth=1
                                        #     Parent Loop BB4_266 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t5, 0
	addi.d	$t8, $t7, -1
	st.d	$t8, $t5, 0
	st.b	$a6, $t7, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	bnez	$t6, .LBB4_269
	b	.LBB4_265
	.p2align	4, , 16
.LBB4_270:                              # %._crit_edge32.loopexit.i386
                                        #   in Loop: Header=BB4_259 Depth=1
	add.d	$a3, $s8, $a3
	add.d	$a3, $t3, $a3
.LBB4_271:                              # %._crit_edge32.i387
                                        #   in Loop: Header=BB4_259 Depth=1
	add.w	$a0, $t2, $a0
	beq	$t2, $a5, .LBB4_278
# %bb.272:                              # %.preheader1.preheader.i388
                                        #   in Loop: Header=BB4_259 Depth=1
	nor	$t2, $t2, $zero
	b	.LBB4_274
	.p2align	4, , 16
.LBB4_273:                              # %._crit_edge38.i392
                                        #   in Loop: Header=BB4_274 Depth=2
	addi.d	$t2, $t2, -1
	addi.d	$a3, $a3, 1
	beqz	$t2, .LBB4_278
.LBB4_274:                              # %.preheader1.i389
                                        #   Parent Loop BB4_259 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_275 Depth 3
                                        #       Child Loop BB4_277 Depth 3
	move	$t3, $s3
	move	$t4, $a2
	blez	$s1, .LBB4_276
	.p2align	4, , 16
.LBB4_275:                              # %.lr.ph35.i411
                                        #   Parent Loop BB4_259 Depth=1
                                        #     Parent Loop BB4_274 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t5, $t3, 0
	addi.d	$t6, $t5, -1
	st.d	$t6, $t3, 0
	st.b	$a6, $t5, -1
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 8
	bnez	$t4, .LBB4_275
.LBB4_276:                              # %.preheader.i391
                                        #   in Loop: Header=BB4_274 Depth=2
	move	$t3, $s6
	move	$t4, $s7
	move	$t5, $a4
	blez	$fp, .LBB4_273
	.p2align	4, , 16
.LBB4_277:                              # %.lr.ph37.i407
                                        #   Parent Loop BB4_259 Depth=1
                                        #     Parent Loop BB4_274 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t6, $t3, 0
	ld.d	$t7, $t4, 0
	add.d	$t6, $t6, $t2
	ldx.b	$t6, $t6, $a0
	addi.d	$t8, $t7, -1
	st.d	$t8, $t4, 0
	st.b	$t6, $t7, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	bnez	$t5, .LBB4_277
	b	.LBB4_273
	.p2align	4, , 16
.LBB4_278:                              # %._crit_edge41.i394
                                        #   in Loop: Header=BB4_259 Depth=1
	blez	$t0, .LBB4_286
# %bb.279:                              # %._crit_edge41.i394
                                        #   in Loop: Header=BB4_259 Depth=1
	blez	$t1, .LBB4_286
# %bb.280:                              # %.preheader5.i396
                                        #   in Loop: Header=BB4_259 Depth=1
	blez	$s1, .LBB4_283
# %bb.281:                              # %.lr.ph44.i403
                                        #   in Loop: Header=BB4_259 Depth=1
	move	$t0, $s2
	move	$t1, $s3
	move	$t2, $a2
	.p2align	4, , 16
.LBB4_282:                              #   Parent Loop BB4_259 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t0, 0
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $a7
	addi.d	$t5, $t4, -1
	st.d	$t5, $t1, 0
	st.b	$t3, $t4, -1
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	bnez	$t2, .LBB4_282
.LBB4_283:                              # %.preheader4.i397
                                        #   in Loop: Header=BB4_259 Depth=1
	blez	$fp, .LBB4_258
# %bb.284:                              # %.lr.ph46.i399
                                        #   in Loop: Header=BB4_259 Depth=1
	move	$t0, $s6
	move	$t1, $s7
	move	$t2, $a4
	.p2align	4, , 16
.LBB4_285:                              #   Parent Loop BB4_259 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t0, 0
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $a0
	addi.d	$t5, $t4, -1
	st.d	$t5, $t1, 0
	st.b	$t3, $t4, -1
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	bnez	$t2, .LBB4_285
	b	.LBB4_258
.LBB4_286:                              # %Atracking_localhom.exit
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB4_295
# %bb.287:                              # %Atracking_localhom.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB4_295
# %bb.288:
	blez	$s1, .LBB4_291
.LBB4_289:                              # %.lr.ph522
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(partA__align.mseq1)
	.p2align	4, , 16
.LBB4_290:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB4_290
.LBB4_291:                              # %.preheader
	blez	$fp, .LBB4_294
# %bb.292:                              # %.lr.ph524
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(partA__align.mseq2)
	.p2align	4, , 16
.LBB4_293:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, -1
	addi.d	$s6, $s6, 8
	bnez	$fp, .LBB4_293
.LBB4_294:                              # %._crit_edge525
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB4_295:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	bgtz	$s1, .LBB4_289
	b	.LBB4_291
.LBB4_296:                              # %vector.ph738
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_297:                              # %vector.body741
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a6, -32
	xvst	$xr2, $a6, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_297
# %bb.298:                              # %middle.block750
	beq	$a3, $a5, .LBB4_60
# %bb.299:                              # %vec.epilog.iter.check
	andi	$a4, $a3, 12
	beqz	$a4, .LBB4_311
.LBB4_300:                              # %vec.epilog.ph
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$t0, $a5, $t0, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB4_301:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB4_301
# %bb.302:                              # %vec.epilog.middle.block
	bne	$a3, $a6, .LBB4_58
	b	.LBB4_60
.LBB4_303:                              # %vector.ph781
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	addi.d	$a6, $t3, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_304:                              # %vector.body784
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a6, -32
	xvst	$xr2, $a6, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_304
# %bb.305:                              # %middle.block793
	beq	$a3, $a5, .LBB4_79
# %bb.306:                              # %vec.epilog.iter.check798
	andi	$a4, $a3, 12
	beqz	$a4, .LBB4_312
.LBB4_307:                              # %vec.epilog.ph797
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	alsl.d	$t0, $a5, $t3, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB4_308:                              # %vec.epilog.vector.body803
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB4_308
# %bb.309:                              # %vec.epilog.middle.block811
	bne	$a3, $a6, .LBB4_62
	b	.LBB4_79
.LBB4_310:
	addi.d	$a5, $a6, 1
	b	.LBB4_80
.LBB4_311:
	addi.d	$a4, $a5, 1
	b	.LBB4_58
.LBB4_312:
	addi.d	$a4, $a5, 1
	b	.LBB4_62
.Lfunc_end4:
	.size	partA__align, .Lfunc_end4-partA__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -1104
	st.d	$fp, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1088                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1080                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1072                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1064                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1056                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1048                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1040                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1032                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1024                 # 8-byte Folded Spill
	beqz	$a7, .LBB5_8
# %bb.1:
	blez	$a4, .LBB5_8
# %bb.2:                                # %.preheader60.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 208
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	ld.d	$t3, $t5, 0
	slli.d	$t2, $t2, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t3, $t2
	beq	$a7, $a4, .LBB5_8
.LBB5_4:                                # %.preheader60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	move	$t3, $zero
	move	$t4, $zero
	move	$t2, $zero
	alsl.d	$t6, $a7, $a5, 3
	alsl.d	$t5, $a7, $a6, 3
	slli.d	$t7, $a7, 2
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_6 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 1
	beq	$t3, $t0, .LBB5_3
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t8, $a2, $t3
	fldx.s	$fa1, $t8, $t7
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_5
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=2
	ld.d	$t8, $t6, 0
	ld.d	$fp, $t5, 0
	slli.d	$s0, $t2, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t4, $fp, $s0
	addi.w	$t2, $t2, 1
	b	.LBB5_5
.LBB5_8:                                # %.loopexit
	ld.d	$a7, $a1, 96
	ld.d	$t0, $a1, 104
	ld.d	$t1, $a1, 0
	slli.d	$a2, $a3, 2
	fldx.s	$fs0, $a7, $a2
	fldx.s	$ft15, $t0, $a2
	fldx.s	$fs5, $t1, $a2
	ld.d	$a3, $a1, 8
	ld.d	$a7, $a1, 16
	ld.d	$t0, $a1, 24
	ld.d	$t1, $a1, 32
	fldx.s	$ft14, $a3, $a2
	fldx.s	$ft12, $a7, $a2
	fldx.s	$ft11, $t0, $a2
	fldx.s	$ft10, $t1, $a2
	xvst	$xr18, $sp, 272                 # 32-byte Folded Spill
	ld.d	$a3, $a1, 40
	ld.d	$a7, $a1, 48
	ld.d	$t0, $a1, 56
	ld.d	$t1, $a1, 64
	fldx.s	$ft9, $a3, $a2
	xvst	$xr17, $sp, 304                 # 32-byte Folded Spill
	fldx.s	$fa4, $a7, $a2
	xvst	$xr4, $sp, 336                  # 32-byte Folded Spill
	fldx.s	$fa1, $t0, $a2
	xvst	$xr1, $sp, 368                  # 32-byte Folded Spill
	fldx.s	$ft13, $t1, $a2
	xvst	$xr21, $sp, 400                 # 32-byte Folded Spill
	ld.d	$a3, $a1, 72
	ld.d	$a7, $a1, 80
	ld.d	$t0, $a1, 88
	ld.d	$t1, $a1, 112
	fldx.s	$ft8, $a3, $a2
	xvst	$xr16, $sp, 432                 # 32-byte Folded Spill
	fldx.s	$ft7, $a7, $a2
	xvst	$xr15, $sp, 464                 # 32-byte Folded Spill
	fldx.s	$ft6, $t0, $a2
	xvst	$xr14, $sp, 496                 # 32-byte Folded Spill
	ld.d	$a3, $a1, 120
	ld.d	$a7, $a1, 128
	ld.d	$t0, $a1, 136
	fldx.s	$ft5, $t1, $a2
	xvst	$xr13, $sp, 528                 # 32-byte Folded Spill
	fldx.s	$ft4, $a3, $a2
	xvst	$xr12, $sp, 560                 # 32-byte Folded Spill
	fldx.s	$ft3, $a7, $a2
	xvst	$xr11, $sp, 592                 # 32-byte Folded Spill
	fldx.s	$ft1, $t0, $a2
	xvst	$xr9, $sp, 624                  # 32-byte Folded Spill
	ld.d	$a3, $a1, 144
	ld.d	$a7, $a1, 152
	ld.d	$t0, $a1, 160
	ld.d	$t1, $a1, 168
	fldx.s	$ft2, $a3, $a2
	xvst	$xr10, $sp, 656                 # 32-byte Folded Spill
	fldx.s	$ft0, $a7, $a2
	xvst	$xr8, $sp, 688                  # 32-byte Folded Spill
	fldx.s	$fa7, $t0, $a2
	xvst	$xr7, $sp, 720                  # 32-byte Folded Spill
	fldx.s	$fa5, $t1, $a2
	xvst	$xr5, $sp, 752                  # 32-byte Folded Spill
	ld.d	$a3, $a1, 200
	ld.d	$a7, $a1, 192
	ld.d	$t0, $a1, 184
	ld.d	$a1, $a1, 176
	fldx.s	$fa0, $a3, $a2
	xvst	$xr0, $sp, 880                  # 32-byte Folded Spill
	fldx.s	$fa2, $a7, $a2
	xvst	$xr2, $sp, 848                  # 32-byte Folded Spill
	fldx.s	$fa3, $t0, $a2
	xvst	$xr3, $sp, 816                  # 32-byte Folded Spill
	fldx.s	$fa6, $a1, $a2
	xvst	$xr6, $sp, 784                  # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $sp, 240                  # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr2
	xvst	$xr0, $sp, 208                  # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr3
	xvst	$xr0, $sp, 176                  # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr6
	xvst	$xr0, $sp, 144                  # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr5
	xvst	$xr0, $sp, 112                  # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr7
	xvst	$xr0, $sp, 80                   # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr8
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr10
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	xvreplve0.w	$xr31, $xr9
	xvreplve0.w	$xr30, $xr11
	xvreplve0.w	$xr28, $xr12
	xvreplve0.w	$xr27, $xr13
	xvreplve0.w	$xr26, $xr14
	xvreplve0.w	$xr25, $xr15
	xvreplve0.w	$xr15, $xr16
	xvreplve0.w	$xr13, $xr21
	xvreplve0.w	$xr12, $xr1
	xvreplve0.w	$xr11, $xr4
	xvreplve0.w	$xr10, $xr17
	xvreplve0.w	$xr9, $xr18
	xvreplve0.w	$xr8, $xr19
	xvreplve0.w	$xr7, $xr20
	xvreplve0.w	$xr5, $xr22
	xvreplve0.w	$xr3, $xr29
	xvreplve0.w	$xr16, $xr23
	xvreplve0.w	$xr14, $xr24
	pcalau12i	$a1, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis_consweight_multi)
	xvld	$xr21, $a1, 0
	xvrepli.b	$xr2, 0
	xvld	$xr6, $a1, 32
	xvld	$xr0, $a1, 64
	xvld	$xr1, $a1, 104
	xvfmadd.s	$xr21, $xr21, $xr3, $xr2
	xvfmadd.s	$xr6, $xr6, $xr3, $xr2
	xvfmadd.s	$xr4, $xr0, $xr3, $xr2
	xvfmadd.s	$xr1, $xr1, $xr5, $xr21
	xvld	$xr2, $a1, 136
	xvld	$xr3, $a1, 168
	xvld	$xr21, $a1, 208
	xvld	$xr0, $a1, 240
	xvfmadd.s	$xr2, $xr2, $xr5, $xr6
	xvfmadd.s	$xr3, $xr3, $xr5, $xr4
	xvfmadd.s	$xr1, $xr21, $xr7, $xr1
	xvfmadd.s	$xr0, $xr0, $xr7, $xr2
	xvld	$xr2, $a1, 272
	xvld	$xr4, $a1, 312
	xvld	$xr5, $a1, 344
	xvld	$xr6, $a1, 376
	xvfmadd.s	$xr2, $xr2, $xr7, $xr3
	xvfmadd.s	$xr1, $xr4, $xr8, $xr1
	xvfmadd.s	$xr0, $xr5, $xr8, $xr0
	xvfmadd.s	$xr2, $xr6, $xr8, $xr2
	xvld	$xr3, $a1, 416
	xvld	$xr4, $a1, 448
	xvld	$xr5, $a1, 480
	xvld	$xr6, $a1, 520
	xvfmadd.s	$xr1, $xr3, $xr9, $xr1
	xvfmadd.s	$xr0, $xr4, $xr9, $xr0
	xvfmadd.s	$xr2, $xr5, $xr9, $xr2
	xvfmadd.s	$xr1, $xr6, $xr10, $xr1
	xvld	$xr3, $a1, 552
	xvld	$xr4, $a1, 584
	xvld	$xr5, $a1, 624
	xvld	$xr6, $a1, 656
	xvfmadd.s	$xr0, $xr3, $xr10, $xr0
	xvfmadd.s	$xr2, $xr4, $xr10, $xr2
	xvfmadd.s	$xr1, $xr5, $xr11, $xr1
	xvfmadd.s	$xr0, $xr6, $xr11, $xr0
	xvld	$xr3, $a1, 688
	xvld	$xr4, $a1, 728
	xvld	$xr5, $a1, 760
	xvld	$xr6, $a1, 792
	xvfmadd.s	$xr2, $xr3, $xr11, $xr2
	xvfmadd.s	$xr1, $xr4, $xr12, $xr1
	xvfmadd.s	$xr0, $xr5, $xr12, $xr0
	xvfmadd.s	$xr2, $xr6, $xr12, $xr2
	xvld	$xr3, $a1, 832
	xvld	$xr4, $a1, 864
	xvld	$xr5, $a1, 896
	xvld	$xr6, $a1, 936
	xvfmadd.s	$xr1, $xr3, $xr13, $xr1
	xvfmadd.s	$xr0, $xr4, $xr13, $xr0
	xvfmadd.s	$xr2, $xr5, $xr13, $xr2
	xvfmadd.s	$xr1, $xr6, $xr15, $xr1
	xvld	$xr3, $a1, 968
	xvld	$xr4, $a1, 1000
	xvld	$xr5, $a1, 1040
	xvld	$xr6, $a1, 1072
	xvfmadd.s	$xr0, $xr3, $xr15, $xr0
	xvfmadd.s	$xr2, $xr4, $xr15, $xr2
	xvfmadd.s	$xr1, $xr5, $xr25, $xr1
	xvfmadd.s	$xr0, $xr6, $xr25, $xr0
	xvld	$xr3, $a1, 1104
	xvld	$xr4, $a1, 1144
	xvld	$xr5, $a1, 1176
	xvld	$xr6, $a1, 1208
	xvfmadd.s	$xr2, $xr3, $xr25, $xr2
	xvfmadd.s	$xr1, $xr4, $xr26, $xr1
	xvfmadd.s	$xr0, $xr5, $xr26, $xr0
	xvfmadd.s	$xr2, $xr6, $xr26, $xr2
	xvld	$xr3, $a1, 1248
	xvld	$xr4, $a1, 1280
	xvld	$xr5, $a1, 1312
	xvld	$xr6, $a1, 1352
	xvfmadd.s	$xr1, $xr3, $xr14, $xr1
	xvfmadd.s	$xr0, $xr4, $xr14, $xr0
	xvfmadd.s	$xr2, $xr5, $xr14, $xr2
	xvfmadd.s	$xr1, $xr6, $xr16, $xr1
	xvld	$xr3, $a1, 1384
	xvld	$xr4, $a1, 1416
	xvld	$xr5, $a1, 1456
	xvld	$xr6, $a1, 1488
	xvfmadd.s	$xr0, $xr3, $xr16, $xr0
	xvfmadd.s	$xr2, $xr4, $xr16, $xr2
	xvfmadd.s	$xr1, $xr5, $xr27, $xr1
	xvfmadd.s	$xr0, $xr6, $xr27, $xr0
	xvld	$xr3, $a1, 1520
	xvld	$xr4, $a1, 1560
	xvld	$xr5, $a1, 1592
	xvld	$xr6, $a1, 1624
	xvfmadd.s	$xr2, $xr3, $xr27, $xr2
	xvfmadd.s	$xr1, $xr4, $xr28, $xr1
	xvfmadd.s	$xr0, $xr5, $xr28, $xr0
	xvfmadd.s	$xr2, $xr6, $xr28, $xr2
	xvld	$xr3, $a1, 1664
	xvld	$xr4, $a1, 1696
	xvld	$xr5, $a1, 1728
	xvld	$xr6, $a1, 1768
	xvfmadd.s	$xr1, $xr3, $xr30, $xr1
	xvfmadd.s	$xr0, $xr4, $xr30, $xr0
	xvfmadd.s	$xr2, $xr5, $xr30, $xr2
	xvfmadd.s	$xr1, $xr6, $xr31, $xr1
	xvld	$xr3, $a1, 1800
	xvld	$xr4, $a1, 1832
	xvld	$xr5, $a1, 1872
	xvld	$xr6, $a1, 1904
	xvfmadd.s	$xr0, $xr3, $xr31, $xr0
	xvfmadd.s	$xr2, $xr4, $xr31, $xr2
	xvld	$xr7, $sp, 16                   # 32-byte Folded Reload
	xvfmadd.s	$xr1, $xr5, $xr7, $xr1
	xvfmadd.s	$xr0, $xr6, $xr7, $xr0
	xvld	$xr3, $a1, 1936
	xvld	$xr4, $a1, 1976
	xvld	$xr5, $a1, 2008
	xvld	$xr6, $a1, 2040
	xvfmadd.s	$xr2, $xr3, $xr7, $xr2
	xvld	$xr3, $sp, 48                   # 32-byte Folded Reload
	xvfmadd.s	$xr1, $xr4, $xr3, $xr1
	xvfmadd.s	$xr0, $xr5, $xr3, $xr0
	xvfmadd.s	$xr2, $xr6, $xr3, $xr2
	ori	$a2, $zero, 2080
	ori	$a3, $zero, 2184
	ori	$a7, $zero, 2112
	ori	$t0, $zero, 2144
	xvldx	$xr3, $a1, $a2
	xvldx	$xr4, $a1, $a7
	xvldx	$xr5, $a1, $t0
	xvldx	$xr6, $a1, $a3
	xvld	$xr7, $sp, 80                   # 32-byte Folded Reload
	xvfmadd.s	$xr1, $xr3, $xr7, $xr1
	xvfmadd.s	$xr0, $xr4, $xr7, $xr0
	xvfmadd.s	$xr2, $xr5, $xr7, $xr2
	xvld	$xr7, $sp, 112                  # 32-byte Folded Reload
	xvfmadd.s	$xr1, $xr6, $xr7, $xr1
	ori	$a2, $zero, 2288
	ori	$a3, $zero, 2216
	ori	$a7, $zero, 2320
	ori	$t0, $zero, 2248
	xvldx	$xr3, $a1, $a3
	xvldx	$xr4, $a1, $t0
	xvldx	$xr5, $a1, $a2
	xvldx	$xr6, $a1, $a7
	xvfmadd.s	$xr0, $xr3, $xr7, $xr0
	xvfmadd.s	$xr2, $xr4, $xr7, $xr2
	xvld	$xr7, $sp, 144                  # 32-byte Folded Reload
	xvfmadd.s	$xr1, $xr5, $xr7, $xr1
	xvfmadd.s	$xr0, $xr6, $xr7, $xr0
	ori	$a2, $zero, 2392
	ori	$a3, $zero, 2424
	ori	$a7, $zero, 2352
	ori	$t0, $zero, 2456
	xvldx	$xr3, $a1, $a7
	xvldx	$xr4, $a1, $a2
	xvldx	$xr5, $a1, $a3
	xvldx	$xr6, $a1, $t0
	xvfmadd.s	$xr2, $xr3, $xr7, $xr2
	xvld	$xr3, $sp, 176                  # 32-byte Folded Reload
	xvfmadd.s	$xr1, $xr4, $xr3, $xr1
	xvfmadd.s	$xr0, $xr5, $xr3, $xr0
	xvfmadd.s	$xr2, $xr6, $xr3, $xr2
	ori	$a2, $zero, 2496
	xvldx	$xr3, $a1, $a2
	ori	$a2, $zero, 2528
	xvldx	$xr4, $a1, $a2
	ori	$a2, $zero, 2560
	xvldx	$xr5, $a1, $a2
	xvld	$xr6, $sp, 208                  # 32-byte Folded Reload
	xvfmadd.s	$xr1, $xr3, $xr6, $xr1
	xvfmadd.s	$xr0, $xr4, $xr6, $xr0
	ori	$a2, $zero, 2600
	xvfmadd.s	$xr3, $xr5, $xr6, $xr2
	xvldx	$xr2, $a1, $a2
	ori	$a2, $zero, 2632
	xvldx	$xr4, $a1, $a2
	ori	$a2, $zero, 2664
	xvldx	$xr5, $a1, $a2
	xvld	$xr6, $sp, 240                  # 32-byte Folded Reload
	xvfmadd.s	$xr1, $xr2, $xr6, $xr1
	xvfmadd.s	$xr2, $xr4, $xr6, $xr0
	fld.s	$fa4, $a1, 96
	xvfmadd.s	$xr3, $xr5, $xr6, $xr3
	movgr2fr.w	$fa0, $zero
	fld.s	$fa5, $a1, 200
	fmadd.s	$fa4, $fa4, $fs5, $fa0
	fld.s	$fa6, $a1, 100
	fld.s	$fa7, $a1, 204
	fmadd.s	$fa4, $fa5, $ft14, $fa4
	fld.s	$fa5, $a1, 304
	fmadd.s	$fa6, $fa6, $fs5, $fa0
	fmadd.s	$fa6, $fa7, $ft14, $fa6
	fld.s	$fa7, $a1, 308
	xvori.b	$xr9, $xr20, 0
	fmadd.s	$fa4, $fa5, $ft1, $fa4
	fld.s	$fa5, $a1, 408
	fld.s	$ft0, $a1, 512
	fmadd.s	$fa6, $fa7, $ft1, $fa6
	fld.s	$fa7, $a1, 412
	xvori.b	$xr10, $xr19, 0
	fmadd.s	$fa4, $fa5, $ft2, $fa4
	xvld	$xr9, $sp, 272                  # 32-byte Folded Reload
	fmadd.s	$fa4, $ft0, $ft1, $fa4
	fld.s	$fa5, $a1, 516
	fmadd.s	$fa6, $fa7, $ft2, $fa6
	fld.s	$fa7, $a1, 616
	fld.s	$ft0, $a1, 720
	fmadd.s	$fa5, $fa5, $ft1, $fa6
	fld.s	$fa6, $a1, 620
	xvld	$xr10, $sp, 304                 # 32-byte Folded Reload
	fmadd.s	$fa4, $fa7, $ft2, $fa4
	xvld	$xr9, $sp, 336                  # 32-byte Folded Reload
	fmadd.s	$fa4, $ft0, $ft1, $fa4
	fld.s	$fa7, $a1, 724
	fmadd.s	$fa5, $fa6, $ft2, $fa5
	fld.s	$fa6, $a1, 824
	fld.s	$ft0, $a1, 928
	fmadd.s	$fa5, $fa7, $ft1, $fa5
	fld.s	$fa7, $a1, 828
	xvld	$xr10, $sp, 368                 # 32-byte Folded Reload
	fmadd.s	$fa4, $fa6, $ft2, $fa4
	xvld	$xr9, $sp, 400                  # 32-byte Folded Reload
	fmadd.s	$fa4, $ft0, $ft1, $fa4
	fld.s	$fa6, $a1, 932
	fmadd.s	$fa5, $fa7, $ft2, $fa5
	fld.s	$fa7, $a1, 1032
	fld.s	$ft0, $a1, 1136
	fmadd.s	$fa5, $fa6, $ft1, $fa5
	fld.s	$fa6, $a1, 1036
	xvld	$xr10, $sp, 432                 # 32-byte Folded Reload
	fmadd.s	$fa4, $fa7, $ft2, $fa4
	xvld	$xr9, $sp, 464                  # 32-byte Folded Reload
	fmadd.s	$fa4, $ft0, $ft1, $fa4
	fld.s	$fa7, $a1, 1140
	fmadd.s	$fa5, $fa6, $ft2, $fa5
	fld.s	$fa6, $a1, 1240
	fld.s	$ft0, $a1, 1344
	fmadd.s	$fa5, $fa7, $ft1, $fa5
	fld.s	$fa7, $a1, 1244
	xvld	$xr10, $sp, 496                 # 32-byte Folded Reload
	fmadd.s	$fa4, $fa6, $ft2, $fa4
	fmadd.s	$fa4, $ft0, $fs0, $fa4
	fld.s	$fa6, $a1, 1348
	fmadd.s	$fa5, $fa7, $ft2, $fa5
	fld.s	$fa7, $a1, 1448
	fld.s	$ft0, $a1, 1552
	fmadd.s	$fa5, $fa6, $fs0, $fa5
	fld.s	$fa6, $a1, 1452
	fmadd.s	$fa4, $fa7, $ft15, $fa4
	xvld	$xr10, $sp, 528                 # 32-byte Folded Reload
	fmadd.s	$fa4, $ft0, $ft2, $fa4
	fld.s	$fa7, $a1, 1556
	fmadd.s	$fa5, $fa6, $ft15, $fa5
	fld.s	$fa6, $a1, 1656
	fld.s	$ft0, $a1, 1760
	fmadd.s	$fa5, $fa7, $ft2, $fa5
	fld.s	$fa7, $a1, 1660
	xvld	$xr10, $sp, 560                 # 32-byte Folded Reload
	fmadd.s	$fa4, $fa6, $ft2, $fa4
	xvld	$xr9, $sp, 592                  # 32-byte Folded Reload
	fmadd.s	$fa4, $ft0, $ft1, $fa4
	fld.s	$fa6, $a1, 1764
	fmadd.s	$fa5, $fa7, $ft2, $fa5
	fld.s	$fa7, $a1, 1864
	fld.s	$ft0, $a1, 1868
	fmadd.s	$fa5, $fa6, $ft1, $fa5
	fld.s	$fa6, $a1, 1968
	xvld	$xr9, $sp, 624                  # 32-byte Folded Reload
	fmadd.s	$fa4, $fa7, $ft1, $fa4
	fmadd.s	$fa5, $ft0, $ft1, $fa5
	fld.s	$fa7, $a1, 1972
	xvld	$xr8, $sp, 656                  # 32-byte Folded Reload
	fmadd.s	$fa4, $fa6, $ft0, $fa4
	ori	$a2, $zero, 2072
	fldx.s	$fa6, $a1, $a2
	fmadd.s	$fa5, $fa7, $ft0, $fa5
	ori	$a2, $zero, 2176
	fldx.s	$fa7, $a1, $a2
	xvld	$xr8, $sp, 688                  # 32-byte Folded Reload
	fmadd.s	$fa4, $fa6, $ft0, $fa4
	ori	$a2, $zero, 2076
	fldx.s	$fa6, $a1, $a2
	xvld	$xr9, $sp, 720                  # 32-byte Folded Reload
	fmadd.s	$fa4, $fa7, $ft1, $fa4
	ori	$a2, $zero, 2280
	fldx.s	$fa7, $a1, $a2
	fmadd.s	$fa5, $fa6, $ft0, $fa5
	ori	$a2, $zero, 2180
	fldx.s	$fa6, $a1, $a2
	ori	$a2, $zero, 2384
	fldx.s	$ft0, $a1, $a2
	ori	$a2, $zero, 2488
	fmadd.s	$fa5, $fa6, $ft1, $fa5
	fldx.s	$fa6, $a1, $a2
	ori	$a2, $zero, 2284
	fldx.s	$ft1, $a1, $a2
	xvld	$xr10, $sp, 752                 # 32-byte Folded Reload
	fmadd.s	$fa4, $fa7, $ft2, $fa4
	xvld	$xr12, $sp, 784                 # 32-byte Folded Reload
	fmadd.s	$fa4, $ft0, $ft4, $fa4
	xvld	$xr11, $sp, 816                 # 32-byte Folded Reload
	fmadd.s	$fa4, $fa6, $ft3, $fa4
	fmadd.s	$fa5, $ft1, $ft2, $fa5
	ori	$a2, $zero, 2388
	fldx.s	$fa6, $a1, $a2
	ori	$a2, $zero, 2492
	fldx.s	$fa7, $a1, $a2
	ori	$a2, $zero, 2592
	fmadd.s	$fa5, $fa6, $ft4, $fa5
	fldx.s	$fa6, $a1, $a2
	ori	$a2, $zero, 2696
	fldx.s	$ft0, $a1, $a2
	fmadd.s	$fa5, $fa7, $ft3, $fa5
	ori	$a2, $zero, 2596
	fldx.s	$fa7, $a1, $a2
	ori	$a2, $zero, 2700
	fldx.s	$ft1, $a1, $a2
	xvld	$xr10, $sp, 848                 # 32-byte Folded Reload
	fmadd.s	$fa4, $fa6, $ft2, $fa4
	fmadd.s	$fa5, $fa7, $ft2, $fa5
	xvld	$xr6, $sp, 880                  # 32-byte Folded Reload
	fmadd.s	$fa4, $ft0, $fa6, $fa4
	fmadd.s	$fa5, $ft1, $fa6, $fa5
	xvst	$xr1, $sp, 920
	xvst	$xr2, $sp, 952
	xvst	$xr3, $sp, 984
	fst.s	$fa4, $sp, 1016
	fst.s	$fa5, $sp, 1020
	beqz	$a4, .LBB5_14
# %bb.9:                                # %.lr.ph73.preheader
	addi.d	$a1, $sp, 920
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               # %._crit_edge
                                        #   in Loop: Header=BB5_11 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB5_14
.LBB5_11:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_13 Depth 2
	ld.d	$a3, $a6, 0
	ld.wu	$a2, $a3, 0
	addi.w	$a7, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB5_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$a3, $a3, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB5_13:                               #   Parent Loop BB5_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a2, 2
	fldx.s	$fa2, $a2, $a1
	fld.s	$fa3, $a7, 0
	ld.wu	$a2, $a3, 0
	addi.d	$a7, $a7, 4
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a0, 0
	addi.w	$t0, $a2, 0
	addi.d	$a3, $a3, 4
	bgez	$t0, .LBB5_13
	b	.LBB5_10
.LBB5_14:                               # %._crit_edge74
	fld.d	$fs7, $sp, 1024                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1032                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1040                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1048                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1056                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1064                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1072                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1080                 # 8-byte Folded Reload
	ld.d	$s0, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1096                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1104
	ret
.Lfunc_end5:
	.size	match_calc, .Lfunc_end5-match_calc
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	impalloclen,@object             # @impalloclen
	.local	impalloclen
	.comm	impalloclen,4,4
	.type	part_imp_match_init.impalloclen,@object # @part_imp_match_init.impalloclen
	.local	part_imp_match_init.impalloclen
	.comm	part_imp_match_init.impalloclen,4,4
	.type	part_imp_match_init.nocount1,@object # @part_imp_match_init.nocount1
	.local	part_imp_match_init.nocount1
	.comm	part_imp_match_init.nocount1,8,8
	.type	part_imp_match_init.nocount2,@object # @part_imp_match_init.nocount2
	.local	part_imp_match_init.nocount2
	.comm	part_imp_match_init.nocount2,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"i = %d, seq1 = %s\n"
	.size	.L.str, 19

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"start1 = %d\n"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"end1   = %d\n"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"j = %d, seq2 = %s\n"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"step 0\n"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"dif = %d\n"
	.size	.L.str.5, 10

	.type	partA__align.m,@object          # @partA__align.m
	.local	partA__align.m
	.comm	partA__align.m,8,8
	.type	partA__align.ijp,@object        # @partA__align.ijp
	.local	partA__align.ijp
	.comm	partA__align.ijp,8,8
	.type	partA__align.mp,@object         # @partA__align.mp
	.local	partA__align.mp
	.comm	partA__align.mp,8,8
	.type	partA__align.w1,@object         # @partA__align.w1
	.local	partA__align.w1
	.comm	partA__align.w1,8,8
	.type	partA__align.w2,@object         # @partA__align.w2
	.local	partA__align.w2
	.comm	partA__align.w2,8,8
	.type	partA__align.match,@object      # @partA__align.match
	.local	partA__align.match
	.comm	partA__align.match,8,8
	.type	partA__align.initverticalw,@object # @partA__align.initverticalw
	.local	partA__align.initverticalw
	.comm	partA__align.initverticalw,8,8
	.type	partA__align.lastverticalw,@object # @partA__align.lastverticalw
	.local	partA__align.lastverticalw
	.comm	partA__align.lastverticalw,8,8
	.type	partA__align.mseq1,@object      # @partA__align.mseq1
	.local	partA__align.mseq1
	.comm	partA__align.mseq1,8,8
	.type	partA__align.mseq2,@object      # @partA__align.mseq2
	.local	partA__align.mseq2
	.comm	partA__align.mseq2,8,8
	.type	partA__align.mseq,@object       # @partA__align.mseq
	.local	partA__align.mseq
	.comm	partA__align.mseq,8,8
	.type	partA__align.ogcp1,@object      # @partA__align.ogcp1
	.local	partA__align.ogcp1
	.comm	partA__align.ogcp1,8,8
	.type	partA__align.ogcp2,@object      # @partA__align.ogcp2
	.local	partA__align.ogcp2
	.comm	partA__align.ogcp2,8,8
	.type	partA__align.fgcp1,@object      # @partA__align.fgcp1
	.local	partA__align.fgcp1
	.comm	partA__align.fgcp1,8,8
	.type	partA__align.fgcp2,@object      # @partA__align.fgcp2
	.local	partA__align.fgcp2
	.comm	partA__align.fgcp2,8,8
	.type	partA__align.cpmx1,@object      # @partA__align.cpmx1
	.local	partA__align.cpmx1
	.comm	partA__align.cpmx1,8,8
	.type	partA__align.cpmx2,@object      # @partA__align.cpmx2
	.local	partA__align.cpmx2
	.comm	partA__align.cpmx2,8,8
	.type	partA__align.intwork,@object    # @partA__align.intwork
	.local	partA__align.intwork
	.comm	partA__align.intwork,8,8
	.type	partA__align.floatwork,@object  # @partA__align.floatwork
	.local	partA__align.floatwork
	.comm	partA__align.floatwork,8,8
	.type	partA__align.orlgth1,@object    # @partA__align.orlgth1
	.local	partA__align.orlgth1
	.comm	partA__align.orlgth1,4,4
	.type	partA__align.orlgth2,@object    # @partA__align.orlgth2
	.local	partA__align.orlgth2
	.comm	partA__align.orlgth2,4,4
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str.6, 33

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.7, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
