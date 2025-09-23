	.file	"Halignmm.c"
	.text
	.globl	imp_match_out_scH               # -- Begin function imp_match_out_scH
	.p2align	5
	.type	imp_match_out_scH,@function
imp_match_out_scH:                      # @imp_match_out_scH
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_scH, .Lfunc_end0-imp_match_out_scH
                                        # -- End function
	.globl	imp_match_init_strictH          # -- Begin function imp_match_init_strictH
	.p2align	5
	.type	imp_match_init_strictH,@function
imp_match_init_strictH:                 # @imp_match_init_strictH
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
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictH.impalloclen)
	ld.w	$a0, $s7, %pc_lo12(imp_match_init_strictH.impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictH.nocount1)
	pcalau12i	$s6, %pc_hi20(imp_match_init_strictH.nocount2)
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
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	beqz	$a0, .LBB1_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_6:
	ld.d	$a0, $s6, %pc_lo12(imp_match_init_strictH.nocount2)
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
	st.w	$a0, $s7, %pc_lo12(imp_match_init_strictH.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(imp_match_init_strictH.impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(imp_match_init_strictH.impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(imp_match_init_strictH.nocount2)
.LBB1_9:
	blez	$s5, .LBB1_18
# %bb.10:                               # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
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
	ld.d	$a0, $s6, %pc_lo12(imp_match_init_strictH.nocount2)
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
	.size	imp_match_init_strictH, .Lfunc_end1-imp_match_init_strictH
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function H__align
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
	.globl	H__align
	.p2align	5
	.type	H__align,@function
H__align:                               # @H__align
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 512                  # 8-byte Folded Spill
	st.d	$a7, $sp, 256                   # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$s1, %pc_hi20(H__align.orlgth1)
	ld.w	$s8, $s1, %pc_lo12(H__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq1)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq2)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bnez	$s8, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(H__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s1, %pc_lo12(H__align.orlgth1)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.mseq2)
.LBB2_2:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a3, $fp
	pcalau12i	$s3, %pc_hi20(H__align.orlgth2)
	ld.w	$s6, $s3, %pc_lo12(H__align.orlgth2)
	addi.w	$a5, $a0, 0
	pcalau12i	$a1, %pc_hi20(H__align.w1)
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.w2)
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.initverticalw)
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.lastverticalw)
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.m)
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(H__align.mseq)
	pcalau12i	$a1, %pc_hi20(H__align.digf1)
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.digf2)
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.diaf1)
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.diaf2)
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gappat1)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gappat2)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gapz1)
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gapz2)
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(H__align.gapf1)
	pcalau12i	$s4, %pc_hi20(H__align.gapf2)
	pcalau12i	$a1, %pc_hi20(H__align.ogcp1g)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.ogcp2g)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.fgcp1g)
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.fgcp2g)
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(H__align.cpmx1)
	pcalau12i	$a1, %pc_hi20(H__align.cpmx2)
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.floatwork)
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.intwork)
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s5, $sp, 312                   # 8-byte Folded Spill
	blt	$s8, $a3, .LBB2_4
# %bb.3:
	bge	$s6, $a5, .LBB2_8
.LBB2_4:
	pcalau12i	$s5, %pc_hi20(H__align.match)
	pcalau12i	$a1, %pc_hi20(H__align.ogcp1)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.ogcp2)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.fgcp1)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(H__align.fgcp2)
	blez	$s8, .LBB2_7
# %bb.5:
	blez	$s6, .LBB2_7
# %bb.6:
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(H__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(H__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(H__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(H__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(H__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$s8, $s1, %pc_lo12(H__align.orlgth1)
	ld.w	$s6, $s3, %pc_lo12(H__align.orlgth2)
.LBB2_7:
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_0)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	slt	$a1, $a2, $s8
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a2
	st.d	$fp, $sp, 200                   # 8-byte Folded Spill
	addi.w	$fp, $s8, 100
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	addi.w	$s0, $s6, 100
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	move	$s3, $s1
	move	$s1, $s4
	addi.w	$s4, $s6, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(H__align.match)
	move	$s5, $s7
	addi.w	$s7, $s8, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.initverticalw)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(H__align.mp)
	st.d	$a0, $a1, %pc_lo12(H__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s0, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.mseq)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf2)
	ori	$a1, $zero, 8
	move	$a0, $s7
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat1)
	ori	$a1, $zero, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(H__align.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(H__align.gapf2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp2g)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp2g)
	ori	$a0, $zero, 26
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $s5, %pc_lo12(H__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.cpmx2)
	slt	$a0, $s0, $fp
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $fp, $a0
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s1
	move	$s1, $s3
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.intwork)
	st.w	$s8, $s1, %pc_lo12(H__align.orlgth1)
	st.w	$s6, $s3, %pc_lo12(H__align.orlgth2)
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
.LBB2_8:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blez	$a0, .LBB2_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $fp, %pc_lo12(H__align.mseq)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.mseq1)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a6, 0
	stx.b	$zero, $a4, $a3
	addi.d	$a6, $a6, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_10
.LBB2_11:                               # %.preheader640
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blez	$a0, .LBB2_14
# %bb.12:                               # %.lr.ph653
	ld.d	$a1, $fp, %pc_lo12(H__align.mseq)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a6, 0
	stx.b	$zero, $a4, $a5
	addi.d	$a1, $a1, 8
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_13
.LBB2_14:                               # %._crit_edge
	ld.d	$s4, $sp, 616
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s0, 0
	blt	$a0, $s8, .LBB2_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s6, .LBB2_17
# %bb.16:                               # %._crit_edge809
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
	ld.w	$s8, $s1, %pc_lo12(H__align.orlgth1)
	ld.w	$a0, $fp, 0
	ld.w	$s6, $s3, %pc_lo12(H__align.orlgth2)
	ld.w	$a1, $s0, 0
.LBB2_20:
	slt	$a2, $a0, $s8
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s8, $a2
	or	$s1, $a2, $a0
	slt	$a0, $a1, $s6
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$s3, $a0, $a1
	addi.w	$a0, $s1, 10
	addi.w	$a1, $s3, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s1, $fp, 0
	st.w	$s3, $s0, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
.LBB2_21:
	ld.d	$a1, $s5, %pc_lo12(H__align.cpmx1)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	pcalau12i	$a2, %pc_hi20(H__align.ijp)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(H__align.ijp)
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s5
	move	$a2, $s2
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$s6, $a3
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s8, $sp, 384                   # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	bnez	$s4, .LBB2_23
# %bb.22:
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	b	.LBB2_24
.LBB2_23:
	ld.d	$s7, $sp, 640
	ld.d	$s8, $sp, 632
	ld.d	$s1, $sp, 624
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	move	$a4, $s3
	move	$a5, $s1
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	move	$a4, $s3
	move	$a5, $s1
	move	$a6, $s7
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s8
	ld.d	$s8, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
.LBB2_24:
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $s7, %pc_lo12(H__align.gapf1)
	ffint.s.w	$fa0, $fs0
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $s4, %pc_lo12(H__align.gapf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(H__align.w1)
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(H__align.initverticalw)
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(H__align.cpmx1)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.floatwork)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s8
	move	$a3, $zero
	move	$a4, $s6
	move	$a5, $fp
	move	$a6, $s0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a1, $a0, 32
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_26
# %bb.25:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s1
	move	$a1, $s8
	move	$a2, $s5
	move	$a3, $zero
	move	$a4, $s3
	move	$a5, $fp
	move	$a6, $s0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	vld	$vr14, $sp, 384                 # 16-byte Folded Reload
	b	.LBB2_36
.LBB2_26:
	blez	$s6, .LBB2_29
# %bb.27:                               # %.lr.ph.i
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
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
.LBB2_29:                               # %imp_match_out_vead_tateH.exit
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	move	$a1, $s8
	move	$a2, $s5
	move	$a3, $zero
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s3
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB2_31
# %bb.30:                               # %imp_match_out_veadH.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	vld	$vr14, $sp, 384                 # 16-byte Folded Reload
	beq	$a0, $fp, .LBB2_37
	b	.LBB2_47
.LBB2_31:                               # %.lr.ph.preheader.i
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a5, $a0, 0
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	bstrpick.d	$a3, $t7, 31, 0
	ori	$a0, $zero, 8
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	vld	$vr14, $sp, 384                 # 16-byte Folded Reload
	bltu	$a3, $a0, .LBB2_34
# %bb.32:                               # %vector.memcheck
	addi.w	$a0, $zero, -4
	lu32i.d	$a0, 3
	alsl.d	$a0, $t7, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 4
	add.d	$a1, $a5, $a0
	bgeu	$s1, $a1, .LBB2_330
# %bb.33:                               # %vector.memcheck
	add.d	$a0, $s1, $a0
	bgeu	$a5, $a0, .LBB2_330
