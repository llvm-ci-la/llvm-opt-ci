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
	move	$s5, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$s6, %pc_hi20(imp_match_init_strictH.impalloclen)
	ld.w	$a0, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictH.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictH.nocount2)
	blt	$a0, $a1, .LBB1_2
# %bb.1:
	addi.w	$a1, $s5, 2
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
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
	beqz	$a0, .LBB1_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_8:
	slt	$a0, $s5, $s4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
.LBB1_9:
	blez	$s4, .LBB1_22
# %bb.10:                               # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	blez	$s3, .LBB1_18
# %bb.11:                               # %.preheader211.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_12:                               # %._crit_edge.us.thread
                                        #   in Loop: Header=BB1_14 Depth=1
	move	$a4, $zero
.LBB1_13:                               #   in Loop: Header=BB1_14 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB1_22
.LBB1_14:                               # %.preheader211.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	move	$a4, $s3
	move	$a5, $s1
	move	$a3, $s3
	.p2align	4, , 16
.LBB1_15:                               #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB1_15
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_17:                               # %._crit_edge.us
                                        #   in Loop: Header=BB1_14 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB1_13
	b	.LBB1_12
.LBB1_18:                               # %.preheader211.lr.ph.split
	beqz	$s3, .LBB1_20
# %bb.19:                               # %.preheader211.preheader
	ori	$a1, $zero, 1
	b	.LBB1_21
.LBB1_20:                               # %.preheader211.us216.preheader
	move	$a1, $zero
.LBB1_21:                               # %.preheader210
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %.preheader210.thread
	blez	$s5, .LBB1_38
# %bb.23:                               # %.preheader209.lr.ph
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
	blez	$s2, .LBB1_31
# %bb.24:                               # %.preheader209.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_25:                               # %._crit_edge.us222.thread
                                        #   in Loop: Header=BB1_27 Depth=1
	move	$a4, $zero
.LBB1_26:                               #   in Loop: Header=BB1_27 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB1_35
.LBB1_27:                               # %.preheader209.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
	move	$a4, $s2
	move	$a5, $s0
	move	$a3, $s2
	.p2align	4, , 16
.LBB1_28:                               #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB1_30
# %bb.29:                               #   in Loop: Header=BB1_28 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB1_28
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_30:                               # %._crit_edge.us222
                                        #   in Loop: Header=BB1_27 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB1_26
	b	.LBB1_25
.LBB1_31:                               # %.preheader209.lr.ph.split
	beqz	$s2, .LBB1_33
# %bb.32:                               # %.preheader209.preheader
	ori	$a1, $zero, 1
	b	.LBB1_34
.LBB1_33:                               # %.preheader209.us224.preheader
	move	$a1, $zero
.LBB1_34:                               # %.preheader208
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_35:                               # %.preheader208
	blez	$s4, .LBB1_38
# %bb.36:                               # %.preheader207.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB1_37:                               # %.preheader207.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB1_37
.LBB1_38:                               # %._crit_edge228
	blez	$s3, .LBB1_76
# %bb.39:                               # %.preheader206.lr.ph
	blez	$s2, .LBB1_76
# %bb.40:                               # %.preheader206.us.preheader
	ld.d	$a0, $sp, 120
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %got_pc_hi20(fastathreshold)
	ld.d	$a2, $a2, %got_pc_lo12(fastathreshold)
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	move	$a3, $zero
	ori	$a4, $zero, 45
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_41:                               # %._crit_edge235.us
                                        #   in Loop: Header=BB1_42 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB1_76
.LBB1_42:                               # %.preheader206.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_44 Depth 2
                                        #       Child Loop BB1_47 Depth 3
                                        #         Child Loop BB1_48 Depth 4
                                        #         Child Loop BB1_52 Depth 4
                                        #         Child Loop BB1_56 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_64 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_43:                               # %._crit_edge.us238
                                        #   in Loop: Header=BB1_44 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB1_41
.LBB1_44:                               #   Parent Loop BB1_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_47 Depth 3
                                        #         Child Loop BB1_48 Depth 4
                                        #         Child Loop BB1_52 Depth 4
                                        #         Child Loop BB1_56 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_64 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB1_43
# %bb.45:                               # %.lr.ph.us
                                        #   in Loop: Header=BB1_44 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               # %.critedge.us
                                        #   in Loop: Header=BB1_47 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB1_43
.LBB1_47:                               #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_48 Depth 4
                                        #         Child Loop BB1_52 Depth 4
                                        #         Child Loop BB1_56 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_64 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB1_48:                               #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB1_51
# %bb.49:                               #   in Loop: Header=BB1_48 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB1_48
# %bb.50:                               #   in Loop: Header=BB1_47 Depth=3
	move	$t8, $s4
.LBB1_51:                               #   in Loop: Header=BB1_47 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB1_55
	.p2align	4, , 16
.LBB1_52:                               # %.preheader205.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB1_54
# %bb.53:                               #   in Loop: Header=BB1_52 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB1_52
.LBB1_54:                               #   in Loop: Header=BB1_47 Depth=3
	add.w	$t6, $t7, $t3
.LBB1_55:                               #   in Loop: Header=BB1_47 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB1_56:                               #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB1_59
# %bb.57:                               #   in Loop: Header=BB1_56 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB1_56
# %bb.58:                               #   in Loop: Header=BB1_47 Depth=3
	move	$s5, $s6
.LBB1_59:                               #   in Loop: Header=BB1_47 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB1_63
	.p2align	4, , 16
.LBB1_60:                               # %.preheader.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB1_62
# %bb.61:                               #   in Loop: Header=BB1_60 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB1_60
.LBB1_62:                               #   in Loop: Header=BB1_47 Depth=3
	add.w	$t8, $s4, $t4
.LBB1_63:                               #   in Loop: Header=BB1_47 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB1_64:                               #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB1_46
# %bb.65:                               #   in Loop: Header=BB1_64 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB1_46
# %bb.66:                               #   in Loop: Header=BB1_64 Depth=4
	beq	$s7, $a4, .LBB1_69
# %bb.67:                               #   in Loop: Header=BB1_64 Depth=4
	beq	$s6, $a4, .LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_64 Depth=4
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
	b	.LBB1_73
	.p2align	4, , 16
.LBB1_69:                               #   in Loop: Header=BB1_64 Depth=4
	bne	$s7, $a4, .LBB1_71
# %bb.70:                               #   in Loop: Header=BB1_64 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB1_71:                               #   in Loop: Header=BB1_64 Depth=4
	bne	$s6, $a4, .LBB1_74
# %bb.72:                               #   in Loop: Header=BB1_64 Depth=4
	addi.w	$t7, $t7, 1
.LBB1_73:                               #   in Loop: Header=BB1_64 Depth=4
	addi.d	$s5, $s5, 1
.LBB1_74:                               #   in Loop: Header=BB1_64 Depth=4
	blt	$t6, $t5, .LBB1_46
# %bb.75:                               #   in Loop: Header=BB1_64 Depth=4
	bge	$t8, $t7, .LBB1_64
	b	.LBB1_46
.LBB1_76:                               # %._crit_edge237
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI2_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI2_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI2_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI2_7:
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
.LCPI2_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI2_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	H__align
	.p2align	5
	.type	H__align,@function
H__align:                               # @H__align
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 464                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 456                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 448                  # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a5
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	move	$s1, $a3
	move	$s2, $a2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$s0, %pc_hi20(H__align.orlgth1)
	ld.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq1)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq2)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bnez	$s8, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(H__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.mseq2)
.LBB2_2:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(H__align.orlgth2)
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.w	$s7, $a1, %pc_lo12(H__align.orlgth2)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$s6, $a0, 0
	pcalau12i	$a0, %pc_hi20(H__align.w1)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.w2)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.initverticalw)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.lastverticalw)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.m)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(H__align.mseq)
	pcalau12i	$a0, %pc_hi20(H__align.digf1)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.digf2)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.diaf1)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.diaf2)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gappat1)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gappat2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapz1)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapz2)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapf1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapf2)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.ogcp1g)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.ogcp2g)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.fgcp1g)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.fgcp2g)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.cpmx1)
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.cpmx2)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.floatwork)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.intwork)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 400                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	blt	$s8, $fp, .LBB2_4
# %bb.3:
	bge	$s7, $s6, .LBB2_8
.LBB2_4:
	pcalau12i	$s6, %pc_hi20(H__align.match)
	pcalau12i	$a0, %pc_hi20(H__align.ogcp1)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(H__align.ogcp2)
	pcalau12i	$s3, %pc_hi20(H__align.fgcp1)
	pcalau12i	$fp, %pc_hi20(H__align.fgcp2)
	blez	$s8, .LBB2_7
# %bb.5:
	blez	$s7, .LBB2_7
