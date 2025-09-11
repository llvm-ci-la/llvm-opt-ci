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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI4_3:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI4_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI4_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI4_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_2:
	.word	0x461c4000                      # float 1.0E+4
	.text
	.globl	partQ__align
	.p2align	5
	.type	partQ__align,@function
partQ__align:                           # @partQ__align
# %bb.0:
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $a5
	st.d	$a4, $sp, 400                   # 8-byte Folded Spill
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$a1, %pc_hi20(partQ__align.orlgth1)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.w	$s7, $a1, %pc_lo12(partQ__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
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
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
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
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$s0, $a0, %pc_lo12(partQ__align.orlgth2)
	addi.w	$a1, $s5, 0
	pcalau12i	$s6, %pc_hi20(partQ__align.w1)
	pcalau12i	$a0, %pc_hi20(partQ__align.w2)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.initverticalw)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.lastverticalw)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.m)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.mp)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(partQ__align.mseq)
	pcalau12i	$a0, %pc_hi20(partQ__align.digf1)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.digf2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.diaf1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.diaf2)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz1)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz2)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapf1)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapf2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.ogcp1g)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.ogcp2g)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fgcp1g)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fgcp2g)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_h_dg_n1_p)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_h_dg_n2_p)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
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
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.cpmx2)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.floatwork)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.intwork)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	blt	$s7, $s3, .LBB4_4
# %bb.3:
	bge	$s0, $a1, .LBB4_8
.LBB4_4:
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(partQ__align.match)
	blez	$s7, .LBB4_7
# %bb.5:
	blez	$s0, .LBB4_7
# %bb.6:
	ld.d	$a0, $s6, %pc_lo12(partQ__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(partQ__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(partQ__align.orlgth1)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(partQ__align.match)
	addi.w	$s6, $s7, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
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
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $s4, %pc_lo12(partQ__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.digf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.diaf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.diaf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.ogcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.intwork)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(partQ__align.orlgth1)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(partQ__align.orlgth2)
.LBB4_8:
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	blez	$a4, .LBB4_16
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $s4, %pc_lo12(partQ__align.mseq)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.mseq1)
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a4, $a3, .LBB4_14
# %bb.10:                               # %.lr.ph
	sub.d	$a3, $a1, $a0
	ori	$a5, $zero, 32
	bltu	$a3, $a5, .LBB4_14
# %bb.11:                               # %vector.ph
	bstrpick.d	$a2, $a4, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a1, 16
	addi.d	$a6, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a6, $a6, 32
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
	ld.d	$a0, $s4, %pc_lo12(partQ__align.mseq)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.mseq2)
	ori	$a2, $zero, 8
	bltu	$s8, $a2, .LBB4_19
# %bb.18:                               # %vector.memcheck845
	alsl.d	$a2, $a4, $a0, 3
	sub.d	$a2, $a1, $a2
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB4_264
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
	ld.d	$s4, $sp, 568
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s1, 0
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
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
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(partQ__align.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
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
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
.LBB4_29:
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.cpmx1)
	movgr2fr.w	$fs0, $a2
	pcalau12i	$a2, %pc_hi20(partQ__align.ijp)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(partQ__align.ijp)
	move	$a0, $s2
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s6
	move	$s1, $a4
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(partQ__align.cpmx2)
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a2, $s3
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $s8
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp1g)
	beqz	$s4, .LBB4_31
# %bb.30:
	ld.d	$s0, $sp, 592
	move	$a5, $s4
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584
	ld.d	$s6, $sp, 576
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	move	$a6, $s4
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$s5, $s3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s0
	move	$s3, $s0
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp1g)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a5, $s0
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	move	$a6, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s5
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $s0
	move	$a6, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s5
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf1)
	move	$s4, $s1
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $s0
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf2)
	move	$a1, $s8
	move	$a2, $fp
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	move	$a5, $s6
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf1)
	move	$a1, $s4
	move	$a2, $s2
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s1
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz1)
	move	$a1, $s4
	move	$a2, $s2
	move	$a3, $s7
	move	$a4, $s6
	move	$s3, $s0
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	move	$a5, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
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
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
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
	ffint.s.w	$ft10, $fs0
	blt	$s0, $ra, .LBB4_37
# %bb.33:                               # %.lr.ph650
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.digf2)
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_h_dg_n2_p)
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fgcp2g)
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(partQ__align.gapz2)
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(partQ__align.gapz_n2)
	addi.d	$t3, $s5, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 40
	fcvt.d.s	$fa0, $ft10
	bgeu	$t1, $t2, .LBB4_83
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
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp1g)
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.digf1)
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_h_dg_n1_p)
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fgcp1g)
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(partQ__align.gapz1)
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(partQ__align.gapz_n1)
	addi.d	$t3, $s7, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 40
	fcvt.d.s	$fa0, $ft10
	bgeu	$t1, $t2, .LBB4_116
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
	vst	$vr18, $sp, 240                 # 16-byte Folded Spill
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 560
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 552
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 536
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 520
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(partQ__align.w1)
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.w2)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(partQ__align.initverticalw)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(partQ__align.cpmx2)
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(partQ__align.cpmx1)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(partQ__align.floatwork)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(partQ__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
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
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	blez	$a1, .LBB4_46
# %bb.44:                               # %.lr.ph.i
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
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
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	move	$t8, $s5
	blez	$t4, .LBB4_50
# %bb.47:                               # %.lr.ph.i523
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	add.w	$a0, $a0, $s0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	bstrpick.d	$a1, $t8, 30, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
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
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
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
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
	ld.d	$t6, $sp, 384                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB4_60
# %bb.51:
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.ogcp1g)
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_h_dg_n2_p)
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.ogcp2g)
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.og_h_dg_n1_p)
	fld.s	$fa2, $a3, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
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
	bgeu	$a6, $a7, .LBB4_267
.LBB4_53:                               # %scalar.ph1208.preheader
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
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
	blez	$t4, .LBB4_149
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
	bgeu	$a6, $a7, .LBB4_273
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
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
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
	ori	$a5, $zero, 4
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB4_65
# %bb.62:                               # %vector.ph1161
	move	$a5, $a3
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 1, 0
	vreplgr2vr.w	$vr0, $a1
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a6, %pc_lo12(.LCPI4_1)
	addi.d	$a6, $t5, 4
	lu52i.d	$a7, $zero, -1026
	vreplgr2vr.d	$vr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_63:                               # %vector.body1166
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr0, $vr1
	vpickve2gr.w	$t0, $vr3, 3
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$t0, $vr3, 2
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$t0, $vr3, 1
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$t0, $vr3, 0
	movgr2fr.w	$fa3, $t0
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a6, 0
	vextrins.d	$vr3, $vr4, 16
	vfmul.d	$vr3, $vr3, $vr2
	vfmul.d	$vr4, $vr5, $vr2
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr7, $vr6, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfadd.d	$vr4, $vr6, $vr4
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr5, $vr3, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr3, $vr3, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr3, $vr5, 16
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr3, $vr5, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr3, $vr4, 48
	vst	$vr3, $a6, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 16
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
	ori	$a5, $zero, 4
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB4_72
# %bb.69:                               # %vector.ph1175
	move	$a5, $a3
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 1, 0
	vreplgr2vr.w	$vr0, $a1
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a6, %pc_lo12(.LCPI4_1)
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 4
	lu52i.d	$a7, $zero, -1026
	vreplgr2vr.d	$vr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_70:                               # %vector.body1180
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr0, $vr1
	vpickve2gr.w	$t0, $vr3, 3
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$t0, $vr3, 2
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$t0, $vr3, 1
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$t0, $vr3, 0
	movgr2fr.w	$fa3, $t0
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a6, 0
	vextrins.d	$vr3, $vr4, 16
	vfmul.d	$vr3, $vr3, $vr2
	vfmul.d	$vr4, $vr5, $vr2
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr7, $vr6, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfadd.d	$vr4, $vr6, $vr4
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr5, $vr3, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr3, $vr3, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr3, $vr5, 16
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr3, $vr5, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr3, $vr4, 48
	vst	$vr3, $a6, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB4_70
# %bb.71:                               # %middle.block1187
	beq	$a3, $a5, .LBB4_74
.LBB4_72:                               # %scalar.ph1173.preheader
	mul.d	$a3, $a1, $a4
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.m)
	st.w	$zero, $a1, 0
	blez	$t4, .LBB4_150
.LBB4_75:                               # %.lr.ph672
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.mp)
	addi.d	$a3, $t8, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a6, $zero, 8
	ori	$a5, $zero, 1
	bltu	$a4, $a6, .LBB4_80
# %bb.76:                               # %vector.memcheck1266
	sub.d	$a6, $a1, $t5
	addi.d	$a6, $a6, 4
	ori	$a7, $zero, 32
	bltu	$a6, $a7, .LBB4_80
# %bb.77:                               # %vector.ph1270
	move	$a7, $zero
	move	$a6, $a4
	bstrins.d	$a6, $zero, 2, 0
	ori	$t0, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $t0, 2, 0
	vreplvei.w	$vr0, $vr8, 0
	addi.d	$t0, $a2, 20
	vrepli.b	$vr1, 0
	lu12i.w	$t1, 287172
	vreplgr2vr.w	$vr2, $t1
	move	$t1, $a6
	.p2align	4, , 16
