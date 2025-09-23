	.file	"partQalignmm.c"
	.text
	.globl	part_imp_match_out_scQ          # -- Begin function part_imp_match_out_scQ
	.p2align	5
	.type	part_imp_match_out_scQ,@function
part_imp_match_out_scQ:                 # @part_imp_match_out_scQ
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	part_imp_match_out_scQ, .Lfunc_end0-part_imp_match_out_scQ
                                        # -- End function
	.globl	part_imp_match_init_strictQ     # -- Begin function part_imp_match_init_strictQ
	.p2align	5
	.type	part_imp_match_init_strictQ,@function
part_imp_match_init_strictQ:            # @part_imp_match_init_strictQ
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
	.size	part_imp_match_init_strictQ, .Lfunc_end1-part_imp_match_init_strictQ
                                        # -- End function
	.globl	part_imp_rnaQ                   # -- Begin function part_imp_rnaQ
	.p2align	5
	.type	part_imp_rnaQ,@function
part_imp_rnaQ:                          # @part_imp_rnaQ
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
	.size	part_imp_rnaQ, .Lfunc_end2-part_imp_rnaQ
                                        # -- End function
	.globl	part_imp_match_initQ            # -- Begin function part_imp_match_initQ
	.p2align	5
	.type	part_imp_match_initQ,@function
part_imp_match_initQ:                   # @part_imp_match_initQ
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
	pcalau12i	$fp, %pc_hi20(part_imp_match_initQ.impalloclen)
	ld.w	$a0, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $a6
	move	$s0, $a5
	move	$s4, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$a1, %pc_hi20(impmtx)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(part_imp_match_initQ.nocount1)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(part_imp_match_initQ.nocount2)
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
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount1)
	beqz	$a0, .LBB3_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_6:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount2)
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
	st.w	$a0, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(part_imp_match_initQ.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(part_imp_match_initQ.nocount2)
	addi.d	$a0, $a1, -2
	st.w	$a0, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
.LBB3_9:
	blez	$s1, .LBB3_22
# %bb.10:                               # %.preheader244.lr.ph
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount1)
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
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount2)
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
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount1)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_initQ.nocount2)
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
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount1)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_initQ.nocount2)
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
	ld.d	$a3, $a1, %pc_lo12(part_imp_match_initQ.nocount2)
	andn	$a0, $t4, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_initQ.nocount1)
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
	.size	part_imp_match_initQ, .Lfunc_end3-part_imp_match_initQ
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function partQ__align
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
.LCPI4_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI4_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI4_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI4_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI4_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	partQ__align
	.p2align	5
	.type	partQ__align,@function
partQ__align:                           # @partQ__align
# %bb.0:
	addi.d	$sp, $sp, -528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 432                  # 8-byte Folded Spill
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $a5
	st.d	$a4, $sp, 416                   # 8-byte Folded Spill
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	move	$s4, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$a1, %pc_hi20(partQ__align.orlgth1)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.w	$s7, $a1, %pc_lo12(partQ__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.mseq1)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.mseq2)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bnez	$s7, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(partQ__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$s7, $a1, %pc_lo12(partQ__align.orlgth1)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.mseq2)
.LBB4_2:
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$fp, $a0
	addi.w	$s3, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(partQ__align.orlgth2)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s0, $a0, %pc_lo12(partQ__align.orlgth2)
	addi.w	$a1, $s5, 0
	pcalau12i	$s6, %pc_hi20(partQ__align.w1)
	pcalau12i	$a0, %pc_hi20(partQ__align.w2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.initverticalw)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.lastverticalw)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.m)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.mp)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(partQ__align.mseq)
	pcalau12i	$a0, %pc_hi20(partQ__align.digf1)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.digf2)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.diaf1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.diaf2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz1)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz2)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapf1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapf2)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.ogcp1g)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.ogcp2g)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fgcp1g)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fgcp2g)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_h_dg_n1_p)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_h_dg_n2_p)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fg_h_dg_n1_p)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fg_h_dg_n2_p)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz_n1)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz_n2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.cpmx1)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.cpmx2)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.floatwork)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.intwork)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	blt	$s7, $s3, .LBB4_4
# %bb.3:
	bge	$s0, $a1, .LBB4_8
.LBB4_4:
	move	$s3, $a7
	pcalau12i	$s2, %pc_hi20(partQ__align.match)
	blez	$s7, .LBB4_7
# %bb.5:
	blez	$s0, .LBB4_7
# %bb.6:
	ld.d	$a0, $s6, %pc_lo12(partQ__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(partQ__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(partQ__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(partQ__align.orlgth1)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(partQ__align.orlgth2)
.LBB4_7:
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_0)
	movgr2fr.w	$fa1, $fp
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$fp, $s7, 100
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$s1, $s0, 100
	addi.w	$s5, $s0, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(partQ__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(partQ__align.match)
	addi.w	$s6, $s7, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$s2, $s3
	st.d	$a0, $s3, %pc_lo12(partQ__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.digf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.diaf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.diaf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.ogcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fgcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fgcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.og_h_dg_n1_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz_n1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.cpmx2)
	slt	$a0, $s1, $fp
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$a7, $s2
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.intwork)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(partQ__align.orlgth1)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(partQ__align.orlgth2)
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
.LBB4_8:
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	blez	$a4, .LBB4_16
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $a7, %pc_lo12(partQ__align.mseq)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.mseq1)
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a4, $a3, .LBB4_14
# %bb.10:                               # %.lr.ph
	sub.d	$a3, $a1, $a0
	ori	$a5, $zero, 64
	bltu	$a3, $a5, .LBB4_14
# %bb.11:                               # %vector.ph
	bstrpick.d	$a2, $a4, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 32
	addi.d	$a6, $a0, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a6, $a6, 64
	bnez	$a5, .LBB4_12
# %bb.13:                               # %middle.block
	beq	$a2, $a4, .LBB4_16
.LBB4_14:                               # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 3
	alsl.d	$a0, $a2, $a0, 3
	sub.d	$a2, $a4, $a2
	.p2align	4, , 16
.LBB4_15:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB4_15
.LBB4_16:                               # %.preheader643
	blez	$s8, .LBB4_22
# %bb.17:                               # %.lr.ph647
	ld.d	$a0, $a7, %pc_lo12(partQ__align.mseq)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.mseq2)
	ori	$a2, $zero, 8
	bltu	$s8, $a2, .LBB4_19
# %bb.18:                               # %vector.memcheck845
	alsl.d	$a2, $a4, $a0, 3
	sub.d	$a2, $a1, $a2
	ori	$a3, $zero, 64
	bgeu	$a2, $a3, .LBB4_148
.LBB4_19:
	move	$a2, $zero
.LBB4_20:                               # %scalar.ph847.preheader
	slli.d	$a3, $a2, 3
	alsl.d	$a3, $a4, $a3, 3
	add.d	$a0, $a0, $a3
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a2, $s8, $a2
	.p2align	4, , 16
.LBB4_21:                               # %scalar.ph847
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB4_21
.LBB4_22:                               # %._crit_edge
	ld.d	$s5, $sp, 584
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s1, 0
	blt	$a0, $s7, .LBB4_25
# %bb.23:                               # %._crit_edge
	blt	$a1, $s0, .LBB4_25
# %bb.24:                               # %._crit_edge790
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB4_29
.LBB4_25:
	beqz	$a0, .LBB4_28
# %bb.26:
	beqz	$a1, .LBB4_28
# %bb.27:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(partQ__align.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s0, $a1, %pc_lo12(partQ__align.orlgth2)
	ld.w	$a1, $s1, 0
.LBB4_28:
	slt	$a2, $a0, $s7
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s7, $a2
	or	$s2, $a2, $a0
	slt	$a0, $a1, $s0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	addi.w	$a0, $s2, 10
	addi.w	$a1, $s0, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s2, $fp, 0
	st.w	$s0, $s1, 0
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
.LBB4_29:
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.cpmx1)
	movgr2fr.w	$fs0, $a2
	pcalau12i	$a2, %pc_hi20(partQ__align.ijp)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(partQ__align.ijp)
	move	$a0, $s2
	move	$a2, $s4
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s6
	move	$s1, $a4
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(partQ__align.cpmx2)
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a2, $s3
	ld.d	$s0, $sp, 384                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $s8
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp1g)
	beqz	$s5, .LBB4_31
# %bb.30:
	ld.d	$s0, $sp, 608
	move	$s7, $s4
	move	$a5, $s5
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a6, $sp, 600
	ld.d	$s6, $sp, 592
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	move	$s4, $a6
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$s5, $s3
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s0
	move	$s3, $s0
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp1g)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	move	$a5, $s0
	st.d	$s4, $sp, 224                   # 8-byte Folded Spill
	move	$a6, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s5
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $s0
	move	$a6, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s5
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf1)
	move	$s4, $s1
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $s0
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf2)
	move	$a1, $s8
	move	$a2, $fp
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s6
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf1)
	move	$a1, $s4
	move	$a2, $s2
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s1
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz1)
	move	$a1, $s4
	move	$a2, $s2
	move	$a3, $s7
	move	$a4, $s6
	move	$s3, $s0
	ld.d	$s0, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB4_32
.LBB4_31:
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp1g)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB4_32:
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	addi.w	$ra, $zero, -1
	ffint.s.w	$ft11, $fs0
	blt	$s0, $ra, .LBB4_37
# %bb.33:                               # %.lr.ph650
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.digf2)
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_h_dg_n2_p)
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fgcp2g)
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(partQ__align.gapz2)
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(partQ__align.gapz_n2)
	addi.d	$t3, $s5, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	fcvt.d.s	$fa0, $ft11
	bgeu	$t1, $t2, .LBB4_79
# %bb.34:
	move	$t2, $zero
