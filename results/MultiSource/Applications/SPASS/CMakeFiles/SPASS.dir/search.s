	.file	"search.c"
	.text
	.globl	prfs_Check                      # -- Begin function prfs_Check
	.p2align	5
	.type	prfs_Check,@function
prfs_Check:                             # @prfs_Check
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$s1, $a0, 56
	move	$s2, $s1
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $s2, 8
	ld.d	$a1, $fp, 112
	ld.d	$a2, $fp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_IsClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a0, $s0, 48
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	ld.w	$a0, $fp, 128
	ld.w	$a1, $s0, 12
	bgeu	$a0, $a1, .LBB0_1
	b	.LBB0_10
.LBB0_5:
	addi.d	$s2, $fp, 40
	move	$s3, $s2
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB0_12
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $s3, 8
	ld.d	$a1, $fp, 112
	ld.d	$a2, $fp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_IsClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	ld.bu	$a0, $s0, 48
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $fp, 128
	ld.w	$a1, $s0, 12
	bgeu	$a0, $a1, .LBB0_6
.LBB0_10:
	move	$a0, $zero
.LBB0_11:                               # %.loopexit103
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_12:
	ld.d	$a1, $fp, 120
	beqz	$a1, .LBB0_24
# %bb.13:                               # %.lr.ph.preheader
	move	$a2, $a1
	b	.LBB0_15
.LBB0_14:                               # %.loopexit
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a2, $a2, 0
	beqz	$a2, .LBB0_28
.LBB0_15:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	ld.d	$a3, $a2, 8
	ld.w	$a0, $a3, 4
	beqz	$a0, .LBB0_14
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $a3, 8
	bnez	$a0, .LBB0_10
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $a3, 16
	bnez	$a0, .LBB0_10
# %bb.18:                               # %.preheader104.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a4, $s1
	.p2align	4, , 16
.LBB0_19:                               # %.preheader104
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a0, $a4, 8
	ld.w	$a5, $a0, 12
	ld.w	$a6, $a3, 0
	move	$a0, $zero
	bne	$a5, $a6, .LBB0_19
	b	.LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=1
	move	$a4, $s2
	.p2align	4, , 16
.LBB0_22:                               # %.preheader
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_14
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a0, $a4, 8
	ld.w	$a5, $a0, 12
	ld.w	$a6, $a3, 0
	move	$a0, $zero
	bne	$a5, $a6, .LBB0_22
	b	.LBB0_11
.LBB0_24:                               # %._crit_edge.thread
	ld.w	$a0, $fp, 128
	beqz	$a0, .LBB0_26
.LBB0_25:
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB0_10
	b	.LBB0_27
.LBB0_26:
	move	$a0, $zero
.LBB0_27:                               # %.thread
	ld.w	$a1, $fp, 132
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	b	.LBB0_11
.LBB0_28:                               # %._crit_edge
	ld.w	$a0, $fp, 128
	bnez	$a0, .LBB0_25
	b	.LBB0_10
.Lfunc_end0:
	.size	prfs_Check, .Lfunc_end0-prfs_Check
                                        # -- End function
	.globl	prfs_DeleteDocProof             # -- Begin function prfs_DeleteDocProof
	.p2align	5
	.type	prfs_DeleteDocProof,@function