.LBB4_78:                               # %vector.body1275
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t2, $t0, $a7
	add.d	$t3, $t5, $a7
	vldx	$vr3, $t5, $a7
	vld	$vr4, $t3, 16
	vst	$vr1, $t2, -16
	vstx	$vr1, $t0, $a7
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	vfmadd.s	$vr4, $vr0, $vr2, $vr4
	add.d	$t2, $a1, $a7
	vst	$vr3, $t2, 4
	vst	$vr4, $t2, 20
	addi.d	$t1, $t1, -8
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB4_78
# %bb.79:                               # %middle.block1281
	beq	$a4, $a6, .LBB4_82
.LBB4_80:                               # %scalar.ph1268.preheader
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	fld.s	$fa0, $a4, %pc_lo12(.LCPI4_2)
	slli.d	$a4, $a5, 2
	addi.d	$a6, $t5, -4
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB4_81:                               # %scalar.ph1268
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a6, $a4
	stx.w	$zero, $a2, $a4
	fmadd.s	$fa1, $ft0, $fa0, $fa1
	fstx.s	$fa1, $a1, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB4_81
.LBB4_82:
	st.d	$zero, $sp, 352                 # 8-byte Folded Spill
	b	.LBB4_151
.LBB4_83:                               # %vector.memcheck860
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB4_339
# %bb.84:                               # %vector.memcheck860
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB4_339
# %bb.85:                               # %vector.memcheck860
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB4_339
# %bb.86:                               # %vector.memcheck860
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB4_339
# %bb.87:                               # %vector.memcheck860
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB4_339
# %bb.88:                               # %vector.memcheck860
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB4_339
# %bb.89:                               # %vector.memcheck860
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB4_339
# %bb.90:                               # %vector.memcheck860
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB4_339
# %bb.91:                               # %vector.memcheck860
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_339
# %bb.92:                               # %vector.memcheck860
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_339
# %bb.93:                               # %vector.memcheck860
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_339
# %bb.94:                               # %vector.memcheck860
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_339
# %bb.95:                               # %vector.memcheck860
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_339
# %bb.96:                               # %vector.memcheck860
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_339
# %bb.97:                               # %vector.memcheck860
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB4_339
# %bb.98:                               # %vector.memcheck860
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_339
# %bb.99:                               # %vector.memcheck860
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_339
# %bb.100:                              # %vector.memcheck860
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_339
# %bb.101:                              # %vector.memcheck860
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_339
# %bb.102:                              # %vector.memcheck860
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_339
# %bb.103:                              # %vector.memcheck860
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_340
# %bb.104:                              # %vector.memcheck860
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_340
# %bb.105:                              # %vector.memcheck860
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_340
# %bb.106:                              # %vector.memcheck860
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_340
# %bb.107:                              # %vector.memcheck860
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_340
# %bb.108:                              # %vector.memcheck860
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB4_340
# %bb.109:                              # %vector.memcheck860
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	bnez	$t5, .LBB4_35
# %bb.110:                              # %vector.memcheck860
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_35
# %bb.111:                              # %vector.memcheck860
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_35
# %bb.112:                              # %vector.memcheck860
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB4_35
# %bb.113:                              # %vector.ph986
	bstrpick.d	$t2, $t3, 31, 2
	slli.d	$t2, $t2, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$t3, $zero, 1023
	vreplgr2vr.d	$vr2, $t3
	lu52i.d	$t3, $zero, 1022
	vreplgr2vr.d	$vr3, $t3
	lu12i.w	$t3, 260096
	vreplgr2vr.w	$vr4, $t3
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
.LBB4_114:                              # %vector.body989
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $t3, 0
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa7, $fa5
	vreplvei.w	$vr5, $vr6, 2
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr7, 16
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr6, $vr6, 0
	fcvt.d.s	$fa6, $fa6
	vld	$vr8, $t4, 0
	vextrins.d	$vr6, $vr7, 16
	vfsub.d	$vr9, $vr2, $vr6
	vfsub.d	$vr10, $vr2, $vr5
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft3, $fa7
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr11, 16
	vreplvei.w	$vr11, $vr8, 3
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr8, $vr8, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr11, 16
	vfsub.d	$vr11, $vr10, $vr8
	vfsub.d	$vr12, $vr9, $vr7
	vfmul.d	$vr12, $vr12, $vr1
	vfmul.d	$vr11, $vr11, $vr1
	vfmul.d	$vr11, $vr11, $vr3
	vfmul.d	$vr12, $vr12, $vr3
	vreplvei.d	$vr13, $vr12, 1
	fcvt.s.d	$ft5, $ft5
	vreplvei.d	$vr12, $vr12, 0
	fcvt.s.d	$ft4, $ft4
	vextrins.w	$vr12, $vr13, 16
	vreplvei.d	$vr13, $vr11, 0
	fcvt.s.d	$ft5, $ft5
	vextrins.w	$vr12, $vr13, 32
	vreplvei.d	$vr11, $vr11, 1
	vld	$vr13, $t6, 0
	fcvt.s.d	$ft3, $ft3
	vextrins.w	$vr12, $vr11, 48
	vst	$vr12, $t5, 0
	vreplvei.w	$vr11, $vr13, 3
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr12, $vr13, 2
	fcvt.d.s	$ft4, $ft4
	vextrins.d	$vr12, $vr11, 16
	vfsub.d	$vr11, $vr2, $vr12
	vfsub.d	$vr14, $vr11, $vr8
	vreplvei.w	$vr15, $vr13, 1
	fcvt.d.s	$ft7, $ft7
	vreplvei.w	$vr13, $vr13, 0
	fcvt.d.s	$ft5, $ft5
	vextrins.d	$vr13, $vr15, 16
	vfsub.d	$vr15, $vr2, $vr13
	vfsub.d	$vr16, $vr15, $vr7
	vfmul.d	$vr16, $vr16, $vr1
	vfmul.d	$vr14, $vr14, $vr1
	vfmul.d	$vr14, $vr14, $vr3
	vfmul.d	$vr16, $vr16, $vr3
	vreplvei.d	$vr17, $vr16, 1
	fcvt.s.d	$ft9, $ft9
	vreplvei.d	$vr16, $vr16, 0
	fcvt.s.d	$ft8, $ft8
	vextrins.w	$vr16, $vr17, 16
	vreplvei.d	$vr17, $vr14, 0
	fcvt.s.d	$ft9, $ft9
	vextrins.w	$vr16, $vr17, 32
	vreplvei.d	$vr14, $vr14, 1
	fcvt.s.d	$ft6, $ft6
	vextrins.w	$vr16, $vr14, 48
	vst	$vr16, $t7, 0
	vfadd.d	$vr9, $vr9, $vr13
	vfadd.d	$vr10, $vr10, $vr12
	vfsub.d	$vr10, $vr10, $vr8
	vfsub.d	$vr9, $vr9, $vr7
	vfmul.d	$vr9, $vr9, $vr3
	vfmul.d	$vr10, $vr10, $vr3
	vfmul.d	$vr10, $vr10, $vr1
	vfmul.d	$vr9, $vr9, $vr1
	vreplvei.d	$vr12, $vr9, 1
	fcvt.s.d	$ft4, $ft4
	vreplvei.d	$vr9, $vr9, 0
	fcvt.s.d	$ft1, $ft1
	vextrins.w	$vr9, $vr12, 16
	vreplvei.d	$vr12, $vr10, 0
	fcvt.s.d	$ft4, $ft4
	vextrins.w	$vr9, $vr12, 32
	vreplvei.d	$vr10, $vr10, 1
	fcvt.s.d	$ft2, $ft2
	vextrins.w	$vr9, $vr10, 48
	vst	$vr9, $t8, 0
	vfadd.d	$vr6, $vr15, $vr6
	vfadd.d	$vr5, $vr11, $vr5
	vfsub.d	$vr5, $vr5, $vr8
	vfsub.d	$vr6, $vr6, $vr7
	vfmul.d	$vr6, $vr6, $vr3
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vfmul.d	$vr6, $vr6, $vr1
	vreplvei.d	$vr7, $vr6, 1
	fcvt.s.d	$fa7, $fa7
	vreplvei.d	$vr6, $vr6, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr6, $vr7, 16
	vreplvei.d	$vr7, $vr5, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr6, $vr7, 32
	vreplvei.d	$vr5, $vr5, 1
	vld	$vr7, $s3, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 48
	vst	$vr6, $s0, 0
	vfsub.s	$vr5, $vr4, $vr7
	vst	$vr5, $s4, 0
	addi.d	$s5, $s5, -4
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s0, $s0, 16
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 16
	bnez	$s5, .LBB4_114
# %bb.115:                              # %middle.block1003
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB4_35
	b	.LBB4_37