.LBB4_35:                               # %scalar.ph984.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB4_36:                               # %scalar.ph984
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a2, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a4, $t3
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a3, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a5, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a0, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a6, $t3
	fldx.s	$fa4, $a7, $t3
	fsub.s	$fa4, $fa3, $fa4
	fstx.s	$fa4, $t0, $t3
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.d	$t1, $t1, -1
	addi.d	$a0, $a0, 4
	bnez	$t1, .LBB4_36
.LBB4_37:                               # %._crit_edge651
	blt	$s6, $ra, .LBB4_42
# %bb.38:                               # %.lr.ph654
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp1g)
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.digf1)
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_h_dg_n1_p)
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fgcp1g)
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(partQ__align.gapz1)
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(partQ__align.gapz_n1)
	addi.d	$t3, $s7, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	fcvt.d.s	$fa0, $ft11
	bgeu	$t1, $t2, .LBB4_112
# %bb.39:
	move	$t2, $zero
.LBB4_40:                               # %scalar.ph1135.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB4_41:                               # %scalar.ph1135
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a2, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a4, $t3
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a3, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a5, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a0, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a6, $t3
	fldx.s	$fa4, $a7, $t3
	fsub.s	$fa4, $fa3, $fa4
	fstx.s	$fa4, $t0, $t3
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.d	$t1, $t1, -1
	addi.d	$a0, $a0, 4
	bnez	$t1, .LBB4_41
.LBB4_42:                               # %._crit_edge655
	xvst	$xr19, $sp, 240                 # 32-byte Folded Spill
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 576
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 568
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 552
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 536
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(partQ__align.w1)
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.w2)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(partQ__align.initverticalw)
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(partQ__align.cpmx2)
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(partQ__align.cpmx1)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(partQ__align.floatwork)
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(partQ__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	move	$a0, $a1
	move	$a1, $s7
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	move	$a4, $s4
	move	$a5, $s1
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_49
# %bb.43:
	move	$a1, $s4
	move	$s4, $s3
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	blez	$a1, .LBB4_46
# %bb.44:                               # %.lr.ph.i
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_45:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	add.w	$a5, $a5, $s0
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	fldx.s	$fa0, $a5, $a2
	fld.s	$fa1, $a6, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB4_45
.LBB4_46:                               # %part_imp_match_out_vead_tate_gapmapQ.exit
	ori	$a7, $zero, 1
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $zero
	move	$a5, $s1
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	move	$t8, $s5
	blez	$t4, .LBB4_50
# %bb.47:                               # %.lr.ph.i523
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	add.w	$a0, $a0, $s0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	bstrpick.d	$a1, $t8, 30, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	move	$a3, $s4
	.p2align	4, , 16
.LBB4_48:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB4_48
	b	.LBB4_50
.LBB4_49:                               # %.critedge
	ori	$a7, $zero, 1
	move	$s4, $s3
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $zero
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	move	$a4, $s3
	move	$a5, $s1
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t4, $s3
	move	$t8, $s5
.LBB4_50:                               # %part_imp_match_out_vead_gapmapQ.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$s5, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $s5, 0
	ori	$a2, $zero, 1
	slli.d	$a0, $t8, 32
	pcalau12i	$a3, %pc_hi20(.LCPI4_2)
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	xvld	$xr9, $sp, 240                  # 32-byte Folded Reload
	ld.d	$t6, $sp, 400                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB4_60
# %bb.51:
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.ogcp1g)
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_h_dg_n2_p)
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.ogcp2g)
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.og_h_dg_n1_p)
	fld.s	$fa2, $a3, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.fgcp1g)
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	fld.s	$fa3, $a1, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.fgcp2g)
	fld.s	$fa4, $a2, 0
	fld.s	$fa5, $a3, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	fld.s	$fa6, $a1, 0
	movgr2fr.w	$fa7, $zero
	fmadd.s	$fa0, $fa0, $fa1, $fa7
	fld.s	$fa1, $a2, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fld.s	$fa7, $a1, 0
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fadd.s	$fa1, $fa7, $fa0
	fst.s	$fa1, $a1, 0
	move	$t5, $s4
	fld.s	$fa1, $s4, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s4, 0
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	blez	$s3, .LBB4_55
# %bb.52:                               # %.lr.ph665
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.gapz_n2)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	addi.d	$a4, $t7, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	ori	$a5, $zero, 1
	bgeu	$a6, $a7, .LBB4_151
.LBB4_53:                               # %scalar.ph1208.preheader
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a6, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB4_54:                               # %scalar.ph1208
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a6, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a6, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 4
	bnez	$a4, .LBB4_54
.LBB4_55:                               # %.preheader638
	blez	$t4, .LBB4_145
# %bb.56:                               # %.lr.ph668
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.gapz_n1)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	addi.d	$a4, $t8, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	ori	$a5, $zero, 1
	bgeu	$a6, $a7, .LBB4_157
.LBB4_57:                               # %scalar.ph1246.preheader
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a6, $a5, $t5, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB4_58:                               # %scalar.ph1246
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a6, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a6, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 4
	bnez	$a4, .LBB4_58
.LBB4_59:                               # %.loopexit639.thread832
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.m)
	st.w	$zero, $a1, 0
	b	.LBB4_75
.LBB4_60:                               # %.preheader642
	move	$t5, $s4
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	blez	$t4, .LBB4_67
# %bb.61:                               # %.lr.ph658
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	addi.d	$a2, $t8, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 8
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB4_65
# %bb.62:                               # %vector.ph1161
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 2, 0
	xvreplgr2vr.w	$xr0, $a1
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI4_1)
	addi.d	$a6, $t5, 4
	lu52i.d	$a7, $zero, -1026
	xvreplgr2vr.d	$xr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_63:                               # %vector.body1166
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a6, 0
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
	xvst	$xr6, $a6, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_63
# %bb.64:                               # %middle.block1170
	beq	$a3, $a5, .LBB4_67
.LBB4_65:                               # %scalar.ph1159.preheader
	mul.d	$a3, $a1, $a4
	alsl.d	$a5, $a4, $t5, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_66:                               # %scalar.ph1159
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a5, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a5, 0
	add.w	$a3, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 4
	bnez	$a2, .LBB4_66
.LBB4_67:                               # %.preheader640
	blez	$s3, .LBB4_74
# %bb.68:                               # %.lr.ph661
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	addi.d	$a2, $t7, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 8
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB4_72
# %bb.69:                               # %vector.ph1175
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 2, 0
	xvreplgr2vr.w	$xr0, $a1
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI4_1)
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 4
	lu52i.d	$a7, $zero, -1026
	xvreplgr2vr.d	$xr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_70:                               # %vector.body1180
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a6, 0
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
	xvst	$xr6, $a6, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_70
# %bb.71:                               # %middle.block1187
	beq	$a3, $a5, .LBB4_74
.LBB4_72:                               # %scalar.ph1173.preheader
	mul.d	$a3, $a1, $a4
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_73:                               # %scalar.ph1173
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a5, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a5, 0
	add.w	$a3, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 4
	bnez	$a2, .LBB4_73
.LBB4_74:                               # %.loopexit639
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.m)
	st.w	$zero, $a1, 0
	blez	$t4, .LBB4_146
.LBB4_75:                               # %iter.check
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.mp)
	addi.d	$a3, $t8, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 4
	ori	$a6, $zero, 1
	bltu	$a4, $a5, .LBB4_170
# %bb.76:                               # %vector.memcheck1266
	sub.d	$a5, $a1, $t5
	addi.d	$a5, $a5, 4
	ori	$a7, $zero, 64
	bltu	$a5, $a7, .LBB4_170
# %bb.77:                               # %vector.main.loop.iter.check
	ori	$a6, $zero, 16
	lu12i.w	$a5, 287172
	bgeu	$a4, $a6, .LBB4_163
# %bb.78:
	move	$a7, $zero
	b	.LBB4_167
.LBB4_79:                               # %vector.memcheck860
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB4_358
# %bb.80:                               # %vector.memcheck860
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB4_358
# %bb.81:                               # %vector.memcheck860
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB4_358
# %bb.82:                               # %vector.memcheck860
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB4_358
# %bb.83:                               # %vector.memcheck860
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB4_358
# %bb.84:                               # %vector.memcheck860
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB4_358
# %bb.85:                               # %vector.memcheck860
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB4_358
# %bb.86:                               # %vector.memcheck860
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB4_358
# %bb.87:                               # %vector.memcheck860
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.88:                               # %vector.memcheck860
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.89:                               # %vector.memcheck860
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.90:                               # %vector.memcheck860
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.91:                               # %vector.memcheck860
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.92:                               # %vector.memcheck860
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.93:                               # %vector.memcheck860
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB4_358
# %bb.94:                               # %vector.memcheck860
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.95:                               # %vector.memcheck860
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.96:                               # %vector.memcheck860
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.97:                               # %vector.memcheck860
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.98:                               # %vector.memcheck860
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.99:                               # %vector.memcheck860
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_359
# %bb.100:                              # %vector.memcheck860
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_359
# %bb.101:                              # %vector.memcheck860
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_359
# %bb.102:                              # %vector.memcheck860
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_359
# %bb.103:                              # %vector.memcheck860
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_359
# %bb.104:                              # %vector.memcheck860
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB4_359
# %bb.105:                              # %vector.memcheck860
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	bnez	$t5, .LBB4_35
# %bb.106:                              # %vector.memcheck860
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_35
# %bb.107:                              # %vector.memcheck860
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_35
# %bb.108:                              # %vector.memcheck860
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB4_35
# %bb.109:                              # %vector.ph986
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$t3, $zero, 1023
	xvreplgr2vr.d	$xr2, $t3
	lu52i.d	$t3, $zero, 1022
	xvreplgr2vr.d	$xr3, $t3
	lu12i.w	$t3, 260096
	xvreplgr2vr.w	$xr4, $t3
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s0, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s5, $t2
	.p2align	4, , 16
