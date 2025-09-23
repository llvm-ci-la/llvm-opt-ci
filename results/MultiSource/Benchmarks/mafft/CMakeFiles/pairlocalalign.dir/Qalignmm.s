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
	move	$s5, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$s6, %pc_hi20(impalloclen)
	ld.w	$a0, $s6, %pc_lo12(impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictQ.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictQ.nocount2)
	blt	$a0, $a1, .LBB2_2
# %bb.1:
	addi.w	$a1, $s5, 2
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
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictQ.nocount2)
	beqz	$a0, .LBB2_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_8:
	slt	$a0, $s5, $s4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $s6, %pc_lo12(impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strictQ.nocount2)
.LBB2_9:
	blez	$s4, .LBB2_22
# %bb.10:                               # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	blez	$s3, .LBB2_18
# %bb.11:                               # %.preheader211.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_12:                               # %._crit_edge.us.thread
                                        #   in Loop: Header=BB2_14 Depth=1
	move	$a4, $zero
.LBB2_13:                               #   in Loop: Header=BB2_14 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB2_22
.LBB2_14:                               # %.preheader211.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	move	$a4, $s3
	move	$a5, $s1
	move	$a3, $s3
	.p2align	4, , 16
.LBB2_15:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB2_15
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_17:                               # %._crit_edge.us
                                        #   in Loop: Header=BB2_14 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB2_13
	b	.LBB2_12
.LBB2_18:                               # %.preheader211.lr.ph.split
	beqz	$s3, .LBB2_20
# %bb.19:                               # %.preheader211.preheader
	ori	$a1, $zero, 1
	b	.LBB2_21
.LBB2_20:                               # %.preheader211.us216.preheader
	move	$a1, $zero
.LBB2_21:                               # %.preheader210
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_22:                               # %.preheader210.thread
	blez	$s5, .LBB2_38
# %bb.23:                               # %.preheader209.lr.ph
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictQ.nocount2)
	blez	$s2, .LBB2_31
# %bb.24:                               # %.preheader209.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_25:                               # %._crit_edge.us222.thread
                                        #   in Loop: Header=BB2_27 Depth=1
	move	$a4, $zero
.LBB2_26:                               #   in Loop: Header=BB2_27 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB2_35
.LBB2_27:                               # %.preheader209.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
	move	$a4, $s2
	move	$a5, $s0
	move	$a3, $s2
	.p2align	4, , 16
.LBB2_28:                               #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB2_30
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB2_28
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_30:                               # %._crit_edge.us222
                                        #   in Loop: Header=BB2_27 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB2_26
	b	.LBB2_25
.LBB2_31:                               # %.preheader209.lr.ph.split
	beqz	$s2, .LBB2_33
# %bb.32:                               # %.preheader209.preheader
	ori	$a1, $zero, 1
	b	.LBB2_34
.LBB2_33:                               # %.preheader209.us224.preheader
	move	$a1, $zero
.LBB2_34:                               # %.preheader208
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_35:                               # %.preheader208
	blez	$s4, .LBB2_38
# %bb.36:                               # %.preheader207.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB2_37:                               # %.preheader207.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB2_37
.LBB2_38:                               # %._crit_edge228
	blez	$s3, .LBB2_76
# %bb.39:                               # %.preheader206.lr.ph
	blez	$s2, .LBB2_76
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
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_41:                               # %._crit_edge235.us
                                        #   in Loop: Header=BB2_42 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB2_76
.LBB2_42:                               # %.preheader206.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_44 Depth 2
                                        #       Child Loop BB2_47 Depth 3
                                        #         Child Loop BB2_48 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_56 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_64 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_43:                               # %._crit_edge.us238
                                        #   in Loop: Header=BB2_44 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB2_41
.LBB2_44:                               #   Parent Loop BB2_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_47 Depth 3
                                        #         Child Loop BB2_48 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_56 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_64 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB2_43
# %bb.45:                               # %.lr.ph.us
                                        #   in Loop: Header=BB2_44 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB2_47
	.p2align	4, , 16
.LBB2_46:                               # %.critedge.us
                                        #   in Loop: Header=BB2_47 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB2_43
.LBB2_47:                               #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_48 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_56 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_64 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB2_48:                               #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB2_51
# %bb.49:                               #   in Loop: Header=BB2_48 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB2_48
# %bb.50:                               #   in Loop: Header=BB2_47 Depth=3
	move	$t8, $s4
.LBB2_51:                               #   in Loop: Header=BB2_47 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB2_55
	.p2align	4, , 16
.LBB2_52:                               # %.preheader205.us
                                        #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB2_54
# %bb.53:                               #   in Loop: Header=BB2_52 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB2_52
.LBB2_54:                               #   in Loop: Header=BB2_47 Depth=3
	add.w	$t6, $t7, $t3
.LBB2_55:                               #   in Loop: Header=BB2_47 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB2_56:                               #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB2_59
# %bb.57:                               #   in Loop: Header=BB2_56 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB2_56
# %bb.58:                               #   in Loop: Header=BB2_47 Depth=3
	move	$s5, $s6
.LBB2_59:                               #   in Loop: Header=BB2_47 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB2_63
	.p2align	4, , 16
.LBB2_60:                               # %.preheader.us
                                        #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB2_62
# %bb.61:                               #   in Loop: Header=BB2_60 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB2_60
.LBB2_62:                               #   in Loop: Header=BB2_47 Depth=3
	add.w	$t8, $s4, $t4
.LBB2_63:                               #   in Loop: Header=BB2_47 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB2_64:                               #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB2_46
# %bb.65:                               #   in Loop: Header=BB2_64 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB2_46
# %bb.66:                               #   in Loop: Header=BB2_64 Depth=4
	beq	$s7, $a4, .LBB2_69
# %bb.67:                               #   in Loop: Header=BB2_64 Depth=4
	beq	$s6, $a4, .LBB2_69
# %bb.68:                               #   in Loop: Header=BB2_64 Depth=4
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
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_69:                               #   in Loop: Header=BB2_64 Depth=4
	bne	$s7, $a4, .LBB2_71
# %bb.70:                               #   in Loop: Header=BB2_64 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB2_71:                               #   in Loop: Header=BB2_64 Depth=4
	bne	$s6, $a4, .LBB2_74
# %bb.72:                               #   in Loop: Header=BB2_64 Depth=4
	addi.w	$t7, $t7, 1
.LBB2_73:                               #   in Loop: Header=BB2_64 Depth=4
	addi.d	$s5, $s5, 1
.LBB2_74:                               #   in Loop: Header=BB2_64 Depth=4
	blt	$t6, $t5, .LBB2_46
# %bb.75:                               #   in Loop: Header=BB2_64 Depth=4
	bge	$t8, $t7, .LBB2_64
	b	.LBB2_46
.LBB2_76:                               # %._crit_edge237
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI3_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI3_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI3_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI3_7:
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
.LCPI3_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI3_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	Q__align
	.p2align	5
	.type	Q__align,@function
Q__align:                               # @Q__align
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
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	move	$s7, $a5
	move	$s3, $a4
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	move	$s8, $a2
	move	$s5, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$s4, %pc_hi20(Q__align.orlgth1)
	ld.w	$s6, $s4, %pc_lo12(Q__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mseq1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mseq2)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bnez	$s6, .LBB3_2
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
	ld.w	$s6, $s4, %pc_lo12(Q__align.orlgth1)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.mseq2)
.LBB3_2:
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$s2, $a0
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Q__align.orlgth2)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s0, $a1, %pc_lo12(Q__align.orlgth2)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.w	$a5, $a0, 0
	pcalau12i	$a0, %pc_hi20(Q__align.w1)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.w2)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.initverticalw)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.lastverticalw)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.m)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mp)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mseq)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.digf1)
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.digf2)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.diaf1)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.diaf2)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz1)
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz2)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapf1)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapf2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.ogcp1g)
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.ogcp2g)
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fgcp1g)
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fgcp2g)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_h_dg_n1_p)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_h_dg_n2_p)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_h_dg_n1_p)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_h_dg_n2_p)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz_n1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz_n2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.cpmx1)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.cpmx2)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.floatwork)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.intwork)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.d	$s5, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	blt	$s6, $fp, .LBB3_5
# %bb.3:
	blt	$s0, $a5, .LBB3_5
# %bb.4:
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	bgtz	$s3, .LBB3_9
	b	.LBB3_11
.LBB3_5:
	pcalau12i	$fp, %pc_hi20(Q__align.match)
	blez	$s6, .LBB3_8
# %bb.6:
	blez	$s0, .LBB3_8
# %bb.7:
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(Q__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, %pc_lo12(Q__align.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(Q__align.orlgth2)
.LBB3_8:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	addi.w	$s1, $s6, 100
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$s2, $s0, 100
	addi.w	$s4, $s0, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(Q__align.match)
	addi.w	$s5, $s6, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.initverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s2, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(Q__align.mseq)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.digf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.diaf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.ogcp2g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fgcp2g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz_n1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.intwork)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(Q__align.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(Q__align.orlgth2)
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	blez	$s3, .LBB3_11
.LBB3_9:                                # %.lr.ph
	ld.d	$a0, $fp, %pc_lo12(Q__align.mseq)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mseq1)
	move	$a2, $s3
	.p2align	4, , 16
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $s1, 0
	stx.b	$zero, $a4, $s2
	addi.d	$s1, $s1, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_10
.LBB3_11:                               # %.preheader561
	blez	$s7, .LBB3_14
# %bb.12:                               # %.lr.ph568
	ld.d	$a1, $fp, %pc_lo12(Q__align.mseq)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mseq2)
	alsl.d	$a1, $s3, $a1, 3
	move	$a2, $s7
	move	$a3, $s5
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
	ld.d	$s4, $sp, 584
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s1, 0
	blt	$a0, $s6, .LBB3_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s0, .LBB3_17
# %bb.16:                               # %._crit_edge717
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
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(Q__align.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s0, $a1, %pc_lo12(Q__align.orlgth2)
	ld.w	$a1, $s1, 0
.LBB3_20:
	slt	$a2, $a0, $s6
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s6, $a2
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
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
.LBB3_21:
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 368                  # 32-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(Q__align.ijp)
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(Q__align.ijp)
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx2)
	move	$a0, $s5
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$s1, $sp, 408                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	beqz	$s4, .LBB3_23
# %bb.22:
	ld.d	$s5, $sp, 608
	ld.d	$s3, $sp, 600
	ld.d	$s6, $sp, 592
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	move	$a1, $s7
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s6
	move	$a6, $s5
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	move	$a1, $s7
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s6
	move	$a6, $s5
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	move	$a1, $s7
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s6
	move	$a6, $s5
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s3
	move	$s3, $fp
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	move	$a1, $s7
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s1
	move	$a5, $s6
	move	$a6, $s5
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $s3
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $s3
	move	$a4, $s1
	move	$a5, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB3_24
.LBB3_23:
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB3_24:
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	addi.w	$a0, $zero, -1
	xvld	$xr19, $sp, 368                 # 32-byte Folded Reload
	fcvt.d.s	$fa0, $ft11
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$ra, $s1
	blt	$s1, $a0, .LBB3_29
# %bb.25:                               # %.lr.ph571
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.digf2)
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.gapz2)
	ld.d	$t0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n2)
	addi.d	$t3, $s8, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
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
.LBB3_29:                               # %._crit_edge572
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$s2, $a0, .LBB3_34
# %bb.30:                               # %.lr.ph575
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.digf1)
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.og_h_dg_n1_p)
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.gapz1)
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n1)
	addi.d	$t3, $s4, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB3_77
# %bb.31:
	move	$t2, $zero
.LBB3_32:                               # %scalar.ph1029.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB3_33:                               # %scalar.ph1029
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
.LBB3_34:                               # %._crit_edge576
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t3, $a0, %pc_lo12(Q__align.w1)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $a0, %pc_lo12(Q__align.w2)
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(RNAscoremtx)
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $t3
	move	$s1, $t4
	bne	$a0, $a1, .LBB3_37
# %bb.35:
	beqz	$s2, .LBB3_110
# %bb.36:                               # %.lr.ph.preheader.i
	ld.d	$s3, $s6, %pc_lo12(Q__align.initverticalw)
	slli.d	$a0, $s4, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_38
.LBB3_37:
	ld.d	$s3, $s6, %pc_lo12(Q__align.initverticalw)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx2)
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align.cpmx1)
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align.floatwork)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a3, $zero
	move	$a4, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %clearvec.exit
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	xvld	$xr19, $sp, 368                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$t3, $s0
	move	$t4, $s1
	beqz	$a0, .LBB3_43
# %bb.39:
	blez	$s2, .LBB3_42
# %bb.40:                               # %.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s4, 30, 0
	.p2align	4, , 16
.LBB3_41:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s3, 0
	addi.d	$s3, $s3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_41
.LBB3_42:
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	b	.LBB3_112
.LBB3_43:
	ori	$a0, $zero, 1
	b	.LBB3_111