.LBB4_116:                              # %vector.memcheck1006
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB4_341
# %bb.117:                              # %vector.memcheck1006
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB4_341
# %bb.118:                              # %vector.memcheck1006
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB4_341
# %bb.119:                              # %vector.memcheck1006
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB4_341
# %bb.120:                              # %vector.memcheck1006
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB4_341
# %bb.121:                              # %vector.memcheck1006
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB4_341
# %bb.122:                              # %vector.memcheck1006
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB4_341
# %bb.123:                              # %vector.memcheck1006
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB4_341
# %bb.124:                              # %vector.memcheck1006
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_341
# %bb.125:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_341
# %bb.126:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_341
# %bb.127:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_341
# %bb.128:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_341
# %bb.129:                              # %vector.memcheck1006
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_341
# %bb.130:                              # %vector.memcheck1006
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB4_341
# %bb.131:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_341
# %bb.132:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_341
# %bb.133:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_341
# %bb.134:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_341
# %bb.135:                              # %vector.memcheck1006
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_341
# %bb.136:                              # %vector.memcheck1006
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_40
# %bb.137:                              # %vector.memcheck1006
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.138:                              # %vector.memcheck1006
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.139:                              # %vector.memcheck1006
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.140:                              # %vector.memcheck1006
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.141:                              # %vector.memcheck1006
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB4_40
# %bb.142:                              # %vector.memcheck1006
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_40
# %bb.143:                              # %vector.memcheck1006
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_40
# %bb.144:                              # %vector.memcheck1006
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_40
# %bb.145:                              # %vector.memcheck1006
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB4_40
# %bb.146:                              # %vector.ph1137
	bstrpick.d	$t2, $t3, 31, 2
	slli.d	$t2, $t2, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$t3, $zero, 1023
	vreplgr2vr.d	$vr2, $t3
	lu52i.d	$t3, $zero, 1022
	vreplgr2vr.d	$vr3, $t3
	lu12i.w	$t3, 260096
	vreplgr2vr.w	$vr4, $t3
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
.LBB4_147:                              # %vector.body1142
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $t3, 0
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa7, $fa5
	vreplvei.w	$vr5, $vr6, 2
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr7, 16
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr6, $vr6, 0
	fcvt.d.s	$fa6, $fa6
	vld	$vr8, $t4, 0
	vextrins.d	$vr6, $vr7, 16
	vfsub.d	$vr9, $vr2, $vr6
	vfsub.d	$vr10, $vr2, $vr5
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft3, $fa7
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr11, 16
	vreplvei.w	$vr11, $vr8, 3
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr8, $vr8, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr11, 16
	vfsub.d	$vr11, $vr10, $vr8
	vfsub.d	$vr12, $vr9, $vr7
	vfmul.d	$vr12, $vr12, $vr1
	vfmul.d	$vr11, $vr11, $vr1
	vfmul.d	$vr11, $vr11, $vr3
	vfmul.d	$vr12, $vr12, $vr3
	vreplvei.d	$vr13, $vr12, 1
	fcvt.s.d	$ft5, $ft5
	vreplvei.d	$vr12, $vr12, 0
	fcvt.s.d	$ft4, $ft4
	vextrins.w	$vr12, $vr13, 16
	vreplvei.d	$vr13, $vr11, 0
	fcvt.s.d	$ft5, $ft5
	vextrins.w	$vr12, $vr13, 32
	vreplvei.d	$vr11, $vr11, 1
	vld	$vr13, $t6, 0
	fcvt.s.d	$ft3, $ft3
	vextrins.w	$vr12, $vr11, 48
	vst	$vr12, $t5, 0
	vreplvei.w	$vr11, $vr13, 3
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr12, $vr13, 2
	fcvt.d.s	$ft4, $ft4
	vextrins.d	$vr12, $vr11, 16
	vfsub.d	$vr11, $vr2, $vr12
	vfsub.d	$vr14, $vr11, $vr8
	vreplvei.w	$vr15, $vr13, 1
	fcvt.d.s	$ft7, $ft7
	vreplvei.w	$vr13, $vr13, 0
	fcvt.d.s	$ft5, $ft5
	vextrins.d	$vr13, $vr15, 16
	vfsub.d	$vr15, $vr2, $vr13
	vfsub.d	$vr16, $vr15, $vr7
	vfmul.d	$vr16, $vr16, $vr1
	vfmul.d	$vr14, $vr14, $vr1
	vfmul.d	$vr14, $vr14, $vr3
	vfmul.d	$vr16, $vr16, $vr3
	vreplvei.d	$vr17, $vr16, 1
	fcvt.s.d	$ft9, $ft9
	vreplvei.d	$vr16, $vr16, 0
	fcvt.s.d	$ft8, $ft8
	vextrins.w	$vr16, $vr17, 16
	vreplvei.d	$vr17, $vr14, 0
	fcvt.s.d	$ft9, $ft9
	vextrins.w	$vr16, $vr17, 32
	vreplvei.d	$vr14, $vr14, 1
	fcvt.s.d	$ft6, $ft6
	vextrins.w	$vr16, $vr14, 48
	vst	$vr16, $t7, 0
	vfadd.d	$vr9, $vr9, $vr13
	vfadd.d	$vr10, $vr10, $vr12
	vfsub.d	$vr10, $vr10, $vr8
	vfsub.d	$vr9, $vr9, $vr7
	vfmul.d	$vr9, $vr9, $vr3
	vfmul.d	$vr10, $vr10, $vr3
	vfmul.d	$vr10, $vr10, $vr1
	vfmul.d	$vr9, $vr9, $vr1
	vreplvei.d	$vr12, $vr9, 1
	fcvt.s.d	$ft4, $ft4
	vreplvei.d	$vr9, $vr9, 0
	fcvt.s.d	$ft1, $ft1
	vextrins.w	$vr9, $vr12, 16
	vreplvei.d	$vr12, $vr10, 0
	fcvt.s.d	$ft4, $ft4
	vextrins.w	$vr9, $vr12, 32
	vreplvei.d	$vr10, $vr10, 1
	fcvt.s.d	$ft2, $ft2
	vextrins.w	$vr9, $vr10, 48
	vst	$vr9, $t8, 0
	vfadd.d	$vr6, $vr15, $vr6
	vfadd.d	$vr5, $vr11, $vr5
	vfsub.d	$vr5, $vr5, $vr8
	vfsub.d	$vr6, $vr6, $vr7
	vfmul.d	$vr6, $vr6, $vr3
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vfmul.d	$vr6, $vr6, $vr1
	vreplvei.d	$vr7, $vr6, 1
	fcvt.s.d	$fa7, $fa7
	vreplvei.d	$vr6, $vr6, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr6, $vr7, 16
	vreplvei.d	$vr7, $vr5, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr6, $vr7, 32
	vreplvei.d	$vr5, $vr5, 1
	vld	$vr7, $s3, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 48
	vst	$vr6, $s0, 0
	vfsub.s	$vr5, $vr4, $vr7
	vst	$vr5, $s4, 0
	addi.d	$s5, $s5, -4
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s0, $s0, 16
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 16
	bnez	$s5, .LBB4_147
# %bb.148:                              # %middle.block1156
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB4_40
	b	.LBB4_42
.LBB4_149:                              # %.loopexit639.thread
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.m)
	st.w	$zero, $a1, 0
.LBB4_150:                              # %._crit_edge673
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	beqz	$t4, .LBB4_279
.LBB4_151:                              # %._crit_edge673.thread
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a0, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa0, $t5, $a2
.LBB4_152:
	st.d	$s0, $sp, 256                   # 8-byte Folded Spill
	ld.w	$s0, $s5, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(partQ__align.lastverticalw)
	sltu	$a2, $zero, $s0
	add.w	$a4, $a2, $t7
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	fst.s	$fa0, $a3, 0
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	blt	$a4, $a2, .LBB4_167
# %bb.153:                              # %.lr.ph709
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	st.d	$s6, $sp, 304                   # 8-byte Folded Spill
	st.d	$s1, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s7, $sp, 328                   # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	sltu	$a2, $zero, $a2
	slt	$a3, $zero, $t4
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
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
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
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
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.fgcp1g)
	st.d	$t1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.ogcp1g)
	st.d	$t1, $sp, 152                   # 8-byte Folded Spill
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	add.d	$a0, $a0, $t1
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
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
	st.d	$t3, $sp, 280                   # 8-byte Folded Spill
	b	.LBB4_155
	.p2align	4, , 16
.LBB4_154:                              # %._crit_edge701
                                        #   in Loop: Header=BB4_155 Depth=1
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	fldx.s	$fa0, $s4, $a2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	move	$s7, $a1
	move	$t5, $s4
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_168
.LBB4_155:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_157 Depth 2
                                        #     Child Loop BB4_161 Depth 2
	addi.d	$a0, $s7, -1
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	move	$s4, $t6
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	fst.s	$fa0, $t5, 0
	move	$a0, $t6
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $t4
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 2
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_158
# %bb.156:                              # %.lr.ph.i528
                                        #   in Loop: Header=BB4_155 Depth=1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_157:                              #   Parent Loop BB4_155 Depth=1
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
	bnez	$a4, .LBB4_157
.LBB4_158:                              # %part_imp_match_out_vead_gapmapQ.exit533
                                        #   in Loop: Header=BB4_155 Depth=1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s4, 0
	addi.d	$a1, $s7, 1
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	bnez	$a2, .LBB4_154
# %bb.159:                              # %.lr.ph700.preheader
                                        #   in Loop: Header=BB4_155 Depth=1
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
	vld	$vr10, $sp, 240                 # 16-byte Folded Reload
	fmadd.s	$ft0, $ft2, $ft1, $ft0
	addi.d	$a5, $s4, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB4_161
	.p2align	4, , 16
.LBB4_160:                              #   in Loop: Header=BB4_161 Depth=2
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
	beq	$t4, $a2, .LBB4_154
.LBB4_161:                              # %.lr.ph700
                                        #   Parent Loop BB4_155 Depth=1
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
	bcnez	$fcc0, .LBB4_163
# %bb.162:                              #   in Loop: Header=BB4_161 Depth=2
	add.d	$t0, $a4, $a7
	stx.w	$t0, $a6, $a3
	fmov.s	$fs0, $ft2
