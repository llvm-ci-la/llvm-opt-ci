	.file	"Ralignmm.c"
	.text
	.globl	imp_match_out_scR               # -- Begin function imp_match_out_scR
	.p2align	5
	.type	imp_match_out_scR,@function
imp_match_out_scR:                      # @imp_match_out_scR
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_scR, .Lfunc_end0-imp_match_out_scR
                                        # -- End function
	.globl	imp_match_init_strictR          # -- Begin function imp_match_init_strictR
	.p2align	5
	.type	imp_match_init_strictR,@function
imp_match_init_strictR:                 # @imp_match_init_strictR
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
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictR.impalloclen)
	ld.w	$a0, $s7, %pc_lo12(imp_match_init_strictR.impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictR.nocount1)
	pcalau12i	$s6, %pc_hi20(imp_match_init_strictR.nocount2)
	blt	$a0, $a1, .LBB1_2
# %bb.1:
	addi.w	$a1, $s4, 2
	bge	$a0, $a1, .LBB1_9
.LBB1_2:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB1_4
# %bb.3:
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_4:
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	beqz	$a0, .LBB1_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_6:
	ld.d	$a0, $s6, %pc_lo12(imp_match_init_strictR.nocount2)
	beqz	$a0, .LBB1_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_8:
	slt	$a0, $s4, $s5
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $s7, %pc_lo12(imp_match_init_strictR.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(imp_match_init_strictR.impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(imp_match_init_strictR.impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(imp_match_init_strictR.nocount2)
.LBB1_9:
	blez	$s5, .LBB1_18
# %bb.10:                               # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	move	$a1, $zero
	bstrpick.d	$a2, $s3, 31, 0
	ori	$a3, $zero, 45
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_11:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB1_13 Depth=1
	move	$a5, $zero
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=1
	stx.b	$a5, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB1_18
.LBB1_13:                               # %.preheader211
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	move	$a4, $zero
	blez	$s3, .LBB1_17
# %bb.14:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_13 Depth=1
	move	$a5, $a2
	move	$a6, $s1
	.p2align	4, , 16
.LBB1_15:                               # %.lr.ph
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	ldx.bu	$a7, $a7, $a1
	beq	$a7, $a3, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB1_15
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_17:                               # %._crit_edge
                                        #   in Loop: Header=BB1_13 Depth=1
	ori	$a5, $zero, 1
	bne	$a4, $s3, .LBB1_12
	b	.LBB1_11
.LBB1_18:                               # %.preheader210
	blez	$s4, .LBB1_27
# %bb.19:                               # %.preheader209.lr.ph
	ld.d	$a0, $s6, %pc_lo12(imp_match_init_strictR.nocount2)
	move	$a1, $zero
	bstrpick.d	$a2, $s2, 31, 0
	ori	$a3, $zero, 45
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_20:                               # %._crit_edge218.thread
                                        #   in Loop: Header=BB1_22 Depth=1
	move	$a5, $zero
.LBB1_21:                               #   in Loop: Header=BB1_22 Depth=1
	stx.b	$a5, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB1_27
.LBB1_22:                               # %.preheader209
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
	move	$a4, $zero
	blez	$s2, .LBB1_26
# %bb.23:                               # %.lr.ph217.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	move	$a5, $a2
	move	$a6, $s0
	.p2align	4, , 16
.LBB1_24:                               # %.lr.ph217
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	ldx.bu	$a7, $a7, $a1
	beq	$a7, $a3, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB1_24
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_26:                               # %._crit_edge218
                                        #   in Loop: Header=BB1_22 Depth=1
	ori	$a5, $zero, 1
	bne	$a4, $s2, .LBB1_21
	b	.LBB1_20
.LBB1_27:                               # %.preheader208
	blez	$s5, .LBB1_32
# %bb.28:                               # %.preheader207.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$s6, $a0, 2
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_29:                               # %._crit_edge225
                                        #   in Loop: Header=BB1_30 Depth=1
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 8
	beqz	$s5, .LBB1_32
.LBB1_30:                               # %.preheader207
                                        # =>This Inner Loop Header: Depth=1
	blez	$s4, .LBB1_29
# %bb.31:                               # %.lr.ph224
                                        #   in Loop: Header=BB1_30 Depth=1
	ld.d	$a0, $s7, 0
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB1_29
.LBB1_32:                               # %._crit_edge227
	blez	$s3, .LBB1_70
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
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_34:                               # %._crit_edge236
                                        #   in Loop: Header=BB1_35 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB1_70
.LBB1_35:                               # %.preheader206
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_38 Depth 2
                                        #       Child Loop BB1_41 Depth 3
                                        #         Child Loop BB1_42 Depth 4
                                        #         Child Loop BB1_46 Depth 4
                                        #         Child Loop BB1_50 Depth 4
                                        #         Child Loop BB1_54 Depth 4
                                        #         Child Loop BB1_58 Depth 4
	blez	$s2, .LBB1_34
# %bb.36:                               # %.lr.ph235
                                        #   in Loop: Header=BB1_35 Depth=1
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB1_38
	.p2align	4, , 16
.LBB1_37:                               # %._crit_edge233
                                        #   in Loop: Header=BB1_38 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB1_34
.LBB1_38:                               #   Parent Loop BB1_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_41 Depth 3
                                        #         Child Loop BB1_42 Depth 4
                                        #         Child Loop BB1_46 Depth 4
                                        #         Child Loop BB1_50 Depth 4
                                        #         Child Loop BB1_54 Depth 4
                                        #         Child Loop BB1_58 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB1_37
# %bb.39:                               # %.lr.ph232
                                        #   in Loop: Header=BB1_38 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_40:                               # %.critedge
                                        #   in Loop: Header=BB1_41 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB1_37
.LBB1_41:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_38 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_42 Depth 4
                                        #         Child Loop BB1_46 Depth 4
                                        #         Child Loop BB1_50 Depth 4
                                        #         Child Loop BB1_54 Depth 4
                                        #         Child Loop BB1_58 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB1_42:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_38 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB1_45
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB1_42
# %bb.44:                               #   in Loop: Header=BB1_41 Depth=3
	move	$t8, $s4
.LBB1_45:                               #   in Loop: Header=BB1_41 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB1_49
	.p2align	4, , 16
.LBB1_46:                               # %.preheader205
                                        #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_38 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB1_48
# %bb.47:                               #   in Loop: Header=BB1_46 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB1_46
.LBB1_48:                               #   in Loop: Header=BB1_41 Depth=3
	add.w	$t6, $t7, $t3
.LBB1_49:                               #   in Loop: Header=BB1_41 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB1_50:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_38 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB1_53
# %bb.51:                               #   in Loop: Header=BB1_50 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB1_50
# %bb.52:                               #   in Loop: Header=BB1_41 Depth=3
	move	$s5, $s6
.LBB1_53:                               #   in Loop: Header=BB1_41 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB1_57
	.p2align	4, , 16
.LBB1_54:                               # %.preheader
                                        #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_38 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB1_56
# %bb.55:                               #   in Loop: Header=BB1_54 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB1_54
.LBB1_56:                               #   in Loop: Header=BB1_41 Depth=3
	add.w	$t8, $s4, $t4
.LBB1_57:                               #   in Loop: Header=BB1_41 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB1_58:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_38 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB1_40
# %bb.59:                               #   in Loop: Header=BB1_58 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB1_40
# %bb.60:                               #   in Loop: Header=BB1_58 Depth=4
	beq	$s7, $a4, .LBB1_63
# %bb.61:                               #   in Loop: Header=BB1_58 Depth=4
	beq	$s6, $a4, .LBB1_63
# %bb.62:                               #   in Loop: Header=BB1_58 Depth=4
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
	b	.LBB1_67
	.p2align	4, , 16
.LBB1_63:                               #   in Loop: Header=BB1_58 Depth=4
	bne	$s7, $a4, .LBB1_65
# %bb.64:                               #   in Loop: Header=BB1_58 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB1_65:                               #   in Loop: Header=BB1_58 Depth=4
	bne	$s6, $a4, .LBB1_68
# %bb.66:                               #   in Loop: Header=BB1_58 Depth=4
	addi.w	$t7, $t7, 1
.LBB1_67:                               #   in Loop: Header=BB1_58 Depth=4
	addi.d	$s5, $s5, 1
.LBB1_68:                               #   in Loop: Header=BB1_58 Depth=4
	blt	$t6, $t5, .LBB1_40
# %bb.69:                               #   in Loop: Header=BB1_58 Depth=4
	bge	$t8, $t7, .LBB1_58
	b	.LBB1_40
.LBB1_70:                               # %._crit_edge238
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
.Lfunc_end1:
	.size	imp_match_init_strictR, .Lfunc_end1-imp_match_init_strictR
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function R__align
.LCPI2_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI2_3:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI2_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI2_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_2:
	.word	0x461c4000                      # float 1.0E+4
	.text
	.globl	R__align
	.p2align	5
	.type	R__align,@function
R__align:                               # @R__align
# %bb.0:
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	st.d	$s4, $sp, 520                   # 8-byte Folded Spill
	st.d	$s5, $sp, 512                   # 8-byte Folded Spill
	st.d	$s6, $sp, 504                   # 8-byte Folded Spill
	st.d	$s7, $sp, 496                   # 8-byte Folded Spill
	st.d	$s8, $sp, 488                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 480                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 472                  # 8-byte Folded Spill
	st.d	$a7, $sp, 272                   # 8-byte Folded Spill
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	move	$s4, $a5
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$a1, %pc_hi20(R__align.orlgth1)
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.w	$fp, $a1, %pc_lo12(R__align.orlgth1)
	ld.w	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(R__align.mseq1)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mseq2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bnez	$fp, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(R__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.w	$fp, $a1, %pc_lo12(R__align.orlgth1)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.mseq2)
.LBB2_2:
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(R__align.orlgth2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s6, $a0, %pc_lo12(R__align.orlgth2)
	addi.w	$s3, $a2, 0
	pcalau12i	$a0, %pc_hi20(R__align.w1)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.w2)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.initverticalw)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.lastverticalw)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.m)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mp)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(R__align.mseq)
	pcalau12i	$a0, %pc_hi20(R__align.digf1)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.digf2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.diaf1)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.diaf2)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(R__align.gapz1)
	pcalau12i	$s1, %pc_hi20(R__align.gapz2)
	pcalau12i	$a0, %pc_hi20(R__align.gapf1)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapf2)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp1g)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp2g)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.fgcp1g)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.fgcp2g)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.cpmx1)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(R__align.cpmx2)
	pcalau12i	$a0, %pc_hi20(R__align.floatwork)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.intwork)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	blt	$fp, $s0, .LBB2_5