prfs_DeleteDocProof:                    # @prfs_DeleteDocProof
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 96
	ld.d	$a1, $fp, 88
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	addi.d	$s0, $fp, 88
	pcaddu18i	$ra, %call36(clause_DeleteSharedClauseList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB1_2
# %bb.1:
	pcaddu18i	$ra, %call36(sharing_IndexDelete)
	jirl	$ra, $ra, 0
.LBB1_2:
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	prfs_DeleteDocProof, .Lfunc_end1-prfs_DeleteDocProof
                                        # -- End function
	.globl	prfs_Delete                     # -- Begin function prfs_Delete
	.p2align	5
	.type	prfs_Delete,@function
prfs_Delete:                            # @prfs_Delete
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(prfs_InternalDelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(sharing_IndexDelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(sharing_IndexDelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB2_2
# %bb.1:
	pcaddu18i	$ra, %call36(sharing_IndexDelete)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.d	$a0, $fp, 112
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$s0, $a1, %got_pc_lo12(memory_ARRAY)
	ldptr.d	$a1, $s0, 3072
	ld.w	$a2, $a1, 32
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s1, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a3, $s1, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ldptr.d	$a1, $s0, 3072
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, 104
	pcalau12i	$a1, %got_pc_hi20(memory_ALIGN)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ALIGN)
	ld.w	$a1, $a1, 0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3712
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
	beqz	$a5, .LBB2_8
# %bb.3:
	st.d	$a4, $a5, 8
	or	$a1, $a3, $a1
	beqz	$a4, .LBB2_5
.LBB2_4:
	ld.d	$a2, $a2, -16
	st.d	$a2, $a4, 0
.LBB2_5:
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a2, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 16
	add.d	$a2, $a1, $a3
	st.d	$a2, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	ld.d	$a3, $a2, 0
	bltz	$a3, .LBB2_7
# %bb.6:
	add.d	$a1, $a3, $a1
	st.d	$a1, $a2, 0
.LBB2_7:                                # %symbol_DeletePrecedence.exit
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 1280
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s0, 1280
	st.d	$fp, $a0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_8:
	pcalau12i	$a5, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a5, $a5, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a4, $a5, 0
	or	$a1, $a3, $a1
	bnez	$a4, .LBB2_4
	b	.LBB2_5
.Lfunc_end2:
	.size	prfs_Delete, .Lfunc_end2-prfs_Delete
                                        # -- End function
	.p2align	5                               # -- Begin function prfs_InternalDelete
	.type	prfs_InternalDelete,@function
prfs_InternalDelete:                    # @prfs_InternalDelete
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(def_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(def_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB3_3
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph.i
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
	bnez	$a6, .LBB3_2
.LBB3_3:                                # %list_Delete.exit
	ld.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(sort_TheoryDelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(sort_TheoryDelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(sort_TheoryDelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	pcaddu18i	$ra, %call36(clause_DeleteSharedClauseList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$a1, $fp, 48
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	pcaddu18i	$ra, %call36(clause_DeleteSharedClauseList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	ld.d	$a1, $fp, 88
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	pcaddu18i	$ra, %call36(clause_DeleteSharedClauseList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	pcalau12i	$a1, %pc_hi20(term_DeleteTermList)
	addi.d	$a1, $a1, %pc_lo12(term_DeleteTermList)
	pcaddu18i	$ra, %call36(list_DeleteAssocListWithValues)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 120
	st.d	$zero, $fp, 24
	beqz	$s2, .LBB3_10
# %bb.4:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s1, $a0, %got_pc_lo12(memory_FREEDBYTES)
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                # %prfs_SplitDelete.exit
                                        #   in Loop: Header=BB3_6 Depth=1
	ld.d	$a0, $s0, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s0, 256
	st.d	$s3, $a0, 0
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB3_8
.LBB3_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s2, 8
	ld.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 16
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	beqz	$a0, .LBB3_5
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB3_5
.LBB3_8:                                # %._crit_edge
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph.i46
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s1, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s0, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB3_9
.LBB3_10:                               # %list_Delete.exit50
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	prfs_InternalDelete, .Lfunc_end3-prfs_InternalDelete
                                        # -- End function
	.globl	prfs_Clean                      # -- Begin function prfs_Clean
	.p2align	5
	.type	prfs_Clean,@function
prfs_Clean:                             # @prfs_Clean
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(prfs_InternalDelete)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
	st.d	$zero, $fp, 96
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	vst	$vr0, $fp, 16
	vst	$vr0, $fp, 56
	vst	$vr0, $fp, 72
	st.d	$zero, $fp, 120
	vst	$vr0, $fp, 128
	vst	$vr0, $fp, 144
	ld.d	$a0, $fp, 104
	lu12i.w	$a1, -4
	ori	$a1, $a1, 384
	vrepli.w	$vr0, -42
	lu12i.w	$a3, 3
	ori	$a2, $a3, 3712
	ori	$a3, $a3, 3728
	.p2align	4, , 16
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $a1
	vstx	$vr0, $a4, $a2
	addi.d	$a1, $a1, 32
	vstx	$vr0, $a4, $a3
	bnez	$a1, .LBB4_1
# %bb.2:                                # %symbol_ClearPrecedence.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	prfs_Clean, .Lfunc_end4-prfs_Clean
                                        # -- End function
	.globl	prfs_SwapIndexes                # -- Begin function prfs_SwapIndexes
	.p2align	5
	.type	prfs_SwapIndexes,@function
prfs_SwapIndexes:                       # @prfs_SwapIndexes
# %bb.0:
	vld	$vr0, $a0, 48
	ld.d	$a1, $a0, 40
	vld	$vr1, $a0, 32
	ld.d	$a2, $a0, 56
	vst	$vr0, $a0, 32
	vst	$vr1, $a0, 48
	bnez	$a1, .LBB5_5
# %bb.1:                                # %.preheader
	beqz	$a2, .LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, 8
	ld.w	$a1, $a0, 48
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 48
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB5_2
.LBB5_3:                                # %._crit_edge
	ret
	.p2align	4, , 16
.LBB5_4:                                # %clause_RemoveFlag.exit
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB5_7
.LBB5_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 8
	ld.wu	$a3, $a2, 48
	andi	$a4, $a3, 1
	beqz	$a4, .LBB5_4
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	addi.d	$a3, $a3, -1
	st.w	$a3, $a2, 48
	b	.LBB5_4
.LBB5_7:                                # %.preheader.loopexit
	ld.d	$a2, $a0, 40
	bnez	$a2, .LBB5_2
	b	.LBB5_3
.Lfunc_end5:
	.size	prfs_SwapIndexes, .Lfunc_end5-prfs_SwapIndexes
                                        # -- End function
	.globl	prfs_Create                     # -- Begin function prfs_Create
	.p2align	5
	.type	prfs_Create,@function
prfs_Create:                            # @prfs_Create
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 160
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 8
	pcaddu18i	$ra, %call36(sharing_IndexCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	st.d	$zero, $fp, 40
	pcaddu18i	$ra, %call36(sharing_IndexCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	st.d	$zero, $fp, 24
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 56
	vst	$vr0, $fp, 72
	lu12i.w	$s1, 3
	ori	$s0, $s1, 3712
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, -4
	ori	$a1, $a1, 384
	vrepli.w	$vr0, -42
	ori	$a2, $s1, 3728
	.p2align	4, , 16
.LBB6_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	vstx	$vr0, $a3, $s0
	addi.d	$a1, $a1, 32
	vstx	$vr0, $a3, $a2
	bnez	$a1, .LBB6_1
# %bb.2:                                # %symbol_CreatePrecedence.exit
	st.d	$a0, $fp, 104
	ori	$a0, $zero, 384
	ori	$s3, $zero, 384
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(flag_CLEAN)
	ld.d	$a0, $a0, %got_pc_lo12(flag_CLEAN)
	vldrepl.w	$vr0, $a0, 0
	move	$s1, $zero
	move	$s4, $zero
	vst	$vr0, $s0, 0
	vst	$vr0, $s0, 16
	vst	$vr0, $s0, 32
	vst	$vr0, $s0, 48
	vst	$vr0, $s0, 64
	vst	$vr0, $s0, 80
	vst	$vr0, $s0, 96
	vst	$vr0, $s0, 112
	vst	$vr0, $s0, 128
	vst	$vr0, $s0, 144
	vst	$vr0, $s0, 160
	vst	$vr0, $s0, 176
	vst	$vr0, $s0, 192
	vst	$vr0, $s0, 208
	vst	$vr0, $s0, 224
	vst	$vr0, $s0, 240
	vst	$vr0, $s0, 256
	vst	$vr0, $s0, 272
	vst	$vr0, $s0, 288
	vst	$vr0, $s0, 304
	vst	$vr0, $s0, 320
	vst	$vr0, $s0, 336
	vst	$vr0, $s0, 352
	vst	$vr0, $s0, 368
	st.d	$s0, $fp, 112
	.p2align	4, , 16
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(flag_DefaultStore)
	jirl	$ra, $ra, 0
	ldx.w	$s2, $a0, $s4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(flag_Minimum)
	jirl	$ra, $ra, 0
	bge	$a0, $s2, .LBB6_8
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(flag_Maximum)
	jirl	$ra, $ra, 0
	bge	$s2, $a0, .LBB6_7
# %bb.5:                                # %flag_SetFlagValue.exit.i
                                        #   in Loop: Header=BB6_3 Depth=1
	stx.w	$s2, $s0, $s4
	addi.d	$s4, $s4, 4
	addi.w	$s1, $s1, 1
	bne	$s4, $s3, .LBB6_3
# %bb.6:                                # %flag_InitStoreByDefaults.exit
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 88
	st.d	$zero, $fp, 120
	vst	$vr0, $fp, 128
	vst	$vr0, $fp, 144
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
.LBB6_7:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(flag_Name)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.LBB6_8:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(flag_Name)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	prfs_Create, .Lfunc_end6-prfs_Create
                                        # -- End function
	.globl	prfs_CopyIndices                # -- Begin function prfs_CopyIndices
	.p2align	5
	.type	prfs_CopyIndices,@function
prfs_CopyIndices:                       # @prfs_CopyIndices
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 88
	move	$fp, $a1
	beqz	$a0, .LBB7_3
# %bb.1:
	ld.d	$a0, $fp, 88
	bnez	$a0, .LBB7_3
# %bb.2:
	pcaddu18i	$ra, %call36(sharing_IndexCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 88
.LBB7_3:
	ld.d	$s2, $s0, 56
	beqz	$s2, .LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	move	$s1, $a0
	pcaddu18i	$ra, %call36(clause_InsertWeighed)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	st.d	$a0, $fp, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_InsertIntoSharing)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB7_4
.LBB7_5:                                # %._crit_edge
	ld.d	$s2, $s0, 40
	beqz	$s2, .LBB7_7
	.p2align	4, , 16
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $a0, 48
	ori	$a0, $a0, 1
	st.w	$a0, $s1, 48
	ld.d	$s3, $fp, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s3, $a0, 0
	ld.d	$a1, $fp, 32
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	st.d	$a0, $fp, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_InsertIntoSharing)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(prfs_InsertInSortTheories)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB7_6
.LBB7_7:                                # %._crit_edge48
	ld.d	$s1, $s0, 96
	bnez	$s1, .LBB7_9
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=1
	ld.d	$s2, $fp, 96
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s2, $a0, 0
	ld.d	$a1, $fp, 88
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	st.d	$a0, $fp, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_InsertIntoSharing)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB7_11
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 88
	bnez	$a1, .LBB7_8
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB7_9
.LBB7_11:                               # %._crit_edge54
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	prfs_CopyIndices, .Lfunc_end7-prfs_CopyIndices
                                        # -- End function
	.globl	prfs_InsertUsableClause         # -- Begin function prfs_InsertUsableClause
	.p2align	5
	.type	prfs_InsertUsableClause,@function
prfs_InsertUsableClause:                # @prfs_InsertUsableClause
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a4, $a0, 56
	ld.d	$a2, $a0, 112
	ld.d	$a3, $a0, 104
	move	$s0, $a1
	move	$a0, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(clause_InsertWeighed)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	st.d	$a0, $fp, 56
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_InsertIntoSharing)
	jr	$t8
.Lfunc_end8:
	.size	prfs_InsertUsableClause, .Lfunc_end8-prfs_InsertUsableClause
                                        # -- End function
	.globl	prfs_InsertWorkedOffClause      # -- Begin function prfs_InsertWorkedOffClause
	.p2align	5
	.type	prfs_InsertWorkedOffClause,@function
prfs_InsertWorkedOffClause:             # @prfs_InsertWorkedOffClause
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a1, $a1, 48
	move	$s0, $a0
	ori	$a0, $a1, 1
	st.w	$a0, $fp, 48
	ld.d	$s1, $s0, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s1, $a0, 0
	ld.d	$a1, $s0, 32
	ld.d	$a2, $s0, 112
	ld.d	$a3, $s0, 104
	st.d	$a0, $s0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_InsertIntoSharing)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(prfs_InsertInSortTheories)
	jr	$t8
.Lfunc_end9:
	.size	prfs_InsertWorkedOffClause, .Lfunc_end9-prfs_InsertWorkedOffClause
                                        # -- End function
	.globl	prfs_InsertDocProofClause       # -- Begin function prfs_InsertDocProofClause
	.p2align	5
	.type	prfs_InsertDocProofClause,@function
prfs_InsertDocProofClause:              # @prfs_InsertDocProofClause
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a2, $a0, 88
	move	$fp, $a1
	beqz	$a2, .LBB10_2
# %bb.1:
	ld.d	$s0, $a0, 96
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s0, $a0, 0
	ld.d	$a1, $s1, 88
	ld.d	$a2, $s1, 112
	ld.d	$a3, $s1, 104
	st.d	$a0, $s1, 96
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_InsertIntoSharing)
	jr	$t8
.LBB10_2:
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_Delete)
	jr	$t8
.Lfunc_end10:
	.size	prfs_InsertDocProofClause, .Lfunc_end10-prfs_InsertDocProofClause
                                        # -- End function
	.p2align	5                               # -- Begin function prfs_InsertInSortTheories
	.type	prfs_InsertInSortTheories,@function
prfs_InsertInSortTheories:              # @prfs_InsertInSortTheories
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
	ld.d	$a0, $a0, 80
	move	$s0, $a1
	bnez	$a0, .LBB11_2
# %bb.1:
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB11_18
.LBB11_2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_IsDeclarationClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_18
# %bb.3:
	ld.w	$a0, $s0, 72
	blez	$a0, .LBB11_18
# %bb.4:                                # %.lr.ph77
	ld.w	$a1, $s0, 68
	ld.w	$a2, $s0, 64
	add.w	$s2, $a1, $a2
	add.w	$s3, $s2, $a0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.w	$s4, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s5, $a0, %got_pc_lo12(symbol_SIGNATURE)
	ori	$s6, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	b	.LBB11_6
	.p2align	4, , 16
.LBB11_5:                               # %.loopexit
                                        #   in Loop: Header=BB11_6 Depth=1
	addi.d	$s2, $s2, 1
	bge	$s2, $s3, .LBB11_18
.LBB11_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_10 Depth 2
                                        #     Child Loop BB11_12 Depth 2
                                        #     Child Loop BB11_17 Depth 2
	ld.d	$a0, $s0, 56
	slli.d	$s1, $s2, 3
	ldx.d	$a0, $a0, $s1
	ld.bu	$a1, $a0, 0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_5
# %bb.7:                                #   in Loop: Header=BB11_6 Depth=1
	ld.d	$a0, $a0, 24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s5, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $s4
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 16
	bne	$a0, $s6, .LBB11_5
# %bb.8:                                #   in Loop: Header=BB11_6 Depth=1
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB11_14
# %bb.9:                                #   in Loop: Header=BB11_6 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB11_11
	.p2align	4, , 16
.LBB11_10:                              # %.lr.ph.i
                                        #   Parent Loop BB11_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a3, $a1, 32
	ld.d	$a4, $s8, 0
	ld.d	$a5, $a0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a5
	bnez	$a5, .LBB11_10
.LBB11_11:                              # %list_Delete.exit
                                        #   in Loop: Header=BB11_6 Depth=1
	ld.d	$a0, $a2, 40
	st.d	$zero, $a2, 32
	beqz	$a0, .LBB11_13
	.p2align	4, , 16
.LBB11_12:                              # %.lr.ph.i65
                                        #   Parent Loop BB11_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a3, $a1, 32
	ld.d	$a4, $s8, 0
	ld.d	$a5, $a0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a5
	bnez	$a5, .LBB11_12
.LBB11_13:                              # %list_Delete.exit69
                                        #   in Loop: Header=BB11_6 Depth=1
	st.d	$zero, $a2, 40
	ld.w	$a0, $s0, 0
	ld.d	$a1, $a2, 56
	st.w	$a0, $a2, 0
	ld.d	$a0, $fp, 80
	ldx.d	$a3, $a1, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(sort_TheoryInsertClause)
	jirl	$ra, $ra, 0
.LBB11_14:                              #   in Loop: Header=BB11_6 Depth=1
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB11_5
# %bb.15:                               #   in Loop: Header=BB11_6 Depth=1
	ld.d	$a1, $fp, 112
	ld.d	$a2, $fp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sort_ApproxMaxDeclClauses)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_5
# %bb.16:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB11_6 Depth=1
	move	$s1, $a0
	.p2align	4, , 16
.LBB11_17:                              # %.lr.ph
                                        #   Parent Loop BB11_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s1, 8
	ld.w	$a1, $a2, 64
	ld.w	$a3, $a2, 68
	ld.d	$a4, $a2, 56
	ld.d	$a0, $fp, 72
	add.w	$a1, $a3, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a4, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(sort_TheoryInsertClause)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s7, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	bnez	$a3, .LBB11_17
	b	.LBB11_5
.LBB11_18:                              # %.loopexit73
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
.Lfunc_end11:
	.size	prfs_InsertInSortTheories, .Lfunc_end11-prfs_InsertInSortTheories
                                        # -- End function
	.globl	prfs_MoveUsableWorkedOff        # -- Begin function prfs_MoveUsableWorkedOff
	.p2align	5
	.type	prfs_MoveUsableWorkedOff,@function
prfs_MoveUsableWorkedOff:               # @prfs_MoveUsableWorkedOff
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	move	$s0, $a1
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
	ld.w	$a0, $s0, 48
	ori	$a0, $a0, 1
	st.w	$a0, $s0, 48
	ld.d	$a1, $fp, 48
	ld.d	$a2, $fp, 32
	ld.d	$a3, $fp, 112
	ld.d	$a4, $fp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_MoveSharedClause)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $fp, 40
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(prfs_InsertInSortTheories)
	jr	$t8
.Lfunc_end12:
	.size	prfs_MoveUsableWorkedOff, .Lfunc_end12-prfs_MoveUsableWorkedOff
                                        # -- End function
	.globl	prfs_MoveWorkedOffDocProof      # -- Begin function prfs_MoveWorkedOffDocProof
	.p2align	5
	.type	prfs_MoveWorkedOffDocProof,@function
prfs_MoveWorkedOffDocProof:             # @prfs_MoveWorkedOffDocProof
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_IsDeclarationClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_5
# %bb.1:
	ld.d	$a0, $s0, 80
	beqz	$a0, .LBB13_3
# %bb.2:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sort_TheoryDeleteClause)
	jirl	$ra, $ra, 0
.LBB13_3:
	ld.d	$a0, $s0, 72
	beqz	$a0, .LBB13_5
# %bb.4:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sort_TheoryDeleteClause)
	jirl	$ra, $ra, 0
.LBB13_5:                               # %prfs_DeleteFromSortTheories.exit
	ld.d	$a0, $s0, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 40
	ld.wu	$a0, $fp, 48
	andi	$a1, $a0, 1
	beqz	$a1, .LBB13_7
# %bb.6:
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 48
.LBB13_7:                               # %clause_RemoveFlag.exit
	ld.d	$a2, $s0, 88
	ld.d	$a1, $s0, 32
	ld.d	$a3, $s0, 112
	ld.d	$a4, $s0, 104
	beqz	$a2, .LBB13_9
# %bb.8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_MoveSharedClause)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 96
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s0, 96
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB13_9:
	move	$a0, $fp
	move	$a2, $a3
	move	$a3, $a4
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_DeleteFromSharing)
	jr	$t8
.Lfunc_end13:
	.size	prfs_MoveWorkedOffDocProof, .Lfunc_end13-prfs_MoveWorkedOffDocProof
                                        # -- End function
	.globl	prfs_MoveUsableDocProof         # -- Begin function prfs_MoveUsableDocProof
	.p2align	5
	.type	prfs_MoveUsableDocProof,@function
prfs_MoveUsableDocProof:                # @prfs_MoveUsableDocProof
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	move	$s0, $a1
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 88
	ld.d	$a1, $fp, 48
	ld.d	$a3, $fp, 112
	ld.d	$a4, $fp, 104
	st.d	$a0, $fp, 56
	beqz	$a2, .LBB14_2
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_MoveSharedClause)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 96
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $fp, 96
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB14_2:
	move	$a0, $s0
	move	$a2, $a3
	move	$a3, $a4
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_DeleteFromSharing)
	jr	$t8
.Lfunc_end14:
	.size	prfs_MoveUsableDocProof, .Lfunc_end14-prfs_MoveUsableDocProof
                                        # -- End function
	.globl	prfs_MoveInvalidClausesDocProof # -- Begin function prfs_MoveInvalidClausesDocProof
	.p2align	5
	.type	prfs_MoveInvalidClausesDocProof,@function
prfs_MoveInvalidClausesDocProof:        # @prfs_MoveInvalidClausesDocProof
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 40
	beqz	$s1, .LBB15_8
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               #   in Loop: Header=BB15_3 Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB15_5
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s1, 8
	ld.w	$a0, $fp, 128
	ld.w	$a1, $s2, 12
	bgeu	$a0, $a1, .LBB15_2
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s0, $a0, 0
	move	$s0, $a0
	b	.LBB15_2
.LBB15_5:                               # %.preheader45
	beqz	$s0, .LBB15_8
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s1, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s2, $a0, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB15_7:                               # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(prfs_MoveWorkedOffDocProof)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s2, 0
	ld.d	$a3, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s1, 128
	st.d	$s0, $a0, 0
	move	$s0, $a3
	bnez	$a3, .LBB15_7
.LBB15_8:                               # %._crit_edge
	ld.d	$s0, $fp, 56
	beqz	$s0, .LBB15_19
# %bb.9:                                # %.lr.ph58
	move	$s1, $zero
	b	.LBB15_11
	.p2align	4, , 16
.LBB15_10:                              #   in Loop: Header=BB15_11 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB15_13
.LBB15_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s0, 8
	ld.w	$a0, $fp, 128
	ld.w	$a1, $s2, 12
	bgeu	$a0, $a1, .LBB15_10
# %bb.12:                               #   in Loop: Header=BB15_11 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
	b	.LBB15_10
.LBB15_13:                              # %.preheader
	beqz	$s1, .LBB15_19
# %bb.14:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s3, $a0, %got_pc_lo12(memory_FREEDBYTES)
	b	.LBB15_17
	.p2align	4, , 16
.LBB15_15:                              #   in Loop: Header=BB15_17 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_MoveSharedClause)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 96
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s4, $a0, 0
	st.d	$a0, $fp, 96
.LBB15_16:                              # %prfs_MoveUsableDocProof.exit
                                        #   in Loop: Header=BB15_17 Depth=1
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s3, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s2, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	beqz	$a3, .LBB15_19
.LBB15_17:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s1, 8
	ld.d	$a0, $fp, 56
	move	$a1, $s0
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 88
	ld.d	$a1, $fp, 48
	ld.d	$a3, $fp, 112
	ld.d	$a4, $fp, 104
	st.d	$a0, $fp, 56
	bnez	$a2, .LBB15_15
# %bb.18:                               #   in Loop: Header=BB15_17 Depth=1
	move	$a0, $s0
	move	$a2, $a3
	move	$a3, $a4
	pcaddu18i	$ra, %call36(clause_DeleteFromSharing)
	jirl	$ra, $ra, 0
	b	.LBB15_16
.LBB15_19:                              # %._crit_edge63
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end15:
	.size	prfs_MoveInvalidClausesDocProof, .Lfunc_end15-prfs_MoveInvalidClausesDocProof
                                        # -- End function
	.globl	prfs_ExtractWorkedOff           # -- Begin function prfs_ExtractWorkedOff
	.p2align	5
	.type	prfs_ExtractWorkedOff,@function
prfs_ExtractWorkedOff:                  # @prfs_ExtractWorkedOff
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_IsDeclarationClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_5
# %bb.1:
	ld.d	$a0, $s0, 80
	beqz	$a0, .LBB16_3
# %bb.2:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sort_TheoryDeleteClause)
	jirl	$ra, $ra, 0
.LBB16_3:
	ld.d	$a0, $s0, 72
	beqz	$a0, .LBB16_5
# %bb.4:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sort_TheoryDeleteClause)
	jirl	$ra, $ra, 0
.LBB16_5:                               # %prfs_DeleteFromSortTheories.exit
	ld.wu	$a0, $fp, 48
	andi	$a1, $a0, 1
	beqz	$a1, .LBB16_7
# %bb.6:
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 48
.LBB16_7:                               # %clause_RemoveFlag.exit
	ld.d	$a0, $s0, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 32
	st.d	$a0, $s0, 40
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_MakeUnshared)
	jr	$t8
.Lfunc_end16:
	.size	prfs_ExtractWorkedOff, .Lfunc_end16-prfs_ExtractWorkedOff
                                        # -- End function
	.globl	prfs_ExtractUsable              # -- Begin function prfs_ExtractUsable
	.p2align	5
	.type	prfs_ExtractUsable,@function
prfs_ExtractUsable:                     # @prfs_ExtractUsable
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	move	$s0, $a1
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	st.d	$a0, $fp, 56
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_MakeUnshared)
	jr	$t8