.LBB4_163:                              #   in Loop: Header=BB4_161 Depth=2
	add.d	$t0, $t3, $a3
	fld.s	$ft4, $t0, 0
	fldx.s	$ft3, $s2, $a3
	fldx.s	$ft2, $fp, $a3
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB4_165
# %bb.164:                              #   in Loop: Header=BB4_161 Depth=2
	ldx.w	$t1, $s8, $a3
	sub.d	$t1, $s7, $t1
	stx.w	$t1, $a6, $a3
	fmov.s	$fs0, $ft4
.LBB4_165:                              #   in Loop: Header=BB4_161 Depth=2
	fld.s	$ft4, $t0, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB4_160
# %bb.166:                              #   in Loop: Header=BB4_161 Depth=2
	fstx.s	$ft4, $s2, $a3
	stx.w	$t5, $s8, $a3
	b	.LBB4_160
.LBB4_167:
	movgr2fr.w	$fs0, $zero
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_183
	b	.LBB4_169
.LBB4_168:                              # %._crit_edge710.loopexit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$s0, $a0, 0
	move	$t5, $s4
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_183
.LBB4_169:                              # %.preheader637
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_176
# %bb.170:                              # %.lr.ph715
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB4_174
# %bb.171:                              # %vector.ph1286
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	vreplgr2vr.d	$vr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI4_3)
	vld	$vr2, $a5, %pc_lo12(.LCPI4_3)
	pcalau12i	$a5, %pc_hi20(.LCPI4_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI4_4)
	addi.d	$a5, $t5, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_172:                              # %vector.body1293
                                        # =>This Inner Loop Header: Depth=1
	vsub.d	$vr5, $vr1, $vr3
	vsub.d	$vr6, $vr1, $vr2
	vpickev.w	$vr5, $vr6, $vr5
	vmul.w	$vr5, $vr0, $vr5
	vpickve2gr.w	$a7, $vr5, 3
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 2
	movgr2fr.w	$fa7, $a7
	ffint.d.w	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vpickve2gr.w	$a7, $vr5, 1
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 0
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vld	$vr8, $a5, 0
	vextrins.d	$vr5, $vr6, 16
	vfmul.d	$vr5, $vr5, $vr4
	vfmul.d	$vr6, $vr7, $vr4
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr9, $vr8, 0
	fcvt.d.s	$ft1, $ft1
	vextrins.d	$vr9, $vr7, 16
	vreplvei.w	$vr7, $vr8, 3
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr8, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vfadd.d	$vr6, $vr8, $vr6
	vfadd.d	$vr5, $vr9, $vr5
	vreplvei.d	$vr7, $vr5, 1
	fcvt.s.d	$fa7, $fa7
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr7, 16
	vreplvei.d	$vr7, $vr6, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr5, $vr7, 32
	vreplvei.d	$vr6, $vr6, 1
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 48
	vst	$vr5, $a5, 0
	vaddi.du	$vr3, $vr3, 4
	vaddi.du	$vr2, $vr2, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB4_172
# %bb.173:                              # %middle.block1300
	beq	$a2, $a4, .LBB4_176
.LBB4_174:                              # %scalar.ph1284.preheader
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_175:                              # %scalar.ph1284
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
	bnez	$a1, .LBB4_175
.LBB4_176:                              # %.preheader636
	blez	$s3, .LBB4_183
# %bb.177:                              # %.lr.ph718
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
	ori	$a4, $zero, 2
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB4_181
# %bb.178:                              # %vector.ph1305
	move	$a5, $a3
	bstrins.d	$a5, $zero, 0, 0
	ori	$a0, $a3, 1
	addi.d	$a6, $a1, 8
	vldi	$vr2, -928
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_179:                              # %vector.body1308
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t0, $a4, 31, 0
	addi.d	$t1, $a4, -1
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa3, $t1
	ffint.d.l	$fa3, $fa3
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa4, $fa4, $fa2
	fld.s	$fa5, $a6, -4
	fld.s	$fa6, $a6, 0
	fsub.d	$fa3, $fa0, $fa3
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa3, $fa1, $fa3, $fa5
	fmadd.d	$fa4, $fa1, $fa4, $fa6
	fcvt.s.d	$fa3, $fa3
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa3, $a6, -4
	fst.s	$fa4, $a6, 0
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -2
	addi.w	$a4, $a4, 2
	bnez	$a7, .LBB4_179
# %bb.180:                              # %middle.block1313
	beq	$a3, $a5, .LBB4_183
.LBB4_181:                              # %scalar.ph1303.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB4_182:                              # %scalar.ph1303
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
	bnez	$a2, .LBB4_182
.LBB4_183:                              # %.loopexit
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
	addi.w	$a2, $s4, 0
	addi.w	$a3, $a0, 0
	add.w	$a1, $a0, $s4
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	beqz	$a4, .LBB4_190
# %bb.184:
	ori	$a4, $zero, 1
	ld.d	$ra, $sp, 400                   # 8-byte Folded Reload
	beq	$s0, $a4, .LBB4_201
# %bb.185:
	fld.s	$fa0, $fp, 0
	blez	$a2, .LBB4_196
# %bb.186:                              # %.lr.ph.i534
	slli.d	$a4, $s4, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	slli.d	$a5, $a0, 32
	srai.d	$a5, $a5, 30
	bstrpick.d	$a6, $s4, 30, 0
	move	$a7, $s4
	b	.LBB4_188
	.p2align	4, , 16
.LBB4_187:                              #   in Loop: Header=BB4_188 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$fp, $fp, 4
	beqz	$a6, .LBB4_196
.LBB4_188:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_187
# %bb.189:                              #   in Loop: Header=BB4_188 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_187
.LBB4_190:
	ori	$a4, $zero, 1
	move	$a5, $s0
	ld.d	$s0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	beq	$a5, $a4, .LBB4_261
# %bb.191:
	fld.s	$fa0, $fp, 0
	blez	$a2, .LBB4_256
# %bb.192:                              # %.lr.ph.i627
	slli.d	$a4, $s4, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	slli.d	$a5, $a0, 32
	srai.d	$a5, $a5, 30
	bstrpick.d	$a6, $s4, 30, 0
	move	$a7, $s4
	b	.LBB4_194
	.p2align	4, , 16
.LBB4_193:                              #   in Loop: Header=BB4_194 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$fp, $fp, 4
	beqz	$a6, .LBB4_256
.LBB4_194:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_193
# %bb.195:                              #   in Loop: Header=BB4_194 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_193
.LBB4_196:                              # %.preheader9.i
	blez	$a3, .LBB4_201
# %bb.197:                              # %.lr.ph14.i
	slli.d	$a4, $s4, 32
	srai.d	$a4, $a4, 29
	slli.d	$a5, $a0, 2
	bstrpick.d	$a5, $a5, 32, 2
	slli.d	$a5, $a5, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_199
	.p2align	4, , 16
.LBB4_198:                              #   in Loop: Header=BB4_199 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$s1, $s1, 4
	beqz	$a6, .LBB4_201
.LBB4_199:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_198
# %bb.200:                              #   in Loop: Header=BB4_199 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_198
.LBB4_201:                              # %.loopexit.i
	bltz	$a2, .LBB4_209
# %bb.202:                              # %.lr.ph17.preheader.i
	addi.d	$a5, $s4, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 4
	bgeu	$a4, $a6, .LBB4_204
# %bb.203:
	move	$a5, $zero
	b	.LBB4_207
.LBB4_204:                              # %vector.ph1347
	pcalau12i	$a6, %pc_hi20(.LCPI4_5)
	vld	$vr0, $a6, %pc_lo12(.LCPI4_5)
	bstrpick.d	$a5, $a5, 31, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $s7, 16
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_205:                              # %vector.body1350
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
	bnez	$a7, .LBB4_205
# %bb.206:                              # %middle.block1358
	beq	$a4, $a5, .LBB4_209
.LBB4_207:                              # %.lr.ph17.i.preheader
	alsl.d	$a6, $a5, $s7, 3
	sub.d	$a4, $a4, $a5
	addi.d	$a5, $a5, 1
	.p2align	4, , 16
.LBB4_208:                              # %.lr.ph17.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB4_208
.LBB4_209:                              # %.preheader8.i
	bltz	$a3, .LBB4_217
# %bb.210:                              # %.lr.ph20.i
	ld.d	$a3, $s7, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB4_212
# %bb.211:
	move	$a5, $zero
	b	.LBB4_215
.LBB4_212:                              # %vector.ph1363
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI4_6)
	vld	$vr0, $a6, %pc_lo12(.LCPI4_6)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_213:                              # %vector.body1366
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_213
# %bb.214:                              # %middle.block1372
	beq	$a4, $a5, .LBB4_217
.LBB4_215:                              # %scalar.ph1361.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB4_216:                              # %scalar.ph1361
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB4_216
.LBB4_217:                              # %.preheader7.i
	blez	$ra, .LBB4_220
# %bb.218:                              # %.lr.ph22.i
	move	$a3, $s3
	move	$a4, $ra
	.p2align	4, , 16
.LBB4_219:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	add.d	$a6, $a5, $a1
	st.d	$a6, $a3, 0
	stx.b	$zero, $a5, $a1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_219
.LBB4_220:                              # %.preheader6.i
	ld.d	$a3, $sp, 512
	blez	$s8, .LBB4_223
# %bb.221:                              # %.lr.ph24.i
	move	$a4, $s6
	move	$a5, $s8
	.p2align	4, , 16
.LBB4_222:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	add.d	$a7, $a6, $a1
	st.d	$a7, $a4, 0
	stx.b	$zero, $a6, $a1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB4_222
