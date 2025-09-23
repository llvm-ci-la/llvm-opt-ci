	.file	"Qalignmm.c"
	.text
	.globl	imp_match_out_scQ               # -- Begin function imp_match_out_scQ
	.p2align	5
	.type	imp_match_out_scQ,@function
imp_match_out_scQ:                      # @imp_match_out_scQ
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_scQ, .Lfunc_end0-imp_match_out_scQ
                                        # -- End function
	.globl	imp_rnaQ                        # -- Begin function imp_rnaQ
	.p2align	5
	.type	imp_rnaQ,@function
imp_rnaQ:                               # @imp_rnaQ
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
.Lfunc_end1:
	.size	imp_rnaQ, .Lfunc_end1-imp_rnaQ
                                        # -- End function
	.globl	imp_match_init_strictQ          # -- Begin function imp_match_init_strictQ
	.p2align	5
	.type	imp_match_init_strictQ,@function
imp_match_init_strictQ:                 # @imp_match_init_strictQ
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
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s4, $a4
	move	$s5, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$s7, %pc_hi20(impalloclen)
	ld.w	$a0, $s7, %pc_lo12(impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictQ.nocount1)
	pcalau12i	$s6, %pc_hi20(imp_match_init_strictQ.nocount2)
	blt	$a0, $a1, .LBB2_2
# %bb.1:
	addi.w	$a1, $s4, 2
	bge	$a0, $a1, .LBB2_9
.LBB2_2:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB2_4
# %bb.3:
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB2_4:
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	beqz	$a0, .LBB2_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_6:
	ld.d	$a0, $s6, %pc_lo12(imp_match_init_strictQ.nocount2)
	beqz	$a0, .LBB2_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_8:
	slt	$a0, $s4, $s5
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $s7, %pc_lo12(impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(imp_match_init_strictQ.nocount2)
.LBB2_9:
	blez	$s5, .LBB2_18
# %bb.10:                               # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	move	$a1, $zero
	bstrpick.d	$a2, $s3, 31, 0
	ori	$a3, $zero, 45
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_11:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB2_13 Depth=1
	move	$a5, $zero
.LBB2_12:                               #   in Loop: Header=BB2_13 Depth=1
	stx.b	$a5, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB2_18
.LBB2_13:                               # %.preheader211
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	move	$a4, $zero
	blez	$s3, .LBB2_17
# %bb.14:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_13 Depth=1
	move	$a5, $a2
	move	$a6, $s1
	.p2align	4, , 16
.LBB2_15:                               # %.lr.ph
                                        #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	ldx.bu	$a7, $a7, $a1
	beq	$a7, $a3, .LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB2_15
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_17:                               # %._crit_edge
                                        #   in Loop: Header=BB2_13 Depth=1
	ori	$a5, $zero, 1
	bne	$a4, $s3, .LBB2_12
	b	.LBB2_11
.LBB2_18:                               # %.preheader210
	blez	$s4, .LBB2_27
# %bb.19:                               # %.preheader209.lr.ph
	ld.d	$a0, $s6, %pc_lo12(imp_match_init_strictQ.nocount2)
	move	$a1, $zero
	bstrpick.d	$a2, $s2, 31, 0
	ori	$a3, $zero, 45
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_20:                               # %._crit_edge218.thread
                                        #   in Loop: Header=BB2_22 Depth=1
	move	$a5, $zero
.LBB2_21:                               #   in Loop: Header=BB2_22 Depth=1
	stx.b	$a5, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB2_27
.LBB2_22:                               # %.preheader209
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_24 Depth 2
	move	$a4, $zero
	blez	$s2, .LBB2_26
# %bb.23:                               # %.lr.ph217.preheader
                                        #   in Loop: Header=BB2_22 Depth=1
	move	$a5, $a2
	move	$a6, $s0
	.p2align	4, , 16
.LBB2_24:                               # %.lr.ph217
                                        #   Parent Loop BB2_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	ldx.bu	$a7, $a7, $a1
	beq	$a7, $a3, .LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_24 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB2_24
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_26:                               # %._crit_edge218
                                        #   in Loop: Header=BB2_22 Depth=1
	ori	$a5, $zero, 1
	bne	$a4, $s2, .LBB2_21
	b	.LBB2_20
.LBB2_27:                               # %.preheader208
	blez	$s5, .LBB2_32
# %bb.28:                               # %.preheader207.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$s6, $a0, 2
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_29:                               # %._crit_edge225
                                        #   in Loop: Header=BB2_30 Depth=1
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 8
	beqz	$s5, .LBB2_32
.LBB2_30:                               # %.preheader207
                                        # =>This Inner Loop Header: Depth=1
	blez	$s4, .LBB2_29
# %bb.31:                               # %.lr.ph224
                                        #   in Loop: Header=BB2_30 Depth=1
	ld.d	$a0, $s7, 0
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB2_29
.LBB2_32:                               # %._crit_edge227
	blez	$s3, .LBB2_70
# %bb.33:                               # %.preheader206.lr.ph
	ld.d	$a0, $sp, 120
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %got_pc_hi20(fastathreshold)
	ld.d	$a2, $a2, %got_pc_lo12(fastathreshold)
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	move	$a3, $zero
	ori	$a4, $zero, 45
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %._crit_edge236
                                        #   in Loop: Header=BB2_35 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB2_70
.LBB2_35:                               # %.preheader206
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_38 Depth 2
                                        #       Child Loop BB2_41 Depth 3
                                        #         Child Loop BB2_42 Depth 4
                                        #         Child Loop BB2_46 Depth 4
                                        #         Child Loop BB2_50 Depth 4
                                        #         Child Loop BB2_54 Depth 4
                                        #         Child Loop BB2_58 Depth 4
	blez	$s2, .LBB2_34
# %bb.36:                               # %.lr.ph235
                                        #   in Loop: Header=BB2_35 Depth=1
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB2_38
	.p2align	4, , 16
.LBB2_37:                               # %._crit_edge233
                                        #   in Loop: Header=BB2_38 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB2_34
.LBB2_38:                               #   Parent Loop BB2_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_41 Depth 3
                                        #         Child Loop BB2_42 Depth 4
                                        #         Child Loop BB2_46 Depth 4
                                        #         Child Loop BB2_50 Depth 4
                                        #         Child Loop BB2_54 Depth 4
                                        #         Child Loop BB2_58 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB2_37
# %bb.39:                               # %.lr.ph232
                                        #   in Loop: Header=BB2_38 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %.critedge
                                        #   in Loop: Header=BB2_41 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB2_37
.LBB2_41:                               #   Parent Loop BB2_35 Depth=1
                                        #     Parent Loop BB2_38 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_42 Depth 4
                                        #         Child Loop BB2_46 Depth 4
                                        #         Child Loop BB2_50 Depth 4
                                        #         Child Loop BB2_54 Depth 4
                                        #         Child Loop BB2_58 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB2_42:                               #   Parent Loop BB2_35 Depth=1
                                        #     Parent Loop BB2_38 Depth=2
                                        #       Parent Loop BB2_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB2_45
# %bb.43:                               #   in Loop: Header=BB2_42 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB2_42
# %bb.44:                               #   in Loop: Header=BB2_41 Depth=3
	move	$t8, $s4
.LBB2_45:                               #   in Loop: Header=BB2_41 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB2_49
	.p2align	4, , 16
.LBB2_46:                               # %.preheader205
                                        #   Parent Loop BB2_35 Depth=1
                                        #     Parent Loop BB2_38 Depth=2
                                        #       Parent Loop BB2_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB2_48
# %bb.47:                               #   in Loop: Header=BB2_46 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB2_46
.LBB2_48:                               #   in Loop: Header=BB2_41 Depth=3
	add.w	$t6, $t7, $t3
.LBB2_49:                               #   in Loop: Header=BB2_41 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB2_50:                               #   Parent Loop BB2_35 Depth=1
                                        #     Parent Loop BB2_38 Depth=2
                                        #       Parent Loop BB2_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB2_53
# %bb.51:                               #   in Loop: Header=BB2_50 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB2_50
# %bb.52:                               #   in Loop: Header=BB2_41 Depth=3
	move	$s5, $s6
.LBB2_53:                               #   in Loop: Header=BB2_41 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB2_57
	.p2align	4, , 16
.LBB2_54:                               # %.preheader
                                        #   Parent Loop BB2_35 Depth=1
                                        #     Parent Loop BB2_38 Depth=2
                                        #       Parent Loop BB2_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB2_56
# %bb.55:                               #   in Loop: Header=BB2_54 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB2_54
.LBB2_56:                               #   in Loop: Header=BB2_41 Depth=3
	add.w	$t8, $s4, $t4
.LBB2_57:                               #   in Loop: Header=BB2_41 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB2_58:                               #   Parent Loop BB2_35 Depth=1
                                        #     Parent Loop BB2_38 Depth=2
                                        #       Parent Loop BB2_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB2_40
# %bb.59:                               #   in Loop: Header=BB2_58 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB2_40
# %bb.60:                               #   in Loop: Header=BB2_58 Depth=4
	beq	$s7, $a4, .LBB2_63
# %bb.61:                               #   in Loop: Header=BB2_58 Depth=4
	beq	$s6, $a4, .LBB2_63
# %bb.62:                               #   in Loop: Header=BB2_58 Depth=4
	slli.d	$s6, $t5, 3
	ldx.d	$s6, $a2, $s6
	fld.s	$fa3, $t0, 64
	slli.d	$s7, $t7, 2
	fldx.s	$fa4, $s6, $s7
	fmadd.s	$fa3, $fa3, $fa2, $fa4
	fstx.s	$fa3, $s6, $s7
	addi.w	$t5, $t5, 1
	addi.w	$t7, $t7, 1
	addi.d	$s4, $s4, 1
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_63:                               #   in Loop: Header=BB2_58 Depth=4
	bne	$s7, $a4, .LBB2_65
# %bb.64:                               #   in Loop: Header=BB2_58 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB2_65:                               #   in Loop: Header=BB2_58 Depth=4
	bne	$s6, $a4, .LBB2_68
# %bb.66:                               #   in Loop: Header=BB2_58 Depth=4
	addi.w	$t7, $t7, 1
.LBB2_67:                               #   in Loop: Header=BB2_58 Depth=4
	addi.d	$s5, $s5, 1
.LBB2_68:                               #   in Loop: Header=BB2_58 Depth=4
	blt	$t6, $t5, .LBB2_40
# %bb.69:                               #   in Loop: Header=BB2_58 Depth=4
	bge	$t8, $t7, .LBB2_58
	b	.LBB2_40
.LBB2_70:                               # %._crit_edge238
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
.Lfunc_end2:
	.size	imp_match_init_strictQ, .Lfunc_end2-imp_match_init_strictQ
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Q__align
.LCPI3_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_3:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI3_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI3_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI3_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI3_2:
	.word	0x461c4000                      # float 1.0E+4
	.text
	.globl	Q__align
	.p2align	5
	.type	Q__align,@function
Q__align:                               # @Q__align
# %bb.0:
	addi.d	$sp, $sp, -640
	st.d	$ra, $sp, 632                   # 8-byte Folded Spill
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s1, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 592                   # 8-byte Folded Spill
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	st.d	$s6, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 560                   # 8-byte Folded Spill
	st.d	$s8, $sp, 552                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 536                  # 8-byte Folded Spill
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	move	$s7, $a5
	move	$s6, $a4
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s3, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$s1, %pc_hi20(Q__align.orlgth1)
	ld.w	$s8, $s1, %pc_lo12(Q__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mseq1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mseq2)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bnez	$s8, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Q__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s1, %pc_lo12(Q__align.orlgth1)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.mseq2)
.LBB3_2:
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$s2, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(Q__align.orlgth2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$fp, $a0, %pc_lo12(Q__align.orlgth2)
	addi.w	$a5, $a2, 0
	pcalau12i	$a0, %pc_hi20(Q__align.w1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.w2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.initverticalw)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.lastverticalw)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.m)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mp)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(Q__align.mseq)
	pcalau12i	$a0, %pc_hi20(Q__align.digf1)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.digf2)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.diaf1)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.diaf2)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz1)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz2)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapf1)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapf2)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.ogcp1g)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.ogcp2g)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fgcp1g)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fgcp2g)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_h_dg_n1_p)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_h_dg_n2_p)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_h_dg_n1_p)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_h_dg_n2_p)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz_n1)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz_n2)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.cpmx1)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.cpmx2)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.floatwork)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.intwork)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 216                   # 8-byte Folded Spill
	st.d	$s6, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	blt	$s8, $s2, .LBB3_4
# %bb.3:
	bge	$fp, $a5, .LBB3_8
.LBB3_4:
	pcalau12i	$s0, %pc_hi20(Q__align.match)
	blez	$s8, .LBB3_7
# %bb.5:
	blez	$fp, .LBB3_7
# %bb.6:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(Q__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(Q__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.w	$s8, $s1, %pc_lo12(Q__align.orlgth1)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$fp, $a0, %pc_lo12(Q__align.orlgth2)
.LBB3_7:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a0
	addi.w	$s1, $s8, 100
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	addi.w	$s2, $fp, 100
	addi.w	$s4, $fp, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(Q__align.match)
	addi.w	$s6, $s8, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s2, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(Q__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.diaf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fgcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz_n1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.cpmx2)
	slt	$a0, $s2, $s1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.intwork)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$s8, $a0, %pc_lo12(Q__align.orlgth1)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$fp, $a0, %pc_lo12(Q__align.orlgth2)
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
.LBB3_8:
	blez	$s6, .LBB3_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $s5, %pc_lo12(Q__align.mseq)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mseq1)
	move	$a2, $s6
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s2
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_10
.LBB3_11:                               # %.preheader572
	blez	$s7, .LBB3_14
# %bb.12:                               # %.lr.ph580
	ld.d	$a1, $s5, %pc_lo12(Q__align.mseq)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mseq2)
	alsl.d	$a1, $s6, $a1, 3
	move	$a2, $s7
	move	$a3, $s3
	.p2align	4, , 16
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a5
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_13
.LBB3_14:                               # %._crit_edge
	ld.d	$s4, $sp, 648
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s1, 0
	blt	$a0, $s8, .LBB3_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $fp, .LBB3_17
# %bb.16:                               # %._crit_edge738
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	b	.LBB3_21
.LBB3_17:
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_20
# %bb.18:
	beqz	$a1, .LBB3_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s8, $a0, %pc_lo12(Q__align.orlgth1)
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$fp, $a1, %pc_lo12(Q__align.orlgth2)
	ld.w	$a1, $s1, 0
.LBB3_20:
	slt	$a2, $a0, $s8
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s8, $a2
	or	$s2, $a2, $a0
	slt	$a0, $a1, $fp
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	addi.w	$a0, $s2, 10
	addi.w	$a1, $fp, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s2, $s0, 0
	st.w	$fp, $s1, 0
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
.LBB3_21:
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx1)
	ffint.s.w	$fa0, $fs0
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(Q__align.ijp)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(Q__align.ijp)
	move	$a0, $s5
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx2)
	move	$a0, $s3
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	beqz	$s4, .LBB3_23
# %bb.22:
	ld.d	$s6, $sp, 672
	ld.d	$s8, $sp, 664
	ld.d	$s3, $sp, 656
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	move	$a1, $s7
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	move	$a1, $s7
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	move	$a1, $s7
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	move	$a1, $s7
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s3
	move	$a6, $s6
	move	$s6, $s0
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	move	$s3, $fp
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s6
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	move	$a1, $s7
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s6
	move	$a4, $s2
	move	$a5, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	move	$a1, $s7
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s1
	move	$a5, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB3_24
.LBB3_23:
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	move	$a1, $s7
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	move	$a1, $s7
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	move	$a1, $s7
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	move	$a1, $s7
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	move	$a1, $s7
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	move	$a1, $s7
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB3_24:
	addi.w	$a0, $zero, -1
	vld	$vr18, $sp, 256                 # 16-byte Folded Reload
	fcvt.d.s	$fa0, $ft10
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	move	$ra, $s1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB3_29
# %bb.25:                               # %.lr.ph583
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.digf2)
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.gapz2)
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n2)
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	addi.d	$t3, $t1, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 40
	bgeu	$t1, $t2, .LBB3_44
# %bb.26:
	move	$t2, $zero
.LBB3_27:                               # %scalar.ph.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB3_28:                               # %scalar.ph
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
	bnez	$t1, .LBB3_28
.LBB3_29:                               # %._crit_edge584
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blt	$s2, $a0, .LBB3_34
# %bb.30:                               # %.lr.ph587
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.digf1)
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.og_h_dg_n1_p)
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.gapz1)
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n1)
	addi.d	$t3, $s5, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 40
	bgeu	$t1, $t2, .LBB3_77
# %bb.31:
	move	$t2, $zero
.LBB3_32:                               # %scalar.ph1055.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB3_33:                               # %scalar.ph1055
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
	bnez	$t1, .LBB3_33
.LBB3_34:                               # %._crit_edge588
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $a0, %pc_lo12(Q__align.w1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t6, $a0, %pc_lo12(Q__align.w2)
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$t7, $a0, %got_pc_lo12(RNAscoremtx)
	ld.bu	$a0, $t7, 0
	ori	$a1, $zero, 114
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $t4
	move	$s1, $t6
	st.d	$t7, $sp, 232                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB3_37
# %bb.35:
	beqz	$s2, .LBB3_110
# %bb.36:                               # %.lr.ph.preheader.i
	ld.d	$s4, $s6, %pc_lo12(Q__align.initverticalw)
	slli.d	$a0, $s5, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_38
.LBB3_37:
	ld.d	$s4, $s6, %pc_lo12(Q__align.initverticalw)
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx2)
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align.cpmx1)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align.floatwork)
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s4
	move	$a3, $zero
	move	$a4, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %clearvec.exit
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 240                   # 8-byte Folded Reload
	vld	$vr18, $sp, 256                 # 16-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$t4, $s0
	move	$t6, $s1
	beqz	$a0, .LBB3_43