.Lfunc_end17:
	.size	prfs_ExtractUsable, .Lfunc_end17-prfs_ExtractUsable
                                        # -- End function
	.globl	prfs_ExtractDocProof            # -- Begin function prfs_ExtractDocProof
	.p2align	5
	.type	prfs_ExtractDocProof,@function
prfs_ExtractDocProof:                   # @prfs_ExtractDocProof
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 96
	move	$s0, $a1
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 88
	st.d	$a0, $fp, 96
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_MakeUnshared)
	jr	$t8
.Lfunc_end18:
	.size	prfs_ExtractDocProof, .Lfunc_end18-prfs_ExtractDocProof
                                        # -- End function
	.globl	prfs_DeleteWorkedOff            # -- Begin function prfs_DeleteWorkedOff
	.p2align	5
	.type	prfs_DeleteWorkedOff,@function
prfs_DeleteWorkedOff:                   # @prfs_DeleteWorkedOff
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_IsDeclarationClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_5
# %bb.1:
	ld.d	$a0, $s0, 80
	beqz	$a0, .LBB19_3
# %bb.2:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sort_TheoryDeleteClause)
	jirl	$ra, $ra, 0
.LBB19_3:
	ld.d	$a0, $s0, 72
	beqz	$a0, .LBB19_5