.LBB4_223:                              # %._crit_edge.i
	st.w	$zero, $a3, 0
	bltz	$a1, .LBB4_329
# %bb.224:                              # %.lr.ph53.i
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(impmtx)
	ld.d	$a5, $a5, %pc_lo12(impmtx)
	st.d	$a5, $sp, 392                   # 8-byte Folded Spill
	bstrpick.d	$a6, $ra, 31, 0
	bstrpick.d	$a7, $s8, 31, 0
	addi.w	$t0, $zero, -1
	ori	$t1, $zero, 45
	move	$t2, $a0
	b	.LBB4_226
	.p2align	4, , 16
.LBB4_225:                              # %._crit_edge47.i
                                        #   in Loop: Header=BB4_226 Depth=1
	addi.w	$a4, $a4, 2
	move	$s4, $t3
	blt	$a1, $a4, .LBB4_329
.LBB4_226:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_233 Depth 2
                                        #       Child Loop BB4_234 Depth 3
                                        #       Child Loop BB4_236 Depth 3
                                        #     Child Loop BB4_241 Depth 2
                                        #       Child Loop BB4_242 Depth 3
                                        #       Child Loop BB4_244 Depth 3
                                        #     Child Loop BB4_252 Depth 2
                                        #     Child Loop BB4_255 Depth 2
	addi.w	$t4, $s4, 0
	slli.d	$t3, $t4, 3
	ldx.d	$t3, $s7, $t3
	addi.w	$t5, $t2, 0
	slli.d	$t6, $t5, 2
	ldx.w	$t7, $t3, $t6
	bltz	$t7, .LBB4_229
# %bb.227:                              #   in Loop: Header=BB4_226 Depth=1
	beqz	$t7, .LBB4_230
# %bb.228:                              #   in Loop: Header=BB4_226 Depth=1
	sub.w	$t3, $s4, $t7
	b	.LBB4_231
	.p2align	4, , 16
.LBB4_229:                              #   in Loop: Header=BB4_226 Depth=1
	addi.w	$t3, $s4, -1
	nor	$t8, $t3, $zero
	add.w	$fp, $s4, $t8
	bnez	$fp, .LBB4_233
	b	.LBB4_238
	.p2align	4, , 16
.LBB4_230:                              #   in Loop: Header=BB4_226 Depth=1
	addi.w	$t3, $s4, -1
.LBB4_231:                              #   in Loop: Header=BB4_226 Depth=1
	move	$t7, $t0
	nor	$t8, $t3, $zero
	add.w	$fp, $s4, $t8
	bnez	$fp, .LBB4_233
	b	.LBB4_238
	.p2align	4, , 16
.LBB4_232:                              # %._crit_edge29.i
                                        #   in Loop: Header=BB4_233 Depth=2
	addi.d	$fp, $fp, -1
	ld.d	$ra, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	beqz	$fp, .LBB4_237
.LBB4_233:                              # %.preheader3.i
                                        #   Parent Loop BB4_226 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_234 Depth 3
                                        #       Child Loop BB4_236 Depth 3
	move	$a5, $s8
	move	$s0, $s2
	move	$s1, $s3
	move	$s2, $a6
	blez	$ra, .LBB4_235
	.p2align	4, , 16
.LBB4_234:                              # %.lr.ph26.i
                                        #   Parent Loop BB4_226 Depth=1
                                        #     Parent Loop BB4_233 Depth=2
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
	bnez	$s2, .LBB4_234
.LBB4_235:                              # %.preheader2.i
                                        #   in Loop: Header=BB4_233 Depth=2
	move	$s0, $s6
	move	$s1, $a7
	move	$s8, $a5
	blez	$a5, .LBB4_232
	.p2align	4, , 16
.LBB4_236:                              # %.lr.ph28.i
                                        #   Parent Loop BB4_226 Depth=1
                                        #     Parent Loop BB4_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s0, 0
	addi.d	$s5, $s2, -1
	st.d	$s5, $s0, 0
	st.b	$t1, $s2, -1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB4_236
	b	.LBB4_232
	.p2align	4, , 16
.LBB4_237:                              # %._crit_edge32.loopexit.i
                                        #   in Loop: Header=BB4_226 Depth=1
	add.d	$a4, $s4, $a4
	add.d	$a4, $t8, $a4
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
.LBB4_238:                              # %._crit_edge32.i
                                        #   in Loop: Header=BB4_226 Depth=1
	add.w	$t2, $t7, $t2
	beq	$t7, $t0, .LBB4_245
# %bb.239:                              # %.preheader1.preheader.i
                                        #   in Loop: Header=BB4_226 Depth=1
	nor	$t7, $t7, $zero
	b	.LBB4_241
	.p2align	4, , 16
.LBB4_240:                              # %._crit_edge38.i
                                        #   in Loop: Header=BB4_241 Depth=2
	addi.d	$t7, $t7, -1
	addi.d	$a4, $a4, 1
	beqz	$t7, .LBB4_245
.LBB4_241:                              # %.preheader1.i
                                        #   Parent Loop BB4_226 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_242 Depth 3
                                        #       Child Loop BB4_244 Depth 3
	move	$t8, $s3
	move	$fp, $a6
	blez	$ra, .LBB4_243
	.p2align	4, , 16
.LBB4_242:                              # %.lr.ph35.i
                                        #   Parent Loop BB4_226 Depth=1
                                        #     Parent Loop BB4_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $t8, 0
	addi.d	$s1, $s0, -1
	st.d	$s1, $t8, 0
	st.b	$t1, $s0, -1
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB4_242
.LBB4_243:                              # %.preheader.i
                                        #   in Loop: Header=BB4_241 Depth=2
	move	$t8, $s5
	move	$fp, $s6
	move	$s0, $a7
	blez	$s8, .LBB4_240
	.p2align	4, , 16
.LBB4_244:                              # %.lr.ph37.i
                                        #   Parent Loop BB4_226 Depth=1
                                        #     Parent Loop BB4_241 Depth=2
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
	bnez	$s0, .LBB4_244
	b	.LBB4_240
	.p2align	4, , 16
.LBB4_245:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB4_226 Depth=1
	beq	$t4, $a2, .LBB4_248
# %bb.246:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB4_226 Depth=1
	addi.w	$t7, $a0, 0
	beq	$t5, $t7, .LBB4_248
# %bb.247:                              #   in Loop: Header=BB4_226 Depth=1
	slli.d	$t7, $t4, 2
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$t7, $a5, $t7
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a5
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$t6, $a5, $t6
	slli.d	$t7, $t7, 3
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ldx.d	$t7, $a5, $t7
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	add.w	$t6, $t6, $a5
	slli.d	$t6, $t6, 2
	fldx.s	$fa0, $t7, $t6
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
.LBB4_248:                              #   in Loop: Header=BB4_226 Depth=1
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	blez	$t4, .LBB4_329
# %bb.249:                              #   in Loop: Header=BB4_226 Depth=1
	blez	$t5, .LBB4_329
# %bb.250:                              # %.preheader5.i
                                        #   in Loop: Header=BB4_226 Depth=1
	blez	$ra, .LBB4_253
# %bb.251:                              # %.lr.ph44.i
                                        #   in Loop: Header=BB4_226 Depth=1
	move	$t4, $s2
	move	$t5, $s3
	move	$t6, $a6
	.p2align	4, , 16
.LBB4_252:                              #   Parent Loop BB4_226 Depth=1
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
	bnez	$t6, .LBB4_252
.LBB4_253:                              # %.preheader4.i
                                        #   in Loop: Header=BB4_226 Depth=1
	blez	$s8, .LBB4_225
# %bb.254:                              # %.lr.ph46.i
                                        #   in Loop: Header=BB4_226 Depth=1
	move	$t4, $s5
	move	$t5, $s6
	move	$t6, $a7
	.p2align	4, , 16
.LBB4_255:                              #   Parent Loop BB4_226 Depth=1
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
	bnez	$t6, .LBB4_255
	b	.LBB4_225
.LBB4_256:                              # %.preheader9.i539
	blez	$a3, .LBB4_261
# %bb.257:                              # %.lr.ph14.i619
	slli.d	$a4, $s4, 32
	srai.d	$a4, $a4, 29
	slli.d	$a5, $a0, 2
	bstrpick.d	$a5, $a5, 32, 2
	slli.d	$a5, $a5, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_259
	.p2align	4, , 16
.LBB4_258:                              #   in Loop: Header=BB4_259 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$s1, $s1, 4
	beqz	$a6, .LBB4_261
.LBB4_259:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_258
# %bb.260:                              #   in Loop: Header=BB4_259 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_258
.LBB4_261:                              # %.loopexit.i541
	bltz	$a2, .LBB4_285
# %bb.262:                              # %.lr.ph17.preheader.i543
	addi.d	$a4, $s4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a2, $a5, .LBB4_280
# %bb.263:
	move	$a4, $zero
	b	.LBB4_283
.LBB4_264:                              # %vector.ph849
	slli.d	$a5, $a4, 3
	bstrpick.d	$a2, $s8, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a1, 16
	add.d	$a5, $a5, $a0
	addi.d	$a6, $a5, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_265:                              # %vector.body852
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a6, $a6, 32
	bnez	$a5, .LBB4_265
# %bb.266:                              # %middle.block857
	beq	$a2, $s8, .LBB4_22
	b	.LBB4_20
.LBB4_267:                              # %vector.memcheck1190
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	addi.d	$a7, $t0, 4
	alsl.d	$t1, $a4, $t0, 2
	addi.d	$t0, $a1, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_53
