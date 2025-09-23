	.file	"Salignmm.c"
	.text
	.globl	imp_match_out_sc                # -- Begin function imp_match_out_sc
	.p2align	5
	.type	imp_match_out_sc,@function
imp_match_out_sc:                       # @imp_match_out_sc
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_sc, .Lfunc_end0-imp_match_out_sc
                                        # -- End function
	.globl	imp_rna                         # -- Begin function imp_rna
	.p2align	5
	.type	imp_rna,@function
imp_rna:                                # @imp_rna
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
	.size	imp_rna, .Lfunc_end1-imp_rna
                                        # -- End function
	.globl	imp_match_init_strict           # -- Begin function imp_match_init_strict
	.p2align	5
	.type	imp_match_init_strict,@function
imp_match_init_strict:                  # @imp_match_init_strict
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
	pcalau12i	$s8, %pc_hi20(imp_match_init_strict.nocount1)
	pcalau12i	$s6, %pc_hi20(imp_match_init_strict.nocount2)
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
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	beqz	$a0, .LBB2_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_6:
	ld.d	$a0, $s6, %pc_lo12(imp_match_init_strict.nocount2)
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
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(imp_match_init_strict.nocount2)
.LBB2_9:
	blez	$s5, .LBB2_18
# %bb.10:                               # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
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
	ld.d	$a0, $s6, %pc_lo12(imp_match_init_strict.nocount2)
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
	.size	imp_match_init_strict, .Lfunc_end2-imp_match_init_strict
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function A__align
.LCPI3_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI3_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI3_4:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI3_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	A__align
	.p2align	5
	.type	A__align,@function
A__align:                               # @A__align
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 384                  # 8-byte Folded Spill
	st.d	$a7, $sp, 232                   # 8-byte Folded Spill
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	move	$s7, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$a1, %pc_hi20(A__align.orlgth1)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.w	$s4, $a1, %pc_lo12(A__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(A__align.mseq1)
	pcalau12i	$a0, %pc_hi20(A__align.mseq2)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	bnez	$s4, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	st.d	$a0, $s3, %pc_lo12(A__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s4, $a1, %pc_lo12(A__align.orlgth1)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mseq2)
.LBB3_2:
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(A__align.orlgth2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s6, $a0, %pc_lo12(A__align.orlgth2)
	addi.w	$s8, $a2, 0
	pcalau12i	$a0, %pc_hi20(A__align.w1)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.w2)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.initverticalw)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.lastverticalw)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.m)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mp)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(A__align.mseq)
	pcalau12i	$a0, %pc_hi20(A__align.ogcp1)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.ogcp2)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp1)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp2)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx2)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.floatwork)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.intwork)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	blt	$s4, $s0, .LBB3_4
# %bb.3:
	bge	$s6, $s8, .LBB3_8
.LBB3_4:
	pcalau12i	$s7, %pc_hi20(A__align.match)
	blez	$s4, .LBB3_7
# %bb.5:
	blez	$s6, .LBB3_7
# %bb.6:
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(A__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(A__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(A__align.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(A__align.orlgth2)
.LBB3_7:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	addi.w	$s0, $s4, 100
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	addi.w	$s3, $s6, 100
	addi.w	$s5, $s6, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(A__align.match)
	addi.w	$s7, $s4, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.initverticalw)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s3, $s0
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mseq)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx2)
	slt	$a0, $s3, $s0
	masknez	$a1, $s3, $a0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s5
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.intwork)
	st.w	$s4, $s0, %pc_lo12(A__align.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(A__align.orlgth2)
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
.LBB3_8:
	blez	$s1, .LBB3_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $s3, %pc_lo12(A__align.mseq)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.mseq1)
	move	$a2, $s1
	move	$a3, $s2
	.p2align	4, , 16
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s0
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_10
.LBB3_11:                               # %.preheader355
	blez	$fp, .LBB3_14
# %bb.12:                               # %.lr.ph363
	ld.d	$a1, $s3, %pc_lo12(A__align.mseq)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq2)
	alsl.d	$a1, $s1, $a1, 3
	move	$a2, $fp
	move	$a3, $s7
	.p2align	4, , 16
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_13
.LBB3_14:                               # %._crit_edge
	ld.d	$s5, $sp, 488
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s3, 0
	blt	$a0, $s4, .LBB3_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s6, .LBB3_17
# %bb.16:                               # %._crit_edge504
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB3_21
.LBB3_17:
	beqz	$a0, .LBB3_20
# %bb.18:
	beqz	$a1, .LBB3_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(A__align.orlgth1)
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s6, $a1, %pc_lo12(A__align.orlgth2)
	ld.w	$a1, $s3, 0
.LBB3_20:
	slt	$a2, $a0, $s4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$s4, $a2, $a0
	slt	$a0, $a1, $s6
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
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
.LBB3_21:
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.cpmx1)
	ffint.s.w	$fs0, $fs0
	pcalau12i	$a2, %pc_hi20(A__align.ijp)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align.ijp)
	move	$a0, $s2
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align.cpmx2)
	move	$a0, $s7
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s8
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	beqz	$s5, .LBB3_23
# %bb.22:
	move	$a5, $s5
	move	$s0, $s7
	ld.d	$s7, $sp, 512
	ld.d	$s6, $sp, 504
	ld.d	$s5, $sp, 496
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s5
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB3_24
.LBB3_23:
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB3_24:
	fcvt.d.s	$fa0, $fs0
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	blez	$s0, .LBB3_31
# %bb.25:                               # %.lr.ph366
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp1)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB3_28
# %bb.26:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB3_212
# %bb.27:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB3_212
.LBB3_28:
	move	$a3, $zero
.LBB3_29:                               # %scalar.ph.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_30:                               # %scalar.ph
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
	bnez	$a1, .LBB3_30
.LBB3_31:                               # %.preheader354
	blez	$s8, .LBB3_38
# %bb.32:                               # %.lr.ph368
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	bstrpick.d	$a1, $a7, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB3_35
# %bb.33:                               # %vector.memcheck561
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB3_215
# %bb.34:                               # %vector.memcheck561
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB3_215
.LBB3_35:
	move	$a3, $zero
.LBB3_36:                               # %scalar.ph567.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_37:                               # %scalar.ph567
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
	bnez	$a1, .LBB3_37
.LBB3_38:                               # %._crit_edge369
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(A__align.w1)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align.w2)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(A__align.cpmx2)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(A__align.cpmx1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(A__align.floatwork)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $a1, %pc_lo12(A__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $zero
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	move	$a4, $s5
	move	$a5, $s6
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a1, $a0, 32
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$s6, $sp, 224                   # 8-byte Folded Spill
	st.d	$s7, $sp, 216                   # 8-byte Folded Spill
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_48
# %bb.39:
	blez	$s5, .LBB3_42
# %bb.40:                               # %.lr.ph.i
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_41:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_41
.LBB3_42:                               # %imp_match_out_vead_tate.exit
	ori	$a7, $zero, 1
	ori	$s5, $zero, 1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s8
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	beqz	$s8, .LBB3_57
# %bb.43:                               # %.lr.ph.preheader.i
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a5, $a0, 0
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	bstrpick.d	$a3, $t3, 31, 0
	ori	$a0, $zero, 8
	bltu	$a3, $a0, .LBB3_46
# %bb.44:                               # %vector.memcheck582
	addi.w	$a0, $zero, -4
	lu32i.d	$a0, 3
	alsl.d	$a0, $t3, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 4
	add.d	$a1, $a5, $a0
	bgeu	$s3, $a1, .LBB3_229
# %bb.45:                               # %vector.memcheck582
	add.d	$a0, $s3, $a0
	bgeu	$a5, $a0, .LBB3_229
.LBB3_46:
	move	$a1, $a5
	move	$a0, $t3
	move	$a2, $s3
	.p2align	4, , 16
.LBB3_47:                               # %.lr.ph.i324
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a3
	bnez	$a0, .LBB3_47
	b	.LBB3_49
.LBB3_48:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s6
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
.LBB3_49:                               # %imp_match_out_vead.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_58
# %bb.50:                               # %.preheader353
	blez	$s8, .LBB3_66
# %bb.51:                               # %.lr.ph372
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_55
# %bb.52:                               # %vector.ph609
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI3_1)
	addi.d	$a5, $s3, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_53:                               # %vector.body614
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
	bnez	$a6, .LBB3_53
# %bb.54:                               # %middle.block619
	beq	$a2, $a4, .LBB3_66
.LBB3_55:                               # %scalar.ph607.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_56:                               # %scalar.ph607
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
	bnez	$a1, .LBB3_56
	b	.LBB3_66
.LBB3_57:                               # %imp_match_out_vead.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	bne	$a0, $s5, .LBB3_66
.LBB3_58:                               # %.preheader350
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	blez	$a0, .LBB3_62
# %bb.59:                               # %.lr.ph378
	ld.d	$a0, $t4, %pc_lo12(A__align.ogcp1)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp1)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a5, $zero, 8
	ori	$a3, $zero, 1
	bgeu	$a4, $a5, .LBB3_218
.LBB3_60:                               # %scalar.ph650.preheader
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -4
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB3_61:                               # %scalar.ph650
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB3_61
.LBB3_62:                               # %.preheader348
	blez	$s8, .LBB3_78
# %bb.63:                               # %.lr.ph381
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a5, $zero, 8
	ori	$a3, $zero, 1
	bgeu	$a4, $a5, .LBB3_223
.LBB3_64:                               # %scalar.ph680.preheader
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB3_65:                               # %scalar.ph680
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB3_65
	b	.LBB3_74
.LBB3_66:                               # %.preheader351
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	blez	$a0, .LBB3_73
# %bb.67:                               # %.lr.ph375
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_71
# %bb.68:                               # %vector.ph624
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI3_1)
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_69:                               # %vector.body629
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
	bnez	$a6, .LBB3_69
# %bb.70:                               # %middle.block636
	beq	$a2, $a4, .LBB3_73
.LBB3_71:                               # %scalar.ph622.preheader
	mul.d	$a2, $a0, $a3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_72:                               # %scalar.ph622
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
	bnez	$a1, .LBB3_72
.LBB3_73:                               # %.loopexit349
	blez	$s8, .LBB3_78
.LBB3_74:                               # %.lr.ph385
	ld.d	$a6, $t4, %pc_lo12(A__align.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.m)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.mp)
	addi.d	$a3, $t3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -1
	ori	$a7, $zero, 12
	ori	$a4, $zero, 1
	bgeu	$a5, $a7, .LBB3_135
.LBB3_75:                               # %scalar.ph710.preheader
	alsl.d	$a5, $a4, $s3, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a1, $a4, $a1, 2
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB3_76:                               # %scalar.ph710
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB3_76
.LBB3_77:
	move	$t2, $zero
	b	.LBB3_79