.LBB2_34:
	move	$a1, $a5
	move	$a0, $t7
	move	$a2, $s1
	.p2align	4, , 16
.LBB2_35:                               # %.lr.ph.i507
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
.LBB2_36:                               # %imp_match_out_veadH.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_40
.LBB2_37:                               # %.preheader636
	bgtz	$s6, .LBB2_159
.LBB2_38:                               # %.preheader634
	bgtz	$s3, .LBB2_176
# %bb.39:                               # %.loopexit635.thread
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(H__align.m)
	st.w	$zero, $t1, 0
	b	.LBB2_55
.LBB2_40:                               # %.preheader639
	blez	$s3, .LBB2_47
# %bb.41:                               # %.lr.ph656
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t7, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_45
# %bb.42:                               # %vector.ph924
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $s1, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_43:                               # %vector.body927
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
	bnez	$a6, .LBB2_43
# %bb.44:                               # %middle.block932
	beq	$a2, $a4, .LBB2_47
.LBB2_45:                               # %scalar.ph922.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s1, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_46:                               # %scalar.ph922
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
	bnez	$a1, .LBB2_46
.LBB2_47:                               # %.preheader637
	blez	$s6, .LBB2_54
# %bb.48:                               # %.lr.ph659
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_52
# %bb.49:                               # %vector.ph937
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
.LBB2_50:                               # %vector.body942
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
	bnez	$a6, .LBB2_50
# %bb.51:                               # %middle.block949
	beq	$a2, $a4, .LBB2_54
.LBB2_52:                               # %scalar.ph935.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s2, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_53:                               # %scalar.ph935
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
	bnez	$a1, .LBB2_53
.LBB2_54:                               # %.loopexit635
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(H__align.m)
	st.w	$zero, $t1, 0
	bgtz	$s3, .LBB2_57
.LBB2_55:                               # %._crit_edge672
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	ori	$t0, $zero, 1
	bnez	$s3, .LBB2_65
# %bb.56:
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	b	.LBB2_66
.LBB2_57:                               # %.lr.ph671
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	addi.d	$a1, $t7, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	bltu	$a2, $a4, .LBB2_62
# %bb.58:                               # %vector.memcheck952
	sub.d	$a4, $t1, $s1
	addi.d	$a4, $a4, 4
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB2_62
# %bb.59:                               # %vector.ph955
	move	$a5, $zero
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a6, 2, 0
	vreplvei.w	$vr0, $vr14, 0
	addi.d	$a6, $a0, 20
	vrepli.b	$vr1, 0
	lu12i.w	$a7, 287172
	vreplgr2vr.w	$vr2, $a7
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_60:                               # %vector.body960
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $s1, $a5
	vldx	$vr3, $s1, $a5
	vld	$vr4, $t0, 16
	add.d	$t0, $a6, $a5
	vst	$vr1, $t0, -16
	vstx	$vr1, $a6, $a5
	vfadd.s	$vr3, $vr3, $vr1
	vfadd.s	$vr4, $vr4, $vr1
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	vfmadd.s	$vr4, $vr0, $vr2, $vr4
	add.d	$t0, $t1, $a5
	vst	$vr3, $t0, 4
	vst	$vr4, $t0, 20
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB2_60
# %bb.61:                               # %middle.block966
	beq	$a2, $a4, .LBB2_64
.LBB2_62:                               # %scalar.ph953.preheader
	slli.d	$a2, $a3, 2
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	fld.s	$fa0, $a4, %pc_lo12(.LCPI2_2)
	addi.d	$a4, $s1, -4
	sub.d	$a1, $a1, $a3
	movgr2fr.w	$fa1, $zero
	.p2align	4, , 16
.LBB2_63:                               # %scalar.ph953
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa2, $a4, $a2
	stx.w	$zero, $a0, $a2
	fadd.s	$fa2, $fa2, $fa1
	fmadd.s	$fa2, $ft6, $fa0, $fa2
	fstx.s	$fa2, $t1, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB2_63
.LBB2_64:
	move	$t0, $zero
.LBB2_65:                               # %._crit_edge672.thread
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $t2, $a0
	srai.d	$a0, $a0, 30
	fldx.s	$fa0, $s1, $a0
	st.d	$t0, $sp, 320                   # 8-byte Folded Spill
	move	$t0, $zero
.LBB2_66:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.lastverticalw)
	fst.s	$fa0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	sltu	$a0, $zero, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ori	$a0, $zero, 2
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB2_130
# %bb.67:                               # %.lr.ph693
	st.d	$t1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ijp)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $s7, %pc_lo12(H__align.gapf1)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	fcvt.d.s	$fa0, $ft6
	ld.d	$a0, $s4, %pc_lo12(H__align.gapf2)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $t2, $a0
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a0, $t7, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	addi.w	$a0, $t7, -1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 32, 3
	slli.d	$a1, $a0, 3
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	sub.d	$a0, $t7, $a1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	movgr2fr.w	$fa1, $zero
	ori	$a3, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(n_dis)
	ld.d	$a0, $a0, %got_pc_lo12(n_dis)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ori	$ra, $zero, 208
	addi.d	$a5, $sp, 408
	ori	$t8, $zero, 26
	vldi	$vr2, -912
	fmov.s	$fs0, $fa1
	move	$a1, $s1
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	st.d	$t0, $sp, 288                   # 8-byte Folded Spill
	b	.LBB2_69
	.p2align	4, , 16
.LBB2_68:                               # %._crit_edge685
                                        #   in Loop: Header=BB2_69 Depth=1
	ld.d	$s1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa3, $s1, $a0
	addi.d	$a3, $a3, 1
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	fstx.s	$fa3, $s0, $t2
	move	$a1, $s1
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	beq	$a3, $a0, .LBB2_131
.LBB2_69:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_70 Depth 2
                                        #       Child Loop BB2_71 Depth 3
                                        #     Child Loop BB2_76 Depth 2
                                        #       Child Loop BB2_78 Depth 3
                                        #     Child Loop BB2_128 Depth 2
                                        #     Child Loop BB2_84 Depth 2
                                        #     Child Loop BB2_88 Depth 2
                                        #       Child Loop BB2_94 Depth 3
                                        #       Child Loop BB2_99 Depth 3
                                        #         Child Loop BB2_102 Depth 4
                                        #       Child Loop BB2_112 Depth 3
                                        #       Child Loop BB2_117 Depth 3
                                        #         Child Loop BB2_120 Depth 4
	addi.d	$a0, $a3, -1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	fldx.s	$fa3, $s2, $a0
	move	$a0, $zero
	ld.d	$t3, $sp, 336                   # 8-byte Folded Reload
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	fst.s	$fa3, $a1, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_70:                               #   Parent Loop BB2_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_71 Depth 3
	move	$a2, $zero
	move	$a4, $a1
	fmov.s	$fa3, $fa1
	.p2align	4, , 16
.LBB2_71:                               #   Parent Loop BB2_69 Depth=1
                                        #     Parent Loop BB2_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a6, $s8, $a2
	ld.w	$a7, $a4, 0
	slli.d	$t2, $a3, 2
	fldx.s	$fa4, $a6, $t2
	movgr2fr.w	$fa5, $a7
	ffint.s.w	$fa5, $fa5
	fmadd.s	$fa3, $fa5, $fa4, $fa3
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, 104
	bne	$a2, $ra, .LBB2_71
# %bb.72:                               #   in Loop: Header=BB2_70 Depth=2
	slli.d	$a2, $a0, 2
	fstx.s	$fa3, $a2, $a5
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	bne	$a0, $t8, .LBB2_70
# %bb.73:                               # %.preheader.i537
                                        #   in Loop: Header=BB2_69 Depth=1
	bnez	$t0, .LBB2_85
# %bb.74:                               # %.lr.ph73.i.preheader
                                        #   in Loop: Header=BB2_69 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	move	$a4, $t3
	b	.LBB2_76
	.p2align	4, , 16
.LBB2_75:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_76 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB2_79
.LBB2_76:                               # %.lr.ph73.i
                                        #   Parent Loop BB2_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_78 Depth 3
	ld.d	$a7, $a1, 0
	ld.wu	$a6, $a7, 0
	addi.w	$t0, $a6, 0
	st.w	$zero, $a4, 0
	bltz	$t0, .LBB2_75
# %bb.77:                               # %.lr.ph.i538
                                        #   in Loop: Header=BB2_76 Depth=2
	ld.d	$t0, $a2, 0
	addi.d	$a7, $a7, 4
	movgr2fr.w	$fa3, $zero
	.p2align	4, , 16