# %bb.6:
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(H__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(H__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(H__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(H__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(H__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(H__align.orlgth2)
.LBB2_7:
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a0
	st.d	$fp, $sp, 200                   # 8-byte Folded Spill
	addi.w	$fp, $s8, 100
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	addi.w	$s3, $s7, 100
	move	$s0, $s5
	move	$s5, $s4
	addi.w	$s4, $s7, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(H__align.match)
	addi.w	$s6, $s8, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(H__align.mp)
	st.d	$a0, $a1, %pc_lo12(H__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s3, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(H__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf2)
	ori	$a1, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat1)
	ori	$a1, $zero, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(H__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp1)
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp2g)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.cpmx2)
	slt	$a0, $s3, $fp
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	addi.w	$s4, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s4
	move	$s4, $s5
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.intwork)
	st.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(H__align.orlgth2)
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 400                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
.LBB2_8:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blez	$a0, .LBB2_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $s4, %pc_lo12(H__align.mseq)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.mseq1)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $fp
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_10
.LBB2_11:                               # %.preheader653
	blez	$s3, .LBB2_14
# %bb.12:                               # %.lr.ph665
	ld.d	$a1, $s4, %pc_lo12(H__align.mseq)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s6
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$s3, $s3, -1
	addi.d	$a0, $a0, 8
	bnez	$s3, .LBB2_13
.LBB2_14:                               # %._crit_edge
	ld.d	$s4, $sp, 568
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s3, 0
	blt	$a0, $s8, .LBB2_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s7, .LBB2_17
# %bb.16:                               # %._crit_edge812
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
	ld.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s7, $a1, %pc_lo12(H__align.orlgth2)
	ld.w	$a1, $s3, 0
.LBB2_20:
	slt	$a2, $a0, $s8
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s8, $a2
	or	$s0, $a2, $a0
	slt	$a0, $a1, $s7
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$s5, $a0, $a1
	addi.w	$a0, $s0, 10
	addi.w	$a1, $s5, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s0, $fp, 0
	st.w	$s5, $s3, 0
.LBB2_21:
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.cpmx1)
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	pcalau12i	$a2, %pc_hi20(H__align.ijp)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(H__align.ijp)
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s8
	move	$a2, $s2
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $s5
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $s1
	move	$a3, $s6
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	bnez	$s4, .LBB2_23
# %bb.22:
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	b	.LBB2_24
.LBB2_23:
	ld.d	$s6, $sp, 592
	ld.d	$s7, $sp, 584
	ld.d	$s8, $sp, 576
	move	$a1, $s3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	move	$a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	move	$a1, $s3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	move	$a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	move	$a1, $s3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	move	$a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s8
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a6, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s6
	ld.d	$s6, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
.LBB2_24:
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 352                  # 32-byte Folded Spill
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(H__align.w1)
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(H__align.initverticalw)
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(H__align.cpmx1)
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(H__align.floatwork)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(H__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s5
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$s0, $a0
	slli.d	$a1, $a0, 32
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	move	$s8, $a0
	st.d	$fp, $sp, 344                   # 8-byte Folded Spill
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_26
# %bb.25:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s6
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	xvld	$xr10, $sp, 352                 # 32-byte Folded Reload
	move	$s4, $s3
	move	$s3, $s8
	ld.d	$t8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	move	$s5, $s0
	b	.LBB2_46
.LBB2_26:
	blez	$s5, .LBB2_29
# %bb.27:                               # %.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s6
	move	$s4, $s3
	move	$a5, $s3
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB2_31
# %bb.30:                               # %imp_match_out_veadH.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	xvld	$xr10, $sp, 352                 # 32-byte Folded Reload
	move	$s3, $s8
	ld.d	$t8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	move	$s5, $s0
	beq	$a0, $fp, .LBB2_47
	b	.LBB2_57
.LBB2_31:                               # %iter.check
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	move	$s5, $s0
	bstrpick.d	$a0, $s0, 31, 0
	ori	$a2, $zero, 4
	xvld	$xr10, $sp, 352                 # 32-byte Folded Reload
	move	$s3, $s8
	bgeu	$a0, $a2, .LBB2_33
# %bb.32:
	move	$a2, $a1
	move	$a3, $s5
	move	$a4, $s1
	ld.d	$t8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_45
.LBB2_33:                               # %vector.memcheck
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $s5, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	ld.d	$t8, $sp, 144                   # 8-byte Folded Reload
	bgeu	$s1, $a3, .LBB2_36
# %bb.34:                               # %vector.memcheck
	add.d	$a2, $s1, $a2
	bgeu	$a1, $a2, .LBB2_36
# %bb.35:
	move	$a2, $a1
	move	$a3, $s5
	move	$a4, $s1
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_45
.LBB2_36:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB2_38
# %bb.37:
	move	$a5, $zero
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_42
.LBB2_38:                               # %vector.ph
	bstrpick.d	$a2, $s5, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $s1, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_39:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB2_39
# %bb.40:                               # %middle.block
	beq	$a0, $a5, .LBB2_46
# %bb.41:                               # %vec.epilog.iter.check
	andi	$a2, $s5, 12
	beqz	$a2, .LBB2_350
.LBB2_42:                               # %vec.epilog.ph
	bstrpick.d	$a4, $s5, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $s5, 3
	alsl.d	$a4, $a4, $s1, 4
	alsl.d	$a7, $a5, $s1, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB2_43:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB2_43
# %bb.44:                               # %vec.epilog.middle.block
	beq	$a0, $a6, .LBB2_46
	.p2align	4, , 16
.LBB2_45:                               # %.lr.ph.i507
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB2_45
.LBB2_46:                               # %imp_match_out_veadH.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_50
.LBB2_47:                               # %.preheader649
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	bgtz	$t7, .LBB2_71
.LBB2_48:                               # %.preheader647
	bgtz	$s6, .LBB2_87
# %bb.49:                               # %.loopexit648.thread
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(H__align.m)
	st.w	$zero, $t1, 0
	b	.LBB2_65
.LBB2_50:                               # %.preheader652
	blez	$s6, .LBB2_57
# %bb.51:                               # %.lr.ph668
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s5, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_55
# %bb.52:                               # %vector.ph930
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $s1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_53:                               # %vector.body933
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
	bnez	$a6, .LBB2_53
# %bb.54:                               # %middle.block938
	beq	$a2, $a4, .LBB2_57
.LBB2_55:                               # %scalar.ph.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s1, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_56:                               # %scalar.ph
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
	bnez	$a1, .LBB2_56
.LBB2_57:                               # %.preheader650
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	blez	$t7, .LBB2_64
# %bb.58:                               # %.lr.ph671
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_62
# %bb.59:                               # %vector.ph943
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $s2, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_60:                               # %vector.body948
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
	bnez	$a6, .LBB2_60
# %bb.61:                               # %middle.block955
	beq	$a2, $a4, .LBB2_64
.LBB2_62:                               # %scalar.ph941.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s2, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_63:                               # %scalar.ph941
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
	bnez	$a1, .LBB2_63
.LBB2_64:                               # %.loopexit648
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(H__align.m)
	st.w	$zero, $t1, 0
	bgtz	$s6, .LBB2_67
.LBB2_65:                               # %._crit_edge684
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	bnez	$s6, .LBB2_113
# %bb.66:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	b	.LBB2_114
.LBB2_67:                               # %iter.check962
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	addi.d	$a1, $s5, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 4
	ori	$a5, $zero, 1
	bltu	$a2, $a3, .LBB2_110
# %bb.68:                               # %vector.memcheck958
	sub.d	$a3, $t1, $s1
	addi.d	$a3, $a3, 4
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB2_110
# %bb.69:                               # %vector.main.loop.iter.check964
	ori	$a4, $zero, 16
	lu12i.w	$a3, 287172
	bgeu	$a2, $a4, .LBB2_103
# %bb.70:
	move	$a4, $zero
	b	.LBB2_107
.LBB2_71:                               # %.lr.ph675
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.gapf2)
	fcvt.d.s	$fa0, $ft2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gappat1)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat2)
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.diaf2)
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_74
	.p2align	4, , 16
.LBB2_72:                               # %countnocountx.exit
                                        #   in Loop: Header=BB2_74 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft2, $fa4
.LBB2_73:                               #   in Loop: Header=BB2_74 Depth=1
	alsl.d	$t0, $a6, $s2, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	beq	$a6, $a5, .LBB2_48
.LBB2_74:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_78 Depth 2
                                        #     Child Loop BB2_83 Depth 2
                                        #       Child Loop BB2_85 Depth 3
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
	bcnez	$fcc0, .LBB2_73
# %bb.75:                               #   in Loop: Header=BB2_74 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_72
# %bb.76:                               # %.lr.ph.i508.preheader
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$t1, $a3, 0
	fld.s	$ft0, $a4, 0
	addi.d	$t2, $t2, 16
	move	$t3, $t2
	move	$t4, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_78
	.p2align	4, , 16
.LBB2_77:                               #   in Loop: Header=BB2_78 Depth=2
	ld.w	$t4, $t3, 0
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB2_80
.LBB2_78:                               # %.lr.ph.i508
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t4, 31, 0
	bne	$a6, $t4, .LBB2_77