# %bb.39:
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	blez	$s2, .LBB3_42
# %bb.40:                               # %.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s5, 30, 0
	.p2align	4, , 16
.LBB3_41:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s4, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s4, 0
	addi.d	$s4, $s4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_41
.LBB3_42:
	move	$a0, $zero
	b	.LBB3_111
.LBB3_43:
	ori	$a0, $zero, 1
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	b	.LBB3_111
.LBB3_44:                               # %vector.memcheck
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB3_305
# %bb.45:                               # %vector.memcheck
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_305
# %bb.46:                               # %vector.memcheck
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB3_305
# %bb.47:                               # %vector.memcheck
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB3_305
# %bb.48:                               # %vector.memcheck
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_305
# %bb.49:                               # %vector.memcheck
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB3_305
# %bb.50:                               # %vector.memcheck
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB3_305
# %bb.51:                               # %vector.memcheck
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB3_305
# %bb.52:                               # %vector.memcheck
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_305
# %bb.53:                               # %vector.memcheck
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_305
# %bb.54:                               # %vector.memcheck
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_305
# %bb.55:                               # %vector.memcheck
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_305
# %bb.56:                               # %vector.memcheck
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_305
# %bb.57:                               # %vector.memcheck
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_305
# %bb.58:                               # %vector.memcheck
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB3_305
# %bb.59:                               # %vector.memcheck
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_305
# %bb.60:                               # %vector.memcheck
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_305
# %bb.61:                               # %vector.memcheck
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_305
# %bb.62:                               # %vector.memcheck
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_305
# %bb.63:                               # %vector.memcheck
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_305
# %bb.64:                               # %vector.memcheck
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_27
# %bb.65:                               # %vector.memcheck
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_27
# %bb.66:                               # %vector.memcheck
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_27
# %bb.67:                               # %vector.memcheck
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_27
# %bb.68:                               # %vector.memcheck
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_27
# %bb.69:                               # %vector.memcheck
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB3_27
# %bb.70:                               # %vector.memcheck
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_27
# %bb.71:                               # %vector.memcheck
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_27
# %bb.72:                               # %vector.memcheck
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_27
# %bb.73:                               # %vector.memcheck
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB3_27
# %bb.74:                               # %vector.ph
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
	move	$fp, $a6
	move	$s0, $a7
	move	$s1, $t0
	move	$s2, $t2
	.p2align	4, , 16
.LBB3_75:                               # %vector.body
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
	vld	$vr7, $s0, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 48
	vst	$vr6, $fp, 0
	vfsub.s	$vr5, $vr4, $vr7
	vst	$vr5, $s1, 0
	addi.d	$s2, $s2, -4
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 16
	bnez	$s2, .LBB3_75
# %bb.76:                               # %middle.block
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB3_27
	b	.LBB3_29
.LBB3_77:                               # %vector.memcheck926
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB3_306
# %bb.78:                               # %vector.memcheck926
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_306
# %bb.79:                               # %vector.memcheck926
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB3_306
# %bb.80:                               # %vector.memcheck926
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB3_306
# %bb.81:                               # %vector.memcheck926
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_306
# %bb.82:                               # %vector.memcheck926
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB3_306
# %bb.83:                               # %vector.memcheck926
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB3_306
# %bb.84:                               # %vector.memcheck926
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB3_306
# %bb.85:                               # %vector.memcheck926
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_306
# %bb.86:                               # %vector.memcheck926
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_306
# %bb.87:                               # %vector.memcheck926
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_306
# %bb.88:                               # %vector.memcheck926
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_306
# %bb.89:                               # %vector.memcheck926
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_306
# %bb.90:                               # %vector.memcheck926
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_306
# %bb.91:                               # %vector.memcheck926
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB3_306
# %bb.92:                               # %vector.memcheck926
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_306
# %bb.93:                               # %vector.memcheck926
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_306
# %bb.94:                               # %vector.memcheck926
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_306
# %bb.95:                               # %vector.memcheck926
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_306
# %bb.96:                               # %vector.memcheck926
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_306
# %bb.97:                               # %vector.memcheck926
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_32
# %bb.98:                               # %vector.memcheck926
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.99:                               # %vector.memcheck926
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.100:                              # %vector.memcheck926
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.101:                              # %vector.memcheck926
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.102:                              # %vector.memcheck926
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB3_32
# %bb.103:                              # %vector.memcheck926
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_32
# %bb.104:                              # %vector.memcheck926
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_32
# %bb.105:                              # %vector.memcheck926
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_32
# %bb.106:                              # %vector.memcheck926
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB3_32
# %bb.107:                              # %vector.ph1057
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
	move	$fp, $a6
	move	$s0, $a7
	move	$s1, $t0
	move	$s2, $t2
	.p2align	4, , 16
.LBB3_108:                              # %vector.body1062
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
	vld	$vr7, $s0, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 48
	vst	$vr6, $fp, 0
	vfsub.s	$vr5, $vr4, $vr7
	vst	$vr5, $s1, 0
	addi.d	$s2, $s2, -4
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 16
	bnez	$s2, .LBB3_108
# %bb.109:                              # %middle.block1076
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB3_32
	b	.LBB3_34
.LBB3_110:                              # %clearvec.exit.thread
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
.LBB3_111:                              # %imp_match_out_vead_tateQ.exit
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.bu	$a0, $t7, 0
	ori	$a1, $zero, 114
	slli.d	$s3, $t3, 32
	pcalau12i	$a2, %pc_hi20(.LCPI3_2)
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB3_114
# %bb.112:
	beqz	$ra, .LBB3_138
# %bb.113:                              # %.lr.ph.preheader.i523
	slli.d	$a0, $t3, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $t4
	move	$a1, $zero
	move	$fp, $ra
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_115
.LBB3_114:
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx1)
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align.cpmx2)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align.floatwork)
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $t4
	move	$a3, $zero
	move	$a4, $ra
	move	$fp, $ra
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB3_115:                              # %clearvec.exit524
	sltui	$a0, $fp, 1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
	move	$ra, $fp
	vld	$vr18, $sp, 256                 # 16-byte Folded Reload
	move	$t4, $s0
	move	$t6, $s1
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_121
# %bb.116:                              # %.lr.ph.preheader.i525
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a5, $a0, 0
	bstrpick.d	$a3, $t3, 31, 0
	ori	$a0, $zero, 8
	bltu	$a3, $a0, .LBB3_119
# %bb.117:                              # %vector.memcheck1079
	addi.w	$a0, $zero, -4
	lu32i.d	$a0, 3
	alsl.d	$a0, $t3, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 4
	add.d	$a1, $a5, $a0
	bgeu	$t4, $a1, .LBB3_301
# %bb.118:                              # %vector.memcheck1079
	add.d	$a0, $t4, $a0
	bgeu	$a5, $a0, .LBB3_301
.LBB3_119:
	move	$a1, $a5
	move	$a0, $t3
	move	$a2, $t4
	.p2align	4, , 16
.LBB3_120:                              # %.lr.ph.i526
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a3
	bnez	$a0, .LBB3_120
.LBB3_121:                              # %imp_match_out_veadQ.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_131
.LBB3_122:
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.ogcp2g)
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n1_p)
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_h_dg_n2_p)
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a2, 0
	fld.s	$fa6, $a3, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	ld.d	$a2, $s6, %pc_lo12(Q__align.initverticalw)
	movgr2fr.w	$fa7, $zero
	fmadd.s	$fa0, $fa0, $fa1, $fa7
	fld.s	$fa1, $a0, 0
	fld.s	$fa7, $a2, 0
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fadd.s	$fa1, $fa0, $fa7
	fst.s	$fa1, $a2, 0
	fld.s	$fa1, $t4, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t4, 0
	blez	$s2, .LBB3_126
# %bb.123:                              # %.lr.ph598
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n2)
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	addi.d	$a4, $s5, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	ori	$a5, $zero, 1
	bgeu	$a6, $a7, .LBB3_224
.LBB3_124:                              # %scalar.ph1154.preheader
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_125:                              # %scalar.ph1154
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB3_125
.LBB3_126:                              # %.preheader567
	blez	$ra, .LBB3_155
# %bb.127:                              # %.lr.ph601
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n1)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	addi.d	$a3, $t3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -1
	ori	$a6, $zero, 8
	ori	$a4, $zero, 1
	bgeu	$a5, $a6, .LBB3_230
.LBB3_128:                              # %scalar.ph1192.preheader
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a5, $a4, $t4, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB3_129:                              # %scalar.ph1192
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a5, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a2, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB3_129
.LBB3_130:                              # %.loopexit568.thread771
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
	b	.LBB3_147
.LBB3_131:                              # %.preheader571
	blez	$ra, .LBB3_139
# %bb.132:                              # %.lr.ph591
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_136
# %bb.133:                              # %vector.ph1106
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI3_1)
	addi.d	$a5, $t4, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_134:                              # %vector.body1111
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr0, $vr1
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a5, 0
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
	vst	$vr3, $a5, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_134
# %bb.135:                              # %middle.block1116
	beq	$a2, $a4, .LBB3_139
.LBB3_136:                              # %scalar.ph1104.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t4, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_137:                              # %scalar.ph1104
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
	bnez	$a1, .LBB3_137
	b	.LBB3_139
.LBB3_138:                              # %imp_match_out_veadQ.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_122
.LBB3_139:                              # %.preheader569
	blez	$s2, .LBB3_146
# %bb.140:                              # %.lr.ph594
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s6, %pc_lo12(Q__align.initverticalw)
	addi.d	$a2, $s5, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 4
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB3_144
# %bb.141:                              # %vector.ph1121
	move	$a5, $a3
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a6, %pc_hi20(.LCPI3_1)
	vld	$vr1, $a6, %pc_lo12(.LCPI3_1)
	addi.d	$a6, $a1, 4
	lu52i.d	$a7, $zero, -1026
	vreplgr2vr.d	$vr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_142:                              # %vector.body1126
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
	bnez	$a7, .LBB3_142
# %bb.143:                              # %middle.block1133
	beq	$a3, $a5, .LBB3_146
.LBB3_144:                              # %scalar.ph1119.preheader
	mul.d	$a3, $a0, $a4
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_145:                              # %scalar.ph1119
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a1, 0
	add.w	$a3, $a3, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB3_145
.LBB3_146:                              # %.loopexit568
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
	blez	$ra, .LBB3_156
.LBB3_147:                              # %.lr.ph605
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mp)
	addi.d	$a2, $t3, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 8
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB3_152
# %bb.148:                              # %vector.memcheck1212
	sub.d	$a5, $a0, $t4
	addi.d	$a5, $a5, 4
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB3_152
# %bb.149:                              # %vector.ph1215
	move	$a6, $zero
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 2, 0
	vreplvei.w	$vr0, $vr18, 0
	addi.d	$a7, $a1, 20
	vrepli.b	$vr1, 0
	lu12i.w	$t0, 287172
	vreplgr2vr.w	$vr2, $t0
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_150:                              # %vector.body1220
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t1, $a7, $a6
	add.d	$t2, $t4, $a6
	vldx	$vr3, $t4, $a6
	vld	$vr4, $t2, 16
	vst	$vr1, $t1, -16
	vstx	$vr1, $a7, $a6
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	vfmadd.s	$vr4, $vr0, $vr2, $vr4
	add.d	$t1, $a0, $a6
	vst	$vr3, $t1, 4
	vst	$vr4, $t1, 20
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB3_150
# %bb.151:                              # %middle.block1226
	beq	$a3, $a5, .LBB3_154
.LBB3_152:                              # %scalar.ph1213.preheader
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI3_2)
	slli.d	$a3, $a4, 2
	addi.d	$a5, $t4, -4
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB3_153:                              # %scalar.ph1213
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a5, $a3
	stx.w	$zero, $a1, $a3
	fmadd.s	$fa1, $ft10, $fa0, $fa1
	fstx.s	$fa1, $a0, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB3_153
.LBB3_154:
	move	$t8, $zero
	b	.LBB3_157
.LBB3_155:                              # %.loopexit568.thread
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
.LBB3_156:                              # %._crit_edge606
	ori	$t8, $zero, 1
	beqz	$ra, .LBB3_300
.LBB3_157:                              # %._crit_edge606.thread
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $s3, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $t4, $a1
	move	$t1, $t8
	move	$t8, $zero
.LBB3_158:
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t2, $a1, %pc_lo12(Q__align.lastverticalw)
	fst.s	$fa0, $t2, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	sltu	$a1, $zero, $a1
	add.w	$a2, $a1, $s5
	ori	$a1, $zero, 2
	st.d	$t2, $sp, 200                   # 8-byte Folded Spill
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	blt	$a2, $a1, .LBB3_192
# %bb.159:                              # %.lr.ph642
	ld.d	$a1, $s6, %pc_lo12(Q__align.initverticalw)
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(Q__align.cpmx1)
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.floatwork)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.intwork)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a1, $t3, 2
	bstrpick.d	$a1, $a1, 33, 2
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mp)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.gapz_n2)
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_h_dg_n2_p)
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.ogcp2g)
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	st.d	$t0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	st.d	$t0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.og_h_dg_n1_p)
	st.d	$t0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	st.d	$t0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n1)
	st.d	$t0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fgcp1g)
	st.d	$t0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.ogcp1g)
	st.d	$t0, $sp, 304                   # 8-byte Folded Spill
	ori	$t0, $zero, 0
	lu32i.d	$t0, -1
	add.d	$t0, $s3, $t0
	srai.d	$t0, $t0, 30
	st.d	$t0, $sp, 376                   # 8-byte Folded Spill
	addi.w	$t0, $t3, -1
	st.d	$t0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$t0, $t0, 31, 0
	st.d	$t1, $sp, 192                   # 8-byte Folded Spill
	slli.d	$t1, $t0, 2
	addi.d	$t1, $t1, 4
	st.d	$t1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	addi.d	$t0, $t0, 1
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$t0, $t0, 32, 3
	slli.d	$s0, $t0, 3
	slli.d	$t0, $t0, 5
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s5, $a0, 4
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 4
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	addi.d	$s8, $a4, 4
	addi.d	$fp, $a5, 4
	addi.d	$s3, $a6, 4
	addi.d	$s7, $a3, 4
	movgr2fr.w	$fs1, $zero
	addi.d	$s6, $a7, 4
	fmov.s	$fs0, $fs1
	move	$a1, $t4
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ijp)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	sub.d	$a0, $t3, $s0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a5, $zero, 1
	ori	$s1, $zero, 208
	addi.d	$s4, $sp, 432
	ori	$a6, $zero, 26
	st.d	$t8, $sp, 168                   # 8-byte Folded Spill
	b	.LBB3_161
	.p2align	4, , 16
.LBB3_160:                              # %._crit_edge634
                                        #   in Loop: Header=BB3_161 Depth=1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	fldx.s	$fa0, $t4, $a1
	fstx.s	$fa0, $t2, $s0
	move	$a5, $a0
	move	$a1, $t4
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	ori	$a6, $zero, 26
	beq	$a0, $a2, .LBB3_193
.LBB3_161:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_165 Depth 2
                                        #       Child Loop BB3_166 Depth 3
                                        #     Child Loop BB3_171 Depth 2
                                        #       Child Loop BB3_173 Depth 3
                                        #     Child Loop BB3_190 Depth 2
                                        #     Child Loop BB3_179 Depth 2
                                        #     Child Loop BB3_183 Depth 2
	addi.d	$a0, $a5, -1
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a0
	move	$t4, $t6
	move	$t6, $a1
	fst.s	$fa0, $a1, 0
	ld.bu	$a0, $t7, 0
	slli.d	$s0, $a5, 2
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB3_164
# %bb.162:                              #   in Loop: Header=BB3_161 Depth=1
	bnez	$t8, .LBB3_180
# %bb.163:                              # %clearvec.exit535.thread
                                        #   in Loop: Header=BB3_161 Depth=1
	move	$a0, $t4
	move	$a1, $zero
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$t4, $sp, 288                   # 8-byte Folded Spill
	st.d	$t6, $sp, 280                   # 8-byte Folded Spill
	st.d	$a5, $sp, 272                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 288                   # 8-byte Folded Reload
	vld	$vr18, $sp, 256                 # 16-byte Folded Reload
	ld.d	$ra, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_175
	b	.LBB3_180
	.p2align	4, , 16
.LBB3_164:                              #   in Loop: Header=BB3_161 Depth=1
	pcalau12i	$a0, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$a0, $a0, %got_pc_lo12(n_dis_consweight_multi)
	move	$a1, $zero
	.p2align	4, , 16
.LBB3_165:                              #   Parent Loop BB3_161 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_166 Depth 3
	move	$a2, $zero
	move	$a3, $a0
	fmov.s	$fa0, $fs1
	.p2align	4, , 16
.LBB3_166:                              #   Parent Loop BB3_161 Depth=1
                                        #     Parent Loop BB3_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a4, $s2, $a2
	fld.s	$fa1, $a3, 0
	fldx.s	$fa2, $a4, $s0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 104
	bne	$a2, $s1, .LBB3_166
# %bb.167:                              #   in Loop: Header=BB3_165 Depth=2
	slli.d	$a2, $a1, 2
	fstx.s	$fa0, $a2, $s4
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	bne	$a1, $a6, .LBB3_165
# %bb.168:                              # %.preheader.i
                                        #   in Loop: Header=BB3_161 Depth=1
	bnez	$t8, .LBB3_180
# %bb.169:                              # %.lr.ph73.i.preheader
                                        #   in Loop: Header=BB3_161 Depth=1
	move	$t0, $a5
	move	$a0, $t3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	move	$a3, $t4
	b	.LBB3_171
	.p2align	4, , 16
.LBB3_170:                              # %._crit_edge.i
                                        #   in Loop: Header=BB3_171 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 4
	beqz	$a0, .LBB3_174
.LBB3_171:                              # %.lr.ph73.i
                                        #   Parent Loop BB3_161 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_173 Depth 3
	ld.d	$a5, $a1, 0
	ld.wu	$a4, $a5, 0
	addi.w	$a6, $a4, 0
	st.w	$zero, $a3, 0
	bltz	$a6, .LBB3_170