# %bb.4:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sort_TheoryDeleteClause)
	jirl	$ra, $ra, 0
.LBB19_5:                               # %prfs_DeleteFromSortTheories.exit
	ld.d	$a0, $s0, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 32
	ld.d	$a2, $s0, 112
	ld.d	$a3, $s0, 104
	st.d	$a0, $s0, 40
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_DeleteFromSharing)
	jr	$t8
.Lfunc_end19:
	.size	prfs_DeleteWorkedOff, .Lfunc_end19-prfs_DeleteWorkedOff
                                        # -- End function
	.globl	prfs_DeleteUsable               # -- Begin function prfs_DeleteUsable
	.p2align	5
	.type	prfs_DeleteUsable,@function
prfs_DeleteUsable:                      # @prfs_DeleteUsable
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	move	$s0, $a1
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	ld.d	$a2, $fp, 112
	ld.d	$a3, $fp, 104
	st.d	$a0, $fp, 56
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_DeleteFromSharing)
	jr	$t8
.Lfunc_end20:
	.size	prfs_DeleteUsable, .Lfunc_end20-prfs_DeleteUsable
                                        # -- End function
	.globl	prfs_PrintSplit                 # -- Begin function prfs_PrintSplit
	.p2align	5
	.type	prfs_PrintSplit,@function
prfs_PrintSplit:                        # @prfs_PrintSplit
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB21_2
# %bb.1:
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	b	.LBB21_3
.LBB21_2:
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB21_3:
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB21_5
	.p2align	4, , 16
.LBB21_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB21_4
.LBB21_5:                               # %._crit_edge
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB21_7
	.p2align	4, , 16
.LBB21_6:                               # %.lr.ph32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB21_6
.LBB21_7:                               # %._crit_edge33
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end21:
	.size	prfs_PrintSplit, .Lfunc_end21-prfs_PrintSplit
                                        # -- End function
	.globl	prfs_PrintSplitStack            # -- Begin function prfs_PrintSplitStack
	.p2align	5
	.type	prfs_PrintSplitStack,@function
