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
	move	$s5, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$s6, %pc_hi20(impalloclen)
	ld.w	$a0, $s6, %pc_lo12(impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strict.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strict.nocount2)
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
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	beqz	$a0, .LBB2_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_6:
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
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
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
.LBB2_9:
	blez	$s4, .LBB2_22
# %bb.10:                               # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
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
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
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
	.size	imp_match_init_strict, .Lfunc_end2-imp_match_init_strict
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function A__align
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
.LCPI3_2:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI3_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI3_6:
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
.LCPI3_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI3_7:
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
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	move	$s4, $a5
	move	$s6, $a4
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	move	$s7, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$s3, %pc_hi20(A__align.orlgth1)
	ld.w	$fp, $s3, %pc_lo12(A__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mseq1)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mseq2)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bnez	$fp, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(A__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s3, %pc_lo12(A__align.orlgth1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mseq2)
.LBB3_2:
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.w	$s5, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(A__align.orlgth2)
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.w	$s0, $a1, %pc_lo12(A__align.orlgth2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align.w1)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.w2)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.initverticalw)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.lastverticalw)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.m)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mp)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(A__align.mseq)
	pcalau12i	$a0, %pc_hi20(A__align.ogcp1)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.ogcp2)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp1)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx1)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.floatwork)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.intwork)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 176                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	blt	$fp, $s5, .LBB3_4
# %bb.3:
	bge	$s0, $s8, .LBB3_8
.LBB3_4:
	pcalau12i	$s2, %pc_hi20(A__align.match)
	blez	$fp, .LBB3_7
# %bb.5:
	blez	$s0, .LBB3_7
# %bb.6:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(A__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(A__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s3, %pc_lo12(A__align.orlgth1)
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(A__align.orlgth2)
.LBB3_7:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	addi.w	$s4, $fp, 100
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$s7, $s0, 100
	addi.w	$s5, $s0, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(A__align.match)
	addi.w	$s6, $fp, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s7, $s4
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(A__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx2)
	slt	$a0, $s7, $s4
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.intwork)
	st.w	$fp, $s3, %pc_lo12(A__align.orlgth1)
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(A__align.orlgth2)
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
.LBB3_8:
	blez	$s6, .LBB3_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $s1, %pc_lo12(A__align.mseq)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.mseq1)
	move	$a2, $s6
	.p2align	4, , 16
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $s2, 0
	stx.b	$zero, $a4, $s5
	addi.d	$s2, $s2, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_10
.LBB3_11:                               # %.preheader347
	blez	$s4, .LBB3_14
# %bb.12:                               # %.lr.ph354
	ld.d	$a1, $s1, %pc_lo12(A__align.mseq)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq2)
	alsl.d	$a1, $s6, $a1, 3
	move	$a2, $s4
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
	ld.d	$s5, $sp, 456
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s2, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s2, 0
	blt	$a0, $fp, .LBB3_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s0, .LBB3_17
# %bb.16:                               # %._crit_edge486
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
	ld.w	$fp, $s3, %pc_lo12(A__align.orlgth1)
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.w	$s0, $a1, %pc_lo12(A__align.orlgth2)
	ld.w	$a1, $s2, 0
.LBB3_20:
	slt	$a2, $a0, $fp
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $fp, $a2
	or	$fp, $a2, $a0
	slt	$a0, $a1, $s0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	addi.w	$a0, $fp, 10
	addi.w	$a1, $s0, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$fp, $s1, 0
	st.w	$s0, $s2, 0
.LBB3_21:
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.cpmx1)
	ffint.s.w	$fs0, $fs0
	pcalau12i	$a2, %pc_hi20(A__align.ijp)
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align.ijp)
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align.cpmx2)
	move	$a0, $s7
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s8
	move	$a4, $s4
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	beqz	$s5, .LBB3_23
# %bb.22:
	move	$a5, $s5
	move	$s5, $fp
	move	$fp, $s6
	ld.d	$s6, $sp, 480
	ld.d	$s7, $sp, 472
	ld.d	$s3, $sp, 464
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $s4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s8
	move	$a5, $s3
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s1
	move	$a5, $s7
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s8
	move	$a5, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs0
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	bgtz	$s1, .LBB3_24
	b	.LBB3_30
.LBB3_23:
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $fp
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $fp
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs0
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	blez	$s1, .LBB3_30
.LBB3_24:                               # %.lr.ph357
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp1)
	bstrpick.d	$a1, $s2, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB3_27
# %bb.25:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB3_153
# %bb.26:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB3_153
.LBB3_27:
	move	$a3, $zero
.LBB3_28:                               # %scalar.ph.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_29:                               # %scalar.ph
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
	bnez	$a1, .LBB3_29
.LBB3_30:                               # %.preheader346
	blez	$s8, .LBB3_37
# %bb.31:                               # %.lr.ph359
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	bstrpick.d	$a1, $s0, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB3_34
# %bb.32:                               # %vector.memcheck538
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB3_156
# %bb.33:                               # %vector.memcheck538
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB3_156
.LBB3_34:
	move	$a3, $zero
.LBB3_35:                               # %scalar.ph544.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_36:                               # %scalar.ph544
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
	bnez	$a1, .LBB3_36
.LBB3_37:                               # %._crit_edge360
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align.w1)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(A__align.w2)
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(A__align.cpmx2)
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(A__align.cpmx1)
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(A__align.floatwork)
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(A__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $zero
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	move	$a4, $fp
	move	$a5, $s1
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a0, $s0, 32
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s3, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$s6, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 336                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_47
# %bb.38:
	move	$s3, $s1
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	blez	$fp, .LBB3_41
# %bb.39:                               # %.lr.ph.i
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s1, 30, 0
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_40:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_40
.LBB3_41:                               # %imp_match_out_vead_tate.exit
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s5
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s3
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB3_56
# %bb.42:                               # %iter.check
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	move	$t3, $s0
	bstrpick.d	$a0, $s0, 31, 0
	ori	$a2, $zero, 4
	bltu	$a0, $a2, .LBB3_45
# %bb.43:                               # %vector.memcheck559
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $t3, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	bgeu	$s5, $a3, .LBB3_168
# %bb.44:                               # %vector.memcheck559
	add.d	$a2, $s5, $a2
	bgeu	$a1, $a2, .LBB3_168
.LBB3_45:
	move	$a2, $a1
	move	$a3, $t3
	move	$a4, $s5
	.p2align	4, , 16
.LBB3_46:                               # %.lr.ph.i324
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB3_46
	b	.LBB3_48
.LBB3_47:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s1
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t3, $s0
	move	$s3, $s1
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
.LBB3_48:                               # %imp_match_out_vead.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_57
# %bb.49:                               # %.preheader345
	blez	$s8, .LBB3_65
# %bb.50:                               # %.lr.ph363
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_54
# %bb.51:                               # %vector.ph600
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI3_1)
	xvreplgr2vr.w	$xr1, $a0
	addi.d	$a5, $s5, 4
	xvldi	$xr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_52:                               # %vector.body605
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
	bnez	$a6, .LBB3_52
# %bb.53:                               # %middle.block610
	beq	$a2, $a4, .LBB3_65
.LBB3_54:                               # %scalar.ph598.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_55:                               # %scalar.ph598
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
	bnez	$a1, .LBB3_55
	b	.LBB3_65
.LBB3_56:                               # %imp_match_out_vead.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	move	$t3, $s0
	bne	$a0, $fp, .LBB3_65
.LBB3_57:                               # %.preheader342
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blez	$a0, .LBB3_61
# %bb.58:                               # %iter.check644
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp1)
	addi.d	$a1, $s1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	ori	$a4, $zero, 1
	bltu	$a5, $a3, .LBB3_159
.LBB3_59:                               # %vec.epilog.scalar.ph662.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB3_60:                               # %vec.epilog.scalar.ph662
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
	bnez	$a1, .LBB3_60
.LBB3_61:                               # %.preheader340
	blez	$s8, .LBB3_77
# %bb.62:                               # %iter.check696
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	ori	$a4, $zero, 1
	bltu	$a5, $a3, .LBB3_163
.LBB3_63:                               # %vec.epilog.scalar.ph714.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a3, $a4, $s5, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB3_64:                               # %vec.epilog.scalar.ph714
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
	bnez	$a1, .LBB3_64
	b	.LBB3_73