.LBB2_78:                               #   Parent Loop BB2_69 Depth=1
                                        #     Parent Loop BB2_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a6, $a6, 2
	fldx.s	$fa4, $a6, $a5
	fld.s	$fa5, $t0, 0
	ld.wu	$a6, $a7, 0
	addi.d	$t0, $t0, 4
	fmadd.s	$fa3, $fa4, $fa5, $fa3
	fst.s	$fa3, $a4, 0
	addi.w	$t1, $a6, 0
	addi.d	$a7, $a7, 4
	bgez	$t1, .LBB2_78
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_79:                               # %match_calc.exit
                                        #   in Loop: Header=BB2_69 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_85
# %bb.80:                               # %.lr.ph.preheader.i544
                                        #   in Loop: Header=BB2_69 Depth=1
	slli.d	$a0, $a3, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.d	$a4, $a1, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB2_83
# %bb.81:                               # %vector.memcheck969
                                        #   in Loop: Header=BB2_69 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a1
	bgeu	$t3, $a0, .LBB2_127
# %bb.82:                               # %vector.memcheck969
                                        #   in Loop: Header=BB2_69 Depth=1
	add.d	$a0, $t3, $a1
	bgeu	$a4, $a0, .LBB2_127
.LBB2_83:                               #   in Loop: Header=BB2_69 Depth=1
	move	$a0, $a4
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	move	$a1, $t3
	.p2align	4, , 16
.LBB2_84:                               # %.lr.ph.i545
                                        #   Parent Loop BB2_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a1, 4
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a1, 0
	move	$a1, $a4
	bnez	$a2, .LBB2_84
.LBB2_85:                               # %imp_match_out_veadH.exit551
                                        #   in Loop: Header=BB2_69 Depth=1
	fldx.s	$fa3, $s2, $t2
	st.d	$t3, $sp, 328                   # 8-byte Folded Spill
	fst.s	$fa3, $t3, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_68
# %bb.86:                               # %.lr.ph684
                                        #   in Loop: Header=BB2_69 Depth=1
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	fld.s	$fa3, $s6, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	fld.s	$fa4, $a0, %pc_lo12(.LCPI2_2)
	move	$t4, $zero
	fadd.s	$fa3, $fa3, $fa1
	fmadd.s	$fa3, $ft6, $fa4, $fa3
	slli.d	$a0, $a3, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$t0, $a1, $a0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a0, 2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a0, 2
	addi.d	$t6, $t0, 8
	addi.d	$s2, $t0, 16
	ori	$a0, $zero, 1
	ld.d	$s7, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	b	.LBB2_88
	.p2align	4, , 16
.LBB2_87:                               #   in Loop: Header=BB2_88 Depth=2
	addi.d	$s7, $s7, 4
	fcmp.cult.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	addi.d	$a6, $a0, -1
	movcf2gr	$a7, $fcc0
	fld.s	$fa4, $s7, 0
	maskeqz	$t1, $t4, $a7
	masknez	$a6, $a6, $a7
	or	$t4, $t1, $a6
	fadd.s	$fa4, $fs0, $fa4
	fst.s	$fa4, $s7, 0
	addi.d	$a0, $a0, 1
	addi.d	$s6, $s6, 4
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	beq	$a0, $a6, .LBB2_68
.LBB2_88:                               #   Parent Loop BB2_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_94 Depth 3
                                        #       Child Loop BB2_99 Depth 3
                                        #         Child Loop BB2_102 Depth 4
                                        #       Child Loop BB2_112 Depth 3
                                        #       Child Loop BB2_117 Depth 3
                                        #         Child Loop BB2_120 Depth 4
	slli.d	$a6, $a0, 3
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	ldx.d	$s4, $a7, $a6
	fld.s	$fa7, $s4, 4
	fld.s	$fa4, $s6, 0
	fcmp.ceq.s	$fcc0, $fa7, $fa1
	fmov.s	$ft0, $fa4
	bcnez	$fcc0, .LBB2_90
# %bb.89:                               #   in Loop: Header=BB2_88 Depth=2
	fld.s	$fa5, $a2, 0
	fmul.s	$fa5, $fa7, $fa5
	fmul.s	$fa5, $fa5, $ft6
	fadd.s	$ft0, $fa4, $fa5
.LBB2_90:                               # %._crit_edge811
                                        #   in Loop: Header=BB2_88 Depth=2
	addi.d	$a1, $a1, 4
	slli.d	$s5, $a0, 2
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	fldx.s	$fa5, $a6, $s5
	fld.s	$ft1, $a4, 0
	fld.s	$fa6, $t0, 4
	st.w	$zero, $a1, 0
	fcvt.d.s	$ft3, $fa5
	fcvt.d.s	$ft1, $ft1
	fsub.d	$ft2, $fa2, $ft1
	fmul.d	$ft1, $ft2, $ft3
	fmul.d	$ft1, $ft1, $fa0
	fcvt.s.d	$ft1, $ft1
	bcnez	$fcc0, .LBB2_105
# %bb.91:                               #   in Loop: Header=BB2_88 Depth=2
	ld.w	$t7, $s4, 8
	nor	$a6, $t4, $zero
	add.w	$fp, $a0, $a6
	fmov.s	$ft3, $fa1
	beqz	$t7, .LBB2_96
# %bb.92:                               # %.lr.ph.i553.preheader
                                        #   in Loop: Header=BB2_88 Depth=2
	fld.s	$ft4, $a2, 0
	addi.d	$a6, $s4, 16
	move	$a7, $t7
	fmov.s	$ft3, $fa1
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_93:                               #   in Loop: Header=BB2_94 Depth=3
	ld.w	$a7, $a6, 0
	addi.d	$a6, $a6, 8
	beqz	$a7, .LBB2_96
.LBB2_94:                               # %.lr.ph.i553
                                        #   Parent Loop BB2_69 Depth=1
                                        #     Parent Loop BB2_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$a7, $fp, .LBB2_93
# %bb.95:                               #   in Loop: Header=BB2_94 Depth=3
	fld.s	$ft3, $a6, -4
	fmul.s	$ft3, $ft4, $ft3
	b	.LBB2_93
	.p2align	4, , 16
.LBB2_96:                               # %.preheader28.i558
                                        #   in Loop: Header=BB2_88 Depth=2
	ld.w	$a6, $t6, 0
	beqz	$a6, .LBB2_104
# %bb.97:                               # %.preheader.i562.preheader
                                        #   in Loop: Header=BB2_88 Depth=2
	addi.d	$t5, $s4, 16
	move	$t3, $t6
	move	$t1, $t0
	b	.LBB2_99
	.p2align	4, , 16
.LBB2_98:                               # %.loopexit.i571
                                        #   in Loop: Header=BB2_99 Depth=3
	ld.w	$a6, $t1, 8
	addi.d	$t3, $t1, 8
	beqz	$a6, .LBB2_104
.LBB2_99:                               # %.preheader.i562
                                        #   Parent Loop BB2_69 Depth=1
                                        #     Parent Loop BB2_88 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_102 Depth 4
	move	$a7, $t1
	move	$t1, $t3
	beqz	$t7, .LBB2_98
# %bb.100:                              # %.lr.ph35.i566
                                        #   in Loop: Header=BB2_99 Depth=3
	add.w	$t3, $a6, $fp
	move	$a6, $t5
	move	$s1, $t7
	b	.LBB2_102
	.p2align	4, , 16
.LBB2_101:                              #   in Loop: Header=BB2_102 Depth=4
	ld.w	$s1, $a6, 0
	addi.d	$a6, $a6, 8
	beqz	$s1, .LBB2_98
.LBB2_102:                              #   Parent Loop BB2_69 Depth=1
                                        #     Parent Loop BB2_88 Depth=2
                                        #       Parent Loop BB2_99 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$t3, $s1, .LBB2_101
# %bb.103:                              #   in Loop: Header=BB2_102 Depth=4
	fld.s	$ft4, $a7, 12
	fld.s	$ft5, $a6, -4
	fmadd.s	$ft3, $ft4, $ft5, $ft3
	b	.LBB2_101
	.p2align	4, , 16
.LBB2_104:                              # %countnocountx.exit577
                                        #   in Loop: Header=BB2_88 Depth=2
	fcvt.d.s	$ft4, $fa7
	fmul.d	$ft2, $ft2, $ft4
	fcvt.d.s	$ft1, $ft1
	fmadd.d	$ft1, $ft2, $fa0, $ft1
	fcvt.s.d	$ft1, $ft1
	fneg.s	$ft2, $ft3
	fmadd.s	$ft1, $ft2, $ft6, $ft1
.LBB2_105:                              #   in Loop: Header=BB2_88 Depth=2
	fmul.s	$ft2, $fa6, $fa5
	fmul.s	$ft2, $ft2, $ft6
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cune.s	$fcc0, $fa6, $fa1
	fsel	$ft0, $ft0, $ft2, $fcc0
	fmul.s	$fa7, $fa7, $fa6
	fmul.s	$fa7, $fa7, $ft6
	fadd.s	$fs0, $fa7, $ft0
	fadd.s	$fa7, $ft1, $fa3
	fcmp.cule.s	$fcc0, $fa7, $fs0
	bcnez	$fcc0, .LBB2_107
