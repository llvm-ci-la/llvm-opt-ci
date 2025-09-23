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
	move	$s5, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$s6, %pc_hi20(imp_match_init_strictR.impalloclen)
	ld.w	$a0, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictR.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictR.nocount2)
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
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	beqz	$a0, .LBB1_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_6:
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictR.nocount2)
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
	st.w	$a0, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strictR.nocount2)
.LBB1_9:
	blez	$s4, .LBB1_22
# %bb.10:                               # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
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
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictR.nocount2)
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
	.size	imp_match_init_strictR, .Lfunc_end1-imp_match_init_strictR
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function R__align
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
	.globl	R__align
	.p2align	5
	.type	R__align,@function
R__align:                               # @R__align
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
	fst.d	$fs1, $sp, 504                  # 8-byte Folded Spill
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a5
	move	$s3, $a4
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	move	$s7, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$fp, %pc_hi20(R__align.orlgth1)
	ld.w	$s0, $fp, %pc_lo12(R__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mseq1)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mseq2)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	bnez	$s0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(R__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, %pc_lo12(R__align.orlgth1)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.mseq2)
.LBB2_2:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s5, $a0
	addi.w	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(R__align.orlgth2)
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.w	$a7, $a1, %pc_lo12(R__align.orlgth2)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(R__align.w1)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.w2)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.initverticalw)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.lastverticalw)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.m)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mp)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(R__align.mseq)
	pcalau12i	$a0, %pc_hi20(R__align.digf1)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.digf2)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.diaf1)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.diaf2)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapz1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapz2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapf1)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapf2)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp1g)
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp2g)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.fgcp1g)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.fgcp2g)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.cpmx1)
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.cpmx2)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.floatwork)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.intwork)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	blt	$s0, $s4, .LBB2_4
# %bb.3:
	bge	$a7, $a1, .LBB2_9
.LBB2_4:
	pcalau12i	$s6, %pc_hi20(R__align.match)
	pcalau12i	$a0, %pc_hi20(R__align.ogcp1)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(R__align.ogcp2)
	pcalau12i	$s4, %pc_hi20(R__align.fgcp1)
	pcalau12i	$s3, %pc_hi20(R__align.fgcp2)
	blez	$s0, .LBB2_7
# %bb.5:
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	blez	$a7, .LBB2_8
# %bb.6:
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(R__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(R__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(R__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(R__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, %pc_lo12(R__align.orlgth1)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a7, $a0, %pc_lo12(R__align.orlgth2)
	b	.LBB2_8
.LBB2_7:
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
.LBB2_8:
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	addi.w	$s3, $s0, 100
	movgr2fr.w	$fa1, $s8
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $a7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a7, $a1
	or	$s7, $a1, $a0
	addi.w	$s8, $s7, 100
	addi.w	$s5, $s7, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(R__align.match)
	addi.w	$s6, $s0, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s8, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(R__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.digf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.diaf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.diaf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapz1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(R__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(R__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp2g)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.cpmx2)
	slt	$a0, $s8, $s3
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$a7, $s7
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.intwork)
	st.w	$s0, $fp, %pc_lo12(R__align.orlgth1)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(R__align.orlgth2)
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
.LBB2_9:
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 488                   # 8-byte Folded Reload
	blez	$s3, .LBB2_12
# %bb.10:                               # %.lr.ph
	ld.d	$a0, $s2, %pc_lo12(R__align.mseq)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.mseq1)
	move	$a2, $s3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a5
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_11
.LBB2_12:                               # %.preheader580
	blez	$s6, .LBB2_15
# %bb.13:                               # %.lr.ph592
	ld.d	$a1, $s2, %pc_lo12(R__align.mseq)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mseq2)
	alsl.d	$a1, $s3, $a1, 3
	move	$a2, $s6
	move	$a3, $s7
	.p2align	4, , 16
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a6
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_14
.LBB2_15:                               # %._crit_edge
	ld.d	$s8, $sp, 616
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s2, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s3, 0
	blt	$a0, $s0, .LBB2_18
# %bb.16:                               # %._crit_edge
	blt	$a1, $a7, .LBB2_18
# %bb.17:                               # %._crit_edge725
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB2_22
.LBB2_18:
	beqz	$a0, .LBB2_21
# %bb.19:
	beqz	$a1, .LBB2_21
# %bb.20:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, %pc_lo12(R__align.orlgth1)
	ld.w	$a0, $s2, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a7, $a1, %pc_lo12(R__align.orlgth2)
	ld.w	$a1, $s3, 0
.LBB2_21:
	slt	$a2, $a0, $s0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$fp, $a2, $a0
	slt	$a0, $a1, $a7
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a7, $a0
	or	$s0, $a0, $a1
	addi.w	$a0, $fp, 10
	addi.w	$a1, $s0, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$fp, $s2, 0
	st.w	$s0, $s3, 0
.LBB2_22:
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.cpmx1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 448                  # 32-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(R__align.ijp)
	st.d	$a0, $s2, %pc_lo12(R__align.ijp)
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s3, $sp, 312                   # 8-byte Folded Reload
	move	$a2, $s3
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(R__align.cpmx2)
	move	$a0, $s7
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	move	$a2, $s1
	ld.d	$s5, $sp, 488                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	bnez	$s8, .LBB2_24
# %bb.23:
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	b	.LBB2_25
.LBB2_24:
	ld.d	$a1, $sp, 640
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 632
	ld.d	$s7, $sp, 624
	move	$a1, $fp
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s0
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	move	$a1, $s6
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s5
	move	$a5, $s7
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	move	$a1, $fp
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s0
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	move	$a1, $s6
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s5
	move	$a5, $s7
	move	$a6, $s2
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	move	$a1, $fp
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s0
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	move	$a1, $s6
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s5
	move	$a5, $s7
	move	$a6, $s2
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	move	$a1, $fp
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s0
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	move	$a1, $s6
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s5
	move	$a5, $s7
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$a6, $s2
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	move	$a1, $s6
	move	$a2, $s2
	move	$a3, $s1
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz2)
	move	$a1, $s6
	move	$a2, $s2
	move	$a3, $s1
	move	$a4, $s5
	move	$a5, $s8
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
.LBB2_25:
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	move	$s0, $s4
	move	$s6, $s5
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(R__align.w1)
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(R__align.w2)
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.initverticalw)
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(R__align.cpmx2)
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(R__align.cpmx1)
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(R__align.floatwork)
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s7, $a1, %pc_lo12(R__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	slli.d	$a1, $s5, 32
	addi.d	$a0, $s5, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	xvld	$xr0, $sp, 448                  # 32-byte Folded Reload
	fcvt.d.s	$fs1, $fa0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 424                   # 8-byte Folded Spill
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_27
# %bb.26:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t4, $s5
	move	$t2, $s8
	ld.d	$t7, $sp, 432                   # 8-byte Folded Reload
	move	$t8, $s3
	move	$s2, $s4
	move	$s4, $s1
	move	$t3, $s0
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_47
.LBB2_27:
	move	$s2, $s4
	move	$s4, $s1
	move	$s1, $s0
	blez	$s0, .LBB2_30
# %bb.28:                               # %.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s4, 30, 0
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_29:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_29
.LBB2_30:                               # %imp_match_out_vead_tateR.exit
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s6
	move	$a5, $s2
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB2_32
# %bb.31:                               # %imp_match_out_veadR.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	move	$t2, $s8
	ld.d	$t7, $sp, 432                   # 8-byte Folded Reload
	move	$t8, $s3
	move	$t3, $s1
	move	$t4, $s5
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	beq	$a0, $fp, .LBB2_48
	b	.LBB2_60
.LBB2_32:                               # %iter.check
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	move	$t4, $s5
	bstrpick.d	$a0, $s5, 31, 0
	ori	$a2, $zero, 4
	ld.d	$t7, $sp, 432                   # 8-byte Folded Reload
	move	$t8, $s3
	move	$t3, $s1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	bgeu	$a0, $a2, .LBB2_34
# %bb.33:
	move	$a2, $a1
	move	$a3, $t4
	move	$t2, $s8
	move	$a4, $s8
	b	.LBB2_46
.LBB2_34:                               # %vector.memcheck
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $t4, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	move	$t2, $s8
	bgeu	$s8, $a3, .LBB2_37
# %bb.35:                               # %vector.memcheck
	add.d	$a2, $t2, $a2
	bgeu	$a1, $a2, .LBB2_37
# %bb.36:
	move	$a2, $a1
	move	$a3, $t4
	move	$a4, $t2
	b	.LBB2_46
.LBB2_37:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB2_39
# %bb.38:
	move	$a5, $zero
	b	.LBB2_43
.LBB2_39:                               # %vector.ph
	bstrpick.d	$a2, $t4, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $t2, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	.p2align	4, , 16
.LBB2_40:                               # %vector.body
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
	bnez	$a4, .LBB2_40
# %bb.41:                               # %middle.block
	beq	$a0, $a5, .LBB2_47
# %bb.42:                               # %vec.epilog.iter.check
	andi	$a2, $t4, 12
	beqz	$a2, .LBB2_300
.LBB2_43:                               # %vec.epilog.ph
	bstrpick.d	$a4, $t4, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $t4, 3
	alsl.d	$a4, $a4, $t2, 4
	alsl.d	$a7, $a5, $t2, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB2_44:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB2_44
# %bb.45:                               # %vec.epilog.middle.block
	beq	$a0, $a6, .LBB2_47
	.p2align	4, , 16
.LBB2_46:                               # %.lr.ph.i506
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB2_46
.LBB2_47:                               # %imp_match_out_veadR.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_53
.LBB2_48:
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(R__align.ogcp1g)
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(R__align.fgcp1g)
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
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
	fld.s	$fa2, $t7, 0
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa1, $fa2, $fa0
	fst.s	$fa1, $t7, 0
	fld.s	$fa1, $t2, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $t2, 0
	xvld	$xr9, $sp, 448                  # 32-byte Folded Reload
	blez	$t3, .LBB2_51
# %bb.49:                               # %.lr.ph603
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(R__align.gapz2)
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(R__align.digf1)
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(R__align.diaf1)
	addi.d	$a7, $s4, 1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, -1
	movgr2fr.w	$fa1, $zero
	ori	$t0, $zero, 4
	vldi	$vr0, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB2_50:                               # =>This Inner Loop Header: Depth=1
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
	fldx.s	$fa4, $t7, $t0
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fs1
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa3, $fa4, $fa3
	fstx.s	$fa3, $t7, $t0
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
	fstx.s	$fa3, $t7, $t0
	fldx.s	$fa4, $a2, $t0
	fldx.s	$fa5, $a3, $t0
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa4, $ft1
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa4, $fa1
	fmul.s	$fa5, $fa5, $ft1
	fcvt.d.s	$fa5, $fa5
	fneg.d	$fa5, $fa5
	fmadd.d	$fa4, $fa5, $fa2, $fa4
	fcvt.d.s	$fa3, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fcvt.s.d	$fa3, $fa3
	fstx.s	$fa3, $t7, $t0
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	bnez	$a7, .LBB2_50
.LBB2_51:                               # %.preheader575
	bgtz	$s6, .LBB2_70
# %bb.52:                               # %.loopexit576.thread
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t5, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $t5, 0
	b	.LBB2_68
.LBB2_53:                               # %.preheader579
	blez	$s6, .LBB2_60
# %bb.54:                               # %.lr.ph595
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_58
# %bb.55:                               # %vector.ph823
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI2_1)
	xvreplgr2vr.w	$xr1, $a0
	addi.d	$a5, $t2, 4
	xvldi	$xr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_56:                               # %vector.body826
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr1, $xr0
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
	xvaddi.wu	$xr0, $xr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_56