.LBB3_65:                               # %.preheader343
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blez	$a0, .LBB3_72
# %bb.66:                               # %.lr.ph366
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_70
# %bb.67:                               # %vector.ph615
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI3_1)
	xvreplgr2vr.w	$xr1, $a0
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	xvldi	$xr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_68:                               # %vector.body620
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
	bnez	$a6, .LBB3_68
# %bb.69:                               # %middle.block627
	beq	$a2, $a4, .LBB3_72
.LBB3_70:                               # %scalar.ph613.preheader
	mul.d	$a2, $a0, $a3
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_71:                               # %scalar.ph613
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
	bnez	$a1, .LBB3_71
.LBB3_72:                               # %.loopexit341
	blez	$s8, .LBB3_77
.LBB3_73:                               # %iter.check748
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.m)
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.mp)
	addi.d	$a3, $t3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a7, $zero, 4
	ori	$a5, $zero, 1
	bgeu	$a4, $a7, .LBB3_131
.LBB3_74:                               # %vec.epilog.scalar.ph764.preheader
	alsl.d	$a4, $a5, $s5, 2
	addi.d	$a4, $a4, -4
	alsl.d	$a1, $a5, $a1, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB3_75:                               # %vec.epilog.scalar.ph764
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
	bnez	$a3, .LBB3_75
.LBB3_76:
	move	$a0, $zero
	b	.LBB3_78
.LBB3_77:                               # %._crit_edge377
	ori	$a0, $zero, 1
	beqz	$s8, .LBB3_167
.LBB3_78:
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $a3, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s5, $a1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB3_79:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $a1, %pc_lo12(A__align.lastverticalw)
	fst.s	$fa0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	sltu	$a2, $zero, $a1
	add.w	$fp, $a2, $s1
	ori	$a2, $zero, 2
	blt	$fp, $a2, .LBB3_107
# %bb.80:                               # %.lr.ph401
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ijp)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.mp)
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp2)
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp1)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.ogcp1)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a3, $a2
	srai.d	$s1, $a2, 30
	addi.w	$a2, $t3, -1
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 2
	addi.d	$a3, $a3, 4
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a3, $a2, 1
	bstrpick.d	$a2, $a3, 32, 4
	slli.d	$a5, $a2, 4
	slli.d	$a2, $a2, 6
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a2, $t3, $a5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	andi	$a2, $a3, 12
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a3, 32, 2
	slli.d	$a3, $a2, 2
	slli.d	$a2, $a2, 4
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	sub.d	$a2, $t3, $a3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	sub.d	$a2, $zero, $a3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s7, $zero, 1
	b	.LBB3_82
	.p2align	4, , 16
.LBB3_81:                               # %._crit_edge393
                                        #   in Loop: Header=BB3_82 Depth=1
	fldx.s	$fa0, $s3, $s1
	addi.d	$s7, $s7, 1
	fstx.s	$fa0, $s0, $a1
	move	$s5, $s3
	beq	$s7, $fp, .LBB3_108
.LBB3_82:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_100 Depth 2
                                        #     Child Loop BB3_104 Depth 2
                                        #     Child Loop BB3_87 Depth 2
                                        #     Child Loop BB3_91 Depth 2
	addi.d	$s6, $s7, -1
	slli.d	$s4, $s6, 2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s4
	move	$s3, $s2
	move	$s2, $s5
	fst.s	$fa0, $s5, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s8
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 3
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_88
# %bb.83:                               # %iter.check791
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ori	$a2, $zero, 3
	bltu	$a1, $a2, .LBB3_86
# %bb.84:                               # %vector.memcheck782
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a2
	bgeu	$s3, $a1, .LBB3_97
# %bb.85:                               # %vector.memcheck782
                                        #   in Loop: Header=BB3_82 Depth=1
	add.d	$a1, $s3, $a2
	bgeu	$a3, $a1, .LBB3_97
.LBB3_86:                               #   in Loop: Header=BB3_82 Depth=1
	move	$a1, $a3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB3_87:                               # %.lr.ph.i327
                                        #   Parent Loop BB3_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB3_87
.LBB3_88:                               # %imp_match_out_vead.exit332
                                        #   in Loop: Header=BB3_82 Depth=1
	slli.d	$a1, $s7, 2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a1
	fst.s	$fa0, $s3, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_81
# %bb.89:                               # %.lr.ph392.preheader
                                        #   in Loop: Header=BB3_82 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	fld.s	$fa2, $s2, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa3, $a4, 4
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $s4
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	fldx.s	$fa1, $a0, $a1
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a0, $s3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	move	$t2, $s2
	b	.LBB3_91
	.p2align	4, , 16
.LBB3_90:                               #   in Loop: Header=BB3_91 Depth=2
	fadd.s	$fa3, $fa3, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	fld.s	$fa3, $a0, 0
	masknez	$t4, $a2, $t3
	maskeqz	$a3, $a3, $t3
	or	$a3, $a3, $t4
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $a0, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, -1
	beq	$s8, $a2, .LBB3_81
.LBB3_91:                               # %.lr.ph392
                                        #   Parent Loop BB3_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a4, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB3_93
# %bb.92:                               #   in Loop: Header=BB3_91 Depth=2
	add.d	$t3, $a3, $a5
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa4
.LBB3_93:                               #   in Loop: Header=BB3_91 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB3_95
# %bb.94:                               #   in Loop: Header=BB3_91 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s7, $t3
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa6
.LBB3_95:                               #   in Loop: Header=BB3_91 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB3_90
# %bb.96:                               #   in Loop: Header=BB3_91 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$s6, $a7, 0
	b	.LBB3_90
.LBB3_97:                               # %vector.main.loop.iter.check793
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ori	$a2, $zero, 15
	bgeu	$a1, $a2, .LBB3_99
# %bb.98:                               #   in Loop: Header=BB3_82 Depth=1
	move	$a5, $zero
	b	.LBB3_103
.LBB3_99:                               # %vector.body797.preheader
                                        #   in Loop: Header=BB3_82 Depth=1
	addi.d	$a1, $s3, 32
	addi.d	$a2, $a3, 32
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_100:                              # %vector.body797
                                        #   Parent Loop BB3_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB3_100
# %bb.101:                              # %middle.block806
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB3_88
# %bb.102:                              # %vec.epilog.iter.check811
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB3_106
.LBB3_103:                              # %vec.epilog.ph810
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a2
	add.d	$a2, $s3, $a2
	alsl.d	$a4, $a5, $s3, 2
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	.p2align	4, , 16
.LBB3_104:                              # %vec.epilog.vector.body817
                                        #   Parent Loop BB3_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vld	$vr1, $a4, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB3_104
# %bb.105:                              # %vec.epilog.middle.block826
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	bne	$a4, $a5, .LBB3_87
	b	.LBB3_88
.LBB3_106:                              #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a2
	add.d	$a2, $s3, $a2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_87
.LBB3_107:
	movgr2fr.w	$fs0, $zero
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB3_123
	b	.LBB3_109
.LBB3_108:                              # %._crit_edge402.loopexit
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $fp, 0
	move	$s5, $s3
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_123
.LBB3_109:                              # %.preheader339
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_116
# %bb.110:                              # %.lr.ph407
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_114
# %bb.111:                              # %vector.ph837
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_2)
	xvld	$xr1, $a5, %pc_lo12(.LCPI3_2)
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI3_3)
	xvreplgr2vr.d	$xr3, $t3
	addi.d	$a5, $s5, 4
	xvldi	$xr4, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_112:                              # %vector.body844
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
	bnez	$a6, .LBB3_112
# %bb.113:                              # %middle.block851
	beq	$a2, $a4, .LBB3_116
.LBB3_114:                              # %scalar.ph835.preheader
	sub.w	$a2, $t3, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_115:                              # %scalar.ph835
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
	bnez	$a1, .LBB3_115
.LBB3_116:                              # %.preheader338
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blez	$a0, .LBB3_123
# %bb.117:                              # %.lr.ph410
	bstrpick.d	$a0, $s1, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $s1, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB3_121
# %bb.118:                              # %vector.ph856
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	pcalau12i	$a5, %pc_hi20(.LCPI3_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI3_4)
	xvreplve0.d	$xr4, $xr1
	addi.d	$a5, $a1, 4
	xvldi	$xr5, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_119:                              # %vector.body863
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
	bnez	$a6, .LBB3_119
# %bb.120:                              # %middle.block870
	beq	$a3, $a4, .LBB3_123
.LBB3_121:                              # %scalar.ph854.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_122:                              # %scalar.ph854
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
	bnez	$a2, .LBB3_122