.LBB3_78:                               # %._crit_edge386
	ori	$t2, $zero, 1
	beqz	$s8, .LBB3_228
.LBB3_79:
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $a5, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s3, $a1
	st.d	$t2, $sp, 264                   # 8-byte Folded Spill
	move	$t2, $zero
.LBB3_80:
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(A__align.lastverticalw)
	fst.s	$fa0, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a0, $a1, %got_pc_lo12(outgap)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	sltu	$a1, $zero, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ori	$a1, $zero, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB3_111
# %bb.81:                               # %.lr.ph410
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ijp)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align.m)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(A__align.mp)
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $t4, %pc_lo12(A__align.ogcp1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$a4, $zero, 0
	lu32i.d	$a4, -1
	add.d	$a4, $a5, $a4
	srai.d	$a0, $a4, 30
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	addi.w	$a0, $t3, -1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a0, 31, 0
	slli.d	$a5, $a4, 2
	addi.d	$a0, $a5, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $a4, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a4, $a0, 32, 3
	slli.d	$a0, $a4, 3
	slli.d	$a4, $a4, 5
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	sub.d	$a0, $t3, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 4
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 4
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	ori	$a2, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$t7, $a1, %got_pc_lo12(n_dis_consweight_multi)
	ori	$t6, $zero, 208
	addi.d	$t4, $sp, 280
	ori	$a4, $zero, 26
	fmov.s	$fs0, $fa0
	move	$a5, $s3
	b	.LBB3_83
	.p2align	4, , 16
.LBB3_82:                               # %._crit_edge402
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	fldx.s	$fa1, $s3, $a0
	addi.d	$a2, $a2, 1
	fstx.s	$fa1, $s7, $a6
	move	$a5, $s3
	move	$t2, $a3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB3_112
.LBB3_83:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_84 Depth 2
                                        #       Child Loop BB3_85 Depth 3
                                        #     Child Loop BB3_90 Depth 2
                                        #       Child Loop BB3_92 Depth 3
                                        #     Child Loop BB3_109 Depth 2
                                        #     Child Loop BB3_98 Depth 2
                                        #     Child Loop BB3_102 Depth 2
	addi.d	$t3, $a2, -1
	slli.d	$t0, $t3, 2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	fldx.s	$fa1, $a0, $t0
	move	$a1, $zero
	move	$s3, $s0
	move	$s0, $a5
	fst.s	$fa1, $a5, 0
	move	$a5, $t7
	.p2align	4, , 16
.LBB3_84:                               #   Parent Loop BB3_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_85 Depth 3
	move	$a7, $zero
	move	$t1, $a5
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB3_85:                               #   Parent Loop BB3_83 Depth=1
                                        #     Parent Loop BB3_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$t5, $s4, $a7
	fld.s	$fa2, $t1, 0
	slli.d	$a6, $a2, 2
	fldx.s	$fa3, $t5, $a6
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, 104
	bne	$a7, $t6, .LBB3_85
# %bb.86:                               #   in Loop: Header=BB3_84 Depth=2
	slli.d	$a7, $a1, 2
	fstx.s	$fa1, $a7, $t4
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 4
	bne	$a1, $a4, .LBB3_84
# %bb.87:                               # %.preheader.i
                                        #   in Loop: Header=BB3_83 Depth=1
	bnez	$t2, .LBB3_99
# %bb.88:                               # %.lr.ph73.i.preheader
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	move	$t1, $s3
	b	.LBB3_90
	.p2align	4, , 16
.LBB3_89:                               # %._crit_edge.i
                                        #   in Loop: Header=BB3_90 Depth=2
	addi.w	$a1, $a1, -1
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, 4
	beqz	$a1, .LBB3_93
.LBB3_90:                               # %.lr.ph73.i
                                        #   Parent Loop BB3_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_92 Depth 3
	ld.d	$t8, $a5, 0
	ld.wu	$t5, $t8, 0
	addi.w	$s5, $t5, 0
	st.w	$zero, $t1, 0
	bltz	$s5, .LBB3_89
# %bb.91:                               # %.lr.ph.i325
                                        #   in Loop: Header=BB3_90 Depth=2
	ld.d	$s5, $a7, 0
	addi.d	$t8, $t8, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB3_92:                               #   Parent Loop BB3_83 Depth=1
                                        #     Parent Loop BB3_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t5, $t5, 2
	fldx.s	$fa2, $t5, $t4
	fld.s	$fa3, $s5, 0
	ld.wu	$t5, $t8, 0
	addi.d	$s5, $s5, 4
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $t1, 0
	addi.w	$s6, $t5, 0
	addi.d	$t8, $t8, 4
	bgez	$s6, .LBB3_92
	b	.LBB3_89
	.p2align	4, , 16
.LBB3_93:                               # %match_calc.exit
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_99
# %bb.94:                               # %.lr.ph.preheader.i331
                                        #   in Loop: Header=BB3_83 Depth=1
	slli.d	$a1, $a2, 3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$t1, $a0, $a1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB3_97
# %bb.95:                               # %vector.memcheck726
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $t1, $a0
	bgeu	$s3, $a1, .LBB3_108
# %bb.96:                               # %vector.memcheck726
                                        #   in Loop: Header=BB3_83 Depth=1
	add.d	$a1, $s3, $a0
	bgeu	$t1, $a1, .LBB3_108
.LBB3_97:                               #   in Loop: Header=BB3_83 Depth=1
	move	$a1, $t1
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	move	$a5, $s3
	.p2align	4, , 16
.LBB3_98:                               # %.lr.ph.i332
                                        #   Parent Loop BB3_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a5, 0
	addi.w	$a7, $a7, -1
	addi.d	$a1, $a1, 4
	addi.d	$t1, $a5, 4
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a5, 0
	move	$a5, $t1
	bnez	$a7, .LBB3_98
.LBB3_99:                               # %imp_match_out_vead.exit338
                                        #   in Loop: Header=BB3_83 Depth=1
	move	$a3, $t2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	fldx.s	$fa1, $a0, $a6
	fst.s	$fa1, $s3, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_82
# %bb.100:                              # %.lr.ph401.preheader
                                        #   in Loop: Header=BB3_83 Depth=1
	move	$t1, $zero
	move	$a7, $zero
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	fldx.s	$fa1, $a0, $t0
	fld.s	$fa3, $s0, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	fld.s	$fa4, $a0, 4
	slli.d	$a1, $a2, 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fldx.s	$fa2, $a0, $a6
	fadd.s	$fa3, $fa3, $fa4
	addi.d	$t0, $s3, 4
	addi.d	$a5, $a1, 4
	addi.d	$ra, $zero, -1
	ld.d	$t5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	move	$s6, $s0
	b	.LBB3_102
	.p2align	4, , 16
.LBB3_101:                              #   in Loop: Header=BB3_102 Depth=2
	fadd.s	$fa4, $fa4, $fa5
	fcmp.cult.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	movcf2gr	$t2, $fcc0
	fld.s	$fa4, $t0, 0
	masknez	$a0, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $a0
	fadd.s	$fa4, $fs0, $fa4
	fst.s	$fa4, $t0, 0
	addi.d	$s6, $s6, 4
	addi.d	$a1, $a1, 4
	addi.d	$t0, $t0, 4
	addi.d	$a5, $a5, 4
	addi.d	$s5, $s5, 4
	addi.d	$t8, $t8, 4
	addi.d	$t5, $t5, 4
	addi.w	$t1, $t1, 1
	addi.d	$ra, $ra, -1
	beq	$s8, $t1, .LBB3_82
.LBB3_102:                              # %.lr.ph401
                                        #   Parent Loop BB3_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa5, $a1, 0
	fld.s	$fa4, $s6, 0
	fadd.s	$fa5, $fa3, $fa5
	fcmp.cule.s	$fcc0, $fa5, $fa4
	st.w	$zero, $a5, 0
	fmov.s	$fs0, $fa4
	bcnez	$fcc0, .LBB3_104
# %bb.103:                              #   in Loop: Header=BB3_102 Depth=2
	add.d	$t2, $a7, $ra
	st.w	$t2, $a5, 0
	fmov.s	$fs0, $fa5
.LBB3_104:                              #   in Loop: Header=BB3_102 Depth=2
	fld.s	$fa6, $s5, 0
	fld.s	$fa5, $t5, 0
	fadd.s	$fa7, $fa1, $fa6
	fcmp.cule.s	$fcc0, $fa7, $fs0
	bcnez	$fcc0, .LBB3_106
# %bb.105:                              #   in Loop: Header=BB3_102 Depth=2
	ld.w	$t2, $t8, 0
	sub.d	$t2, $a2, $t2
	st.w	$t2, $a5, 0
	fmov.s	$fs0, $fa7
.LBB3_106:                              #   in Loop: Header=BB3_102 Depth=2
	fadd.s	$fa7, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa7, $fa6
	bcnez	$fcc0, .LBB3_101
# %bb.107:                              #   in Loop: Header=BB3_102 Depth=2
	fst.s	$fa7, $s5, 0
	st.w	$t3, $t8, 0
	b	.LBB3_101
.LBB3_108:                              # %vector.ph734
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $t1, $a0
	add.d	$a5, $s3, $a0
	addi.d	$a7, $s3, 16
	addi.d	$t1, $t1, 16
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_109:                              # %vector.body738
                                        #   Parent Loop BB3_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t1, -16
	vld	$vr2, $t1, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr1, $vr3
	vfadd.s	$vr2, $vr2, $vr4
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t5, $t5, -8
	addi.d	$t1, $t1, 32
	bnez	$t5, .LBB3_109
# %bb.110:                              # %middle.block749
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $a3, .LBB3_98
	b	.LBB3_99
.LBB3_111:
	movgr2fr.w	$fs0, $zero
.LBB3_112:                              # %._crit_edge411
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_127
# %bb.113:                              # %.preheader347
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_120
# %bb.114:                              # %.lr.ph420
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_118
# %bb.115:                              # %vector.ph756
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.d	$vr1, $t1
	pcalau12i	$a5, %pc_hi20(.LCPI3_2)
	vld	$vr2, $a5, %pc_lo12(.LCPI3_2)
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	vld	$vr3, $a5, %pc_lo12(.LCPI3_3)
	addi.d	$a5, $s3, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_116:                              # %vector.body763
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
	bnez	$a6, .LBB3_116
# %bb.117:                              # %middle.block770
	beq	$a2, $a4, .LBB3_120
.LBB3_118:                              # %scalar.ph754.preheader
	sub.w	$a2, $t1, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_119:                              # %scalar.ph754
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
	bnez	$a1, .LBB3_119
.LBB3_120:                              # %.preheader346
	blez	$t0, .LBB3_127
# %bb.121:                              # %.lr.ph423
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
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
	bltu	$a2, $a3, .LBB3_125
# %bb.122:                              # %vector.ph775
	move	$a4, $a2
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $a2, 1
	addi.d	$a5, $s7, 8
	vldi	$vr2, -928
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_123:                              # %vector.body778
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
	bnez	$a6, .LBB3_123
# %bb.124:                              # %middle.block783
	beq	$a2, $a4, .LBB3_127
.LBB3_125:                              # %scalar.ph773.preheader
	alsl.d	$a2, $a0, $s7, 2
	sub.d	$a1, $a1, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_126:                              # %scalar.ph773
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
	bnez	$a1, .LBB3_126
.LBB3_127:                              # %.loopexit
	ld.d	$s6, $s8, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align.mseq2)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align.ijp)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_134