# %bb.57:                               # %middle.block831
	beq	$a2, $a4, .LBB2_60
.LBB2_58:                               # %scalar.ph.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t2, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_59:                               # %scalar.ph
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
	bnez	$a1, .LBB2_59
.LBB2_60:                               # %.preheader577
	blez	$t3, .LBB2_67
# %bb.61:                               # %.lr.ph598
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s4, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_65
# %bb.62:                               # %vector.ph836
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI2_1)
	xvreplgr2vr.w	$xr1, $a0
	addi.d	$a5, $t7, 4
	xvldi	$xr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_63:                               # %vector.body841
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr1, $xr0
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
	xvaddi.wu	$xr0, $xr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_63
# %bb.64:                               # %middle.block848
	beq	$a2, $a4, .LBB2_67
.LBB2_65:                               # %scalar.ph834.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t7, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_66:                               # %scalar.ph834
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
	bnez	$a1, .LBB2_66
.LBB2_67:                               # %.loopexit576
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t5, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $t5, 0
	xvld	$xr9, $sp, 448                  # 32-byte Folded Reload
	bgtz	$s6, .LBB2_73
.LBB2_68:                               # %._crit_edge612
	ori	$a0, $zero, 1
	bnez	$s6, .LBB2_87
# %bb.69:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	b	.LBB2_88
.LBB2_70:                               # %.lr.ph607
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R__align.gapz1)
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(R__align.digf2)
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(R__align.diaf2)
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, -1
	movgr2fr.w	$fa1, $zero
	ori	$a6, $zero, 4
	vldi	$vr0, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB2_71:                               # =>This Inner Loop Header: Depth=1
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
	fldx.s	$fa4, $t2, $a6
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fs1
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa3, $fa4, $fa3
	fstx.s	$fa3, $t2, $a6
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
	fstx.s	$fa3, $t2, $a6
	fldx.s	$fa4, $a0, $a6
	fldx.s	$fa5, $a1, $a6
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa4, $ft1
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa4, $fa1
	fmul.s	$fa5, $fa5, $ft1
	fcvt.d.s	$fa5, $fa5
	fneg.d	$fa5, $fa5
	fmadd.d	$fa4, $fa5, $fa2, $fa4
	fcvt.d.s	$fa3, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fcvt.s.d	$fa3, $fa3
	fstx.s	$fa3, $t2, $a6
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB2_71
# %bb.72:                               # %.loopexit576.thread774
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t5, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $t5, 0
.LBB2_73:                               # %iter.check855
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mp)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 4
	ori	$a4, $zero, 1
	bltu	$a2, $a3, .LBB2_84
# %bb.74:                               # %vector.memcheck851
	sub.d	$a3, $t5, $t2
	addi.d	$a3, $a3, 4
	ori	$a5, $zero, 64
	bltu	$a3, $a5, .LBB2_84
# %bb.75:                               # %vector.main.loop.iter.check857
	ori	$a4, $zero, 16
	lu12i.w	$a3, 287172
	bgeu	$a2, $a4, .LBB2_77
# %bb.76:
	move	$a5, $zero
	b	.LBB2_81
.LBB2_77:                               # %vector.ph858
	move	$a4, $zero
	move	$a5, $a2
	bstrins.d	$a5, $zero, 3, 0
	xvreplve0.w	$xr0, $xr9
	addi.d	$a6, $a0, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a3
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_78:                               # %vector.body863
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a6, $a4
	add.d	$t1, $t2, $a4
	xvldx	$xr3, $t2, $a4
	xvld	$xr4, $t1, 32
	xvst	$xr1, $t0, -32
	xvstx	$xr1, $a6, $a4
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t0, $t5, $a4
	xvst	$xr3, $t0, 4
	xvst	$xr4, $t0, 36
	addi.d	$a7, $a7, -16
	addi.d	$a4, $a4, 64
	bnez	$a7, .LBB2_78