.LBB3_123:                              # %.loopexit
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(A__align.lastverticalw)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align.mseq2)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align.ijp)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_130
# %bb.124:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	add.w	$a0, $a0, $s7
	st.d	$s0, $sp, 336                   # 8-byte Folded Spill
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	move	$a0, $s8
	ld.d	$s8, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ori	$a3, $zero, 1
	addi.w	$ra, $s7, 0
	move	$t1, $s1
	addi.w	$a2, $s1, 0
	beq	$a1, $a3, .LBB3_140
# %bb.125:
	fld.s	$fa0, $s3, 0
	blez	$ra, .LBB3_135
# %bb.126:                              # %.lr.ph.i333
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $t1, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB3_128
	.p2align	4, , 16
.LBB3_127:                              #   in Loop: Header=BB3_128 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB3_135
.LBB3_128:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_127
# %bb.129:                              #   in Loop: Header=BB3_128 Depth=1
	ldx.d	$a6, $s8, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_127
.LBB3_130:
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s1, $sp, 0
	move	$a0, $s5
	move	$a1, $s3
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s7
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_219
.LBB3_131:                              # %vector.memcheck733
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $s5, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s5, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_74
# %bb.132:                              # %vector.memcheck733
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB3_74
# %bb.133:                              # %vector.main.loop.iter.check750
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB3_228
# %bb.134:
	move	$a6, $zero
	b	.LBB3_232
.LBB3_135:                              # %.preheader2.i
	blez	$a2, .LBB3_140
# %bb.136:                              # %.lr.ph7.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $t1, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $t1, 30, 0
	sub.d	$a5, $zero, $t1
	b	.LBB3_138
	.p2align	4, , 16
.LBB3_137:                              #   in Loop: Header=BB3_138 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s5, $s5, 4
	beqz	$a4, .LBB3_140
.LBB3_138:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_137
# %bb.139:                              #   in Loop: Header=BB3_138 Depth=1
	ldx.d	$a6, $s8, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_137
.LBB3_140:                              # %.loopexit.i
	bltz	$ra, .LBB3_148
# %bb.141:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_143
# %bb.142:
	move	$a3, $zero
	b	.LBB3_146
.LBB3_143:                              # %vector.ph875
	pcalau12i	$a4, %pc_hi20(.LCPI3_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s8, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_144:                              # %vector.body878
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
	bnez	$a5, .LBB3_144
# %bb.145:                              # %middle.block885
	beq	$a1, $a3, .LBB3_148
.LBB3_146:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $s8, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB3_147:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB3_147
.LBB3_148:                              # %.preheader1.i
	ld.d	$a1, $sp, 448
	bltz	$a2, .LBB3_179
# %bb.149:                              # %iter.check891
	ld.d	$a3, $s8, 0
	addi.d	$a6, $t1, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_151
# %bb.150:
	move	$a5, $zero
	b	.LBB3_177
.LBB3_151:                              # %vector.main.loop.iter.check893
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB3_170
# %bb.152:
	move	$a5, $zero
	b	.LBB3_174
.LBB3_153:                              # %vector.ph
	bstrpick.d	$a3, $s2, 30, 3
	slli.d	$a3, $a3, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_154:                              # %vector.body
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
	bnez	$a6, .LBB3_154
# %bb.155:                              # %middle.block
	beq	$a1, $a3, .LBB3_30
	b	.LBB3_28
.LBB3_156:                              # %vector.ph546
	bstrpick.d	$a3, $s0, 30, 3
	slli.d	$a3, $a3, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_157:                              # %vector.body551
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
	bnez	$a6, .LBB3_157
# %bb.158:                              # %middle.block556
	beq	$a1, $a3, .LBB3_37
	b	.LBB3_35
.LBB3_159:                              # %vector.memcheck630
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a1, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_59
# %bb.160:                              # %vector.memcheck630
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_59
# %bb.161:                              # %vector.main.loop.iter.check646
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB3_243
# %bb.162:
	move	$a5, $zero
	b	.LBB3_247
.LBB3_163:                              # %vector.memcheck681
	addi.d	$a5, $s5, 4
	alsl.d	$a6, $a1, $s5, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_63
# %bb.164:                              # %vector.memcheck681
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_63
# %bb.165:                              # %vector.main.loop.iter.check698
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB3_250
# %bb.166:
	move	$a5, $zero
	b	.LBB3_254
.LBB3_167:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	b	.LBB3_79
.LBB3_168:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB3_236
# %bb.169:
	move	$a5, $zero
	b	.LBB3_240
.LBB3_170:                              # %vector.ph894
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI3_6)
	xvld	$xr0, $a7, %pc_lo12(.LCPI3_6)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_171:                              # %vector.body897
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_171
# %bb.172:                              # %middle.block903
	beq	$a4, $a5, .LBB3_179
# %bb.173:                              # %vec.epilog.iter.check908
	andi	$a7, $a6, 12
	beqz	$a7, .LBB3_177
.LBB3_174:                              # %vec.epilog.ph907
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI3_7)
	vld	$vr0, $a5, %pc_lo12(.LCPI3_7)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB3_175:                              # %vec.epilog.vector.body915
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB3_175
# %bb.176:                              # %vec.epilog.middle.block920
	beq	$a4, $a5, .LBB3_179
.LBB3_177:                              # %vec.epilog.scalar.ph906.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_178:                              # %vec.epilog.scalar.ph906
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_178
.LBB3_179:                              # %._crit_edge.i
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	add.d	$a3, $a3, $ra
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	add.d	$a3, $a0, $ra
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_211
# %bb.180:                              # %.lr.ph41.i.preheader
	move	$t0, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 111
	ori	$a4, $zero, 45
	ori	$a5, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	move	$a0, $t1
	move	$a7, $t1
	.p2align	4, , 16
.LBB3_181:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_187 Depth 2
                                        #     Child Loop BB3_198 Depth 2
                                        #     Child Loop BB3_194 Depth 2
                                        #     Child Loop BB3_203 Depth 2
	addi.w	$t2, $s7, 0
	slli.d	$t5, $t2, 3
	ldx.d	$t1, $s8, $t5
	addi.w	$t3, $a7, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t4, $t1, $t6
	bltz	$t4, .LBB3_189
# %bb.182:                              #   in Loop: Header=BB3_181 Depth=1
	beqz	$t4, .LBB3_210
# %bb.183:                              #   in Loop: Header=BB3_181 Depth=1
	sub.d	$t1, $s7, $t4
	move	$t4, $a2
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	beqz	$t8, .LBB3_190
.LBB3_184:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB3_181 Depth=1
	bltu	$t8, $a6, .LBB3_196
# %bb.185:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB3_181 Depth=1
	sub.d	$fp, $s3, $s5
	bltu	$fp, $a6, .LBB3_196
# %bb.186:                              # %vector.ph951
                                        #   in Loop: Header=BB3_181 Depth=1
	bstrpick.d	$s1, $t8, 31, 0
	bstrpick.d	$fp, $s1, 31, 5
	slli.d	$s2, $fp, 5
	sub.d	$t8, $t8, $s2
	sub.d	$fp, $s5, $s2
	sub.d	$s0, $s3, $s2
	addi.d	$s3, $s3, -32
	addi.d	$s5, $s5, -32
	move	$s8, $s2
	.p2align	4, , 16
.LBB3_187:                              # %vector.body955
                                        #   Parent Loop BB3_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s3, 0
	xvst	$xr4, $s5, 0
	addi.d	$s8, $s8, -32
	addi.d	$s3, $s3, -32
	addi.d	$s5, $s5, -32
	bnez	$s8, .LBB3_187
# %bb.188:                              # %middle.block962
                                        #   in Loop: Header=BB3_181 Depth=1
	ld.d	$s8, $sp, 336                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB3_197
	b	.LBB3_199
	.p2align	4, , 16
.LBB3_189:                              #   in Loop: Header=BB3_181 Depth=1
	addi.d	$t1, $s7, -1
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB3_184
	.p2align	4, , 16
.LBB3_190:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB3_181 Depth=1
	beq	$t4, $a2, .LBB3_200
.LBB3_191:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_181 Depth=1
	addi.w	$t7, $zero, -17
	nor	$s0, $t4, $zero
	bltu	$t7, $t4, .LBB3_201
# %bb.192:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_181 Depth=1
	sub.d	$t7, $s3, $s5
	bltu	$t7, $a5, .LBB3_201