# %bb.128:
	ld.d	$a0, $s2, 0
	st.d	$a6, $sp, 256                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	add.w	$a0, $a0, $s8
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.w	$s5, $a0, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ori	$a3, $zero, 1
	addi.w	$a2, $s8, 0
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	move	$t1, $s0
	addi.w	$a2, $s0, 0
	beq	$a1, $a3, .LBB3_145
# %bb.129:
	fld.s	$fa0, $s7, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	blez	$a1, .LBB3_140
# %bb.130:                              # %.lr.ph.i341
	slli.d	$a1, $s8, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $t1, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	b	.LBB3_132
	.p2align	4, , 16
.LBB3_131:                              #   in Loop: Header=BB3_132 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s7, $s7, 4
	beqz	$a4, .LBB3_140
.LBB3_132:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_131
# %bb.133:                              #   in Loop: Header=BB3_132 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_131
.LBB3_134:
	st.d	$fp, $sp, 0
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s2
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s6
	move	$a5, $s4
	move	$a7, $s1
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_203
.LBB3_135:                              # %vector.memcheck698
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $s3, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s3, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_75
# %bb.136:                              # %vector.memcheck698
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB3_75
# %bb.137:                              # %vector.ph712
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a4, $a5
	bstrins.d	$a4, $a7, 2, 0
	vldrepl.w	$vr0, $a0, 0
	addi.d	$a7, $s3, 16
	addi.d	$t0, $a1, 20
	addi.d	$t1, $a2, 20
	vrepli.b	$vr1, 0
	move	$t2, $a6
	.p2align	4, , 16
.LBB3_138:                              # %vector.body715
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, -16
	vld	$vr3, $a7, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $t0, -16
	vst	$vr3, $t0, 0
	vst	$vr1, $t1, -16
	vst	$vr1, $t1, 0
	addi.d	$t2, $t2, -8
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB3_138
# %bb.139:                              # %middle.block723
	bne	$a5, $a6, .LBB3_75
	b	.LBB3_77
.LBB3_140:                              # %.preheader170.i
	blez	$a2, .LBB3_145
# %bb.141:                              # %.lr.ph175.i
	slli.d	$a1, $s8, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $t1, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $t1, 30, 0
	sub.d	$a5, $zero, $t1
	b	.LBB3_143
	.p2align	4, , 16
.LBB3_142:                              #   in Loop: Header=BB3_143 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB3_145
.LBB3_143:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_142
# %bb.144:                              #   in Loop: Header=BB3_143 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_142
.LBB3_145:                              # %.loopexit.i
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	bltz	$a1, .LBB3_153
# %bb.146:                              # %.lr.ph178.preheader.i
	addi.d	$a3, $s8, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_148
# %bb.147:
	move	$a3, $zero
	b	.LBB3_151
.LBB3_148:                              # %vector.ph788
	pcalau12i	$a4, %pc_hi20(.LCPI3_4)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_4)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_149:                              # %vector.body791
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
	bnez	$a5, .LBB3_149
# %bb.150:                              # %middle.block798
	beq	$a1, $a3, .LBB3_153
.LBB3_151:                              # %.lr.ph178.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB3_152:                              # %.lr.ph178.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB3_152
.LBB3_153:                              # %.preheader169.i
	ld.d	$a1, $sp, 480
	bltz	$a2, .LBB3_161
# %bb.154:                              # %.lr.ph181.i
	ld.d	$a3, $ra, 0
	addi.d	$a5, $t1, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB3_156
# %bb.155:
	move	$a5, $zero
	b	.LBB3_159
.LBB3_156:                              # %vector.ph803
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI3_5)
	vld	$vr0, $a6, %pc_lo12(.LCPI3_5)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_157:                              # %vector.body806
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB3_157
# %bb.158:                              # %middle.block812
	beq	$a4, $a5, .LBB3_161
.LBB3_159:                              # %scalar.ph801.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_160:                              # %scalar.ph801
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_160
.LBB3_161:                              # %._crit_edge.i339
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	add.d	$s7, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	add.d	$a3, $a0, $a4
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_195
# %bb.162:                              # %.lr.ph209.i.preheader
	move	$t0, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 111
	ori	$a4, $zero, 45
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	move	$a0, $t1
	move	$a7, $t1
	.p2align	4, , 16
.LBB3_163:                              # %.lr.ph209.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_173 Depth 2
                                        #     Child Loop BB3_177 Depth 2
                                        #     Child Loop BB3_183 Depth 2
                                        #     Child Loop BB3_188 Depth 2
	addi.w	$t2, $s8, 0
	slli.d	$t5, $t2, 3
	ldx.d	$a5, $ra, $t5
	addi.w	$t3, $a7, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t4, $a5, $t6
	bltz	$t4, .LBB3_166
# %bb.164:                              #   in Loop: Header=BB3_163 Depth=1
	beqz	$t4, .LBB3_167
# %bb.165:                              #   in Loop: Header=BB3_163 Depth=1
	sub.d	$t1, $s8, $t4
	b	.LBB3_168
	.p2align	4, , 16
.LBB3_166:                              #   in Loop: Header=BB3_163 Depth=1
	addi.d	$t1, $s8, -1
	b	.LBB3_169
	.p2align	4, , 16
.LBB3_167:                              #   in Loop: Header=BB3_163 Depth=1
	addi.d	$t1, $s8, -1
.LBB3_168:                              #   in Loop: Header=BB3_163 Depth=1
	move	$t4, $a2
.LBB3_169:                              #   in Loop: Header=BB3_163 Depth=1
	nor	$t7, $t1, $zero
	add.w	$t8, $s8, $t7
	beqz	$t8, .LBB3_179
# %bb.170:                              # %.lr.ph187.i.preheader
                                        #   in Loop: Header=BB3_163 Depth=1
	ori	$a6, $zero, 32
	bltu	$t8, $a6, .LBB3_175
# %bb.171:                              # %.lr.ph187.i.preheader
                                        #   in Loop: Header=BB3_163 Depth=1
	sub.d	$a5, $s7, $s3
	bltu	$a5, $a6, .LBB3_175
# %bb.172:                              # %vector.ph843
                                        #   in Loop: Header=BB3_163 Depth=1
	bstrpick.d	$ra, $t8, 31, 0
	bstrpick.d	$a5, $ra, 31, 5
	slli.d	$a6, $a5, 5
	sub.d	$t8, $t8, $a6
	sub.d	$s0, $s3, $a6
	sub.d	$s5, $s7, $a6
	addi.d	$s7, $s7, -16
	addi.d	$s3, $s3, -16
	move	$a5, $a6
	.p2align	4, , 16
.LBB3_173:                              # %vector.body847
                                        #   Parent Loop BB3_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s7, 0
	vst	$vr2, $s7, -16
	vst	$vr1, $s3, 0
	vst	$vr1, $s3, -16
	addi.d	$a5, $a5, -32
	addi.d	$s7, $s7, -32
	addi.d	$s3, $s3, -32
	bnez	$a5, .LBB3_173
# %bb.174:                              # %middle.block854
                                        #   in Loop: Header=BB3_163 Depth=1
	bne	$a6, $ra, .LBB3_176
	b	.LBB3_178
	.p2align	4, , 16
.LBB3_175:                              #   in Loop: Header=BB3_163 Depth=1
	move	$s0, $s3
	move	$s5, $s7
.LBB3_176:                              # %.lr.ph187.i.preheader861
                                        #   in Loop: Header=BB3_163 Depth=1
	move	$a5, $s0
	move	$a6, $s5
	.p2align	4, , 16
.LBB3_177:                              # %.lr.ph187.i
                                        #   Parent Loop BB3_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s5, $a6, -1
	st.b	$a3, $a6, -1
	addi.d	$s0, $a5, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $a5, -1
	move	$a5, $s0
	move	$a6, $s5
	bnez	$t8, .LBB3_177
.LBB3_178:                              # %._crit_edge188.loopexit.i
                                        #   in Loop: Header=BB3_163 Depth=1
	add.d	$a5, $s8, $t0
	add.d	$t0, $t7, $a5
	move	$s7, $s5
	move	$s3, $s0
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
.LBB3_179:                              # %._crit_edge188.i
                                        #   in Loop: Header=BB3_163 Depth=1
	beq	$t4, $a2, .LBB3_185
# %bb.180:                              # %.lr.ph197.preheader.i
                                        #   in Loop: Header=BB3_163 Depth=1
	addi.w	$a5, $zero, -9
	nor	$s5, $t4, $zero
	bltu	$a5, $t4, .LBB3_186
# %bb.181:                              # %.lr.ph197.preheader.i
                                        #   in Loop: Header=BB3_163 Depth=1
	sub.d	$a5, $s7, $s3
	ori	$a6, $zero, 8
	bltu	$a5, $a6, .LBB3_186
# %bb.182:                              # %vector.ph820
                                        #   in Loop: Header=BB3_163 Depth=1
	bstrpick.d	$a5, $s5, 30, 3
	slli.d	$s8, $a5, 3
	sub.d	$s0, $s5, $s8
	sub.d	$t7, $s3, $s8
	sub.d	$t8, $s7, $s8
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $t0, 0
	addi.d	$a5, $s7, -4
	addi.d	$t0, $s3, -4
	move	$s3, $s8
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB3_183:                              # %vector.body824
                                        #   Parent Loop BB3_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $a5, 0, 0
	vstelm.w	$vr1, $a5, -4, 0
	vstelm.w	$vr2, $t0, 0, 0
	vstelm.w	$vr2, $t0, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$s3, $s3, -8
	addi.d	$a5, $a5, -8
	addi.d	$t0, $t0, -8
	bnez	$s3, .LBB3_183
# %bb.184:                              # %middle.block832
                                        #   in Loop: Header=BB3_163 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$t0, $vr3, 0
	bne	$s8, $s5, .LBB3_187
	b	.LBB3_189
	.p2align	4, , 16
.LBB3_185:                              #   in Loop: Header=BB3_163 Depth=1
	move	$t8, $s7
	move	$t7, $s3
	b	.LBB3_189
	.p2align	4, , 16