# %bb.79:                               #   in Loop: Header=BB2_78 Depth=2
	fld.s	$fa7, $t3, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_77
	.p2align	4, , 16
.LBB2_80:                               # %.preheader28.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_72
# %bb.81:                               #   in Loop: Header=BB2_74 Depth=1
	addi.d	$t5, $t1, 8
	b	.LBB2_83
	.p2align	4, , 16
.LBB2_82:                               # %..loopexit_crit_edge.i
                                        #   in Loop: Header=BB2_83 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_72
.LBB2_83:                               # %.preheader.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_85 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	add.w	$t4, $t4, $a7
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_85
	.p2align	4, , 16
.LBB2_84:                               #   in Loop: Header=BB2_85 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_82
.LBB2_85:                               #   Parent Loop BB2_74 Depth=1
                                        #     Parent Loop BB2_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_84
# %bb.86:                               #   in Loop: Header=BB2_85 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_84
.LBB2_87:                               # %.lr.ph679
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.gapf1)
	fcvt.d.s	$fa0, $ft2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gappat2)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat1)
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.diaf1)
	addi.d	$a5, $s5, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_90
	.p2align	4, , 16
.LBB2_88:                               # %countnocountx.exit532
                                        #   in Loop: Header=BB2_90 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft2, $fa4
.LBB2_89:                               #   in Loop: Header=BB2_90 Depth=1
	alsl.d	$t0, $a6, $s1, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	beq	$a6, $a5, .LBB2_64
.LBB2_90:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_94 Depth 2
                                        #     Child Loop BB2_99 Depth 2
                                        #       Child Loop BB2_101 Depth 3
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
	bcnez	$fcc0, .LBB2_89
# %bb.91:                               #   in Loop: Header=BB2_90 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_88
# %bb.92:                               # %.lr.ph.i512.preheader
                                        #   in Loop: Header=BB2_90 Depth=1
	ld.d	$t1, $a3, 0
	fld.s	$ft0, $a4, 0
	addi.d	$t2, $t2, 16
	move	$t3, $t2
	move	$t4, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_93:                               #   in Loop: Header=BB2_94 Depth=2
	ld.w	$t4, $t3, 0
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB2_96
.LBB2_94:                               # %.lr.ph.i512
                                        #   Parent Loop BB2_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t4, 31, 0
	bne	$a6, $t4, .LBB2_93
# %bb.95:                               #   in Loop: Header=BB2_94 Depth=2
	fld.s	$fa7, $t3, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_93
	.p2align	4, , 16
.LBB2_96:                               # %.preheader28.i517
                                        #   in Loop: Header=BB2_90 Depth=1
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_88
# %bb.97:                               #   in Loop: Header=BB2_90 Depth=1
	addi.d	$t5, $t1, 8
	b	.LBB2_99
	.p2align	4, , 16
.LBB2_98:                               # %..loopexit_crit_edge.i528
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_88
.LBB2_99:                               # %.preheader.i520
                                        #   Parent Loop BB2_90 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_101 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	add.w	$t4, $t4, $a7
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_101
	.p2align	4, , 16
.LBB2_100:                              #   in Loop: Header=BB2_101 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_98
.LBB2_101:                              #   Parent Loop BB2_90 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_100
# %bb.102:                              #   in Loop: Header=BB2_101 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_100
.LBB2_103:                              # %vector.ph965
	move	$a5, $zero
	move	$a4, $a2
	bstrins.d	$a4, $zero, 3, 0
	xvreplve0.w	$xr0, $xr10
	addi.d	$a6, $a0, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a3
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_104:                              # %vector.body970
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $s1, $a5
	xvldx	$xr3, $s1, $a5
	xvld	$xr4, $t0, 32
	add.d	$t0, $a6, $a5
	xvst	$xr1, $t0, -32
	xvstx	$xr1, $a6, $a5
	xvfadd.s	$xr3, $xr3, $xr1
	xvfadd.s	$xr4, $xr4, $xr1
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t0, $t1, $a5
	xvst	$xr3, $t0, 4
	xvst	$xr4, $t0, 36
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB2_104
# %bb.105:                              # %middle.block975
	beq	$a2, $a4, .LBB2_112
# %bb.106:                              # %vec.epilog.iter.check980
	andi	$a5, $a2, 12
	beqz	$a5, .LBB2_349
.LBB2_107:                              # %vec.epilog.ph979
	move	$a6, $a2
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a5, $a2
	bstrins.d	$a5, $a7, 1, 0
	vreplvei.w	$vr0, $vr10, 0
	addi.d	$a7, $a0, 4
	slli.d	$t0, $a4, 2
	sub.d	$a4, $a4, $a6
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a3
	.p2align	4, , 16
.LBB2_108:                              # %vec.epilog.vector.body987
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $s1, $t0
	vstx	$vr1, $a7, $t0
	vfadd.s	$vr3, $vr3, $vr1
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a3, $t1, $t0
	vst	$vr3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 16
	bnez	$a4, .LBB2_108
# %bb.109:                              # %vec.epilog.middle.block992
	beq	$a2, $a6, .LBB2_112
.LBB2_110:                              # %vec.epilog.scalar.ph978.preheader
	slli.d	$a2, $a5, 2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI2_2)
	addi.d	$a3, $s1, -4
	sub.d	$a1, $a1, $a5
	movgr2fr.w	$fa1, $zero
	.p2align	4, , 16
.LBB2_111:                              # %vec.epilog.scalar.ph978
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa2, $a3, $a2
	stx.w	$zero, $a0, $a2
	fadd.s	$fa2, $fa2, $fa1
	fmadd.s	$fa2, $ft2, $fa0, $fa2
	fstx.s	$fa2, $t1, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB2_111
.LBB2_112:
	move	$a0, $zero
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
.LBB2_113:                              # %._crit_edge684.thread
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $a5, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s1, $a1
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB2_114:
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.lastverticalw)
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	fst.s	$fa0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$s0, $a1, %got_pc_lo12(outgap)
	ld.w	$a1, $s0, 0
	sltu	$a2, $zero, $a1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $a2, $a3
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	blt	$a3, $a2, .LBB2_173
# %bb.115:                              # %.lr.ph705
	st.d	$t1, $sp, 264                   # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 416                   # 8-byte Folded Spill
	sltui	$a1, $s3, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ijp)
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat2)
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.diaf2)
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	fcvt.d.s	$fs1, $ft2
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(H__align.gapf2)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a5, $a0
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a0, $s5, 1
	bstrpick.d	$s2, $a0, 31, 0
	addi.w	$a0, $s5, -1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 4
	slli.d	$a2, $a0, 4
	slli.d	$a0, $a0, 6
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	sub.d	$a0, $s5, $a2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	andi	$a0, $a1, 12
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 32, 2
	slli.d	$a1, $a0, 2
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	sub.d	$a0, $s5, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	movgr2fr.w	$fs2, $zero
	ori	$s4, $zero, 1
	fmov.s	$fs0, $fs2
	b	.LBB2_117
	.p2align	4, , 16
.LBB2_116:                              # %._crit_edge697
                                        #   in Loop: Header=BB2_117 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a0
	addi.d	$s4, $s4, 1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fstx.s	$fa0, $a0, $a1
	move	$s1, $a2
	ld.d	$s6, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB2_174
.LBB2_117:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_166 Depth 2
                                        #     Child Loop BB2_170 Depth 2
                                        #     Child Loop BB2_122 Depth 2
                                        #     Child Loop BB2_126 Depth 2
                                        #       Child Loop BB2_132 Depth 3
                                        #       Child Loop BB2_143 Depth 3
                                        #         Child Loop BB2_145 Depth 4
                                        #       Child Loop BB2_148 Depth 3
                                        #       Child Loop BB2_153 Depth 3
                                        #         Child Loop BB2_155 Depth 4
	addi.d	$s8, $s4, -1
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	fst.s	$fa0, $s1, 0
	move	$a0, $s5
	move	$a1, $a4
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s6
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a3, $s4, 3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_123
# %bb.118:                              # %iter.check1005
                                        #   in Loop: Header=BB2_117 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a3
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB2_121
# %bb.119:                              # %vector.memcheck996
                                        #   in Loop: Header=BB2_117 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	bgeu	$s5, $a0, .LBB2_163
# %bb.120:                              # %vector.memcheck996
                                        #   in Loop: Header=BB2_117 Depth=1
	add.d	$a0, $s5, $a1
	bgeu	$a2, $a0, .LBB2_163
.LBB2_121:                              #   in Loop: Header=BB2_117 Depth=1
	move	$a0, $a2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s5
	.p2align	4, , 16
.LBB2_122:                              # %.lr.ph.i535
                                        #   Parent Loop BB2_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a4
	bnez	$a2, .LBB2_122
.LBB2_123:                              # %imp_match_out_veadH.exit540
                                        #   in Loop: Header=BB2_117 Depth=1
	slli.d	$a1, $s4, 2
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	fldx.s	$fa0, $a0, $a1
	st.d	$s5, $sp, 424                   # 8-byte Folded Spill
	fst.s	$fa0, $s5, 0
	xvld	$xr11, $sp, 352                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	vldi	$vr12, -912
	bnez	$a0, .LBB2_116