# %bb.193:                              # %vector.ph928
                                        #   in Loop: Header=BB3_181 Depth=1
	bstrpick.d	$t7, $s0, 30, 4
	slli.d	$s1, $t7, 4
	sub.d	$fp, $s0, $s1
	sub.d	$t7, $s5, $s1
	sub.d	$t8, $s3, $s1
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t0, 0
	addi.d	$t0, $s3, -8
	addi.d	$s2, $s5, -8
	move	$s3, $s1
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB3_194:                              # %vector.body932
                                        #   Parent Loop BB3_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t0, -8
	vst	$vr2, $s2, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s3, $s3, -16
	addi.d	$t0, $t0, -16
	addi.d	$s2, $s2, -16
	bnez	$s3, .LBB3_194
# %bb.195:                              # %middle.block940
                                        #   in Loop: Header=BB3_181 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$t0, $xr5, 0
	bne	$s1, $s0, .LBB3_202
	b	.LBB3_204
	.p2align	4, , 16
.LBB3_196:                              #   in Loop: Header=BB3_181 Depth=1
	move	$fp, $s5
	move	$s0, $s3
.LBB3_197:                              # %.lr.ph19.i.preheader969
                                        #   in Loop: Header=BB3_181 Depth=1
	move	$s1, $fp
	move	$s2, $s0
	.p2align	4, , 16
.LBB3_198:                              # %.lr.ph19.i
                                        #   Parent Loop BB3_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s2, -1
	st.b	$a3, $s2, -1
	addi.d	$fp, $s1, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $s1, -1
	move	$s1, $fp
	move	$s2, $s0
	bnez	$t8, .LBB3_198
.LBB3_199:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB3_181 Depth=1
	add.d	$t0, $s7, $t0
	add.d	$t0, $t7, $t0
	move	$s3, $s0
	move	$s5, $fp
	bne	$t4, $a2, .LBB3_191
.LBB3_200:                              #   in Loop: Header=BB3_181 Depth=1
	move	$t8, $s3
	move	$t7, $s5
	bne	$t2, $ra, .LBB3_205
	b	.LBB3_207
	.p2align	4, , 16
.LBB3_201:                              #   in Loop: Header=BB3_181 Depth=1
	move	$fp, $s0
	move	$t7, $s5
	move	$t8, $s3
.LBB3_202:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB3_181 Depth=1
	add.d	$t0, $t0, $fp
	.p2align	4, , 16
.LBB3_203:                              # %.lr.ph29.i
                                        #   Parent Loop BB3_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB3_203
.LBB3_204:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_181 Depth=1
	beq	$t2, $ra, .LBB3_207
.LBB3_205:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_181 Depth=1
	addi.w	$fp, $a0, 0
	beq	$t3, $fp, .LBB3_207
# %bb.206:                              #   in Loop: Header=BB3_181 Depth=1
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $fp, %pc_lo12(impmtx)
	ldx.d	$t5, $fp, $t5
	fldx.s	$fa5, $t5, $t6
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB3_207:                              #   in Loop: Header=BB3_181 Depth=1
	blez	$t2, .LBB3_212
# %bb.208:                              #   in Loop: Header=BB3_181 Depth=1
	blez	$t3, .LBB3_212
# %bb.209:                              #   in Loop: Header=BB3_181 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s3, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s5, $t7, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t7, -1
	move	$s7, $t1
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	bge	$t1, $t0, .LBB3_181
	b	.LBB3_211
	.p2align	4, , 16
.LBB3_210:                              #   in Loop: Header=BB3_181 Depth=1
	addi.d	$t1, $s7, -1
	move	$t4, $a2
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB3_184
	b	.LBB3_190
.LBB3_211:                              # %._crit_edge42.i
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bgtz	$a0, .LBB3_213
	b	.LBB3_215
.LBB3_212:
	move	$s3, $t8
	move	$s5, $t7
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	blez	$a0, .LBB3_215
.LBB3_213:                              # %.lr.ph50.preheader.i
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_214:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB3_214
.LBB3_215:                              # %.preheader.i
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	blez	$s1, .LBB3_218
# %bb.216:                              # %.lr.ph52.preheader.i
	move	$fp, $s7
	move	$s0, $s1
	.p2align	4, , 16
.LBB3_217:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB3_217
.LBB3_218:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
.LBB3_219:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_235
# %bb.220:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_235
# %bb.221:
	blez	$s0, .LBB3_224
.LBB3_222:                              # %.lr.ph413
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align.mseq1)
	.p2align	4, , 16
.LBB3_223:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB3_223
.LBB3_224:                              # %.preheader
	blez	$s1, .LBB3_227
# %bb.225:                              # %.lr.ph415
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align.mseq2)
	.p2align	4, , 16
.LBB3_226:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s7, $s7, 8
	bnez	$s1, .LBB3_226
.LBB3_227:                              # %._crit_edge416
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
.LBB3_228:                              # %vector.ph751
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	xvldrepl.w	$xr0, $a0, 0
	addi.d	$a5, $s5, 32
	addi.d	$a7, $a1, 36
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	move	$t1, $a6
	.p2align	4, , 16
.LBB3_229:                              # %vector.body754
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
	bnez	$t1, .LBB3_229
# %bb.230:                              # %middle.block761
	beq	$a4, $a6, .LBB3_76
# %bb.231:                              # %vec.epilog.iter.check766
	andi	$a5, $a4, 12
	beqz	$a5, .LBB3_257
.LBB3_232:                              # %vec.epilog.ph765
	move	$a7, $a4
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $t0, 1, 0
	vldrepl.w	$vr0, $a0, 0
	slli.d	$t1, $a6, 2
	alsl.d	$t0, $a6, $s5, 2
	addi.d	$t2, $t1, 4
	add.d	$t1, $a1, $t2
	add.d	$t2, $a2, $t2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB3_233:                              # %vec.epilog.vector.body771
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t1, 0
	vst	$vr1, $t2, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a6, $a6, 4
	addi.d	$t2, $t2, 16
	bnez	$a6, .LBB3_233
# %bb.234:                              # %vec.epilog.middle.block778
	bne	$a4, $a7, .LBB3_74
	b	.LBB3_76
.LBB3_235:
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
	bgtz	$s0, .LBB3_222
	b	.LBB3_224
.LBB3_236:                              # %vector.ph569
	bstrpick.d	$a2, $t3, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $s5, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	.p2align	4, , 16
.LBB3_237:                              # %vector.body572
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
	bnez	$a4, .LBB3_237
# %bb.238:                              # %middle.block580
	beq	$a0, $a5, .LBB3_48
# %bb.239:                              # %vec.epilog.iter.check
	andi	$a2, $t3, 12
	beqz	$a2, .LBB3_258
.LBB3_240:                              # %vec.epilog.ph
	bstrpick.d	$a4, $t3, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $t3, 3
	alsl.d	$a4, $a4, $s5, 4
	alsl.d	$a7, $a5, $s5, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_241:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB3_241
# %bb.242:                              # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB3_46
	b	.LBB3_48
.LBB3_243:                              # %vector.ph647
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_244:                              # %vector.body650
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
	bnez	$a7, .LBB3_244
# %bb.245:                              # %middle.block659
	beq	$a3, $a5, .LBB3_61
# %bb.246:                              # %vec.epilog.iter.check664
	andi	$a4, $a3, 12
	beqz	$a4, .LBB3_259
.LBB3_247:                              # %vec.epilog.ph663
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$t0, $a5, $t0, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_248:                              # %vec.epilog.vector.body669
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB3_248
# %bb.249:                              # %vec.epilog.middle.block677
	bne	$a3, $a6, .LBB3_59
	b	.LBB3_61
.LBB3_250:                              # %vector.ph699
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	addi.d	$a6, $s5, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_251:                              # %vector.body702
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
	bnez	$a7, .LBB3_251
# %bb.252:                              # %middle.block711
	beq	$a3, $a5, .LBB3_73
# %bb.253:                              # %vec.epilog.iter.check716
	andi	$a4, $a3, 12
	beqz	$a4, .LBB3_260
.LBB3_254:                              # %vec.epilog.ph715
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	alsl.d	$t0, $a5, $s5, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_255:                              # %vec.epilog.vector.body721
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB3_255
# %bb.256:                              # %vec.epilog.middle.block729
	bne	$a3, $a6, .LBB3_63
	b	.LBB3_73
.LBB3_257:
	addi.d	$a5, $a6, 1
	b	.LBB3_74
.LBB3_258:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $t3, $a5
	alsl.d	$a4, $a5, $s5, 2
	b	.LBB3_46
.LBB3_259:
	addi.d	$a4, $a5, 1
	b	.LBB3_59