prfs_PrintSplitStack:                   # @prfs_PrintSplitStack
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 120
	beqz	$s1, .LBB22_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$fp, $a0, %pc_lo12(.L.str.9)
	.p2align	4, , 16
.LBB22_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(prfs_PrintSplit)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB22_2
.LBB22_3:                               # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	prfs_PrintSplitStack, .Lfunc_end22-prfs_PrintSplitStack
                                        # -- End function
	.globl	prfs_Print                      # -- Begin function prfs_Print
	.p2align	5
	.type	prfs_Print,@function
prfs_Print:                             # @prfs_Print
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a1, $a0, 128
	ld.w	$a2, $a0, 132
	ld.w	$a3, $a0, 136
	ld.w	$a4, $a0, 148
	ld.w	$a5, $a0, 152
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 156
	beqz	$a1, .LBB23_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB23_3
.LBB23_2:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB23_3:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s2, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB23_6
# %bb.4:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s0, $a0, %pc_lo12(.L.str.14)
	.p2align	4, , 16
.LBB23_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB23_5
.LBB23_6:                               # %._crit_edge
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	beqz	$s0, .LBB23_8
	.p2align	4, , 16
.LBB23_7:                               # %.lr.ph71
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(term_Print)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB23_7
.LBB23_8:                               # %._crit_edge72
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 40
	beqz	$s0, .LBB23_10
	.p2align	4, , 16
.LBB23_9:                               # %.lr.ph77
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB23_9
.LBB23_10:                              # %._crit_edge78
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 56
	beqz	$s0, .LBB23_12
	.p2align	4, , 16
.LBB23_11:                              # %.lr.ph83
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB23_11
.LBB23_12:                              # %._crit_edge84
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 24
	beqz	$s3, .LBB23_15
# %bb.13:                               # %.lr.ph89.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s0, $a0, %pc_lo12(.L.str.19)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s1, $a0, %pc_lo12(.L.str.20)
	.p2align	4, , 16
.LBB23_14:                              # %.lr.ph89
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	ld.w	$a0, $a0, 8
	pcaddu18i	$ra, %call36(symbol_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(term_TermListPrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB23_14
.LBB23_15:                              # %._crit_edge90
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 120
	beqz	$s1, .LBB23_18
# %bb.16:                               # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s0, $a0, %pc_lo12(.L.str.9)
	.p2align	4, , 16
.LBB23_17:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(prfs_PrintSplit)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB23_17
.LBB23_18:                              # %prfs_PrintSplitStack.exit
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(sort_TheoryPrint)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(sort_TheoryPrint)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(sort_TheoryPrint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.Lfunc_end23:
	.size	prfs_Print, .Lfunc_end23-prfs_Print
                                        # -- End function
	.globl	prfs_DoSplitting                # -- Begin function prfs_DoSplitting
	.p2align	5
	.type	prfs_DoSplitting,@function
prfs_DoSplitting:                       # @prfs_DoSplitting
# %bb.0:
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
	move	$fp, $a0
	ld.w	$a0, $a0, 136
	ld.w	$a3, $fp, 128
	move	$s4, $a2
	move	$s0, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 136
	addi.d	$a0, $a3, 1
	st.w	$a0, $fp, 128
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 128
	move	$s1, $a0
	st.w	$a1, $a0, 0
	st.w	$zero, $a0, 20
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 4
	st.d	$s0, $a0, 24
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 64
	ld.w	$a2, $s0, 68
	ld.w	$a3, $s0, 72
	move	$s5, $a0
	sub.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	add.w	$s3, $a0, $a3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_CreateBody)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_CreateBody)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a0, %got_pc_lo12(clause_CLAUSECOUNTER)
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, -1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.w	$a0, $a1, 0
	st.w	$zero, $s3, 0
	ld.w	$a0, $s0, 64
	ld.w	$a1, $s0, 68
	ld.w	$a2, $s0, 72
	addi.w	$a3, $a0, -1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	add.w	$a3, $a3, $a1
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	add.w	$a3, $a3, $a2
	bltz	$a3, .LBB24_16
# %bb.1:                                # %.lr.ph
	beqz	$s4, .LBB24_14
# %bb.2:                                # %.lr.ph.split.preheader
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	move	$s7, $zero
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	bstrpick.d	$s8, $a0, 31, 0
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_3:                               # %list_PointerMember.exit.thread
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a1, $s3, 56
	sub.w	$a2, $fp, $s7
	slli.d	$a2, $a2, 3
	stx.d	$a0, $a1, $a2
	st.d	$s3, $a0, 16
	ld.w	$s4, $s0, 0
	ld.d	$s6, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s6, $a0, 0
	ld.d	$s4, $s3, 40
	st.d	$a0, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s4, $a0, 0
	st.d	$a0, $s3, 40
.LBB24_4:                               #   in Loop: Header=BB24_5 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s8, .LBB24_17
.LBB24_5:                               # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_7 Depth 2
	ld.d	$a0, $s0, 56
	slli.d	$a1, $fp, 3
	ldx.d	$s6, $a0, $a1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_LiteralCopy)
	jirl	$ra, $ra, 0
	blez	$s5, .LBB24_3
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB24_7:                               # %.lr.ph.i
                                        #   Parent Loop BB24_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 8
	beq	$s6, $a2, .LBB24_9
# %bb.8:                                #   in Loop: Header=BB24_7 Depth=2
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB24_7
	b	.LBB24_3
	.p2align	4, , 16
.LBB24_9:                               # %list_PointerMember.exit
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a1, $s2, 56
	slli.d	$a2, $s7, 3
	stx.d	$a0, $a1, $a2
	st.d	$s2, $a0, 16
	ld.w	$s6, $s0, 0
	ld.d	$s4, $s2, 32
	addi.w	$s5, $s5, -1
	addi.w	$s7, $s7, 1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$s4, $s2, 40
	st.d	$a0, $s2, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s4, $a0, 0
	st.d	$a0, $s2, 40
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB24_12
# %bb.10:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bge	$a0, $fp, .LBB24_13
# %bb.11:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB24_4
.LBB24_12:                              #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB24_4
.LBB24_13:                              #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB24_4
.LBB24_14:                              # %list_PointerMember.exit.thread.us.preheader
	move	$fp, $zero
	move	$s4, $zero
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	bstrpick.d	$s5, $a0, 31, 0
	.p2align	4, , 16
.LBB24_15:                              # %list_PointerMember.exit.thread.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(clause_LiteralCopy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	stx.d	$a0, $a1, $fp
	st.d	$s3, $a0, 16
	ld.w	$s6, $s0, 0
	ld.d	$s7, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s7, $a0, 0
	ld.d	$s6, $s3, 40
	st.d	$a0, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $s3, 40
	addi.d	$s4, $s4, 1
	addi.d	$fp, $fp, 8
	bne	$s5, $s4, .LBB24_15
.LBB24_16:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
.LBB24_17:                              # %._crit_edge
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a1, $s2, 64
	ld.w	$a0, $s0, 64
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s3, 64
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $s2, 68
	ld.w	$a0, $s0, 68
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s3, 68
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $s2, 72
	ld.w	$a0, $s0, 72
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s3, 72
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $s6, 112
	ld.d	$s5, $s6, 104
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromNewSplitting)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 40
	ori	$fp, $zero, 15
	st.w	$fp, $s3, 76
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 40
	ld.w	$a0, $s0, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 8
	ld.d	$s4, $s1, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s4, $a0, 0
	st.d	$a0, $s1, 8
	st.d	$zero, $s1, 16
	ld.d	$s3, $s6, 120
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s3, $a0, 0
	ld.d	$s3, $s6, 112
	ld.d	$s4, $s6, 104
	st.d	$a0, $s6, 120
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromNewSplitting)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	st.w	$fp, $s2, 76
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s2, 40
	ld.w	$a1, $s0, 8
	ld.wu	$a0, $s2, 48
	addi.d	$a1, $a1, 1
	andi	$a2, $a0, 1
	st.w	$a1, $s2, 8
	beqz	$a2, .LBB24_19