.LBB3_44:                               # %vector.memcheck
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB3_321
# %bb.45:                               # %vector.memcheck
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_321
# %bb.46:                               # %vector.memcheck
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB3_321
# %bb.47:                               # %vector.memcheck
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB3_321
# %bb.48:                               # %vector.memcheck
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_321
# %bb.49:                               # %vector.memcheck
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB3_321
# %bb.50:                               # %vector.memcheck
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB3_321
# %bb.51:                               # %vector.memcheck
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB3_321
# %bb.52:                               # %vector.memcheck
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.53:                               # %vector.memcheck
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.54:                               # %vector.memcheck
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.55:                               # %vector.memcheck
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.56:                               # %vector.memcheck
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.57:                               # %vector.memcheck
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.58:                               # %vector.memcheck
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB3_321
# %bb.59:                               # %vector.memcheck
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.60:                               # %vector.memcheck
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.61:                               # %vector.memcheck
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.62:                               # %vector.memcheck
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.63:                               # %vector.memcheck
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.64:                               # %vector.memcheck
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
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
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	xvldi	$xr4, -1424
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s0, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s2, $t2
	.p2align	4, , 16
.LBB3_75:                               # %vector.body
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
	addi.d	$s2, $s2, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s0, $s0, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s2, .LBB3_75
# %bb.76:                               # %middle.block
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB3_27
	b	.LBB3_29
.LBB3_77:                               # %vector.memcheck900
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB3_322
# %bb.78:                               # %vector.memcheck900
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_322
# %bb.79:                               # %vector.memcheck900
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB3_322
# %bb.80:                               # %vector.memcheck900
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB3_322
# %bb.81:                               # %vector.memcheck900
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_322
# %bb.82:                               # %vector.memcheck900
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB3_322
# %bb.83:                               # %vector.memcheck900
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB3_322
# %bb.84:                               # %vector.memcheck900
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB3_322
# %bb.85:                               # %vector.memcheck900
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.86:                               # %vector.memcheck900
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.87:                               # %vector.memcheck900
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.88:                               # %vector.memcheck900
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.89:                               # %vector.memcheck900
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.90:                               # %vector.memcheck900
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.91:                               # %vector.memcheck900
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB3_322
# %bb.92:                               # %vector.memcheck900
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.93:                               # %vector.memcheck900
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.94:                               # %vector.memcheck900
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.95:                               # %vector.memcheck900
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.96:                               # %vector.memcheck900
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.97:                               # %vector.memcheck900
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_32
# %bb.98:                               # %vector.memcheck900
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.99:                               # %vector.memcheck900
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.100:                              # %vector.memcheck900
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.101:                              # %vector.memcheck900
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.102:                              # %vector.memcheck900
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB3_32
# %bb.103:                              # %vector.memcheck900
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_32
# %bb.104:                              # %vector.memcheck900
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_32
# %bb.105:                              # %vector.memcheck900
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_32
# %bb.106:                              # %vector.memcheck900
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB3_32
# %bb.107:                              # %vector.ph1031
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	xvldi	$xr4, -1424
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s0, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s2, $t2
	.p2align	4, , 16
.LBB3_108:                              # %vector.body1036
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
	addi.d	$s2, $s2, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s0, $s0, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s2, .LBB3_108
# %bb.109:                              # %middle.block1050
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB3_32
	b	.LBB3_34
.LBB3_110:                              # %clearvec.exit.thread
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
.LBB3_111:                              # %imp_match_out_vead_tateQ.exit
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
.LBB3_112:                              # %imp_match_out_vead_tateQ.exit
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	slli.d	$s3, $s8, 32
	pcalau12i	$a2, %pc_hi20(.LCPI3_2)
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB3_115
# %bb.113:
	beqz	$ra, .LBB3_139
# %bb.114:                              # %.lr.ph.preheader.i523
	slli.d	$a0, $s8, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $t3
	move	$a1, $zero
	move	$fp, $ra
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_116
.LBB3_115:
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx1)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align.cpmx2)
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align.floatwork)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $t3
	move	$a3, $zero
	move	$a4, $ra
	move	$fp, $ra
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB3_116:                              # %clearvec.exit524
	sltui	$a0, $fp, 1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	move	$ra, $fp
	xvld	$xr19, $sp, 368                 # 32-byte Folded Reload
	move	$t3, $s0
	move	$t4, $s1
	bnez	$a0, .LBB3_122
# %bb.117:                              # %iter.check
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	bstrpick.d	$a0, $s8, 31, 0
	ori	$a2, $zero, 4
	bltu	$a0, $a2, .LBB3_120
# %bb.118:                              # %vector.memcheck1053
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $s8, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	bgeu	$t3, $a3, .LBB3_167
# %bb.119:                              # %vector.memcheck1053
	add.d	$a2, $t3, $a2
	bgeu	$a1, $a2, .LBB3_167
.LBB3_120:
	move	$a2, $a1
	move	$a3, $s8
	move	$a4, $t3
	.p2align	4, , 16
.LBB3_121:                              # %.lr.ph.i526
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB3_121
.LBB3_122:                              # %imp_match_out_veadQ.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_132
.LBB3_123:
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.ogcp2g)
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n1_p)
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_h_dg_n2_p)
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a2, 0
	fld.s	$fa6, $a3, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
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
	fld.s	$fa1, $t3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t3, 0
	blez	$s2, .LBB3_127
# %bb.124:                              # %.lr.ph586
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	addi.d	$a4, $s4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	ori	$a5, $zero, 1
	bgeu	$a6, $a7, .LBB3_155
.LBB3_125:                              # %scalar.ph1142.preheader
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_126:                              # %scalar.ph1142
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
	bnez	$a4, .LBB3_126
.LBB3_127:                              # %.preheader556
	blez	$ra, .LBB3_152
# %bb.128:                              # %.lr.ph589
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n1)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	addi.d	$a3, $s8, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -1
	ori	$a6, $zero, 8
	ori	$a4, $zero, 1
	bgeu	$a5, $a6, .LBB3_161
.LBB3_129:                              # %scalar.ph1180.preheader
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a5, $a4, $t3, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB3_130:                              # %scalar.ph1180
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
	bnez	$a3, .LBB3_130
.LBB3_131:                              # %.loopexit557.thread751
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
	b	.LBB3_148
.LBB3_132:                              # %.preheader560
	blez	$ra, .LBB3_140
# %bb.133:                              # %.lr.ph579
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_137
# %bb.134:                              # %vector.ph1094
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI3_1)
	xvreplgr2vr.w	$xr1, $a0
	addi.d	$a5, $t3, 4
	xvldi	$xr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_135:                              # %vector.body1099
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
	bnez	$a6, .LBB3_135
# %bb.136:                              # %middle.block1104
	beq	$a2, $a4, .LBB3_140
.LBB3_137:                              # %scalar.ph1092.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_138:                              # %scalar.ph1092
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
	bnez	$a1, .LBB3_138
	b	.LBB3_140
.LBB3_139:                              # %imp_match_out_veadQ.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_123
.LBB3_140:                              # %.preheader558
	blez	$s2, .LBB3_147
# %bb.141:                              # %.lr.ph582
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s6, %pc_lo12(Q__align.initverticalw)
	addi.d	$a2, $s4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 8
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB3_145
# %bb.142:                              # %vector.ph1109
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 2, 0
	pcalau12i	$a6, %pc_hi20(.LCPI3_1)
	xvld	$xr0, $a6, %pc_lo12(.LCPI3_1)
	xvreplgr2vr.w	$xr1, $a0
	addi.d	$a6, $a1, 4
	xvldi	$xr2, -800
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_143:                              # %vector.body1114
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr1, $xr0
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
	xvaddi.wu	$xr0, $xr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB3_143
# %bb.144:                              # %middle.block1121
	beq	$a3, $a5, .LBB3_147
.LBB3_145:                              # %scalar.ph1107.preheader
	mul.d	$a3, $a0, $a4
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_146:                              # %scalar.ph1107
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
	bnez	$a2, .LBB3_146
.LBB3_147:                              # %.loopexit557
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
	blez	$ra, .LBB3_153
.LBB3_148:                              # %iter.check1204
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mp)
	addi.d	$a2, $s8, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	bltu	$a3, $a4, .LBB3_176
# %bb.149:                              # %vector.memcheck1200
	sub.d	$a4, $a0, $t3
	addi.d	$a4, $a4, 4
	ori	$a6, $zero, 64
	bltu	$a4, $a6, .LBB3_176
# %bb.150:                              # %vector.main.loop.iter.check1206
	ori	$a5, $zero, 16
	lu12i.w	$a4, 287172
	bgeu	$a3, $a5, .LBB3_169
# %bb.151:
	move	$a6, $zero
	b	.LBB3_173
.LBB3_152:                              # %.loopexit557.thread
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
.LBB3_153:                              # %._crit_edge594
	ori	$t2, $zero, 1
	bnez	$ra, .LBB3_179
# %bb.154:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	b	.LBB3_180
.LBB3_155:                              # %vector.memcheck1124
	addi.d	$a7, $a2, 4
	alsl.d	$t1, $a4, $a2, 2
	addi.d	$t0, $a0, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a0, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB3_125
# %bb.156:                              # %vector.memcheck1124
	addi.d	$t0, $a1, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB3_125
# %bb.157:                              # %vector.memcheck1124
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB3_125
# %bb.158:                              # %vector.ph1144
	move	$t1, $a6
	bstrins.d	$t1, $zero, 2, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	xvldrepl.w	$xr0, $a0, 4
	bstrins.d	$a5, $t2, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t2, $t1
	.p2align	4, , 16
.LBB3_159:                              # %vector.body1147
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
	bnez	$t2, .LBB3_159
# %bb.160:                              # %middle.block1159
	bne	$a6, $t1, .LBB3_125
	b	.LBB3_127
.LBB3_161:                              # %vector.memcheck1162
	addi.d	$a6, $t3, 4
	alsl.d	$t0, $a3, $t3, 2
	addi.d	$a7, $a0, 8
	sltu	$a7, $a6, $a7
	sltu	$t1, $a0, $t0
	and	$a7, $a7, $t1
	bnez	$a7, .LBB3_129
# %bb.162:                              # %vector.memcheck1162
	addi.d	$a7, $a1, 4
	sltu	$a7, $a6, $a7
	sltu	$t1, $a1, $t0
	and	$a7, $a7, $t1
	bnez	$a7, .LBB3_129
# %bb.163:                              # %vector.memcheck1162
	addi.d	$a7, $a2, 4
	alsl.d	$t1, $a3, $a2, 2
	sltu	$t1, $a6, $t1
	sltu	$t0, $a7, $t0
	and	$t0, $t1, $t0
	bnez	$t0, .LBB3_129
# %bb.164:                              # %vector.ph1182
	move	$t0, $a5
	bstrins.d	$t0, $zero, 2, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	ori	$t1, $zero, 1
	move	$a4, $a5
	xvldrepl.w	$xr0, $a0, 4
	bstrins.d	$a4, $t1, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t1, $t0
	.p2align	4, , 16
.LBB3_165:                              # %vector.body1185
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a6, 0
	xvld	$xr3, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfmul.s	$xr3, $xr0, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$t1, $t1, -8
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB3_165
# %bb.166:                              # %middle.block1197
	bne	$a5, $t0, .LBB3_129
	b	.LBB3_131
.LBB3_167:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB3_312
# %bb.168:
	move	$a5, $zero
	b	.LBB3_316
.LBB3_169:                              # %vector.ph1207
	move	$a5, $zero
	move	$a6, $a3
	bstrins.d	$a6, $zero, 3, 0
	xvreplve0.w	$xr0, $xr19
	addi.d	$a7, $a1, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a4
	move	$t0, $a6
	.p2align	4, , 16
.LBB3_170:                              # %vector.body1212
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t1, $a7, $a5
	add.d	$t2, $t3, $a5
	xvldx	$xr3, $t3, $a5
	xvld	$xr4, $t2, 32
	xvst	$xr1, $t1, -32
	xvstx	$xr1, $a7, $a5
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t1, $a0, $a5
	xvst	$xr3, $t1, 4
	xvst	$xr4, $t1, 36
	addi.d	$t0, $t0, -16
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB3_170
# %bb.171:                              # %middle.block1217
	beq	$a3, $a6, .LBB3_178
# %bb.172:                              # %vec.epilog.iter.check1222
	andi	$a5, $a3, 12
	beqz	$a5, .LBB3_319
.LBB3_173:                              # %vec.epilog.ph1221
	move	$a7, $a3
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a3
	bstrins.d	$a5, $t0, 1, 0
	vreplvei.w	$vr0, $vr19, 0
	addi.d	$t0, $a1, 4
	slli.d	$t1, $a6, 2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a4
	.p2align	4, , 16
.LBB3_174:                              # %vec.epilog.vector.body1229
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t3, $t1
	vstx	$vr1, $t0, $t1
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a4, $a0, $t1
	vst	$vr3, $a4, 4
	addi.d	$a6, $a6, 4
	addi.d	$t1, $t1, 16
	bnez	$a6, .LBB3_174
# %bb.175:                              # %vec.epilog.middle.block1234
	beq	$a3, $a7, .LBB3_178