# %bb.172:                              # %.lr.ph.i527
                                        #   in Loop: Header=BB3_171 Depth=2
	ld.d	$a6, $a2, 0
	addi.d	$a5, $a5, 4
	fmov.s	$fa0, $fs1
	.p2align	4, , 16
.LBB3_173:                              #   Parent Loop BB3_161 Depth=1
                                        #     Parent Loop BB3_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a4, $a4, 2
	fldx.s	$fa1, $a4, $s4
	fld.s	$fa2, $a6, 0
	ld.wu	$a4, $a5, 0
	addi.d	$a6, $a6, 4
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.w	$a7, $a4, 0
	addi.d	$a5, $a5, 4
	bgez	$a7, .LBB3_173
	b	.LBB3_170
	.p2align	4, , 16
.LBB3_174:                              # %clearvec.exit535
                                        #   in Loop: Header=BB3_161 Depth=1
	move	$a5, $t0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_180
.LBB3_175:                              # %.lr.ph.preheader.i537
                                        #   in Loop: Header=BB3_161 Depth=1
	slli.d	$a0, $a5, 3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB3_178
# %bb.176:                              # %vector.memcheck1229
                                        #   in Loop: Header=BB3_161 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a1
	bgeu	$t4, $a0, .LBB3_189
# %bb.177:                              # %vector.memcheck1229
                                        #   in Loop: Header=BB3_161 Depth=1
	add.d	$a0, $t4, $a1
	bgeu	$a3, $a0, .LBB3_189
.LBB3_178:                              #   in Loop: Header=BB3_161 Depth=1
	move	$a0, $a3
	move	$a2, $t3
	move	$a1, $t4
	.p2align	4, , 16
.LBB3_179:                              # %.lr.ph.i538
                                        #   Parent Loop BB3_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a3
	bnez	$a2, .LBB3_179
.LBB3_180:                              # %imp_match_out_veadQ.exit544
                                        #   in Loop: Header=BB3_161 Depth=1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s0
	fst.s	$fa0, $t4, 0
	addi.d	$a0, $a5, 1
	bnez	$t1, .LBB3_160
# %bb.181:                              # %.lr.ph633.preheader
                                        #   in Loop: Header=BB3_161 Depth=1
	move	$t5, $a5
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $s0
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa1, $a4, $s0
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	fldx.s	$fa2, $a4, $s0
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	fldx.s	$fa3, $a4, $s0
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	fldx.s	$fa4, $a5, $s0
	slli.d	$a4, $a0, 2
	fldx.s	$fa5, $a5, $a4
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	fldx.s	$fa6, $a4, $s0
	fld.s	$ft0, $t6, 0
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	fld.s	$ft1, $a4, %pc_lo12(.LCPI3_2)
	slli.d	$a4, $t5, 3
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a4
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	fldx.s	$fa7, $a4, $s0
	fmadd.s	$ft0, $ft10, $ft1, $ft0
	addi.d	$a4, $t4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $zero, -1
	b	.LBB3_183
	.p2align	4, , 16
.LBB3_182:                              #   in Loop: Header=BB3_183 Depth=2
	fmul.s	$ft2, $fa4, $ft2
	fadd.s	$ft1, $ft1, $ft2
	fcmp.cult.s	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	movcf2gr	$a7, $fcc0
	fldx.s	$ft1, $a4, $a2
	masknez	$t0, $a1, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $t0
	fadd.s	$ft1, $fs0, $ft1
	fstx.s	$ft1, $a4, $a2
	addi.d	$a2, $a2, 4
	addi.w	$a1, $a1, 1
	addi.d	$a6, $a6, -1
	beq	$ra, $a1, .LBB3_160
.LBB3_183:                              # %.lr.ph633
                                        #   Parent Loop BB3_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $fp, $a2
	fldx.s	$ft1, $t6, $a2
	fldx.s	$ft3, $s6, $a2
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $s3, $a2
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s7, $a2
	fmul.s	$ft4, $fa6, $ft4
	ld.d	$a7, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$ft5, $a7, $a2
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a5, $a2
	bcnez	$fcc0, .LBB3_185
# %bb.184:                              #   in Loop: Header=BB3_183 Depth=2
	add.d	$a7, $a3, $a6
	stx.w	$a7, $a5, $a2
	fmov.s	$fs0, $ft2
.LBB3_185:                              #   in Loop: Header=BB3_183 Depth=2
	ld.d	$a7, $sp, 424                   # 8-byte Folded Reload
	add.d	$a7, $a7, $a2
	fld.s	$ft4, $a7, 0
	fldx.s	$ft3, $s5, $a2
	fldx.s	$ft2, $s8, $a2
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB3_187
# %bb.186:                              #   in Loop: Header=BB3_183 Depth=2
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a2
	sub.d	$t0, $t5, $t0
	stx.w	$t0, $a5, $a2
	fmov.s	$fs0, $ft4
.LBB3_187:                              #   in Loop: Header=BB3_183 Depth=2
	fld.s	$ft4, $a7, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB3_182
# %bb.188:                              #   in Loop: Header=BB3_183 Depth=2
	fstx.s	$ft4, $s5, $a2
	ld.d	$a7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	stx.w	$t0, $a7, $a2
	b	.LBB3_182
.LBB3_189:                              # %vector.ph1237
                                        #   in Loop: Header=BB3_161 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a1
	add.d	$a1, $t4, $a1
	addi.d	$a2, $t4, 16
	addi.d	$a3, $a3, 16
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_190:                              # %vector.body1241
                                        #   Parent Loop BB3_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vld	$vr2, $a2, -16
	vld	$vr3, $a2, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_190
# %bb.191:                              # %middle.block1252
                                        #   in Loop: Header=BB3_161 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bne	$a3, $a4, .LBB3_179
	b	.LBB3_180
.LBB3_192:
	movgr2fr.w	$fs0, $zero
.LBB3_193:                              # %._crit_edge643
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_208
# %bb.194:                              # %.preheader566
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	bnez	$t1, .LBB3_201
# %bb.195:                              # %.lr.ph652
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_199
# %bb.196:                              # %vector.ph1259
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.d	$vr1, $t3
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	vld	$vr2, $a5, %pc_lo12(.LCPI3_3)
	pcalau12i	$a5, %pc_hi20(.LCPI3_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI3_4)
	addi.d	$a5, $t4, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_197:                              # %vector.body1266
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
	bnez	$a6, .LBB3_197
# %bb.198:                              # %middle.block1273
	beq	$a2, $a4, .LBB3_201
.LBB3_199:                              # %scalar.ph1257.preheader
	sub.w	$a2, $t3, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t4, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_200:                              # %scalar.ph1257
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
	bnez	$a1, .LBB3_200
.LBB3_201:                              # %.preheader565
	blez	$t0, .LBB3_208
# %bb.202:                              # %.lr.ph655
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a2, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fneg.d	$fa1, $fa1
	addi.d	$a0, $a2, 1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 2
	ori	$a0, $zero, 1
	bltu	$a2, $a3, .LBB3_206
# %bb.203:                              # %vector.ph1278
	move	$a4, $a2
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $a2, 1
	addi.d	$a5, $t2, 8
	vldi	$vr2, -928
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_204:                              # %vector.body1281
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a7, $a3, 31, 0
	addi.d	$t0, $a3, -1
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa3, $t0
	ffint.d.l	$fa3, $fa3
	movgr2fr.d	$fa4, $a7
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa4, $fa4, $fa2
	fld.s	$fa5, $a5, -4
	fld.s	$fa6, $a5, 0
	fsub.d	$fa3, $fa0, $fa3
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa3, $fa1, $fa3, $fa5
	fmadd.d	$fa4, $fa1, $fa4, $fa6
	fcvt.s.d	$fa3, $fa3
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa3, $a5, -4
	fst.s	$fa4, $a5, 0
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -2
	addi.w	$a3, $a3, 2
	bnez	$a6, .LBB3_204
# %bb.205:                              # %middle.block1286
	beq	$a2, $a4, .LBB3_208
.LBB3_206:                              # %scalar.ph1276.preheader
	alsl.d	$a2, $a0, $t2, 2
	sub.d	$a1, $a1, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_207:                              # %scalar.ph1276
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
	bnez	$a1, .LBB3_207
.LBB3_208:                              # %.loopexit
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(Q__align.mseq1)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Q__align.mseq2)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(Q__align.ijp)
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_210
# %bb.209:
	st.d	$s1, $sp, 0
	move	$a0, $t4
	move	$a1, $t2
	move	$a2, $s5
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s6
	move	$a6, $s2
	move	$s2, $a3
	move	$a5, $s4
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_291
.LBB3_210:
	ld.d	$a0, $s5, 0
	move	$fp, $t4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	addi.w	$s5, $a0, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ori	$a3, $zero, 1
	addi.w	$a2, $s7, 0
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 408                   # 8-byte Folded Spill
	addi.w	$a2, $s1, 0
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a3, .LBB3_221
# %bb.211:
	move	$a7, $fp
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	fld.s	$fa0, $t0, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	blez	$a1, .LBB3_216
# %bb.212:                              # %.lr.ph.i547
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB3_214
	.p2align	4, , 16
.LBB3_213:                              #   in Loop: Header=BB3_214 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$t0, $t0, 4
	beqz	$a4, .LBB3_216
.LBB3_214:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_213
# %bb.215:                              #   in Loop: Header=BB3_214 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_213
.LBB3_216:                              # %.preheader170.i
	blez	$a2, .LBB3_221
# %bb.217:                              # %.lr.ph175.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	slli.d	$a3, $a5, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $a5, 30, 0
	sub.d	$a5, $zero, $a5
	b	.LBB3_219
	.p2align	4, , 16
.LBB3_218:                              #   in Loop: Header=BB3_219 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 4
	beqz	$a4, .LBB3_221
.LBB3_219:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_218
# %bb.220:                              #   in Loop: Header=BB3_219 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_218
.LBB3_221:                              # %.loopexit.i
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bltz	$a1, .LBB3_241
# %bb.222:                              # %.lr.ph178.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_236
# %bb.223:
	move	$a3, $zero
	b	.LBB3_239
.LBB3_224:                              # %vector.memcheck1136
	addi.d	$a7, $a2, 4
	alsl.d	$t1, $a4, $a2, 2
	addi.d	$t0, $a0, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a0, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB3_124
# %bb.225:                              # %vector.memcheck1136
	addi.d	$t0, $a1, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB3_124
# %bb.226:                              # %vector.memcheck1136
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB3_124
# %bb.227:                              # %vector.ph1156
	move	$t1, $a6
	bstrins.d	$t1, $zero, 1, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	vldrepl.w	$vr0, $a0, 4
	bstrins.d	$a5, $t2, 1, 0
	fmul.s	$fa1, $fa1, $fa2
	vreplvei.w	$vr1, $vr1, 0
	move	$t2, $t1
	.p2align	4, , 16
.LBB3_228:                              # %vector.body1159
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
	bnez	$t2, .LBB3_228
# %bb.229:                              # %middle.block1171
	bne	$a6, $t1, .LBB3_124
	b	.LBB3_126
.LBB3_230:                              # %vector.memcheck1174
	addi.d	$a6, $t4, 4
	alsl.d	$t0, $a3, $t4, 2
	addi.d	$a7, $a0, 8
	sltu	$a7, $a6, $a7
	sltu	$t1, $a0, $t0
	and	$a7, $a7, $t1
	bnez	$a7, .LBB3_128
# %bb.231:                              # %vector.memcheck1174
	addi.d	$a7, $a1, 4
	sltu	$a7, $a6, $a7
	sltu	$t1, $a1, $t0
	and	$a7, $a7, $t1
	bnez	$a7, .LBB3_128
# %bb.232:                              # %vector.memcheck1174
	addi.d	$a7, $a2, 4
	alsl.d	$t1, $a3, $a2, 2
	sltu	$t1, $a6, $t1
	sltu	$t0, $a7, $t0
	and	$t0, $t1, $t0
	bnez	$t0, .LBB3_128
# %bb.233:                              # %vector.ph1194
	move	$t0, $a5
	bstrins.d	$t0, $zero, 1, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	ori	$t1, $zero, 1
	move	$a4, $a5
	vldrepl.w	$vr0, $a0, 4
	bstrins.d	$a4, $t1, 1, 0
	fmul.s	$fa1, $fa1, $fa2
	vreplvei.w	$vr1, $vr1, 0
	move	$t1, $t0
	.p2align	4, , 16
.LBB3_234:                              # %vector.body1197
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, 0
	vfadd.s	$vr2, $vr2, $vr1
	vfmul.s	$vr3, $vr0, $vr3
	vfadd.s	$vr2, $vr2, $vr3
	vst	$vr2, $a6, 0
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, 16
	bnez	$t1, .LBB3_234
# %bb.235:                              # %middle.block1209
	bne	$a5, $t0, .LBB3_128
	b	.LBB3_130
.LBB3_236:                              # %vector.ph1291
	pcalau12i	$a4, %pc_hi20(.LCPI3_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s2, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_237:                              # %vector.body1294
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a6, $vr1, 0
	vstelm.w	$vr4, $a6, 0, 0
	vpickve2gr.d	$a6, $vr1, 1
	vstelm.w	$vr4, $a6, 0, 1
	vpickve2gr.d	$a6, $vr2, 0
	vstelm.w	$vr3, $a6, 0, 0
	vpickve2gr.d	$a6, $vr2, 1
	vstelm.w	$vr3, $a6, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_237
# %bb.238:                              # %middle.block1301
	beq	$a1, $a3, .LBB3_241
.LBB3_239:                              # %.lr.ph178.i.preheader
	alsl.d	$a4, $a3, $s2, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB3_240:                              # %.lr.ph178.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB3_240
.LBB3_241:                              # %.preheader169.i
	ld.d	$a1, $sp, 640
	bltz	$a2, .LBB3_249
# %bb.242:                              # %.lr.ph181.i
	ld.d	$a3, $s2, 0
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a5, $a4, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB3_244
# %bb.243:
	move	$a5, $zero
	b	.LBB3_247
.LBB3_244:                              # %vector.ph1306
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI3_6)
	vld	$vr0, $a6, %pc_lo12(.LCPI3_6)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_245:                              # %vector.body1309
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB3_245
# %bb.246:                              # %middle.block1315
	beq	$a4, $a5, .LBB3_249
.LBB3_247:                              # %scalar.ph1304.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_248:                              # %scalar.ph1304
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_248
.LBB3_249:                              # %._crit_edge.i545
	st.d	$s0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	add.d	$a3, $s0, $a4
	add.d	$s8, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	add.d	$a3, $a0, $a4
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_283
# %bb.250:                              # %.lr.ph209.i.preheader
	move	$a7, $zero
	ori	$a2, $zero, 111
	ori	$a3, $zero, 45
	ori	$a4, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a5, $zero, 16
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	move	$a0, $s2
	.p2align	4, , 16
.LBB3_251:                              # %.lr.ph209.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_261 Depth 2
                                        #     Child Loop BB3_265 Depth 2
                                        #     Child Loop BB3_271 Depth 2
                                        #     Child Loop BB3_276 Depth 2
	addi.w	$t1, $s7, 0
	slli.d	$t4, $t1, 3
	ldx.d	$t0, $s2, $t4
	addi.w	$t2, $a6, 0
	slli.d	$t5, $t2, 2
	ldx.w	$t3, $t0, $t5
	bltz	$t3, .LBB3_254
# %bb.252:                              #   in Loop: Header=BB3_251 Depth=1
	beqz	$t3, .LBB3_255
# %bb.253:                              #   in Loop: Header=BB3_251 Depth=1
	sub.d	$t0, $s7, $t3
	b	.LBB3_256
	.p2align	4, , 16
.LBB3_254:                              #   in Loop: Header=BB3_251 Depth=1
	addi.d	$t0, $s7, -1
	b	.LBB3_257
	.p2align	4, , 16
.LBB3_255:                              #   in Loop: Header=BB3_251 Depth=1
	addi.d	$t0, $s7, -1
.LBB3_256:                              #   in Loop: Header=BB3_251 Depth=1
	move	$t3, $ra
.LBB3_257:                              #   in Loop: Header=BB3_251 Depth=1
	nor	$t6, $t0, $zero
	add.w	$t7, $s7, $t6
	beqz	$t7, .LBB3_267
# %bb.258:                              # %.lr.ph187.i.preheader
                                        #   in Loop: Header=BB3_251 Depth=1
	bltu	$t7, $a5, .LBB3_263
# %bb.259:                              # %.lr.ph187.i.preheader
                                        #   in Loop: Header=BB3_251 Depth=1
	sub.d	$t8, $s8, $s3
	bltu	$t8, $a5, .LBB3_263
# %bb.260:                              # %vector.ph1347
                                        #   in Loop: Header=BB3_251 Depth=1
	bstrpick.d	$s0, $t7, 31, 0
	bstrpick.d	$t8, $s0, 31, 4
	slli.d	$s1, $t8, 4
	sub.d	$t7, $t7, $s1
	sub.d	$t8, $s3, $s1
	sub.d	$fp, $s8, $s1
	addi.d	$s2, $s8, -16
	addi.d	$s3, $s3, -16
	move	$s5, $s1
	.p2align	4, , 16
.LBB3_261:                              # %vector.body1351
                                        #   Parent Loop BB3_251 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s2, 0
	vst	$vr1, $s3, 0
	addi.d	$s5, $s5, -16
	addi.d	$s2, $s2, -16
	addi.d	$s3, $s3, -16
	bnez	$s5, .LBB3_261
# %bb.262:                              # %middle.block1358
                                        #   in Loop: Header=BB3_251 Depth=1
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	move	$s2, $a0
	bne	$s1, $s0, .LBB3_264
	b	.LBB3_266
	.p2align	4, , 16
.LBB3_263:                              #   in Loop: Header=BB3_251 Depth=1
	move	$t8, $s3
	move	$fp, $s8
.LBB3_264:                              # %.lr.ph187.i.preheader1366
                                        #   in Loop: Header=BB3_251 Depth=1
	move	$s0, $t8
	move	$s1, $fp
	.p2align	4, , 16