# %bb.79:                               # %middle.block868
	beq	$a2, $a5, .LBB2_86
# %bb.80:                               # %vec.epilog.iter.check873
	andi	$a4, $a2, 12
	beqz	$a4, .LBB2_299
.LBB2_81:                               # %vec.epilog.ph872
	move	$a6, $a2
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a2
	bstrins.d	$a4, $a7, 1, 0
	vreplvei.w	$vr0, $vr9, 0
	addi.d	$a7, $a0, 4
	slli.d	$t0, $a5, 2
	sub.d	$a5, $a5, $a6
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a3
	.p2align	4, , 16
.LBB2_82:                               # %vec.epilog.vector.body880
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t2, $t0
	vstx	$vr1, $a7, $t0
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a3, $t5, $t0
	vst	$vr3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB2_82
# %bb.83:                               # %vec.epilog.middle.block885
	beq	$a2, $a6, .LBB2_86
.LBB2_84:                               # %vec.epilog.scalar.ph871.preheader
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	fld.s	$fa0, $a2, %pc_lo12(.LCPI2_2)
	slli.d	$a2, $a4, 2
	addi.d	$a3, $t2, -4
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB2_85:                               # %vec.epilog.scalar.ph871
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a3, $a2
	stx.w	$zero, $a0, $a2
	fmadd.s	$fa1, $ft1, $fa0, $fa1
	fstx.s	$fa1, $t5, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB2_85
.LBB2_86:
	move	$a0, $zero
.LBB2_87:
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $a4, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $t2, $a1
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB2_88:
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.lastverticalw)
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	fst.s	$fa0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	sltu	$a2, $zero, $a1
	add.w	$a5, $a2, $s4
	ori	$a2, $zero, 2
	st.d	$a5, $sp, 400                   # 8-byte Folded Spill
	blt	$a5, $a2, .LBB2_129
# %bb.89:                               # %.lr.ph633
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ijp)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(R__align.mp)
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(R__align.ogcp2g)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a7, $a0, %pc_lo12(R__align.fgcp2g)
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $a0, %pc_lo12(R__align.digf2)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(R__align.diaf2)
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t3, $a0, %pc_lo12(R__align.gapz2)
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a4, $a0
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	bstrpick.d	$a1, $t4, 30, 0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	addi.w	$a1, $t4, -1
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 2
	addi.d	$a2, $a2, 4
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 32, 4
	slli.d	$a4, $a1, 4
	slli.d	$a1, $a1, 6
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	sub.d	$a1, $t4, $a4
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	andi	$a1, $a2, 12
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a2, 32, 2
	slli.d	$a2, $a1, 2
	slli.d	$a1, $a1, 4
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	sub.d	$a1, $t4, $a2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $a2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	st.d	$t5, $sp, 328                   # 8-byte Folded Spill
	addi.d	$fp, $t5, 8
	st.d	$t1, $sp, 264                   # 8-byte Folded Spill
	addi.d	$s0, $t1, 8
	st.d	$t0, $sp, 272                   # 8-byte Folded Spill
	addi.d	$s1, $t0, 8
	st.d	$a7, $sp, 288                   # 8-byte Folded Spill
	addi.d	$s2, $a7, 8
	st.d	$a6, $sp, 296                   # 8-byte Folded Spill
	addi.d	$s6, $a6, 8
	st.d	$t3, $sp, 256                   # 8-byte Folded Spill
	addi.d	$s4, $t3, 12
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	addi.d	$s8, $a5, 8
	ori	$s7, $zero, 1
	move	$a1, $a3
	b	.LBB2_91
	.p2align	4, , 16
.LBB2_90:                               # %._crit_edge625
                                        #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	fldx.s	$fa0, $s3, $a1
	addi.d	$s7, $s7, 1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$t2, $s3
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	beq	$s7, $a0, .LBB2_130
.LBB2_91:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_122 Depth 2
                                        #     Child Loop BB2_126 Depth 2
                                        #     Child Loop BB2_96 Depth 2
                                        #     Child Loop BB2_110 Depth 2
	addi.d	$a0, $s7, -1
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	fldx.s	$fa0, $t7, $a0
	move	$s3, $t8
	move	$s5, $t2
	fst.s	$fa0, $t2, 0
	move	$a0, $t8
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	xvld	$xr17, $sp, 448                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_97
# %bb.92:                               # %iter.check898
                                        #   in Loop: Header=BB2_91 Depth=1
	slli.d	$a0, $s7, 3
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB2_95
# %bb.93:                               # %vector.memcheck889
                                        #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	bgeu	$s3, $a0, .LBB2_119
# %bb.94:                               # %vector.memcheck889
                                        #   in Loop: Header=BB2_91 Depth=1
	add.d	$a0, $s3, $a1
	bgeu	$a2, $a0, .LBB2_119
.LBB2_95:                               #   in Loop: Header=BB2_91 Depth=1
	move	$a0, $a2
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s3
	.p2align	4, , 16
.LBB2_96:                               # %.lr.ph.i509
                                        #   Parent Loop BB2_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a3
	bnez	$a2, .LBB2_96
.LBB2_97:                               # %imp_match_out_veadR.exit514
                                        #   in Loop: Header=BB2_91 Depth=1
	slli.d	$a0, $s7, 2
	ld.d	$t7, $sp, 432                   # 8-byte Folded Reload
	fldx.s	$fa0, $t7, $a0
	fst.s	$fa0, $s3, 0
	move	$t8, $s5
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	vldi	$vr18, -912
	vldi	$vr19, -928
	ori	$s5, $zero, 1
	ld.d	$ra, $sp, 496                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_90
# %bb.98:                               # %.lr.ph624
                                        #   in Loop: Header=BB2_91 Depth=1
	fld.s	$fa0, $t8, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	fld.s	$fa1, $a1, %pc_lo12(.LCPI2_2)
	fmadd.s	$fa1, $ft9, $fa1, $fa0
	slli.d	$a1, $s7, 3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	fldx.s	$fa4, $a2, $a0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	fld.s	$fa2, $a2, 4
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$t1, $a2, $a1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 2
	fcvt.d.s	$ft2, $fa4
	fcvt.d.s	$fa5, $fa2
	fsub.d	$fa2, $ft10, $fa5
	fmul.d	$fa3, $fa2, $ft2
	fmul.d	$fa3, $fa3, $fs1
	fmul.d	$fa3, $fa3, $ft11
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa3, $fa0, $fa3
	fsub.d	$fa7, $ft10, $ft2
	fmul.d	$fa6, $fa7, $fa5
	fmul.d	$fa6, $fa6, $fs1
	fmul.d	$ft0, $fa6, $ft11
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	fldx.s	$fa6, $a2, $a0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	fld.s	$ft3, $a2, 4
	fcvt.s.d	$ft0, $ft0
	fadd.s	$ft0, $fa3, $ft0
	fcvt.d.s	$ft1, $fa6
	fcvt.d.s	$fa3, $ft3
	fsub.d	$ft4, $ft10, $fa3
	fmul.d	$ft3, $ft4, $ft1
	fmul.d	$ft3, $ft3, $fs1
	fmul.d	$ft3, $ft3, $ft11
	fcvt.s.d	$ft3, $ft3
	fadd.s	$ft0, $ft0, $ft3
	fsub.d	$ft3, $ft10, $ft1
	fmul.d	$ft5, $ft3, $fa3
	fmul.d	$ft5, $ft5, $fs1
	fld.s	$ft6, $a1, 4
	fmul.d	$ft5, $ft5, $ft11
	fcvt.s.d	$ft5, $ft5
	fadd.s	$fs0, $ft0, $ft5
	fcvt.d.s	$ft0, $ft6
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	fld.s	$ft5, $a2, 4
	fadd.d	$ft4, $ft4, $fa5
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa5, $a2, 4
	fsub.d	$ft6, $ft10, $ft0
	fcvt.d.s	$ft5, $ft5
	fsub.d	$ft5, $ft10, $ft5
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $ft5, $fa5
	fmul.d	$ft0, $fa5, $ft0
	fmadd.d	$ft0, $ft6, $ft4, $ft0
	fmul.d	$ft0, $ft0, $ft11
	fmul.d	$ft0, $ft0, $fs1
	fcvt.s.d	$ft0, $ft0
	fadd.s	$ft0, $fa1, $ft0
	fcmp.cule.s	$fcc0, $ft0, $fs0
	st.w	$zero, $t1, 4
	bcnez	$fcc0, .LBB2_100