# %bb.18:
	addi.d	$a0, $a0, -1
	st.w	$a0, $s2, 48
.LBB24_19:                              # %clause_RemoveFlag.exit
	ld.w	$a0, $s2, 52
	bnez	$a0, .LBB24_30
# %bb.20:
	ld.w	$a1, $s2, 64
	ld.w	$a2, $s2, 68
	ld.w	$a0, $s2, 72
	add.d	$a1, $a1, $a2
	addi.w	$a2, $a1, -1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	add.w	$a2, $a2, $a0
	bltz	$a2, .LBB24_30
# %bb.21:                               # %.lr.ph208
	add.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s6, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$fp, $zero
	.p2align	4, , 16
.LBB24_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_28 Depth 2
	ld.d	$a0, $s2, 56
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB24_24
# %bb.23:                               #   in Loop: Header=BB24_22 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB24_24:                              # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB24_22 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 112
	ld.d	$a4, $a0, 104
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB24_26
# %bb.25:                               #   in Loop: Header=BB24_22 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	move	$a2, $zero
	b	.LBB24_27
	.p2align	4, , 16
.LBB24_26:                              #   in Loop: Header=BB24_22 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $s5
.LBB24_27:                              #   in Loop: Header=BB24_22 Depth=1
	pcaddu18i	$ra, %call36(clause_Create)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $s4, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, -1
	st.w	$a0, $a1, 0
	.p2align	4, , 16
.LBB24_28:                              # %.lr.ph.i187
                                        #   Parent Loop BB24_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s7, 128
	st.d	$s5, $a0, 0
	move	$s5, $a3
	bnez	$a3, .LBB24_28
# %bb.29:                               # %list_Delete.exit
                                        #   in Loop: Header=BB24_22 Depth=1
	ori	$a0, $zero, 15
	st.w	$a0, $s4, 76
	ld.w	$a2, $s1, 0
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromNewSplitting)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s2, 0
	ld.d	$s8, $s4, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s8, $a0, 0
	ld.d	$s5, $s4, 40
	st.d	$a0, $s4, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$a0, $s4, 40
	ld.w	$s5, $s0, 0
	ld.d	$s8, $s4, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s8, $a0, 0
	st.d	$a0, $s4, 32
	ld.w	$s5, $s3, 8
	ld.d	$s8, $s4, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s8, $a0, 0
	st.d	$a0, $s4, 40
	ld.d	$s3, $s3, 0
	ld.d	$s5, $s1, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s5, $a0, 0
	addi.d	$fp, $fp, 1
	st.d	$a0, $s1, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bne	$fp, $a0, .LBB24_22
.LBB24_30:                              # %.loopexit
	move	$a0, $s2
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
.Lfunc_end24:
	.size	prfs_DoSplitting, .Lfunc_end24-prfs_DoSplitting
                                        # -- End function
	.p2align	5                               # -- Begin function clause_UpdateSplitDataFromNewSplitting
	.type	clause_UpdateSplitDataFromNewSplitting,@function
clause_UpdateSplitDataFromNewSplitting: # @clause_UpdateSplitDataFromNewSplitting
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 63
	sltu	$a0, $a0, $a2
	addi.d	$a2, $a2, -64
	ld.w	$a1, $s0, 24
	bstrpick.d	$a2, $a2, 31, 6
	addi.d	$a2, $a2, 1
	maskeqz	$s2, $a2, $a0
	st.w	$fp, $s0, 12
	bgeu	$s2, $a1, .LBB25_6
# %bb.1:
	ld.bu	$a0, $s1, 48
	andi	$a0, $a0, 8
	bnez	$a0, .LBB25_16
.LBB25_2:
	ld.w	$a0, $s1, 24
	beqz	$a0, .LBB25_17
.LBB25_3:                               # %.lr.ph
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB25_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 16
	ldx.d	$a0, $a0, $a1
	ld.d	$a3, $s0, 16
	stx.d	$a0, $a3, $a1
	ld.wu	$a0, $s1, 24
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bltu	$a2, $a0, .LBB25_4
# %bb.5:                                # %.preheader
	ld.w	$a1, $s0, 24
	addi.w	$a2, $a0, 0
	bltu	$a2, $a1, .LBB25_18
	b	.LBB25_20
.LBB25_6:
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB25_15
# %bb.7:
	ori	$a3, $zero, 128
	slli.w	$a2, $a1, 3
	bgeu	$a1, $a3, .LBB25_9
# %bb.8:
	slli.d	$a1, $a2, 3
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	ldx.d	$a3, $a2, $a1
	ld.w	$a4, $a3, 32
	pcalau12i	$a5, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a5, $a5, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a6, $a5, 0
	add.d	$a4, $a6, $a4
	st.d	$a4, $a5, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
	b	.LBB25_15
.LBB25_9:
	pcalau12i	$a1, %got_pc_hi20(memory_ALIGN)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ALIGN)
	ld.w	$a1, $a1, 0
	mod.wu	$a3, $a2, $a1
	sltui	$a4, $a3, 1
	sub.d	$a1, $a1, $a3
	masknez	$a1, $a1, $a4
	add.w	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(memory_OFFSET)
	ld.d	$a2, $a2, %got_pc_lo12(memory_OFFSET)
	ld.wu	$a2, $a2, 0
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	beqz	$a4, .LBB25_21
# %bb.10:
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB25_12
.LBB25_11:
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB25_12:
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a2, 0
	add.d	$a1, $a1, $a2
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
	bltz	$a3, .LBB25_14
# %bb.13:
	add.d	$a1, $a3, $a1
	st.d	$a1, $a2, 0
.LBB25_14:
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB25_15:                              # %memory_Free.exit
	ori	$a0, $zero, 8
	alsl.w	$a0, $s2, $a0, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	addi.d	$a0, $s2, 1
	st.w	$a0, $s0, 24
	ld.bu	$a0, $s1, 48
	andi	$a0, $a0, 8
	beqz	$a0, .LBB25_2
.LBB25_16:
	ld.w	$a0, $s0, 48
	ori	$a0, $a0, 8
	st.w	$a0, $s0, 48
	ld.w	$a0, $s1, 24
	bnez	$a0, .LBB25_3
.LBB25_17:
	move	$a0, $zero
.LBB25_18:                              # %.lr.ph36
	slli.d	$a1, $a0, 3
	.p2align	4, , 16
.LBB25_19:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s0, 16
	stx.d	$zero, $a2, $a1
	ld.wu	$a2, $s0, 24
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bltu	$a0, $a2, .LBB25_19
.LBB25_20:                              # %._crit_edge
	ld.d	$a0, $s0, 16
	addi.w	$a1, $s2, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $a0, $a1
	ori	$a3, $zero, 1
	sll.d	$a3, $a3, $fp
	or	$a2, $a2, $a3
	stx.d	$a2, $a0, $a1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB25_21:
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB25_11
	b	.LBB25_12
.Lfunc_end25:
	.size	clause_UpdateSplitDataFromNewSplitting, .Lfunc_end25-clause_UpdateSplitDataFromNewSplitting
                                        # -- End function
	.globl	prfs_PerformSplitting           # -- Begin function prfs_PerformSplitting
	.p2align	5
	.type	prfs_PerformSplitting,@function
prfs_PerformSplitting:                  # @prfs_PerformSplitting
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
	move	$s5, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_49
# %bb.1:
	ld.w	$a0, $s5, 136
	beqz	$a0, .LBB26_49
# %bb.2:
	ld.w	$a0, $s4, 72
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB26_49
# %bb.3:                                # %.lr.ph.preheader.i.i
	ld.w	$a1, $s4, 68
	ld.w	$a2, $s4, 64
	add.w	$fp, $a2, $a1
	add.w	$s0, $fp, $a0
	slli.d	$s1, $fp, 3
	.p2align	4, , 16
.LBB26_4:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_IsGround)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB26_26
# %bb.5:                                #   in Loop: Header=BB26_4 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 8
	blt	$fp, $s0, .LBB26_4