.LBB3_265:                              # %.lr.ph187.i
                                        #   Parent Loop BB3_251 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$fp, $s1, -1
	st.b	$a2, $s1, -1
	addi.d	$t8, $s0, -1
	addi.w	$t7, $t7, -1
	st.b	$a3, $s0, -1
	move	$s0, $t8
	move	$s1, $fp
	bnez	$t7, .LBB3_265
.LBB3_266:                              # %._crit_edge188.loopexit.i
                                        #   in Loop: Header=BB3_251 Depth=1
	add.d	$a7, $s7, $a7
	add.d	$a7, $t6, $a7
	move	$s8, $fp
	move	$s3, $t8
.LBB3_267:                              # %._crit_edge188.i
                                        #   in Loop: Header=BB3_251 Depth=1
	beq	$t3, $ra, .LBB3_273
# %bb.268:                              # %.lr.ph197.preheader.i
                                        #   in Loop: Header=BB3_251 Depth=1
	addi.w	$t6, $zero, -9
	nor	$fp, $t3, $zero
	bltu	$t6, $t3, .LBB3_274
# %bb.269:                              # %.lr.ph197.preheader.i
                                        #   in Loop: Header=BB3_251 Depth=1
	sub.d	$t6, $s8, $s3
	bltu	$t6, $a4, .LBB3_274
# %bb.270:                              # %vector.ph1324
                                        #   in Loop: Header=BB3_251 Depth=1
	bstrpick.d	$t6, $fp, 30, 3
	slli.d	$s0, $t6, 3
	sub.d	$t8, $fp, $s0
	sub.d	$t6, $s3, $s0
	sub.d	$t7, $s8, $s0
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $a7, 0
	addi.d	$a7, $s8, -4
	addi.d	$s1, $s3, -4
	move	$s2, $s0
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB3_271:                              # %vector.body1328
                                        #   Parent Loop BB3_251 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $a7, 0, 0
	vstelm.w	$vr1, $a7, -4, 0
	vstelm.w	$vr2, $s1, 0, 0
	vstelm.w	$vr2, $s1, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$s2, $s2, -8
	addi.d	$a7, $a7, -8
	addi.d	$s1, $s1, -8
	bnez	$s2, .LBB3_271
# %bb.272:                              # %middle.block1336
                                        #   in Loop: Header=BB3_251 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$a7, $vr3, 0
	move	$s2, $a0
	bne	$s0, $fp, .LBB3_275
	b	.LBB3_277
	.p2align	4, , 16
.LBB3_273:                              #   in Loop: Header=BB3_251 Depth=1
	move	$t7, $s8
	move	$t6, $s3
	b	.LBB3_277
	.p2align	4, , 16
.LBB3_274:                              #   in Loop: Header=BB3_251 Depth=1
	move	$t8, $fp
	move	$t6, $s3
	move	$t7, $s8
.LBB3_275:                              # %.lr.ph197.i.preheader
                                        #   in Loop: Header=BB3_251 Depth=1
	add.d	$a7, $a7, $t8
	.p2align	4, , 16
.LBB3_276:                              # %.lr.ph197.i
                                        #   Parent Loop BB3_251 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t7, -1
	addi.d	$t7, $t7, -1
	st.b	$a2, $t6, -1
	addi.w	$t8, $t8, -1
	addi.d	$t6, $t6, -1
	bnez	$t8, .LBB3_276
.LBB3_277:                              # %._crit_edge198.i
                                        #   in Loop: Header=BB3_251 Depth=1
	ld.d	$t8, $sp, 424                   # 8-byte Folded Reload
	beq	$t1, $t8, .LBB3_280
# %bb.278:                              # %._crit_edge198.i
                                        #   in Loop: Header=BB3_251 Depth=1
	ld.d	$t8, $sp, 408                   # 8-byte Folded Reload
	addi.w	$t8, $t8, 0
	beq	$t2, $t8, .LBB3_280
# %bb.279:                              #   in Loop: Header=BB3_251 Depth=1
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $t8, %pc_lo12(impmtx)
	ldx.d	$t4, $t8, $t4
	fldx.s	$fa3, $t4, $t5
	fld.s	$fa4, $a1, 0
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a1, 0
.LBB3_280:                              #   in Loop: Header=BB3_251 Depth=1
	blez	$t1, .LBB3_284
# %bb.281:                              #   in Loop: Header=BB3_251 Depth=1
	blez	$t2, .LBB3_284
# %bb.282:                              #   in Loop: Header=BB3_251 Depth=1
	add.d	$a6, $t3, $a6
	addi.d	$s8, $t7, -1
	st.b	$a2, $t7, -1
	addi.d	$s3, $t6, -1
	addi.w	$a7, $a7, 2
	st.b	$a2, $t6, -1
	move	$s7, $t0
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	bge	$t0, $a7, .LBB3_251
.LBB3_283:                              # %._crit_edge210.i
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	bgtz	$a0, .LBB3_285
	b	.LBB3_287
.LBB3_284:
	move	$s8, $t7
	move	$s3, $t6
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	blez	$a0, .LBB3_287
.LBB3_285:                              # %.lr.ph218.preheader.i
	move	$fp, $s5
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_286:                              # %.lr.ph218.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB3_286
.LBB3_287:                              # %.preheader.i546
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	blez	$s1, .LBB3_290
# %bb.288:                              # %.lr.ph220.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB3_289:                              # %.lr.ph220.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB3_289
.LBB3_290:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
.LBB3_291:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_304
# %bb.292:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_304
# %bb.293:
	blez	$s0, .LBB3_296
.LBB3_294:                              # %.lr.ph658
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Q__align.mseq1)
	.p2align	4, , 16
.LBB3_295:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s5, $s5, 8
	bnez	$s0, .LBB3_295
.LBB3_296:                              # %.preheader
	blez	$s1, .LBB3_299
# %bb.297:                              # %.lr.ph660
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Q__align.mseq2)
	.p2align	4, , 16
.LBB3_298:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB3_298
.LBB3_299:                              # %._crit_edge661
	fmov.s	$fa0, $fs0
	fld.d	$fs1, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 544                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 632                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 640
	ret
.LBB3_300:
	movgr2fr.w	$fa0, $zero
	ori	$t1, $zero, 1
	b	.LBB3_158
.LBB3_301:                              # %vector.ph1087
	bstrpick.d	$a0, $t3, 31, 3
	slli.d	$a4, $a0, 3
	slli.d	$a2, $a0, 5
	add.d	$a1, $a5, $a2
	andi	$a0, $t3, 7
	add.d	$a2, $t4, $a2
	addi.d	$a6, $t4, 16
	addi.d	$a5, $a5, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB3_302:                              # %vector.body1090
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB3_302
# %bb.303:                              # %middle.block1099
	bne	$a3, $a4, .LBB3_120
	b	.LBB3_121
.LBB3_304:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	bgtz	$s0, .LBB3_294
	b	.LBB3_296
.LBB3_305:
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB3_27
.LBB3_306:
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB3_32
.Lfunc_end3:
	.size	Q__align, .Lfunc_end3-Q__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	beqz	$a7, .LBB4_8
# %bb.1:
	blez	$a4, .LBB4_8
# %bb.2:                                # %.preheader60.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 208
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t3, $t5, 0
	slli.d	$t2, $t2, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t3, $t2
	beq	$a7, $a4, .LBB4_8
.LBB4_4:                                # %.preheader60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	move	$t3, $zero
	move	$t4, $zero
	move	$t2, $zero
	alsl.d	$t6, $a7, $a5, 3
	alsl.d	$t5, $a7, $a6, 3
	slli.d	$t7, $a7, 2
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 1
	beq	$t3, $t0, .LBB4_3
.LBB4_6:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t8, $a2, $t3
	fldx.s	$fa1, $t8, $t7
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_5
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=2
	ld.d	$t8, $t6, 0
	ld.d	$fp, $t5, 0
	slli.d	$s0, $t2, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t4, $fp, $s0
	addi.w	$t2, $t2, 1
	b	.LBB4_5
.LBB4_8:                                # %.loopexit
	pcalau12i	$a2, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis_consweight_multi)
	move	$a7, $zero
	addi.d	$t0, $sp, 8
	movgr2fr.w	$fa0, $zero
	slli.d	$a3, $a3, 2
	ori	$t1, $zero, 208
	ori	$t2, $zero, 26
	.p2align	4, , 16
.LBB4_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	move	$t4, $zero
	alsl.d	$t3, $a7, $t0, 2
	move	$t5, $a2
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB4_10:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t6, $a1, $t4
	fld.s	$fa2, $t5, 0
	fldx.s	$fa3, $t6, $a3
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 104
	bne	$t4, $t1, .LBB4_10
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=1
	fst.s	$fa1, $t3, 0
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 4
	bne	$a7, $t2, .LBB4_9
# %bb.12:                               # %.preheader
	beqz	$a4, .LBB4_18
# %bb.13:
	movgr2fr.w	$fa0, $zero
	addi.d	$a1, $sp, 8
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               # %._crit_edge
                                        #   in Loop: Header=BB4_15 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB4_18
.LBB4_15:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
	ld.d	$a3, $a6, 0
	ld.wu	$a2, $a3, 0
	addi.w	$a7, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB4_14
# %bb.16:                               # %.lr.ph
                                        #   in Loop: Header=BB4_15 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$a3, $a3, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB4_17:                               #   Parent Loop BB4_15 Depth=1
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
	bgez	$t0, .LBB4_17
	b	.LBB4_14
.LBB4_18:                               # %._crit_edge74
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end4:
	.size	match_calc, .Lfunc_end4-match_calc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Atracking
.LCPI5_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI5_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	Atracking,@function
Atracking:                              # @Atracking
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
	move	$s3, $a2
	ld.d	$s6, $sp, 128
	ld.d	$a2, $a2, 0
	move	$s4, $a7
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s5, $a4
	move	$s0, $a3
	move	$s2, $a1
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.w	$a0, $a0, $s8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	ld.w	$a2, $a1, 0
	ori	$a3, $zero, 1
	addi.w	$a1, $s8, 0
	addi.w	$a7, $s7, 0
	beq	$a2, $a3, .LBB5_11
# %bb.1:
	fld.s	$fa0, $s2, 0
	blez	$a1, .LBB5_6
# %bb.2:                                # %.lr.ph
	slli.d	$a2, $s8, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s7, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, -1
	addi.d	$s2, $s2, 4
	beqz	$a4, .LBB5_6
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s2, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_3
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	ldx.d	$a6, $t0, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_3
.LBB5_6:                                # %.preheader161
	blez	$a7, .LBB5_11
# %bb.7:                                # %.lr.ph166
	slli.d	$a2, $s8, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s7, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s7, 30, 0
	sub.d	$a5, $zero, $s7
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_8:                                #   in Loop: Header=BB5_9 Depth=1
	addi.d	$s1, $s1, 4
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	beqz	$a4, .LBB5_11
.LBB5_9:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_8
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_8
.LBB5_11:                               # %.loopexit
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	bltz	$a1, .LBB5_19
# %bb.12:                               # %.lr.ph169.preheader
	addi.d	$a3, $s8, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB5_14
# %bb.13:
	move	$a3, $zero
	b	.LBB5_17
.LBB5_14:                               # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI5_0)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB5_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a6, $vr1, 0
	vstelm.w	$vr4, $a6, 0, 0
	vpickve2gr.d	$a6, $vr1, 1
	vstelm.w	$vr4, $a6, 0, 1
	vpickve2gr.d	$a6, $vr2, 0
	vstelm.w	$vr3, $a6, 0, 0
	vpickve2gr.d	$a6, $vr2, 1
	vstelm.w	$vr3, $a6, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_15
# %bb.16:                               # %middle.block
	beq	$a2, $a3, .LBB5_19
.LBB5_17:                               # %.lr.ph169.preheader72
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB5_18:                               # %.lr.ph169
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB5_18
.LBB5_19:                               # %.preheader160
	bltz	$a7, .LBB5_27
# %bb.20:                               # %.lr.ph172
	ld.d	$a2, $ra, 0
	addi.d	$a4, $s7, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB5_22
# %bb.21:
	move	$a4, $zero
	b	.LBB5_25
.LBB5_22:                               # %vector.ph8
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a5, %pc_lo12(.LCPI5_1)
	addi.d	$a5, $a2, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a6, $a4
	.p2align	4, , 16
.LBB5_23:                               # %vector.body11
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a5, -16
	vst	$vr4, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_23
# %bb.24:                               # %middle.block17
	beq	$a3, $a4, .LBB5_27
.LBB5_25:                               # %scalar.ph6.preheader
	nor	$a5, $a4, $zero
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB5_26:                               # %scalar.ph6
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB5_26
.LBB5_27:                               # %._crit_edge
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	add.d	$s2, $a2, $a7
	stx.b	$zero, $a2, $a7
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $a0, $a1
	add.d	$s1, $a1, $a7
	stx.b	$zero, $a1, $a7
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltz	$a0, .LBB5_58
# %bb.28:                               # %.lr.ph200.preheader
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	ori	$a1, $zero, 111
	ori	$a2, $zero, 45
	ori	$a3, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB5_29:                               # %.lr.ph200
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_39 Depth 2
                                        #     Child Loop BB5_43 Depth 2
                                        #     Child Loop BB5_49 Depth 2
                                        #     Child Loop BB5_54 Depth 2
	addi.w	$a7, $s8, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $ra, $a6
	addi.w	$t0, $s7, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB5_32
# %bb.30:                               #   in Loop: Header=BB5_29 Depth=1
	beqz	$t1, .LBB5_33
# %bb.31:                               #   in Loop: Header=BB5_29 Depth=1
	sub.d	$a6, $s8, $t1
	b	.LBB5_34
	.p2align	4, , 16
.LBB5_32:                               #   in Loop: Header=BB5_29 Depth=1
	addi.d	$a6, $s8, -1
	b	.LBB5_35
	.p2align	4, , 16
.LBB5_33:                               #   in Loop: Header=BB5_29 Depth=1
	addi.d	$a6, $s8, -1
.LBB5_34:                               #   in Loop: Header=BB5_29 Depth=1
	move	$t1, $a0
.LBB5_35:                               #   in Loop: Header=BB5_29 Depth=1
	nor	$t2, $a6, $zero
	add.w	$t3, $s8, $t2
	beqz	$t3, .LBB5_45
# %bb.36:                               # %.lr.ph178.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	bltu	$t3, $a4, .LBB5_41
# %bb.37:                               # %.lr.ph178.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	sub.d	$t4, $s2, $s1
	bltu	$t4, $a4, .LBB5_41
# %bb.38:                               # %vector.ph44
                                        #   in Loop: Header=BB5_29 Depth=1
	bstrpick.d	$t6, $t3, 31, 0
	bstrpick.d	$t4, $t6, 31, 4
	slli.d	$t7, $t4, 4
	sub.d	$t3, $t3, $t7
	sub.d	$t4, $s1, $t7
	sub.d	$t5, $s2, $t7
	addi.d	$t8, $s2, -16
	addi.d	$s1, $s1, -16
	move	$s2, $t7
	.p2align	4, , 16
.LBB5_39:                               # %vector.body48
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $t8, 0
	vst	$vr1, $s1, 0
	addi.d	$s2, $s2, -16
	addi.d	$t8, $t8, -16
	addi.d	$s1, $s1, -16
	bnez	$s2, .LBB5_39
# %bb.40:                               # %middle.block55
                                        #   in Loop: Header=BB5_29 Depth=1
	bne	$t7, $t6, .LBB5_42
	b	.LBB5_44
	.p2align	4, , 16
.LBB5_41:                               #   in Loop: Header=BB5_29 Depth=1
	move	$t4, $s1
	move	$t5, $s2
.LBB5_42:                               # %.lr.ph178.preheader63
                                        #   in Loop: Header=BB5_29 Depth=1
	move	$t6, $t4
	move	$t7, $t5
	.p2align	4, , 16
.LBB5_43:                               # %.lr.ph178
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t5, $t7, -1
	st.b	$a1, $t7, -1
	addi.d	$t4, $t6, -1
	addi.w	$t3, $t3, -1
	st.b	$a2, $t6, -1
	move	$t6, $t4
	move	$t7, $t5
	bnez	$t3, .LBB5_43
.LBB5_44:                               # %._crit_edge179.loopexit
                                        #   in Loop: Header=BB5_29 Depth=1
	add.d	$a5, $s8, $a5
	add.d	$a5, $t2, $a5
	move	$s2, $t5
	move	$s1, $t4
.LBB5_45:                               # %._crit_edge179
                                        #   in Loop: Header=BB5_29 Depth=1
	beq	$t1, $a0, .LBB5_51
# %bb.46:                               # %.lr.ph188.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	addi.w	$t2, $zero, -9
	nor	$t5, $t1, $zero
	bltu	$t2, $t1, .LBB5_52
# %bb.47:                               # %.lr.ph188.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	sub.d	$t2, $s2, $s1
	bltu	$t2, $a3, .LBB5_52
# %bb.48:                               # %vector.ph24
                                        #   in Loop: Header=BB5_29 Depth=1
	bstrpick.d	$t2, $t5, 30, 3
	slli.d	$t6, $t2, 3
	sub.d	$t4, $t5, $t6
	sub.d	$t2, $s1, $t6
	sub.d	$t3, $s2, $t6
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $a5, 0
	addi.d	$a5, $s2, -4
	addi.d	$t7, $s1, -4
	move	$t8, $t6
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB5_49:                               # %vector.body27
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $a5, 0, 0
	vstelm.w	$vr1, $a5, -4, 0
	vstelm.w	$vr2, $t7, 0, 0
	vstelm.w	$vr2, $t7, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$t8, $t8, -8
	addi.d	$a5, $a5, -8
	addi.d	$t7, $t7, -8
	bnez	$t8, .LBB5_49
# %bb.50:                               # %middle.block33
                                        #   in Loop: Header=BB5_29 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$a5, $vr3, 0
	bne	$t6, $t5, .LBB5_53
	b	.LBB5_55
	.p2align	4, , 16