# %bb.99:                               #   in Loop: Header=BB2_91 Depth=1
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.w	$a2, $t1, 4
	fmov.s	$fs0, $ft0
.LBB2_100:                              #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	fld.s	$ft4, $a6, 8
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $s7, $a2, 2
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a3, $s7, $a3, 2
	fld.s	$ft0, $a1, 0
	fcvt.d.s	$ft4, $ft4
	fld.s	$ft5, $a2, 0
	fadd.d	$ft2, $ft3, $ft2
	fld.s	$ft3, $a3, 0
	fsub.d	$ft6, $ft10, $ft4
	fcvt.d.s	$ft5, $ft5
	fsub.d	$ft5, $ft10, $ft5
	fcvt.d.s	$ft3, $ft3
	fsub.d	$ft3, $ft5, $ft3
	fmul.d	$ft4, $ft3, $ft4
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	fld.s	$ft2, $a5, 4
	fmul.d	$ft4, $ft4, $ft11
	fmul.d	$ft4, $ft4, $fs1
	fcvt.s.d	$ft4, $ft4
	fadd.s	$ft4, $ft2, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB2_102
# %bb.101:                              #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 4
	sub.d	$a4, $s7, $a4
	st.w	$a4, $t1, 4
	fmov.s	$fs0, $ft4
.LBB2_102:                              #   in Loop: Header=BB2_91 Depth=1
	fld.s	$ft4, $a6, 4
	fcvt.d.s	$ft4, $ft4
	fsub.d	$ft5, $ft10, $ft4
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft3, $ft4
	fmadd.d	$fa7, $ft5, $fa7, $ft1
	fmul.d	$fa7, $fa7, $ft11
	fmul.d	$fa7, $fa7, $fs1
	fcvt.s.d	$fa7, $fa7
	fadd.s	$fa7, $fa0, $fa7
	fcmp.cult.s	$fcc0, $fa7, $ft2
	bceqz	$fcc0, .LBB2_105
# %bb.103:                              #   in Loop: Header=BB2_91 Depth=1
	beq	$s7, $s5, .LBB2_106
# %bb.104:                              #   in Loop: Header=BB2_91 Depth=1
	fadd.s	$fa4, $fa4, $fa6
	fmul.s	$fa4, $fa4, $ft9
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa6, $ft2
	fmadd.d	$fa4, $fa4, $ft11, $fa6
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa4, $a5, 4
	b	.LBB2_106
	.p2align	4, , 16
.LBB2_105:                              #   in Loop: Header=BB2_91 Depth=1
	fst.s	$fa7, $a5, 4
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	st.w	$ra, $a4, 4
.LBB2_106:                              #   in Loop: Header=BB2_91 Depth=1
	fld.s	$fa4, $s3, 4
	fadd.s	$fa4, $fs0, $fa4
	fst.s	$fa4, $s3, 4
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	beq	$a4, $s5, .LBB2_90
# %bb.107:                              # %.peel.next
                                        #   in Loop: Header=BB2_91 Depth=1
	move	$a4, $zero
	move	$t5, $zero
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a5, 2
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a6, $s7, $a6, 2
	fcvt.d.s	$fa4, $ft0
	fsub.d	$fa6, $ft10, $fa4
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa3, $fa5, $fa4
	fmadd.d	$fa2, $fa6, $fa2, $fa3
	fmul.d	$fa2, $fa2, $ft11
	fmul.d	$fa2, $fa2, $fs1
	fcvt.s.d	$fa2, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fcmp.cle.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	addi.d	$a7, $t8, 4
	addi.d	$t0, $s3, 8
	addi.d	$t1, $t1, 8
	ori	$t2, $zero, 1
	addi.d	$t3, $zero, -2
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_110
	.p2align	4, , 16
.LBB2_108:                              #   in Loop: Header=BB2_110 Depth=2
	fstx.s	$fa2, $fp, $a4
	stx.w	$ra, $s8, $a4
.LBB2_109:                              #   in Loop: Header=BB2_110 Depth=2
	fldx.s	$fa1, $t0, $a4
	fadd.s	$fa1, $fs0, $fa1
	fstx.s	$fa1, $t0, $a4
	addi.d	$t2, $t2, 1
	addi.d	$a4, $a4, 4
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, -1
	beqz	$t4, .LBB2_90
.LBB2_110:                              #   Parent Loop BB2_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a5, 0
	fldx.s	$fa7, $s6, $a4
	fldx.s	$fa2, $a7, $a4
	fcvt.d.s	$fa6, $fa1
	fcvt.d.s	$ft4, $fa7
	fsub.d	$ft1, $ft10, $ft4
	fmul.d	$fa3, $ft1, $fa6
	fmul.d	$fa3, $fa3, $fs1
	fmul.d	$fa3, $fa3, $ft11
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa5, $fa2, $fa3
	fsub.d	$fa4, $ft10, $fa6
	fmul.d	$fa3, $fa4, $ft4
	fmul.d	$fa3, $fa3, $fs1
	fmul.d	$ft0, $fa3, $ft11
	fld.s	$fa3, $a6, 0
	fldx.s	$ft2, $s2, $a4
	fcvt.s.d	$ft0, $ft0
	fadd.s	$ft0, $fa5, $ft0
	fcvt.d.s	$fa5, $fa3
	fcvt.d.s	$ft3, $ft2
	fsub.d	$ft5, $ft10, $ft3
	fmul.d	$ft6, $ft5, $fa5
	fmul.d	$ft6, $ft6, $fs1
	fmul.d	$ft6, $ft6, $ft11
	fcvt.s.d	$ft6, $ft6
	fadd.s	$ft6, $ft0, $ft6
	fsub.d	$ft0, $ft10, $fa5
	fmul.d	$ft7, $ft0, $ft3
	fmul.d	$ft7, $ft7, $fs1
	fld.s	$ft8, $a1, 4
	fmul.d	$ft7, $ft7, $ft11
	fcvt.s.d	$ft7, $ft7
	fadd.s	$fs0, $ft6, $ft7
	fcvt.d.s	$ft6, $ft8
	fldx.s	$ft7, $s1, $a4
	fadd.d	$ft5, $ft5, $ft4
	fldx.s	$ft4, $s0, $a4
	fsub.d	$ft8, $ft10, $ft6
	fcvt.d.s	$ft7, $ft7
	fsub.d	$ft7, $ft10, $ft7
	fcvt.d.s	$ft4, $ft4
	fsub.d	$ft4, $ft7, $ft4
	fmul.d	$ft6, $ft4, $ft6
	fmadd.d	$ft5, $ft8, $ft5, $ft6
	fmul.d	$ft5, $ft5, $ft11
	fmul.d	$ft5, $ft5, $fs1
	fcvt.s.d	$ft5, $ft5
	fadd.s	$ft5, $fa0, $ft5
	fcmp.cule.s	$fcc0, $ft5, $fs0
	stx.w	$zero, $t1, $a4
	bcnez	$fcc0, .LBB2_112