.LBB4_110:                              # %vector.body989
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr7, $t3, 0
	xvpermi.q	$xr6, $xr7, 1
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$ft0, $fa5
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr8, 1
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr5, $xr8, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr5, $xr6, 3
	vreplvei.w	$vr6, $vr7, 1
	fcvt.d.s	$ft0, $fa6
	vreplvei.w	$vr6, $vr7, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr6, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvld	$xr11, $t4, 0
	xvinsve0.d	$xr6, $xr7, 3
	xvfsub.d	$xr9, $xr2, $xr5
	xvfsub.d	$xr10, $xr2, $xr6
	xvpermi.q	$xr8, $xr11, 1
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft4, $fa7
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr12, 1
	vreplvei.w	$vr12, $vr8, 2
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr7, $xr12, 2
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr7, $xr8, 3
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft4, $ft0
	vreplvei.w	$vr8, $vr11, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr12, 1
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr8, $xr12, 2
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr8, $xr11, 3
	xvfsub.d	$xr11, $xr9, $xr7
	xvfsub.d	$xr12, $xr10, $xr8
	xvfmul.d	$xr11, $xr11, $xr1
	xvfmul.d	$xr12, $xr12, $xr1
	xvfmul.d	$xr11, $xr11, $xr3
	xvfmul.d	$xr12, $xr12, $xr3
	xvpickve.d	$xr13, $xr12, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr12, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr12, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr12, $xr12, 3
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 3
	xvpickve.d	$xr12, $xr11, 0
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 4
	xvpickve.d	$xr12, $xr11, 1
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 5
	xvpickve.d	$xr12, $xr11, 2
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 6
	xvpickve.d	$xr11, $xr11, 3
	xvld	$xr12, $t6, 0
	fcvt.s.d	$ft3, $ft3
	xvinsve0.w	$xr14, $xr11, 7
	xvst	$xr14, $t5, 0
	xvpermi.q	$xr11, $xr12, 1
	vreplvei.w	$vr13, $vr11, 1
	fcvt.d.s	$ft6, $ft5
	vreplvei.w	$vr13, $vr11, 0
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr13, $xr14, 1
	vreplvei.w	$vr14, $vr11, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr13, $xr14, 2
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr13, $xr11, 3
	xvfsub.d	$xr11, $xr2, $xr13
	xvfsub.d	$xr15, $xr11, $xr7
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft8, $ft6
	vreplvei.w	$vr14, $vr12, 0
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr14, $xr16, 1
	vreplvei.w	$vr16, $vr12, 2
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr14, $xr16, 2
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr14, $xr12, 3
	xvfsub.d	$xr12, $xr2, $xr14
	xvfsub.d	$xr16, $xr12, $xr8
	xvfmul.d	$xr15, $xr15, $xr1
	xvfmul.d	$xr16, $xr16, $xr1
	xvfmul.d	$xr15, $xr15, $xr3
	xvfmul.d	$xr16, $xr16, $xr3
	xvpickve.d	$xr17, $xr16, 1
	fcvt.s.d	$ft9, $ft9
	xvpickve.d	$xr18, $xr16, 0
	fcvt.s.d	$ft10, $ft10
	xvinsve0.w	$xr18, $xr17, 1
	xvpickve.d	$xr17, $xr16, 2
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr18, $xr17, 2
	xvpickve.d	$xr16, $xr16, 3
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 3
	xvpickve.d	$xr16, $xr15, 0
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 4
	xvpickve.d	$xr16, $xr15, 1
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 5
	xvpickve.d	$xr16, $xr15, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 6
	xvpickve.d	$xr15, $xr15, 3
	fcvt.s.d	$ft7, $ft7
	xvinsve0.w	$xr18, $xr15, 7
	xvst	$xr18, $t7, 0
	xvfadd.d	$xr9, $xr9, $xr13
	xvfadd.d	$xr10, $xr10, $xr14
	xvfsub.d	$xr9, $xr9, $xr7
	xvfsub.d	$xr10, $xr10, $xr8
	xvfmul.d	$xr9, $xr9, $xr3
	xvfmul.d	$xr10, $xr10, $xr3
	xvfmul.d	$xr9, $xr9, $xr1
	xvfmul.d	$xr10, $xr10, $xr1
	xvpickve.d	$xr13, $xr10, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr10, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr10, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr10, $xr10, 3
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 3
	xvpickve.d	$xr10, $xr9, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 4
	xvpickve.d	$xr10, $xr9, 1
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 5
	xvpickve.d	$xr10, $xr9, 2
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 6
	xvpickve.d	$xr9, $xr9, 3
	fcvt.s.d	$ft1, $ft1
	xvinsve0.w	$xr14, $xr9, 7
	xvst	$xr14, $t8, 0
	xvfadd.d	$xr5, $xr11, $xr5
	xvfadd.d	$xr6, $xr12, $xr6
	xvfsub.d	$xr5, $xr5, $xr7
	xvfsub.d	$xr6, $xr6, $xr8
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr6, $xr6, $xr1
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 3
	xvpickve.d	$xr6, $xr5, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 4
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 5
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 6
	xvpickve.d	$xr5, $xr5, 3
	xvld	$xr6, $s3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $s0, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s0, $s0, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s5, .LBB4_110
# %bb.111:                              # %middle.block1003
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB4_35
	b	.LBB4_37
.LBB4_112:                              # %vector.memcheck1006
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB4_360
# %bb.113:                              # %vector.memcheck1006
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB4_360
# %bb.114:                              # %vector.memcheck1006
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB4_360
# %bb.115:                              # %vector.memcheck1006
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB4_360
# %bb.116:                              # %vector.memcheck1006
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB4_360
# %bb.117:                              # %vector.memcheck1006
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB4_360
# %bb.118:                              # %vector.memcheck1006
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB4_360
# %bb.119:                              # %vector.memcheck1006
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB4_360
# %bb.120:                              # %vector.memcheck1006
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.121:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.122:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.123:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.124:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.125:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.126:                              # %vector.memcheck1006
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB4_360
# %bb.127:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.128:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.129:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.130:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.131:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.132:                              # %vector.memcheck1006
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_40
# %bb.133:                              # %vector.memcheck1006
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.134:                              # %vector.memcheck1006
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.135:                              # %vector.memcheck1006
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.136:                              # %vector.memcheck1006
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.137:                              # %vector.memcheck1006
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB4_40
# %bb.138:                              # %vector.memcheck1006
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_40
# %bb.139:                              # %vector.memcheck1006
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_40
# %bb.140:                              # %vector.memcheck1006
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_40
# %bb.141:                              # %vector.memcheck1006
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB4_40
# %bb.142:                              # %vector.ph1137
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$t3, $zero, 1023
	xvreplgr2vr.d	$xr2, $t3
	lu52i.d	$t3, $zero, 1022
	xvreplgr2vr.d	$xr3, $t3
	lu12i.w	$t3, 260096
	xvreplgr2vr.w	$xr4, $t3
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s0, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s5, $t2
	.p2align	4, , 16
.LBB4_143:                              # %vector.body1142
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr7, $t3, 0
	xvpermi.q	$xr6, $xr7, 1
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$ft0, $fa5
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr8, 1
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr5, $xr8, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr5, $xr6, 3
	vreplvei.w	$vr6, $vr7, 1
	fcvt.d.s	$ft0, $fa6
	vreplvei.w	$vr6, $vr7, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr6, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvld	$xr11, $t4, 0
	xvinsve0.d	$xr6, $xr7, 3
	xvfsub.d	$xr9, $xr2, $xr5
	xvfsub.d	$xr10, $xr2, $xr6
	xvpermi.q	$xr8, $xr11, 1
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft4, $fa7
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr12, 1
	vreplvei.w	$vr12, $vr8, 2
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr7, $xr12, 2
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr7, $xr8, 3
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft4, $ft0
	vreplvei.w	$vr8, $vr11, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr12, 1
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr8, $xr12, 2
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr8, $xr11, 3
	xvfsub.d	$xr11, $xr9, $xr7
	xvfsub.d	$xr12, $xr10, $xr8
	xvfmul.d	$xr11, $xr11, $xr1
	xvfmul.d	$xr12, $xr12, $xr1
	xvfmul.d	$xr11, $xr11, $xr3
	xvfmul.d	$xr12, $xr12, $xr3
	xvpickve.d	$xr13, $xr12, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr12, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr12, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr12, $xr12, 3
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 3
	xvpickve.d	$xr12, $xr11, 0
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 4
	xvpickve.d	$xr12, $xr11, 1
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 5
	xvpickve.d	$xr12, $xr11, 2
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 6
	xvpickve.d	$xr11, $xr11, 3
	xvld	$xr12, $t6, 0
	fcvt.s.d	$ft3, $ft3
	xvinsve0.w	$xr14, $xr11, 7
	xvst	$xr14, $t5, 0
	xvpermi.q	$xr11, $xr12, 1
	vreplvei.w	$vr13, $vr11, 1
	fcvt.d.s	$ft6, $ft5
	vreplvei.w	$vr13, $vr11, 0
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr13, $xr14, 1
	vreplvei.w	$vr14, $vr11, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr13, $xr14, 2
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr13, $xr11, 3
	xvfsub.d	$xr11, $xr2, $xr13
	xvfsub.d	$xr15, $xr11, $xr7
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft8, $ft6
	vreplvei.w	$vr14, $vr12, 0
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr14, $xr16, 1
	vreplvei.w	$vr16, $vr12, 2
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr14, $xr16, 2
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr14, $xr12, 3
	xvfsub.d	$xr12, $xr2, $xr14
	xvfsub.d	$xr16, $xr12, $xr8
	xvfmul.d	$xr15, $xr15, $xr1
	xvfmul.d	$xr16, $xr16, $xr1
	xvfmul.d	$xr15, $xr15, $xr3
	xvfmul.d	$xr16, $xr16, $xr3
	xvpickve.d	$xr17, $xr16, 1
	fcvt.s.d	$ft9, $ft9
	xvpickve.d	$xr18, $xr16, 0
	fcvt.s.d	$ft10, $ft10
	xvinsve0.w	$xr18, $xr17, 1
	xvpickve.d	$xr17, $xr16, 2
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr18, $xr17, 2
	xvpickve.d	$xr16, $xr16, 3
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 3
	xvpickve.d	$xr16, $xr15, 0
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 4
	xvpickve.d	$xr16, $xr15, 1
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 5
	xvpickve.d	$xr16, $xr15, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 6
	xvpickve.d	$xr15, $xr15, 3
	fcvt.s.d	$ft7, $ft7
	xvinsve0.w	$xr18, $xr15, 7
	xvst	$xr18, $t7, 0
	xvfadd.d	$xr9, $xr9, $xr13
	xvfadd.d	$xr10, $xr10, $xr14
	xvfsub.d	$xr9, $xr9, $xr7
	xvfsub.d	$xr10, $xr10, $xr8
	xvfmul.d	$xr9, $xr9, $xr3
	xvfmul.d	$xr10, $xr10, $xr3
	xvfmul.d	$xr9, $xr9, $xr1
	xvfmul.d	$xr10, $xr10, $xr1
	xvpickve.d	$xr13, $xr10, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr10, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr10, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr10, $xr10, 3
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 3
	xvpickve.d	$xr10, $xr9, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 4
	xvpickve.d	$xr10, $xr9, 1
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 5
	xvpickve.d	$xr10, $xr9, 2
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 6
	xvpickve.d	$xr9, $xr9, 3
	fcvt.s.d	$ft1, $ft1
	xvinsve0.w	$xr14, $xr9, 7
	xvst	$xr14, $t8, 0
	xvfadd.d	$xr5, $xr11, $xr5
	xvfadd.d	$xr6, $xr12, $xr6
	xvfsub.d	$xr5, $xr5, $xr7
	xvfsub.d	$xr6, $xr6, $xr8
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr6, $xr6, $xr1
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 3
	xvpickve.d	$xr6, $xr5, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 4
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 5
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 6
	xvpickve.d	$xr5, $xr5, 3
	xvld	$xr6, $s3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $s0, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s0, $s0, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s5, .LBB4_143