# %bb.124:                              # %.lr.ph696
                                        #   in Loop: Header=BB2_117 Depth=1
	ld.d	$t4, $sp, 432                   # 8-byte Folded Reload
	fld.s	$fa0, $t4, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	fld.s	$fa1, $a0, %pc_lo12(.LCPI2_2)
	move	$a1, $zero
	fadd.s	$fa0, $fa0, $fs2
	fmadd.s	$fa0, $ft3, $fa1, $fa0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$s6, $a0, $a3
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ldx.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a0, 2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a5, $s4, $a0, 2
	addi.d	$a6, $s6, 8
	addi.d	$a7, $s6, 16
	ori	$t0, $zero, 1
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
	b	.LBB2_126
	.p2align	4, , 16
.LBB2_125:                              #   in Loop: Header=BB2_126 Depth=2
	addi.d	$t1, $t1, 4
	fcmp.cult.s	$fcc0, $fa1, $fa0
	addi.d	$a0, $t0, -1
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$a2, $fcc0
	fld.s	$fa1, $t1, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a1, $a1, $a0
	fadd.s	$fa1, $fs0, $fa1
	fst.s	$fa1, $t1, 0
	addi.d	$t0, $t0, 1
	addi.d	$t4, $t4, 4
	beq	$t0, $s2, .LBB2_116
.LBB2_126:                              #   Parent Loop BB2_117 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_132 Depth 3
                                        #       Child Loop BB2_143 Depth 3
                                        #         Child Loop BB2_145 Depth 4
                                        #       Child Loop BB2_148 Depth 3
                                        #       Child Loop BB2_153 Depth 3
                                        #         Child Loop BB2_155 Depth 4
	slli.d	$a0, $t0, 3
	ldx.d	$t5, $fp, $a0
	fld.s	$fa4, $t5, 4
	fld.s	$fa1, $t4, 0
	fcmp.ceq.s	$fcc0, $fa4, $fs2
	fmov.s	$fa5, $fa1
	bcnez	$fcc0, .LBB2_128
# %bb.127:                              #   in Loop: Header=BB2_126 Depth=2
	fld.s	$fa2, $a4, 0
	fmul.s	$fa2, $fa4, $fa2
	fmul.s	$fa2, $fa2, $ft3
	fadd.s	$fa5, $fa1, $fa2
.LBB2_128:                              # %._crit_edge814
                                        #   in Loop: Header=BB2_126 Depth=2
	addi.d	$a3, $a3, 4
	slli.d	$t6, $t0, 2
	fldx.s	$fa2, $s0, $t6
	fld.s	$fa6, $a5, 0
	fld.s	$fa3, $s6, 4
	st.w	$zero, $a3, 0
	fcvt.d.s	$ft0, $fa2
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa7, $ft4, $fa6
	fmul.d	$fa6, $fa7, $ft0
	fmul.d	$fa6, $fa6, $fs1
	fcvt.s.d	$fa6, $fa6
	bcnez	$fcc0, .LBB2_136
# %bb.129:                              #   in Loop: Header=BB2_126 Depth=2
	ld.w	$s5, $t5, 8
	fmov.s	$ft0, $fs2
	beqz	$s5, .LBB2_135
# %bb.130:                              # %.lr.ph.i542.preheader
                                        #   in Loop: Header=BB2_126 Depth=2
	fld.s	$ft1, $a4, 0
	nor	$a0, $a1, $zero
	addi.d	$s7, $t5, 16
	add.w	$s1, $t0, $a0
	move	$a0, $s7
	move	$a2, $s5
	fmov.s	$ft0, $fs2
	b	.LBB2_132
	.p2align	4, , 16
.LBB2_131:                              #   in Loop: Header=BB2_132 Depth=3
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 8
	beqz	$a2, .LBB2_134
.LBB2_132:                              # %.lr.ph.i542
                                        #   Parent Loop BB2_117 Depth=1
                                        #     Parent Loop BB2_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$a2, $s1, .LBB2_131
# %bb.133:                              #   in Loop: Header=BB2_132 Depth=3
	fld.s	$ft0, $a0, -4
	fmul.s	$ft0, $ft1, $ft0
	b	.LBB2_131
	.p2align	4, , 16
.LBB2_134:                              # %.preheader28.i547
                                        #   in Loop: Header=BB2_126 Depth=2
	ld.w	$a0, $a6, 0
	move	$t8, $a6
	move	$a2, $s6
	bnez	$a0, .LBB2_143
.LBB2_135:                              # %countnocountx.exit562
                                        #   in Loop: Header=BB2_126 Depth=2
	fcvt.d.s	$ft1, $fa4
	fmul.d	$fa7, $fa7, $ft1
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa6, $fa7, $fs1, $fa6
	fcvt.s.d	$fa6, $fa6
	fneg.s	$fa7, $ft0
	fmadd.s	$fa6, $fa7, $ft3, $fa6
.LBB2_136:                              #   in Loop: Header=BB2_126 Depth=2
	fmul.s	$fa7, $fa3, $fa2
	fmul.s	$fa7, $fa7, $ft3
	fadd.s	$fa7, $fa5, $fa7
	fcmp.cune.s	$fcc0, $fa3, $fs2
	fsel	$fa5, $fa5, $fa7, $fcc0
	fmul.s	$fa4, $fa4, $fa3
	fmul.s	$fa4, $fa4, $ft3
	fadd.s	$fs0, $fa4, $fa5
	fadd.s	$fa4, $fa6, $fa0
	fcmp.cule.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB2_138
# %bb.137:                              #   in Loop: Header=BB2_126 Depth=2
	sub.d	$a0, $a1, $t0
	st.w	$a0, $a3, 0
	fmov.s	$fs0, $fa4
.LBB2_138:                              #   in Loop: Header=BB2_126 Depth=2
	fld.s	$fa4, $a4, 0
	fldx.s	$fa5, $s3, $t6
	addi.d	$t3, $t3, 4
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $ft4, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fs1
	fcmp.ceq.s	$fcc0, $fa3, $fs2
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_159
# %bb.139:                              #   in Loop: Header=BB2_126 Depth=2
	ld.w	$a0, $t3, 0
	slli.d	$a2, $a0, 3
	ld.d	$t6, $sp, 440                   # 8-byte Folded Reload
	ldx.d	$a2, $t6, $a2
	fcvt.d.s	$fa3, $fa3
	alsl.d	$a2, $t0, $a2, 2
	ld.w	$a2, $a2, -4
	fmul.d	$fa3, $fa5, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa3, $fs1, $fa4
	fcvt.s.d	$fa4, $fa3
	bnez	$a2, .LBB2_159
# %bb.140:                              #   in Loop: Header=BB2_126 Depth=2
	ld.w	$t6, $a6, 0
	beqz	$t6, .LBB2_157
# %bb.141:                              # %.lr.ph.i564.preheader
                                        #   in Loop: Header=BB2_126 Depth=2
	nor	$a0, $a0, $zero
	add.w	$t7, $s4, $a0
	movgr2fr.w	$fa3, $zero
	move	$a0, $a7
	move	$a2, $t6
	b	.LBB2_148
	.p2align	4, , 16
.LBB2_142:                              # %..loopexit_crit_edge.i558
                                        #   in Loop: Header=BB2_143 Depth=3
	ld.w	$a0, $a2, 8
	addi.d	$t8, $a2, 8
	beqz	$a0, .LBB2_135
.LBB2_143:                              # %.preheader.i550
                                        #   Parent Loop BB2_117 Depth=1
                                        #     Parent Loop BB2_126 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_145 Depth 4
	move	$ra, $a2
	move	$a2, $t8
	add.w	$a0, $a0, $s1
	move	$t8, $s7
	move	$t7, $s5
	b	.LBB2_145
	.p2align	4, , 16
.LBB2_144:                              #   in Loop: Header=BB2_145 Depth=4
	ld.w	$t7, $t8, 0
	addi.d	$t8, $t8, 8
	beqz	$t7, .LBB2_142
.LBB2_145:                              #   Parent Loop BB2_117 Depth=1
                                        #     Parent Loop BB2_126 Depth=2
                                        #       Parent Loop BB2_143 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$a0, $t7, .LBB2_144
# %bb.146:                              #   in Loop: Header=BB2_145 Depth=4
	fld.s	$ft1, $ra, 12
	fld.s	$ft2, $t8, -4
	fmadd.s	$ft0, $ft1, $ft2, $ft0
	b	.LBB2_144
	.p2align	4, , 16
.LBB2_147:                              #   in Loop: Header=BB2_148 Depth=3
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 8
	beqz	$a2, .LBB2_150
.LBB2_148:                              # %.lr.ph.i564
                                        #   Parent Loop BB2_117 Depth=1
                                        #     Parent Loop BB2_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$a2, $t7, .LBB2_147
