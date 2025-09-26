	.file	"cnf.c"
	.text
	.globl	cnf_Init                        # -- Begin function cnf_Init
	.p2align	5
	.type	cnf_Init,@function
cnf_Init:                               # @cnf_Init
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $a0, 216
	beqz	$a0, .LBB0_2
# %bb.1:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3908
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	b	.LBB0_3
.LBB0_2:
	move	$a0, $zero
.LBB0_3:
	pcalau12i	$a1, %pc_hi20(cnf_VARIABLEDEPTHARRAY)
	st.d	$a0, $a1, %pc_lo12(cnf_VARIABLEDEPTHARRAY)
	pcaddu18i	$ra, %call36(prfs_Create)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cnf_SEARCHCOPY)
	st.d	$a0, $a1, %pc_lo12(cnf_SEARCHCOPY)
	pcaddu18i	$ra, %call36(prfs_Create)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cnf_HAVEPROOFPS)
	st.d	$a0, $a1, %pc_lo12(cnf_HAVEPROOFPS)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	cnf_Init, .Lfunc_end0-cnf_Init
                                        # -- End function
	.globl	cnf_Free                        # -- Begin function cnf_Free
	.p2align	5
	.type	cnf_Free,@function
cnf_Free:                               # @cnf_Free
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $a0, 216
	beqz	$a0, .LBB1_7
# %bb.1:
	pcalau12i	$fp, %pc_hi20(cnf_VARIABLEDEPTHARRAY)
	ld.d	$a0, $fp, %pc_lo12(cnf_VARIABLEDEPTHARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_ALIGN)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ALIGN)
	ld.w	$a1, $a1, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3908
	mod.wu	$a3, $a2, $a1
	sltui	$a4, $a3, 1
	sub.d	$a1, $a1, $a3
	add.w	$a1, $a1, $a2
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a2, $a4
	pcalau12i	$a2, %got_pc_hi20(memory_OFFSET)
	ld.d	$a2, $a2, %got_pc_lo12(memory_OFFSET)
	ld.wu	$a2, $a2, 0
	sub.d	$a2, $a0, $a2
	ld.d	$a5, $a2, -16
	ld.d	$a4, $a2, -8
	beqz	$a5, .LBB1_8
# %bb.2:
	st.d	$a4, $a5, 8
	or	$a1, $a3, $a1
	beqz	$a4, .LBB1_4
.LBB1_3:
	ld.d	$a2, $a2, -16
	st.d	$a2, $a4, 0
.LBB1_4:
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a2, 0
	add.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a3, $a2, 0
	add.d	$a3, $a1, $a3
	st.d	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	ld.d	$a3, $a2, 0
	bltz	$a3, .LBB1_6
# %bb.5:
	add.d	$a1, $a3, $a1
	st.d	$a1, $a2, 0
.LBB1_6:                                # %memory_Free.exit
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, %pc_lo12(cnf_VARIABLEDEPTHARRAY)
.LBB1_7:
	pcalau12i	$fp, %pc_hi20(cnf_SEARCHCOPY)
	ld.d	$a0, $fp, %pc_lo12(cnf_SEARCHCOPY)
	pcaddu18i	$ra, %call36(prfs_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(cnf_HAVEPROOFPS)
	ld.d	$a0, $s0, %pc_lo12(cnf_HAVEPROOFPS)
	st.d	$zero, $fp, %pc_lo12(cnf_SEARCHCOPY)
	pcaddu18i	$ra, %call36(prfs_Delete)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(cnf_HAVEPROOFPS)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_8:
	pcalau12i	$a5, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a5, $a5, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a4, $a5, 0
	or	$a1, $a3, $a1
	bnez	$a4, .LBB1_3
	b	.LBB1_4
.Lfunc_end1:
	.size	cnf_Free, .Lfunc_end1-cnf_Free
                                        # -- End function
	.globl	cnf_ContainsDefinition          # -- Begin function cnf_ContainsDefinition
	.p2align	5
	.type	cnf_ContainsDefinition,@function
cnf_ContainsDefinition:                 # @cnf_ContainsDefinition
# %bb.0:
	move	$a2, $a1
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(cnf_ContainsDefinitionIntern)
	jr	$t8
.Lfunc_end2:
	.size	cnf_ContainsDefinition, .Lfunc_end2-cnf_ContainsDefinition
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_ContainsDefinitionIntern
	.type	cnf_ContainsDefinitionIntern,@function
cnf_ContainsDefinitionIntern:           # @cnf_ContainsDefinitionIntern
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
	move	$fp, $a2
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_AND)
	ld.d	$s1, $a1, %got_pc_lo12(fol_AND)
	ld.w	$a2, $s1, 0
	ld.w	$a6, $a0, 0
	ori	$s2, $zero, 1
	bne	$s0, $s2, .LBB3_4
# %bb.1:
	bne	$a6, $a2, .LBB3_4
.LBB3_2:                                # %.critedge145
	move	$a1, $zero
.LBB3_3:                                # %.critedge145
	move	$a0, $a1
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
.LBB3_4:                                # %.lr.ph.preheader
	addi.d	$a1, $s0, -1
	sltui	$t0, $a1, 1
	xor	$a1, $a6, $a2
	sltui	$a7, $a1, 1
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$s3, $a1, %got_pc_lo12(fol_OR)
	ld.w	$a3, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(fol_ALL)
	ld.d	$s4, $a1, %got_pc_lo12(fol_ALL)
	ld.w	$a4, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(fol_EXIST)
	ld.d	$s5, $a1, %got_pc_lo12(fol_EXIST)
	ld.w	$a5, $s5, 0
	addi.w	$s6, $zero, -1
.LBB3_5:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
                                        #     Child Loop BB3_12 Depth 2
                                        #     Child Loop BB3_34 Depth 2
                                        #     Child Loop BB3_22 Depth 2
	andi	$a1, $t0, 1
	beq	$s0, $s6, .LBB3_15
# %bb.6:                                # %.lr.ph.split.us
                                        #   in Loop: Header=BB3_5 Depth=1
	xor	$t0, $a6, $a3
	sltui	$t0, $t0, 1
	or	$a7, $a7, $t0
	beqz	$a1, .LBB3_27
# %bb.7:                                # %.lr.ph.split.us.split.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	andi	$a1, $a7, 1
	bnez	$a1, .LBB3_45
# %bb.8:                                #   in Loop: Header=BB3_5 Depth=1
	ori	$a7, $zero, 1
	beq	$a4, $a6, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_5 Depth=1
	bne	$a5, $a6, .LBB3_25
.LBB3_10:                               # %tailrecurse.us.peel
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a6, $a0, 0
	bne	$a6, $a2, .LBB3_12
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_11:                               # %tailrecurse.us
                                        #   in Loop: Header=BB3_12 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a6, $a0, 0
	beq	$a6, $a2, .LBB3_2
.LBB3_12:                               # %.lr.ph.split.us.split
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $a3, .LBB3_45
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=2
	beq	$a4, $a6, .LBB3_11
# %bb.14:                               #   in Loop: Header=BB3_12 Depth=2
	beq	$a5, $a6, .LBB3_11
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_15:                               # %.lr.ph.split
                                        #   in Loop: Header=BB3_5 Depth=1
	beqz	$a1, .LBB3_32
# %bb.16:                               # %.lr.ph.split.split.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	beq	$a6, $a3, .LBB3_2
# %bb.17:                               #   in Loop: Header=BB3_5 Depth=1
	andi	$a1, $a7, 1
	bnez	$a1, .LBB3_44
# %bb.18:                               #   in Loop: Header=BB3_5 Depth=1
	ori	$a7, $zero, 1
	beq	$a4, $a6, .LBB3_20
# %bb.19:                               #   in Loop: Header=BB3_5 Depth=1
	bne	$a5, $a6, .LBB3_25
.LBB3_20:                               # %tailrecurse.peel
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a6, $a0, 0
	bne	$a6, $a2, .LBB3_22
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_21:                               # %tailrecurse
                                        #   in Loop: Header=BB3_22 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a6, $a0, 0
	move	$a1, $zero
	beq	$a6, $a2, .LBB3_3
.LBB3_22:                               # %.lr.ph.split.split
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $a3, .LBB3_2
# %bb.23:                               #   in Loop: Header=BB3_22 Depth=2
	beq	$a4, $a6, .LBB3_21
# %bb.24:                               #   in Loop: Header=BB3_22 Depth=2
	beq	$a5, $a6, .LBB3_21
	.p2align	4, , 16
.LBB3_25:                               # %.split46.us
                                        #   in Loop: Header=BB3_5 Depth=1
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $s7, 0
	bne	$a6, $a1, .LBB3_38
.LBB3_26:                               #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a0, $a0, 16
	sub.w	$s0, $zero, $s0
	b	.LBB3_42
	.p2align	4, , 16
.LBB3_27:                               # %.lr.ph.split.us.split.us
                                        #   in Loop: Header=BB3_5 Depth=1
	andi	$a1, $a7, 1
	bnez	$a1, .LBB3_45
	.p2align	4, , 16
.LBB3_28:                               # %.lr.ph84
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a4, $a6, .LBB3_30
# %bb.29:                               # %.lr.ph84
                                        #   in Loop: Header=BB3_28 Depth=2
	bne	$a5, $a6, .LBB3_37
.LBB3_30:                               # %tailrecurse.us.us
                                        #   in Loop: Header=BB3_28 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a6, $a0, 0
	beq	$a6, $a2, .LBB3_45
# %bb.31:                               # %tailrecurse.us.us
                                        #   in Loop: Header=BB3_28 Depth=2
	bne	$a6, $a3, .LBB3_28
	b	.LBB3_45
.LBB3_32:                               # %.lr.ph.split.split.us
                                        #   in Loop: Header=BB3_5 Depth=1
	bne	$a6, $a3, .LBB3_34
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_33:                               # %tailrecurse.us55
                                        #   in Loop: Header=BB3_34 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a6, $a0, 0
	xor	$a1, $a6, $a2
	sltui	$a7, $a1, 1
	beq	$a6, $a3, .LBB3_2
.LBB3_34:                               # %.lr.ph74
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a1, $a7, 1
	bnez	$a1, .LBB3_44
# %bb.35:                               #   in Loop: Header=BB3_34 Depth=2
	beq	$a4, $a6, .LBB3_33
# %bb.36:                               #   in Loop: Header=BB3_34 Depth=2
	beq	$a5, $a6, .LBB3_33
.LBB3_37:                               #   in Loop: Header=BB3_5 Depth=1
	move	$a7, $zero
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $s7, 0
	beq	$a6, $a1, .LBB3_26
.LBB3_38:                               #   in Loop: Header=BB3_5 Depth=1
	pcalau12i	$a1, %got_pc_hi20(fol_IMPLIES)
	ld.d	$s8, $a1, %got_pc_lo12(fol_IMPLIES)
	ld.w	$a1, $s8, 0
	bne	$a6, $a1, .LBB3_49
# %bb.39:                               #   in Loop: Header=BB3_5 Depth=1
	beqz	$a7, .LBB3_2
# %bb.40:                               #   in Loop: Header=BB3_5 Depth=1
	move	$s0, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	addi.w	$a1, $zero, -1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cnf_ContainsDefinitionIntern)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_48
# %bb.41:                               #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a5, $s5, 0
	ld.w	$a4, $s4, 0
	ld.w	$a3, $s3, 0
	ld.d	$a0, $s0, 16
	ld.w	$a2, $s1, 0
	ori	$s0, $zero, 1
.LBB3_42:                               # %tailrecurse.outer.backedge
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a6, $a0, 0
	addi.d	$a1, $s0, -1
	sltui	$t0, $a1, 1
	xor	$a1, $a6, $a2
	sltui	$a7, $a1, 1
	bne	$s0, $s2, .LBB3_5
# %bb.43:                               # %tailrecurse.outer.backedge
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$a1, $zero
	bne	$a6, $a2, .LBB3_5
	b	.LBB3_3
.LBB3_44:
	move	$s0, $s6
.LBB3_45:                               # %.split.us
	addi.d	$s1, $a0, 16
	.p2align	4, , 16
.LBB3_46:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB3_2
# %bb.47:                               #   in Loop: Header=BB3_46 Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cnf_ContainsDefinitionIntern)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_46
.LBB3_48:                               # %.critedge145
	ori	$a1, $zero, 1
	b	.LBB3_3
.LBB3_49:
	pcalau12i	$a1, %got_pc_hi20(fol_EQUIV)
	ld.d	$s3, $a1, %got_pc_lo12(fol_EQUIV)
	ld.w	$a1, $s3, 0
	xor	$a1, $a6, $a1
	sltu	$a1, $zero, $a1
	xori	$a2, $a7, 1
	or	$a1, $a2, $a1
	bnez	$a1, .LBB3_2
# %bb.50:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(cnf_IsDefinition)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_2
# %bb.51:
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(term_ListOfVariables)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$a1, $a1, %got_pc_lo12(term_Equal)
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $zero
.LBB3_52:                               # =>This Inner Loop Header: Depth=1
	move	$s6, $s1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s0, $a0, 8
	st.d	$s6, $a0, 0
	ld.d	$a0, $s0, 8
	move	$s0, $a0
	bnez	$a0, .LBB3_52
# %bb.53:                               # %.preheader22.preheader
	ori	$s6, $zero, 1
	move	$s0, $s1
	b	.LBB3_55
.LBB3_54:                               #   in Loop: Header=BB3_55 Depth=1
	sub.w	$s6, $zero, $s6
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB3_59
.LBB3_55:                               # %.preheader22
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s0, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $s0, 8
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s7, 0
	beq	$a1, $a2, .LBB3_54
# %bb.56:                               #   in Loop: Header=BB3_55 Depth=1
	ld.w	$a2, $s8, 0
	bne	$a1, $a2, .LBB3_58
# %bb.57:                               #   in Loop: Header=BB3_55 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a2, $s0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	beq	$a0, $a2, .LBB3_54
.LBB3_58:                               #   in Loop: Header=BB3_55 Depth=1
	ld.w	$a0, $s3, 0
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	masknez	$s6, $s6, $a0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB3_55
.LBB3_59:                               # %.preheader
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_76
# %bb.60:                               # %.lr.ph113.preheader
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$s2, $a1, %got_pc_lo12(term_Equal)
	move	$s3, $zero
	move	$s6, $s1
.LBB3_61:                               # %.lr.ph113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_67 Depth 2
                                        #       Child Loop BB3_68 Depth 3
                                        #     Child Loop BB3_73 Depth 2
	ld.d	$a4, $s6, 8
	ld.d	$a1, $a4, 8
	ld.w	$a2, $a1, 0
	ld.w	$a5, $s4, 0
	ld.w	$a3, $s5, 0
	beq	$a5, $a2, .LBB3_63
# %bb.62:                               # %.lr.ph113
                                        #   in Loop: Header=BB3_61 Depth=1
	bne	$a3, $a2, .LBB3_74
.LBB3_63:                               #   in Loop: Header=BB3_61 Depth=1
	ld.w	$a4, $a4, 0
	xor	$a5, $a5, $a2
	sltui	$a5, $a5, 1
	addi.d	$a6, $a4, -1
	sltui	$a6, $a6, 1
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_72
# %bb.64:                               #   in Loop: Header=BB3_61 Depth=1
	xor	$a2, $a3, $a2
	sltui	$a2, $a2, 1
	addi.d	$a3, $a4, 1
	sltui	$a3, $a3, 1
	and	$a2, $a2, $a3
	bnez	$a2, .LBB3_72
# %bb.65:                               #   in Loop: Header=BB3_61 Depth=1
	bnez	$s3, .LBB3_80
# %bb.66:                               #   in Loop: Header=BB3_61 Depth=1
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 8
	ld.d	$s0, $a1, 16
	beqz	$s0, .LBB3_71
.LBB3_67:                               # %.lr.ph102
                                        #   Parent Loop BB3_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_68 Depth 3
	ld.d	$s3, $s0, 8
	move	$s7, $a0
	move	$s8, $a0
.LBB3_68:                               # %.lr.ph.i.i
                                        #   Parent Loop BB3_61 Depth=1
                                        #     Parent Loop BB3_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s8, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_77
# %bb.69:                               #   in Loop: Header=BB3_68 Depth=3
	ld.d	$s8, $s8, 0
	bnez	$s8, .LBB3_68
# %bb.70:                               #   in Loop: Header=BB3_67 Depth=2
	ld.d	$s0, $s0, 0
	move	$a0, $s7
	bnez	$s0, .LBB3_67
.LBB3_71:                               #   in Loop: Header=BB3_61 Depth=1
	move	$s3, $zero
	b	.LBB3_74
.LBB3_72:                               #   in Loop: Header=BB3_61 Depth=1
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 8
	ld.d	$s0, $a1, 16
	ori	$s3, $zero, 1
	beqz	$s0, .LBB3_74
.LBB3_73:                               # %.lr.ph107
                                        #   Parent Loop BB3_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(list_DeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB3_73
.LBB3_74:                               # %.critedge143
                                        #   in Loop: Header=BB3_61 Depth=1
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB3_76
# %bb.75:                               # %.critedge143
                                        #   in Loop: Header=BB3_61 Depth=1
	bnez	$a0, .LBB3_61
.LBB3_76:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(list_PairFree)
	addi.d	$a1, $a0, %pc_lo12(list_PairFree)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	b	.LBB3_48
.LBB3_77:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
.LBB3_78:                               # %.lr.ph.i184
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s7, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s7, 0
	ld.d	$a2, $a0, 128
	st.d	$s7, $a2, 0
	move	$s7, $a5
	bnez	$a5, .LBB3_78
.LBB3_79:                               # %list_Delete.exit
	pcalau12i	$a0, %pc_hi20(list_PairFree)
	addi.d	$a1, $a0, %pc_lo12(list_PairFree)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	b	.LBB3_2
.LBB3_80:                               # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
.LBB3_81:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB3_81
	b	.LBB3_79
.Lfunc_end3:
	.size	cnf_ContainsDefinitionIntern, .Lfunc_end3-cnf_ContainsDefinitionIntern
                                        # -- End function
	.globl	cnf_ContainsPredicate           # -- Begin function cnf_ContainsPredicate
	.p2align	5
	.type	cnf_ContainsPredicate,@function
cnf_ContainsPredicate:                  # @cnf_ContainsPredicate
# %bb.0:
	move	$a6, $a2
	ori	$a2, $zero, 1
	move	$a7, $a5
	move	$a5, $a4
	move	$a4, $a3
	move	$a3, $a6
	move	$a6, $a7
	pcaddu18i	$t8, %call36(cnf_ContainsPredicateIntern)
	jr	$t8
.Lfunc_end4:
	.size	cnf_ContainsPredicate, .Lfunc_end4-cnf_ContainsPredicate
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_ContainsPredicateIntern
	.type	cnf_ContainsPredicateIntern,@function
cnf_ContainsPredicateIntern:            # @cnf_ContainsPredicateIntern
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	move	$s3, $a6
	move	$s0, $a5
	move	$s8, $a4
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	move	$s6, $a2
	move	$s4, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_AND)
	ld.d	$s7, $a1, %got_pc_lo12(fol_AND)
	ld.w	$a1, $s7, 0
	ori	$a2, $zero, 1
	bne	$s6, $a2, .LBB5_14
# %bb.1:
	bne	$a0, $a1, .LBB5_14
.LBB5_2:                                # %tailrecurse.outer._crit_edge
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(term_FindSubterm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_101
# %bb.3:
	move	$s3, $a0
	ld.d	$s1, $a0, 16
	bnez	$s1, .LBB5_9
.LBB5_4:                                # %.loopexit.sink.split.sink.split
	ld.d	$a0, $s0, 0
.LBB5_5:                                # %.loopexit.sink.split
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$a1, $a1, %got_pc_lo12(term_Equal)
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$s3, $a0, 0
	st.d	$fp, $s8, 0
.LBB5_6:                                # %.loopexit
	ori	$a0, $zero, 1
	b	.LBB5_102
	.p2align	4, , 16
.LBB5_7:                                #   in Loop: Header=BB5_9 Depth=1
	move	$a0, $a1
.LBB5_8:                                # %list_Nconc.exit
                                        #   in Loop: Header=BB5_9 Depth=1
	st.d	$a0, $s0, 0
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB5_5
.LBB5_9:                                # %.lr.ph305
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_12 Depth 2
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	beqz	$a0, .LBB5_7
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=1
	beqz	$a1, .LBB5_8
# %bb.11:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB5_9 Depth=1
	move	$a3, $a0
	.p2align	4, , 16
.LBB5_12:                               # %.preheader.i
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB5_12
# %bb.13:                               #   in Loop: Header=BB5_9 Depth=1
	st.d	$a1, $a2, 0
	b	.LBB5_8
.LBB5_14:                               # %.lr.ph.preheader
	addi.d	$a2, $s6, -1
	sltui	$a2, $a2, 1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	addi.w	$a3, $zero, -1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(fol_OR)
	ld.d	$a3, $a3, %got_pc_lo12(fol_OR)
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(fol_IMPLIES)
	ld.d	$s1, $a3, %got_pc_lo12(fol_IMPLIES)
	pcalau12i	$a3, %got_pc_hi20(fol_EQUIV)
	ld.d	$a3, $a3, %got_pc_lo12(fol_EQUIV)
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(fol_ALL)
	ld.d	$a3, $a3, %got_pc_lo12(fol_ALL)
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(fol_EXIST)
	ld.d	$a3, $a3, %got_pc_lo12(fol_EXIST)
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(fol_NOT)
	ld.d	$a3, $a3, %got_pc_lo12(fol_NOT)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
.LBB5_15:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_45 Depth 2
                                        #     Child Loop BB5_23 Depth 2
                                        #     Child Loop BB5_56 Depth 2
                                        #     Child Loop BB5_66 Depth 2
	move	$s5, $s6
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a4, $s6, 1
	andi	$a5, $a3, 1
	sltui	$a4, $a4, 1
	sub.w	$s6, $zero, $s6
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	beq	$s5, $a3, .LBB5_32
# %bb.16:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB5_15 Depth=1
	ld.w	$a4, $s1, 0
	addi.d	$a3, $s5, -1
	sltu	$s2, $zero, $a3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a6, $a3, 0
	xor	$a3, $a0, $a4
	sltui	$a3, $a3, 1
	and	$a7, $s2, $a3
	xor	$a6, $a0, $a6
	sltui	$a6, $a6, 1
	or	$a6, $a7, $a6
	beqz	$a5, .LBB5_43
# %bb.17:                               # %.lr.ph.split.us.split.preheader
                                        #   in Loop: Header=BB5_15 Depth=1
	bnez	$a6, .LBB5_2
# %bb.18:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	xor	$a3, $a0, $a3
	sltui	$a3, $a3, 1
	or	$a2, $a2, $a3
	andi	$a2, $a2, 1
	bnez	$a2, .LBB5_88
# %bb.19:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ori	$s8, $zero, 1
	beq	$a2, $a0, .LBB5_95
# %bb.20:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a2, $a0, .LBB5_95
# %bb.21:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a0, $a2, .LBB5_40
# %bb.22:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a4, .LBB5_75
	.p2align	4, , 16
.LBB5_23:                               #   Parent Loop BB5_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	move	$a1, $s4
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s8
	move	$a5, $s0
	move	$a6, $s3
	pcaddu18i	$ra, %call36(cnf_ContainsPredicateIntern)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_6
# %bb.24:                               # %tailrecurse.us.peel
                                        #   in Loop: Header=BB5_23 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s7, 0
	beq	$a0, $a1, .LBB5_2
# %bb.25:                               # %.lr.ph.split.us.split
                                        #   in Loop: Header=BB5_23 Depth=2
	ld.w	$a2, $s1, 0
	xor	$a3, $a0, $a2
	sltui	$a3, $a3, 1
	and	$a3, $s2, $a3
	bnez	$a3, .LBB5_2
# %bb.26:                               # %.lr.ph.split.us.split
                                        #   in Loop: Header=BB5_23 Depth=2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beq	$a0, $a3, .LBB5_2
# %bb.27:                               #   in Loop: Header=BB5_23 Depth=2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beq	$a0, $a3, .LBB5_88
# %bb.28:                               #   in Loop: Header=BB5_23 Depth=2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	ori	$s8, $zero, 1
	beq	$a3, $a0, .LBB5_93
# %bb.29:                               #   in Loop: Header=BB5_23 Depth=2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beq	$a3, $a0, .LBB5_93
# %bb.30:                               #   in Loop: Header=BB5_23 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beq	$a0, $a3, .LBB5_40
# %bb.31:                               #   in Loop: Header=BB5_23 Depth=2
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_23
	b	.LBB5_75
	.p2align	4, , 16
.LBB5_32:                               # %.lr.ph.split
                                        #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beqz	$a5, .LBB5_54
# %bb.33:                               # %.lr.ph.split.split.preheader
                                        #   in Loop: Header=BB5_15 Depth=1
	beq	$a0, $a3, .LBB5_2
# %bb.34:                               #   in Loop: Header=BB5_15 Depth=1
	ld.w	$a3, $s1, 0
	addi.d	$a4, $s5, -1
	sltu	$s2, $zero, $a4
	xor	$a4, $a0, $a3
	sltui	$a4, $a4, 1
	and	$a4, $s2, $a4
	bnez	$a4, .LBB5_2
# %bb.35:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	beq	$a0, $a4, .LBB5_2
# %bb.36:                               #   in Loop: Header=BB5_15 Depth=1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB5_87
# %bb.37:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ori	$s8, $zero, 1
	beq	$a2, $a0, .LBB5_94
# %bb.38:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a2, $a0, .LBB5_94
# %bb.39:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a0, $a2, .LBB5_65
.LBB5_40:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
.LBB5_41:                               # %tailrecurse.outer
                                        #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 0
	xor	$a2, $a0, $a1
	addi.w	$a3, $zero, -1
	sltui	$a2, $a2, 1
	bne	$s5, $a3, .LBB5_15
# %bb.42:                               # %tailrecurse.outer
                                        #   in Loop: Header=BB5_15 Depth=1
	bne	$a0, $a1, .LBB5_15
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_43:                               # %.lr.ph.split.us.split.us
                                        #   in Loop: Header=BB5_15 Depth=1
	bnez	$a6, .LBB5_2
# %bb.44:                               # %.lr.ph280.preheader
                                        #   in Loop: Header=BB5_15 Depth=1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	xor	$a4, $a0, $a4
	sltui	$a4, $a4, 1
	.p2align	4, , 16
.LBB5_45:                               # %.lr.ph280
                                        #   Parent Loop BB5_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB5_88
# %bb.46:                               # %.lr.ph280
                                        #   in Loop: Header=BB5_45 Depth=2
	andi	$a2, $a4, 1
	bnez	$a2, .LBB5_88
# %bb.47:                               #   in Loop: Header=BB5_45 Depth=2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a2, $a0, .LBB5_85
# %bb.48:                               #   in Loop: Header=BB5_45 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a2, $a0, .LBB5_85
# %bb.49:                               #   in Loop: Header=BB5_45 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a0, $a2, .LBB5_41
# %bb.50:                               #   in Loop: Header=BB5_45 Depth=2
	andi	$a1, $a3, 1
	beqz	$a1, .LBB5_75
# %bb.51:                               #   in Loop: Header=BB5_45 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	move	$a1, $s4
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s8
	move	$a5, $s0
	move	$a6, $s3
	pcaddu18i	$ra, %call36(cnf_ContainsPredicateIntern)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_6
# %bb.52:                               # %tailrecurse.us.us
                                        #   in Loop: Header=BB5_45 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s1, 0
	xor	$a1, $a0, $a1
	sltui	$a3, $a1, 1
	and	$a1, $s2, $a3
	bnez	$a1, .LBB5_2
# %bb.53:                               # %tailrecurse.us.us
                                        #   in Loop: Header=BB5_45 Depth=2
	ld.w	$a1, $s7, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a4, $a2, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a5, $a2, 0
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	xor	$a4, $a0, $a4
	sltui	$a4, $a4, 1
	bne	$a0, $a5, .LBB5_45
	b	.LBB5_2
.LBB5_54:                               # %.lr.ph.split.split.us
                                        #   in Loop: Header=BB5_15 Depth=1
	beq	$a0, $a3, .LBB5_2
# %bb.55:                               # %.lr.ph261.preheader
                                        #   in Loop: Header=BB5_15 Depth=1
	addi.d	$a3, $s5, -1
	sltu	$s2, $zero, $a3
	.p2align	4, , 16
.LBB5_56:                               # %.lr.ph261
                                        #   Parent Loop BB5_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $s1, 0
	xor	$a4, $a0, $a3
	sltui	$a4, $a4, 1
	and	$a4, $s2, $a4
	bnez	$a4, .LBB5_2
# %bb.57:                               # %.lr.ph261
                                        #   in Loop: Header=BB5_56 Depth=2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	beq	$a0, $a4, .LBB5_2
# %bb.58:                               #   in Loop: Header=BB5_56 Depth=2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB5_87
# %bb.59:                               #   in Loop: Header=BB5_56 Depth=2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a2, $a0, .LBB5_91
# %bb.60:                               #   in Loop: Header=BB5_56 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a2, $a0, .LBB5_91
# %bb.61:                               #   in Loop: Header=BB5_56 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a0, $a2, .LBB5_41
# %bb.62:                               #   in Loop: Header=BB5_56 Depth=2
	bne	$a0, $a3, .LBB5_75
# %bb.63:                               #   in Loop: Header=BB5_56 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	move	$a1, $s4
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s8
	move	$a5, $s0
	move	$a6, $s3
	pcaddu18i	$ra, %call36(cnf_ContainsPredicateIntern)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_6
# %bb.64:                               # %tailrecurse.us231
                                        #   in Loop: Header=BB5_56 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a3, $a2, 0
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	bne	$a0, $a3, .LBB5_56
	b	.LBB5_2
.LBB5_65:                               #   in Loop: Header=BB5_15 Depth=1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a3, .LBB5_75
	.p2align	4, , 16
.LBB5_66:                               #   Parent Loop BB5_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	move	$a1, $s4
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s8
	move	$a5, $s0
	move	$a6, $s3
	pcaddu18i	$ra, %call36(cnf_ContainsPredicateIntern)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_6
# %bb.67:                               # %tailrecurse.peel
                                        #   in Loop: Header=BB5_66 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s7, 0
	beq	$a0, $a1, .LBB5_2
# %bb.68:                               # %.lr.ph.split.split
                                        #   in Loop: Header=BB5_66 Depth=2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beq	$a0, $a2, .LBB5_2
# %bb.69:                               #   in Loop: Header=BB5_66 Depth=2
	ld.w	$a2, $s1, 0
	xor	$a3, $a0, $a2
	sltui	$a3, $a3, 1
	and	$a3, $s2, $a3
	bnez	$a3, .LBB5_2
# %bb.70:                               #   in Loop: Header=BB5_66 Depth=2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beq	$a0, $a3, .LBB5_2
# %bb.71:                               #   in Loop: Header=BB5_66 Depth=2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	ori	$s8, $zero, 1
	beq	$a3, $a0, .LBB5_92
# %bb.72:                               #   in Loop: Header=BB5_66 Depth=2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beq	$a3, $a0, .LBB5_92
# %bb.73:                               #   in Loop: Header=BB5_66 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beq	$a0, $a3, .LBB5_40
# %bb.74:                               #   in Loop: Header=BB5_66 Depth=2
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_66
.LBB5_75:                               # %.split215.us
	bne	$a0, $s4, .LBB5_101
# %bb.76:
	ld.d	$s1, $fp, 16
	bnez	$s1, .LBB5_80
# %bb.77:
	move	$s3, $fp
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_78:                               #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $a1
.LBB5_79:                               # %list_Nconc.exit151
                                        #   in Loop: Header=BB5_80 Depth=1
	st.d	$a0, $s0, 0
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB5_86
.LBB5_80:                               # %.lr.ph299
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_83 Depth 2
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	beqz	$a0, .LBB5_78
# %bb.81:                               #   in Loop: Header=BB5_80 Depth=1
	beqz	$a1, .LBB5_79
# %bb.82:                               # %.preheader.i146.preheader
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a3, $a0
	.p2align	4, , 16
.LBB5_83:                               # %.preheader.i146
                                        #   Parent Loop BB5_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB5_83
# %bb.84:                               #   in Loop: Header=BB5_80 Depth=1
	st.d	$a1, $a2, 0
	b	.LBB5_79
.LBB5_85:
	move	$s1, $zero
	move	$s8, $zero
	b	.LBB5_96
.LBB5_86:
	move	$s3, $fp
	b	.LBB5_5
.LBB5_87:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
.LBB5_88:                               # %.split.us
	addi.d	$fp, $fp, 16
	.p2align	4, , 16
.LBB5_89:                               # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB5_101
# %bb.90:                               #   in Loop: Header=BB5_89 Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s4
	move	$a2, $s5
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s8
	move	$a5, $s0
	move	$a6, $s3
	pcaddu18i	$ra, %call36(cnf_ContainsPredicateIntern)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_89
	b	.LBB5_6
.LBB5_91:
	move	$s8, $zero
.LBB5_92:
	ori	$s1, $zero, 1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	b	.LBB5_96
.LBB5_93:
	move	$s1, $zero
	b	.LBB5_96
.LBB5_94:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
.LBB5_95:
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
.LBB5_96:                               # %.split206.us
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	move	$a1, $s4
	move	$a2, $s5
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	move	$a5, $s0
	move	$a6, $s3
	pcaddu18i	$ra, %call36(cnf_ContainsPredicateIntern)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_101
# %bb.97:
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	and	$a1, $s8, $a1
	bnez	$a1, .LBB5_99
# %bb.98:
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	xori	$a1, $s1, 1
	or	$a1, $a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB5_102
.LBB5_99:
	ld.d	$s1, $s0, 0
	ori	$a0, $zero, 1
	beqz	$s1, .LBB5_102
# %bb.100:                              # %.lr.ph294
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 8
	ld.d	$a1, $a1, 16
	bnez	$a1, .LBB5_105
	b	.LBB5_102
.LBB5_101:
	move	$a0, $zero
.LBB5_102:                              # %.loopexit
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB5_103:                              # %term_ListContainsTerm.exit
                                        #   in Loop: Header=BB5_105 Depth=1
	ld.d	$s0, $s1, 8
	ld.d	$s2, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s2, $a0, 0
	st.d	$a0, $s3, 0
.LBB5_104:                              # %term_ListContainsTerm.exit.thread
                                        #   in Loop: Header=BB5_105 Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB5_6
.LBB5_105:                              # %.lr.ph294.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_107 Depth 2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	ld.d	$s2, $a0, 16
	beqz	$s2, .LBB5_104
# %bb.106:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB5_105 Depth=1
	ld.d	$s0, $s1, 8
	.p2align	4, , 16
.LBB5_107:                              # %.lr.ph.i.i
                                        #   Parent Loop BB5_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_103
# %bb.108:                              #   in Loop: Header=BB5_107 Depth=2
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB5_107
	b	.LBB5_104
.Lfunc_end5:
	.size	cnf_ContainsPredicateIntern, .Lfunc_end5-cnf_ContainsPredicateIntern
                                        # -- End function
	.globl	cnf_ApplyDefinitionOnce         # -- Begin function cnf_ApplyDefinitionOnce
	.p2align	5
	.type	cnf_ApplyDefinitionOnce,@function
cnf_ApplyDefinitionOnce:                # @cnf_ApplyDefinitionOnce
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
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(term_MaxVar)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_MaxVar)
	jirl	$ra, $ra, 0
	slt	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	pcalau12i	$a1, %got_pc_hi20(symbol_STANDARDVARCOUNTER)
	ld.d	$s5, $a1, %got_pc_lo12(symbol_STANDARDVARCOUNTER)
	st.w	$a0, $s5, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fol_BoundVariables)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_7
# %bb.1:                                # %.lr.ph.preheader
	move	$s4, $a0
	move	$s6, $a0
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB6_5
.LBB6_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 8
	ld.w	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $s6, 8
	ld.w	$a2, $s5, 0
	ld.w	$a1, $a0, 0
	addi.w	$a2, $a2, 1
	st.w	$a2, $s5, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_ExchangeVariable)
	jirl	$ra, $ra, 0
	b	.LBB6_2
.LBB6_5:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB6_6:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s4, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s4, 0
	ld.d	$a2, $a0, 128
	st.d	$s4, $a2, 0
	move	$s4, $a5
	bnez	$a5, .LBB6_6
.LBB6_7:                                # %list_Delete.exit
	addi.d	$a4, $sp, 20
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cnf_ApplyDefinitionInternOnce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 148
	move	$fp, $a0
	beqz	$a1, .LBB6_10
# %bb.8:                                # %list_Delete.exit
	ld.w	$a0, $sp, 20
	beqz	$a0, .LBB6_10
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB6_10:
	move	$a0, $fp
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
.Lfunc_end6:
	.size	cnf_ApplyDefinitionOnce, .Lfunc_end6-cnf_ApplyDefinitionOnce
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_ApplyDefinitionInternOnce
	.type	cnf_ApplyDefinitionInternOnce,@function
cnf_ApplyDefinitionInternOnce:          # @cnf_ApplyDefinitionInternOnce
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	ld.w	$a2, $a2, 0
	move	$s0, $a4
	move	$s3, $a3
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	ld.w	$a0, $a0, 0
	beq	$a0, $a2, .LBB7_29
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EXIST)
	ld.w	$a0, $a0, 0
	beq	$a0, $a2, .LBB7_29
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a0, $a0, 0
	beq	$a2, $a0, .LBB7_30
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $a0, 0
	beq	$a2, $a0, .LBB7_30
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a0, $a0, 0
	beq	$a2, $a0, .LBB7_30
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(fol_IMPLIED)
	ld.d	$a0, $a0, %got_pc_lo12(fol_IMPLIED)
	ld.w	$a0, $a0, 0
	beq	$a2, $a0, .LBB7_30
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(fol_VARLIST)
	ld.d	$a0, $a0, %got_pc_lo12(fol_VARLIST)
	ld.w	$a0, $a0, 0
	beq	$a2, $a0, .LBB7_30
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(fol_IMPLIES)
	ld.d	$a0, $a0, %got_pc_lo12(fol_IMPLIES)
	ld.w	$a0, $a0, 0
	beq	$a2, $a0, .LBB7_30
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(fol_EQUIV)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUIV)
	ld.w	$a0, $a0, 0
	beq	$a2, $a0, .LBB7_30
# %bb.9:
	bne	$fp, $s3, .LBB7_33
# %bb.10:
	ld.w	$a0, $s2, 0
	bne	$a2, $a0, .LBB7_33
# %bb.11:
	ld.d	$s6, $s2, 16
	ld.d	$s7, $fp, 16
	pcalau12i	$a0, %got_pc_hi20(vec_MAX)
	ld.d	$s3, $a0, %got_pc_lo12(vec_MAX)
	ld.w	$s4, $s3, 0
	addi.w	$a0, $s4, 1
	slli.d	$a1, $s4, 3
	pcalau12i	$a2, %got_pc_hi20(vec_VECTOR)
	ld.d	$s5, $a2, %got_pc_lo12(vec_VECTOR)
	stx.d	$s1, $s5, $a1
	beqz	$s6, .LBB7_14
# %bb.12:
	pcalau12i	$a1, %got_pc_hi20(term_Copy)
	ld.d	$s2, $a1, %got_pc_lo12(term_Copy)
	b	.LBB7_21
	.p2align	4, , 16
.LBB7_13:                               # %.preheader43.i
                                        #   in Loop: Header=BB7_14 Depth=1
	move	$a0, $a2
	beq	$s4, $a2, .LBB7_32
.LBB7_14:                               # %.lr.ph49.split.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
	addi.w	$a2, $a0, -1
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s5, $a1
	st.w	$a2, $s3, 0
	ld.w	$a3, $a1, 0
	bgtz	$a3, .LBB7_13
# %bb.15:                               #   in Loop: Header=BB7_14 Depth=1
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB7_13
# %bb.16:                               # %.preheader.preheader.i
                                        #   in Loop: Header=BB7_14 Depth=1
	alsl.d	$a2, $a0, $s5, 3
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB7_17:                               # %.preheader.i
                                        #   Parent Loop BB7_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 8
	st.w	$a0, $s3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB7_17
# %bb.18:                               # %.preheader43.i.loopexit
                                        #   in Loop: Header=BB7_14 Depth=1
	addi.w	$a2, $a0, -1
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_19:                               # %.thread.i
                                        #   in Loop: Header=BB7_21 Depth=1
	ld.d	$a1, $a0, 8
	ld.w	$a1, $a1, 0
	st.w	$a1, $s8, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 16
	ld.w	$a1, $s3, 0
.LBB7_20:                               # %.loopexit.us.i
                                        #   in Loop: Header=BB7_21 Depth=1
	move	$a0, $a1
	beq	$s4, $a1, .LBB7_32
.LBB7_21:                               # %.lr.ph49.split.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_23 Depth 2
                                        #     Child Loop BB7_27 Depth 2
	addi.w	$a1, $a0, -1
	slli.d	$a2, $a1, 3
	ldx.d	$s8, $s5, $a2
	st.w	$a1, $s3, 0
	ld.w	$a2, $s8, 0
	blez	$a2, .LBB7_25
# %bb.22:                               # %.preheader43.us.i.preheader
                                        #   in Loop: Header=BB7_21 Depth=1
	move	$a0, $s7
	move	$a3, $s6
	.p2align	4, , 16
.LBB7_23:                               # %.preheader43.us.i
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 8
	ld.w	$a4, $a4, 0
	beq	$a2, $a4, .LBB7_19
# %bb.24:                               #   in Loop: Header=BB7_23 Depth=2
	ld.d	$a3, $a3, 0
	ld.d	$a0, $a0, 0
	bnez	$a3, .LBB7_23
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_25:                               #   in Loop: Header=BB7_21 Depth=1
	ld.d	$a2, $s8, 16
	beqz	$a2, .LBB7_20
# %bb.26:                               # %.preheader.us.i.preheader
                                        #   in Loop: Header=BB7_21 Depth=1
	alsl.d	$a1, $a0, $s5, 3
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB7_27:                               # %.preheader.us.i
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 8
	st.w	$a0, $s3, 0
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB7_27
# %bb.28:                               # %.loopexit.us.i.loopexit
                                        #   in Loop: Header=BB7_21 Depth=1
	addi.w	$a1, $a0, -1
	b	.LBB7_20
.LBB7_29:
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cnf_ApplyDefinitionInternOnce)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 0
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	st.d	$fp, $a0, 8
	b	.LBB7_33
.LBB7_30:
	ld.d	$s4, $fp, 16
	beqz	$s4, .LBB7_33
	.p2align	4, , 16
.LBB7_31:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s4, 8
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cnf_ApplyDefinitionInternOnce)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 8
	st.d	$fp, $a0, 8
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB7_31
	b	.LBB7_33
.LBB7_32:                               # %cnf_RplacVar.exit
	st.w	$s4, $s3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	move	$fp, $s1
.LBB7_33:                               # %common.ret99
	move	$a0, $fp
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	cnf_ApplyDefinitionInternOnce, .Lfunc_end7-cnf_ApplyDefinitionInternOnce
                                        # -- End function
	.globl	cnf_NegationNormalFormula       # -- Begin function cnf_NegationNormalFormula
	.p2align	5
	.type	cnf_NegationNormalFormula,@function
cnf_NegationNormalFormula:              # @cnf_NegationNormalFormula
# %bb.0:                                # %.lr.ph124.preheader
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(vec_MAX)
	ld.d	$s3, $a1, %got_pc_lo12(vec_MAX)
	ld.w	$a5, $s3, 0
	addi.d	$a4, $a5, 1
	slli.d	$a1, $a5, 3
	pcalau12i	$a2, %got_pc_hi20(vec_VECTOR)
	ld.d	$s5, $a2, %got_pc_lo12(vec_VECTOR)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	stx.d	$a0, $s5, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a1, %got_pc_lo12(fol_NOT)
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a1, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a1, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a1, %got_pc_lo12(fol_ALL)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fol_EXIST)
	ld.d	$a0, $a1, %got_pc_lo12(fol_EXIST)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(term_Copy)
	ld.d	$a0, $a1, %got_pc_lo12(term_Copy)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a1, %got_pc_lo12(fol_OR)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_1:                                # %.loopexit
                                        #   in Loop: Header=BB8_2 Depth=1
	beq	$a5, $a4, .LBB8_24
.LBB8_2:                                # %.lr.ph124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_14 Depth 2
                                        #     Child Loop BB8_19 Depth 2
                                        #     Child Loop BB8_17 Depth 2
                                        #     Child Loop BB8_5 Depth 2
                                        #     Child Loop BB8_7 Depth 2
                                        #     Child Loop BB8_23 Depth 2
	addi.w	$a0, $a4, -1
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s5, $a1
	st.w	$a0, $s3, 0
	ld.w	$s2, $fp, 0
	ld.w	$a0, $s6, 0
	bne	$s2, $a0, .LBB8_21
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$s1, $a0, 8
	ld.w	$a1, $s1, 0
	bne	$a1, $s2, .LBB8_9
# %bb.4:                                #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
	st.w	$a1, $fp, 0
	.p2align	4, , 16
.LBB8_5:                                # %.lr.ph.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB8_5
# %bb.6:                                # %list_Delete.exit
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	st.d	$a0, $fp, 16
	ld.d	$a0, $s7, 256
	ld.d	$a1, $s1, 16
	ld.w	$a2, $a0, 32
	ld.d	$a3, $s8, 0
	ld.d	$a1, $a1, 8
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 256
	st.d	$a1, $a0, 0
	ld.d	$a0, $s1, 16
	beqz	$a0, .LBB8_8
	.p2align	4, , 16
.LBB8_7:                                # %.lr.ph.i83
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB8_7
.LBB8_8:                                # %list_Delete.exit87
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $s7, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s7, 256
	st.d	$s1, $a0, 0
	ld.w	$a0, $s3, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 0
	slli.d	$a0, $a0, 3
	stx.d	$fp, $s5, $a0
	b	.LBB8_21
	.p2align	4, , 16
.LBB8_9:                                #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beq	$a2, $a1, .LBB8_16
# %bb.10:                               #   in Loop: Header=BB8_2 Depth=1
	beq	$a3, $a1, .LBB8_16
# %bb.11:                               #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(fol_AND)
	ld.d	$a2, $a2, %got_pc_lo12(fol_AND)
	ld.w	$a2, $a2, 0
	beq	$a1, $a3, .LBB8_13
# %bb.12:                               #   in Loop: Header=BB8_2 Depth=1
	bne	$a1, $a2, .LBB8_21
.LBB8_13:                               # %cnf_GetDualSymbol.exit102
                                        #   in Loop: Header=BB8_2 Depth=1
	xor	$a4, $a1, $a2
	sltui	$a4, $a4, 1
	xor	$a5, $a1, $a3
	sltui	$a5, $a5, 1
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	ld.d	$s0, $s1, 16
	or	$a1, $a3, $a1
	masknez	$a1, $a1, $a5
	maskeqz	$a2, $a2, $a5
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	beqz	$s0, .LBB8_18
	.p2align	4, , 16
.LBB8_14:                               # %.lr.ph
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s0, 8
	ld.w	$s2, $s6, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB8_14
# %bb.15:                               # %._crit_edge
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $fp, 0
	bnez	$a0, .LBB8_19
	b	.LBB8_20
.LBB8_16:                               # %cnf_GetDualSymbol.exit
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	ld.d	$s0, $a0, 8
	masknez	$a0, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$s4, $a1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 0
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, 16
	st.w	$s4, $fp, 0
	beqz	$a0, .LBB8_20
	.p2align	4, , 16
.LBB8_17:                               # %.lr.ph.i91
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB8_17
	b	.LBB8_20
.LBB8_18:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $fp, 0
	.p2align	4, , 16
.LBB8_19:                               # %.lr.ph.i104
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB8_19
.LBB8_20:                               # %list_Delete.exit108
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_21:                               #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a1, $fp, 16
	ld.w	$a4, $s3, 0
	beqz	$a1, .LBB8_1
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	alsl.d	$a2, $a4, $s5, 3
	.p2align	4, , 16
.LBB8_23:                               #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 8
	addi.w	$a4, $a4, 1
	st.w	$a4, $s3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB8_23
	b	.LBB8_1
.LBB8_24:                               # %._crit_edge125
	st.w	$a5, $s3, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end8:
	.size	cnf_NegationNormalFormula, .Lfunc_end8-cnf_NegationNormalFormula
                                        # -- End function
	.p2align	5                               # -- Begin function symbol_Equal
	.type	symbol_Equal,@function
symbol_Equal:                           # @symbol_Equal
# %bb.0:
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ret
.Lfunc_end9:
	.size	symbol_Equal, .Lfunc_end9-symbol_Equal
                                        # -- End function
	.globl	cnf_ComputeLiteralLists         # -- Begin function cnf_ComputeLiteralLists
	.p2align	5
	.type	cnf_ComputeLiteralLists,@function
cnf_ComputeLiteralLists:                # @cnf_ComputeLiteralLists
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
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(fol_OR)
	ld.d	$a2, $a2, %got_pc_lo12(fol_OR)
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB10_25
# %bb.1:
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 8
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cnf_ComputeLiteralLists)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$fp, $a1, 0
	move	$s5, $a0
	beqz	$fp, .LBB10_39
# %bb.2:                                # %.lr.ph117.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s3, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s7, $a0, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a0, %got_pc_hi20(term_Equal)
	ld.d	$s0, $a0, %got_pc_lo12(term_Equal)
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$s1, $a0, %got_pc_lo12(term_Delete)
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_3:                               # %list_Delete.exit76
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$fp, $fp, 0
	move	$s5, $a0
	beqz	$fp, .LBB10_40
.LBB10_4:                               # %.lr.ph117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_8 Depth 2
                                        #       Child Loop BB10_11 Depth 3
                                        #         Child Loop BB10_18 Depth 4
                                        #     Child Loop BB10_21 Depth 2
                                        #     Child Loop BB10_24 Depth 2
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(cnf_ComputeLiteralLists)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_23
# %bb.5:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB10_4 Depth=1
	move	$s2, $a0
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $zero
	beqz	$s5, .LBB10_20
# %bb.6:                                # %.preheader.preheader
                                        #   in Loop: Header=BB10_4 Depth=1
	move	$s8, $s2
	b	.LBB10_8
	.p2align	4, , 16
.LBB10_7:                               # %._crit_edge
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB10_20
.LBB10_8:                               # %.preheader
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_11 Depth 3
                                        #         Child Loop BB10_18 Depth 4
	move	$fp, $s5
	b	.LBB10_11
	.p2align	4, , 16
.LBB10_9:                               #   in Loop: Header=BB10_11 Depth=3
	move	$s3, $s4
.LBB10_10:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB10_11 Depth=3
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(list_DeleteDuplicatesFree)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s6, $a0, 0
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB10_7
.LBB10_11:                              #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_18 Depth 4
	ld.d	$s3, $s8, 8
	ld.d	$a1, $fp, 0
	ld.d	$s4, $fp, 8
	move	$s6, $a0
	beqz	$a1, .LBB10_13
# %bb.12:                               #   in Loop: Header=BB10_11 Depth=3
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB10_13:                              #   in Loop: Header=BB10_11 Depth=3
	ld.d	$a0, $s8, 0
	beqz	$a0, .LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_11 Depth=3
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB10_15:                              #   in Loop: Header=BB10_11 Depth=3
	beqz	$s3, .LBB10_9
# %bb.16:                               #   in Loop: Header=BB10_11 Depth=3
	beqz	$s4, .LBB10_10
# %bb.17:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB10_11 Depth=3
	move	$a1, $s3
	.p2align	4, , 16
.LBB10_18:                              # %.preheader.i
                                        #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_8 Depth=2
                                        #       Parent Loop BB10_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB10_18
# %bb.19:                               #   in Loop: Header=BB10_11 Depth=3
	st.d	$s4, $a0, 0
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_20:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_21:                              # %.lr.ph.i
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s7, 0
	ld.d	$a4, $s2, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s7, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	ld.d	$a1, $s3, 128
	st.d	$s2, $a1, 0
	move	$s2, $a4
	bnez	$a4, .LBB10_21
# %bb.22:                               #   in Loop: Header=BB10_4 Depth=1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	bnez	$s5, .LBB10_24
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_23:                              #   in Loop: Header=BB10_4 Depth=1
	move	$a0, $zero
	beqz	$s5, .LBB10_3
	.p2align	4, , 16
.LBB10_24:                              # %.lr.ph.i72
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s7, 0
	ld.d	$a4, $s5, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s7, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s5, 0
	ld.d	$a1, $s3, 128
	st.d	$s5, $a1, 0
	move	$s5, $a4
	bnez	$a4, .LBB10_24
	b	.LBB10_3
.LBB10_25:
	pcalau12i	$a2, %got_pc_hi20(fol_AND)
	ld.d	$a2, $a2, %got_pc_lo12(fol_AND)
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB10_35
# %bb.26:
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 8
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cnf_ComputeLiteralLists)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$s0, $a1, 0
	move	$fp, $a0
	bnez	$s0, .LBB10_30
# %bb.27:
	move	$a0, $fp
	b	.LBB10_40
	.p2align	4, , 16
.LBB10_28:                              #   in Loop: Header=BB10_30 Depth=1
	move	$a0, $fp
.LBB10_29:                              # %list_Nconc.exit84
                                        #   in Loop: Header=BB10_30 Depth=1
	ld.d	$s0, $s0, 0
	move	$fp, $a0
	beqz	$s0, .LBB10_40
.LBB10_30:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_33 Depth 2
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(cnf_ComputeLiteralLists)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_28
# %bb.31:                               #   in Loop: Header=BB10_30 Depth=1
	beqz	$fp, .LBB10_29
# %bb.32:                               # %.preheader.i79.preheader
                                        #   in Loop: Header=BB10_30 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB10_33:                              # %.preheader.i79
                                        #   Parent Loop BB10_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB10_33
# %bb.34:                               #   in Loop: Header=BB10_30 Depth=1
	st.d	$fp, $a1, 0
	b	.LBB10_29
.LBB10_35:
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a2, %got_pc_lo12(fol_NOT)
	ld.w	$a2, $a2, 0
	beq	$a1, $a2, .LBB10_38
# %bb.36:
	bgez	$a1, .LBB10_41
# %bb.37:                               # %symbol_IsPredicate.exit
	sub.w	$a1, $zero, $a1
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB10_41
.LBB10_38:
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	b	.LBB10_40
.LBB10_39:
	move	$a0, $s5
.LBB10_40:                              # %.loopexit
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
.LBB10_41:                              # %symbol_IsPredicate.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	ori	$a3, $zero, 1306
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_DumpCore)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	cnf_ComputeLiteralLists, .Lfunc_end10-cnf_ComputeLiteralLists
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function misc_DumpCore
	.type	misc_DumpCore,@function
misc_DumpCore:                          # @misc_DumpCore
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	misc_DumpCore, .Lfunc_end11-misc_DumpCore
                                        # -- End function
	.text
	.globl	cnf_FPrintClause                # -- Begin function cnf_FPrintClause
	.p2align	5
	.type	cnf_FPrintClause,@function
cnf_FPrintClause:                       # @cnf_FPrintClause
# %bb.0:                                # %.lr.ph21.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a1, %got_pc_hi20(vec_MAX)
	ld.d	$s0, $a1, %got_pc_lo12(vec_MAX)
	ld.w	$s1, $s0, 0
	addi.w	$a2, $s1, 1
	slli.d	$a1, $s1, 3
	pcalau12i	$a3, %got_pc_hi20(vec_VECTOR)
	ld.d	$s2, $a3, %got_pc_lo12(vec_VECTOR)
	stx.d	$a0, $s2, $a1
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$s3, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a0, $s3, 0
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_1:                               #   in Loop: Header=BB12_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ld.w	$a3, $s0, 0
.LBB12_2:                               # %.loopexit
                                        #   in Loop: Header=BB12_3 Depth=1
	move	$a2, $a3
	beq	$s1, $a3, .LBB12_8
.LBB12_3:                               # %.lr.ph21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
	addi.w	$a3, $a2, -1
	slli.d	$a1, $a3, 3
	ldx.d	$a1, $s2, $a1
	st.w	$a3, $s0, 0
	ld.w	$a4, $a1, 0
	bne	$a4, $a0, .LBB12_1
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB12_2
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	alsl.d	$a3, $a2, $s2, 3
	addi.d	$a3, $a3, -8
	.p2align	4, , 16
.LBB12_6:                               # %.lr.ph
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a1, 8
	st.w	$a2, $s0, 0
	st.d	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB12_6
# %bb.7:                                # %.loopexit.loopexit
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.w	$a3, $a2, -1
	b	.LBB12_2
.LBB12_8:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$s1, $s0, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	cnf_FPrintClause, .Lfunc_end12-cnf_FPrintClause
                                        # -- End function
	.globl	cnf_FPrint                      # -- Begin function cnf_FPrint
	.p2align	5
	.type	cnf_FPrint,@function
cnf_FPrint:                             # @cnf_FPrint
# %bb.0:                                # %.lr.ph34
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
	move	$fp, $a1
	pcalau12i	$a1, %got_pc_hi20(vec_MAX)
	ld.d	$s0, $a1, %got_pc_lo12(vec_MAX)
	ld.w	$s1, $s0, 0
	addi.w	$a2, $s1, 1
	slli.d	$a1, $s1, 3
	pcalau12i	$a3, %got_pc_hi20(vec_VECTOR)
	ld.d	$s2, $a3, %got_pc_lo12(vec_VECTOR)
	stx.d	$a0, $s2, $a1
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$s3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$s4, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$s5, $a1, %got_pc_lo12(fol_OR)
	ori	$s6, $zero, 2
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_1:                               # %cnf_FPrintClause.exit
                                        #   in Loop: Header=BB13_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	st.w	$s7, $s0, 0
.LBB13_2:                               # %.loopexit
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a2, $s7
	beq	$s1, $s7, .LBB13_19
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_14 Depth 2
                                        #       Child Loop BB13_17 Depth 3
                                        #     Child Loop BB13_6 Depth 2
	addi.w	$s7, $a2, -1
	slli.d	$a1, $s7, 3
	ldx.d	$a3, $s2, $a1
	st.w	$s7, $s0, 0
	ld.w	$a1, $a3, 0
	bne	$a1, $a0, .LBB13_8
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a1, $a3, 16
	beqz	$a1, .LBB13_2
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	alsl.d	$a3, $a2, $s2, 3
	addi.d	$a3, $a3, -8
	.p2align	4, , 16
.LBB13_6:                               # %.lr.ph
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a1, 8
	st.w	$a2, $s0, 0
	st.d	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB13_6
# %bb.7:                                # %.loopexit.loopexit
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.w	$s7, $a2, -1
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_8:                               #   in Loop: Header=BB13_3 Depth=1
	ld.w	$a3, $s5, 0
	beq	$a1, $a3, .LBB13_14
# %bb.9:                                #   in Loop: Header=BB13_3 Depth=1
	bgez	$a1, .LBB13_11
# %bb.10:                               # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB13_3 Depth=1
	sub.w	$a4, $zero, $a1
	and	$a4, $s3, $a4
	beq	$a4, $s6, .LBB13_14
.LBB13_11:                              # %symbol_IsPredicate.exit.thread
                                        #   in Loop: Header=BB13_3 Depth=1
	pcalau12i	$a4, %got_pc_hi20(fol_NOT)
	ld.d	$a4, $a4, %got_pc_lo12(fol_NOT)
	ld.w	$a4, $a4, 0
	bne	$a1, $a4, .LBB13_2
	b	.LBB13_14
	.p2align	4, , 16
.LBB13_12:                              #   in Loop: Header=BB13_14 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s5, 0
	ld.w	$a0, $s0, 0
.LBB13_13:                              # %.loopexit.i
                                        #   in Loop: Header=BB13_14 Depth=2
	move	$a2, $a0
	beq	$s7, $a0, .LBB13_1
.LBB13_14:                              # %.lr.ph21.i
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_17 Depth 3
	addi.w	$a0, $a2, -1
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.w	$a0, $s0, 0
	ld.w	$a4, $a1, 0
	bne	$a4, $a3, .LBB13_12
# %bb.15:                               #   in Loop: Header=BB13_14 Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB13_13
# %bb.16:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB13_14 Depth=2
	alsl.d	$a0, $a2, $s2, 3
	addi.d	$a0, $a0, -8
	.p2align	4, , 16
.LBB13_17:                              # %.lr.ph.i
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a1, 8
	st.w	$a2, $s0, 0
	st.d	$a4, $a0, 0
	ld.d	$a1, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB13_17
# %bb.18:                               # %.loopexit.i.loopexit
                                        #   in Loop: Header=BB13_14 Depth=2
	addi.w	$a0, $a2, -1
	b	.LBB13_13
.LBB13_19:                              # %._crit_edge
	st.w	$s1, $s0, 0
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
.Lfunc_end13:
	.size	cnf_FPrint, .Lfunc_end13-cnf_FPrint
                                        # -- End function
	.globl	cnf_StdoutPrint                 # -- Begin function cnf_StdoutPrint
	.p2align	5
	.type	cnf_StdoutPrint,@function
cnf_StdoutPrint:                        # @cnf_StdoutPrint
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 16
	beqz	$s0, .LBB14_11
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	ori	$s3, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$fp, $a0, %pc_lo12(.L.str.7)
	b	.LBB14_4
	.p2align	4, , 16
.LBB14_2:                               # %.thread
                                        #   in Loop: Header=BB14_4 Depth=1
	pcaddu18i	$ra, %call36(term_Print)
	jirl	$ra, $ra, 0
.LBB14_3:                               # %.loopexit
                                        #   in Loop: Header=BB14_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB14_11
.LBB14_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_10 Depth 2
	ld.d	$a0, $s0, 8
	ld.w	$a1, $a0, 0
	bgez	$a1, .LBB14_6
# %bb.5:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB14_4 Depth=1
	sub.w	$a2, $zero, $a1
	and	$a2, $s1, $a2
	beq	$a2, $s3, .LBB14_2
.LBB14_6:                               # %symbol_IsPredicate.exit.thread
                                        #   in Loop: Header=BB14_4 Depth=1
	ld.w	$a2, $s2, 0
	ld.d	$s4, $a0, 16
	bne	$a1, $a2, .LBB14_9
# %bb.7:                                #   in Loop: Header=BB14_4 Depth=1
	ld.d	$a1, $s4, 8
	ld.w	$a1, $a1, 0
	bgez	$a1, .LBB14_10
# %bb.8:                                # %fol_IsNegativeLiteral.exit
                                        #   in Loop: Header=BB14_4 Depth=1
	sub.w	$a1, $zero, $a1
	and	$a1, $s1, $a1
	bne	$a1, $s3, .LBB14_10
	b	.LBB14_2
	.p2align	4, , 16
.LBB14_9:                               # %fol_IsNegativeLiteral.exit.thread
                                        #   in Loop: Header=BB14_4 Depth=1
	beqz	$s4, .LBB14_2
	.p2align	4, , 16
.LBB14_10:                              # %.preheader
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 8
	pcaddu18i	$ra, %call36(term_Print)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB14_10
	b	.LBB14_3
.LBB14_11:                              # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end14:
	.size	cnf_StdoutPrint, .Lfunc_end14-cnf_StdoutPrint
                                        # -- End function
	.globl	cnf_FilePrint                   # -- Begin function cnf_FilePrint
	.p2align	5
	.type	cnf_FilePrint,@function
cnf_FilePrint:                          # @cnf_FilePrint
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s1, $a0, 16
	beqz	$s1, .LBB15_11
# %bb.1:                                # %.lr.ph
	move	$fp, $a1
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$s2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	ori	$s4, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s0, $a0, %pc_lo12(.L.str.6)
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_2:                               # %.thread
                                        #   in Loop: Header=BB15_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
.LBB15_3:                               # %.loopexit
                                        #   in Loop: Header=BB15_4 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB15_11
.LBB15_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_10 Depth 2
	ld.d	$a1, $s1, 8
	ld.w	$a0, $a1, 0
	bgez	$a0, .LBB15_6
# %bb.5:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB15_4 Depth=1
	sub.w	$a2, $zero, $a0
	and	$a2, $s2, $a2
	beq	$a2, $s4, .LBB15_2
.LBB15_6:                               # %symbol_IsPredicate.exit.thread
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.w	$a2, $s3, 0
	ld.d	$s5, $a1, 16
	bne	$a0, $a2, .LBB15_9
# %bb.7:                                #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a0, $s5, 8
	ld.w	$a0, $a0, 0
	bgez	$a0, .LBB15_10
# %bb.8:                                # %fol_IsNegativeLiteral.exit
                                        #   in Loop: Header=BB15_4 Depth=1
	sub.w	$a0, $zero, $a0
	and	$a0, $s2, $a0
	bne	$a0, $s4, .LBB15_10
	b	.LBB15_2
	.p2align	4, , 16
.LBB15_9:                               # %fol_IsNegativeLiteral.exit.thread
                                        #   in Loop: Header=BB15_4 Depth=1
	beqz	$s5, .LBB15_2
	.p2align	4, , 16
.LBB15_10:                              # %.preheader
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB15_10
	b	.LBB15_3
.LBB15_11:                              # %._crit_edge
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end15:
	.size	cnf_FilePrint, .Lfunc_end15-cnf_FilePrint
                                        # -- End function
	.globl	cnf_FilePrintPrefix             # -- Begin function cnf_FilePrintPrefix
	.p2align	5
	.type	cnf_FilePrintPrefix,@function
cnf_FilePrintPrefix:                    # @cnf_FilePrintPrefix
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $a0, 16
	beqz	$s2, .LBB16_12
# %bb.1:                                # %.lr.ph
	move	$fp, $a1
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$s3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	ori	$s5, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_2:                               # %.thread
                                        #   in Loop: Header=BB16_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintPrefix)
	jirl	$ra, $ra, 0
.LBB16_3:                               # %.thread52
                                        #   in Loop: Header=BB16_4 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB16_12
.LBB16_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_10 Depth 2
	ld.d	$a1, $s2, 8
	ld.w	$a0, $a1, 0
	bgez	$a0, .LBB16_6
# %bb.5:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB16_4 Depth=1
	sub.w	$a2, $zero, $a0
	and	$a2, $s3, $a2
	beq	$a2, $s5, .LBB16_2
.LBB16_6:                               # %symbol_IsPredicate.exit.thread
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.w	$a2, $s4, 0
	ld.d	$s6, $a1, 16
	bne	$a0, $a2, .LBB16_9
# %bb.7:                                #   in Loop: Header=BB16_4 Depth=1
	ld.d	$a0, $s6, 8
	ld.w	$a0, $a0, 0
	bgez	$a0, .LBB16_10
# %bb.8:                                # %fol_IsNegativeLiteral.exit
                                        #   in Loop: Header=BB16_4 Depth=1
	sub.w	$a0, $zero, $a0
	and	$a0, $s3, $a0
	bne	$a0, $s5, .LBB16_10
	b	.LBB16_2
	.p2align	4, , 16
.LBB16_9:                               # %fol_IsNegativeLiteral.exit.thread
                                        #   in Loop: Header=BB16_4 Depth=1
	beqz	$s6, .LBB16_2
	.p2align	4, , 16
.LBB16_10:                              # %.preheader
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s6, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB16_3
# %bb.11:                               #   in Loop: Header=BB16_10 Depth=2
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s6, 0
	bnez	$s6, .LBB16_10
	b	.LBB16_3
.LBB16_12:                              # %._crit_edge
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end16:
	.size	cnf_FilePrintPrefix, .Lfunc_end16-cnf_FilePrintPrefix
                                        # -- End function
	.globl	cnf_Flatten                     # -- Begin function cnf_Flatten
	.p2align	5
	.type	cnf_Flatten,@function
cnf_Flatten:                            # @cnf_Flatten
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	bne	$a0, $a1, .LBB17_6
# %bb.1:
	ld.d	$s2, $fp, 16
	beqz	$s2, .LBB17_6
# %bb.2:                                # %.lr.ph.preheader
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s3, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a0, %got_pc_lo12(memory_FREEDBYTES)
	b	.LBB17_4
	.p2align	4, , 16
.LBB17_3:                               #   in Loop: Header=BB17_4 Depth=1
	move	$s2, $s5
	beqz	$s5, .LBB17_6
.LBB17_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s2, 8
	ld.w	$a0, $s1, 0
	ld.d	$s5, $s2, 0
	bne	$a0, $s0, .LBB17_3
# %bb.5:                                #   in Loop: Header=BB17_4 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_Flatten)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_NInsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 8
	st.d	$a0, $s2, 8
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	ld.d	$a3, $s1, 16
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $s3, 128
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 256
	st.d	$s1, $a0, 0
	b	.LBB17_3
.LBB17_6:                               # %.loopexit
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end17:
	.size	cnf_Flatten, .Lfunc_end17-cnf_Flatten
                                        # -- End function
	.globl	cnf_RemoveTrivialAtoms          # -- Begin function cnf_RemoveTrivialAtoms
	.p2align	5
	.type	cnf_RemoveTrivialAtoms,@function
cnf_RemoveTrivialAtoms:                 # @cnf_RemoveTrivialAtoms
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s2, $a0, 16
	beqz	$s2, .LBB18_50
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$s1, $a0, %got_pc_lo12(fol_AND)
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$s5, $a0, %got_pc_lo12(fol_OR)
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EXIST)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_IMPLIES)
	ld.d	$a0, $a0, %got_pc_lo12(fol_IMPLIES)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_FALSE)
	ld.d	$s4, $a0, %got_pc_lo12(fol_FALSE)
	pcalau12i	$a0, %got_pc_hi20(fol_TRUE)
	ld.d	$s3, $a0, %got_pc_lo12(fol_TRUE)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s8, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUIV)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUIV)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fol_IsFalse)
	addi.d	$a0, $a0, %pc_lo12(fol_IsFalse)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$a0, $a0, %got_pc_lo12(term_Delete)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB18_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_11 Depth 2
	ld.w	$s7, $fp, 0
	ld.w	$a0, $s1, 0
	beq	$s7, $a0, .LBB18_20
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	ld.w	$a0, $s5, 0
	beq	$s7, $a0, .LBB18_25
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beq	$a0, $s7, .LBB18_30
# %bb.5:                                #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beq	$a0, $s7, .LBB18_30
# %bb.6:                                #   in Loop: Header=BB18_2 Depth=1
	ld.w	$a0, $s6, 0
	beq	$s7, $a0, .LBB18_31
# %bb.7:                                #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bne	$s7, $a0, .LBB18_12
# %bb.8:                                #   in Loop: Header=BB18_2 Depth=1
	ld.d	$s2, $s2, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.w	$a2, $s4, 0
	ld.w	$a1, $s3, 0
	beq	$a0, $a2, .LBB18_48
# %bb.9:                                #   in Loop: Header=BB18_2 Depth=1
	bne	$a0, $a1, .LBB18_47
# %bb.10:                               # %.lr.ph.ithread-pre-split.lr.ph
                                        #   in Loop: Header=BB18_2 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	ld.d	$a3, $s8, 128
	ld.d	$a1, $a2, 0
	ld.w	$a4, $a3, 32
	ld.d	$a5, $s0, 0
	ld.d	$a0, $a1, 8
	add.d	$a4, $a5, $a4
	st.d	$a4, $s0, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s8, 128
	st.d	$a2, $a3, 0
	.p2align	4, , 16
.LBB18_11:                              # %.lr.ph.ithread-pre-split
                                        #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s8, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s0, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s0, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s8, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB18_11
	b	.LBB18_19
	.p2align	4, , 16
.LBB18_12:                              #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bne	$s7, $a0, .LBB18_50
# %bb.13:                               #   in Loop: Header=BB18_2 Depth=1
	ld.d	$s2, $s2, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s4, 0
	bne	$a0, $a1, .LBB18_16
# %bb.14:                               #   in Loop: Header=BB18_2 Depth=1
	ld.w	$a1, $s6, 0
	ld.d	$a0, $fp, 16
	st.w	$a1, $fp, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_DeleteElementIfFree)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB18_43
# %bb.15:                               # %tailrecurse.backedge
                                        #   in Loop: Header=BB18_2 Depth=1
	bnez	$s2, .LBB18_2
	b	.LBB18_50
	.p2align	4, , 16
.LBB18_16:                              #   in Loop: Header=BB18_2 Depth=1
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB18_51
# %bb.17:                               # %.lr.ph.i216thread-pre-split.lr.ph
                                        #   in Loop: Header=BB18_2 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	ld.d	$a3, $s8, 128
	ld.d	$a1, $a2, 0
	ld.w	$a4, $a3, 32
	ld.d	$a5, $s0, 0
	ld.d	$a0, $a1, 8
	add.d	$a4, $a5, $a4
	st.d	$a4, $s0, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s8, 128
	st.d	$a2, $a3, 0
	.p2align	4, , 16
.LBB18_18:                              # %.lr.ph.i216thread-pre-split
                                        #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s8, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s0, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s0, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s8, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB18_18
.LBB18_19:                              # %tailrecurse.backedgethread-pre-split
                                        #   in Loop: Header=BB18_2 Depth=1
	ld.w	$a1, $a0, 0
	st.w	$a1, $fp, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	ld.d	$a1, $s8, 256
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s8, 256
	st.d	$a0, $a1, 0
	ld.d	$s2, $fp, 16
	bnez	$s2, .LBB18_2
	b	.LBB18_50
.LBB18_20:                              # %.outer.preheader
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB18_21:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a0, $s3, 0
	beq	$a1, $a0, .LBB18_24
# %bb.22:                               #   in Loop: Header=BB18_21 Depth=1
	ld.w	$a0, $s4, 0
	beq	$a1, $a0, .LBB18_48
# %bb.23:                               #   in Loop: Header=BB18_21 Depth=1
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB18_21
	b	.LBB18_41
.LBB18_24:                              # %.thread
                                        #   in Loop: Header=BB18_21 Depth=1
	ld.d	$s2, $s2, 0
	move	$s1, $zero
	bnez	$s2, .LBB18_21
	b	.LBB18_42
.LBB18_25:                              # %.outer330.preheader
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB18_26:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a0, $s4, 0
	beq	$a1, $a0, .LBB18_29
# %bb.27:                               #   in Loop: Header=BB18_26 Depth=1
	ld.w	$a0, $s3, 0
	beq	$a1, $a0, .LBB18_48
# %bb.28:                               #   in Loop: Header=BB18_26 Depth=1
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB18_26
	b	.LBB18_44
.LBB18_29:                              # %.thread322
                                        #   in Loop: Header=BB18_26 Depth=1
	ld.d	$s2, $s2, 0
	move	$s1, $zero
	bnez	$s2, .LBB18_26
	b	.LBB18_45
.LBB18_30:
	ld.d	$s2, $s2, 0
.LBB18_31:                              # %.loopexit368
	ld.d	$s0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s4, 0
	ld.w	$a3, $s6, 0
	ld.w	$a2, $s3, 0
	bne	$a0, $a1, .LBB18_34
# %bb.32:                               # %.loopexit368
	bne	$s7, $a3, .LBB18_34
.LBB18_33:
	ld.d	$a0, $fp, 16
	st.w	$a2, $fp, 0
	b	.LBB18_49
.LBB18_34:
	bne	$a0, $a2, .LBB18_38
# %bb.35:
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	beq	$a4, $s7, .LBB18_33
# %bb.36:
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	beq	$a4, $s7, .LBB18_33
# %bb.37:
	beq	$s7, $a3, .LBB18_48
.LBB18_38:                              # %.thread227
	bne	$a0, $a1, .LBB18_50
# %bb.39:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beq	$a0, $s7, .LBB18_48
# %bb.40:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bne	$a0, $s7, .LBB18_50
	b	.LBB18_48
.LBB18_41:
	andi	$a0, $s1, 1
	bnez	$a0, .LBB18_50
.LBB18_42:                              # %.thread319
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(fol_IsTrue)
	addi.d	$a1, $a1, %pc_lo12(fol_IsTrue)
	pcalau12i	$a2, %got_pc_hi20(term_Delete)
	ld.d	$a2, $a2, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteElementIfFree)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	bnez	$a0, .LBB18_50
.LBB18_43:
	ld.w	$a0, $s3, 0
	st.w	$a0, $fp, 0
	b	.LBB18_50
.LBB18_44:
	andi	$a0, $s1, 1
	bnez	$a0, .LBB18_50
.LBB18_45:                              # %.thread327
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(fol_IsFalse)
	addi.d	$a1, $a1, %pc_lo12(fol_IsFalse)
	pcalau12i	$a2, %got_pc_hi20(term_Delete)
	ld.d	$a2, $a2, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteElementIfFree)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	bnez	$a0, .LBB18_50
# %bb.46:
	ld.w	$a0, $s4, 0
	st.w	$a0, $fp, 0
	b	.LBB18_50
.LBB18_47:
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$s0, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a0, $s3, 0
	bne	$a1, $a0, .LBB18_56
.LBB18_48:
	ld.d	$a0, $fp, 16
	st.w	$a1, $fp, 0
.LBB18_49:                              # %.loopexit
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
.LBB18_50:                              # %.loopexit
	move	$a0, $fp
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB18_51:
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$s1, $a0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s4, 0
	beq	$a0, $a1, .LBB18_57
# %bb.52:
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB18_50
# %bb.53:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a1, 8
.LBB18_54:                              # %.lr.ph.i222
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s8, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s0, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s0, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s8, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB18_54
# %bb.55:                               # %list_Delete.exit226
	ld.w	$a1, $a0, 0
	st.w	$a1, $fp, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	ld.d	$a1, $s8, 256
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s8, 256
	st.d	$a0, $a1, 0
	b	.LBB18_50
.LBB18_56:
	ld.w	$a0, $s4, 0
	bne	$a1, $a0, .LBB18_50
.LBB18_57:
	ld.w	$a1, $s6, 0
	ld.d	$a0, $fp, 16
	st.w	$a1, $fp, 0
	pcalau12i	$a1, %pc_hi20(fol_IsFalse)
	addi.d	$a1, $a1, %pc_lo12(fol_IsFalse)
	pcalau12i	$a2, %got_pc_hi20(term_Delete)
	ld.d	$a2, $a2, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteElementIfFree)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	b	.LBB18_50
.Lfunc_end18:
	.size	cnf_RemoveTrivialAtoms, .Lfunc_end18-cnf_RemoveTrivialAtoms
                                        # -- End function
	.globl	cnf_ObviousSimplifications      # -- Begin function cnf_ObviousSimplifications
	.p2align	5
	.type	cnf_ObviousSimplifications,@function
cnf_ObviousSimplifications:             # @cnf_ObviousSimplifications
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialOperators)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(cnf_SimplifyQuantors)
	jr	$t8
.Lfunc_end19:
	.size	cnf_ObviousSimplifications, .Lfunc_end19-cnf_ObviousSimplifications
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_RemoveTrivialOperators
	.type	cnf_RemoveTrivialOperators,@function
cnf_RemoveTrivialOperators:             # @cnf_RemoveTrivialOperators
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(fol_AND)
	ld.d	$a1, $a1, %got_pc_lo12(fol_AND)
	pcalau12i	$a2, %got_pc_hi20(fol_OR)
	ld.d	$a2, $a2, %got_pc_lo12(fol_OR)
	pcalau12i	$a3, %got_pc_hi20(memory_ARRAY)
	ld.d	$a3, $a3, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ori	$a5, $zero, 2
	b	.LBB20_2
	.p2align	4, , 16
.LBB20_1:                               # %list_Delete.exit
                                        #   in Loop: Header=BB20_2 Depth=1
	ld.d	$a7, $a3, 256
	ld.w	$t0, $a7, 32
	ld.d	$t1, $a4, 0
	add.d	$t0, $t1, $t0
	st.d	$t0, $a4, 0
	ld.d	$a7, $a7, 0
	st.d	$a7, $fp, 0
	ld.d	$a7, $a3, 256
	st.d	$fp, $a7, 0
	move	$fp, $a6
.LBB20_2:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_8 Depth 2
	ld.w	$a6, $fp, 0
	bgez	$a6, .LBB20_4
# %bb.3:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB20_2 Depth=1
	sub.w	$a7, $zero, $a6
	and	$a7, $a0, $a7
	beq	$a7, $a5, .LBB20_11
.LBB20_4:                               # %symbol_IsPredicate.exit.thread
                                        #   in Loop: Header=BB20_2 Depth=1
	ld.w	$a7, $a1, 0
	ld.d	$s0, $fp, 16
	beq	$a6, $a7, .LBB20_6
# %bb.5:                                # %symbol_IsPredicate.exit.thread
                                        #   in Loop: Header=BB20_2 Depth=1
	ld.w	$a7, $a2, 0
	bne	$a6, $a7, .LBB20_9
.LBB20_6:                               #   in Loop: Header=BB20_2 Depth=1
	ld.d	$a6, $s0, 0
	bnez	$a6, .LBB20_10
# %bb.7:                                #   in Loop: Header=BB20_2 Depth=1
	ld.d	$a6, $s0, 8
	ld.d	$a7, $fp, 8
	st.d	$a7, $a6, 8
	ld.d	$a7, $fp, 16
	beqz	$a7, .LBB20_1
	.p2align	4, , 16
.LBB20_8:                               # %.lr.ph.i
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a3, 128
	ld.w	$t1, $t0, 32
	ld.d	$t2, $a4, 0
	ld.d	$t3, $a7, 0
	add.d	$t1, $t2, $t1
	st.d	$t1, $a4, 0
	ld.d	$t0, $t0, 0
	st.d	$t0, $a7, 0
	ld.d	$t0, $a3, 128
	st.d	$a7, $t0, 0
	move	$a7, $t3
	bnez	$t3, .LBB20_8
	b	.LBB20_1
.LBB20_9:                               # %split
	beqz	$s0, .LBB20_11
	.p2align	4, , 16
.LBB20_10:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialOperators)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	st.d	$fp, $a0, 8
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB20_10
.LBB20_11:                              # %.loopexit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end20:
	.size	cnf_RemoveTrivialOperators, .Lfunc_end20-cnf_RemoveTrivialOperators
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_SimplifyQuantors
	.type	cnf_SimplifyQuantors,@function
cnf_SimplifyQuantors:                   # @cnf_SimplifyQuantors
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_VARLIST)
	ld.d	$s4, $a0, %got_pc_lo12(fol_VARLIST)
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$s5, $a0, %got_pc_lo12(fol_ALL)
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$s6, $a0, %got_pc_lo12(fol_EXIST)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	b	.LBB21_2
	.p2align	4, , 16
.LBB21_1:                               # %.loopexit97
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $s7, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s7, 256
	st.d	$fp, $a0, 0
	move	$fp, $s0
.LBB21_2:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_8 Depth 2
                                        #       Child Loop BB21_11 Depth 3
                                        #       Child Loop BB21_15 Depth 3
                                        #     Child Loop BB21_21 Depth 2
                                        #     Child Loop BB21_26 Depth 2
	ld.w	$a0, $fp, 0
	bgez	$a0, .LBB21_4
# %bb.3:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB21_2 Depth=1
	sub.w	$a1, $zero, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB21_29
.LBB21_4:                               # %symbol_IsPredicate.exit.thread
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.w	$a1, $s4, 0
	beq	$a0, $a1, .LBB21_29
# %bb.5:                                #   in Loop: Header=BB21_2 Depth=1
	ld.w	$a1, $s5, 0
	beq	$a1, $a0, .LBB21_7
# %bb.6:                                #   in Loop: Header=BB21_2 Depth=1
	ld.w	$a1, $s6, 0
	bne	$a1, $a0, .LBB21_27
.LBB21_7:                               #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a2, $fp, 16
	ld.d	$a1, $a2, 0
	ld.d	$a1, $a1, 8
	ld.w	$a3, $a1, 0
	bne	$a3, $a0, .LBB21_18
	.p2align	4, , 16
.LBB21_8:                               # %.lr.ph
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_11 Depth 3
                                        #       Child Loop BB21_15 Depth 3
	ld.d	$a2, $fp, 16
	ld.d	$a3, $a1, 16
	ld.d	$a2, $a2, 8
	ld.d	$a4, $a3, 8
	ld.d	$a3, $a2, 16
	ld.d	$a4, $a4, 16
	beqz	$a3, .LBB21_13
# %bb.9:                                #   in Loop: Header=BB21_8 Depth=2
	beqz	$a4, .LBB21_14
# %bb.10:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB21_8 Depth=2
	move	$a6, $a3
	.p2align	4, , 16
.LBB21_11:                              # %.preheader.i
                                        #   Parent Loop BB21_2 Depth=1
                                        #     Parent Loop BB21_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a5, $a6
	ld.d	$a6, $a6, 0
	bnez	$a6, .LBB21_11
# %bb.12:                               #   in Loop: Header=BB21_8 Depth=2
	st.d	$a4, $a5, 0
	b	.LBB21_14
	.p2align	4, , 16
.LBB21_13:                              #   in Loop: Header=BB21_8 Depth=2
	move	$a3, $a4
.LBB21_14:                              # %.lr.ph.ithread-pre-split.lr.ph
                                        #   in Loop: Header=BB21_8 Depth=2
	st.d	$a3, $a2, 16
	ld.d	$a2, $s7, 256
	ld.d	$a3, $a1, 16
	ld.w	$a4, $a2, 32
	ld.d	$a5, $s8, 0
	ld.d	$a3, $a3, 8
	add.d	$a4, $a5, $a4
	st.d	$a4, $s8, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a3, 0
	ld.d	$a2, $s7, 256
	st.d	$a3, $a2, 0
	ld.d	$a3, $a1, 16
	ld.d	$a4, $s7, 128
	ld.d	$a2, $a3, 0
	ld.w	$a5, $a4, 32
	ld.d	$a6, $s8, 0
	ld.d	$s0, $a2, 8
	add.d	$a5, $a6, $a5
	st.d	$a5, $s8, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a3, 0
	ld.d	$a4, $s7, 128
	st.d	$a3, $a4, 0
	.p2align	4, , 16
.LBB21_15:                              # %.lr.ph.ithread-pre-split
                                        #   Parent Loop BB21_2 Depth=1
                                        #     Parent Loop BB21_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $s7, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $s8, 0
	ld.d	$a6, $a2, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $s8, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s7, 128
	st.d	$a2, $a3, 0
	move	$a2, $a6
	bnez	$a6, .LBB21_15
# %bb.16:                               # %list_Delete.exit
                                        #   in Loop: Header=BB21_8 Depth=2
	ld.d	$a2, $s7, 256
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s8, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s8, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s7, 256
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 0
	st.d	$s0, $a1, 8
	ld.w	$a2, $s0, 0
	move	$a1, $s0
	beq	$a2, $a0, .LBB21_8
# %bb.17:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a2, $fp, 16
	ld.d	$a0, $a2, 8
	ld.d	$s3, $a0, 16
	bnez	$s3, .LBB21_19
	b	.LBB21_27
	.p2align	4, , 16
.LBB21_18:                              #   in Loop: Header=BB21_2 Depth=1
	move	$s0, $a1
	ld.d	$a0, $a2, 8
	ld.d	$s3, $a0, 16
	beqz	$s3, .LBB21_27
.LBB21_19:                              # %.lr.ph111.preheader
                                        #   in Loop: Header=BB21_2 Depth=1
	move	$s1, $zero
	b	.LBB21_21
	.p2align	4, , 16
.LBB21_20:                              #   in Loop: Header=BB21_21 Depth=2
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB21_23
.LBB21_21:                              # %.lr.ph111
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s3, 8
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fol_VarOccursFreely)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_20
# %bb.22:                               #   in Loop: Header=BB21_21 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
	b	.LBB21_20
	.p2align	4, , 16
.LBB21_23:                              # %._crit_edge112
                                        #   in Loop: Header=BB21_2 Depth=1
	beqz	$s1, .LBB21_27
# %bb.24:                               #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_NPointerDifference)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a0, %got_pc_lo12(term_Delete)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	bnez	$a0, .LBB21_27
# %bb.25:                               #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a0, 0
	ld.d	$s0, $a1, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB21_1
	.p2align	4, , 16
.LBB21_26:                              # %.lr.ph.i82
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB21_26
	b	.LBB21_1
.LBB21_27:                              # %.thread
	ld.d	$s0, $fp, 16
	beqz	$s0, .LBB21_29
	.p2align	4, , 16
.LBB21_28:                              # %.lr.ph117
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(cnf_SimplifyQuantors)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB21_28
.LBB21_29:                              # %.loopexit
	move	$a0, $fp
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
.Lfunc_end21:
	.size	cnf_SimplifyQuantors, .Lfunc_end21-cnf_SimplifyQuantors
                                        # -- End function
	.globl	cnf_HaveProof                   # -- Begin function cnf_HaveProof
	.p2align	5
	.type	cnf_HaveProof,@function
cnf_HaveProof:                          # @cnf_HaveProof
# %bb.0:                                # %vector.memcheck
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
	pcalau12i	$a4, %pc_hi20(cnf_HAVEPROOFPS)
	ld.d	$fp, $a4, %pc_lo12(cnf_HAVEPROOFPS)
	st.d	$zero, $sp, 16
	ld.d	$s0, $fp, 112
	move	$s4, $a3
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(flag_CLEAN)
	ld.d	$a0, $a0, %got_pc_lo12(flag_CLEAN)
	ld.w	$a0, $a0, 0
	st.w	$a0, $s0, 0
	st.w	$a0, $s0, 4
	st.w	$a0, $s0, 8
	st.w	$a0, $s0, 12
	st.w	$a0, $s0, 16
	st.w	$a0, $s0, 20
	st.w	$a0, $s0, 24
	st.w	$a0, $s0, 28
	st.w	$a0, $s0, 32
	st.w	$a0, $s0, 36
	st.w	$a0, $s0, 40
	st.w	$a0, $s0, 44
	st.w	$a0, $s0, 48
	st.w	$a0, $s0, 52
	st.w	$a0, $s0, 56
	st.w	$a0, $s0, 60
	st.w	$a0, $s0, 64
	st.w	$a0, $s0, 68
	st.w	$a0, $s0, 72
	st.w	$a0, $s0, 76
	st.w	$a0, $s0, 80
	st.w	$a0, $s0, 84
	st.w	$a0, $s0, 88
	st.w	$a0, $s0, 92
	st.w	$a0, $s0, 96
	st.w	$a0, $s0, 100
	st.w	$a0, $s0, 104
	st.w	$a0, $s0, 108
	st.w	$a0, $s0, 112
	st.w	$a0, $s0, 116
	st.w	$a0, $s0, 120
	st.w	$a0, $s0, 124
	st.w	$a0, $s0, 128
	st.w	$a0, $s0, 132
	st.w	$a0, $s0, 136
	st.w	$a0, $s0, 140
	st.w	$a0, $s0, 144
	st.w	$a0, $s0, 148
	st.w	$a0, $s0, 152
	st.w	$a0, $s0, 156
	st.w	$a0, $s0, 160
	st.w	$a0, $s0, 164
	st.w	$a0, $s0, 168
	st.w	$a0, $s0, 172
	st.w	$a0, $s0, 176
	st.w	$a0, $s0, 180
	st.w	$a0, $s0, 184
	st.w	$a0, $s0, 188
	st.w	$a0, $s0, 192
	st.w	$a0, $s0, 196
	st.w	$a0, $s0, 200
	st.w	$a0, $s0, 204
	st.w	$a0, $s0, 208
	st.w	$a0, $s0, 212
	st.w	$a0, $s0, 216
	st.w	$a0, $s0, 220
	st.w	$a0, $s0, 224
	st.w	$a0, $s0, 228
	st.w	$a0, $s0, 232
	st.w	$a0, $s0, 236
	st.w	$a0, $s0, 240
	st.w	$a0, $s0, 244
	st.w	$a0, $s0, 248
	st.w	$a0, $s0, 252
	st.w	$a0, $s0, 256
	st.w	$a0, $s0, 260
	st.w	$a0, $s0, 264
	st.w	$a0, $s0, 268
	st.w	$a0, $s0, 272
	st.w	$a0, $s0, 276
	st.w	$a0, $s0, 280
	st.w	$a0, $s0, 284
	st.w	$a0, $s0, 288
	st.w	$a0, $s0, 292
	st.w	$a0, $s0, 296
	st.w	$a0, $s0, 300
	st.w	$a0, $s0, 304
	st.w	$a0, $s0, 308
	st.w	$a0, $s0, 312
	st.w	$a0, $s0, 316
	st.w	$a0, $s0, 320
	st.w	$a0, $s0, 324
	st.w	$a0, $s0, 328
	st.w	$a0, $s0, 332
	st.w	$a0, $s0, 336
	st.w	$a0, $s0, 340
	st.w	$a0, $s0, 344
	st.w	$a0, $s0, 348
	st.w	$a0, $s0, 352
	st.w	$a0, $s0, 356
	st.w	$a0, $s0, 360
	st.w	$a0, $s0, 364
	st.w	$a0, $s0, 368
	st.w	$a0, $s0, 372
	st.w	$a0, $s0, 376
	st.w	$a0, $s0, 380
	move	$a0, $a2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(flag_InitFlotterSubproofFlags)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 104
	sub.d	$a0, $s3, $s4
	ori	$a1, $zero, 32
	bgeu	$a0, $a1, .LBB22_3
# %bb.1:                                # %scalar.ph.preheader
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3712
	.p2align	4, , 16
.LBB22_2:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s4, $a0
	ldx.w	$a2, $a2, $a1
	add.d	$a3, $s3, $a0
	addi.d	$a0, $a0, 4
	stptr.w	$a2, $a3, 16000
	bnez	$a0, .LBB22_2
	b	.LBB22_5
.LBB22_3:                               # %vector.body.preheader
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	lu12i.w	$a2, 3
	ori	$a1, $a2, 3712
	ori	$a2, $a2, 3728
	.p2align	4, , 16
.LBB22_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s4, $a0
	vldx	$vr0, $a3, $a1
	vldx	$vr1, $a3, $a2
	add.d	$a3, $s3, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr1, $a3, $a2
	bnez	$a0, .LBB22_4
.LBB22_5:                               # %symbol_TransferPrecedence.exit.preheader
	beqz	$s2, .LBB22_14
# %bb.6:                                # %.lr.ph.preheader
	move	$s6, $zero
	b	.LBB22_9
	.p2align	4, , 16
.LBB22_7:                               #   in Loop: Header=BB22_9 Depth=1
	move	$s4, $s6
.LBB22_8:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB22_9 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	move	$s6, $s4
	beqz	$s2, .LBB22_15
.LBB22_9:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_12 Depth 2
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cnf_Cnf)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cnf_MakeClauseList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_7
# %bb.10:                               #   in Loop: Header=BB22_9 Depth=1
	move	$s4, $a0
	beqz	$s6, .LBB22_8
# %bb.11:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB22_9 Depth=1
	move	$a1, $s4
	.p2align	4, , 16
.LBB22_12:                              # %.preheader.i
                                        #   Parent Loop BB22_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_12
# %bb.13:                               #   in Loop: Header=BB22_9 Depth=1
	st.d	$s6, $a0, 0
	b	.LBB22_8
.LBB22_14:
	move	$s4, $zero
.LBB22_15:                              # %symbol_TransferPrecedence.exit._crit_edge
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$s2, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cnf_Cnf)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cnf_MakeClauseList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_21
# %bb.16:
	move	$s0, $a0
	beqz	$s4, .LBB22_20
# %bb.17:                               # %.preheader.i46.preheader
	move	$a1, $s0
	.p2align	4, , 16
.LBB22_18:                              # %.preheader.i46
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_18
# %bb.19:
	st.d	$s4, $a0, 0
.LBB22_20:                              # %list_Nconc.exit51.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	b	.LBB22_22
.LBB22_21:                              # %list_Nconc.exit51
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$s0, $s4
	beqz	$s4, .LBB22_26
.LBB22_22:                              # %.lr.ph59.preheader
	move	$a0, $s0
	.p2align	4, , 16
.LBB22_23:                              # %.lr.ph59
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a1, 48
	ori	$a2, $a2, 8
	st.w	$a2, $a1, 48
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB22_23
# %bb.24:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_SatUnit)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_27
.LBB22_25:
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	b	.LBB22_28
.LBB22_26:
	move	$s0, $zero
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_SatUnit)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_25
.LBB22_27:
	move	$s0, $zero
.LBB22_28:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(prfs_Clean)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	pcalau12i	$a1, %got_pc_hi20(symbol_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	move	$a0, $s0
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
.Lfunc_end22:
	.size	cnf_HaveProof, .Lfunc_end22-cnf_HaveProof
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_Cnf
	.type	cnf_Cnf,@function
cnf_Cnf:                                # @cnf_Cnf
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialOperators)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cnf_SimplifyQuantors)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(ren_Rename)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(cnf_RemoveEquivImplFromFormula)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormula)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_AntiPrenex)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cnf_SkolemFormula)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_ComputeLiteralLists)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB23_3
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$s1, $a0, %got_pc_lo12(fol_OR)
	move	$s2, $s0
	.p2align	4, , 16
.LBB23_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$a1, $s2, 8
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB23_2
.LBB23_3:                               # %cnf_DistributiveFormula.exit
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a0, $a0, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end23:
	.size	cnf_Cnf, .Lfunc_end23-cnf_Cnf
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_MakeClauseList
	.type	cnf_MakeClauseList,@function
cnf_MakeClauseList:                     # @cnf_MakeClauseList
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s4, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_TRUE)
	ld.d	$a0, $a0, %got_pc_lo12(fol_TRUE)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $s1, 0
	bne	$a1, $a0, .LBB24_2
# %bb.1:
	move	$s0, $zero
	b	.LBB24_98
.LBB24_2:
	move	$s7, $a2
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a1, %got_pc_lo12(fol_NOT)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB24_5
# %bb.3:
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
	bgez	$a1, .LBB24_5
# %bb.4:                                # %fol_IsNegativeLiteral.exit
	sub.w	$a1, $zero, $a1
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB24_7
.LBB24_5:                               # %fol_IsNegativeLiteral.exit.thread
	bgez	$a0, .LBB24_9
# %bb.6:                                # %symbol_IsPredicate.exit
	sub.w	$a0, $zero, $a0
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB24_9
.LBB24_7:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a3, $zero, 1
	move	$a1, $zero
	move	$a2, $zero
	move	$a4, $s4
	move	$a5, $s7
	pcaddu18i	$ra, %call36(clause_CreateFromLiterals)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	pcaddu18i	$ra, %call36(term_StartMinRenaming)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Rename)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB24_8:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $a0, 128
	st.d	$s1, $a2, 0
	move	$s1, $a5
	bnez	$a5, .LBB24_8
	b	.LBB24_98
.LBB24_9:                               # %symbol_IsPredicate.exit.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cnf_MakeOneAnd)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s1, 16
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a0, $a0, 0
	move	$s2, $fp
	.p2align	4, , 16
.LBB24_10:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB24_28
# %bb.11:                               #   in Loop: Header=BB24_10 Depth=1
	ld.d	$a1, $s2, 8
	ld.w	$a1, $a1, 0
	bne	$a1, $a0, .LBB24_10
# %bb.12:                               # %.preheader50.i.i
	move	$s6, $s4
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$s3, $a0, 0
	move	$s0, $zero
	ori	$s4, $zero, 2
	b	.LBB24_14
	.p2align	4, , 16
.LBB24_13:                              # %symbol_IsPredicate.exit.thread.i.i
                                        #   in Loop: Header=BB24_14 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB24_20
.LBB24_14:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s2, 8
	ld.w	$a0, $s5, 0
	bgez	$a0, .LBB24_13
# %bb.15:                               # %symbol_IsPredicate.exit.i.i
                                        #   in Loop: Header=BB24_14 Depth=1
	sub.w	$a1, $zero, $a0
	and	$a1, $s3, $a1
	bne	$a1, $s4, .LBB24_13
# %bb.16:                               # %symbol_IsPredicate.exit.i.i
                                        #   in Loop: Header=BB24_14 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB24_13
# %bb.17:                               #   in Loop: Header=BB24_14 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	bgez	$a0, .LBB24_13
# %bb.18:                               # %fol_IsNegativeLiteral.exit.i.i
                                        #   in Loop: Header=BB24_14 Depth=1
	sub.w	$a0, $zero, $a0
	and	$a0, $s3, $a0
	bne	$a0, $s4, .LBB24_13
# %bb.19:                               #   in Loop: Header=BB24_14 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s0, $a0, 0
	move	$s0, $a0
	b	.LBB24_13
.LBB24_20:                              # %.preheader.i.i
	move	$s4, $s6
	beqz	$s0, .LBB24_28
# %bb.21:                               # %.lr.ph.preheader.i.i
	ld.d	$a0, $fp, 0
	move	$s2, $s0
	.p2align	4, , 16
.LBB24_22:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 8
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB24_22
# %bb.23:                               # %._crit_edge.i.i
	beqz	$a0, .LBB24_27
# %bb.24:                               # %.preheader.i.i.i.preheader
	move	$a2, $s0
	.p2align	4, , 16
.LBB24_25:                              # %.preheader.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB24_25
# %bb.26:
	st.d	$a0, $a1, 0
.LBB24_27:                              # %list_Nconc.exit.i.i
	st.d	$s0, $fp, 0
.LBB24_28:                              # %cnf_MakeOneAndTerm.exit
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(fol_AND)
	ld.d	$a1, $a1, %got_pc_lo12(fol_AND)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB24_45
# %bb.29:                               # %.preheader226
	ld.d	$s8, $fp, 0
	beqz	$s8, .LBB24_70
# %bb.30:                               # %.lr.ph246
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a0, $a0, %got_pc_lo12(term_Copy)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(term_Equal)
	ld.d	$a0, $a0, %got_pc_lo12(term_Equal)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$s4, $a0, %got_pc_lo12(term_Delete)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$fp, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s1, $zero
	b	.LBB24_32
	.p2align	4, , 16
.LBB24_31:                              # %list_Delete.exit161
                                        #   in Loop: Header=BB24_32 Depth=1
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB24_57
.LBB24_32:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_41 Depth 2
                                        #     Child Loop BB24_43 Depth 2
	ld.d	$s5, $s8, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cnf_MakeOneOrTerm)
	jirl	$ra, $ra, 0
	st.d	$s5, $s8, 8
	ld.w	$a1, $s5, 0
	bgez	$a1, .LBB24_34
# %bb.33:                               # %symbol_IsPredicate.exit145
                                        #   in Loop: Header=BB24_32 Depth=1
	sub.w	$a0, $zero, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a2, $a0
	ori	$a2, $zero, 2
	beq	$a0, $a2, .LBB24_37
.LBB24_34:                              # %symbol_IsPredicate.exit145.thread
                                        #   in Loop: Header=BB24_32 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.d	$a0, $s5, 16
	bne	$a1, $a2, .LBB24_38
# %bb.35:                               #   in Loop: Header=BB24_32 Depth=1
	ld.d	$a1, $a0, 8
	ld.w	$a1, $a1, 0
	bgez	$a1, .LBB24_38
# %bb.36:                               # %fol_IsNegativeLiteral.exit152
                                        #   in Loop: Header=BB24_32 Depth=1
	sub.w	$a1, $zero, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB24_38
.LBB24_37:                              # %.thread
                                        #   in Loop: Header=BB24_32 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	b	.LBB24_39
	.p2align	4, , 16
.LBB24_38:                              # %fol_IsNegativeLiteral.exit152.thread
                                        #   in Loop: Header=BB24_32 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(list_DeleteDuplicatesFree)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB24_31
.LBB24_39:                              #   in Loop: Header=BB24_32 Depth=1
	ori	$a3, $zero, 1
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	move	$s3, $s7
	move	$a5, $s7
	pcaddu18i	$ra, %call36(clause_CreateFromLiterals)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcaddu18i	$ra, %call36(term_StartMinRenaming)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 68
	ld.w	$a2, $s6, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB24_42
# %bb.40:                               # %.lr.ph239
                                        #   in Loop: Header=BB24_32 Depth=1
	move	$s2, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB24_41:                              #   Parent Loop BB24_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Rename)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 68
	ld.w	$a2, $s6, 72
	addi.d	$s7, $s7, 1
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	addi.d	$s2, $s2, 8
	blt	$s7, $a0, .LBB24_41
.LBB24_42:                              # %._crit_edge240
                                        #   in Loop: Header=BB24_32 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s1, $a0, 0
	.p2align	4, , 16
.LBB24_43:                              # %.lr.ph.i157
                                        #   Parent Loop BB24_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s0, 0
	ld.d	$a4, $s5, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s5, 0
	ld.d	$a1, $fp, 128
	st.d	$s5, $a1, 0
	move	$s5, $a4
	bnez	$a4, .LBB24_43
# %bb.44:                               #   in Loop: Header=BB24_32 Depth=1
	move	$s1, $a0
	move	$s7, $s3
	b	.LBB24_31
.LBB24_45:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cnf_MakeOneOrTerm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	bgez	$a1, .LBB24_47
# %bb.46:                               # %symbol_IsPredicate.exit163
	sub.w	$a0, $zero, $a1
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	and	$a0, $a2, $a0
	ori	$a2, $zero, 2
	beq	$a0, $a2, .LBB24_50
.LBB24_47:                              # %symbol_IsPredicate.exit163.thread
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.d	$a0, $fp, 0
	bne	$a1, $a2, .LBB24_51
# %bb.48:
	ld.d	$a1, $a0, 8
	ld.w	$a1, $a1, 0
	bgez	$a1, .LBB24_51
# %bb.49:                               # %fol_IsNegativeLiteral.exit170
	sub.w	$a1, $zero, $a1
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB24_51
.LBB24_50:                              # %.thread209
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	b	.LBB24_52
.LBB24_51:                              # %fol_IsNegativeLiteral.exit170.thread
	pcalau12i	$a1, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a1, %got_pc_lo12(term_Copy)
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$a1, $a1, %got_pc_lo12(term_Equal)
	pcalau12i	$a2, %got_pc_hi20(term_Delete)
	ld.d	$a2, $a2, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteDuplicatesFree)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB24_70
.LBB24_52:
	ori	$a3, $zero, 1
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $zero
	move	$a4, $s4
	move	$a5, $s7
	pcaddu18i	$ra, %call36(clause_CreateFromLiterals)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(term_StartMinRenaming)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 64
	ld.w	$a1, $s3, 68
	ld.w	$a2, $s3, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB24_55
# %bb.53:                               # %.lr.ph
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB24_54:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Rename)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 64
	ld.w	$a1, $s3, 68
	ld.w	$a2, $s3, 72
	addi.d	$s0, $s0, 1
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	addi.d	$fp, $fp, 8
	blt	$s0, $a0, .LBB24_54
.LBB24_55:                              # %._crit_edge
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB24_56:                              # %.lr.ph.i176
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s2, 0
	ld.d	$a2, $a0, 128
	st.d	$s2, $a2, 0
	move	$s2, $a5
	bnez	$a5, .LBB24_56
	b	.LBB24_58
.LBB24_57:                              # %list_Delete.exit180
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	beqz	$s1, .LBB24_70
.LBB24_58:                              # %.lr.ph249.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$fp, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s3, $s1
	b	.LBB24_60
	.p2align	4, , 16
.LBB24_59:                              # %list_Delete.exit186
                                        #   in Loop: Header=BB24_60 Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB24_63
.LBB24_60:                              # %.lr.ph249
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_62 Depth 2
	ld.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(cond_CondFast)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB24_59
# %bb.61:                               #   in Loop: Header=BB24_60 Depth=1
	move	$s2, $a0
	ld.d	$a0, $s3, 8
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s7
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB24_62:                              # %.lr.ph.i182
                                        #   Parent Loop BB24_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	ld.d	$a3, $s2, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $fp, 128
	st.d	$s2, $a0, 0
	move	$s2, $a3
	bnez	$a3, .LBB24_62
	b	.LBB24_59
.LBB24_63:                              # %._crit_edge250
	pcaddu18i	$ra, %call36(st_IndexCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$fp, $s1
	.p2align	4, , 16
.LBB24_64:                              # %.lr.ph.i187
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(res_InsertClauseIndex)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB24_64
# %bb.65:                               # %.lr.ph49.i.preheader
	move	$fp, $zero
	move	$s3, $s1
	b	.LBB24_67
	.p2align	4, , 16
.LBB24_66:                              #   in Loop: Header=BB24_67 Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB24_69
.LBB24_67:                              # %.lr.ph49.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s3, 8
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(res_DeleteClauseIndex)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(res_BackSubWithLength)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB24_66
# %bb.68:                               #   in Loop: Header=BB24_67 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(res_InsertClauseIndex)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$fp, $a0, 0
	move	$fp, $a0
	b	.LBB24_66
.LBB24_69:
	move	$s3, $zero
	b	.LBB24_71
.LBB24_70:                              # %._crit_edge250.thread
	ori	$s3, $zero, 1
	pcaddu18i	$ra, %call36(st_IndexCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s1, $zero
	move	$fp, $zero
.LBB24_71:                              # %._crit_edge.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB24_76
# %bb.72:
	bnez	$s3, .LBB24_75
# %bb.73:                               # %.lr.ph.i.i189.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB24_74:                              # %.lr.ph.i.i189
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $a0, 128
	st.d	$s1, $a2, 0
	move	$s1, $a5
	bnez	$a5, .LBB24_74
.LBB24_75:                              # %cnf_SubsumeClauseList.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(st_IndexDelete)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB24_80
	b	.LBB24_96
.LBB24_76:                              # %.preheader.i
	beqz	$fp, .LBB24_95
# %bb.77:
	move	$s2, $fp
	.p2align	4, , 16
.LBB24_78:                              # %.lr.ph53.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	move	$s1, $a0
	bnez	$s2, .LBB24_78
# %bb.79:                               # %cnf_SubsumeClauseList.exit.thread292
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(st_IndexDelete)
	jirl	$ra, $ra, 0
.LBB24_80:                              # %.lr.ph254.preheader
	move	$s0, $zero
	b	.LBB24_83
	.p2align	4, , 16
.LBB24_81:                              #   in Loop: Header=BB24_83 Depth=1
	move	$s0, $a0
.LBB24_82:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB24_83 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB24_87
.LBB24_83:                              # %.lr.ph254
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_85 Depth 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(res_SelectLightestClause)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	beqz	$s0, .LBB24_81
# %bb.84:                               # %.preheader.i192.preheader
                                        #   in Loop: Header=BB24_83 Depth=1
	move	$a2, $s0
	.p2align	4, , 16
.LBB24_85:                              # %.preheader.i192
                                        #   Parent Loop BB24_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB24_85
# %bb.86:                               #   in Loop: Header=BB24_83 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB24_82
.LBB24_87:                              # %.lr.ph259.preheader
	move	$fp, $zero
	move	$s1, $s0
	b	.LBB24_89
	.p2align	4, , 16
.LBB24_88:                              # %list_Delete.exit199
                                        #   in Loop: Header=BB24_89 Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB24_91
.LBB24_89:                              # %.lr.ph259
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(res_HasTautology)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB24_88
# %bb.90:                               #   in Loop: Header=BB24_89 Depth=1
	ld.d	$s2, $s1, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$fp, $a0, 0
	move	$fp, $a0
	b	.LBB24_88
.LBB24_91:                              # %.preheader
	beqz	$fp, .LBB24_94
# %bb.92:
	move	$s1, $fp
	.p2align	4, , 16
.LBB24_93:                              # %.lr.ph264
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	move	$s0, $a0
	bnez	$s1, .LBB24_93
	b	.LBB24_97
.LBB24_94:
	move	$fp, $zero
	b	.LBB24_97
.LBB24_95:                              # %cnf_SubsumeClauseList.exit.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(st_IndexDelete)
	jirl	$ra, $ra, 0
.LBB24_96:
	move	$fp, $zero
	move	$s0, $zero
.LBB24_97:                              # %._crit_edge265
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
.LBB24_98:                              # %list_Delete.exit
	move	$a0, $s0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end24:
	.size	cnf_MakeClauseList, .Lfunc_end24-cnf_MakeClauseList
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_SatUnit
	.type	cnf_SatUnit,@function
cnf_SatUnit:                            # @cnf_SatUnit
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
	move	$fp, $a0
	ld.d	$s0, $a0, 112
	ld.d	$s1, $a0, 104
	ld.w	$s4, $s0, 220
	move	$a0, $a1
	st.d	$zero, $sp, 32
	pcaddu18i	$ra, %call36(clause_ListSortWeighed)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_27
# %bb.1:                                # %.lr.ph90
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(red_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(red_ALL)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(red_USABLE)
	ld.d	$a0, $a0, %got_pc_lo12(red_USABLE)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB25_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_10 Depth 2
                                        #     Child Loop BB25_17 Depth 2
                                        #     Child Loop BB25_22 Depth 2
                                        #     Child Loop BB25_23 Depth 2
	ld.d	$a0, $s7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	move	$a3, $s2
	ld.d	$s2, $s2, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $s7, 128
	ld.d	$a1, $a3, 8
	st.d	$a3, $a0, 0
	move	$a0, $fp
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_CompleteReductionOnDerivedClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_24
# %bb.3:                                #   in Loop: Header=BB25_2 Depth=1
	move	$s5, $a0
	ld.w	$a0, $a0, 68
	bnez	$a0, .LBB25_6
# %bb.4:                                #   in Loop: Header=BB25_2 Depth=1
	ld.w	$a0, $s5, 72
	bnez	$a0, .LBB25_6
# %bb.5:                                # %clause_IsEmptyClause.exit
                                        #   in Loop: Header=BB25_2 Depth=1
	ld.w	$a0, $s5, 64
	beqz	$a0, .LBB25_26
	.p2align	4, , 16
.LBB25_6:                               # %clause_IsEmptyClause.exit.thread
                                        #   in Loop: Header=BB25_2 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_BackReduction)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 0
	beqz	$s4, .LBB25_12
# %bb.7:                                #   in Loop: Header=BB25_2 Depth=1
	move	$s3, $a0
	ld.d	$a1, $fp, 48
	move	$a0, $s5
	move	$a2, $zero
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(inf_BoundedDepthUnitResolution)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 32
	move	$s6, $a0
	move	$a0, $s5
	move	$a2, $zero
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(inf_BoundedDepthUnitResolution)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB25_13
# %bb.8:                                #   in Loop: Header=BB25_2 Depth=1
	beqz	$a0, .LBB25_14
# %bb.9:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB25_2 Depth=1
	move	$a2, $s6
	.p2align	4, , 16
.LBB25_10:                              # %.preheader.i
                                        #   Parent Loop BB25_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB25_10
# %bb.11:                               #   in Loop: Header=BB25_2 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB25_14
	.p2align	4, , 16
.LBB25_12:                              #   in Loop: Header=BB25_2 Depth=1
	move	$s4, $zero
	b	.LBB25_20
.LBB25_13:                              #   in Loop: Header=BB25_2 Depth=1
	move	$s6, $a0
.LBB25_14:                              #   in Loop: Header=BB25_2 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s4, $a0
	sltu	$a1, $s4, $a0
	masknez	$s4, $a0, $a1
	beqz	$s3, .LBB25_19
# %bb.15:                               #   in Loop: Header=BB25_2 Depth=1
	move	$a0, $s3
	beqz	$s6, .LBB25_20
# %bb.16:                               # %.preheader.i52.preheader
                                        #   in Loop: Header=BB25_2 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB25_17:                              # %.preheader.i52
                                        #   Parent Loop BB25_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB25_17
# %bb.18:                               #   in Loop: Header=BB25_2 Depth=1
	st.d	$s6, $a1, 0
	b	.LBB25_20
.LBB25_19:                              #   in Loop: Header=BB25_2 Depth=1
	move	$a0, $s6
.LBB25_20:                              # %list_Nconc.exit57
                                        #   in Loop: Header=BB25_2 Depth=1
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(split_ExtractEmptyClauses)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(prfs_InsertUsableClause)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB25_24
# %bb.21:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB25_2 Depth=1
	move	$s3, $s6
	.p2align	4, , 16
.LBB25_22:                              # %.lr.ph
                                        #   Parent Loop BB25_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 8
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(clause_InsertWeighed)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	move	$s2, $a0
	bnez	$s3, .LBB25_22
	.p2align	4, , 16
.LBB25_23:                              # %.lr.ph.i
                                        #   Parent Loop BB25_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	ld.d	$a3, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s7, 128
	st.d	$s6, $a0, 0
	move	$s6, $a3
	bnez	$a3, .LBB25_23
.LBB25_24:                              # %list_Delete.exit
                                        #   in Loop: Header=BB25_2 Depth=1
	beqz	$s2, .LBB25_28
.LBB25_25:                              # %list_Delete.exit
                                        #   in Loop: Header=BB25_2 Depth=1
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB25_2
	b	.LBB25_28
.LBB25_26:                              #   in Loop: Header=BB25_2 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $sp, 32
	bnez	$s2, .LBB25_25
	b	.LBB25_28
.LBB25_27:
	move	$s2, $zero
.LBB25_28:                              # %.critedge
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
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
	ret
.Lfunc_end25:
	.size	cnf_SatUnit, .Lfunc_end25-cnf_SatUnit
                                        # -- End function
	.globl	cnf_GetSkolemFunctions          # -- Begin function cnf_GetSkolemFunctions
	.p2align	5
	.type	cnf_GetSkolemFunctions,@function
cnf_GetSkolemFunctions:                 # @cnf_GetSkolemFunctions
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(fol_EXIST)
	ld.d	$a2, $a1, %got_pc_lo12(fol_EXIST)
	ld.w	$a1, $s0, 0
	ld.w	$a2, $a2, 0
	beq	$a0, $a1, .LBB26_2
# %bb.1:
	bne	$a2, $a1, .LBB26_4
	.p2align	4, , 16
.LBB26_2:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a1, $a1, 0
	ld.d	$s0, $a1, 8
	ld.w	$a1, $s0, 0
	beq	$a0, $a1, .LBB26_2
# %bb.3:                                # %tailrecurse
                                        #   in Loop: Header=BB26_2 Depth=1
	beq	$a2, $a1, .LBB26_2
.LBB26_4:                               # %tailrecurse._crit_edge
	bgez	$a1, .LBB26_7
# %bb.5:
	sub.w	$a0, $zero, $a1
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	and	$a1, $a1, $a0
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB26_7
# %bb.6:                                # %symbol_IsFunction.exit.thread92
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.wu	$a1, $a1, 0
	srl.w	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_SIGNATURE)
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 1
	bnez	$a0, .LBB26_10
.LBB26_7:                               # %symbol_IsFunction.exit.thread
	ld.d	$s0, $s0, 16
	beqz	$s0, .LBB26_9
	.p2align	4, , 16
.LBB26_8:                               # %.lr.ph120
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cnf_GetSkolemFunctions)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	move	$fp, $a0
	bnez	$s0, .LBB26_8
.LBB26_9:                               # %.loopexit
	move	$a0, $fp
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB26_10:
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bgeu	$a0, $s2, .LBB26_12
# %bb.11:
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a0, %got_pc_lo12(term_Delete)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 16
	st.d	$zero, $s0, 16
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bltu	$s2, $a0, .LBB26_13
	b	.LBB26_19
.LBB26_12:
	ld.d	$a0, $s0, 16
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 16
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bgeu	$s2, $a0, .LBB26_19
.LBB26_13:                              # %.preheader.preheader
	addi.d	$a0, $s2, 1
	move	$a1, $s1
	.p2align	4, , 16
.LBB26_14:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 0
	addi.w	$a0, $a0, -1
	bnez	$a0, .LBB26_14
# %bb.15:
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB26_19
# %bb.16:                               # %.lr.ph107
	ld.w	$a1, $s0, 0
	.p2align	4, , 16
.LBB26_17:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 8
	ld.w	$a3, $a2, 8
	beq	$a1, $a3, .LBB26_30
# %bb.18:                               #   in Loop: Header=BB26_17 Depth=1
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB26_17
.LBB26_19:                              # %.thread
	ld.d	$s1, $s1, 0
	beqz	$s2, .LBB26_24
# %bb.20:                               # %.lr.ph113.preheader
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB26_22
	.p2align	4, , 16
.LBB26_21:                              #   in Loop: Header=BB26_22 Depth=1
	addi.w	$s2, $s2, -1
	move	$s1, $a0
	beqz	$s2, .LBB26_25
.LBB26_22:                              # %.lr.ph113
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB26_21
# %bb.23:                               #   in Loop: Header=BB26_22 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$a0, $s1, 0
	b	.LBB26_21
.LBB26_24:
	move	$a0, $s1
.LBB26_25:                              # %._crit_edge114
	pcalau12i	$a1, %got_pc_hi20(symbol_STANDARDVARCOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_STANDARDVARCOUNTER)
	ld.w	$a2, $a1, 0
	addi.w	$s2, $a2, 1
	st.w	$s2, $a1, 0
	ld.w	$s3, $s0, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s3, $a0, 8
	st.d	$s2, $a0, 0
	move	$s3, $s4
	ld.d	$s4, $s4, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	beqz	$s4, .LBB26_29
# %bb.26:
	move	$a1, $s4
	.p2align	4, , 16
.LBB26_27:                              # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB26_27
# %bb.28:                               # %list_Nconc.exit
	st.d	$a0, $a2, 0
	st.d	$s4, $s3, 8
	st.w	$s2, $s0, 0
	b	.LBB26_9
.LBB26_29:
	st.d	$a0, $s3, 8
	st.w	$s2, $s0, 0
	b	.LBB26_9
.LBB26_30:                              # %._crit_edge
	ld.d	$a0, $a2, 0
	st.w	$a0, $s0, 0
	b	.LBB26_9
.Lfunc_end26:
	.size	cnf_GetSkolemFunctions, .Lfunc_end26-cnf_GetSkolemFunctions
                                        # -- End function
	.globl	cnf_ReplaceVariable             # -- Begin function cnf_ReplaceVariable
	.p2align	5
	.type	cnf_ReplaceVariable,@function
cnf_ReplaceVariable:                    # @cnf_ReplaceVariable
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a3, $a0, 0
	move	$fp, $a2
	bne	$a3, $a1, .LBB27_2
# %bb.1:
	st.w	$fp, $a0, 0
	b	.LBB27_5
.LBB27_2:
	ld.d	$s1, $a0, 16
	beqz	$s1, .LBB27_5
# %bb.3:                                # %.lr.ph.preheader
	move	$s0, $a1
	.p2align	4, , 16
.LBB27_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cnf_ReplaceVariable)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB27_4
.LBB27_5:                               # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end27:
	.size	cnf_ReplaceVariable, .Lfunc_end27-cnf_ReplaceVariable
                                        # -- End function
	.globl	cnf_RemoveSkolemFunctions       # -- Begin function cnf_RemoveSkolemFunctions
	.p2align	5
	.type	cnf_RemoveSkolemFunctions,@function
cnf_RemoveSkolemFunctions:              # @cnf_RemoveSkolemFunctions
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
	move	$s2, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a3, $s2, 68
	ld.w	$a4, $s2, 72
	add.d	$a0, $a3, $a0
	add.w	$a0, $a0, $a4
	blez	$a0, .LBB28_13
# %bb.1:                                # %.lr.ph
	move	$fp, $a2
	move	$s3, $a1
	move	$s5, $zero
	move	$s6, $zero
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 24
	move	$s7, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cnf_GetSkolemFunctions)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s4, $a0, 8
	st.d	$s7, $a0, 0
	ld.w	$a0, $s2, 64
	ld.w	$a1, $s2, 68
	ld.w	$a2, $s2, 72
	addi.d	$s6, $s6, 1
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB28_2
# %bb.3:                                # %._crit_edge
	beqz	$s0, .LBB28_14
# %bb.4:                                # %.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(symbol_STANDARDVARCOUNTER)
	ld.d	$s2, $a0, %got_pc_lo12(symbol_STANDARDVARCOUNTER)
	move	$s3, $s0
	b	.LBB28_6
	.p2align	4, , 16
.LBB28_5:                               #   in Loop: Header=BB28_6 Depth=1
	ld.d	$s3, $s3, 0
	move	$fp, $a0
	beqz	$s3, .LBB28_12
.LBB28_6:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_7 Depth 2
                                        #     Child Loop BB28_10 Depth 2
	move	$s4, $s1
	.p2align	4, , 16
.LBB28_7:                               #   Parent Loop BB28_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s4, 8
	ld.w	$a1, $a1, 0
	ld.w	$a2, $fp, 8
	pcaddu18i	$ra, %call36(cnf_ReplaceVariable)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB28_7
# %bb.8:                                # %._crit_edge51
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB28_5
# %bb.9:                                #   in Loop: Header=BB28_6 Depth=1
	ld.w	$a0, $s2, 0
	addi.w	$s4, $a0, 1
	st.w	$s4, $s2, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	move	$a2, $fp
	.p2align	4, , 16
.LBB28_10:                              # %.preheader.i
                                        #   Parent Loop BB28_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB28_10
# %bb.11:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB28_6 Depth=1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, 0
	b	.LBB28_5
.LBB28_12:                              # %.split.us
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a0, %got_pc_lo12(term_Delete)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	b	.LBB28_14
.LBB28_13:
	move	$s1, $zero
.LBB28_14:                              # %._crit_edge.thread
	move	$a0, $s1
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
.Lfunc_end28:
	.size	cnf_RemoveSkolemFunctions, .Lfunc_end28-cnf_RemoveSkolemFunctions
                                        # -- End function
	.globl	cnf_DeSkolemFormula             # -- Begin function cnf_DeSkolemFormula
	.p2align	5
	.type	cnf_DeSkolemFormula,@function
cnf_DeSkolemFormula:                    # @cnf_DeSkolemFormula
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
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	st.d	$a0, $sp, 32
	pcalau12i	$a0, %got_pc_hi20(symbol_STANDARDVARCOUNTER)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_STANDARDVARCOUNTER)
	ld.w	$a1, $a0, 0
	addi.w	$s0, $a1, 1
	st.w	$s0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s2, .LBB29_7
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$s0, $a0, %got_pc_lo12(fol_OR)
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a0, $a0, %got_pc_lo12(term_Copy)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s3, $a0, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB29_3
	.p2align	4, , 16
.LBB29_2:                               #   in Loop: Header=BB29_3 Depth=1
	ld.d	$s5, $s1, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$a0, $s1, 16
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB29_7
.LBB29_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_5 Depth 2
	ld.d	$a0, $s2, 8
	addi.d	$a1, $sp, 32
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cnf_RemoveSkolemFunctions)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_2
# %bb.4:                                #   in Loop: Header=BB29_3 Depth=1
	move	$s6, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	.p2align	4, , 16
.LBB29_5:                               # %.lr.ph.i
                                        #   Parent Loop BB29_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s3, 0
	ld.d	$a3, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s7, 128
	st.d	$s6, $a0, 0
	move	$s6, $a3
	bnez	$a3, .LBB29_5
# %bb.6:                                # %list_Delete.exit
                                        #   in Loop: Header=BB29_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s6, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB29_2
.LBB29_7:                               # %.preheader107.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s5, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s6, $a0, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EXIST)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	move	$s0, $s8
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	b	.LBB29_10
	.p2align	4, , 16
.LBB29_8:                               #   in Loop: Header=BB29_10 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s2, $a0, 0
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $s7, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 0
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a0
.LBB29_9:                               #   in Loop: Header=BB29_10 Depth=1
	ld.d	$s0, $s0, 0
	ori	$a0, $zero, 1
	beqz	$s0, .LBB29_25
.LBB29_10:                              # %.preheader107
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_12 Depth 2
                                        #     Child Loop BB29_14 Depth 2
                                        #     Child Loop BB29_18 Depth 2
	ld.d	$s3, $s0, 8
	andi	$s4, $a0, 1
	beqz	$s3, .LBB29_20
# %bb.11:                               # %.preheader.preheader
                                        #   in Loop: Header=BB29_10 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB29_12:                              # %.preheader
                                        #   Parent Loop BB29_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 8
	ld.w	$a1, $a1, 0
	move	$s7, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s7, $a0, 0
	ld.d	$a1, $s5, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	ld.d	$a4, $s3, 8
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a1, $s5, 128
	st.d	$a4, $a1, 0
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB29_12
# %bb.13:                               #   in Loop: Header=BB29_10 Depth=1
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB29_15
	.p2align	4, , 16
.LBB29_14:                              # %.lr.ph.i84
                                        #   Parent Loop BB29_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s5, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s6, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s5, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB29_14
.LBB29_15:                              # %list_Delete.exit88
                                        #   in Loop: Header=BB29_10 Depth=1
	st.d	$zero, $s0, 8
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$s2, $a2, 0
	bne	$a1, $s2, .LBB29_23
# %bb.16:                               #   in Loop: Header=BB29_10 Depth=1
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a1, 16
	beqz	$a2, .LBB29_24
# %bb.17:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB29_10 Depth=1
	move	$a4, $a2
	.p2align	4, , 16
.LBB29_18:                              # %.preheader.i
                                        #   Parent Loop BB29_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $a4
	ld.d	$a4, $a4, 0
	bnez	$a4, .LBB29_18
# %bb.19:                               #   in Loop: Header=BB29_10 Depth=1
	st.d	$a0, $a3, 0
	st.d	$a2, $a1, 16
	bnez	$s4, .LBB29_8
	b	.LBB29_9
	.p2align	4, , 16
.LBB29_20:                              #   in Loop: Header=BB29_10 Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB29_22
# %bb.21:                               #   in Loop: Header=BB29_10 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s1, 16
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s3, $a0, 0
	st.d	$a0, $s1, 16
.LBB29_22:                              #   in Loop: Header=BB29_10 Depth=1
	bnez	$s4, .LBB29_8
	b	.LBB29_9
	.p2align	4, , 16
.LBB29_23:                              #   in Loop: Header=BB29_10 Depth=1
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$s4, .LBB29_8
	b	.LBB29_9
.LBB29_24:                              #   in Loop: Header=BB29_10 Depth=1
	st.d	$a0, $a1, 16
	bnez	$s4, .LBB29_8
	b	.LBB29_9
	.p2align	4, , 16
.LBB29_25:                              # %.lr.ph.i91
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s8, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $s5, 128
	st.d	$s8, $a0, 0
	move	$s8, $a3
	bnez	$a3, .LBB29_25
	.p2align	4, , 16
.LBB29_26:                              # %.lr.ph.i97
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $fp, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s5, 128
	st.d	$fp, $a0, 0
	move	$fp, $a3
	bnez	$a3, .LBB29_26
# %bb.27:                               # %list_Delete.exit101
	move	$a0, $s1
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
	ret
.Lfunc_end29:
	.size	cnf_DeSkolemFormula, .Lfunc_end29-cnf_DeSkolemFormula
                                        # -- End function
	.p2align	5                               # -- Begin function list_PairFree
	.type	list_PairFree,@function
list_PairFree:                          # @list_PairFree
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a4, 0
	add.d	$a3, $a5, $a3
	st.d	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	ret
.Lfunc_end30:
	.size	list_PairFree, .Lfunc_end30-list_PairFree
                                        # -- End function
	.globl	cnf_Flotter                     # -- Begin function cnf_Flotter
	.p2align	5
	.type	cnf_Flotter,@function
cnf_Flotter:                            # @cnf_Flotter
# %bb.0:                                # %vector.memcheck
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	move	$s0, $a7
	move	$fp, $a6
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	move	$s6, $a3
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	move	$s8, $a1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(prfs_Create)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$s4, $a0, 112
	pcalau12i	$a0, %got_pc_hi20(flag_CLEAN)
	ld.d	$a0, $a0, %got_pc_lo12(flag_CLEAN)
	ld.w	$a0, $a0, 0
	st.w	$a0, $s4, 0
	st.w	$a0, $s4, 4
	st.w	$a0, $s4, 8
	st.w	$a0, $s4, 12
	st.w	$a0, $s4, 16
	st.w	$a0, $s4, 20
	st.w	$a0, $s4, 24
	st.w	$a0, $s4, 28
	st.w	$a0, $s4, 32
	st.w	$a0, $s4, 36
	st.w	$a0, $s4, 40
	st.w	$a0, $s4, 44
	st.w	$a0, $s4, 48
	st.w	$a0, $s4, 52
	st.w	$a0, $s4, 56
	st.w	$a0, $s4, 60
	st.w	$a0, $s4, 64
	st.w	$a0, $s4, 68
	st.w	$a0, $s4, 72
	st.w	$a0, $s4, 76
	st.w	$a0, $s4, 80
	st.w	$a0, $s4, 84
	st.w	$a0, $s4, 88
	st.w	$a0, $s4, 92
	st.w	$a0, $s4, 96
	st.w	$a0, $s4, 100
	st.w	$a0, $s4, 104
	st.w	$a0, $s4, 108
	st.w	$a0, $s4, 112
	st.w	$a0, $s4, 116
	st.w	$a0, $s4, 120
	st.w	$a0, $s4, 124
	st.w	$a0, $s4, 128
	st.w	$a0, $s4, 132
	st.w	$a0, $s4, 136
	st.w	$a0, $s4, 140
	st.w	$a0, $s4, 144
	st.w	$a0, $s4, 148
	st.w	$a0, $s4, 152
	st.w	$a0, $s4, 156
	st.w	$a0, $s4, 160
	st.w	$a0, $s4, 164
	st.w	$a0, $s4, 168
	st.w	$a0, $s4, 172
	st.w	$a0, $s4, 176
	st.w	$a0, $s4, 180
	st.w	$a0, $s4, 184
	st.w	$a0, $s4, 188
	st.w	$a0, $s4, 192
	st.w	$a0, $s4, 196
	st.w	$a0, $s4, 200
	st.w	$a0, $s4, 204
	st.w	$a0, $s4, 208
	st.w	$a0, $s4, 212
	st.w	$a0, $s4, 216
	st.w	$a0, $s4, 220
	st.w	$a0, $s4, 224
	st.w	$a0, $s4, 228
	st.w	$a0, $s4, 232
	st.w	$a0, $s4, 236
	st.w	$a0, $s4, 240
	st.w	$a0, $s4, 244
	st.w	$a0, $s4, 248
	st.w	$a0, $s4, 252
	st.w	$a0, $s4, 256
	st.w	$a0, $s4, 260
	st.w	$a0, $s4, 264
	st.w	$a0, $s4, 268
	st.w	$a0, $s4, 272
	st.w	$a0, $s4, 276
	st.w	$a0, $s4, 280
	st.w	$a0, $s4, 284
	st.w	$a0, $s4, 288
	st.w	$a0, $s4, 292
	st.w	$a0, $s4, 296
	st.w	$a0, $s4, 300
	st.w	$a0, $s4, 304
	st.w	$a0, $s4, 308
	st.w	$a0, $s4, 312
	st.w	$a0, $s4, 316
	st.w	$a0, $s4, 320
	st.w	$a0, $s4, 324
	st.w	$a0, $s4, 328
	st.w	$a0, $s4, 332
	st.w	$a0, $s4, 336
	st.w	$a0, $s4, 340
	st.w	$a0, $s4, 344
	st.w	$a0, $s4, 348
	st.w	$a0, $s4, 352
	st.w	$a0, $s4, 356
	st.w	$a0, $s4, 360
	st.w	$a0, $s4, 364
	st.w	$a0, $s4, 368
	st.w	$a0, $s4, 372
	st.w	$a0, $s4, 376
	st.w	$a0, $s4, 380
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(flag_InitFlotterFlags)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s3, 104
	sub.d	$a0, $a4, $s0
	ori	$a1, $zero, 32
	lu12i.w	$a3, -4
	lu12i.w	$a2, 3
	bgeu	$a0, $a1, .LBB31_3
# %bb.1:                                # %scalar.ph.preheader
	ori	$a0, $a3, 384
	ori	$a1, $a2, 3712
	.p2align	4, , 16
.LBB31_2:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s0, $a0
	ldx.w	$a2, $a2, $a1
	add.d	$a3, $a4, $a0
	addi.d	$a0, $a0, 4
	stptr.w	$a2, $a3, 16000
	bnez	$a0, .LBB31_2
	b	.LBB31_5
.LBB31_3:                               # %vector.body.preheader
	ori	$a0, $a3, 384
	ori	$a1, $a2, 3712
	ori	$a2, $a2, 3728
	.p2align	4, , 16
.LBB31_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vldx	$vr0, $a3, $a1
	vldx	$vr1, $a3, $a2
	add.d	$a3, $a4, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr1, $a3, $a2
	bnez	$a0, .LBB31_4
.LBB31_5:                               # %symbol_TransferPrecedence.exit
	ld.w	$a0, $s4, 36
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB31_8
# %bb.6:
	pcaddu18i	$ra, %call36(sharing_IndexCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 88
	ld.w	$a0, $s4, 36
	st.d	$zero, $sp, 256
	beqz	$a0, .LBB31_9
# %bb.7:
	pcaddu18i	$ra, %call36(hsh_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(symbol_ReinitGenericNameCounters)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB31_10
	b	.LBB31_16
.LBB31_8:                               # %.thread
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	st.d	$zero, $sp, 256
	pcaddu18i	$ra, %call36(symbol_ReinitGenericNameCounters)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB31_10
	b	.LBB31_16
.LBB31_9:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(symbol_ReinitGenericNameCounters)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB31_16
.LBB31_10:
	move	$s0, $s5
	b	.LBB31_12
	.p2align	4, , 16
.LBB31_11:                              #   in Loop: Header=BB31_12 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_RemoveEquivImplFromFormula)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormula)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_AntiPrenex)
	jirl	$ra, $ra, 0
	st.d	$fp, $s1, 0
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB31_16
.LBB31_12:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s0, 8
	ld.d	$fp, $s1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_RemoveImplied)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_NormalizeVars)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 232
	beqz	$a0, .LBB31_14
# %bb.13:                               #   in Loop: Header=BB31_12 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_PropagateSubstEquations)
	jirl	$ra, $ra, 0
.LBB31_14:                              #   in Loop: Header=BB31_12 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialOperators)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cnf_SimplifyQuantors)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 224
	move	$fp, $a0
	beqz	$a1, .LBB31_11
# %bb.15:                               #   in Loop: Header=BB31_12 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s4, 228
	addi.d	$a2, $sp, 256
	ori	$a4, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ren_Rename)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB31_11
.LBB31_16:                              # %.preheader346
	beqz	$s8, .LBB31_34
# %bb.17:                               # %.lr.ph352.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$fp, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$s7, $zero
	move	$s0, $s8
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB31_19
	.p2align	4, , 16
.LBB31_18:                              #   in Loop: Header=BB31_19 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_RemoveEquivImplFromFormula)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormula)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_AntiPrenex)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	st.d	$s2, $a0, 0
	ld.d	$s0, $s0, 0
	addi.w	$s7, $s7, 1
	beqz	$s0, .LBB31_27
.LBB31_19:                              # %.lr.ph352
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB31_24
.LBB31_20:                              #   in Loop: Header=BB31_19 Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$s2, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fol_RemoveImplied)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fol_NormalizeVars)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 232
	beqz	$a0, .LBB31_22
# %bb.21:                               #   in Loop: Header=BB31_19 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_PropagateSubstEquations)
	jirl	$ra, $ra, 0
.LBB31_22:                              #   in Loop: Header=BB31_19 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialOperators)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cnf_SimplifyQuantors)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 224
	move	$s2, $a0
	beqz	$a1, .LBB31_18
# %bb.23:                               #   in Loop: Header=BB31_19 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s4, 228
	addi.d	$a2, $sp, 256
	ori	$a4, $zero, 1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ren_Rename)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	b	.LBB31_18
	.p2align	4, , 16
.LBB31_24:                              #   in Loop: Header=BB31_19 Depth=1
	addi.d	$a0, $sp, 144
	move	$a1, $fp
	move	$a2, $s7
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(string_StringCopy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 8
	move	$a1, $a0
	st.d	$a0, $a2, 8
	ld.w	$a0, $s4, 36
	beqz	$a0, .LBB31_20
# %bb.25:                               #   in Loop: Header=BB31_19 Depth=1
	ld.w	$a0, $s4, 100
	beqz	$a0, .LBB31_20
# %bb.26:                               #   in Loop: Header=BB31_19 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fol_PrettyPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB31_20
.LBB31_27:                              # %._crit_edge
	move	$a0, $s8
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB31_31
# %bb.28:                               # %.preheader345.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB31_29:                              # %.preheader345
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB31_29
# %bb.30:
	st.d	$s5, $a1, 0
.LBB31_31:                              # %.lr.ph355.preheader
	move	$a1, $s8
	.p2align	4, , 16
.LBB31_32:                              # %.lr.ph355
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 8
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 8
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB31_32
# %bb.33:
	move	$s5, $a0
.LBB31_34:                              # %._crit_edge356
	st.d	$zero, $sp, 144
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	beqz	$s5, .LBB31_64
# %bb.35:                               # %.lr.ph364.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$s7, $zero
	lu12i.w	$a0, -361578
	ori	$a0, $a0, 283
	lu32i.d	$a0, -289263
	lu52i.d	$s1, $a0, 423
	ori	$s3, $zero, 29
	b	.LBB31_38
	.p2align	4, , 16
.LBB31_36:                              #   in Loop: Header=BB31_38 Depth=1
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
.LBB31_37:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB31_38 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB31_59
.LBB31_38:                              # %.lr.ph364
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_40 Depth 2
                                        #     Child Loop BB31_46 Depth 2
                                        #       Child Loop BB31_47 Depth 3
                                        #       Child Loop BB31_51 Depth 3
                                        #     Child Loop BB31_57 Depth 2
	ld.d	$a0, $s5, 8
	ld.d	$a0, $a0, 0
	move	$s8, $s7
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$a2, $sp, 144
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cnf_SkolemFormula)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_ComputeLiteralLists)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB31_41
# %bb.39:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB31_38 Depth=1
	move	$s0, $fp
	.p2align	4, , 16
.LBB31_40:                              # %.lr.ph.i
                                        #   Parent Loop BB31_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s0, 8
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB31_40
.LBB31_41:                              # %cnf_DistributiveFormula.exit
                                        #   in Loop: Header=BB31_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $fp
	move	$a1, $s4
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cnf_MakeClauseList)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 36
	move	$s0, $a0
	beqz	$a1, .LBB31_54
# %bb.42:                               # %cnf_DistributiveFormula.exit
                                        #   in Loop: Header=BB31_38 Depth=1
	beqz	$s0, .LBB31_54
# %bb.43:                               # %.lr.ph359.preheader
                                        #   in Loop: Header=BB31_38 Depth=1
	move	$s2, $s0
	b	.LBB31_46
	.p2align	4, , 16
.LBB31_44:                              #   in Loop: Header=BB31_46 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s6, $a0, 8
	st.d	$s7, $a0, 0
	ld.d	$s6, $fp, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $fp, 0
.LBB31_45:                              # %hsh_Put.exit
                                        #   in Loop: Header=BB31_46 Depth=2
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB31_54
.LBB31_46:                              # %.lr.ph359
                                        #   Parent Loop BB31_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_47 Depth 3
                                        #       Child Loop BB31_51 Depth 3
	ld.d	$a0, $s5, 8
	ld.d	$s6, $s2, 8
	ld.d	$s4, $a0, 8
	mulh.du	$a0, $s6, $s1
	sub.d	$a1, $s6, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 4
	mul.d	$a0, $a0, $s3
	sub.d	$a0, $s6, $a0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $a1, 3
	move	$a0, $fp
	.p2align	4, , 16
.LBB31_47:                              #   Parent Loop BB31_38 Depth=1
                                        #     Parent Loop BB31_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB31_44
# %bb.48:                               #   in Loop: Header=BB31_47 Depth=3
	ld.d	$s7, $a0, 8
	ld.d	$a1, $s7, 8
	bne	$a1, $s6, .LBB31_47
# %bb.49:                               #   in Loop: Header=BB31_46 Depth=2
	ld.d	$fp, $s7, 0
	beqz	$fp, .LBB31_53
# %bb.50:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB31_46 Depth=2
	move	$a0, $fp
	.p2align	4, , 16
.LBB31_51:                              # %.lr.ph.i.i
                                        #   Parent Loop BB31_38 Depth=1
                                        #     Parent Loop BB31_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 8
	beq	$s4, $a1, .LBB31_45
# %bb.52:                               #   in Loop: Header=BB31_51 Depth=3
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB31_51
.LBB31_53:                              # %.loopexit.i
                                        #   in Loop: Header=BB31_46 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s7, 0
	b	.LBB31_45
	.p2align	4, , 16
.LBB31_54:                              # %.loopexit344
                                        #   in Loop: Header=BB31_38 Depth=1
	sltui	$a0, $s8, 1
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s0, $a0
	or	$s7, $a0, $a1
	beqz	$s8, .LBB31_36
# %bb.55:                               # %.loopexit344
                                        #   in Loop: Header=BB31_38 Depth=1
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	beqz	$s0, .LBB31_37
# %bb.56:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB31_38 Depth=1
	move	$a1, $s8
	.p2align	4, , 16
.LBB31_57:                              # %.preheader.i
                                        #   Parent Loop BB31_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB31_57
# %bb.58:                               #   in Loop: Header=BB31_38 Depth=1
	st.d	$s0, $a0, 0
	move	$s7, $s8
	b	.LBB31_37
.LBB31_59:                              # %.preheader342
	beqz	$s7, .LBB31_162
# %bb.60:
	move	$a0, $s7
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB31_61:                              # %.lr.ph367
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a1, 48
	ori	$a2, $a2, 8
	st.w	$a2, $a1, 48
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB31_61
# %bb.62:                               # %._crit_edge368
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(red_SatUnit)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_65
.LBB31_63:
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB31_66
.LBB31_64:
	move	$s7, $zero
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(red_SatUnit)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_63
.LBB31_65:
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
.LBB31_66:
	ld.d	$a0, $sp, 352
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $s3, 56
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_71
# %bb.67:                               # %.lr.ph372.preheader
	move	$fp, $a0
	move	$s0, $a0
	.p2align	4, , 16
.LBB31_68:                              # %.lr.ph372
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(prfs_MoveUsableWorkedOff)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB31_68
# %bb.69:                               # %.lr.ph.i237.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB31_70:                              # %.lr.ph.i237
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $fp, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $fp, 0
	ld.d	$a2, $a0, 128
	st.d	$fp, $a2, 0
	move	$fp, $a5
	bnez	$a5, .LBB31_70
.LBB31_71:                              # %list_Delete.exit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	beqz	$s5, .LBB31_133
# %bb.72:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s1, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	lu12i.w	$a0, -361578
	ori	$a0, $a0, 283
	lu32i.d	$a0, -289263
	lu52i.d	$s3, $a0, 423
	ori	$s0, $zero, 29
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	b	.LBB31_74
	.p2align	4, , 16
.LBB31_73:                              # %list_Delete.exit291
                                        #   in Loop: Header=BB31_74 Depth=1
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB31_133
.LBB31_74:                              # %.lr.ph382
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_76 Depth 2
                                        #     Child Loop BB31_79 Depth 2
                                        #     Child Loop BB31_84 Depth 2
                                        #     Child Loop BB31_87 Depth 2
                                        #     Child Loop BB31_89 Depth 2
                                        #     Child Loop BB31_94 Depth 2
                                        #     Child Loop BB31_104 Depth 2
                                        #       Child Loop BB31_105 Depth 3
                                        #       Child Loop BB31_110 Depth 3
                                        #       Child Loop BB31_116 Depth 3
                                        #       Child Loop BB31_121 Depth 3
                                        #     Child Loop BB31_128 Depth 2
                                        #     Child Loop BB31_132 Depth 2
	st.d	$zero, $sp, 248
	ld.d	$s2, $s5, 8
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 8
	move	$a1, $a0
	addi.d	$a3, $sp, 248
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cnf_OptimizedSkolemization)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB31_80
# %bb.75:                               # %.lr.ph.i241.preheader
                                        #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB31_76:                              # %.lr.ph.i241
                                        #   Parent Loop BB31_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 8
	beq	$a0, $a2, .LBB31_78
# %bb.77:                               #   in Loop: Header=BB31_76 Depth=2
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB31_76
	b	.LBB31_80
	.p2align	4, , 16
.LBB31_78:                              # %list_PointerMember.exit.preheader
                                        #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $a1
	beqz	$a1, .LBB31_80
	.p2align	4, , 16
.LBB31_79:                              # %list_PointerMember.exit
                                        #   Parent Loop BB31_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a1, 48
	ori	$a2, $a2, 8
	st.w	$a2, $a1, 48
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB31_79
	.p2align	4, , 16
.LBB31_80:                              # %list_PointerMember.exit.thread
                                        #   in Loop: Header=BB31_74 Depth=1
	ld.w	$a0, $s4, 36
	beqz	$a0, .LBB31_125
# %bb.81:                               #   in Loop: Header=BB31_74 Depth=1
	ld.d	$fp, $s2, 8
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a2, $a0, 1
	ori	$a1, $zero, 1
	sltu	$a0, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB31_83
# %bb.82:                               #   in Loop: Header=BB31_74 Depth=1
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB31_86
	.p2align	4, , 16
.LBB31_83:                              # %vector.ph425
                                        #   in Loop: Header=BB31_74 Depth=1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 1, 0
	addi.d	$a3, $fp, 2
	move	$a4, $a1
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB31_84:                              # %vector.body426
                                        #   Parent Loop BB31_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a3, -2
	ld.h	$a6, $a3, 0
	vinsgr2vr.h	$vr2, $a5, 0
	vinsgr2vr.h	$vr3, $a6, 0
	vsllwil.h.b	$vr2, $vr2, 0
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.h.b	$vr3, $vr3, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vadd.d	$vr0, $vr0, $vr2
	vadd.d	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB31_84
# %bb.85:                               # %middle.block432
                                        #   in Loop: Header=BB31_74 Depth=1
	vadd.d	$vr0, $vr1, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a2, $a1, .LBB31_88
.LBB31_86:                              # %scalar.ph424.preheader
                                        #   in Loop: Header=BB31_74 Depth=1
	sub.d	$a0, $a0, $a1
	add.d	$a1, $fp, $a1
	.p2align	4, , 16
.LBB31_87:                              # %scalar.ph424
                                        #   Parent Loop BB31_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 0
	add.d	$a3, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB31_87
.LBB31_88:                              # %hsh_StringHashKey.exit.i
                                        #   in Loop: Header=BB31_74 Depth=1
	mulh.du	$a0, $a3, $s3
	sub.d	$a1, $a3, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 4
	mul.d	$a0, $a0, $s0
	sub.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s6, $a0, $a1, 3
	move	$s7, $s6
	.p2align	4, , 16
.LBB31_89:                              #   Parent Loop BB31_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB31_96
# %bb.90:                               #   in Loop: Header=BB31_89 Depth=2
	ld.d	$s4, $s7, 8
	ld.d	$a0, $s4, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_89
# %bb.91:                               #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB31_97
# %bb.92:                               #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	beqz	$a3, .LBB31_98
# %bb.93:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB31_74 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB31_94:                              # %.preheader.i.i
                                        #   Parent Loop BB31_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB31_94
# %bb.95:                               #   in Loop: Header=BB31_74 Depth=1
	st.d	$a3, $a1, 0
	b	.LBB31_98
	.p2align	4, , 16
.LBB31_96:                              #   in Loop: Header=BB31_74 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$fp, $a0, 8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $s4, 0
	ld.d	$fp, $s6, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s6, 0
	b	.LBB31_99
.LBB31_97:                              #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
.LBB31_98:                              # %hsh_PutListWithCompareFunc.exit
                                        #   in Loop: Header=BB31_74 Depth=1
	st.d	$a0, $s4, 0
.LBB31_99:                              # %hsh_PutListWithCompareFunc.exit
                                        #   in Loop: Header=BB31_74 Depth=1
	ld.d	$fp, $s2, 8
	ld.d	$s2, $sp, 248
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s2, $a0, 0
	st.d	$a0, $sp, 248
	pcalau12i	$a1, %pc_hi20(cnf_LabelEqual)
	addi.d	$a1, $a1, %pc_lo12(cnf_LabelEqual)
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	bnez	$s4, .LBB31_104
# %bb.100:                              # %.loopexit.thread
                                        #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB31_131
# %bb.101:                              #   in Loop: Header=BB31_74 Depth=1
	move	$a1, $zero
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a2, 0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB31_132
	b	.LBB31_73
	.p2align	4, , 16
.LBB31_102:                             #   in Loop: Header=BB31_104 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s6, $a0, 8
	st.d	$fp, $a0, 0
	ld.d	$fp, $s7, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s7, 0
.LBB31_103:                             # %hsh_PutList.exit277
                                        #   in Loop: Header=BB31_104 Depth=2
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB31_125
.LBB31_104:                             # %.lr.ph379
                                        #   Parent Loop BB31_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_105 Depth 3
                                        #       Child Loop BB31_110 Depth 3
                                        #       Child Loop BB31_116 Depth 3
                                        #       Child Loop BB31_121 Depth 3
	ld.d	$s6, $s4, 8
	ld.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	mulh.du	$a1, $s6, $s3
	sub.d	$a2, $s6, $a1
	srli.d	$a2, $a2, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 4
	mul.d	$a1, $a1, $s0
	sub.d	$a1, $s6, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s7, $a1, $a2, 3
	move	$fp, $a0
	move	$a1, $s7
	.p2align	4, , 16
.LBB31_105:                             #   Parent Loop BB31_74 Depth=1
                                        #     Parent Loop BB31_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB31_113
# %bb.106:                              #   in Loop: Header=BB31_105 Depth=3
	ld.d	$a0, $a1, 8
	ld.d	$a2, $a0, 8
	bne	$a2, $s6, .LBB31_105
# %bb.107:                              #   in Loop: Header=BB31_104 Depth=2
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB31_114
# %bb.108:                              #   in Loop: Header=BB31_104 Depth=2
	beqz	$fp, .LBB31_112
# %bb.109:                              # %.preheader.i.i257.preheader
                                        #   in Loop: Header=BB31_104 Depth=2
	move	$a3, $a1
	.p2align	4, , 16
.LBB31_110:                             # %.preheader.i.i257
                                        #   Parent Loop BB31_74 Depth=1
                                        #     Parent Loop BB31_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB31_110
# %bb.111:                              #   in Loop: Header=BB31_104 Depth=2
	st.d	$fp, $a2, 0
.LBB31_112:                             # %list_Nconc.exit.i261
                                        #   in Loop: Header=BB31_104 Depth=2
	st.d	$a1, $a0, 0
	b	.LBB31_115
	.p2align	4, , 16
.LBB31_113:                             #   in Loop: Header=BB31_104 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s6, $a0, 8
	st.d	$fp, $a0, 0
	ld.d	$fp, $s7, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s7, 0
	b	.LBB31_115
.LBB31_114:                             #   in Loop: Header=BB31_104 Depth=2
	st.d	$fp, $a0, 0
	.p2align	4, , 16
.LBB31_115:                             # %hsh_PutList.exit
                                        #   in Loop: Header=BB31_104 Depth=2
	ld.d	$s6, $s4, 8
	ld.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	mulh.du	$a1, $s6, $s3
	sub.d	$a2, $s6, $a1
	srli.d	$a2, $a2, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 4
	mul.d	$a1, $a1, $s0
	sub.d	$a1, $s6, $a1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s7, $a1, $a2, 3
	move	$fp, $a0
	move	$a1, $s7
	.p2align	4, , 16
.LBB31_116:                             #   Parent Loop BB31_74 Depth=1
                                        #     Parent Loop BB31_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB31_102
# %bb.117:                              #   in Loop: Header=BB31_116 Depth=3
	ld.d	$a0, $a1, 8
	ld.d	$a2, $a0, 8
	bne	$a2, $s6, .LBB31_116
# %bb.118:                              #   in Loop: Header=BB31_104 Depth=2
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB31_124
# %bb.119:                              #   in Loop: Header=BB31_104 Depth=2
	beqz	$fp, .LBB31_123
# %bb.120:                              # %.preheader.i.i271.preheader
                                        #   in Loop: Header=BB31_104 Depth=2
	move	$a3, $a1
	.p2align	4, , 16
.LBB31_121:                             # %.preheader.i.i271
                                        #   Parent Loop BB31_74 Depth=1
                                        #     Parent Loop BB31_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB31_121
# %bb.122:                              #   in Loop: Header=BB31_104 Depth=2
	st.d	$fp, $a2, 0
.LBB31_123:                             # %list_Nconc.exit.i275
                                        #   in Loop: Header=BB31_104 Depth=2
	st.d	$a1, $a0, 0
	b	.LBB31_103
.LBB31_124:                             #   in Loop: Header=BB31_104 Depth=2
	st.d	$fp, $a0, 0
	b	.LBB31_103
	.p2align	4, , 16
.LBB31_125:                             # %.loopexit
                                        #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB31_130
# %bb.126:                              #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	beqz	$a3, .LBB31_131
# %bb.127:                              # %.preheader.i280.preheader
                                        #   in Loop: Header=BB31_74 Depth=1
	move	$a2, $a1
	.p2align	4, , 16
.LBB31_128:                             # %.preheader.i280
                                        #   Parent Loop BB31_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB31_128
# %bb.129:                              #   in Loop: Header=BB31_74 Depth=1
	st.d	$a3, $a0, 0
	b	.LBB31_131
	.p2align	4, , 16
.LBB31_130:                             #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
.LBB31_131:                             # %list_Nconc.exit285thread-pre-split
                                        #   in Loop: Header=BB31_74 Depth=1
	ld.d	$a0, $sp, 248
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a2, 0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB31_73
	.p2align	4, , 16
.LBB31_132:                             # %.lr.ph.i287
                                        #   Parent Loop BB31_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s1, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB31_132
	b	.LBB31_73
.LBB31_133:                             # %vector.memcheck433
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a0, $a4, $a5
	ori	$a1, $zero, 32
	lu12i.w	$a2, 3
	lu12i.w	$a3, -4
	bgeu	$a0, $a1, .LBB31_136
# %bb.134:                              # %scalar.ph435.preheader
	ori	$a0, $a3, 384
	ori	$a1, $a2, 3712
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB31_135:                             # %scalar.ph435
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a5, $a0
	ldx.w	$a2, $a2, $a1
	add.d	$a3, $a4, $a0
	addi.d	$a0, $a0, 4
	stptr.w	$a2, $a3, 16000
	bnez	$a0, .LBB31_135
	b	.LBB31_138
.LBB31_136:                             # %vector.body437.preheader
	ori	$a0, $a3, 384
	ori	$a1, $a2, 3712
	ori	$a2, $a2, 3728
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB31_137:                             # %vector.body437
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a5, $a0
	vldx	$vr0, $a3, $a1
	vldx	$vr1, $a3, $a2
	add.d	$a3, $a4, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr1, $a3, $a2
	bnez	$a0, .LBB31_137
.LBB31_138:                             # %symbol_TransferPrecedence.exit295
	beqz	$a6, .LBB31_141
# %bb.139:                              # %.lr.ph.i297.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB31_140:                             # %.lr.ph.i297
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a6, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a6, 0
	ld.d	$a2, $a0, 128
	st.d	$a6, $a2, 0
	move	$a6, $a5
	bnez	$a5, .LBB31_140
.LBB31_141:                             # %list_Delete.exit301
	ld.w	$a0, $s4, 36
	beqz	$a0, .LBB31_143
# %bb.142:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hsh_Delete)
	jirl	$ra, $ra, 0
.LBB31_143:
	ld.w	$a0, $s4, 8
	bnez	$a0, .LBB31_147
# %bb.144:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB31_147
# %bb.145:                              # %.lr.ph.i303.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB31_146:                             # %.lr.ph.i303
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB31_146
.LBB31_147:                             # %list_Delete.exit307
	st.d	$zero, $s7, 0
	beqz	$s6, .LBB31_152
# %bb.148:                              # %.lr.ph385.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$fp, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s1, $s6
	.p2align	4, , 16
.LBB31_149:                             # %.lr.ph385
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s1, 8
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s2, 8
	ld.d	$s4, $s7, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s4, $a0, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $fp, 128
	st.d	$s2, $a0, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB31_149
# %bb.150:                              # %.lr.ph.i309.preheader
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB31_151:                             # %.lr.ph.i309
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	ld.d	$a3, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $fp, 128
	st.d	$s6, $a0, 0
	move	$s6, $a3
	bnez	$a3, .LBB31_151
.LBB31_152:                             # %list_Delete.exit313
	ld.d	$a0, $sp, 144
	beqz	$a0, .LBB31_155
# %bb.153:                              # %.lr.ph.i315.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB31_154:                             # %.lr.ph.i315
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB31_154
.LBB31_155:                             # %list_Delete.exit319
	ld.d	$a0, $sp, 256
	beqz	$a0, .LBB31_158
# %bb.156:                              # %.lr.ph.i321.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB31_157:                             # %.lr.ph.i321
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB31_157
.LBB31_158:                             # %list_Delete.exit325
	ld.w	$a0, $s4, 8
	beqz	$a0, .LBB31_160
# %bb.159:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(prfs_DeleteDocProof)
	jirl	$ra, $ra, 0
	b	.LBB31_161
.LBB31_160:
	pcalau12i	$a0, %got_pc_hi20(symbol_ACTSKOLEMFINDEX)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_ACTSKOLEMFINDEX)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_ACTSKOLEMCINDEX)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_ACTSKOLEMCINDEX)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_ACTSKOLEMPINDEX)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_ACTSKOLEMPINDEX)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_ACTSKOLEMAINDEX)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_ACTSKOLEMAINDEX)
	st.w	$zero, $a0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(prfs_Delete)
	jirl	$ra, $ra, 0
	move	$s5, $zero
.LBB31_161:
	move	$a0, $s5
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB31_162:
	move	$s7, $zero
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(red_SatUnit)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_63
	b	.LBB31_65
.Lfunc_end31:
	.size	cnf_Flotter, .Lfunc_end31-cnf_Flotter
                                        # -- End function
	.globl	cnf_PropagateSubstEquations     # -- Begin function cnf_PropagateSubstEquations
	.p2align	5
	.type	cnf_PropagateSubstEquations,@function
cnf_PropagateSubstEquations:            # @cnf_PropagateSubstEquations
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fol_GetSubstEquations)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_11
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s6, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s7, $a0, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s8, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s1, $zero
	b	.LBB32_5
	.p2align	4, , 16
.LBB32_2:                               #   in Loop: Header=BB32_5 Depth=1
	ld.d	$a0, $a2, 8
	ld.w	$s3, $a0, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fol_GetBindingQuantifier)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 16
	ld.d	$a1, $a1, 0
	ld.d	$s5, $a1, 8
	move	$s4, $a0
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fol_PolarCheck)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_10
.LBB32_3:                               # %.thread68
                                        #   in Loop: Header=BB32_5 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fol_DeleteQuantifierVariable)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(term_ReplaceVariable)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s8, 0
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(fol_SetTrue)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
.LBB32_4:                               # %.critedge
                                        #   in Loop: Header=BB32_5 Depth=1
	ld.d	$a0, $s6, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s7, 0
	ld.d	$a3, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s6, 128
	st.d	$s0, $a0, 0
	move	$s0, $a3
	beqz	$a3, .LBB32_12
.LBB32_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s0, 8
	ld.d	$a2, $s2, 16
	ld.d	$a0, $a2, 8
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB32_7
# %bb.6:                                #   in Loop: Header=BB32_5 Depth=1
	ld.d	$a0, $a2, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_ContainsVariable)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 16
	beqz	$a0, .LBB32_2
.LBB32_7:                               # %.thread
                                        #   in Loop: Header=BB32_5 Depth=1
	ld.d	$a0, $a2, 0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB32_4
.LBB32_8:                               #   in Loop: Header=BB32_5 Depth=1
	ld.d	$a0, $a2, 8
	pcaddu18i	$ra, %call36(term_ContainsVariable)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB32_4
# %bb.9:                                #   in Loop: Header=BB32_5 Depth=1
	ld.d	$a0, $s2, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$s3, $a0, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fol_GetBindingQuantifier)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 16
	ld.d	$s5, $a1, 8
	move	$s4, $a0
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fol_PolarCheck)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB32_3
	b	.LBB32_4
.LBB32_10:                              # %..thread_crit_edge
                                        #   in Loop: Header=BB32_5 Depth=1
	ld.d	$a2, $s2, 16
	ld.d	$a0, $a2, 0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB32_8
	b	.LBB32_4
.LBB32_11:
	move	$s1, $zero
.LBB32_12:                              # %._crit_edge
	move	$a0, $s1
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end32:
	.size	cnf_PropagateSubstEquations, .Lfunc_end32-cnf_PropagateSubstEquations
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_RemoveEquivImplFromFormula
	.type	cnf_RemoveEquivImplFromFormula,@function
cnf_RemoveEquivImplFromFormula:         # @cnf_RemoveEquivImplFromFormula
# %bb.0:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(vec_MAX)
	ld.d	$s6, $a1, %got_pc_lo12(vec_MAX)
	ld.w	$s7, $s6, 0
	addi.d	$a7, $s7, 1
	slli.d	$a2, $s7, 3
	pcalau12i	$a1, %got_pc_hi20(vec_VECTOR)
	ld.d	$s8, $a1, %got_pc_lo12(vec_VECTOR)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	stx.d	$a0, $s8, $a2
	pcalau12i	$a0, %got_pc_hi20(fol_IMPLIES)
	ld.d	$s4, $a0, %got_pc_lo12(fol_IMPLIES)
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_EQUIV)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUIV)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EXIST)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	b	.LBB33_2
	.p2align	4, , 16
.LBB33_1:                               # %.loopexit
                                        #   in Loop: Header=BB33_2 Depth=1
	beq	$s7, $a7, .LBB33_31
.LBB33_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_9 Depth 2
                                        #       Child Loop BB33_23 Depth 3
                                        #     Child Loop BB33_29 Depth 2
	addi.w	$a0, $a7, -1
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s8, $a1
	st.w	$a0, $s6, 0
	ld.w	$a1, $fp, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB33_4
# %bb.3:                                #   in Loop: Header=BB33_2 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s1, $fp, 16
	st.w	$a0, $fp, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$s0, $a0, 0
	ld.d	$s2, $s1, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	ld.d	$a0, $fp, 16
	ld.w	$a7, $s6, 0
	bnez	$a0, .LBB33_28
	b	.LBB33_1
	.p2align	4, , 16
.LBB33_4:                               #   in Loop: Header=BB33_2 Depth=1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	bne	$a1, $a3, .LBB33_27
# %bb.5:                                #   in Loop: Header=BB33_2 Depth=1
	alsl.d	$t0, $a0, $s8, 3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.w	$s0, $a3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a6, $a6, 0
	ori	$t1, $zero, 1
	st.d	$t1, $t0, 0
	addi.w	$a7, $a7, 1
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	st.d	$t1, $t0, 8
	b	.LBB33_9
	.p2align	4, , 16
.LBB33_6:                               #   in Loop: Header=BB33_9 Depth=2
	addi.w	$t2, $t1, 0
	addi.w	$t1, $a7, 1
	st.w	$t1, $s6, 0
	slli.d	$t3, $a7, 3
	stx.d	$t2, $s8, $t3
	addi.d	$t0, $t0, 16
	ori	$t2, $zero, 2
.LBB33_7:                               # %.loopexit.sink.split.i
                                        #   in Loop: Header=BB33_9 Depth=2
	ld.d	$t0, $t0, 0
	ld.d	$t0, $t0, 0
	ld.d	$t0, $t0, 8
	add.w	$a7, $t2, $a7
	st.w	$a7, $s6, 0
	slli.d	$t1, $t1, 3
	stx.d	$t0, $s8, $t1
.LBB33_8:                               # %.loopexit.i
                                        #   in Loop: Header=BB33_9 Depth=2
	beq	$a0, $a7, .LBB33_32
.LBB33_9:                               #   Parent Loop BB33_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_23 Depth 3
	addi.w	$t3, $a7, -1
	slli.d	$t0, $t3, 3
	ldx.d	$t0, $s8, $t0
	addi.w	$t4, $a7, -2
	slli.d	$t1, $t4, 3
	ldx.d	$t1, $s8, $t1
	st.w	$t4, $s6, 0
	beq	$t0, $fp, .LBB33_24
# %bb.10:                               #   in Loop: Header=BB33_9 Depth=2
	ld.w	$t2, $t0, 0
	bne	$t2, $s0, .LBB33_12
# %bb.11:                               #   in Loop: Header=BB33_9 Depth=2
	alsl.d	$t2, $t4, $s8, 3
	slli.d	$t4, $t1, 32
	sub.d	$t4, $zero, $t4
	srai.d	$t4, $t4, 32
	st.w	$t3, $s6, 0
	st.d	$t4, $t2, 0
	ld.d	$t2, $t0, 16
	ld.d	$t2, $t2, 8
	alsl.d	$t3, $t3, $s8, 3
	st.w	$a7, $s6, 0
	st.d	$t2, $t3, 0
	ld.w	$t2, $t0, 0
	bne	$t2, $a3, .LBB33_13
	b	.LBB33_6
	.p2align	4, , 16
.LBB33_12:                              #   in Loop: Header=BB33_9 Depth=2
	move	$a7, $t4
	beq	$t2, $a3, .LBB33_6
.LBB33_13:                              #   in Loop: Header=BB33_9 Depth=2
	beq	$t2, $a4, .LBB33_6
# %bb.14:                               #   in Loop: Header=BB33_9 Depth=2
	bne	$t2, $a2, .LBB33_16
# %bb.15:                               #   in Loop: Header=BB33_9 Depth=2
	slli.d	$t2, $t1, 32
	sub.d	$t2, $zero, $t2
	srai.d	$t2, $t2, 32
	addi.w	$t3, $a7, 1
	st.w	$t3, $s6, 0
	slli.d	$t4, $a7, 3
	stx.d	$t2, $s8, $t4
	ld.d	$t2, $t0, 16
	ld.d	$t2, $t2, 8
	alsl.d	$t4, $a7, $s8, 3
	addi.d	$t0, $t0, 16
	slli.d	$t3, $t3, 3
	stx.d	$t2, $s8, $t3
	addi.w	$t2, $t1, 0
	addi.w	$t1, $a7, 3
	st.w	$t1, $s6, 0
	st.d	$t2, $t4, 16
	b	.LBB33_18
	.p2align	4, , 16
.LBB33_16:                              #   in Loop: Header=BB33_9 Depth=2
	bne	$t2, $a1, .LBB33_19
# %bb.17:                               #   in Loop: Header=BB33_9 Depth=2
	addi.w	$t1, $a7, 1
	st.w	$t1, $s6, 0
	slli.d	$t2, $a7, 3
	stx.d	$zero, $s8, $t2
	ld.d	$t2, $t0, 16
	ld.d	$t2, $t2, 8
	alsl.d	$t3, $a7, $s8, 3
	addi.d	$t0, $t0, 16
	slli.d	$t1, $t1, 3
	stx.d	$t2, $s8, $t1
	addi.w	$t1, $a7, 3
	st.w	$t1, $s6, 0
	st.d	$zero, $t3, 16
.LBB33_18:                              # %.loopexit.sink.split.i
                                        #   in Loop: Header=BB33_9 Depth=2
	ori	$t2, $zero, 4
	b	.LBB33_7
.LBB33_19:                              #   in Loop: Header=BB33_9 Depth=2
	beq	$t2, $a5, .LBB33_21
# %bb.20:                               #   in Loop: Header=BB33_9 Depth=2
	bne	$t2, $a6, .LBB33_8
.LBB33_21:                              #   in Loop: Header=BB33_9 Depth=2
	ld.d	$t0, $t0, 16
	beqz	$t0, .LBB33_8
# %bb.22:                               # %.lr.ph.i
                                        #   in Loop: Header=BB33_9 Depth=2
	addi.w	$t1, $t1, 0
	alsl.d	$t2, $a7, $s8, 3
	addi.d	$t2, $t2, 8
	.p2align	4, , 16
.LBB33_23:                              #   Parent Loop BB33_2 Depth=1
                                        #     Parent Loop BB33_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$t3, $a7, 1
	st.w	$t3, $s6, 0
	st.d	$t1, $t2, -8
	ld.d	$t3, $t0, 8
	addi.w	$a7, $a7, 2
	st.w	$a7, $s6, 0
	st.d	$t3, $t2, 0
	ld.d	$t0, $t0, 0
	addi.d	$t2, $t2, 16
	bnez	$t0, .LBB33_23
	b	.LBB33_8
	.p2align	4, , 16
.LBB33_24:                              # %cnf_GetFormulaPolarity.exit
                                        #   in Loop: Header=BB33_2 Depth=1
	st.w	$a0, $s6, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a0, 0
	ld.d	$s1, $a0, 8
	ld.d	$s2, $a1, 8
	addi.w	$s5, $t1, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$s3, $a1, 0
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	bltu	$a0, $s5, .LBB33_26
# %bb.25:                               #   in Loop: Header=BB33_2 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, 0
	ld.d	$s7, $fp, 16
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s4, $s1, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s0, $a0, 8
	st.d	$s5, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 8
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $fp, 16
	ld.w	$s0, $s1, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $s2, 8
	st.d	$zero, $s2, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s3, $a0, 8
	st.d	$s2, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	st.d	$a0, $a1, 8
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 16
	ld.w	$a7, $s6, 0
	bnez	$a0, .LBB33_28
	b	.LBB33_1
.LBB33_26:                              #   in Loop: Header=BB33_2 Depth=1
	addi.w	$a0, $zero, -1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB33_30
	.p2align	4, , 16
.LBB33_27:                              #   in Loop: Header=BB33_2 Depth=1
	ld.d	$a0, $fp, 16
	ld.w	$a7, $s6, 0
	beqz	$a0, .LBB33_1
.LBB33_28:                              # %.preheader
                                        #   in Loop: Header=BB33_2 Depth=1
	alsl.d	$a1, $a7, $s8, 3
	.p2align	4, , 16
.LBB33_29:                              #   Parent Loop BB33_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 8
	addi.w	$a7, $a7, 1
	st.w	$a7, $s6, 0
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB33_29
	b	.LBB33_1
.LBB33_30:                              #   in Loop: Header=BB33_2 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, 0
	ld.d	$s7, $fp, 16
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s4, $s1, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s0, $a0, 8
	st.d	$s5, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 8
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $fp, 16
	ld.w	$s0, $s1, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	st.d	$s3, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, 16
	ld.w	$a7, $s6, 0
	bnez	$a0, .LBB33_28
	b	.LBB33_1
.LBB33_31:                              # %._crit_edge
	st.w	$s7, $s6, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB33_32:
	st.w	$a0, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	ori	$a3, $zero, 176
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_DumpCore)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	cnf_RemoveEquivImplFromFormula, .Lfunc_end33-cnf_RemoveEquivImplFromFormula
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_AntiPrenex
	.type	cnf_AntiPrenex,@function
cnf_AntiPrenex:                         # @cnf_AntiPrenex
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
	move	$fp, $a0
	ld.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$s4, $a0, %got_pc_lo12(fol_ALL)
	ld.w	$a2, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$s3, $a0, %got_pc_lo12(fol_EXIST)
	ld.w	$a1, $s3, 0
	beq	$a2, $s1, .LBB34_7
# %bb.1:
	beq	$a1, $s1, .LBB34_7
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $a0, 0
	beq	$s1, $a0, .LBB34_34
# %bb.3:
	bgez	$s1, .LBB34_5
# %bb.4:                                # %symbol_IsPredicate.exit99
	sub.w	$a0, $zero, $s1
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB34_34
.LBB34_5:                               # %symbol_IsPredicate.exit99.thread
	ld.d	$s0, $fp, 16
	beqz	$s0, .LBB34_34
	.p2align	4, , 16
.LBB34_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(cnf_AntiPrenex)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB34_6
	b	.LBB34_34
.LBB34_7:
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$s0, $a0, 8
	ld.w	$a0, $s0, 0
	bgez	$a0, .LBB34_9
# %bb.8:                                # %symbol_IsPredicate.exit
	sub.w	$a3, $zero, $a0
	pcalau12i	$a4, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a4, $a4, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a4, $a4, 0
	and	$a3, $a4, $a3
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB34_34
.LBB34_9:                               # %symbol_IsPredicate.exit.thread
	pcalau12i	$a3, %got_pc_hi20(fol_NOT)
	ld.d	$a3, $a3, %got_pc_lo12(fol_NOT)
	ld.w	$a3, $a3, 0
	beq	$a0, $a3, .LBB34_34
# %bb.10:
	xor	$a3, $a2, $s1
	sltui	$a3, $a3, 1
	pcalau12i	$a4, %got_pc_hi20(fol_AND)
	ld.d	$a4, $a4, %got_pc_lo12(fol_AND)
	pcalau12i	$a5, %got_pc_hi20(fol_OR)
	ld.d	$a5, $a5, %got_pc_lo12(fol_OR)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$s2, $a3, 0
	beq	$a2, $a0, .LBB34_24
# %bb.11:
	beq	$a1, $a0, .LBB34_24
# %bb.12:
	bne	$a0, $s2, .LBB34_25
.LBB34_13:
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	ld.d	$s3, $a0, 16
	move	$a0, $s0
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cnf_Flatten)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s0, 16
	beqz	$s8, .LBB34_29
# %bb.14:                               # %.lr.ph125.preheader
	pcalau12i	$a0, %got_pc_hi20(term_Equal)
	ld.d	$s4, $a0, %got_pc_lo12(term_Equal)
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$s5, $a0, %got_pc_lo12(term_Copy)
	b	.LBB34_17
	.p2align	4, , 16
.LBB34_15:                              #   in Loop: Header=BB34_17 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s7, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 8
.LBB34_16:                              #   in Loop: Header=BB34_17 Depth=1
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB34_29
.LBB34_17:                              # %.lr.ph125
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_21 Depth 2
	ld.d	$s7, $s8, 8
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(list_NIntersect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB34_16
# %bb.18:                               #   in Loop: Header=BB34_17 Depth=1
	move	$s6, $a0
	ld.w	$s2, $s7, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(list_NMapCar)
	jirl	$ra, $ra, 0
	bne	$s1, $s2, .LBB34_15
# %bb.19:                               #   in Loop: Header=BB34_17 Depth=1
	ld.d	$a0, $s7, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a0, 16
	beqz	$a1, .LBB34_23
# %bb.20:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB34_17 Depth=1
	move	$a3, $a1
	.p2align	4, , 16
.LBB34_21:                              # %.preheader.i
                                        #   Parent Loop BB34_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB34_21
# %bb.22:                               #   in Loop: Header=BB34_17 Depth=1
	st.d	$s6, $a2, 0
	st.d	$a1, $a0, 16
	b	.LBB34_16
.LBB34_23:                              #   in Loop: Header=BB34_17 Depth=1
	st.d	$s6, $a0, 16
	b	.LBB34_16
.LBB34_24:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cnf_AntiPrenex)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beq	$a0, $s2, .LBB34_13
.LBB34_25:
	ld.w	$a1, $s4, 0
	beq	$a1, $a0, .LBB34_34
# %bb.26:
	ld.w	$a1, $s3, 0
	beq	$a1, $a0, .LBB34_34
# %bb.27:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_DistrQuantorNoVarSub)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 16
	beqz	$s0, .LBB34_34
	.p2align	4, , 16
.LBB34_28:                              # %.lr.ph121
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(cnf_AntiPrenex)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB34_28
	b	.LBB34_34
.LBB34_29:                              # %._crit_edge
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB34_32
# %bb.30:                               # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB34_31:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB34_31
.LBB34_32:                              # %list_Delete.exit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $fp, 0
	ld.d	$a0, $s0, 16
	st.d	$a0, $fp, 16
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 256
	ld.w	$a2, $a1, 32
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a4, $a3, 0
	add.d	$a2, $a4, $a2
	st.d	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 256
	st.d	$s0, $a0, 0
	ld.d	$s1, $fp, 16
	beqz	$s1, .LBB34_34
	.p2align	4, , 16
.LBB34_33:                              # %.lr.ph129
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cnf_AntiPrenex)
	jirl	$ra, $ra, 0
	st.d	$s0, $s1, 8
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB34_33
.LBB34_34:                              # %.loopexit
	move	$a0, $fp
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
.Lfunc_end34:
	.size	cnf_AntiPrenex, .Lfunc_end34-cnf_AntiPrenex
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_SkolemFormula
	.type	cnf_SkolemFormula,@function
cnf_SkolemFormula:                      # @cnf_SkolemFormula
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
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	move	$s0, $a2
	move	$s1, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_ALL)
	ld.d	$s2, $a1, %got_pc_lo12(fol_ALL)
	ld.w	$a1, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(fol_EXIST)
	ld.d	$s3, $a2, %got_pc_lo12(fol_EXIST)
	beq	$a1, $a0, .LBB35_2
# %bb.1:
	ld.w	$a2, $s3, 0
	bne	$a2, $a0, .LBB35_16
.LBB35_2:                               # %.lr.ph104
	xor	$a0, $a1, $a0
	sltui	$a1, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB35_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_8 Depth 2
                                        #     Child Loop BB35_10 Depth 2
                                        #     Child Loop BB35_12 Depth 2
                                        #     Child Loop BB35_5 Depth 2
	andi	$a0, $a1, 1
	beqz	$a0, .LBB35_6
# %bb.4:                                # %.lr.ph.ithread-pre-split.lr.ph
                                        #   in Loop: Header=BB35_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	ld.d	$a3, $s7, 128
	ld.d	$a1, $a2, 0
	ld.w	$a4, $a3, 32
	ld.d	$a5, $s8, 0
	ld.d	$a0, $a1, 8
	add.d	$a4, $a5, $a4
	st.d	$a4, $s8, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s7, 128
	st.d	$a2, $a3, 0
	.p2align	4, , 16
.LBB35_5:                               # %.lr.ph.ithread-pre-split
                                        #   Parent Loop BB35_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s7, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s8, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s8, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s7, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB35_5
	b	.LBB35_14
	.p2align	4, , 16
.LBB35_6:                               #   in Loop: Header=BB35_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 8
	ld.d	$s6, $a1, 16
	beqz	$s6, .LBB35_9
# %bb.7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB35_3 Depth=1
	move	$s3, $a0
	.p2align	4, , 16
.LBB35_8:                               # %.lr.ph
                                        #   Parent Loop BB35_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(symbol_CreateSkolemFunction)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s0, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$a0, $s0, 0
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 0
	ld.d	$a3, $s6, 8
	ld.d	$a2, $a1, 8
	ld.w	$a1, $a3, 0
	move	$s4, $a0
	move	$a0, $a2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fol_ReplaceVariable)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s7, 256
	st.d	$s4, $a0, 0
	ld.d	$s6, $s6, 0
	bnez	$s6, .LBB35_8
.LBB35_9:                               # %._crit_edge
                                        #   in Loop: Header=BB35_3 Depth=1
	beqz	$s2, .LBB35_11
	.p2align	4, , 16
.LBB35_10:                              # %.lr.ph.i76
                                        #   Parent Loop BB35_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	ld.d	$a3, $s2, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s7, 128
	st.d	$s2, $a0, 0
	move	$s2, $a3
	bnez	$a3, .LBB35_10
.LBB35_11:                              # %.lr.ph.i82thread-pre-split.lr.ph
                                        #   in Loop: Header=BB35_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	ld.d	$a3, $s7, 128
	ld.d	$a1, $a2, 0
	ld.w	$a4, $a3, 32
	ld.d	$a5, $s8, 0
	ld.d	$a0, $a1, 8
	add.d	$a4, $a5, $a4
	st.d	$a4, $s8, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s7, 128
	st.d	$a2, $a3, 0
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB35_12:                              # %.lr.ph.i82thread-pre-split
                                        #   Parent Loop BB35_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s7, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s8, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s8, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s7, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB35_12
# %bb.13:                               #   in Loop: Header=BB35_3 Depth=1
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
.LBB35_14:                              # %tailrecurse.backedge
                                        #   in Loop: Header=BB35_3 Depth=1
	ld.w	$a1, $a0, 0
	st.w	$a1, $fp, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	ld.d	$a1, $s7, 256
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 256
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, 0
	ld.w	$a2, $s2, 0
	xor	$a1, $a2, $a0
	sltui	$a1, $a1, 1
	beq	$a2, $a0, .LBB35_3
# %bb.15:                               # %tailrecurse.backedge
                                        #   in Loop: Header=BB35_3 Depth=1
	ld.w	$a2, $s3, 0
	beq	$a2, $a0, .LBB35_3
.LBB35_16:                              # %tailrecurse._crit_edge
	pcalau12i	$a1, %got_pc_hi20(fol_AND)
	ld.d	$a1, $a1, %got_pc_lo12(fol_AND)
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB35_18
# %bb.17:                               # %tailrecurse._crit_edge
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$a1, $a1, %got_pc_lo12(fol_OR)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB35_20
.LBB35_18:
	ld.d	$s2, $fp, 16
	beqz	$s2, .LBB35_20
	.p2align	4, , 16
.LBB35_19:                              # %.lr.ph109
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cnf_SkolemFormula)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB35_19
.LBB35_20:                              # %.loopexit
	move	$a0, $fp
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
.Lfunc_end35:
	.size	cnf_SkolemFormula, .Lfunc_end35-cnf_SkolemFormula
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_OptimizedSkolemization
	.type	cnf_OptimizedSkolemization,@function
cnf_OptimizedSkolemization:             # @cnf_OptimizedSkolemization
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
	move	$s2, $a0
	ld.d	$fp, $a0, 112
	ld.w	$a0, $fp, 216
	ld.d	$s0, $s2, 104
	move	$s6, $a6
	move	$s3, $a5
	move	$s4, $a4
	move	$s5, $a3
	move	$s7, $a2
	move	$s1, $a1
	beqz	$a0, .LBB36_2
# %bb.1:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(cnf_VARIABLEDEPTHARRAY)
	ld.d	$a0, $a0, %pc_lo12(cnf_VARIABLEDEPTHARRAY)
	addi.d	$a0, $a0, 4
	lu12i.w	$a1, 1
	ori	$a2, $a1, 3904
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB36_2:                               # %.loopexit
	ld.w	$a0, $fp, 132
	bnez	$a0, .LBB36_4
# %bb.3:
	ld.w	$a0, $fp, 136
	beqz	$a0, .LBB36_5
.LBB36_4:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fol_PrettyPrintDFG)
	jirl	$ra, $ra, 0
.LBB36_5:
	ld.w	$a0, $s1, 0
	bgez	$a0, .LBB36_7
# %bb.6:                                # %symbol_IsPredicate.exit.i
	sub.w	$a1, $zero, $a0
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB36_14
.LBB36_7:                               # %symbol_IsPredicate.exit.thread.i
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB36_10
# %bb.8:
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	bgez	$a0, .LBB36_10
# %bb.9:                                # %fol_IsLiteral.exit
	sub.w	$a0, $zero, $a0
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB36_14
.LBB36_10:                              # %fol_IsLiteral.exit.thread
	ld.w	$a0, $fp, 212
	beqz	$a0, .LBB36_12
# %bb.11:
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	ld.w	$s8, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	b	.LBB36_13
.LBB36_12:
	ld.w	$a0, $fp, 216
	move	$s8, $s1
	beqz	$a0, .LBB36_21
.LBB36_13:                              # %.thread
	st.d	$zero, $sp, 8
	ori	$a3, $zero, 1
	st.d	$s6, $sp, 0
	move	$a0, $s2
	move	$a1, $s8
	move	$a2, $s7
	move	$a4, $s1
	move	$a5, $s5
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(cnf_OptimizedSkolemFormula)
	jirl	$ra, $ra, 0
	move	$s1, $s8
.LBB36_14:                              # %fol_IsLiteral.exit.thread50
	ld.w	$a0, $fp, 132
	bnez	$a0, .LBB36_16
# %bb.15:
	ld.w	$a0, $fp, 136
	beqz	$a0, .LBB36_17
.LBB36_16:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Print)
	jirl	$ra, $ra, 0
.LBB36_17:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cnf_ComputeLiteralLists)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB36_20
# %bb.18:                               # %.lr.ph.i46.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$s3, $a0, %got_pc_lo12(fol_OR)
	move	$s4, $s2
	.p2align	4, , 16
.LBB36_19:                              # %.lr.ph.i46
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	ld.d	$a1, $s4, 8
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 8
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB36_19
.LBB36_20:                              # %cnf_DistributiveFormula.exit
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a0, $a0, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cnf_MakeClauseList)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	ret
.LBB36_21:
	st.d	$zero, $sp, 32
	addi.d	$a2, $sp, 32
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_SkolemFormula)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB36_14
# %bb.22:                               # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB36_23:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB36_23
	b	.LBB36_14
.Lfunc_end36:
	.size	cnf_OptimizedSkolemization, .Lfunc_end36-cnf_OptimizedSkolemization
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_LabelEqual
	.type	cnf_LabelEqual,@function
cnf_LabelEqual:                         # @cnf_LabelEqual
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end37:
	.size	cnf_LabelEqual, .Lfunc_end37-cnf_LabelEqual
                                        # -- End function
	.globl	cnf_QueryFlotter                # -- Begin function cnf_QueryFlotter
	.p2align	5
	.type	cnf_QueryFlotter,@function
cnf_QueryFlotter:                       # @cnf_QueryFlotter
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
	pcalau12i	$s6, %pc_hi20(cnf_SEARCHCOPY)
	ld.d	$a3, $s6, %pc_lo12(cnf_SEARCHCOPY)
	move	$s4, $a0
	ld.d	$s1, $a0, 112
	ld.d	$s2, $a0, 104
	ld.d	$fp, $a3, 112
	move	$s0, $a2
	move	$s3, $a1
	move	$s5, $zero
	move	$s7, $zero
	ori	$s8, $zero, 384
	.p2align	4, , 16
.LBB38_1:                               # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(flag_DefaultStore)
	jirl	$ra, $ra, 0
	ldx.w	$a2, $a0, $s7
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 4
	addi.w	$s5, $s5, 1
	bne	$s7, $s8, .LBB38_1
# %bb.2:                                # %flag_InitStoreByDefaults.exit
	ld.w	$a2, $s1, 36
	ori	$a1, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, %pc_lo12(cnf_SEARCHCOPY)
	ld.d	$a0, $a1, 104
	sub.d	$a2, $a0, $s2
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB38_5
# %bb.3:                                # %scalar.ph.preheader
	lu12i.w	$a2, -4
	ori	$a2, $a2, 384
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3712
	.p2align	4, , 16
.LBB38_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s2, $a2
	ldx.w	$a4, $a4, $a3
	add.d	$a5, $a0, $a2
	addi.d	$a2, $a2, 4
	stptr.w	$a4, $a5, 16000
	bnez	$a2, .LBB38_4
	b	.LBB38_7
.LBB38_5:                               # %vector.body.preheader
	lu12i.w	$a2, -4
	ori	$a2, $a2, 384
	lu12i.w	$a4, 3
	ori	$a3, $a4, 3712
	ori	$a4, $a4, 3728
	.p2align	4, , 16
.LBB38_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $s2, $a2
	vldx	$vr0, $a5, $a3
	vldx	$vr1, $a5, $a4
	add.d	$a5, $a0, $a2
	vstx	$vr0, $a5, $a3
	addi.d	$a2, $a2, 32
	vstx	$vr1, $a5, $a4
	bnez	$a2, .LBB38_6
.LBB38_7:                               # %symbol_TransferPrecedence.exit
	st.d	$zero, $sp, 24
	st.d	$zero, $sp, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(prfs_CopyIndices)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$s4, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(fol_NormalizeVars)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialAtoms)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cnf_RemoveTrivialOperators)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cnf_SimplifyQuantors)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 224
	move	$s3, $a0
	beqz	$a1, .LBB38_9
# %bb.8:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s1, 228
	addi.d	$a2, $sp, 32
	ori	$a4, $zero, 1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ren_Rename)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB38_9:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cnf_RemoveEquivImplFromFormula)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormula)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cnf_AntiPrenex)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a2, $sp, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cnf_SkolemFormula)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cnf_ComputeLiteralLists)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB38_12
# %bb.10:                               # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$s7, $a0, %got_pc_lo12(fol_OR)
	move	$s8, $s5
	.p2align	4, , 16
.LBB38_11:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s8, 8
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 8
	ld.d	$s8, $s8, 0
	bnez	$s8, .LBB38_11
.LBB38_12:                              # %cnf_DistributiveFormula.exit
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a0, $a0, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cnf_MakeClauseList)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB38_15
# %bb.13:                               # %.lr.ph.preheader
	move	$a0, $s1
	.p2align	4, , 16
.LBB38_14:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a1, 48
	ori	$a2, $a2, 8
	st.w	$a2, $a1, 48
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB38_14
.LBB38_15:                              # %._crit_edge
	ld.d	$a0, $s6, %pc_lo12(cnf_SEARCHCOPY)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(red_SatUnit)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB38_17
# %bb.16:
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB38_19
.LBB38_17:
	move	$s1, $zero
	b	.LBB38_19
	.p2align	4, , 16
.LBB38_18:                              # %.lr.ph85
                                        #   in Loop: Header=BB38_19 Depth=1
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(prfs_MoveUsableWorkedOff)
	jirl	$ra, $ra, 0
.LBB38_19:                              # %.lr.ph85
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, %pc_lo12(cnf_SEARCHCOPY)
	ld.d	$a1, $a0, 56
	bnez	$a1, .LBB38_18
# %bb.20:                               # %._crit_edge86
	ld.w	$s4, $fp, 36
	st.d	$zero, $sp, 16
	ori	$a1, $zero, 9
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s6, %pc_lo12(cnf_SEARCHCOPY)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a3, $sp, 16
	move	$a0, $s2
	move	$a2, $zero
	move	$a4, $s0
	move	$a5, $s1
	move	$a6, $zero
	pcaddu18i	$ra, %call36(cnf_OptimizedSkolemization)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$s4, .LBB38_22
# %bb.21:
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
.LBB38_22:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB38_25
# %bb.23:                               # %.lr.ph.i66.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB38_24:                              # %.lr.ph.i66
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB38_24
.LBB38_25:                              # %list_Delete.exit
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB38_28
# %bb.26:                               # %.lr.ph.i70.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB38_27:                              # %.lr.ph.i70
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB38_27
.LBB38_28:                              # %list_Delete.exit74
	ld.d	$a0, $s6, %pc_lo12(cnf_SEARCHCOPY)
	pcaddu18i	$ra, %call36(prfs_Clean)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB38_31
# %bb.29:                               # %.lr.ph89.preheader
	move	$a0, $s0
	.p2align	4, , 16
.LBB38_30:                              # %.lr.ph89
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a1, 48
	ori	$a2, $a2, 8
	st.w	$a2, $a1, 48
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB38_30
.LBB38_31:                              # %._crit_edge90
	move	$a0, $s0
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
	ret
.Lfunc_end38:
	.size	cnf_QueryFlotter, .Lfunc_end38-cnf_QueryFlotter
                                        # -- End function
	.p2align	5                               # -- Begin function flag_SetFlagValue
	.type	flag_SetFlagValue,@function
flag_SetFlagValue:                      # @flag_SetFlagValue
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(flag_Minimum)
	jirl	$ra, $ra, 0
	bge	$a0, $fp, .LBB39_3
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(flag_Maximum)
	jirl	$ra, $ra, 0
	bge	$fp, $a0, .LBB39_4
# %bb.2:                                # %flag_CheckFlagValueInRange.exit
	slli.d	$a0, $s0, 2
	stx.w	$fp, $s1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB39_3:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(flag_Name)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.LBB39_4:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(flag_Name)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	flag_SetFlagValue, .Lfunc_end39-flag_SetFlagValue
                                        # -- End function
	.globl	cnf_DefTargetConvert            # -- Begin function cnf_DefTargetConvert
	.p2align	5
	.type	cnf_DefTargetConvert,@function
cnf_DefTargetConvert:                   # @cnf_DefTargetConvert
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a5, $a7, 148
	ld.d	$s0, $sp, 200
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	move	$s5, $a1
	move	$fp, $a0
	beqz	$a5, .LBB40_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
.LBB40_2:
	ld.d	$a0, $sp, 192
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $s0, 0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cnf_RemoveImplFromFormulaPath)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormulaPath)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cnf_AntiPrenexPath)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(vec_MAX)
	ld.d	$s3, $a0, %got_pc_lo12(vec_MAX)
	ld.w	$a1, $s3, 0
	addi.d	$a0, $a1, 1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(vec_VECTOR)
	ld.d	$s4, $a2, %got_pc_lo12(vec_VECTOR)
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	stx.d	$fp, $s4, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_ALL)
	ld.d	$s6, $a1, %got_pc_lo12(fol_ALL)
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$fp, $a1, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$s7, $a1, %got_pc_lo12(term_Equal)
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$s8, $a1, %got_pc_lo12(term_Delete)
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	b	.LBB40_5
	.p2align	4, , 16
.LBB40_3:                               # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB40_5 Depth=1
	ld.w	$a0, $s3, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
.LBB40_4:                               # %.loopexit.i
                                        #   in Loop: Header=BB40_5 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB40_19
.LBB40_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_9 Depth 2
                                        #       Child Loop BB40_13 Depth 3
                                        #       Child Loop BB40_17 Depth 3
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s4, $a1
	st.w	$a0, $s3, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s0, $a1, 16
	bnez	$s0, .LBB40_9
	b	.LBB40_4
.LBB40_6:                               #   in Loop: Header=BB40_9 Depth=2
	ld.d	$a1, $a1, 8
	st.d	$a0, $a1, 16
.LBB40_7:                               #   in Loop: Header=BB40_9 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $s0, 8
	addi.d	$a2, $a0, 1
	st.w	$a2, $s3, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s4, $a0
.LBB40_8:                               #   in Loop: Header=BB40_9 Depth=2
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB40_3
.LBB40_9:                               # %.preheader80.i
                                        #   Parent Loop BB40_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB40_13 Depth 3
                                        #       Child Loop BB40_17 Depth 3
	ld.d	$s1, $s0, 8
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(term_HasProperSuperterm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB40_8
# %bb.10:                               #   in Loop: Header=BB40_9 Depth=2
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB40_7
# %bb.11:                               #   in Loop: Header=BB40_9 Depth=2
	ld.d	$a1, $s1, 16
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 16
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	beqz	$a2, .LBB40_15
# %bb.12:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB40_9 Depth=2
	move	$s6, $a2
	.p2align	4, , 16
.LBB40_13:                              # %.lr.ph.i
                                        #   Parent Loop BB40_5 Depth=1
                                        #     Parent Loop BB40_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s6, 8
	move	$a2, $s7
	move	$a3, $s8
	pcaddu18i	$ra, %call36(list_DeleteElementFree)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s6, 0
	bnez	$s6, .LBB40_13
# %bb.14:                               # %._crit_edge.i.loopexit
                                        #   in Loop: Header=BB40_9 Depth=2
	ld.d	$a1, $s1, 16
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
.LBB40_15:                              # %._crit_edge.i
                                        #   in Loop: Header=BB40_9 Depth=2
	bnez	$a0, .LBB40_6
# %bb.16:                               #   in Loop: Header=BB40_9 Depth=2
	ld.d	$a2, $s2, 256
	ld.d	$a0, $a1, 0
	ld.w	$a3, $a2, 32
	ld.d	$a4, $fp, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	add.d	$a3, $a4, $a3
	st.d	$a3, $fp, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s2, 256
	st.d	$a1, $a2, 0
	ld.d	$a1, $s1, 16
	beqz	$a1, .LBB40_18
	.p2align	4, , 16
.LBB40_17:                              # %.lr.ph.i.i
                                        #   Parent Loop BB40_5 Depth=1
                                        #     Parent Loop BB40_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s2, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $fp, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $fp, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s2, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB40_17
.LBB40_18:                              # %list_Delete.exit.i
                                        #   in Loop: Header=BB40_9 Depth=2
	ld.d	$a1, $s2, 256
	ld.w	$a2, $a1, 32
	ld.d	$a3, $fp, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $fp, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s1, 0
	ld.d	$a1, $s2, 256
	st.d	$s1, $a1, 0
	st.d	$a0, $s0, 8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	b	.LBB40_7
.LBB40_19:                              # %.preheader.i
	beqz	$a2, .LBB40_22
# %bb.20:
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB40_21:                              # %.lr.ph90.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB40_21
.LBB40_22:                              # %._crit_edge91.i
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $s7, 0
	ld.w	$s1, $s6, 0
	bne	$a0, $s1, .LBB40_28
# %bb.23:
	ld.d	$a0, $s7, 16
	ld.d	$a0, $a0, 8
	ld.d	$s1, $a0, 16
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB40_29
# %bb.24:
	beqz	$a0, .LBB40_30
# %bb.25:                               # %.preheader.i.i.preheader
	move	$a2, $s1
	.p2align	4, , 16
.LBB40_26:                              # %.preheader.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB40_26
# %bb.27:
	st.d	$a0, $a1, 0
	b	.LBB40_30
.LBB40_28:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s7, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s1
	move	$a1, $s6
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 8
	move	$s7, $a0
	b	.LBB40_31
.LBB40_29:
	move	$s1, $a0
.LBB40_30:                              # %list_Nconc.exit.i
	pcalau12i	$a0, %got_pc_hi20(term_Equal)
	ld.d	$a1, $a0, %got_pc_lo12(term_Equal)
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$a2, $a0, %got_pc_lo12(term_Delete)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_DeleteDuplicatesFree)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 16
	ld.d	$a1, $a1, 8
	st.d	$a0, $a1, 16
.LBB40_31:                              # %cnf_MovePredicateVariablesUp.exit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $s3, 0
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s7, 0
	move	$s3, $s7
	move	$a2, $a1
	bne	$a1, $a0, .LBB40_34
# %bb.32:                               # %.lr.ph.i112.preheader
	move	$s3, $s7
	.p2align	4, , 16
.LBB40_33:                              # %.lr.ph.i112
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s3, 16
	ld.d	$a2, $a2, 0
	ld.d	$s3, $a2, 8
	ld.w	$a2, $s3, 0
	beq	$a2, $a0, .LBB40_33
.LBB40_34:                              # %._crit_edge.i108
	pcalau12i	$a3, %got_pc_hi20(fol_OR)
	ld.d	$s0, $a3, %got_pc_lo12(fol_OR)
	ld.w	$a3, $s0, 0
	bne	$a2, $a3, .LBB40_36
# %bb.35:
	ld.d	$s4, $s3, 16
	bnez	$s4, .LBB40_39
.LBB40_36:                              # %cnf_FlattenPath.exit
	bne	$a1, $a0, .LBB40_45
.LBB40_37:
	ld.d	$a0, $s7, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 16
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s0, 0
	beq	$a2, $a3, .LBB40_46
	b	.LBB40_64
	.p2align	4, , 16
.LBB40_38:                              #   in Loop: Header=BB40_39 Depth=1
	beqz	$s4, .LBB40_44
.LBB40_39:                              # %.lr.ph60.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_42 Depth 2
	move	$s6, $s4
	ld.d	$s1, $s4, 8
	ld.d	$s4, $s4, 0
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(term_HasProperSuperterm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB40_38
# %bb.40:                               #   in Loop: Header=BB40_39 Depth=1
	ld.w	$a1, $s1, 0
	ld.w	$a0, $s0, 0
	bne	$a1, $a0, .LBB40_38
# %bb.41:                               #   in Loop: Header=BB40_39 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cnf_Flatten)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	.p2align	4, , 16
.LBB40_42:                              # %.lr.ph55.i
                                        #   Parent Loop BB40_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	st.d	$s3, $a1, 8
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB40_42
# %bb.43:                               # %._crit_edge56.loopexit.i
                                        #   in Loop: Header=BB40_39 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(list_NInsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 8
	st.d	$a0, $s6, 8
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $fp, 0
	ld.d	$a3, $s1, 16
	add.d	$a1, $a2, $a1
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $s2, 128
	st.d	$a3, $a0, 0
	ld.d	$a0, $s2, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $fp, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s2, 256
	st.d	$s1, $a0, 0
	b	.LBB40_38
.LBB40_44:                              # %cnf_FlattenPath.exit.loopexit
	ld.w	$a1, $s7, 0
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $s6, 0
	beq	$a1, $a0, .LBB40_37
.LBB40_45:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s0, 0
	bne	$a2, $a3, .LBB40_64
.LBB40_46:
	ld.d	$s1, $a0, 16
	beqz	$s1, .LBB40_64
# %bb.47:                               # %.lr.ph.preheader
	move	$s3, $a0
	addi.d	$s0, $a1, 16
	move	$s4, $s1
	.p2align	4, , 16
.LBB40_48:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.d	$a1, $s0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_HasProperSuperterm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB40_63
# %bb.49:                               #   in Loop: Header=BB40_48 Depth=1
	ld.d	$a0, $s0, 8
	beq	$s5, $a0, .LBB40_63
# %bb.50:                               #   in Loop: Header=BB40_48 Depth=1
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB40_48
# %bb.51:                               # %.loopexit
	move	$a0, $s3
	st.d	$s1, $s3, 16
	beqz	$s1, .LBB40_64
.LBB40_52:                              # %.critedge
	pcaddu18i	$ra, %call36(term_MaxVar)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(symbol_STANDARDVARCOUNTER)
	ld.d	$s0, $a1, %got_pc_lo12(symbol_STANDARDVARCOUNTER)
	st.w	$a0, $s0, 0
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fol_BoundVariables)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$a1, $a1, %got_pc_lo12(term_Equal)
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB40_56
# %bb.53:                               # %.lr.ph131.preheader
	move	$s1, $a0
	move	$s4, $a0
	.p2align	4, , 16
.LBB40_54:                              # %.lr.ph131
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 8
	ld.w	$a2, $s0, 0
	ld.w	$a1, $a0, 0
	addi.w	$a2, $a2, 1
	st.w	$a2, $s0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_ExchangeVariable)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB40_54
	.p2align	4, , 16
.LBB40_55:                              # %.lr.ph.i114
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $fp, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s2, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	bnez	$a3, .LBB40_55
.LBB40_56:                              # %list_Delete.exit
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beqz	$s0, .LBB40_58
	.p2align	4, , 16
.LBB40_57:                              # %.lr.ph135
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ld.w	$a1, $a0, 0
	ld.d	$a2, $fp, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_ReplaceVariable)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	ld.d	$fp, $fp, 0
	bnez	$s0, .LBB40_57
.LBB40_58:                              # %._crit_edge136
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$s1, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormula)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fol_IMPLIES)
	ld.d	$a0, $a0, %got_pc_lo12(fol_IMPLIES)
	ld.w	$s3, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s5, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s1, $a0, 8
	st.d	$s4, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_NMapCar)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s6, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $fp, 148
	move	$s1, $a0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB40_60
# %bb.59:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
.LBB40_60:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormula)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 148
	beqz	$a0, .LBB40_62
# %bb.61:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
.LBB40_62:
	move	$a0, $zero
	move	$a1, $s1
	move	$a2, $fp
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cnf_HaveProof)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	b	.LBB40_65
.LBB40_63:
	ld.d	$a1, $s4, 8
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$a2, $a0, %got_pc_lo12(term_Delete)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_PointerDeleteElementFree)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s3
	st.d	$s1, $s3, 16
	bnez	$s1, .LBB40_52
.LBB40_64:
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
.LBB40_65:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end40:
	.size	cnf_DefTargetConvert, .Lfunc_end40-cnf_DefTargetConvert
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_RemoveImplFromFormulaPath
	.type	cnf_RemoveImplFromFormulaPath,@function
cnf_RemoveImplFromFormulaPath:          # @cnf_RemoveImplFromFormulaPath
# %bb.0:                                # %.lr.ph.preheader
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
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(vec_MAX)
	ld.d	$s3, $a1, %got_pc_lo12(vec_MAX)
	ld.w	$s4, $s3, 0
	addi.d	$a4, $s4, 1
	slli.d	$a1, $s4, 3
	pcalau12i	$a2, %got_pc_hi20(vec_VECTOR)
	ld.d	$s5, $a2, %got_pc_lo12(vec_VECTOR)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	stx.d	$a0, $s5, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_IMPLIES)
	ld.d	$s6, $a1, %got_pc_lo12(fol_IMPLIES)
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$s7, $a1, %got_pc_lo12(fol_OR)
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s8, $a1, %got_pc_lo12(fol_NOT)
	b	.LBB41_3
	.p2align	4, , 16
.LBB41_1:                               # %.lr.ph..loopexit_crit_edge
                                        #   in Loop: Header=BB41_3 Depth=1
	ld.w	$a4, $s3, 0
.LBB41_2:                               # %.loopexit
                                        #   in Loop: Header=BB41_3 Depth=1
	beq	$s4, $a4, .LBB41_9
.LBB41_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_8 Depth 2
	addi.w	$a0, $a4, -1
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $s5, $a1
	st.w	$a0, $s3, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(term_HasProperSuperterm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB41_1
# %bb.4:                                #   in Loop: Header=BB41_3 Depth=1
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB41_6
# %bb.5:                                #   in Loop: Header=BB41_3 Depth=1
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 16
	st.w	$a0, $s1, 0
	ld.w	$s2, $s8, 0
	ld.d	$fp, $a1, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_CreateAddFather)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	st.d	$a0, $a1, 8
	st.d	$s1, $a0, 8
.LBB41_6:                               #   in Loop: Header=BB41_3 Depth=1
	ld.d	$a1, $s1, 16
	ld.w	$a4, $s3, 0
	beqz	$a1, .LBB41_2
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB41_3 Depth=1
	alsl.d	$a2, $a4, $s5, 3
	.p2align	4, , 16
.LBB41_8:                               #   Parent Loop BB41_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 8
	addi.w	$a4, $a4, 1
	st.w	$a4, $s3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB41_8
	b	.LBB41_2
.LBB41_9:                               # %._crit_edge
	st.w	$s4, $s3, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
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
.Lfunc_end41:
	.size	cnf_RemoveImplFromFormulaPath, .Lfunc_end41-cnf_RemoveImplFromFormulaPath
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_NegationNormalFormulaPath
	.type	cnf_NegationNormalFormulaPath,@function
cnf_NegationNormalFormulaPath:          # @cnf_NegationNormalFormulaPath
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
	move	$fp, $a0
	beqz	$a0, .LBB42_32
# %bb.1:                                # %.lr.ph189.preheader
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s4, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s5, $a0, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$s6, $a0, %got_pc_lo12(fol_ALL)
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$s7, $a0, %got_pc_lo12(fol_EXIST)
	move	$s8, $fp
.LBB42_2:                               # %.lr.ph189
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_15 Depth 2
                                        #     Child Loop BB42_24 Depth 2
                                        #     Child Loop BB42_26 Depth 2
                                        #     Child Loop BB42_29 Depth 2
                                        #     Child Loop BB42_18 Depth 2
                                        #     Child Loop BB42_20 Depth 2
                                        #     Child Loop BB42_5 Depth 2
                                        #     Child Loop BB42_7 Depth 2
                                        #     Child Loop BB42_9 Depth 2
	ld.w	$s2, $s8, 0
	ld.w	$a0, $s3, 0
	bne	$s2, $a0, .LBB42_28
# %bb.3:                                #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a0, $s8, 16
	ld.d	$s1, $a0, 8
	ld.w	$a1, $s1, 0
	bne	$a1, $s2, .LBB42_10
# %bb.4:                                #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
	st.w	$a1, $s8, 0
	.p2align	4, , 16
.LBB42_5:                               # %.lr.ph.i
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s4, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB42_5
# %bb.6:                                # %list_Delete.exit
                                        #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	st.d	$a0, $s8, 16
	ld.d	$a0, $s4, 256
	ld.d	$a1, $s1, 16
	ld.w	$a2, $a0, 32
	ld.d	$a3, $s5, 0
	ld.d	$a1, $a1, 8
	add.d	$a2, $a3, $a2
	st.d	$a2, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s4, 256
	st.d	$a1, $a0, 0
	ld.d	$a0, $s1, 16
	beqz	$a0, .LBB42_8
	.p2align	4, , 16
.LBB42_7:                               # %.lr.ph.i124
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s4, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB42_7
.LBB42_8:                               # %list_Delete.exit128
                                        #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a0, $s4, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s4, 256
	st.d	$s1, $a0, 0
	ld.d	$a0, $s8, 16
	beqz	$a0, .LBB42_22
	.p2align	4, , 16
.LBB42_9:                               # %.lr.ph185
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	st.d	$s8, $a1, 8
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB42_9
	b	.LBB42_22
	.p2align	4, , 16
.LBB42_10:                              #   in Loop: Header=BB42_2 Depth=1
	ld.w	$a2, $s6, 0
	ld.w	$a3, $s7, 0
	beq	$a2, $a1, .LBB42_17
# %bb.11:                               #   in Loop: Header=BB42_2 Depth=1
	beq	$a3, $a1, .LBB42_17
# %bb.12:                               #   in Loop: Header=BB42_2 Depth=1
	pcalau12i	$a2, %got_pc_hi20(fol_OR)
	ld.d	$a2, $a2, %got_pc_lo12(fol_OR)
	ld.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(fol_AND)
	ld.d	$a2, $a2, %got_pc_lo12(fol_AND)
	ld.w	$a2, $a2, 0
	beq	$a1, $a3, .LBB42_14
# %bb.13:                               #   in Loop: Header=BB42_2 Depth=1
	bne	$a1, $a2, .LBB42_28
.LBB42_14:                              # %cnf_GetDualSymbol.exit143
                                        #   in Loop: Header=BB42_2 Depth=1
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	xor	$a4, $a1, $a2
	sltui	$a4, $a4, 1
	xor	$a5, $a1, $a3
	sltui	$a5, $a5, 1
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	ld.d	$s6, $s1, 16
	or	$a1, $a3, $a1
	masknez	$a1, $a1, $a5
	maskeqz	$a2, $a2, $a5
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$s6, .LBB42_23
	.p2align	4, , 16
.LBB42_15:                              # %.lr.ph
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s6, 8
	ld.w	$s2, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s7, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_CreateAddFather)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 8
	st.d	$s1, $a0, 8
	ld.d	$s6, $s6, 0
	bnez	$s6, .LBB42_15
# %bb.16:                               # %._crit_edge
                                        #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a0, $s8, 16
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $s8, 0
	bnez	$a0, .LBB42_24
	b	.LBB42_25
.LBB42_17:                              # %cnf_GetDualSymbol.exit
                                        #   in Loop: Header=BB42_2 Depth=1
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	ld.d	$s6, $a0, 8
	masknez	$a0, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$s7, $a1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_CreateAddFather)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 0
	move	$s2, $a0
	st.d	$a0, $a1, 8
	st.d	$s1, $a0, 8
	ld.d	$a0, $s8, 16
	st.w	$s7, $s8, 0
	beqz	$a0, .LBB42_19
	.p2align	4, , 16
.LBB42_18:                              # %.lr.ph.i132
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s4, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB42_18
.LBB42_19:                              # %list_Delete.exit136
                                        #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a0, $s1, 16
	st.d	$a0, $s8, 16
	beqz	$a0, .LBB42_21
	.p2align	4, , 16
.LBB42_20:                              # %.lr.ph180
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	st.d	$s8, $a1, 8
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB42_20
.LBB42_21:                              # %._crit_edge181
                                        #   in Loop: Header=BB42_2 Depth=1
	st.d	$zero, $s1, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$s8, $s2
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB42_22:                              # %.loopexit
                                        #   in Loop: Header=BB42_2 Depth=1
	bnez	$s8, .LBB42_2
	b	.LBB42_32
.LBB42_23:                              # %._crit_edge.thread
                                        #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $s8, 0
	.p2align	4, , 16
.LBB42_24:                              # %.lr.ph.i145
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s4, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB42_24
.LBB42_25:                              # %list_Delete.exit149
                                        #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a0, $s1, 16
	st.d	$a0, $s8, 16
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB42_27
	.p2align	4, , 16
.LBB42_26:                              # %.lr.ph175
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	st.d	$s8, $a1, 8
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB42_26
.LBB42_27:                              # %._crit_edge176
                                        #   in Loop: Header=BB42_2 Depth=1
	st.d	$zero, $s1, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB42_28:                              #   in Loop: Header=BB42_2 Depth=1
	ld.d	$s1, $s8, 16
	beqz	$s1, .LBB42_32
	.p2align	4, , 16
.LBB42_29:                              # %.preheader
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_HasProperSuperterm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB42_31
# %bb.30:                               #   in Loop: Header=BB42_29 Depth=2
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB42_29
	b	.LBB42_32
	.p2align	4, , 16
.LBB42_31:                              #   in Loop: Header=BB42_2 Depth=1
	ld.d	$s8, $s1, 8
	bnez	$s8, .LBB42_2
.LBB42_32:                              # %._crit_edge190
	move	$a0, $fp
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
	ret
.Lfunc_end42:
	.size	cnf_NegationNormalFormulaPath, .Lfunc_end42-cnf_NegationNormalFormulaPath
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_AntiPrenexPath
	.type	cnf_AntiPrenexPath,@function
cnf_AntiPrenexPath:                     # @cnf_AntiPrenexPath
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
	move	$fp, $a0
	ld.w	$s2, $a0, 0
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$s4, $a0, %got_pc_lo12(fol_ALL)
	ld.w	$a2, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$s3, $a0, %got_pc_lo12(fol_EXIST)
	ld.w	$a1, $s3, 0
	beq	$a2, $s2, .LBB43_9
# %bb.1:
	beq	$a1, $s2, .LBB43_9
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $a0, 0
	beq	$s2, $a0, .LBB43_10
# %bb.3:
	bgez	$s2, .LBB43_5
# %bb.4:                                # %symbol_IsPredicate.exit125
	sub.w	$a0, $zero, $s2
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB43_10
.LBB43_5:                               # %symbol_IsPredicate.exit125.thread
	ld.d	$s1, $fp, 16
	bnez	$s1, .LBB43_7
	b	.LBB43_10
	.p2align	4, , 16
.LBB43_6:                               #   in Loop: Header=BB43_7 Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB43_10
.LBB43_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_HasProperSuperterm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB43_6
# %bb.8:                                #   in Loop: Header=BB43_7 Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_AntiPrenexPath)
	jirl	$ra, $ra, 0
	b	.LBB43_6
.LBB43_9:
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$s1, $a0, 8
	ld.w	$a0, $s1, 0
	pcalau12i	$a3, %got_pc_hi20(fol_NOT)
	ld.d	$a3, $a3, %got_pc_lo12(fol_NOT)
	ld.w	$a3, $a3, 0
	bne	$a0, $a3, .LBB43_11
.LBB43_10:                              # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
.LBB43_11:
	bgez	$a0, .LBB43_13
# %bb.12:                               # %symbol_IsPredicate.exit
	sub.w	$a3, $zero, $a0
	pcalau12i	$a4, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a4, $a4, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a4, $a4, 0
	and	$a3, $a4, $a3
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB43_10
.LBB43_13:                              # %symbol_IsPredicate.exit.thread
	xor	$a3, $a2, $s2
	sltui	$a3, $a3, 1
	pcalau12i	$a4, %got_pc_hi20(fol_AND)
	ld.d	$a4, $a4, %got_pc_lo12(fol_AND)
	pcalau12i	$a5, %got_pc_hi20(fol_OR)
	ld.d	$a5, $a5, %got_pc_lo12(fol_OR)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$s5, $a3, 0
	beq	$a2, $a0, .LBB43_27
# %bb.14:                               # %symbol_IsPredicate.exit.thread
	beq	$a1, $a0, .LBB43_27
# %bb.15:
	bne	$a0, $s5, .LBB43_28
.LBB43_16:
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	ld.d	$s4, $a0, 16
	move	$a0, $s1
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cnf_Flatten)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s3, $s1, 16
	beqz	$s3, .LBB43_34
# %bb.17:                               # %.lr.ph151.preheader
	pcalau12i	$a0, %got_pc_hi20(term_Equal)
	ld.d	$s5, $a0, %got_pc_lo12(term_Equal)
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$s6, $a0, %got_pc_lo12(term_Copy)
	b	.LBB43_20
	.p2align	4, , 16
.LBB43_18:                              #   in Loop: Header=BB43_20 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s8, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fol_CreateQuantifierAddFather)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 8
.LBB43_19:                              #   in Loop: Header=BB43_20 Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB43_34
.LBB43_20:                              # %.lr.ph151
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_24 Depth 2
	ld.d	$s8, $s3, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(list_NIntersect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB43_19
# %bb.21:                               #   in Loop: Header=BB43_20 Depth=1
	move	$s7, $a0
	ld.w	$s1, $s8, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(list_NMapCar)
	jirl	$ra, $ra, 0
	bne	$s2, $s1, .LBB43_18
# %bb.22:                               #   in Loop: Header=BB43_20 Depth=1
	ld.d	$a0, $s8, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a0, 16
	beqz	$a1, .LBB43_26
# %bb.23:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB43_20 Depth=1
	move	$a3, $a1
	.p2align	4, , 16
.LBB43_24:                              # %.preheader.i
                                        #   Parent Loop BB43_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB43_24
# %bb.25:                               #   in Loop: Header=BB43_20 Depth=1
	st.d	$s7, $a2, 0
	st.d	$a1, $a0, 16
	b	.LBB43_19
.LBB43_26:                              #   in Loop: Header=BB43_20 Depth=1
	st.d	$s7, $a0, 16
	b	.LBB43_19
.LBB43_27:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_AntiPrenexPath)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	beq	$a0, $s5, .LBB43_16
.LBB43_28:
	ld.w	$a1, $s4, 0
	beq	$a1, $a0, .LBB43_10
# %bb.29:
	ld.w	$a1, $s3, 0
	beq	$a1, $a0, .LBB43_10
# %bb.30:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_DistrQuantorNoVarSubPath)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 16
	bnez	$s1, .LBB43_32
	b	.LBB43_10
	.p2align	4, , 16
.LBB43_31:                              #   in Loop: Header=BB43_32 Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB43_10
.LBB43_32:                              # %.lr.ph147
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB43_31
# %bb.33:                               #   in Loop: Header=BB43_32 Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_AntiPrenexPath)
	jirl	$ra, $ra, 0
	b	.LBB43_31
.LBB43_34:                              # %._crit_edge
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB43_37
# %bb.35:                               # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB43_36:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB43_36
.LBB43_37:                              # %list_Delete.exit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $fp, 0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a5, 16
	st.d	$a0, $fp, 16
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 256
	ld.w	$a2, $a1, 32
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a4, $a3, 0
	add.d	$a2, $a4, $a2
	st.d	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 256
	st.d	$a5, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 16
	beqz	$s3, .LBB43_10
# %bb.38:                               # %.lr.ph155.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$s1, $a0, %pc_lo12(.L.str.32)
	b	.LBB43_40
	.p2align	4, , 16
.LBB43_39:                              #   in Loop: Header=BB43_40 Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB43_10
.LBB43_40:                              # %.lr.ph155
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 8
	st.d	$fp, $a0, 8
	ld.d	$a0, $s3, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB43_39
# %bb.41:                               #   in Loop: Header=BB43_40 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, 8
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_AntiPrenexPath)
	jirl	$ra, $ra, 0
	st.d	$s2, $s3, 8
	st.d	$fp, $s2, 8
	b	.LBB43_39
.Lfunc_end43:
	.size	cnf_AntiPrenexPath, .Lfunc_end43-cnf_AntiPrenexPath
                                        # -- End function
	.globl	cnf_DefConvert                  # -- Begin function cnf_DefConvert
	.p2align	5
	.type	cnf_DefConvert,@function
cnf_DefConvert:                         # @cnf_DefConvert
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
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(cnf_RemoveImplFromFormulaPath)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormulaPath)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_SimplifyQuantors)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, 8
	beq	$s2, $fp, .LBB44_17
# %bb.1:                                # %.preheader.i.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$s6, $a0, %got_pc_lo12(fol_OR)
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$s7, $a0, %got_pc_lo12(fol_ALL)
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$s8, $a0, %got_pc_lo12(fol_EXIST)
	b	.LBB44_4
	.p2align	4, , 16
.LBB44_2:                               #   in Loop: Header=BB44_4 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_Flatten)
	jirl	$ra, $ra, 0
.LBB44_3:                               # %.loopexit.i
                                        #   in Loop: Header=BB44_4 Depth=1
	beq	$s2, $fp, .LBB44_17
.LBB44_4:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_5 Depth 2
                                        #     Child Loop BB44_15 Depth 2
                                        #     Child Loop BB44_13 Depth 2
	ld.w	$a1, $s6, 0
	ld.w	$a0, $s2, 0
	bne	$a1, $a0, .LBB44_7
	.p2align	4, , 16
.LBB44_5:                               # %.lr.ph.i
                                        #   Parent Loop BB44_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 8
	ld.w	$a0, $s2, 0
	beq	$fp, $s2, .LBB44_7
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB44_5 Depth=2
	beq	$a1, $a0, .LBB44_5
.LBB44_7:                               # %._crit_edge.i
                                        #   in Loop: Header=BB44_4 Depth=1
	ld.w	$a2, $s7, 0
	beq	$a2, $a0, .LBB44_9
# %bb.8:                                # %._crit_edge.i
                                        #   in Loop: Header=BB44_4 Depth=1
	ld.w	$a2, $s8, 0
	bne	$a2, $a0, .LBB44_2
.LBB44_9:                               #   in Loop: Header=BB44_4 Depth=1
	ld.d	$a0, $s2, 16
	ld.d	$a0, $a0, 0
	ld.d	$s4, $a0, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cnf_Flatten)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	ld.d	$a0, $a0, 8
	ld.d	$s5, $a0, 16
	bnez	$s5, .LBB44_15
.LBB44_10:                              # %._crit_edge86.i
                                        #   in Loop: Header=BB44_4 Depth=1
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s7, 0
	beq	$a1, $a0, .LBB44_12
# %bb.11:                               # %._crit_edge86.i
                                        #   in Loop: Header=BB44_4 Depth=1
	ld.w	$a1, $s8, 0
	bne	$a1, $a0, .LBB44_3
.LBB44_12:                              #   in Loop: Header=BB44_4 Depth=1
	ld.d	$a0, $s4, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_PointerDeleteOneElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 16
	ld.d	$a1, $s2, 16
	ld.w	$a0, $s2, 0
	st.d	$zero, $s2, 16
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$a0, $s2, 16
	ld.w	$a1, $s6, 0
	st.w	$a1, $s2, 0
	.p2align	4, , 16
.LBB44_13:                              #   Parent Loop BB44_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	st.d	$s2, $a1, 8
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB44_13
	b	.LBB44_3
	.p2align	4, , 16
.LBB44_14:                              #   in Loop: Header=BB44_15 Depth=2
	move	$s5, $s0
	beqz	$s0, .LBB44_10
.LBB44_15:                              # %.lr.ph85.i
                                        #   Parent Loop BB44_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fol_VarOccursFreely)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s5, 0
	beqz	$a0, .LBB44_14
# %bb.16:                               #   in Loop: Header=BB44_15 Depth=2
	ld.d	$a0, $s5, 8
	ld.w	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fol_DeleteQuantifierVariable)
	jirl	$ra, $ra, 0
	b	.LBB44_14
.LBB44_17:                              # %._crit_edge90.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB44_19
# %bb.18:
	pcalau12i	$a1, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a1, %got_pc_lo12(term_Copy)
	move	$fp, $a0
	pcaddu18i	$ra, %call36(list_NMapCar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	ld.w	$s3, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB44_19:                              # %cnf_RemoveQuantFromPathAndFlatten.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(fol_ALL)
	ld.d	$a1, $a1, %got_pc_lo12(fol_ALL)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB44_23
# %bb.20:
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$s2, $a0, 8
	ld.w	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$a1, $a1, %got_pc_lo12(fol_OR)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB44_27
# %bb.21:
	ld.d	$a0, $s2, 16
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 0
	ld.d	$s2, $a1, 8
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB44_26
# %bb.22:
	ld.d	$a0, $s2, 16
	ld.d	$a0, $a0, 8
	st.d	$a0, $a1, 8
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 256
	ld.w	$a2, $a1, 32
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a4, $a3, 0
	add.d	$a2, $a4, $a2
	st.d	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 256
	st.d	$s2, $a0, 0
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	st.d	$fp, $a0, 8
	b	.LBB44_30
.LBB44_23:
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$a1, $a1, %got_pc_lo12(fol_OR)
	ld.w	$a1, $a1, 0
	move	$s2, $fp
	bne	$a0, $a1, .LBB44_27
# %bb.24:
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $fp
	bne	$a0, $a1, .LBB44_27
# %bb.25:
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 256
	ld.w	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a4, 0
	add.d	$a3, $a5, $a3
	st.d	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $fp, 0
	ld.d	$a1, $a1, 256
	st.d	$fp, $a1, 0
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 8
	st.d	$a0, $a1, 8
	move	$fp, $a0
	b	.LBB44_30
.LBB44_26:
	beqz	$s2, .LBB44_30
.LBB44_27:                              # %.thread77
	ld.w	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(fol_EQUIV)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUIV)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB44_29
# %bb.28:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	b	.LBB44_30
.LBB44_29:
	ld.d	$a0, $s2, 16
	ld.d	$s1, $s1, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $s5, 0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$s4, $s0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormula)
	jirl	$ra, $ra, 0
	st.d	$s3, $s5, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fol_IMPLIES)
	ld.d	$a0, $a0, %got_pc_lo12(fol_IMPLIES)
	ld.w	$a0, $a0, 0
	st.w	$a0, $s2, 0
	ld.w	$s0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s2, 16
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s3, $a0, 0
	st.d	$a0, $s2, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormula)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
.LBB44_30:                              # %.thread
	move	$a0, $fp
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
.Lfunc_end44:
	.size	cnf_DefConvert, .Lfunc_end44-cnf_DefConvert
                                        # -- End function
	.globl	cnf_HandleDefinition            # -- Begin function cnf_HandleDefinition
	.p2align	5
	.type	cnf_HandleDefinition,@function
cnf_HandleDefinition:                   # @cnf_HandleDefinition
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $a1
	move	$s3, $a0
	ld.d	$s0, $a0, 112
	ld.d	$a0, $a0, 104
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s2, $a1, 0
	move	$s1, $a4
	move	$s5, $a3
	move	$s4, $a2
	st.d	$zero, $sp, 96
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 96
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_ContainsDefinitionIntern)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB45_48
# %bb.1:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$s4, .LBB45_7
# %bb.2:
	beqz	$s5, .LBB45_6
# %bb.3:                                # %.preheader.i.preheader
	move	$a1, $s4
	.p2align	4, , 16
.LBB45_4:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB45_4
# %bb.5:
	st.d	$s5, $a0, 0
.LBB45_6:                               # %list_Nconc.exit.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB45_8
.LBB45_7:                               # %list_Nconc.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s4, $s5
	beqz	$s5, .LBB45_13
.LBB45_8:
	beqz	$s1, .LBB45_12
# %bb.9:                                # %.preheader.i76.preheader
	move	$a1, $s4
	.p2align	4, , 16
.LBB45_10:                              # %.preheader.i76
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB45_10
# %bb.11:
	st.d	$s1, $a0, 0
.LBB45_12:                              # %list_Nconc.exit81
	move	$s1, $s4
.LBB45_13:                              # %list_Nconc.exit81
	ld.w	$a0, $s0, 148
	beqz	$a0, .LBB45_15
# %bb.14:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(symbol_Print)
	jirl	$ra, $ra, 0
.LBB45_15:
	ld.d	$a1, $sp, 96
	addi.d	$a2, $sp, 88
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_DefConvert)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 88
	move	$s2, $a0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s3, 0
	move	$s5, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s3, 0
	bnez	$s4, .LBB45_18
# %bb.16:
	ld.w	$a0, $s0, 148
	beqz	$a0, .LBB45_18
# %bb.17:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
.LBB45_18:
	beqz	$s1, .LBB45_45
# %bb.19:                               # %.lr.ph
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$s3, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	beqz	$s4, .LBB45_32
# %bb.20:
	ld.d	$s8, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s7, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$fp, $s1
	b	.LBB45_23
	.p2align	4, , 16
.LBB45_21:                              #   in Loop: Header=BB45_23 Depth=1
	ld.d	$fp, $fp, 0
.LBB45_22:                              #   in Loop: Header=BB45_23 Depth=1
	beqz	$fp, .LBB45_43
.LBB45_23:                              # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_27 Depth 2
                                        #     Child Loop BB45_29 Depth 2
	ld.d	$s6, $fp, 8
	beqz	$s6, .LBB45_21
# %bb.24:                               #   in Loop: Header=BB45_23 Depth=1
	ld.d	$s5, $s6, 0
	beq	$s2, $s5, .LBB45_21
# %bb.25:                               #   in Loop: Header=BB45_23 Depth=1
	ld.d	$a0, $sp, 96
	st.d	$zero, $sp, 48
	st.d	$zero, $sp, 72
	ld.w	$a1, $a0, 0
	st.w	$zero, $sp, 84
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 56
	addi.d	$a5, $sp, 72
	addi.d	$a6, $sp, 48
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cnf_ContainsPredicateIntern)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB45_22
# %bb.26:                               #   in Loop: Header=BB45_23 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96
	ld.d	$a4, $sp, 64
	ld.d	$a1, $sp, 56
	ld.d	$a3, $a2, 16
	ld.d	$a4, $a4, 16
	ld.d	$a6, $sp, 48
	move	$a2, $a0
	addi.d	$a0, $sp, 84
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s5
	move	$a7, $s0
	pcaddu18i	$ra, %call36(cnf_DefTargetConvert)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72
	move	$a2, $a0
	beqz	$a1, .LBB45_28
	.p2align	4, , 16
.LBB45_27:                              # %.lr.ph.i
                                        #   Parent Loop BB45_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 128
	ld.w	$a3, $a0, 32
	ld.d	$a4, $s7, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s8, 128
	st.d	$a1, $a0, 0
	move	$a1, $a5
	bnez	$a5, .LBB45_27
.LBB45_28:                              # %list_Delete.exit
                                        #   in Loop: Header=BB45_23 Depth=1
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB45_30
	.p2align	4, , 16
.LBB45_29:                              # %.lr.ph.i84
                                        #   Parent Loop BB45_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s8, 128
	ld.w	$a3, $a1, 32
	ld.d	$a4, $s7, 0
	ld.d	$a5, $a0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s7, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s8, 128
	st.d	$a0, $a1, 0
	move	$a0, $a5
	bnez	$a5, .LBB45_29
.LBB45_30:                              # %list_Delete.exit88
                                        #   in Loop: Header=BB45_23 Depth=1
	ld.w	$a0, $sp, 84
	st.d	$zero, $sp, 48
	st.d	$zero, $sp, 72
	st.d	$a2, $s6, 0
	beqz	$a0, .LBB45_22
# %bb.31:                               #   in Loop: Header=BB45_23 Depth=1
	ld.d	$a0, $sp, 96
	ld.d	$a3, $sp, 64
	move	$a1, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cnf_ApplyDefinitionOnce)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	b	.LBB45_22
.LBB45_32:                              # %.lr.ph.split.us.preheader
	ld.d	$fp, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s5, $s1
	b	.LBB45_34
	.p2align	4, , 16
.LBB45_33:                              #   in Loop: Header=BB45_34 Depth=1
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB45_43
.LBB45_34:                              # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_38 Depth 2
                                        #     Child Loop BB45_40 Depth 2
	ld.d	$s6, $s5, 8
	beqz	$s6, .LBB45_33
# %bb.35:                               #   in Loop: Header=BB45_34 Depth=1
	ld.d	$a0, $s6, 0
	beq	$s2, $a0, .LBB45_33
# %bb.36:                               #   in Loop: Header=BB45_34 Depth=1
	ld.d	$a1, $sp, 96
	st.d	$zero, $sp, 48
	st.d	$zero, $sp, 72
	ld.w	$a1, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 56
	addi.d	$a5, $sp, 72
	addi.d	$a6, $sp, 48
	pcaddu18i	$ra, %call36(cnf_ContainsPredicateIntern)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB45_42
# %bb.37:                               #   in Loop: Header=BB45_34 Depth=1
	ld.d	$a0, $sp, 96
	ld.d	$a2, $s6, 0
	ld.d	$a3, $sp, 64
	move	$a1, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cnf_ApplyDefinitionOnce)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB45_39
	.p2align	4, , 16
.LBB45_38:                              # %.lr.ph.i90.us
                                        #   Parent Loop BB45_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s4, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $fp, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB45_38
.LBB45_39:                              # %list_Delete.exit94.us
                                        #   in Loop: Header=BB45_34 Depth=1
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB45_41
	.p2align	4, , 16
.LBB45_40:                              # %.lr.ph.i96.us
                                        #   Parent Loop BB45_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s4, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $fp, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB45_40
.LBB45_41:                              # %list_Delete.exit100.us
                                        #   in Loop: Header=BB45_34 Depth=1
	bnez	$s5, .LBB45_34
	b	.LBB45_43
.LBB45_42:                              #   in Loop: Header=BB45_34 Depth=1
	ld.d	$s5, $s5, 0
	ld.d	$a0, $sp, 72
	bnez	$a0, .LBB45_38
	b	.LBB45_39
.LBB45_43:                              # %.lr.ph.i102.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB45_44:                              # %.lr.ph.i102
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $a0, 128
	st.d	$s1, $a2, 0
	move	$s1, $a5
	bnez	$a5, .LBB45_44
.LBB45_45:                              # %list_Delete.exit106
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB45_47
# %bb.46:
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB45_47:
	st.d	$s2, $s6, 0
.LBB45_48:
	move	$a0, $s6
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end45:
	.size	cnf_HandleDefinition, .Lfunc_end45-cnf_HandleDefinition
                                        # -- End function
	.globl	cnf_ApplyDefinitionToClause     # -- Begin function cnf_ApplyDefinitionToClause
	.p2align	5
	.type	cnf_ApplyDefinitionToClause,@function
cnf_ApplyDefinitionToClause:            # @cnf_ApplyDefinitionToClause
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$s3, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a5, $s3, 68
	ld.w	$a6, $s3, 72
	add.w	$a0, $a5, $a0
	sub.w	$a5, $zero, $a6
	move	$s2, $a4
	move	$s1, $a3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	move	$a1, $zero
	beq	$a0, $a5, .LBB46_3
# %bb.1:                                # %.lr.ph
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB46_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 56
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s4, $a0, 8
	st.d	$s0, $a0, 0
	ld.w	$a0, $s3, 64
	ld.w	$a2, $s3, 68
	ld.w	$a3, $s3, 72
	addi.w	$fp, $fp, 1
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a3
	move	$s0, $a1
	bltu	$fp, $a0, .LBB46_2
.LBB46_3:                               # %._crit_edge
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$s7, $a0, 16
	beqz	$s7, .LBB46_27
# %bb.4:                                # %.lr.ph78.preheader
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s0, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$fp, $a0, %got_pc_lo12(cont_STACKPOINTER)
	pcalau12i	$a0, %got_pc_hi20(cont_STACK)
	ld.d	$s6, $a0, %got_pc_lo12(cont_STACK)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s3, $a0, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a0, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$s1, $a0, %got_pc_lo12(cont_CURRENTBINDING)
	move	$s5, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	ori	$s8, $zero, 1
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	b	.LBB46_6
	.p2align	4, , 16
.LBB46_5:                               # %cont_BackTrack.exit
                                        #   in Loop: Header=BB46_6 Depth=1
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB46_17
.LBB46_6:                               # %.lr.ph78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_14 Depth 2
	ld.d	$a2, $s7, 8
	ld.w	$s4, $a2, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$s2, $a0, 0
	bne	$s4, $s2, .LBB46_8
# %bb.7:                                #   in Loop: Header=BB46_6 Depth=1
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
.LBB46_8:                               #   in Loop: Header=BB46_6 Depth=1
	ld.w	$a1, $fp, 0
	ld.w	$a3, $s0, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$a3, $s6, $a1
	st.w	$zero, $s0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_Match)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB46_12
# %bb.9:                                #   in Loop: Header=BB46_6 Depth=1
	pcaddu18i	$ra, %call36(subst_ExtractMatcher)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Free)
	jirl	$ra, $ra, 0
	bne	$s4, $s2, .LBB46_11
# %bb.10:                               #   in Loop: Header=BB46_6 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$s6, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s5, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB46_11:                              #   in Loop: Header=BB46_6 Depth=1
	ld.d	$a0, $s7, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	st.d	$s5, $s7, 8
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
.LBB46_12:                              #   in Loop: Header=BB46_6 Depth=1
	ld.w	$a0, $s0, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	blez	$a0, .LBB46_15
# %bb.13:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB46_6 Depth=1
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB46_14:                              # %.lr.ph.i
                                        #   Parent Loop BB46_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 0
	st.d	$a1, $s1, 0
	ld.d	$a2, $a1, 24
	st.d	$a2, $s3, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a1, $s1, 0
	st.d	$zero, $a1, 24
	addi.d	$a1, $a0, -2
	addi.w	$a0, $a0, -1
	st.w	$a1, $s0, 0
	bltu	$s8, $a0, .LBB46_14
.LBB46_15:                              # %._crit_edge.i
                                        #   in Loop: Header=BB46_6 Depth=1
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB46_5
# %bb.16:                               #   in Loop: Header=BB46_6 Depth=1
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s6, $a1
	st.w	$a0, $fp, 0
	st.w	$a1, $s0, 0
	b	.LBB46_5
.LBB46_17:                              # %._crit_edge79
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$s5, .LBB46_27
# %bb.18:
	move	$s1, $a0
	ld.w	$a0, $fp, 148
	beqz	$a0, .LBB46_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
.LBB46_20:
	st.d	$zero, $sp, 112
	addi.d	$a2, $sp, 112
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_Cnf)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cnf_MakeClauseList)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112
	move	$s0, $a0
	beqz	$a1, .LBB46_23
# %bb.21:                               # %.lr.ph.i63.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB46_22:                              # %.lr.ph.i63
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a1, 0
	ld.d	$a3, $a0, 128
	st.d	$a1, $a3, 0
	move	$a1, $a6
	bnez	$a6, .LBB46_22
.LBB46_23:                              # %list_Delete.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 148
	beqz	$a0, .LBB46_29
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB46_28
# %bb.25:                               # %.lr.ph84.preheader
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	move	$s1, $s0
	.p2align	4, , 16
.LBB46_26:                              # %.lr.ph84
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB46_26
	b	.LBB46_29
.LBB46_27:                              # %._crit_edge79.thread
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB46_28:                              # %.loopexit
	move	$s0, $zero
.LBB46_29:                              # %.loopexit
	move	$a0, $s0
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end46:
	.size	cnf_ApplyDefinitionToClause, .Lfunc_end46-cnf_ApplyDefinitionToClause
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_IsDefinition
	.type	cnf_IsDefinition,@function
cnf_IsDefinition:                       # @cnf_IsDefinition
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 0
	bgez	$a1, .LBB47_2
# %bb.1:                                # %symbol_IsPredicate.exit
	sub.w	$a3, $zero, $a1
	pcalau12i	$a4, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a4, $a4, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a4, $a4, 0
	and	$a3, $a4, $a3
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB47_3
.LBB47_2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	st.d	$a1, $a0, 8
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	st.d	$a2, $a0, 8
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a0, 8
	ld.w	$a1, $a1, 0
	bgez	$a1, .LBB47_15
.LBB47_3:                               # %symbol_IsPredicate.exit39
	sub.w	$a1, $zero, $a1
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB47_15
# %bb.4:
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$s0, $a1, %got_pc_lo12(term_Equal)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 8
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_ListOfVariables)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB47_10
# %bb.5:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(term_Equal)
	ld.d	$s2, $a0, %got_pc_lo12(term_Equal)
	move	$s3, $s0
	move	$a0, $s1
	.p2align	4, , 16
.LBB47_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(list_DeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB47_6
# %bb.7:                                # %._crit_edge.thread
	bnez	$a0, .LBB47_11
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB47_9:                               # %.lr.ph.i48
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s0, 0
	ld.d	$a2, $a0, 128
	st.d	$s0, $a2, 0
	move	$s0, $a5
	bnez	$a5, .LBB47_9
	b	.LBB47_17
.LBB47_10:                              # %._crit_edge
	move	$a0, $s1
	beqz	$s1, .LBB47_17
.LBB47_11:                              # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB47_12:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB47_12
# %bb.13:                               # %list_Delete.exit
	beqz	$s0, .LBB47_15
	.p2align	4, , 16
.LBB47_14:                              # %.lr.ph.i42
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 128
	ld.w	$a3, $a0, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a1, 128
	st.d	$s0, $a0, 0
	move	$s0, $a5
	bnez	$a5, .LBB47_14
.LBB47_15:
	move	$a0, $zero
.LBB47_16:                              # %list_Delete.exit46
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB47_17:                              # %list_Delete.exit52
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	b	.LBB47_16
.Lfunc_end47:
	.size	cnf_IsDefinition, .Lfunc_end47-cnf_IsDefinition
                                        # -- End function
	.p2align	5                               # -- Begin function fol_IsTrue
	.type	fol_IsTrue,@function
fol_IsTrue:                             # @fol_IsTrue
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(fol_TRUE)
	ld.d	$a1, $a1, %got_pc_lo12(fol_TRUE)
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	ret
.Lfunc_end48:
	.size	fol_IsTrue, .Lfunc_end48-fol_IsTrue
                                        # -- End function
	.p2align	5                               # -- Begin function fol_IsFalse
	.type	fol_IsFalse,@function
fol_IsFalse:                            # @fol_IsFalse
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(fol_FALSE)
	ld.d	$a1, $a1, %got_pc_lo12(fol_FALSE)
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	ret
.Lfunc_end49:
	.size	fol_IsFalse, .Lfunc_end49-fol_IsFalse
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_MakeOneOrTerm
	.type	cnf_MakeOneOrTerm,@function
cnf_MakeOneOrTerm:                      # @cnf_MakeOneOrTerm
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(cnf_MakeOneOr)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 16
	beqz	$s0, .LBB50_22
# %bb.1:                                # %.lr.ph.i.i
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a0, $a0, 0
	move	$a1, $s0
	.p2align	4, , 16
.LBB50_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 8
	ld.w	$a2, $a2, 0
	beq	$a2, $a0, .LBB50_5
# %bb.3:                                #   in Loop: Header=BB50_2 Depth=1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB50_2
	b	.LBB50_22
	.p2align	4, , 16
.LBB50_4:                               # %cnf_TopIsAnd.exit.i
                                        #   in Loop: Header=BB50_5 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB50_22
.LBB50_5:                               # %cnf_TopIsAnd.exit.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.w	$a1, $a1, 0
	bne	$a1, $a0, .LBB50_4
# %bb.6:                                # %.preheader58.i
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$s2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	move	$s1, $zero
	ori	$s4, $zero, 2
	b	.LBB50_9
	.p2align	4, , 16
.LBB50_7:                               #   in Loop: Header=BB50_9 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
.LBB50_8:                               # %fol_IsNegativeLiteral.exit.thread.i
                                        #   in Loop: Header=BB50_9 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB50_14
.LBB50_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s0, 8
	ld.w	$a0, $s5, 0
	bgez	$a0, .LBB50_11
# %bb.10:                               # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB50_9 Depth=1
	sub.w	$a1, $zero, $a0
	and	$a1, $s2, $a1
	beq	$a1, $s4, .LBB50_7
.LBB50_11:                              # %symbol_IsPredicate.exit.thread.i
                                        #   in Loop: Header=BB50_9 Depth=1
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB50_8
# %bb.12:                               #   in Loop: Header=BB50_9 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	bgez	$a0, .LBB50_8
# %bb.13:                               # %fol_IsNegativeLiteral.exit.i
                                        #   in Loop: Header=BB50_9 Depth=1
	sub.w	$a0, $zero, $a0
	and	$a0, $s2, $a0
	beq	$a0, $s4, .LBB50_7
	b	.LBB50_8
.LBB50_14:                              # %.preheader.i
	beqz	$s1, .LBB50_22
# %bb.15:                               # %.lr.ph.preheader.i
	ld.d	$a0, $fp, 16
	move	$s0, $s1
	.p2align	4, , 16
.LBB50_16:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB50_16
# %bb.17:                               # %._crit_edge.i
	beqz	$a0, .LBB50_21
# %bb.18:                               # %.preheader.i.i.preheader
	move	$a2, $s1
	.p2align	4, , 16
.LBB50_19:                              # %.preheader.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB50_19
# %bb.20:
	st.d	$a0, $a1, 0
.LBB50_21:                              # %list_Nconc.exit.i
	st.d	$s1, $fp, 16
.LBB50_22:                              # %cnf_MakeOneOrPredicate.exit
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end50:
	.size	cnf_MakeOneOrTerm, .Lfunc_end50-cnf_MakeOneOrTerm
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_MakeOneAnd
	.type	cnf_MakeOneAnd,@function
cnf_MakeOneAnd:                         # @cnf_MakeOneAnd
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(fol_AND)
	ld.d	$s1, $a1, %got_pc_lo12(fol_AND)
	ld.w	$a1, $s1, 0
	bne	$a0, $a1, .LBB51_12
# %bb.1:
	ld.d	$s2, $fp, 16
	beqz	$s2, .LBB51_16
# %bb.2:                                # %.lr.ph44.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s3, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a0, %got_pc_lo12(memory_FREEDBYTES)
	b	.LBB51_6
.LBB51_3:                               #   in Loop: Header=BB51_6 Depth=1
	move	$s5, $a0
.LBB51_4:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB51_6 Depth=1
	st.d	$s5, $fp, 16
	ld.d	$a0, $s3, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s3, 256
	st.d	$s0, $a0, 0
.LBB51_5:                               #   in Loop: Header=BB51_6 Depth=1
	beqz	$s2, .LBB51_16
.LBB51_6:                               # %.lr.ph44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_10 Depth 2
	ld.d	$s0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cnf_MakeOneAnd)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s1, 0
	ld.d	$s2, $s2, 0
	bne	$a0, $a1, .LBB51_5
# %bb.7:                                #   in Loop: Header=BB51_6 Depth=1
	ld.d	$s5, $s0, 16
	ld.d	$a0, $fp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB51_3
# %bb.8:                                #   in Loop: Header=BB51_6 Depth=1
	beqz	$a0, .LBB51_4
# %bb.9:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB51_6 Depth=1
	move	$a2, $s5
	.p2align	4, , 16
.LBB51_10:                              # %.preheader.i
                                        #   Parent Loop BB51_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB51_10
# %bb.11:                               #   in Loop: Header=BB51_6 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB51_4
.LBB51_12:
	bgez	$a0, .LBB51_14
# %bb.13:                               # %symbol_IsPredicate.exit
	sub.w	$a0, $zero, $a0
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB51_16
.LBB51_14:                              # %symbol_IsPredicate.exit.thread
	ld.d	$s0, $fp, 16
	beqz	$s0, .LBB51_16
	.p2align	4, , 16
.LBB51_15:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(cnf_MakeOneAnd)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB51_15
.LBB51_16:                              # %.loopexit
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end51:
	.size	cnf_MakeOneAnd, .Lfunc_end51-cnf_MakeOneAnd
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_MakeOneOr
	.type	cnf_MakeOneOr,@function
cnf_MakeOneOr:                          # @cnf_MakeOneOr
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$s1, $a1, %got_pc_lo12(fol_OR)
	ld.w	$a1, $s1, 0
	bne	$a0, $a1, .LBB52_12
# %bb.1:
	ld.d	$s2, $fp, 16
	beqz	$s2, .LBB52_16
# %bb.2:                                # %.lr.ph44.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s3, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a0, %got_pc_lo12(memory_FREEDBYTES)
	b	.LBB52_6
.LBB52_3:                               #   in Loop: Header=BB52_6 Depth=1
	move	$s5, $a0
.LBB52_4:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB52_6 Depth=1
	st.d	$s5, $fp, 16
	ld.d	$a0, $s3, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s3, 256
	st.d	$s0, $a0, 0
.LBB52_5:                               #   in Loop: Header=BB52_6 Depth=1
	beqz	$s2, .LBB52_16
.LBB52_6:                               # %.lr.ph44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_10 Depth 2
	ld.d	$s0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cnf_MakeOneOr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s1, 0
	ld.d	$s2, $s2, 0
	bne	$a0, $a1, .LBB52_5
# %bb.7:                                #   in Loop: Header=BB52_6 Depth=1
	ld.d	$s5, $s0, 16
	ld.d	$a0, $fp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB52_3
# %bb.8:                                #   in Loop: Header=BB52_6 Depth=1
	beqz	$a0, .LBB52_4
# %bb.9:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB52_6 Depth=1
	move	$a2, $s5
	.p2align	4, , 16
.LBB52_10:                              # %.preheader.i
                                        #   Parent Loop BB52_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB52_10
# %bb.11:                               #   in Loop: Header=BB52_6 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB52_4
.LBB52_12:
	bgez	$a0, .LBB52_14
# %bb.13:                               # %symbol_IsPredicate.exit
	sub.w	$a0, $zero, $a0
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB52_16
.LBB52_14:                              # %symbol_IsPredicate.exit.thread
	ld.d	$s0, $fp, 16
	beqz	$s0, .LBB52_16
	.p2align	4, , 16
.LBB52_15:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(cnf_MakeOneOr)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB52_15
.LBB52_16:                              # %.loopexit
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end52:
	.size	cnf_MakeOneOr, .Lfunc_end52-cnf_MakeOneOr
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_DistrQuantorNoVarSub
	.type	cnf_DistrQuantorNoVarSub,@function
cnf_DistrQuantorNoVarSub:               # @cnf_DistrQuantorNoVarSub
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
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$s0, $fp, 0
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 0
	ld.d	$s1, $a1, 8
	ld.w	$a1, $s1, 0
	move	$s3, $a0
	move	$a0, $s1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cnf_Flatten)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB53_17
# %bb.1:                                # %.lr.ph102
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s8, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s2, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$fp, $s3
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB53_6
	.p2align	4, , 16
.LBB53_2:                               #   in Loop: Header=BB53_6 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	move	$a1, $s7
.LBB53_3:                               # %list_Delete.exit
                                        #   in Loop: Header=BB53_6 Depth=1
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	move	$s7, $a0
.LBB53_4:                               # %list_Delete.exit
                                        #   in Loop: Header=BB53_6 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$a0, $s1, 16
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 16
	move	$a1, $s4
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
.LBB53_5:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB53_6 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB53_17
.LBB53_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_9 Depth 2
                                        #     Child Loop BB53_15 Depth 2
	ld.d	$s6, $s1, 16
	beqz	$s6, .LBB53_5
# %bb.7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB53_6 Depth=1
	ld.d	$s4, $fp, 8
	move	$s5, $zero
	b	.LBB53_9
	.p2align	4, , 16
.LBB53_8:                               #   in Loop: Header=BB53_9 Depth=2
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB53_11
.LBB53_9:                               # %.lr.ph
                                        #   Parent Loop BB53_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s6, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fol_VarOccursFreely)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_8
# %bb.10:                               #   in Loop: Header=BB53_9 Depth=2
	ld.d	$s7, $s6, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
	b	.LBB53_8
	.p2align	4, , 16
.LBB53_11:                              # %._crit_edge
                                        #   in Loop: Header=BB53_6 Depth=1
	beqz	$s5, .LBB53_5
# %bb.12:                               #   in Loop: Header=BB53_6 Depth=1
	ld.d	$a0, $s1, 16
	move	$a1, $s5
	pcaddu18i	$ra, %call36(list_NPointerDifference)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB53_2
# %bb.13:                               #   in Loop: Header=BB53_6 Depth=1
	ld.d	$s7, $s6, 8
	ld.w	$a0, $s7, 0
	bne	$s0, $a0, .LBB53_16
# %bb.14:                               #   in Loop: Header=BB53_6 Depth=1
	ld.d	$a0, $s7, 16
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $s0, 16
	.p2align	4, , 16
.LBB53_15:                              # %.lr.ph.i
                                        #   Parent Loop BB53_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s2, 0
	ld.d	$a3, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s8, 128
	st.d	$s6, $a0, 0
	move	$s6, $a3
	bnez	$a3, .LBB53_15
	b	.LBB53_4
.LBB53_16:                              #   in Loop: Header=BB53_6 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	move	$a2, $s6
	b	.LBB53_3
.LBB53_17:                              # %._crit_edge103
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a7, 16
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a2, 16
	bnez	$a0, .LBB53_21
# %bb.18:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a3, $a0, 256
	ld.w	$a4, $a3, 32
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a1, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $a0, 256
	st.d	$a2, $a3, 0
	ld.d	$a2, $a7, 16
	beqz	$a2, .LBB53_20
	.p2align	4, , 16
.LBB53_19:                              # %.lr.ph.i79
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a1, 0
	ld.d	$a6, $a2, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a1, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $a0, 128
	st.d	$a2, $a3, 0
	move	$a2, $a6
	bnez	$a6, .LBB53_19
.LBB53_20:                              # %list_Delete.exit83
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a7, 0
	ld.d	$a2, $s1, 16
	st.d	$a2, $a7, 16
	ld.d	$a2, $a0, 256
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 256
	st.d	$s1, $a0, 0
.LBB53_21:
	beqz	$s3, .LBB53_24
# %bb.22:                               # %.lr.ph.i85.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB53_23:                              # %.lr.ph.i85
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s3, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s3, 0
	ld.d	$a2, $a0, 128
	st.d	$s3, $a2, 0
	move	$s3, $a5
	bnez	$a5, .LBB53_23
.LBB53_24:                              # %list_Delete.exit89
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
	ret
.Lfunc_end53:
	.size	cnf_DistrQuantorNoVarSub, .Lfunc_end53-cnf_DistrQuantorNoVarSub
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_OptimizedSkolemFormula
	.type	cnf_OptimizedSkolemFormula,@function
cnf_OptimizedSkolemFormula:             # @cnf_OptimizedSkolemFormula
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	move	$fp, $a4
	ld.w	$s1, $sp, 360
	ld.d	$a4, $sp, 352
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	ld.w	$a4, $fp, 0
	move	$s2, $a7
	move	$s4, $a6
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	move	$s8, $a2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	move	$s7, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$s0, $a0, %got_pc_lo12(fol_ALL)
	ld.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(fol_EXIST)
	ld.d	$a2, $a1, %got_pc_lo12(fol_EXIST)
	beq	$a0, $a4, .LBB54_2
# %bb.1:
	ld.w	$a1, $a2, 0
	bne	$a1, $a4, .LBB54_237
.LBB54_2:                               # %.lr.ph373.lr.ph
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	xor	$a0, $a0, $a4
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$s3, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s6, $a1, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a1, %pc_hi20(cnf_VARIABLEDEPTHARRAY)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fol_AND)
	ld.d	$a1, $a1, %got_pc_lo12(fol_AND)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a1, -361578
	ori	$a1, $a1, 283
	lu32i.d	$a1, -289263
	lu52i.d	$a1, $a1, 423
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB54_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_18 Depth 2
                                        #       Child Loop BB54_22 Depth 3
                                        #       Child Loop BB54_28 Depth 3
                                        #         Child Loop BB54_30 Depth 4
                                        #         Child Loop BB54_34 Depth 4
                                        #       Child Loop BB54_42 Depth 3
                                        #       Child Loop BB54_50 Depth 3
                                        #       Child Loop BB54_52 Depth 3
                                        #     Child Loop BB54_190 Depth 2
                                        #     Child Loop BB54_197 Depth 2
                                        #       Child Loop BB54_200 Depth 3
                                        #         Child Loop BB54_203 Depth 4
                                        #       Child Loop BB54_208 Depth 3
                                        #         Child Loop BB54_211 Depth 4
                                        #     Child Loop BB54_215 Depth 2
                                        #       Child Loop BB54_220 Depth 3
                                        #       Child Loop BB54_222 Depth 3
                                        #       Child Loop BB54_224 Depth 3
                                        #       Child Loop BB54_227 Depth 3
                                        #     Child Loop BB54_232 Depth 2
                                        #     Child Loop BB54_60 Depth 2
                                        #     Child Loop BB54_89 Depth 2
                                        #     Child Loop BB54_94 Depth 2
                                        #       Child Loop BB54_99 Depth 3
                                        #         Child Loop BB54_100 Depth 4
                                        #       Child Loop BB54_105 Depth 3
                                        #         Child Loop BB54_109 Depth 4
                                        #         Child Loop BB54_113 Depth 4
                                        #     Child Loop BB54_125 Depth 2
                                        #       Child Loop BB54_126 Depth 3
                                        #     Child Loop BB54_130 Depth 2
                                        #     Child Loop BB54_132 Depth 2
                                        #     Child Loop BB54_135 Depth 2
                                        #     Child Loop BB54_139 Depth 2
                                        #       Child Loop BB54_142 Depth 3
                                        #       Child Loop BB54_148 Depth 3
                                        #       Child Loop BB54_152 Depth 3
                                        #       Child Loop BB54_158 Depth 3
                                        #         Child Loop BB54_160 Depth 4
                                        #           Child Loop BB54_162 Depth 5
                                        #           Child Loop BB54_166 Depth 5
                                        #       Child Loop BB54_168 Depth 3
                                        #     Child Loop BB54_170 Depth 2
                                        #     Child Loop BB54_172 Depth 2
                                        #     Child Loop BB54_174 Depth 2
                                        #     Child Loop BB54_64 Depth 2
                                        #     Child Loop BB54_69 Depth 2
                                        #     Child Loop BB54_73 Depth 2
                                        #       Child Loop BB54_75 Depth 3
                                        #         Child Loop BB54_77 Depth 4
                                        #         Child Loop BB54_81 Depth 4
                                        #     Child Loop BB54_83 Depth 2
                                        #     Child Loop BB54_85 Depth 2
                                        #     Child Loop BB54_178 Depth 2
                                        #     Child Loop BB54_7 Depth 2
                                        #     Child Loop BB54_11 Depth 2
	ld.d	$s4, $s7, 112
	andi	$a0, $a0, 1
	beqz	$a0, .LBB54_14
# %bb.4:                                #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a1, $s4, 216
	ld.d	$a0, $fp, 16
	beqz	$a1, .LBB54_10
# %bb.5:                                #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB54_9
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(cnf_VARIABLEDEPTHARRAY)
	.p2align	4, , 16
.LBB54_7:                               #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 8
	ld.w	$a2, $a2, 0
	slli.d	$a2, $a2, 2
	stx.w	$s1, $a0, $a2
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB54_7
# %bb.8:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $fp, 16
.LBB54_9:                               # %._crit_edge
                                        #   in Loop: Header=BB54_3 Depth=1
	addi.w	$s1, $s1, 1
.LBB54_10:                              #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 256
	ld.d	$a1, $fp, 16
	ld.w	$a2, $a0, 32
	ld.d	$a3, $s6, 0
	ld.d	$a1, $a1, 8
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s3, 256
	st.d	$a1, $a0, 0
	ld.d	$a2, $fp, 16
	ld.d	$a3, $s3, 128
	ld.d	$a1, $a2, 0
	ld.w	$a4, $a3, 32
	ld.d	$a5, $s6, 0
	ld.d	$a0, $a1, 8
	add.d	$a4, $a5, $a4
	st.d	$a4, $s6, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s3, 128
	st.d	$a2, $a3, 0
	.p2align	4, , 16
.LBB54_11:                              # %.lr.ph.ithread-pre-split.i
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s6, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s3, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB54_11
# %bb.12:                               # %cnf_PopAllQuantifier.exit
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a1, $a0, 0
	st.w	$a1, $fp, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	ld.d	$a1, $s3, 256
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 256
	st.d	$a0, $a1, 0
	ld.w	$a4, $fp, 0
	ld.w	$a1, $s0, 0
	xor	$a0, $a1, $a4
	sltui	$a0, $a0, 1
	beq	$a1, $a4, .LBB54_3
# %bb.13:                               # %cnf_PopAllQuantifier.exit
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beq	$a1, $a4, .LBB54_3
	b	.LBB54_236
.LBB54_14:                              #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $s7, 104
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 8
	ld.w	$a3, $a2, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	bne	$a3, $a4, .LBB54_62
# %bb.15:                               #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a0, $s4, 212
	beqz	$a0, .LBB54_55
# %bb.16:                               #   in Loop: Header=BB54_3 Depth=1
	ld.d	$s5, $a2, 16
	beqz	$s5, .LBB54_55
# %bb.17:                               # %.lr.ph382
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $a1, 8
	ld.d	$s1, $a0, 16
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB54_18:                              #   Parent Loop BB54_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB54_22 Depth 3
                                        #       Child Loop BB54_28 Depth 3
                                        #         Child Loop BB54_30 Depth 4
                                        #         Child Loop BB54_34 Depth 4
                                        #       Child Loop BB54_42 Depth 3
                                        #       Child Loop BB54_50 Depth 3
                                        #       Child Loop BB54_52 Depth 3
	bnez	$s2, .LBB54_186
# %bb.19:                               #   in Loop: Header=BB54_18 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bnez	$a0, .LBB54_184
# %bb.20:                               #   in Loop: Header=BB54_18 Depth=2
	ld.d	$a0, $s5, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$s0, $a1, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 232                   # 8-byte Folded Spill
	beqz	$a0, .LBB54_24
# %bb.21:                               #   in Loop: Header=BB54_18 Depth=2
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	.p2align	4, , 16
.LBB54_22:                              # %.lr.ph.i.i
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	bnez	$a3, .LBB54_22
# %bb.23:                               # %list_Delete.exit.i
                                        #   in Loop: Header=BB54_18 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$s1, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB54_24:                              # %cnf_QuantifyAndNegate.exit
                                        #   in Loop: Header=BB54_18 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$s0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s7, 112
	ld.d	$s0, $s7, 104
	move	$s1, $a0
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cnf_Cnf)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cnf_MakeClauseList)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB54_37
# %bb.25:                               # %.lr.ph.i
                                        #   in Loop: Header=BB54_18 Depth=2
	move	$s2, $s0
	b	.LBB54_28
	.p2align	4, , 16
.LBB54_26:                              #   in Loop: Header=BB54_28 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s8, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s7, $a0, 8
	st.d	$s1, $a0, 0
	ld.d	$s1, $s5, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s8, $a0, 8
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	st.d	$s1, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
.LBB54_27:                              # %hsh_Put.exit.i
                                        #   in Loop: Header=BB54_28 Depth=3
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB54_37
.LBB54_28:                              #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB54_30 Depth 4
                                        #         Child Loop BB54_34 Depth 4
	ld.d	$a0, $s2, 8
	ld.w	$a1, $a0, 48
	ori	$a1, $a1, 8
	st.w	$a1, $a0, 48
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB54_27
# %bb.29:                               #   in Loop: Header=BB54_28 Depth=3
	ld.d	$s7, $s2, 8
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	mulh.du	$a0, $s7, $a0
	sub.d	$a1, $s7, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 4
	ori	$a1, $zero, 29
	mul.d	$a0, $a0, $a1
	sub.d	$a0, $s7, $a0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s5, $a0, $a1, 3
	move	$a0, $s5
	.p2align	4, , 16
.LBB54_30:                              #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_18 Depth=2
                                        #       Parent Loop BB54_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB54_26
# %bb.31:                               #   in Loop: Header=BB54_30 Depth=4
	ld.d	$s1, $a0, 8
	ld.d	$a1, $s1, 8
	bne	$a1, $s7, .LBB54_30
# %bb.32:                               #   in Loop: Header=BB54_28 Depth=3
	ld.d	$s5, $s1, 0
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	beqz	$s5, .LBB54_36
# %bb.33:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB54_28 Depth=3
	move	$a0, $s5
	.p2align	4, , 16
.LBB54_34:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_18 Depth=2
                                        #       Parent Loop BB54_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $a0, 8
	beq	$s8, $a1, .LBB54_27
# %bb.35:                               #   in Loop: Header=BB54_34 Depth=4
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB54_34
.LBB54_36:                              # %.loopexit.i.i
                                        #   in Loop: Header=BB54_28 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s8, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$a0, $s1, 0
	b	.LBB54_27
	.p2align	4, , 16
.LBB54_37:                              # %._crit_edge.i
                                        #   in Loop: Header=BB54_18 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_SatUnit)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	beqz	$a0, .LBB54_47
# %bb.38:                               #   in Loop: Header=BB54_18 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB54_46
# %bb.39:                               #   in Loop: Header=BB54_18 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	ld.d	$a0, $s0, 8
	move	$a1, $s7
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cnf_GetUsedTerms)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB54_44
# %bb.40:                               #   in Loop: Header=BB54_18 Depth=2
	beqz	$a0, .LBB54_45
# %bb.41:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB54_18 Depth=2
	move	$a2, $s1
	.p2align	4, , 16
.LBB54_42:                              # %.preheader.i.i
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB54_42
# %bb.43:                               #   in Loop: Header=BB54_18 Depth=2
	st.d	$a0, $a1, 0
	b	.LBB54_45
.LBB54_44:                              #   in Loop: Header=BB54_18 Depth=2
	move	$s1, $a0
.LBB54_45:                              # %list_Nconc.exit.i
                                        #   in Loop: Header=BB54_18 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$s1, $a0, 0
.LBB54_46:                              #   in Loop: Header=BB54_18 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
.LBB54_47:                              #   in Loop: Header=BB54_18 Depth=2
	ld.d	$a0, $s7, 56
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB54_53
# %bb.48:                               # %.lr.ph8.i
                                        #   in Loop: Header=BB54_18 Depth=2
	move	$s1, $a0
	move	$s2, $a0
	b	.LBB54_50
	.p2align	4, , 16
.LBB54_49:                              #   in Loop: Header=BB54_50 Depth=3
	move	$a0, $s7
	pcaddu18i	$ra, %call36(prfs_DeleteUsable)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB54_52
.LBB54_50:                              #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $fp, 36
	ld.d	$a1, $s2, 8
	beqz	$a0, .LBB54_49
# %bb.51:                               #   in Loop: Header=BB54_50 Depth=3
	move	$a0, $s7
	pcaddu18i	$ra, %call36(prfs_MoveUsableDocProof)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB54_50
	.p2align	4, , 16
.LBB54_52:                              # %.lr.ph.i.i160
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	bnez	$a3, .LBB54_52
.LBB54_53:                              # %cnf_HaveProofOptSkolem.exit
                                        #   in Loop: Header=BB54_18 Depth=2
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	bnez	$s0, .LBB54_186
# %bb.54:                               #   in Loop: Header=BB54_18 Depth=2
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB54_18
.LBB54_55:                              # %.thread
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a0, $s4, 216
	beqz	$a0, .LBB54_66
# %bb.56:                               #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $s7, 112
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 216
	ld.d	$s2, $s7, 104
	beqz	$a0, .LBB54_58
# %bb.57:                               #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_MaxVar)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(symbol_STANDARDVARCOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_STANDARDVARCOUNTER)
	st.w	$a0, $a1, 0
.LBB54_58:                              #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	ld.d	$fp, $a0, 16
	beqz	$fp, .LBB54_87
# %bb.59:                               # %.lr.ph.i298.preheader
                                        #   in Loop: Header=BB54_3 Depth=1
	move	$s7, $zero
	.p2align	4, , 16
.LBB54_60:                              # %.lr.ph.i298
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 8
	ld.w	$s0, $a0, 0
	move	$s1, $s7
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB54_60
# %bb.61:                               # %cnf_GetSymbolList.exit.loopexit
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	b	.LBB54_88
.LBB54_62:                              #   in Loop: Header=BB54_3 Depth=1
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ld.d	$a0, $a1, 8
	ld.d	$fp, $a0, 16
	beqz	$fp, .LBB54_67
.LBB54_63:                              # %.lr.ph.i.i182.preheader
                                        #   in Loop: Header=BB54_3 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB54_64:                              # %.lr.ph.i.i182
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 8
	ld.w	$s0, $a1, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB54_64
# %bb.65:                               # %cnf_GetSymbolList.exit.loopexit.i
                                        #   in Loop: Header=BB54_3 Depth=1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	b	.LBB54_68
.LBB54_66:                              # %.thread.cnf_StrongSkolemization.exit_crit_edge
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a1, 8
	ld.d	$fp, $a0, 16
	bnez	$fp, .LBB54_63
.LBB54_67:                              #   in Loop: Header=BB54_3 Depth=1
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
.LBB54_68:                              # %.lr.ph.i21thread-pre-split.lr.ph.i
                                        #   in Loop: Header=BB54_3 Depth=1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	ld.d	$a3, $s3, 128
	ld.d	$a1, $a2, 0
	ld.w	$a4, $a3, 32
	ld.d	$a5, $s6, 0
	ld.d	$a0, $a1, 8
	add.d	$a4, $a5, $a4
	st.d	$a4, $s6, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s3, 128
	st.d	$a2, $a3, 0
	.p2align	4, , 16
.LBB54_69:                              # %.lr.ph.i21thread-pre-split.i
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s6, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s3, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB54_69
# %bb.70:                               # %list_Delete.exit.i186
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a1, $a0, 0
	st.w	$a1, $fp, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	ld.d	$a1, $s3, 256
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 256
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(vec_MAX)
	ld.d	$s4, $a0, %got_pc_lo12(vec_MAX)
	ld.w	$s8, $s4, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	beqz	$s2, .LBB54_86
# %bb.71:                               # %.lr.ph43.preheader.i.i
                                        #   in Loop: Header=BB54_3 Depth=1
	move	$s0, $a0
	ld.w	$a0, $s4, 0
	move	$fp, $zero
	b	.LBB54_73
	.p2align	4, , 16
.LBB54_72:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB54_73 Depth=2
	ld.d	$s2, $s2, 0
	move	$a0, $s8
	beqz	$s2, .LBB54_82
.LBB54_73:                              # %.lr.ph43.i.i
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB54_75 Depth 3
                                        #         Child Loop BB54_77 Depth 4
                                        #         Child Loop BB54_81 Depth 4
	move	$s5, $fp
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(vec_VECTOR)
	ld.d	$s7, $a1, %got_pc_lo12(vec_VECTOR)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	stx.d	$a1, $s7, $a0
	move	$a0, $s0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(symbol_CreateSkolemFunction)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s5, $a0, 0
	ld.w	$a1, $s4, 0
	st.d	$s1, $a0, 8
	bne	$s8, $a1, .LBB54_75
	b	.LBB54_72
	.p2align	4, , 16
.LBB54_74:                              # %.loopexit.i.i193
                                        #   in Loop: Header=BB54_75 Depth=3
	beq	$s8, $a1, .LBB54_72
.LBB54_75:                              #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_73 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB54_77 Depth 4
                                        #         Child Loop BB54_81 Depth 4
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a1, 3
	ldx.d	$s5, $s7, $a0
	st.w	$a1, $s4, 0
	ld.w	$a0, $s5, 0
	ld.w	$a2, $s2, 8
	bne	$a0, $a2, .LBB54_79
# %bb.76:                               #   in Loop: Header=BB54_75 Depth=3
	ld.d	$a0, $s5, 16
	st.w	$s1, $s5, 0
	beqz	$a0, .LBB54_78
	.p2align	4, , 16
.LBB54_77:                              # %.lr.ph.i.i.i195
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_73 Depth=2
                                        #       Parent Loop BB54_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s3, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB54_77
.LBB54_78:                              # %list_Delete.exit.i.i199
                                        #   in Loop: Header=BB54_75 Depth=3
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 16
	ld.w	$a1, $s4, 0
	bnez	$a0, .LBB54_80
	b	.LBB54_74
	.p2align	4, , 16
.LBB54_79:                              # %._crit_edge45.i.i
                                        #   in Loop: Header=BB54_75 Depth=3
	ld.d	$a0, $s5, 16
	beqz	$a0, .LBB54_74
.LBB54_80:                              # %.preheader.i.i190
                                        #   in Loop: Header=BB54_75 Depth=3
	alsl.d	$a2, $a1, $s7, 3
	.p2align	4, , 16
.LBB54_81:                              #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_73 Depth=2
                                        #       Parent Loop BB54_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $s4, 0
	st.d	$a3, $a2, 0
	ld.d	$a0, $a0, 0
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB54_81
	b	.LBB54_74
.LBB54_82:                              # %cnf_SkolemFunctionFormula.exit.i
                                        #   in Loop: Header=BB54_3 Depth=1
	st.w	$s8, $s4, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB54_83:                              # %.lr.ph.i28.i
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB54_83
# %bb.84:                               # %.lr.ph.i35.i.preheader
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB54_85:                              # %.lr.ph.i35.i
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $fp, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s3, 128
	st.d	$fp, $a0, 0
	move	$fp, $a3
	bnez	$a3, .LBB54_85
	b	.LBB54_177
.LBB54_86:                              # %list_Delete.exit33.thread.i
                                        #   in Loop: Header=BB54_3 Depth=1
	st.w	$s8, $s4, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	bnez	$a4, .LBB54_178
	b	.LBB54_179
.LBB54_87:                              #   in Loop: Header=BB54_3 Depth=1
	move	$s7, $zero
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
.LBB54_88:                              # %.lr.ph.i292thread-pre-split.lr.ph
                                        #   in Loop: Header=BB54_3 Depth=1
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	ld.d	$a3, $s3, 128
	ld.d	$a1, $a2, 0
	ld.w	$a4, $a3, 32
	ld.d	$a5, $s6, 0
	ld.d	$a0, $a1, 8
	add.d	$a4, $a5, $a4
	st.d	$a4, $s6, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s3, 128
	st.d	$a2, $a3, 0
	.p2align	4, , 16
.LBB54_89:                              # %.lr.ph.i292thread-pre-split
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s6, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s3, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB54_89
# %bb.90:                               # %list_Delete.exit297
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a1, $a0, 0
	st.w	$a1, $fp, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	ld.d	$a1, $s3, 256
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 256
	st.d	$a0, $a1, 0
	ld.d	$s2, $fp, 16
	beqz	$s2, .LBB54_119
# %bb.91:                               # %.lr.ph393
                                        #   in Loop: Header=BB54_3 Depth=1
	move	$s8, $zero
	b	.LBB54_94
	.p2align	4, , 16
.LBB54_92:                              #   in Loop: Header=BB54_94 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
.LBB54_93:                              #   in Loop: Header=BB54_94 Depth=2
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB54_120
.LBB54_94:                              #   Parent Loop BB54_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB54_99 Depth 3
                                        #         Child Loop BB54_100 Depth 4
                                        #       Child Loop BB54_105 Depth 3
                                        #         Child Loop BB54_109 Depth 4
                                        #         Child Loop BB54_113 Depth 4
	ld.d	$s0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s7, .LBB54_102
# %bb.95:                               #   in Loop: Header=BB54_94 Depth=2
	beqz	$fp, .LBB54_102
# %bb.96:                               # %.lr.ph.i.preheader.i275.preheader
                                        #   in Loop: Header=BB54_94 Depth=2
	move	$s4, $fp
	b	.LBB54_99
	.p2align	4, , 16
.LBB54_97:                              # %list_Member.exit.i283
                                        #   in Loop: Header=BB54_99 Depth=3
	st.d	$zero, $s4, 8
.LBB54_98:                              # %list_Member.exit.thread.i284
                                        #   in Loop: Header=BB54_99 Depth=3
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB54_102
.LBB54_99:                              # %.lr.ph.i.preheader.i275
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_94 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB54_100 Depth 4
	ld.d	$a0, $s4, 8
	ld.w	$s1, $a0, 0
	move	$s5, $s7
	.p2align	4, , 16
.LBB54_100:                             # %.lr.ph.i.i279
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_94 Depth=2
                                        #       Parent Loop BB54_99 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(symbol_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB54_97
# %bb.101:                              #   in Loop: Header=BB54_100 Depth=4
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB54_100
	b	.LBB54_98
	.p2align	4, , 16
.LBB54_102:                             # %cnf_FreeVariablesBut.exit290
                                        #   in Loop: Header=BB54_94 Depth=2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	beqz	$s8, .LBB54_92
# %bb.103:                              #   in Loop: Header=BB54_94 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s4, $zero
	move	$a0, $s8
	b	.LBB54_105
	.p2align	4, , 16
.LBB54_104:                             # %.loopexit341
                                        #   in Loop: Header=BB54_105 Depth=3
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB54_118
.LBB54_105:                             #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_94 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB54_109 Depth 4
                                        #         Child Loop BB54_113 Depth 4
	move	$s1, $s4
	move	$s4, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	blt	$a0, $s0, .LBB54_104
# %bb.106:                              #   in Loop: Header=BB54_105 Depth=3
	bne	$a0, $s0, .LBB54_115
# %bb.107:                              #   in Loop: Header=BB54_105 Depth=3
	ld.d	$a0, $s4, 8
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB54_111
# %bb.108:                              # %.lr.ph.i265
                                        #   in Loop: Header=BB54_105 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(cnf_VARIABLEDEPTHARRAY)
	move	$a0, $zero
	.p2align	4, , 16
.LBB54_109:                             #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_94 Depth=2
                                        #       Parent Loop BB54_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a1, 8
	ld.w	$a3, $a3, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a2, $a3
	ld.d	$a1, $a1, 0
	slt	$a4, $a0, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a0, $a0, $a4
	or	$a0, $a3, $a0
	bnez	$a1, .LBB54_109
# %bb.110:                              # %.preheader.i268
                                        #   in Loop: Header=BB54_105 Depth=3
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB54_112
	b	.LBB54_104
.LBB54_111:                             #   in Loop: Header=BB54_105 Depth=3
	move	$a0, $zero
	ld.d	$a1, $fp, 0
	beqz	$a1, .LBB54_104
.LBB54_112:                             # %.lr.ph31.i
                                        #   in Loop: Header=BB54_105 Depth=3
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(cnf_VARIABLEDEPTHARRAY)
	.p2align	4, , 16
.LBB54_113:                             #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_94 Depth=2
                                        #       Parent Loop BB54_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a1, 8
	ld.w	$a3, $a3, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a2, $a3
	bge	$a3, $a0, .LBB54_115
# %bb.114:                              #   in Loop: Header=BB54_113 Depth=4
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB54_113
	b	.LBB54_104
	.p2align	4, , 16
.LBB54_115:                             # %cnf_HasDeeperVariable.exit.thread310
                                        #   in Loop: Header=BB54_94 Depth=2
	beqz	$s1, .LBB54_117
# %bb.116:                              #   in Loop: Header=BB54_94 Depth=2
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(list_InsertNext)
	jirl	$ra, $ra, 0
	b	.LBB54_93
	.p2align	4, , 16
.LBB54_117:                             #   in Loop: Header=BB54_94 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s8, $a0, 0
	move	$s8, $a0
	b	.LBB54_93
.LBB54_118:                             # %cnf_HasDeeperVariable.exit.thread313
                                        #   in Loop: Header=BB54_94 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s4, 0
	b	.LBB54_93
.LBB54_119:                             #   in Loop: Header=BB54_3 Depth=1
	move	$s8, $zero
.LBB54_120:                             # %._crit_edge394
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s7, .LBB54_128
# %bb.121:                              # %._crit_edge394
                                        #   in Loop: Header=BB54_3 Depth=1
	beqz	$fp, .LBB54_128
# %bb.122:                              # %.lr.ph.i.preheader.i.preheader
                                        #   in Loop: Header=BB54_3 Depth=1
	move	$s1, $fp
	b	.LBB54_125
	.p2align	4, , 16
.LBB54_123:                             # %list_Member.exit.i
                                        #   in Loop: Header=BB54_125 Depth=2
	st.d	$zero, $s1, 8
.LBB54_124:                             # %list_Member.exit.thread.i
                                        #   in Loop: Header=BB54_125 Depth=2
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB54_128
.LBB54_125:                             # %.lr.ph.i.preheader.i
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB54_126 Depth 3
	ld.d	$a0, $s1, 8
	ld.w	$s0, $a0, 0
	move	$s2, $s7
	.p2align	4, , 16
.LBB54_126:                             # %.lr.ph.i.i260
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(symbol_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB54_123
# %bb.127:                              #   in Loop: Header=BB54_126 Depth=3
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB54_126
	b	.LBB54_124
.LBB54_128:                             # %cnf_FreeVariablesBut.exit
                                        #   in Loop: Header=BB54_3 Depth=1
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	beqz	$s7, .LBB54_181
# %bb.129:                              # %.lr.ph399.preheader
                                        #   in Loop: Header=BB54_3 Depth=1
	move	$s5, $zero
	move	$s4, $s7
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB54_130:                             # %.lr.ph399
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(symbol_CreateSkolemFunction)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s8, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s2, $a0, 0
	st.d	$a0, $s8, 0
	ld.d	$s7, $s4, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s7, $a0, 8
	st.d	$s0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s5, $a0, 0
	ld.d	$s4, $s4, 0
	move	$s5, $a0
	bnez	$s4, .LBB54_130
# %bb.131:                              # %._crit_edge400
                                        #   in Loop: Header=BB54_3 Depth=1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beqz	$s1, .LBB54_133
	.p2align	4, , 16
.LBB54_132:                             # %.lr.ph.i250
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	bnez	$a3, .LBB54_132
.LBB54_133:                             # %list_Delete.exit255
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	blez	$fp, .LBB54_182
# %bb.134:                              # %.lr.ph404.preheader
                                        #   in Loop: Header=BB54_3 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB54_135:                             # %.lr.ph404
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(term_CreateStandardVariable)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	addi.w	$fp, $fp, -1
	st.d	$s0, $a0, 0
	move	$s0, $a0
	bnez	$fp, .LBB54_135
# %bb.136:                              # %.preheader343
                                        #   in Loop: Header=BB54_3 Depth=1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB54_183
.LBB54_137:                             # %.lr.ph417
                                        #   in Loop: Header=BB54_3 Depth=1
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	move	$s5, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$a1, $a0
	b	.LBB54_139
	.p2align	4, , 16
.LBB54_138:                             # %list_Delete.exit225
                                        #   in Loop: Header=BB54_139 Depth=2
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	ld.d	$a4, $a0, 8
	ori	$a0, $zero, 1
	masknez	$a0, $a0, $a1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s1, $sp, 8
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	st.d	$fp, $sp, 0
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s7
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	move	$a6, $s4
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	move	$a7, $s2
	pcaddu18i	$ra, %call36(cnf_OptimizedSkolemFormula)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a1, .LBB54_169
.LBB54_139:                             #   Parent Loop BB54_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB54_142 Depth 3
                                        #       Child Loop BB54_148 Depth 3
                                        #       Child Loop BB54_152 Depth 3
                                        #       Child Loop BB54_158 Depth 3
                                        #         Child Loop BB54_160 Depth 4
                                        #           Child Loop BB54_162 Depth 5
                                        #           Child Loop BB54_166 Depth 5
                                        #       Child Loop BB54_168 Depth 3
	ld.d	$a0, $a1, 8
	ld.d	$a3, $a0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	beqz	$a0, .LBB54_144
# %bb.140:                              #   in Loop: Header=BB54_139 Depth=2
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	beqz	$a3, .LBB54_145
# %bb.141:                              # %.preheader.i243.preheader
                                        #   in Loop: Header=BB54_139 Depth=2
	move	$a2, $a0
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB54_142:                             # %.preheader.i243
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB54_142
# %bb.143:                              #   in Loop: Header=BB54_139 Depth=2
	st.d	$a3, $a1, 0
	b	.LBB54_146
	.p2align	4, , 16
.LBB54_144:                             #   in Loop: Header=BB54_139 Depth=2
	move	$a0, $a3
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
.LBB54_145:                             #   in Loop: Header=BB54_139 Depth=2
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
.LBB54_146:                             # %list_Nconc.exit248
                                        #   in Loop: Header=BB54_139 Depth=2
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$a1, $a1, %got_pc_lo12(term_Equal)
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB54_149
# %bb.147:                              # %.lr.ph408.preheader
                                        #   in Loop: Header=BB54_139 Depth=2
	move	$fp, $zero
	move	$s0, $s4
	.p2align	4, , 16
.LBB54_148:                             # %.lr.ph408
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$s4, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s3, 128
	st.d	$s0, $a0, 0
	addi.w	$fp, $fp, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	sub.w	$a0, $a0, $s2
	move	$s0, $s4
	bltu	$fp, $a0, .LBB54_148
.LBB54_149:                             # %._crit_edge409
                                        #   in Loop: Header=BB54_139 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	beqz	$s2, .LBB54_154
# %bb.150:                              #   in Loop: Header=BB54_139 Depth=2
	beqz	$a0, .LBB54_155
# %bb.151:                              # %.preheader.i238.preheader
                                        #   in Loop: Header=BB54_139 Depth=2
	move	$a2, $s2
	.p2align	4, , 16
.LBB54_152:                             # %.preheader.i238
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB54_152
# %bb.153:                              #   in Loop: Header=BB54_139 Depth=2
	st.d	$a0, $a1, 0
	b	.LBB54_155
	.p2align	4, , 16
.LBB54_154:                             #   in Loop: Header=BB54_139 Depth=2
	move	$s2, $a0
.LBB54_155:                             # %list_Nconc.exit
                                        #   in Loop: Header=BB54_139 Depth=2
	pcalau12i	$a0, %got_pc_hi20(vec_MAX)
	ld.d	$s7, $a0, %got_pc_lo12(vec_MAX)
	ld.w	$s0, $s7, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB54_167
# %bb.156:                              # %.lr.ph40.preheader.i
                                        #   in Loop: Header=BB54_139 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	addi.d	$a0, $s0, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(vec_VECTOR)
	ld.d	$fp, $a0, %got_pc_lo12(vec_VECTOR)
	alsl.d	$a0, $s0, $fp, 3
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	b	.LBB54_158
	.p2align	4, , 16
.LBB54_157:                             # %._crit_edge.i230
                                        #   in Loop: Header=BB54_158 Depth=3
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB54_167
.LBB54_158:                             # %.lr.ph.preheader.i
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_139 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB54_160 Depth 4
                                        #           Child Loop BB54_162 Depth 5
                                        #           Child Loop BB54_166 Depth 5
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a1, $s7, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	ld.d	$a0, $s4, 8
	ld.w	$s8, $a0, 8
	ld.d	$s1, $a0, 0
	b	.LBB54_160
	.p2align	4, , 16
.LBB54_159:                             # %.loopexit.i
                                        #   in Loop: Header=BB54_160 Depth=4
	beq	$s0, $a1, .LBB54_157
.LBB54_160:                             # %.lr.ph.i226
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_139 Depth=2
                                        #       Parent Loop BB54_158 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB54_162 Depth 5
                                        #           Child Loop BB54_166 Depth 5
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a1, 3
	ldx.d	$s5, $fp, $a0
	st.w	$a1, $s7, 0
	ld.w	$a0, $s5, 0
	bne	$a0, $s8, .LBB54_164
# %bb.161:                              #   in Loop: Header=BB54_160 Depth=4
	ld.d	$a0, $s5, 16
	st.w	$s1, $s5, 0
	beqz	$a0, .LBB54_163
	.p2align	4, , 16
.LBB54_162:                             # %.lr.ph.i.i232
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_139 Depth=2
                                        #       Parent Loop BB54_158 Depth=3
                                        #         Parent Loop BB54_160 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a1, $s3, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB54_162
.LBB54_163:                             # %list_Delete.exit.i236
                                        #   in Loop: Header=BB54_160 Depth=4
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 16
	ld.w	$a1, $s7, 0
	bnez	$a0, .LBB54_165
	b	.LBB54_159
	.p2align	4, , 16
.LBB54_164:                             # %.lr.ph._crit_edge.i
                                        #   in Loop: Header=BB54_160 Depth=4
	ld.d	$a0, $s5, 16
	beqz	$a0, .LBB54_159
.LBB54_165:                             # %.preheader.i
                                        #   in Loop: Header=BB54_160 Depth=4
	alsl.d	$a2, $a1, $fp, 3
	.p2align	4, , 16
.LBB54_166:                             #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_139 Depth=2
                                        #       Parent Loop BB54_158 Depth=3
                                        #         Parent Loop BB54_160 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a3, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $s7, 0
	st.d	$a3, $a2, 0
	ld.d	$a0, $a0, 0
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB54_166
	b	.LBB54_159
	.p2align	4, , 16
.LBB54_167:                             # %cnf_SkolemFunctionFormulaMapped.exit
                                        #   in Loop: Header=BB54_139 Depth=2
	st.w	$s0, $s7, 0
	beqz	$s2, .LBB54_138
	.p2align	4, , 16
.LBB54_168:                             # %.lr.ph.i220
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s2, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s3, 128
	st.d	$s2, $a0, 0
	move	$s2, $a3
	bnez	$a3, .LBB54_168
	b	.LBB54_138
.LBB54_169:                             # %.preheader.loopexit
                                        #   in Loop: Header=BB54_3 Depth=1
	sltu	$fp, $zero, $s5
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	beqz	$s5, .LBB54_171
	.p2align	4, , 16
.LBB54_170:                             # %.lr.ph423
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s3, 128
	st.d	$s5, $a0, 0
	move	$s5, $a3
	bnez	$a3, .LBB54_170
.LBB54_171:                             # %._crit_edge424
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	beqz	$a4, .LBB54_173
	.p2align	4, , 16
.LBB54_172:                             # %.lr.ph.i212
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $a4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $s3, 128
	st.d	$a4, $a0, 0
	move	$a4, $a3
	bnez	$a3, .LBB54_172
.LBB54_173:                             # %list_Delete.exit217
                                        #   in Loop: Header=BB54_3 Depth=1
	pcalau12i	$a0, %pc_hi20(list_PairFree)
	addi.d	$a1, $a0, %pc_lo12(list_PairFree)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	beqz	$a4, .LBB54_175
	.p2align	4, , 16
.LBB54_174:                             # %.lr.ph.i205
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $a4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $s3, 128
	st.d	$a4, $a0, 0
	move	$a4, $a3
	bnez	$a3, .LBB54_174
.LBB54_175:                             # %list_Delete.exit210
                                        #   in Loop: Header=BB54_3 Depth=1
	pcalau12i	$a0, %pc_hi20(list_PairFree)
	addi.d	$a1, $a0, %pc_lo12(list_PairFree)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 136
	sltu	$a0, $zero, $a0
	and	$a0, $a0, $fp
	beqz	$a0, .LBB54_177
# %bb.176:                              #   in Loop: Header=BB54_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB54_177:                             #   in Loop: Header=BB54_3 Depth=1
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	beqz	$a4, .LBB54_179
	.p2align	4, , 16
.LBB54_178:                             # %.lr.ph.i200
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $a4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $s3, 128
	st.d	$a4, $a0, 0
	move	$a4, $a3
	bnez	$a3, .LBB54_178
.LBB54_179:                             # %list_Delete.exit
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a4, $fp, 0
	ld.w	$a1, $s0, 0
	xor	$a0, $a1, $a4
	sltui	$a0, $a0, 1
	beq	$a1, $a4, .LBB54_3
# %bb.180:                              # %list_Delete.exit
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beq	$a1, $a4, .LBB54_3
	b	.LBB54_237
.LBB54_181:                             #   in Loop: Header=BB54_3 Depth=1
	move	$a0, $zero
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bnez	$s1, .LBB54_132
	b	.LBB54_133
.LBB54_182:                             #   in Loop: Header=BB54_3 Depth=1
	move	$a0, $zero
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB54_137
.LBB54_183:                             #   in Loop: Header=BB54_3 Depth=1
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$fp, $zero
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	bnez	$s5, .LBB54_170
	b	.LBB54_171
.LBB54_184:                             #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a0, $s4, 132
	beqz	$a0, .LBB54_188
# %bb.185:                              #   in Loop: Header=BB54_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB54_186:                             # %cnf_HaveProofOptSkolem.exit.thread
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a0, $s4, 132
	beqz	$a0, .LBB54_188
# %bb.187:                              #   in Loop: Header=BB54_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	pcaddu18i	$ra, %call36(term_Print)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB54_188:                             # %cnf_HaveProofOptSkolem.exit.thread.thread
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$s0, $a0, 8
	ld.d	$fp, $s5, 8
	ld.d	$a0, $s0, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB54_192
# %bb.189:                              #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a1, 8
	.p2align	4, , 16
.LBB54_190:                             # %.lr.ph.i.i174
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s6, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s3, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB54_190
# %bb.191:                              # %list_Delete.exit.i178
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $a2, 16
	ld.d	$a1, $s3, 256
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 256
	st.d	$a0, $a1, 0
.LBB54_192:                             #   in Loop: Header=BB54_3 Depth=1
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	bnez	$s1, .LBB54_197
.LBB54_193:                             # %._crit_edge.i168
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	beqz	$s1, .LBB54_228
# %bb.194:                              #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$fp, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a2, 8
	st.d	$zero, $a2, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ori	$s1, $zero, 2
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	bltu	$a0, $s1, .LBB54_229
# %bb.195:                              #   in Loop: Header=BB54_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(vec_MAX)
	ld.d	$s2, $a0, %got_pc_lo12(vec_MAX)
	ld.w	$s5, $s2, 0
	addi.d	$a0, $s5, 1
	slli.d	$a1, $s5, 3
	pcalau12i	$a2, %got_pc_hi20(vec_VECTOR)
	ld.d	$a2, $a2, %got_pc_lo12(vec_VECTOR)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	stx.d	$fp, $a2, $a1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	st.d	$s5, $sp, 232                   # 8-byte Folded Spill
	b	.LBB54_215
	.p2align	4, , 16
.LBB54_196:                             # %cnf_RplacVarsymbFunction.exit75.i
                                        #   in Loop: Header=BB54_197 Depth=2
	st.w	$s8, $s1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB54_193
.LBB54_197:                             # %.lr.ph.i164
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB54_200 Depth 3
                                        #         Child Loop BB54_203 Depth 4
                                        #       Child Loop BB54_208 Depth 3
                                        #         Child Loop BB54_211 Depth 4
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 8
	ld.w	$s0, $a0, 0
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(symbol_CreateSkolemFunction)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(vec_MAX)
	ld.d	$s1, $a0, %got_pc_lo12(vec_MAX)
	ld.w	$s8, $s1, 0
	addi.w	$s7, $s8, 1
	pcalau12i	$a0, %got_pc_hi20(vec_VECTOR)
	ld.d	$s2, $a0, %got_pc_lo12(vec_VECTOR)
	alsl.d	$a0, $s8, $s2, 3
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	stx.d	$a1, $s2, $a0
	move	$a0, $s7
	b	.LBB54_200
	.p2align	4, , 16
.LBB54_198:                             #   in Loop: Header=BB54_200 Depth=3
	ld.w	$a0, $fp, 0
	st.w	$a0, $s5, 0
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a1, %got_pc_lo12(term_Copy)
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 0
	st.d	$a0, $s5, 16
.LBB54_199:                             # %.loopexit.i.i166
                                        #   in Loop: Header=BB54_200 Depth=3
	move	$a0, $a2
	beq	$s8, $a2, .LBB54_205
.LBB54_200:                             #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_197 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB54_203 Depth 4
	addi.w	$a2, $a0, -1
	slli.d	$a1, $a2, 3
	ldx.d	$s5, $s2, $a1
	st.w	$a2, $s1, 0
	ld.w	$a1, $s5, 0
	beq	$a1, $s0, .LBB54_198
# %bb.201:                              #   in Loop: Header=BB54_200 Depth=3
	ld.d	$a1, $s5, 16
	beqz	$a1, .LBB54_199
# %bb.202:                              # %.preheader.i.i165.preheader
                                        #   in Loop: Header=BB54_200 Depth=3
	alsl.d	$a2, $a0, $s2, 3
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB54_203:                             # %.preheader.i.i165
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_197 Depth=2
                                        #       Parent Loop BB54_200 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a1, 8
	st.w	$a0, $s1, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB54_203
# %bb.204:                              # %.loopexit.i.i166.loopexit
                                        #   in Loop: Header=BB54_200 Depth=3
	addi.w	$a2, $a0, -1
	b	.LBB54_199
	.p2align	4, , 16
.LBB54_205:                             # %cnf_RplacVarsymbFunction.exit.i
                                        #   in Loop: Header=BB54_197 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	b	.LBB54_208
	.p2align	4, , 16
.LBB54_206:                             #   in Loop: Header=BB54_208 Depth=3
	ld.w	$a0, $fp, 0
	st.w	$a0, $s5, 0
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a1, %got_pc_lo12(term_Copy)
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $s5, 16
.LBB54_207:                             # %.loopexit.i70.i
                                        #   in Loop: Header=BB54_208 Depth=3
	move	$s7, $a1
	beq	$s8, $a1, .LBB54_196
.LBB54_208:                             #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_197 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB54_211 Depth 4
	addi.w	$a1, $s7, -1
	slli.d	$a0, $a1, 3
	ldx.d	$s5, $s2, $a0
	st.w	$a1, $s1, 0
	ld.w	$a0, $s5, 0
	beq	$a0, $s0, .LBB54_206
# %bb.209:                              #   in Loop: Header=BB54_208 Depth=3
	ld.d	$a0, $s5, 16
	beqz	$a0, .LBB54_207
# %bb.210:                              # %.preheader.i63.i.preheader
                                        #   in Loop: Header=BB54_208 Depth=3
	alsl.d	$a1, $s7, $s2, 3
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB54_211:                             # %.preheader.i63.i
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_197 Depth=2
                                        #       Parent Loop BB54_208 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a0, 8
	st.w	$s7, $s1, 0
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, 8
	addi.d	$s7, $s7, 1
	bnez	$a0, .LBB54_211
# %bb.212:                              # %.loopexit.i70.i.loopexit
                                        #   in Loop: Header=BB54_208 Depth=3
	addi.w	$a1, $s7, -1
	b	.LBB54_207
	.p2align	4, , 16
.LBB54_213:                             #   in Loop: Header=BB54_215 Depth=2
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
.LBB54_214:                             # %.loopexit.i80.i
                                        #   in Loop: Header=BB54_215 Depth=2
	beq	$s5, $a0, .LBB54_230
.LBB54_215:                             # %.lr.ph64.i.i
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB54_220 Depth 3
                                        #       Child Loop BB54_222 Depth 3
                                        #       Child Loop BB54_224 Depth 3
                                        #       Child Loop BB54_227 Depth 3
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ldx.d	$s7, $a2, $a1
	st.w	$a0, $s2, 0
	ld.w	$a1, $s7, 0
	ld.w	$a0, $s0, 0
	beq	$a0, $a1, .LBB54_217
# %bb.216:                              # %.lr.ph64.i.i
                                        #   in Loop: Header=BB54_215 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bne	$a0, $a1, .LBB54_225
.LBB54_217:                             #   in Loop: Header=BB54_215 Depth=2
	ld.d	$a0, $s7, 16
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	move	$fp, $a1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bltu	$a0, $s1, .LBB54_225
# %bb.218:                              #   in Loop: Header=BB54_215 Depth=2
	ld.d	$a0, $s7, 16
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB54_225
# %bb.219:                              # %.lr.ph.i82.i.preheader
                                        #   in Loop: Header=BB54_215 Depth=2
	move	$a1, $fp
	move	$fp, $a0
	move	$s5, $a0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB54_220:                             # %.lr.ph.i82.i
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s7, 16
	ld.d	$a0, $a0, 0
	ld.d	$s8, $a0, 8
	ld.d	$s0, $s5, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s8, $a0, 8
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 16
	ld.d	$a1, $a1, 0
	st.d	$a0, $a1, 8
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB54_220
# %bb.221:                              # %.lr.ph60.i.i.preheader
                                        #   in Loop: Header=BB54_215 Depth=2
	move	$s0, $fp
	.p2align	4, , 16
.LBB54_222:                             # %.lr.ph60.i.i
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s7, 16
	ld.d	$s1, $a0, 8
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s0, 8
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB54_222
# %bb.223:                              # %.lr.ph.i.i.i172.preheader
                                        #   in Loop: Header=BB54_215 Depth=2
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ori	$s1, $zero, 2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB54_224:                             # %.lr.ph.i.i.i172
                                        #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $fp, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s3, 128
	st.d	$fp, $a0, 0
	move	$fp, $a3
	bnez	$a3, .LBB54_224
	.p2align	4, , 16
.LBB54_225:                             # %list_Delete.exit.i.i
                                        #   in Loop: Header=BB54_215 Depth=2
	ld.d	$a1, $s7, 16
	ld.w	$a0, $s2, 0
	beqz	$a1, .LBB54_213
# %bb.226:                              # %.preheader.i77.i
                                        #   in Loop: Header=BB54_215 Depth=2
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB54_227:                             #   Parent Loop BB54_3 Depth=1
                                        #     Parent Loop BB54_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a1, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $s2, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB54_227
	b	.LBB54_214
.LBB54_228:                             #   in Loop: Header=BB54_3 Depth=1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	b	.LBB54_231
.LBB54_229:                             #   in Loop: Header=BB54_3 Depth=1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	b	.LBB54_231
.LBB54_230:                             # %cnf_QuantMakeOneVar.exit.i
                                        #   in Loop: Header=BB54_3 Depth=1
	st.w	$s5, $s2, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
.LBB54_231:                             #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB54_233
	.p2align	4, , 16
.LBB54_232:                             # %.lr.ph.i85.i
                                        #   Parent Loop BB54_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB54_232
.LBB54_233:                             # %cnf_MoveProvedTermToTopLevel.exit
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	st.w	$a0, $fp, 0
	ld.d	$a0, $a3, 16
	st.d	$a0, $fp, 16
	ld.d	$a0, $s3, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $s3, 256
	st.d	$a3, $a0, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $s0, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s0, 16
	ld.w	$a0, $s4, 132
	beqz	$a0, .LBB54_235
# %bb.234:                              #   in Loop: Header=BB54_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Print)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB54_235:                             # %._crit_edge383
                                        #   in Loop: Header=BB54_3 Depth=1
	st.d	$s1, $sp, 8
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s8
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	move	$a6, $s4
	move	$a7, $s2
	pcaddu18i	$ra, %call36(cnf_OptimizedSkolemFormula)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	bnez	$a4, .LBB54_178
	b	.LBB54_179
.LBB54_236:
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
.LBB54_237:                             # %tailrecurse.outer._crit_edge
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a0, $a0, 0
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	beq	$a4, $a1, .LBB54_239
# %bb.238:                              # %tailrecurse.outer._crit_edge
	bne	$a4, $a0, .LBB54_242
.LBB54_239:
	ld.d	$s0, $fp, 16
	beqz	$s0, .LBB54_242
# %bb.240:                              # %.lr.ph442.preheader
	xor	$a0, $a4, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	masknez	$fp, $a1, $a0
	.p2align	4, , 16
.LBB54_241:                             # %.lr.ph442
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $s0, 8
	st.d	$s1, $sp, 8
	st.d	$s6, $sp, 0
	move	$a0, $s7
	move	$a1, $s5
	move	$a2, $s8
	move	$a3, $fp
	move	$a5, $s3
	move	$a6, $s4
	move	$a7, $s2
	pcaddu18i	$ra, %call36(cnf_OptimizedSkolemFormula)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB54_241
.LBB54_242:                             # %.loopexit
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end54:
	.size	cnf_OptimizedSkolemFormula, .Lfunc_end54-cnf_OptimizedSkolemFormula
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_GetUsedTerms
	.type	cnf_GetUsedTerms,@function
cnf_GetUsedTerms:                       # @cnf_GetUsedTerms
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s2, $a0
	lu12i.w	$a0, -361578
	ori	$a0, $a0, 283
	lu32i.d	$a0, -289263
	lu52i.d	$a0, $a0, 423
	mulh.du	$a0, $s2, $a0
	sub.d	$a1, $s2, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 4
	ori	$a1, $zero, 29
	mul.d	$a0, $a0, $a1
	sub.d	$a0, $s2, $a0
	alsl.d	$a0, $a0, $a2, 3
	.p2align	4, , 16
.LBB55_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB55_4
# %bb.2:                                #   in Loop: Header=BB55_1 Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a1, 8
	bne	$a2, $s2, .LBB55_1
# %bb.3:
	ld.d	$a0, $a1, 0
	b	.LBB55_5
.LBB55_4:
	move	$a0, $zero
.LBB55_5:                               # %hsh_Get.exit
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cnf_LabelEqual)
	addi.d	$a1, $a1, %pc_lo12(cnf_LabelEqual)
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB55_7
.LBB55_6:                               # %.loopexit
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB55_7:
	ld.d	$s3, $s2, 32
	beqz	$s3, .LBB55_19
# %bb.8:                                # %.lr.ph
	move	$s1, $zero
	b	.LBB55_11
	.p2align	4, , 16
.LBB55_9:                               #   in Loop: Header=BB55_11 Depth=1
	move	$s1, $a0
.LBB55_10:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB55_11 Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB55_6
.LBB55_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_16 Depth 2
	ld.w	$s2, $s3, 8
	ld.d	$a1, $s0, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_GetNumberedCl)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB55_13
# %bb.12:                               #   in Loop: Header=BB55_11 Depth=1
	ld.d	$a1, $s0, 56
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_GetNumberedCl)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB55_18
.LBB55_13:                              #   in Loop: Header=BB55_11 Depth=1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cnf_GetUsedTerms)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB55_9
.LBB55_14:                              #   in Loop: Header=BB55_11 Depth=1
	beqz	$a0, .LBB55_10
# %bb.15:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB55_11 Depth=1
	move	$a2, $s1
	.p2align	4, , 16
.LBB55_16:                              # %.preheader.i
                                        #   Parent Loop BB55_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB55_16
# %bb.17:                               #   in Loop: Header=BB55_11 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB55_10
.LBB55_18:                              #   in Loop: Header=BB55_11 Depth=1
	ld.d	$a1, $s0, 96
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_GetNumberedCl)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cnf_GetUsedTerms)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB55_14
	b	.LBB55_9
.LBB55_19:
	move	$s1, $zero
	b	.LBB55_6
.Lfunc_end55:
	.size	cnf_GetUsedTerms, .Lfunc_end55-cnf_GetUsedTerms
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function misc_Error
	.type	misc_Error,@function
misc_Error:                             # @misc_Error
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end56:
	.size	misc_Error, .Lfunc_end56-misc_Error
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function cnf_DistrQuantorNoVarSubPath
	.type	cnf_DistrQuantorNoVarSubPath,@function
cnf_DistrQuantorNoVarSubPath:           # @cnf_DistrQuantorNoVarSubPath
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$s0, $fp, 0
	ld.d	$a0, $a0, 16
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 0
	ld.d	$s1, $a1, 8
	ld.w	$a1, $s1, 0
	move	$s4, $a0
	move	$a0, $s1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cnf_Flatten)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB57_19
# %bb.1:                                # %.lr.ph121
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s3, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$fp, $s4
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB57_4
	.p2align	4, , 16
.LBB57_2:                               #   in Loop: Header=BB57_4 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $s1, 16
	st.d	$s1, $s7, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 16
	move	$a1, $s5
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB57_3:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB57_4 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB57_19
.LBB57_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_7 Depth 2
                                        #     Child Loop BB57_14 Depth 2
	ld.d	$s7, $s1, 16
	beqz	$s7, .LBB57_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB57_4 Depth=1
	ld.d	$s5, $fp, 8
	move	$s6, $zero
	b	.LBB57_7
	.p2align	4, , 16
.LBB57_6:                               #   in Loop: Header=BB57_7 Depth=2
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB57_9
.LBB57_7:                               # %.lr.ph
                                        #   Parent Loop BB57_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fol_VarOccursFreely)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB57_6
# %bb.8:                                #   in Loop: Header=BB57_7 Depth=2
	ld.d	$s8, $s7, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s8, $a0, 8
	st.d	$s6, $a0, 0
	move	$s6, $a0
	b	.LBB57_6
	.p2align	4, , 16
.LBB57_9:                               # %._crit_edge
                                        #   in Loop: Header=BB57_4 Depth=1
	beqz	$s6, .LBB57_3
# %bb.10:                               #   in Loop: Header=BB57_4 Depth=1
	ld.d	$a0, $s1, 16
	move	$a1, $s6
	pcaddu18i	$ra, %call36(list_NPointerDifference)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB57_12
# %bb.11:                               #   in Loop: Header=BB57_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(term_CreateAddFather)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s5, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s7, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	move	$a1, $s8
	b	.LBB57_16
.LBB57_12:                              #   in Loop: Header=BB57_4 Depth=1
	ld.d	$s7, $s8, 8
	ld.w	$a0, $s7, 0
	bne	$s0, $a0, .LBB57_15
# %bb.13:                               #   in Loop: Header=BB57_4 Depth=1
	ld.d	$a0, $s7, 16
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $s0, 16
	.p2align	4, , 16
.LBB57_14:                              # %.lr.ph.i
                                        #   Parent Loop BB57_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s3, 0
	ld.d	$a3, $s8, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $s2, 128
	st.d	$s8, $a0, 0
	move	$s8, $a3
	bnez	$a3, .LBB57_14
	b	.LBB57_17
.LBB57_15:                              #   in Loop: Header=BB57_4 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s5, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	move	$a2, $s8
.LBB57_16:                              # %list_Delete.exit
                                        #   in Loop: Header=BB57_4 Depth=1
	pcaddu18i	$ra, %call36(fol_CreateQuantifierAddFather)
	jirl	$ra, $ra, 0
	move	$s7, $a0
.LBB57_17:                              # %list_Delete.exit
                                        #   in Loop: Header=BB57_4 Depth=1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(term_HasProperSuperterm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB57_2
# %bb.18:                               #   in Loop: Header=BB57_4 Depth=1
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cnf_AntiPrenexPath)
	jirl	$ra, $ra, 0
	b	.LBB57_2
.LBB57_19:                              # %._crit_edge122
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a7, 16
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a2, 16
	bnez	$a0, .LBB57_24
# %bb.20:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a3, $a0, 256
	ld.w	$a4, $a3, 32
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a1, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $a0, 256
	st.d	$a2, $a3, 0
	ld.d	$a2, $a7, 16
	beqz	$a2, .LBB57_22
	.p2align	4, , 16
.LBB57_21:                              # %.lr.ph.i97
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a1, 0
	ld.d	$a6, $a2, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a1, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $a0, 128
	st.d	$a2, $a3, 0
	move	$a2, $a6
	bnez	$a6, .LBB57_21
.LBB57_22:                              # %list_Delete.exit101
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a2, $a7, 0
	ld.d	$a2, $s1, 16
	st.d	$a2, $a7, 16
	ld.d	$a2, $a0, 256
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 256
	st.d	$s1, $a0, 0
	ld.d	$a0, $a7, 16
	beqz	$a0, .LBB57_24
	.p2align	4, , 16
.LBB57_23:                              # %.lr.ph126
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a7, $a1, 8
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB57_23
.LBB57_24:                              # %.loopexit
	beqz	$s4, .LBB57_27
# %bb.25:                               # %.lr.ph.i103.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB57_26:                              # %.lr.ph.i103
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s4, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s4, 0
	ld.d	$a2, $a0, 128
	st.d	$s4, $a2, 0
	move	$s4, $a5
	bnez	$a5, .LBB57_26
.LBB57_27:                              # %list_Delete.exit107
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end57:
	.size	cnf_DistrQuantorNoVarSubPath, .Lfunc_end57-cnf_DistrQuantorNoVarSubPath
                                        # -- End function
	.type	cnf_VARIABLEDEPTHARRAY,@object  # @cnf_VARIABLEDEPTHARRAY
	.local	cnf_VARIABLEDEPTHARRAY
	.comm	cnf_VARIABLEDEPTHARRAY,8,8
	.type	cnf_SEARCHCOPY,@object          # @cnf_SEARCHCOPY
	.local	cnf_SEARCHCOPY
	.comm	cnf_SEARCHCOPY,8,8
	.type	cnf_HAVEPROOFPS,@object         # @cnf_HAVEPROOFPS
	.local	cnf_HAVEPROOFPS
	.comm	cnf_HAVEPROOFPS,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nTarget after applying def:\n"
	.size	.L.str, 29

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n\tError in file %s at line %d\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Applications/SPASS/cnf.c"
	.size	.L.str.3, 120

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n In cnf_ComputeLiteralLists: Unexpected junctor in input Formula!\n"
	.size	.L.str.4, 68

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\n Please report this error via email to spass@mpi-sb.mpg.de including\n the SPASS version, input problem, options, operating system.\n"
	.size	.L.str.5, 133

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	".\n"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"."
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" | "
	.size	.L.str.8, 4

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"conjecture%d"
	.size	.L.str.9, 13

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\nAdded label %s for conjecture"
	.size	.L.str.10, 31

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\nTarget :"
	.size	.L.str.11, 10

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\nConverted to :"
	.size	.L.str.12, 16

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\nToProve for this target :"
	.size	.L.str.13, 27

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\nPredicate : "
	.size	.L.str.14, 14

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\nAlways Applicable     : "
	.size	.L.str.15, 26

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\nClause before applying def :"
	.size	.L.str.16, 30

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\nPredicate :"
	.size	.L.str.17, 13

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\nExpansion :"
	.size	.L.str.18, 13

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\nClauses derived by expanding definition :"
	.size	.L.str.19, 43

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\n\n"
	.size	.L.str.20, 3

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\n In cnf_GetFormulaPolarity: Wrong arguments !\n"
	.size	.L.str.21, 48

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\nTerm before skolemization : \n "
	.size	.L.str.22, 32

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"\nTerm after skolemization : "
	.size	.L.str.23, 29

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\nHaveProof not necessary"
	.size	.L.str.24, 25

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\nIn term "
	.size	.L.str.25, 10

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"\n subterm "
	.size	.L.str.26, 11

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	" is moved to toplevel."
	.size	.L.str.27, 23

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Result : "
	.size	.L.str.28, 10

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"\nStrong skolemization applied"
	.size	.L.str.29, 30

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"\n Error: Flag value %d is too small for flag %s.\n"
	.size	.L.str.30, 50

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"\n Error: Flag value %d is too large for flag %s.\n"
	.size	.L.str.31, 50

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"\ncheck1"
	.size	.L.str.32, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym term_Delete
	.addrsig_sym term_Copy
	.addrsig_sym list_PairFree
	.addrsig_sym cnf_LabelEqual
	.addrsig_sym term_Equal
	.addrsig_sym fol_IsTrue
	.addrsig_sym fol_IsFalse
	.addrsig_sym symbol_Delete