# %bb.144:                              # %middle.block1156
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB4_40
	b	.LBB4_42
.LBB4_145:                              # %.loopexit639.thread
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.m)
	st.w	$zero, $a1, 0
.LBB4_146:                              # %._crit_edge673
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	bnez	$t4, .LBB4_173
# %bb.147:
	movgr2fr.w	$fa0, $zero
	b	.LBB4_174
.LBB4_148:                              # %vector.ph849
	slli.d	$a5, $a4, 3
	bstrpick.d	$a2, $s8, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 32
	add.d	$a5, $a5, $a0
	addi.d	$a6, $a5, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_149:                              # %vector.body852
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a6, $a6, 64
	bnez	$a5, .LBB4_149
# %bb.150:                              # %middle.block857
	beq	$a2, $s8, .LBB4_22
	b	.LBB4_20
.LBB4_151:                              # %vector.memcheck1190
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a7, $t0, 4
	alsl.d	$t1, $a4, $t0, 2
	addi.d	$t0, $a1, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_53
# %bb.152:                              # %vector.memcheck1190
	addi.d	$t0, $a2, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a2, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_53
# %bb.153:                              # %vector.memcheck1190
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB4_53
# %bb.154:                              # %vector.ph1210
	move	$t1, $a6
	bstrins.d	$t1, $zero, 2, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	xvldrepl.w	$xr0, $a1, 4
	bstrins.d	$a5, $t2, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t2, $t1
	.p2align	4, , 16
.LBB4_155:                              # %vector.body1213
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvld	$xr3, $t0, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfmul.s	$xr3, $xr0, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB4_155
# %bb.156:                              # %middle.block1225
	bne	$a6, $t1, .LBB4_53
	b	.LBB4_55
.LBB4_157:                              # %vector.memcheck1228
	addi.d	$a7, $t5, 4
	alsl.d	$t1, $a4, $t5, 2
	addi.d	$t0, $a1, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_57
# %bb.158:                              # %vector.memcheck1228
	addi.d	$t0, $a2, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a2, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_57
# %bb.159:                              # %vector.memcheck1228
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB4_57
# %bb.160:                              # %vector.ph1248
	move	$t1, $a6
	bstrins.d	$t1, $zero, 2, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	xvldrepl.w	$xr0, $a1, 4
	bstrins.d	$a5, $t2, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t2, $t1
	.p2align	4, , 16
.LBB4_161:                              # %vector.body1251
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvld	$xr3, $t0, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfmul.s	$xr3, $xr0, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB4_161
# %bb.162:                              # %middle.block1263
	bne	$a6, $t1, .LBB4_57
	b	.LBB4_59
.LBB4_163:                              # %vector.ph1272
	move	$a6, $zero
	move	$a7, $a4
	bstrins.d	$a7, $zero, 3, 0
	xvreplve0.w	$xr0, $xr9
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a5
	move	$t1, $a7
	.p2align	4, , 16
.LBB4_164:                              # %vector.body1277
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t2, $t0, $a6
	add.d	$t3, $t5, $a6
	xvldx	$xr3, $t5, $a6
	xvld	$xr4, $t3, 32
	xvst	$xr1, $t2, -32
	xvstx	$xr1, $t0, $a6
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t2, $a1, $a6
	xvst	$xr3, $t2, 4
	xvst	$xr4, $t2, 36
	addi.d	$t1, $t1, -16
	addi.d	$a6, $a6, 64
	bnez	$t1, .LBB4_164
# %bb.165:                              # %middle.block1282
	beq	$a4, $a7, .LBB4_172
# %bb.166:                              # %vec.epilog.iter.check
	andi	$a6, $a4, 12
	beqz	$a6, .LBB4_357
.LBB4_167:                              # %vec.epilog.ph
	move	$t0, $a4
	bstrins.d	$t0, $zero, 1, 0
	ori	$t1, $zero, 1
	move	$a6, $a4
	bstrins.d	$a6, $t1, 1, 0
	vreplvei.w	$vr0, $vr9, 0
	addi.d	$t1, $a2, 4
	slli.d	$t2, $a7, 2
	sub.d	$a7, $a7, $t0
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a5
	.p2align	4, , 16
.LBB4_168:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t5, $t2
	vstx	$vr1, $t1, $t2
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a5, $a1, $t2
	vst	$vr3, $a5, 4
	addi.d	$a7, $a7, 4
	addi.d	$t2, $t2, 16
	bnez	$a7, .LBB4_168
# %bb.169:                              # %vec.epilog.middle.block
	beq	$a4, $t0, .LBB4_172
.LBB4_170:                              # %vec.epilog.scalar.ph.preheader
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	fld.s	$fa0, $a4, %pc_lo12(.LCPI4_2)
	slli.d	$a4, $a6, 2
	addi.d	$a5, $t5, -4
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB4_171:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a5, $a4
	stx.w	$zero, $a2, $a4
	fmadd.s	$fa1, $ft1, $fa0, $fa1
	fstx.s	$fa1, $a1, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB4_171
.LBB4_172:
	st.d	$zero, $sp, 368                 # 8-byte Folded Spill
.LBB4_173:                              # %._crit_edge673.thread
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a0, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa0, $t5, $a2
.LBB4_174:
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	ld.w	$s0, $s5, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(partQ__align.lastverticalw)
	sltu	$a2, $zero, $s0
	add.w	$a4, $a2, $t7
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	fst.s	$fa0, $a3, 0
	st.d	$a4, $sp, 352                   # 8-byte Folded Spill
	blt	$a4, $a2, .LBB4_189
# %bb.175:                              # %.lr.ph709
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	st.d	$s6, $sp, 320                   # 8-byte Folded Spill
	st.d	$s1, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s7, $sp, 344                   # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	sltu	$a2, $zero, $a2
	slt	$a3, $zero, $t4
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	bstrpick.d	$a2, $t8, 30, 0
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.ijp)
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.mp)
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.gapz_n2)
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(partQ__align.og_h_dg_n2_p)
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	addi.d	$t3, $a4, 8
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.fgcp2g)
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(partQ__align.ogcp2g)
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	st.d	$t1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.og_h_dg_n1_p)
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.gapz_n1)
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.fgcp1g)
	st.d	$t1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.ogcp1g)
	st.d	$t1, $sp, 152                   # 8-byte Folded Spill
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	add.d	$a0, $a0, $t1
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	addi.d	$s2, $a1, 4
	addi.d	$s8, $a2, 4
	addi.d	$s0, $a3, 4
	addi.d	$fp, $a5, 4
	addi.d	$s1, $a6, 4
	addi.d	$s5, $a7, 4
	addi.d	$s6, $a4, 4
	addi.d	$s3, $t0, 4
	movgr2fr.w	$fs0, $zero
	ori	$s7, $zero, 1
	st.d	$t3, $sp, 296                   # 8-byte Folded Spill
	b	.LBB4_177
	.p2align	4, , 16
.LBB4_176:                              # %._crit_edge701
                                        #   in Loop: Header=BB4_177 Depth=1
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	fldx.s	$fa0, $s4, $a2
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	move	$s7, $a1
	move	$t5, $s4
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_190
.LBB4_177:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_179 Depth 2
                                        #     Child Loop BB4_183 Depth 2
	addi.d	$a0, $s7, -1
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	move	$s4, $t6
	st.d	$t5, $sp, 400                   # 8-byte Folded Spill
	fst.s	$fa0, $t5, 0
	move	$a0, $t6
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $t4
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 2
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_180
# %bb.178:                              # %.lr.ph.i528
                                        #   in Loop: Header=BB4_177 Depth=1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_179:                              #   Parent Loop BB4_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	add.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	fldx.s	$fa0, $a1, $a5
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB4_179
.LBB4_180:                              # %part_imp_match_out_vead_gapmapQ.exit533
                                        #   in Loop: Header=BB4_177 Depth=1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s4, 0
	addi.d	$a1, $s7, 1
	ld.d	$t4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 392                   # 8-byte Folded Reload
	bnez	$a2, .LBB4_176