# %bb.268:                              # %vector.memcheck1190
	addi.d	$t0, $a2, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a2, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_53
# %bb.269:                              # %vector.memcheck1190
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB4_53
# %bb.270:                              # %vector.ph1210
	move	$t1, $a6
	bstrins.d	$t1, $zero, 1, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	vldrepl.w	$vr0, $a1, 4
	bstrins.d	$a5, $t2, 1, 0
	fmul.s	$fa1, $fa1, $fa2
	vreplvei.w	$vr1, $vr1, 0
	move	$t2, $t1
	.p2align	4, , 16
.LBB4_271:                              # %vector.body1213
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $t0, 0
	vfadd.s	$vr2, $vr2, $vr1
	vfmul.s	$vr3, $vr0, $vr3
	vfadd.s	$vr2, $vr2, $vr3
	vst	$vr2, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, 16
	bnez	$t2, .LBB4_271
# %bb.272:                              # %middle.block1225
	bne	$a6, $t1, .LBB4_53
	b	.LBB4_55
.LBB4_273:                              # %vector.memcheck1228
	addi.d	$a7, $t5, 4
	alsl.d	$t1, $a4, $t5, 2
	addi.d	$t0, $a1, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_57
# %bb.274:                              # %vector.memcheck1228
	addi.d	$t0, $a2, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a2, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_57
# %bb.275:                              # %vector.memcheck1228
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB4_57
# %bb.276:                              # %vector.ph1248
	move	$t1, $a6
	bstrins.d	$t1, $zero, 1, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	vldrepl.w	$vr0, $a1, 4
	bstrins.d	$a5, $t2, 1, 0
	fmul.s	$fa1, $fa1, $fa2
	vreplvei.w	$vr1, $vr1, 0
	move	$t2, $t1
	.p2align	4, , 16
.LBB4_277:                              # %vector.body1251
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $t0, 0
	vfadd.s	$vr2, $vr2, $vr1
	vfmul.s	$vr3, $vr0, $vr3
	vfadd.s	$vr2, $vr2, $vr3
	vst	$vr2, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, 16
	bnez	$t2, .LBB4_277
# %bb.278:                              # %middle.block1263
	bne	$a6, $t1, .LBB4_57
	b	.LBB4_59
.LBB4_279:
	movgr2fr.w	$fa0, $zero
	b	.LBB4_152
.LBB4_280:                              # %vector.ph1318
	pcalau12i	$a5, %pc_hi20(.LCPI4_5)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_5)
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s7, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_281:                              # %vector.body1321
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
	bnez	$a6, .LBB4_281
# %bb.282:                              # %middle.block1328
	beq	$a2, $a4, .LBB4_285
.LBB4_283:                              # %.lr.ph17.i545.preheader
	alsl.d	$a5, $a4, $s7, 3
	sub.d	$a2, $a2, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB4_284:                              # %.lr.ph17.i545
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 1
	bnez	$a2, .LBB4_284
.LBB4_285:                              # %.preheader8.i549
	bltz	$a3, .LBB4_293
# %bb.286:                              # %.lr.ph20.i550
	ld.d	$a2, $s7, 0
	addi.d	$a4, $a0, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB4_288
# %bb.287:
	move	$a4, $zero
	b	.LBB4_291
.LBB4_288:                              # %vector.ph1333
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(.LCPI4_6)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_6)
	addi.d	$a5, $a2, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_289:                              # %vector.body1336
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a5, -16
	vst	$vr4, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_289
# %bb.290:                              # %middle.block1342
	beq	$a3, $a4, .LBB4_293
.LBB4_291:                              # %scalar.ph1331.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB4_292:                              # %scalar.ph1331
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB4_292
.LBB4_293:                              # %.preheader7.i555
	blez	$s0, .LBB4_296
# %bb.294:                              # %.lr.ph22.i614
	move	$a2, $s3
	move	$a3, $s0
	.p2align	4, , 16
.LBB4_295:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB4_295
.LBB4_296:                              # %.preheader6.i556
	blez	$s8, .LBB4_299
# %bb.297:                              # %.lr.ph24.i609
	move	$a2, $s6
	move	$a3, $s8
	.p2align	4, , 16
.LBB4_298:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB4_298
.LBB4_299:                              # %._crit_edge.i557
	bltz	$a1, .LBB4_329
# %bb.300:                              # %.lr.ph53.i558
	move	$a3, $zero
	bstrpick.d	$a2, $s0, 31, 0
	bstrpick.d	$a4, $s8, 31, 0
	ori	$a5, $zero, 45
	b	.LBB4_302
	.p2align	4, , 16
.LBB4_301:                              # %._crit_edge47.i584
                                        #   in Loop: Header=BB4_302 Depth=1
	addi.w	$a3, $a3, 2
	move	$s4, $a6
	blt	$a1, $a3, .LBB4_329
.LBB4_302:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_309 Depth 2
                                        #       Child Loop BB4_310 Depth 3
                                        #       Child Loop BB4_312 Depth 3
                                        #     Child Loop BB4_317 Depth 2
                                        #       Child Loop BB4_318 Depth 3
                                        #       Child Loop BB4_320 Depth 3
                                        #     Child Loop BB4_325 Depth 2
                                        #     Child Loop BB4_328 Depth 2
	addi.w	$a7, $s4, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $s7, $a6
	addi.w	$t0, $a0, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB4_305
# %bb.303:                              #   in Loop: Header=BB4_302 Depth=1
	beqz	$t1, .LBB4_306
# %bb.304:                              #   in Loop: Header=BB4_302 Depth=1
	sub.w	$a6, $s4, $t1
	b	.LBB4_307
	.p2align	4, , 16
.LBB4_305:                              #   in Loop: Header=BB4_302 Depth=1
	addi.w	$a6, $s4, -1
	nor	$t2, $a6, $zero
	add.w	$t3, $s4, $t2
	bnez	$t3, .LBB4_309
	b	.LBB4_314
	.p2align	4, , 16
.LBB4_306:                              #   in Loop: Header=BB4_302 Depth=1
	addi.w	$a6, $s4, -1
.LBB4_307:                              #   in Loop: Header=BB4_302 Depth=1
	move	$t1, $ra
	nor	$t2, $a6, $zero
	add.w	$t3, $s4, $t2
	bnez	$t3, .LBB4_309
	b	.LBB4_314
	.p2align	4, , 16
.LBB4_308:                              # %._crit_edge29.i570
                                        #   in Loop: Header=BB4_309 Depth=2
	addi.d	$t3, $t3, -1
	beqz	$t3, .LBB4_313
.LBB4_309:                              # %.preheader3.i567
                                        #   Parent Loop BB4_302 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_310 Depth 3
                                        #       Child Loop BB4_312 Depth 3
	move	$t4, $s2
	move	$t5, $s3
	move	$t6, $a2
	blez	$s0, .LBB4_311
	.p2align	4, , 16
.LBB4_310:                              # %.lr.ph26.i605
                                        #   Parent Loop BB4_302 Depth=1
                                        #     Parent Loop BB4_309 Depth=2
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
	bnez	$t6, .LBB4_310
.LBB4_311:                              # %.preheader2.i569
                                        #   in Loop: Header=BB4_309 Depth=2
	move	$t4, $s6
	move	$t5, $a4
	blez	$s8, .LBB4_308
	.p2align	4, , 16
.LBB4_312:                              # %.lr.ph28.i601
                                        #   Parent Loop BB4_302 Depth=1
                                        #     Parent Loop BB4_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t6, $t4, 0
	addi.d	$t7, $t6, -1
	st.d	$t7, $t4, 0
	st.b	$a5, $t6, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB4_312
	b	.LBB4_308
	.p2align	4, , 16
.LBB4_313:                              # %._crit_edge32.loopexit.i572
                                        #   in Loop: Header=BB4_302 Depth=1
	add.d	$a3, $s4, $a3
	add.d	$a3, $t2, $a3
.LBB4_314:                              # %._crit_edge32.i573
                                        #   in Loop: Header=BB4_302 Depth=1
	add.w	$a0, $t1, $a0
	beq	$t1, $ra, .LBB4_321
# %bb.315:                              # %.preheader1.preheader.i574
                                        #   in Loop: Header=BB4_302 Depth=1
	nor	$t1, $t1, $zero
	b	.LBB4_317
	.p2align	4, , 16
.LBB4_316:                              # %._crit_edge38.i578
                                        #   in Loop: Header=BB4_317 Depth=2
	addi.d	$t1, $t1, -1
	addi.d	$a3, $a3, 1
	beqz	$t1, .LBB4_321
.LBB4_317:                              # %.preheader1.i575
                                        #   Parent Loop BB4_302 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_318 Depth 3
                                        #       Child Loop BB4_320 Depth 3
	move	$t2, $s3
	move	$t3, $a2
	blez	$s0, .LBB4_319
	.p2align	4, , 16
.LBB4_318:                              # %.lr.ph35.i597
                                        #   Parent Loop BB4_302 Depth=1
                                        #     Parent Loop BB4_317 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t4, $t2, 0
	addi.d	$t5, $t4, -1
	st.d	$t5, $t2, 0
	st.b	$a5, $t4, -1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 8
	bnez	$t3, .LBB4_318
.LBB4_319:                              # %.preheader.i577
                                        #   in Loop: Header=BB4_317 Depth=2
	move	$t2, $s5
	move	$t3, $s6
	move	$t4, $a4
	blez	$s8, .LBB4_316
	.p2align	4, , 16