# %bb.106:                              #   in Loop: Header=BB2_88 Depth=2
	sub.d	$a6, $t4, $a0
	st.w	$a6, $a1, 0
	fmov.s	$fs0, $fa7
.LBB2_107:                              #   in Loop: Header=BB2_88 Depth=2
	fld.s	$fa7, $a2, 0
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	fldx.s	$ft0, $a6, $s5
	addi.d	$s3, $s3, 4
	fcvt.d.s	$fa7, $fa7
	fcvt.d.s	$ft0, $ft0
	fsub.d	$ft0, $fa2, $ft0
	fmul.d	$fa7, $ft0, $fa7
	fmul.d	$fa7, $fa7, $fa0
	fcmp.ceq.s	$fcc0, $fa6, $fa1
	fcvt.s.d	$fa7, $fa7
	bcnez	$fcc0, .LBB2_123
# %bb.108:                              #   in Loop: Header=BB2_88 Depth=2
	ld.w	$a6, $s3, 0
	slli.d	$a7, $a6, 3
	ld.d	$t1, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a7, $t1, $a7
	fcvt.d.s	$fa6, $fa6
	alsl.d	$a7, $a0, $a7, 2
	ld.w	$a7, $a7, -4
	fmul.d	$fa6, $ft0, $fa6
	fcvt.d.s	$fa7, $fa7
	fmadd.d	$fa6, $fa6, $fa0, $fa7
	fcvt.s.d	$fa7, $fa6
	bnez	$a7, .LBB2_123
# %bb.109:                              #   in Loop: Header=BB2_88 Depth=2
	ld.w	$s5, $t6, 0
	nor	$a6, $a6, $zero
	add.w	$s1, $a3, $a6
	movgr2fr.w	$fa6, $zero
	beqz	$s5, .LBB2_114
# %bb.110:                              # %.lr.ph.i579.preheader
                                        #   in Loop: Header=BB2_88 Depth=2
	move	$a6, $s2
	move	$a7, $s5
	b	.LBB2_112
	.p2align	4, , 16
.LBB2_111:                              #   in Loop: Header=BB2_112 Depth=3
	ld.w	$a7, $a6, 0
	addi.d	$a6, $a6, 8
	beqz	$a7, .LBB2_114
.LBB2_112:                              # %.lr.ph.i579
                                        #   Parent Loop BB2_69 Depth=1
                                        #     Parent Loop BB2_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$a7, $s1, .LBB2_111
# %bb.113:                              #   in Loop: Header=BB2_112 Depth=3
	fld.s	$fa6, $a6, -4
	fmul.s	$fa6, $fa5, $fa6
	b	.LBB2_111
	.p2align	4, , 16
.LBB2_114:                              # %.preheader28.i584
                                        #   in Loop: Header=BB2_88 Depth=2
	ld.w	$a7, $s4, 8
	beqz	$a7, .LBB2_122
# %bb.115:                              #   in Loop: Header=BB2_88 Depth=2
	addi.d	$t1, $s4, 8
	b	.LBB2_117
	.p2align	4, , 16
.LBB2_116:                              # %.loopexit.i597
                                        #   in Loop: Header=BB2_117 Depth=3
	ld.w	$a7, $s4, 8
	addi.d	$t1, $s4, 8
	beqz	$a7, .LBB2_122
.LBB2_117:                              # %.preheader.i588
                                        #   Parent Loop BB2_69 Depth=1
                                        #     Parent Loop BB2_88 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_120 Depth 4
	move	$a6, $s4
	move	$s4, $t1
	beqz	$s5, .LBB2_116
# %bb.118:                              # %.lr.ph35.i592
                                        #   in Loop: Header=BB2_117 Depth=3
	add.w	$a7, $a7, $s1
	move	$t1, $s2
	move	$t3, $s5
	b	.LBB2_120
	.p2align	4, , 16
.LBB2_119:                              #   in Loop: Header=BB2_120 Depth=4
	ld.w	$t3, $t1, 0
	addi.d	$t1, $t1, 8
	beqz	$t3, .LBB2_116
.LBB2_120:                              #   Parent Loop BB2_69 Depth=1
                                        #     Parent Loop BB2_88 Depth=2
                                        #       Parent Loop BB2_117 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$a7, $t3, .LBB2_119
# %bb.121:                              #   in Loop: Header=BB2_120 Depth=4
	fld.s	$fa5, $a6, 12
	fld.s	$ft0, $t1, -4
	fmadd.s	$fa6, $fa5, $ft0, $fa6
	b	.LBB2_119
	.p2align	4, , 16
.LBB2_122:                              # %countnocountx.exit603
                                        #   in Loop: Header=BB2_88 Depth=2
	fneg.s	$fa5, $fa6
	fmadd.s	$fa7, $fa5, $ft6, $fa7
.LBB2_123:                              #   in Loop: Header=BB2_88 Depth=2
	addi.d	$s0, $s0, 4
	fld.s	$fa5, $s0, 0
	fadd.s	$fa6, $fa7, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB2_125
# %bb.124:                              #   in Loop: Header=BB2_88 Depth=2
	ld.w	$a6, $s3, 0
	sub.d	$a6, $a3, $a6
	st.w	$a6, $a1, 0
	fmov.s	$fs0, $fa6
.LBB2_125:                              #   in Loop: Header=BB2_88 Depth=2
	fcmp.cult.s	$fcc0, $fa4, $fa5
	bcnez	$fcc0, .LBB2_87
# %bb.126:                              #   in Loop: Header=BB2_88 Depth=2
	fst.s	$fa4, $s0, 0
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	st.w	$a6, $s3, 0
	b	.LBB2_87
.LBB2_127:                              # %vector.ph977
                                        #   in Loop: Header=BB2_69 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a1
	add.d	$a1, $t3, $a1
	addi.d	$a2, $t3, 16
	addi.d	$a4, $a4, 16
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_128:                              # %vector.body981
                                        #   Parent Loop BB2_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vld	$vr5, $a2, -16
	vld	$vr6, $a2, 0
	vfadd.s	$vr3, $vr3, $vr5
	vfadd.s	$vr4, $vr4, $vr6
	vst	$vr3, $a2, -16
	vst	$vr4, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB2_128
# %bb.129:                              # %middle.block992
                                        #   in Loop: Header=BB2_69 Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	bne	$a4, $a6, .LBB2_84
	b	.LBB2_85
.LBB2_130:
	movgr2fr.w	$fs0, $zero
.LBB2_131:                              # %._crit_edge694
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB2_146
# %bb.132:                              # %.preheader633
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_139
# %bb.133:                              # %.lr.ph703
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t0, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_137
# %bb.134:                              # %vector.ph999
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.d	$vr1, $t0
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	vld	$vr2, $a5, %pc_lo12(.LCPI2_3)
	pcalau12i	$a5, %pc_hi20(.LCPI2_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI2_4)
	addi.d	$a5, $s1, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_135:                              # %vector.body1006
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
	bnez	$a6, .LBB2_135
# %bb.136:                              # %middle.block1013
	beq	$a2, $a4, .LBB2_139
.LBB2_137:                              # %scalar.ph997.preheader
	sub.w	$a2, $t0, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s1, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_138:                              # %scalar.ph997
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
	bnez	$a1, .LBB2_138
.LBB2_139:                              # %.preheader632
	blez	$t2, .LBB2_146
# %bb.140:                              # %.lr.ph706
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
	bltu	$a2, $a3, .LBB2_144
# %bb.141:                              # %vector.ph1018
	move	$a4, $a2
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $a2, 1
	addi.d	$a5, $s0, 8
	vldi	$vr2, -928
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_142:                              # %vector.body1021
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
	bnez	$a6, .LBB2_142
# %bb.143:                              # %middle.block1026
	beq	$a2, $a4, .LBB2_146
.LBB2_144:                              # %scalar.ph1016.preheader
	alsl.d	$a2, $a0, $s0, 2
	sub.d	$a1, $a1, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB2_145:                              # %scalar.ph1016
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
	bnez	$a1, .LBB2_145
.LBB2_146:                              # %.loopexit
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ijp)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $t1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	add.w	$s5, $a0, $s8
	addi.w	$s3, $s5, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	addi.w	$a1, $s8, 0
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	addi.w	$a1, $s4, 0
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	bnez	$a3, .LBB2_153
# %bb.147:
	ori	$a3, $zero, 1
	ld.d	$s3, $sp, 376                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_198
# %bb.148:
	fld.s	$fa0, $s0, 0
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	blez	$a2, .LBB2_193
# %bb.149:                              # %.lr.ph.i626
	slli.d	$a2, $s8, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s4, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	b	.LBB2_151
	.p2align	4, , 16