# %bb.149:                              #   in Loop: Header=BB2_148 Depth=3
	fld.s	$fa3, $a0, -4
	fmul.s	$fa3, $fa2, $fa3
	b	.LBB2_147
.LBB2_150:                              # %.preheader28.i569
                                        #   in Loop: Header=BB2_126 Depth=2
	ld.w	$a0, $t5, 8
	beqz	$a0, .LBB2_158
# %bb.151:                              #   in Loop: Header=BB2_126 Depth=2
	addi.d	$t8, $t5, 8
	b	.LBB2_153
	.p2align	4, , 16
.LBB2_152:                              # %..loopexit_crit_edge.i580
                                        #   in Loop: Header=BB2_153 Depth=3
	ld.w	$a0, $t5, 8
	addi.d	$t8, $t5, 8
	beqz	$a0, .LBB2_158
.LBB2_153:                              # %.preheader.i572
                                        #   Parent Loop BB2_117 Depth=1
                                        #     Parent Loop BB2_126 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_155 Depth 4
	move	$a2, $t5
	move	$t5, $t8
	add.w	$a0, $a0, $t7
	move	$t8, $a7
	move	$s1, $t6
	b	.LBB2_155
	.p2align	4, , 16
.LBB2_154:                              #   in Loop: Header=BB2_155 Depth=4
	ld.w	$s1, $t8, 0
	addi.d	$t8, $t8, 8
	beqz	$s1, .LBB2_152
.LBB2_155:                              #   Parent Loop BB2_117 Depth=1
                                        #     Parent Loop BB2_126 Depth=2
                                        #       Parent Loop BB2_153 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$a0, $s1, .LBB2_154
# %bb.156:                              #   in Loop: Header=BB2_155 Depth=4
	fld.s	$fa2, $a2, 12
	fld.s	$fa5, $t8, -4
	fmadd.s	$fa3, $fa2, $fa5, $fa3
	b	.LBB2_154
.LBB2_157:                              #   in Loop: Header=BB2_126 Depth=2
	movgr2fr.w	$fa3, $zero
.LBB2_158:                              # %countnocountx.exit584
                                        #   in Loop: Header=BB2_126 Depth=2
	fneg.s	$fa2, $fa3
	fmadd.s	$fa4, $fa2, $ft3, $fa4
.LBB2_159:                              #   in Loop: Header=BB2_126 Depth=2
	addi.d	$t2, $t2, 4
	fld.s	$fa2, $t2, 0
	fadd.s	$fa3, $fa4, $fa2
	fcmp.cule.s	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB2_161
# %bb.160:                              #   in Loop: Header=BB2_126 Depth=2
	ld.w	$a0, $t3, 0
	sub.d	$a0, $s4, $a0
	st.w	$a0, $a3, 0
	fmov.s	$fs0, $fa3
.LBB2_161:                              #   in Loop: Header=BB2_126 Depth=2
	fcmp.cult.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB2_125
# %bb.162:                              #   in Loop: Header=BB2_126 Depth=2
	fst.s	$fa1, $t2, 0
	st.w	$s8, $t3, 0
	b	.LBB2_125
.LBB2_163:                              # %vector.main.loop.iter.check1007
                                        #   in Loop: Header=BB2_117 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB2_165
# %bb.164:                              #   in Loop: Header=BB2_117 Depth=1
	move	$a5, $zero
	b	.LBB2_169
.LBB2_165:                              # %vector.body1011.preheader
                                        #   in Loop: Header=BB2_117 Depth=1
	addi.d	$a0, $s5, 32
	addi.d	$a1, $a2, 32
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_166:                              # %vector.body1011
                                        #   Parent Loop BB2_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvld	$xr2, $a0, -32
	xvld	$xr3, $a0, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a0, -32
	xvst	$xr1, $a0, 0
	addi.d	$a0, $a0, 64
	addi.d	$a4, $a4, -16
	addi.d	$a1, $a1, 64
	bnez	$a4, .LBB2_166
# %bb.167:                              # %middle.block1020
                                        #   in Loop: Header=BB2_117 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_123
# %bb.168:                              # %vec.epilog.iter.check1025
                                        #   in Loop: Header=BB2_117 Depth=1
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_172
.LBB2_169:                              # %vec.epilog.ph1024
                                        #   in Loop: Header=BB2_117 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s5, $a1
	alsl.d	$a4, $a5, $s5, 2
	alsl.d	$a2, $a5, $a2, 2
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	.p2align	4, , 16
.LBB2_170:                              # %vec.epilog.vector.body1031
                                        #   Parent Loop BB2_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a4, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB2_170
# %bb.171:                              # %vec.epilog.middle.block1040
                                        #   in Loop: Header=BB2_117 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	bne	$a4, $a5, .LBB2_122
	b	.LBB2_123
.LBB2_172:                              #   in Loop: Header=BB2_117 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s5, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	b	.LBB2_122
.LBB2_173:
	movgr2fr.w	$fs0, $zero
	beqz	$a1, .LBB2_175
	b	.LBB2_189
.LBB2_174:                              # %._crit_edge706.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $s0, 0
	move	$s1, $a2
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	bnez	$a1, .LBB2_189
.LBB2_175:                              # %.preheader646
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_182
# %bb.176:                              # %.lr.ph711
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s5, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_180
# %bb.177:                              # %vector.ph1051
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $s5
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI2_3)
	pcalau12i	$a5, %pc_hi20(.LCPI2_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI2_4)
	addi.d	$a5, $s1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_178:                              # %vector.body1058
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
	bnez	$a6, .LBB2_178
# %bb.179:                              # %middle.block1065
	beq	$a2, $a4, .LBB2_182
.LBB2_180:                              # %scalar.ph1049.preheader
	sub.w	$a2, $s5, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s1, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_181:                              # %scalar.ph1049
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
	bnez	$a1, .LBB2_181
.LBB2_182:                              # %.preheader645
	blez	$t7, .LBB2_189
# %bb.183:                              # %.lr.ph714
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a2, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(H__align.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $a2, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB2_187
# %bb.184:                              # %vector.ph1070
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI2_5)
	vld	$vr4, $a5, %pc_lo12(.LCPI2_5)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_185:                              # %vector.body1077
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
	bnez	$a6, .LBB2_185
# %bb.186:                              # %middle.block1084
	beq	$a3, $a4, .LBB2_189
.LBB2_187:                              # %scalar.ph1068.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB2_188:                              # %scalar.ph1068
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
	bnez	$a2, .LBB2_188
.LBB2_189:                              # %.loopexit
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.lastverticalw)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ijp)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $t8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	add.w	$s5, $a0, $s6
	addi.w	$s8, $s5, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 0
	addi.w	$a1, $s6, 0
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	addi.w	$a1, $s4, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	bnez	$s3, .LBB2_196
# %bb.190:
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_207
# %bb.191:
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	blez	$a2, .LBB2_202
# %bb.192:                              # %.lr.ph.i639
	slli.d	$a2, $s6, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s4, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s6, 30, 0
	move	$a5, $s6
	b	.LBB2_194
	.p2align	4, , 16
.LBB2_193:                              #   in Loop: Header=BB2_194 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_202
.LBB2_194:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_193
# %bb.195:                              #   in Loop: Header=BB2_194 Depth=1
	ldx.d	$a6, $s3, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_193
.LBB2_196:
	ld.d	$ra, $sp, 432                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_215
# %bb.197:
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	blez	$a2, .LBB2_210
# %bb.198:                              # %.lr.ph.i586
	slli.d	$a2, $s6, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s4, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s6, 30, 0
	move	$a5, $s6
	b	.LBB2_200
	.p2align	4, , 16
.LBB2_199:                              #   in Loop: Header=BB2_200 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_210
.LBB2_200:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_199
# %bb.201:                              #   in Loop: Header=BB2_200 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_199
.LBB2_202:                              # %.preheader2.i591
	blez	$a1, .LBB2_207
# %bb.203:                              # %.lr.ph7.i633
	slli.d	$a2, $s6, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s4, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s4, 30, 0
	sub.d	$a5, $zero, $s4
	b	.LBB2_205
	.p2align	4, , 16
.LBB2_204:                              #   in Loop: Header=BB2_205 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s1, $s1, 4
	beqz	$a4, .LBB2_207
.LBB2_205:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_204
# %bb.206:                              #   in Loop: Header=BB2_205 Depth=1
	ldx.d	$a6, $s3, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_204
.LBB2_207:                              # %.loopexit.i592
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_223
# %bb.208:                              # %.lr.ph10.preheader.i594
	addi.d	$a3, $s6, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_218
# %bb.209:
	move	$a3, $zero
	b	.LBB2_221
.LBB2_210:                              # %.preheader2.i
	blez	$a1, .LBB2_215
# %bb.211:                              # %.lr.ph7.i
	slli.d	$a2, $s6, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s4, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s4, 30, 0
	sub.d	$a5, $zero, $s4
	b	.LBB2_213
	.p2align	4, , 16