# %bb.111:                              #   in Loop: Header=BB2_110 Depth=2
	add.d	$t6, $t5, $t3
	stx.w	$t6, $t1, $a4
	fmov.s	$fs0, $ft5
.LBB2_112:                              #   in Loop: Header=BB2_110 Depth=2
	fld.s	$ft5, $a1, 0
	fcvt.d.s	$ft5, $ft5
	fsub.d	$ft6, $ft10, $ft5
	fadd.d	$ft1, $ft1, $ft3
	fmul.d	$ft3, $ft4, $ft5
	fmadd.d	$ft1, $ft6, $ft1, $ft3
	fmul.d	$ft1, $ft1, $ft11
	fmul.d	$ft1, $ft1, $fs1
	fcvt.s.d	$ft1, $ft1
	fadd.s	$ft1, $fa2, $ft1
	fcmp.cle.s	$fcc0, $fa0, $ft1
	move	$t6, $t2
	bcnez	$fcc0, .LBB2_114
# %bb.113:                              #   in Loop: Header=BB2_110 Depth=2
	fadd.s	$fa7, $fa7, $ft2
	fmul.s	$fa7, $fa7, $ft9
	fcvt.d.s	$fa7, $fa7
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa7, $ft11, $fa0
	fcvt.s.d	$ft1, $fa0
	move	$t6, $t5
.LBB2_114:                              #   in Loop: Header=BB2_110 Depth=2
	fldx.s	$fa0, $s4, $a4
	fcvt.d.s	$fa0, $fa0
	fld.s	$fa7, $a2, 0
	fadd.d	$ft0, $ft0, $fa6
	fld.s	$fa6, $a3, 0
	fsub.d	$ft2, $ft10, $fa0
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $ft10, $fa7
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa7, $fa6
	fmul.d	$fa0, $fa6, $fa0
	fmadd.d	$fa0, $ft2, $ft0, $fa0
	fldx.s	$fa7, $fp, $a4
	fmul.d	$fa0, $fa0, $ft11
	fmul.d	$fa0, $fa0, $fs1
	fcvt.s.d	$fa0, $fa0
	fadd.s	$ft0, $fa7, $fa0
	fcmp.cule.s	$fcc0, $ft0, $fs0
	fmov.s	$fa0, $ft1
	move	$t5, $t6
	bcnez	$fcc0, .LBB2_116
# %bb.115:                              #   in Loop: Header=BB2_110 Depth=2
	ldx.w	$t6, $s8, $a4
	sub.d	$t6, $s7, $t6
	stx.w	$t6, $t1, $a4
	fmov.s	$fs0, $ft0
.LBB2_116:                              #   in Loop: Header=BB2_110 Depth=2
	add.d	$t6, $s4, $a4
	fld.s	$ft0, $t6, -4
	fcvt.d.s	$ft0, $ft0
	fsub.d	$ft1, $ft10, $ft0
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa5, $fa6, $ft0
	fmadd.d	$fa4, $ft1, $fa4, $fa5
	fmul.d	$fa4, $fa4, $ft11
	fmul.d	$fa4, $fa4, $fs1
	fcvt.s.d	$fa4, $fa4
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa7
	bceqz	$fcc0, .LBB2_108
# %bb.117:                              #   in Loop: Header=BB2_110 Depth=2
	beq	$s7, $s5, .LBB2_109
# %bb.118:                              #   in Loop: Header=BB2_110 Depth=2
	fldx.s	$fa2, $fp, $a4
	fadd.s	$fa1, $fa1, $fa3
	fmul.s	$fa1, $fa1, $ft9
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa1, $fa1, $ft11, $fa2
	fcvt.s.d	$fa1, $fa1
	fstx.s	$fa1, $fp, $a4
	b	.LBB2_109
.LBB2_119:                              # %vector.main.loop.iter.check900
                                        #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB2_121
# %bb.120:                              #   in Loop: Header=BB2_91 Depth=1
	move	$a4, $zero
	b	.LBB2_125
.LBB2_121:                              # %vector.body904.preheader
                                        #   in Loop: Header=BB2_91 Depth=1
	addi.d	$a0, $s3, 32
	addi.d	$a1, $a2, 32
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_122:                              # %vector.body904
                                        #   Parent Loop BB2_91 Depth=1
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
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB2_122
# %bb.123:                              # %middle.block913
                                        #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_97
# %bb.124:                              # %vec.epilog.iter.check918
                                        #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_128
.LBB2_125:                              # %vec.epilog.ph917
                                        #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s3, $a1
	alsl.d	$a3, $a4, $s3, 2
	alsl.d	$a2, $a4, $a2, 2
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB2_126:                              # %vec.epilog.vector.body924
                                        #   Parent Loop BB2_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a3, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB2_126
# %bb.127:                              # %vec.epilog.middle.block933
                                        #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB2_96
	b	.LBB2_97
.LBB2_128:                              #   in Loop: Header=BB2_91 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s3, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	b	.LBB2_96
.LBB2_129:
	movgr2fr.w	$fs0, $zero
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	beqz	$a1, .LBB2_131
	b	.LBB2_145
.LBB2_130:                              # %._crit_edge634.loopexit
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$t2, $s3
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a1, .LBB2_145
.LBB2_131:                              # %.preheader574
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_138
# %bb.132:                              # %.lr.ph639
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_136
# %bb.133:                              # %vector.ph944
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_3)
	pcalau12i	$a5, %pc_hi20(.LCPI2_4)
	xvld	$xr2, $a5, %pc_lo12(.LCPI2_4)
	xvreplgr2vr.d	$xr3, $t4
	addi.d	$a5, $t2, 4
	xvldi	$xr4, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_134:                              # %vector.body951
                                        # =>This Inner Loop Header: Depth=1
	xvsub.d	$xr5, $xr3, $xr1
	xvsub.d	$xr6, $xr3, $xr2
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
	xvaddi.du	$xr2, $xr2, 8
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_134
# %bb.135:                              # %middle.block958
	beq	$a2, $a4, .LBB2_138
.LBB2_136:                              # %scalar.ph942.preheader
	sub.w	$a2, $t4, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t2, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_137:                              # %scalar.ph942
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
	bnez	$a1, .LBB2_137
.LBB2_138:                              # %.preheader573
	blez	$t3, .LBB2_145
# %bb.139:                              # %.lr.ph642
	bstrpick.d	$a0, $s4, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(R__align.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $s4, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB2_143
# %bb.140:                              # %vector.ph963
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	pcalau12i	$a5, %pc_hi20(.LCPI2_5)
	vld	$vr3, $a5, %pc_lo12(.LCPI2_5)
	xvreplve0.d	$xr4, $xr1
	addi.d	$a5, $a1, 4
	xvldi	$xr5, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_141:                              # %vector.body970
                                        # =>This Inner Loop Header: Depth=1
	vext2xv.du.wu	$xr6, $xr3
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
	xvfmadd.d	$xr6, $xr4, $xr6, $xr9
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
	vaddi.wu	$vr3, $vr3, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB2_141
# %bb.142:                              # %middle.block977
	beq	$a3, $a4, .LBB2_145
.LBB2_143:                              # %scalar.ph961.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB2_144:                              # %scalar.ph961
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
	bnez	$a2, .LBB2_144
.LBB2_145:                              # %.loopexit
	move	$s1, $t2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.lastverticalw)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(R__align.mseq1)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(R__align.mseq2)
	ld.d	$a0, $t0, %pc_lo12(R__align.ijp)
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $t1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	add.w	$s2, $a0, $s7
	addi.w	$s8, $s2, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	addi.w	$a1, $s7, 0
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	addi.w	$a1, $s6, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s0, $sp, 448                   # 8-byte Folded Spill
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	bnez	$a3, .LBB2_152
# %bb.146:
	ori	$a3, $zero, 1
	move	$a7, $s1
	ld.d	$s1, $sp, 488                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_163