# %bb.3:
	blt	$s6, $s3, .LBB2_5
# %bb.4:
	move	$a3, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bgtz	$a0, .LBB2_9
	b	.LBB2_11
.LBB2_5:
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(R__align.match)
	pcalau12i	$a0, %pc_hi20(R__align.ogcp1)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp2)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(R__align.fgcp1)
	pcalau12i	$s4, %pc_hi20(R__align.fgcp2)
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	blez	$fp, .LBB2_8
# %bb.6:
	blez	$s6, .LBB2_8
# %bb.7:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(R__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(R__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(R__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(R__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(R__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(R__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.w	$fp, $a0, %pc_lo12(R__align.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(R__align.orlgth2)
.LBB2_8:
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s4, $fp, 100
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	addi.w	$s2, $s6, 100
	addi.w	$s7, $s6, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.w1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.w2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(R__align.match)
	move	$s0, $s8
	addi.w	$s8, $fp, 102
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.initverticalw)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.lastverticalw)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.m)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s2, $s4
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.mseq)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.digf1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.digf2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.diaf1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.diaf2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(R__align.gapz1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(R__align.gapz2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapf1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapf2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(R__align.fgcp1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp1g)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp2g)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp1g)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp2g)
	ori	$a0, $zero, 26
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s7
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(R__align.cpmx2)
	slt	$a0, $s2, $s4
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$s4, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.intwork)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.w	$fp, $a0, %pc_lo12(R__align.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(R__align.orlgth2)
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	blez	$a0, .LBB2_11
.LBB2_9:                                # %.lr.ph
	ld.d	$a0, $s5, %pc_lo12(R__align.mseq)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.mseq1)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a5, 0
	stx.b	$zero, $a4, $a3
	addi.d	$a5, $a5, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_10
.LBB2_11:                               # %.preheader554
	blez	$s4, .LBB2_14
# %bb.12:                               # %.lr.ph567
	ld.d	$a1, $s5, %pc_lo12(R__align.mseq)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mseq2)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	move	$a2, $s4
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a5, 0
	stx.b	$zero, $a4, $s3
	addi.d	$a1, $a1, 8
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_13
.LBB2_14:                               # %._crit_edge
	ld.d	$s5, $sp, 584
	movgr2fr.w	$fs0, $s2
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s1, 0
	blt	$a0, $fp, .LBB2_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s6, .LBB2_17
# %bb.16:                               # %._crit_edge708
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB2_21
.LBB2_17:
	beqz	$a0, .LBB2_20
# %bb.18:
	beqz	$a1, .LBB2_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.w	$fp, $a0, %pc_lo12(R__align.orlgth1)
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s6, $a1, %pc_lo12(R__align.orlgth2)
	ld.w	$a1, $s1, 0
.LBB2_20:
	slt	$a2, $a0, $fp
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $fp, $a2
	or	$fp, $a2, $a0
	slt	$a0, $a1, $s6
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	addi.w	$a0, $fp, 10
	addi.w	$a1, $s2, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$fp, $s0, 0
	st.w	$s2, $s1, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
.LBB2_21:
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.cpmx1)
	ffint.s.w	$fa0, $fs0
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(R__align.ijp)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(R__align.ijp)
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $s2
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$s6, $a3
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(R__align.cpmx2)
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	bnez	$s5, .LBB2_23
# %bb.22:
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $s1, %pc_lo12(R__align.gapz2)
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	b	.LBB2_24
.LBB2_23:
	ld.d	$s8, $sp, 608
	move	$a5, $s5
	ld.d	$a6, $sp, 600
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 592
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$s6, $fp
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	move	$fp, $a5
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	move	$a5, $s5
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s6
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	move	$a5, $fp
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $fp
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	move	$s5, $s4
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s6
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $fp
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	move	$a5, $s4
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	move	$a6, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$fp, $s6
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s6
	move	$a5, $s8
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	move	$a6, $s4
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s6
	move	$a5, $s8
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $s1, %pc_lo12(R__align.gapz2)
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	move	$a5, $s8
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
.LBB2_24:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(R__align.w1)
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w2)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(R__align.initverticalw)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.cpmx2)
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(R__align.cpmx1)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(R__align.floatwork)
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(R__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s6
	move	$a5, $s7
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	slli.d	$s5, $a0, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	fcvt.d.s	$fs1, $fa0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_26
# %bb.25:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s3
	move	$a5, $s7
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	b	.LBB2_36
.LBB2_26:
	move	$a4, $fp
	blez	$s6, .LBB2_29
# %bb.27:                               # %.lr.ph.i
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	move	$a2, $s2
	.p2align	4, , 16
.LBB2_28:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_28
.LBB2_29:                               # %imp_match_out_vead_tateR.exit
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $a4
	move	$a3, $zero
	move	$a4, $s3
	move	$a5, $s7
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB2_31
# %bb.30:                               # %imp_match_out_veadR.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $fp, .LBB2_37
	b	.LBB2_49
.LBB2_31:                               # %.lr.ph.preheader.i
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a5, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a2, 31, 0
	ori	$a0, $zero, 8
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	bltu	$a3, $a0, .LBB2_34
# %bb.32:                               # %vector.memcheck
	addi.w	$a0, $zero, -4
	lu32i.d	$a0, 3
	alsl.d	$a0, $a2, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 4
	add.d	$a1, $a5, $a0
	bgeu	$s0, $a1, .LBB2_268
# %bb.33:                               # %vector.memcheck
	add.d	$a0, $s0, $a0
	bgeu	$a5, $a0, .LBB2_268
.LBB2_34:
	move	$a1, $a5
	move	$a0, $a2
	move	$a2, $s0
	.p2align	4, , 16
.LBB2_35:                               # %.lr.ph.i506
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a3
	bnez	$a0, .LBB2_35
.LBB2_36:                               # %imp_match_out_veadR.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_42
.LBB2_37:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(R__align.ogcp1g)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	vldi	$vr2, -912
	fsub.d	$fa3, $fa2, $fa1
	fmul.d	$fa3, $fa3, $fa0
	fmul.d	$fa3, $fa3, $fs1
	vldi	$vr4, -928
	movgr2fr.d	$fa5, $zero
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fcvt.s.d	$fa3, $fa3
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(R__align.fgcp1g)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.fgcp2g)
	fmul.d	$fa0, $fa0, $fs1
	fcvt.d.s	$fa1, $fa3
	fld.s	$fa3, $a3, 0
	fld.s	$fa5, $a1, 0
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa1, $fa3
	fcvt.d.s	$fa3, $fa5
	fsub.d	$fa5, $fa2, $fa3
	fmul.d	$fa5, $fa5, $fa1
	fmul.d	$fa5, $fa5, $fs1
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa5, $fa4, $fa0
	fcvt.s.d	$fa0, $fa0
	fsub.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa1, $fa1, $fs1
	fld.s	$fa2, $s2, 0
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa1, $fa2, $fa0
	fst.s	$fa1, $s2, 0
	fld.s	$fa1, $s0, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s0, 0
	vld	$vr20, $sp, 320                 # 16-byte Folded Reload
	blez	$s6, .LBB2_40