.LBB3_186:                              #   in Loop: Header=BB3_163 Depth=1
	move	$s0, $s5
	move	$t7, $s3
	move	$t8, $s7
.LBB3_187:                              # %.lr.ph197.i.preheader
                                        #   in Loop: Header=BB3_163 Depth=1
	add.d	$t0, $t0, $s0
	.p2align	4, , 16
.LBB3_188:                              # %.lr.ph197.i
                                        #   Parent Loop BB3_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$s0, $s0, -1
	addi.d	$t7, $t7, -1
	bnez	$s0, .LBB3_188
.LBB3_189:                              # %._crit_edge198.i
                                        #   in Loop: Header=BB3_163 Depth=1
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	beq	$t2, $a5, .LBB3_192
# %bb.190:                              # %._crit_edge198.i
                                        #   in Loop: Header=BB3_163 Depth=1
	addi.w	$a5, $a0, 0
	beq	$t3, $a5, .LBB3_192
# %bb.191:                              #   in Loop: Header=BB3_163 Depth=1
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(impmtx)
	ldx.d	$a5, $a5, $t5
	fldx.s	$fa3, $a5, $t6
	fld.s	$fa4, $a1, 0
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a1, 0
.LBB3_192:                              #   in Loop: Header=BB3_163 Depth=1
	blez	$t2, .LBB3_196
# %bb.193:                              #   in Loop: Header=BB3_163 Depth=1
	blez	$t3, .LBB3_196
# %bb.194:                              #   in Loop: Header=BB3_163 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s7, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s3, $t7, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t7, -1
	move	$s8, $t1
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	bge	$a5, $t0, .LBB3_163
.LBB3_195:                              # %._crit_edge210.i
	bgtz	$s1, .LBB3_197
	b	.LBB3_199
.LBB3_196:
	move	$s7, $t8
	move	$s3, $t7
	blez	$s1, .LBB3_199
.LBB3_197:                              # %.lr.ph218.preheader.i
	move	$s0, $s2
	move	$s5, $s1
	.p2align	4, , 16
.LBB3_198:                              # %.lr.ph218.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 8
	bnez	$s5, .LBB3_198
.LBB3_199:                              # %.preheader.i340
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	blez	$fp, .LBB3_202
# %bb.200:                              # %.lr.ph220.preheader.i
	move	$s0, $s7
	move	$s5, $fp
	.p2align	4, , 16
.LBB3_201:                              # %.lr.ph220.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s0, $s0, 8
	addi.d	$s4, $s4, 8
	bnez	$s5, .LBB3_201
.LBB3_202:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_203:
	ld.d	$a0, $s8, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_232
# %bb.204:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_232
# %bb.205:
	blez	$s1, .LBB3_208
.LBB3_206:                              # %.lr.ph426
	ld.d	$s0, $s8, %pc_lo12(A__align.mseq1)
	.p2align	4, , 16
.LBB3_207:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB3_207
.LBB3_208:                              # %.preheader
	blez	$fp, .LBB3_211
# %bb.209:                              # %.lr.ph428
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align.mseq2)
	.p2align	4, , 16
.LBB3_210:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, -1
	addi.d	$s7, $s7, 8
	bnez	$fp, .LBB3_210
.LBB3_211:                              # %._crit_edge429
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 384                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.LBB3_212:                              # %vector.ph
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 2
	slli.d	$a3, $a3, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a4, $zero, 1023
	vreplgr2vr.d	$vr2, $a4
	lu52i.d	$a4, $zero, 1022
	vreplgr2vr.d	$vr3, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_213:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a4, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a5, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a4, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB3_213
# %bb.214:                              # %middle.block
	beq	$a1, $a3, .LBB3_31
	b	.LBB3_29
.LBB3_215:                              # %vector.ph569
	bstrpick.d	$a3, $a7, 30, 2
	slli.d	$a3, $a3, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a4, $zero, 1023
	vreplgr2vr.d	$vr2, $a4
	lu52i.d	$a4, $zero, 1022
	vreplgr2vr.d	$vr3, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_216:                              # %vector.body574
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a4, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a5, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a4, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB3_216
# %bb.217:                              # %middle.block579
	beq	$a1, $a3, .LBB3_38
	b	.LBB3_36
.LBB3_218:                              # %vector.memcheck639
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a1, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_60
# %bb.219:                              # %vector.memcheck639
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_60
# %bb.220:                              # %vector.ph652
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a3, $a6, 2, 0
	addi.d	$a6, $a2, 16
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_221:                              # %vector.body655
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB3_221
# %bb.222:                              # %middle.block665
	bne	$a4, $a5, .LBB3_60
	b	.LBB3_62
.LBB3_223:                              # %vector.memcheck668
	addi.d	$a5, $s3, 4
	alsl.d	$a6, $a1, $s3, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_64
# %bb.224:                              # %vector.memcheck668
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_64
# %bb.225:                              # %vector.ph682
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a3, $a6, 2, 0
	addi.d	$a6, $a2, 16
	addi.d	$a7, $s3, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_226:                              # %vector.body685
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB3_226
# %bb.227:                              # %middle.block695
	bne	$a4, $a5, .LBB3_64
	b	.LBB3_74
.LBB3_228:
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	b	.LBB3_80
.LBB3_229:                              # %vector.ph590
	bstrpick.d	$a0, $t3, 31, 3
	slli.d	$a4, $a0, 3
	slli.d	$a2, $a0, 5
	add.d	$a1, $a5, $a2
	andi	$a0, $t3, 7
	add.d	$a2, $s3, $a2
	addi.d	$a6, $s3, 16
	addi.d	$a5, $a5, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB3_230:                              # %vector.body593
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
	bnez	$a7, .LBB3_230
# %bb.231:                              # %middle.block602
	bne	$a3, $a4, .LBB3_47
	b	.LBB3_49
.LBB3_232:
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
	bgtz	$s1, .LBB3_206
	b	.LBB3_208
.Lfunc_end3:
	.size	A__align, .Lfunc_end3-A__align
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
	ori	$a4, $zero, 32
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
	bstrpick.d	$t4, $t6, 31, 5
	slli.d	$t7, $t4, 5
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
	vst	$vr2, $t8, -16
	vst	$vr1, $s1, 0
	vst	$vr1, $s1, -16
	addi.d	$s2, $s2, -32
	addi.d	$t8, $t8, -32
	addi.d	$s1, $s1, -32
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
	.p2align	3, 0x0                          # -- Begin function A__align_gapmap
.LCPI6_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI6_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI6_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI6_4:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	A__align_gapmap
	.p2align	5
	.type	A__align_gapmap,@function
A__align_gapmap:                        # @A__align_gapmap
# %bb.0:
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 352                  # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(A__align_gapmap.orlgth1)
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s6, $a0
	pcalau12i	$s3, %pc_hi20(A__align_gapmap.mseq1)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bnez	$s4, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s3, %pc_lo12(A__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mseq2)
.LBB6_2:
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s7, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(A__align_gapmap.orlgth2)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s3, $a1, %pc_lo12(A__align_gapmap.orlgth2)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w1)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.initverticalw)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.lastverticalw)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.m)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mp)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(A__align_gapmap.mseq)
	pcalau12i	$fp, %pc_hi20(A__align_gapmap.ogcp1)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp2)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp2)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx2)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.floatwork)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.intwork)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	blt	$s4, $s7, .LBB6_4
# %bb.3:
	bge	$s3, $s8, .LBB6_8
.LBB6_4:
	move	$s0, $a5
	pcalau12i	$s7, %pc_hi20(A__align_gapmap.match)
	blez	$s4, .LBB6_7
# %bb.5:
	blez	$s3, .LBB6_7
# %bb.6:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(A__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(A__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(A__align_gapmap.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
.LBB6_7:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	addi.w	$s2, $s4, 100
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.w	$s6, $s3, 100
	addi.w	$s5, $s3, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(A__align_gapmap.match)
	addi.w	$s7, $s4, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.initverticalw)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s6, $s2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(A__align_gapmap.mseq)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx2)
	slt	$a0, $s6, $s2
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$a5, $s0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.intwork)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$s4, $a0, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
.LBB6_8:
	blez	$s1, .LBB6_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $a5, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.mseq1)
	move	$a2, $s1
	move	$a3, $s6
	.p2align	4, , 16
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s7
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_10
.LBB6_11:                               # %.preheader332
	blez	$s0, .LBB6_14
# %bb.12:                               # %.lr.ph340
	ld.d	$a1, $a5, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq2)
	alsl.d	$a1, $s1, $a1, 3
	move	$a2, $s0
	move	$a3, $s2
	.p2align	4, , 16
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_13
.LBB6_14:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s5, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s5, 0
	blt	$a0, $s4, .LBB6_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s3, .LBB6_17
# %bb.16:                               # %._crit_edge481
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB6_21
.LBB6_17:
	beqz	$a0, .LBB6_20
# %bb.18:
	beqz	$a1, .LBB6_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(A__align_gapmap.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s3, $a1, %pc_lo12(A__align_gapmap.orlgth2)
	ld.w	$a1, $s5, 0
.LBB6_20:
	slt	$a2, $a0, $s4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$s4, $a2, $a0
	slt	$a0, $a1, $s3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	addi.w	$a0, $s4, 10
	addi.w	$a1, $s3, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s4, $fp, 0
	st.w	$s3, $s5, 0
.LBB6_21:
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$a1, $s6, 0
	pcalau12i	$a2, %pc_hi20(A__align_gapmap.ijp)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.ijp)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s6
	move	$a1, $s5
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s2
	move	$a1, $s5
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s7
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s7
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	blez	$s7, .LBB6_28
# %bb.22:                               # %.lr.ph343
	ld.d	$a0, $fp, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB6_25
# %bb.23:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB6_200
# %bb.24:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB6_200
.LBB6_25:
	move	$a3, $zero
.LBB6_26:                               # %scalar.ph.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_27:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a0, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a0, 0
	fld.s	$fa2, $a2, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB6_27
.LBB6_28:                               # %.preheader331
	blez	$s8, .LBB6_35
# %bb.29:                               # %.lr.ph345
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB6_32
# %bb.30:                               # %vector.memcheck539
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB6_203
# %bb.31:                               # %vector.memcheck539
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB6_203
.LBB6_32:
	move	$a3, $zero
.LBB6_33:                               # %scalar.ph545.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_34:                               # %scalar.ph545
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a0, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a0, 0
	fld.s	$fa2, $a2, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB6_34
.LBB6_35:                               # %._crit_edge346
	ld.d	$a0, $sp, 464
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 456
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(A__align_gapmap.w1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align_gapmap.w2)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align_gapmap.floatwork)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $zero
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s6
	move	$a6, $s5
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a2, $a0, 32
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	beqz	$a0, .LBB6_42
# %bb.36:
	ld.d	$s5, $a1, %pc_lo12(impmtx)
	beqz	$s0, .LBB6_39