.LBB3_260:
	addi.d	$a4, $a5, 1
	b	.LBB3_63
.Lfunc_end3:
	.size	A__align, .Lfunc_end3-A__align
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
	.p2align	3, 0x0                          # -- Begin function A__align_gapmap
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
.LCPI6_2:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI6_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI6_6:
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
.LCPI6_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI6_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_7:
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
	pcalau12i	$s5, %pc_hi20(A__align_gapmap.orlgth1)
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	st.d	$a7, $sp, 264                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	move	$s6, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq1)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bnez	$s4, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mseq2)
.LBB6_2:
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(A__align_gapmap.orlgth2)
	ld.w	$s3, $s2, %pc_lo12(A__align_gapmap.orlgth2)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.initverticalw)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(A__align_gapmap.lastverticalw)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.m)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mp)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(A__align_gapmap.mseq)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp1)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp1)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp2)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx2)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.floatwork)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.intwork)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	blt	$s4, $fp, .LBB6_4
# %bb.3:
	bge	$s3, $s8, .LBB6_9
.LBB6_4:
	pcalau12i	$fp, %pc_hi20(A__align_gapmap.match)
	blez	$s4, .LBB6_7
# %bb.5:
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	blez	$s3, .LBB6_8
# %bb.6:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(A__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.w	$s3, $s2, %pc_lo12(A__align_gapmap.orlgth2)
	b	.LBB6_8
.LBB6_7:
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
.LBB6_8:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
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
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.w	$s1, $s3, 100
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	move	$s2, $s5
	addi.w	$s5, $s3, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(A__align_gapmap.match)
	addi.w	$s6, $s4, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(A__align_gapmap.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s1, $s0
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx2)
	slt	$a0, $s1, $s0
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s5
	move	$s5, $s2
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$a5, $fp
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.intwork)
	st.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	st.w	$s3, $s2, %pc_lo12(A__align_gapmap.orlgth2)
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
.LBB6_9:
	blez	$s1, .LBB6_12
# %bb.10:                               # %.lr.ph
	ld.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.mseq1)
	move	$a2, $s1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $fp
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_11
.LBB6_12:                               # %.preheader328
	blez	$s6, .LBB6_15
# %bb.13:                               # %.lr.ph335
	ld.d	$a1, $s7, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq2)
	alsl.d	$a1, $s1, $a1, 3
	move	$a2, $s6
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_14
.LBB6_15:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s0, 0
	blt	$a0, $s4, .LBB6_18
# %bb.16:                               # %._crit_edge
	blt	$a1, $s3, .LBB6_18
# %bb.17:                               # %._crit_edge467
	move	$s4, $a5
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_23
.LBB6_18:
	beqz	$a0, .LBB6_21
# %bb.19:
	move	$s1, $s5
	move	$s5, $a5
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_22
# %bb.20:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s1, %pc_lo12(A__align_gapmap.orlgth1)
	ld.w	$a0, $fp, 0
	ld.w	$s3, $s2, %pc_lo12(A__align_gapmap.orlgth2)
	ld.w	$a1, $s0, 0
	b	.LBB6_22
.LBB6_21:
	move	$s5, $a5
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
.LBB6_22:
	slt	$a2, $a0, $s4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$s1, $a2, $a0
	slt	$a0, $a1, $s3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
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
	move	$s4, $s5
.LBB6_23:
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %pc_hi20(A__align_gapmap.ijp)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.ijp)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s0
	move	$a1, $s5
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s7
	move	$a1, $s5
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a1, $fp
	move	$fp, $s3
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB6_30
# %bb.24:                               # %.lr.ph338
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	bstrpick.d	$a1, $s1, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB6_27
# %bb.25:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB6_138
# %bb.26:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB6_138
.LBB6_27:
	move	$a3, $zero
.LBB6_28:                               # %scalar.ph.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_29:                               # %scalar.ph
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
	bnez	$a1, .LBB6_29
.LBB6_30:                               # %.preheader327
	move	$s2, $s4
	blez	$s8, .LBB6_37
# %bb.31:                               # %.lr.ph340
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB6_34
# %bb.32:                               # %vector.memcheck520
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB6_141
# %bb.33:                               # %vector.memcheck520
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB6_141
.LBB6_34:
	move	$a3, $zero
.LBB6_35:                               # %scalar.ph526.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_36:                               # %scalar.ph526
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
	bnez	$a1, .LBB6_36
.LBB6_37:                               # %._crit_edge341
	ld.d	$a0, $sp, 400
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.w1)
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s0, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(A__align_gapmap.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $zero
	move	$a4, $fp
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$s4, $sp, 256                   # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	beqz	$a0, .LBB6_44
# %bb.38:
	move	$a0, $fp
	ld.d	$fp, $a1, %pc_lo12(impmtx)
	beqz	$a0, .LBB6_41
# %bb.39:                               # %.lr.ph.i
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	move	$a1, $s1
	.p2align	4, , 16
.LBB6_40:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $fp, $a4
	fldx.s	$fa0, $a4, $a0
	fld.s	$fa1, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB6_40
.LBB6_41:                               # %imp_match_out_vead_tate_gapmap.exit
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s5
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $zero
	move	$a4, $s8
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB6_53
# %bb.42:                               # %.lr.ph.i309.preheader
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_43:                               # %.lr.ph.i309
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
	bnez	$a1, .LBB6_43
	b	.LBB6_45
.LBB6_44:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s6
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_45:                               # %imp_match_out_vead_gapmap.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB6_54
# %bb.46:                               # %.preheader326
	blez	$s8, .LBB6_62
# %bb.47:                               # %.lr.ph344
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_51
# %bb.48:                               # %vector.ph541
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI6_1)
	xvreplgr2vr.w	$xr1, $a0
	addi.d	$a5, $s5, 4
	xvldi	$xr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_49:                               # %vector.body544
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
	bnez	$a6, .LBB6_49
# %bb.50:                               # %middle.block548
	beq	$a2, $a4, .LBB6_62
.LBB6_51:                               # %scalar.ph539.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_52:                               # %scalar.ph539
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
	bnez	$a1, .LBB6_52
	b	.LBB6_62
.LBB6_53:                               # %imp_match_out_vead_gapmap.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $s0, .LBB6_62
.LBB6_54:                               # %.preheader323
	blez	$fp, .LBB6_58
# %bb.55:                               # %iter.check
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	addi.d	$a1, $s1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	ori	$a4, $zero, 1
	bltu	$a5, $a3, .LBB6_144
.LBB6_56:                               # %vec.epilog.scalar.ph.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB6_57:                               # %vec.epilog.scalar.ph
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
	bnez	$a1, .LBB6_57
.LBB6_58:                               # %.preheader321
	blez	$s8, .LBB6_74
# %bb.59:                               # %iter.check623
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	ori	$a4, $zero, 1
	bltu	$a5, $a3, .LBB6_148
.LBB6_60:                               # %vec.epilog.scalar.ph641.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a3, $a4, $s5, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB6_61:                               # %vec.epilog.scalar.ph641
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
	bnez	$a1, .LBB6_61
	b	.LBB6_70
.LBB6_62:                               # %.preheader324
	blez	$fp, .LBB6_69
# %bb.63:                               # %.lr.ph347
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_67
# %bb.64:                               # %vector.ph553
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI6_1)
	xvreplgr2vr.w	$xr1, $a0
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	xvldi	$xr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_65:                               # %vector.body558
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
	bnez	$a6, .LBB6_65
# %bb.66:                               # %middle.block565
	beq	$a2, $a4, .LBB6_69
.LBB6_67:                               # %scalar.ph551.preheader
	mul.d	$a2, $a0, $a3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_68:                               # %scalar.ph551
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
	bnez	$a1, .LBB6_68
.LBB6_69:                               # %.loopexit322
	blez	$s8, .LBB6_74
.LBB6_70:                               # %iter.check675
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.m)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a7, $zero, 4
	ori	$a5, $zero, 1
	bgeu	$a4, $a7, .LBB6_116
.LBB6_71:                               # %vec.epilog.scalar.ph691.preheader
	alsl.d	$a4, $a5, $s5, 2
	addi.d	$a4, $a4, -4
	alsl.d	$a1, $a5, $a1, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB6_72:                               # %vec.epilog.scalar.ph691
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
	bnez	$a3, .LBB6_72
.LBB6_73:
	move	$a2, $zero
	b	.LBB6_75
.LBB6_74:                               # %._crit_edge358
	ori	$a2, $zero, 1
	beqz	$s8, .LBB6_152