.LBB5_51:                               #   in Loop: Header=BB5_29 Depth=1
	move	$t3, $s2
	move	$t2, $s1
	b	.LBB5_55
	.p2align	4, , 16
.LBB5_52:                               #   in Loop: Header=BB5_29 Depth=1
	move	$t4, $t5
	move	$t2, $s1
	move	$t3, $s2
.LBB5_53:                               # %.lr.ph188.preheader62
                                        #   in Loop: Header=BB5_29 Depth=1
	add.d	$a5, $a5, $t4
	.p2align	4, , 16
.LBB5_54:                               # %.lr.ph188
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t3, -1
	addi.d	$t3, $t3, -1
	st.b	$a1, $t2, -1
	addi.w	$t4, $t4, -1
	addi.d	$t2, $t2, -1
	bnez	$t4, .LBB5_54
.LBB5_55:                               # %._crit_edge189
                                        #   in Loop: Header=BB5_29 Depth=1
	blez	$a7, .LBB5_63
# %bb.56:                               # %._crit_edge189
                                        #   in Loop: Header=BB5_29 Depth=1
	blez	$t0, .LBB5_63
# %bb.57:                               #   in Loop: Header=BB5_29 Depth=1
	add.d	$s7, $t1, $s7
	addi.d	$s2, $t3, -1
	st.b	$a1, $t3, -1
	addi.d	$s1, $t2, -1
	addi.w	$a5, $a5, 2
	st.b	$a1, $t2, -1
	move	$s8, $a6
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	bge	$a6, $a5, .LBB5_29
.LBB5_58:                               # %._crit_edge201
	blez	$s4, .LBB5_60
	.p2align	4, , 16
.LBB5_59:                               # %.lr.ph209
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s3, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 8
	bnez	$s4, .LBB5_59
.LBB5_60:                               # %.preheader
	blez	$s6, .LBB5_62
	.p2align	4, , 16
.LBB5_61:                               # %.lr.ph211
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, -1
	addi.d	$fp, $fp, 8
	bnez	$s6, .LBB5_61
.LBB5_62:                               # %._crit_edge212
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
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
.LBB5_63:
	move	$s2, $t3
	move	$s1, $t2
	bgtz	$s4, .LBB5_59
	b	.LBB5_60
.Lfunc_end5:
	.size	Atracking, .Lfunc_end5-Atracking
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Q__align_gapmap
.LCPI6_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI6_3:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI6_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI6_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI6_2:
	.word	0x461c4000                      # float 1.0E+4
	.text
	.globl	Q__align_gapmap
	.p2align	5
	.type	Q__align_gapmap,@function
Q__align_gapmap:                        # @Q__align_gapmap
# %bb.0:
	addi.d	$sp, $sp, -624
	st.d	$ra, $sp, 616                   # 8-byte Folded Spill
	st.d	$fp, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s1, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	st.d	$s3, $sp, 576                   # 8-byte Folded Spill
	st.d	$s4, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 560                   # 8-byte Folded Spill
	st.d	$s6, $sp, 552                   # 8-byte Folded Spill
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	st.d	$s8, $sp, 536                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 520                  # 8-byte Folded Spill
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $a2
	move	$s3, $a1
	move	$s7, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$a1, %pc_hi20(Q__align_gapmap.orlgth1)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.w	$s8, $a1, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.w	$fp, $a0, 0
	pcalau12i	$s0, %pc_hi20(Q__align_gapmap.mseq1)
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.mseq2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bnez	$s8, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	move	$s1, $fp
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$fp, $s1
	st.d	$a0, $s0, %pc_lo12(Q__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s8, $a1, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.mseq2)
.LBB6_2:
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Q__align_gapmap.orlgth2)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.w	$s5, $a1, %pc_lo12(Q__align_gapmap.orlgth2)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	addi.w	$a6, $a0, 0
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.w1)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.w2)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.initverticalw)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.lastverticalw)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.m)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.mp)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(Q__align_gapmap.mseq)
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.digf1)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.digf2)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.diaf1)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.diaf2)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz1)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz2)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapf1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapf2)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.ogcp1g)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.ogcp2g)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fgcp1g)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fgcp2g)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_h_dg_n1_p)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_h_dg_n2_p)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_h_dg_n1_p)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_h_dg_n2_p)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz_n1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz_n2)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.cpmx1)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(Q__align_gapmap.cpmx2)
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.floatwork)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.intwork)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$s3, $sp, 312                   # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	blt	$s8, $s2, .LBB6_4
# %bb.3:
	bge	$s5, $a6, .LBB6_8
.LBB6_4:
	move	$s3, $a7
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(Q__align_gapmap.match)
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	blez	$s8, .LBB6_7
# %bb.5:
	blez	$s5, .LBB6_7
# %bb.6:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(Q__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(Q__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(Q__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s8, $a0, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
.LBB6_7:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	movgr2fr.w	$fa1, $s1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a0
	addi.w	$s0, $s8, 100
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
	addi.w	$s1, $s5, 100
	addi.w	$s4, $s5, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(Q__align_gapmap.match)
	addi.w	$s6, $s8, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s1, $s0
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$fp, $s3
	st.d	$a0, $s3, %pc_lo12(Q__align_gapmap.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz_n1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(Q__align_gapmap.cpmx2)
	slt	$a0, $s1, $s0
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$a7, $fp
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.intwork)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$s8, $a0, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$s5, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
	ld.d	$s3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
.LBB6_8:
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	blez	$a0, .LBB6_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $a7, %pc_lo12(Q__align_gapmap.mseq)
	ld.d	$a1, $s0, %pc_lo12(Q__align_gapmap.mseq1)
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	move	$a3, $s7
	.p2align	4, , 16
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s2
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_10
.LBB6_11:                               # %.preheader566
	blez	$a5, .LBB6_14
# %bb.12:                               # %.lr.ph570
	ld.d	$a1, $a7, %pc_lo12(Q__align_gapmap.mseq)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	move	$a2, $a5
	move	$a3, $s3
	.p2align	4, , 16
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a6
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_13
.LBB6_14:                               # %._crit_edge
	ld.d	$s1, $sp, 632
	movgr2fr.w	$fs0, $fp
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s0, 0
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	blt	$a0, $s8, .LBB6_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s5, .LBB6_17
# %bb.16:                               # %._crit_edge720
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB6_21
.LBB6_17:
	move	$s6, $s7
	move	$s7, $s1
	beqz	$a0, .LBB6_20
# %bb.18:
	beqz	$a1, .LBB6_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s8, $a0, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s5, $a1, %pc_lo12(Q__align_gapmap.orlgth2)
	ld.w	$a1, $s0, 0
.LBB6_20:
	slt	$a2, $a0, $s8
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s8, $a2
	or	$s1, $a2, $a0
	slt	$a0, $a1, $s5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s2, $a0, $a1
	addi.w	$a0, $s1, 10
	addi.w	$a1, $s2, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s1, $fp, 0
	st.w	$s2, $s0, 0
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	move	$s1, $s7
	move	$s7, $s6
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
.LBB6_21:
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.cpmx1)
	ffint.s.w	$fa0, $fs0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(Q__align_gapmap.ijp)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(Q__align_gapmap.ijp)
	move	$a0, $s7
	move	$a2, $s4
	move	$a3, $s2
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, %pc_lo12(Q__align_gapmap.cpmx2)
	move	$a0, $s3
	move	$s6, $s4
	move	$s4, $s2
	move	$s2, $s7
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s7
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	move	$a3, $s5
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	beqz	$s1, .LBB6_23
# %bb.22:
	ld.d	$s0, $sp, 656
	ld.d	$s8, $sp, 648
	ld.d	$s3, $sp, 640
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	move	$a5, $s1
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a1, $fp
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s5
	move	$a5, $s3
	move	$a6, $s0
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	move	$a5, $s1
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a1, $fp
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s5
	move	$a5, $s3
	move	$a6, $s0
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	move	$a5, $s1
	move	$a6, $s8
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	move	$a1, $fp
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s5
	move	$a5, $s3
	move	$a6, $s0
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	move	$a5, $s1
	move	$a6, $s8
	move	$s8, $s1
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a1, $fp
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s5
	move	$a5, $s3
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a1, $s1
	move	$s1, $s2
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	move	$a5, $s8
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s5
	move	$a5, $s8
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB6_24
.LBB6_23:
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a1, $s0
	move	$s1, $s2
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB6_24:
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	move	$s2, $s4
	addi.w	$a0, $zero, -1
	vld	$vr18, $sp, 176                 # 16-byte Folded Reload
	fcvt.d.s	$fa0, $ft10
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	move	$s7, $s1
	blt	$s5, $a0, .LBB6_29
# %bb.25:                               # %.lr.ph573
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.digf2)
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp2g)
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.gapz2)
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$t1, $sp, 328                   # 8-byte Folded Reload
	addi.d	$t3, $t1, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 40
	bgeu	$t1, $t2, .LBB6_44
# %bb.26:
	move	$t2, $zero
.LBB6_27:                               # %scalar.ph.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB6_28:                               # %scalar.ph
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
	bnez	$t1, .LBB6_28
.LBB6_29:                               # %._crit_edge574
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	blt	$s2, $a0, .LBB6_34
# %bb.30:                               # %.lr.ph577
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.digf1)
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.gapz1)
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.gapz_n1)
	addi.d	$t3, $s6, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 40
	bgeu	$t1, $t2, .LBB6_77
# %bb.31:
	move	$t2, $zero
.LBB6_32:                               # %scalar.ph1034.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB6_33:                               # %scalar.ph1034
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
	bnez	$t1, .LBB6_33
.LBB6_34:                               # %._crit_edge578
	ld.d	$a0, $sp, 672
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 664
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $a0, %pc_lo12(Q__align_gapmap.w1)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t7, $a0, %pc_lo12(Q__align_gapmap.w2)
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$t8, $a0, %got_pc_lo12(RNAscoremtx)
	ld.bu	$a0, $t8, 0
	ori	$a1, $zero, 114
	move	$fp, $t5
	move	$s1, $t7
	st.d	$t8, $sp, 168                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB6_37
# %bb.35:
	beqz	$s2, .LBB6_110
# %bb.36:                               # %.lr.ph.preheader.i
	ld.d	$s4, $s5, %pc_lo12(Q__align_gapmap.initverticalw)
	slli.d	$a0, $s6, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_38
.LBB6_37:
	ld.d	$s4, $s5, %pc_lo12(Q__align_gapmap.initverticalw)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align_gapmap.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s4
	move	$a3, $zero
	move	$a4, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_38:                               # %clearvec.exit
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	vld	$vr18, $sp, 176                 # 16-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$t5, $fp
	move	$t7, $s1
	beqz	$a0, .LBB6_43
# %bb.39:
	ld.d	$t8, $sp, 168                   # 8-byte Folded Reload
	beqz	$s2, .LBB6_42
# %bb.40:                               # %.lr.ph.i
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s6
	.p2align	4, , 16
.LBB6_41:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	fldx.s	$fa0, $a4, $a1
	fld.s	$fa1, $s4, 0
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $s4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s4, 0
	move	$s4, $a4
	bnez	$a2, .LBB6_41
.LBB6_42:
	move	$t6, $zero
	b	.LBB6_111
.LBB6_43:
	ori	$t6, $zero, 1
	ld.d	$t8, $sp, 168                   # 8-byte Folded Reload
	b	.LBB6_111
.LBB6_44:                               # %vector.memcheck
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB6_294
# %bb.45:                               # %vector.memcheck
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB6_294
# %bb.46:                               # %vector.memcheck
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB6_294
# %bb.47:                               # %vector.memcheck
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB6_294
# %bb.48:                               # %vector.memcheck
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB6_294
# %bb.49:                               # %vector.memcheck
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB6_294
# %bb.50:                               # %vector.memcheck
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB6_294
# %bb.51:                               # %vector.memcheck
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB6_294
# %bb.52:                               # %vector.memcheck
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_294
# %bb.53:                               # %vector.memcheck
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_294
# %bb.54:                               # %vector.memcheck
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_294
# %bb.55:                               # %vector.memcheck
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_294
# %bb.56:                               # %vector.memcheck
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_294
# %bb.57:                               # %vector.memcheck
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_294
# %bb.58:                               # %vector.memcheck
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB6_294
# %bb.59:                               # %vector.memcheck
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_294
# %bb.60:                               # %vector.memcheck
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_294
# %bb.61:                               # %vector.memcheck
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_294
# %bb.62:                               # %vector.memcheck
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_294
# %bb.63:                               # %vector.memcheck
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_294
# %bb.64:                               # %vector.memcheck
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	bnez	$s0, .LBB6_27
# %bb.65:                               # %vector.memcheck
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_27
# %bb.66:                               # %vector.memcheck
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_27
# %bb.67:                               # %vector.memcheck
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_27
# %bb.68:                               # %vector.memcheck
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_27
# %bb.69:                               # %vector.memcheck
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB6_27
# %bb.70:                               # %vector.memcheck
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_27
# %bb.71:                               # %vector.memcheck
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_27
# %bb.72:                               # %vector.memcheck
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_27
# %bb.73:                               # %vector.memcheck
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB6_27
# %bb.74:                               # %vector.ph
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
	move	$fp, $a6
	move	$s0, $a7
	move	$s1, $t0
	move	$s2, $t2
	.p2align	4, , 16
.LBB6_75:                               # %vector.body
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
	vld	$vr7, $s0, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 48
	vst	$vr6, $fp, 0
	vfsub.s	$vr5, $vr4, $vr7
	vst	$vr5, $s1, 0
	addi.d	$s2, $s2, -4
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 16
	bnez	$s2, .LBB6_75
# %bb.76:                               # %middle.block
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB6_27
	b	.LBB6_29
.LBB6_77:                               # %vector.memcheck905
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB6_295
# %bb.78:                               # %vector.memcheck905
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB6_295
# %bb.79:                               # %vector.memcheck905
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB6_295
# %bb.80:                               # %vector.memcheck905
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB6_295
# %bb.81:                               # %vector.memcheck905
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB6_295
# %bb.82:                               # %vector.memcheck905
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB6_295
# %bb.83:                               # %vector.memcheck905
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB6_295
# %bb.84:                               # %vector.memcheck905
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB6_295
# %bb.85:                               # %vector.memcheck905
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.86:                               # %vector.memcheck905
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.87:                               # %vector.memcheck905
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.88:                               # %vector.memcheck905
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.89:                               # %vector.memcheck905
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.90:                               # %vector.memcheck905
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.91:                               # %vector.memcheck905
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB6_295
# %bb.92:                               # %vector.memcheck905
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.93:                               # %vector.memcheck905
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.94:                               # %vector.memcheck905
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.95:                               # %vector.memcheck905
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.96:                               # %vector.memcheck905
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.97:                               # %vector.memcheck905
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	bnez	$s0, .LBB6_32
# %bb.98:                               # %vector.memcheck905
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_32
# %bb.99:                               # %vector.memcheck905
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_32
# %bb.100:                              # %vector.memcheck905
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_32
# %bb.101:                              # %vector.memcheck905
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_32
# %bb.102:                              # %vector.memcheck905
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB6_32
# %bb.103:                              # %vector.memcheck905
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_32
# %bb.104:                              # %vector.memcheck905
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_32
# %bb.105:                              # %vector.memcheck905
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_32
# %bb.106:                              # %vector.memcheck905
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB6_32
# %bb.107:                              # %vector.ph1036
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
	move	$fp, $a6
	move	$s0, $a7
	move	$s1, $t0
	move	$s2, $t2
	.p2align	4, , 16
.LBB6_108:                              # %vector.body1041
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
	vld	$vr7, $s0, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 48
	vst	$vr6, $fp, 0
	vfsub.s	$vr5, $vr4, $vr7
	vst	$vr5, $s1, 0
	addi.d	$s2, $s2, -4
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 16
	bnez	$s2, .LBB6_108
# %bb.109:                              # %middle.block1055
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB6_32
	b	.LBB6_34
.LBB6_110:                              # %clearvec.exit.thread
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sltui	$t6, $a0, 1
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
.LBB6_111:                              # %imp_match_out_vead_tateQ_gapmap.exit
	ld.bu	$a0, $t8, 0
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB6_114
# %bb.112:
	beqz	$t4, .LBB6_119
# %bb.113:                              # %.lr.ph.preheader.i531
	move	$s0, $t6
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $t5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_115
.LBB6_114:
	move	$s0, $t6
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align_gapmap.intwork)
	ori	$a7, $zero, 1
	move	$a0, $t5
	move	$a3, $zero
	move	$a4, $t4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_115:                              # %clearvec.exit532
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	vld	$vr18, $sp, 176                 # 16-byte Folded Reload
	move	$t5, $fp
	move	$t6, $s0
	move	$t7, $s1
	ld.d	$t8, $sp, 168                   # 8-byte Folded Reload
	bnez	$s0, .LBB6_119
# %bb.116:
	beqz	$t4, .LBB6_119
# %bb.117:                              # %.lr.ph.i533.preheader
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $t5
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_118:                              # %.lr.ph.i533
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB6_118
.LBB6_119:                              # %imp_match_out_veadQ_gapmap.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a1, $a0, %got_pc_lo12(outgap)
	ld.w	$a2, $a1, 0
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	pcalau12i	$t3, %pc_hi20(.LCPI6_2)
	st.d	$t3, $sp, 160                   # 8-byte Folded Spill
	bne	$a2, $a3, .LBB6_129
# %bb.120:
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.ogcp2g)
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.fgcp2g)
	fld.s	$fa3, $a2, 0
	fld.s	$fa4, $a3, 0
	fld.s	$fa5, $a4, 0
	fld.s	$fa6, $a5, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	ld.d	$a4, $s5, %pc_lo12(Q__align_gapmap.initverticalw)
	movgr2fr.w	$fa7, $zero
	fmadd.s	$fa0, $fa0, $fa1, $fa7
	fld.s	$fa1, $a2, 0
	fld.s	$fa7, $a4, 0
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fadd.s	$fa1, $fa0, $fa7
	fst.s	$fa1, $a4, 0
	fld.s	$fa1, $t5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t5, 0
	blez	$s2, .LBB6_124