# %bb.38:                               # %.lr.ph578
	ld.d	$a4, $s1, %pc_lo12(R__align.gapz2)
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(R__align.digf1)
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(R__align.diaf1)
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, -1
	movgr2fr.w	$fa1, $zero
	ori	$t0, $zero, 4
	vldi	$vr0, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB2_39:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a4, 0
	fld.s	$fa4, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa5, $fa0, $fa3
	fld.s	$fa6, $a5, 0
	fcvt.d.s	$fa4, $fa4
	fld.s	$fa7, $a6, 0
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa0, $fa6
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa5, $fa4, $fa3
	fldx.s	$fa4, $s2, $t0
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fs1
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa3, $fa4, $fa3
	fstx.s	$fa3, $s2, $t0
	fld.s	$fa4, $a4, 4
	fldx.s	$fa5, $a3, $t0
	fldx.s	$fa6, $a2, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $fa0, $fa5
	fcvt.d.s	$fa6, $fa6
	fldx.s	$fa7, $a5, $t0
	fadd.d	$fa5, $fa5, $fa6
	fldx.s	$fa6, $a6, $t0
	fsub.d	$ft0, $fa0, $fa4
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $fa0, $fa7
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa7, $fa6
	fmul.d	$fa4, $fa6, $fa4
	fmadd.d	$fa4, $ft0, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fs1
	fcvt.s.d	$fa4, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $s2, $t0
	fldx.s	$fa4, $a2, $t0
	fldx.s	$fa5, $a3, $t0
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa4, $ft12
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa4, $fa1
	fmul.s	$fa5, $fa5, $ft12
	fcvt.d.s	$fa5, $fa5
	fneg.d	$fa5, $fa5
	fmadd.d	$fa4, $fa5, $fa2, $fa4
	fcvt.d.s	$fa3, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fcvt.s.d	$fa3, $fa3
	fstx.s	$fa3, $s2, $t0
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	bnez	$a7, .LBB2_39
.LBB2_40:                               # %.preheader549
	bgtz	$s3, .LBB2_59
# %bb.41:                               # %.loopexit550.thread
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $a0, 0
	b	.LBB2_57
.LBB2_42:                               # %.preheader553
	blez	$s3, .LBB2_49
# %bb.43:                               # %.lr.ph570
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_47
# %bb.44:                               # %vector.ph793
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $s0, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_45:                               # %vector.body796
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
	bnez	$a6, .LBB2_45
# %bb.46:                               # %middle.block801
	beq	$a2, $a4, .LBB2_49
.LBB2_47:                               # %scalar.ph791.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_48:                               # %scalar.ph791
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
	bnez	$a1, .LBB2_48
.LBB2_49:                               # %.preheader551
	blez	$s6, .LBB2_56
# %bb.50:                               # %.lr.ph573
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_54
# %bb.51:                               # %vector.ph806
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $s2, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_52:                               # %vector.body811
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
	bnez	$a6, .LBB2_52
# %bb.53:                               # %middle.block818
	beq	$a2, $a4, .LBB2_56
.LBB2_54:                               # %scalar.ph804.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s2, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_55:                               # %scalar.ph804
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
	bnez	$a1, .LBB2_55
.LBB2_56:                               # %.loopexit550
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $a0, 0
	vld	$vr20, $sp, 320                 # 16-byte Folded Reload
	bgtz	$s3, .LBB2_62
.LBB2_57:                               # %._crit_edge587
	ori	$fp, $zero, 1
	bnez	$s3, .LBB2_70
# %bb.58:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	b	.LBB2_71
.LBB2_59:                               # %.lr.ph582
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R__align.gapz1)
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(R__align.digf2)
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(R__align.diaf2)
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, -1
	movgr2fr.w	$fa1, $zero
	ori	$a6, $zero, 4
	vldi	$vr0, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB2_60:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a2, 0
	fld.s	$fa4, $a0, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa5, $fa0, $fa3
	fldx.s	$fa6, $a3, $a6
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa7, $a4, $a6
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa0, $fa6
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa5, $fa4, $fa3
	fldx.s	$fa4, $s0, $a6
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fs1
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa3, $fa4, $fa3
	fstx.s	$fa3, $s0, $a6
	fld.s	$fa4, $a2, 4
	fldx.s	$fa5, $a1, $a6
	fldx.s	$fa6, $a0, $a6
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $fa0, $fa5
	fcvt.d.s	$fa6, $fa6
	fldx.s	$fa7, $a3, $a6
	fadd.d	$fa5, $fa5, $fa6
	fldx.s	$fa6, $a4, $a6
	fsub.d	$ft0, $fa0, $fa4
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $fa0, $fa7
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa7, $fa6
	fmul.d	$fa4, $fa6, $fa4
	fmadd.d	$fa4, $ft0, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fs1
	fcvt.s.d	$fa4, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $s0, $a6
	fldx.s	$fa4, $a0, $a6
	fldx.s	$fa5, $a1, $a6
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa4, $ft12
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa4, $fa1
	fmul.s	$fa5, $fa5, $ft12
	fcvt.d.s	$fa5, $fa5
	fneg.d	$fa5, $fa5
	fmadd.d	$fa4, $fa5, $fa2, $fa4
	fcvt.d.s	$fa3, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fcvt.s.d	$fa3, $fa3
	fstx.s	$fa3, $s0, $a6
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB2_60
# %bb.61:                               # %.loopexit550.thread750
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $a0, 0
.LBB2_62:                               # %.lr.ph586
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.mp)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 8
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB2_67
# %bb.63:                               # %vector.memcheck821
	sub.d	$a5, $a0, $s0
	addi.d	$a5, $a5, 4
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB2_67
# %bb.64:                               # %vector.ph824
	move	$a6, $zero
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 2, 0
	vreplvei.w	$vr0, $vr20, 0
	addi.d	$a7, $a1, 20
	vrepli.b	$vr1, 0
	lu12i.w	$t0, 287172
	vreplgr2vr.w	$vr2, $t0
	move	$t0, $a5
	.p2align	4, , 16
.LBB2_65:                               # %vector.body829
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t1, $a7, $a6
	add.d	$t2, $s0, $a6
	vldx	$vr3, $s0, $a6
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
	bnez	$t0, .LBB2_65
# %bb.66:                               # %middle.block835
	beq	$a3, $a5, .LBB2_69
.LBB2_67:                               # %scalar.ph822.preheader
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI2_2)
	slli.d	$a3, $a4, 2
	addi.d	$a5, $s0, -4
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB2_68:                               # %scalar.ph822
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a5, $a3
	stx.w	$zero, $a1, $a3
	fmadd.s	$fa1, $ft12, $fa0, $fa1
	fstx.s	$fa1, $a0, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB2_68
.LBB2_69:
	move	$fp, $zero
.LBB2_70:                               # %._crit_edge587.thread
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $s5, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s0, $a1
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	move	$fp, $zero
.LBB2_71:
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.lastverticalw)
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	fst.s	$fa0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	ori	$a1, $zero, 2
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	blt	$a2, $a1, .LBB2_108
# %bb.72:                               # %.lr.ph608
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.ijp)
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.mp)
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R__align.ogcp1g)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(R__align.ogcp2g)
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R__align.fgcp1g)
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a2, %pc_lo12(R__align.fgcp2g)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R__align.gapz1)
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $a2, %pc_lo12(R__align.digf2)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R__align.diaf2)
	ld.d	$a6, $s1, %pc_lo12(R__align.gapz2)
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(R__align.digf1)
	st.d	$a7, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(R__align.diaf1)
	st.d	$a7, $sp, 200                   # 8-byte Folded Spill
	ori	$a7, $zero, 0
	lu32i.d	$a7, -1
	add.d	$a7, $s5, $a7
	srai.d	$a7, $a7, 30
	st.d	$a7, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a7, $a7, 31, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	addi.w	$t0, $t2, -1
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t1, $t0, 2
	addi.d	$t1, $t1, 4
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$t0, $t0, 32, 3
	slli.d	$t1, $t0, 3
	slli.d	$t0, $t0, 5
	st.d	$t0, $sp, 144                   # 8-byte Folded Spill
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	sub.d	$t0, $t2, $t1
	st.d	$t0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$ra, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$s3, $a5, 4
	addi.d	$t6, $a4, 4
	addi.d	$t8, $a3, 4
	addi.d	$t7, $a7, -1
	addi.d	$s6, $a6, 8
	addi.d	$t5, $a1, 4
	movgr2fr.w	$fa0, $zero
	ori	$t4, $zero, 208
	addi.d	$a5, $sp, 368
	ori	$a6, $zero, 26
	vldi	$vr1, -912
	vldi	$vr2, -928
	fmov.s	$fs0, $fa0
	move	$a0, $s0
	ori	$a7, $zero, 1
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	b	.LBB2_74
	.p2align	4, , 16
.LBB2_73:                               # %._crit_edge600
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$s0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	fldx.s	$fa3, $s0, $a0
	addi.d	$a7, $a7, 1
	ld.d	$s7, $sp, 344                   # 8-byte Folded Reload
	fstx.s	$fa3, $s7, $t1
	move	$a0, $s0
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	beq	$a7, $a1, .LBB2_109
.LBB2_74:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_75 Depth 2
                                        #       Child Loop BB2_76 Depth 3
                                        #     Child Loop BB2_81 Depth 2
                                        #       Child Loop BB2_83 Depth 3
                                        #     Child Loop BB2_106 Depth 2
                                        #     Child Loop BB2_89 Depth 2
                                        #     Child Loop BB2_94 Depth 2
	addi.d	$t0, $a7, -1
	slli.d	$a1, $t0, 2
	fldx.s	$fa3, $s2, $a1
	ld.d	$s1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	fst.s	$fa3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(n_dis)
	ld.d	$a0, $a0, %got_pc_lo12(n_dis)
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_75:                               #   Parent Loop BB2_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_76 Depth 3
	move	$a3, $zero
	move	$a4, $a0
	fmov.s	$fa3, $fa0
	.p2align	4, , 16