# %bb.181:                              # %.lr.ph700.preheader
                                        #   in Loop: Header=BB4_177 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	fldx.s	$fa0, $a5, $a0
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	fldx.s	$fa1, $a5, $a0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	fldx.s	$fa2, $a5, $a0
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	fldx.s	$fa3, $a5, $a0
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	fldx.s	$fa4, $a6, $a0
	slli.d	$a5, $a1, 2
	fldx.s	$fa5, $a6, $a5
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	fldx.s	$fa6, $a5, $a0
	fld.s	$ft0, $t6, 0
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	fld.s	$ft1, $a5, %pc_lo12(.LCPI4_2)
	slli.d	$a5, $s7, 3
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a5
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	fldx.s	$fa7, $a5, $a0
	xvld	$xr10, $sp, 240                 # 32-byte Folded Reload
	fmadd.s	$ft0, $ft2, $ft1, $ft0
	addi.d	$a5, $s4, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB4_183
	.p2align	4, , 16
.LBB4_182:                              #   in Loop: Header=BB4_183 Depth=2
	fmul.s	$ft2, $fa4, $ft2
	fadd.s	$ft1, $ft1, $ft2
	fcmp.cult.s	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	movcf2gr	$t0, $fcc0
	fldx.s	$ft1, $a5, $a3
	masknez	$t1, $a2, $t0
	maskeqz	$a4, $a4, $t0
	or	$a4, $a4, $t1
	fadd.s	$ft1, $fs0, $ft1
	fstx.s	$ft1, $a5, $a3
	addi.d	$a3, $a3, 4
	addi.w	$a2, $a2, 1
	addi.d	$a7, $a7, -1
	beq	$t4, $a2, .LBB4_176
.LBB4_183:                              # %.lr.ph700
                                        #   Parent Loop BB4_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s1, $a3
	fldx.s	$ft1, $t6, $a3
	fldx.s	$ft3, $s3, $a3
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $s5, $a3
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s6, $a3
	fmul.s	$ft4, $fa6, $ft4
	fldx.s	$ft5, $s0, $a3
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a6, $a3
	bcnez	$fcc0, .LBB4_185
# %bb.184:                              #   in Loop: Header=BB4_183 Depth=2
	add.d	$t0, $a4, $a7
	stx.w	$t0, $a6, $a3
	fmov.s	$fs0, $ft2
.LBB4_185:                              #   in Loop: Header=BB4_183 Depth=2
	add.d	$t0, $t3, $a3
	fld.s	$ft4, $t0, 0
	fldx.s	$ft3, $s2, $a3
	fldx.s	$ft2, $fp, $a3
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB4_187
# %bb.186:                              #   in Loop: Header=BB4_183 Depth=2
	ldx.w	$t1, $s8, $a3
	sub.d	$t1, $s7, $t1
	stx.w	$t1, $a6, $a3
	fmov.s	$fs0, $ft4
.LBB4_187:                              #   in Loop: Header=BB4_183 Depth=2
	fld.s	$ft4, $t0, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB4_182
# %bb.188:                              #   in Loop: Header=BB4_183 Depth=2
	fstx.s	$ft4, $s2, $a3
	stx.w	$t5, $s8, $a3
	b	.LBB4_182
.LBB4_189:
	movgr2fr.w	$fs0, $zero
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_205
	b	.LBB4_191
.LBB4_190:                              # %._crit_edge710.loopexit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$s0, $a0, 0
	move	$t5, $s4
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_205
.LBB4_191:                              # %.preheader637
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_198
# %bb.192:                              # %.lr.ph715
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB4_196
# %bb.193:                              # %vector.ph1296
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	xvreplgr2vr.d	$xr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI4_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI4_3)
	pcalau12i	$a5, %pc_hi20(.LCPI4_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI4_4)
	addi.d	$a5, $t5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_194:                              # %vector.body1303
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
	bnez	$a6, .LBB4_194
# %bb.195:                              # %middle.block1310
	beq	$a2, $a4, .LBB4_198
.LBB4_196:                              # %scalar.ph1294.preheader
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_197:                              # %scalar.ph1294
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
	bnez	$a1, .LBB4_197
.LBB4_198:                              # %.preheader636
	blez	$s3, .LBB4_205
# %bb.199:                              # %.lr.ph718
	bstrpick.d	$a0, $t7, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(partQ__align.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $t7, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB4_203
# %bb.200:                              # %vector.ph1315
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI4_5)
	vld	$vr4, $a5, %pc_lo12(.LCPI4_5)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_201:                              # %vector.body1322
                                        # =>This Inner Loop Header: Depth=1
	vext2xv.du.wu	$xr6, $xr4
	vld	$vr7, $a5, 0
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
	vst	$vr8, $a5, 0
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB4_201
# %bb.202:                              # %middle.block1329
	beq	$a3, $a4, .LBB4_205
.LBB4_203:                              # %scalar.ph1313.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB4_204:                              # %scalar.ph1313
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 0
	movgr2fr.d	$fa3, $a3
	fld.s	$fa4, $a1, 0
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa0, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa1, $fa3, $fa4
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_204
.LBB4_205:                              # %.loopexit
	move	$s1, $t5
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(partQ__align.lastverticalw)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(partQ__align.mseq1)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(partQ__align.mseq2)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(partQ__align.ijp)
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s4, 0
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	addi.w	$a3, $a0, 0
	add.w	$a1, $a0, $s4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	beqz	$a2, .LBB4_212
# %bb.206:
	ori	$a4, $zero, 1
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	beq	$s0, $a4, .LBB4_223
# %bb.207:
	fld.s	$fa0, $fp, 0
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	blez	$a4, .LBB4_218
# %bb.208:                              # %.lr.ph.i534
	slli.d	$a4, $s4, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	slli.d	$a5, $a0, 32
	srai.d	$a5, $a5, 30
	bstrpick.d	$a6, $s4, 30, 0
	move	$a7, $s4
	b	.LBB4_210
	.p2align	4, , 16
.LBB4_209:                              #   in Loop: Header=BB4_210 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$fp, $fp, 4
	beqz	$a6, .LBB4_218
.LBB4_210:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_209
# %bb.211:                              #   in Loop: Header=BB4_210 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_209
.LBB4_212:
	ori	$a4, $zero, 1
	move	$a5, $s0
	ld.d	$s0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	beq	$a5, $a4, .LBB4_241
# %bb.213:
	fld.s	$fa0, $fp, 0
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	blez	$a4, .LBB4_236
# %bb.214:                              # %.lr.ph.i627
	slli.d	$a4, $s4, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	slli.d	$a5, $a0, 32
	srai.d	$a5, $a5, 30
	bstrpick.d	$a6, $s4, 30, 0
	move	$a7, $s4
	b	.LBB4_216
	.p2align	4, , 16
.LBB4_215:                              #   in Loop: Header=BB4_216 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$fp, $fp, 4
	beqz	$a6, .LBB4_236
.LBB4_216:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_215
# %bb.217:                              #   in Loop: Header=BB4_216 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_215
.LBB4_218:                              # %.preheader9.i
	blez	$a3, .LBB4_223
# %bb.219:                              # %.lr.ph14.i
	slli.d	$a4, $s4, 32
	srai.d	$a4, $a4, 29
	slli.d	$a5, $a0, 2
	bstrpick.d	$a5, $a5, 32, 2
	slli.d	$a5, $a5, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_221
	.p2align	4, , 16
.LBB4_220:                              #   in Loop: Header=BB4_221 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$s1, $s1, 4
	beqz	$a6, .LBB4_223
.LBB4_221:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_220
# %bb.222:                              #   in Loop: Header=BB4_221 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_220
.LBB4_223:                              # %.loopexit.i
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	bltz	$a2, .LBB4_231
# %bb.224:                              # %.lr.ph17.preheader.i
	addi.d	$a5, $s4, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 4
	bgeu	$a4, $a6, .LBB4_226
# %bb.225:
	move	$a5, $zero
	b	.LBB4_229
.LBB4_226:                              # %vector.ph1384
	pcalau12i	$a6, %pc_hi20(.LCPI4_6)
	vld	$vr0, $a6, %pc_lo12(.LCPI4_6)
	bstrpick.d	$a5, $a5, 31, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $s7, 16
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_227:                              # %vector.body1387
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
	bnez	$a7, .LBB4_227
# %bb.228:                              # %middle.block1395
	beq	$a4, $a5, .LBB4_231
.LBB4_229:                              # %.lr.ph17.i.preheader
	alsl.d	$a6, $a5, $s7, 3
	sub.d	$a4, $a4, $a5
	addi.d	$a5, $a5, 1
	.p2align	4, , 16
.LBB4_230:                              # %.lr.ph17.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB4_230
.LBB4_231:                              # %.preheader8.i
	bltz	$a3, .LBB4_263
# %bb.232:                              # %iter.check1401
	ld.d	$a3, $s7, 0
	addi.d	$a6, $a0, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB4_234
# %bb.233:
	move	$a5, $zero
	b	.LBB4_261
.LBB4_234:                              # %vector.main.loop.iter.check1403
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB4_254
# %bb.235:
	move	$a5, $zero
	b	.LBB4_258
.LBB4_236:                              # %.preheader9.i539
	blez	$a3, .LBB4_241
# %bb.237:                              # %.lr.ph14.i619
	slli.d	$a4, $s4, 32
	srai.d	$a4, $a4, 29
	slli.d	$a5, $a0, 2
	bstrpick.d	$a5, $a5, 32, 2
	slli.d	$a5, $a5, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_239
	.p2align	4, , 16