.LBB3_176:                              # %vec.epilog.scalar.ph1220.preheader
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI3_2)
	slli.d	$a3, $a5, 2
	addi.d	$a4, $t3, -4
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB3_177:                              # %vec.epilog.scalar.ph1220
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a4, $a3
	stx.w	$zero, $a1, $a3
	fmadd.s	$fa1, $ft11, $fa0, $fa1
	fstx.s	$fa1, $a0, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB3_177
.LBB3_178:
	move	$t2, $zero
.LBB3_179:                              # %._crit_edge594.thread
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $s3, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $t3, $a1
	st.d	$t2, $sp, 440                   # 8-byte Folded Spill
	move	$t2, $zero
.LBB3_180:
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.lastverticalw)
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	fst.s	$fa0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$s0, $a1, %got_pc_lo12(outgap)
	ld.w	$a1, $s0, 0
	sltu	$a2, $zero, $a1
	add.w	$a3, $a2, $s4
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	blt	$a3, $a2, .LBB3_211
# %bb.181:                              # %.lr.ph630
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$t5, $s6, %pc_lo12(Q__align.initverticalw)
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx1)
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx2)
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.floatwork)
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.intwork)
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	slli.d	$a1, $s8, 2
	bstrpick.d	$a1, $a1, 33, 2
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mp)
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.gapz_n2)
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_h_dg_n2_p)
	addi.d	$s1, $a3, 8
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.ogcp2g)
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	st.d	$t0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	st.d	$t0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.og_h_dg_n1_p)
	st.d	$t0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	st.d	$t0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n1)
	st.d	$t0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fgcp1g)
	st.d	$t0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.ogcp1g)
	st.d	$t0, $sp, 264                   # 8-byte Folded Spill
	ori	$t0, $zero, 0
	lu32i.d	$t0, -1
	add.d	$t0, $s3, $t0
	srai.d	$t0, $t0, 30
	st.d	$t0, $sp, 416                   # 8-byte Folded Spill
	addi.w	$t0, $s8, -1
	st.d	$t0, $sp, 240                   # 8-byte Folded Spill
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t1, $t0, 2
	addi.d	$t1, $t1, 4
	st.d	$t1, $sp, 136                   # 8-byte Folded Spill
	addi.d	$t1, $t0, 1
	bstrpick.d	$t0, $t1, 32, 4
	slli.d	$t6, $t0, 4
	slli.d	$t0, $t0, 6
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$t0, $t1, 32, 2
	slli.d	$t7, $t0, 2
	slli.d	$t0, $t0, 4
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s6, $a0, 4
	addi.d	$s2, $a1, 4
	addi.d	$s4, $a2, 4
	addi.d	$s0, $a4, 4
	addi.d	$s7, $a5, 4
	addi.d	$fp, $a6, 4
	addi.d	$s5, $a3, 4
	addi.d	$s3, $a7, 4
	movgr2fr.w	$fs0, $zero
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$t2, $sp, 352                   # 8-byte Folded Spill
	or	$a0, $t2, $a0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ijp)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$t6, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a0, $s8, $t6
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	andi	$a0, $t1, 12
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	sub.d	$a0, $s8, $t7
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$t7, $sp, 72                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $t7
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	st.d	$t5, $sp, 400                   # 8-byte Folded Spill
	b	.LBB3_183
	.p2align	4, , 16
.LBB3_182:                              # %._crit_edge622
                                        #   in Loop: Header=BB3_183 Depth=1
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	fldx.s	$fa0, $t2, $a2
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a1
	move	$s8, $a0
	move	$t3, $t2
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_212
.LBB3_183:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_204 Depth 2
                                        #     Child Loop BB3_208 Depth 2
                                        #     Child Loop BB3_191 Depth 2
                                        #     Child Loop BB3_195 Depth 2
	addi.d	$t6, $s8, -1
	slli.d	$a0, $t6, 2
	fldx.s	$fa0, $t5, $a0
	move	$t2, $t4
	move	$t4, $t3
	fst.s	$fa0, $t3, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB3_186
# %bb.184:                              #   in Loop: Header=BB3_183 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_192
# %bb.185:                              # %clearvec.exit529.thread
                                        #   in Loop: Header=BB3_183 Depth=1
	move	$a0, $t2
	move	$a1, $zero
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.d	$t4, $sp, 472                   # 8-byte Folded Spill
	st.d	$t2, $sp, 464                   # 8-byte Folded Spill
	st.d	$t6, $sp, 456                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_187
	b	.LBB3_192
	.p2align	4, , 16
.LBB3_186:                              # %clearvec.exit529
                                        #   in Loop: Header=BB3_183 Depth=1
	move	$a0, $t2
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $ra
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	st.d	$t4, $sp, 472                   # 8-byte Folded Spill
	st.d	$t2, $sp, 464                   # 8-byte Folded Spill
	st.d	$t6, $sp, 456                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_192
.LBB3_187:                              # %iter.check1247
                                        #   in Loop: Header=BB3_183 Depth=1
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB3_190
# %bb.188:                              # %vector.memcheck1238
                                        #   in Loop: Header=BB3_183 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	bgeu	$t2, $a0, .LBB3_201
# %bb.189:                              # %vector.memcheck1238
                                        #   in Loop: Header=BB3_183 Depth=1
	add.d	$a0, $t2, $a1
	bgeu	$a2, $a0, .LBB3_201
.LBB3_190:                              #   in Loop: Header=BB3_183 Depth=1
	move	$a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $t2
	.p2align	4, , 16
.LBB3_191:                              # %.lr.ph.i532
                                        #   Parent Loop BB3_183 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a3
	bnez	$a2, .LBB3_191
.LBB3_192:                              # %imp_match_out_veadQ.exit537
                                        #   in Loop: Header=BB3_183 Depth=1
	slli.d	$a1, $s8, 2
	fldx.s	$fa0, $t5, $a1
	fst.s	$fa0, $t2, 0
	addi.d	$a0, $s8, 1
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_182
# %bb.193:                              # %.lr.ph621.preheader
                                        #   in Loop: Header=BB3_183 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	fldx.s	$fa0, $a5, $a1
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	fldx.s	$fa1, $a5, $a1
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	fldx.s	$fa2, $a5, $a1
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	fldx.s	$fa3, $a5, $a1
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa4, $a6, $a1
	slli.d	$a5, $a0, 2
	fldx.s	$fa5, $a6, $a5
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	fldx.s	$fa6, $a5, $a1
	fld.s	$ft0, $t4, 0
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	fld.s	$ft1, $a5, %pc_lo12(.LCPI3_2)
	slli.d	$a5, $s8, 3
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a5
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	fldx.s	$fa7, $a5, $a1
	xvld	$xr10, $sp, 368                 # 32-byte Folded Reload
	fmadd.s	$ft0, $ft2, $ft1, $ft0
	addi.d	$a5, $t2, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB3_195
	.p2align	4, , 16
.LBB3_194:                              #   in Loop: Header=BB3_195 Depth=2
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
	beq	$ra, $a2, .LBB3_182
.LBB3_195:                              # %.lr.ph621
                                        #   Parent Loop BB3_183 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s7, $a3
	fldx.s	$ft1, $t4, $a3
	fldx.s	$ft3, $s3, $a3
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $fp, $a3
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s5, $a3
	fmul.s	$ft4, $fa6, $ft4
	fldx.s	$ft5, $s4, $a3
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a6, $a3
	bcnez	$fcc0, .LBB3_197
# %bb.196:                              #   in Loop: Header=BB3_195 Depth=2
	add.d	$t0, $a4, $a7
	stx.w	$t0, $a6, $a3
	fmov.s	$fs0, $ft2
.LBB3_197:                              #   in Loop: Header=BB3_195 Depth=2
	add.d	$t0, $s1, $a3
	fld.s	$ft4, $t0, 0
	fldx.s	$ft3, $s6, $a3
	fldx.s	$ft2, $s0, $a3
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB3_199
# %bb.198:                              #   in Loop: Header=BB3_195 Depth=2
	ldx.w	$t1, $s2, $a3
	sub.d	$t1, $s8, $t1
	stx.w	$t1, $a6, $a3
	fmov.s	$fs0, $ft4
.LBB3_199:                              #   in Loop: Header=BB3_195 Depth=2
	fld.s	$ft4, $t0, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB3_194
# %bb.200:                              #   in Loop: Header=BB3_195 Depth=2
	fstx.s	$ft4, $s6, $a3
	stx.w	$t6, $s2, $a3
	b	.LBB3_194
.LBB3_201:                              # %vector.main.loop.iter.check1249
                                        #   in Loop: Header=BB3_183 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB3_203
# %bb.202:                              #   in Loop: Header=BB3_183 Depth=1
	move	$a4, $zero
	b	.LBB3_207
.LBB3_203:                              # %vector.body1253.preheader
                                        #   in Loop: Header=BB3_183 Depth=1
	addi.d	$a0, $t2, 32
	addi.d	$a1, $a2, 32
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_204:                              # %vector.body1253
                                        #   Parent Loop BB3_183 Depth=1
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
	bnez	$a3, .LBB3_204
# %bb.205:                              # %middle.block1262
                                        #   in Loop: Header=BB3_183 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_192
# %bb.206:                              # %vec.epilog.iter.check1267
                                        #   in Loop: Header=BB3_183 Depth=1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_210
.LBB3_207:                              # %vec.epilog.ph1266
                                        #   in Loop: Header=BB3_183 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $t2, $a1
	alsl.d	$a3, $a4, $t2, 2
	alsl.d	$a2, $a4, $a2, 2
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB3_208:                              # %vec.epilog.vector.body1273
                                        #   Parent Loop BB3_183 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a3, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB3_208
# %bb.209:                              # %vec.epilog.middle.block1282
                                        #   in Loop: Header=BB3_183 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	bne	$a3, $a4, .LBB3_191
	b	.LBB3_192
.LBB3_210:                              #   in Loop: Header=BB3_183 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $t2, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_191
.LBB3_211:
	movgr2fr.w	$fs0, $zero
	bnez	$a1, .LBB3_227
	b	.LBB3_213
.LBB3_212:                              # %._crit_edge631.loopexit
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $s0, 0
	move	$t3, $t2
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_227
.LBB3_213:                              # %.preheader555
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_220
# %bb.214:                              # %.lr.ph636
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_218
# %bb.215:                              # %vector.ph1293
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	xvld	$xr1, $a5, %pc_lo12(.LCPI3_3)
	pcalau12i	$a5, %pc_hi20(.LCPI3_4)
	xvld	$xr2, $a5, %pc_lo12(.LCPI3_4)
	xvreplgr2vr.d	$xr3, $s8
	addi.d	$a5, $t3, 4
	xvldi	$xr4, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_216:                              # %vector.body1300
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
	bnez	$a6, .LBB3_216
# %bb.217:                              # %middle.block1307
	beq	$a2, $a4, .LBB3_220
.LBB3_218:                              # %scalar.ph1291.preheader
	sub.w	$a2, $s8, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_219:                              # %scalar.ph1291
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
	bnez	$a1, .LBB3_219
.LBB3_220:                              # %.preheader554
	blez	$s2, .LBB3_227
# %bb.221:                              # %.lr.ph639
	bstrpick.d	$a0, $s4, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $s4, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB3_225
# %bb.222:                              # %vector.ph1312
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	pcalau12i	$a5, %pc_hi20(.LCPI3_5)
	vld	$vr3, $a5, %pc_lo12(.LCPI3_5)
	xvreplve0.d	$xr4, $xr1
	addi.d	$a5, $a1, 4
	xvldi	$xr5, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_223:                              # %vector.body1319
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
	bnez	$a6, .LBB3_223
# %bb.224:                              # %middle.block1326
	beq	$a3, $a4, .LBB3_227
.LBB3_225:                              # %scalar.ph1310.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_226:                              # %scalar.ph1310
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
	bnez	$a2, .LBB3_226
.LBB3_227:                              # %.loopexit
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(Q__align.lastverticalw)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(Q__align.mseq1)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Q__align.mseq2)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(Q__align.ijp)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_229
# %bb.228:
	st.d	$s7, $sp, 0
	move	$a0, $t3
	move	$a1, $s3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s2
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_302
.LBB3_229:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$fp, $t3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ori	$a3, $zero, 1
	addi.w	$ra, $s7, 0
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	addi.w	$a2, $s5, 0
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $a3, .LBB3_240
# %bb.230:
	move	$a7, $fp
	fld.s	$fa0, $s3, 0
	blez	$ra, .LBB3_235
# %bb.231:                              # %.lr.ph.i538
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB3_233
	.p2align	4, , 16
.LBB3_232:                              #   in Loop: Header=BB3_233 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB3_235
.LBB3_233:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_232
# %bb.234:                              #   in Loop: Header=BB3_233 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_232
.LBB3_235:                              # %.preheader2.i
	blez	$a2, .LBB3_240
# %bb.236:                              # %.lr.ph7.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	slli.d	$a3, $a5, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $a5, 30, 0
	sub.d	$a5, $zero, $a5
	b	.LBB3_238
	.p2align	4, , 16
.LBB3_237:                              #   in Loop: Header=BB3_238 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 4
	beqz	$a4, .LBB3_240
.LBB3_238:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_237
# %bb.239:                              #   in Loop: Header=BB3_238 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_237
.LBB3_240:                              # %.loopexit.i
	bltz	$ra, .LBB3_248