.LBB2_76:                               #   Parent Loop BB2_74 Depth=1
                                        #     Parent Loop BB2_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$t2, $s4, $a3
	ld.w	$t3, $a4, 0
	slli.d	$t1, $a7, 2
	fldx.s	$fa4, $t2, $t1
	movgr2fr.w	$fa5, $t3
	ffint.s.w	$fa5, $fa5
	fmadd.s	$fa3, $fa5, $fa4, $fa3
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 104
	bne	$a3, $t4, .LBB2_76
# %bb.77:                               #   in Loop: Header=BB2_75 Depth=2
	slli.d	$a3, $a1, 2
	fstx.s	$fa3, $a3, $a5
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	bne	$a1, $a6, .LBB2_75
# %bb.78:                               # %.preheader.i
                                        #   in Loop: Header=BB2_74 Depth=1
	bnez	$fp, .LBB2_90
# %bb.79:                               # %.lr.ph73.i.preheader
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	move	$a4, $s1
	b	.LBB2_81
	.p2align	4, , 16
.LBB2_80:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_81 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB2_84
.LBB2_81:                               # %.lr.ph73.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_83 Depth 3
	ld.d	$t3, $a1, 0
	ld.wu	$t2, $t3, 0
	addi.w	$fp, $t2, 0
	st.w	$zero, $a4, 0
	bltz	$fp, .LBB2_80
# %bb.82:                               # %.lr.ph.i507
                                        #   in Loop: Header=BB2_81 Depth=2
	ld.d	$fp, $a3, 0
	addi.d	$t3, $t3, 4
	movgr2fr.w	$fa3, $zero
	.p2align	4, , 16
.LBB2_83:                               #   Parent Loop BB2_74 Depth=1
                                        #     Parent Loop BB2_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t2, $t2, 2
	fldx.s	$fa4, $t2, $a5
	fld.s	$fa5, $fp, 0
	ld.wu	$t2, $t3, 0
	addi.d	$fp, $fp, 4
	fmadd.s	$fa3, $fa4, $fa5, $fa3
	fst.s	$fa3, $a4, 0
	addi.w	$s0, $t2, 0
	addi.d	$t3, $t3, 4
	bgez	$s0, .LBB2_83
	b	.LBB2_80
	.p2align	4, , 16
.LBB2_84:                               # %match_calc.exit
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_90
# %bb.85:                               # %.lr.ph.preheader.i513
                                        #   in Loop: Header=BB2_74 Depth=1
	slli.d	$a0, $a7, 3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a4, $a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB2_88
# %bb.86:                               # %vector.memcheck838
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a1
	bgeu	$s1, $a0, .LBB2_105
# %bb.87:                               # %vector.memcheck838
                                        #   in Loop: Header=BB2_74 Depth=1
	add.d	$a0, $s1, $a1
	bgeu	$a4, $a0, .LBB2_105
.LBB2_88:                               #   in Loop: Header=BB2_74 Depth=1
	move	$a0, $a4
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a1, $s1
	.p2align	4, , 16
.LBB2_89:                               # %.lr.ph.i514
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a1, 0
	addi.w	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a1, 4
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a1, 0
	move	$a1, $a4
	bnez	$a3, .LBB2_89
.LBB2_90:                               # %imp_match_out_veadR.exit520
                                        #   in Loop: Header=BB2_74 Depth=1
	fldx.s	$fa3, $s2, $t1
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	fst.s	$fa3, $s1, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_73
# %bb.91:                               # %.lr.ph599
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa3, $a0, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa4, $a0, %pc_lo12(.LCPI2_2)
	move	$t2, $zero
	move	$a0, $zero
	move	$a1, $zero
	move	$a4, $zero
	fmadd.s	$fa7, $ft12, $fa4, $fa3
	slli.d	$a3, $a7, 3
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	ldx.d	$fp, $t3, $a3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$s0, $a7, $a3, 2
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s1, $a7, $a3, 2
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s2, $a7, $a3, 2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 2
	ld.d	$t3, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$t3, $a7, $t3, 2
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	addi.d	$s5, $s5, 4
	addi.d	$fp, $fp, 4
	addi.d	$s7, $zero, -1
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_92:                               #   in Loop: Header=BB2_94 Depth=2
	fstx.s	$fa4, $ra, $t2
	stx.w	$t0, $t5, $t2
.LBB2_93:                               #   in Loop: Header=BB2_94 Depth=2
	fldx.s	$fa3, $s5, $t2
	fadd.s	$fa3, $fs0, $fa3
	fstx.s	$fa3, $s5, $t2
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	addi.d	$t2, $t2, 4
	addi.d	$s7, $s7, -1
	beq	$t7, $a0, .LBB2_73
.LBB2_94:                               #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $s0, 0
	fldx.s	$ft3, $t8, $t2
	move	$s8, $a4
	fmov.s	$ft2, $fa7
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	fldx.s	$fa4, $a4, $t2
	fcvt.d.s	$ft1, $fa3
	fcvt.d.s	$ft7, $ft3
	fsub.d	$fa7, $fa1, $ft7
	fmul.d	$fa5, $fa7, $ft1
	fmul.d	$fa5, $fa5, $fs1
	fmul.d	$fa5, $fa5, $fa2
	fcvt.s.d	$fa5, $fa5
	fadd.s	$ft0, $fa4, $fa5
	fsub.d	$fa6, $fa1, $ft1
	fmul.d	$fa5, $fa6, $ft7
	fmul.d	$fa5, $fa5, $fs1
	fmul.d	$ft4, $fa5, $fa2
	fld.s	$fa5, $s1, 0
	fldx.s	$ft5, $t6, $t2
	fcvt.s.d	$ft4, $ft4
	fadd.s	$ft4, $ft0, $ft4
	fcvt.d.s	$ft0, $fa5
	fcvt.d.s	$ft6, $ft5
	fsub.d	$ft8, $fa1, $ft6
	fmul.d	$ft9, $ft8, $ft0
	fmul.d	$ft9, $ft9, $fs1
	fmul.d	$ft9, $ft9, $fa2
	fcvt.s.d	$ft9, $ft9
	fadd.s	$ft9, $ft4, $ft9
	fsub.d	$ft4, $fa1, $ft0
	fmul.d	$ft10, $ft4, $ft6
	fmul.d	$ft10, $ft10, $fs1
	fld.s	$ft11, $s2, 4
	fmul.d	$ft10, $ft10, $fa2
	fcvt.s.d	$ft10, $ft10
	fadd.s	$fs0, $ft9, $ft10
	fcvt.d.s	$ft9, $ft11
	fldx.s	$ft10, $s3, $t2
	fadd.d	$ft8, $ft8, $ft7
	fldx.s	$ft7, $a2, $t2
	fsub.d	$ft11, $fa1, $ft9
	fcvt.d.s	$ft10, $ft10
	fsub.d	$ft10, $fa1, $ft10
	fcvt.d.s	$ft7, $ft7
	fsub.d	$ft7, $ft10, $ft7
	fmul.d	$ft9, $ft7, $ft9
	fmadd.d	$ft8, $ft11, $ft8, $ft9
	fmul.d	$ft8, $ft8, $fa2
	fmul.d	$ft8, $ft8, $fs1
	fcvt.s.d	$ft8, $ft8
	fadd.s	$ft8, $ft2, $ft8
	fcmp.cule.s	$fcc0, $ft8, $fs0
	stx.w	$zero, $fp, $t2
	bcnez	$fcc0, .LBB2_96
# %bb.95:                               #   in Loop: Header=BB2_94 Depth=2
	add.d	$a4, $s8, $s7
	stx.w	$a4, $fp, $t2
	fmov.s	$fs0, $ft8
.LBB2_96:                               #   in Loop: Header=BB2_94 Depth=2
	fld.s	$ft8, $s2, 0
	fcvt.d.s	$ft8, $ft8
	fsub.d	$ft9, $fa1, $ft8
	fadd.d	$fa7, $fa7, $ft6
	fmul.d	$ft6, $ft7, $ft8
	fmadd.d	$fa7, $ft9, $fa7, $ft6
	fmul.d	$fa7, $fa7, $fa2
	fmul.d	$fa7, $fa7, $fs1
	fcvt.s.d	$fa7, $fa7
	fadd.s	$fa7, $fa4, $fa7
	fcmp.cle.s	$fcc0, $ft2, $fa7
	move	$a4, $a1
	bcnez	$fcc0, .LBB2_100
# %bb.97:                               #   in Loop: Header=BB2_94 Depth=2
	beqz	$a0, .LBB2_99
# %bb.98:                               #   in Loop: Header=BB2_94 Depth=2
	fadd.s	$fa7, $ft3, $ft5
	fmul.s	$fa7, $fa7, $ft12
	fcvt.d.s	$fa7, $fa7
	fcvt.d.s	$ft2, $ft2
	fmadd.d	$fa7, $fa7, $fa2, $ft2
	fcvt.s.d	$fa7, $fa7
	move	$a4, $s8
	b	.LBB2_100