.LBB2_150:                              #   in Loop: Header=BB2_151 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s0, $s0, 4
	beqz	$a4, .LBB2_193
.LBB2_151:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_150
# %bb.152:                              #   in Loop: Header=BB2_151 Depth=1
	ldx.d	$a6, $s3, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_150
.LBB2_153:
	ori	$a3, $zero, 1
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_206
# %bb.154:
	fld.s	$fa0, $s0, 0
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	blez	$a2, .LBB2_201
# %bb.155:                              # %.lr.ph.i607
	slli.d	$a2, $s8, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s4, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	b	.LBB2_157
	.p2align	4, , 16
.LBB2_156:                              #   in Loop: Header=BB2_157 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s0, $s0, 4
	beqz	$a4, .LBB2_201
.LBB2_157:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_156
# %bb.158:                              #   in Loop: Header=BB2_157 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_156
.LBB2_159:                              # %.lr.ph663
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	ld.d	$a1, $s4, %pc_lo12(H__align.gapf2)
	fcvt.d.s	$fa0, $ft6
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gappat1)
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat2)
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.diaf2)
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_162
	.p2align	4, , 16
.LBB2_160:                              # %countnocountx.exit
                                        #   in Loop: Header=BB2_162 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft6, $fa4
.LBB2_161:                              #   in Loop: Header=BB2_162 Depth=1
	alsl.d	$t0, $a6, $s2, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	beq	$a6, $a5, .LBB2_38
.LBB2_162:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_166 Depth 2
                                        #     Child Loop BB2_171 Depth 2
                                        #       Child Loop BB2_174 Depth 3
	slli.d	$t0, $a6, 2
	fldx.s	$fa3, $s2, $t0
	fadd.s	$fa3, $fa3, $fa1
	fstx.s	$fa3, $s2, $t0
	fldx.s	$fa4, $a0, $t0
	fld.s	$fa5, $a1, 0
	slli.d	$t0, $a6, 3
	ldx.d	$t2, $a2, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fld.s	$fa6, $t2, 4
	fsub.d	$fa5, $fa2, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fcmp.ceq.s	$fcc0, $fa6, $fa1
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_161
# %bb.163:                              #   in Loop: Header=BB2_162 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_168
# %bb.164:                              # %.lr.ph.i508.preheader
                                        #   in Loop: Header=BB2_162 Depth=1
	fld.s	$ft0, $a4, 0
	addi.d	$t1, $t2, 16
	move	$t3, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_166
	.p2align	4, , 16
.LBB2_165:                              #   in Loop: Header=BB2_166 Depth=2
	ld.w	$t3, $t1, 0
	addi.d	$t1, $t1, 8
	beqz	$t3, .LBB2_168
.LBB2_166:                              # %.lr.ph.i508
                                        #   Parent Loop BB2_162 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t3, $t3, 31, 0
	bne	$a6, $t3, .LBB2_165
# %bb.167:                              #   in Loop: Header=BB2_166 Depth=2
	fld.s	$fa7, $t1, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_165
	.p2align	4, , 16
.LBB2_168:                              # %.preheader28.i
                                        #   in Loop: Header=BB2_162 Depth=1
	ld.d	$t1, $a3, 0
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_160
# %bb.169:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB2_162 Depth=1
	addi.d	$t5, $t1, 8
	addi.d	$t2, $t2, 16
	b	.LBB2_171
	.p2align	4, , 16
.LBB2_170:                              # %.loopexit.i
                                        #   in Loop: Header=BB2_171 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_160
.LBB2_171:                              # %.preheader.i
                                        #   Parent Loop BB2_162 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_174 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	beqz	$t0, .LBB2_170
# %bb.172:                              # %.lr.ph35.i
                                        #   in Loop: Header=BB2_171 Depth=2
	add.w	$t4, $t4, $a7
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_174
	.p2align	4, , 16
.LBB2_173:                              #   in Loop: Header=BB2_174 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_170
.LBB2_174:                              #   Parent Loop BB2_162 Depth=1
                                        #     Parent Loop BB2_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_173
# %bb.175:                              #   in Loop: Header=BB2_174 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_173
.LBB2_176:                              # %.lr.ph667
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	ld.d	$a1, $s7, %pc_lo12(H__align.gapf1)
	fcvt.d.s	$fa0, $ft6
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gappat2)
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat1)
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.diaf1)
	addi.d	$a5, $t7, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_179
	.p2align	4, , 16
.LBB2_177:                              # %countnocountx.exit535
                                        #   in Loop: Header=BB2_179 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft6, $fa4
.LBB2_178:                              #   in Loop: Header=BB2_179 Depth=1
	alsl.d	$t0, $a6, $s1, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	beq	$a6, $a5, .LBB2_54
.LBB2_179:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_183 Depth 2
                                        #     Child Loop BB2_188 Depth 2
                                        #       Child Loop BB2_191 Depth 3
	slli.d	$t0, $a6, 2
	fldx.s	$fa3, $s1, $t0
	fadd.s	$fa3, $fa3, $fa1
	fstx.s	$fa3, $s1, $t0
	fldx.s	$fa4, $a0, $t0
	fld.s	$fa5, $a1, 0
	slli.d	$t0, $a6, 3
	ldx.d	$t2, $a2, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fld.s	$fa6, $t2, 4
	fsub.d	$fa5, $fa2, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fcmp.ceq.s	$fcc0, $fa6, $fa1
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_178
# %bb.180:                              #   in Loop: Header=BB2_179 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_185
# %bb.181:                              # %.lr.ph.i512.preheader
                                        #   in Loop: Header=BB2_179 Depth=1
	fld.s	$ft0, $a4, 0
	addi.d	$t1, $t2, 16
	move	$t3, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_183
	.p2align	4, , 16
.LBB2_182:                              #   in Loop: Header=BB2_183 Depth=2
	ld.w	$t3, $t1, 0
	addi.d	$t1, $t1, 8
	beqz	$t3, .LBB2_185
.LBB2_183:                              # %.lr.ph.i512
                                        #   Parent Loop BB2_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t3, $t3, 31, 0
	bne	$a6, $t3, .LBB2_182
# %bb.184:                              #   in Loop: Header=BB2_183 Depth=2
	fld.s	$fa7, $t1, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_182
	.p2align	4, , 16
.LBB2_185:                              # %.preheader28.i517
                                        #   in Loop: Header=BB2_179 Depth=1
	ld.d	$t1, $a3, 0
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_177
# %bb.186:                              # %.preheader.i521.preheader
                                        #   in Loop: Header=BB2_179 Depth=1
	addi.d	$t5, $t1, 8
	addi.d	$t2, $t2, 16
	b	.LBB2_188
	.p2align	4, , 16
.LBB2_187:                              # %.loopexit.i530
                                        #   in Loop: Header=BB2_188 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_177
.LBB2_188:                              # %.preheader.i521
                                        #   Parent Loop BB2_179 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_191 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	beqz	$t0, .LBB2_187
# %bb.189:                              # %.lr.ph35.i525
                                        #   in Loop: Header=BB2_188 Depth=2
	add.w	$t4, $t4, $a7
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_191
	.p2align	4, , 16
.LBB2_190:                              #   in Loop: Header=BB2_191 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_187
.LBB2_191:                              #   Parent Loop BB2_179 Depth=1
                                        #     Parent Loop BB2_188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_190
# %bb.192:                              #   in Loop: Header=BB2_191 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_190
.LBB2_193:                              # %.preheader161.i
	blez	$a1, .LBB2_198
# %bb.194:                              # %.lr.ph166.i
	slli.d	$a2, $s8, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s4, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s4, 30, 0
	sub.d	$a5, $zero, $s4
	b	.LBB2_196
	.p2align	4, , 16
.LBB2_195:                              #   in Loop: Header=BB2_196 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s1, $s1, 4
	beqz	$a4, .LBB2_198
.LBB2_196:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_195
# %bb.197:                              #   in Loop: Header=BB2_196 Depth=1
	ldx.d	$a6, $s3, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_195
.LBB2_198:                              # %.loopexit.i612
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_214
# %bb.199:                              # %.lr.ph169.preheader.i
	addi.d	$a3, $s8, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_209
# %bb.200:
	move	$a3, $zero
	b	.LBB2_212
.LBB2_201:                              # %.preheader170.i
	blez	$a1, .LBB2_206
# %bb.202:                              # %.lr.ph175.i
	slli.d	$a2, $s8, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s4, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s4, 30, 0
	sub.d	$a5, $zero, $s4
	b	.LBB2_204
	.p2align	4, , 16
.LBB2_203:                              #   in Loop: Header=BB2_204 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s1, $s1, 4
	beqz	$a4, .LBB2_206
.LBB2_204:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_203
# %bb.205:                              #   in Loop: Header=BB2_204 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_203
.LBB2_206:                              # %.loopexit.i604
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_222
# %bb.207:                              # %.lr.ph178.preheader.i
	addi.d	$a3, $s8, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_217