# %bb.241:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_243
# %bb.242:
	move	$a3, $zero
	b	.LBB3_246
.LBB3_243:                              # %vector.ph1331
	pcalau12i	$a4, %pc_hi20(.LCPI3_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s2, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_244:                              # %vector.body1334
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
	bnez	$a5, .LBB3_244
# %bb.245:                              # %middle.block1341
	beq	$a1, $a3, .LBB3_248
.LBB3_246:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $s2, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB3_247:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB3_247
.LBB3_248:                              # %.preheader1.i
	ld.d	$a1, $sp, 576
	bltz	$a2, .LBB3_262
# %bb.249:                              # %iter.check1347
	ld.d	$a3, $s2, 0
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	addi.d	$a6, $a4, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_251
# %bb.250:
	move	$a5, $zero
	b	.LBB3_260
.LBB3_251:                              # %vector.main.loop.iter.check1349
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB3_253
# %bb.252:
	move	$a5, $zero
	b	.LBB3_257
.LBB3_253:                              # %vector.ph1350
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI3_7)
	xvld	$xr0, $a7, %pc_lo12(.LCPI3_7)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_254:                              # %vector.body1353
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_254
# %bb.255:                              # %middle.block1359
	beq	$a4, $a5, .LBB3_262
# %bb.256:                              # %vec.epilog.iter.check1364
	andi	$a7, $a6, 12
	beqz	$a7, .LBB3_260
.LBB3_257:                              # %vec.epilog.ph1363
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI3_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI3_8)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB3_258:                              # %vec.epilog.vector.body1371
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB3_258
# %bb.259:                              # %vec.epilog.middle.block1376
	beq	$a4, $a5, .LBB3_262
.LBB3_260:                              # %vec.epilog.scalar.ph1362.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_261:                              # %vec.epilog.scalar.ph1362
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_261
.LBB3_262:                              # %._crit_edge.i
	st.d	$s1, $sp, 456                   # 8-byte Folded Spill
	add.d	$a3, $s1, $ra
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	add.d	$a3, $a0, $ra
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_294
# %bb.263:                              # %.lr.ph41.i.preheader
	move	$a7, $zero
	ori	$a2, $zero, 111
	ori	$a3, $zero, 45
	ori	$a4, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a5, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	move	$a0, $s2
	.p2align	4, , 16
.LBB3_264:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_270 Depth 2
                                        #     Child Loop BB3_281 Depth 2
                                        #     Child Loop BB3_277 Depth 2
                                        #     Child Loop BB3_286 Depth 2
	addi.w	$t1, $s7, 0
	slli.d	$t4, $t1, 3
	ldx.d	$t0, $s2, $t4
	addi.w	$t2, $a6, 0
	slli.d	$t5, $t2, 2
	ldx.w	$t3, $t0, $t5
	bltz	$t3, .LBB3_272
# %bb.265:                              #   in Loop: Header=BB3_264 Depth=1
	beqz	$t3, .LBB3_293
# %bb.266:                              #   in Loop: Header=BB3_264 Depth=1
	sub.d	$t0, $s7, $t3
	move	$t3, $s8
	nor	$t6, $t0, $zero
	add.w	$t7, $s7, $t6
	beqz	$t7, .LBB3_273
.LBB3_267:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB3_264 Depth=1
	bltu	$t7, $a5, .LBB3_279
# %bb.268:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB3_264 Depth=1
	sub.d	$t8, $s3, $s5
	bltu	$t8, $a5, .LBB3_279
# %bb.269:                              # %vector.ph1408
                                        #   in Loop: Header=BB3_264 Depth=1
	bstrpick.d	$s0, $t7, 31, 0
	bstrpick.d	$t8, $s0, 31, 5
	slli.d	$s1, $t8, 5
	sub.d	$t7, $t7, $s1
	sub.d	$t8, $s5, $s1
	sub.d	$fp, $s3, $s1
	addi.d	$s2, $s3, -32
	addi.d	$s3, $s5, -32
	move	$s5, $s1
	.p2align	4, , 16
.LBB3_270:                              # %vector.body1412
                                        #   Parent Loop BB3_264 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s2, 0
	xvst	$xr4, $s3, 0
	addi.d	$s5, $s5, -32
	addi.d	$s2, $s2, -32
	addi.d	$s3, $s3, -32
	bnez	$s5, .LBB3_270
# %bb.271:                              # %middle.block1419
                                        #   in Loop: Header=BB3_264 Depth=1
	move	$s2, $a0
	bne	$s1, $s0, .LBB3_280
	b	.LBB3_282
	.p2align	4, , 16
.LBB3_272:                              #   in Loop: Header=BB3_264 Depth=1
	addi.d	$t0, $s7, -1
	nor	$t6, $t0, $zero
	add.w	$t7, $s7, $t6
	bnez	$t7, .LBB3_267
	.p2align	4, , 16
.LBB3_273:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB3_264 Depth=1
	beq	$t3, $s8, .LBB3_283
.LBB3_274:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_264 Depth=1
	addi.w	$t6, $zero, -17
	nor	$fp, $t3, $zero
	bltu	$t6, $t3, .LBB3_284
# %bb.275:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_264 Depth=1
	sub.d	$t6, $s3, $s5
	bltu	$t6, $a4, .LBB3_284
# %bb.276:                              # %vector.ph1385
                                        #   in Loop: Header=BB3_264 Depth=1
	bstrpick.d	$t6, $fp, 30, 4
	slli.d	$s0, $t6, 4
	sub.d	$t8, $fp, $s0
	sub.d	$t6, $s5, $s0
	sub.d	$t7, $s3, $s0
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a7, 0
	addi.d	$a7, $s3, -8
	addi.d	$s1, $s5, -8
	move	$s2, $s0
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB3_277:                              # %vector.body1389
                                        #   Parent Loop BB3_264 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a7, -8
	vst	$vr2, $s1, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s2, $s2, -16
	addi.d	$a7, $a7, -16
	addi.d	$s1, $s1, -16
	bnez	$s2, .LBB3_277
# %bb.278:                              # %middle.block1397
                                        #   in Loop: Header=BB3_264 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$a7, $xr5, 0
	move	$s2, $a0
	bne	$s0, $fp, .LBB3_285
	b	.LBB3_287
	.p2align	4, , 16
.LBB3_279:                              #   in Loop: Header=BB3_264 Depth=1
	move	$t8, $s5
	move	$fp, $s3
.LBB3_280:                              # %.lr.ph19.i.preheader1427
                                        #   in Loop: Header=BB3_264 Depth=1
	move	$s0, $t8
	move	$s1, $fp
	.p2align	4, , 16
.LBB3_281:                              # %.lr.ph19.i
                                        #   Parent Loop BB3_264 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$fp, $s1, -1
	st.b	$a2, $s1, -1
	addi.d	$t8, $s0, -1
	addi.w	$t7, $t7, -1
	st.b	$a3, $s0, -1
	move	$s0, $t8
	move	$s1, $fp
	bnez	$t7, .LBB3_281
.LBB3_282:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB3_264 Depth=1
	add.d	$a7, $s7, $a7
	add.d	$a7, $t6, $a7
	move	$s3, $fp
	move	$s5, $t8
	bne	$t3, $s8, .LBB3_274
.LBB3_283:                              #   in Loop: Header=BB3_264 Depth=1
	move	$t7, $s3
	move	$t6, $s5
	bne	$t1, $ra, .LBB3_288
	b	.LBB3_290
	.p2align	4, , 16
.LBB3_284:                              #   in Loop: Header=BB3_264 Depth=1
	move	$t8, $fp
	move	$t6, $s5
	move	$t7, $s3
.LBB3_285:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB3_264 Depth=1
	add.d	$a7, $a7, $t8
	.p2align	4, , 16
.LBB3_286:                              # %.lr.ph29.i
                                        #   Parent Loop BB3_264 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t7, -1
	addi.d	$t7, $t7, -1
	st.b	$a2, $t6, -1
	addi.w	$t8, $t8, -1
	addi.d	$t6, $t6, -1
	bnez	$t8, .LBB3_286
.LBB3_287:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_264 Depth=1
	beq	$t1, $ra, .LBB3_290
.LBB3_288:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_264 Depth=1
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
	addi.w	$t8, $t8, 0
	beq	$t2, $t8, .LBB3_290
# %bb.289:                              #   in Loop: Header=BB3_264 Depth=1
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $t8, %pc_lo12(impmtx)
	ldx.d	$t4, $t8, $t4
	fldx.s	$fa5, $t4, $t5
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB3_290:                              #   in Loop: Header=BB3_264 Depth=1
	blez	$t1, .LBB3_295
# %bb.291:                              #   in Loop: Header=BB3_264 Depth=1
	blez	$t2, .LBB3_295
# %bb.292:                              #   in Loop: Header=BB3_264 Depth=1
	add.d	$a6, $t3, $a6
	addi.d	$s3, $t7, -1
	st.b	$a2, $t7, -1
	addi.d	$s5, $t6, -1
	addi.w	$a7, $a7, 2
	st.b	$a2, $t6, -1
	move	$s7, $t0
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	bge	$t0, $a7, .LBB3_264
	b	.LBB3_294
	.p2align	4, , 16
.LBB3_293:                              #   in Loop: Header=BB3_264 Depth=1
	addi.d	$t0, $s7, -1
	move	$t3, $s8
	nor	$t6, $t0, $zero
	add.w	$t7, $s7, $t6
	bnez	$t7, .LBB3_267
	b	.LBB3_273
.LBB3_294:                              # %._crit_edge42.i
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bgtz	$a0, .LBB3_296
	b	.LBB3_298
.LBB3_295:
	move	$s3, $t7
	move	$s5, $t6
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blez	$a0, .LBB3_298
.LBB3_296:                              # %.lr.ph50.preheader.i
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_297:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB3_297
.LBB3_298:                              # %.preheader.i
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	blez	$s7, .LBB3_301
# %bb.299:                              # %.lr.ph52.preheader.i
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$s0, $s7
	.p2align	4, , 16
.LBB3_300:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB3_300
.LBB3_301:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
.LBB3_302:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_311
# %bb.303:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_311
# %bb.304:
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	blez	$s0, .LBB3_307
.LBB3_305:                              # %.lr.ph642
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Q__align.mseq1)
	.p2align	4, , 16
.LBB3_306:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB3_306
.LBB3_307:                              # %.preheader
	blez	$s7, .LBB3_310
# %bb.308:                              # %.lr.ph644
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Q__align.mseq2)
	.p2align	4, , 16
.LBB3_309:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s7, $s7, -1
	addi.d	$s5, $s5, 8
	bnez	$s7, .LBB3_309
.LBB3_310:                              # %._crit_edge645
	fmov.s	$fa0, $fs0
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
.LBB3_311:
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
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	bgtz	$s0, .LBB3_305
	b	.LBB3_307
.LBB3_312:                              # %vector.ph1063
	bstrpick.d	$a2, $s8, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $t3, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	.p2align	4, , 16
.LBB3_313:                              # %vector.body1066
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
	bnez	$a4, .LBB3_313
# %bb.314:                              # %middle.block1074
	beq	$a0, $a5, .LBB3_122
# %bb.315:                              # %vec.epilog.iter.check
	andi	$a2, $s8, 12
	beqz	$a2, .LBB3_320
.LBB3_316:                              # %vec.epilog.ph
	bstrpick.d	$a4, $s8, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $s8, 3
	alsl.d	$a4, $a4, $t3, 4
	alsl.d	$a7, $a5, $t3, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_317:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB3_317
# %bb.318:                              # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB3_121
	b	.LBB3_122
.LBB3_319:
	addi.d	$a5, $a6, 1
	b	.LBB3_176
.LBB3_320:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $s8, $a5
	alsl.d	$a4, $a5, $t3, 2
	b	.LBB3_121
.LBB3_321:
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_27
.LBB3_322:
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_32
.Lfunc_end3:
	.size	Q__align, .Lfunc_end3-Q__align
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
	beqz	$a4, .LBB4_14
# %bb.9:                                # %.lr.ph73.preheader
	addi.d	$a1, $sp, 920
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_10:                               # %._crit_edge
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB4_14
.LBB4_11:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	ld.d	$a3, $a6, 0
	ld.wu	$a2, $a3, 0
	addi.w	$a7, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB4_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$a3, $a3, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB4_13:                               #   Parent Loop BB4_11 Depth=1
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
	bgez	$t0, .LBB4_13
	b	.LBB4_10
.LBB4_14:                               # %._crit_edge74
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
.Lfunc_end4:
	.size	match_calc, .Lfunc_end4-match_calc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Atracking
.LCPI5_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI5_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI5_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
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
	addi.w	$t0, $s7, 0
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
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
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
	ldx.d	$a6, $a7, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_3
.LBB5_6:                                # %.preheader2
	blez	$t0, .LBB5_11
# %bb.7:                                # %.lr.ph7
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
# %bb.12:                               # %.lr.ph10.preheader
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
.LBB5_17:                               # %.lr.ph10.preheader82
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB5_18:                               # %.lr.ph10
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB5_18
.LBB5_19:                               # %.preheader1
	bltz	$t0, .LBB5_33