# %bb.37:                               # %.lr.ph.i
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_38:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s5, $a4
	fldx.s	$fa0, $a4, $a0
	fld.s	$fa1, $s2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $s2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s2, 0
	move	$s2, $a4
	bnez	$a1, .LBB6_38
.LBB6_39:                               # %imp_match_out_vead_tate_gapmap.exit
	ori	$a7, $zero, 1
	ori	$s6, $zero, 1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $zero
	move	$a4, $s8
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB6_51
# %bb.40:                               # %.lr.ph.i309.preheader
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s5, $a0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_41:                               # %.lr.ph.i309
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
	bnez	$a1, .LBB6_41
	b	.LBB6_43
.LBB6_42:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s6
	move	$a6, $s5
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
.LBB6_43:                               # %imp_match_out_vead_gapmap.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB6_52
# %bb.44:                               # %.preheader330
	blez	$s8, .LBB6_60
# %bb.45:                               # %.lr.ph349
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_49
# %bb.46:                               # %vector.ph560
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI6_1)
	addi.d	$a5, $s3, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_47:                               # %vector.body563
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
	bnez	$a6, .LBB6_47
# %bb.48:                               # %middle.block567
	beq	$a2, $a4, .LBB6_60
.LBB6_49:                               # %scalar.ph558.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_50:                               # %scalar.ph558
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
	bnez	$a1, .LBB6_50
	b	.LBB6_60
.LBB6_51:                               # %imp_match_out_vead_gapmap.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	bne	$a0, $s6, .LBB6_60
.LBB6_52:                               # %.preheader327
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	blez	$s0, .LBB6_56
# %bb.53:                               # %.lr.ph355
	ld.d	$a0, $t4, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a5, $zero, 8
	ori	$a3, $zero, 1
	bgeu	$a4, $a5, .LBB6_206
.LBB6_54:                               # %scalar.ph598.preheader
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a4, $a3, $s2, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB6_55:                               # %scalar.ph598
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB6_55
.LBB6_56:                               # %.preheader325
	blez	$s8, .LBB6_72
# %bb.57:                               # %.lr.ph358
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a5, $zero, 8
	ori	$a3, $zero, 1
	bgeu	$a4, $a5, .LBB6_211
.LBB6_58:                               # %scalar.ph628.preheader
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB6_59:                               # %scalar.ph628
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB6_59
	b	.LBB6_68
.LBB6_60:                               # %.preheader328
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	blez	$s0, .LBB6_67
# %bb.61:                               # %.lr.ph352
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_65
# %bb.62:                               # %vector.ph572
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI6_1)
	addi.d	$a5, $s2, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_63:                               # %vector.body577
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
	bnez	$a6, .LBB6_63
# %bb.64:                               # %middle.block584
	beq	$a2, $a4, .LBB6_67
.LBB6_65:                               # %scalar.ph570.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s2, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_66:                               # %scalar.ph570
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
	bnez	$a1, .LBB6_66
.LBB6_67:                               # %.loopexit326
	blez	$s8, .LBB6_72
.LBB6_68:                               # %.lr.ph362
	ld.d	$a6, $t4, %pc_lo12(A__align_gapmap.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.m)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -1
	ori	$a7, $zero, 12
	ori	$a4, $zero, 1
	bgeu	$a5, $a7, .LBB6_123
.LBB6_69:                               # %scalar.ph658.preheader
	alsl.d	$a5, $a4, $s3, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a1, $a4, $a1, 2
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_70:                               # %scalar.ph658
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB6_70
.LBB6_71:
	move	$a0, $zero
	b	.LBB6_73
.LBB6_72:                               # %._crit_edge363
	ori	$a0, $zero, 1
	beqz	$s8, .LBB6_216
.LBB6_73:
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $a5, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s3, $a1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB6_74:
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $a1, %pc_lo12(A__align_gapmap.lastverticalw)
	fst.s	$fa0, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $a1, $a2
	ori	$a1, $zero, 2
	blt	$a3, $a1, .LBB6_99
# %bb.75:                               # %.lr.ph387
	ld.d	$a1, $t3, %pc_lo12(impmtx)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $a1, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.ijp)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.m)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(A__align_gapmap.fgcp2)
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(A__align_gapmap.fgcp1)
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a4, $t4, %pc_lo12(A__align_gapmap.ogcp1)
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	ori	$a4, $zero, 0
	lu32i.d	$a4, -1
	add.d	$a4, $a5, $a4
	srai.d	$t2, $a4, 30
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a1, $a2, 4
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a1, $a6, 4
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	ori	$t6, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$t7, $a1, %got_pc_lo12(n_dis_consweight_multi)
	ori	$t8, $zero, 208
	addi.d	$ra, $sp, 248
	ori	$a2, $zero, 26
	fmov.s	$fs0, $fa0
	move	$a5, $s3
	b	.LBB6_77
	.p2align	4, , 16
.LBB6_76:                               # %._crit_edge379
                                        #   in Loop: Header=BB6_77 Depth=1
	fldx.s	$fa1, $s3, $t2
	addi.d	$t6, $t6, 1
	fstx.s	$fa1, $s7, $a6
	move	$a5, $s3
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	beq	$t6, $a3, .LBB6_100
.LBB6_77:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_78 Depth 2
                                        #       Child Loop BB6_79 Depth 3
                                        #     Child Loop BB6_84 Depth 2
                                        #       Child Loop BB6_86 Depth 3
                                        #     Child Loop BB6_89 Depth 2
                                        #     Child Loop BB6_93 Depth 2
	addi.d	$a4, $t6, -1
	slli.d	$t0, $a4, 2
	fldx.s	$fa1, $s2, $t0
	move	$a1, $zero
	move	$s3, $fp
	move	$fp, $a5
	fst.s	$fa1, $a5, 0
	slli.d	$a6, $t6, 2
	move	$a5, $t7
	.p2align	4, , 16
.LBB6_78:                               #   Parent Loop BB6_77 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_79 Depth 3
	move	$a7, $zero
	move	$t1, $a5
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB6_79:                               #   Parent Loop BB6_77 Depth=1
                                        #     Parent Loop BB6_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$t3, $s4, $a7
	fld.s	$fa2, $t1, 0
	fldx.s	$fa3, $t3, $a6
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, 104
	bne	$a7, $t8, .LBB6_79
# %bb.80:                               #   in Loop: Header=BB6_78 Depth=2
	slli.d	$a7, $a1, 2
	fstx.s	$fa1, $a7, $ra
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 4
	bne	$a1, $a2, .LBB6_78
# %bb.81:                               # %.preheader.i
                                        #   in Loop: Header=BB6_77 Depth=1
	bnez	$a0, .LBB6_90
# %bb.82:                               # %.lr.ph73.i.preheader
                                        #   in Loop: Header=BB6_77 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	move	$t1, $s3
	b	.LBB6_84
	.p2align	4, , 16
.LBB6_83:                               # %._crit_edge.i
                                        #   in Loop: Header=BB6_84 Depth=2
	addi.w	$a1, $a1, -1
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, 4
	beqz	$a1, .LBB6_87
.LBB6_84:                               # %.lr.ph73.i
                                        #   Parent Loop BB6_77 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_86 Depth 3
	ld.d	$t4, $a5, 0
	ld.wu	$t3, $t4, 0
	addi.w	$t5, $t3, 0
	st.w	$zero, $t1, 0
	bltz	$t5, .LBB6_83
# %bb.85:                               # %.lr.ph.i311
                                        #   in Loop: Header=BB6_84 Depth=2
	ld.d	$t5, $a7, 0
	addi.d	$t4, $t4, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB6_86:                               #   Parent Loop BB6_77 Depth=1
                                        #     Parent Loop BB6_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t3, $t3, 2
	fldx.s	$fa2, $t3, $ra
	fld.s	$fa3, $t5, 0
	ld.wu	$t3, $t4, 0
	addi.d	$t5, $t5, 4
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $t1, 0
	addi.w	$s5, $t3, 0
	addi.d	$t4, $t4, 4
	bgez	$s5, .LBB6_86
	b	.LBB6_83
	.p2align	4, , 16
.LBB6_87:                               # %match_calc.exit
                                        #   in Loop: Header=BB6_77 Depth=1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_90
# %bb.88:                               #   in Loop: Header=BB6_77 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a6
	slli.d	$a1, $a1, 3
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a1, $a5, $a1
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	move	$a7, $s3
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_89:                               # %.lr.ph.i313
                                        #   Parent Loop BB6_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	slli.d	$t3, $t3, 2
	fldx.s	$fa1, $a1, $t3
	fld.s	$fa2, $a7, 0
	addi.w	$a5, $a5, -1
	addi.d	$t1, $t1, 4
	addi.d	$t3, $a7, 4
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a7, 0
	move	$a7, $t3
	bnez	$a5, .LBB6_89
.LBB6_90:                               # %imp_match_out_vead_gapmap.exit319
                                        #   in Loop: Header=BB6_77 Depth=1
	fldx.s	$fa1, $s2, $a6
	fst.s	$fa1, $s3, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_76
# %bb.91:                               # %.lr.ph378.preheader
                                        #   in Loop: Header=BB6_77 Depth=1
	move	$t1, $zero
	move	$a7, $zero
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	fldx.s	$fa1, $a1, $t0
	fld.s	$fa3, $fp, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	fld.s	$fa4, $a1, 4
	slli.d	$a1, $t6, 3
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a1, $a5, $a1
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	fldx.s	$fa2, $a5, $a6
	fadd.s	$fa3, $fa3, $fa4
	addi.d	$t0, $s3, 4
	addi.d	$t3, $a1, 4
	addi.d	$t4, $zero, -1
	ld.d	$t5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$s6, $fp
	b	.LBB6_93
	.p2align	4, , 16
.LBB6_92:                               #   in Loop: Header=BB6_93 Depth=2
	fadd.s	$fa4, $fa4, $fa5
	fcmp.cult.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	movcf2gr	$s0, $fcc0
	fld.s	$fa4, $t0, 0
	masknez	$s2, $t1, $s0
	maskeqz	$a7, $a7, $s0
	or	$a7, $a7, $s2
	fadd.s	$fa4, $fs0, $fa4
	fst.s	$fa4, $t0, 0
	addi.d	$s6, $s6, 4
	addi.d	$a1, $a1, 4
	addi.d	$t0, $t0, 4
	addi.d	$t3, $t3, 4
	addi.d	$s5, $s5, 4
	addi.d	$a5, $a5, 4
	addi.d	$t5, $t5, 4
	addi.w	$t1, $t1, 1
	addi.d	$t4, $t4, -1
	beq	$s8, $t1, .LBB6_76