# %bb.208:
	move	$a3, $zero
	b	.LBB2_220
.LBB2_209:                              # %vector.ph1105
	pcalau12i	$a4, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s3, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_210:                              # %vector.body1108
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
	bnez	$a5, .LBB2_210
# %bb.211:                              # %middle.block1116
	beq	$a2, $a3, .LBB2_214
.LBB2_212:                              # %.lr.ph169.i.preheader
	alsl.d	$a4, $a3, $s3, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_213:                              # %.lr.ph169.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_213
.LBB2_214:                              # %.preheader160.i
	bltz	$a1, .LBB2_230
# %bb.215:                              # %.lr.ph172.i
	ld.d	$a2, $s3, 0
	addi.d	$a4, $s4, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB2_225
# %bb.216:
	move	$a4, $zero
	b	.LBB2_228
.LBB2_217:                              # %vector.ph1031
	pcalau12i	$a4, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_218:                              # %vector.body1034
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
	bnez	$a5, .LBB2_218
# %bb.219:                              # %middle.block1041
	beq	$a2, $a3, .LBB2_222
.LBB2_220:                              # %.lr.ph178.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_221:                              # %.lr.ph178.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_221
.LBB2_222:                              # %.preheader169.i
	ld.d	$a2, $sp, 608
	bltz	$a1, .LBB2_273
# %bb.223:                              # %.lr.ph181.i
	ld.d	$a3, $ra, 0
	addi.d	$a5, $s4, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB2_268
# %bb.224:
	move	$a5, $zero
	b	.LBB2_271
.LBB2_225:                              # %vector.ph1121
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_6)
	addi.d	$a5, $a2, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_226:                              # %vector.body1124
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a5, -16
	vst	$vr4, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_226
# %bb.227:                              # %middle.block1130
	beq	$a3, $a4, .LBB2_230
.LBB2_228:                              # %scalar.ph1119.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB2_229:                              # %scalar.ph1119
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB2_229
.LBB2_230:                              # %._crit_edge.i616
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	add.d	$a2, $fp, $a3
	add.d	$s1, $a2, $a1
	stx.b	$zero, $a2, $a1
	add.d	$a0, $a0, $a3
	add.d	$s7, $a0, $a1
	stx.b	$zero, $a0, $a1
	bltz	$s5, .LBB2_262
# %bb.231:                              # %.lr.ph200.i.preheader
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
.LBB2_232:                              # %.lr.ph200.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_242 Depth 2
                                        #     Child Loop BB2_246 Depth 2
                                        #     Child Loop BB2_252 Depth 2
                                        #     Child Loop BB2_257 Depth 2
	addi.w	$a7, $s8, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $s3, $a6
	addi.w	$t0, $s4, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB2_235
# %bb.233:                              #   in Loop: Header=BB2_232 Depth=1
	beqz	$t1, .LBB2_236
# %bb.234:                              #   in Loop: Header=BB2_232 Depth=1
	sub.d	$a6, $s8, $t1
	b	.LBB2_237
	.p2align	4, , 16
.LBB2_235:                              #   in Loop: Header=BB2_232 Depth=1
	addi.d	$a6, $s8, -1
	b	.LBB2_238
	.p2align	4, , 16
.LBB2_236:                              #   in Loop: Header=BB2_232 Depth=1
	addi.d	$a6, $s8, -1
.LBB2_237:                              #   in Loop: Header=BB2_232 Depth=1
	move	$t1, $a0
.LBB2_238:                              #   in Loop: Header=BB2_232 Depth=1
	nor	$t2, $a6, $zero
	add.w	$t3, $s8, $t2
	beqz	$t3, .LBB2_248
# %bb.239:                              # %.lr.ph178.i618.preheader
                                        #   in Loop: Header=BB2_232 Depth=1
	bltu	$t3, $a4, .LBB2_244
# %bb.240:                              # %.lr.ph178.i618.preheader
                                        #   in Loop: Header=BB2_232 Depth=1
	sub.d	$t4, $s1, $s7
	bltu	$t4, $a4, .LBB2_244
# %bb.241:                              # %vector.ph1165
                                        #   in Loop: Header=BB2_232 Depth=1
	bstrpick.d	$t6, $t3, 31, 0
	bstrpick.d	$t4, $t6, 31, 4
	slli.d	$t7, $t4, 4
	sub.d	$t3, $t3, $t7
	sub.d	$t4, $s7, $t7
	sub.d	$t5, $s1, $t7
	addi.d	$t8, $s1, -16
	addi.d	$fp, $s7, -16
	move	$s0, $t7
	.p2align	4, , 16
.LBB2_242:                              # %vector.body1169
                                        #   Parent Loop BB2_232 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $t8, 0
	vst	$vr1, $fp, 0
	addi.d	$s0, $s0, -16
	addi.d	$t8, $t8, -16
	addi.d	$fp, $fp, -16
	bnez	$s0, .LBB2_242
# %bb.243:                              # %middle.block1176
                                        #   in Loop: Header=BB2_232 Depth=1
	bne	$t7, $t6, .LBB2_245
	b	.LBB2_247
	.p2align	4, , 16
.LBB2_244:                              #   in Loop: Header=BB2_232 Depth=1
	move	$t4, $s7
	move	$t5, $s1
.LBB2_245:                              # %.lr.ph178.i618.preheader1186
                                        #   in Loop: Header=BB2_232 Depth=1
	move	$t6, $t4
	move	$t7, $t5
	.p2align	4, , 16
.LBB2_246:                              # %.lr.ph178.i618
                                        #   Parent Loop BB2_232 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t5, $t7, -1
	st.b	$a1, $t7, -1
	addi.d	$t4, $t6, -1
	addi.w	$t3, $t3, -1
	st.b	$a2, $t6, -1
	move	$t6, $t4
	move	$t7, $t5
	bnez	$t3, .LBB2_246
.LBB2_247:                              # %._crit_edge179.loopexit.i
                                        #   in Loop: Header=BB2_232 Depth=1
	add.d	$a5, $s8, $a5
	add.d	$a5, $t2, $a5
	move	$s1, $t5
	move	$s7, $t4
.LBB2_248:                              # %._crit_edge179.i
                                        #   in Loop: Header=BB2_232 Depth=1
	beq	$t1, $a0, .LBB2_254
# %bb.249:                              # %.lr.ph188.preheader.i
                                        #   in Loop: Header=BB2_232 Depth=1
	addi.w	$t2, $zero, -9
	nor	$t5, $t1, $zero
	bltu	$t2, $t1, .LBB2_255
# %bb.250:                              # %.lr.ph188.preheader.i
                                        #   in Loop: Header=BB2_232 Depth=1
	sub.d	$t2, $s1, $s7
	bltu	$t2, $a3, .LBB2_255
# %bb.251:                              # %vector.ph1139
                                        #   in Loop: Header=BB2_232 Depth=1
	bstrpick.d	$t2, $t5, 30, 3
	slli.d	$t6, $t2, 3
	sub.d	$t4, $t5, $t6
	sub.d	$t2, $s7, $t6
	sub.d	$t3, $s1, $t6
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $a5, 0
	addi.d	$a5, $s1, -4
	addi.d	$t7, $s7, -4
	move	$t8, $t6
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB2_252:                              # %vector.body1143
                                        #   Parent Loop BB2_232 Depth=1
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
	bnez	$t8, .LBB2_252
# %bb.253:                              # %middle.block1152
                                        #   in Loop: Header=BB2_232 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$a5, $vr3, 0
	bne	$t6, $t5, .LBB2_256
	b	.LBB2_258
	.p2align	4, , 16
.LBB2_254:                              #   in Loop: Header=BB2_232 Depth=1
	move	$t3, $s1
	move	$t2, $s7
	b	.LBB2_258
	.p2align	4, , 16
.LBB2_255:                              #   in Loop: Header=BB2_232 Depth=1
	move	$t4, $t5
	move	$t2, $s7
	move	$t3, $s1
.LBB2_256:                              # %.lr.ph188.i.preheader
                                        #   in Loop: Header=BB2_232 Depth=1
	add.d	$a5, $a5, $t4
	.p2align	4, , 16
.LBB2_257:                              # %.lr.ph188.i
                                        #   Parent Loop BB2_232 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t3, -1
	addi.d	$t3, $t3, -1
	st.b	$a1, $t2, -1
	addi.w	$t4, $t4, -1
	addi.d	$t2, $t2, -1
	bnez	$t4, .LBB2_257
.LBB2_258:                              # %._crit_edge189.i
                                        #   in Loop: Header=BB2_232 Depth=1
	blez	$a7, .LBB2_261
# %bb.259:                              # %._crit_edge189.i
                                        #   in Loop: Header=BB2_232 Depth=1
	blez	$t0, .LBB2_261