.LBB2_99:                               #   in Loop: Header=BB2_94 Depth=2
	move	$a4, $s8
	fmov.s	$fa7, $ft2
	.p2align	4, , 16
.LBB2_100:                              #   in Loop: Header=BB2_94 Depth=2
	fldx.s	$ft2, $s6, $t2
	fcvt.d.s	$ft2, $ft2
	fld.s	$ft3, $a3, 0
	fadd.d	$ft4, $ft4, $ft1
	fld.s	$ft1, $t3, 0
	fsub.d	$ft5, $fa1, $ft2
	fcvt.d.s	$ft3, $ft3
	fsub.d	$ft3, $fa1, $ft3
	fcvt.d.s	$ft1, $ft1
	fsub.d	$ft1, $ft3, $ft1
	fmul.d	$ft2, $ft1, $ft2
	fmadd.d	$ft3, $ft5, $ft4, $ft2
	fldx.s	$ft2, $ra, $t2
	fmul.d	$ft3, $ft3, $fa2
	fmul.d	$ft3, $ft3, $fs1
	fcvt.s.d	$ft3, $ft3
	fadd.s	$ft3, $ft2, $ft3
	fcmp.cule.s	$fcc0, $ft3, $fs0
	bcnez	$fcc0, .LBB2_102
# %bb.101:                              #   in Loop: Header=BB2_94 Depth=2
	ldx.w	$s8, $t5, $t2
	sub.d	$s8, $a7, $s8
	stx.w	$s8, $fp, $t2
	fmov.s	$fs0, $ft3
.LBB2_102:                              #   in Loop: Header=BB2_94 Depth=2
	add.d	$s8, $s6, $t2
	fld.s	$ft3, $s8, -4
	fcvt.d.s	$ft3, $ft3
	fsub.d	$ft4, $fa1, $ft3
	fadd.d	$fa6, $fa6, $ft0
	fmul.d	$ft0, $ft1, $ft3
	fmadd.d	$fa6, $ft4, $fa6, $ft0
	fmul.d	$fa6, $fa6, $fa2
	fmul.d	$fa6, $fa6, $fs1
	fcvt.s.d	$fa6, $fa6
	fadd.s	$fa4, $fa4, $fa6
	fcmp.cult.s	$fcc0, $fa4, $ft2
	bceqz	$fcc0, .LBB2_92
# %bb.103:                              #   in Loop: Header=BB2_94 Depth=2
	ori	$s8, $zero, 1
	beq	$a7, $s8, .LBB2_93
# %bb.104:                              #   in Loop: Header=BB2_94 Depth=2
	fldx.s	$fa4, $ra, $t2
	fadd.s	$fa3, $fa3, $fa5
	fmul.s	$fa3, $fa3, $ft12
	fcvt.d.s	$fa3, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa3, $fa2, $fa4
	fcvt.s.d	$fa3, $fa3
	fstx.s	$fa3, $ra, $t2
	b	.LBB2_93
.LBB2_105:                              # %vector.ph846
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a1
	add.d	$a1, $s1, $a1
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a4, 16
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_106:                              # %vector.body850
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vld	$vr5, $a3, -16
	vld	$vr6, $a3, 0
	vfadd.s	$vr3, $vr3, $vr5
	vfadd.s	$vr4, $vr4, $vr6
	vst	$vr3, $a3, -16
	vst	$vr4, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$t2, $t2, -8
	addi.d	$a4, $a4, 32
	bnez	$t2, .LBB2_106
# %bb.107:                              # %middle.block861
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	bne	$a4, $t2, .LBB2_89
	b	.LBB2_90
.LBB2_108:
	movgr2fr.w	$fs0, $zero
	ld.d	$s7, $sp, 344                   # 8-byte Folded Reload
.LBB2_109:                              # %._crit_edge609
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_124
# %bb.110:                              # %.preheader548
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_117
# %bb.111:                              # %.lr.ph618
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_115
# %bb.112:                              # %vector.ph868
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	vld	$vr2, $a5, %pc_lo12(.LCPI2_3)
	pcalau12i	$a5, %pc_hi20(.LCPI2_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI2_4)
	addi.d	$a5, $s0, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_113:                              # %vector.body875
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
	bnez	$a6, .LBB2_113
# %bb.114:                              # %middle.block882
	beq	$a2, $a4, .LBB2_117
.LBB2_115:                              # %scalar.ph866.preheader
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_116:                              # %scalar.ph866
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
	bnez	$a1, .LBB2_116
.LBB2_117:                              # %.preheader547
	blez	$t0, .LBB2_124
# %bb.118:                              # %.lr.ph621
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
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
	bltu	$a2, $a3, .LBB2_122
# %bb.119:                              # %vector.ph887
	move	$a4, $a2
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $a2, 1
	addi.d	$a5, $s7, 8
	vldi	$vr2, -928
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_120:                              # %vector.body890
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
	bnez	$a6, .LBB2_120
# %bb.121:                              # %middle.block895
	beq	$a2, $a4, .LBB2_124
.LBB2_122:                              # %scalar.ph885.preheader
	alsl.d	$a2, $a0, $s7, 2
	sub.d	$a1, $a1, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB2_123:                              # %scalar.ph885
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
	bnez	$a1, .LBB2_123
.LBB2_124:                              # %.loopexit
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(R__align.mseq1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(R__align.mseq2)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ijp)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $t1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	add.w	$s2, $a0, $s6
	addi.w	$s8, $s2, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	addi.w	$a1, $s6, 0
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	addi.w	$a1, $s5, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	st.d	$fp, $sp, 344                   # 8-byte Folded Spill
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	bnez	$a3, .LBB2_131
# %bb.125:
	ori	$a3, $zero, 1
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_142
# %bb.126:
	fld.s	$fa0, $s7, 0
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	blez	$a2, .LBB2_137
# %bb.127:                              # %.lr.ph.i542
	slli.d	$a2, $s6, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s5, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s6, 30, 0
	move	$a5, $s6
	b	.LBB2_129
	.p2align	4, , 16
.LBB2_128:                              #   in Loop: Header=BB2_129 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s7, $s7, 4
	beqz	$a4, .LBB2_137
.LBB2_129:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_128
# %bb.130:                              #   in Loop: Header=BB2_129 Depth=1
	ldx.d	$a6, $s1, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_128
.LBB2_131:
	ori	$a3, $zero, 1
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_150
# %bb.132:
	fld.s	$fa0, $s7, 0
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	blez	$a2, .LBB2_145
# %bb.133:                              # %.lr.ph.i523
	slli.d	$a2, $s6, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s5, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s6, 30, 0
	move	$a5, $s6
	b	.LBB2_135
	.p2align	4, , 16
.LBB2_134:                              #   in Loop: Header=BB2_135 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s7, $s7, 4
	beqz	$a4, .LBB2_145
.LBB2_135:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_134
# %bb.136:                              #   in Loop: Header=BB2_135 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_134
.LBB2_137:                              # %.preheader161.i
	blez	$a1, .LBB2_142
# %bb.138:                              # %.lr.ph166.i
	slli.d	$a2, $s6, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s5, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s5, 30, 0
	sub.d	$a5, $zero, $s5
	b	.LBB2_140
	.p2align	4, , 16
.LBB2_139:                              #   in Loop: Header=BB2_140 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s0, $s0, 4
	beqz	$a4, .LBB2_142
.LBB2_140:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_139
# %bb.141:                              #   in Loop: Header=BB2_140 Depth=1
	ldx.d	$a6, $s1, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_139
.LBB2_142:                              # %.loopexit.i528
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_158
# %bb.143:                              # %.lr.ph169.preheader.i
	addi.d	$a3, $s6, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_153
# %bb.144:
	move	$a3, $zero
	b	.LBB2_156
.LBB2_145:                              # %.preheader170.i
	blez	$a1, .LBB2_150
# %bb.146:                              # %.lr.ph175.i
	slli.d	$a2, $s6, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s5, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s5, 30, 0
	sub.d	$a5, $zero, $s5
	b	.LBB2_148
	.p2align	4, , 16
.LBB2_147:                              #   in Loop: Header=BB2_148 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s0, $s0, 4
	beqz	$a4, .LBB2_150
.LBB2_148:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_147
# %bb.149:                              #   in Loop: Header=BB2_148 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_147
.LBB2_150:                              # %.loopexit.i
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_166
# %bb.151:                              # %.lr.ph178.preheader.i
	addi.d	$a3, $s6, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_161
# %bb.152:
	move	$a3, $zero
	b	.LBB2_164
.LBB2_153:                              # %vector.ph974
	pcalau12i	$a4, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s1, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_154:                              # %vector.body977
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
	bnez	$a5, .LBB2_154
# %bb.155:                              # %middle.block985
	beq	$a2, $a3, .LBB2_158
.LBB2_156:                              # %.lr.ph169.i.preheader
	alsl.d	$a4, $a3, $s1, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_157:                              # %.lr.ph169.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_157
.LBB2_158:                              # %.preheader160.i
	bltz	$a1, .LBB2_174
# %bb.159:                              # %.lr.ph172.i
	ld.d	$a2, $s1, 0
	addi.d	$a4, $s5, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB2_169
# %bb.160:
	move	$a4, $zero
	b	.LBB2_172