# %bb.20:                               # %iter.check
	ld.d	$a2, $ra, 0
	addi.d	$a5, $s7, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB5_22
# %bb.21:
	move	$a4, $zero
	b	.LBB5_31
.LBB5_22:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB5_24
# %bb.23:
	move	$a4, $zero
	b	.LBB5_28
.LBB5_24:                               # %vector.ph10
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI5_1)
	xvld	$xr0, $a6, %pc_lo12(.LCPI5_1)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB5_25:                               # %vector.body13
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB5_25
# %bb.26:                               # %middle.block19
	beq	$a3, $a4, .LBB5_33
# %bb.27:                               # %vec.epilog.iter.check
	andi	$a6, $a5, 12
	beqz	$a6, .LBB5_31
.LBB5_28:                               # %vec.epilog.ph
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI5_2)
	vld	$vr0, $a4, %pc_lo12(.LCPI5_2)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB5_29:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB5_29
# %bb.30:                               # %vec.epilog.middle.block
	beq	$a3, $a4, .LBB5_33
.LBB5_31:                               # %vec.epilog.scalar.ph.preheader
	nor	$a5, $a4, $zero
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB5_32:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB5_32
.LBB5_33:                               # %._crit_edge
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	add.d	$s2, $a2, $t0
	stx.b	$zero, $a2, $t0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $a0, $a1
	add.d	$s1, $a1, $t0
	stx.b	$zero, $a1, $t0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltz	$a0, .LBB5_63
# %bb.34:                               # %.lr.ph41.preheader
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
.LBB5_35:                               # %.lr.ph41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_54 Depth 2
                                        #     Child Loop BB5_58 Depth 2
                                        #     Child Loop BB5_43 Depth 2
                                        #     Child Loop BB5_47 Depth 2
	addi.w	$a7, $s8, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $ra, $a6
	addi.w	$t0, $s7, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB5_38
# %bb.36:                               #   in Loop: Header=BB5_35 Depth=1
	beqz	$t1, .LBB5_49
# %bb.37:                               #   in Loop: Header=BB5_35 Depth=1
	sub.d	$a6, $s8, $t1
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_38:                               #   in Loop: Header=BB5_35 Depth=1
	addi.d	$a6, $s8, -1
	nor	$t2, $a6, $zero
	add.w	$t3, $s8, $t2
	bnez	$t3, .LBB5_51
	.p2align	4, , 16
.LBB5_39:                               # %._crit_edge20
                                        #   in Loop: Header=BB5_35 Depth=1
	beq	$t1, $a0, .LBB5_60
.LBB5_40:                               # %.lr.ph29.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	addi.w	$t2, $zero, -17
	nor	$t5, $t1, $zero
	bltu	$t2, $t1, .LBB5_45
# %bb.41:                               # %.lr.ph29.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	sub.d	$t2, $s2, $s1
	bltu	$t2, $a3, .LBB5_45
# %bb.42:                               # %vector.ph34
                                        #   in Loop: Header=BB5_35 Depth=1
	bstrpick.d	$t2, $t5, 30, 4
	slli.d	$t6, $t2, 4
	sub.d	$t4, $t5, $t6
	sub.d	$t2, $s1, $t6
	sub.d	$t3, $s2, $t6
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a5, 0
	addi.d	$a5, $s2, -8
	addi.d	$t7, $s1, -8
	move	$t8, $t6
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB5_43:                               # %vector.body37
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a5, -8
	vst	$vr2, $t7, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$t8, $t8, -16
	addi.d	$a5, $a5, -16
	addi.d	$t7, $t7, -16
	bnez	$t8, .LBB5_43
# %bb.44:                               # %middle.block43
                                        #   in Loop: Header=BB5_35 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$a5, $xr5, 0
	bne	$t6, $t5, .LBB5_46
	b	.LBB5_48
	.p2align	4, , 16
.LBB5_45:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t4, $t5
	move	$t2, $s1
	move	$t3, $s2
.LBB5_46:                               # %.lr.ph29.preheader72
                                        #   in Loop: Header=BB5_35 Depth=1
	add.d	$a5, $a5, $t4
	.p2align	4, , 16
.LBB5_47:                               # %.lr.ph29
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t3, -1
	addi.d	$t3, $t3, -1
	st.b	$a1, $t2, -1
	addi.w	$t4, $t4, -1
	addi.d	$t2, $t2, -1
	bnez	$t4, .LBB5_47
.LBB5_48:                               # %._crit_edge30
                                        #   in Loop: Header=BB5_35 Depth=1
	bgtz	$a7, .LBB5_61
	b	.LBB5_68
	.p2align	4, , 16
.LBB5_49:                               #   in Loop: Header=BB5_35 Depth=1
	addi.d	$a6, $s8, -1
.LBB5_50:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t1, $a0
	nor	$t2, $a6, $zero
	add.w	$t3, $s8, $t2
	beqz	$t3, .LBB5_39
.LBB5_51:                               # %.lr.ph19.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	bltu	$t3, $a4, .LBB5_56
# %bb.52:                               # %.lr.ph19.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	sub.d	$t4, $s2, $s1
	bltu	$t4, $a4, .LBB5_56
# %bb.53:                               # %vector.ph54
                                        #   in Loop: Header=BB5_35 Depth=1
	bstrpick.d	$t6, $t3, 31, 0
	bstrpick.d	$t4, $t6, 31, 5
	slli.d	$t7, $t4, 5
	sub.d	$t3, $t3, $t7
	sub.d	$t4, $s1, $t7
	sub.d	$t5, $s2, $t7
	addi.d	$t8, $s2, -32
	addi.d	$s1, $s1, -32
	move	$s2, $t7
	.p2align	4, , 16
.LBB5_54:                               # %vector.body58
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $t8, 0
	xvst	$xr4, $s1, 0
	addi.d	$s2, $s2, -32
	addi.d	$t8, $t8, -32
	addi.d	$s1, $s1, -32
	bnez	$s2, .LBB5_54
# %bb.55:                               # %middle.block65
                                        #   in Loop: Header=BB5_35 Depth=1
	bne	$t7, $t6, .LBB5_57
	b	.LBB5_59
	.p2align	4, , 16
.LBB5_56:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t4, $s1
	move	$t5, $s2
.LBB5_57:                               # %.lr.ph19.preheader73
                                        #   in Loop: Header=BB5_35 Depth=1
	move	$t6, $t4
	move	$t7, $t5
	.p2align	4, , 16
.LBB5_58:                               # %.lr.ph19
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t5, $t7, -1
	st.b	$a1, $t7, -1
	addi.d	$t4, $t6, -1
	addi.w	$t3, $t3, -1
	st.b	$a2, $t6, -1
	move	$t6, $t4
	move	$t7, $t5
	bnez	$t3, .LBB5_58
.LBB5_59:                               # %._crit_edge20.loopexit
                                        #   in Loop: Header=BB5_35 Depth=1
	add.d	$a5, $s8, $a5
	add.d	$a5, $t2, $a5
	move	$s2, $t5
	move	$s1, $t4
	bne	$t1, $a0, .LBB5_40
.LBB5_60:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t3, $s2
	move	$t2, $s1
	blez	$a7, .LBB5_68
.LBB5_61:                               # %._crit_edge30
                                        #   in Loop: Header=BB5_35 Depth=1
	blez	$t0, .LBB5_68
# %bb.62:                               #   in Loop: Header=BB5_35 Depth=1
	add.d	$s7, $t1, $s7
	addi.d	$s2, $t3, -1
	st.b	$a1, $t3, -1
	addi.d	$s1, $t2, -1
	addi.w	$a5, $a5, 2
	st.b	$a1, $t2, -1
	move	$s8, $a6
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	bge	$a6, $a5, .LBB5_35
.LBB5_63:                               # %._crit_edge42
	blez	$s4, .LBB5_65
	.p2align	4, , 16
.LBB5_64:                               # %.lr.ph50
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s3, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 8
	bnez	$s4, .LBB5_64
.LBB5_65:                               # %.preheader
	blez	$s6, .LBB5_67
	.p2align	4, , 16
.LBB5_66:                               # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, -1
	addi.d	$fp, $fp, 8
	bnez	$s6, .LBB5_66
.LBB5_67:                               # %._crit_edge53
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
.LBB5_68:
	move	$s2, $t3
	move	$s1, $t2
	bgtz	$s4, .LBB5_64
	b	.LBB5_65
.Lfunc_end5:
	.size	Atracking, .Lfunc_end5-Atracking
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Q__align_gapmap
.LCPI6_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI6_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI6_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI6_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI6_7:
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
.LCPI6_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI6_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	Q__align_gapmap
	.p2align	5
	.type	Q__align_gapmap,@function
Q__align_gapmap:                        # @Q__align_gapmap
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
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	st.d	$a4, $sp, 456                   # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$s8, $a2
	move	$s7, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$a1, %pc_hi20(Q__align_gapmap.orlgth1)
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ld.w	$s6, $a1, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.w	$fp, $a0, 0
	pcalau12i	$s3, %pc_hi20(Q__align_gapmap.mseq1)
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.mseq2)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	bnez	$s6, .LBB6_2
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
	st.d	$a0, $s3, %pc_lo12(Q__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.w	$s6, $a1, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.mseq2)
.LBB6_2:
	st.d	$s0, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Q__align_gapmap.orlgth2)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s0, $a1, %pc_lo12(Q__align_gapmap.orlgth2)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	addi.w	$a6, $a0, 0
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.w1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.w2)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.initverticalw)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.lastverticalw)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.m)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.mp)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(Q__align_gapmap.mseq)
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.digf1)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.digf2)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.diaf1)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.diaf2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz1)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz2)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapf1)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapf2)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.ogcp1g)
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.ogcp2g)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fgcp1g)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fgcp2g)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_h_dg_n1_p)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_h_dg_n2_p)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_h_dg_n1_p)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_h_dg_n2_p)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz_n1)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz_n2)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Q__align_gapmap.cpmx1)
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.cpmx2)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.floatwork)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.intwork)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 360                   # 8-byte Folded Spill
	move	$s4, $a1
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	blt	$s6, $s2, .LBB6_4
# %bb.3:
	bge	$s0, $a6, .LBB6_8
.LBB6_4:
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(Q__align_gapmap.match)
	move	$s3, $s4
	blez	$s6, .LBB6_7
# %bb.5:
	blez	$s0, .LBB6_7
# %bb.6:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(Q__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(Q__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
.LBB6_7:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	movgr2fr.w	$fa1, $s1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	addi.w	$s1, $s6, 100
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$s2, $s0, 100
	addi.w	$s4, $s0, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(Q__align_gapmap.match)
	addi.w	$s5, $s6, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.initverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s2, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(Q__align_gapmap.mseq)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.digf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz_n1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(Q__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.cpmx2)
	slt	$a0, $s2, $s1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$a7, $fp
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.intwork)
	st.w	$s6, $s8, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
.LBB6_8:
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	blez	$a0, .LBB6_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $a7, %pc_lo12(Q__align_gapmap.mseq)
	ld.d	$a1, $s3, %pc_lo12(Q__align_gapmap.mseq1)
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
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
.LBB6_11:                               # %.preheader561
	blez	$a5, .LBB6_14
# %bb.12:                               # %.lr.ph564
	ld.d	$a1, $a7, %pc_lo12(Q__align_gapmap.mseq)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	move	$a2, $a5
	move	$a3, $s7
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
	ld.d	$s5, $sp, 568
	movgr2fr.w	$fs0, $fp
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s1, 0
	blt	$a0, $s6, .LBB6_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s0, .LBB6_17
# %bb.16:                               # %._crit_edge705
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
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s0, $a1, %pc_lo12(Q__align_gapmap.orlgth2)
	ld.w	$a1, $s1, 0
.LBB6_20:
	slt	$a2, $a0, $s6
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s6, $a2
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
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
.LBB6_21:
	ld.d	$a1, $s4, %pc_lo12(Q__align_gapmap.cpmx1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 304                  # 32-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(Q__align_gapmap.ijp)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(Q__align_gapmap.ijp)
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	move	$a0, $s3
	move	$a2, $s8
	move	$a3, $s2
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	move	$a0, $s7
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$s1, $sp, 360                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$fp, $sp, 408                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	beqz	$s5, .LBB6_23
# %bb.22:
	ld.d	$a1, $sp, 592
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a6, $sp, 584
	ld.d	$s6, $sp, 576
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s8
	move	$a4, $s2
	move	$s0, $s5
	move	$a5, $s5
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	move	$s8, $s3
	move	$s3, $a6
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s1
	move	$s5, $s6
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	move	$a5, $s6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	move	$a2, $s8
	move	$s8, $s1
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s0
	move	$a6, $s3
	move	$s0, $s3
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s8
	move	$a5, $s5
	move	$a6, $s6
	move	$s3, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s2
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s0
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s7
	move	$s6, $s4
	move	$a3, $s4
	move	$a4, $s8
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s5
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a1, $s0
	move	$s5, $s0
	move	$a2, $s7
	move	$a3, $s6
	move	$s3, $s6
	move	$a4, $s8
	move	$a5, $s4
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a1, $s6
	move	$a2, $fp
	move	$s0, $s1
	move	$s1, $s8
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a1, $s6
	move	$a2, $fp
	move	$a3, $s0
	move	$a4, $s2
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	move	$a5, $s0
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s0
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB6_24
.LBB6_23:
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB6_24:
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $zero, -1
	xvld	$xr19, $sp, 304                 # 32-byte Folded Reload
	fcvt.d.s	$fa0, $ft11
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB6_29
# %bb.25:                               # %.lr.ph567
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.digf2)
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp2g)
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.gapz2)
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	addi.d	$t3, $t1, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
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
.LBB6_29:                               # %._crit_edge568
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blt	$s2, $a0, .LBB6_34
# %bb.30:                               # %.lr.ph571
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.digf1)
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.gapz1)
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.gapz_n1)
	addi.d	$t3, $s4, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB6_77