# %bb.260:                              #   in Loop: Header=BB2_232 Depth=1
	add.d	$s4, $t1, $s4
	addi.d	$s1, $t3, -1
	st.b	$a1, $t3, -1
	addi.d	$s7, $t2, -1
	addi.w	$a5, $a5, 2
	st.b	$a1, $t2, -1
	move	$s8, $a6
	bge	$s5, $a5, .LBB2_232
	b	.LBB2_262
.LBB2_261:
	move	$s1, $t3
	move	$s7, $t2
.LBB2_262:                              # %._crit_edge201.i
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	blez	$s3, .LBB2_265
# %bb.263:                              # %.lr.ph209.preheader.i
	move	$fp, $s4
	move	$s0, $s3
	.p2align	4, , 16
.LBB2_264:                              # %.lr.ph209.i624
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB2_264
.LBB2_265:                              # %.preheader.i623
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	blez	$s1, .LBB2_314
# %bb.266:                              # %.lr.ph211.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_267:                              # %.lr.ph211.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB2_267
	b	.LBB2_314
.LBB2_268:                              # %vector.ph1046
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a6, %pc_lo12(.LCPI2_6)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_269:                              # %vector.body1049
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB2_269
# %bb.270:                              # %middle.block1055
	beq	$a4, $a5, .LBB2_273
.LBB2_271:                              # %scalar.ph1044.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB2_272:                              # %scalar.ph1044
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB2_272
.LBB2_273:                              # %._crit_edge.i605
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	add.d	$a3, $fp, $a4
	add.d	$s1, $a3, $a1
	stx.b	$zero, $a3, $a1
	add.d	$a3, $a0, $a4
	add.d	$s7, $a3, $a1
	stx.b	$zero, $a3, $a1
	st.w	$zero, $a2, 0
	bltz	$s5, .LBB2_308
# %bb.274:                              # %.lr.ph209.i.preheader
	move	$t0, $zero
	addi.w	$a1, $zero, -1
	ori	$a3, $zero, 111
	ori	$a4, $zero, 45
	ori	$a5, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 16
	move	$a7, $s4
	move	$a0, $s5
	.p2align	4, , 16
.LBB2_275:                              # %.lr.ph209.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_285 Depth 2
                                        #     Child Loop BB2_289 Depth 2
                                        #     Child Loop BB2_295 Depth 2
                                        #     Child Loop BB2_300 Depth 2
	addi.w	$t2, $s8, 0
	slli.d	$t5, $t2, 3
	ldx.d	$t1, $ra, $t5
	addi.w	$t3, $a7, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t4, $t1, $t6
	bltz	$t4, .LBB2_278
# %bb.276:                              #   in Loop: Header=BB2_275 Depth=1
	beqz	$t4, .LBB2_279
# %bb.277:                              #   in Loop: Header=BB2_275 Depth=1
	sub.d	$t1, $s8, $t4
	b	.LBB2_280
	.p2align	4, , 16
.LBB2_278:                              #   in Loop: Header=BB2_275 Depth=1
	addi.d	$t1, $s8, -1
	b	.LBB2_281
	.p2align	4, , 16
.LBB2_279:                              #   in Loop: Header=BB2_275 Depth=1
	addi.d	$t1, $s8, -1
.LBB2_280:                              #   in Loop: Header=BB2_275 Depth=1
	move	$t4, $a1
.LBB2_281:                              #   in Loop: Header=BB2_275 Depth=1
	nor	$t7, $t1, $zero
	add.w	$t8, $s8, $t7
	beqz	$t8, .LBB2_291
# %bb.282:                              # %.lr.ph187.i.preheader
                                        #   in Loop: Header=BB2_275 Depth=1
	bltu	$t8, $a6, .LBB2_287
# %bb.283:                              # %.lr.ph187.i.preheader
                                        #   in Loop: Header=BB2_275 Depth=1
	sub.d	$fp, $s1, $s7
	bltu	$fp, $a6, .LBB2_287
# %bb.284:                              # %vector.ph1087
                                        #   in Loop: Header=BB2_275 Depth=1
	bstrpick.d	$s3, $t8, 31, 0
	bstrpick.d	$fp, $s3, 31, 4
	slli.d	$s5, $fp, 4
	sub.d	$t8, $t8, $s5
	sub.d	$fp, $s7, $s5
	sub.d	$s0, $s1, $s5
	addi.d	$s1, $s1, -16
	addi.d	$s7, $s7, -16
	move	$ra, $s5
	.p2align	4, , 16
.LBB2_285:                              # %vector.body1091
                                        #   Parent Loop BB2_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s1, 0
	vst	$vr1, $s7, 0
	addi.d	$ra, $ra, -16
	addi.d	$s1, $s1, -16
	addi.d	$s7, $s7, -16
	bnez	$ra, .LBB2_285
# %bb.286:                              # %middle.block1098
                                        #   in Loop: Header=BB2_275 Depth=1
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	bne	$s5, $s3, .LBB2_288
	b	.LBB2_290
	.p2align	4, , 16
.LBB2_287:                              #   in Loop: Header=BB2_275 Depth=1
	move	$fp, $s7
	move	$s0, $s1
.LBB2_288:                              # %.lr.ph187.i.preheader1197
                                        #   in Loop: Header=BB2_275 Depth=1
	move	$s1, $fp
	move	$s3, $s0
	.p2align	4, , 16
.LBB2_289:                              # %.lr.ph187.i
                                        #   Parent Loop BB2_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s3, -1
	st.b	$a3, $s3, -1
	addi.d	$fp, $s1, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $s1, -1
	move	$s1, $fp
	move	$s3, $s0
	bnez	$t8, .LBB2_289
.LBB2_290:                              # %._crit_edge188.loopexit.i
                                        #   in Loop: Header=BB2_275 Depth=1
	add.d	$t0, $s8, $t0
	add.d	$t0, $t7, $t0
	move	$s1, $s0
	move	$s7, $fp
	move	$s5, $a0
.LBB2_291:                              # %._crit_edge188.i
                                        #   in Loop: Header=BB2_275 Depth=1
	beq	$t4, $a1, .LBB2_297
# %bb.292:                              # %.lr.ph197.preheader.i
                                        #   in Loop: Header=BB2_275 Depth=1
	addi.w	$t7, $zero, -9
	nor	$s0, $t4, $zero
	bltu	$t7, $t4, .LBB2_298
# %bb.293:                              # %.lr.ph197.preheader.i
                                        #   in Loop: Header=BB2_275 Depth=1
	sub.d	$t7, $s1, $s7
	bltu	$t7, $a5, .LBB2_298
# %bb.294:                              # %vector.ph1064
                                        #   in Loop: Header=BB2_275 Depth=1
	bstrpick.d	$t7, $s0, 30, 3
	slli.d	$s3, $t7, 3
	sub.d	$fp, $s0, $s3
	sub.d	$t7, $s7, $s3
	sub.d	$t8, $s1, $s3
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $t0, 0
	addi.d	$t0, $s1, -4
	addi.d	$s1, $s7, -4
	move	$s5, $s3
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB2_295:                              # %vector.body1068
                                        #   Parent Loop BB2_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $t0, 0, 0
	vstelm.w	$vr1, $t0, -4, 0
	vstelm.w	$vr2, $s1, 0, 0
	vstelm.w	$vr2, $s1, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$s5, $s5, -8
	addi.d	$t0, $t0, -8
	addi.d	$s1, $s1, -8
	bnez	$s5, .LBB2_295
# %bb.296:                              # %middle.block1076
                                        #   in Loop: Header=BB2_275 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$t0, $vr3, 0
	move	$s5, $a0
	bne	$s3, $s0, .LBB2_299
	b	.LBB2_301
	.p2align	4, , 16
.LBB2_297:                              #   in Loop: Header=BB2_275 Depth=1
	move	$t8, $s1
	move	$t7, $s7
	b	.LBB2_301
	.p2align	4, , 16
.LBB2_298:                              #   in Loop: Header=BB2_275 Depth=1
	move	$fp, $s0
	move	$t7, $s7
	move	$t8, $s1
.LBB2_299:                              # %.lr.ph197.i.preheader
                                        #   in Loop: Header=BB2_275 Depth=1
	add.d	$t0, $t0, $fp
	.p2align	4, , 16
.LBB2_300:                              # %.lr.ph197.i
                                        #   Parent Loop BB2_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB2_300
.LBB2_301:                              # %._crit_edge198.i
                                        #   in Loop: Header=BB2_275 Depth=1
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	beq	$t2, $fp, .LBB2_304
# %bb.302:                              # %._crit_edge198.i
                                        #   in Loop: Header=BB2_275 Depth=1
	addi.w	$fp, $s4, 0
	beq	$t3, $fp, .LBB2_304