# %bb.147:
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	blez	$a2, .LBB2_158
# %bb.148:                              # %.lr.ph.i568
	slli.d	$a2, $s7, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s6, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB2_150
	.p2align	4, , 16
.LBB2_149:                              #   in Loop: Header=BB2_150 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_158
.LBB2_150:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_149
# %bb.151:                              #   in Loop: Header=BB2_150 Depth=1
	ldx.d	$a6, $s1, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_149
.LBB2_152:
	ori	$a3, $zero, 1
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_171
# %bb.153:
	move	$a7, $s1
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	blez	$a2, .LBB2_166
# %bb.154:                              # %.lr.ph.i515
	slli.d	$a2, $s7, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s6, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB2_156
	.p2align	4, , 16
.LBB2_155:                              #   in Loop: Header=BB2_156 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_166
.LBB2_156:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_155
# %bb.157:                              #   in Loop: Header=BB2_156 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_155
.LBB2_158:                              # %.preheader2.i520
	blez	$a1, .LBB2_163
# %bb.159:                              # %.lr.ph7.i562
	slli.d	$a2, $s7, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s6, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s6, 30, 0
	sub.d	$a5, $zero, $s6
	b	.LBB2_161
	.p2align	4, , 16
.LBB2_160:                              #   in Loop: Header=BB2_161 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 4
	beqz	$a4, .LBB2_163
.LBB2_161:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_160
# %bb.162:                              #   in Loop: Header=BB2_161 Depth=1
	ldx.d	$a6, $s1, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_160
.LBB2_163:                              # %.loopexit.i521
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_179
# %bb.164:                              # %.lr.ph10.preheader.i523
	addi.d	$a3, $s7, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_174
# %bb.165:
	move	$a3, $zero
	b	.LBB2_177
.LBB2_166:                              # %.preheader2.i
	blez	$a1, .LBB2_171
# %bb.167:                              # %.lr.ph7.i
	slli.d	$a2, $s7, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s6, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s6, 30, 0
	sub.d	$a5, $zero, $s6
	b	.LBB2_169
	.p2align	4, , 16
.LBB2_168:                              #   in Loop: Header=BB2_169 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 4
	beqz	$a4, .LBB2_171
.LBB2_169:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_168
# %bb.170:                              #   in Loop: Header=BB2_169 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_168
.LBB2_171:                              # %.loopexit.i
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_187
# %bb.172:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_182
# %bb.173:
	move	$a3, $zero
	b	.LBB2_185
.LBB2_174:                              # %vector.ph1077
	pcalau12i	$a4, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s1, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_175:                              # %vector.body1080
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
	bnez	$a5, .LBB2_175
# %bb.176:                              # %middle.block1088
	beq	$a2, $a3, .LBB2_179
.LBB2_177:                              # %.lr.ph10.i525.preheader
	alsl.d	$a4, $a3, $s1, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_178:                              # %.lr.ph10.i525
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_178
.LBB2_179:                              # %.preheader1.i529
	bltz	$a1, .LBB2_203
# %bb.180:                              # %iter.check1094
	ld.d	$a2, $s1, 0
	addi.d	$a5, $s6, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB2_190
# %bb.181:
	move	$a4, $zero
	b	.LBB2_201
.LBB2_182:                              # %vector.ph982
	pcalau12i	$a4, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_183:                              # %vector.body985
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
	bnez	$a5, .LBB2_183
# %bb.184:                              # %middle.block992
	beq	$a2, $a3, .LBB2_187
.LBB2_185:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_186:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_186
.LBB2_187:                              # %.preheader1.i
	ld.d	$a2, $sp, 608
	bltz	$a1, .LBB2_249
# %bb.188:                              # %iter.check998
	ld.d	$a3, $ra, 0
	addi.d	$a6, $s6, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB2_192
# %bb.189:
	move	$a5, $zero
	b	.LBB2_247
.LBB2_190:                              # %vector.main.loop.iter.check1096
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB2_194
# %bb.191:
	move	$a4, $zero
	b	.LBB2_198
.LBB2_192:                              # %vector.main.loop.iter.check1000
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB2_240
# %bb.193:
	move	$a5, $zero
	b	.LBB2_244
.LBB2_194:                              # %vector.ph1097
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a6, %pc_lo12(.LCPI2_7)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_195:                              # %vector.body1100
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB2_195
# %bb.196:                              # %middle.block1106
	beq	$a3, $a4, .LBB2_203
# %bb.197:                              # %vec.epilog.iter.check1111
	andi	$a6, $a5, 12
	beqz	$a6, .LBB2_201
.LBB2_198:                              # %vec.epilog.ph1110
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
.LBB2_199:                              # %vec.epilog.vector.body1119
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB2_199
# %bb.200:                              # %vec.epilog.middle.block1124
	beq	$a3, $a4, .LBB2_203
.LBB2_201:                              # %vec.epilog.scalar.ph1109.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB2_202:                              # %vec.epilog.scalar.ph1109
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB2_202
.LBB2_203:                              # %._crit_edge.i535
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	add.d	$a2, $s0, $a3
	add.d	$s8, $a2, $a1
	stx.b	$zero, $a2, $a1
	add.d	$a0, $a0, $a3
	add.d	$s5, $a0, $a1
	stx.b	$zero, $a0, $a1
	bltz	$s2, .LBB2_233
# %bb.204:                              # %.lr.ph41.i536.preheader
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
.LBB2_205:                              # %.lr.ph41.i536
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_224 Depth 2
                                        #     Child Loop BB2_228 Depth 2
                                        #     Child Loop BB2_213 Depth 2
                                        #     Child Loop BB2_217 Depth 2
	addi.w	$a7, $s7, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $s1, $a6
	addi.w	$t0, $s6, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB2_208
# %bb.206:                              #   in Loop: Header=BB2_205 Depth=1
	beqz	$t1, .LBB2_219
# %bb.207:                              #   in Loop: Header=BB2_205 Depth=1
	sub.d	$a6, $s7, $t1
	b	.LBB2_220
	.p2align	4, , 16
.LBB2_208:                              #   in Loop: Header=BB2_205 Depth=1
	addi.d	$a6, $s7, -1
	nor	$t2, $a6, $zero
	add.w	$t3, $s7, $t2
	bnez	$t3, .LBB2_221
	.p2align	4, , 16
.LBB2_209:                              # %._crit_edge20.i540
                                        #   in Loop: Header=BB2_205 Depth=1
	beq	$t1, $a0, .LBB2_230
.LBB2_210:                              # %.lr.ph29.preheader.i542
                                        #   in Loop: Header=BB2_205 Depth=1
	addi.w	$t2, $zero, -17
	nor	$t5, $t1, $zero
	bltu	$t2, $t1, .LBB2_215
# %bb.211:                              # %.lr.ph29.preheader.i542
                                        #   in Loop: Header=BB2_205 Depth=1
	sub.d	$t2, $s8, $s5
	bltu	$t2, $a3, .LBB2_215