# %bb.121:                              # %.lr.ph588
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	addi.d	$a6, $s6, 1
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$t0, $a6, -1
	ori	$t1, $zero, 8
	ori	$a7, $zero, 1
	bgeu	$t0, $t1, .LBB6_215
.LBB6_122:                              # %scalar.ph1107.preheader
	alsl.d	$a5, $a7, $a5, 2
	alsl.d	$a4, $a7, $a4, 2
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB6_123:                              # %scalar.ph1107
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a5, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 4
	bnez	$a6, .LBB6_123
.LBB6_124:                              # %.preheader561
	blez	$t4, .LBB6_152
# %bb.125:                              # %.lr.ph591
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.gapz_n1)
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a7, $a5, -1
	ori	$t0, $zero, 8
	ori	$a6, $zero, 1
	bgeu	$a7, $t0, .LBB6_221
.LBB6_126:                              # %scalar.ph1145.preheader
	alsl.d	$a4, $a6, $a4, 2
	alsl.d	$a7, $a6, $t5, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB6_127:                              # %scalar.ph1145
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a7, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a7, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a4, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a7, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 4
	bnez	$a5, .LBB6_127
.LBB6_128:                              # %.loopexit562.thread754
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a2, 0
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	b	.LBB6_144
.LBB6_129:                              # %.preheader565
	blez	$t4, .LBB6_136
# %bb.130:                              # %.lr.ph581
	pcalau12i	$a2, %got_pc_hi20(offset)
	ld.d	$a2, $a2, %got_pc_lo12(offset)
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a6, $zero, 4
	ori	$a5, $zero, 1
	bltu	$a4, $a6, .LBB6_134
# %bb.131:                              # %vector.ph1060
	move	$a6, $a4
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $a7, 1, 0
	vreplgr2vr.w	$vr0, $a2
	pcalau12i	$a7, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a7, %pc_lo12(.LCPI6_1)
	addi.d	$a7, $t5, 4
	lu52i.d	$t0, $zero, -1026
	vreplgr2vr.d	$vr2, $t0
	move	$t0, $a6
	.p2align	4, , 16
.LBB6_132:                              # %vector.body1065
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr0, $vr1
	vpickve2gr.w	$t1, $vr3, 3
	movgr2fr.w	$fa4, $t1
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$t1, $vr3, 2
	movgr2fr.w	$fa5, $t1
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$t1, $vr3, 1
	movgr2fr.w	$fa4, $t1
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$t1, $vr3, 0
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a7, 0
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
	vst	$vr3, $a7, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB6_132
# %bb.133:                              # %middle.block1069
	beq	$a4, $a6, .LBB6_136
.LBB6_134:                              # %scalar.ph1058.preheader
	mul.d	$a4, $a2, $a5
	alsl.d	$a6, $a5, $t5, 2
	sub.d	$a3, $a3, $a5
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_135:                              # %scalar.ph1058
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a6, 0
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a6, 0
	add.w	$a4, $a4, $a2
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, 4
	bnez	$a3, .LBB6_135
.LBB6_136:                              # %.preheader563
	blez	$s2, .LBB6_143
# %bb.137:                              # %.lr.ph584
	pcalau12i	$a2, %got_pc_hi20(offset)
	ld.d	$a2, $a2, %got_pc_lo12(offset)
	ld.w	$a2, $a2, 0
	ld.d	$a3, $s5, %pc_lo12(Q__align_gapmap.initverticalw)
	addi.d	$a4, $s6, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a5, $a4, -1
	ori	$a7, $zero, 4
	ori	$a6, $zero, 1
	bltu	$a5, $a7, .LBB6_141
# %bb.138:                              # %vector.ph1074
	move	$a7, $a5
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a6, $a5
	bstrins.d	$a6, $t0, 1, 0
	vreplgr2vr.w	$vr0, $a2
	pcalau12i	$t0, %pc_hi20(.LCPI6_1)
	vld	$vr1, $t0, %pc_lo12(.LCPI6_1)
	addi.d	$t0, $a3, 4
	lu52i.d	$t1, $zero, -1026
	vreplgr2vr.d	$vr2, $t1
	move	$t1, $a7
	.p2align	4, , 16
.LBB6_139:                              # %vector.body1079
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr0, $vr1
	vpickve2gr.w	$t2, $vr3, 3
	movgr2fr.w	$fa4, $t2
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$t2, $vr3, 2
	movgr2fr.w	$fa5, $t2
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$t2, $vr3, 1
	movgr2fr.w	$fa4, $t2
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$t2, $vr3, 0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $t0, 0
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
	vst	$vr3, $t0, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 16
	bnez	$t1, .LBB6_139
# %bb.140:                              # %middle.block1086
	beq	$a5, $a7, .LBB6_143
.LBB6_141:                              # %scalar.ph1072.preheader
	mul.d	$a5, $a2, $a6
	alsl.d	$a3, $a6, $a3, 2
	sub.d	$a4, $a4, $a6
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_142:                              # %scalar.ph1072
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a3, 0
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a3, 0
	add.w	$a5, $a5, $a2
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB6_142
.LBB6_143:                              # %.loopexit562
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a2, 0
	blez	$t4, .LBB6_153
.LBB6_144:                              # %.lr.ph595
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.mp)
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a5, $a4, -1
	ori	$a7, $zero, 8
	ori	$a6, $zero, 1
	bltu	$a5, $a7, .LBB6_149
# %bb.145:                              # %vector.memcheck1165
	sub.d	$a7, $a2, $t5
	addi.d	$a7, $a7, 4
	ori	$t0, $zero, 32
	bltu	$a7, $t0, .LBB6_149
# %bb.146:                              # %vector.ph1168
	move	$t0, $zero
	move	$a7, $a5
	bstrins.d	$a7, $zero, 2, 0
	ori	$t1, $zero, 1
	move	$a6, $a5
	bstrins.d	$a6, $t1, 2, 0
	vreplvei.w	$vr0, $vr18, 0
	addi.d	$t1, $a3, 20
	vrepli.b	$vr1, 0
	lu12i.w	$t2, 287172
	vreplgr2vr.w	$vr2, $t2
	move	$t2, $a7
	.p2align	4, , 16
.LBB6_147:                              # %vector.body1173
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t3, $t1, $t0
	add.d	$t4, $t5, $t0
	vldx	$vr3, $t5, $t0
	vld	$vr4, $t4, 16
	vst	$vr1, $t3, -16
	vstx	$vr1, $t1, $t0
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	vfmadd.s	$vr4, $vr0, $vr2, $vr4
	add.d	$t3, $a2, $t0
	vst	$vr3, $t3, 4
	vst	$vr4, $t3, 20
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB6_147
# %bb.148:                              # %middle.block1179
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	beq	$a5, $a7, .LBB6_151
.LBB6_149:                              # %scalar.ph1166.preheader
	fld.s	$fa0, $t3, %pc_lo12(.LCPI6_2)
	slli.d	$a5, $a6, 2
	addi.d	$a7, $t5, -4
	sub.d	$a4, $a4, $a6
	.p2align	4, , 16
.LBB6_150:                              # %scalar.ph1166
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a7, $a5
	stx.w	$zero, $a3, $a5
	fmadd.s	$fa1, $ft10, $fa0, $fa1
	fstx.s	$fa1, $a2, $a5
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB6_150
.LBB6_151:
	move	$t1, $zero
	b	.LBB6_154
.LBB6_152:                              # %.loopexit562.thread
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a2, 0
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
.LBB6_153:                              # %._crit_edge596
	ori	$t1, $zero, 1
	beqz	$t4, .LBB6_291
.LBB6_154:                              # %._crit_edge596.thread
	ori	$a3, $zero, 0
	lu32i.d	$a3, -1
	add.d	$a3, $a0, $a3
	srai.d	$a3, $a3, 30
	fldx.s	$fa0, $t5, $a3
	st.d	$t1, $sp, 352                   # 8-byte Folded Spill
	move	$t1, $zero
.LBB6_155:
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	ld.w	$a3, $a1, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t2, $a1, %pc_lo12(Q__align_gapmap.lastverticalw)
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	sltu	$a1, $zero, $a3
	add.w	$a3, $a1, $s6
	ori	$a1, $zero, 2
	fst.s	$fa0, $t2, 0
	st.d	$t2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	blt	$a3, $a1, .LBB6_183
# %bb.156:                              # %.lr.ph632
	ld.d	$a1, $s5, %pc_lo12(Q__align_gapmap.initverticalw)
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(Q__align_gapmap.cpmx1)
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.floatwork)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.intwork)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 33, 2
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.ijp)
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.mp)
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fgcp2g)
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.ogcp2g)
	st.d	$t1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	st.d	$t1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	st.d	$t1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	st.d	$t1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	st.d	$t1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.gapz_n1)
	st.d	$t1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fgcp1g)
	st.d	$t1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.ogcp1g)
	st.d	$t1, $sp, 240                   # 8-byte Folded Spill
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	add.d	$a0, $a0, $t1
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	addi.d	$s2, $a2, 4
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 4
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	addi.d	$fp, $a5, 4
	addi.d	$s1, $a6, 4
	addi.d	$s4, $a7, 4
	addi.d	$s7, $a4, 4
	addi.d	$s6, $t0, 4
	movgr2fr.w	$fs1, $zero
	ori	$a5, $zero, 1
	ori	$s0, $zero, 208
	fmov.s	$fs0, $fs1
	move	$a1, $t5
	addi.d	$s8, $sp, 416
	ori	$a6, $zero, 26
	st.d	$t6, $sp, 128                   # 8-byte Folded Spill
	b	.LBB6_158
	.p2align	4, , 16
.LBB6_157:                              # %._crit_edge624
                                        #   in Loop: Header=BB6_158 Depth=1
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	fldx.s	$fa0, $t5, $a1
	fstx.s	$fa0, $t2, $s3
	move	$a5, $a0
	move	$a1, $t5
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ori	$a6, $zero, 26
	beq	$a0, $a2, .LBB6_184
.LBB6_158:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_162 Depth 2
                                        #       Child Loop BB6_163 Depth 3
                                        #     Child Loop BB6_168 Depth 2
                                        #       Child Loop BB6_170 Depth 3
                                        #     Child Loop BB6_173 Depth 2
                                        #     Child Loop BB6_177 Depth 2
	addi.d	$a0, $a5, -1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a0
	move	$t5, $t7
	move	$t7, $a1
	fst.s	$fa0, $a1, 0
	ld.bu	$a0, $t8, 0
	slli.d	$s3, $a5, 2
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB6_161
# %bb.159:                              #   in Loop: Header=BB6_158 Depth=1
	bnez	$t1, .LBB6_174
# %bb.160:                              # %clearvec.exit539.thread
                                        #   in Loop: Header=BB6_158 Depth=1
	move	$a0, $t5
	move	$a1, $zero
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$t5, $sp, 216                   # 8-byte Folded Spill
	st.d	$t7, $sp, 208                   # 8-byte Folded Spill
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 216                   # 8-byte Folded Reload
	vld	$vr18, $sp, 176                 # 16-byte Folded Reload
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	beqz	$t6, .LBB6_172
	b	.LBB6_174
	.p2align	4, , 16
.LBB6_161:                              #   in Loop: Header=BB6_158 Depth=1
	pcalau12i	$a0, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$a0, $a0, %got_pc_lo12(n_dis_consweight_multi)
	move	$a1, $zero
	.p2align	4, , 16
.LBB6_162:                              #   Parent Loop BB6_158 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_163 Depth 3
	move	$a2, $zero
	move	$a3, $a0
	fmov.s	$fa0, $fs1
	.p2align	4, , 16
.LBB6_163:                              #   Parent Loop BB6_158 Depth=1
                                        #     Parent Loop BB6_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a4, $s5, $a2
	fld.s	$fa1, $a3, 0
	fldx.s	$fa2, $a4, $s3
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 104
	bne	$a2, $s0, .LBB6_163
# %bb.164:                              #   in Loop: Header=BB6_162 Depth=2
	slli.d	$a2, $a1, 2
	fstx.s	$fa0, $a2, $s8
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	bne	$a1, $a6, .LBB6_162
# %bb.165:                              # %.preheader.i
                                        #   in Loop: Header=BB6_158 Depth=1
	bnez	$t1, .LBB6_174
# %bb.166:                              # %.lr.ph73.i.preheader
                                        #   in Loop: Header=BB6_158 Depth=1
	move	$t0, $a5
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $t5
	b	.LBB6_168
	.p2align	4, , 16
.LBB6_167:                              # %._crit_edge.i
                                        #   in Loop: Header=BB6_168 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 4
	beqz	$a0, .LBB6_171
.LBB6_168:                              # %.lr.ph73.i
                                        #   Parent Loop BB6_158 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_170 Depth 3
	ld.d	$a5, $a1, 0
	ld.wu	$a4, $a5, 0
	addi.w	$a6, $a4, 0
	st.w	$zero, $a3, 0
	bltz	$a6, .LBB6_167
# %bb.169:                              # %.lr.ph.i535
                                        #   in Loop: Header=BB6_168 Depth=2
	ld.d	$a6, $a2, 0
	addi.d	$a5, $a5, 4
	fmov.s	$fa0, $fs1
	.p2align	4, , 16
.LBB6_170:                              #   Parent Loop BB6_158 Depth=1
                                        #     Parent Loop BB6_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a4, $a4, 2
	fldx.s	$fa1, $a4, $s8
	fld.s	$fa2, $a6, 0
	ld.wu	$a4, $a5, 0
	addi.d	$a6, $a6, 4
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.w	$a7, $a4, 0
	addi.d	$a5, $a5, 4
	bgez	$a7, .LBB6_170
	b	.LBB6_167
	.p2align	4, , 16
.LBB6_171:                              # %clearvec.exit539
                                        #   in Loop: Header=BB6_158 Depth=1
	move	$a5, $t0
	bnez	$t6, .LBB6_174
.LBB6_172:                              # %.lr.ph.i541.preheader
                                        #   in Loop: Header=BB6_158 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $t5
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_173:                              # %.lr.ph.i541
                                        #   Parent Loop BB6_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB6_173
.LBB6_174:                              # %imp_match_out_veadQ_gapmap.exit547
                                        #   in Loop: Header=BB6_158 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s3
	fst.s	$fa0, $t5, 0
	addi.d	$a0, $a5, 1
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_157
# %bb.175:                              # %.lr.ph623.preheader
                                        #   in Loop: Header=BB6_158 Depth=1
	move	$ra, $a5
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $s3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa1, $a4, $s3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	fldx.s	$fa2, $a4, $s3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	fldx.s	$fa3, $a4, $s3
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	fldx.s	$fa4, $a5, $s3
	slli.d	$a4, $a0, 2
	fldx.s	$fa5, $a5, $a4
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	fldx.s	$fa6, $a4, $s3
	fld.s	$ft0, $t7, 0
	fld.s	$ft1, $t3, %pc_lo12(.LCPI6_2)
	slli.d	$a4, $ra, 3
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a4
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa7, $a4, $s3
	fmadd.s	$ft0, $ft10, $ft1, $ft0
	addi.d	$a4, $t5, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $zero, -1
	b	.LBB6_177
	.p2align	4, , 16
.LBB6_176:                              #   in Loop: Header=BB6_177 Depth=2
	fmul.s	$ft2, $fa4, $ft2
	fadd.s	$ft1, $ft1, $ft2
	fcmp.cult.s	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	movcf2gr	$a7, $fcc0
	fldx.s	$ft1, $a4, $a2
	masknez	$t0, $a1, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $t0
	fadd.s	$ft1, $fs0, $ft1
	fstx.s	$ft1, $a4, $a2
	addi.d	$a2, $a2, 4
	addi.w	$a1, $a1, 1
	addi.d	$a6, $a6, -1
	beq	$t4, $a1, .LBB6_157
.LBB6_177:                              # %.lr.ph623
                                        #   Parent Loop BB6_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s1, $a2
	fldx.s	$ft1, $t7, $a2
	fldx.s	$ft3, $s6, $a2
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $s4, $a2
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s7, $a2
	fmul.s	$ft4, $fa6, $ft4
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$ft5, $a7, $a2
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a5, $a2
	bcnez	$fcc0, .LBB6_179
# %bb.178:                              #   in Loop: Header=BB6_177 Depth=2
	add.d	$a7, $a3, $a6
	stx.w	$a7, $a5, $a2
	fmov.s	$fs0, $ft2
.LBB6_179:                              #   in Loop: Header=BB6_177 Depth=2
	ld.d	$a7, $sp, 408                   # 8-byte Folded Reload
	add.d	$a7, $a7, $a2
	fld.s	$ft4, $a7, 0
	fldx.s	$ft3, $s2, $a2
	fldx.s	$ft2, $fp, $a2
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB6_181
# %bb.180:                              #   in Loop: Header=BB6_177 Depth=2
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a2
	sub.d	$t0, $ra, $t0
	stx.w	$t0, $a5, $a2
	fmov.s	$fs0, $ft4
.LBB6_181:                              #   in Loop: Header=BB6_177 Depth=2
	fld.s	$ft4, $a7, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB6_176
# %bb.182:                              #   in Loop: Header=BB6_177 Depth=2
	fstx.s	$ft4, $s2, $a2
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	stx.w	$t0, $a7, $a2
	b	.LBB6_176
.LBB6_183:
	movgr2fr.w	$fs0, $zero
.LBB6_184:                              # %._crit_edge633
	ld.d	$s3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	bnez	$s0, .LBB6_199
# %bb.185:                              # %.preheader560
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_192
# %bb.186:                              # %.lr.ph642
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_190
# %bb.187:                              # %vector.ph1184
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	vld	$vr2, $a5, %pc_lo12(.LCPI6_3)
	pcalau12i	$a5, %pc_hi20(.LCPI6_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI6_4)
	addi.d	$a5, $t5, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_188:                              # %vector.body1191
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
	bnez	$a6, .LBB6_188
# %bb.189:                              # %middle.block1198
	beq	$a2, $a4, .LBB6_192