# %bb.6:
	ld.w	$a0, $s4, 64
	ld.w	$a1, $s4, 68
	ld.w	$a2, $s4, 72
	add.d	$a0, $a0, $a1
	ld.d	$a1, $s4, 56
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	slli.d	$a0, $a0, 3
	ldx.d	$fp, $a1, $a0
	ld.d	$a0, $fp, 24
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a2, %got_pc_lo12(fol_NOT)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a2, $a2, 0
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	bne	$a1, $a2, .LBB26_8
# %bb.7:
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB26_8:                               # %clause_LiteralAtom.exit105.i
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	ld.w	$a0, $s4, 64
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $s4, 68
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $s4, 72
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s5, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s6, $a0, %got_pc_lo12(memory_FREEDBYTES)
	ori	$a3, $zero, 1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	b	.LBB26_10
	.p2align	4, , 16
.LBB26_9:                               # %.loopexit8.i
                                        #   in Loop: Header=BB26_10 Depth=1
	beqz	$fp, .LBB26_31
.LBB26_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_15 Depth 2
                                        #       Child Loop BB26_17 Depth 3
                                        #       Child Loop BB26_25 Depth 3
	ld.w	$a0, $s4, 64
	ld.w	$a1, $s4, 68
	ld.w	$a2, $s4, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$s7, $a0, -1
	blez	$s7, .LBB26_31
# %bb.11:                               # %.lr.ph18.preheader.i
                                        #   in Loop: Header=BB26_10 Depth=1
	move	$fp, $zero
	b	.LBB26_15
.LBB26_12:                              #   in Loop: Header=BB26_15 Depth=2
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
.LBB26_13:                              #   in Loop: Header=BB26_15 Depth=2
	ori	$a3, $zero, 1
.LBB26_14:                              # %list_PointerMember.exit.i
                                        #   in Loop: Header=BB26_15 Depth=2
	bge	$a3, $s0, .LBB26_9
.LBB26_15:                              # %.lr.ph18.i
                                        #   Parent Loop BB26_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_17 Depth 3
                                        #       Child Loop BB26_25 Depth 3
	ld.d	$a0, $s4, 56
	move	$s0, $s7
	addi.d	$s7, $s7, -1
	slli.d	$a1, $s7, 3
	ldx.d	$s8, $a0, $a1
	beqz	$s1, .LBB26_19
# %bb.16:                               # %.lr.ph.i109.i.preheader
                                        #   in Loop: Header=BB26_15 Depth=2
	move	$a0, $s1
	.p2align	4, , 16
.LBB26_17:                              # %.lr.ph.i109.i
                                        #   Parent Loop BB26_10 Depth=1
                                        #     Parent Loop BB26_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 8
	beq	$s8, $a1, .LBB26_14
# %bb.18:                               #   in Loop: Header=BB26_17 Depth=3
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB26_17
.LBB26_19:                              # %.loopexit.i
                                        #   in Loop: Header=BB26_15 Depth=2
	ld.d	$a0, $s8, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB26_21
# %bb.20:                               #   in Loop: Header=BB26_15 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB26_21:                              # %clause_LiteralAtom.exit117.i
                                        #   in Loop: Header=BB26_15 Depth=2
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_HasIntersection)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_23
# %bb.22:                               #   in Loop: Header=BB26_15 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_NPointerUnion)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$s8, $a0, 8
	st.d	$s1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	xor	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	ori	$a3, $zero, 1
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	move	$s1, $s3
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	blt	$a3, $s0, .LBB26_15
	b	.LBB26_9
	.p2align	4, , 16
.LBB26_23:                              #   in Loop: Header=BB26_15 Depth=2
	beqz	$s3, .LBB26_12
# %bb.24:                               # %.lr.ph.i119.i.preheader
                                        #   in Loop: Header=BB26_15 Depth=2
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB26_25:                              # %.lr.ph.i119.i
                                        #   Parent Loop BB26_10 Depth=1
                                        #     Parent Loop BB26_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s5, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s3, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s5, 128
	st.d	$s3, $a0, 0
	move	$s3, $a3
	bnez	$a3, .LBB26_25
	b	.LBB26_13
.LBB26_26:                              # %clause_HasGroundSuccLit.exit.i
	ld.w	$a0, $s4, 72
	blez	$a0, .LBB26_30
# %bb.27:                               # %.lr.ph.i89.i
	ld.w	$a1, $s4, 68
	ld.w	$a2, $s4, 64
	add.w	$s0, $a2, $a1
	add.w	$s1, $s0, $a0
	slli.d	$fp, $s0, 3
	.p2align	4, , 16
.LBB26_28:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_IsGround)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB26_51
# %bb.29:                               #   in Loop: Header=BB26_28 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	blt	$s0, $s1, .LBB26_28
.LBB26_30:
	move	$fp, $zero
	b	.LBB26_52
.LBB26_31:                              # %.loopexit8.thread.i
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.w	$fp, $a0, $a1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB26_35
# %bb.32:
	beqz	$s1, .LBB26_34
	.p2align	4, , 16
.LBB26_33:                              # %.lr.ph.i122.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	bnez	$a3, .LBB26_33
.LBB26_34:
	move	$s1, $zero
.LBB26_35:                              # %list_Delete.exit126.i
	ld.w	$a0, $s4, 64
	ld.w	$a1, $s4, 68
	add.d	$a0, $a1, $a0
	addi.w	$a1, $a0, 0
	bge	$a1, $fp, .LBB26_42
# %bb.36:                               # %.lr.ph25.i
	beqz	$s1, .LBB26_44
# %bb.37:                               # %.lr.ph.i128.preheader.preheader.i
	ld.d	$a1, $s4, 56
.LBB26_38:                              # %.lr.ph.i128.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_39 Depth 2
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $a1, $a2
	move	$a3, $s1
	.p2align	4, , 16
.LBB26_39:                              # %.lr.ph.i128.i
                                        #   Parent Loop BB26_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 8
	beq	$a2, $a4, .LBB26_41
# %bb.40:                               #   in Loop: Header=BB26_39 Depth=2
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB26_39
	b	.LBB26_45
.LBB26_41:                              # %list_PointerMember.exit134.loopexit.i
                                        #   in Loop: Header=BB26_38 Depth=1
	addi.d	$a0, $a0, 1
	blt	$a0, $fp, .LBB26_38
.LBB26_42:                              # %.critedge.i
	beqz	$s1, .LBB26_44
	.p2align	4, , 16
.LBB26_43:                              # %.lr.ph.i136.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	bnez	$a3, .LBB26_43
.LBB26_44:
	move	$s1, $zero
.LBB26_45:                              # %list_Delete.exit140.i
	beqz	$s2, .LBB26_47
	.p2align	4, , 16
.LBB26_46:                              # %.lr.ph.i142.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s2, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s5, 128
	st.d	$s2, $a0, 0
	move	$s2, $a3
	bnez	$a3, .LBB26_46
.LBB26_47:
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
.LBB26_48:                              # %prfs_GetSplitLiterals.exit
	bnez	$s1, .LBB26_59
.LBB26_49:
	move	$a0, $zero
.LBB26_50:                              # %list_Delete.exit
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
.LBB26_51:
	ld.d	$a0, $s4, 56
	ldx.d	$fp, $a0, $fp
.LBB26_52:                              # %clause_GetGroundSuccLit.exit.i
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	ld.w	$a0, $s4, 64
	ld.w	$a1, $s4, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB26_59
# %bb.53:                               # %.lr.ph.preheader.i
	addi.d	$fp, $a0, 1
	slli.d	$s0, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	b	.LBB26_55
	.p2align	4, , 16
.LBB26_54:                              #   in Loop: Header=BB26_55 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, -8
	blez	$fp, .LBB26_48
.LBB26_55:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 56
	ldx.d	$s3, $a0, $s0
	ld.d	$a0, $s3, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB26_57
# %bb.56:                               #   in Loop: Header=BB26_55 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB26_57:                              # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB26_55 Depth=1
	pcaddu18i	$ra, %call36(term_IsGround)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_54
# %bb.58:                               #   in Loop: Header=BB26_55 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
	b	.LBB26_54
.LBB26_59:                              # %.lr.ph.i10.preheader
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(prfs_DoSplitting)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB26_60:                              # %.lr.ph.i10
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s1, 0
	ld.d	$a3, $a1, 128
	st.d	$s1, $a3, 0
	move	$s1, $a6
	bnez	$a6, .LBB26_60
	b	.LBB26_50