.LBB2_161:                              # %vector.ph900
	pcalau12i	$a4, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_162:                              # %vector.body903
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
	bnez	$a5, .LBB2_162
# %bb.163:                              # %middle.block910
	beq	$a2, $a3, .LBB2_166
.LBB2_164:                              # %.lr.ph178.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_165:                              # %.lr.ph178.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_165
.LBB2_166:                              # %.preheader169.i
	ld.d	$a2, $sp, 576
	bltz	$a1, .LBB2_217
# %bb.167:                              # %.lr.ph181.i
	ld.d	$a3, $ra, 0
	addi.d	$a5, $s5, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB2_212
# %bb.168:
	move	$a5, $zero
	b	.LBB2_215
.LBB2_169:                              # %vector.ph990
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_6)
	addi.d	$a5, $a2, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_170:                              # %vector.body993
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a5, -16
	vst	$vr4, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_170
# %bb.171:                              # %middle.block999
	beq	$a3, $a4, .LBB2_174
.LBB2_172:                              # %scalar.ph988.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB2_173:                              # %scalar.ph988
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB2_173
.LBB2_174:                              # %._crit_edge.i532
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	add.d	$a2, $fp, $a3
	add.d	$s8, $a2, $a1
	stx.b	$zero, $a2, $a1
	add.d	$a0, $a0, $a3
	add.d	$s7, $a0, $a1
	stx.b	$zero, $a0, $a1
	bltz	$s2, .LBB2_206
# %bb.175:                              # %.lr.ph200.i.preheader
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
.LBB2_176:                              # %.lr.ph200.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_186 Depth 2
                                        #     Child Loop BB2_190 Depth 2
                                        #     Child Loop BB2_196 Depth 2
                                        #     Child Loop BB2_201 Depth 2
	addi.w	$a7, $s6, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $s1, $a6
	addi.w	$t0, $s5, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB2_179
# %bb.177:                              #   in Loop: Header=BB2_176 Depth=1
	beqz	$t1, .LBB2_180
# %bb.178:                              #   in Loop: Header=BB2_176 Depth=1
	sub.d	$a6, $s6, $t1
	b	.LBB2_181
	.p2align	4, , 16
.LBB2_179:                              #   in Loop: Header=BB2_176 Depth=1
	addi.d	$a6, $s6, -1
	b	.LBB2_182
	.p2align	4, , 16
.LBB2_180:                              #   in Loop: Header=BB2_176 Depth=1
	addi.d	$a6, $s6, -1
.LBB2_181:                              #   in Loop: Header=BB2_176 Depth=1
	move	$t1, $a0
.LBB2_182:                              #   in Loop: Header=BB2_176 Depth=1
	nor	$t2, $a6, $zero
	add.w	$t3, $s6, $t2
	beqz	$t3, .LBB2_192
# %bb.183:                              # %.lr.ph178.i534.preheader
                                        #   in Loop: Header=BB2_176 Depth=1
	bltu	$t3, $a4, .LBB2_188
# %bb.184:                              # %.lr.ph178.i534.preheader
                                        #   in Loop: Header=BB2_176 Depth=1
	sub.d	$t4, $s8, $s7
	bltu	$t4, $a4, .LBB2_188
# %bb.185:                              # %vector.ph1034
                                        #   in Loop: Header=BB2_176 Depth=1
	bstrpick.d	$t6, $t3, 31, 0
	bstrpick.d	$t4, $t6, 31, 5
	slli.d	$t7, $t4, 5
	sub.d	$t3, $t3, $t7
	sub.d	$t4, $s7, $t7
	sub.d	$t5, $s8, $t7
	addi.d	$t8, $s8, -16
	addi.d	$fp, $s7, -16
	move	$s0, $t7
	.p2align	4, , 16
.LBB2_186:                              # %vector.body1038
                                        #   Parent Loop BB2_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $t8, 0
	vst	$vr2, $t8, -16
	vst	$vr1, $fp, 0
	vst	$vr1, $fp, -16
	addi.d	$s0, $s0, -32
	addi.d	$t8, $t8, -32
	addi.d	$fp, $fp, -32
	bnez	$s0, .LBB2_186
# %bb.187:                              # %middle.block1045
                                        #   in Loop: Header=BB2_176 Depth=1
	bne	$t7, $t6, .LBB2_189
	b	.LBB2_191
	.p2align	4, , 16
.LBB2_188:                              #   in Loop: Header=BB2_176 Depth=1
	move	$t4, $s7
	move	$t5, $s8
.LBB2_189:                              # %.lr.ph178.i534.preheader1055
                                        #   in Loop: Header=BB2_176 Depth=1
	move	$t6, $t4
	move	$t7, $t5
	.p2align	4, , 16
.LBB2_190:                              # %.lr.ph178.i534
                                        #   Parent Loop BB2_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t5, $t7, -1
	st.b	$a1, $t7, -1
	addi.d	$t4, $t6, -1
	addi.w	$t3, $t3, -1
	st.b	$a2, $t6, -1
	move	$t6, $t4
	move	$t7, $t5
	bnez	$t3, .LBB2_190
.LBB2_191:                              # %._crit_edge179.loopexit.i
                                        #   in Loop: Header=BB2_176 Depth=1
	add.d	$a5, $s6, $a5
	add.d	$a5, $t2, $a5
	move	$s8, $t5
	move	$s7, $t4
.LBB2_192:                              # %._crit_edge179.i
                                        #   in Loop: Header=BB2_176 Depth=1
	beq	$t1, $a0, .LBB2_198
# %bb.193:                              # %.lr.ph188.preheader.i
                                        #   in Loop: Header=BB2_176 Depth=1
	addi.w	$t2, $zero, -9
	nor	$t5, $t1, $zero
	bltu	$t2, $t1, .LBB2_199
# %bb.194:                              # %.lr.ph188.preheader.i
                                        #   in Loop: Header=BB2_176 Depth=1
	sub.d	$t2, $s8, $s7
	bltu	$t2, $a3, .LBB2_199
# %bb.195:                              # %vector.ph1008
                                        #   in Loop: Header=BB2_176 Depth=1
	bstrpick.d	$t2, $t5, 30, 3
	slli.d	$t6, $t2, 3
	sub.d	$t4, $t5, $t6
	sub.d	$t2, $s7, $t6
	sub.d	$t3, $s8, $t6
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $a5, 0
	addi.d	$a5, $s8, -4
	addi.d	$t7, $s7, -4
	move	$t8, $t6
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB2_196:                              # %vector.body1012
                                        #   Parent Loop BB2_176 Depth=1
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
	bnez	$t8, .LBB2_196
# %bb.197:                              # %middle.block1021
                                        #   in Loop: Header=BB2_176 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$a5, $vr3, 0
	bne	$t6, $t5, .LBB2_200
	b	.LBB2_202
	.p2align	4, , 16
.LBB2_198:                              #   in Loop: Header=BB2_176 Depth=1
	move	$t3, $s8
	move	$t2, $s7
	b	.LBB2_202
	.p2align	4, , 16
.LBB2_199:                              #   in Loop: Header=BB2_176 Depth=1
	move	$t4, $t5
	move	$t2, $s7
	move	$t3, $s8
.LBB2_200:                              # %.lr.ph188.i.preheader
                                        #   in Loop: Header=BB2_176 Depth=1
	add.d	$a5, $a5, $t4
	.p2align	4, , 16
.LBB2_201:                              # %.lr.ph188.i
                                        #   Parent Loop BB2_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t3, -1
	addi.d	$t3, $t3, -1
	st.b	$a1, $t2, -1
	addi.w	$t4, $t4, -1
	addi.d	$t2, $t2, -1
	bnez	$t4, .LBB2_201
.LBB2_202:                              # %._crit_edge189.i
                                        #   in Loop: Header=BB2_176 Depth=1
	blez	$a7, .LBB2_205
# %bb.203:                              # %._crit_edge189.i
                                        #   in Loop: Header=BB2_176 Depth=1
	blez	$t0, .LBB2_205
# %bb.204:                              #   in Loop: Header=BB2_176 Depth=1
	add.d	$s5, $t1, $s5
	addi.d	$s8, $t3, -1
	st.b	$a1, $t3, -1
	addi.d	$s7, $t2, -1
	addi.w	$a5, $a5, 2
	st.b	$a1, $t2, -1
	move	$s6, $a6
	bge	$s2, $a5, .LBB2_176
	b	.LBB2_206
.LBB2_205:
	move	$s8, $t3
	move	$s7, $t2
.LBB2_206:                              # %._crit_edge201.i
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	blez	$s5, .LBB2_209
# %bb.207:                              # %.lr.ph209.preheader.i
	move	$fp, $s6
	move	$s0, $s5
	.p2align	4, , 16
.LBB2_208:                              # %.lr.ph209.i540
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB2_208
.LBB2_209:                              # %.preheader.i539
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	blez	$s1, .LBB2_258
# %bb.210:                              # %.lr.ph211.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_211:                              # %.lr.ph211.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB2_211
	b	.LBB2_258
.LBB2_212:                              # %vector.ph915
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a6, %pc_lo12(.LCPI2_6)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_213:                              # %vector.body918
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB2_213
# %bb.214:                              # %middle.block924
	beq	$a4, $a5, .LBB2_217