.LBB2_212:                              #   in Loop: Header=BB2_213 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s1, $s1, 4
	beqz	$a4, .LBB2_215
.LBB2_213:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_212
# %bb.214:                              #   in Loop: Header=BB2_213 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_212
.LBB2_215:                              # %.loopexit.i
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_231
# %bb.216:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s6, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_226
# %bb.217:
	move	$a3, $zero
	b	.LBB2_229
.LBB2_218:                              # %vector.ph1184
	pcalau12i	$a4, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s3, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_219:                              # %vector.body1187
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
	bnez	$a5, .LBB2_219
# %bb.220:                              # %middle.block1195
	beq	$a2, $a3, .LBB2_223
.LBB2_221:                              # %.lr.ph10.i596.preheader
	alsl.d	$a4, $a3, $s3, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_222:                              # %.lr.ph10.i596
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_222
.LBB2_223:                              # %.preheader1.i600
	bltz	$a1, .LBB2_247
# %bb.224:                              # %iter.check1201
	ld.d	$a2, $s3, 0
	addi.d	$a5, $s4, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB2_234
# %bb.225:
	move	$a4, $zero
	b	.LBB2_245
.LBB2_226:                              # %vector.ph1089
	pcalau12i	$a4, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_227:                              # %vector.body1092
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
	bnez	$a5, .LBB2_227
# %bb.228:                              # %middle.block1099
	beq	$a2, $a3, .LBB2_231
.LBB2_229:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_230:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_230
.LBB2_231:                              # %.preheader1.i
	ld.d	$a2, $sp, 560
	bltz	$a1, .LBB2_293
# %bb.232:                              # %iter.check1105
	ld.d	$a3, $ra, 0
	addi.d	$a6, $s4, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB2_236
# %bb.233:
	move	$a5, $zero
	b	.LBB2_291
.LBB2_234:                              # %vector.main.loop.iter.check1203
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB2_238
# %bb.235:
	move	$a4, $zero
	b	.LBB2_242
.LBB2_236:                              # %vector.main.loop.iter.check1107
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB2_284
# %bb.237:
	move	$a5, $zero
	b	.LBB2_288
.LBB2_238:                              # %vector.ph1204
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a6, %pc_lo12(.LCPI2_7)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_239:                              # %vector.body1207
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB2_239
# %bb.240:                              # %middle.block1213
	beq	$a3, $a4, .LBB2_247
# %bb.241:                              # %vec.epilog.iter.check1218
	andi	$a6, $a5, 12
	beqz	$a6, .LBB2_245
.LBB2_242:                              # %vec.epilog.ph1217
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_8)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_243:                              # %vec.epilog.vector.body1226
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB2_243
# %bb.244:                              # %vec.epilog.middle.block1231
	beq	$a3, $a4, .LBB2_247
.LBB2_245:                              # %vec.epilog.scalar.ph1216.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB2_246:                              # %vec.epilog.scalar.ph1216
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB2_246
.LBB2_247:                              # %._crit_edge.i606
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	add.d	$s8, $a2, $a1
	stx.b	$zero, $a2, $a1
	add.d	$a0, $a0, $a3
	add.d	$s1, $a0, $a1
	stx.b	$zero, $a0, $a1
	bltz	$s5, .LBB2_277
# %bb.248:                              # %.lr.ph41.i607.preheader
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	ori	$a1, $zero, 111
	ori	$a2, $zero, 45
	ori	$a3, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a4, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	.p2align	4, , 16
.LBB2_249:                              # %.lr.ph41.i607
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_268 Depth 2
                                        #     Child Loop BB2_272 Depth 2
                                        #     Child Loop BB2_257 Depth 2
                                        #     Child Loop BB2_261 Depth 2
	addi.w	$a7, $s6, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $s3, $a6
	addi.w	$t0, $s4, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB2_252
# %bb.250:                              #   in Loop: Header=BB2_249 Depth=1
	beqz	$t1, .LBB2_263
# %bb.251:                              #   in Loop: Header=BB2_249 Depth=1
	sub.d	$a6, $s6, $t1
	b	.LBB2_264
	.p2align	4, , 16
.LBB2_252:                              #   in Loop: Header=BB2_249 Depth=1
	addi.d	$a6, $s6, -1
	nor	$t2, $a6, $zero
	add.w	$t3, $s6, $t2
	bnez	$t3, .LBB2_265
	.p2align	4, , 16
.LBB2_253:                              # %._crit_edge20.i611
                                        #   in Loop: Header=BB2_249 Depth=1
	beq	$t1, $a0, .LBB2_274
.LBB2_254:                              # %.lr.ph29.preheader.i613
                                        #   in Loop: Header=BB2_249 Depth=1
	addi.w	$t2, $zero, -17
	nor	$t5, $t1, $zero
	bltu	$t2, $t1, .LBB2_259
# %bb.255:                              # %.lr.ph29.preheader.i613
                                        #   in Loop: Header=BB2_249 Depth=1
	sub.d	$t2, $s8, $s1
	bltu	$t2, $a3, .LBB2_259
# %bb.256:                              # %vector.ph1240
                                        #   in Loop: Header=BB2_249 Depth=1
	bstrpick.d	$t2, $t5, 30, 4
	slli.d	$t6, $t2, 4
	sub.d	$t4, $t5, $t6
	sub.d	$t2, $s1, $t6
	sub.d	$t3, $s8, $t6
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a5, 0
	addi.d	$a5, $s8, -8
	addi.d	$t7, $s1, -8
	move	$t8, $t6
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_257:                              # %vector.body1244
                                        #   Parent Loop BB2_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a5, -8
	vst	$vr2, $t7, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$t8, $t8, -16
	addi.d	$a5, $a5, -16
	addi.d	$t7, $t7, -16
	bnez	$t8, .LBB2_257
# %bb.258:                              # %middle.block1253
                                        #   in Loop: Header=BB2_249 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$a5, $xr5, 0
	bne	$t6, $t5, .LBB2_260
	b	.LBB2_262
	.p2align	4, , 16
.LBB2_259:                              #   in Loop: Header=BB2_249 Depth=1
	move	$t4, $t5
	move	$t2, $s1
	move	$t3, $s8
.LBB2_260:                              # %.lr.ph29.i614.preheader
                                        #   in Loop: Header=BB2_249 Depth=1
	add.d	$a5, $a5, $t4
	.p2align	4, , 16
.LBB2_261:                              # %.lr.ph29.i614
                                        #   Parent Loop BB2_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t3, -1
	addi.d	$t3, $t3, -1
	st.b	$a1, $t2, -1
	addi.w	$t4, $t4, -1
	addi.d	$t2, $t2, -1
	bnez	$t4, .LBB2_261
.LBB2_262:                              # %._crit_edge30.i615
                                        #   in Loop: Header=BB2_249 Depth=1
	bgtz	$a7, .LBB2_275
	b	.LBB2_278
	.p2align	4, , 16
.LBB2_263:                              #   in Loop: Header=BB2_249 Depth=1
	addi.d	$a6, $s6, -1
.LBB2_264:                              #   in Loop: Header=BB2_249 Depth=1
	move	$t1, $a0
	nor	$t2, $a6, $zero
	add.w	$t3, $s6, $t2
	beqz	$t3, .LBB2_253
.LBB2_265:                              # %.lr.ph19.i609.preheader
                                        #   in Loop: Header=BB2_249 Depth=1
	bltu	$t3, $a4, .LBB2_270
# %bb.266:                              # %.lr.ph19.i609.preheader
                                        #   in Loop: Header=BB2_249 Depth=1
	sub.d	$t4, $s8, $s1
	bltu	$t4, $a4, .LBB2_270
# %bb.267:                              # %vector.ph1266
                                        #   in Loop: Header=BB2_249 Depth=1
	bstrpick.d	$t6, $t3, 31, 0
	bstrpick.d	$t4, $t6, 31, 5
	slli.d	$t7, $t4, 5
	sub.d	$t3, $t3, $t7
	sub.d	$t4, $s1, $t7
	sub.d	$t5, $s8, $t7
	addi.d	$t8, $s8, -32
	addi.d	$fp, $s1, -32
	move	$s0, $t7
	.p2align	4, , 16
.LBB2_268:                              # %vector.body1270
                                        #   Parent Loop BB2_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $t8, 0
	xvst	$xr4, $fp, 0
	addi.d	$s0, $s0, -32
	addi.d	$t8, $t8, -32
	addi.d	$fp, $fp, -32
	bnez	$s0, .LBB2_268
# %bb.269:                              # %middle.block1277
                                        #   in Loop: Header=BB2_249 Depth=1
	bne	$t7, $t6, .LBB2_271
	b	.LBB2_273
	.p2align	4, , 16
.LBB2_270:                              #   in Loop: Header=BB2_249 Depth=1
	move	$t4, $s1
	move	$t5, $s8
.LBB2_271:                              # %.lr.ph19.i609.preheader1287
                                        #   in Loop: Header=BB2_249 Depth=1
	move	$t6, $t4
	move	$t7, $t5
	.p2align	4, , 16