.LBB4_238:                              #   in Loop: Header=BB4_239 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$s1, $s1, 4
	beqz	$a6, .LBB4_241
.LBB4_239:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_238
# %bb.240:                              #   in Loop: Header=BB4_239 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_238
.LBB4_241:                              # %.loopexit.i541
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	bltz	$a2, .LBB4_249
# %bb.242:                              # %.lr.ph17.preheader.i543
	addi.d	$a4, $s4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a2, $a5, .LBB4_244
# %bb.243:
	move	$a4, $zero
	b	.LBB4_247
.LBB4_244:                              # %vector.ph1334
	pcalau12i	$a5, %pc_hi20(.LCPI4_6)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_6)
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s7, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_245:                              # %vector.body1337
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
	bnez	$a6, .LBB4_245
# %bb.246:                              # %middle.block1344
	beq	$a2, $a4, .LBB4_249
.LBB4_247:                              # %.lr.ph17.i545.preheader
	alsl.d	$a5, $a4, $s7, 3
	sub.d	$a2, $a2, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB4_248:                              # %.lr.ph17.i545
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 1
	bnez	$a2, .LBB4_248
.LBB4_249:                              # %.preheader8.i549
	bltz	$a3, .LBB4_311
# %bb.250:                              # %iter.check1350
	ld.d	$a2, $s7, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB4_252
# %bb.251:
	move	$a4, $zero
	b	.LBB4_309
.LBB4_252:                              # %vector.main.loop.iter.check1352
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB4_302
# %bb.253:
	move	$a4, $zero
	b	.LBB4_306
.LBB4_254:                              # %vector.ph1404
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI4_7)
	xvld	$xr0, $a7, %pc_lo12(.LCPI4_7)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB4_255:                              # %vector.body1407
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB4_255
# %bb.256:                              # %middle.block1413
	beq	$a4, $a5, .LBB4_263
# %bb.257:                              # %vec.epilog.iter.check1418
	andi	$a7, $a6, 12
	beqz	$a7, .LBB4_261
.LBB4_258:                              # %vec.epilog.ph1417
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI4_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_8)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB4_259:                              # %vec.epilog.vector.body1426
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB4_259
# %bb.260:                              # %vec.epilog.middle.block1431
	beq	$a4, $a5, .LBB4_263
.LBB4_261:                              # %vec.epilog.scalar.ph1416.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB4_262:                              # %vec.epilog.scalar.ph1416
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB4_262
.LBB4_263:                              # %.preheader7.i
	blez	$ra, .LBB4_266
# %bb.264:                              # %.lr.ph22.i
	move	$a3, $s3
	move	$a4, $ra
	.p2align	4, , 16
.LBB4_265:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	add.d	$a6, $a5, $a1
	st.d	$a6, $a3, 0
	stx.b	$zero, $a5, $a1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_265
.LBB4_266:                              # %.preheader6.i
	ld.d	$a3, $sp, 528
	blez	$s8, .LBB4_269
# %bb.267:                              # %.lr.ph24.i
	move	$a4, $s6
	move	$a5, $s8
	.p2align	4, , 16
.LBB4_268:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	add.d	$a7, $a6, $a1
	st.d	$a7, $a4, 0
	stx.b	$zero, $a6, $a1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB4_268
.LBB4_269:                              # %._crit_edge.i
	st.w	$zero, $a3, 0
	bltz	$a1, .LBB4_347
# %bb.270:                              # %.lr.ph53.i
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(impmtx)
	ld.d	$a5, $a5, %pc_lo12(impmtx)
	bstrpick.d	$a6, $ra, 31, 0
	bstrpick.d	$a7, $s8, 31, 0
	addi.w	$t0, $zero, -1
	ori	$t1, $zero, 45
	move	$t2, $a0
	b	.LBB4_272
	.p2align	4, , 16
.LBB4_271:                              # %._crit_edge47.i
                                        #   in Loop: Header=BB4_272 Depth=1
	addi.w	$a4, $a4, 2
	move	$s4, $t3
	blt	$a1, $a4, .LBB4_347
.LBB4_272:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_279 Depth 2
                                        #       Child Loop BB4_280 Depth 3
                                        #       Child Loop BB4_282 Depth 3
                                        #     Child Loop BB4_287 Depth 2
                                        #       Child Loop BB4_288 Depth 3
                                        #       Child Loop BB4_290 Depth 3
                                        #     Child Loop BB4_298 Depth 2
                                        #     Child Loop BB4_301 Depth 2
	addi.w	$t4, $s4, 0
	slli.d	$t3, $t4, 3
	ldx.d	$t3, $s7, $t3
	addi.w	$t5, $t2, 0
	slli.d	$t6, $t5, 2
	ldx.w	$t7, $t3, $t6
	bltz	$t7, .LBB4_275
# %bb.273:                              #   in Loop: Header=BB4_272 Depth=1
	beqz	$t7, .LBB4_276
# %bb.274:                              #   in Loop: Header=BB4_272 Depth=1
	sub.w	$t3, $s4, $t7
	b	.LBB4_277
	.p2align	4, , 16
.LBB4_275:                              #   in Loop: Header=BB4_272 Depth=1
	addi.w	$t3, $s4, -1
	nor	$t8, $t3, $zero
	add.w	$fp, $s4, $t8
	bnez	$fp, .LBB4_279
	b	.LBB4_284
	.p2align	4, , 16
.LBB4_276:                              #   in Loop: Header=BB4_272 Depth=1
	addi.w	$t3, $s4, -1
.LBB4_277:                              #   in Loop: Header=BB4_272 Depth=1
	move	$t7, $t0
	nor	$t8, $t3, $zero
	add.w	$fp, $s4, $t8
	bnez	$fp, .LBB4_279
	b	.LBB4_284
	.p2align	4, , 16
.LBB4_278:                              # %._crit_edge29.i
                                        #   in Loop: Header=BB4_279 Depth=2
	addi.d	$fp, $fp, -1
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	beqz	$fp, .LBB4_283
.LBB4_279:                              # %.preheader3.i
                                        #   Parent Loop BB4_272 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_280 Depth 3
                                        #       Child Loop BB4_282 Depth 3
	move	$a2, $s8
	move	$s0, $s2
	move	$s1, $s3
	move	$s2, $a6
	blez	$ra, .LBB4_281
	.p2align	4, , 16
.LBB4_280:                              # %.lr.ph26.i
                                        #   Parent Loop BB4_272 Depth=1
                                        #     Parent Loop BB4_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $s0, 0
	ld.d	$s8, $s1, 0
	add.d	$s5, $s5, $fp
	ldx.b	$s5, $s5, $t3
	addi.d	$ra, $s8, -1
	st.d	$ra, $s1, 0
	st.b	$s5, $s8, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB4_280
.LBB4_281:                              # %.preheader2.i
                                        #   in Loop: Header=BB4_279 Depth=2
	move	$s0, $s6
	move	$s1, $a7
	move	$s8, $a2
	blez	$a2, .LBB4_278
	.p2align	4, , 16
.LBB4_282:                              # %.lr.ph28.i
                                        #   Parent Loop BB4_272 Depth=1
                                        #     Parent Loop BB4_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s0, 0
	addi.d	$s5, $s2, -1
	st.d	$s5, $s0, 0
	st.b	$t1, $s2, -1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB4_282
	b	.LBB4_278
	.p2align	4, , 16
.LBB4_283:                              # %._crit_edge32.loopexit.i
                                        #   in Loop: Header=BB4_272 Depth=1
	add.d	$a4, $s4, $a4
	add.d	$a4, $t8, $a4
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
.LBB4_284:                              # %._crit_edge32.i
                                        #   in Loop: Header=BB4_272 Depth=1
	add.w	$t2, $t7, $t2
	beq	$t7, $t0, .LBB4_291
# %bb.285:                              # %.preheader1.preheader.i
                                        #   in Loop: Header=BB4_272 Depth=1
	nor	$t7, $t7, $zero
	b	.LBB4_287
	.p2align	4, , 16
.LBB4_286:                              # %._crit_edge38.i
                                        #   in Loop: Header=BB4_287 Depth=2
	addi.d	$t7, $t7, -1
	addi.d	$a4, $a4, 1
	beqz	$t7, .LBB4_291
.LBB4_287:                              # %.preheader1.i
                                        #   Parent Loop BB4_272 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_288 Depth 3
                                        #       Child Loop BB4_290 Depth 3
	move	$t8, $s3
	move	$fp, $a6
	blez	$ra, .LBB4_289
	.p2align	4, , 16
.LBB4_288:                              # %.lr.ph35.i
                                        #   Parent Loop BB4_272 Depth=1
                                        #     Parent Loop BB4_287 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $t8, 0
	addi.d	$s1, $s0, -1
	st.d	$s1, $t8, 0
	st.b	$t1, $s0, -1
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB4_288
.LBB4_289:                              # %.preheader.i
                                        #   in Loop: Header=BB4_287 Depth=2
	move	$t8, $s5
	move	$fp, $s6
	move	$s0, $a7
	blez	$s8, .LBB4_286
	.p2align	4, , 16
.LBB4_290:                              # %.lr.ph37.i
                                        #   Parent Loop BB4_272 Depth=1
                                        #     Parent Loop BB4_287 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $t8, 0
	ld.d	$s2, $fp, 0
	add.d	$s1, $s1, $t7
	ldx.b	$s1, $s1, $t2
	addi.d	$s4, $s2, -1
	st.d	$s4, $fp, 0
	st.b	$s1, $s2, -1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	bnez	$s0, .LBB4_290
	b	.LBB4_286
	.p2align	4, , 16
.LBB4_291:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB4_272 Depth=1
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	beq	$t4, $a2, .LBB4_294
# %bb.292:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB4_272 Depth=1
	addi.w	$t7, $a0, 0
	beq	$t5, $t7, .LBB4_294