.LBB2_215:                              # %scalar.ph913.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB2_216:                              # %scalar.ph913
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB2_216
.LBB2_217:                              # %._crit_edge.i521
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	add.d	$a3, $fp, $a4
	add.d	$s8, $a3, $a1
	stx.b	$zero, $a3, $a1
	add.d	$a3, $a0, $a4
	add.d	$s7, $a3, $a1
	stx.b	$zero, $a3, $a1
	st.w	$zero, $a2, 0
	bltz	$s2, .LBB2_252
# %bb.218:                              # %.lr.ph209.i.preheader
	move	$t0, $zero
	addi.w	$a1, $zero, -1
	ori	$a3, $zero, 111
	ori	$a4, $zero, 45
	ori	$a5, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 32
	move	$a7, $s5
	move	$a0, $s2
	.p2align	4, , 16
.LBB2_219:                              # %.lr.ph209.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_229 Depth 2
                                        #     Child Loop BB2_233 Depth 2
                                        #     Child Loop BB2_239 Depth 2
                                        #     Child Loop BB2_244 Depth 2
	addi.w	$t2, $s6, 0
	slli.d	$t5, $t2, 3
	ldx.d	$t1, $ra, $t5
	addi.w	$t3, $a7, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t4, $t1, $t6
	bltz	$t4, .LBB2_222
# %bb.220:                              #   in Loop: Header=BB2_219 Depth=1
	beqz	$t4, .LBB2_223
# %bb.221:                              #   in Loop: Header=BB2_219 Depth=1
	sub.d	$t1, $s6, $t4
	b	.LBB2_224
	.p2align	4, , 16
.LBB2_222:                              #   in Loop: Header=BB2_219 Depth=1
	addi.d	$t1, $s6, -1
	b	.LBB2_225
	.p2align	4, , 16
.LBB2_223:                              #   in Loop: Header=BB2_219 Depth=1
	addi.d	$t1, $s6, -1
.LBB2_224:                              #   in Loop: Header=BB2_219 Depth=1
	move	$t4, $a1
.LBB2_225:                              #   in Loop: Header=BB2_219 Depth=1
	nor	$t7, $t1, $zero
	add.w	$t8, $s6, $t7
	beqz	$t8, .LBB2_235
# %bb.226:                              # %.lr.ph187.i.preheader
                                        #   in Loop: Header=BB2_219 Depth=1
	bltu	$t8, $a6, .LBB2_231
# %bb.227:                              # %.lr.ph187.i.preheader
                                        #   in Loop: Header=BB2_219 Depth=1
	sub.d	$fp, $s8, $s7
	bltu	$fp, $a6, .LBB2_231
# %bb.228:                              # %vector.ph956
                                        #   in Loop: Header=BB2_219 Depth=1
	bstrpick.d	$s1, $t8, 31, 0
	bstrpick.d	$fp, $s1, 31, 5
	slli.d	$s2, $fp, 5
	sub.d	$t8, $t8, $s2
	sub.d	$fp, $s7, $s2
	sub.d	$s0, $s8, $s2
	addi.d	$s8, $s8, -16
	addi.d	$s7, $s7, -16
	move	$ra, $s2
	.p2align	4, , 16
.LBB2_229:                              # %vector.body960
                                        #   Parent Loop BB2_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s8, 0
	vst	$vr2, $s8, -16
	vst	$vr1, $s7, 0
	vst	$vr1, $s7, -16
	addi.d	$ra, $ra, -32
	addi.d	$s8, $s8, -32
	addi.d	$s7, $s7, -32
	bnez	$ra, .LBB2_229
# %bb.230:                              # %middle.block967
                                        #   in Loop: Header=BB2_219 Depth=1
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB2_232
	b	.LBB2_234
	.p2align	4, , 16
.LBB2_231:                              #   in Loop: Header=BB2_219 Depth=1
	move	$fp, $s7
	move	$s0, $s8
.LBB2_232:                              # %.lr.ph187.i.preheader1066
                                        #   in Loop: Header=BB2_219 Depth=1
	move	$s1, $fp
	move	$s2, $s0
	.p2align	4, , 16
.LBB2_233:                              # %.lr.ph187.i
                                        #   Parent Loop BB2_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s2, -1
	st.b	$a3, $s2, -1
	addi.d	$fp, $s1, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $s1, -1
	move	$s1, $fp
	move	$s2, $s0
	bnez	$t8, .LBB2_233
.LBB2_234:                              # %._crit_edge188.loopexit.i
                                        #   in Loop: Header=BB2_219 Depth=1
	add.d	$t0, $s6, $t0
	add.d	$t0, $t7, $t0
	move	$s8, $s0
	move	$s7, $fp
	move	$s2, $a0
.LBB2_235:                              # %._crit_edge188.i
                                        #   in Loop: Header=BB2_219 Depth=1
	beq	$t4, $a1, .LBB2_241
# %bb.236:                              # %.lr.ph197.preheader.i
                                        #   in Loop: Header=BB2_219 Depth=1
	addi.w	$t7, $zero, -9
	nor	$s0, $t4, $zero
	bltu	$t7, $t4, .LBB2_242
# %bb.237:                              # %.lr.ph197.preheader.i
                                        #   in Loop: Header=BB2_219 Depth=1
	sub.d	$t7, $s8, $s7
	bltu	$t7, $a5, .LBB2_242
# %bb.238:                              # %vector.ph933
                                        #   in Loop: Header=BB2_219 Depth=1
	bstrpick.d	$t7, $s0, 30, 3
	slli.d	$s1, $t7, 3
	sub.d	$fp, $s0, $s1
	sub.d	$t7, $s7, $s1
	sub.d	$t8, $s8, $s1
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $t0, 0
	addi.d	$t0, $s8, -4
	addi.d	$s2, $s7, -4
	move	$s6, $s1
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB2_239:                              # %vector.body937
                                        #   Parent Loop BB2_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $t0, 0, 0
	vstelm.w	$vr1, $t0, -4, 0
	vstelm.w	$vr2, $s2, 0, 0
	vstelm.w	$vr2, $s2, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$s6, $s6, -8
	addi.d	$t0, $t0, -8
	addi.d	$s2, $s2, -8
	bnez	$s6, .LBB2_239
# %bb.240:                              # %middle.block945
                                        #   in Loop: Header=BB2_219 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$t0, $vr3, 0
	move	$s2, $a0
	bne	$s1, $s0, .LBB2_243
	b	.LBB2_245
	.p2align	4, , 16
.LBB2_241:                              #   in Loop: Header=BB2_219 Depth=1
	move	$t8, $s8
	move	$t7, $s7
	b	.LBB2_245
	.p2align	4, , 16
.LBB2_242:                              #   in Loop: Header=BB2_219 Depth=1
	move	$fp, $s0
	move	$t7, $s7
	move	$t8, $s8
.LBB2_243:                              # %.lr.ph197.i.preheader
                                        #   in Loop: Header=BB2_219 Depth=1
	add.d	$t0, $t0, $fp
	.p2align	4, , 16
.LBB2_244:                              # %.lr.ph197.i
                                        #   Parent Loop BB2_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB2_244
.LBB2_245:                              # %._crit_edge198.i
                                        #   in Loop: Header=BB2_219 Depth=1
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	beq	$t2, $fp, .LBB2_248
# %bb.246:                              # %._crit_edge198.i
                                        #   in Loop: Header=BB2_219 Depth=1
	addi.w	$fp, $s5, 0
	beq	$t3, $fp, .LBB2_248
# %bb.247:                              #   in Loop: Header=BB2_219 Depth=1
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $fp, %pc_lo12(impmtx)
	ldx.d	$t5, $fp, $t5
	fldx.s	$fa3, $t5, $t6
	fld.s	$fa4, $a2, 0
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a2, 0
.LBB2_248:                              #   in Loop: Header=BB2_219 Depth=1
	blez	$t2, .LBB2_251
# %bb.249:                              #   in Loop: Header=BB2_219 Depth=1
	blez	$t3, .LBB2_251
# %bb.250:                              #   in Loop: Header=BB2_219 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s8, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s7, $t7, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t7, -1
	move	$s6, $t1
	bge	$s2, $t0, .LBB2_219
	b	.LBB2_252
.LBB2_251:
	move	$s8, $t8
	move	$s7, $t7
.LBB2_252:                              # %._crit_edge210.i
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	blez	$s5, .LBB2_255
# %bb.253:                              # %.lr.ph218.preheader.i
	move	$fp, $s6
	move	$s0, $s5
	.p2align	4, , 16
.LBB2_254:                              # %.lr.ph218.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB2_254
.LBB2_255:                              # %.preheader.i522
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	blez	$s1, .LBB2_258
# %bb.256:                              # %.lr.ph220.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_257:                              # %.lr.ph220.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB2_257
.LBB2_258:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_260
# %bb.259:                              # %Atracking_localhom.exit
	ori	$a0, $a4, 2881
	blt	$a3, $a0, .LBB2_261
.LBB2_260:
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
.LBB2_261:
	blez	$s5, .LBB2_264
# %bb.262:                              # %.lr.ph624
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.mseq1)
	.p2align	4, , 16