.LBB6_93:                               # %.lr.ph378
                                        #   Parent Loop BB6_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa5, $a1, 0
	fld.s	$fa4, $s6, 0
	fadd.s	$fa5, $fa3, $fa5
	fcmp.cule.s	$fcc0, $fa5, $fa4
	st.w	$zero, $t3, 0
	fmov.s	$fs0, $fa4
	bcnez	$fcc0, .LBB6_95
# %bb.94:                               #   in Loop: Header=BB6_93 Depth=2
	add.d	$s0, $a7, $t4
	st.w	$s0, $t3, 0
	fmov.s	$fs0, $fa5
.LBB6_95:                               #   in Loop: Header=BB6_93 Depth=2
	fld.s	$fa6, $s5, 0
	fld.s	$fa5, $t5, 0
	fadd.s	$fa7, $fa1, $fa6
	fcmp.cule.s	$fcc0, $fa7, $fs0
	bcnez	$fcc0, .LBB6_97
# %bb.96:                               #   in Loop: Header=BB6_93 Depth=2
	ld.w	$s0, $a5, 0
	sub.d	$s0, $t6, $s0
	st.w	$s0, $t3, 0
	fmov.s	$fs0, $fa7
.LBB6_97:                               #   in Loop: Header=BB6_93 Depth=2
	fadd.s	$fa7, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa7, $fa6
	bcnez	$fcc0, .LBB6_92
# %bb.98:                               #   in Loop: Header=BB6_93 Depth=2
	fst.s	$fa7, $s5, 0
	st.w	$a4, $a5, 0
	b	.LBB6_92
.LBB6_99:
	movgr2fr.w	$fs0, $zero
.LBB6_100:                              # %._crit_edge388
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_115
# %bb.101:                              # %.preheader324
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_108
# %bb.102:                              # %.lr.ph397
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_106
# %bb.103:                              # %vector.ph676
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_2)
	vld	$vr2, $a5, %pc_lo12(.LCPI6_2)
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	vld	$vr3, $a5, %pc_lo12(.LCPI6_3)
	addi.d	$a5, $s3, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_104:                              # %vector.body683
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
	bnez	$a6, .LBB6_104
# %bb.105:                              # %middle.block690
	beq	$a2, $a4, .LBB6_108
.LBB6_106:                              # %scalar.ph674.preheader
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_107:                              # %scalar.ph674
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
	bnez	$a1, .LBB6_107
.LBB6_108:                              # %.preheader323
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	blez	$a0, .LBB6_115
# %bb.109:                              # %.lr.ph400
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
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
	bltu	$a2, $a3, .LBB6_113
# %bb.110:                              # %vector.ph695
	move	$a4, $a2
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $a2, 1
	addi.d	$a5, $s7, 8
	vldi	$vr2, -928
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_111:                              # %vector.body698
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
	bnez	$a6, .LBB6_111
# %bb.112:                              # %middle.block703
	beq	$a2, $a4, .LBB6_115
.LBB6_113:                              # %scalar.ph693.preheader
	alsl.d	$a2, $a0, $s7, 2
	sub.d	$a1, $a1, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_114:                              # %scalar.ph693
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
	bnez	$a1, .LBB6_114
.LBB6_115:                              # %.loopexit
	ld.d	$s6, $fp, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align_gapmap.mseq2)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align_gapmap.ijp)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_122
# %bb.116:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	add.w	$a0, $a0, $s8
	move	$s0, $a0
	addi.w	$s5, $a0, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ori	$a3, $zero, 1
	addi.w	$s2, $s8, 0
	move	$t1, $fp
	addi.w	$a2, $fp, 0
	beq	$a1, $a3, .LBB6_133
# %bb.117:
	fld.s	$fa0, $s7, 0
	blez	$s2, .LBB6_128
# %bb.118:                              # %.lr.ph.i322
	slli.d	$a1, $s8, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $t1, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	b	.LBB6_120
	.p2align	4, , 16
.LBB6_119:                              #   in Loop: Header=BB6_120 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s7, $s7, 4
	beqz	$a4, .LBB6_128
.LBB6_120:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_119
# %bb.121:                              #   in Loop: Header=BB6_120 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_119
.LBB6_122:
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	st.d	$s0, $sp, 0
	move	$a0, $s3
	move	$a1, $s7
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s3
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $s4
	move	$a7, $s1
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB6_191
.LBB6_123:                              # %vector.memcheck646
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $s3, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s3, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB6_69
# %bb.124:                              # %vector.memcheck646
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB6_69
# %bb.125:                              # %vector.ph660
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a4, $a5
	bstrins.d	$a4, $a7, 2, 0
	vldrepl.w	$vr0, $a0, 0
	addi.d	$a7, $s3, 16
	addi.d	$t0, $a1, 20
	addi.d	$t1, $a2, 20
	vrepli.b	$vr1, 0
	move	$t2, $a6
	.p2align	4, , 16
.LBB6_126:                              # %vector.body663
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, -16
	vld	$vr3, $a7, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $t0, -16
	vst	$vr3, $t0, 0
	vst	$vr1, $t1, -16
	vst	$vr1, $t1, 0
	addi.d	$t2, $t2, -8
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB6_126
# %bb.127:                              # %middle.block671
	bne	$a5, $a6, .LBB6_69
	b	.LBB6_71
.LBB6_128:                              # %.preheader172.i
	blez	$a2, .LBB6_133
# %bb.129:                              # %.lr.ph177.i
	slli.d	$a1, $s8, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $t1, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $t1, 30, 0
	sub.d	$a5, $zero, $t1
	b	.LBB6_131
	.p2align	4, , 16
.LBB6_130:                              #   in Loop: Header=BB6_131 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB6_133
.LBB6_131:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_130
# %bb.132:                              #   in Loop: Header=BB6_131 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_130
.LBB6_133:                              # %.loopexit.i
	bltz	$s2, .LBB6_141
# %bb.134:                              # %.lr.ph180.preheader.i
	addi.d	$a3, $s8, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB6_136
# %bb.135:
	move	$a3, $zero
	b	.LBB6_139
.LBB6_136:                              # %vector.ph708
	pcalau12i	$a4, %pc_hi20(.LCPI6_4)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_4)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_137:                              # %vector.body711
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
	bnez	$a5, .LBB6_137
# %bb.138:                              # %middle.block718
	beq	$a1, $a3, .LBB6_141
.LBB6_139:                              # %.lr.ph180.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB6_140:                              # %.lr.ph180.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB6_140
.LBB6_141:                              # %.preheader171.i
	ld.d	$a1, $sp, 448
	bltz	$a2, .LBB6_149
# %bb.142:                              # %.lr.ph183.i
	ld.d	$a3, $ra, 0
	addi.d	$a5, $t1, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB6_144
# %bb.143:
	move	$a5, $zero
	b	.LBB6_147
.LBB6_144:                              # %vector.ph723
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI6_5)
	vld	$vr0, $a6, %pc_lo12(.LCPI6_5)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_145:                              # %vector.body726
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_145
# %bb.146:                              # %middle.block732
	beq	$a4, $a5, .LBB6_149
.LBB6_147:                              # %scalar.ph721.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB6_148:                              # %scalar.ph721
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB6_148
.LBB6_149:                              # %._crit_edge.i320
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s2
	add.d	$s7, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	add.d	$a3, $a0, $s2
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	bltz	$s0, .LBB6_183
# %bb.150:                              # %.lr.ph211.i.preheader
	move	$t0, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 45
	ori	$a4, $zero, 111
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 32
	move	$a0, $t1
	move	$a7, $t1
	.p2align	4, , 16
.LBB6_151:                              # %.lr.ph211.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_161 Depth 2
                                        #     Child Loop BB6_165 Depth 2
                                        #     Child Loop BB6_171 Depth 2
                                        #     Child Loop BB6_176 Depth 2
	addi.w	$t2, $s8, 0
	slli.d	$a5, $t2, 3
	ldx.d	$a5, $ra, $a5
	addi.w	$t3, $a7, 0
	slli.d	$t5, $t3, 2
	ldx.w	$t4, $a5, $t5
	bltz	$t4, .LBB6_154
# %bb.152:                              #   in Loop: Header=BB6_151 Depth=1
	beqz	$t4, .LBB6_155
# %bb.153:                              #   in Loop: Header=BB6_151 Depth=1
	sub.d	$t1, $s8, $t4
	b	.LBB6_156
	.p2align	4, , 16
.LBB6_154:                              #   in Loop: Header=BB6_151 Depth=1
	addi.d	$t1, $s8, -1
	b	.LBB6_157
	.p2align	4, , 16
.LBB6_155:                              #   in Loop: Header=BB6_151 Depth=1
	addi.d	$t1, $s8, -1
.LBB6_156:                              #   in Loop: Header=BB6_151 Depth=1
	move	$t4, $a2
.LBB6_157:                              #   in Loop: Header=BB6_151 Depth=1
	nor	$t6, $t1, $zero
	add.w	$t7, $s8, $t6
	beqz	$t7, .LBB6_167
# %bb.158:                              # %.lr.ph189.i.preheader
                                        #   in Loop: Header=BB6_151 Depth=1
	bltu	$t7, $a6, .LBB6_163
# %bb.159:                              # %.lr.ph189.i.preheader
                                        #   in Loop: Header=BB6_151 Depth=1
	sub.d	$a5, $s7, $s3
	bltu	$a5, $a6, .LBB6_163
# %bb.160:                              # %vector.ph761
                                        #   in Loop: Header=BB6_151 Depth=1
	bstrpick.d	$s5, $t7, 31, 0
	bstrpick.d	$a5, $s5, 31, 5
	slli.d	$a5, $a5, 5
	sub.d	$t7, $t7, $a5
	sub.d	$t8, $s3, $a5
	sub.d	$fp, $s7, $a5
	addi.d	$s7, $s7, -16
	addi.d	$s3, $s3, -16
	move	$ra, $a5
	.p2align	4, , 16
.LBB6_161:                              # %vector.body765
                                        #   Parent Loop BB6_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s7, 0
	vst	$vr2, $s7, -16
	vst	$vr1, $s3, 0
	vst	$vr1, $s3, -16
	addi.d	$ra, $ra, -32
	addi.d	$s7, $s7, -32
	addi.d	$s3, $s3, -32
	bnez	$ra, .LBB6_161
# %bb.162:                              # %middle.block772
                                        #   in Loop: Header=BB6_151 Depth=1
	ld.d	$ra, $sp, 240                   # 8-byte Folded Reload
	bne	$a5, $s5, .LBB6_164
	b	.LBB6_166
	.p2align	4, , 16
.LBB6_163:                              #   in Loop: Header=BB6_151 Depth=1
	move	$t8, $s3
	move	$fp, $s7
.LBB6_164:                              # %.lr.ph189.i.preheader779
                                        #   in Loop: Header=BB6_151 Depth=1
	move	$a5, $t8
	move	$s3, $fp
	.p2align	4, , 16