.LBB6_75:
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a3, $a0
	srai.d	$a0, $a0, 30
	fldx.s	$fa0, $s5, $a0
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	move	$a2, $zero
.LBB6_76:
	ld.d	$s0, $s2, %pc_lo12(A__align_gapmap.lastverticalw)
	fst.s	$fa0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	sltu	$a1, $zero, $a0
	add.w	$s2, $a1, $s1
	ori	$a1, $zero, 2
	blt	$s2, $a1, .LBB6_92
# %bb.77:                               # %.lr.ph382
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	move	$s6, $s3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ijp)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp2)
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp1)
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.ogcp1)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a3, $a2
	srai.d	$s1, $a2, 30
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s4, $zero, 1
	b	.LBB6_79
	.p2align	4, , 16
.LBB6_78:                               # %._crit_edge374
                                        #   in Loop: Header=BB6_79 Depth=1
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	fldx.s	$fa0, $s3, $s1
	addi.d	$s4, $s4, 1
	fstx.s	$fa0, $s0, $a0
	move	$s5, $s3
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	beq	$s4, $s2, .LBB6_93
.LBB6_79:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_82 Depth 2
                                        #     Child Loop BB6_86 Depth 2
	addi.d	$fp, $s4, -1
	slli.d	$s7, $fp, 2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s7
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	fst.s	$fa0, $s5, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s8
	move	$a6, $s6
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_83
# %bb.80:                               #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_83
# %bb.81:                               # %.lr.ph.i312.preheader
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_82:                               # %.lr.ph.i312
                                        #   Parent Loop BB6_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	slli.d	$a5, $a5, 2
	fldx.s	$fa0, $a1, $a5
	fld.s	$fa1, $a3, 0
	addi.w	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a3, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	move	$a3, $a5
	bnez	$a2, .LBB6_82
.LBB6_83:                               # %imp_match_out_vead_gapmap.exit317
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_78
# %bb.84:                               # %.lr.ph373.preheader
                                        #   in Loop: Header=BB6_79 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $s7
	fld.s	$fa2, $s5, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	fld.s	$fa3, $a3, 4
	slli.d	$a3, $s4, 3
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	fldx.s	$fa1, $a3, $a0
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a3, $s3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	move	$t2, $s5
	b	.LBB6_86
	.p2align	4, , 16
.LBB6_85:                               #   in Loop: Header=BB6_86 Depth=2
	fadd.s	$fa3, $fa3, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	fld.s	$fa3, $a3, 0
	masknez	$t4, $a1, $t3
	maskeqz	$a2, $a2, $t3
	or	$a2, $a2, $t4
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $a3, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, -1
	beq	$s8, $a1, .LBB6_78
.LBB6_86:                               # %.lr.ph373
                                        #   Parent Loop BB6_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a4, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB6_88
# %bb.87:                               #   in Loop: Header=BB6_86 Depth=2
	add.d	$t3, $a2, $a5
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa4
.LBB6_88:                               #   in Loop: Header=BB6_86 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB6_90
# %bb.89:                               #   in Loop: Header=BB6_86 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s4, $t3
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa6
.LBB6_90:                               #   in Loop: Header=BB6_86 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB6_85
# %bb.91:                               #   in Loop: Header=BB6_86 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$fp, $a7, 0
	b	.LBB6_85
.LBB6_92:
	movgr2fr.w	$fs0, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_108
	b	.LBB6_94
.LBB6_93:                               # %._crit_edge383.loopexit
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	move	$s5, $s3
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_108
.LBB6_94:                               # %.preheader320
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_101
# %bb.95:                               # %.lr.ph388
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_99
# %bb.96:                               # %vector.ph711
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_2)
	xvld	$xr1, $a5, %pc_lo12(.LCPI6_2)
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI6_3)
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	xvreplgr2vr.d	$xr3, $a5
	addi.d	$a5, $s5, 4
	xvldi	$xr4, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_97:                               # %vector.body718
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
	bnez	$a6, .LBB6_97
# %bb.98:                               # %middle.block725
	beq	$a2, $a4, .LBB6_101
.LBB6_99:                               # %scalar.ph709.preheader
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_100:                              # %scalar.ph709
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
	bnez	$a1, .LBB6_100
.LBB6_101:                              # %.preheader319
	blez	$fp, .LBB6_108
# %bb.102:                              # %.lr.ph391
	bstrpick.d	$a0, $s1, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $t0, %pc_lo12(A__align_gapmap.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $s1, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB6_106
# %bb.103:                              # %vector.ph730
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	pcalau12i	$a5, %pc_hi20(.LCPI6_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI6_4)
	xvreplve0.d	$xr4, $xr1
	addi.d	$a5, $a1, 4
	xvldi	$xr5, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_104:                              # %vector.body737
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
	bnez	$a6, .LBB6_104
# %bb.105:                              # %middle.block744
	beq	$a3, $a4, .LBB6_108
.LBB6_106:                              # %scalar.ph728.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_107:                              # %scalar.ph728
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
	bnez	$a2, .LBB6_107
.LBB6_108:                              # %.loopexit
	ld.d	$s3, $t0, %pc_lo12(A__align_gapmap.lastverticalw)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align_gapmap.mseq2)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(A__align_gapmap.ijp)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_115
# %bb.109:
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ori	$a3, $zero, 1
	addi.w	$ra, $s7, 0
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	addi.w	$a2, $fp, 0
	beq	$a1, $a3, .LBB6_125
# %bb.110:
	fld.s	$fa0, $s3, 0
	blez	$ra, .LBB6_120
# %bb.111:                              # %.lr.ph.i318
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB6_113
	.p2align	4, , 16
.LBB6_112:                              #   in Loop: Header=BB6_113 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB6_120
.LBB6_113:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_112
# %bb.114:                              #   in Loop: Header=BB6_113 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_112
.LBB6_115:
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s1, $sp, 0
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s7
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s2
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB6_202
.LBB6_116:                              # %vector.memcheck660
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $s5, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s5, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB6_71
# %bb.117:                              # %vector.memcheck660
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB6_71
# %bb.118:                              # %vector.main.loop.iter.check677
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB6_211
# %bb.119:
	move	$a6, $zero
	b	.LBB6_215
.LBB6_120:                              # %.preheader2.i
	blez	$a2, .LBB6_125
# %bb.121:                              # %.lr.ph7.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a3, $a5, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $a5, 30, 0
	sub.d	$a5, $zero, $a5
	b	.LBB6_123
	.p2align	4, , 16
.LBB6_122:                              #   in Loop: Header=BB6_123 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s5, $s5, 4
	beqz	$a4, .LBB6_125
.LBB6_123:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_122
# %bb.124:                              #   in Loop: Header=BB6_123 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_122
.LBB6_125:                              # %.loopexit.i
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	bltz	$ra, .LBB6_133
# %bb.126:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB6_128
# %bb.127:
	move	$a3, $zero
	b	.LBB6_131