# %bb.212:                              # %vector.ph1133
                                        #   in Loop: Header=BB2_205 Depth=1
	bstrpick.d	$t2, $t5, 30, 4
	slli.d	$t6, $t2, 4
	sub.d	$t4, $t5, $t6
	sub.d	$t2, $s5, $t6
	sub.d	$t3, $s8, $t6
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a5, 0
	addi.d	$a5, $s8, -8
	addi.d	$t7, $s5, -8
	move	$t8, $t6
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_213:                              # %vector.body1137
                                        #   Parent Loop BB2_205 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a5, -8
	vst	$vr2, $t7, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$t8, $t8, -16
	addi.d	$a5, $a5, -16
	addi.d	$t7, $t7, -16
	bnez	$t8, .LBB2_213
# %bb.214:                              # %middle.block1146
                                        #   in Loop: Header=BB2_205 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$a5, $xr5, 0
	bne	$t6, $t5, .LBB2_216
	b	.LBB2_218
	.p2align	4, , 16
.LBB2_215:                              #   in Loop: Header=BB2_205 Depth=1
	move	$t4, $t5
	move	$t2, $s5
	move	$t3, $s8
.LBB2_216:                              # %.lr.ph29.i543.preheader
                                        #   in Loop: Header=BB2_205 Depth=1
	add.d	$a5, $a5, $t4
	.p2align	4, , 16
.LBB2_217:                              # %.lr.ph29.i543
                                        #   Parent Loop BB2_205 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t3, -1
	addi.d	$t3, $t3, -1
	st.b	$a1, $t2, -1
	addi.w	$t4, $t4, -1
	addi.d	$t2, $t2, -1
	bnez	$t4, .LBB2_217
.LBB2_218:                              # %._crit_edge30.i544
                                        #   in Loop: Header=BB2_205 Depth=1
	bgtz	$a7, .LBB2_231
	b	.LBB2_234
	.p2align	4, , 16
.LBB2_219:                              #   in Loop: Header=BB2_205 Depth=1
	addi.d	$a6, $s7, -1
.LBB2_220:                              #   in Loop: Header=BB2_205 Depth=1
	move	$t1, $a0
	nor	$t2, $a6, $zero
	add.w	$t3, $s7, $t2
	beqz	$t3, .LBB2_209
.LBB2_221:                              # %.lr.ph19.i538.preheader
                                        #   in Loop: Header=BB2_205 Depth=1
	bltu	$t3, $a4, .LBB2_226
# %bb.222:                              # %.lr.ph19.i538.preheader
                                        #   in Loop: Header=BB2_205 Depth=1
	sub.d	$t4, $s8, $s5
	bltu	$t4, $a4, .LBB2_226
# %bb.223:                              # %vector.ph1159
                                        #   in Loop: Header=BB2_205 Depth=1
	bstrpick.d	$t6, $t3, 31, 0
	bstrpick.d	$t4, $t6, 31, 5
	slli.d	$t7, $t4, 5
	sub.d	$t3, $t3, $t7
	sub.d	$t4, $s5, $t7
	sub.d	$t5, $s8, $t7
	addi.d	$t8, $s8, -32
	addi.d	$fp, $s5, -32
	move	$s0, $t7
	.p2align	4, , 16
.LBB2_224:                              # %vector.body1163
                                        #   Parent Loop BB2_205 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $t8, 0
	xvst	$xr4, $fp, 0
	addi.d	$s0, $s0, -32
	addi.d	$t8, $t8, -32
	addi.d	$fp, $fp, -32
	bnez	$s0, .LBB2_224
# %bb.225:                              # %middle.block1170
                                        #   in Loop: Header=BB2_205 Depth=1
	bne	$t7, $t6, .LBB2_227
	b	.LBB2_229
	.p2align	4, , 16
.LBB2_226:                              #   in Loop: Header=BB2_205 Depth=1
	move	$t4, $s5
	move	$t5, $s8
.LBB2_227:                              # %.lr.ph19.i538.preheader1180
                                        #   in Loop: Header=BB2_205 Depth=1
	move	$t6, $t4
	move	$t7, $t5
	.p2align	4, , 16
.LBB2_228:                              # %.lr.ph19.i538
                                        #   Parent Loop BB2_205 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t5, $t7, -1
	st.b	$a1, $t7, -1
	addi.d	$t4, $t6, -1
	addi.w	$t3, $t3, -1
	st.b	$a2, $t6, -1
	move	$t6, $t4
	move	$t7, $t5
	bnez	$t3, .LBB2_228
.LBB2_229:                              # %._crit_edge20.loopexit.i539
                                        #   in Loop: Header=BB2_205 Depth=1
	add.d	$a5, $s7, $a5
	add.d	$a5, $t2, $a5
	move	$s8, $t5
	move	$s5, $t4
	bne	$t1, $a0, .LBB2_210
.LBB2_230:                              #   in Loop: Header=BB2_205 Depth=1
	move	$t3, $s8
	move	$t2, $s5
	blez	$a7, .LBB2_234
.LBB2_231:                              # %._crit_edge30.i544
                                        #   in Loop: Header=BB2_205 Depth=1
	blez	$t0, .LBB2_234
# %bb.232:                              #   in Loop: Header=BB2_205 Depth=1
	add.d	$s6, $t1, $s6
	addi.d	$s8, $t3, -1
	st.b	$a1, $t3, -1
	addi.d	$s5, $t2, -1
	addi.w	$a5, $a5, 2
	st.b	$a1, $t2, -1
	move	$s7, $a6
	bge	$s2, $a5, .LBB2_205
.LBB2_233:                              # %._crit_edge42.i547
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	bgtz	$a0, .LBB2_235
	b	.LBB2_237
.LBB2_234:
	move	$s8, $t3
	move	$s5, $t2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	blez	$a0, .LBB2_237
.LBB2_235:                              # %.lr.ph50.preheader.i556
	move	$fp, $s6
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_236:                              # %.lr.ph50.i558
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB2_236
.LBB2_237:                              # %.preheader.i549
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	blez	$s1, .LBB2_289
# %bb.238:                              # %.lr.ph52.preheader.i550
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_239:                              # %.lr.ph52.i552
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB2_239
	b	.LBB2_289
.LBB2_240:                              # %vector.ph1001
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a7, %pc_lo12(.LCPI2_7)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB2_241:                              # %vector.body1004
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB2_241
# %bb.242:                              # %middle.block1010
	beq	$a4, $a5, .LBB2_249
# %bb.243:                              # %vec.epilog.iter.check1015
	andi	$a7, $a6, 12
	beqz	$a7, .LBB2_247
.LBB2_244:                              # %vec.epilog.ph1014
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
.LBB2_245:                              # %vec.epilog.vector.body1022
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB2_245
# %bb.246:                              # %vec.epilog.middle.block1027
	beq	$a4, $a5, .LBB2_249
.LBB2_247:                              # %vec.epilog.scalar.ph1013.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB2_248:                              # %vec.epilog.scalar.ph1013
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB2_248
.LBB2_249:                              # %._crit_edge.i
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	add.d	$a3, $s0, $a4
	add.d	$s8, $a3, $a1
	stx.b	$zero, $a3, $a1
	add.d	$a3, $a0, $a4
	add.d	$s5, $a3, $a1
	stx.b	$zero, $a3, $a1
	st.w	$zero, $a2, 0
	bltz	$s2, .LBB2_282
# %bb.250:                              # %.lr.ph41.i.preheader
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
	move	$a7, $s6
	move	$a0, $s2
	.p2align	4, , 16
.LBB2_251:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_270 Depth 2
                                        #     Child Loop BB2_274 Depth 2
                                        #     Child Loop BB2_259 Depth 2
                                        #     Child Loop BB2_263 Depth 2
	addi.w	$t2, $s7, 0
	slli.d	$t5, $t2, 3
	ldx.d	$t1, $ra, $t5
	addi.w	$t3, $a7, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t4, $t1, $t6
	bltz	$t4, .LBB2_254