.LBB2_272:                              # %.lr.ph19.i609
                                        #   Parent Loop BB2_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t5, $t7, -1
	st.b	$a1, $t7, -1
	addi.d	$t4, $t6, -1
	addi.w	$t3, $t3, -1
	st.b	$a2, $t6, -1
	move	$t6, $t4
	move	$t7, $t5
	bnez	$t3, .LBB2_272
.LBB2_273:                              # %._crit_edge20.loopexit.i610
                                        #   in Loop: Header=BB2_249 Depth=1
	add.d	$a5, $s6, $a5
	add.d	$a5, $t2, $a5
	move	$s8, $t5
	move	$s1, $t4
	bne	$t1, $a0, .LBB2_254
.LBB2_274:                              #   in Loop: Header=BB2_249 Depth=1
	move	$t3, $s8
	move	$t2, $s1
	blez	$a7, .LBB2_278
.LBB2_275:                              # %._crit_edge30.i615
                                        #   in Loop: Header=BB2_249 Depth=1
	blez	$t0, .LBB2_278
# %bb.276:                              #   in Loop: Header=BB2_249 Depth=1
	add.d	$s4, $t1, $s4
	addi.d	$s8, $t3, -1
	st.b	$a1, $t3, -1
	addi.d	$s1, $t2, -1
	addi.w	$a5, $a5, 2
	st.b	$a1, $t2, -1
	move	$s6, $a6
	bge	$s5, $a5, .LBB2_249
.LBB2_277:                              # %._crit_edge42.i618
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	bgtz	$s5, .LBB2_279
	b	.LBB2_281
.LBB2_278:
	move	$s8, $t3
	move	$s1, $t2
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	blez	$s5, .LBB2_281
.LBB2_279:                              # %.lr.ph50.preheader.i627
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$s0, $s5
	.p2align	4, , 16
.LBB2_280:                              # %.lr.ph50.i629
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB2_280
.LBB2_281:                              # %.preheader.i620
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 400                   # 8-byte Folded Reload
	blez	$s2, .LBB2_333
# %bb.282:                              # %.lr.ph52.preheader.i621
	move	$fp, $s3
	move	$s0, $s2
	.p2align	4, , 16
.LBB2_283:                              # %.lr.ph52.i623
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB2_283
	b	.LBB2_333
.LBB2_284:                              # %vector.ph1108
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a7, %pc_lo12(.LCPI2_7)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB2_285:                              # %vector.body1111
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB2_285
# %bb.286:                              # %middle.block1117
	beq	$a4, $a5, .LBB2_293
# %bb.287:                              # %vec.epilog.iter.check1122
	andi	$a7, $a6, 12
	beqz	$a7, .LBB2_291
.LBB2_288:                              # %vec.epilog.ph1121
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_8)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_289:                              # %vec.epilog.vector.body1129
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB2_289
# %bb.290:                              # %vec.epilog.middle.block1134
	beq	$a4, $a5, .LBB2_293
.LBB2_291:                              # %vec.epilog.scalar.ph1120.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB2_292:                              # %vec.epilog.scalar.ph1120
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB2_292
.LBB2_293:                              # %._crit_edge.i
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	add.d	$s8, $a3, $a1
	stx.b	$zero, $a3, $a1
	add.d	$a3, $a0, $a4
	add.d	$s1, $a3, $a1
	stx.b	$zero, $a3, $a1
	st.w	$zero, $a2, 0
	bltz	$s5, .LBB2_326
# %bb.294:                              # %.lr.ph41.i.preheader
	move	$t0, $zero
	addi.w	$a1, $zero, -1
	ori	$a3, $zero, 111
	ori	$a4, $zero, 45
	ori	$a5, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	move	$a7, $s4
	move	$a0, $s5
	.p2align	4, , 16
.LBB2_295:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_314 Depth 2
                                        #     Child Loop BB2_318 Depth 2
                                        #     Child Loop BB2_303 Depth 2
                                        #     Child Loop BB2_307 Depth 2
	addi.w	$t2, $s6, 0
	slli.d	$t5, $t2, 3
	ldx.d	$t1, $ra, $t5
	addi.w	$t3, $a7, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t4, $t1, $t6
	bltz	$t4, .LBB2_298
# %bb.296:                              #   in Loop: Header=BB2_295 Depth=1
	beqz	$t4, .LBB2_309
# %bb.297:                              #   in Loop: Header=BB2_295 Depth=1
	sub.d	$t1, $s6, $t4
	b	.LBB2_310
	.p2align	4, , 16
.LBB2_298:                              #   in Loop: Header=BB2_295 Depth=1
	addi.d	$t1, $s6, -1
	nor	$t7, $t1, $zero
	add.w	$t8, $s6, $t7
	bnez	$t8, .LBB2_311
	.p2align	4, , 16
.LBB2_299:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB2_295 Depth=1
	beq	$t4, $a1, .LBB2_320
.LBB2_300:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB2_295 Depth=1
	addi.w	$t7, $zero, -17
	nor	$s0, $t4, $zero
	bltu	$t7, $t4, .LBB2_305
# %bb.301:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB2_295 Depth=1
	sub.d	$t7, $s8, $s1
	bltu	$t7, $a5, .LBB2_305
# %bb.302:                              # %vector.ph1143
                                        #   in Loop: Header=BB2_295 Depth=1
	bstrpick.d	$t7, $s0, 30, 4
	slli.d	$s3, $t7, 4
	sub.d	$fp, $s0, $s3
	sub.d	$t7, $s1, $s3
	sub.d	$t8, $s8, $s3
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t0, 0
	addi.d	$t0, $s8, -8
	addi.d	$s1, $s1, -8
	move	$s5, $s3
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_303:                              # %vector.body1147
                                        #   Parent Loop BB2_295 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t0, -8
	vst	$vr2, $s1, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s5, $s5, -16
	addi.d	$t0, $t0, -16
	addi.d	$s1, $s1, -16
	bnez	$s5, .LBB2_303
# %bb.304:                              # %middle.block1155
                                        #   in Loop: Header=BB2_295 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$t0, $xr5, 0
	move	$s5, $a0
	bne	$s3, $s0, .LBB2_306
	b	.LBB2_308
	.p2align	4, , 16
.LBB2_305:                              #   in Loop: Header=BB2_295 Depth=1
	move	$fp, $s0
	move	$t7, $s1
	move	$t8, $s8
.LBB2_306:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB2_295 Depth=1
	add.d	$t0, $t0, $fp
	.p2align	4, , 16
.LBB2_307:                              # %.lr.ph29.i
                                        #   Parent Loop BB2_295 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB2_307
.LBB2_308:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB2_295 Depth=1
	ld.d	$fp, $sp, 440                   # 8-byte Folded Reload
	bne	$t2, $fp, .LBB2_321
	b	.LBB2_323
	.p2align	4, , 16
.LBB2_309:                              #   in Loop: Header=BB2_295 Depth=1
	addi.d	$t1, $s6, -1
.LBB2_310:                              #   in Loop: Header=BB2_295 Depth=1
	move	$t4, $a1
	nor	$t7, $t1, $zero
	add.w	$t8, $s6, $t7
	beqz	$t8, .LBB2_299
.LBB2_311:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB2_295 Depth=1
	bltu	$t8, $a6, .LBB2_316
# %bb.312:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB2_295 Depth=1
	sub.d	$fp, $s8, $s1
	bltu	$fp, $a6, .LBB2_316
# %bb.313:                              # %vector.ph1166
                                        #   in Loop: Header=BB2_295 Depth=1
	bstrpick.d	$s3, $t8, 31, 0
	bstrpick.d	$fp, $s3, 31, 5
	slli.d	$s5, $fp, 5
	sub.d	$t8, $t8, $s5
	sub.d	$fp, $s1, $s5
	sub.d	$s0, $s8, $s5
	addi.d	$s8, $s8, -32
	addi.d	$s1, $s1, -32
	move	$ra, $s5
	.p2align	4, , 16
.LBB2_314:                              # %vector.body1170
                                        #   Parent Loop BB2_295 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s8, 0
	xvst	$xr4, $s1, 0
	addi.d	$ra, $ra, -32
	addi.d	$s8, $s8, -32
	addi.d	$s1, $s1, -32
	bnez	$ra, .LBB2_314
# %bb.315:                              # %middle.block1177
                                        #   in Loop: Header=BB2_295 Depth=1
	ld.d	$ra, $sp, 432                   # 8-byte Folded Reload
	bne	$s5, $s3, .LBB2_317
	b	.LBB2_319
	.p2align	4, , 16
.LBB2_316:                              #   in Loop: Header=BB2_295 Depth=1
	move	$fp, $s1
	move	$s0, $s8
.LBB2_317:                              # %.lr.ph19.i.preheader1298
                                        #   in Loop: Header=BB2_295 Depth=1
	move	$s1, $fp
	move	$s3, $s0
	.p2align	4, , 16