.LBB6_165:                              # %.lr.ph189.i
                                        #   Parent Loop BB6_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$fp, $s3, -1
	st.b	$a4, $s3, -1
	addi.d	$t8, $a5, -1
	addi.w	$t7, $t7, -1
	st.b	$a3, $a5, -1
	move	$a5, $t8
	move	$s3, $fp
	bnez	$t7, .LBB6_165
.LBB6_166:                              # %._crit_edge190.loopexit.i
                                        #   in Loop: Header=BB6_151 Depth=1
	add.d	$a5, $s8, $t0
	add.d	$t0, $t6, $a5
	move	$s7, $fp
	move	$s3, $t8
.LBB6_167:                              # %._crit_edge190.i
                                        #   in Loop: Header=BB6_151 Depth=1
	beq	$t4, $a2, .LBB6_173
# %bb.168:                              # %.lr.ph199.preheader.i
                                        #   in Loop: Header=BB6_151 Depth=1
	addi.w	$a5, $zero, -9
	nor	$fp, $t4, $zero
	bltu	$a5, $t4, .LBB6_174
# %bb.169:                              # %.lr.ph199.preheader.i
                                        #   in Loop: Header=BB6_151 Depth=1
	sub.d	$a5, $s7, $s3
	ori	$t6, $zero, 8
	bltu	$a5, $t6, .LBB6_174
# %bb.170:                              # %vector.ph740
                                        #   in Loop: Header=BB6_151 Depth=1
	bstrpick.d	$a5, $fp, 30, 3
	slli.d	$s5, $a5, 3
	sub.d	$t8, $fp, $s5
	sub.d	$t6, $s3, $s5
	sub.d	$t7, $s7, $s5
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $t0, 0
	addi.d	$t0, $s7, -4
	addi.d	$s3, $s3, -4
	move	$s7, $s5
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB6_171:                              # %vector.body743
                                        #   Parent Loop BB6_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $t0, 0, 0
	vstelm.w	$vr1, $t0, -4, 0
	vstelm.w	$vr2, $s3, 0, 0
	vstelm.w	$vr2, $s3, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$s7, $s7, -8
	addi.d	$t0, $t0, -8
	addi.d	$s3, $s3, -8
	bnez	$s7, .LBB6_171
# %bb.172:                              # %middle.block750
                                        #   in Loop: Header=BB6_151 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$t0, $vr3, 0
	bne	$s5, $fp, .LBB6_175
	b	.LBB6_177
	.p2align	4, , 16
.LBB6_173:                              #   in Loop: Header=BB6_151 Depth=1
	move	$t7, $s7
	move	$t6, $s3
	b	.LBB6_177
	.p2align	4, , 16
.LBB6_174:                              #   in Loop: Header=BB6_151 Depth=1
	move	$t8, $fp
	move	$t6, $s3
	move	$t7, $s7
.LBB6_175:                              # %.lr.ph199.i.preheader
                                        #   in Loop: Header=BB6_151 Depth=1
	add.d	$t0, $t0, $t8
	.p2align	4, , 16
.LBB6_176:                              # %.lr.ph199.i
                                        #   Parent Loop BB6_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t7, -1
	addi.d	$t7, $t7, -1
	st.b	$a4, $t6, -1
	addi.w	$t8, $t8, -1
	addi.d	$t6, $t6, -1
	bnez	$t8, .LBB6_176
.LBB6_177:                              # %._crit_edge200.i
                                        #   in Loop: Header=BB6_151 Depth=1
	beq	$t2, $s2, .LBB6_180
# %bb.178:                              # %._crit_edge200.i
                                        #   in Loop: Header=BB6_151 Depth=1
	addi.w	$a5, $a0, 0
	beq	$t3, $a5, .LBB6_180
# %bb.179:                              #   in Loop: Header=BB6_151 Depth=1
	slli.d	$a5, $t2, 2
	ld.d	$t8, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a5, $t8, $a5
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t8, $t8, %pc_lo12(impmtx)
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t5, $fp, $t5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $t8, $a5
	slli.d	$t5, $t5, 2
	fldx.s	$fa3, $a5, $t5
	fld.s	$fa4, $a1, 0
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a1, 0
.LBB6_180:                              #   in Loop: Header=BB6_151 Depth=1
	blez	$t2, .LBB6_184
# %bb.181:                              #   in Loop: Header=BB6_151 Depth=1
	blez	$t3, .LBB6_184
# %bb.182:                              #   in Loop: Header=BB6_151 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s7, $t7, -1
	st.b	$a3, $t7, -1
	addi.d	$s3, $t6, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t6, -1
	move	$s8, $t1
	bge	$s0, $t0, .LBB6_151
.LBB6_183:                              # %._crit_edge212.i
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	bgtz	$s1, .LBB6_185
	b	.LBB6_187
.LBB6_184:
	move	$s7, $t7
	move	$s3, $t6
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	blez	$s1, .LBB6_187
.LBB6_185:                              # %.lr.ph220.preheader.i
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	move	$s5, $s1
	.p2align	4, , 16
.LBB6_186:                              # %.lr.ph220.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 8
	bnez	$s5, .LBB6_186
.LBB6_187:                              # %.preheader.i321
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	blez	$s0, .LBB6_190
# %bb.188:                              # %.lr.ph222.preheader.i
	move	$fp, $s2
	move	$s5, $s0
	.p2align	4, , 16
.LBB6_189:                              # %.lr.ph222.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s5, .LBB6_189
.LBB6_190:                              # %Atracking_localhom_gapmap.exit
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	move	$fp, $s6
.LBB6_191:
	ld.d	$a0, $fp, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_217
# %bb.192:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_217
# %bb.193:
	blez	$s1, .LBB6_196