# %bb.31:
	move	$t2, $zero
.LBB6_32:                               # %scalar.ph1012.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB6_33:                               # %scalar.ph1012
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
.LBB6_34:                               # %._crit_edge572
	ld.d	$a0, $sp, 608
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 600
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t5, $a0, %pc_lo12(Q__align_gapmap.w1)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t6, $a0, %pc_lo12(Q__align_gapmap.w2)
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(RNAscoremtx)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	move	$s0, $t5
	move	$s1, $t6
	bne	$a0, $a1, .LBB6_37
# %bb.35:
	beqz	$s2, .LBB6_110
# %bb.36:                               # %.lr.ph.preheader.i
	ld.d	$s3, $s8, %pc_lo12(Q__align_gapmap.initverticalw)
	slli.d	$a0, $s4, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_38
.LBB6_37:
	ld.d	$s3, $s8, %pc_lo12(Q__align_gapmap.initverticalw)
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align_gapmap.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a3, $zero
	move	$a4, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_38:                               # %clearvec.exit
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 360                   # 8-byte Folded Reload
	xvld	$xr19, $sp, 304                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$t5, $s0
	move	$t6, $s1
	beqz	$a0, .LBB6_43
# %bb.39:
	beqz	$s2, .LBB6_42
# %bb.40:                               # %.lr.ph.i
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s4
	.p2align	4, , 16
.LBB6_41:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	fldx.s	$fa0, $a4, $a1
	fld.s	$fa1, $s3, 0
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $s3, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s3, 0
	move	$s3, $a4
	bnez	$a2, .LBB6_41
.LBB6_42:
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	b	.LBB6_111
.LBB6_43:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB6_111
.LBB6_44:                               # %vector.memcheck
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB6_295
# %bb.45:                               # %vector.memcheck
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB6_295
# %bb.46:                               # %vector.memcheck
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB6_295
# %bb.47:                               # %vector.memcheck
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB6_295
# %bb.48:                               # %vector.memcheck
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB6_295
# %bb.49:                               # %vector.memcheck
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB6_295
# %bb.50:                               # %vector.memcheck
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB6_295
# %bb.51:                               # %vector.memcheck
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB6_295
# %bb.52:                               # %vector.memcheck
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.53:                               # %vector.memcheck
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.54:                               # %vector.memcheck
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.55:                               # %vector.memcheck
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.56:                               # %vector.memcheck
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.57:                               # %vector.memcheck
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.58:                               # %vector.memcheck
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB6_295
# %bb.59:                               # %vector.memcheck
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.60:                               # %vector.memcheck
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.61:                               # %vector.memcheck
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.62:                               # %vector.memcheck
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.63:                               # %vector.memcheck
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.64:                               # %vector.memcheck
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
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
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	xvldi	$xr4, -1424
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
.LBB6_75:                               # %vector.body
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
	bnez	$s5, .LBB6_75
# %bb.76:                               # %middle.block
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB6_27
	b	.LBB6_29
.LBB6_77:                               # %vector.memcheck883
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB6_296
# %bb.78:                               # %vector.memcheck883
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB6_296
# %bb.79:                               # %vector.memcheck883
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB6_296
# %bb.80:                               # %vector.memcheck883
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB6_296
# %bb.81:                               # %vector.memcheck883
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB6_296
# %bb.82:                               # %vector.memcheck883
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB6_296
# %bb.83:                               # %vector.memcheck883
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB6_296
# %bb.84:                               # %vector.memcheck883
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB6_296
# %bb.85:                               # %vector.memcheck883
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.86:                               # %vector.memcheck883
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.87:                               # %vector.memcheck883
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.88:                               # %vector.memcheck883
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.89:                               # %vector.memcheck883
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.90:                               # %vector.memcheck883
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.91:                               # %vector.memcheck883
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB6_296
# %bb.92:                               # %vector.memcheck883
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.93:                               # %vector.memcheck883
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.94:                               # %vector.memcheck883
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.95:                               # %vector.memcheck883
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.96:                               # %vector.memcheck883
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.97:                               # %vector.memcheck883
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	bnez	$s0, .LBB6_32
# %bb.98:                               # %vector.memcheck883
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_32
# %bb.99:                               # %vector.memcheck883
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_32
# %bb.100:                              # %vector.memcheck883
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_32
# %bb.101:                              # %vector.memcheck883
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_32
# %bb.102:                              # %vector.memcheck883
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB6_32
# %bb.103:                              # %vector.memcheck883
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_32
# %bb.104:                              # %vector.memcheck883
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_32
# %bb.105:                              # %vector.memcheck883
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_32
# %bb.106:                              # %vector.memcheck883
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB6_32
# %bb.107:                              # %vector.ph1014
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	xvldi	$xr4, -1424
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
.LBB6_108:                              # %vector.body1019
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
	bnez	$s5, .LBB6_108
# %bb.109:                              # %middle.block1033
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB6_32
	b	.LBB6_34
.LBB6_110:                              # %clearvec.exit.thread
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 360                   # 8-byte Folded Reload
.LBB6_111:                              # %imp_match_out_vead_tateQ_gapmap.exit
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB6_114
# %bb.112:
	beqz	$t4, .LBB6_119
# %bb.113:                              # %.lr.ph.preheader.i531
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $t5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_115
.LBB6_114:
	ld.d	$a1, $fp, %pc_lo12(Q__align_gapmap.cpmx1)
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align_gapmap.intwork)
	ori	$a7, $zero, 1
	move	$a0, $t5
	move	$a3, $zero
	move	$a4, $t4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_115:                              # %clearvec.exit532
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 360                   # 8-byte Folded Reload
	xvld	$xr19, $sp, 304                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$t5, $s0
	move	$t6, $s1
	bnez	$a0, .LBB6_119
# %bb.116:
	beqz	$t4, .LBB6_119
# %bb.117:                              # %.lr.ph.i533.preheader
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	move	$a2, $t5
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
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
	ld.d	$t7, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $t7, 0
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	pcalau12i	$a3, %pc_hi20(.LCPI6_2)
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	bne	$a1, $a2, .LBB6_129
# %bb.120:
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.ogcp2g)
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fgcp2g)
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a2, 0
	fld.s	$fa5, $a3, 0
	fld.s	$fa6, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	ld.d	$a3, $s8, %pc_lo12(Q__align_gapmap.initverticalw)
	movgr2fr.w	$fa7, $zero
	fmadd.s	$fa0, $fa0, $fa1, $fa7
	fld.s	$fa1, $a1, 0
	fld.s	$fa7, $a3, 0
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fadd.s	$fa1, $fa0, $fa7
	fst.s	$fa1, $a3, 0
	fld.s	$fa1, $t5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t5, 0
	blez	$s2, .LBB6_124
# %bb.121:                              # %.lr.ph582
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	addi.d	$a5, $s4, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a7, $a5, -1
	ori	$t0, $zero, 8
	ori	$a6, $zero, 1
	bgeu	$a7, $t0, .LBB6_151
.LBB6_122:                              # %scalar.ph1085.preheader
	alsl.d	$a4, $a6, $a4, 2
	alsl.d	$a3, $a6, $a3, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB6_123:                              # %scalar.ph1085
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a4, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB6_123
.LBB6_124:                              # %.preheader556
	blez	$t4, .LBB6_148
# %bb.125:                              # %.lr.ph585
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.gapz_n1)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	ori	$a5, $zero, 1
	bgeu	$a6, $a7, .LBB6_157
.LBB6_126:                              # %scalar.ph1123.preheader
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a6, $a5, $t5, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB6_127:                              # %scalar.ph1123
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
	bnez	$a4, .LBB6_127
.LBB6_128:                              # %.loopexit557.thread740
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a1, 0
	b	.LBB6_144
.LBB6_129:                              # %.preheader560
	blez	$t4, .LBB6_136
# %bb.130:                              # %.lr.ph575
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 8
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB6_134
# %bb.131:                              # %vector.ph1038
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 2, 0
	pcalau12i	$a6, %pc_hi20(.LCPI6_1)
	xvld	$xr0, $a6, %pc_lo12(.LCPI6_1)
	xvreplgr2vr.w	$xr1, $a1
	addi.d	$a6, $t5, 4
	xvldi	$xr2, -800
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_132:                              # %vector.body1043
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr1, $xr0
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
	xvaddi.wu	$xr0, $xr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_132
# %bb.133:                              # %middle.block1047
	beq	$a3, $a5, .LBB6_136
.LBB6_134:                              # %scalar.ph1036.preheader
	mul.d	$a3, $a1, $a4
	alsl.d	$a5, $a4, $t5, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_135:                              # %scalar.ph1036
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
	bnez	$a2, .LBB6_135
.LBB6_136:                              # %.preheader558
	blez	$s2, .LBB6_143
# %bb.137:                              # %.lr.ph578
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	ld.d	$a2, $s8, %pc_lo12(Q__align_gapmap.initverticalw)
	addi.d	$a3, $s4, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a6, $zero, 8
	ori	$a5, $zero, 1
	bltu	$a4, $a6, .LBB6_141
# %bb.138:                              # %vector.ph1052
	move	$a6, $a4
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $a7, 2, 0
	pcalau12i	$a7, %pc_hi20(.LCPI6_1)
	xvld	$xr0, $a7, %pc_lo12(.LCPI6_1)
	xvreplgr2vr.w	$xr1, $a1
	addi.d	$a7, $a2, 4
	xvldi	$xr2, -800
	move	$t0, $a6
	.p2align	4, , 16
.LBB6_139:                              # %vector.body1057
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr1, $xr0
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a7, 0
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
	xvst	$xr6, $a7, 0
	xvaddi.wu	$xr0, $xr0, 8
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_139
# %bb.140:                              # %middle.block1064
	beq	$a4, $a6, .LBB6_143
.LBB6_141:                              # %scalar.ph1050.preheader
	mul.d	$a4, $a1, $a5
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a3, $a3, $a5
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_142:                              # %scalar.ph1050
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a2, 0
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a2, 0
	add.w	$a4, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB6_142
.LBB6_143:                              # %.loopexit557
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a1, 0
	blez	$t4, .LBB6_149
.LBB6_144:                              # %iter.check
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.mp)
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 4
	ori	$a6, $zero, 1
	bltu	$a4, $a5, .LBB6_170
# %bb.145:                              # %vector.memcheck1143
	sub.d	$a5, $a1, $t5
	addi.d	$a5, $a5, 4
	ori	$a7, $zero, 64
	bltu	$a5, $a7, .LBB6_170
# %bb.146:                              # %vector.main.loop.iter.check
	ori	$a6, $zero, 16
	lu12i.w	$a5, 287172
	bgeu	$a4, $a6, .LBB6_163
# %bb.147:
	move	$a7, $zero
	b	.LBB6_167
.LBB6_148:                              # %.loopexit557.thread
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a1, 0
.LBB6_149:                              # %._crit_edge590
	ori	$t2, $zero, 1
	bnez	$t4, .LBB6_173
# %bb.150:
	movgr2fr.w	$fa0, $zero
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	b	.LBB6_174
.LBB6_151:                              # %vector.memcheck1067
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a5, $a3, 2
	addi.d	$t1, $a1, 8
	sltu	$t1, $t0, $t1
	sltu	$t3, $a1, $t2
	and	$t1, $t1, $t3
	bnez	$t1, .LBB6_122
# %bb.152:                              # %vector.memcheck1067
	addi.d	$t1, $a2, 4
	sltu	$t1, $t0, $t1
	sltu	$t3, $a2, $t2
	and	$t1, $t1, $t3
	bnez	$t1, .LBB6_122
# %bb.153:                              # %vector.memcheck1067
	addi.d	$t1, $a4, 4
	alsl.d	$t3, $a5, $a4, 2
	sltu	$t3, $t0, $t3
	sltu	$t2, $t1, $t2
	and	$t2, $t3, $t2
	bnez	$t2, .LBB6_122
# %bb.154:                              # %vector.ph1087
	move	$t2, $a7
	bstrins.d	$t2, $zero, 2, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ori	$t3, $zero, 1
	move	$a6, $a7
	xvldrepl.w	$xr0, $a1, 4
	bstrins.d	$a6, $t3, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t3, $t2
	.p2align	4, , 16