.LBB4_320:                              # %.lr.ph37.i593
                                        #   Parent Loop BB4_302 Depth=1
                                        #     Parent Loop BB4_317 Depth=2
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
	bnez	$t4, .LBB4_320
	b	.LBB4_316
	.p2align	4, , 16
.LBB4_321:                              # %._crit_edge41.i580
                                        #   in Loop: Header=BB4_302 Depth=1
	blez	$a7, .LBB4_329
# %bb.322:                              # %._crit_edge41.i580
                                        #   in Loop: Header=BB4_302 Depth=1
	blez	$t0, .LBB4_329
# %bb.323:                              # %.preheader5.i582
                                        #   in Loop: Header=BB4_302 Depth=1
	blez	$s0, .LBB4_326
# %bb.324:                              # %.lr.ph44.i589
                                        #   in Loop: Header=BB4_302 Depth=1
	move	$a7, $s2
	move	$t0, $s3
	move	$t1, $a2
	.p2align	4, , 16
.LBB4_325:                              #   Parent Loop BB4_302 Depth=1
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
	bnez	$t1, .LBB4_325
.LBB4_326:                              # %.preheader4.i583
                                        #   in Loop: Header=BB4_302 Depth=1
	blez	$s8, .LBB4_301
# %bb.327:                              # %.lr.ph46.i585
                                        #   in Loop: Header=BB4_302 Depth=1
	move	$a7, $s5
	move	$t0, $s6
	move	$t1, $a4
	.p2align	4, , 16
.LBB4_328:                              #   Parent Loop BB4_302 Depth=1
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
	bnez	$t1, .LBB4_328
	b	.LBB4_301
.LBB4_329:                              # %Atracking_localhom.exit
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB4_338
# %bb.330:                              # %Atracking_localhom.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB4_338
# %bb.331:
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	blez	$a2, .LBB4_334
.LBB4_332:                              # %.lr.ph721
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(partQ__align.mseq1)
	.p2align	4, , 16
.LBB4_333:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$a2, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$a2, .LBB4_333
.LBB4_334:                              # %.preheader
	blez	$s8, .LBB4_337
# %bb.335:                              # %.lr.ph723
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(partQ__align.mseq2)
	.p2align	4, , 16
.LBB4_336:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB4_336
.LBB4_337:                              # %._crit_edge724
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB4_338:
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
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	bgtz	$a2, .LBB4_332
	b	.LBB4_334
.LBB4_339:
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
.LBB4_340:
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_35
.LBB4_341:
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	b	.LBB4_40
.Lfunc_end4:
	.size	partQ__align, .Lfunc_end4-partQ__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$fp, $sp, 600                   # 8-byte Folded Spill
	st.d	$s0, $sp, 592                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 584                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 576                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 568                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 528                  # 8-byte Folded Spill
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
	fldx.s	$fa0, $a7, $a2
	fldx.s	$fa1, $t0, $a2
	fldx.s	$ft13, $t1, $a2
	ld.d	$a3, $a1, 8
	ld.d	$a7, $a1, 16
	ld.d	$t0, $a1, 24
	ld.d	$t1, $a1, 32
	fldx.s	$fs1, $a3, $a2
	fldx.s	$ft14, $a7, $a2
	fldx.s	$fa2, $t0, $a2
	fldx.s	$fa3, $t1, $a2
	ld.d	$a3, $a1, 40
	ld.d	$a7, $a1, 48
	ld.d	$t0, $a1, 56
	ld.d	$t1, $a1, 64
	fldx.s	$fs0, $a3, $a2
	fldx.s	$fa4, $a7, $a2
	fldx.s	$fa5, $t0, $a2
	fldx.s	$ft12, $t1, $a2
	ld.d	$a3, $a1, 72
	ld.d	$a7, $a1, 80
	ld.d	$t0, $a1, 88
	ld.d	$t1, $a1, 112
	fldx.s	$ft15, $a3, $a2
	fldx.s	$fa6, $a7, $a2
	fldx.s	$fa7, $t0, $a2
	ld.d	$a3, $a1, 120
	ld.d	$a7, $a1, 128
	ld.d	$t0, $a1, 136
	fldx.s	$ft0, $t1, $a2
	fldx.s	$ft1, $a3, $a2
	fldx.s	$ft2, $a7, $a2
	fldx.s	$ft3, $t0, $a2
	ld.d	$a3, $a1, 144
	ld.d	$a7, $a1, 152
	ld.d	$t0, $a1, 160
	ld.d	$t1, $a1, 168
	fldx.s	$ft4, $a3, $a2
	fldx.s	$ft5, $a7, $a2
	fldx.s	$ft6, $t0, $a2
	fldx.s	$ft7, $t1, $a2
	ld.d	$a3, $a1, 176
	ld.d	$a7, $a1, 184
	ld.d	$t0, $a1, 192
	ld.d	$a1, $a1, 200
	fldx.s	$ft8, $a3, $a2
	fldx.s	$ft9, $a7, $a2
	fldx.s	$ft10, $t0, $a2
	fldx.s	$ft11, $a1, $a2
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	vreplvei.w	$vr26, $vr0, 0
	vst	$vr1, $sp, 384                  # 16-byte Folded Spill
	vreplvei.w	$vr27, $vr1, 0
	vst	$vr21, $sp, 64                  # 16-byte Folded Spill
	vreplvei.w	$vr28, $vr21, 0
	vreplvei.w	$vr29, $vr25, 0
	vst	$vr22, $sp, 48                  # 16-byte Folded Spill
	vreplvei.w	$vr30, $vr22, 0
	vst	$vr2, $sp, 144                  # 16-byte Folded Spill
	vreplvei.w	$vr31, $vr2, 0
	vst	$vr3, $sp, 128                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr3, 0
	vst	$vr24, $sp, 16                  # 16-byte Folded Spill
	vreplvei.w	$vr1, $vr24, 0
	vst	$vr4, $sp, 112                  # 16-byte Folded Spill
	vreplvei.w	$vr2, $vr4, 0
	vst	$vr5, $sp, 96                   # 16-byte Folded Spill
	vreplvei.w	$vr3, $vr5, 0
	vst	$vr20, $sp, 80                  # 16-byte Folded Spill
	vreplvei.w	$vr4, $vr20, 0
	vst	$vr23, $sp, 32                  # 16-byte Folded Spill
	vreplvei.w	$vr5, $vr23, 0
	vst	$vr6, $sp, 176                  # 16-byte Folded Spill
	vreplvei.w	$vr6, $vr6, 0
	vst	$vr7, $sp, 160                  # 16-byte Folded Spill
	vreplvei.w	$vr7, $vr7, 0
	vst	$vr8, $sp, 240                  # 16-byte Folded Spill
	vreplvei.w	$vr8, $vr8, 0
	vst	$vr9, $sp, 224                  # 16-byte Folded Spill
	vreplvei.w	$vr9, $vr9, 0
	vst	$vr10, $sp, 208                 # 16-byte Folded Spill
	vreplvei.w	$vr10, $vr10, 0
	vst	$vr11, $sp, 192                 # 16-byte Folded Spill
	vreplvei.w	$vr11, $vr11, 0
	vst	$vr12, $sp, 304                 # 16-byte Folded Spill
	vreplvei.w	$vr12, $vr12, 0
	vst	$vr13, $sp, 288                 # 16-byte Folded Spill
	vreplvei.w	$vr13, $vr13, 0
	vst	$vr14, $sp, 272                 # 16-byte Folded Spill
	vreplvei.w	$vr14, $vr14, 0
	vst	$vr15, $sp, 256                 # 16-byte Folded Spill
	vreplvei.w	$vr15, $vr15, 0
	vst	$vr16, $sp, 368                 # 16-byte Folded Spill
	vreplvei.w	$vr16, $vr16, 0
	vst	$vr17, $sp, 352                 # 16-byte Folded Spill
	vreplvei.w	$vr17, $vr17, 0
	vst	$vr18, $sp, 336                 # 16-byte Folded Spill
	vreplvei.w	$vr18, $vr18, 0
	vst	$vr19, $sp, 320                 # 16-byte Folded Spill
	vreplvei.w	$vr19, $vr19, 0
	pcalau12i	$a1, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis_consweight_multi)
	move	$a2, $zero
	ori	$a3, $zero, 2080
	ori	$a7, $zero, 2184
	ori	$t0, $zero, 2288
	ori	$t1, $zero, 2392
	ori	$t2, $zero, 2496
	ori	$t3, $zero, 2600
	addi.d	$t4, $sp, 424
	ori	$t5, $zero, 96
	.p2align	4, , 16