.LBB6_194:                              # %.lr.ph403
	ld.d	$fp, $fp, %pc_lo12(A__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_195:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s3, $s3, 8
	bnez	$s1, .LBB6_195
.LBB6_196:                              # %.preheader
	blez	$s0, .LBB6_199
# %bb.197:                              # %.lr.ph405
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_198:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB6_198
.LBB6_199:                              # %._crit_edge406
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 352                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB6_200:                              # %vector.ph
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 2
	slli.d	$a3, $a3, 2
	lu52i.d	$a4, $zero, 1023
	vreplgr2vr.d	$vr0, $a4
	lu52i.d	$a4, $zero, 1022
	vreplgr2vr.d	$vr1, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_201:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vreplvei.w	$vr3, $vr2, 3
	fcvt.d.s	$fa3, $fa3
	vreplvei.w	$vr4, $vr2, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr3, 16
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	vreplvei.w	$vr2, $vr2, 0
	fcvt.d.s	$fa2, $fa2
	vextrins.d	$vr2, $vr3, 16
	vfsub.d	$vr2, $vr0, $vr2
	vfsub.d	$vr3, $vr0, $vr4
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr2, $vr2, $vr1
	vreplvei.d	$vr4, $vr2, 1
	fcvt.s.d	$fa4, $fa4
	vreplvei.d	$vr2, $vr2, 0
	fcvt.s.d	$fa2, $fa2
	vextrins.w	$vr2, $vr4, 16
	vreplvei.d	$vr4, $vr3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr2, $vr4, 32
	vreplvei.d	$vr3, $vr3, 1
	vld	$vr4, $a5, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr2, $vr3, 48
	vst	$vr2, $a4, 0
	vreplvei.w	$vr2, $vr4, 3
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr3, $vr4, 2
	fcvt.d.s	$fa3, $fa3
	vextrins.d	$vr3, $vr2, 16
	vreplvei.w	$vr2, $vr4, 1
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr4, $vr4, 0
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr2, 16
	vfsub.d	$vr2, $vr0, $vr4
	vfsub.d	$vr3, $vr0, $vr3
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr2, $vr2, $vr1
	vreplvei.d	$vr4, $vr2, 1
	fcvt.s.d	$fa4, $fa4
	vreplvei.d	$vr2, $vr2, 0
	fcvt.s.d	$fa2, $fa2
	vextrins.w	$vr2, $vr4, 16
	vreplvei.d	$vr4, $vr3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr2, $vr4, 32
	vreplvei.d	$vr3, $vr3, 1
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr2, $vr3, 48
	vst	$vr2, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB6_201
# %bb.202:                              # %middle.block
	beq	$a1, $a3, .LBB6_28
	b	.LBB6_26
.LBB6_203:                              # %vector.ph547
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 2
	slli.d	$a3, $a3, 2
	lu52i.d	$a4, $zero, 1023
	vreplgr2vr.d	$vr0, $a4
	lu52i.d	$a4, $zero, 1022
	vreplgr2vr.d	$vr1, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_204:                              # %vector.body550
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vreplvei.w	$vr3, $vr2, 3
	fcvt.d.s	$fa3, $fa3
	vreplvei.w	$vr4, $vr2, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr3, 16
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	vreplvei.w	$vr2, $vr2, 0
	fcvt.d.s	$fa2, $fa2
	vextrins.d	$vr2, $vr3, 16
	vfsub.d	$vr2, $vr0, $vr2
	vfsub.d	$vr3, $vr0, $vr4
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr2, $vr2, $vr1
	vreplvei.d	$vr4, $vr2, 1
	fcvt.s.d	$fa4, $fa4
	vreplvei.d	$vr2, $vr2, 0
	fcvt.s.d	$fa2, $fa2
	vextrins.w	$vr2, $vr4, 16
	vreplvei.d	$vr4, $vr3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr2, $vr4, 32
	vreplvei.d	$vr3, $vr3, 1
	vld	$vr4, $a5, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr2, $vr3, 48
	vst	$vr2, $a4, 0
	vreplvei.w	$vr2, $vr4, 3
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr3, $vr4, 2
	fcvt.d.s	$fa3, $fa3
	vextrins.d	$vr3, $vr2, 16
	vreplvei.w	$vr2, $vr4, 1
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr4, $vr4, 0
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr2, 16
	vfsub.d	$vr2, $vr0, $vr4
	vfsub.d	$vr3, $vr0, $vr3
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr2, $vr2, $vr1
	vreplvei.d	$vr4, $vr2, 1
	fcvt.s.d	$fa4, $fa4
	vreplvei.d	$vr2, $vr2, 0
	fcvt.s.d	$fa2, $fa2
	vextrins.w	$vr2, $vr4, 16
	vreplvei.d	$vr4, $vr3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr2, $vr4, 32
	vreplvei.d	$vr3, $vr3, 1
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr2, $vr3, 48
	vst	$vr2, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB6_204
# %bb.205:                              # %middle.block555
	beq	$a1, $a3, .LBB6_35
	b	.LBB6_33
.LBB6_206:                              # %vector.memcheck587
	addi.d	$a5, $s2, 4
	alsl.d	$a6, $a1, $s2, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_54
# %bb.207:                              # %vector.memcheck587
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_54
# %bb.208:                              # %vector.ph600
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a3, $a6, 2, 0
	addi.d	$a6, $a2, 16
	addi.d	$a7, $s2, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_209:                              # %vector.body603
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_209
# %bb.210:                              # %middle.block613
	bne	$a4, $a5, .LBB6_54
	b	.LBB6_56
.LBB6_211:                              # %vector.memcheck616
	addi.d	$a5, $s3, 4
	alsl.d	$a6, $a1, $s3, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_58
# %bb.212:                              # %vector.memcheck616
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_58
# %bb.213:                              # %vector.ph630
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a3, $a6, 2, 0
	addi.d	$a6, $a2, 16
	addi.d	$a7, $s3, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_214:                              # %vector.body633
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_214
# %bb.215:                              # %middle.block643
	bne	$a4, $a5, .LBB6_58
	b	.LBB6_68
.LBB6_216:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	b	.LBB6_74
.LBB6_217:
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
	bgtz	$s1, .LBB6_194
	b	.LBB6_196
.Lfunc_end6:
	.size	A__align_gapmap, .Lfunc_end6-A__align_gapmap
                                        # -- End function
	.globl	translate_and_Calign            # -- Begin function translate_and_Calign
	.p2align	5
	.type	translate_and_Calign,@function
translate_and_Calign:                   # @translate_and_Calign
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ori	$a7, $zero, 1
	move	$s1, $a6
	move	$fp, $a1
	bne	$a4, $a7, .LBB7_3
# %bb.1:
	beq	$a5, $a7, .LBB7_3
# %bb.2:
	ld.d	$s0, $a0, 0
	addi.w	$s3, $a5, 1
	b	.LBB7_7
.LBB7_3:
	beq	$a4, $a7, .LBB7_6
# %bb.4:
	ori	$a1, $zero, 1
	bne	$a5, $a1, .LBB7_6
# %bb.5:
	ld.d	$s0, $fp, 0
	addi.w	$s3, $a4, 1
	move	$fp, $a0
	move	$a3, $a2
	b	.LBB7_7
.LBB7_6:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	move	$fp, $zero
	move	$a3, $zero
	move	$s3, $zero
.LBB7_7:
	addi.w	$a4, $s3, -2
	addi.d	$a0, $sp, 20
	move	$a1, $fp
	move	$a2, $s0
	move	$a5, $zero
	pcaddu18i	$ra, %call36(Calignm1)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a2, 1220
	blt	$s1, $a3, .LBB7_13
# %bb.8:
	ori	$a0, $a2, 2881
	bge	$a3, $a0, .LBB7_13
.LBB7_9:
	ori	$a0, $zero, 2
	addi.w	$s1, $s3, -1
	blt	$s3, $a0, .LBB7_12
# %bb.10:                               # %.lr.ph.preheader
	move	$s3, $s1
	move	$s4, $s2
	.p2align	4, , 16
.LBB7_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB7_11
.LBB7_12:                               # %._crit_edge
	slli.d	$a0, $s1, 3
	ldx.d	$a1, $s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB7_13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a2, 2880
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	b	.LBB7_9
.Lfunc_end7:
	.size	translate_and_Calign, .Lfunc_end7-translate_and_Calign
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strict.nocount1,@object # @imp_match_init_strict.nocount1
	.local	imp_match_init_strict.nocount1
	.comm	imp_match_init_strict.nocount1,8,8
	.type	imp_match_init_strict.nocount2,@object # @imp_match_init_strict.nocount2
	.local	imp_match_init_strict.nocount2
	.comm	imp_match_init_strict.nocount2,8,8
	.type	impalloclen,@object             # @impalloclen
	.local	impalloclen
	.comm	impalloclen,4,4
	.type	A__align.m,@object              # @A__align.m
	.local	A__align.m
	.comm	A__align.m,8,8
	.type	A__align.ijp,@object            # @A__align.ijp
	.local	A__align.ijp
	.comm	A__align.ijp,8,8
	.type	A__align.mp,@object             # @A__align.mp
	.local	A__align.mp
	.comm	A__align.mp,8,8
	.type	A__align.w1,@object             # @A__align.w1
	.local	A__align.w1
	.comm	A__align.w1,8,8
	.type	A__align.w2,@object             # @A__align.w2
	.local	A__align.w2
	.comm	A__align.w2,8,8
	.type	A__align.match,@object          # @A__align.match
	.local	A__align.match
	.comm	A__align.match,8,8
	.type	A__align.initverticalw,@object  # @A__align.initverticalw
	.local	A__align.initverticalw
	.comm	A__align.initverticalw,8,8
	.type	A__align.lastverticalw,@object  # @A__align.lastverticalw
	.local	A__align.lastverticalw
	.comm	A__align.lastverticalw,8,8
	.type	A__align.mseq1,@object          # @A__align.mseq1
	.local	A__align.mseq1
	.comm	A__align.mseq1,8,8
	.type	A__align.mseq2,@object          # @A__align.mseq2
	.local	A__align.mseq2
	.comm	A__align.mseq2,8,8
	.type	A__align.mseq,@object           # @A__align.mseq
	.local	A__align.mseq
	.comm	A__align.mseq,8,8
	.type	A__align.ogcp1,@object          # @A__align.ogcp1
	.local	A__align.ogcp1
	.comm	A__align.ogcp1,8,8
	.type	A__align.ogcp2,@object          # @A__align.ogcp2
	.local	A__align.ogcp2
	.comm	A__align.ogcp2,8,8
	.type	A__align.fgcp1,@object          # @A__align.fgcp1
	.local	A__align.fgcp1
	.comm	A__align.fgcp1,8,8
	.type	A__align.fgcp2,@object          # @A__align.fgcp2
	.local	A__align.fgcp2
	.comm	A__align.fgcp2,8,8
	.type	A__align.cpmx1,@object          # @A__align.cpmx1
	.local	A__align.cpmx1
	.comm	A__align.cpmx1,8,8
	.type	A__align.cpmx2,@object          # @A__align.cpmx2
	.local	A__align.cpmx2
	.comm	A__align.cpmx2,8,8
	.type	A__align.intwork,@object        # @A__align.intwork
	.local	A__align.intwork
	.comm	A__align.intwork,8,8
	.type	A__align.floatwork,@object      # @A__align.floatwork
	.local	A__align.floatwork
	.comm	A__align.floatwork,8,8
	.type	A__align.orlgth1,@object        # @A__align.orlgth1
	.local	A__align.orlgth1
	.comm	A__align.orlgth1,4,4
	.type	A__align.orlgth2,@object        # @A__align.orlgth2
	.local	A__align.orlgth2
	.comm	A__align.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.1, 14

	.type	A__align_gapmap.m,@object       # @A__align_gapmap.m
	.local	A__align_gapmap.m
	.comm	A__align_gapmap.m,8,8
	.type	A__align_gapmap.ijp,@object     # @A__align_gapmap.ijp
	.local	A__align_gapmap.ijp
	.comm	A__align_gapmap.ijp,8,8
	.type	A__align_gapmap.mp,@object      # @A__align_gapmap.mp
	.local	A__align_gapmap.mp
	.comm	A__align_gapmap.mp,8,8
	.type	A__align_gapmap.w1,@object      # @A__align_gapmap.w1
	.local	A__align_gapmap.w1
	.comm	A__align_gapmap.w1,8,8
	.type	A__align_gapmap.w2,@object      # @A__align_gapmap.w2
	.local	A__align_gapmap.w2
	.comm	A__align_gapmap.w2,8,8
	.type	A__align_gapmap.match,@object   # @A__align_gapmap.match
	.local	A__align_gapmap.match
	.comm	A__align_gapmap.match,8,8
	.type	A__align_gapmap.initverticalw,@object # @A__align_gapmap.initverticalw
	.local	A__align_gapmap.initverticalw
	.comm	A__align_gapmap.initverticalw,8,8
	.type	A__align_gapmap.lastverticalw,@object # @A__align_gapmap.lastverticalw
	.local	A__align_gapmap.lastverticalw
	.comm	A__align_gapmap.lastverticalw,8,8
	.type	A__align_gapmap.mseq1,@object   # @A__align_gapmap.mseq1
	.local	A__align_gapmap.mseq1
	.comm	A__align_gapmap.mseq1,8,8
	.type	A__align_gapmap.mseq2,@object   # @A__align_gapmap.mseq2
	.local	A__align_gapmap.mseq2
	.comm	A__align_gapmap.mseq2,8,8
	.type	A__align_gapmap.mseq,@object    # @A__align_gapmap.mseq
	.local	A__align_gapmap.mseq
	.comm	A__align_gapmap.mseq,8,8
	.type	A__align_gapmap.ogcp1,@object   # @A__align_gapmap.ogcp1
	.local	A__align_gapmap.ogcp1
	.comm	A__align_gapmap.ogcp1,8,8
	.type	A__align_gapmap.ogcp2,@object   # @A__align_gapmap.ogcp2
	.local	A__align_gapmap.ogcp2
	.comm	A__align_gapmap.ogcp2,8,8
	.type	A__align_gapmap.fgcp1,@object   # @A__align_gapmap.fgcp1
	.local	A__align_gapmap.fgcp1
	.comm	A__align_gapmap.fgcp1,8,8
	.type	A__align_gapmap.fgcp2,@object   # @A__align_gapmap.fgcp2
	.local	A__align_gapmap.fgcp2
	.comm	A__align_gapmap.fgcp2,8,8
	.type	A__align_gapmap.cpmx1,@object   # @A__align_gapmap.cpmx1
	.local	A__align_gapmap.cpmx1
	.comm	A__align_gapmap.cpmx1,8,8
	.type	A__align_gapmap.cpmx2,@object   # @A__align_gapmap.cpmx2
	.local	A__align_gapmap.cpmx2
	.comm	A__align_gapmap.cpmx2,8,8
	.type	A__align_gapmap.intwork,@object # @A__align_gapmap.intwork
	.local	A__align_gapmap.intwork
	.comm	A__align_gapmap.intwork,8,8
	.type	A__align_gapmap.floatwork,@object # @A__align_gapmap.floatwork
	.local	A__align_gapmap.floatwork
	.comm	A__align_gapmap.floatwork,8,8
	.type	A__align_gapmap.orlgth1,@object # @A__align_gapmap.orlgth1
	.local	A__align_gapmap.orlgth1
	.comm	A__align_gapmap.orlgth1,4,4
	.type	A__align_gapmap.orlgth2,@object # @A__align_gapmap.orlgth2
	.local	A__align_gapmap.orlgth2
	.comm	A__align_gapmap.orlgth2,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ERROR in translate_and_Calign"
	.size	.L.str.2, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