.LBB6_190:                              # %scalar.ph1182.preheader
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_191:                              # %scalar.ph1182
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
	bnez	$a1, .LBB6_191
.LBB6_192:                              # %.preheader559
	blez	$t0, .LBB6_199
# %bb.193:                              # %.lr.ph645
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a2, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fneg.d	$fa1, $fa1
	addi.d	$a0, $a2, 1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 2
	ori	$a0, $zero, 1
	bltu	$a2, $a3, .LBB6_197
# %bb.194:                              # %vector.ph1203
	move	$a4, $a2
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $a2, 1
	addi.d	$a5, $t2, 8
	vldi	$vr2, -928
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_195:                              # %vector.body1206
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a7, $a3, 31, 0
	addi.d	$t0, $a3, -1
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa3, $t0
	ffint.d.l	$fa3, $fa3
	movgr2fr.d	$fa4, $a7
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa4, $fa4, $fa2
	fld.s	$fa5, $a5, -4
	fld.s	$fa6, $a5, 0
	fsub.d	$fa3, $fa0, $fa3
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa3, $fa1, $fa3, $fa5
	fmadd.d	$fa4, $fa1, $fa4, $fa6
	fcvt.s.d	$fa3, $fa3
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa3, $a5, -4
	fst.s	$fa4, $a5, 0
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -2
	addi.w	$a3, $a3, 2
	bnez	$a6, .LBB6_195
# %bb.196:                              # %middle.block1211
	beq	$a2, $a4, .LBB6_199
.LBB6_197:                              # %scalar.ph1201.preheader
	alsl.d	$a2, $a0, $t2, 2
	sub.d	$a1, $a1, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_198:                              # %scalar.ph1201
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
	bnez	$a1, .LBB6_198
.LBB6_199:                              # %.loopexit
	ld.d	$s4, $t1, %pc_lo12(Q__align_gapmap.mseq1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(Q__align_gapmap.ijp)
	beqz	$t6, .LBB6_201
# %bb.200:
	move	$fp, $t1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $t5
	move	$a1, $t2
	move	$a2, $s7
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s5
	move	$a6, $s6
	move	$a7, $s8
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, %pc_lo12(Q__align_gapmap.mseq1)
	b	.LBB6_282
.LBB6_201:
	ld.d	$a0, $s7, 0
	move	$fp, $t5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	addi.w	$a1, $s7, 0
	addi.w	$a2, $a0, 0
	beq	$s0, $a3, .LBB6_212
# %bb.202:
	move	$t0, $fp
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	fld.s	$fa0, $t1, 0
	blez	$a1, .LBB6_207
# %bb.203:                              # %.lr.ph.i550
	slli.d	$a3, $s7, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	slli.d	$a4, $a0, 32
	srai.d	$a4, $a4, 30
	bstrpick.d	$a5, $s7, 30, 0
	move	$a6, $s7
	b	.LBB6_205
	.p2align	4, , 16
.LBB6_204:                              #   in Loop: Header=BB6_205 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	addi.d	$t1, $t1, 4
	beqz	$a5, .LBB6_207
.LBB6_205:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_204
# %bb.206:                              #   in Loop: Header=BB6_205 Depth=1
	ldx.d	$a7, $s6, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB6_204
.LBB6_207:                              # %.preheader206.i
	blez	$a2, .LBB6_212
# %bb.208:                              # %.lr.ph211.i
	slli.d	$a3, $s7, 32
	srai.d	$a3, $a3, 29
	slli.d	$a4, $a0, 2
	bstrpick.d	$a4, $a4, 32, 2
	slli.d	$a4, $a4, 2
	bstrpick.d	$a5, $a0, 30, 0
	sub.d	$a6, $zero, $a0
	b	.LBB6_210
	.p2align	4, , 16
.LBB6_209:                              #   in Loop: Header=BB6_210 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 4
	beqz	$a5, .LBB6_212
.LBB6_210:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_209
# %bb.211:                              #   in Loop: Header=BB6_210 Depth=1
	ldx.d	$a7, $s6, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB6_209
.LBB6_212:                              # %.loopexit.i
	ld.d	$ra, $sp, 144                   # 8-byte Folded Reload
	bltz	$a1, .LBB6_232
# %bb.213:                              # %.lr.ph214.preheader.i
	addi.d	$a4, $s7, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a3, $a5, .LBB6_227
# %bb.214:
	move	$a4, $zero
	b	.LBB6_230
.LBB6_215:                              # %vector.memcheck1089
	addi.d	$t1, $a4, 4
	alsl.d	$t3, $a6, $a4, 2
	addi.d	$t2, $a2, 8
	sltu	$t2, $t1, $t2
	sltu	$t4, $a2, $t3
	and	$t2, $t2, $t4
	bnez	$t2, .LBB6_293
# %bb.216:                              # %vector.memcheck1089
	addi.d	$t2, $a3, 4
	sltu	$t2, $t1, $t2
	sltu	$t4, $a3, $t3
	and	$t2, $t2, $t4
	bnez	$t2, .LBB6_293
# %bb.217:                              # %vector.memcheck1089
	addi.d	$t2, $a5, 4
	alsl.d	$t4, $a6, $a5, 2
	sltu	$t4, $t1, $t4
	sltu	$t3, $t2, $t3
	and	$t3, $t4, $t3
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	bnez	$t3, .LBB6_122
# %bb.218:                              # %vector.ph1109
	move	$t3, $t0
	bstrins.d	$t3, $zero, 1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	ori	$t4, $zero, 1
	move	$a7, $t0
	vldrepl.w	$vr0, $a2, 4
	bstrins.d	$a7, $t4, 1, 0
	fmul.s	$fa1, $fa1, $fa2
	vreplvei.w	$vr1, $vr1, 0
	move	$t4, $t3
	.p2align	4, , 16
.LBB6_219:                              # %vector.body1112
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t1, 0
	vld	$vr3, $t2, 0
	vfadd.s	$vr2, $vr2, $vr1
	vfmul.s	$vr3, $vr0, $vr3
	vfadd.s	$vr2, $vr2, $vr3
	vst	$vr2, $t1, 0
	addi.d	$t1, $t1, 16
	addi.d	$t4, $t4, -4
	addi.d	$t2, $t2, 16
	bnez	$t4, .LBB6_219
# %bb.220:                              # %middle.block1124
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	bne	$t0, $t3, .LBB6_122
	b	.LBB6_124
.LBB6_221:                              # %vector.memcheck1127
	addi.d	$t0, $t5, 4
	alsl.d	$t2, $a5, $t5, 2
	addi.d	$t1, $a2, 8
	sltu	$t1, $t0, $t1
	sltu	$t3, $a2, $t2
	and	$t1, $t1, $t3
	bnez	$t1, .LBB6_126
# %bb.222:                              # %vector.memcheck1127
	addi.d	$t1, $a3, 4
	sltu	$t1, $t0, $t1
	sltu	$t3, $a3, $t2
	and	$t1, $t1, $t3
	bnez	$t1, .LBB6_126
# %bb.223:                              # %vector.memcheck1127
	addi.d	$t1, $a4, 4
	alsl.d	$t3, $a5, $a4, 2
	sltu	$t3, $t0, $t3
	sltu	$t2, $t1, $t2
	and	$t2, $t3, $t2
	bnez	$t2, .LBB6_126
# %bb.224:                              # %vector.ph1147
	move	$t2, $a7
	bstrins.d	$t2, $zero, 1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	ori	$t3, $zero, 1
	move	$a6, $a7
	vldrepl.w	$vr0, $a2, 4
	bstrins.d	$a6, $t3, 1, 0
	fmul.s	$fa1, $fa1, $fa2
	vreplvei.w	$vr1, $vr1, 0
	move	$t3, $t2
	.p2align	4, , 16
.LBB6_225:                              # %vector.body1150
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vld	$vr3, $t1, 0
	vfadd.s	$vr2, $vr2, $vr1
	vfmul.s	$vr3, $vr0, $vr3
	vfadd.s	$vr2, $vr2, $vr3
	vst	$vr2, $t0, 0
	addi.d	$t0, $t0, 16
	addi.d	$t3, $t3, -4
	addi.d	$t1, $t1, 16
	bnez	$t3, .LBB6_225
# %bb.226:                              # %middle.block1162
	bne	$a7, $t2, .LBB6_126
	b	.LBB6_128
.LBB6_227:                              # %vector.ph1216
	pcalau12i	$a5, %pc_hi20(.LCPI6_5)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_5)
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s6, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_228:                              # %vector.body1219
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
	bnez	$a6, .LBB6_228
# %bb.229:                              # %middle.block1226
	beq	$a3, $a4, .LBB6_232
.LBB6_230:                              # %.lr.ph214.i.preheader
	alsl.d	$a5, $a4, $s6, 3
	sub.d	$a3, $a3, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB6_231:                              # %.lr.ph214.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	bnez	$a3, .LBB6_231
.LBB6_232:                              # %.preheader205.i
	bltz	$a2, .LBB6_240
# %bb.233:                              # %.lr.ph217.i
	ld.d	$a2, $s6, 0
	addi.d	$a4, $a0, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB6_235
# %bb.234:
	move	$a4, $zero
	b	.LBB6_238
.LBB6_235:                              # %vector.ph1231
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(.LCPI6_6)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_6)
	addi.d	$a5, $a2, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_236:                              # %vector.body1234
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a5, -16
	vst	$vr4, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_236
# %bb.237:                              # %middle.block1240
	beq	$a3, $a4, .LBB6_240
.LBB6_238:                              # %scalar.ph1229.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_239:                              # %scalar.ph1229
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB6_239
.LBB6_240:                              # %.preheader204.i
	add.w	$a2, $a0, $s7
	blez	$s8, .LBB6_243
# %bb.241:                              # %.lr.ph219.i
	move	$a3, $s4
	move	$a4, $s8
	.p2align	4, , 16
.LBB6_242:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	add.d	$a6, $a5, $a2
	st.d	$a6, $a3, 0
	stx.b	$zero, $a5, $a2
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB6_242
.LBB6_243:                              # %.preheader203.i
	ld.d	$a3, $sp, 624
	blez	$ra, .LBB6_246
# %bb.244:                              # %.lr.ph221.i
	move	$a4, $s5
	move	$a5, $ra
	.p2align	4, , 16
.LBB6_245:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	add.d	$a7, $a6, $a2
	st.d	$a7, $a4, 0
	stx.b	$zero, $a6, $a2
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB6_245
.LBB6_246:                              # %._crit_edge.i548
	st.w	$zero, $a3, 0
	bltz	$a2, .LBB6_280
# %bb.247:                              # %.lr.ph250.i
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(impmtx)
	ld.d	$a5, $a5, %pc_lo12(impmtx)
	bstrpick.d	$a6, $s8, 31, 0
	bstrpick.d	$a7, $ra, 31, 0
	ori	$t0, $zero, 45
	move	$t1, $a0
	b	.LBB6_249
	.p2align	4, , 16
.LBB6_248:                              # %._crit_edge244.i
                                        #   in Loop: Header=BB6_249 Depth=1
	addi.w	$a4, $a4, 2
	move	$s7, $t2
	blt	$a2, $a4, .LBB6_280
.LBB6_249:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_257 Depth 2
                                        #       Child Loop BB6_258 Depth 3
                                        #       Child Loop BB6_260 Depth 3
                                        #     Child Loop BB6_265 Depth 2
                                        #       Child Loop BB6_266 Depth 3
                                        #       Child Loop BB6_268 Depth 3
                                        #     Child Loop BB6_276 Depth 2
                                        #     Child Loop BB6_279 Depth 2
	addi.w	$t3, $s7, 0
	slli.d	$t2, $t3, 3
	ldx.d	$t2, $s6, $t2
	addi.w	$t4, $t1, 0
	slli.d	$t5, $t4, 2
	ldx.w	$t6, $t2, $t5
	bltz	$t6, .LBB6_252
# %bb.250:                              #   in Loop: Header=BB6_249 Depth=1
	beqz	$t6, .LBB6_253
# %bb.251:                              #   in Loop: Header=BB6_249 Depth=1
	sub.w	$t2, $s7, $t6
	b	.LBB6_254
	.p2align	4, , 16
.LBB6_252:                              #   in Loop: Header=BB6_249 Depth=1
	addi.w	$t2, $s7, -1
	b	.LBB6_255
	.p2align	4, , 16
.LBB6_253:                              #   in Loop: Header=BB6_249 Depth=1
	addi.w	$t2, $s7, -1
.LBB6_254:                              #   in Loop: Header=BB6_249 Depth=1
	ld.d	$t6, $sp, 320                   # 8-byte Folded Reload
.LBB6_255:                              #   in Loop: Header=BB6_249 Depth=1
	nor	$t7, $t2, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB6_257
	b	.LBB6_262
	.p2align	4, , 16
.LBB6_256:                              # %._crit_edge226.i
                                        #   in Loop: Header=BB6_257 Depth=2
	addi.d	$t8, $t8, -1
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	beqz	$t8, .LBB6_261
.LBB6_257:                              # %.preheader200.i
                                        #   Parent Loop BB6_249 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_258 Depth 3
                                        #       Child Loop BB6_260 Depth 3
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	move	$s0, $s4
	move	$s1, $a6
	blez	$s8, .LBB6_259
	.p2align	4, , 16
.LBB6_258:                              # %.lr.ph223.i
                                        #   Parent Loop BB6_249 Depth=1
                                        #     Parent Loop BB6_257 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $fp, 0
	ld.d	$s3, $s0, 0
	add.d	$s2, $s2, $t8
	ldx.b	$s2, $s2, $t2
	addi.d	$s8, $s3, -1
	st.d	$s8, $s0, 0
	st.b	$s2, $s3, -1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB6_258
.LBB6_259:                              # %.preheader199.i
                                        #   in Loop: Header=BB6_257 Depth=2
	move	$fp, $s5
	move	$s0, $a7
	blez	$ra, .LBB6_256
	.p2align	4, , 16
.LBB6_260:                              # %.lr.ph225.i
                                        #   Parent Loop BB6_249 Depth=1
                                        #     Parent Loop BB6_257 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $fp, 0
	addi.d	$s2, $s1, -1
	st.d	$s2, $fp, 0
	st.b	$t0, $s1, -1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB6_260
	b	.LBB6_256
	.p2align	4, , 16
.LBB6_261:                              # %._crit_edge229.loopexit.i
                                        #   in Loop: Header=BB6_249 Depth=1
	add.d	$a4, $s7, $a4
	add.d	$a4, $t7, $a4
	ld.d	$s3, $sp, 312                   # 8-byte Folded Reload
.LBB6_262:                              # %._crit_edge229.i
                                        #   in Loop: Header=BB6_249 Depth=1
	add.w	$t1, $t6, $t1
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 320                   # 8-byte Folded Reload
	beq	$t6, $t7, .LBB6_269
# %bb.263:                              # %.preheader198.preheader.i
                                        #   in Loop: Header=BB6_249 Depth=1
	nor	$t6, $t6, $zero
	b	.LBB6_265
	.p2align	4, , 16
.LBB6_264:                              # %._crit_edge235.i
                                        #   in Loop: Header=BB6_265 Depth=2
	addi.d	$t6, $t6, -1
	addi.d	$a4, $a4, 1
	beqz	$t6, .LBB6_269
.LBB6_265:                              # %.preheader198.i
                                        #   Parent Loop BB6_249 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_266 Depth 3
                                        #       Child Loop BB6_268 Depth 3
	move	$t7, $s4
	move	$t8, $a6
	blez	$s8, .LBB6_267
	.p2align	4, , 16
.LBB6_266:                              # %.lr.ph232.i
                                        #   Parent Loop BB6_249 Depth=1
                                        #     Parent Loop BB6_265 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $t7, 0
	addi.d	$s0, $fp, -1
	st.d	$s0, $t7, 0
	st.b	$t0, $fp, -1
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB6_266
.LBB6_267:                              # %.preheader.i549
                                        #   in Loop: Header=BB6_265 Depth=2
	move	$t7, $s3
	move	$t8, $s5
	move	$fp, $a7
	blez	$ra, .LBB6_264
	.p2align	4, , 16
.LBB6_268:                              # %.lr.ph234.i
                                        #   Parent Loop BB6_249 Depth=1
                                        #     Parent Loop BB6_265 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $t7, 0
	ld.d	$s1, $t8, 0
	add.d	$s0, $s0, $t6
	ldx.b	$s0, $s0, $t1
	addi.d	$s2, $s1, -1
	st.d	$s2, $t8, 0
	st.b	$s0, $s1, -1
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	bnez	$fp, .LBB6_268
	b	.LBB6_264
	.p2align	4, , 16
.LBB6_269:                              # %._crit_edge238.i
                                        #   in Loop: Header=BB6_249 Depth=1
	beq	$t3, $a1, .LBB6_272
# %bb.270:                              # %._crit_edge238.i
                                        #   in Loop: Header=BB6_249 Depth=1
	addi.w	$t6, $a0, 0
	beq	$t4, $t6, .LBB6_272
# %bb.271:                              #   in Loop: Header=BB6_249 Depth=1
	slli.d	$t6, $t3, 2
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	ldx.w	$t6, $t7, $t6
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$t5, $t7, $t5
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $a5, $t6
	slli.d	$t5, $t5, 2
	fldx.s	$fa0, $t6, $t5
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
.LBB6_272:                              #   in Loop: Header=BB6_249 Depth=1
	blez	$t3, .LBB6_281
# %bb.273:                              #   in Loop: Header=BB6_249 Depth=1
	blez	$t4, .LBB6_281
# %bb.274:                              # %.preheader202.i
                                        #   in Loop: Header=BB6_249 Depth=1
	blez	$s8, .LBB6_277
# %bb.275:                              # %.lr.ph241.i
                                        #   in Loop: Header=BB6_249 Depth=1
	move	$t4, $s4
	move	$t5, $a6
	.p2align	4, , 16