.Lfunc_end26:
	.size	prfs_PerformSplitting, .Lfunc_end26-prfs_PerformSplitting
                                        # -- End function
	.globl	prfs_InstallFiniteMonadicPredicates # -- Begin function prfs_InstallFiniteMonadicPredicates
	.p2align	5
	.type	prfs_InstallFiniteMonadicPredicates,@function
prfs_InstallFiniteMonadicPredicates:    # @prfs_InstallFiniteMonadicPredicates
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
	move	$fp, $a0
	move	$s1, $zero
	beqz	$a1, .LBB27_14
# %bb.1:
	move	$s0, $a2
	beqz	$a2, .LBB27_14
# %bb.2:                                # %.lr.ph.split.preheader
	move	$s2, $a1
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a0, %got_pc_lo12(fol_NOT)
	move	$s1, $zero
	b	.LBB27_5
.LBB27_3:                               #   in Loop: Header=BB27_5 Depth=1
	ld.d	$a0, $s4, 16
	ld.w	$s7, $s4, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
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
	move	$s3, $a0
	st.d	$s7, $a0, 8
	st.d	$s4, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
	.p2align	4, , 16
.LBB27_4:                               # %list_PointerMember.exit.thread
                                        #   in Loop: Header=BB27_5 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB27_14
.LBB27_5:                               # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_10 Depth 2
	ld.d	$a0, $s2, 8
	ld.w	$a1, $a0, 72
	bne	$a1, $s5, .LBB27_4
# %bb.6:                                # %.lr.ph.split
                                        #   in Loop: Header=BB27_5 Depth=1
	ld.w	$a2, $a0, 64
	ld.w	$a3, $a0, 68
	add.w	$a2, $a3, $a2
	add.w	$a1, $a2, $a1
	bne	$a1, $s5, .LBB27_4
# %bb.7:                                #   in Loop: Header=BB27_5 Depth=1
	ld.d	$a0, $a0, 56
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s4, $a0, 24
	ld.w	$a1, $s4, 0
	ld.w	$a0, $s6, 0
	bne	$a1, $a0, .LBB27_9
# %bb.8:                                #   in Loop: Header=BB27_5 Depth=1
	ld.d	$a0, $s4, 16
	ld.d	$s4, $a0, 8
	ld.w	$a1, $s4, 0
.LBB27_9:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB27_5 Depth=1
	move	$a0, $s0
	.p2align	4, , 16
.LBB27_10:                              # %.lr.ph.i
                                        #   Parent Loop BB27_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 8
	beq	$a2, $a1, .LBB27_12
# %bb.11:                               #   in Loop: Header=BB27_10 Depth=2
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB27_10
	b	.LBB27_4
	.p2align	4, , 16
.LBB27_12:                              # %list_PointerMember.exit
                                        #   in Loop: Header=BB27_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_AssocListPair)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_3
# %bb.13:                               #   in Loop: Header=BB27_5 Depth=1
	move	$s3, $a0
	ld.d	$a0, $s4, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s3, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s7, $a0, 0
	st.d	$a0, $s3, 0
	b	.LBB27_4
.LBB27_14:                              # %._crit_edge
	ld.d	$a0, $fp, 24
	pcalau12i	$a1, %pc_hi20(term_DeleteTermList)
	addi.d	$a1, $a1, %pc_lo12(term_DeleteTermList)
	pcaddu18i	$ra, %call36(list_DeleteAssocListWithValues)
	jirl	$ra, $ra, 0
	st.d	$s1, $fp, 24
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
.Lfunc_end27:
	.size	prfs_InstallFiniteMonadicPredicates, .Lfunc_end27-prfs_InstallFiniteMonadicPredicates
                                        # -- End function
	.globl	prfs_GetNumberOfInstances       # -- Begin function prfs_GetNumberOfInstances
	.p2align	5
	.type	prfs_GetNumberOfInstances,@function
prfs_GetNumberOfInstances:              # @prfs_GetNumberOfInstances
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
	move	$s1, $a1
	ld.d	$s4, $a1, 24
	ld.w	$a1, $s4, 0
	move	$s0, $a2
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a2, %got_pc_lo12(fol_NOT)
	ld.w	$a2, $s6, 0
	bne	$a1, $a2, .LBB28_2
# %bb.1:
	ld.d	$a1, $s4, 16
	ld.d	$s4, $a1, 8
.LBB28_2:                               # %clause_LiteralAtom.exit
	ld.d	$s3, $a0, 32
	ld.d	$s2, $a0, 48
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sharing_GetNumberOfInstances)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s0, .LBB28_4
# %bb.3:
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sharing_GetNumberOfInstances)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
.LBB28_4:
	ld.w	$s5, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a0, $a0, 0
	bne	$s5, $a0, .LBB28_15
# %bb.5:
	ld.d	$a0, $s4, 16
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sharing_GetNumberOfInstances)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
	beqz	$s0, .LBB28_7
# %bb.6:
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sharing_GetNumberOfInstances)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
.LBB28_7:
	ld.d	$a0, $s4, 16
	beqz	$a0, .LBB28_10
# %bb.8:                                # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB28_9:                               # %.lr.ph.i
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
	bnez	$a6, .LBB28_9
.LBB28_10:                              # %list_Delete.exit
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
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 256
	st.d	$s4, $a0, 0
	ld.d	$s4, $s1, 24
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB28_12
# %bb.11:
	ld.d	$a0, $s4, 16
	ld.d	$s4, $a0, 8
.LBB28_12:                              # %clause_LiteralAtom.exit46
	ld.w	$a0, $s1, 8
	beqz	$a0, .LBB28_15
# %bb.13:
	ld.d	$a0, $s4, 16
	ld.d	$a0, $a0, 8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sharing_GetNumberOfInstances)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
	beqz	$s0, .LBB28_15
# %bb.14:
	ld.d	$a0, $s4, 16
	ld.d	$a0, $a0, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sharing_GetNumberOfInstances)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
.LBB28_15:
	move	$a0, $fp
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
.Lfunc_end28:
	.size	prfs_GetNumberOfInstances, .Lfunc_end28-prfs_GetNumberOfInstances
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
.Lfunc_end29:
	.size	misc_Error, .Lfunc_end29-misc_Error
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function term_DeleteTermList
	.type	term_DeleteTermList,@function
term_DeleteTermList:                    # @term_DeleteTermList
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$t8, %call36(list_DeleteWithElement)
	jr	$t8
.Lfunc_end30:
	.size	term_DeleteTermList, .Lfunc_end30-term_DeleteTermList
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n Split: %d %ld"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n Father: "
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"No father, unnecessary split."
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n Split is "
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"unused."
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"used."
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" Blocked clauses:"
	.size	.L.str.6, 18

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\n Deleted clauses:"
	.size	.L.str.7, 19

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\n Splitstack:"
	.size	.L.str.8, 14

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\n---------------------"
	.size	.L.str.9, 23

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\n\n Proofsearch: Current Level: %d Last Backtrack Level: %d Splits: %d Loops: %d Backtracked: %d"
	.size	.L.str.10, 96

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\n Clause %d implies a non-trivial domain."
	.size	.L.str.11, 42

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\n Potentially trivial domain."
	.size	.L.str.12, 30

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\n Empty Clauses:"
	.size	.L.str.13, 17

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\n "
	.size	.L.str.14, 3

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\n Definitions:"
	.size	.L.str.15, 15

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\n Worked Off Clauses:"
	.size	.L.str.16, 22

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\n Usable Clauses:"
	.size	.L.str.17, 18

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n Finite predicates:"
	.size	.L.str.18, 21

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\n  "
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	": "
	.size	.L.str.20, 3

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\n Static Sort Theory:"
	.size	.L.str.21, 22

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\n Dynamic Sort Theory:"
	.size	.L.str.22, 23

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"\n Approximated Dynamic Sort Theory:"
	.size	.L.str.23, 36

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\n Error: Flag value %d is too small for flag %s.\n"
	.size	.L.str.24, 50

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\n Error: Flag value %d is too large for flag %s.\n"
	.size	.L.str.25, 50

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym def_Delete
	.addrsig_sym term_DeleteTermList
	.addrsig_sym term_Delete