# %bb.252:                              #   in Loop: Header=BB2_251 Depth=1
	beqz	$t4, .LBB2_265
# %bb.253:                              #   in Loop: Header=BB2_251 Depth=1
	sub.d	$t1, $s7, $t4
	b	.LBB2_266
	.p2align	4, , 16
.LBB2_254:                              #   in Loop: Header=BB2_251 Depth=1
	addi.d	$t1, $s7, -1
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB2_267
	.p2align	4, , 16
.LBB2_255:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB2_251 Depth=1
	beq	$t4, $a1, .LBB2_276
.LBB2_256:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB2_251 Depth=1
	addi.w	$t7, $zero, -17
	nor	$s0, $t4, $zero
	bltu	$t7, $t4, .LBB2_261
# %bb.257:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB2_251 Depth=1
	sub.d	$t7, $s8, $s5
	bltu	$t7, $a5, .LBB2_261
# %bb.258:                              # %vector.ph1036
                                        #   in Loop: Header=BB2_251 Depth=1
	bstrpick.d	$t7, $s0, 30, 4
	slli.d	$s1, $t7, 4
	sub.d	$fp, $s0, $s1
	sub.d	$t7, $s5, $s1
	sub.d	$t8, $s8, $s1
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t0, 0
	addi.d	$t0, $s8, -8
	addi.d	$s2, $s5, -8
	move	$s5, $s1
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_259:                              # %vector.body1040
                                        #   Parent Loop BB2_251 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t0, -8
	vst	$vr2, $s2, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s5, $s5, -16
	addi.d	$t0, $t0, -16
	addi.d	$s2, $s2, -16
	bnez	$s5, .LBB2_259
# %bb.260:                              # %middle.block1048
                                        #   in Loop: Header=BB2_251 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$t0, $xr5, 0
	move	$s2, $a0
	bne	$s1, $s0, .LBB2_262
	b	.LBB2_264
	.p2align	4, , 16
.LBB2_261:                              #   in Loop: Header=BB2_251 Depth=1
	move	$fp, $s0
	move	$t7, $s5
	move	$t8, $s8
.LBB2_262:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB2_251 Depth=1
	add.d	$t0, $t0, $fp
	.p2align	4, , 16
.LBB2_263:                              # %.lr.ph29.i
                                        #   Parent Loop BB2_251 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB2_263
.LBB2_264:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB2_251 Depth=1
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	bne	$t2, $fp, .LBB2_277
	b	.LBB2_279
	.p2align	4, , 16
.LBB2_265:                              #   in Loop: Header=BB2_251 Depth=1
	addi.d	$t1, $s7, -1
.LBB2_266:                              #   in Loop: Header=BB2_251 Depth=1
	move	$t4, $a1
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	beqz	$t8, .LBB2_255
.LBB2_267:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB2_251 Depth=1
	bltu	$t8, $a6, .LBB2_272
# %bb.268:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB2_251 Depth=1
	sub.d	$fp, $s8, $s5
	bltu	$fp, $a6, .LBB2_272
# %bb.269:                              # %vector.ph1059
                                        #   in Loop: Header=BB2_251 Depth=1
	bstrpick.d	$s1, $t8, 31, 0
	bstrpick.d	$fp, $s1, 31, 5
	slli.d	$s2, $fp, 5
	sub.d	$t8, $t8, $s2
	sub.d	$fp, $s5, $s2
	sub.d	$s0, $s8, $s2
	addi.d	$s8, $s8, -32
	addi.d	$s5, $s5, -32
	move	$ra, $s2
	.p2align	4, , 16
.LBB2_270:                              # %vector.body1063
                                        #   Parent Loop BB2_251 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s8, 0
	xvst	$xr4, $s5, 0
	addi.d	$ra, $ra, -32
	addi.d	$s8, $s8, -32
	addi.d	$s5, $s5, -32
	bnez	$ra, .LBB2_270
# %bb.271:                              # %middle.block1070
                                        #   in Loop: Header=BB2_251 Depth=1
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB2_273
	b	.LBB2_275
	.p2align	4, , 16
.LBB2_272:                              #   in Loop: Header=BB2_251 Depth=1
	move	$fp, $s5
	move	$s0, $s8
.LBB2_273:                              # %.lr.ph19.i.preheader1191
                                        #   in Loop: Header=BB2_251 Depth=1
	move	$s1, $fp
	move	$s2, $s0
	.p2align	4, , 16
.LBB2_274:                              # %.lr.ph19.i
                                        #   Parent Loop BB2_251 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s2, -1
	st.b	$a3, $s2, -1
	addi.d	$fp, $s1, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $s1, -1
	move	$s1, $fp
	move	$s2, $s0
	bnez	$t8, .LBB2_274
.LBB2_275:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB2_251 Depth=1
	add.d	$t0, $s7, $t0
	add.d	$t0, $t7, $t0
	move	$s8, $s0
	move	$s5, $fp
	move	$s2, $a0
	bne	$t4, $a1, .LBB2_256
.LBB2_276:                              #   in Loop: Header=BB2_251 Depth=1
	move	$t8, $s8
	move	$t7, $s5
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	beq	$t2, $fp, .LBB2_279
.LBB2_277:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB2_251 Depth=1
	addi.w	$fp, $s6, 0
	beq	$t3, $fp, .LBB2_279
# %bb.278:                              #   in Loop: Header=BB2_251 Depth=1
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $fp, %pc_lo12(impmtx)
	ldx.d	$t5, $fp, $t5
	fldx.s	$fa5, $t5, $t6
	fld.s	$fa6, $a2, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a2, 0
.LBB2_279:                              #   in Loop: Header=BB2_251 Depth=1
	blez	$t2, .LBB2_283
# %bb.280:                              #   in Loop: Header=BB2_251 Depth=1
	blez	$t3, .LBB2_283
# %bb.281:                              #   in Loop: Header=BB2_251 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s8, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s5, $t7, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t7, -1
	move	$s7, $t1
	bge	$s2, $t0, .LBB2_251
.LBB2_282:                              # %._crit_edge42.i
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	bgtz	$a0, .LBB2_284
	b	.LBB2_286
.LBB2_283:
	move	$s8, $t8
	move	$s5, $t7
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	blez	$a0, .LBB2_286
.LBB2_284:                              # %.lr.ph50.preheader.i
	move	$fp, $s6
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_285:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB2_285
.LBB2_286:                              # %.preheader.i
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	blez	$s1, .LBB2_289
# %bb.287:                              # %.lr.ph52.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_288:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB2_288
.LBB2_289:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_291
# %bb.290:                              # %Atracking_localhom.exit
	ori	$a0, $a4, 2881
	blt	$a3, $a0, .LBB2_292
.LBB2_291:
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
.LBB2_292:
	blez	$s0, .LBB2_295
# %bb.293:                              # %.lr.ph645
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.mseq1)
	.p2align	4, , 16
.LBB2_294:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB2_294
.LBB2_295:                              # %.preheader
	blez	$s1, .LBB2_298
# %bb.296:                              # %.lr.ph647
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.mseq2)
	.p2align	4, , 16
.LBB2_297:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB2_297
.LBB2_298:                              # %._crit_edge648
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
	fld.d	$fs1, $sp, 504                  # 8-byte Folded Reload
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
.LBB2_299:
	addi.d	$a4, $a5, 1
	b	.LBB2_84
.LBB2_300:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $t4, $a5
	alsl.d	$a4, $a5, $t2, 2
	b	.LBB2_46
.Lfunc_end2:
	.size	R__align, .Lfunc_end2-R__align
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