.LBB6_276:                              #   Parent Loop BB6_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $s7, 0
	ld.d	$t7, $t4, 0
	ldx.b	$t6, $t6, $t2
	addi.d	$t8, $t7, -1
	st.d	$t8, $t4, 0
	st.b	$t6, $t7, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	addi.d	$s7, $s7, 8
	bnez	$t5, .LBB6_276
.LBB6_277:                              # %.preheader201.i
                                        #   in Loop: Header=BB6_249 Depth=1
	blez	$ra, .LBB6_248
# %bb.278:                              # %.lr.ph243.i
                                        #   in Loop: Header=BB6_249 Depth=1
	move	$t3, $s3
	move	$t4, $s5
	move	$t5, $a7
	.p2align	4, , 16
.LBB6_279:                              #   Parent Loop BB6_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t3, 0
	ld.d	$t7, $t4, 0
	ldx.b	$t6, $t6, $t1
	addi.d	$t8, $t7, -1
	st.d	$t8, $t4, 0
	st.b	$t6, $t7, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	bnez	$t5, .LBB6_279
	b	.LBB6_248
.LBB6_280:
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
.LBB6_281:                              # %Atracking_localhom_gapmap.exit
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
.LBB6_282:                              # %Atracking_localhom_gapmap.exit
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_292
# %bb.283:                              # %Atracking_localhom_gapmap.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_292
# %bb.284:
	blez	$s8, .LBB6_287
.LBB6_285:                              # %.lr.ph648
	ld.d	$fp, $fp, %pc_lo12(Q__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_286:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	bnez	$s8, .LBB6_286
.LBB6_287:                              # %.preheader
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	blez	$a2, .LBB6_290
# %bb.288:                              # %.lr.ph650
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_289:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$a2, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$a2, .LBB6_289
.LBB6_290:                              # %._crit_edge651
	fmov.s	$fa0, $fs0
	fld.d	$fs1, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 528                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 600                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 608                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 616                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 624
	ret
.LBB6_291:
	movgr2fr.w	$fa0, $zero
	ori	$a3, $zero, 1
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	b	.LBB6_155
.LBB6_292:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	bgtz	$s8, .LBB6_285
	b	.LBB6_287
.LBB6_293:
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	b	.LBB6_122
.LBB6_294:
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	b	.LBB6_27
.LBB6_295:
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	b	.LBB6_32
.Lfunc_end6:
	.size	Q__align_gapmap, .Lfunc_end6-Q__align_gapmap
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strictQ.nocount1,@object # @imp_match_init_strictQ.nocount1
	.local	imp_match_init_strictQ.nocount1
	.comm	imp_match_init_strictQ.nocount1,8,8
	.type	imp_match_init_strictQ.nocount2,@object # @imp_match_init_strictQ.nocount2
	.local	imp_match_init_strictQ.nocount2
	.comm	imp_match_init_strictQ.nocount2,8,8
	.type	impalloclen,@object             # @impalloclen
	.local	impalloclen
	.comm	impalloclen,4,4
	.type	Q__align.m,@object              # @Q__align.m
	.local	Q__align.m
	.comm	Q__align.m,8,8
	.type	Q__align.ijp,@object            # @Q__align.ijp
	.local	Q__align.ijp
	.comm	Q__align.ijp,8,8
	.type	Q__align.mp,@object             # @Q__align.mp
	.local	Q__align.mp
	.comm	Q__align.mp,8,8
	.type	Q__align.w1,@object             # @Q__align.w1
	.local	Q__align.w1
	.comm	Q__align.w1,8,8
	.type	Q__align.w2,@object             # @Q__align.w2
	.local	Q__align.w2
	.comm	Q__align.w2,8,8
	.type	Q__align.match,@object          # @Q__align.match
	.local	Q__align.match
	.comm	Q__align.match,8,8
	.type	Q__align.initverticalw,@object  # @Q__align.initverticalw
	.local	Q__align.initverticalw
	.comm	Q__align.initverticalw,8,8
	.type	Q__align.lastverticalw,@object  # @Q__align.lastverticalw
	.local	Q__align.lastverticalw
	.comm	Q__align.lastverticalw,8,8
	.type	Q__align.mseq1,@object          # @Q__align.mseq1
	.local	Q__align.mseq1
	.comm	Q__align.mseq1,8,8
	.type	Q__align.mseq2,@object          # @Q__align.mseq2
	.local	Q__align.mseq2
	.comm	Q__align.mseq2,8,8
	.type	Q__align.mseq,@object           # @Q__align.mseq
	.local	Q__align.mseq
	.comm	Q__align.mseq,8,8
	.type	Q__align.digf1,@object          # @Q__align.digf1
	.local	Q__align.digf1
	.comm	Q__align.digf1,8,8
	.type	Q__align.digf2,@object          # @Q__align.digf2
	.local	Q__align.digf2
	.comm	Q__align.digf2,8,8
	.type	Q__align.diaf1,@object          # @Q__align.diaf1
	.local	Q__align.diaf1
	.comm	Q__align.diaf1,8,8
	.type	Q__align.diaf2,@object          # @Q__align.diaf2
	.local	Q__align.diaf2
	.comm	Q__align.diaf2,8,8
	.type	Q__align.gapz1,@object          # @Q__align.gapz1
	.local	Q__align.gapz1
	.comm	Q__align.gapz1,8,8
	.type	Q__align.gapz2,@object          # @Q__align.gapz2
	.local	Q__align.gapz2
	.comm	Q__align.gapz2,8,8
	.type	Q__align.gapf1,@object          # @Q__align.gapf1
	.local	Q__align.gapf1
	.comm	Q__align.gapf1,8,8
	.type	Q__align.gapf2,@object          # @Q__align.gapf2
	.local	Q__align.gapf2
	.comm	Q__align.gapf2,8,8
	.type	Q__align.ogcp1g,@object         # @Q__align.ogcp1g
	.local	Q__align.ogcp1g
	.comm	Q__align.ogcp1g,8,8
	.type	Q__align.ogcp2g,@object         # @Q__align.ogcp2g
	.local	Q__align.ogcp2g
	.comm	Q__align.ogcp2g,8,8
	.type	Q__align.fgcp1g,@object         # @Q__align.fgcp1g
	.local	Q__align.fgcp1g
	.comm	Q__align.fgcp1g,8,8
	.type	Q__align.fgcp2g,@object         # @Q__align.fgcp2g
	.local	Q__align.fgcp2g
	.comm	Q__align.fgcp2g,8,8
	.type	Q__align.og_h_dg_n1_p,@object   # @Q__align.og_h_dg_n1_p
	.local	Q__align.og_h_dg_n1_p
	.comm	Q__align.og_h_dg_n1_p,8,8
	.type	Q__align.og_h_dg_n2_p,@object   # @Q__align.og_h_dg_n2_p
	.local	Q__align.og_h_dg_n2_p
	.comm	Q__align.og_h_dg_n2_p,8,8
	.type	Q__align.fg_h_dg_n1_p,@object   # @Q__align.fg_h_dg_n1_p
	.local	Q__align.fg_h_dg_n1_p
	.comm	Q__align.fg_h_dg_n1_p,8,8
	.type	Q__align.fg_h_dg_n2_p,@object   # @Q__align.fg_h_dg_n2_p
	.local	Q__align.fg_h_dg_n2_p
	.comm	Q__align.fg_h_dg_n2_p,8,8
	.type	Q__align.og_t_fg_h_dg_n1_p,@object # @Q__align.og_t_fg_h_dg_n1_p
	.local	Q__align.og_t_fg_h_dg_n1_p
	.comm	Q__align.og_t_fg_h_dg_n1_p,8,8
	.type	Q__align.og_t_fg_h_dg_n2_p,@object # @Q__align.og_t_fg_h_dg_n2_p
	.local	Q__align.og_t_fg_h_dg_n2_p
	.comm	Q__align.og_t_fg_h_dg_n2_p,8,8
	.type	Q__align.fg_t_og_h_dg_n1_p,@object # @Q__align.fg_t_og_h_dg_n1_p
	.local	Q__align.fg_t_og_h_dg_n1_p
	.comm	Q__align.fg_t_og_h_dg_n1_p,8,8
	.type	Q__align.fg_t_og_h_dg_n2_p,@object # @Q__align.fg_t_og_h_dg_n2_p
	.local	Q__align.fg_t_og_h_dg_n2_p
	.comm	Q__align.fg_t_og_h_dg_n2_p,8,8
	.type	Q__align.gapz_n1,@object        # @Q__align.gapz_n1
	.local	Q__align.gapz_n1
	.comm	Q__align.gapz_n1,8,8
	.type	Q__align.gapz_n2,@object        # @Q__align.gapz_n2
	.local	Q__align.gapz_n2
	.comm	Q__align.gapz_n2,8,8
	.type	Q__align.cpmx1,@object          # @Q__align.cpmx1
	.local	Q__align.cpmx1
	.comm	Q__align.cpmx1,8,8
	.type	Q__align.cpmx2,@object          # @Q__align.cpmx2
	.local	Q__align.cpmx2
	.comm	Q__align.cpmx2,8,8
	.type	Q__align.intwork,@object        # @Q__align.intwork
	.local	Q__align.intwork
	.comm	Q__align.intwork,8,8
	.type	Q__align.floatwork,@object      # @Q__align.floatwork
	.local	Q__align.floatwork
	.comm	Q__align.floatwork,8,8
	.type	Q__align.orlgth1,@object        # @Q__align.orlgth1
	.local	Q__align.orlgth1
	.comm	Q__align.orlgth1,4,4
	.type	Q__align.orlgth2,@object        # @Q__align.orlgth2
	.local	Q__align.orlgth2
	.comm	Q__align.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.1, 14

	.type	Q__align_gapmap.m,@object       # @Q__align_gapmap.m
	.local	Q__align_gapmap.m
	.comm	Q__align_gapmap.m,8,8
	.type	Q__align_gapmap.ijp,@object     # @Q__align_gapmap.ijp
	.local	Q__align_gapmap.ijp
	.comm	Q__align_gapmap.ijp,8,8
	.type	Q__align_gapmap.mp,@object      # @Q__align_gapmap.mp
	.local	Q__align_gapmap.mp
	.comm	Q__align_gapmap.mp,8,8
	.type	Q__align_gapmap.w1,@object      # @Q__align_gapmap.w1
	.local	Q__align_gapmap.w1
	.comm	Q__align_gapmap.w1,8,8
	.type	Q__align_gapmap.w2,@object      # @Q__align_gapmap.w2
	.local	Q__align_gapmap.w2
	.comm	Q__align_gapmap.w2,8,8
	.type	Q__align_gapmap.match,@object   # @Q__align_gapmap.match
	.local	Q__align_gapmap.match
	.comm	Q__align_gapmap.match,8,8
	.type	Q__align_gapmap.initverticalw,@object # @Q__align_gapmap.initverticalw
	.local	Q__align_gapmap.initverticalw
	.comm	Q__align_gapmap.initverticalw,8,8
	.type	Q__align_gapmap.lastverticalw,@object # @Q__align_gapmap.lastverticalw
	.local	Q__align_gapmap.lastverticalw
	.comm	Q__align_gapmap.lastverticalw,8,8
	.type	Q__align_gapmap.mseq1,@object   # @Q__align_gapmap.mseq1
	.local	Q__align_gapmap.mseq1
	.comm	Q__align_gapmap.mseq1,8,8
	.type	Q__align_gapmap.mseq2,@object   # @Q__align_gapmap.mseq2
	.local	Q__align_gapmap.mseq2
	.comm	Q__align_gapmap.mseq2,8,8
	.type	Q__align_gapmap.mseq,@object    # @Q__align_gapmap.mseq
	.local	Q__align_gapmap.mseq
	.comm	Q__align_gapmap.mseq,8,8
	.type	Q__align_gapmap.digf1,@object   # @Q__align_gapmap.digf1
	.local	Q__align_gapmap.digf1
	.comm	Q__align_gapmap.digf1,8,8
	.type	Q__align_gapmap.digf2,@object   # @Q__align_gapmap.digf2
	.local	Q__align_gapmap.digf2
	.comm	Q__align_gapmap.digf2,8,8
	.type	Q__align_gapmap.diaf1,@object   # @Q__align_gapmap.diaf1
	.local	Q__align_gapmap.diaf1
	.comm	Q__align_gapmap.diaf1,8,8
	.type	Q__align_gapmap.diaf2,@object   # @Q__align_gapmap.diaf2
	.local	Q__align_gapmap.diaf2
	.comm	Q__align_gapmap.diaf2,8,8
	.type	Q__align_gapmap.gapz1,@object   # @Q__align_gapmap.gapz1
	.local	Q__align_gapmap.gapz1
	.comm	Q__align_gapmap.gapz1,8,8
	.type	Q__align_gapmap.gapz2,@object   # @Q__align_gapmap.gapz2
	.local	Q__align_gapmap.gapz2
	.comm	Q__align_gapmap.gapz2,8,8
	.type	Q__align_gapmap.gapf1,@object   # @Q__align_gapmap.gapf1
	.local	Q__align_gapmap.gapf1
	.comm	Q__align_gapmap.gapf1,8,8
	.type	Q__align_gapmap.gapf2,@object   # @Q__align_gapmap.gapf2
	.local	Q__align_gapmap.gapf2
	.comm	Q__align_gapmap.gapf2,8,8
	.type	Q__align_gapmap.ogcp1g,@object  # @Q__align_gapmap.ogcp1g
	.local	Q__align_gapmap.ogcp1g
	.comm	Q__align_gapmap.ogcp1g,8,8
	.type	Q__align_gapmap.ogcp2g,@object  # @Q__align_gapmap.ogcp2g
	.local	Q__align_gapmap.ogcp2g
	.comm	Q__align_gapmap.ogcp2g,8,8
	.type	Q__align_gapmap.fgcp1g,@object  # @Q__align_gapmap.fgcp1g
	.local	Q__align_gapmap.fgcp1g
	.comm	Q__align_gapmap.fgcp1g,8,8
	.type	Q__align_gapmap.fgcp2g,@object  # @Q__align_gapmap.fgcp2g
	.local	Q__align_gapmap.fgcp2g
	.comm	Q__align_gapmap.fgcp2g,8,8
	.type	Q__align_gapmap.og_h_dg_n1_p,@object # @Q__align_gapmap.og_h_dg_n1_p
	.local	Q__align_gapmap.og_h_dg_n1_p
	.comm	Q__align_gapmap.og_h_dg_n1_p,8,8
	.type	Q__align_gapmap.og_h_dg_n2_p,@object # @Q__align_gapmap.og_h_dg_n2_p
	.local	Q__align_gapmap.og_h_dg_n2_p
	.comm	Q__align_gapmap.og_h_dg_n2_p,8,8
	.type	Q__align_gapmap.fg_h_dg_n1_p,@object # @Q__align_gapmap.fg_h_dg_n1_p
	.local	Q__align_gapmap.fg_h_dg_n1_p
	.comm	Q__align_gapmap.fg_h_dg_n1_p,8,8
	.type	Q__align_gapmap.fg_h_dg_n2_p,@object # @Q__align_gapmap.fg_h_dg_n2_p
	.local	Q__align_gapmap.fg_h_dg_n2_p
	.comm	Q__align_gapmap.fg_h_dg_n2_p,8,8
	.type	Q__align_gapmap.og_t_fg_h_dg_n1_p,@object # @Q__align_gapmap.og_t_fg_h_dg_n1_p
	.local	Q__align_gapmap.og_t_fg_h_dg_n1_p
	.comm	Q__align_gapmap.og_t_fg_h_dg_n1_p,8,8
	.type	Q__align_gapmap.og_t_fg_h_dg_n2_p,@object # @Q__align_gapmap.og_t_fg_h_dg_n2_p
	.local	Q__align_gapmap.og_t_fg_h_dg_n2_p
	.comm	Q__align_gapmap.og_t_fg_h_dg_n2_p,8,8
	.type	Q__align_gapmap.fg_t_og_h_dg_n1_p,@object # @Q__align_gapmap.fg_t_og_h_dg_n1_p
	.local	Q__align_gapmap.fg_t_og_h_dg_n1_p
	.comm	Q__align_gapmap.fg_t_og_h_dg_n1_p,8,8
	.type	Q__align_gapmap.fg_t_og_h_dg_n2_p,@object # @Q__align_gapmap.fg_t_og_h_dg_n2_p
	.local	Q__align_gapmap.fg_t_og_h_dg_n2_p
	.comm	Q__align_gapmap.fg_t_og_h_dg_n2_p,8,8
	.type	Q__align_gapmap.gapz_n1,@object # @Q__align_gapmap.gapz_n1
	.local	Q__align_gapmap.gapz_n1
	.comm	Q__align_gapmap.gapz_n1,8,8
	.type	Q__align_gapmap.gapz_n2,@object # @Q__align_gapmap.gapz_n2
	.local	Q__align_gapmap.gapz_n2
	.comm	Q__align_gapmap.gapz_n2,8,8
	.type	Q__align_gapmap.cpmx1,@object   # @Q__align_gapmap.cpmx1
	.local	Q__align_gapmap.cpmx1
	.comm	Q__align_gapmap.cpmx1,8,8
	.type	Q__align_gapmap.cpmx2,@object   # @Q__align_gapmap.cpmx2
	.local	Q__align_gapmap.cpmx2
	.comm	Q__align_gapmap.cpmx2,8,8
	.type	Q__align_gapmap.intwork,@object # @Q__align_gapmap.intwork
	.local	Q__align_gapmap.intwork
	.comm	Q__align_gapmap.intwork,8,8
	.type	Q__align_gapmap.floatwork,@object # @Q__align_gapmap.floatwork
	.local	Q__align_gapmap.floatwork
	.comm	Q__align_gapmap.floatwork,8,8
	.type	Q__align_gapmap.orlgth1,@object # @Q__align_gapmap.orlgth1
	.local	Q__align_gapmap.orlgth1
	.comm	Q__align_gapmap.orlgth1,4,4
	.type	Q__align_gapmap.orlgth2,@object # @Q__align_gapmap.orlgth2
	.local	Q__align_gapmap.orlgth2
	.comm	Q__align_gapmap.orlgth2,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