.LBB2_318:                              # %.lr.ph19.i
                                        #   Parent Loop BB2_295 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s3, -1
	st.b	$a3, $s3, -1
	addi.d	$fp, $s1, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $s1, -1
	move	$s1, $fp
	move	$s3, $s0
	bnez	$t8, .LBB2_318
.LBB2_319:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB2_295 Depth=1
	add.d	$t0, $s6, $t0
	add.d	$t0, $t7, $t0
	move	$s8, $s0
	move	$s1, $fp
	move	$s5, $a0
	bne	$t4, $a1, .LBB2_300
.LBB2_320:                              #   in Loop: Header=BB2_295 Depth=1
	move	$t8, $s8
	move	$t7, $s1
	ld.d	$fp, $sp, 440                   # 8-byte Folded Reload
	beq	$t2, $fp, .LBB2_323
.LBB2_321:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB2_295 Depth=1
	addi.w	$fp, $s4, 0
	beq	$t3, $fp, .LBB2_323
# %bb.322:                              #   in Loop: Header=BB2_295 Depth=1
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $fp, %pc_lo12(impmtx)
	ldx.d	$t5, $fp, $t5
	fldx.s	$fa5, $t5, $t6
	fld.s	$fa6, $a2, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a2, 0
.LBB2_323:                              #   in Loop: Header=BB2_295 Depth=1
	blez	$t2, .LBB2_327
# %bb.324:                              #   in Loop: Header=BB2_295 Depth=1
	blez	$t3, .LBB2_327
# %bb.325:                              #   in Loop: Header=BB2_295 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s8, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s1, $t7, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t7, -1
	move	$s6, $t1
	bge	$s5, $t0, .LBB2_295
.LBB2_326:                              # %._crit_edge42.i
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	bgtz	$s5, .LBB2_328
	b	.LBB2_330
.LBB2_327:
	move	$s8, $t8
	move	$s1, $t7
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	blez	$s5, .LBB2_330
.LBB2_328:                              # %.lr.ph50.preheader.i
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$s0, $s5
	.p2align	4, , 16
.LBB2_329:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB2_329
.LBB2_330:                              # %.preheader.i585
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 400                   # 8-byte Folded Reload
	blez	$s2, .LBB2_333
# %bb.331:                              # %.lr.ph52.preheader.i
	move	$fp, $s3
	move	$s0, $s2
	.p2align	4, , 16
.LBB2_332:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB2_332
.LBB2_333:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_335
# %bb.334:                              # %Atracking_localhom.exit
	ori	$a0, $a4, 2881
	blt	$a3, $a0, .LBB2_336
.LBB2_335:
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
.LBB2_336:
	blez	$s5, .LBB2_339
# %bb.337:                              # %.lr.ph717
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.mseq1)
	.p2align	4, , 16
.LBB2_338:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s5, $s5, -1
	addi.d	$s0, $s0, 8
	bnez	$s5, .LBB2_338
.LBB2_339:                              # %.preheader644
	blez	$s2, .LBB2_342
# %bb.340:                              # %.lr.ph719
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.mseq2)
	.p2align	4, , 16
.LBB2_341:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB2_341
.LBB2_342:                              # %._crit_edge720
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bltz	$a0, .LBB2_345
# %bb.343:                              # %.lr.ph724
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat1)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$s0, $a0, 31, 0
	.p2align	4, , 16
.LBB2_344:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB2_344
.LBB2_345:                              # %.preheader
	bltz	$s4, .LBB2_348
# %bb.346:                              # %.lr.ph727
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat2)
	addi.d	$a0, $s1, 1
	bstrpick.d	$s0, $a0, 31, 0
	.p2align	4, , 16
.LBB2_347:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB2_347
.LBB2_348:                              # %._crit_edge728
	fmov.s	$fa0, $fs0
	fld.d	$fs2, $sp, 448                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 456                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 464                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB2_349:
	addi.d	$a5, $a4, 1
	b	.LBB2_110
.LBB2_350:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $s5, $a5
	alsl.d	$a4, $a5, $s1, 2
	b	.LBB2_45
.Lfunc_end2:
	.size	H__align, .Lfunc_end2-H__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 120                  # 8-byte Folded Spill
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
	ld.d	$a7, $a1, 0
	ld.d	$t0, $a1, 8
	slli.d	$a2, $a3, 2
	fldx.s	$fa0, $a7, $a2
	fldx.s	$fa1, $t0, $a2
	ld.d	$a3, $a1, 16
	ld.d	$a7, $a1, 24
	ld.d	$t0, $a1, 32
	ld.d	$t1, $a1, 40
	fldx.s	$fa2, $a3, $a2
	fldx.s	$fa3, $a7, $a2
	fldx.s	$fa4, $t0, $a2
	fldx.s	$fa5, $t1, $a2
	ld.d	$a3, $a1, 48
	ld.d	$a7, $a1, 56
	ld.d	$t0, $a1, 64
	ld.d	$t1, $a1, 72
	fldx.s	$fa7, $a3, $a2
	fldx.s	$ft0, $a7, $a2
	fldx.s	$ft1, $t0, $a2
	fldx.s	$ft2, $t1, $a2
	ld.d	$a3, $a1, 80
	ld.d	$a7, $a1, 88
	ld.d	$t0, $a1, 96
	ld.d	$t1, $a1, 104
	fldx.s	$ft3, $a3, $a2
	fldx.s	$ft4, $a7, $a2
	fldx.s	$ft5, $t0, $a2
	fldx.s	$ft6, $t1, $a2
	ld.d	$a3, $a1, 112
	ld.d	$a7, $a1, 120
	ld.d	$t0, $a1, 128
	ld.d	$t1, $a1, 136
	fldx.s	$ft7, $a3, $a2
	fldx.s	$ft8, $a7, $a2
	fldx.s	$ft9, $t0, $a2
	fldx.s	$ft10, $t1, $a2
	ld.d	$a3, $a1, 144
	ld.d	$a7, $a1, 152
	ld.d	$t0, $a1, 160
	ld.d	$t1, $a1, 168
	fldx.s	$ft11, $a3, $a2
	fldx.s	$ft12, $a7, $a2
	fldx.s	$ft13, $t0, $a2
	fldx.s	$ft14, $t1, $a2
	ld.d	$a3, $a1, 176
	ld.d	$a7, $a1, 184
	ld.d	$t0, $a1, 192
	ld.d	$a1, $a1, 200
	fldx.s	$ft15, $a3, $a2
	fldx.s	$fs0, $a7, $a2
	fldx.s	$fs1, $t0, $a2
	fldx.s	$fs2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(n_dis)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis)
	move	$a2, $zero
	movgr2fr.w	$fa6, $zero
	addi.d	$a3, $sp, 16
	ori	$a7, $zero, 104
	.p2align	4, , 16
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a1, $a2
	add.d	$t0, $a1, $a2
	ld.w	$t2, $t0, 104
	movgr2fr.w	$fs3, $t1
	ffint.s.w	$fs3, $fs3
	fmadd.s	$fs3, $fs3, $fa0, $fa6
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 208
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa1, $fs3
	ld.w	$t2, $t0, 312
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa2, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 416
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa3, $fs3
	ld.w	$t2, $t0, 520
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa4, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 624
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa5, $fs3
	ld.w	$t2, $t0, 728
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa7, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 832
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft0, $fs3
	ld.w	$t2, $t0, 936
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft1, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1040
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft2, $fs3
	ld.w	$t2, $t0, 1144
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft3, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1248
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft4, $fs3
	ld.w	$t2, $t0, 1352
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft5, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1456
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft6, $fs3
	ld.w	$t2, $t0, 1560
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft7, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1664
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft8, $fs3
	ld.w	$t2, $t0, 1768
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft9, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1872
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft10, $fs3
	ld.w	$t2, $t0, 1976
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft11, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2080
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft12, $fs3
	ldptr.w	$t2, $t0, 2184
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft13, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2288
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft14, $fs3
	ldptr.w	$t2, $t0, 2392
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft15, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2496
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs0, $fs3
	ldptr.w	$t0, $t0, 2600
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs1, $fs3
	movgr2fr.w	$fs4, $t0
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs2, $fs3
	fstx.s	$fs3, $a2, $a3
	addi.d	$a2, $a2, 4
	bne	$a2, $a7, .LBB3_9
# %bb.10:                               # %.preheader
	beqz	$a4, .LBB3_16
# %bb.11:
	addi.d	$a1, $sp, 16
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               # %._crit_edge
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB3_16
.LBB3_13:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	ld.d	$a3, $a6, 0
	ld.wu	$a2, $a3, 0
	addi.w	$a7, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB3_12
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$a3, $a3, 4
	fmov.s	$fa0, $fa6
	.p2align	4, , 16
.LBB3_15:                               #   Parent Loop BB3_13 Depth=1
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
	bgez	$t0, .LBB3_15
	b	.LBB3_12
.LBB3_16:                               # %._crit_edge74
	fld.d	$fs4, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 152                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
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