.LBB5_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t6, $a1, $a2
	vldx	$vr20, $a1, $a2
	vld	$vr21, $t6, 104
	vrepli.b	$vr22, 0
	vfmadd.s	$vr20, $vr20, $vr28, $vr22
	vfmadd.s	$vr20, $vr21, $vr29, $vr20
	vld	$vr21, $t6, 208
	vld	$vr22, $t6, 312
	vld	$vr23, $t6, 416
	vld	$vr24, $t6, 520
	vfmadd.s	$vr20, $vr21, $vr30, $vr20
	vfmadd.s	$vr20, $vr22, $vr31, $vr20
	vfmadd.s	$vr20, $vr23, $vr0, $vr20
	vfmadd.s	$vr20, $vr24, $vr1, $vr20
	vld	$vr21, $t6, 624
	vld	$vr22, $t6, 728
	vld	$vr23, $t6, 832
	vld	$vr24, $t6, 936
	vfmadd.s	$vr20, $vr21, $vr2, $vr20
	vfmadd.s	$vr20, $vr22, $vr3, $vr20
	vfmadd.s	$vr20, $vr23, $vr4, $vr20
	vfmadd.s	$vr20, $vr24, $vr5, $vr20
	vld	$vr21, $t6, 1040
	vld	$vr22, $t6, 1144
	vld	$vr23, $t6, 1248
	vld	$vr24, $t6, 1352
	vfmadd.s	$vr20, $vr21, $vr6, $vr20
	vfmadd.s	$vr20, $vr22, $vr7, $vr20
	vfmadd.s	$vr20, $vr23, $vr26, $vr20
	vfmadd.s	$vr20, $vr24, $vr27, $vr20
	vld	$vr21, $t6, 1456
	vld	$vr22, $t6, 1560
	vld	$vr23, $t6, 1664
	vld	$vr24, $t6, 1768
	vfmadd.s	$vr20, $vr21, $vr8, $vr20
	vfmadd.s	$vr20, $vr22, $vr9, $vr20
	vfmadd.s	$vr20, $vr23, $vr10, $vr20
	vfmadd.s	$vr20, $vr24, $vr11, $vr20
	vld	$vr21, $t6, 1872
	vld	$vr22, $t6, 1976
	vldx	$vr23, $t6, $a3
	vldx	$vr24, $t6, $a7
	vfmadd.s	$vr20, $vr21, $vr12, $vr20
	vfmadd.s	$vr20, $vr22, $vr13, $vr20
	vfmadd.s	$vr20, $vr23, $vr14, $vr20
	vfmadd.s	$vr20, $vr24, $vr15, $vr20
	vldx	$vr21, $t6, $t0
	vldx	$vr22, $t6, $t1
	vldx	$vr23, $t6, $t2
	vldx	$vr24, $t6, $t3
	vfmadd.s	$vr20, $vr21, $vr16, $vr20
	vfmadd.s	$vr20, $vr22, $vr17, $vr20
	vfmadd.s	$vr20, $vr23, $vr18, $vr20
	vfmadd.s	$vr20, $vr24, $vr19, $vr20
	vstx	$vr20, $a2, $t4
	addi.d	$a2, $a2, 16
	bne	$a2, $t5, .LBB5_9
# %bb.10:                               # %scalar.ph
	fld.s	$fa0, $a1, 96
	fld.s	$fa1, $a1, 200
	fld.s	$fa2, $a1, 304
	movgr2fr.w	$fs2, $zero
	vld	$vr5, $sp, 64                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa0, $fa5, $fs2
	fmadd.s	$fa0, $fa1, $fs1, $fa0
	vld	$vr29, $sp, 48                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fs5, $fa0
	fld.s	$fa1, $a1, 408
	fld.s	$fa2, $a1, 512
	fld.s	$fa3, $a1, 616
	fld.s	$fa4, $a1, 720
	vld	$vr22, $sp, 144                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft14, $fa0
	vld	$vr23, $sp, 128                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft15, $fa0
	vld	$vr31, $sp, 16                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fs7, $fa0
	vld	$vr24, $sp, 112                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $fs0, $fa0
	fld.s	$fa1, $a1, 824
	fld.s	$fa2, $a1, 928
	fld.s	$fa3, $a1, 1032
	fld.s	$fa4, $a1, 1136
	vld	$vr27, $sp, 96                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	vld	$vr28, $sp, 80                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fs4, $fa0
	vld	$vr30, $sp, 32                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fs6, $fa0
	vld	$vr20, $sp, 176                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft12, $fa0
	fld.s	$fa1, $a1, 1240
	fld.s	$fa2, $a1, 1344
	fld.s	$fa3, $a1, 1448
	fld.s	$fa4, $a1, 1552
	vld	$vr21, $sp, 160                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	vld	$vr6, $sp, 400                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fa6, $fa0
	vld	$vr7, $sp, 384                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fa7, $fa0
	vld	$vr16, $sp, 240                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft8, $fa0
	fld.s	$fa1, $a1, 1656
	fld.s	$fa2, $a1, 1760
	fld.s	$fa3, $a1, 1864
	fld.s	$fa4, $a1, 1968
	vld	$vr17, $sp, 224                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft9, $fa0
	vld	$vr18, $sp, 208                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft10, $fa0
	vld	$vr19, $sp, 192                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft11, $fa0
	vld	$vr12, $sp, 304                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft4, $fa0
	ori	$a2, $zero, 2072
	fldx.s	$fa1, $a1, $a2
	ori	$a2, $zero, 2176
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2280
	fldx.s	$fa3, $a1, $a2
	ori	$a2, $zero, 2384
	fldx.s	$fa4, $a1, $a2
	vld	$vr13, $sp, 288                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	vld	$vr14, $sp, 272                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft6, $fa0
	vld	$vr15, $sp, 256                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft7, $fa0
	vld	$vr8, $sp, 368                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	ori	$a2, $zero, 2488
	fld.s	$fa1, $a1, 100
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2592
	fld.s	$fa3, $a1, 204
	fmadd.s	$fa1, $fa1, $fa5, $fs2
	fldx.s	$fa4, $a1, $a2
	ori	$a2, $zero, 2696
	fmadd.s	$fa1, $fa3, $fs1, $fa1
	fldx.s	$fa3, $a1, $a2
	fld.s	$fa5, $a1, 308
	vld	$vr9, $sp, 352                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft1, $fa0
	vld	$vr10, $sp, 336                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft2, $fa0
	vld	$vr11, $sp, 320                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmadd.s	$fa1, $fa5, $fs5, $fa1
	fld.s	$fa2, $a1, 412
	fld.s	$fa3, $a1, 516
	fld.s	$fa4, $a1, 620
	fst.s	$fa0, $sp, 520
	fmadd.s	$fa0, $fa2, $ft14, $fa1
	fmadd.s	$fa0, $fa3, $ft15, $fa0
	fmadd.s	$fa0, $fa4, $fs7, $fa0
	fld.s	$fa1, $a1, 724
	fld.s	$fa2, $a1, 828
	fld.s	$fa3, $a1, 932
	fld.s	$fa4, $a1, 1036
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fmadd.s	$fa0, $fa2, $fs3, $fa0
	fmadd.s	$fa0, $fa3, $fs4, $fa0
	fmadd.s	$fa0, $fa4, $fs6, $fa0
	fld.s	$fa1, $a1, 1140
	fld.s	$fa2, $a1, 1244
	fld.s	$fa3, $a1, 1348
	fld.s	$fa4, $a1, 1452
	fmadd.s	$fa0, $fa1, $ft12, $fa0
	fmadd.s	$fa0, $fa2, $ft13, $fa0
	fmadd.s	$fa0, $fa3, $fa6, $fa0
	fmadd.s	$fa0, $fa4, $fa7, $fa0
	fld.s	$fa1, $a1, 1556
	fld.s	$fa2, $a1, 1660
	fld.s	$fa3, $a1, 1764
	fld.s	$fa4, $a1, 1868
	fmadd.s	$fa0, $fa1, $ft8, $fa0
	fmadd.s	$fa0, $fa2, $ft9, $fa0
	fmadd.s	$fa0, $fa3, $ft10, $fa0
	fmadd.s	$fa0, $fa4, $ft11, $fa0
	fld.s	$fa1, $a1, 1972
	ori	$a2, $zero, 2076
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2180
	fldx.s	$fa3, $a1, $a2
	ori	$a2, $zero, 2284
	fldx.s	$fa4, $a1, $a2
	fmadd.s	$fa0, $fa1, $ft4, $fa0
	fmadd.s	$fa0, $fa2, $ft5, $fa0
	fmadd.s	$fa0, $fa3, $ft6, $fa0
	fmadd.s	$fa0, $fa4, $ft7, $fa0
	ori	$a2, $zero, 2388
	fldx.s	$fa1, $a1, $a2
	ori	$a2, $zero, 2492
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2596
	fldx.s	$fa3, $a1, $a2
	ori	$a2, $zero, 2700
	fldx.s	$fa4, $a1, $a2
	fmadd.s	$fa0, $fa1, $ft0, $fa0
	fmadd.s	$fa0, $fa2, $ft1, $fa0
	fmadd.s	$fa0, $fa3, $ft2, $fa0
	fmadd.s	$fa0, $fa4, $ft3, $fa0
	fst.s	$fa0, $sp, 524
	beqz	$a4, .LBB5_16
# %bb.11:                               # %.lr.ph73.preheader
	addi.d	$a1, $sp, 424
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_12:                               # %._crit_edge
                                        #   in Loop: Header=BB5_13 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB5_16
.LBB5_13:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
	ld.d	$a3, $a6, 0
	ld.wu	$a2, $a3, 0
	addi.w	$a7, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB5_12
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB5_13 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$a3, $a3, 4
	fmov.s	$fa0, $fs2
	.p2align	4, , 16
.LBB5_15:                               #   Parent Loop BB5_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a2, 2
	fldx.s	$fa1, $a2, $a1
	fld.s	$fa2, $a7, 0
	ld.wu	$a2, $a3, 0
	addi.d	$a7, $a7, 4
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fst.s	$fa0, $a0, 0
	addi.w	$t0, $a2, 0
	addi.d	$a3, $a3, 4
	bgez	$t0, .LBB5_15
	b	.LBB5_12
.LBB5_16:                               # %._crit_edge74
	fld.d	$fs7, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 560                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 568                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 576                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 584                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 592                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
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