.LBB6_155:                              # %vector.body1090
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t0, 0
	xvld	$xr3, $t1, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfmul.s	$xr3, $xr0, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $t0, 0
	addi.d	$t0, $t0, 32
	addi.d	$t3, $t3, -8
	addi.d	$t1, $t1, 32
	bnez	$t3, .LBB6_155
# %bb.156:                              # %middle.block1102
	bne	$a7, $t2, .LBB6_122
	b	.LBB6_124
.LBB6_157:                              # %vector.memcheck1105
	addi.d	$a7, $t5, 4
	alsl.d	$t1, $a4, $t5, 2
	addi.d	$t0, $a1, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB6_126
# %bb.158:                              # %vector.memcheck1105
	addi.d	$t0, $a2, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a2, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB6_126
# %bb.159:                              # %vector.memcheck1105
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB6_126
# %bb.160:                              # %vector.ph1125
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
.LBB6_161:                              # %vector.body1128
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
	bnez	$t2, .LBB6_161
# %bb.162:                              # %middle.block1140
	bne	$a6, $t1, .LBB6_126
	b	.LBB6_128
.LBB6_163:                              # %vector.ph1148
	move	$a6, $zero
	move	$a7, $a4
	bstrins.d	$a7, $zero, 3, 0
	xvreplve0.w	$xr0, $xr19
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a5
	move	$t1, $a7
	.p2align	4, , 16
.LBB6_164:                              # %vector.body1153
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
	bnez	$t1, .LBB6_164
# %bb.165:                              # %middle.block1158
	beq	$a4, $a7, .LBB6_172
# %bb.166:                              # %vec.epilog.iter.check
	andi	$a6, $a4, 12
	beqz	$a6, .LBB6_294
.LBB6_167:                              # %vec.epilog.ph
	move	$t0, $a4
	bstrins.d	$t0, $zero, 1, 0
	ori	$t1, $zero, 1
	move	$a6, $a4
	bstrins.d	$a6, $t1, 1, 0
	vreplvei.w	$vr0, $vr19, 0
	addi.d	$t1, $a2, 4
	slli.d	$t2, $a7, 2
	sub.d	$a7, $a7, $t0
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a5
	.p2align	4, , 16
.LBB6_168:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t5, $t2
	vstx	$vr1, $t1, $t2
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a5, $a1, $t2
	vst	$vr3, $a5, 4
	addi.d	$a7, $a7, 4
	addi.d	$t2, $t2, 16
	bnez	$a7, .LBB6_168
# %bb.169:                              # %vec.epilog.middle.block
	beq	$a4, $t0, .LBB6_172
.LBB6_170:                              # %vec.epilog.scalar.ph.preheader
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	fld.s	$fa0, $a4, %pc_lo12(.LCPI6_2)
	slli.d	$a4, $a6, 2
	addi.d	$a5, $t5, -4
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB6_171:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a5, $a4
	stx.w	$zero, $a2, $a4
	fmadd.s	$fa1, $ft11, $fa0, $fa1
	fstx.s	$fa1, $a1, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB6_171
.LBB6_172:
	move	$t2, $zero
.LBB6_173:                              # %._crit_edge590.thread
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a0, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa0, $t5, $a2
	st.d	$t2, $sp, 392                   # 8-byte Folded Spill
	move	$t2, $zero
.LBB6_174:
	ld.w	$s0, $t7, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(Q__align_gapmap.lastverticalw)
	sltu	$a2, $zero, $s0
	add.w	$a4, $a2, $s4
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	fst.s	$fa0, $a3, 0
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	blt	$a4, $a2, .LBB6_192
# %bb.175:                              # %.lr.ph626
	st.d	$t7, $sp, 56                    # 8-byte Folded Spill
	ld.d	$t3, $s8, %pc_lo12(Q__align_gapmap.initverticalw)
	ld.d	$a2, $fp, %pc_lo12(Q__align_gapmap.cpmx1)
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.cpmx2)
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.floatwork)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.intwork)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.ijp)
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.mp)
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	addi.d	$s5, $a4, 8
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fgcp2g)
	ld.d	$t0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.ogcp2g)
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	st.d	$t1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	st.d	$t1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.gapz_n1)
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fgcp1g)
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.ogcp1g)
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	add.d	$a0, $a0, $t1
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$t2, $sp, 264                   # 8-byte Folded Spill
	or	$a0, $a0, $t2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$s2, $a1, 4
	addi.d	$s0, $a2, 4
	addi.d	$fp, $a3, 4
	addi.d	$s1, $a5, 4
	addi.d	$s7, $a6, 4
	addi.d	$s4, $a7, 4
	addi.d	$s6, $a4, 4
	addi.d	$s3, $t0, 4
	movgr2fr.w	$fs0, $zero
	ori	$s8, $zero, 1
	st.d	$t3, $sp, 352                   # 8-byte Folded Spill
	b	.LBB6_177
	.p2align	4, , 16
.LBB6_176:                              # %._crit_edge618
                                        #   in Loop: Header=BB6_177 Depth=1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	fldx.s	$fa0, $t1, $a1
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $t5
	move	$s8, $a0
	move	$t5, $t1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB6_193
.LBB6_177:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_182 Depth 2
                                        #     Child Loop BB6_186 Depth 2
	addi.d	$t2, $s8, -1
	slli.d	$a0, $t2, 2
	fldx.s	$fa0, $t3, $a0
	move	$t1, $t6
	move	$t6, $t5
	fst.s	$fa0, $t5, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	slli.d	$t5, $s8, 2
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB6_180
# %bb.178:                              #   in Loop: Header=BB6_177 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_183
# %bb.179:                              # %clearvec.exit537.thread
                                        #   in Loop: Header=BB6_177 Depth=1
	move	$a0, $t1
	move	$a1, $zero
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$t6, $sp, 440                   # 8-byte Folded Spill
	st.d	$t1, $sp, 432                   # 8-byte Folded Spill
	st.d	$t2, $sp, 424                   # 8-byte Folded Spill
	st.d	$t5, $sp, 416                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_181
	b	.LBB6_183
	.p2align	4, , 16
.LBB6_180:                              # %clearvec.exit537
                                        #   in Loop: Header=BB6_177 Depth=1
	move	$a0, $t1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $t4
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	move	$a7, $zero
	st.d	$t6, $sp, 440                   # 8-byte Folded Spill
	st.d	$t1, $sp, 432                   # 8-byte Folded Spill
	st.d	$t2, $sp, 424                   # 8-byte Folded Spill
	st.d	$t5, $sp, 416                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_183
.LBB6_181:                              # %.lr.ph.i539.preheader
                                        #   in Loop: Header=BB6_177 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $t5
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	move	$a2, $t1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_182:                              # %.lr.ph.i539
                                        #   Parent Loop BB6_177 Depth=1
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
	bnez	$a1, .LBB6_182
.LBB6_183:                              # %imp_match_out_veadQ_gapmap.exit544
                                        #   in Loop: Header=BB6_177 Depth=1
	fldx.s	$fa0, $t3, $t5
	fst.s	$fa0, $t1, 0
	addi.d	$a0, $s8, 1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_176
# %bb.184:                              # %.lr.ph617.preheader
                                        #   in Loop: Header=BB6_177 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $t5
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	fldx.s	$fa1, $a4, $t5
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	fldx.s	$fa2, $a4, $t5
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	fldx.s	$fa3, $a4, $t5
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	fldx.s	$fa4, $a5, $t5
	slli.d	$a4, $a0, 2
	fldx.s	$fa5, $a5, $a4
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	fldx.s	$fa6, $a4, $t5
	fld.s	$ft0, $t6, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	fld.s	$ft1, $a4, %pc_lo12(.LCPI6_2)
	slli.d	$a4, $s8, 3
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a4
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	fldx.s	$fa7, $a4, $t5
	xvld	$xr10, $sp, 304                 # 32-byte Folded Reload
	fmadd.s	$ft0, $ft2, $ft1, $ft0
	addi.d	$a4, $t1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $zero, -1
	b	.LBB6_186
	.p2align	4, , 16
.LBB6_185:                              #   in Loop: Header=BB6_186 Depth=2
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
	beq	$t4, $a1, .LBB6_176
.LBB6_186:                              # %.lr.ph617
                                        #   Parent Loop BB6_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s7, $a2
	fldx.s	$ft1, $t6, $a2
	fldx.s	$ft3, $s3, $a2
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $s4, $a2
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s6, $a2
	fmul.s	$ft4, $fa6, $ft4
	fldx.s	$ft5, $fp, $a2
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a5, $a2
	bcnez	$fcc0, .LBB6_188
# %bb.187:                              #   in Loop: Header=BB6_186 Depth=2
	add.d	$a7, $a3, $a6
	stx.w	$a7, $a5, $a2
	fmov.s	$fs0, $ft2
.LBB6_188:                              #   in Loop: Header=BB6_186 Depth=2
	add.d	$a7, $s5, $a2
	fld.s	$ft4, $a7, 0
	fldx.s	$ft3, $s2, $a2
	fldx.s	$ft2, $s1, $a2
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB6_190
# %bb.189:                              #   in Loop: Header=BB6_186 Depth=2
	ldx.w	$t0, $s0, $a2
	sub.d	$t0, $s8, $t0
	stx.w	$t0, $a5, $a2
	fmov.s	$fs0, $ft4
.LBB6_190:                              #   in Loop: Header=BB6_186 Depth=2
	fld.s	$ft4, $a7, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB6_185
# %bb.191:                              #   in Loop: Header=BB6_186 Depth=2
	fstx.s	$ft4, $s2, $a2
	stx.w	$t2, $s0, $a2
	b	.LBB6_185
.LBB6_192:
	movgr2fr.w	$fs0, $zero
	bnez	$s0, .LBB6_208
	b	.LBB6_194
.LBB6_193:                              # %._crit_edge627.loopexit
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s0, $a0, 0
	move	$t5, $t1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	bnez	$s0, .LBB6_208
.LBB6_194:                              # %.preheader555
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_201
# %bb.195:                              # %.lr.ph632
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_199
# %bb.196:                              # %vector.ph1172
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	xvld	$xr1, $a5, %pc_lo12(.LCPI6_3)
	pcalau12i	$a5, %pc_hi20(.LCPI6_4)
	xvld	$xr2, $a5, %pc_lo12(.LCPI6_4)
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	xvreplgr2vr.d	$xr3, $a5
	addi.d	$a5, $t5, 4
	xvldi	$xr4, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_197:                              # %vector.body1179
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
	bnez	$a6, .LBB6_197
# %bb.198:                              # %middle.block1186
	beq	$a2, $a4, .LBB6_201
.LBB6_199:                              # %scalar.ph1170.preheader
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_200:                              # %scalar.ph1170
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
	bnez	$a1, .LBB6_200
.LBB6_201:                              # %.preheader554
	blez	$s2, .LBB6_208
# %bb.202:                              # %.lr.ph635
	bstrpick.d	$a0, $s4, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $s4, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB6_206
# %bb.203:                              # %vector.ph1191
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	pcalau12i	$a5, %pc_hi20(.LCPI6_5)
	vld	$vr3, $a5, %pc_lo12(.LCPI6_5)
	xvreplve0.d	$xr4, $xr1
	addi.d	$a5, $a1, 4
	xvldi	$xr5, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_204:                              # %vector.body1198
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
	bnez	$a6, .LBB6_204
# %bb.205:                              # %middle.block1205
	beq	$a3, $a4, .LBB6_208
.LBB6_206:                              # %scalar.ph1189.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_207:                              # %scalar.ph1189
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
	bnez	$a2, .LBB6_207
.LBB6_208:                              # %.loopexit
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(Q__align_gapmap.lastverticalw)
	ld.d	$s4, $s5, %pc_lo12(Q__align_gapmap.mseq1)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$fp, $s5
	ld.d	$s5, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(Q__align_gapmap.ijp)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_210
# %bb.209:
	st.d	$ra, $sp, 0
	move	$a0, $t5
	move	$a1, $s8
	ld.d	$s8, $sp, 448                   # 8-byte Folded Reload
	move	$a2, $s8
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s5
	move	$a6, $s3
	move	$a7, $s6
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, %pc_lo12(Q__align_gapmap.mseq1)
	b	.LBB6_284
.LBB6_210:
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$fp, $t5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	addi.w	$a1, $s7, 0
	addi.w	$a2, $a0, 0
	beq	$s0, $a3, .LBB6_221
# %bb.211:
	move	$t0, $fp
	fld.s	$fa0, $s8, 0
	blez	$a1, .LBB6_216
# %bb.212:                              # %.lr.ph.i545
	slli.d	$a3, $s7, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	slli.d	$a4, $a0, 32
	srai.d	$a4, $a4, 30
	bstrpick.d	$a5, $s7, 30, 0
	move	$a6, $s7
	b	.LBB6_214
	.p2align	4, , 16
.LBB6_213:                              #   in Loop: Header=BB6_214 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	addi.d	$s8, $s8, 4
	beqz	$a5, .LBB6_216
.LBB6_214:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s8, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_213
# %bb.215:                              #   in Loop: Header=BB6_214 Depth=1
	ldx.d	$a7, $s3, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB6_213
.LBB6_216:                              # %.preheader9.i
	blez	$a2, .LBB6_221