# %bb.303:                              #   in Loop: Header=BB2_275 Depth=1
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $fp, %pc_lo12(impmtx)
	ldx.d	$t5, $fp, $t5
	fldx.s	$fa3, $t5, $t6
	fld.s	$fa4, $a2, 0
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a2, 0
.LBB2_304:                              #   in Loop: Header=BB2_275 Depth=1
	blez	$t2, .LBB2_307
# %bb.305:                              #   in Loop: Header=BB2_275 Depth=1
	blez	$t3, .LBB2_307
# %bb.306:                              #   in Loop: Header=BB2_275 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s1, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s7, $t7, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t7, -1
	move	$s8, $t1
	bge	$s5, $t0, .LBB2_275
	b	.LBB2_308
.LBB2_307:
	move	$s1, $t8
	move	$s7, $t7
.LBB2_308:                              # %._crit_edge210.i
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	blez	$s3, .LBB2_311
# %bb.309:                              # %.lr.ph218.preheader.i
	move	$fp, $s4
	move	$s0, $s3
	.p2align	4, , 16
.LBB2_310:                              # %.lr.ph218.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB2_310
.LBB2_311:                              # %.preheader.i606
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	blez	$s1, .LBB2_314
# %bb.312:                              # %.lr.ph220.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_313:                              # %.lr.ph220.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB2_313
.LBB2_314:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_316
# %bb.315:                              # %Atracking_localhom.exit
	ori	$a0, $a4, 2881
	blt	$a3, $a0, .LBB2_317
.LBB2_316:
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
.LBB2_317:
	blez	$s3, .LBB2_320
# %bb.318:                              # %.lr.ph709
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.mseq1)
	.p2align	4, , 16
.LBB2_319:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 8
	bnez	$s3, .LBB2_319
.LBB2_320:                              # %.preheader631
	blez	$s1, .LBB2_323
# %bb.321:                              # %.lr.ph711
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.mseq2)
	.p2align	4, , 16
.LBB2_322:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB2_322
.LBB2_323:                              # %._crit_edge712
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bltz	$a0, .LBB2_326
# %bb.324:                              # %.lr.ph716
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat1)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$s0, $a0, 31, 0
	.p2align	4, , 16
.LBB2_325:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB2_325
.LBB2_326:                              # %.preheader
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bltz	$a0, .LBB2_329
# %bb.327:                              # %.lr.ph719
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat2)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$s0, $a0, 31, 0
	.p2align	4, , 16
.LBB2_328:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB2_328
.LBB2_329:                              # %._crit_edge720
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 512                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.LBB2_330:                              # %vector.ph
	bstrpick.d	$a0, $t7, 31, 3
	slli.d	$a4, $a0, 3
	slli.d	$a2, $a0, 5
	add.d	$a1, $a5, $a2
	andi	$a0, $t7, 7
	add.d	$a2, $s1, $a2
	addi.d	$a6, $s1, 16
	addi.d	$a5, $a5, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_331:                              # %vector.body
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
	bnez	$a7, .LBB2_331
# %bb.332:                              # %middle.block
	bne	$a3, $a4, .LBB2_35
	b	.LBB2_36
.Lfunc_end2:
	.size	H__align, .Lfunc_end2-H__align
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
	.type	imp_match_init_strictH.impalloclen,@object # @imp_match_init_strictH.impalloclen
	.local	imp_match_init_strictH.impalloclen
	.comm	imp_match_init_strictH.impalloclen,4,4
	.type	imp_match_init_strictH.nocount1,@object # @imp_match_init_strictH.nocount1
	.local	imp_match_init_strictH.nocount1
	.comm	imp_match_init_strictH.nocount1,8,8
	.type	imp_match_init_strictH.nocount2,@object # @imp_match_init_strictH.nocount2
	.local	imp_match_init_strictH.nocount2
	.comm	imp_match_init_strictH.nocount2,8,8
	.type	H__align.m,@object              # @H__align.m
	.local	H__align.m
	.comm	H__align.m,8,8
	.type	H__align.ijp,@object            # @H__align.ijp
	.local	H__align.ijp
	.comm	H__align.ijp,8,8
	.type	H__align.mp,@object             # @H__align.mp
	.local	H__align.mp
	.comm	H__align.mp,8,8
	.type	H__align.w1,@object             # @H__align.w1
	.local	H__align.w1
	.comm	H__align.w1,8,8
	.type	H__align.w2,@object             # @H__align.w2
	.local	H__align.w2
	.comm	H__align.w2,8,8
	.type	H__align.match,@object          # @H__align.match
	.local	H__align.match
	.comm	H__align.match,8,8
	.type	H__align.initverticalw,@object  # @H__align.initverticalw
	.local	H__align.initverticalw
	.comm	H__align.initverticalw,8,8
	.type	H__align.lastverticalw,@object  # @H__align.lastverticalw
	.local	H__align.lastverticalw
	.comm	H__align.lastverticalw,8,8
	.type	H__align.mseq1,@object          # @H__align.mseq1
	.local	H__align.mseq1
	.comm	H__align.mseq1,8,8
	.type	H__align.mseq2,@object          # @H__align.mseq2
	.local	H__align.mseq2
	.comm	H__align.mseq2,8,8
	.type	H__align.mseq,@object           # @H__align.mseq
	.local	H__align.mseq
	.comm	H__align.mseq,8,8
	.type	H__align.gappat1,@object        # @H__align.gappat1
	.local	H__align.gappat1
	.comm	H__align.gappat1,8,8
	.type	H__align.gappat2,@object        # @H__align.gappat2
	.local	H__align.gappat2
	.comm	H__align.gappat2,8,8
	.type	H__align.digf1,@object          # @H__align.digf1
	.local	H__align.digf1
	.comm	H__align.digf1,8,8
	.type	H__align.digf2,@object          # @H__align.digf2
	.local	H__align.digf2
	.comm	H__align.digf2,8,8
	.type	H__align.diaf1,@object          # @H__align.diaf1
	.local	H__align.diaf1
	.comm	H__align.diaf1,8,8
	.type	H__align.diaf2,@object          # @H__align.diaf2
	.local	H__align.diaf2
	.comm	H__align.diaf2,8,8
	.type	H__align.gapz1,@object          # @H__align.gapz1
	.local	H__align.gapz1
	.comm	H__align.gapz1,8,8
	.type	H__align.gapz2,@object          # @H__align.gapz2
	.local	H__align.gapz2
	.comm	H__align.gapz2,8,8
	.type	H__align.gapf1,@object          # @H__align.gapf1
	.local	H__align.gapf1
	.comm	H__align.gapf1,8,8
	.type	H__align.gapf2,@object          # @H__align.gapf2
	.local	H__align.gapf2
	.comm	H__align.gapf2,8,8
	.type	H__align.ogcp1g,@object         # @H__align.ogcp1g
	.local	H__align.ogcp1g
	.comm	H__align.ogcp1g,8,8
	.type	H__align.ogcp2g,@object         # @H__align.ogcp2g
	.local	H__align.ogcp2g
	.comm	H__align.ogcp2g,8,8
	.type	H__align.fgcp1g,@object         # @H__align.fgcp1g
	.local	H__align.fgcp1g
	.comm	H__align.fgcp1g,8,8
	.type	H__align.fgcp2g,@object         # @H__align.fgcp2g
	.local	H__align.fgcp2g
	.comm	H__align.fgcp2g,8,8
	.type	H__align.ogcp1,@object          # @H__align.ogcp1
	.local	H__align.ogcp1
	.comm	H__align.ogcp1,8,8
	.type	H__align.ogcp2,@object          # @H__align.ogcp2
	.local	H__align.ogcp2
	.comm	H__align.ogcp2,8,8
	.type	H__align.fgcp1,@object          # @H__align.fgcp1
	.local	H__align.fgcp1
	.comm	H__align.fgcp1,8,8
	.type	H__align.fgcp2,@object          # @H__align.fgcp2
	.local	H__align.fgcp2
	.comm	H__align.fgcp2,8,8
	.type	H__align.cpmx1,@object          # @H__align.cpmx1
	.local	H__align.cpmx1
	.comm	H__align.cpmx1,8,8
	.type	H__align.cpmx2,@object          # @H__align.cpmx2
	.local	H__align.cpmx2
	.comm	H__align.cpmx2,8,8
	.type	H__align.intwork,@object        # @H__align.intwork
	.local	H__align.intwork
	.comm	H__align.intwork,8,8
	.type	H__align.floatwork,@object      # @H__align.floatwork
	.local	H__align.floatwork
	.comm	H__align.floatwork,8,8
	.type	H__align.orlgth1,@object        # @H__align.orlgth1
	.local	H__align.orlgth1
	.comm	H__align.orlgth1,4,4
	.type	H__align.orlgth2,@object        # @H__align.orlgth2
	.local	H__align.orlgth2
	.comm	H__align.orlgth2,4,4
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