.LBB6_128:                              # %vector.ph749
	pcalau12i	$a4, %pc_hi20(.LCPI6_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s2, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_129:                              # %vector.body752
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
	bnez	$a5, .LBB6_129
# %bb.130:                              # %middle.block759
	beq	$a1, $a3, .LBB6_133
.LBB6_131:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $s2, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB6_132:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB6_132
.LBB6_133:                              # %.preheader1.i
	ld.d	$a1, $sp, 384
	bltz	$a2, .LBB6_162
# %bb.134:                              # %iter.check765
	ld.d	$a3, $s2, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a6, $a4, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB6_136
# %bb.135:
	move	$a5, $zero
	b	.LBB6_160
.LBB6_136:                              # %vector.main.loop.iter.check767
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB6_153
# %bb.137:
	move	$a5, $zero
	b	.LBB6_157
.LBB6_138:                              # %vector.ph
	bstrpick.d	$a3, $s1, 30, 3
	slli.d	$a3, $a3, 3
	xvldi	$xr0, -912
	xvldi	$xr1, -928
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_139:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a4, 0
	xvpermi.q	$xr3, $xr2, 1
	vreplvei.w	$vr4, $vr3, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr3, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr4, 1
	vreplvei.w	$vr4, $vr3, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr5, $xr4, 2
	vreplvei.w	$vr3, $vr3, 3
	fcvt.d.s	$fa3, $fa3
	xvinsve0.d	$xr5, $xr3, 3
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	vreplvei.w	$vr4, $vr2, 0
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr4, $xr3, 1
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	xvinsve0.d	$xr4, $xr3, 2
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr5, $xr4, 1
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr5, $xr4, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 3
	xvpickve.d	$xr3, $xr2, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 4
	xvpickve.d	$xr3, $xr2, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 5
	xvpickve.d	$xr3, $xr2, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 6
	xvpickve.d	$xr2, $xr2, 3
	xvld	$xr3, $a5, 0
	fcvt.s.d	$fa2, $fa2
	xvinsve0.w	$xr5, $xr2, 7
	xvst	$xr5, $a4, 0
	xvpermi.q	$xr2, $xr3, 1
	vreplvei.w	$vr4, $vr2, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr2, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr4, 1
	vreplvei.w	$vr4, $vr2, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr5, $xr4, 2
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr5, $xr2, 3
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr4, $vr3, 0
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr4, $xr2, 1
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr5, $xr4, 1
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr5, $xr4, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 3
	xvpickve.d	$xr3, $xr2, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 4
	xvpickve.d	$xr3, $xr2, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 5
	xvpickve.d	$xr3, $xr2, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 6
	xvpickve.d	$xr2, $xr2, 3
	fcvt.s.d	$fa2, $fa2
	xvinsve0.w	$xr5, $xr2, 7
	xvst	$xr5, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB6_139
# %bb.140:                              # %middle.block
	beq	$a1, $a3, .LBB6_30
	b	.LBB6_28
.LBB6_141:                              # %vector.ph528
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 3
	slli.d	$a3, $a3, 3
	xvldi	$xr0, -912
	xvldi	$xr1, -928
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_142:                              # %vector.body531
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a4, 0
	xvpermi.q	$xr3, $xr2, 1
	vreplvei.w	$vr4, $vr3, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr3, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr4, 1
	vreplvei.w	$vr4, $vr3, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr5, $xr4, 2
	vreplvei.w	$vr3, $vr3, 3
	fcvt.d.s	$fa3, $fa3
	xvinsve0.d	$xr5, $xr3, 3
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	vreplvei.w	$vr4, $vr2, 0
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr4, $xr3, 1
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	xvinsve0.d	$xr4, $xr3, 2
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr5, $xr4, 1
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr5, $xr4, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 3
	xvpickve.d	$xr3, $xr2, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 4
	xvpickve.d	$xr3, $xr2, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 5
	xvpickve.d	$xr3, $xr2, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 6
	xvpickve.d	$xr2, $xr2, 3
	xvld	$xr3, $a5, 0
	fcvt.s.d	$fa2, $fa2
	xvinsve0.w	$xr5, $xr2, 7
	xvst	$xr5, $a4, 0
	xvpermi.q	$xr2, $xr3, 1
	vreplvei.w	$vr4, $vr2, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr2, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr4, 1
	vreplvei.w	$vr4, $vr2, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr5, $xr4, 2
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr5, $xr2, 3
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr4, $vr3, 0
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr4, $xr2, 1
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr5, $xr4, 1
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr5, $xr4, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 3
	xvpickve.d	$xr3, $xr2, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 4
	xvpickve.d	$xr3, $xr2, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 5
	xvpickve.d	$xr3, $xr2, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 6
	xvpickve.d	$xr2, $xr2, 3
	fcvt.s.d	$fa2, $fa2
	xvinsve0.w	$xr5, $xr2, 7
	xvst	$xr5, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB6_142
# %bb.143:                              # %middle.block536
	beq	$a1, $a3, .LBB6_37
	b	.LBB6_35
.LBB6_144:                              # %vector.memcheck568
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a1, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_56
# %bb.145:                              # %vector.memcheck568
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_56
# %bb.146:                              # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_219
# %bb.147:
	move	$a5, $zero
	b	.LBB6_223
.LBB6_148:                              # %vector.memcheck608
	addi.d	$a5, $s5, 4
	alsl.d	$a6, $a1, $s5, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_60
# %bb.149:                              # %vector.memcheck608
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_60
# %bb.150:                              # %vector.main.loop.iter.check625
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_226
# %bb.151:
	move	$a5, $zero
	b	.LBB6_230
.LBB6_152:
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB6_76
.LBB6_153:                              # %vector.ph768
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI6_6)
	xvld	$xr0, $a7, %pc_lo12(.LCPI6_6)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_154:                              # %vector.body771
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB6_154
# %bb.155:                              # %middle.block777
	beq	$a4, $a5, .LBB6_162
# %bb.156:                              # %vec.epilog.iter.check782
	andi	$a7, $a6, 12
	beqz	$a7, .LBB6_160
.LBB6_157:                              # %vec.epilog.ph781
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_7)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_7)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB6_158:                              # %vec.epilog.vector.body789
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB6_158
# %bb.159:                              # %vec.epilog.middle.block794
	beq	$a4, $a5, .LBB6_162
.LBB6_160:                              # %vec.epilog.scalar.ph780.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB6_161:                              # %vec.epilog.scalar.ph780
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB6_161
.LBB6_162:                              # %._crit_edge.i
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	add.d	$a3, $a3, $ra
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	add.d	$a3, $a0, $ra
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	bltz	$a0, .LBB6_194
# %bb.163:                              # %.lr.ph41.i.preheader
	move	$t0, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 45
	ori	$a4, $zero, 111
	ori	$a5, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $s2
	.p2align	4, , 16
.LBB6_164:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_170 Depth 2
                                        #     Child Loop BB6_181 Depth 2
                                        #     Child Loop BB6_177 Depth 2
                                        #     Child Loop BB6_186 Depth 2
	addi.w	$t2, $s7, 0
	slli.d	$t1, $t2, 3
	ldx.d	$t1, $s2, $t1
	addi.w	$t3, $a7, 0
	slli.d	$t5, $t3, 2
	ldx.w	$t4, $t1, $t5
	bltz	$t4, .LBB6_172
# %bb.165:                              #   in Loop: Header=BB6_164 Depth=1
	beqz	$t4, .LBB6_193
# %bb.166:                              #   in Loop: Header=BB6_164 Depth=1
	sub.d	$t1, $s7, $t4
	move	$t4, $a2
	nor	$t6, $t1, $zero
	add.w	$t7, $s7, $t6
	beqz	$t7, .LBB6_173
.LBB6_167:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB6_164 Depth=1
	bltu	$t7, $a6, .LBB6_179
# %bb.168:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB6_164 Depth=1
	sub.d	$t8, $s5, $s3
	bltu	$t8, $a6, .LBB6_179
# %bb.169:                              # %vector.ph823
                                        #   in Loop: Header=BB6_164 Depth=1
	bstrpick.d	$s0, $t7, 31, 0
	bstrpick.d	$t8, $s0, 31, 5
	slli.d	$s1, $t8, 5
	sub.d	$t7, $t7, $s1
	sub.d	$t8, $s3, $s1
	sub.d	$fp, $s5, $s1
	addi.d	$s2, $s5, -32
	addi.d	$s3, $s3, -32
	move	$s5, $s1
	.p2align	4, , 16
.LBB6_170:                              # %vector.body827
                                        #   Parent Loop BB6_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s2, 0
	xvst	$xr4, $s3, 0
	addi.d	$s5, $s5, -32
	addi.d	$s2, $s2, -32
	addi.d	$s3, $s3, -32
	bnez	$s5, .LBB6_170
# %bb.171:                              # %middle.block834
                                        #   in Loop: Header=BB6_164 Depth=1
	move	$s2, $a0
	bne	$s1, $s0, .LBB6_180
	b	.LBB6_182
	.p2align	4, , 16
.LBB6_172:                              #   in Loop: Header=BB6_164 Depth=1
	addi.d	$t1, $s7, -1
	nor	$t6, $t1, $zero
	add.w	$t7, $s7, $t6
	bnez	$t7, .LBB6_167
	.p2align	4, , 16
.LBB6_173:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB6_164 Depth=1
	beq	$t4, $a2, .LBB6_183
.LBB6_174:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB6_164 Depth=1
	addi.w	$t6, $zero, -17
	nor	$fp, $t4, $zero
	bltu	$t6, $t4, .LBB6_184
# %bb.175:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB6_164 Depth=1
	sub.d	$t6, $s5, $s3
	bltu	$t6, $a5, .LBB6_184