# %bb.217:                              # %.lr.ph14.i
	slli.d	$a3, $s7, 32
	srai.d	$a3, $a3, 29
	slli.d	$a4, $a0, 2
	bstrpick.d	$a4, $a4, 32, 2
	slli.d	$a4, $a4, 2
	bstrpick.d	$a5, $a0, 30, 0
	sub.d	$a6, $zero, $a0
	b	.LBB6_219
	.p2align	4, , 16
.LBB6_218:                              #   in Loop: Header=BB6_219 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 4
	beqz	$a5, .LBB6_221
.LBB6_219:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_218
# %bb.220:                              #   in Loop: Header=BB6_219 Depth=1
	ldx.d	$a7, $s3, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB6_218
.LBB6_221:                              # %.loopexit.i
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 448                   # 8-byte Folded Reload
	bltz	$a1, .LBB6_229
# %bb.222:                              # %.lr.ph17.preheader.i
	addi.d	$a4, $s7, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a3, $a5, .LBB6_224
# %bb.223:
	move	$a4, $zero
	b	.LBB6_227
.LBB6_224:                              # %vector.ph1210
	pcalau12i	$a5, %pc_hi20(.LCPI6_6)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_6)
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s3, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_225:                              # %vector.body1213
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
	bnez	$a6, .LBB6_225
# %bb.226:                              # %middle.block1220
	beq	$a3, $a4, .LBB6_229
.LBB6_227:                              # %.lr.ph17.i.preheader
	alsl.d	$a5, $a4, $s3, 3
	sub.d	$a3, $a3, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB6_228:                              # %.lr.ph17.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	bnez	$a3, .LBB6_228
.LBB6_229:                              # %.preheader8.i
	bltz	$a2, .LBB6_243
# %bb.230:                              # %iter.check1226
	ld.d	$a2, $s3, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB6_232
# %bb.231:
	move	$a4, $zero
	b	.LBB6_241
.LBB6_232:                              # %vector.main.loop.iter.check1228
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_234
# %bb.233:
	move	$a4, $zero
	b	.LBB6_238
.LBB6_234:                              # %vector.ph1229
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI6_7)
	xvld	$xr0, $a6, %pc_lo12(.LCPI6_7)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_235:                              # %vector.body1232
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB6_235
# %bb.236:                              # %middle.block1238
	beq	$a3, $a4, .LBB6_243
# %bb.237:                              # %vec.epilog.iter.check1243
	andi	$a6, $a5, 12
	beqz	$a6, .LBB6_241
.LBB6_238:                              # %vec.epilog.ph1242
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI6_8)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_8)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB6_239:                              # %vec.epilog.vector.body1250
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB6_239
# %bb.240:                              # %vec.epilog.middle.block1255
	beq	$a3, $a4, .LBB6_243
.LBB6_241:                              # %vec.epilog.scalar.ph1241.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_242:                              # %vec.epilog.scalar.ph1241
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB6_242
.LBB6_243:                              # %.preheader7.i
	add.w	$a2, $a0, $s7
	blez	$s6, .LBB6_246
# %bb.244:                              # %.lr.ph22.i
	move	$a3, $s4
	move	$a4, $s6
	.p2align	4, , 16
.LBB6_245:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	add.d	$a6, $a5, $a2
	st.d	$a6, $a3, 0
	stx.b	$zero, $a5, $a2
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB6_245
.LBB6_246:                              # %.preheader6.i
	ld.d	$a3, $sp, 560
	blez	$ra, .LBB6_249
# %bb.247:                              # %.lr.ph24.i
	move	$a4, $s5
	move	$a5, $ra
	.p2align	4, , 16
.LBB6_248:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	add.d	$a7, $a6, $a2
	st.d	$a7, $a4, 0
	stx.b	$zero, $a6, $a2
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB6_248
.LBB6_249:                              # %._crit_edge.i
	st.w	$zero, $a3, 0
	bltz	$a2, .LBB6_282
# %bb.250:                              # %.lr.ph53.i
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(impmtx)
	ld.d	$a5, $a5, %pc_lo12(impmtx)
	bstrpick.d	$a6, $s6, 31, 0
	bstrpick.d	$a7, $ra, 31, 0
	ori	$t0, $zero, 45
	move	$t1, $a0
	b	.LBB6_252
	.p2align	4, , 16
.LBB6_251:                              # %._crit_edge47.i
                                        #   in Loop: Header=BB6_252 Depth=1
	addi.w	$a4, $a4, 2
	move	$s7, $t2
	blt	$a2, $a4, .LBB6_282
.LBB6_252:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_259 Depth 2
                                        #       Child Loop BB6_260 Depth 3
                                        #       Child Loop BB6_262 Depth 3
                                        #     Child Loop BB6_267 Depth 2
                                        #       Child Loop BB6_268 Depth 3
                                        #       Child Loop BB6_270 Depth 3
                                        #     Child Loop BB6_278 Depth 2
                                        #     Child Loop BB6_281 Depth 2
	addi.w	$t3, $s7, 0
	slli.d	$t2, $t3, 3
	ldx.d	$t2, $s3, $t2
	addi.w	$t4, $t1, 0
	slli.d	$t5, $t4, 2
	ldx.w	$t6, $t2, $t5
	bltz	$t6, .LBB6_255
# %bb.253:                              #   in Loop: Header=BB6_252 Depth=1
	beqz	$t6, .LBB6_256
# %bb.254:                              #   in Loop: Header=BB6_252 Depth=1
	sub.w	$t2, $s7, $t6
	b	.LBB6_257
	.p2align	4, , 16
.LBB6_255:                              #   in Loop: Header=BB6_252 Depth=1
	addi.w	$t2, $s7, -1
	nor	$t7, $t2, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB6_259
	b	.LBB6_264
	.p2align	4, , 16
.LBB6_256:                              #   in Loop: Header=BB6_252 Depth=1
	addi.w	$t2, $s7, -1
.LBB6_257:                              #   in Loop: Header=BB6_252 Depth=1
	ld.d	$t6, $sp, 296                   # 8-byte Folded Reload
	nor	$t7, $t2, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB6_259
	b	.LBB6_264
	.p2align	4, , 16
.LBB6_258:                              # %._crit_edge29.i
                                        #   in Loop: Header=BB6_259 Depth=2
	addi.d	$t8, $t8, -1
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 448                   # 8-byte Folded Reload
	beqz	$t8, .LBB6_263
.LBB6_259:                              # %.preheader3.i
                                        #   Parent Loop BB6_252 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_260 Depth 3
                                        #       Child Loop BB6_262 Depth 3
	move	$fp, $s8
	move	$s0, $s4
	move	$s1, $a6
	blez	$s6, .LBB6_261
	.p2align	4, , 16
.LBB6_260:                              # %.lr.ph26.i
                                        #   Parent Loop BB6_252 Depth=1
                                        #     Parent Loop BB6_259 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $fp, 0
	ld.d	$s6, $s0, 0
	add.d	$s2, $s2, $t8
	ldx.b	$s2, $s2, $t2
	addi.d	$s8, $s6, -1
	st.d	$s8, $s0, 0
	st.b	$s2, $s6, -1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB6_260
.LBB6_261:                              # %.preheader2.i
                                        #   in Loop: Header=BB6_259 Depth=2
	move	$fp, $s5
	move	$s0, $a7
	blez	$ra, .LBB6_258
	.p2align	4, , 16
.LBB6_262:                              # %.lr.ph28.i
                                        #   Parent Loop BB6_252 Depth=1
                                        #     Parent Loop BB6_259 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $fp, 0
	addi.d	$s2, $s1, -1
	st.d	$s2, $fp, 0
	st.b	$t0, $s1, -1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB6_262
	b	.LBB6_258
	.p2align	4, , 16
.LBB6_263:                              # %._crit_edge32.loopexit.i
                                        #   in Loop: Header=BB6_252 Depth=1
	add.d	$a4, $s7, $a4
	add.d	$a4, $t7, $a4
.LBB6_264:                              # %._crit_edge32.i
                                        #   in Loop: Header=BB6_252 Depth=1
	add.w	$t1, $t6, $t1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 296                   # 8-byte Folded Reload
	beq	$t6, $t7, .LBB6_271
# %bb.265:                              # %.preheader1.preheader.i
                                        #   in Loop: Header=BB6_252 Depth=1
	nor	$t6, $t6, $zero
	b	.LBB6_267
	.p2align	4, , 16
.LBB6_266:                              # %._crit_edge38.i
                                        #   in Loop: Header=BB6_267 Depth=2
	addi.d	$t6, $t6, -1
	addi.d	$a4, $a4, 1
	beqz	$t6, .LBB6_271
.LBB6_267:                              # %.preheader1.i
                                        #   Parent Loop BB6_252 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_268 Depth 3
                                        #       Child Loop BB6_270 Depth 3
	move	$t7, $s4
	move	$t8, $a6
	blez	$s6, .LBB6_269
	.p2align	4, , 16
.LBB6_268:                              # %.lr.ph35.i
                                        #   Parent Loop BB6_252 Depth=1
                                        #     Parent Loop BB6_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $t7, 0
	addi.d	$s0, $fp, -1
	st.d	$s0, $t7, 0
	st.b	$t0, $fp, -1
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB6_268
.LBB6_269:                              # %.preheader.i
                                        #   in Loop: Header=BB6_267 Depth=2
	move	$t7, $s7
	move	$t8, $s5
	move	$fp, $a7
	blez	$ra, .LBB6_266
	.p2align	4, , 16
.LBB6_270:                              # %.lr.ph37.i
                                        #   Parent Loop BB6_252 Depth=1
                                        #     Parent Loop BB6_267 Depth=2
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
	bnez	$fp, .LBB6_270
	b	.LBB6_266
	.p2align	4, , 16
.LBB6_271:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB6_252 Depth=1
	beq	$t3, $a1, .LBB6_274
# %bb.272:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB6_252 Depth=1
	addi.w	$t6, $a0, 0
	beq	$t4, $t6, .LBB6_274
# %bb.273:                              #   in Loop: Header=BB6_252 Depth=1
	slli.d	$t6, $t3, 2
	ld.d	$t7, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$t6, $t7, $t6
	ld.d	$t7, $sp, 288                   # 8-byte Folded Reload
	ldx.w	$t5, $t7, $t5
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $a5, $t6
	slli.d	$t5, $t5, 2
	fldx.s	$fa0, $t6, $t5
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
.LBB6_274:                              #   in Loop: Header=BB6_252 Depth=1
	blez	$t3, .LBB6_283
# %bb.275:                              #   in Loop: Header=BB6_252 Depth=1
	blez	$t4, .LBB6_283
# %bb.276:                              # %.preheader5.i
                                        #   in Loop: Header=BB6_252 Depth=1
	blez	$s6, .LBB6_279
# %bb.277:                              # %.lr.ph44.i
                                        #   in Loop: Header=BB6_252 Depth=1
	move	$t3, $s8
	move	$t4, $s4
	move	$t5, $a6
	.p2align	4, , 16
.LBB6_278:                              #   Parent Loop BB6_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t3, 0
	ld.d	$t7, $t4, 0
	ldx.b	$t6, $t6, $t2
	addi.d	$t8, $t7, -1
	st.d	$t8, $t4, 0
	st.b	$t6, $t7, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	bnez	$t5, .LBB6_278
.LBB6_279:                              # %.preheader4.i
                                        #   in Loop: Header=BB6_252 Depth=1
	blez	$ra, .LBB6_251
# %bb.280:                              # %.lr.ph46.i
                                        #   in Loop: Header=BB6_252 Depth=1
	move	$t4, $s5
	move	$t5, $a7
	.p2align	4, , 16
.LBB6_281:                              #   Parent Loop BB6_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $s7, 0
	ld.d	$t7, $t4, 0
	ldx.b	$t6, $t6, $t1
	addi.d	$t8, $t7, -1
	st.d	$t8, $t4, 0
	st.b	$t6, $t7, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	addi.d	$s7, $s7, 8
	bnez	$t5, .LBB6_281
	b	.LBB6_251
.LBB6_282:
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
.LBB6_283:                              # %Atracking_localhom_gapmap.exit
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
.LBB6_284:                              # %Atracking_localhom_gapmap.exit
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_293
# %bb.285:                              # %Atracking_localhom_gapmap.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_293
# %bb.286:
	blez	$s6, .LBB6_289
.LBB6_287:                              # %.lr.ph638
	ld.d	$fp, $fp, %pc_lo12(Q__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_288:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, -1
	addi.d	$s8, $s8, 8
	bnez	$s6, .LBB6_288
.LBB6_289:                              # %.preheader
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	blez	$a2, .LBB6_292
# %bb.290:                              # %.lr.ph640
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_291:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$a2, $s0, -1
	addi.d	$s7, $s7, 8
	bnez	$a2, .LBB6_291
.LBB6_292:                              # %._crit_edge641
	fmov.s	$fa0, $fs0
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
.LBB6_293:
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
	bgtz	$s6, .LBB6_287
	b	.LBB6_289
.LBB6_294:
	addi.d	$a6, $a7, 1
	b	.LBB6_170
.LBB6_295:
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	b	.LBB6_27
.LBB6_296:
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
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