.LBB2_263:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 8
	bnez	$s5, .LBB2_263
.LBB2_264:                              # %.preheader
	blez	$s1, .LBB2_267
# %bb.265:                              # %.lr.ph626
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.mseq2)
	.p2align	4, , 16
.LBB2_266:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB2_266
.LBB2_267:                              # %._crit_edge627
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs1, $sp, 472                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 480                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.LBB2_268:                              # %vector.ph
	bstrpick.d	$a0, $a2, 31, 3
	slli.d	$a4, $a0, 3
	move	$a6, $a2
	slli.d	$a2, $a0, 5
	add.d	$a1, $a5, $a2
	andi	$a0, $a6, 7
	add.d	$a2, $s0, $a2
	addi.d	$a6, $s0, 16
	addi.d	$a5, $a5, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_269:                              # %vector.body
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
	bnez	$a7, .LBB2_269
# %bb.270:                              # %middle.block
	bne	$a3, $a4, .LBB2_35
	b	.LBB2_36
.Lfunc_end2:
	.size	R__align, .Lfunc_end2-R__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	beqz	$a7, .LBB3_8
# %bb.1:
	blez	$a4, .LBB3_8
# %bb.2:                                # %.preheader60.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 208
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t3, $t5, 0
	slli.d	$t2, $t2, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t3, $t2
	beq	$a7, $a4, .LBB3_8
.LBB3_4:                                # %.preheader60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	move	$t3, $zero
	move	$t4, $zero
	move	$t2, $zero
	alsl.d	$t6, $a7, $a5, 3
	alsl.d	$t5, $a7, $a6, 3
	slli.d	$t7, $a7, 2
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 1
	beq	$t3, $t0, .LBB3_3
.LBB3_6:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t8, $a2, $t3
	fldx.s	$fa1, $t8, $t7
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_5
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	ld.d	$t8, $t6, 0
	ld.d	$fp, $t5, 0
	slli.d	$s0, $t2, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t4, $fp, $s0
	addi.w	$t2, $t2, 1
	b	.LBB3_5
.LBB3_8:                                # %.loopexit
	pcalau12i	$a2, %got_pc_hi20(n_dis)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis)
	move	$a7, $zero
	addi.d	$t0, $sp, 8
	movgr2fr.w	$fa0, $zero
	slli.d	$a3, $a3, 2
	ori	$t1, $zero, 208
	ori	$t2, $zero, 26
	.p2align	4, , 16
.LBB3_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	move	$t4, $zero
	alsl.d	$t3, $a7, $t0, 2
	move	$t5, $a2
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB3_10:                               #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t6, $a1, $t4
	ld.w	$t7, $t5, 0
	fldx.s	$fa2, $t6, $a3
	movgr2fr.w	$fa3, $t7
	ffint.s.w	$fa3, $fa3
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 104
	bne	$t4, $t1, .LBB3_10
# %bb.11:                               #   in Loop: Header=BB3_9 Depth=1
	fst.s	$fa1, $t3, 0
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 4
	bne	$a7, $t2, .LBB3_9
# %bb.12:                               # %.preheader
	beqz	$a4, .LBB3_18
# %bb.13:
	movgr2fr.w	$fa0, $zero
	addi.d	$a1, $sp, 8
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               # %._crit_edge
                                        #   in Loop: Header=BB3_15 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB3_18
.LBB3_15:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
	ld.d	$a3, $a6, 0
	ld.wu	$a2, $a3, 0
	addi.w	$a7, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB3_14
# %bb.16:                               # %.lr.ph
                                        #   in Loop: Header=BB3_15 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$a3, $a3, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB3_17:                               #   Parent Loop BB3_15 Depth=1
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
	bgez	$t0, .LBB3_17
	b	.LBB3_14
.LBB3_18:                               # %._crit_edge74
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end3:
	.size	match_calc, .Lfunc_end3-match_calc
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strictR.impalloclen,@object # @imp_match_init_strictR.impalloclen
	.local	imp_match_init_strictR.impalloclen
	.comm	imp_match_init_strictR.impalloclen,4,4
	.type	imp_match_init_strictR.nocount1,@object # @imp_match_init_strictR.nocount1
	.local	imp_match_init_strictR.nocount1
	.comm	imp_match_init_strictR.nocount1,8,8
	.type	imp_match_init_strictR.nocount2,@object # @imp_match_init_strictR.nocount2
	.local	imp_match_init_strictR.nocount2
	.comm	imp_match_init_strictR.nocount2,8,8
	.type	R__align.m,@object              # @R__align.m
	.local	R__align.m
	.comm	R__align.m,8,8
	.type	R__align.ijp,@object            # @R__align.ijp
	.local	R__align.ijp
	.comm	R__align.ijp,8,8
	.type	R__align.mp,@object             # @R__align.mp
	.local	R__align.mp
	.comm	R__align.mp,8,8
	.type	R__align.w1,@object             # @R__align.w1
	.local	R__align.w1
	.comm	R__align.w1,8,8
	.type	R__align.w2,@object             # @R__align.w2
	.local	R__align.w2
	.comm	R__align.w2,8,8
	.type	R__align.match,@object          # @R__align.match
	.local	R__align.match
	.comm	R__align.match,8,8
	.type	R__align.initverticalw,@object  # @R__align.initverticalw
	.local	R__align.initverticalw
	.comm	R__align.initverticalw,8,8
	.type	R__align.lastverticalw,@object  # @R__align.lastverticalw
	.local	R__align.lastverticalw
	.comm	R__align.lastverticalw,8,8
	.type	R__align.mseq1,@object          # @R__align.mseq1
	.local	R__align.mseq1
	.comm	R__align.mseq1,8,8
	.type	R__align.mseq2,@object          # @R__align.mseq2
	.local	R__align.mseq2
	.comm	R__align.mseq2,8,8
	.type	R__align.mseq,@object           # @R__align.mseq
	.local	R__align.mseq
	.comm	R__align.mseq,8,8
	.type	R__align.digf1,@object          # @R__align.digf1
	.local	R__align.digf1
	.comm	R__align.digf1,8,8
	.type	R__align.digf2,@object          # @R__align.digf2
	.local	R__align.digf2
	.comm	R__align.digf2,8,8
	.type	R__align.diaf1,@object          # @R__align.diaf1
	.local	R__align.diaf1
	.comm	R__align.diaf1,8,8
	.type	R__align.diaf2,@object          # @R__align.diaf2
	.local	R__align.diaf2
	.comm	R__align.diaf2,8,8
	.type	R__align.gapz1,@object          # @R__align.gapz1
	.local	R__align.gapz1
	.comm	R__align.gapz1,8,8
	.type	R__align.gapz2,@object          # @R__align.gapz2
	.local	R__align.gapz2
	.comm	R__align.gapz2,8,8
	.type	R__align.gapf1,@object          # @R__align.gapf1
	.local	R__align.gapf1
	.comm	R__align.gapf1,8,8
	.type	R__align.gapf2,@object          # @R__align.gapf2
	.local	R__align.gapf2
	.comm	R__align.gapf2,8,8
	.type	R__align.ogcp1g,@object         # @R__align.ogcp1g
	.local	R__align.ogcp1g
	.comm	R__align.ogcp1g,8,8
	.type	R__align.ogcp2g,@object         # @R__align.ogcp2g
	.local	R__align.ogcp2g
	.comm	R__align.ogcp2g,8,8
	.type	R__align.fgcp1g,@object         # @R__align.fgcp1g
	.local	R__align.fgcp1g
	.comm	R__align.fgcp1g,8,8
	.type	R__align.fgcp2g,@object         # @R__align.fgcp2g
	.local	R__align.fgcp2g
	.comm	R__align.fgcp2g,8,8
	.type	R__align.ogcp1,@object          # @R__align.ogcp1
	.local	R__align.ogcp1
	.comm	R__align.ogcp1,8,8
	.type	R__align.ogcp2,@object          # @R__align.ogcp2
	.local	R__align.ogcp2
	.comm	R__align.ogcp2,8,8
	.type	R__align.fgcp1,@object          # @R__align.fgcp1
	.local	R__align.fgcp1
	.comm	R__align.fgcp1,8,8
	.type	R__align.fgcp2,@object          # @R__align.fgcp2
	.local	R__align.fgcp2
	.comm	R__align.fgcp2,8,8
	.type	R__align.cpmx1,@object          # @R__align.cpmx1
	.local	R__align.cpmx1
	.comm	R__align.cpmx1,8,8
	.type	R__align.cpmx2,@object          # @R__align.cpmx2
	.local	R__align.cpmx2
	.comm	R__align.cpmx2,8,8
	.type	R__align.intwork,@object        # @R__align.intwork
	.local	R__align.intwork
	.comm	R__align.intwork,8,8
	.type	R__align.floatwork,@object      # @R__align.floatwork
	.local	R__align.floatwork
	.comm	R__align.floatwork,8,8
	.type	R__align.orlgth1,@object        # @R__align.orlgth1
	.local	R__align.orlgth1
	.comm	R__align.orlgth1,4,4
	.type	R__align.orlgth2,@object        # @R__align.orlgth2
	.local	R__align.orlgth2
	.comm	R__align.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"wm = %f\n"
	.size	.L.str.2, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