# %bb.293:                              #   in Loop: Header=BB4_272 Depth=1
	slli.d	$t7, $t4, 2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$t7, $a2, $t7
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ldx.w	$t6, $a2, $t6
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $a5, $t7
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	add.w	$t6, $t6, $a2
	slli.d	$t6, $t6, 2
	fldx.s	$fa0, $t7, $t6
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
.LBB4_294:                              #   in Loop: Header=BB4_272 Depth=1
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	blez	$t4, .LBB4_347
# %bb.295:                              #   in Loop: Header=BB4_272 Depth=1
	blez	$t5, .LBB4_347
# %bb.296:                              # %.preheader5.i
                                        #   in Loop: Header=BB4_272 Depth=1
	blez	$ra, .LBB4_299
# %bb.297:                              # %.lr.ph44.i
                                        #   in Loop: Header=BB4_272 Depth=1
	move	$t4, $s2
	move	$t5, $s3
	move	$t6, $a6
	.p2align	4, , 16
.LBB4_298:                              #   Parent Loop BB4_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	ldx.b	$t7, $t7, $t3
	addi.d	$fp, $t8, -1
	st.d	$fp, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB4_298
.LBB4_299:                              # %.preheader4.i
                                        #   in Loop: Header=BB4_272 Depth=1
	blez	$s8, .LBB4_271
# %bb.300:                              # %.lr.ph46.i
                                        #   in Loop: Header=BB4_272 Depth=1
	move	$t4, $s5
	move	$t5, $s6
	move	$t6, $a7
	.p2align	4, , 16
.LBB4_301:                              #   Parent Loop BB4_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	ldx.b	$t7, $t7, $t2
	addi.d	$fp, $t8, -1
	st.d	$fp, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB4_301
	b	.LBB4_271
.LBB4_302:                              # %vector.ph1353
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI4_7)
	xvld	$xr0, $a6, %pc_lo12(.LCPI4_7)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_303:                              # %vector.body1356
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_303
# %bb.304:                              # %middle.block1362
	beq	$a3, $a4, .LBB4_311
# %bb.305:                              # %vec.epilog.iter.check1367
	andi	$a6, $a5, 12
	beqz	$a6, .LBB4_309
.LBB4_306:                              # %vec.epilog.ph1366
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI4_8)
	vld	$vr0, $a4, %pc_lo12(.LCPI4_8)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB4_307:                              # %vec.epilog.vector.body1374
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB4_307
# %bb.308:                              # %vec.epilog.middle.block1379
	beq	$a3, $a4, .LBB4_311
.LBB4_309:                              # %vec.epilog.scalar.ph1365.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB4_310:                              # %vec.epilog.scalar.ph1365
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB4_310
.LBB4_311:                              # %.preheader7.i555
	blez	$s0, .LBB4_314
# %bb.312:                              # %.lr.ph22.i614
	move	$a2, $s3
	move	$a3, $s0
	.p2align	4, , 16
.LBB4_313:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB4_313
.LBB4_314:                              # %.preheader6.i556
	blez	$s8, .LBB4_317
# %bb.315:                              # %.lr.ph24.i609
	move	$a2, $s6
	move	$a3, $s8
	.p2align	4, , 16
.LBB4_316:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB4_316
.LBB4_317:                              # %._crit_edge.i557
	bltz	$a1, .LBB4_347
# %bb.318:                              # %.lr.ph53.i558
	move	$a3, $zero
	bstrpick.d	$a2, $s0, 31, 0
	bstrpick.d	$a4, $s8, 31, 0
	ori	$a5, $zero, 45
	b	.LBB4_320
	.p2align	4, , 16
.LBB4_319:                              # %._crit_edge47.i584
                                        #   in Loop: Header=BB4_320 Depth=1
	addi.w	$a3, $a3, 2
	move	$s4, $a6
	blt	$a1, $a3, .LBB4_347
.LBB4_320:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_327 Depth 2
                                        #       Child Loop BB4_328 Depth 3
                                        #       Child Loop BB4_330 Depth 3
                                        #     Child Loop BB4_335 Depth 2
                                        #       Child Loop BB4_336 Depth 3
                                        #       Child Loop BB4_338 Depth 3
                                        #     Child Loop BB4_343 Depth 2
                                        #     Child Loop BB4_346 Depth 2
	addi.w	$a7, $s4, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $s7, $a6
	addi.w	$t0, $a0, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB4_323
# %bb.321:                              #   in Loop: Header=BB4_320 Depth=1
	beqz	$t1, .LBB4_324
# %bb.322:                              #   in Loop: Header=BB4_320 Depth=1
	sub.w	$a6, $s4, $t1
	b	.LBB4_325
	.p2align	4, , 16
.LBB4_323:                              #   in Loop: Header=BB4_320 Depth=1
	addi.w	$a6, $s4, -1
	nor	$t2, $a6, $zero
	add.w	$t3, $s4, $t2
	bnez	$t3, .LBB4_327
	b	.LBB4_332
	.p2align	4, , 16
.LBB4_324:                              #   in Loop: Header=BB4_320 Depth=1
	addi.w	$a6, $s4, -1
.LBB4_325:                              #   in Loop: Header=BB4_320 Depth=1
	move	$t1, $ra
	nor	$t2, $a6, $zero
	add.w	$t3, $s4, $t2
	bnez	$t3, .LBB4_327
	b	.LBB4_332
	.p2align	4, , 16
.LBB4_326:                              # %._crit_edge29.i570
                                        #   in Loop: Header=BB4_327 Depth=2
	addi.d	$t3, $t3, -1
	beqz	$t3, .LBB4_331
.LBB4_327:                              # %.preheader3.i567
                                        #   Parent Loop BB4_320 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_328 Depth 3
                                        #       Child Loop BB4_330 Depth 3
	move	$t4, $s2
	move	$t5, $s3
	move	$t6, $a2
	blez	$s0, .LBB4_329
	.p2align	4, , 16
.LBB4_328:                              # %.lr.ph26.i605
                                        #   Parent Loop BB4_320 Depth=1
                                        #     Parent Loop BB4_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	add.d	$t7, $t7, $t3
	ldx.b	$t7, $t7, $a6
	addi.d	$fp, $t8, -1
	st.d	$fp, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB4_328
.LBB4_329:                              # %.preheader2.i569
                                        #   in Loop: Header=BB4_327 Depth=2
	move	$t4, $s6
	move	$t5, $a4
	blez	$s8, .LBB4_326
	.p2align	4, , 16
.LBB4_330:                              # %.lr.ph28.i601
                                        #   Parent Loop BB4_320 Depth=1
                                        #     Parent Loop BB4_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t6, $t4, 0
	addi.d	$t7, $t6, -1
	st.d	$t7, $t4, 0
	st.b	$a5, $t6, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB4_330
	b	.LBB4_326
	.p2align	4, , 16
.LBB4_331:                              # %._crit_edge32.loopexit.i572
                                        #   in Loop: Header=BB4_320 Depth=1
	add.d	$a3, $s4, $a3
	add.d	$a3, $t2, $a3
.LBB4_332:                              # %._crit_edge32.i573
                                        #   in Loop: Header=BB4_320 Depth=1
	add.w	$a0, $t1, $a0
	beq	$t1, $ra, .LBB4_339
# %bb.333:                              # %.preheader1.preheader.i574
                                        #   in Loop: Header=BB4_320 Depth=1
	nor	$t1, $t1, $zero
	b	.LBB4_335
	.p2align	4, , 16
.LBB4_334:                              # %._crit_edge38.i578
                                        #   in Loop: Header=BB4_335 Depth=2
	addi.d	$t1, $t1, -1
	addi.d	$a3, $a3, 1
	beqz	$t1, .LBB4_339
.LBB4_335:                              # %.preheader1.i575
                                        #   Parent Loop BB4_320 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_336 Depth 3
                                        #       Child Loop BB4_338 Depth 3
	move	$t2, $s3
	move	$t3, $a2
	blez	$s0, .LBB4_337
	.p2align	4, , 16
.LBB4_336:                              # %.lr.ph35.i597
                                        #   Parent Loop BB4_320 Depth=1
                                        #     Parent Loop BB4_335 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t4, $t2, 0
	addi.d	$t5, $t4, -1
	st.d	$t5, $t2, 0
	st.b	$a5, $t4, -1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 8
	bnez	$t3, .LBB4_336
.LBB4_337:                              # %.preheader.i577
                                        #   in Loop: Header=BB4_335 Depth=2
	move	$t2, $s5
	move	$t3, $s6
	move	$t4, $a4
	blez	$s8, .LBB4_334
	.p2align	4, , 16
.LBB4_338:                              # %.lr.ph37.i593
                                        #   Parent Loop BB4_320 Depth=1
                                        #     Parent Loop BB4_335 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t5, $t2, 0
	ld.d	$t6, $t3, 0
	add.d	$t5, $t5, $t1
	ldx.b	$t5, $t5, $a0
	addi.d	$t7, $t6, -1
	st.d	$t7, $t3, 0
	st.b	$t5, $t6, -1
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	bnez	$t4, .LBB4_338
	b	.LBB4_334
	.p2align	4, , 16
.LBB4_339:                              # %._crit_edge41.i580
                                        #   in Loop: Header=BB4_320 Depth=1
	blez	$a7, .LBB4_347
# %bb.340:                              # %._crit_edge41.i580
                                        #   in Loop: Header=BB4_320 Depth=1
	blez	$t0, .LBB4_347
# %bb.341:                              # %.preheader5.i582
                                        #   in Loop: Header=BB4_320 Depth=1
	blez	$s0, .LBB4_344
# %bb.342:                              # %.lr.ph44.i589
                                        #   in Loop: Header=BB4_320 Depth=1
	move	$a7, $s2
	move	$t0, $s3
	move	$t1, $a2
	.p2align	4, , 16