# %bb.176:                              # %vector.ph802
                                        #   in Loop: Header=BB6_164 Depth=1
	bstrpick.d	$t6, $fp, 30, 4
	slli.d	$s0, $t6, 4
	sub.d	$t8, $fp, $s0
	sub.d	$t6, $s3, $s0
	sub.d	$t7, $s5, $s0
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t0, 0
	addi.d	$t0, $s5, -8
	addi.d	$s1, $s3, -8
	move	$s2, $s0
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB6_177:                              # %vector.body805
                                        #   Parent Loop BB6_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t0, -8
	vst	$vr2, $s1, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s2, $s2, -16
	addi.d	$t0, $t0, -16
	addi.d	$s1, $s1, -16
	bnez	$s2, .LBB6_177
# %bb.178:                              # %middle.block812
                                        #   in Loop: Header=BB6_164 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$t0, $xr5, 0
	move	$s2, $a0
	bne	$s0, $fp, .LBB6_185
	b	.LBB6_187
	.p2align	4, , 16
.LBB6_179:                              #   in Loop: Header=BB6_164 Depth=1
	move	$t8, $s3
	move	$fp, $s5
.LBB6_180:                              # %.lr.ph19.i.preheader841
                                        #   in Loop: Header=BB6_164 Depth=1
	move	$s0, $t8
	move	$s1, $fp
	.p2align	4, , 16
.LBB6_181:                              # %.lr.ph19.i
                                        #   Parent Loop BB6_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$fp, $s1, -1
	st.b	$a4, $s1, -1
	addi.d	$t8, $s0, -1
	addi.w	$t7, $t7, -1
	st.b	$a3, $s0, -1
	move	$s0, $t8
	move	$s1, $fp
	bnez	$t7, .LBB6_181
.LBB6_182:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB6_164 Depth=1
	add.d	$t0, $s7, $t0
	add.d	$t0, $t6, $t0
	move	$s5, $fp
	move	$s3, $t8
	bne	$t4, $a2, .LBB6_174
.LBB6_183:                              #   in Loop: Header=BB6_164 Depth=1
	move	$t7, $s5
	move	$t6, $s3
	bne	$t2, $ra, .LBB6_188
	b	.LBB6_190
	.p2align	4, , 16
.LBB6_184:                              #   in Loop: Header=BB6_164 Depth=1
	move	$t8, $fp
	move	$t6, $s3
	move	$t7, $s5
.LBB6_185:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB6_164 Depth=1
	add.d	$t0, $t0, $t8
	.p2align	4, , 16
.LBB6_186:                              # %.lr.ph29.i
                                        #   Parent Loop BB6_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t7, -1
	addi.d	$t7, $t7, -1
	st.b	$a4, $t6, -1
	addi.w	$t8, $t8, -1
	addi.d	$t6, $t6, -1
	bnez	$t8, .LBB6_186
.LBB6_187:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB6_164 Depth=1
	beq	$t2, $ra, .LBB6_190
.LBB6_188:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB6_164 Depth=1
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	addi.w	$t8, $t8, 0
	beq	$t3, $t8, .LBB6_190
# %bb.189:                              #   in Loop: Header=BB6_164 Depth=1
	slli.d	$t8, $t2, 2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$t8, $fp, $t8
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $fp, %pc_lo12(impmtx)
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t5, $s0, $t5
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $fp, $t8
	slli.d	$t5, $t5, 2
	fldx.s	$fa5, $t8, $t5
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB6_190:                              #   in Loop: Header=BB6_164 Depth=1
	blez	$t2, .LBB6_195
# %bb.191:                              #   in Loop: Header=BB6_164 Depth=1
	blez	$t3, .LBB6_195
# %bb.192:                              #   in Loop: Header=BB6_164 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s5, $t7, -1
	st.b	$a3, $t7, -1
	addi.d	$s3, $t6, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t6, -1
	move	$s7, $t1
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	bge	$t1, $t0, .LBB6_164
	b	.LBB6_194
	.p2align	4, , 16
.LBB6_193:                              #   in Loop: Header=BB6_164 Depth=1
	addi.d	$t1, $s7, -1
	move	$t4, $a2
	nor	$t6, $t1, $zero
	add.w	$t7, $s7, $t6
	bnez	$t7, .LBB6_167
	b	.LBB6_173
.LBB6_194:                              # %._crit_edge42.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bgtz	$a0, .LBB6_196
	b	.LBB6_198
.LBB6_195:
	move	$s5, $t7
	move	$s3, $t6
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blez	$a0, .LBB6_198
.LBB6_196:                              # %.lr.ph50.preheader.i
	move	$fp, $s8
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_197:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB6_197
.LBB6_198:                              # %.preheader.i
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	blez	$s1, .LBB6_201
# %bb.199:                              # %.lr.ph52.preheader.i
	move	$fp, $s7
	move	$s0, $s1
	.p2align	4, , 16
.LBB6_200:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB6_200
.LBB6_201:                              # %Atracking_localhom_gapmap.exit
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
.LBB6_202:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_218
# %bb.203:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_218
# %bb.204:
	blez	$s0, .LBB6_207
.LBB6_205:                              # %.lr.ph394
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_206:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s8, $s8, 8
	bnez	$s0, .LBB6_206
.LBB6_207:                              # %.preheader
	blez	$s1, .LBB6_210
# %bb.208:                              # %.lr.ph396
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_209:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s7, $s7, 8
	bnez	$s1, .LBB6_209
.LBB6_210:                              # %._crit_edge397
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
.LBB6_211:                              # %vector.ph678
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	xvldrepl.w	$xr0, $a0, 0
	addi.d	$a5, $s5, 32
	addi.d	$a7, $a1, 36
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	move	$t1, $a6
	.p2align	4, , 16
.LBB6_212:                              # %vector.body681
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
	bnez	$t1, .LBB6_212
# %bb.213:                              # %middle.block688
	beq	$a4, $a6, .LBB6_73
# %bb.214:                              # %vec.epilog.iter.check693
	andi	$a5, $a4, 12
	beqz	$a5, .LBB6_233
.LBB6_215:                              # %vec.epilog.ph692
	move	$a7, $a4
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $t0, 1, 0
	vldrepl.w	$vr0, $a0, 0
	slli.d	$t1, $a6, 2
	alsl.d	$t0, $a6, $s5, 2
	addi.d	$t2, $t1, 4
	add.d	$t1, $a1, $t2
	add.d	$t2, $a2, $t2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB6_216:                              # %vec.epilog.vector.body698
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t1, 0
	vst	$vr1, $t2, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a6, $a6, 4
	addi.d	$t2, $t2, 16
	bnez	$a6, .LBB6_216
# %bb.217:                              # %vec.epilog.middle.block705
	bne	$a4, $a7, .LBB6_71
	b	.LBB6_73
.LBB6_218:
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
	bgtz	$s0, .LBB6_205
	b	.LBB6_207
.LBB6_219:                              # %vector.ph583
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_220:                              # %vector.body586
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
	bnez	$a7, .LBB6_220
# %bb.221:                              # %middle.block595
	beq	$a3, $a5, .LBB6_58
# %bb.222:                              # %vec.epilog.iter.check
	andi	$a4, $a3, 12
	beqz	$a4, .LBB6_234
.LBB6_223:                              # %vec.epilog.ph
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
.LBB6_224:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB6_224
# %bb.225:                              # %vec.epilog.middle.block
	bne	$a3, $a6, .LBB6_56
	b	.LBB6_58
.LBB6_226:                              # %vector.ph626
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	addi.d	$a6, $s5, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_227:                              # %vector.body629
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
	bnez	$a7, .LBB6_227
# %bb.228:                              # %middle.block638
	beq	$a3, $a5, .LBB6_70
# %bb.229:                              # %vec.epilog.iter.check643
	andi	$a4, $a3, 12
	beqz	$a4, .LBB6_235
.LBB6_230:                              # %vec.epilog.ph642
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	alsl.d	$t0, $a5, $s5, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB6_231:                              # %vec.epilog.vector.body648
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB6_231
# %bb.232:                              # %vec.epilog.middle.block656
	bne	$a3, $a6, .LBB6_60
	b	.LBB6_70
.LBB6_233:
	addi.d	$a5, $a6, 1
	b	.LBB6_71
.LBB6_234:
	addi.d	$a4, $a5, 1
	b	.LBB6_56
.LBB6_235:
	addi.d	$a4, $a5, 1
	b	.LBB6_60
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
# %bb.9:
	ori	$a0, $zero, 2
	addi.w	$s1, $s3, -1
	blt	$s3, $a0, .LBB7_12
.LBB7_10:                               # %.lr.ph.preheader
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
	ori	$a0, $zero, 2
	addi.w	$s1, $s3, -1
	bge	$s3, $a0, .LBB7_10
	b	.LBB7_12
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