.LBB4_343:                              #   Parent Loop BB4_320 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $a7, 0
	ld.d	$t3, $t0, 0
	ldx.b	$t2, $t2, $a6
	addi.d	$t4, $t3, -1
	st.d	$t4, $t0, 0
	st.b	$t2, $t3, -1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	bnez	$t1, .LBB4_343
.LBB4_344:                              # %.preheader4.i583
                                        #   in Loop: Header=BB4_320 Depth=1
	blez	$s8, .LBB4_319
# %bb.345:                              # %.lr.ph46.i585
                                        #   in Loop: Header=BB4_320 Depth=1
	move	$a7, $s5
	move	$t0, $s6
	move	$t1, $a4
	.p2align	4, , 16
.LBB4_346:                              #   Parent Loop BB4_320 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $a7, 0
	ld.d	$t3, $t0, 0
	ldx.b	$t2, $t2, $a0
	addi.d	$t4, $t3, -1
	st.d	$t4, $t0, 0
	st.b	$t2, $t3, -1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	bnez	$t1, .LBB4_346
	b	.LBB4_319
.LBB4_347:                              # %Atracking_localhom.exit
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB4_356
# %bb.348:                              # %Atracking_localhom.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB4_356
# %bb.349:
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	blez	$a2, .LBB4_352
.LBB4_350:                              # %.lr.ph721
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(partQ__align.mseq1)
	.p2align	4, , 16
.LBB4_351:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$a2, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$a2, .LBB4_351
.LBB4_352:                              # %.preheader
	blez	$s8, .LBB4_355
# %bb.353:                              # %.lr.ph723
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(partQ__align.mseq2)
	.p2align	4, , 16
.LBB4_354:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB4_354
.LBB4_355:                              # %._crit_edge724
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 432                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	ret
.LBB4_356:
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
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	bgtz	$a2, .LBB4_350
	b	.LBB4_352
.LBB4_357:
	addi.d	$a6, $a7, 1
	b	.LBB4_170
.LBB4_358:
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
.LBB4_359:
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_35
.LBB4_360:
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	b	.LBB4_40
.Lfunc_end4:
	.size	partQ__align, .Lfunc_end4-partQ__align
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
	.type	part_imp_match_initQ.impalloclen,@object # @part_imp_match_initQ.impalloclen
	.local	part_imp_match_initQ.impalloclen
	.comm	part_imp_match_initQ.impalloclen,4,4
	.type	part_imp_match_initQ.nocount1,@object # @part_imp_match_initQ.nocount1
	.local	part_imp_match_initQ.nocount1
	.comm	part_imp_match_initQ.nocount1,8,8
	.type	part_imp_match_initQ.nocount2,@object # @part_imp_match_initQ.nocount2
	.local	part_imp_match_initQ.nocount2
	.comm	part_imp_match_initQ.nocount2,8,8
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

	.type	partQ__align.m,@object          # @partQ__align.m
	.local	partQ__align.m
	.comm	partQ__align.m,8,8
	.type	partQ__align.ijp,@object        # @partQ__align.ijp
	.local	partQ__align.ijp
	.comm	partQ__align.ijp,8,8
	.type	partQ__align.mp,@object         # @partQ__align.mp
	.local	partQ__align.mp
	.comm	partQ__align.mp,8,8
	.type	partQ__align.w1,@object         # @partQ__align.w1
	.local	partQ__align.w1
	.comm	partQ__align.w1,8,8
	.type	partQ__align.w2,@object         # @partQ__align.w2
	.local	partQ__align.w2
	.comm	partQ__align.w2,8,8
	.type	partQ__align.match,@object      # @partQ__align.match
	.local	partQ__align.match
	.comm	partQ__align.match,8,8
	.type	partQ__align.initverticalw,@object # @partQ__align.initverticalw
	.local	partQ__align.initverticalw
	.comm	partQ__align.initverticalw,8,8
	.type	partQ__align.lastverticalw,@object # @partQ__align.lastverticalw
	.local	partQ__align.lastverticalw
	.comm	partQ__align.lastverticalw,8,8
	.type	partQ__align.mseq1,@object      # @partQ__align.mseq1
	.local	partQ__align.mseq1
	.comm	partQ__align.mseq1,8,8
	.type	partQ__align.mseq2,@object      # @partQ__align.mseq2
	.local	partQ__align.mseq2
	.comm	partQ__align.mseq2,8,8
	.type	partQ__align.mseq,@object       # @partQ__align.mseq
	.local	partQ__align.mseq
	.comm	partQ__align.mseq,8,8
	.type	partQ__align.digf1,@object      # @partQ__align.digf1
	.local	partQ__align.digf1
	.comm	partQ__align.digf1,8,8
	.type	partQ__align.digf2,@object      # @partQ__align.digf2
	.local	partQ__align.digf2
	.comm	partQ__align.digf2,8,8
	.type	partQ__align.diaf1,@object      # @partQ__align.diaf1
	.local	partQ__align.diaf1
	.comm	partQ__align.diaf1,8,8
	.type	partQ__align.diaf2,@object      # @partQ__align.diaf2
	.local	partQ__align.diaf2
	.comm	partQ__align.diaf2,8,8
	.type	partQ__align.gapz1,@object      # @partQ__align.gapz1
	.local	partQ__align.gapz1
	.comm	partQ__align.gapz1,8,8
	.type	partQ__align.gapz2,@object      # @partQ__align.gapz2
	.local	partQ__align.gapz2
	.comm	partQ__align.gapz2,8,8
	.type	partQ__align.gapf1,@object      # @partQ__align.gapf1
	.local	partQ__align.gapf1
	.comm	partQ__align.gapf1,8,8
	.type	partQ__align.gapf2,@object      # @partQ__align.gapf2
	.local	partQ__align.gapf2
	.comm	partQ__align.gapf2,8,8
	.type	partQ__align.ogcp1g,@object     # @partQ__align.ogcp1g
	.local	partQ__align.ogcp1g
	.comm	partQ__align.ogcp1g,8,8
	.type	partQ__align.ogcp2g,@object     # @partQ__align.ogcp2g
	.local	partQ__align.ogcp2g
	.comm	partQ__align.ogcp2g,8,8
	.type	partQ__align.fgcp1g,@object     # @partQ__align.fgcp1g
	.local	partQ__align.fgcp1g
	.comm	partQ__align.fgcp1g,8,8
	.type	partQ__align.fgcp2g,@object     # @partQ__align.fgcp2g
	.local	partQ__align.fgcp2g
	.comm	partQ__align.fgcp2g,8,8
	.type	partQ__align.og_h_dg_n1_p,@object # @partQ__align.og_h_dg_n1_p
	.local	partQ__align.og_h_dg_n1_p
	.comm	partQ__align.og_h_dg_n1_p,8,8
	.type	partQ__align.og_h_dg_n2_p,@object # @partQ__align.og_h_dg_n2_p
	.local	partQ__align.og_h_dg_n2_p
	.comm	partQ__align.og_h_dg_n2_p,8,8
	.type	partQ__align.fg_h_dg_n1_p,@object # @partQ__align.fg_h_dg_n1_p
	.local	partQ__align.fg_h_dg_n1_p
	.comm	partQ__align.fg_h_dg_n1_p,8,8
	.type	partQ__align.fg_h_dg_n2_p,@object # @partQ__align.fg_h_dg_n2_p
	.local	partQ__align.fg_h_dg_n2_p
	.comm	partQ__align.fg_h_dg_n2_p,8,8
	.type	partQ__align.og_t_fg_h_dg_n1_p,@object # @partQ__align.og_t_fg_h_dg_n1_p
	.local	partQ__align.og_t_fg_h_dg_n1_p
	.comm	partQ__align.og_t_fg_h_dg_n1_p,8,8
	.type	partQ__align.og_t_fg_h_dg_n2_p,@object # @partQ__align.og_t_fg_h_dg_n2_p
	.local	partQ__align.og_t_fg_h_dg_n2_p
	.comm	partQ__align.og_t_fg_h_dg_n2_p,8,8
	.type	partQ__align.fg_t_og_h_dg_n1_p,@object # @partQ__align.fg_t_og_h_dg_n1_p
	.local	partQ__align.fg_t_og_h_dg_n1_p
	.comm	partQ__align.fg_t_og_h_dg_n1_p,8,8
	.type	partQ__align.fg_t_og_h_dg_n2_p,@object # @partQ__align.fg_t_og_h_dg_n2_p
	.local	partQ__align.fg_t_og_h_dg_n2_p
	.comm	partQ__align.fg_t_og_h_dg_n2_p,8,8
	.type	partQ__align.gapz_n1,@object    # @partQ__align.gapz_n1
	.local	partQ__align.gapz_n1
	.comm	partQ__align.gapz_n1,8,8
	.type	partQ__align.gapz_n2,@object    # @partQ__align.gapz_n2
	.local	partQ__align.gapz_n2
	.comm	partQ__align.gapz_n2,8,8
	.type	partQ__align.cpmx1,@object      # @partQ__align.cpmx1
	.local	partQ__align.cpmx1
	.comm	partQ__align.cpmx1,8,8
	.type	partQ__align.cpmx2,@object      # @partQ__align.cpmx2
	.local	partQ__align.cpmx2
	.comm	partQ__align.cpmx2,8,8
	.type	partQ__align.intwork,@object    # @partQ__align.intwork
	.local	partQ__align.intwork
	.comm	partQ__align.intwork,8,8
	.type	partQ__align.floatwork,@object  # @partQ__align.floatwork
	.local	partQ__align.floatwork
	.comm	partQ__align.floatwork,8,8
	.type	partQ__align.orlgth1,@object    # @partQ__align.orlgth1
	.local	partQ__align.orlgth1
	.comm	partQ__align.orlgth1,4,4
	.type	partQ__align.orlgth2,@object    # @partQ__align.orlgth2
	.local	partQ__align.orlgth2
	.comm	partQ__align.orlgth2,4,4
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
