	.file	"clause.c"
	.text
	.globl	clause_LiteralIsLiteral         # -- Begin function clause_LiteralIsLiteral
	.p2align	5
	.type	clause_LiteralIsLiteral,@function
clause_LiteralIsLiteral:                # @clause_LiteralIsLiteral
# %bb.0:
	beqz	$a0, .LBB0_4
# %bb.1:
	ld.d	$a1, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $a1, 0
	ld.w	$a2, $a2, 0
	bne	$a0, $a2, .LBB0_3
# %bb.2:
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
.LBB0_3:                                # %clause_LiteralPredicate.exit
	bltz	$a0, .LBB0_5
.LBB0_4:
	move	$a0, $zero
	ret
.LBB0_5:
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	sub.w	$a0, $zero, $a0
	and	$a0, $a1, $a0
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	ret
.Lfunc_end0:
	.size	clause_LiteralIsLiteral, .Lfunc_end0-clause_LiteralIsLiteral
                                        # -- End function
	.globl	clause_LiteralComputeWeight     # -- Begin function clause_LiteralComputeWeight
	.p2align	5
	.type	clause_LiteralComputeWeight,@function
clause_LiteralComputeWeight:            # @clause_LiteralComputeWeight
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(stack_POINTER)
	ld.d	$a2, $a2, %got_pc_lo12(stack_POINTER)
	ld.d	$a6, $a0, 24
	ld.w	$a3, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	ld.d	$a4, $a0, %got_pc_lo12(stack_STACK)
	move	$a0, $zero
	move	$a5, $a3
	ld.d	$a7, $a6, 16
	beqz	$a7, .LBB1_2
.LBB1_1:
	ld.w	$a6, $a1, 180
	bstrpick.d	$t0, $a5, 31, 0
	addi.w	$a5, $a5, 1
	st.w	$a5, $a2, 0
	slli.d	$t0, $t0, 3
	stx.d	$a7, $a4, $t0
	add.w	$a0, $a6, $a0
	bne	$a5, $a3, .LBB1_5
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_2:
	ld.w	$a6, $a6, 0
	blez	$a6, .LBB1_4
# %bb.3:
	ld.w	$a6, $a1, 184
	add.w	$a0, $a6, $a0
	bne	$a5, $a3, .LBB1_5
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_4:
	ld.w	$a6, $a1, 180
	add.w	$a0, $a6, $a0
	beq	$a5, $a3, .LBB1_8
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a6, $a5, -1
	bstrpick.d	$a7, $a6, 31, 0
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a4, $t0
	bnez	$t0, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	st.w	$a6, $a2, 0
	move	$a5, $a6
	bne	$a3, $a6, .LBB1_5
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.critedge
	ld.d	$t1, $t0, 0
	ld.d	$a6, $t0, 8
	alsl.d	$a7, $a7, $a4, 3
	st.d	$t1, $a7, 0
	ld.d	$a7, $a6, 16
	bnez	$a7, .LBB1_1
	b	.LBB1_2
.LBB1_8:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	clause_LiteralComputeWeight, .Lfunc_end1-clause_LiteralComputeWeight
                                        # -- End function
	.globl	clause_LiteralCreate            # -- Begin function clause_LiteralCreate
	.p2align	5
	.type	clause_LiteralCreate,@function
clause_LiteralCreate:                   # @clause_LiteralCreate
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 24
	st.w	$zero, $a0, 8
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 0
	st.d	$fp, $a0, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	clause_LiteralCreate, .Lfunc_end2-clause_LiteralCreate
                                        # -- End function
	.globl	clause_LiteralCreateNegative    # -- Begin function clause_LiteralCreateNegative
	.p2align	5
	.type	clause_LiteralCreateNegative,@function
clause_LiteralCreateNegative:           # @clause_LiteralCreateNegative
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$s1, $a1, 0
	move	$s2, $a0
	st.d	$zero, $s0, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 24
	st.w	$zero, $s2, 8
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $s2, 0
	st.d	$fp, $s2, 16
	move	$a0, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	clause_LiteralCreateNegative, .Lfunc_end3-clause_LiteralCreateNegative
                                        # -- End function
	.globl	clause_LiteralDelete            # -- Begin function clause_LiteralDelete
	.p2align	5
	.type	clause_LiteralDelete,@function
clause_LiteralDelete:                   # @clause_LiteralDelete
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 256
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 256
	st.d	$fp, $a0, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	clause_LiteralDelete, .Lfunc_end4-clause_LiteralDelete
                                        # -- End function
	.globl	clause_LiteralInsertIntoSharing # -- Begin function clause_LiteralInsertIntoSharing
	.p2align	5
	.type	clause_LiteralInsertIntoSharing,@function
clause_LiteralInsertIntoSharing:        # @clause_LiteralInsertIntoSharing
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$fp, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $fp, 0
	ld.w	$a3, $s1, 0
	move	$a2, $a1
	bne	$a0, $a3, .LBB5_2
# %bb.1:
	ld.d	$a0, $fp, 16
	ld.d	$fp, $a0, 8
.LBB5_2:                                # %clause_LiteralAtom.exit
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sharing_Insert)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.w	$a2, $a1, 0
	ld.w	$a3, $s1, 0
	bne	$a2, $a3, .LBB5_4
# %bb.3:
	ld.d	$a1, $a1, 16
	st.d	$a0, $a1, 8
	b	.LBB5_5
.LBB5_4:
	st.d	$a0, $s0, 24
.LBB5_5:                                # %clause_LiteralSetAtom.exit
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(term_Delete)
	jr	$t8
.Lfunc_end5:
	.size	clause_LiteralInsertIntoSharing, .Lfunc_end5-clause_LiteralInsertIntoSharing
                                        # -- End function
	.globl	clause_LiteralDeleteFromSharing # -- Begin function clause_LiteralDeleteFromSharing
	.p2align	5
	.type	clause_LiteralDeleteFromSharing,@function
clause_LiteralDeleteFromSharing:        # @clause_LiteralDeleteFromSharing
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a4, $a2, 0
	ld.w	$a0, $a0, 0
	move	$a3, $a1
	bne	$a4, $a0, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a2, 16
	ld.w	$a6, $a1, 32
	ld.d	$a7, $a4, 0
	ld.d	$a2, $a5, 8
	add.d	$a6, $a7, $a6
	st.d	$a6, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a5, 0
	ld.d	$a1, $a0, 128
	st.d	$a5, $a1, 0
	ld.d	$a1, $a0, 256
	ld.w	$a5, $a1, 32
	ld.d	$a6, $a4, 0
	ld.d	$a7, $fp, 24
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a7, 0
	ld.d	$a0, $a0, 256
	st.d	$a7, $a0, 0
.LBB6_2:                                # %clause_LiteralAtom.exit.thread
	move	$a0, $fp
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(sharing_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 256
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 256
	st.d	$fp, $a0, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	clause_LiteralDeleteFromSharing, .Lfunc_end6-clause_LiteralDeleteFromSharing
                                        # -- End function
	.globl	clause_CopyConstraint           # -- Begin function clause_CopyConstraint
	.p2align	5
	.type	clause_CopyConstraint,@function
clause_CopyConstraint:                  # @clause_CopyConstraint
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
	ld.w	$a0, $a0, 64
	blez	$a0, .LBB7_5
# %bb.1:                                # %.lr.ph.i
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a1, %got_pc_lo12(fol_NOT)
	move	$s2, $zero
	move	$s4, $zero
	slli.d	$s3, $a0, 3
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB7_3 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	addi.d	$s2, $s2, 8
	st.d	$s4, $a0, 0
	move	$s4, $a0
	beq	$s3, $s2, .LBB7_6
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s1, 0
	bne	$a1, $a2, .LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB7_2
.LBB7_5:
	move	$a0, $zero
.LBB7_6:                                # %clause_CopyLitInterval.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	clause_CopyConstraint, .Lfunc_end7-clause_CopyConstraint
                                        # -- End function
	.globl	clause_CopyAntecedentExcept     # -- Begin function clause_CopyAntecedentExcept
	.p2align	5
	.type	clause_CopyAntecedentExcept,@function
clause_CopyAntecedentExcept:            # @clause_CopyAntecedentExcept
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
	move	$fp, $a0
	ld.w	$s3, $a0, 64
	ld.w	$a0, $a0, 68
	add.d	$a0, $s3, $a0
	addi.w	$a0, $a0, -1
	bge	$a0, $s3, .LBB8_3
# %bb.1:
	move	$s1, $zero
.LBB8_2:                                # %clause_CopyLitIntervalExcept.exit
	move	$a0, $s1
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
.LBB8_3:                                # %.lr.ph.i
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a1, %got_pc_lo12(fol_NOT)
	move	$s1, $zero
	slli.d	$s5, $a0, 3
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_4:                                # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB8_6 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
.LBB8_5:                                #   in Loop: Header=BB8_6 Depth=1
	addi.d	$a0, $s6, -1
	addi.d	$s5, $s5, -8
	bge	$s3, $s6, .LBB8_2
.LBB8_6:                                # =>This Inner Loop Header: Depth=1
	move	$s6, $a0
	beq	$s0, $a0, .LBB8_5
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB8_4
# %bb.8:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB8_4
.Lfunc_end8:
	.size	clause_CopyAntecedentExcept, .Lfunc_end8-clause_CopyAntecedentExcept
                                        # -- End function
	.globl	clause_CopySuccedent            # -- Begin function clause_CopySuccedent
	.p2align	5
	.type	clause_CopySuccedent,@function
clause_CopySuccedent:                   # @clause_CopySuccedent
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
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$s1, $fp, 72
	add.w	$a0, $a1, $a0
	add.d	$a1, $a0, $s1
	addi.w	$a1, $a1, -1
	bge	$a1, $a0, .LBB9_3
# %bb.1:
	move	$a0, $zero
.LBB9_2:                                # %clause_CopyLitInterval.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB9_3:                                # %.lr.ph.i
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a1, %got_pc_lo12(fol_NOT)
	move	$s4, $zero
	slli.d	$s3, $a0, 3
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB9_5 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s4, $a0, 0
	addi.w	$s1, $s1, -1
	addi.d	$s3, $s3, 8
	move	$s4, $a0
	beqz	$s1, .LBB9_2
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB9_4
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB9_4
.Lfunc_end9:
	.size	clause_CopySuccedent, .Lfunc_end9-clause_CopySuccedent
                                        # -- End function
	.globl	clause_CopySuccedentExcept      # -- Begin function clause_CopySuccedentExcept
	.p2align	5
	.type	clause_CopySuccedentExcept,@function
clause_CopySuccedentExcept:             # @clause_CopySuccedentExcept
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
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.w	$s3, $a2, $a0
	add.d	$a0, $s3, $a3
	addi.w	$a0, $a0, -1
	bge	$a0, $s3, .LBB10_3
# %bb.1:
	move	$s1, $zero
.LBB10_2:                               # %clause_CopyLitIntervalExcept.exit
	move	$a0, $s1
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
.LBB10_3:                               # %.lr.ph.i
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a1, %got_pc_lo12(fol_NOT)
	move	$s1, $zero
	slli.d	$s5, $a0, 3
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_4:                               # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB10_6 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
.LBB10_5:                               #   in Loop: Header=BB10_6 Depth=1
	addi.d	$a0, $s6, -1
	addi.d	$s5, $s5, -8
	bge	$s3, $s6, .LBB10_2
.LBB10_6:                               # =>This Inner Loop Header: Depth=1
	move	$s6, $a0
	beq	$s0, $a0, .LBB10_5
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB10_4
# %bb.8:                                #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB10_4
.Lfunc_end10:
	.size	clause_CopySuccedentExcept, .Lfunc_end10-clause_CopySuccedentExcept
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function clause_IsUnorderedClause
.LCPI11_0:
	.dword	49                              # 0x31
	.dword	48                              # 0x30
.LCPI11_1:
	.dword	51                              # 0x33
	.dword	50                              # 0x32
.LCPI11_2:
	.dword	53                              # 0x35
	.dword	52                              # 0x34
.LCPI11_3:
	.dword	55                              # 0x37
	.dword	54                              # 0x36
.LCPI11_4:
	.dword	57                              # 0x39
	.dword	56                              # 0x38
.LCPI11_5:
	.dword	59                              # 0x3b
	.dword	58                              # 0x3a
.LCPI11_6:
	.dword	61                              # 0x3d
	.dword	60                              # 0x3c
.LCPI11_7:
	.dword	63                              # 0x3f
	.dword	62                              # 0x3e
.LCPI11_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	clause_IsUnorderedClause
	.p2align	5
	.type	clause_IsUnorderedClause,@function
clause_IsUnorderedClause:               # @clause_IsUnorderedClause
# %bb.0:
	addi.d	$sp, $sp, -16
	beqz	$a0, .LBB11_5
# %bb.1:
	ld.w	$a2, $a0, 12
	beqz	$a2, .LBB11_7
# %bb.2:
	ld.w	$a4, $a0, 24
	bstrpick.d	$a1, $a2, 31, 0
	addi.w	$a6, $a4, -1
	slti	$a7, $a6, -1
	addi.w	$a5, $zero, -1
	ld.d	$a3, $a0, 16
	masknez	$t0, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	.p2align	4, , 16
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a4, -1
	bltz	$a4, .LBB11_9
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a7, $a4, 3
	ldx.d	$a7, $a3, $a7
	beqz	$a7, .LBB11_3
	b	.LBB11_10
.LBB11_5:
	move	$a1, $zero
.LBB11_6:                               # %clause_DependsOnSplitLevel.exit
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.LBB11_7:
	ld.d	$a1, $a0, 16
	bnez	$a1, .LBB11_23
# %bb.8:
	move	$a3, $zero
	b	.LBB11_16
.LBB11_9:
	move	$a4, $a6
.LBB11_10:                              # %vector.ph
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a3, $a6
	vreplgr2vr.d	$vr0, $a6
	pcalau12i	$a6, %pc_hi20(.LCPI11_0)
	vld	$vr1, $a6, %pc_lo12(.LCPI11_0)
	pcalau12i	$a6, %pc_hi20(.LCPI11_1)
	vld	$vr2, $a6, %pc_lo12(.LCPI11_1)
	pcalau12i	$a6, %pc_hi20(.LCPI11_2)
	vld	$vr3, $a6, %pc_lo12(.LCPI11_2)
	pcalau12i	$a6, %pc_hi20(.LCPI11_3)
	vld	$vr4, $a6, %pc_lo12(.LCPI11_3)
	pcalau12i	$a6, %pc_hi20(.LCPI11_4)
	vld	$vr5, $a6, %pc_lo12(.LCPI11_4)
	pcalau12i	$a6, %pc_hi20(.LCPI11_5)
	vld	$vr6, $a6, %pc_lo12(.LCPI11_5)
	pcalau12i	$a6, %pc_hi20(.LCPI11_6)
	vld	$vr7, $a6, %pc_lo12(.LCPI11_6)
	pcalau12i	$a6, %pc_hi20(.LCPI11_7)
	vld	$vr8, $a6, %pc_lo12(.LCPI11_7)
	addi.w	$t0, $zero, -16
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	vrepli.d	$vr11, -16
	ori	$a6, $zero, 32
	.p2align	4, , 16
.LBB11_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $t0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vsll.d	$vr19, $vr9, $vr8
	vand.v	$vr20, $vr12, $vr0
	vand.v	$vr13, $vr13, $vr0
	vand.v	$vr14, $vr14, $vr0
	vand.v	$vr15, $vr15, $vr0
	vand.v	$vr12, $vr16, $vr0
	vand.v	$vr16, $vr17, $vr0
	vand.v	$vr17, $vr18, $vr0
	vand.v	$vr18, $vr19, $vr0
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr10
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vpickev.w	$vr17, $vr17, $vr18
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vpickev.w	$vr12, $vr12, $vr16
	vpickev.h	$vr12, $vr12, $vr17
	vpickve2gr.b	$t0, $vr12, 2
	andi	$t0, $t0, 1
	vpickve2gr.b	$t1, $vr18, 0
	bstrins.d	$t1, $t0, 63, 1
	vpickve2gr.b	$t0, $vr12, 4
	bstrins.d	$t1, $t0, 2, 2
	vpickve2gr.b	$t0, $vr12, 6
	bstrins.d	$t1, $t0, 3, 3
	vpickve2gr.b	$t0, $vr12, 8
	bstrins.d	$t1, $t0, 4, 4
	vpickve2gr.b	$t0, $vr12, 10
	bstrins.d	$t1, $t0, 5, 5
	vpickve2gr.b	$t0, $vr12, 12
	andi	$t0, $t0, 1
	slli.d	$t0, $t0, 6
	or	$t0, $t1, $t0
	vpickve2gr.b	$t1, $vr12, 14
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 7
	or	$t0, $t0, $t1
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vpickve2gr.b	$t1, $vr15, 0
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 8
	or	$t0, $t0, $t1
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr14, $vr14, $vr15
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vseqi.d	$vr15, $vr20, 0
	vxor.v	$vr15, $vr15, $vr10
	vpickev.w	$vr13, $vr15, $vr13
	vpickev.h	$vr13, $vr13, $vr14
	vpickve2gr.b	$t1, $vr13, 2
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 9
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr13, 4
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 10
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr13, 6
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 11
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr13, 8
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 12
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr13, 10
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 13
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr13, 12
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 14
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr13, 14
	slli.d	$t1, $t1, 15
	or	$t0, $t0, $t1
	bstrpick.d	$t1, $t0, 15, 0
	addi.d	$t0, $a7, 16
	bnez	$t1, .LBB11_13
# %bb.12:                               # %vector.body
                                        #   in Loop: Header=BB11_11 Depth=1
	vadd.d	$vr8, $vr8, $vr11
	vadd.d	$vr7, $vr7, $vr11
	vadd.d	$vr6, $vr6, $vr11
	vadd.d	$vr5, $vr5, $vr11
	vadd.d	$vr4, $vr4, $vr11
	vadd.d	$vr3, $vr3, $vr11
	vadd.d	$vr2, $vr2, $vr11
	vadd.d	$vr1, $vr1, $vr11
	bne	$a7, $a6, .LBB11_11
.LBB11_13:                              # %middle.split
	slli.d	$a6, $t1, 48
	beqz	$a6, .LBB11_15
# %bb.14:                               # %vector.early.exit
	pcalau12i	$a5, %pc_hi20(.LCPI11_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI11_8)
	vpickev.b	$vr1, $vr13, $vr12
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a5, $vr0, 0
	ori	$a6, $zero, 16
	sub.d	$a5, $a6, $a5
	andi	$a5, $a5, 255
	add.d	$a5, $a5, $t0
	slli.d	$a5, $a5, 32
	ori	$a6, $zero, 0
	lu32i.d	$a6, 63
	sub.d	$a5, $a6, $a5
	srai.d	$a5, $a5, 32
.LBB11_15:                              # %clause_CheckSplitLevel.exit
	slli.d	$a4, $a4, 6
	add.d	$a4, $a5, $a4
	bne	$a4, $a1, .LBB11_23
.LBB11_16:
	ld.w	$a1, $a0, 68
	bnez	$a1, .LBB11_19
# %bb.17:
	ld.w	$a1, $a0, 72
	bnez	$a1, .LBB11_19
# %bb.18:                               # %clause_IsEmptyClause.exit
	ld.w	$a1, $a0, 64
	beqz	$a1, .LBB11_26
.LBB11_19:                              # %clause_IsEmptyClause.exit.thread
	ld.d	$a1, $a0, 56
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB11_23
# %bb.20:
	ld.d	$a4, $a1, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a5, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a4, 0
	ld.w	$a5, $a5, 0
	bne	$a1, $a5, .LBB11_22
# %bb.21:
	ld.d	$a1, $a4, 16
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
.LBB11_22:                              # %clause_LiteralPredicate.exit.i
	bltz	$a1, .LBB11_24
.LBB11_23:
	move	$a1, $zero
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.LBB11_24:                              # %clause_LiteralIsLiteral.exit
	pcalau12i	$a4, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a4, $a4, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a4, $a4, 0
	sub.w	$a1, $zero, $a1
	and	$a4, $a4, $a1
	addi.d	$a1, $a4, -2
	sltui	$a1, $a1, 1
	beqz	$a2, .LBB11_6
# %bb.25:                               # %clause_LiteralIsLiteral.exit
	ori	$a5, $zero, 2
	beq	$a4, $a5, .LBB11_27
	b	.LBB11_6
.LBB11_26:
	beqz	$a2, .LBB11_30
.LBB11_27:
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_23
# %bb.28:
	ori	$a1, $zero, 63
	sltu	$a1, $a1, $a2
	addi.d	$a4, $a2, -64
	bstrpick.d	$a4, $a4, 31, 6
	addi.d	$a4, $a4, 1
	maskeqz	$a1, $a4, $a1
	bgeu	$a1, $a0, .LBB11_23
# %bb.29:
	addi.w	$a0, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a3, $a0
	srl.d	$a0, $a0, $a2
	andi	$a1, $a0, 1
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.LBB11_30:
	ori	$a1, $zero, 1
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	clause_IsUnorderedClause, .Lfunc_end11-clause_IsUnorderedClause
                                        # -- End function
	.globl	clause_IsClause                 # -- Begin function clause_IsClause
	.p2align	5
	.type	clause_IsClause,@function
clause_IsClause:                        # @clause_IsClause
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(clause_IsUnorderedClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_7
# %bb.1:
	ld.w	$a1, $s1, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	add.d	$a0, $a1, $a2
	add.d	$a0, $a0, $a3
	addi.w	$a4, $a0, -1
	ori	$a0, $zero, 1
	blt	$a4, $a1, .LBB12_9
# %bb.2:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s2, $a0, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a0, $s2, 0
	addi.d	$s3, $a1, -1
	slli.d	$s4, $a1, 3
	ori	$s5, $zero, 1
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               #   in Loop: Header=BB12_4 Depth=1
	add.d	$a4, $a1, $a2
	add.d	$a4, $a4, $a3
	addi.w	$a4, $a4, -1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bge	$s3, $a4, .LBB12_8
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $s1, 56
	ldx.d	$a4, $a4, $s4
	ld.d	$a4, $a4, 24
	ld.w	$a5, $a4, 0
	bne	$a5, $a0, .LBB12_3
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a4, 16
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB12_7
# %bb.6:                                # %._crit_edge
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s1, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	b	.LBB12_3
.LBB12_7:
	move	$a0, $zero
	b	.LBB12_9
.LBB12_8:
	ori	$a0, $zero, 1
.LBB12_9:                               # %.loopexit
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
.Lfunc_end12:
	.size	clause_IsClause, .Lfunc_end12-clause_IsClause
                                        # -- End function
	.globl	clause_ContainsPositiveEquations # -- Begin function clause_ContainsPositiveEquations
	.p2align	5
	.type	clause_ContainsPositiveEquations,@function
clause_ContainsPositiveEquations:       # @clause_ContainsPositiveEquations
# %bb.0:
	ld.w	$a3, $a0, 72
	blez	$a3, .LBB13_6
# %bb.1:                                # %.lr.ph
	ld.w	$a2, $a0, 68
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a1, %got_pc_lo12(fol_NOT)
	pcalau12i	$a4, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a4, $a4, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a5, $a0, 64
	ld.d	$a6, $a0, 56
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a4, 0
	add.w	$a2, $a2, $a5
	add.w	$a3, $a3, $a2
	alsl.d	$a4, $a2, $a6, 3
	.p2align	4, , 16
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a5, 24
	ld.w	$a5, $a6, 0
	bne	$a5, $a0, .LBB13_4
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a5, $a6, 16
	ld.d	$a5, $a5, 8
	ld.w	$a5, $a5, 0
.LBB13_4:                               # %clause_LiteralIsEquality.exit
                                        #   in Loop: Header=BB13_2 Depth=1
	beq	$a5, $a1, .LBB13_7
# %bb.5:                                #   in Loop: Header=BB13_2 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	blt	$a2, $a3, .LBB13_2
.LBB13_6:
	move	$a0, $zero
	ret
.LBB13_7:
	ori	$a0, $zero, 1
	ret
.Lfunc_end13:
	.size	clause_ContainsPositiveEquations, .Lfunc_end13-clause_ContainsPositiveEquations
                                        # -- End function
	.globl	clause_ContainsNegativeEquations # -- Begin function clause_ContainsNegativeEquations
	.p2align	5
	.type	clause_ContainsNegativeEquations,@function
clause_ContainsNegativeEquations:       # @clause_ContainsNegativeEquations
# %bb.0:
	ld.w	$a3, $a0, 68
	blez	$a3, .LBB14_6
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a1, %got_pc_lo12(fol_NOT)
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a4, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a1, $a0, 64
	ld.d	$a5, $a0, 56
	ld.w	$a0, $a2, 0
	ld.w	$a2, $a4, 0
	add.w	$a3, $a3, $a1
	alsl.d	$a4, $a1, $a5, 3
	.p2align	4, , 16
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a5, 24
	ld.w	$a5, $a6, 0
	bne	$a5, $a0, .LBB14_4
# %bb.3:                                #   in Loop: Header=BB14_2 Depth=1
	ld.d	$a5, $a6, 16
	ld.d	$a5, $a5, 8
	ld.w	$a5, $a5, 0
.LBB14_4:                               # %clause_LiteralIsEquality.exit
                                        #   in Loop: Header=BB14_2 Depth=1
	beq	$a5, $a2, .LBB14_7
# %bb.5:                                #   in Loop: Header=BB14_2 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	blt	$a1, $a3, .LBB14_2
.LBB14_6:
	move	$a0, $zero
	ret
.LBB14_7:
	ori	$a0, $zero, 1
	ret
.Lfunc_end14:
	.size	clause_ContainsNegativeEquations, .Lfunc_end14-clause_ContainsNegativeEquations
                                        # -- End function
	.globl	clause_ContainsFolAtom          # -- Begin function clause_ContainsFolAtom
	.p2align	5
	.type	clause_ContainsFolAtom,@function
clause_ContainsFolAtom:                 # @clause_ContainsFolAtom
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
	pcalau12i	$a5, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a5, $a5, %got_pc_lo12(symbol_TYPESTATBITS)
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $a1
	move	$s3, $a0
	move	$s5, $zero
	move	$s4, $zero
	ld.w	$s6, $a5, 0
	addi.w	$s7, $zero, -1
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s8, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$fp, $a0, %got_pc_lo12(symbol_SIGNATURE)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_1:                               # %.thread95.sink.split
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.w	$s4, $s4, 1
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
.LBB15_2:                               # %.thread95
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.d	$s5, $s5, 8
	ori	$a0, $zero, 4
	bge	$s4, $a0, .LBB15_27
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 64
	ld.w	$a1, $s3, 68
	ld.w	$a2, $s3, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB15_27
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB15_7
# %bb.5:                                #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB15_7
# %bb.6:                                #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB15_27
.LBB15_7:                               # %.critedge2
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $s3, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 24
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s8, 0
	move	$a1, $a2
	bne	$a2, $a3, .LBB15_9
# %bb.8:                                #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
.LBB15_9:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB15_3 Depth=1
	bne	$a2, $a3, .LBB15_11
# %bb.10:                               #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB15_11:                              # %clause_GetLiteralAtom.exit73
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a2, $fp, 0
	sub.d	$a1, $zero, $a1
	sra.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$s1, $a1, 16
	pcaddu18i	$ra, %call36(term_IsGround)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	or	$a2, $a1, $s1
	move	$a1, $s2
	beqz	$a2, .LBB15_1
# %bb.12:                               #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB15_18
# %bb.13:                               #   in Loop: Header=BB15_3 Depth=1
	blez	$s1, .LBB15_18
# %bb.14:                               #   in Loop: Header=BB15_3 Depth=1
	beqz	$a0, .LBB15_18
# %bb.15:                               #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $s3, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s8, 0
	bne	$a0, $a2, .LBB15_17
# %bb.16:                               #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
.LBB15_17:                              # %clause_GetLiteralAtom.exit80
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB15_1
	b	.LBB15_2
	.p2align	4, , 16
.LBB15_18:                              #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a1, $s0, 0
	bnez	$a1, .LBB15_21
# %bb.19:                               #   in Loop: Header=BB15_3 Depth=1
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB15_21
# %bb.20:                               #   in Loop: Header=BB15_3 Depth=1
	move	$a1, $s0
	beqz	$a0, .LBB15_1
.LBB15_21:                              #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB15_2
# %bb.22:                               #   in Loop: Header=BB15_3 Depth=1
	ori	$a1, $zero, 2
	blt	$s1, $a1, .LBB15_2
# %bb.23:                               #   in Loop: Header=BB15_3 Depth=1
	bnez	$a0, .LBB15_2
# %bb.24:                               #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $s3, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s8, 0
	bne	$a0, $a2, .LBB15_26
# %bb.25:                               #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
.LBB15_26:                              # %clause_GetLiteralAtom.exit87
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB15_1
	b	.LBB15_2
.LBB15_27:                              # %.critedge
	move	$a0, $s4
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
.Lfunc_end15:
	.size	clause_ContainsFolAtom, .Lfunc_end15-clause_ContainsFolAtom
                                        # -- End function
	.globl	clause_ContainsVariables        # -- Begin function clause_ContainsVariables
	.p2align	5
	.type	clause_ContainsVariables,@function
clause_ContainsVariables:               # @clause_ContainsVariables
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB16_6
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s0, $a0, %got_pc_lo12(fol_NOT)
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB16_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s0, 0
	bne	$a1, $a2, .LBB16_4
# %bb.3:                                #   in Loop: Header=BB16_2 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB16_4:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB16_2 Depth=1
	pcaddu18i	$ra, %call36(term_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_7
# %bb.5:                                #   in Loop: Header=BB16_2 Depth=1
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	addi.d	$s2, $s2, 1
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB16_2
.LBB16_6:
	move	$a0, $zero
	b	.LBB16_8
.LBB16_7:
	ori	$a0, $zero, 1
.LBB16_8:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	clause_ContainsVariables, .Lfunc_end16-clause_ContainsVariables
                                        # -- End function
	.globl	clause_ContainsSortRestriction  # -- Begin function clause_ContainsSortRestriction
	.p2align	5
	.type	clause_ContainsSortRestriction,@function
clause_ContainsSortRestriction:         # @clause_ContainsSortRestriction
# %bb.0:
	ld.w	$a3, $a0, 64
	ld.w	$a4, $a0, 68
	add.d	$a3, $a3, $a4
	addi.w	$a3, $a3, -1
	bltz	$a3, .LBB17_10
# %bb.1:                                # %.lr.ph
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a3, $a3, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.w	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(fol_NOT)
	ld.d	$a4, $a4, %got_pc_lo12(fol_NOT)
	pcalau12i	$a5, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a5, $a5, %got_pc_lo12(symbol_SIGNATURE)
	move	$a6, $zero
	addi.w	$a7, $zero, -1
	ori	$t0, $zero, 1
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               #   in Loop: Header=BB17_3 Depth=1
	ld.w	$t1, $a0, 64
	ld.w	$t2, $a0, 68
	add.d	$t1, $t1, $t2
	addi.w	$t1, $t1, -1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	bge	$a7, $t1, .LBB17_10
.LBB17_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a1, 0
	beqz	$t1, .LBB17_5
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	ld.w	$t1, $a2, 0
	bnez	$t1, .LBB17_10
.LBB17_5:                               # %.critedge2
                                        #   in Loop: Header=BB17_3 Depth=1
	ld.d	$t1, $a0, 56
	ldx.d	$t1, $t1, $a6
	ld.d	$t1, $t1, 24
	ld.w	$t2, $t1, 0
	ld.w	$t3, $a4, 0
	bne	$t2, $t3, .LBB17_7
# %bb.6:                                #   in Loop: Header=BB17_3 Depth=1
	ld.d	$t1, $t1, 16
	ld.d	$t1, $t1, 8
	ld.w	$t2, $t1, 0
.LBB17_7:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	ld.d	$t3, $a5, 0
	sub.d	$t2, $zero, $t2
	sra.w	$t2, $t2, $a3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t3, $t2
	ld.w	$t2, $t2, 16
	bne	$t2, $t0, .LBB17_2
# %bb.8:                                #   in Loop: Header=BB17_3 Depth=1
	st.w	$t0, $a2, 0
	ld.d	$t1, $t1, 16
	ld.d	$t1, $t1, 8
	ld.w	$t1, $t1, 0
	blez	$t1, .LBB17_2
# %bb.9:                                #   in Loop: Header=BB17_3 Depth=1
	st.w	$t0, $a1, 0
	b	.LBB17_2
.LBB17_10:                              # %.critedge
	ret
.Lfunc_end17:
	.size	clause_ContainsSortRestriction, .Lfunc_end17-clause_ContainsSortRestriction
                                        # -- End function
	.globl	clause_ContainsFunctions        # -- Begin function clause_ContainsFunctions
	.p2align	5
	.type	clause_ContainsFunctions,@function
clause_ContainsFunctions:               # @clause_ContainsFunctions
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB18_6
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s0, $a0, %got_pc_lo12(fol_NOT)
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s0, 0
	bne	$a1, $a2, .LBB18_4
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB18_4:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB18_2 Depth=1
	pcaddu18i	$ra, %call36(term_ContainsFunctions)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_7
# %bb.5:                                #   in Loop: Header=BB18_2 Depth=1
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	addi.d	$s2, $s2, 1
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB18_2
.LBB18_6:
	move	$a0, $zero
	b	.LBB18_8
.LBB18_7:
	ori	$a0, $zero, 1
.LBB18_8:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	clause_ContainsFunctions, .Lfunc_end18-clause_ContainsFunctions
                                        # -- End function
	.globl	clause_ContainsSymbol           # -- Begin function clause_ContainsSymbol
	.p2align	5
	.type	clause_ContainsSymbol,@function
clause_ContainsSymbol:                  # @clause_ContainsSymbol
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a3
	blez	$a0, .LBB19_6
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB19_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s1, 0
	bne	$a1, $a2, .LBB19_4
# %bb.3:                                #   in Loop: Header=BB19_2 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB19_4:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB19_2 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_7
# %bb.5:                                #   in Loop: Header=BB19_2 Depth=1
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	addi.d	$s3, $s3, 1
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB19_2
.LBB19_6:
	move	$a0, $zero
	b	.LBB19_8
.LBB19_7:
	ori	$a0, $zero, 1
.LBB19_8:                               # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	clause_ContainsSymbol, .Lfunc_end19-clause_ContainsSymbol
                                        # -- End function
	.globl	clause_NumberOfSymbolOccurrences # -- Begin function clause_NumberOfSymbolOccurrences
	.p2align	5
	.type	clause_NumberOfSymbolOccurrences,@function
clause_NumberOfSymbolOccurrences:       # @clause_NumberOfSymbolOccurrences
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
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a3
	blez	$a0, .LBB20_5
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	move	$s3, $zero
	move	$s4, $zero
	move	$s1, $zero
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_2:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB20_3 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(term_NumberOfSymbolOccurrences)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.w	$s1, $a0, $s1
	addi.d	$s4, $s4, 1
	add.d	$a0, $a2, $a1
	add.w	$a0, $a0, $a3
	addi.d	$s3, $s3, 8
	bge	$s4, $a0, .LBB20_6
.LBB20_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB20_2
# %bb.4:                                #   in Loop: Header=BB20_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB20_2
.LBB20_5:
	move	$s1, $zero
.LBB20_6:                               # %._crit_edge
	move	$a0, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end20:
	.size	clause_NumberOfSymbolOccurrences, .Lfunc_end20-clause_NumberOfSymbolOccurrences
                                        # -- End function
	.globl	clause_ImpliesFiniteDomain      # -- Begin function clause_ImpliesFiniteDomain
	.p2align	5
	.type	clause_ImpliesFiniteDomain,@function
clause_ImpliesFiniteDomain:             # @clause_ImpliesFiniteDomain
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $s0, 68
	sub.w	$a2, $zero, $a0
	bne	$a1, $a2, .LBB21_10
# %bb.1:                                # %.preheader
	ld.w	$a2, $s0, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	ori	$fp, $zero, 1
	blez	$a0, .LBB21_11
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s1, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB21_6
	.p2align	4, , 16
.LBB21_3:                               #   in Loop: Header=BB21_6 Depth=1
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB21_10
.LBB21_4:                               # %.thread.thread
                                        #   in Loop: Header=BB21_6 Depth=1
	ld.d	$a0, $a1, 8
	pcaddu18i	$ra, %call36(term_IsGround)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_10
.LBB21_5:                               #   in Loop: Header=BB21_6 Depth=1
	ld.w	$a0, $s0, 64
	ld.w	$a1, $s0, 68
	ld.w	$a2, $s0, 72
	addi.d	$s3, $s3, 1
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	addi.d	$s2, $s2, 8
	bge	$s3, $a0, .LBB21_11
.LBB21_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$s4, $a0, 24
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s1, 0
	bne	$a0, $a1, .LBB21_10
# %bb.7:                                #   in Loop: Header=BB21_6 Depth=1
	ld.d	$a1, $s4, 16
	ld.d	$a0, $a1, 8
	ld.d	$a2, $a1, 0
	ld.w	$a3, $a0, 0
	ld.d	$a0, $a2, 8
	blez	$a3, .LBB21_3
# %bb.8:                                #   in Loop: Header=BB21_6 Depth=1
	pcaddu18i	$ra, %call36(term_IsGround)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB21_6 Depth=1
	ld.d	$a1, $s4, 16
	ld.d	$a0, $a1, 0
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	bgtz	$a0, .LBB21_4
	b	.LBB21_5
.LBB21_10:
	move	$fp, $zero
.LBB21_11:                              # %.loopexit
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end21:
	.size	clause_ImpliesFiniteDomain, .Lfunc_end21-clause_ImpliesFiniteDomain
                                        # -- End function
	.globl	clause_ImpliesNonTrivialDomain  # -- Begin function clause_ImpliesNonTrivialDomain
	.p2align	5
	.type	clause_ImpliesNonTrivialDomain,@function
clause_ImpliesNonTrivialDomain:         # @clause_ImpliesNonTrivialDomain
# %bb.0:
	ld.w	$a2, $a0, 68
	beqz	$a2, .LBB22_6
# %bb.1:
	ld.w	$a1, $a0, 64
	ld.w	$a3, $a0, 72
	add.d	$a2, $a2, $a1
	add.w	$a2, $a2, $a3
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB22_6
# %bb.2:
	ld.d	$a0, $a0, 56
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB22_4
# %bb.3:                                # %clause_LiteralIsEquality.exit
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a2, $a0, 0
	ld.w	$a1, $a1, 0
	beq	$a2, $a1, .LBB22_5
	b	.LBB22_6
.LBB22_4:                               # %clause_LiteralIsEquality.exit.thread
	pcalau12i	$a2, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a2, $a2, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB22_6
.LBB22_5:                               # %clause_LiteralAtom.exit23
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	beqz	$a0, .LBB22_7
.LBB22_6:
	move	$a0, $zero
	ret
.LBB22_7:
	ori	$a0, $zero, 1
	ret
.Lfunc_end22:
	.size	clause_ImpliesNonTrivialDomain, .Lfunc_end22-clause_ImpliesNonTrivialDomain
                                        # -- End function
	.globl	clause_FiniteMonadicPredicates  # -- Begin function clause_FiniteMonadicPredicates
	.p2align	5
	.type	clause_FiniteMonadicPredicates,@function
clause_FiniteMonadicPredicates:         # @clause_FiniteMonadicPredicates
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
	beqz	$a0, .LBB23_26
# %bb.1:                                # %.lr.ph75
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.w	$s4, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a1, %got_pc_lo12(fol_NOT)
	pcalau12i	$a1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s6, $a1, %got_pc_lo12(symbol_SIGNATURE)
	move	$fp, $zero
	move	$s3, $zero
	ori	$s2, $zero, 1
	b	.LBB23_3
	.p2align	4, , 16
.LBB23_2:                               # %._crit_edge
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB23_23
.LBB23_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_7 Depth 2
                                        #       Child Loop BB23_12 Depth 3
                                        #       Child Loop BB23_20 Depth 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s8, $a0, 8
	ld.w	$a0, $s8, 72
	blez	$a0, .LBB23_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.w	$a1, $s8, 68
	ld.w	$a2, $s8, 64
	add.w	$s0, $a1, $a2
	add.w	$s7, $s0, $a0
	b	.LBB23_7
.LBB23_5:                               #   in Loop: Header=BB23_7 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s1, $a0, 8
	st.d	$s3, $a0, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s3, $s2
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB23_6:                               # %list_PointerMember.exit
                                        #   in Loop: Header=BB23_7 Depth=2
	addi.d	$s0, $s0, 1
	bge	$s0, $s7, .LBB23_2
.LBB23_7:                               #   Parent Loop BB23_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_12 Depth 3
                                        #       Child Loop BB23_20 Depth 3
	ld.d	$a0, $s8, 56
	slli.d	$a1, $s0, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s5, 0
	move	$s1, $a1
	bne	$a1, $a2, .LBB23_9
# %bb.8:                                #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a3, $a0, 16
	ld.d	$a3, $a3, 8
	ld.w	$s1, $a3, 0
.LBB23_9:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a3, $s6, 0
	sub.d	$a4, $zero, $s1
	sra.w	$a4, $a4, $s4
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a3, $a3, 16
	bne	$a3, $s2, .LBB23_6
# %bb.10:                               #   in Loop: Header=BB23_7 Depth=2
	beqz	$s3, .LBB23_14
# %bb.11:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB23_7 Depth=2
	move	$a3, $s3
	.p2align	4, , 16
.LBB23_12:                              # %.lr.ph.i
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 8
	beq	$a4, $s1, .LBB23_6
# %bb.13:                               #   in Loop: Header=BB23_12 Depth=3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB23_12
.LBB23_14:                              # %.loopexit65
                                        #   in Loop: Header=BB23_7 Depth=2
	bne	$a1, $a2, .LBB23_16
# %bb.15:                               #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB23_16:                              # %clause_GetLiteralAtom.exit48
                                        #   in Loop: Header=BB23_7 Depth=2
	pcaddu18i	$ra, %call36(term_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	blt	$s2, $s7, .LBB23_5
# %bb.17:                               # %clause_GetLiteralAtom.exit48
                                        #   in Loop: Header=BB23_7 Depth=2
	bnez	$a0, .LBB23_5
# %bb.18:                               #   in Loop: Header=BB23_7 Depth=2
	beqz	$fp, .LBB23_22
# %bb.19:                               # %.lr.ph.i50.preheader
                                        #   in Loop: Header=BB23_7 Depth=2
	move	$a0, $fp
	.p2align	4, , 16
.LBB23_20:                              # %.lr.ph.i50
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 8
	beq	$a1, $s1, .LBB23_6
# %bb.21:                               #   in Loop: Header=BB23_20 Depth=3
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB23_20
.LBB23_22:                              # %.loopexit
                                        #   in Loop: Header=BB23_7 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$fp, $a0, 0
	move	$fp, $a0
	b	.LBB23_6
.LBB23_23:                              # %._crit_edge76
	beqz	$s3, .LBB23_27
# %bb.24:                               # %.lr.ph.i58.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB23_25:                              # %.lr.ph.i58
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
	bnez	$a5, .LBB23_25
	b	.LBB23_27
.LBB23_26:
	move	$fp, $zero
.LBB23_27:                              # %list_Delete.exit
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a1, $a0, 0
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
	pcaddu18i	$t8, %call36(list_PointerDeleteElement)
	jr	$t8
.Lfunc_end23:
	.size	clause_FiniteMonadicPredicates, .Lfunc_end23-clause_FiniteMonadicPredicates
                                        # -- End function
	.globl	clause_NumberOfVarOccs          # -- Begin function clause_NumberOfVarOccs
	.p2align	5
	.type	clause_NumberOfVarOccs,@function
clause_NumberOfVarOccs:                 # @clause_NumberOfVarOccs
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB24_3
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	move	$s0, $zero
	slli.d	$s2, $a0, 3
	.p2align	4, , 16
.LBB24_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	add.w	$s0, $a0, $s0
	bne	$s2, $s1, .LBB24_2
	b	.LBB24_4
.LBB24_3:
	move	$s0, $zero
.LBB24_4:                               # %._crit_edge
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	clause_NumberOfVarOccs, .Lfunc_end24-clause_NumberOfVarOccs
                                        # -- End function
	.globl	clause_ComputeWeight            # -- Begin function clause_ComputeWeight
	.p2align	5
	.type	clause_ComputeWeight,@function
clause_ComputeWeight:                   # @clause_ComputeWeight
# %bb.0:
	ld.w	$a2, $a0, 64
	ld.w	$a3, $a0, 68
	ld.w	$a4, $a0, 72
	add.d	$a2, $a3, $a2
	add.w	$a3, $a2, $a4
	blez	$a3, .LBB25_16
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(stack_POINTER)
	ld.d	$a4, $a2, %got_pc_lo12(stack_POINTER)
	ld.w	$a5, $a4, 0
	pcalau12i	$a2, %got_pc_hi20(stack_STACK)
	ld.d	$a6, $a2, %got_pc_lo12(stack_STACK)
	move	$a7, $zero
	move	$a2, $zero
	b	.LBB25_4
	.p2align	4, , 16
.LBB25_2:                               # %clause_UpdateLiteralWeight.exit.loopexit
                                        #   in Loop: Header=BB25_4 Depth=1
	st.w	$t5, $a4, 0
.LBB25_3:                               # %clause_UpdateLiteralWeight.exit
                                        #   in Loop: Header=BB25_4 Depth=1
	st.w	$t1, $t0, 4
	addi.d	$a7, $a7, 1
	add.w	$a2, $t1, $a2
	beq	$a7, $a3, .LBB25_17
.LBB25_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_11 Depth 2
	ld.d	$t0, $a0, 56
	slli.d	$t1, $a7, 3
	ldx.d	$t0, $t0, $t1
	ld.d	$t4, $t0, 24
	move	$t1, $zero
	move	$t2, $a5
	move	$t3, $a5
	ld.d	$t5, $t4, 16
	beqz	$t5, .LBB25_6
.LBB25_5:                               #   in Loop: Header=BB25_4 Depth=1
	ld.w	$t4, $a1, 180
	addi.w	$t2, $t3, 1
	st.w	$t2, $a4, 0
	bstrpick.d	$t3, $t3, 31, 0
	slli.d	$t3, $t3, 3
	stx.d	$t5, $a6, $t3
	move	$t3, $t2
	add.d	$t1, $t4, $t1
	bne	$t3, $a5, .LBB25_9
	b	.LBB25_15
	.p2align	4, , 16
.LBB25_6:                               #   in Loop: Header=BB25_4 Depth=1
	ld.w	$t4, $t4, 0
	blez	$t4, .LBB25_8
# %bb.7:                                #   in Loop: Header=BB25_4 Depth=1
	ld.w	$t4, $a1, 184
	add.d	$t1, $t4, $t1
	bne	$t3, $a5, .LBB25_9
	b	.LBB25_15
	.p2align	4, , 16
.LBB25_8:                               #   in Loop: Header=BB25_4 Depth=1
	ld.w	$t4, $a1, 180
	add.d	$t1, $t4, $t1
	beq	$t3, $a5, .LBB25_15
	.p2align	4, , 16
.LBB25_9:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB25_4 Depth=1
	addi.w	$t5, $t3, -1
	bstrpick.d	$t6, $t5, 31, 0
	slli.d	$t4, $t6, 3
	ldx.d	$t4, $a6, $t4
	beqz	$t4, .LBB25_11
# %bb.10:                               #   in Loop: Header=BB25_4 Depth=1
	alsl.d	$t6, $t6, $a6, 3
	b	.LBB25_14
	.p2align	4, , 16
.LBB25_11:                              # %.lr.ph69
                                        #   Parent Loop BB25_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a5, $t5, .LBB25_2
# %bb.12:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB25_11 Depth=2
	addi.w	$t5, $t5, -1
	bstrpick.d	$t2, $t5, 31, 0
	slli.d	$t3, $t2, 3
	ldx.d	$t4, $a6, $t3
	beqz	$t4, .LBB25_11
# %bb.13:                               # %.critedge.i.i.loopexit
                                        #   in Loop: Header=BB25_4 Depth=1
	alsl.d	$t6, $t2, $a6, 3
	addi.w	$t2, $t5, 1
	st.w	$t2, $a4, 0
	move	$t3, $t2
.LBB25_14:                              # %.critedge.i.i
                                        #   in Loop: Header=BB25_4 Depth=1
	ld.d	$t5, $t4, 0
	ld.d	$t4, $t4, 8
	st.d	$t5, $t6, 0
	ld.d	$t5, $t4, 16
	bnez	$t5, .LBB25_5
	b	.LBB25_6
.LBB25_15:                              #   in Loop: Header=BB25_4 Depth=1
	move	$a5, $t2
	b	.LBB25_3
.LBB25_16:
	move	$a2, $zero
.LBB25_17:                              # %._crit_edge
	move	$a0, $a2
	ret
.Lfunc_end25:
	.size	clause_ComputeWeight, .Lfunc_end25-clause_ComputeWeight
                                        # -- End function
	.globl	clause_ComputeTermDepth         # -- Begin function clause_ComputeTermDepth
	.p2align	5
	.type	clause_ComputeTermDepth,@function
clause_ComputeTermDepth:                # @clause_ComputeTermDepth
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB26_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a1, %got_pc_lo12(fol_NOT)
	move	$s2, $zero
	move	$s0, $zero
	slli.d	$s3, $a0, 3
	b	.LBB26_3
	.p2align	4, , 16
.LBB26_2:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB26_3 Depth=1
	pcaddu18i	$ra, %call36(term_Depth)
	jirl	$ra, $ra, 0
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a0, $a0, $a1
	addi.d	$s2, $s2, 8
	or	$s0, $a0, $a2
	beq	$s3, $s2, .LBB26_6
.LBB26_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s1, 0
	bne	$a1, $a2, .LBB26_2
# %bb.4:                                #   in Loop: Header=BB26_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB26_2
.LBB26_5:
	move	$s0, $zero
.LBB26_6:                               # %._crit_edge
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	clause_ComputeTermDepth, .Lfunc_end26-clause_ComputeTermDepth
                                        # -- End function
	.globl	clause_MaxTermDepthClauseList   # -- Begin function clause_MaxTermDepthClauseList
	.p2align	5
	.type	clause_MaxTermDepthClauseList,@function
clause_MaxTermDepthClauseList:          # @clause_MaxTermDepthClauseList
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
	beqz	$a0, .LBB27_9
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	move	$s0, $zero
	b	.LBB27_4
	.p2align	4, , 16
.LBB27_2:                               # %clause_ComputeTermDepth.exit.loopexit
                                        #   in Loop: Header=BB27_4 Depth=1
	sltu	$a0, $s0, $s4
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s4, $a0
	or	$s0, $a0, $a1
.LBB27_3:                               # %clause_ComputeTermDepth.exit
                                        #   in Loop: Header=BB27_4 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB27_10
.LBB27_4:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_7 Depth 2
	ld.d	$s2, $fp, 8
	ld.w	$a0, $s2, 64
	ld.w	$a1, $s2, 68
	ld.w	$a2, $s2, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB27_3
# %bb.5:                                # %.lr.ph.i
                                        #   in Loop: Header=BB27_4 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	slli.d	$s5, $a0, 3
	b	.LBB27_7
	.p2align	4, , 16
.LBB27_6:                               # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB27_7 Depth=2
	pcaddu18i	$ra, %call36(term_Depth)
	jirl	$ra, $ra, 0
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a0, $a0, $a1
	addi.d	$s3, $s3, 8
	or	$s4, $a0, $a2
	beq	$s5, $s3, .LBB27_2
.LBB27_7:                               #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s1, 0
	bne	$a1, $a2, .LBB27_6
# %bb.8:                                #   in Loop: Header=BB27_7 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB27_6
.LBB27_9:
	move	$s0, $zero
.LBB27_10:                              # %._crit_edge
	move	$a0, $s0
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
.Lfunc_end27:
	.size	clause_MaxTermDepthClauseList, .Lfunc_end27-clause_MaxTermDepthClauseList
                                        # -- End function
	.globl	clause_ComputeSize              # -- Begin function clause_ComputeSize
	.p2align	5
	.type	clause_ComputeSize,@function
clause_ComputeSize:                     # @clause_ComputeSize
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB28_3
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	move	$s0, $zero
	slli.d	$s2, $a0, 3
	.p2align	4, , 16
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_ComputeSize)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	add.w	$s0, $a0, $s0
	bne	$s2, $s1, .LBB28_2
	b	.LBB28_4
.LBB28_3:
	move	$s0, $zero
.LBB28_4:                               # %._crit_edge
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end28:
	.size	clause_ComputeSize, .Lfunc_end28-clause_ComputeSize
                                        # -- End function
	.globl	clause_WeightCorrect            # -- Begin function clause_WeightCorrect
	.p2align	5
	.type	clause_WeightCorrect,@function
clause_WeightCorrect:                   # @clause_WeightCorrect
# %bb.0:
	ld.w	$a2, $a0, 64
	ld.w	$a3, $a0, 68
	ld.w	$a4, $a0, 72
	add.d	$a2, $a3, $a2
	add.w	$a2, $a2, $a4
	blez	$a2, .LBB29_17
# %bb.1:                                # %.lr.ph
	pcalau12i	$a3, %got_pc_hi20(stack_POINTER)
	ld.d	$a3, $a3, %got_pc_lo12(stack_POINTER)
	ld.w	$a4, $a3, 0
	pcalau12i	$a5, %got_pc_hi20(stack_STACK)
	ld.d	$a6, $a5, %got_pc_lo12(stack_STACK)
	move	$a7, $zero
	move	$a5, $zero
	.p2align	4, , 16
.LBB29_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_9 Depth 2
	ld.d	$t0, $a0, 56
	slli.d	$t1, $a7, 3
	ldx.d	$t0, $t0, $t1
	ld.d	$t4, $t0, 24
	move	$t1, $zero
	move	$t2, $a4
	move	$t3, $a4
	ld.d	$t5, $t4, 16
	beqz	$t5, .LBB29_4
.LBB29_3:                               #   in Loop: Header=BB29_2 Depth=1
	ld.w	$t4, $a1, 180
	addi.w	$t2, $t3, 1
	st.w	$t2, $a3, 0
	bstrpick.d	$t3, $t3, 31, 0
	slli.d	$t3, $t3, 3
	stx.d	$t5, $a6, $t3
	move	$t3, $t2
	add.w	$t1, $t4, $t1
	bne	$t3, $a4, .LBB29_7
	b	.LBB29_15
	.p2align	4, , 16
.LBB29_4:                               #   in Loop: Header=BB29_2 Depth=1
	ld.w	$t4, $t4, 0
	blez	$t4, .LBB29_6
# %bb.5:                                #   in Loop: Header=BB29_2 Depth=1
	ld.w	$t4, $a1, 184
	add.w	$t1, $t4, $t1
	bne	$t3, $a4, .LBB29_7
	b	.LBB29_15
	.p2align	4, , 16
.LBB29_6:                               #   in Loop: Header=BB29_2 Depth=1
	ld.w	$t4, $a1, 180
	add.w	$t1, $t4, $t1
	beq	$t3, $a4, .LBB29_15
	.p2align	4, , 16
.LBB29_7:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB29_2 Depth=1
	addi.w	$t5, $t3, -1
	bstrpick.d	$t6, $t5, 31, 0
	slli.d	$t4, $t6, 3
	ldx.d	$t4, $a6, $t4
	beqz	$t4, .LBB29_9
# %bb.8:                                #   in Loop: Header=BB29_2 Depth=1
	alsl.d	$t6, $t6, $a6, 3
	b	.LBB29_12
	.p2align	4, , 16
.LBB29_9:                               # %.lr.ph78
                                        #   Parent Loop BB29_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a4, $t5, .LBB29_13
# %bb.10:                               # %.lr.ph.i
                                        #   in Loop: Header=BB29_9 Depth=2
	addi.w	$t5, $t5, -1
	bstrpick.d	$t2, $t5, 31, 0
	slli.d	$t3, $t2, 3
	ldx.d	$t4, $a6, $t3
	beqz	$t4, .LBB29_9
# %bb.11:                               # %.critedge.i.loopexit
                                        #   in Loop: Header=BB29_2 Depth=1
	alsl.d	$t6, $t2, $a6, 3
	addi.w	$t2, $t5, 1
	st.w	$t2, $a3, 0
	move	$t3, $t2
.LBB29_12:                              # %.critedge.i
                                        #   in Loop: Header=BB29_2 Depth=1
	ld.d	$t5, $t4, 0
	ld.d	$t4, $t4, 8
	st.d	$t5, $t6, 0
	ld.d	$t5, $t4, 16
	bnez	$t5, .LBB29_3
	b	.LBB29_4
	.p2align	4, , 16
.LBB29_13:                              # %clause_LiteralComputeWeight.exit.loopexit
                                        #   in Loop: Header=BB29_2 Depth=1
	st.w	$t5, $a3, 0
	ld.w	$t0, $t0, 4
	bne	$t1, $t0, .LBB29_16
.LBB29_14:                              #   in Loop: Header=BB29_2 Depth=1
	addi.d	$a7, $a7, 1
	add.w	$a5, $t1, $a5
	bne	$a7, $a2, .LBB29_2
	b	.LBB29_18
.LBB29_15:                              #   in Loop: Header=BB29_2 Depth=1
	move	$a4, $t2
	ld.w	$t0, $t0, 4
	beq	$t1, $t0, .LBB29_14
.LBB29_16:
	move	$a0, $zero
	ret
.LBB29_17:
	move	$a5, $zero
.LBB29_18:                              # %._crit_edge
	ld.w	$a0, $a0, 4
	xor	$a0, $a0, $a5
	sltui	$a0, $a0, 1
	ret
.Lfunc_end29:
	.size	clause_WeightCorrect, .Lfunc_end29-clause_WeightCorrect
                                        # -- End function
	.p2align	5                               # -- Begin function clause_Weight
	.type	clause_Weight,@function
clause_Weight:                          # @clause_Weight
# %bb.0:
	ld.w	$a0, $a0, 4
	ret
.Lfunc_end30:
	.size	clause_Weight, .Lfunc_end30-clause_Weight
                                        # -- End function
	.globl	clause_InsertWeighed            # -- Begin function clause_InsertWeighed
	.p2align	5
	.type	clause_InsertWeighed,@function
clause_InsertWeighed:                   # @clause_InsertWeighed
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a1, .LBB31_2
# %bb.1:
	ld.d	$a1, $fp, 8
	ld.w	$a0, $s0, 4
	ld.w	$a1, $a1, 4
	bgeu	$a0, $a1, .LBB31_3
.LBB31_2:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 0
	move	$fp, $a0
	b	.LBB31_7
.LBB31_3:
	move	$s1, $fp
	.p2align	4, , 16
.LBB31_4:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $s1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB31_6
# %bb.5:                                #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a1, $s1, 8
	ld.w	$a1, $a1, 4
	bgeu	$a0, $a1, .LBB31_4
.LBB31_6:                               # %.critedge
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s2, 0
.LBB31_7:
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end31:
	.size	clause_InsertWeighed, .Lfunc_end31-clause_InsertWeighed
                                        # -- End function
	.globl	clause_ListSortWeighed          # -- Begin function clause_ListSortWeighed
	.p2align	5
	.type	clause_ListSortWeighed,@function
clause_ListSortWeighed:                 # @clause_ListSortWeighed
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
	pcalau12i	$a0, %pc_hi20(clause_SORT)
	addi.d	$s0, $a0, %pc_lo12(clause_SORT)
	beqz	$fp, .LBB32_5
# %bb.1:                                # %.lr.ph.preheader
	ori	$s1, $zero, 19
	move	$s2, $fp
	b	.LBB32_3
	.p2align	4, , 16
.LBB32_2:                               #   in Loop: Header=BB32_3 Depth=1
	slli.d	$s4, $a0, 3
	ldx.d	$s5, $s0, $s4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s5, $a0, 0
	stx.d	$a0, $s0, $s4
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB32_5
.LBB32_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s2, 8
	ld.w	$a0, $s3, 4
	bge	$s1, $a0, .LBB32_2
# %bb.4:                                #   in Loop: Header=BB32_3 Depth=1
	ld.d	$s4, $s0, 160
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s4, $a0, 0
	st.d	$a0, $s0, 160
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB32_3
.LBB32_5:                               # %._crit_edge
	ld.d	$a0, $s0, 160
	pcalau12i	$a1, %pc_hi20(clause_Weight)
	addi.d	$a1, $a1, %pc_lo12(clause_Weight)
	pcaddu18i	$ra, %call36(list_NumberSort)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 152
	st.d	$zero, $s0, 160
	beqz	$a1, .LBB32_106
# %bb.6:
	beqz	$a0, .LBB32_10
# %bb.7:                                # %.preheader.i.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_8:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_8
# %bb.9:
	st.d	$a0, $a2, 0
.LBB32_10:                              # %list_Nconc.exit
	ld.d	$a0, $s0, 144
	st.d	$zero, $s0, 152
	beqz	$a0, .LBB32_107
.LBB32_11:
	beqz	$a1, .LBB32_15
# %bb.12:                               # %.preheader.i.1.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_13:                              # %.preheader.i.1
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_13
# %bb.14:
	st.d	$a1, $a2, 0
.LBB32_15:                              # %list_Nconc.exit.1
	ld.d	$a1, $s0, 136
	st.d	$zero, $s0, 144
	beqz	$a1, .LBB32_108
.LBB32_16:
	beqz	$a0, .LBB32_20
# %bb.17:                               # %.preheader.i.2.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_18:                              # %.preheader.i.2
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_18
# %bb.19:
	st.d	$a0, $a2, 0
.LBB32_20:                              # %list_Nconc.exit.2
	ld.d	$a0, $s0, 128
	st.d	$zero, $s0, 136
	beqz	$a0, .LBB32_109
.LBB32_21:
	beqz	$a1, .LBB32_25
# %bb.22:                               # %.preheader.i.3.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_23:                              # %.preheader.i.3
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_23
# %bb.24:
	st.d	$a1, $a2, 0
.LBB32_25:                              # %list_Nconc.exit.3
	ld.d	$a1, $s0, 120
	st.d	$zero, $s0, 128
	beqz	$a1, .LBB32_110
.LBB32_26:
	beqz	$a0, .LBB32_30
# %bb.27:                               # %.preheader.i.4.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_28:                              # %.preheader.i.4
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_28
# %bb.29:
	st.d	$a0, $a2, 0
.LBB32_30:                              # %list_Nconc.exit.4
	ld.d	$a0, $s0, 112
	st.d	$zero, $s0, 120
	beqz	$a0, .LBB32_111
.LBB32_31:
	beqz	$a1, .LBB32_35
# %bb.32:                               # %.preheader.i.5.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_33:                              # %.preheader.i.5
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_33
# %bb.34:
	st.d	$a1, $a2, 0
.LBB32_35:                              # %list_Nconc.exit.5
	ld.d	$a1, $s0, 104
	st.d	$zero, $s0, 112
	beqz	$a1, .LBB32_112
.LBB32_36:
	beqz	$a0, .LBB32_40
# %bb.37:                               # %.preheader.i.6.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_38:                              # %.preheader.i.6
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_38
# %bb.39:
	st.d	$a0, $a2, 0
.LBB32_40:                              # %list_Nconc.exit.6
	ld.d	$a0, $s0, 96
	st.d	$zero, $s0, 104
	beqz	$a0, .LBB32_113
.LBB32_41:
	beqz	$a1, .LBB32_45
# %bb.42:                               # %.preheader.i.7.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_43:                              # %.preheader.i.7
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_43
# %bb.44:
	st.d	$a1, $a2, 0
.LBB32_45:                              # %list_Nconc.exit.7
	ld.d	$a1, $s0, 88
	st.d	$zero, $s0, 96
	beqz	$a1, .LBB32_114
.LBB32_46:
	beqz	$a0, .LBB32_50
# %bb.47:                               # %.preheader.i.8.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_48:                              # %.preheader.i.8
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_48
# %bb.49:
	st.d	$a0, $a2, 0
.LBB32_50:                              # %list_Nconc.exit.8
	ld.d	$a0, $s0, 80
	st.d	$zero, $s0, 88
	beqz	$a0, .LBB32_115
.LBB32_51:
	beqz	$a1, .LBB32_55
# %bb.52:                               # %.preheader.i.9.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_53:                              # %.preheader.i.9
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_53
# %bb.54:
	st.d	$a1, $a2, 0
.LBB32_55:                              # %list_Nconc.exit.9
	ld.d	$a1, $s0, 72
	st.d	$zero, $s0, 80
	beqz	$a1, .LBB32_116
.LBB32_56:
	beqz	$a0, .LBB32_60
# %bb.57:                               # %.preheader.i.10.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_58:                              # %.preheader.i.10
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_58
# %bb.59:
	st.d	$a0, $a2, 0
.LBB32_60:                              # %list_Nconc.exit.10
	ld.d	$a0, $s0, 64
	st.d	$zero, $s0, 72
	beqz	$a0, .LBB32_117
.LBB32_61:
	beqz	$a1, .LBB32_65
# %bb.62:                               # %.preheader.i.11.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_63:                              # %.preheader.i.11
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_63
# %bb.64:
	st.d	$a1, $a2, 0
.LBB32_65:                              # %list_Nconc.exit.11
	ld.d	$a1, $s0, 56
	st.d	$zero, $s0, 64
	beqz	$a1, .LBB32_118
.LBB32_66:
	beqz	$a0, .LBB32_70
# %bb.67:                               # %.preheader.i.12.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_68:                              # %.preheader.i.12
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_68
# %bb.69:
	st.d	$a0, $a2, 0
.LBB32_70:                              # %list_Nconc.exit.12
	ld.d	$a0, $s0, 48
	st.d	$zero, $s0, 56
	beqz	$a0, .LBB32_119
.LBB32_71:
	beqz	$a1, .LBB32_75
# %bb.72:                               # %.preheader.i.13.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_73:                              # %.preheader.i.13
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_73
# %bb.74:
	st.d	$a1, $a2, 0
.LBB32_75:                              # %list_Nconc.exit.13
	ld.d	$a1, $s0, 40
	st.d	$zero, $s0, 48
	beqz	$a1, .LBB32_120
.LBB32_76:
	beqz	$a0, .LBB32_80
# %bb.77:                               # %.preheader.i.14.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_78:                              # %.preheader.i.14
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_78
# %bb.79:
	st.d	$a0, $a2, 0
.LBB32_80:                              # %list_Nconc.exit.14
	ld.d	$a0, $s0, 32
	st.d	$zero, $s0, 40
	beqz	$a0, .LBB32_121
.LBB32_81:
	beqz	$a1, .LBB32_85
# %bb.82:                               # %.preheader.i.15.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_83:                              # %.preheader.i.15
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_83
# %bb.84:
	st.d	$a1, $a2, 0
.LBB32_85:                              # %list_Nconc.exit.15
	ld.d	$a1, $s0, 24
	st.d	$zero, $s0, 32
	beqz	$a1, .LBB32_122
.LBB32_86:
	beqz	$a0, .LBB32_90
# %bb.87:                               # %.preheader.i.16.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_88:                              # %.preheader.i.16
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_88
# %bb.89:
	st.d	$a0, $a2, 0
.LBB32_90:                              # %list_Nconc.exit.16
	ld.d	$a0, $s0, 16
	st.d	$zero, $s0, 24
	beqz	$a0, .LBB32_123
.LBB32_91:
	beqz	$a1, .LBB32_95
# %bb.92:                               # %.preheader.i.17.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_93:                              # %.preheader.i.17
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_93
# %bb.94:
	st.d	$a1, $a2, 0
.LBB32_95:                              # %list_Nconc.exit.17
	ld.d	$a1, $s0, 8
	st.d	$zero, $s0, 16
	beqz	$a1, .LBB32_124
.LBB32_96:
	beqz	$a0, .LBB32_100
# %bb.97:                               # %.preheader.i.18.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB32_98:                              # %.preheader.i.18
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_98
# %bb.99:
	st.d	$a0, $a2, 0
.LBB32_100:                             # %list_Nconc.exit.18
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	beqz	$a0, .LBB32_125
.LBB32_101:
	beqz	$a1, .LBB32_105
# %bb.102:                              # %.preheader.i.19.preheader
	move	$a3, $a0
	.p2align	4, , 16
.LBB32_103:                             # %.preheader.i.19
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB32_103
# %bb.104:
	st.d	$a1, $a2, 0
.LBB32_105:                             # %list_Nconc.exit.19
	st.d	$zero, $s0, 0
	bnez	$fp, .LBB32_126
	b	.LBB32_128
.LBB32_106:
	move	$a1, $a0
	ld.d	$a0, $s0, 144
	st.d	$zero, $s0, 152
	bnez	$a0, .LBB32_11
.LBB32_107:
	move	$a0, $a1
	ld.d	$a1, $s0, 136
	st.d	$zero, $s0, 144
	bnez	$a1, .LBB32_16
.LBB32_108:
	move	$a1, $a0
	ld.d	$a0, $s0, 128
	st.d	$zero, $s0, 136
	bnez	$a0, .LBB32_21
.LBB32_109:
	move	$a0, $a1
	ld.d	$a1, $s0, 120
	st.d	$zero, $s0, 128
	bnez	$a1, .LBB32_26
.LBB32_110:
	move	$a1, $a0
	ld.d	$a0, $s0, 112
	st.d	$zero, $s0, 120
	bnez	$a0, .LBB32_31
.LBB32_111:
	move	$a0, $a1
	ld.d	$a1, $s0, 104
	st.d	$zero, $s0, 112
	bnez	$a1, .LBB32_36
.LBB32_112:
	move	$a1, $a0
	ld.d	$a0, $s0, 96
	st.d	$zero, $s0, 104
	bnez	$a0, .LBB32_41
.LBB32_113:
	move	$a0, $a1
	ld.d	$a1, $s0, 88
	st.d	$zero, $s0, 96
	bnez	$a1, .LBB32_46
.LBB32_114:
	move	$a1, $a0
	ld.d	$a0, $s0, 80
	st.d	$zero, $s0, 88
	bnez	$a0, .LBB32_51
.LBB32_115:
	move	$a0, $a1
	ld.d	$a1, $s0, 72
	st.d	$zero, $s0, 80
	bnez	$a1, .LBB32_56
.LBB32_116:
	move	$a1, $a0
	ld.d	$a0, $s0, 64
	st.d	$zero, $s0, 72
	bnez	$a0, .LBB32_61
.LBB32_117:
	move	$a0, $a1
	ld.d	$a1, $s0, 56
	st.d	$zero, $s0, 64
	bnez	$a1, .LBB32_66
.LBB32_118:
	move	$a1, $a0
	ld.d	$a0, $s0, 48
	st.d	$zero, $s0, 56
	bnez	$a0, .LBB32_71
.LBB32_119:
	move	$a0, $a1
	ld.d	$a1, $s0, 40
	st.d	$zero, $s0, 48
	bnez	$a1, .LBB32_76
.LBB32_120:
	move	$a1, $a0
	ld.d	$a0, $s0, 32
	st.d	$zero, $s0, 40
	bnez	$a0, .LBB32_81
.LBB32_121:
	move	$a0, $a1
	ld.d	$a1, $s0, 24
	st.d	$zero, $s0, 32
	bnez	$a1, .LBB32_86
.LBB32_122:
	move	$a1, $a0
	ld.d	$a0, $s0, 16
	st.d	$zero, $s0, 24
	bnez	$a0, .LBB32_91
.LBB32_123:
	move	$a0, $a1
	ld.d	$a1, $s0, 8
	st.d	$zero, $s0, 16
	bnez	$a1, .LBB32_96
.LBB32_124:
	move	$a1, $a0
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	bnez	$a0, .LBB32_101
.LBB32_125:
	move	$a0, $a1
	st.d	$zero, $s0, 0
	beqz	$fp, .LBB32_128
.LBB32_126:                             # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB32_127:                             # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $fp, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $fp, 0
	ld.d	$a3, $a1, 128
	st.d	$fp, $a3, 0
	move	$fp, $a6
	bnez	$a6, .LBB32_127
.LBB32_128:                             # %list_Delete.exit
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
.Lfunc_end32:
	.size	clause_ListSortWeighed, .Lfunc_end32-clause_ListSortWeighed
                                        # -- End function
	.globl	clause_LiteralCopy              # -- Begin function clause_LiteralCopy
	.p2align	5
	.type	clause_LiteralCopy,@function
clause_LiteralCopy:                     # @clause_LiteralCopy
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 24
	ld.w	$a0, $fp, 8
	st.w	$a0, $s0, 8
	ld.w	$a0, $fp, 0
	st.w	$a0, $s0, 0
	ld.w	$a0, $fp, 4
	st.w	$a0, $s0, 4
	st.d	$zero, $s0, 16
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end33:
	.size	clause_LiteralCopy, .Lfunc_end33-clause_LiteralCopy
                                        # -- End function
	.globl	clause_Copy                     # -- Begin function clause_Copy
	.p2align	5
	.type	clause_Copy,@function
clause_Copy:                            # @clause_Copy
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
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s0, $a0
	st.w	$a1, $a0, 0
	ld.w	$a0, $fp, 52
	st.w	$a0, $s0, 52
	ld.w	$a0, $fp, 48
	st.w	$a0, $s0, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 12
	ld.w	$a0, $fp, 12
	st.w	$a0, $s0, 12
	ld.wu	$s3, $fp, 24
	addi.w	$a0, $s3, 0
	beqz	$a0, .LBB34_3
# %bb.1:                                # %.lr.ph.i
	ld.d	$s1, $fp, 16
	slli.d	$s2, $s3, 3
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$a0, $s0, 16
	st.w	$s3, $s0, 24
	.p2align	4, , 16
.LBB34_2:                               # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s1, $a1
	ld.d	$a2, $s0, 16
	stx.d	$a0, $a2, $a1
	addi.d	$a1, $a1, 8
	bne	$s2, $a1, .LBB34_2
.LBB34_3:                               # %clause_SetSplitField.exit
	ld.w	$a0, $fp, 8
	st.w	$a0, $s0, 8
	ld.w	$a0, $fp, 4
	st.w	$a0, $s0, 4
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 32
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 40
	ld.w	$a0, $fp, 76
	st.w	$a0, $s0, 76
	ld.w	$a0, $fp, 64
	st.w	$a0, $s0, 64
	ld.w	$a1, $fp, 68
	st.w	$a1, $s0, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$s1, $a0, $a2
	st.w	$a2, $s0, 72
	beqz	$s1, .LBB34_7
# %bb.4:
	slli.d	$s2, $s1, 3
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 56
	blez	$s1, .LBB34_7
# %bb.5:                                # %.lr.ph
	move	$s3, $zero
	.p2align	4, , 16
.LBB34_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s4, $a0, $s3
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 24
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 24
	ld.w	$a0, $s4, 8
	st.w	$a0, $s1, 8
	ld.w	$a0, $s4, 0
	st.w	$a0, $s1, 0
	ld.w	$a0, $s4, 4
	st.w	$a0, $s1, 4
	st.d	$zero, $s1, 16
	ld.d	$a0, $s0, 56
	stx.d	$s1, $a0, $s3
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s3
	addi.d	$s3, $s3, 8
	st.d	$s0, $a0, 16
	bne	$s2, $s3, .LBB34_6
.LBB34_7:                               # %._crit_edge
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end34:
	.size	clause_Copy, .Lfunc_end34-clause_Copy
                                        # -- End function
	.globl	clause_LiteralMaxVar            # -- Begin function clause_LiteralMaxVar
	.p2align	5
	.type	clause_LiteralMaxVar,@function
clause_LiteralMaxVar:                   # @clause_LiteralMaxVar
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	ld.d	$a5, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.d	$a1, $a1, %got_pc_lo12(stack_POINTER)
	ld.w	$a3, $a5, 0
	ld.w	$a0, $a0, 0
	ld.w	$a2, $a1, 0
	bne	$a3, $a0, .LBB35_2
# %bb.1:
	ld.d	$a0, $a5, 16
	ld.d	$a5, $a0, 8
.LBB35_2:                               # %clause_LiteralAtom.exit.preheader
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	ld.d	$a3, $a0, %got_pc_lo12(stack_STACK)
	move	$a0, $zero
	move	$a4, $a2
	ld.d	$a6, $a5, 16
	beqz	$a6, .LBB35_4
.LBB35_3:
	bstrpick.d	$a5, $a4, 31, 0
	addi.w	$a4, $a4, 1
	st.w	$a4, $a1, 0
	slli.d	$a5, $a5, 3
	stx.d	$a6, $a3, $a5
	bne	$a4, $a2, .LBB35_5
	b	.LBB35_8
	.p2align	4, , 16
.LBB35_4:
	ld.w	$a5, $a5, 0
	slti	$a6, $a5, 1
	slt	$a7, $a5, $a0
	masknez	$a5, $a5, $a7
	maskeqz	$a7, $a0, $a7
	or	$a5, $a7, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a5
	beq	$a4, $a2, .LBB35_8
	.p2align	4, , 16
.LBB35_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a3, $a7
	bnez	$a7, .LBB35_7
# %bb.6:                                #   in Loop: Header=BB35_5 Depth=1
	st.w	$a5, $a1, 0
	move	$a4, $a5
	bne	$a2, $a5, .LBB35_5
	b	.LBB35_8
	.p2align	4, , 16
.LBB35_7:                               # %.critedge
	ld.d	$t0, $a7, 0
	ld.d	$a5, $a7, 8
	alsl.d	$a6, $a6, $a3, 3
	st.d	$t0, $a6, 0
	ld.d	$a6, $a5, 16
	bnez	$a6, .LBB35_3
	b	.LBB35_4
.LBB35_8:                               # %._crit_edge
	ret
.Lfunc_end35:
	.size	clause_LiteralMaxVar, .Lfunc_end35-clause_LiteralMaxVar
                                        # -- End function
	.globl	clause_AtomMaxVar               # -- Begin function clause_AtomMaxVar
	.p2align	5
	.type	clause_AtomMaxVar,@function
clause_AtomMaxVar:                      # @clause_AtomMaxVar
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	ld.d	$a2, $a1, %got_pc_lo12(stack_POINTER)
	ld.w	$a3, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(stack_STACK)
	ld.d	$a4, $a1, %got_pc_lo12(stack_STACK)
	move	$a1, $a0
	move	$a0, $zero
	move	$a5, $a3
	ld.d	$a6, $a1, 16
	beqz	$a6, .LBB36_2
.LBB36_1:
	bstrpick.d	$a1, $a5, 31, 0
	addi.w	$a5, $a5, 1
	st.w	$a5, $a2, 0
	slli.d	$a1, $a1, 3
	stx.d	$a6, $a4, $a1
	bne	$a5, $a3, .LBB36_3
	b	.LBB36_6
	.p2align	4, , 16
.LBB36_2:
	ld.w	$a1, $a1, 0
	slti	$a6, $a1, 1
	slt	$a7, $a1, $a0
	masknez	$a1, $a1, $a7
	maskeqz	$a7, $a0, $a7
	or	$a1, $a7, $a1
	masknez	$a1, $a1, $a6
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a1
	beq	$a5, $a3, .LBB36_6
	.p2align	4, , 16
.LBB36_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a5, -1
	bstrpick.d	$a6, $a1, 31, 0
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a4, $a7
	bnez	$a7, .LBB36_5
# %bb.4:                                #   in Loop: Header=BB36_3 Depth=1
	st.w	$a1, $a2, 0
	move	$a5, $a1
	bne	$a3, $a1, .LBB36_3
	b	.LBB36_6
	.p2align	4, , 16
.LBB36_5:                               # %.critedge
	ld.d	$t0, $a7, 0
	ld.d	$a1, $a7, 8
	alsl.d	$a6, $a6, $a4, 3
	st.d	$t0, $a6, 0
	ld.d	$a6, $a1, 16
	bnez	$a6, .LBB36_1
	b	.LBB36_2
.LBB36_6:                               # %._crit_edge
	ret
.Lfunc_end36:
	.size	clause_AtomMaxVar, .Lfunc_end36-clause_AtomMaxVar
                                        # -- End function
	.globl	clause_SetMaxLitFlags           # -- Begin function clause_SetMaxLitFlags
	.p2align	5
	.type	clause_SetMaxLitFlags,@function
clause_SetMaxLitFlags:                  # @clause_SetMaxLitFlags
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
	ld.w	$s1, $a0, 64
	ld.w	$s6, $a0, 68
	ld.wu	$a0, $a0, 48
	ld.w	$s7, $fp, 72
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	add.d	$a1, $s6, $s1
	andi	$a2, $a0, 2
	add.w	$s3, $a1, $s7
	beqz	$a2, .LBB37_2
# %bb.1:
	addi.d	$a0, $a0, -2
	st.w	$a0, $fp, 48
.LBB37_2:                               # %clause_RemoveFlag.exit
	slli.d	$s0, $s3, 3
	blez	$s3, .LBB37_5
# %bb.3:                                # %.lr.ph
	move	$a0, $zero
	.p2align	4, , 16
.LBB37_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$a1, $a1, $a0
	addi.d	$a0, $a0, 8
	st.w	$zero, $a1, 0
	bne	$s0, $a0, .LBB37_4
.LBB37_5:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(clause_STAMPID)
	ld.w	$a0, $a0, %pc_lo12(clause_STAMPID)
	pcaddu18i	$ra, %call36(term_StampOverflow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_9
# %bb.6:                                # %._crit_edge
	blez	$s3, .LBB37_9
# %bb.7:                                # %.lr.ph75
	move	$a0, $zero
	.p2align	4, , 16
.LBB37_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$a1, $a1, $a0
	ld.d	$a1, $a1, 24
	addi.d	$a0, $a0, 8
	st.w	$zero, $a1, 24
	bne	$s0, $a0, .LBB37_8
.LBB37_9:                               # %.loopexit
	pcalau12i	$a0, %got_pc_hi20(term_STAMP)
	ld.d	$a1, $a0, %got_pc_lo12(term_STAMP)
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.w	$a0, $a1, 0
	bge	$s1, $s3, .LBB37_23
# %bb.10:                               # %.lr.ph83.split.us.preheader
	move	$s8, $zero
	add.d	$a0, $s6, $s7
	add.w	$a2, $a0, $s1
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	b	.LBB37_12
	.p2align	4, , 16
.LBB37_11:                              #   in Loop: Header=BB37_12 Depth=1
	addi.d	$s1, $s1, 1
	addi.w	$a0, $s1, 0
	addi.d	$s8, $s8, 1
	beq	$a2, $a0, .LBB37_23
.LBB37_12:                              # %.lr.ph83.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_14 Depth 2
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s1, 3
	ldx.d	$s6, $a0, $a1
	ld.d	$a0, $s6, 24
	ld.w	$a0, $a0, 24
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB37_11
# %bb.13:                               # %.preheader.us
                                        #   in Loop: Header=BB37_12 Depth=1
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	move	$s2, $zero
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	move	$s5, $s8
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB37_14:                              #   Parent Loop BB37_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$s0, $zero, 1
	beqz	$s5, .LBB37_17
# %bb.15:                               #   in Loop: Header=BB37_14 Depth=2
	ld.d	$a0, $fp, 56
	ldx.d	$s1, $a0, $s4
	ld.d	$a0, $s6, 24
	ld.w	$a1, $s6, 8
	ld.d	$a2, $s1, 24
	ld.w	$a3, $s1, 8
	move	$a4, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_LiteralCompare)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -2
	sltui	$a1, $a1, 1
	masknez	$a2, $s2, $a1
	ori	$a3, $zero, 1
	maskeqz	$a1, $a3, $a1
	or	$s2, $a1, $a2
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB37_18
# %bb.16:                               #   in Loop: Header=BB37_14 Depth=2
	ld.d	$a0, $s1, 24
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 24
.LBB37_17:                              #   in Loop: Header=BB37_14 Depth=2
	blt	$s7, $s3, .LBB37_19
	b	.LBB37_20
	.p2align	4, , 16
.LBB37_18:                              #   in Loop: Header=BB37_14 Depth=2
	addi.d	$a0, $a0, -1
	sltu	$s0, $zero, $a0
	bge	$s7, $s3, .LBB37_20
.LBB37_19:                              #   in Loop: Header=BB37_14 Depth=2
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 1
	bnez	$s0, .LBB37_14
.LBB37_20:                              # %._crit_edge79.us
                                        #   in Loop: Header=BB37_12 Depth=1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	beqz	$s0, .LBB37_11
# %bb.21:                               #   in Loop: Header=BB37_12 Depth=1
	ld.w	$a0, $s6, 0
	ori	$a1, $a0, 1
	st.w	$a1, $s6, 0
	bnez	$s2, .LBB37_11
# %bb.22:                               #   in Loop: Header=BB37_12 Depth=1
	ori	$a0, $a0, 3
	st.w	$a0, $s6, 0
	b	.LBB37_11
.LBB37_23:                              # %._crit_edge84
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
.Lfunc_end37:
	.size	clause_SetMaxLitFlags, .Lfunc_end37-clause_SetMaxLitFlags
                                        # -- End function
	.globl	clause_SearchMaxVar             # -- Begin function clause_SearchMaxVar
	.p2align	5
	.type	clause_SearchMaxVar,@function
clause_SearchMaxVar:                    # @clause_SearchMaxVar
# %bb.0:
	ld.w	$a1, $a0, 64
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 72
	add.d	$a1, $a2, $a1
	add.w	$a2, $a1, $a3
	blez	$a2, .LBB38_16
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	ld.d	$a3, $a1, %got_pc_lo12(stack_POINTER)
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a5, $a3, 0
	ld.w	$a4, $a1, 0
	move	$a6, $zero
	move	$a1, $zero
	b	.LBB38_4
	.p2align	4, , 16
.LBB38_2:                               # %clause_LiteralMaxVar.exit.loopexit
                                        #   in Loop: Header=BB38_4 Depth=1
	st.w	$t3, $a3, 0
.LBB38_3:                               # %clause_LiteralMaxVar.exit
                                        #   in Loop: Header=BB38_4 Depth=1
	slt	$t0, $a1, $a7
	masknez	$a1, $a1, $t0
	maskeqz	$a7, $a7, $t0
	addi.d	$a6, $a6, 1
	or	$a1, $a7, $a1
	beq	$a6, $a2, .LBB38_17
.LBB38_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_11 Depth 2
	ld.d	$a7, $a0, 56
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a7, $t0
	ld.d	$t2, $a7, 24
	ld.w	$a7, $t2, 0
	bne	$a7, $a4, .LBB38_6
# %bb.5:                                #   in Loop: Header=BB38_4 Depth=1
	ld.d	$a7, $t2, 16
	ld.d	$t2, $a7, 8
.LBB38_6:                               # %clause_LiteralAtom.exit.i.preheader
                                        #   in Loop: Header=BB38_4 Depth=1
	move	$a7, $zero
	move	$t0, $a5
	move	$t1, $a5
	ld.d	$t3, $t2, 16
	beqz	$t3, .LBB38_8
.LBB38_7:                               #   in Loop: Header=BB38_4 Depth=1
	addi.w	$t0, $t1, 1
	pcalau12i	$t2, %got_pc_hi20(stack_STACK)
	ld.d	$t2, $t2, %got_pc_lo12(stack_STACK)
	st.w	$t0, $a3, 0
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$t1, $t1, 3
	stx.d	$t3, $t2, $t1
	move	$t1, $t0
	bne	$t1, $a5, .LBB38_9
	b	.LBB38_15
	.p2align	4, , 16
.LBB38_8:                               #   in Loop: Header=BB38_4 Depth=1
	ld.w	$t2, $t2, 0
	slti	$t3, $t2, 1
	slt	$t4, $t2, $a7
	masknez	$t2, $t2, $t4
	maskeqz	$t4, $a7, $t4
	or	$t2, $t4, $t2
	masknez	$t2, $t2, $t3
	maskeqz	$a7, $a7, $t3
	or	$a7, $a7, $t2
	beq	$t1, $a5, .LBB38_15
.LBB38_9:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB38_4 Depth=1
	pcalau12i	$t2, %got_pc_hi20(stack_STACK)
	ld.d	$t4, $t2, %got_pc_lo12(stack_STACK)
	addi.w	$t3, $t1, -1
	bstrpick.d	$t5, $t3, 31, 0
	slli.d	$t2, $t5, 3
	ldx.d	$t2, $t4, $t2
	beqz	$t2, .LBB38_11
# %bb.10:                               #   in Loop: Header=BB38_4 Depth=1
	alsl.d	$t4, $t5, $t4, 3
	b	.LBB38_14
	.p2align	4, , 16
.LBB38_11:                              # %.lr.ph66
                                        #   Parent Loop BB38_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a5, $t3, .LBB38_2
# %bb.12:                               # %.lr.ph.i
                                        #   in Loop: Header=BB38_11 Depth=2
	addi.w	$t3, $t3, -1
	bstrpick.d	$t0, $t3, 31, 0
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $t4, $t1
	beqz	$t2, .LBB38_11
# %bb.13:                               # %.critedge.i.loopexit
                                        #   in Loop: Header=BB38_4 Depth=1
	alsl.d	$t4, $t0, $t4, 3
	addi.w	$t0, $t3, 1
	st.w	$t0, $a3, 0
	move	$t1, $t0
.LBB38_14:                              # %.critedge.i
                                        #   in Loop: Header=BB38_4 Depth=1
	ld.d	$t3, $t2, 0
	ld.d	$t2, $t2, 8
	st.d	$t3, $t4, 0
	ld.d	$t3, $t2, 16
	bnez	$t3, .LBB38_7
	b	.LBB38_8
.LBB38_15:                              #   in Loop: Header=BB38_4 Depth=1
	move	$a5, $t0
	b	.LBB38_3
.LBB38_16:
	move	$a1, $zero
.LBB38_17:                              # %._crit_edge
	move	$a0, $a1
	ret
.Lfunc_end38:
	.size	clause_SearchMaxVar, .Lfunc_end38-clause_SearchMaxVar
                                        # -- End function
	.globl	clause_RenameVarsBiggerThan     # -- Begin function clause_RenameVarsBiggerThan
	.p2align	5
	.type	clause_RenameVarsBiggerThan,@function
clause_RenameVarsBiggerThan:            # @clause_RenameVarsBiggerThan
# %bb.0:
	beqz	$a1, .LBB39_5
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a0, $a2, $a0
	add.w	$s1, $a0, $a3
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_StartMaxRenaming)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB39_4
# %bb.2:                                # %.lr.ph
	move	$s0, $zero
	slli.d	$s1, $s1, 3
	.p2align	4, , 16
.LBB39_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Rename)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB39_3
.LBB39_4:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB39_5:                               # %.loopexit
	ret
.Lfunc_end39:
	.size	clause_RenameVarsBiggerThan, .Lfunc_end39-clause_RenameVarsBiggerThan
                                        # -- End function
	.globl	clause_Normalize                # -- Begin function clause_Normalize
	.p2align	5
	.type	clause_Normalize,@function
clause_Normalize:                       # @clause_Normalize
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$s1, $a0, $a2
	pcaddu18i	$ra, %call36(term_StartMinRenaming)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB40_3
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	slli.d	$s1, $s1, 3
	.p2align	4, , 16
.LBB40_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Rename)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB40_2
.LBB40_3:                               # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end40:
	.size	clause_Normalize, .Lfunc_end40-clause_Normalize
                                        # -- End function
	.globl	clause_SubstApply               # -- Begin function clause_SubstApply
	.p2align	5
	.type	clause_SubstApply,@function
clause_SubstApply:                      # @clause_SubstApply
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a1, $a1, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a1, $a2, $a1
	add.w	$a1, $a1, $a3
	blez	$a1, .LBB41_7
# %bb.1:                                # %.lr.ph
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a2, $s1, 0
	move	$s2, $zero
	slli.d	$s3, $a1, 3
	b	.LBB41_3
	.p2align	4, , 16
.LBB41_2:                               #   in Loop: Header=BB41_3 Depth=1
	ld.d	$a1, $a1, 16
	st.d	$a0, $a1, 8
	addi.d	$s2, $s2, 8
	beq	$s3, $s2, .LBB41_7
.LBB41_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s4, $a0, $s2
	ld.d	$a1, $s4, 24
	ld.w	$a0, $a1, 0
	bne	$a0, $a2, .LBB41_5
# %bb.4:                                #   in Loop: Header=BB41_3 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB41_5:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB41_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 24
	ld.w	$a2, $a1, 0
	ld.w	$a3, $s1, 0
	beq	$a2, $a3, .LBB41_2
# %bb.6:                                #   in Loop: Header=BB41_3 Depth=1
	st.d	$a0, $s4, 24
	ld.w	$a2, $s1, 0
	addi.d	$s2, $s2, 8
	bne	$s3, $s2, .LBB41_3
.LBB41_7:                               # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end41:
	.size	clause_SubstApply, .Lfunc_end41-clause_SubstApply
                                        # -- End function
	.globl	clause_ReplaceVariable          # -- Begin function clause_ReplaceVariable
	.p2align	5
	.type	clause_ReplaceVariable,@function
clause_ReplaceVariable:                 # @clause_ReplaceVariable
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
	ld.w	$a0, $a0, 64
	ld.w	$a3, $fp, 68
	ld.w	$a4, $fp, 72
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	addi.w	$a3, $a0, -1
	bltz	$a3, .LBB42_5
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	move	$s1, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a1, %got_pc_lo12(fol_NOT)
	move	$s3, $zero
	bstrpick.d	$s4, $a0, 31, 0
	b	.LBB42_3
	.p2align	4, , 16
.LBB42_2:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB42_3 Depth=1
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(term_ReplaceVariable)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	beqz	$s4, .LBB42_5
.LBB42_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB42_2
# %bb.4:                                #   in Loop: Header=BB42_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB42_2
.LBB42_5:                               # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end42:
	.size	clause_ReplaceVariable, .Lfunc_end42-clause_ReplaceVariable
                                        # -- End function
	.globl	clause_UpdateMaxVar             # -- Begin function clause_UpdateMaxVar
	.p2align	5
	.type	clause_UpdateMaxVar,@function
clause_UpdateMaxVar:                    # @clause_UpdateMaxVar
# %bb.0:
	ld.w	$a1, $a0, 64
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 72
	add.d	$a1, $a2, $a1
	add.w	$a1, $a1, $a3
	blez	$a1, .LBB43_17
# %bb.1:                                # %.lr.ph.i
	pcalau12i	$a2, %got_pc_hi20(stack_POINTER)
	ld.d	$a2, $a2, %got_pc_lo12(stack_POINTER)
	pcalau12i	$a3, %got_pc_hi20(fol_NOT)
	ld.d	$a3, $a3, %got_pc_lo12(fol_NOT)
	ld.w	$a4, $a2, 0
	ld.w	$a3, $a3, 0
	move	$a5, $zero
	move	$a6, $zero
	b	.LBB43_4
	.p2align	4, , 16
.LBB43_2:                               # %clause_LiteralMaxVar.exit.i.loopexit
                                        #   in Loop: Header=BB43_4 Depth=1
	st.w	$a4, $a2, 0
.LBB43_3:                               # %clause_LiteralMaxVar.exit.i
                                        #   in Loop: Header=BB43_4 Depth=1
	slt	$t0, $a6, $a7
	masknez	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	addi.d	$a5, $a5, 1
	or	$a6, $a7, $a6
	beq	$a5, $a1, .LBB43_18
.LBB43_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_12 Depth 2
	ld.d	$a7, $a0, 56
	slli.d	$t0, $a5, 3
	ldx.d	$a7, $a7, $t0
	ld.d	$t3, $a7, 24
	ld.w	$a7, $t3, 0
	bne	$a7, $a3, .LBB43_6
# %bb.5:                                #   in Loop: Header=BB43_4 Depth=1
	ld.d	$a7, $t3, 16
	ld.d	$t3, $a7, 8
.LBB43_6:                               # %clause_LiteralAtom.exit.i.i.preheader
                                        #   in Loop: Header=BB43_4 Depth=1
	move	$a7, $zero
	addi.w	$t0, $a4, 1
	move	$t1, $a4
	move	$t2, $a4
	ld.d	$t4, $t3, 16
	beqz	$t4, .LBB43_8
.LBB43_7:                               #   in Loop: Header=BB43_4 Depth=1
	addi.w	$t1, $t2, 1
	pcalau12i	$t3, %got_pc_hi20(stack_STACK)
	ld.d	$t3, $t3, %got_pc_lo12(stack_STACK)
	st.w	$t1, $a2, 0
	bstrpick.d	$t2, $t2, 31, 0
	slli.d	$t2, $t2, 3
	stx.d	$t4, $t3, $t2
	move	$t2, $t1
	bne	$t2, $a4, .LBB43_9
	b	.LBB43_16
	.p2align	4, , 16
.LBB43_8:                               #   in Loop: Header=BB43_4 Depth=1
	ld.w	$t3, $t3, 0
	slti	$t4, $t3, 1
	slt	$t5, $t3, $a7
	masknez	$t3, $t3, $t5
	maskeqz	$t5, $a7, $t5
	or	$t3, $t5, $t3
	masknez	$t3, $t3, $t4
	maskeqz	$a7, $a7, $t4
	or	$a7, $a7, $t3
	beq	$t2, $a4, .LBB43_16
.LBB43_9:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB43_4 Depth=1
	pcalau12i	$t3, %got_pc_hi20(stack_STACK)
	ld.d	$t4, $t3, %got_pc_lo12(stack_STACK)
	addi.d	$t3, $t2, -1
	bstrpick.d	$t5, $t3, 31, 0
	slli.d	$t3, $t5, 3
	ldx.d	$t3, $t4, $t3
	beqz	$t3, .LBB43_11
# %bb.10:                               #   in Loop: Header=BB43_4 Depth=1
	alsl.d	$t4, $t5, $t4, 3
	b	.LBB43_15
	.p2align	4, , 16
.LBB43_11:                              #   in Loop: Header=BB43_4 Depth=1
	move	$t1, $t2
	.p2align	4, , 16
.LBB43_12:                              # %.lr.ph
                                        #   Parent Loop BB43_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$t0, $t1, .LBB43_2
# %bb.13:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB43_12 Depth=2
	addi.d	$t2, $t1, -2
	bstrpick.d	$t2, $t2, 31, 0
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $t4, $t3
	addi.w	$t1, $t1, -1
	beqz	$t3, .LBB43_12
# %bb.14:                               # %.lr.ph.i.i..critedge.i.i_crit_edge
                                        #   in Loop: Header=BB43_4 Depth=1
	alsl.d	$t4, $t2, $t4, 3
	st.w	$t1, $a2, 0
	move	$t2, $t1
.LBB43_15:                              # %.critedge.i.i
                                        #   in Loop: Header=BB43_4 Depth=1
	ld.d	$t5, $t3, 0
	ld.d	$t3, $t3, 8
	st.d	$t5, $t4, 0
	ld.d	$t4, $t3, 16
	bnez	$t4, .LBB43_7
	b	.LBB43_8
.LBB43_16:                              #   in Loop: Header=BB43_4 Depth=1
	move	$a4, $t1
	b	.LBB43_3
.LBB43_17:
	move	$a6, $zero
.LBB43_18:                              # %clause_SearchMaxVar.exit
	st.w	$a6, $a0, 52
	ret
.Lfunc_end43:
	.size	clause_UpdateMaxVar, .Lfunc_end43-clause_UpdateMaxVar
                                        # -- End function
	.globl	clause_OrientEqualities         # -- Begin function clause_OrientEqualities
	.p2align	5
	.type	clause_OrientEqualities,@function
clause_OrientEqualities:                # @clause_OrientEqualities
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
	ld.w	$a0, $a0, 64
	ld.w	$a3, $fp, 68
	ld.w	$a4, $fp, 72
	add.d	$a0, $a3, $a0
	add.w	$a0, $a0, $a4
	blez	$a0, .LBB44_12
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $zero
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a1, %got_pc_lo12(fol_NOT)
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s4, $a1, %got_pc_lo12(fol_EQUALITY)
	slli.d	$s5, $a0, 3
	ori	$s6, $zero, 3
	ori	$s7, $zero, 1
	b	.LBB44_4
	.p2align	4, , 16
.LBB44_2:                               #   in Loop: Header=BB44_4 Depth=1
	move	$a1, $zero
.LBB44_3:                               #   in Loop: Header=BB44_4 Depth=1
	addi.d	$s2, $s2, 8
	st.w	$a1, $s8, 8
	beq	$s5, $s2, .LBB44_12
.LBB44_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s8, $a0, $s2
	ld.d	$a0, $s8, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s3, 0
	bne	$a1, $a2, .LBB44_6
# %bb.5:                                # %clause_LiteralIsEquality.exit
                                        #   in Loop: Header=BB44_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB44_6:                               # %clause_LiteralIsEquality.exit
                                        #   in Loop: Header=BB44_4 Depth=1
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB44_2
# %bb.7:                                # %clause_LiteralAtom.exit27
                                        #   in Loop: Header=BB44_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $s6, .LBB44_3
# %bb.8:                                # %clause_LiteralAtom.exit27
                                        #   in Loop: Header=BB44_4 Depth=1
	bne	$a0, $s7, .LBB44_2
# %bb.9:                                #   in Loop: Header=BB44_4 Depth=1
	ld.d	$a0, $s8, 24
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s3, 0
	bne	$a2, $a3, .LBB44_11
# %bb.10:                               #   in Loop: Header=BB44_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB44_11:                              # %clause_LiteralAtom.exit33
                                        #   in Loop: Header=BB44_4 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a2, 0
	ld.d	$a3, $a3, 8
	ld.d	$a4, $a2, 8
	st.d	$a3, $a2, 8
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	st.d	$a4, $a0, 8
	b	.LBB44_3
.LBB44_12:                              # %._crit_edge
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
.Lfunc_end44:
	.size	clause_OrientEqualities, .Lfunc_end44-clause_OrientEqualities
                                        # -- End function
	.globl	clause_InsertFlatIntoIndex      # -- Begin function clause_InsertFlatIntoIndex
	.p2align	5
	.type	clause_InsertFlatIntoIndex,@function
clause_InsertFlatIntoIndex:             # @clause_InsertFlatIntoIndex
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
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a3
	blez	$a0, .LBB45_5
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a1, %got_pc_lo12(fol_NOT)
	pcalau12i	$a1, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s3, $a1, %got_pc_lo12(cont_LEFTCONTEXT)
	move	$s4, $zero
	slli.d	$s5, $a0, 3
	b	.LBB45_3
	.p2align	4, , 16
.LBB45_2:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB45_3 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$s6, $a0, 8
	st.d	$a0, $s1, 8
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(st_EntryCreate)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	beq	$s5, $s4, .LBB45_5
.LBB45_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s6, $a0, $s4
	ld.d	$s1, $s6, 24
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s2, 0
	bne	$a0, $a1, .LBB45_2
# %bb.4:                                #   in Loop: Header=BB45_3 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$s1, $a0, 8
	b	.LBB45_2
.LBB45_5:                               # %._crit_edge
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
.Lfunc_end45:
	.size	clause_InsertFlatIntoIndex, .Lfunc_end45-clause_InsertFlatIntoIndex
                                        # -- End function
	.globl	clause_DeleteFlatFromIndex      # -- Begin function clause_DeleteFlatFromIndex
	.p2align	5
	.type	clause_DeleteFlatFromIndex,@function
clause_DeleteFlatFromIndex:             # @clause_DeleteFlatFromIndex
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
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a0, $a2, $a0
	add.w	$s1, $a0, $a3
	blez	$s1, .LBB46_7
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s3, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s4, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s5, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s6, $zero
	b	.LBB46_3
	.p2align	4, , 16
.LBB46_2:                               # %list_Delete.exit
                                        #   in Loop: Header=BB46_3 Depth=1
	st.d	$zero, $a1, 8
	ld.d	$a3, $s3, 0
	move	$a0, $s0
	move	$a2, $a1
	pcaddu18i	$ra, %call36(st_EntryDelete)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	beq	$s6, $s1, .LBB46_7
.LBB46_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_6 Depth 2
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s6, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s2, 0
	bne	$a0, $a2, .LBB46_5
# %bb.4:                                #   in Loop: Header=BB46_3 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB46_5:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB46_3 Depth=1
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB46_2
	.p2align	4, , 16
.LBB46_6:                               # %.lr.ph.i
                                        #   Parent Loop BB46_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s4, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a2, $s4, 128
	st.d	$a0, $a2, 0
	move	$a0, $a5
	bnez	$a5, .LBB46_6
	b	.LBB46_2
.LBB46_7:                               # %._crit_edge
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
	pcaddu18i	$t8, %call36(clause_Delete)
	jr	$t8
.Lfunc_end46:
	.size	clause_DeleteFlatFromIndex, .Lfunc_end46-clause_DeleteFlatFromIndex
                                        # -- End function
	.globl	clause_Delete                   # -- Begin function clause_Delete
	.p2align	5
	.type	clause_Delete,@function
clause_Delete:                          # @clause_Delete
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
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a1, $a0, $a2
	blez	$a1, .LBB47_4
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s1, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s2, $zero
	slli.d	$s3, $a1, 3
	.p2align	4, , 16
.LBB47_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s4, $a0, $s2
	ld.d	$a0, $s4, 24
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s0, 256
	addi.d	$s2, $s2, 8
	st.d	$s4, $a0, 0
	bne	$s3, $s2, .LBB47_2
# %bb.3:                                # %._crit_edge.loopexit
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a1, $a0, $a2
.LBB47_4:                               # %._crit_edge
	beqz	$a1, .LBB47_7
# %bb.5:
	ld.d	$a0, $fp, 56
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB47_8
# %bb.6:
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
.LBB47_7:                               # %clause_FreeLitArray.exit
	ld.d	$a0, $fp, 32
	bnez	$a0, .LBB47_14
	b	.LBB47_16
.LBB47_8:
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a3, %got_pc_hi20(memory_OFFSET)
	ld.d	$a3, $a3, %got_pc_lo12(memory_OFFSET)
	ld.w	$a5, $a2, 0
	ld.wu	$a2, $a3, 0
	mod.wu	$a6, $a1, $a5
	sltui	$a7, $a6, 1
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	sub.d	$a5, $a5, $a6
	masknez	$a5, $a5, $a7
	add.w	$a1, $a5, $a1
	beqz	$a4, .LBB47_29
# %bb.9:
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB47_11
.LBB47_10:
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB47_11:
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a2, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	add.d	$a3, $a1, $a3
	ld.d	$a5, $a4, 0
	ld.d	$a1, $a2, 0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 16
	add.d	$a5, $a3, $a5
	st.d	$a5, $a4, 0
	bltz	$a1, .LBB47_13
# %bb.12:
	add.d	$a1, $a1, $a3
	st.d	$a1, $a2, 0
.LBB47_13:
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB47_16
.LBB47_14:                              # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB47_15:                              # %.lr.ph.i
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
	bnez	$a6, .LBB47_15
.LBB47_16:                              # %list_Delete.exit
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB47_19
# %bb.17:                               # %.lr.ph.i18.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB47_18:                              # %.lr.ph.i18
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
	bnez	$a6, .LBB47_18
.LBB47_19:                              # %list_Delete.exit22
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB47_28
# %bb.20:
	ld.w	$a1, $fp, 24
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB47_22
# %bb.21:
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
	b	.LBB47_28
.LBB47_22:
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a3, %got_pc_hi20(memory_OFFSET)
	ld.d	$a3, $a3, %got_pc_lo12(memory_OFFSET)
	ld.w	$a5, $a2, 0
	ld.wu	$a2, $a3, 0
	mod.wu	$a6, $a1, $a5
	sltui	$a7, $a6, 1
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	sub.d	$a5, $a5, $a6
	masknez	$a5, $a5, $a7
	add.w	$a1, $a5, $a1
	beqz	$a4, .LBB47_30
# %bb.23:
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB47_25
.LBB47_24:
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB47_25:
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a2, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	add.d	$a3, $a1, $a3
	ld.d	$a5, $a4, 0
	ld.d	$a1, $a2, 0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 16
	add.d	$a5, $a3, $a5
	st.d	$a5, $a4, 0
	bltz	$a1, .LBB47_27
# %bb.26:
	add.d	$a1, $a1, $a3
	st.d	$a1, $a2, 0
.LBB47_27:
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB47_28:                              # %memory_Free.exit
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 640
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 640
	st.d	$fp, $a0, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB47_29:
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB47_10
	b	.LBB47_11
.LBB47_30:
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB47_24
	b	.LBB47_25
.Lfunc_end47:
	.size	clause_Delete, .Lfunc_end47-clause_Delete
                                        # -- End function
	.globl	clause_DeleteClauseListFlatFromIndex # -- Begin function clause_DeleteClauseListFlatFromIndex
	.p2align	5
	.type	clause_DeleteClauseListFlatFromIndex,@function
clause_DeleteClauseListFlatFromIndex:   # @clause_DeleteClauseListFlatFromIndex
# %bb.0:
	beqz	$a0, .LBB48_12
# %bb.1:                                # %.lr.ph.preheader
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
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s5, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s3, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s6, $fp
	b	.LBB48_3
	.p2align	4, , 16
.LBB48_2:                               # %clause_DeleteFlatFromIndex.exit
                                        #   in Loop: Header=BB48_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB48_10
.LBB48_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_6 Depth 2
                                        #       Child Loop BB48_9 Depth 3
	ld.d	$s1, $s6, 8
	ld.w	$a0, $s1, 64
	ld.w	$a1, $s1, 68
	ld.w	$a2, $s1, 72
	add.d	$a0, $a1, $a0
	add.w	$s7, $a0, $a2
	blez	$s7, .LBB48_2
# %bb.4:                                # %.lr.ph.i
                                        #   in Loop: Header=BB48_3 Depth=1
	move	$s8, $zero
	b	.LBB48_6
	.p2align	4, , 16
.LBB48_5:                               # %list_Delete.exit.i
                                        #   in Loop: Header=BB48_6 Depth=2
	st.d	$zero, $a1, 8
	ld.d	$a3, $s5, 0
	move	$a0, $s0
	move	$a2, $a1
	pcaddu18i	$ra, %call36(st_EntryDelete)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	beq	$s8, $s7, .LBB48_2
.LBB48_6:                               #   Parent Loop BB48_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB48_9 Depth 3
	ld.d	$a0, $s1, 56
	slli.d	$a1, $s8, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s4, 0
	bne	$a0, $a2, .LBB48_8
# %bb.7:                                #   in Loop: Header=BB48_6 Depth=2
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB48_8:                               # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB48_6 Depth=2
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB48_5
	.p2align	4, , 16
.LBB48_9:                               # %.lr.ph.i.i
                                        #   Parent Loop BB48_3 Depth=1
                                        #     Parent Loop BB48_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s2, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s3, 0
	ld.d	$a5, $a0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a2, $s2, 128
	st.d	$a0, $a2, 0
	move	$a0, $a5
	bnez	$a5, .LBB48_9
	b	.LBB48_5
	.p2align	4, , 16
.LBB48_10:                              # %.lr.ph.i7
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s3, 0
	ld.d	$a3, $fp, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s2, 128
	st.d	$fp, $a0, 0
	move	$fp, $a3
	bnez	$a3, .LBB48_10
# %bb.11:
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
.LBB48_12:                              # %list_Delete.exit
	ret
.Lfunc_end48:
	.size	clause_DeleteClauseListFlatFromIndex, .Lfunc_end48-clause_DeleteClauseListFlatFromIndex
                                        # -- End function
	.globl	clause_MoveBestLiteralToFront   # -- Begin function clause_MoveBestLiteralToFront
	.p2align	5
	.type	clause_MoveBestLiteralToFront,@function
clause_MoveBestLiteralToFront:          # @clause_MoveBestLiteralToFront
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
	beqz	$a0, .LBB49_25
# %bb.1:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB49_25
# %bb.2:
	move	$s2, $a3
	move	$s3, $a1
	beqz	$a1, .LBB49_6
# %bb.3:
	ori	$a0, $zero, 4
	alsl.w	$s1, $a2, $a0, 2
	move	$a0, $s1
	move	$s4, $a2
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bstrpick.d	$a0, $s4, 31, 0
	alsl.d	$a0, $a0, $s0, 2
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB49_4:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, -4
	bgeu	$a0, $s0, .LBB49_4
	.p2align	4, , 16
.LBB49_5:                               # %.lr.ph19.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 16
	pcaddu18i	$ra, %call36(term_ComputeSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 8
	slli.d	$a1, $a1, 2
	stx.w	$a0, $s0, $a1
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB49_5
	b	.LBB49_7
.LBB49_6:
	move	$s1, $zero
	move	$s0, $zero
.LBB49_7:                               # %clause_VarToSizeMap.exit
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s5, 0
	bne	$a1, $a2, .LBB49_9
# %bb.8:
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB49_9:                               # %clause_LiteralAtom.exit
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_ComputeTermSize)
	jirl	$ra, $ra, 0
	ld.d	$s7, $fp, 0
	beqz	$s7, .LBB49_16
# %bb.10:                               # %.lr.ph.preheader
	move	$s3, $a0
	move	$s6, $fp
	b	.LBB49_12
	.p2align	4, , 16
.LBB49_11:                              # %clause_LiteralAtom.exit62
                                        #   in Loop: Header=BB49_12 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_ComputeTermSize)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	ld.d	$a2, $s6, 8
	move	$s4, $a0
	move	$a0, $a1
	move	$a1, $s4
	move	$a3, $s3
	jirl	$ra, $s2, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s4, $a0
	masknez	$a2, $s7, $a0
	ld.d	$s7, $s7, 0
	maskeqz	$a3, $s3, $a0
	or	$s3, $a3, $a1
	maskeqz	$a0, $s6, $a0
	or	$s6, $a0, $a2
	beqz	$s7, .LBB49_14
.LBB49_12:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 8
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s5, 0
	bne	$a1, $a2, .LBB49_11
# %bb.13:                               #   in Loop: Header=BB49_12 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB49_11
.LBB49_14:                              # %._crit_edge
	beq	$s6, $fp, .LBB49_16
# %bb.15:
	ld.d	$a0, $s6, 8
	ld.d	$a1, $fp, 8
	st.d	$a0, $fp, 8
	st.d	$a1, $s6, 8
.LBB49_16:                              # %._crit_edge.thread
	beqz	$s0, .LBB49_25
# %bb.17:
	ori	$a0, $zero, 1024
	bgeu	$s1, $a0, .LBB49_19
# %bb.18:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	slli.d	$a1, $s1, 3
	ldx.d	$a2, $a0, $a1
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s0, 0
	ldx.d	$a0, $a0, $a1
	st.d	$s0, $a0, 0
	b	.LBB49_25
.LBB49_19:
	pcalau12i	$a0, %got_pc_hi20(memory_ALIGN)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a1, %got_pc_hi20(memory_OFFSET)
	ld.d	$a1, $a1, %got_pc_lo12(memory_OFFSET)
	ld.w	$a0, $a0, 0
	ld.wu	$a1, $a1, 0
	mod.wu	$a4, $s1, $a0
	sltui	$a5, $a4, 1
	sub.d	$a1, $s0, $a1
	ld.d	$a3, $a1, -16
	ld.d	$a2, $a1, -8
	sub.d	$a0, $a0, $a4
	masknez	$a0, $a0, $a5
	add.w	$a0, $a0, $s1
	beqz	$a3, .LBB49_26
# %bb.20:
	st.d	$a2, $a3, 8
	beqz	$a2, .LBB49_22
.LBB49_21:
	ld.d	$a1, $a1, -16
	st.d	$a1, $a2, 0
.LBB49_22:
	pcalau12i	$a1, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a1, $a1, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a1, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a1, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a1, $a1, %got_pc_lo12(memory_MAXMEM)
	add.d	$a2, $a0, $a2
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a1, 0
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, 16
	add.d	$a4, $a2, $a4
	st.d	$a4, $a3, 0
	bltz	$a0, .LBB49_24
# %bb.23:
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 0
.LBB49_24:
	addi.d	$a0, $s0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB49_25:                              # %memory_Free.exit
	move	$a0, $fp
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
.LBB49_26:
	pcalau12i	$a3, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a3, $a3, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a2, $a3, 0
	bnez	$a2, .LBB49_21
	b	.LBB49_22
.Lfunc_end49:
	.size	clause_MoveBestLiteralToFront, .Lfunc_end49-clause_MoveBestLiteralToFront
                                        # -- End function
	.p2align	5                               # -- Begin function clause_ComputeTermSize
	.type	clause_ComputeTermSize,@function
clause_ComputeTermSize:                 # @clause_ComputeTermSize
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(stack_POINTER)
	ld.d	$a3, $a2, %got_pc_lo12(stack_POINTER)
	ld.w	$a4, $a3, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	beqz	$a1, .LBB50_9
# %bb.1:                                # %.split.preheader
	ld.d	$a5, $a0, %got_pc_lo12(stack_STACK)
	move	$a0, $zero
	move	$a6, $a4
	ld.w	$a7, $a2, 0
	blez	$a7, .LBB50_3
.LBB50_2:
	slli.d	$a2, $a7, 2
	ldx.w	$a2, $a1, $a2
	b	.LBB50_5
	.p2align	4, , 16
.LBB50_3:
	ld.d	$a7, $a2, 16
	ori	$a2, $zero, 1
	beqz	$a7, .LBB50_5
# %bb.4:
	bstrpick.d	$t0, $a6, 31, 0
	addi.w	$a6, $a6, 1
	st.w	$a6, $a3, 0
	slli.d	$t0, $t0, 3
	stx.d	$a7, $a5, $t0
.LBB50_5:
	add.w	$a0, $a2, $a0
	beq	$a6, $a4, .LBB50_18
	.p2align	4, , 16
.LBB50_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a6, -1
	bstrpick.d	$a7, $a2, 31, 0
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a5, $t0
	bnez	$t0, .LBB50_8
# %bb.7:                                #   in Loop: Header=BB50_6 Depth=1
	st.w	$a2, $a3, 0
	move	$a6, $a2
	bne	$a4, $a2, .LBB50_6
	b	.LBB50_18
	.p2align	4, , 16
.LBB50_8:                               # %.critedge
	ld.d	$t1, $t0, 0
	ld.d	$a2, $t0, 8
	alsl.d	$a7, $a7, $a5, 3
	st.d	$t1, $a7, 0
	ld.w	$a7, $a2, 0
	bgtz	$a7, .LBB50_2
	b	.LBB50_3
.LBB50_9:                               # %.split.us.preheader
	ld.d	$a1, $a0, %got_pc_lo12(stack_STACK)
	move	$a0, $zero
	addi.w	$a5, $a4, 1
	move	$a6, $a4
	b	.LBB50_12
.LBB50_10:                              # %..critedge.us_crit_edge
                                        #   in Loop: Header=BB50_12 Depth=1
	st.w	$a6, $a3, 0
.LBB50_11:                              # %.critedge.us
                                        #   in Loop: Header=BB50_12 Depth=1
	ld.d	$t0, $a2, 0
	ld.d	$a2, $a2, 8
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a1, $a7
.LBB50_12:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_16 Depth 2
	ld.d	$a2, $a2, 16
	beqz	$a2, .LBB50_14
# %bb.13:                               #   in Loop: Header=BB50_12 Depth=1
	bstrpick.d	$a7, $a6, 31, 0
	addi.w	$a6, $a6, 1
	st.w	$a6, $a3, 0
	slli.d	$a7, $a7, 3
	stx.d	$a2, $a1, $a7
.LBB50_14:                              #   in Loop: Header=BB50_12 Depth=1
	addi.w	$a0, $a0, 1
	beq	$a6, $a4, .LBB50_18
# %bb.15:                               # %.lr.ph.us
                                        #   in Loop: Header=BB50_12 Depth=1
	addi.d	$a2, $a6, -1
	bstrpick.d	$a7, $a2, 31, 0
	slli.d	$a2, $a7, 3
	ldx.d	$a2, $a1, $a2
	bnez	$a2, .LBB50_11
	.p2align	4, , 16
.LBB50_16:                              # %.lr.ph40
                                        #   Parent Loop BB50_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a5, $a6, .LBB50_19
# %bb.17:                               #   in Loop: Header=BB50_16 Depth=2
	addi.d	$a2, $a6, -2
	bstrpick.d	$a7, $a2, 31, 0
	slli.d	$a2, $a7, 3
	ldx.d	$a2, $a1, $a2
	addi.w	$a6, $a6, -1
	beqz	$a2, .LBB50_16
	b	.LBB50_10
.LBB50_18:                              # %._crit_edge
	ret
.LBB50_19:                              # %._crit_edge31.split.us
	st.w	$a4, $a3, 0
	ret
.Lfunc_end50:
	.size	clause_ComputeTermSize, .Lfunc_end50-clause_ComputeTermSize
                                        # -- End function
	.globl	clause_LiteralPrint             # -- Begin function clause_LiteralPrint
	.p2align	5
	.type	clause_LiteralPrint,@function
clause_LiteralPrint:                    # @clause_LiteralPrint
# %bb.0:
	ld.d	$a0, $a0, 24
	pcaddu18i	$t8, %call36(term_PrintPrefix)
	jr	$t8
.Lfunc_end51:
	.size	clause_LiteralPrint, .Lfunc_end51-clause_LiteralPrint
                                        # -- End function
	.globl	clause_LiteralListPrint         # -- Begin function clause_LiteralListPrint
	.p2align	5
	.type	clause_LiteralListPrint,@function
clause_LiteralListPrint:                # @clause_LiteralListPrint
# %bb.0:
	beqz	$a0, .LBB52_5
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 24
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB52_4
# %bb.2:                                # %.lr.ph.preheader16
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	.p2align	4, , 16
.LBB52_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB52_3
.LBB52_4:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB52_5:                               # %._crit_edge
	ret
.Lfunc_end52:
	.size	clause_LiteralListPrint, .Lfunc_end52-clause_LiteralListPrint
                                        # -- End function
	.globl	clause_LiteralPrintUnsigned     # -- Begin function clause_LiteralPrintUnsigned
	.p2align	5
	.type	clause_LiteralPrintUnsigned,@function
clause_LiteralPrintUnsigned:            # @clause_LiteralPrintUnsigned
# %bb.0:
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a2, $a0, 0
	ld.w	$a1, $a1, 0
	bne	$a2, $a1, .LBB53_2
# %bb.1:
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB53_2:                               # %clause_LiteralAtom.exit
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end53:
	.size	clause_LiteralPrintUnsigned, .Lfunc_end53-clause_LiteralPrintUnsigned
                                        # -- End function
	.globl	clause_LiteralPrintSigned       # -- Begin function clause_LiteralPrintSigned
	.p2align	5
	.type	clause_LiteralPrintSigned,@function
clause_LiteralPrintSigned:              # @clause_LiteralPrintSigned
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end54:
	.size	clause_LiteralPrintSigned, .Lfunc_end54-clause_LiteralPrintSigned
                                        # -- End function
	.globl	clause_LiteralFPrint            # -- Begin function clause_LiteralFPrint
	.p2align	5
	.type	clause_LiteralFPrint,@function
clause_LiteralFPrint:                   # @clause_LiteralFPrint
# %bb.0:
	ld.d	$a1, $a1, 24
	pcaddu18i	$t8, %call36(term_FPrintPrefix)
	jr	$t8
.Lfunc_end55:
	.size	clause_LiteralFPrint, .Lfunc_end55-clause_LiteralFPrint
                                        # -- End function
	.globl	clause_GetLiteralSubSetList     # -- Begin function clause_GetLiteralSubSetList
	.p2align	5
	.type	clause_GetLiteralSubSetList,@function
clause_GetLiteralSubSetList:            # @clause_GetLiteralSubSetList
# %bb.0:
	bge	$a2, $a1, .LBB56_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB56_2:                               # %.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$s2, $zero
	slli.d	$s0, $a1, 3
	sub.d	$a0, $a2, $a1
	addi.d	$s1, $a0, 1
	.p2align	4, , 16
.LBB56_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s3, $a0, $s0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s2, $a0, 0
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	move	$s2, $a0
	bnez	$s1, .LBB56_3
# %bb.4:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end56:
	.size	clause_GetLiteralSubSetList, .Lfunc_end56-clause_GetLiteralSubSetList
                                        # -- End function
	.globl	clause_ReplaceLiteralSubSet     # -- Begin function clause_ReplaceLiteralSubSet
	.p2align	5
	.type	clause_ReplaceLiteralSubSet,@function
clause_ReplaceLiteralSubSet:            # @clause_ReplaceLiteralSubSet
# %bb.0:
	blt	$a2, $a1, .LBB57_3
# %bb.1:                                # %.lr.ph
	slli.d	$a4, $a1, 3
	sub.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB57_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a3, 8
	ld.d	$a5, $a0, 56
	stx.d	$a2, $a5, $a4
	ld.d	$a3, $a3, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	bnez	$a1, .LBB57_2
.LBB57_3:                               # %._crit_edge
	ret
.Lfunc_end57:
	.size	clause_ReplaceLiteralSubSet, .Lfunc_end57-clause_ReplaceLiteralSubSet
                                        # -- End function
	.globl	clause_FixLiteralOrder          # -- Begin function clause_FixLiteralOrder
	.p2align	5
	.type	clause_FixLiteralOrder,@function
clause_FixLiteralOrder:                 # @clause_FixLiteralOrder
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
	ld.w	$s1, $a0, 64
	ld.w	$s0, $a0, 68
	add.d	$a0, $s0, $s1
	addi.w	$a0, $a0, -1
	bge	$a0, $s1, .LBB58_2
# %bb.1:                                # %clause_GetLiteralSubSetList.exit.thread.i
	pcalau12i	$a0, %pc_hi20(clause_LiteralsCompare)
	addi.d	$a1, $a0, %pc_lo12(clause_LiteralsCompare)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(list_Sort)
	jirl	$ra, $ra, 0
	b	.LBB58_6
.LBB58_2:                               # %.lr.ph.i.i
	move	$a0, $zero
	slli.d	$s2, $s1, 3
	move	$s3, $s0
	.p2align	4, , 16
.LBB58_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$s4, $a1, $s2
	move	$s5, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s5, $a0, 0
	addi.w	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB58_3
# %bb.4:                                # %.lr.ph.i12.i
	pcalau12i	$a1, %pc_hi20(clause_LiteralsCompare)
	addi.d	$a1, $a1, %pc_lo12(clause_LiteralsCompare)
	pcaddu18i	$ra, %call36(list_Sort)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s1, 3
	move	$a2, $a0
	.p2align	4, , 16
.LBB58_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 8
	ld.d	$a4, $fp, 56
	stx.d	$a3, $a4, $a1
	ld.d	$a2, $a2, 0
	addi.w	$s0, $s0, -1
	addi.d	$a1, $a1, 8
	bnez	$s0, .LBB58_5
.LBB58_6:                               # %clause_ReplaceLiteralSubSet.exit.i
	beqz	$a0, .LBB58_9
# %bb.7:                                # %.lr.ph.i18.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB58_8:                               # %.lr.ph.i18.i
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
	bnez	$a6, .LBB58_8
.LBB58_9:                               # %clause_FixLiteralSubsetOrder.exit
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$s0, $fp, 72
	add.w	$s1, $a1, $a0
	add.d	$a0, $s1, $s0
	addi.w	$a0, $a0, -1
	bge	$a0, $s1, .LBB58_11
# %bb.10:                               # %clause_GetLiteralSubSetList.exit.thread.i45
	pcalau12i	$a0, %pc_hi20(clause_LiteralsCompare)
	addi.d	$a1, $a0, %pc_lo12(clause_LiteralsCompare)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(list_Sort)
	jirl	$ra, $ra, 0
	b	.LBB58_15
.LBB58_11:                              # %.lr.ph.i.i23
	move	$a0, $zero
	slli.d	$s2, $s1, 3
	move	$s3, $s0
	.p2align	4, , 16
.LBB58_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$s4, $a1, $s2
	move	$s5, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s5, $a0, 0
	addi.w	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB58_12
# %bb.13:                               # %.lr.ph.i12.i30
	pcalau12i	$a1, %pc_hi20(clause_LiteralsCompare)
	addi.d	$a1, $a1, %pc_lo12(clause_LiteralsCompare)
	pcaddu18i	$ra, %call36(list_Sort)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s1, 3
	move	$a2, $a0
	.p2align	4, , 16
.LBB58_14:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 8
	ld.d	$a4, $fp, 56
	stx.d	$a3, $a4, $a1
	ld.d	$a2, $a2, 0
	addi.w	$s0, $s0, -1
	addi.d	$a1, $a1, 8
	bnez	$s0, .LBB58_14
.LBB58_15:                              # %clause_ReplaceLiteralSubSet.exit.i39
	beqz	$a0, .LBB58_18
# %bb.16:                               # %.lr.ph.i18.i41.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB58_17:                              # %.lr.ph.i18.i41
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
	bnez	$a6, .LBB58_17
.LBB58_18:                              # %clause_FixLiteralSubsetOrder.exit46
	ld.w	$a1, $fp, 64
	blez	$a1, .LBB58_24
# %bb.19:                               # %.lr.ph.i.i48
	move	$s1, $zero
	move	$a0, $zero
	slli.d	$s0, $a1, 3
	.p2align	4, , 16
.LBB58_20:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$s2, $a1, $s1
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	addi.d	$s1, $s1, 8
	st.d	$s3, $a0, 0
	bne	$s0, $s1, .LBB58_20
# %bb.21:                               # %.lr.ph.i12.i55
	pcalau12i	$a1, %pc_hi20(clause_LiteralsCompare)
	addi.d	$a1, $a1, %pc_lo12(clause_LiteralsCompare)
	pcaddu18i	$ra, %call36(list_Sort)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a2, $a0
	.p2align	4, , 16
.LBB58_22:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 8
	ld.d	$a4, $fp, 56
	stx.d	$a3, $a4, $a1
	ld.d	$a2, $a2, 0
	addi.d	$a1, $a1, 8
	bne	$s0, $a1, .LBB58_22
# %bb.23:                               # %clause_ReplaceLiteralSubSet.exit.i64
	bnez	$a0, .LBB58_25
	b	.LBB58_27
.LBB58_24:                              # %clause_GetLiteralSubSetList.exit.thread.i70
	pcalau12i	$a0, %pc_hi20(clause_LiteralsCompare)
	addi.d	$a1, $a0, %pc_lo12(clause_LiteralsCompare)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(list_Sort)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB58_27
.LBB58_25:                              # %.lr.ph.i18.i66.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB58_26:                              # %.lr.ph.i18.i66
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
	bnez	$a6, .LBB58_26
.LBB58_27:                              # %clause_FixLiteralSubsetOrder.exit71
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$s1, $a0, $a2
	pcaddu18i	$ra, %call36(term_StartMinRenaming)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB58_30
# %bb.28:                               # %.lr.ph.i
	move	$s0, $zero
	slli.d	$s1, $s1, 3
	.p2align	4, , 16
.LBB58_29:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Rename)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB58_29
.LBB58_30:                              # %clause_Normalize.exit
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
.Lfunc_end58:
	.size	clause_FixLiteralOrder, .Lfunc_end58-clause_FixLiteralOrder
                                        # -- End function
	.globl	clause_CountSymbols             # -- Begin function clause_CountSymbols
	.p2align	5
	.type	clause_CountSymbols,@function
clause_CountSymbols:                    # @clause_CountSymbols
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
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB59_8
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s2, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s3, $zero
	addi.w	$s4, $zero, -1
	b	.LBB59_4
	.p2align	4, , 16
.LBB59_2:                               # %.thread
                                        #   in Loop: Header=BB59_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB59_3:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB59_4 Depth=1
	pcaddu18i	$ra, %call36(term_CountSymbols)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a0, .LBB59_8
.LBB59_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$s0, $a0, 0
	ld.w	$a1, $s1, 0
	bne	$s0, $a1, .LBB59_6
# %bb.5:                                # %clause_LiteralIsPredicate.exit
                                        #   in Loop: Header=BB59_4 Depth=1
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 8
	ld.w	$s0, $a1, 0
	ld.w	$a1, $s2, 0
	beq	$s0, $a1, .LBB59_2
	b	.LBB59_7
	.p2align	4, , 16
.LBB59_6:                               # %clause_LiteralIsPredicate.exit.thread
                                        #   in Loop: Header=BB59_4 Depth=1
	ld.w	$a1, $s2, 0
	beq	$s0, $a1, .LBB59_3
.LBB59_7:                               #   in Loop: Header=BB59_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(symbol_GetCount)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(symbol_SetCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s1, 0
	beq	$a1, $a2, .LBB59_2
	b	.LBB59_3
.LBB59_8:                               # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end59:
	.size	clause_CountSymbols, .Lfunc_end59-clause_CountSymbols
                                        # -- End function
	.globl	clause_ListOfPredicates         # -- Begin function clause_ListOfPredicates
	.p2align	5
	.type	clause_ListOfPredicates,@function
clause_ListOfPredicates:                # @clause_ListOfPredicates
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
	ld.w	$a1, $a0, 64
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 72
	add.d	$a0, $a1, $a2
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB60_7
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a4, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s2, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s3, $zero
	move	$s0, $zero
	addi.w	$s4, $zero, -1
	b	.LBB60_3
	.p2align	4, , 16
.LBB60_2:                               #   in Loop: Header=BB60_3 Depth=1
	add.d	$a0, $a1, $a2
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, -1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a0, .LBB60_8
.LBB60_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$s5, $a0, 0
	bne	$s5, $a4, .LBB60_5
# %bb.4:                                # %clause_LiteralIsPredicate.exit
                                        #   in Loop: Header=BB60_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$s5, $a0, 0
.LBB60_5:                               # %clause_LiteralIsPredicate.exit.thread
                                        #   in Loop: Header=BB60_3 Depth=1
	ld.w	$a0, $s2, 0
	beq	$s5, $a0, .LBB60_2
# %bb.6:                                # %clause_LiteralPredicate.exit
                                        #   in Loop: Header=BB60_3 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s0, $a0, 0
	ld.w	$a4, $s1, 0
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	move	$s0, $a0
	b	.LBB60_2
.LBB60_7:
	move	$s0, $zero
.LBB60_8:                               # %._crit_edge
	move	$a0, $s0
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
.Lfunc_end60:
	.size	clause_ListOfPredicates, .Lfunc_end60-clause_ListOfPredicates
                                        # -- End function
	.globl	clause_ListOfConstants          # -- Begin function clause_ListOfConstants
	.p2align	5
	.type	clause_ListOfConstants,@function
clause_ListOfConstants:                 # @clause_ListOfConstants
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB61_11
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s0, $a0, %got_pc_lo12(fol_NOT)
	move	$a1, $zero
	move	$s2, $zero
	b	.LBB61_4
	.p2align	4, , 16
.LBB61_2:                               #   in Loop: Header=BB61_4 Depth=1
	move	$a0, $s2
.LBB61_3:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB61_4 Depth=1
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.w	$a2, $a1, -1
	addi.d	$a1, $s1, 1
	move	$s2, $a0
	bge	$s1, $a2, .LBB61_12
.LBB61_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_9 Depth 2
	ld.d	$a0, $fp, 56
	move	$s1, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s0, 0
	bne	$a1, $a2, .LBB61_6
# %bb.5:                                #   in Loop: Header=BB61_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB61_6:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB61_4 Depth=1
	pcaddu18i	$ra, %call36(term_ListOfConstants)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB61_2
# %bb.7:                                #   in Loop: Header=BB61_4 Depth=1
	beqz	$s2, .LBB61_3
# %bb.8:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB61_4 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB61_9:                               # %.preheader.i
                                        #   Parent Loop BB61_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB61_9
# %bb.10:                               #   in Loop: Header=BB61_4 Depth=1
	st.d	$s2, $a1, 0
	b	.LBB61_3
.LBB61_11:
	move	$a0, $zero
.LBB61_12:                              # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end61:
	.size	clause_ListOfConstants, .Lfunc_end61-clause_ListOfConstants
                                        # -- End function
	.globl	clause_ListOfVariables          # -- Begin function clause_ListOfVariables
	.p2align	5
	.type	clause_ListOfVariables,@function
clause_ListOfVariables:                 # @clause_ListOfVariables
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB62_11
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s0, $a0, %got_pc_lo12(fol_NOT)
	move	$a1, $zero
	move	$s2, $zero
	b	.LBB62_4
	.p2align	4, , 16
.LBB62_2:                               #   in Loop: Header=BB62_4 Depth=1
	move	$a0, $s2
.LBB62_3:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB62_4 Depth=1
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.w	$a2, $a1, -1
	addi.d	$a1, $s1, 1
	move	$s2, $a0
	bge	$s1, $a2, .LBB62_12
.LBB62_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_9 Depth 2
	ld.d	$a0, $fp, 56
	move	$s1, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s0, 0
	bne	$a1, $a2, .LBB62_6
# %bb.5:                                #   in Loop: Header=BB62_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB62_6:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB62_4 Depth=1
	pcaddu18i	$ra, %call36(term_ListOfVariables)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB62_2
# %bb.7:                                #   in Loop: Header=BB62_4 Depth=1
	beqz	$s2, .LBB62_3
# %bb.8:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB62_4 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB62_9:                               # %.preheader.i
                                        #   Parent Loop BB62_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB62_9
# %bb.10:                               #   in Loop: Header=BB62_4 Depth=1
	st.d	$s2, $a1, 0
	b	.LBB62_3
.LBB62_11:
	move	$a0, $zero
.LBB62_12:                              # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end62:
	.size	clause_ListOfVariables, .Lfunc_end62-clause_ListOfVariables
                                        # -- End function
	.globl	clause_ListOfFunctions          # -- Begin function clause_ListOfFunctions
	.p2align	5
	.type	clause_ListOfFunctions,@function
clause_ListOfFunctions:                 # @clause_ListOfFunctions
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB63_11
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s0, $a0, %got_pc_lo12(fol_NOT)
	move	$a1, $zero
	move	$s2, $zero
	b	.LBB63_4
	.p2align	4, , 16
.LBB63_2:                               #   in Loop: Header=BB63_4 Depth=1
	move	$a0, $s2
.LBB63_3:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB63_4 Depth=1
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.w	$a2, $a1, -1
	addi.d	$a1, $s1, 1
	move	$s2, $a0
	bge	$s1, $a2, .LBB63_12
.LBB63_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_9 Depth 2
	ld.d	$a0, $fp, 56
	move	$s1, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s0, 0
	bne	$a1, $a2, .LBB63_6
# %bb.5:                                #   in Loop: Header=BB63_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB63_6:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB63_4 Depth=1
	pcaddu18i	$ra, %call36(term_ListOfFunctions)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB63_2
# %bb.7:                                #   in Loop: Header=BB63_4 Depth=1
	beqz	$s2, .LBB63_3
# %bb.8:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB63_4 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB63_9:                               # %.preheader.i
                                        #   Parent Loop BB63_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB63_9
# %bb.10:                               #   in Loop: Header=BB63_4 Depth=1
	st.d	$s2, $a1, 0
	b	.LBB63_3
.LBB63_11:
	move	$a0, $zero
.LBB63_12:                              # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end63:
	.size	clause_ListOfFunctions, .Lfunc_end63-clause_ListOfFunctions
                                        # -- End function
	.globl	clause_CompareAbstract          # -- Begin function clause_CompareAbstract
	.p2align	5
	.type	clause_CompareAbstract,@function
clause_CompareAbstract:                 # @clause_CompareAbstract
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a2, $a0, 4
	ld.w	$a3, $a1, 4
	bne	$a2, $a3, .LBB64_6
# %bb.1:
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a1, 8
	bne	$a2, $a3, .LBB64_6
# %bb.2:
	ld.w	$a2, $a0, 52
	ld.w	$a3, $a1, 52
	bne	$a2, $a3, .LBB64_9
# %bb.3:
	move	$a2, $a0
	ld.w	$a3, $a0, 68
	ld.w	$a4, $a1, 68
	addi.w	$a0, $zero, -1
	blt	$a3, $a4, .LBB64_8
# %bb.4:
	bge	$a4, $a3, .LBB64_10
.LBB64_5:
	ori	$a0, $zero, 1
	b	.LBB64_8
.LBB64_6:
	sltu	$a0, $a2, $a3
	sltu	$a1, $a3, $a2
.LBB64_7:                               # %clause_CompareByClausePartSize.exit.thread
	sub.d	$a0, $a1, $a0
.LBB64_8:                               # %clause_CompareByClausePartSize.exit.thread
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB64_9:
	slt	$a0, $a2, $a3
	slt	$a1, $a3, $a2
	b	.LBB64_7
.LBB64_10:
	ld.w	$a3, $a2, 72
	ld.w	$a4, $a1, 72
	blt	$a3, $a4, .LBB64_8
# %bb.11:
	blt	$a4, $a3, .LBB64_5
# %bb.12:
	ld.w	$a3, $a2, 64
	ld.w	$a4, $a1, 64
	blt	$a3, $a4, .LBB64_8
# %bb.13:                               # %clause_CompareByClausePartSize.exit
	ori	$a0, $zero, 1
	blt	$a4, $a3, .LBB64_8
# %bb.14:
	move	$a0, $a2
	move	$s0, $a2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(clause_CompareByLiterals)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB64_8
# %bb.15:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_CompareBySymbolOccurences)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB64_8
# %bb.16:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_CompareByPredicateDistribution)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB64_8
# %bb.17:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_CompareByConstantDistribution)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB64_8
# %bb.18:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_CompareByFunctionDistribution)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB64_8
# %bb.19:
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_CompareByVariableDistribution)
	jr	$t8
.Lfunc_end64:
	.size	clause_CompareAbstract, .Lfunc_end64-clause_CompareAbstract
                                        # -- End function
	.p2align	5                               # -- Begin function clause_CompareByLiterals
	.type	clause_CompareByLiterals,@function
clause_CompareByLiterals:               # @clause_CompareByLiterals
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
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	move	$s0, $a1
	ld.w	$a1, $fp, 72
	add.d	$a0, $a0, $a2
	ld.w	$a2, $s0, 64
	ld.w	$a3, $s0, 68
	ld.w	$a4, $s0, 72
	add.d	$a0, $a0, $a1
	addi.w	$s1, $a0, -1
	add.d	$a0, $a2, $a3
	add.d	$a0, $a0, $a4
	addi.w	$s2, $a0, -1
	bltz	$s1, .LBB65_6
# %bb.1:
	bltz	$s2, .LBB65_6
# %bb.2:                                # %.lr.ph
	slli.d	$s3, $s2, 3
	slli.d	$s4, $s1, 3
	move	$a2, $s2
	move	$s5, $s1
	.p2align	4, , 16
.LBB65_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ld.d	$a1, $s0, 56
	ldx.d	$a0, $a0, $s4
	ldx.d	$a1, $a1, $s3
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	move	$s6, $a2
	pcaddu18i	$ra, %call36(term_CompareAbstract)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB65_8
# %bb.4:                                #   in Loop: Header=BB65_3 Depth=1
	addi.w	$s2, $s2, -1
	addi.w	$s1, $s1, -1
	blez	$s5, .LBB65_6
# %bb.5:                                #   in Loop: Header=BB65_3 Depth=1
	addi.d	$s5, $s5, -1
	addi.d	$a2, $s6, -1
	addi.d	$s3, $s3, -8
	addi.d	$s4, $s4, -8
	bgtz	$s6, .LBB65_3
.LBB65_6:                               # %._crit_edge
	ori	$a0, $zero, 1
	blt	$s2, $s1, .LBB65_8
# %bb.7:
	slt	$a0, $s1, $s2
	sub.d	$a0, $zero, $a0
.LBB65_8:                               # %.loopexit
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
.Lfunc_end65:
	.size	clause_CompareByLiterals, .Lfunc_end65-clause_CompareByLiterals
                                        # -- End function
	.p2align	5                               # -- Begin function clause_CompareBySymbolOccurences
	.type	clause_CompareBySymbolOccurences,@function
clause_CompareBySymbolOccurences:       # @clause_CompareBySymbolOccurences
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
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	addi.w	$s2, $a0, -1
	move	$a0, $zero
	bltz	$s2, .LBB66_25
# %bb.1:
	move	$s0, $a1
	ld.w	$a1, $a1, 64
	ld.w	$a2, $s0, 68
	ld.w	$a3, $s0, 72
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.w	$a2, $a1, -1
	bltz	$a2, .LBB66_25
# %bb.2:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s1, $a0, %got_pc_lo12(fol_EQUALITY)
	slli.d	$s5, $a2, 3
	slli.d	$s6, $s2, 3
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB66_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s4, $a0, $s6
	ld.d	$a0, $s4, 24
	ld.w	$a1, $a0, 0
	ld.w	$a3, $s3, 0
	move	$s7, $a2
	move	$a4, $a1
	bne	$a1, $a3, .LBB66_5
# %bb.4:                                #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a2, $a2, 8
	ld.w	$a4, $a2, 0
.LBB66_5:                               # %clause_LiteralIsPredicate.exit
                                        #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a5, $s0, 56
	ld.w	$a2, $s1, 0
	ldx.d	$s8, $a5, $s5
	beq	$a4, $a2, .LBB66_20
# %bb.6:                                #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a5, $s8, 24
	ld.w	$a4, $a5, 0
	bne	$a4, $a3, .LBB66_8
# %bb.7:                                #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a4, $a5, 16
	ld.d	$a4, $a4, 8
	ld.w	$a4, $a4, 0
.LBB66_8:                               # %clause_LiteralIsPredicate.exit58
                                        #   in Loop: Header=BB66_3 Depth=1
	beq	$a4, $a2, .LBB66_20
# %bb.9:                                #   in Loop: Header=BB66_3 Depth=1
	bne	$a1, $a3, .LBB66_11
# %bb.10:                               #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB66_11:                              # %clause_LiteralPredicate.exit
                                        #   in Loop: Header=BB66_3 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(symbol_GetCount)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s8, 24
	ld.w	$a1, $a2, 0
	ld.w	$a3, $s3, 0
	move	$s1, $a0
	bne	$a1, $a3, .LBB66_13
# %bb.12:                               #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a0, $a2, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB66_13:                              # %clause_LiteralPredicate.exit69
                                        #   in Loop: Header=BB66_3 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(symbol_GetCount)
	jirl	$ra, $ra, 0
	bltu	$s1, $a0, .LBB66_23
# %bb.14:                               #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a1, $s4, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s3, 0
	bne	$a0, $a2, .LBB66_16
# %bb.15:                               #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
.LBB66_16:                              # %clause_LiteralPredicate.exit76
                                        #   in Loop: Header=BB66_3 Depth=1
	pcaddu18i	$ra, %call36(symbol_GetCount)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s8, 24
	ld.w	$a1, $a2, 0
	ld.w	$a3, $s3, 0
	move	$s1, $a0
	bne	$a1, $a3, .LBB66_18
# %bb.17:                               #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a0, $a2, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB66_18:                              # %clause_LiteralPredicate.exit83
                                        #   in Loop: Header=BB66_3 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(symbol_GetCount)
	jirl	$ra, $ra, 0
	bltu	$a0, $s1, .LBB66_24
# %bb.19:                               # %clause_LiteralPredicate.exit83._crit_edge
                                        #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s6
	ld.d	$a1, $s0, 56
	ld.d	$a0, $a0, 24
	ldx.d	$s8, $a1, $s5
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
.LBB66_20:                              #   in Loop: Header=BB66_3 Depth=1
	ld.d	$a1, $s8, 24
	pcaddu18i	$ra, %call36(term_CompareBySymbolOccurences)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB66_25
# %bb.21:                               #   in Loop: Header=BB66_3 Depth=1
	move	$a0, $zero
	blez	$s2, .LBB66_25
# %bb.22:                               #   in Loop: Header=BB66_3 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$a2, $s7, -1
	addi.d	$s5, $s5, -8
	addi.d	$s6, $s6, -8
	bgtz	$s7, .LBB66_3
	b	.LBB66_25
.LBB66_23:
	addi.w	$a0, $zero, -1
	b	.LBB66_25
.LBB66_24:
	ori	$a0, $zero, 1
.LBB66_25:                              # %.thread
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
.Lfunc_end66:
	.size	clause_CompareBySymbolOccurences, .Lfunc_end66-clause_CompareBySymbolOccurences
                                        # -- End function
	.p2align	5                               # -- Begin function clause_CompareByPredicateDistribution
	.type	clause_CompareByPredicateDistribution,@function
clause_CompareByPredicateDistribution:  # @clause_CompareByPredicateDistribution
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
	move	$s1, $a0
	ld.w	$a2, $a0, 64
	ld.w	$a3, $a0, 68
	ld.w	$a4, $a0, 72
	add.d	$a0, $a2, $a3
	add.d	$a0, $a0, $a4
	addi.w	$a0, $a0, -1
	move	$s0, $a1
	bltz	$a0, .LBB67_7
# %bb.1:                                # %.lr.ph.i
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s3, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s4, $zero
	move	$fp, $zero
	addi.w	$s5, $zero, -1
	b	.LBB67_3
	.p2align	4, , 16
.LBB67_2:                               #   in Loop: Header=BB67_3 Depth=1
	add.d	$a0, $a4, $a3
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	bge	$s5, $a0, .LBB67_8
.LBB67_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 24
	ld.w	$s6, $a0, 0
	bne	$s6, $a1, .LBB67_5
# %bb.4:                                # %clause_LiteralIsPredicate.exit.i
                                        #   in Loop: Header=BB67_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$s6, $a0, 0
.LBB67_5:                               # %clause_LiteralIsPredicate.exit.thread.i
                                        #   in Loop: Header=BB67_3 Depth=1
	ld.w	$a0, $s3, 0
	beq	$s6, $a0, .LBB67_2
# %bb.6:                                # %clause_LiteralPredicate.exit.i
                                        #   in Loop: Header=BB67_3 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$fp, $a0, 0
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s1, 64
	ld.w	$a3, $s1, 68
	ld.w	$a4, $s1, 72
	move	$fp, $a0
	b	.LBB67_2
.LBB67_7:
	move	$fp, $zero
.LBB67_8:                               # %clause_ListOfPredicates.exit
	ld.w	$a1, $s0, 64
	ld.w	$a2, $s0, 68
	ld.w	$a3, $s0, 72
	add.d	$a0, $a1, $a2
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB67_15
# %bb.9:                                # %.lr.ph.i10
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a4, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s3, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s4, $zero
	move	$s1, $zero
	addi.w	$s5, $zero, -1
	b	.LBB67_11
	.p2align	4, , 16
.LBB67_10:                              #   in Loop: Header=BB67_11 Depth=1
	add.d	$a0, $a3, $a2
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	bge	$s5, $a0, .LBB67_16
.LBB67_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 24
	ld.w	$s6, $a0, 0
	bne	$s6, $a4, .LBB67_13
# %bb.12:                               # %clause_LiteralIsPredicate.exit.i36
                                        #   in Loop: Header=BB67_11 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$s6, $a0, 0
.LBB67_13:                              # %clause_LiteralIsPredicate.exit.thread.i21
                                        #   in Loop: Header=BB67_11 Depth=1
	ld.w	$a0, $s3, 0
	beq	$s6, $a0, .LBB67_10
# %bb.14:                               # %clause_LiteralPredicate.exit.i23
                                        #   in Loop: Header=BB67_11 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s1, $a0, 0
	ld.w	$a4, $s2, 0
	ld.w	$a1, $s0, 64
	ld.w	$a2, $s0, 68
	ld.w	$a3, $s0, 72
	move	$s1, $a0
	b	.LBB67_10
.LBB67_15:
	move	$s1, $zero
.LBB67_16:                              # %clause_ListOfPredicates.exit41
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_CompareMultisetsByElementDistribution)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB67_19
# %bb.17:                               # %.lr.ph.i42.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB67_18:                              # %.lr.ph.i42
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $fp, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $fp, 0
	ld.d	$a3, $a1, 128
	st.d	$fp, $a3, 0
	move	$fp, $a6
	bnez	$a6, .LBB67_18
.LBB67_19:                              # %list_Delete.exit
	beqz	$s1, .LBB67_22
# %bb.20:                               # %.lr.ph.i44.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB67_21:                              # %.lr.ph.i44
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
	bnez	$a6, .LBB67_21
.LBB67_22:                              # %list_Delete.exit48
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
.Lfunc_end67:
	.size	clause_CompareByPredicateDistribution, .Lfunc_end67-clause_CompareByPredicateDistribution
                                        # -- End function
	.p2align	5                               # -- Begin function clause_CompareByConstantDistribution
	.type	clause_CompareByConstantDistribution,@function
clause_CompareByConstantDistribution:   # @clause_CompareByConstantDistribution
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, -1
	move	$fp, $a1
	bltz	$a0, .LBB68_11
# %bb.1:                                # %.lr.ph.i
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	move	$a0, $zero
	move	$s4, $zero
	b	.LBB68_4
	.p2align	4, , 16
.LBB68_2:                               #   in Loop: Header=BB68_4 Depth=1
	move	$s0, $s4
.LBB68_3:                               # %list_Nconc.exit.i
                                        #   in Loop: Header=BB68_4 Depth=1
	ld.w	$a0, $s1, 64
	ld.w	$a1, $s1, 68
	ld.w	$a2, $s1, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a1, $a0, -1
	addi.d	$a0, $s3, 1
	move	$s4, $s0
	bge	$s3, $a1, .LBB68_12
.LBB68_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_9 Depth 2
	ld.d	$a1, $s1, 56
	move	$s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB68_6
# %bb.5:                                #   in Loop: Header=BB68_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB68_6:                               # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB68_4 Depth=1
	pcaddu18i	$ra, %call36(term_ListOfConstants)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB68_2
# %bb.7:                                #   in Loop: Header=BB68_4 Depth=1
	move	$s0, $a0
	beqz	$s4, .LBB68_3
# %bb.8:                                # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB68_4 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB68_9:                               # %.preheader.i.i
                                        #   Parent Loop BB68_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB68_9
# %bb.10:                               #   in Loop: Header=BB68_4 Depth=1
	st.d	$s4, $a0, 0
	b	.LBB68_3
.LBB68_11:
	move	$s0, $zero
.LBB68_12:                              # %clause_ListOfConstants.exit
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB68_23
# %bb.13:                               # %.lr.ph.i10
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	move	$a1, $zero
	move	$s3, $zero
	b	.LBB68_16
	.p2align	4, , 16
.LBB68_14:                              #   in Loop: Header=BB68_16 Depth=1
	move	$a0, $s3
.LBB68_15:                              # %list_Nconc.exit.i25
                                        #   in Loop: Header=BB68_16 Depth=1
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.w	$a2, $a1, -1
	addi.d	$a1, $s2, 1
	move	$s3, $a0
	bge	$s2, $a2, .LBB68_24
.LBB68_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_21 Depth 2
	ld.d	$a0, $fp, 56
	move	$s2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s1, 0
	bne	$a1, $a2, .LBB68_18
# %bb.17:                               #   in Loop: Header=BB68_16 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB68_18:                              # %clause_GetLiteralAtom.exit.i17
                                        #   in Loop: Header=BB68_16 Depth=1
	pcaddu18i	$ra, %call36(term_ListOfConstants)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB68_14
# %bb.19:                               #   in Loop: Header=BB68_16 Depth=1
	beqz	$s3, .LBB68_15
# %bb.20:                               # %.preheader.i.i21.preheader
                                        #   in Loop: Header=BB68_16 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB68_21:                              # %.preheader.i.i21
                                        #   Parent Loop BB68_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB68_21
# %bb.22:                               #   in Loop: Header=BB68_16 Depth=1
	st.d	$s3, $a1, 0
	b	.LBB68_15
.LBB68_23:
	move	$a0, $zero
.LBB68_24:                              # %clause_ListOfConstants.exit35
	move	$a1, $a0
	move	$a0, $s0
	move	$fp, $a1
	pcaddu18i	$ra, %call36(list_CompareMultisetsByElementDistribution)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB68_27
# %bb.25:                               # %.lr.ph.i36.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB68_26:                              # %.lr.ph.i36
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a1, 128
	st.d	$s0, $a3, 0
	move	$s0, $a6
	bnez	$a6, .LBB68_26
.LBB68_27:                              # %list_Delete.exit
	beqz	$fp, .LBB68_30
# %bb.28:                               # %.lr.ph.i38.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB68_29:                              # %.lr.ph.i38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $fp, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $fp, 0
	ld.d	$a3, $a1, 128
	st.d	$fp, $a3, 0
	move	$fp, $a6
	bnez	$a6, .LBB68_29
.LBB68_30:                              # %list_Delete.exit42
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end68:
	.size	clause_CompareByConstantDistribution, .Lfunc_end68-clause_CompareByConstantDistribution
                                        # -- End function
	.p2align	5                               # -- Begin function clause_CompareByFunctionDistribution
	.type	clause_CompareByFunctionDistribution,@function
clause_CompareByFunctionDistribution:   # @clause_CompareByFunctionDistribution
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, -1
	move	$fp, $a1
	bltz	$a0, .LBB69_11
# %bb.1:                                # %.lr.ph.i
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	move	$a0, $zero
	move	$s4, $zero
	b	.LBB69_4
	.p2align	4, , 16
.LBB69_2:                               #   in Loop: Header=BB69_4 Depth=1
	move	$s0, $s4
.LBB69_3:                               # %list_Nconc.exit.i
                                        #   in Loop: Header=BB69_4 Depth=1
	ld.w	$a0, $s1, 64
	ld.w	$a1, $s1, 68
	ld.w	$a2, $s1, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a1, $a0, -1
	addi.d	$a0, $s3, 1
	move	$s4, $s0
	bge	$s3, $a1, .LBB69_12
.LBB69_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_9 Depth 2
	ld.d	$a1, $s1, 56
	move	$s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB69_6
# %bb.5:                                #   in Loop: Header=BB69_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB69_6:                               # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB69_4 Depth=1
	pcaddu18i	$ra, %call36(term_ListOfFunctions)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB69_2
# %bb.7:                                #   in Loop: Header=BB69_4 Depth=1
	move	$s0, $a0
	beqz	$s4, .LBB69_3
# %bb.8:                                # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB69_4 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB69_9:                               # %.preheader.i.i
                                        #   Parent Loop BB69_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB69_9
# %bb.10:                               #   in Loop: Header=BB69_4 Depth=1
	st.d	$s4, $a0, 0
	b	.LBB69_3
.LBB69_11:
	move	$s0, $zero
.LBB69_12:                              # %clause_ListOfFunctions.exit
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB69_23
# %bb.13:                               # %.lr.ph.i10
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	move	$a1, $zero
	move	$s3, $zero
	b	.LBB69_16
	.p2align	4, , 16
.LBB69_14:                              #   in Loop: Header=BB69_16 Depth=1
	move	$a0, $s3
.LBB69_15:                              # %list_Nconc.exit.i25
                                        #   in Loop: Header=BB69_16 Depth=1
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.w	$a2, $a1, -1
	addi.d	$a1, $s2, 1
	move	$s3, $a0
	bge	$s2, $a2, .LBB69_24
.LBB69_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_21 Depth 2
	ld.d	$a0, $fp, 56
	move	$s2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s1, 0
	bne	$a1, $a2, .LBB69_18
# %bb.17:                               #   in Loop: Header=BB69_16 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB69_18:                              # %clause_GetLiteralAtom.exit.i17
                                        #   in Loop: Header=BB69_16 Depth=1
	pcaddu18i	$ra, %call36(term_ListOfFunctions)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB69_14
# %bb.19:                               #   in Loop: Header=BB69_16 Depth=1
	beqz	$s3, .LBB69_15
# %bb.20:                               # %.preheader.i.i21.preheader
                                        #   in Loop: Header=BB69_16 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB69_21:                              # %.preheader.i.i21
                                        #   Parent Loop BB69_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB69_21
# %bb.22:                               #   in Loop: Header=BB69_16 Depth=1
	st.d	$s3, $a1, 0
	b	.LBB69_15
.LBB69_23:
	move	$a0, $zero
.LBB69_24:                              # %clause_ListOfFunctions.exit35
	move	$a1, $a0
	move	$a0, $s0
	move	$fp, $a1
	pcaddu18i	$ra, %call36(list_CompareMultisetsByElementDistribution)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB69_27
# %bb.25:                               # %.lr.ph.i36.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB69_26:                              # %.lr.ph.i36
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a1, 128
	st.d	$s0, $a3, 0
	move	$s0, $a6
	bnez	$a6, .LBB69_26
.LBB69_27:                              # %list_Delete.exit
	beqz	$fp, .LBB69_30
# %bb.28:                               # %.lr.ph.i38.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB69_29:                              # %.lr.ph.i38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $fp, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $fp, 0
	ld.d	$a3, $a1, 128
	st.d	$fp, $a3, 0
	move	$fp, $a6
	bnez	$a6, .LBB69_29
.LBB69_30:                              # %list_Delete.exit42
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end69:
	.size	clause_CompareByFunctionDistribution, .Lfunc_end69-clause_CompareByFunctionDistribution
                                        # -- End function
	.p2align	5                               # -- Begin function clause_CompareByVariableDistribution
	.type	clause_CompareByVariableDistribution,@function
clause_CompareByVariableDistribution:   # @clause_CompareByVariableDistribution
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, -1
	move	$fp, $a1
	bltz	$a0, .LBB70_11
# %bb.1:                                # %.lr.ph.i
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	move	$a0, $zero
	move	$s4, $zero
	b	.LBB70_4
	.p2align	4, , 16
.LBB70_2:                               #   in Loop: Header=BB70_4 Depth=1
	move	$s0, $s4
.LBB70_3:                               # %list_Nconc.exit.i
                                        #   in Loop: Header=BB70_4 Depth=1
	ld.w	$a0, $s1, 64
	ld.w	$a1, $s1, 68
	ld.w	$a2, $s1, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a1, $a0, -1
	addi.d	$a0, $s3, 1
	move	$s4, $s0
	bge	$s3, $a1, .LBB70_12
.LBB70_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_9 Depth 2
	ld.d	$a1, $s1, 56
	move	$s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB70_6
# %bb.5:                                #   in Loop: Header=BB70_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB70_6:                               # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB70_4 Depth=1
	pcaddu18i	$ra, %call36(term_ListOfVariables)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB70_2
# %bb.7:                                #   in Loop: Header=BB70_4 Depth=1
	move	$s0, $a0
	beqz	$s4, .LBB70_3
# %bb.8:                                # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB70_4 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB70_9:                               # %.preheader.i.i
                                        #   Parent Loop BB70_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB70_9
# %bb.10:                               #   in Loop: Header=BB70_4 Depth=1
	st.d	$s4, $a0, 0
	b	.LBB70_3
.LBB70_11:
	move	$s0, $zero
.LBB70_12:                              # %clause_ListOfVariables.exit
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB70_23
# %bb.13:                               # %.lr.ph.i10
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	move	$a1, $zero
	move	$s3, $zero
	b	.LBB70_16
	.p2align	4, , 16
.LBB70_14:                              #   in Loop: Header=BB70_16 Depth=1
	move	$a0, $s3
.LBB70_15:                              # %list_Nconc.exit.i25
                                        #   in Loop: Header=BB70_16 Depth=1
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.w	$a2, $a1, -1
	addi.d	$a1, $s2, 1
	move	$s3, $a0
	bge	$s2, $a2, .LBB70_24
.LBB70_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_21 Depth 2
	ld.d	$a0, $fp, 56
	move	$s2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s1, 0
	bne	$a1, $a2, .LBB70_18
# %bb.17:                               #   in Loop: Header=BB70_16 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB70_18:                              # %clause_GetLiteralAtom.exit.i17
                                        #   in Loop: Header=BB70_16 Depth=1
	pcaddu18i	$ra, %call36(term_ListOfVariables)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB70_14
# %bb.19:                               #   in Loop: Header=BB70_16 Depth=1
	beqz	$s3, .LBB70_15
# %bb.20:                               # %.preheader.i.i21.preheader
                                        #   in Loop: Header=BB70_16 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB70_21:                              # %.preheader.i.i21
                                        #   Parent Loop BB70_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB70_21
# %bb.22:                               #   in Loop: Header=BB70_16 Depth=1
	st.d	$s3, $a1, 0
	b	.LBB70_15
.LBB70_23:
	move	$a0, $zero
.LBB70_24:                              # %clause_ListOfVariables.exit35
	move	$a1, $a0
	move	$a0, $s0
	move	$fp, $a1
	pcaddu18i	$ra, %call36(list_CompareMultisetsByElementDistribution)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB70_27
# %bb.25:                               # %.lr.ph.i36.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB70_26:                              # %.lr.ph.i36
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a1, 128
	st.d	$s0, $a3, 0
	move	$s0, $a6
	bnez	$a6, .LBB70_26
.LBB70_27:                              # %list_Delete.exit
	beqz	$fp, .LBB70_30
# %bb.28:                               # %.lr.ph.i38.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB70_29:                              # %.lr.ph.i38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $fp, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $fp, 0
	ld.d	$a3, $a1, 128
	st.d	$fp, $a3, 0
	move	$fp, $a6
	bnez	$a6, .LBB70_29
.LBB70_30:                              # %list_Delete.exit42
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end70:
	.size	clause_CompareByVariableDistribution, .Lfunc_end70-clause_CompareByVariableDistribution
                                        # -- End function
	.globl	clause_Init                     # -- Begin function clause_Init
	.p2align	5
	.type	clause_Init,@function
clause_Init:                            # @clause_Init
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(clause_CLAUSECOUNTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(clause_CLAUSECOUNTER)
	pcaddu18i	$ra, %call36(term_GetStampID)
	jirl	$ra, $ra, 0
	pcalau12i	$a3, %pc_hi20(clause_STAMPID)
	pcalau12i	$a1, %pc_hi20(clause_SORT)
	addi.d	$a1, $a1, %pc_lo12(clause_SORT)
	ori	$a2, $zero, 168
	st.w	$a0, $a3, %pc_lo12(clause_STAMPID)
	move	$a0, $a1
	move	$a1, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end71:
	.size	clause_Init, .Lfunc_end71-clause_Init
                                        # -- End function
	.globl	clause_CreateBody               # -- Begin function clause_CreateBody
	.p2align	5
	.type	clause_CreateBody,@function
clause_CreateBody:                      # @clause_CreateBody
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(clause_CLAUSECOUNTER)
	ld.w	$a2, $a1, %pc_lo12(clause_CLAUSECOUNTER)
	addi.d	$a3, $a2, 1
	st.w	$a3, $a1, %pc_lo12(clause_CLAUSECOUNTER)
	st.w	$a2, $a0, 0
	st.d	$zero, $a0, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.w	$zero, $a0, 24
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 4
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 72
	vst	$vr0, $a0, 32
	beqz	$fp, .LBB72_2
# %bb.1:
	slli.w	$a1, $fp, 3
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	st.d	$a1, $fp, 56
.LBB72_2:
	ori	$a1, $zero, 16
	st.w	$a1, $a0, 76
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end72:
	.size	clause_CreateBody, .Lfunc_end72-clause_CreateBody
                                        # -- End function
	.globl	clause_Create                   # -- Begin function clause_Create
	.p2align	5
	.type	clause_Create,@function
clause_Create:                          # @clause_Create
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
	move	$s8, $a4
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$s3, $a1
	move	$s6, $a0
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(clause_CLAUSECOUNTER)
	ld.w	$a2, $a1, %pc_lo12(clause_CLAUSECOUNTER)
	move	$s1, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, %pc_lo12(clause_CLAUSECOUNTER)
	st.w	$a2, $s1, 0
	st.w	$zero, $s1, 48
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $s1, 4
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 12
	vst	$vr0, $s1, 32
	move	$a0, $s6
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.w	$a0, $s1, 64
	move	$a0, $s3
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.w	$a0, $s1, 68
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 68
	move	$fp, $a0
	st.w	$a0, $s1, 72
	or	$a0, $a1, $a0
	add.w	$s0, $s7, $s5
	bnez	$a0, .LBB73_2
# %bb.1:                                # %clause_IsEmptyClause.exit
	ld.w	$a0, $s1, 64
	beqz	$a0, .LBB73_3
.LBB73_2:                               # %clause_IsEmptyClause.exit.thread
	add.d	$a0, $s0, $fp
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 56
.LBB73_3:
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	blez	$s5, .LBB73_10
# %bb.4:                                # %.lr.ph
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $zero
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$s4, $s5, 3
	ori	$s8, $zero, 0
	lu32i.d	$s8, -1
	.p2align	4, , 16
.LBB73_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s7, $a0, 0
	ld.d	$s0, $s6, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 24
	st.w	$zero, $a0, 8
	st.d	$s8, $a0, 0
	st.d	$s1, $a0, 16
	ld.d	$a1, $s1, 56
	stx.d	$a0, $a1, $fp
	ld.d	$s6, $s6, 0
	addi.d	$fp, $fp, 8
	bne	$s4, $fp, .LBB73_5
# %bb.6:
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	bge	$s5, $s0, .LBB73_11
.LBB73_7:                               # %.lr.ph64
	bstrpick.d	$a0, $s5, 31, 0
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$s6, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a2, %got_pc_lo12(fol_NOT)
	sub.d	$fp, $a1, $a0
	ori	$s0, $zero, 0
	lu32i.d	$s0, -1
	.p2align	4, , 16
.LBB73_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$s5, $s7, 0
	ld.d	$s4, $s3, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 24
	st.w	$zero, $a0, 8
	st.d	$s0, $a0, 0
	st.d	$s1, $a0, 16
	ld.d	$a1, $s1, 56
	stx.d	$a0, $a1, $s6
	ld.d	$s3, $s3, 0
	addi.d	$fp, $fp, -1
	addi.d	$s6, $s6, 8
	bnez	$fp, .LBB73_8
# %bb.9:
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$s5, $s0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	add.w	$fp, $fp, $s0
	blt	$s5, $fp, .LBB73_12
	b	.LBB73_14
.LBB73_10:
	move	$s5, $zero
	blt	$s5, $s0, .LBB73_7
.LBB73_11:
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	add.w	$fp, $fp, $s0
	bge	$s5, $fp, .LBB73_14
.LBB73_12:                              # %.lr.ph70
	bstrpick.d	$a0, $s5, 31, 0
	slli.d	$s0, $a0, 3
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	.p2align	4, , 16
.LBB73_13:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s2, 8
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 24
	st.w	$zero, $a0, 8
	st.d	$s3, $a0, 0
	st.d	$s1, $a0, 16
	ld.d	$a1, $s1, 56
	stx.d	$a0, $a1, $s0
	ld.d	$s2, $s2, 0
	addi.w	$s5, $s5, 1
	addi.d	$s0, $s0, 8
	blt	$s5, $fp, .LBB73_13
.LBB73_14:                              # %._crit_edge71
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(clause_ReInit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	st.w	$a0, $s1, 76
	move	$a0, $s1
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
.Lfunc_end73:
	.size	clause_Create, .Lfunc_end73-clause_Create
                                        # -- End function
	.globl	clause_CreateCrude              # -- Begin function clause_CreateCrude
	.p2align	5
	.type	clause_CreateCrude,@function
clause_CreateCrude:                     # @clause_CreateCrude
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
	move	$s1, $a1
	move	$s4, $a0
	sltu	$s2, $zero, $a3
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(clause_CLAUSECOUNTER)
	ld.w	$a2, $a1, %pc_lo12(clause_CLAUSECOUNTER)
	move	$s0, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, %pc_lo12(clause_CLAUSECOUNTER)
	st.w	$a2, $s0, 0
	slli.d	$a0, $s2, 3
	st.w	$a0, $s0, 48
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $s0, 4
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 12
	vst	$vr0, $s0, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.w	$a0, $s0, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.w	$a0, $s0, 68
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 68
	move	$s7, $a0
	st.w	$a0, $s0, 72
	or	$a0, $a1, $a0
	add.w	$s5, $s5, $s2
	bnez	$a0, .LBB74_2
# %bb.1:                                # %clause_IsEmptyClause.exit
	ld.w	$a0, $s0, 64
	beqz	$a0, .LBB74_3
.LBB74_2:                               # %clause_IsEmptyClause.exit.thread
	add.d	$a0, $s5, $s7
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 56
.LBB74_3:
	blez	$s2, .LBB74_8
# %bb.4:                                # %.lr.ph
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $zero
	slli.d	$s7, $s2, 3
	ori	$s8, $zero, 0
	lu32i.d	$s8, -1
	.p2align	4, , 16
.LBB74_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s4, 8
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 24
	st.w	$zero, $a0, 8
	st.d	$s8, $a0, 0
	st.d	$s0, $a0, 16
	ld.d	$a1, $s0, 56
	stx.d	$a0, $a1, $s6
	ld.d	$s4, $s4, 0
	addi.d	$s6, $s6, 8
	bne	$s7, $s6, .LBB74_5
# %bb.6:
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	blt	$s2, $s5, .LBB74_9
.LBB74_7:                               # %._crit_edge66
	add.w	$s1, $s7, $s5
	blt	$s2, $s1, .LBB74_12
	b	.LBB74_14
.LBB74_8:
	move	$s2, $zero
	bge	$s2, $s5, .LBB74_7
.LBB74_9:                               # %.lr.ph65
	bstrpick.d	$a0, $s2, 31, 0
	bstrpick.d	$a1, $s5, 31, 0
	slli.d	$s2, $a0, 3
	sub.d	$s4, $a1, $a0
	ori	$s6, $zero, 0
	lu32i.d	$s6, -1
	.p2align	4, , 16
.LBB74_10:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s1, 8
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 24
	st.w	$zero, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$s0, $a0, 16
	ld.d	$a1, $s0, 56
	stx.d	$a0, $a1, $s2
	ld.d	$s1, $s1, 0
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	bnez	$s4, .LBB74_10
# %bb.11:
	move	$s2, $s5
	add.w	$s1, $s7, $s5
	bge	$s2, $s1, .LBB74_14
.LBB74_12:                              # %.lr.ph71
	bstrpick.d	$a0, $s2, 31, 0
	slli.d	$s3, $a0, 3
	ori	$s4, $zero, 0
	lu32i.d	$s4, -1
	.p2align	4, , 16
.LBB74_13:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $fp, 8
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 24
	st.w	$zero, $a0, 8
	st.d	$s4, $a0, 0
	st.d	$s0, $a0, 16
	ld.d	$a1, $s0, 56
	stx.d	$a0, $a1, $s3
	ld.d	$fp, $fp, 0
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	blt	$s2, $s1, .LBB74_13
.LBB74_14:                              # %._crit_edge72
	ori	$a0, $zero, 16
	st.w	$a0, $s0, 76
	move	$a0, $s0
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
.Lfunc_end74:
	.size	clause_CreateCrude, .Lfunc_end74-clause_CreateCrude
                                        # -- End function
	.globl	clause_CreateUnnormalized       # -- Begin function clause_CreateUnnormalized
	.p2align	5
	.type	clause_CreateUnnormalized,@function
clause_CreateUnnormalized:              # @clause_CreateUnnormalized
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
	move	$fp, $a2
	move	$s1, $a1
	move	$s3, $a0
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(clause_CLAUSECOUNTER)
	ld.w	$a2, $a1, %pc_lo12(clause_CLAUSECOUNTER)
	move	$s0, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, %pc_lo12(clause_CLAUSECOUNTER)
	st.w	$a2, $s0, 0
	st.w	$zero, $s0, 48
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $s0, 4
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 12
	vst	$vr0, $s0, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.w	$a0, $s0, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.w	$a0, $s0, 68
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 68
	or	$a1, $a1, $a0
	st.w	$a0, $s0, 72
	bnez	$a1, .LBB75_2
# %bb.1:                                # %clause_IsEmptyClause.exit
	ld.w	$a1, $s0, 64
	beqz	$a1, .LBB75_14
.LBB75_2:                               # %clause_IsEmptyClause.exit.thread
	add.w	$s4, $s4, $s2
	add.w	$s6, $a0, $s4
	slli.w	$a0, $s6, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 56
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	blez	$s2, .LBB75_7
# %bb.3:                                # %.lr.ph.preheader
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $zero
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$s6, $s2, 3
	ori	$s5, $zero, 0
	lu32i.d	$s5, -1
	.p2align	4, , 16
.LBB75_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s4, $a0, 0
	ld.d	$s8, $s3, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s8, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 24
	st.w	$zero, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$s0, $a0, 16
	ld.d	$a1, $s0, 56
	stx.d	$a0, $a1, $s7
	ld.d	$s3, $s3, 0
	addi.d	$s7, $s7, 8
	bne	$s6, $s7, .LBB75_4
# %bb.5:
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	blt	$s2, $s4, .LBB75_8
.LBB75_6:                               # %.preheader
	blt	$s2, $s6, .LBB75_11
	b	.LBB75_13
.LBB75_7:
	move	$s2, $zero
	bge	$s2, $s4, .LBB75_6
.LBB75_8:                               # %.lr.ph59.preheader
	bstrpick.d	$a0, $s2, 31, 0
	bstrpick.d	$a1, $s4, 31, 0
	slli.d	$s3, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a2, %got_pc_lo12(fol_NOT)
	sub.d	$s7, $a1, $a0
	ori	$s8, $zero, 0
	lu32i.d	$s8, -1
	.p2align	4, , 16
.LBB75_9:                               # %.lr.ph59
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s2, $s4, 0
	ld.d	$s5, $s1, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s5, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 24
	st.w	$zero, $a0, 8
	st.d	$s8, $a0, 0
	st.d	$s0, $a0, 16
	ld.d	$a1, $s0, 56
	stx.d	$a0, $a1, $s3
	ld.d	$s1, $s1, 0
	addi.d	$s7, $s7, -1
	addi.d	$s3, $s3, 8
	bnez	$s7, .LBB75_9
# %bb.10:
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	bge	$s2, $s6, .LBB75_13
.LBB75_11:                              # %.lr.ph63.preheader
	bstrpick.d	$a0, $s2, 31, 0
	slli.d	$s1, $a0, 3
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	.p2align	4, , 16
.LBB75_12:                              # %.lr.ph63
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $fp, 8
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 24
	st.w	$zero, $a0, 8
	st.d	$s3, $a0, 0
	st.d	$s0, $a0, 16
	ld.d	$a1, $s0, 56
	stx.d	$a0, $a1, $s1
	ld.d	$fp, $fp, 0
	addi.w	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $s6, .LBB75_12
.LBB75_13:                              # %._crit_edge
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
.LBB75_14:
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
.Lfunc_end75:
	.size	clause_CreateUnnormalized, .Lfunc_end75-clause_CreateUnnormalized
                                        # -- End function
	.globl	clause_CreateFromLiterals       # -- Begin function clause_CreateFromLiterals
	.p2align	5
	.type	clause_CreateFromLiterals,@function
clause_CreateFromLiterals:              # @clause_CreateFromLiterals
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
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $a2
	beqz	$a0, .LBB76_10
# %bb.1:                                # %.lr.ph
	move	$s3, $a0
	beqz	$a1, .LBB76_11
# %bb.2:                                # %.lr.ph.split.preheader
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.w	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s8, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s1, $a0, %got_pc_lo12(symbol_SIGNATURE)
	move	$s6, $zero
	move	$s4, $zero
	move	$s5, $zero
	ori	$fp, $zero, 1
	b	.LBB76_5
	.p2align	4, , 16
.LBB76_3:                               #   in Loop: Header=BB76_5 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s4, $a0, 0
	move	$s4, $a0
.LBB76_4:                               #   in Loop: Header=BB76_5 Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB76_14
.LBB76_5:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s3, 8
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s8, 0
	bne	$a0, $a1, .LBB76_3
# %bb.6:                                #   in Loop: Header=BB76_5 Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	ld.d	$a2, $s1, 0
	sub.d	$a1, $zero, $a1
	sra.w	$a1, $a1, $s7
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 16
	bne	$a1, $fp, .LBB76_9
# %bb.7:                                #   in Loop: Header=BB76_5 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB76_9
# %bb.8:                                #   in Loop: Header=BB76_5 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s6, $a0, 0
	move	$s6, $a0
	b	.LBB76_4
	.p2align	4, , 16
.LBB76_9:                               #   in Loop: Header=BB76_5 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
	b	.LBB76_4
.LBB76_10:
	move	$s5, $zero
	move	$s4, $zero
	b	.LBB76_13
.LBB76_11:                              # %.lr.ph.split.us.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$fp, $a0, %got_pc_lo12(fol_NOT)
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB76_12:                              # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s3, 8
	ld.w	$a0, $s0, 0
	ld.w	$a1, $fp, 0
	xor	$a0, $a0, $a1
	sltui	$s1, $a0, 1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	masknez	$a1, $s4, $s1
	maskeqz	$a2, $s5, $s1
	or	$a1, $a2, $a1
	masknez	$a2, $s5, $s1
	maskeqz	$a3, $a0, $s1
	st.d	$a1, $a0, 0
	ld.d	$s3, $s3, 0
	or	$s5, $a3, $a2
	masknez	$a0, $a0, $s1
	maskeqz	$a1, $s4, $s1
	or	$s4, $a1, $a0
	bnez	$s3, .LBB76_12
.LBB76_13:
	move	$s6, $zero
.LBB76_14:                              # %._crit_edge
	move	$a0, $s6
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(clause_CreateCrude)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$s6, .LBB76_17
# %bb.15:                               # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB76_16:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s6, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s6, 0
	ld.d	$a2, $a0, 128
	st.d	$s6, $a2, 0
	move	$s6, $a5
	bnez	$a5, .LBB76_16
.LBB76_17:                              # %list_Delete.exit
	beqz	$s5, .LBB76_20
# %bb.18:                               # %.lr.ph.i48.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB76_19:                              # %.lr.ph.i48
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s5, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s5, 0
	ld.d	$a2, $a0, 128
	st.d	$s5, $a2, 0
	move	$s5, $a5
	bnez	$a5, .LBB76_19
.LBB76_20:                              # %list_Delete.exit52
	beqz	$s3, .LBB76_23
# %bb.21:                               # %.lr.ph.i54.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB76_22:                              # %.lr.ph.i54
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
	bnez	$a5, .LBB76_22
.LBB76_23:                              # %list_Delete.exit58
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB76_25
# %bb.24:
	move	$a0, $s2
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(clause_ReInit)
	jirl	$ra, $ra, 0
	b	.LBB76_29
.LBB76_25:
	ld.w	$a0, $s2, 64
	ld.w	$a1, $s2, 68
	ld.w	$a2, $s2, 72
	add.d	$a0, $a1, $a0
	add.w	$s0, $a0, $a2
	pcaddu18i	$ra, %call36(term_StartMinRenaming)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB76_28
# %bb.26:                               # %.lr.ph.i59
	move	$fp, $zero
	slli.d	$s0, $s0, 3
	.p2align	4, , 16
.LBB76_27:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Rename)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	bne	$s0, $fp, .LBB76_27
.LBB76_28:                              # %clause_Normalize.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
.LBB76_29:
	move	$a0, $s2
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
.Lfunc_end76:
	.size	clause_CreateFromLiterals, .Lfunc_end76-clause_CreateFromLiterals
                                        # -- End function
	.globl	clause_SetSortConstraint        # -- Begin function clause_SetSortConstraint
	.p2align	5
	.type	clause_SetSortConstraint,@function
clause_SetSortConstraint:               # @clause_SetSortConstraint
# %bb.0:
	ld.w	$a5, $a0, 64
	ld.w	$a6, $a0, 68
	addi.d	$a4, $a5, -1
	add.w	$a7, $a4, $a6
	bge	$a7, $a5, .LBB77_2
# %bb.1:
	move	$a1, $zero
	b	.LBB77_21
.LBB77_2:                               # %.lr.ph
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$t0, $a7, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a7, %got_pc_hi20(fol_NOT)
	ld.d	$a7, $a7, %got_pc_lo12(fol_NOT)
	ld.w	$t0, $t0, 0
	ld.w	$t1, $a7, 0
	beqz	$a1, .LBB77_11
# %bb.3:                                # %.lr.ph.split.preheader
	pcalau12i	$a1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$t2, $a1, %got_pc_lo12(symbol_SIGNATURE)
	move	$a1, $zero
	slli.d	$t3, $a5, 3
	ori	$t4, $zero, 1
	move	$t5, $a5
	move	$t6, $a4
	b	.LBB77_6
	.p2align	4, , 16
.LBB77_4:                               #   in Loop: Header=BB77_6 Depth=1
	addi.d	$a1, $a1, 1
.LBB77_5:                               #   in Loop: Header=BB77_6 Depth=1
	add.d	$t7, $a5, $a6
	addi.w	$t7, $t7, -1
	addi.d	$a4, $a4, 1
	addi.w	$t5, $t5, 1
	addi.d	$t3, $t3, 8
	bge	$a4, $t7, .LBB77_20
.LBB77_6:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t7, $a0, 56
	ldx.d	$t8, $t7, $t3
	ld.d	$s0, $t8, 24
	ld.w	$fp, $s0, 0
	bne	$fp, $t1, .LBB77_8
# %bb.7:                                #   in Loop: Header=BB77_6 Depth=1
	ld.d	$fp, $s0, 16
	ld.d	$fp, $fp, 8
	ld.w	$fp, $fp, 0
.LBB77_8:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB77_6 Depth=1
	ld.d	$s0, $t2, 0
	sub.d	$fp, $zero, $fp
	sra.w	$fp, $fp, $t0
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $s0, $fp
	ld.w	$fp, $fp, 16
	bne	$fp, $t4, .LBB77_5
# %bb.9:                                #   in Loop: Header=BB77_6 Depth=1
	addi.w	$t6, $t6, 1
	beq	$t5, $t6, .LBB77_4
# %bb.10:                               #   in Loop: Header=BB77_6 Depth=1
	slli.d	$a5, $t6, 3
	ldx.d	$a6, $t7, $a5
	stx.d	$t8, $t7, $a5
	ld.d	$a5, $a0, 56
	stx.d	$a6, $a5, $t3
	ld.w	$t1, $a7, 0
	ld.w	$a5, $a0, 64
	ld.w	$a6, $a0, 68
	b	.LBB77_4
.LBB77_11:                              # %.lr.ph.split.us.preheader
	move	$a1, $zero
	pcalau12i	$t2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$t2, $t2, %got_pc_lo12(symbol_SIGNATURE)
	addi.d	$t3, $a5, -1
	slli.d	$t4, $a5, 3
	ori	$t5, $zero, 1
	move	$t6, $a5
	b	.LBB77_14
	.p2align	4, , 16
.LBB77_12:                              #   in Loop: Header=BB77_14 Depth=1
	addi.d	$a1, $a1, 1
.LBB77_13:                              #   in Loop: Header=BB77_14 Depth=1
	add.d	$t7, $a5, $a6
	addi.w	$t7, $t7, -1
	addi.d	$t3, $t3, 1
	addi.w	$t6, $t6, 1
	addi.d	$t4, $t4, 8
	bge	$t3, $t7, .LBB77_20
.LBB77_14:                              # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t7, $a0, 56
	ldx.d	$t8, $t7, $t4
	ld.d	$fp, $t8, 24
	ld.w	$s0, $fp, 0
	bne	$s0, $t1, .LBB77_16
# %bb.15:                               #   in Loop: Header=BB77_14 Depth=1
	ld.d	$fp, $fp, 16
	ld.d	$fp, $fp, 8
	ld.w	$s0, $fp, 0
.LBB77_16:                              # %clause_LiteralAtom.exit.us
                                        #   in Loop: Header=BB77_14 Depth=1
	ld.d	$s1, $t2, 0
	sub.d	$s0, $zero, $s0
	sra.w	$s0, $s0, $t0
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $s1, $s0
	ld.w	$s0, $s0, 16
	bne	$s0, $t5, .LBB77_13
# %bb.17:                               #   in Loop: Header=BB77_14 Depth=1
	ld.d	$fp, $fp, 16
	ld.d	$fp, $fp, 8
	ld.w	$fp, $fp, 0
	blez	$fp, .LBB77_13
# %bb.18:                               #   in Loop: Header=BB77_14 Depth=1
	addi.w	$a4, $a4, 1
	beq	$t6, $a4, .LBB77_12
# %bb.19:                               #   in Loop: Header=BB77_14 Depth=1
	slli.d	$a5, $a4, 3
	ldx.d	$a6, $t7, $a5
	stx.d	$t8, $t7, $a5
	ld.d	$a5, $a0, 56
	stx.d	$a6, $a5, $t4
	ld.w	$t1, $a7, 0
	ld.w	$a5, $a0, 64
	ld.w	$a6, $a0, 68
	b	.LBB77_12
.LBB77_20:
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB77_21:                              # %._crit_edge
	add.d	$a4, $a5, $a1
	st.w	$a4, $a0, 64
	sub.d	$a1, $a6, $a1
	st.w	$a1, $a0, 68
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$t8, %call36(clause_ReInit)
	jr	$t8
.Lfunc_end77:
	.size	clause_SetSortConstraint, .Lfunc_end77-clause_SetSortConstraint
                                        # -- End function
	.p2align	5                               # -- Begin function clause_ReInit
	.type	clause_ReInit,@function
clause_ReInit:                          # @clause_ReInit
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a3, $fp, 68
	ld.w	$a4, $fp, 72
	move	$s1, $a2
	move	$s0, $a1
	add.d	$a0, $a3, $a0
	add.w	$s3, $a0, $a4
	pcaddu18i	$ra, %call36(term_StartMinRenaming)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB78_3
# %bb.1:                                # %.lr.ph.i
	move	$s2, $zero
	slli.d	$s3, $s3, 3
	.p2align	4, , 16
.LBB78_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Rename)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	bne	$s3, $s2, .LBB78_2
.LBB78_3:                               # %clause_Normalize.exit
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB78_19
# %bb.4:                                # %.lr.ph.i.i
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	ld.d	$a1, $a1, %got_pc_lo12(stack_POINTER)
	ld.w	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(stack_STACK)
	ld.d	$a4, $a3, %got_pc_lo12(stack_STACK)
	move	$a5, $zero
	move	$a3, $zero
	b	.LBB78_6
	.p2align	4, , 16
.LBB78_5:                               # %clause_UpdateLiteralWeight.exit.i.loopexit.i
                                        #   in Loop: Header=BB78_6 Depth=1
	st.w	$a2, $a1, 0
	st.w	$a7, $a6, 4
	addi.d	$a5, $a5, 1
	add.d	$a3, $a7, $a3
	beq	$a5, $a0, .LBB78_20
.LBB78_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_14 Depth 2
	ld.d	$a6, $fp, 56
	slli.d	$a7, $a5, 3
	ldx.d	$a6, $a6, $a7
	ld.d	$t3, $a6, 24
	move	$a7, $zero
	addi.w	$t0, $a2, 1
	move	$t1, $a2
	move	$t2, $a2
	ld.d	$t4, $t3, 16
	beqz	$t4, .LBB78_8
.LBB78_7:                               #   in Loop: Header=BB78_6 Depth=1
	ld.w	$t3, $s0, 180
	addi.w	$t1, $t2, 1
	st.w	$t1, $a1, 0
	bstrpick.d	$t2, $t2, 31, 0
	slli.d	$t2, $t2, 3
	stx.d	$t4, $a4, $t2
	move	$t2, $t1
	add.d	$a7, $t3, $a7
	bne	$t2, $a2, .LBB78_11
	b	.LBB78_18
	.p2align	4, , 16
.LBB78_8:                               #   in Loop: Header=BB78_6 Depth=1
	ld.w	$t3, $t3, 0
	blez	$t3, .LBB78_10
# %bb.9:                                #   in Loop: Header=BB78_6 Depth=1
	ld.w	$t3, $s0, 184
	add.d	$a7, $t3, $a7
	bne	$t2, $a2, .LBB78_11
	b	.LBB78_18
	.p2align	4, , 16
.LBB78_10:                              #   in Loop: Header=BB78_6 Depth=1
	ld.w	$t3, $s0, 180
	add.d	$a7, $t3, $a7
	beq	$t2, $a2, .LBB78_18
	.p2align	4, , 16
.LBB78_11:                              # %.lr.ph.i.i.i.preheader.i
                                        #   in Loop: Header=BB78_6 Depth=1
	addi.d	$t3, $t2, -1
	bstrpick.d	$t4, $t3, 31, 0
	slli.d	$t3, $t4, 3
	ldx.d	$t3, $a4, $t3
	beqz	$t3, .LBB78_13
# %bb.12:                               #   in Loop: Header=BB78_6 Depth=1
	alsl.d	$t4, $t4, $a4, 3
	b	.LBB78_17
	.p2align	4, , 16
.LBB78_13:                              #   in Loop: Header=BB78_6 Depth=1
	move	$t1, $t2
	.p2align	4, , 16
.LBB78_14:                              # %.lr.ph.i8
                                        #   Parent Loop BB78_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$t0, $t1, .LBB78_5
# %bb.15:                               # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB78_14 Depth=2
	addi.d	$t2, $t1, -2
	bstrpick.d	$t2, $t2, 31, 0
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $a4, $t3
	addi.w	$t1, $t1, -1
	beqz	$t3, .LBB78_14
# %bb.16:                               # %.lr.ph.i.i.i..critedge.i.i.i_crit_edge.i
                                        #   in Loop: Header=BB78_6 Depth=1
	alsl.d	$t4, $t2, $a4, 3
	st.w	$t1, $a1, 0
	move	$t2, $t1
.LBB78_17:                              # %.critedge.i.i.i.i
                                        #   in Loop: Header=BB78_6 Depth=1
	ld.d	$t5, $t3, 0
	ld.d	$t3, $t3, 8
	st.d	$t5, $t4, 0
	ld.d	$t4, $t3, 16
	bnez	$t4, .LBB78_7
	b	.LBB78_8
.LBB78_18:                              #   in Loop: Header=BB78_6 Depth=1
	move	$a2, $t1
	st.w	$a7, $a6, 4
	addi.d	$a5, $a5, 1
	add.d	$a3, $a7, $a3
	bne	$a5, $a0, .LBB78_6
	b	.LBB78_20
.LBB78_19:
	move	$a3, $zero
.LBB78_20:                              # %clause_UpdateWeight.exit
	st.w	$a3, $fp, 4
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(clause_UpdateMaxVar)
	jr	$t8
.Lfunc_end78:
	.size	clause_ReInit, .Lfunc_end78-clause_ReInit
                                        # -- End function
	.globl	clause_InsertIntoSharing        # -- Begin function clause_InsertIntoSharing
	.p2align	5
	.type	clause_InsertIntoSharing,@function
clause_InsertIntoSharing:               # @clause_InsertIntoSharing
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
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a3
	blez	$a0, .LBB79_7
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a1, %got_pc_lo12(fol_NOT)
	move	$s4, $zero
	slli.d	$s5, $a0, 3
	b	.LBB79_3
	.p2align	4, , 16
.LBB79_2:                               #   in Loop: Header=BB79_3 Depth=1
	ld.d	$a1, $a1, 16
	st.d	$a0, $a1, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	beq	$s5, $s4, .LBB79_7
.LBB79_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s2, $a0, $s4
	ld.d	$s1, $s2, 24
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB79_5
# %bb.4:                                #   in Loop: Header=BB79_3 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$s1, $a0, 8
.LBB79_5:                               # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB79_3 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sharing_Insert)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 24
	ld.w	$a2, $a1, 0
	ld.w	$a3, $s3, 0
	beq	$a2, $a3, .LBB79_2
# %bb.6:                                #   in Loop: Header=BB79_3 Depth=1
	st.d	$a0, $s2, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	bne	$s5, $s4, .LBB79_3
.LBB79_7:                               # %._crit_edge
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
.Lfunc_end79:
	.size	clause_InsertIntoSharing, .Lfunc_end79-clause_InsertIntoSharing
                                        # -- End function
	.globl	clause_DeleteFromSharing        # -- Begin function clause_DeleteFromSharing
	.p2align	5
	.type	clause_DeleteFromSharing,@function
clause_DeleteFromSharing:               # @clause_DeleteFromSharing
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
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.d	$a0, $a2, $a0
	add.w	$a2, $a0, $a3
	blez	$a2, .LBB80_6
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s3, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s5, $zero
	slli.d	$s6, $a2, 3
	b	.LBB80_3
	.p2align	4, , 16
.LBB80_2:                               # %clause_LiteralDeleteFromSharing.exit
                                        #   in Loop: Header=BB80_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sharing_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 256
	addi.d	$s5, $s5, 8
	st.d	$s1, $a0, 0
	beq	$s6, $s5, .LBB80_5
.LBB80_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s1, $a0, $s5
	ld.d	$a1, $s1, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s2, 0
	bne	$a0, $a2, .LBB80_2
# %bb.4:                                #   in Loop: Header=BB80_3 Depth=1
	ld.d	$a0, $s3, 128
	ld.d	$a2, $a1, 16
	ld.w	$a3, $a0, 32
	ld.d	$a4, $s4, 0
	ld.d	$a1, $a2, 8
	add.d	$a3, $a4, $a3
	st.d	$a3, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a0, $s3, 128
	st.d	$a2, $a0, 0
	ld.d	$a0, $s3, 256
	ld.w	$a2, $a0, 32
	ld.d	$a3, $s4, 0
	ld.d	$a4, $s1, 24
	add.d	$a2, $a3, $a2
	st.d	$a2, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $s3, 256
	st.d	$a4, $a0, 0
	b	.LBB80_2
.LBB80_5:                               # %._crit_edge.loopexit
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a2, $a0, $a2
.LBB80_6:                               # %._crit_edge
	beqz	$a2, .LBB80_9
# %bb.7:
	ld.d	$a0, $fp, 56
	slli.w	$a1, $a2, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB80_10
# %bb.8:
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
.LBB80_9:                               # %clause_FreeLitArray.exit
	ld.d	$a0, $fp, 32
	bnez	$a0, .LBB80_16
	b	.LBB80_18
.LBB80_10:
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a3, %got_pc_hi20(memory_OFFSET)
	ld.d	$a3, $a3, %got_pc_lo12(memory_OFFSET)
	ld.w	$a5, $a2, 0
	ld.wu	$a2, $a3, 0
	mod.wu	$a6, $a1, $a5
	sltui	$a7, $a6, 1
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	sub.d	$a5, $a5, $a6
	masknez	$a5, $a5, $a7
	add.w	$a1, $a5, $a1
	beqz	$a4, .LBB80_31
# %bb.11:
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB80_13
.LBB80_12:
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB80_13:
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a2, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	add.d	$a3, $a1, $a3
	ld.d	$a5, $a4, 0
	ld.d	$a1, $a2, 0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 16
	add.d	$a5, $a3, $a5
	st.d	$a5, $a4, 0
	bltz	$a1, .LBB80_15
# %bb.14:
	add.d	$a1, $a1, $a3
	st.d	$a1, $a2, 0
.LBB80_15:
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB80_18
.LBB80_16:                              # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB80_17:                              # %.lr.ph.i
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
	bnez	$a6, .LBB80_17
.LBB80_18:                              # %list_Delete.exit
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB80_21
# %bb.19:                               # %.lr.ph.i20.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB80_20:                              # %.lr.ph.i20
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
	bnez	$a6, .LBB80_20
.LBB80_21:                              # %list_Delete.exit24
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB80_30
# %bb.22:
	ld.w	$a1, $fp, 24
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB80_24
# %bb.23:
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
	b	.LBB80_30
.LBB80_24:
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a3, %got_pc_hi20(memory_OFFSET)
	ld.d	$a3, $a3, %got_pc_lo12(memory_OFFSET)
	ld.w	$a5, $a2, 0
	ld.wu	$a2, $a3, 0
	mod.wu	$a6, $a1, $a5
	sltui	$a7, $a6, 1
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	sub.d	$a5, $a5, $a6
	masknez	$a5, $a5, $a7
	add.w	$a1, $a5, $a1
	beqz	$a4, .LBB80_32
# %bb.25:
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB80_27
.LBB80_26:
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB80_27:
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a2, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	add.d	$a3, $a1, $a3
	ld.d	$a5, $a4, 0
	ld.d	$a1, $a2, 0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 16
	add.d	$a5, $a3, $a5
	st.d	$a5, $a4, 0
	bltz	$a1, .LBB80_29
# %bb.28:
	add.d	$a1, $a1, $a3
	st.d	$a1, $a2, 0
.LBB80_29:
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB80_30:                              # %memory_Free.exit
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 640
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 640
	st.d	$fp, $a0, 0
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
.LBB80_31:
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB80_12
	b	.LBB80_13
.LBB80_32:
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB80_26
	b	.LBB80_27
.Lfunc_end80:
	.size	clause_DeleteFromSharing, .Lfunc_end80-clause_DeleteFromSharing
                                        # -- End function
	.globl	clause_MakeUnshared             # -- Begin function clause_MakeUnshared
	.p2align	5
	.type	clause_MakeUnshared,@function
clause_MakeUnshared:                    # @clause_MakeUnshared
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
	ld.w	$a0, $a0, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	move	$s0, $a1
	add.w	$s5, $a2, $a0
	addi.w	$a0, $s5, -1
	add.w	$s4, $s5, $a3
	bltz	$a0, .LBB81_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a0, %got_pc_lo12(fol_NOT)
	move	$s7, $zero
	bstrpick.d	$s8, $s5, 31, 0
	b	.LBB81_3
	.p2align	4, , 16
.LBB81_2:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB81_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sharing_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ld.d	$a0, $a0, 16
	st.d	$s3, $a0, 8
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	beqz	$s8, .LBB81_6
.LBB81_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s1, $a0, $s7
	ld.d	$s2, $s1, 24
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB81_2
# %bb.4:                                #   in Loop: Header=BB81_3 Depth=1
	ld.d	$a0, $s2, 16
	ld.d	$s2, $a0, 8
	b	.LBB81_2
.LBB81_5:
	move	$s5, $zero
.LBB81_6:                               # %.preheader
	bge	$s5, $s4, .LBB81_9
# %bb.7:                                # %.lr.ph34
	bstrpick.d	$a0, $s5, 31, 0
	slli.d	$s6, $a0, 3
	.p2align	4, , 16
.LBB81_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s1, $a0, $s6
	ld.d	$s2, $s1, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sharing_Delete)
	jirl	$ra, $ra, 0
	st.d	$s3, $s1, 24
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, 8
	blt	$s5, $s4, .LBB81_8
.LBB81_9:                               # %._crit_edge
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
.Lfunc_end81:
	.size	clause_MakeUnshared, .Lfunc_end81-clause_MakeUnshared
                                        # -- End function
	.globl	clause_MoveSharedClause         # -- Begin function clause_MoveSharedClause
	.p2align	5
	.type	clause_MoveSharedClause,@function
clause_MoveSharedClause:                # @clause_MoveSharedClause
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
	ld.w	$a0, $a0, 64
	ld.w	$a3, $fp, 68
	ld.w	$a4, $fp, 72
	add.d	$a0, $a3, $a0
	add.w	$a0, $a0, $a4
	blez	$a0, .LBB82_8
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	move	$s1, $a1
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a1, %got_pc_lo12(fol_NOT)
	move	$s6, $zero
	slli.d	$s7, $a0, 3
	b	.LBB82_4
	.p2align	4, , 16
.LBB82_2:                               #   in Loop: Header=BB82_4 Depth=1
	ld.d	$a1, $a1, 16
	st.d	$a0, $a1, 8
.LBB82_3:                               # %clause_LiteralSetAtom.exit
                                        #   in Loop: Header=BB82_4 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sharing_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 8
	beq	$s7, $s6, .LBB82_8
.LBB82_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s2, $a0, $s6
	ld.d	$s3, $s2, 24
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s5, 0
	bne	$a0, $a1, .LBB82_6
# %bb.5:                                #   in Loop: Header=BB82_4 Depth=1
	ld.d	$a0, $s3, 16
	ld.d	$s3, $a0, 8
.LBB82_6:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB82_4 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sharing_Insert)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 24
	ld.w	$a2, $a1, 0
	ld.w	$a3, $s5, 0
	beq	$a2, $a3, .LBB82_2
# %bb.7:                                #   in Loop: Header=BB82_4 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB82_3
.LBB82_8:                               # %._crit_edge
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
.Lfunc_end82:
	.size	clause_MoveSharedClause, .Lfunc_end82-clause_MoveSharedClause
                                        # -- End function
	.globl	clause_DeleteSharedLiteral      # -- Begin function clause_DeleteSharedLiteral
	.p2align	5
	.type	clause_DeleteSharedLiteral,@function
clause_DeleteSharedLiteral:             # @clause_DeleteSharedLiteral
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
	move	$s1, $a4
	move	$s2, $a3
	move	$fp, $a2
	move	$s3, $a1
	move	$s0, $a0
	move	$a1, $a2
	pcaddu18i	$ra, %call36(clause_MakeUnshared)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_DeleteLiteralNN)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_ReInit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 64
	ld.w	$a1, $s0, 68
	ld.w	$a2, $s0, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	blez	$a0, .LBB83_7
# %bb.1:                                # %.lr.ph.i
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a1, %got_pc_lo12(fol_NOT)
	move	$s4, $zero
	slli.d	$s5, $a0, 3
	b	.LBB83_3
	.p2align	4, , 16
.LBB83_2:                               #   in Loop: Header=BB83_3 Depth=1
	ld.d	$a1, $a1, 16
	st.d	$a0, $a1, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	beq	$s5, $s4, .LBB83_7
.LBB83_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$s2, $a0, $s4
	ld.d	$s1, $s2, 24
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB83_5
# %bb.4:                                #   in Loop: Header=BB83_3 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$s1, $a0, 8
.LBB83_5:                               # %clause_LiteralAtom.exit.i.i
                                        #   in Loop: Header=BB83_3 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sharing_Insert)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 24
	ld.w	$a2, $a1, 0
	ld.w	$a3, $s3, 0
	beq	$a2, $a3, .LBB83_2
# %bb.6:                                #   in Loop: Header=BB83_3 Depth=1
	st.d	$a0, $s2, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	bne	$s5, $s4, .LBB83_3
.LBB83_7:                               # %clause_InsertIntoSharing.exit
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
.Lfunc_end83:
	.size	clause_DeleteSharedLiteral, .Lfunc_end83-clause_DeleteSharedLiteral
                                        # -- End function
	.globl	clause_DeleteLiteral            # -- Begin function clause_DeleteLiteral
	.p2align	5
	.type	clause_DeleteLiteral,@function
clause_DeleteLiteral:                   # @clause_DeleteLiteral
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a0
	pcaddu18i	$ra, %call36(clause_DeleteLiteralNN)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(clause_ReInit)
	jr	$t8
.Lfunc_end84:
	.size	clause_DeleteLiteral, .Lfunc_end84-clause_DeleteLiteral
                                        # -- End function
	.globl	clause_DeleteClauseList         # -- Begin function clause_DeleteClauseList
	.p2align	5
	.type	clause_DeleteClauseList,@function
clause_DeleteClauseList:                # @clause_DeleteClauseList
# %bb.0:
	beqz	$a0, .LBB85_8
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$s0, $a0
	b	.LBB85_3
	.p2align	4, , 16
.LBB85_2:                               #   in Loop: Header=BB85_3 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB85_5
.LBB85_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB85_2
# %bb.4:                                #   in Loop: Header=BB85_3 Depth=1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB85_2
.LBB85_5:                               # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB85_6:                               # %.lr.ph.i
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
	bnez	$a5, .LBB85_6
# %bb.7:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB85_8:                               # %list_Delete.exit
	ret
.Lfunc_end85:
	.size	clause_DeleteClauseList, .Lfunc_end85-clause_DeleteClauseList
                                        # -- End function
	.globl	clause_DeleteSharedClauseList   # -- Begin function clause_DeleteSharedClauseList
	.p2align	5
	.type	clause_DeleteSharedClauseList,@function
clause_DeleteSharedClauseList:          # @clause_DeleteSharedClauseList
# %bb.0:
	beqz	$a0, .LBB86_6
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	move	$s1, $a0
	.p2align	4, , 16
.LBB86_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_DeleteFromSharing)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB86_2
# %bb.3:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB86_4:                               # %.lr.ph.i
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
	bnez	$a5, .LBB86_4
# %bb.5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB86_6:                               # %list_Delete.exit
	ret
.Lfunc_end86:
	.size	clause_DeleteSharedClauseList, .Lfunc_end86-clause_DeleteSharedClauseList
                                        # -- End function
	.globl	clause_DeleteAllIndexedClauses  # -- Begin function clause_DeleteAllIndexedClauses
	.p2align	5
	.type	clause_DeleteAllIndexedClauses,@function
clause_DeleteAllIndexedClauses:         # @clause_DeleteAllIndexedClauses
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
	pcaddu18i	$ra, %call36(term_CreateStandardVariable)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s4, $a1, %got_pc_lo12(cont_LEFTCONTEXT)
	move	$s1, $a0
	ld.w	$s0, $a0, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(st_GetInstance)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB87_12
# %bb.1:                                # %.lr.ph49.preheader
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s5, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s6, $a0, %got_pc_lo12(memory_FREEDBYTES)
	b	.LBB87_3
	.p2align	4, , 16
.LBB87_2:                               # %list_Delete.exit37
                                        #   in Loop: Header=BB87_3 Depth=1
	beqz	$s2, .LBB87_12
.LBB87_3:                               # %.lr.ph49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_5 Depth 2
                                        #     Child Loop BB87_8 Depth 2
                                        #     Child Loop BB87_9 Depth 2
                                        #     Child Loop BB87_11 Depth 2
	ld.d	$a0, $s2, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sharing_GetDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB87_6
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB87_3 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB87_5:                               # %.lr.ph
                                        #   Parent Loop BB87_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 8
	ld.d	$a2, $a2, 16
	st.d	$a2, $a1, 8
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB87_5
.LBB87_6:                               # %._crit_edge
                                        #   in Loop: Header=BB87_3 Depth=1
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB87_9
# %bb.7:                                # %.lr.ph45.preheader
                                        #   in Loop: Header=BB87_3 Depth=1
	move	$s7, $s3
	.p2align	4, , 16
.LBB87_8:                               # %.lr.ph45
                                        #   Parent Loop BB87_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_DeleteFromSharing)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 0
	bnez	$s7, .LBB87_8
	.p2align	4, , 16
.LBB87_9:                               # %.lr.ph.i
                                        #   Parent Loop BB87_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	bnez	$a3, .LBB87_9
# %bb.10:                               # %list_Delete.exit
                                        #   in Loop: Header=BB87_3 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(st_GetInstance)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$s3, .LBB87_2
	.p2align	4, , 16
.LBB87_11:                              # %.lr.ph.i33
                                        #   Parent Loop BB87_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	bnez	$a3, .LBB87_11
	b	.LBB87_2
.LBB87_12:                              # %._crit_edge50
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s0
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
	pcaddu18i	$t8, %call36(symbol_Delete)
	jr	$t8
.Lfunc_end87:
	.size	clause_DeleteAllIndexedClauses, .Lfunc_end87-clause_DeleteAllIndexedClauses
                                        # -- End function
	.globl	clause_PrintAllIndexedClauses   # -- Begin function clause_PrintAllIndexedClauses
	.p2align	5
	.type	clause_PrintAllIndexedClauses,@function
clause_PrintAllIndexedClauses:          # @clause_PrintAllIndexedClauses
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
	move	$s2, $a0
	pcaddu18i	$ra, %call36(term_CreateStandardVariable)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_LEFTCONTEXT)
	move	$s0, $a0
	ld.w	$fp, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $s2, 0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(st_GetInstance)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB88_11
# %bb.1:                                # %.lr.ph35.preheader
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s4, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s5, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s1, $zero
	b	.LBB88_3
	.p2align	4, , 16
.LBB88_2:                               # %._crit_edge
                                        #   in Loop: Header=BB88_3 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_NPointerUnion)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s5, 0
	ld.d	$a4, $s3, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s3, 0
	ld.d	$a1, $s4, 128
	move	$s1, $a0
	st.d	$s3, $a1, 0
	move	$s3, $a4
	beqz	$a4, .LBB88_6
.LBB88_3:                               # %.lr.ph35
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_5 Depth 2
	ld.d	$a0, $s3, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sharing_GetDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB88_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB88_3 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB88_5:                               # %.lr.ph
                                        #   Parent Loop BB88_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 8
	ld.d	$a2, $a2, 16
	st.d	$a2, $a1, 8
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB88_5
	b	.LBB88_2
.LBB88_6:                               # %._crit_edge36
	beqz	$s1, .LBB88_11
# %bb.7:                                # %.lr.ph.i.preheader
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 0
	beqz	$s2, .LBB88_10
# %bb.8:                                # %.lr.ph.i.preheader48
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	.p2align	4, , 16
.LBB88_9:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB88_9
	.p2align	4, , 16
.LBB88_10:                              # %.lr.ph.i26
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s5, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s4, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	bnez	$a3, .LBB88_10
.LBB88_11:                              # %list_Delete.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
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
	pcaddu18i	$t8, %call36(symbol_Delete)
	jr	$t8
.Lfunc_end88:
	.size	clause_PrintAllIndexedClauses, .Lfunc_end88-clause_PrintAllIndexedClauses
                                        # -- End function
	.globl	clause_ListPrint                # -- Begin function clause_ListPrint
	.p2align	5
	.type	clause_ListPrint,@function
clause_ListPrint:                       # @clause_ListPrint
# %bb.0:
	beqz	$a0, .LBB89_5
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 8
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB89_4
# %bb.2:                                # %.lr.ph.preheader15
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	.p2align	4, , 16
.LBB89_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB89_3
.LBB89_4:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB89_5:                               # %._crit_edge
	ret
.Lfunc_end89:
	.size	clause_ListPrint, .Lfunc_end89-clause_ListPrint
                                        # -- End function
	.globl	clause_AllIndexedClauses        # -- Begin function clause_AllIndexedClauses
	.p2align	5
	.type	clause_AllIndexedClauses,@function
clause_AllIndexedClauses:               # @clause_AllIndexedClauses
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sharing_GetAllSuperTerms)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB90_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $a0
	.p2align	4, , 16
.LBB90_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 8
	ld.d	$a2, $a2, 16
	st.d	$a2, $a1, 8
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB90_2
.LBB90_3:                               # %._crit_edge
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(list_PointerDeleteDuplicates)
	jr	$t8
.Lfunc_end90:
	.size	clause_AllIndexedClauses, .Lfunc_end90-clause_AllIndexedClauses
                                        # -- End function
	.globl	clause_DeleteLiteralNN          # -- Begin function clause_DeleteLiteralNN
	.p2align	5
	.type	clause_DeleteLiteralNN,@function
clause_DeleteLiteralNN:                 # @clause_DeleteLiteralNN
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
	ld.w	$a0, $a0, 64
	ld.w	$s2, $fp, 68
	ld.w	$a2, $fp, 72
	move	$s0, $a1
	add.d	$a1, $s2, $a0
	add.w	$s4, $a1, $a2
	ori	$a1, $zero, 2
	addi.w	$s3, $a0, -1
	blt	$s4, $a1, .LBB91_3
# %bb.1:                                # %.lr.ph
	addi.d	$a0, $zero, -8
	alsl.w	$a0, $s4, $a0, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a3, $zero
	addi.w	$a1, $s4, -1
	bstrpick.d	$a2, $s0, 31, 0
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB91_2:                               # =>This Inner Loop Header: Depth=1
	sltui	$a5, $a2, 1
	ld.d	$a6, $fp, 56
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	alsl.d	$a5, $a3, $a6, 3
	ldx.d	$a5, $a5, $a0
	stx.d	$a5, $s1, $a0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -1
	bnez	$a1, .LBB91_2
	b	.LBB91_4
.LBB91_3:
	move	$s1, $zero
.LBB91_4:                               # %._crit_edge
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s0, 3
	ldx.d	$s4, $a0, $a1
	ld.d	$a0, $s4, 24
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a2, 256
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s4, 0
	ld.d	$a1, $a2, 256
	st.d	$s4, $a1, 0
	ld.w	$a1, $fp, 64
	ld.w	$a3, $fp, 68
	ld.w	$a4, $fp, 72
	add.d	$a1, $a3, $a1
	add.w	$a3, $a1, $a4
	beqz	$a3, .LBB91_7
# %bb.5:
	ld.d	$a1, $fp, 56
	slli.w	$a3, $a3, 3
	ori	$a4, $zero, 1024
	bgeu	$a3, $a4, .LBB91_10
# %bb.6:
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a2, $a3
	ld.w	$a5, $a4, 32
	ld.d	$a6, $a0, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a0, 0
	ld.d	$a0, $a4, 0
	st.d	$a0, $a1, 0
	ldx.d	$a0, $a2, $a3
	st.d	$a1, $a0, 0
.LBB91_7:                               # %clause_FreeLitArray.exit
	st.d	$s1, $fp, 56
	bge	$s3, $s0, .LBB91_16
.LBB91_8:
	add.w	$a0, $s3, $s2
	bge	$a0, $s0, .LBB91_17
# %bb.9:
	ld.w	$a0, $fp, 72
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 72
	b	.LBB91_18
.LBB91_10:
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a4, %got_pc_hi20(memory_OFFSET)
	ld.d	$a4, $a4, %got_pc_lo12(memory_OFFSET)
	ld.w	$a2, $a2, 0
	ld.wu	$a4, $a4, 0
	mod.wu	$a7, $a3, $a2
	sltui	$t0, $a7, 1
	sub.d	$a4, $a1, $a4
	ld.d	$a6, $a4, -16
	ld.d	$a5, $a4, -8
	sub.d	$a2, $a2, $a7
	masknez	$a2, $a2, $t0
	add.w	$a2, $a2, $a3
	beqz	$a6, .LBB91_19
# %bb.11:
	st.d	$a5, $a6, 8
	beqz	$a5, .LBB91_13
.LBB91_12:
	ld.d	$a3, $a4, -16
	st.d	$a3, $a5, 0
.LBB91_13:
	pcalau12i	$a3, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a3, $a3, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a4, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a3, $a3, %got_pc_lo12(memory_MAXMEM)
	add.d	$a4, $a2, $a4
	ld.d	$a5, $a0, 0
	ld.d	$a2, $a3, 0
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 16
	add.d	$a5, $a4, $a5
	st.d	$a5, $a0, 0
	bltz	$a2, .LBB91_15
# %bb.14:
	add.d	$a0, $a2, $a4
	st.d	$a0, $a3, 0
.LBB91_15:
	addi.d	$a0, $a1, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s1, $fp, 56
	blt	$s3, $s0, .LBB91_8
.LBB91_16:
	ld.w	$a0, $fp, 64
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 64
	b	.LBB91_18
.LBB91_17:
	ld.w	$a0, $fp, 68
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 68
.LBB91_18:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 4
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB91_19:
	pcalau12i	$a3, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a3, $a3, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a5, $a3, 0
	bnez	$a5, .LBB91_12
	b	.LBB91_13
.Lfunc_end91:
	.size	clause_DeleteLiteralNN, .Lfunc_end91-clause_DeleteLiteralNN
                                        # -- End function
	.globl	clause_DeleteLiterals           # -- Begin function clause_DeleteLiterals
	.p2align	5
	.type	clause_DeleteLiterals,@function
clause_DeleteLiterals:                  # @clause_DeleteLiterals
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
	ld.w	$s0, $a0, 64
	ld.w	$s1, $a0, 68
	ld.w	$a0, $a0, 72
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a1
	add.d	$a1, $s1, $s0
	add.w	$s7, $a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bne	$s7, $a0, .LBB92_6
# %bb.1:
	move	$s8, $zero
	bgtz	$s7, .LBB92_7
.LBB92_2:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$s5, $zero
.LBB92_3:                               # %._crit_edge
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a1, $a0, $a2
	beqz	$a1, .LBB92_24
# %bb.4:
	ld.d	$a0, $fp, 56
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB92_18
# %bb.5:
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
	b	.LBB92_24
.LBB92_6:
	sub.d	$a0, $s7, $a0
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	blez	$s7, .LBB92_2
.LBB92_7:                               # %.lr.ph
	addi.w	$a4, $s0, -1
	add.w	$a0, $a4, $s1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s3, .LBB92_25
# %bb.8:                                # %.lr.ph.i.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s2, $zero
	move	$s4, $zero
	move	$s5, $zero
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB92_10
	.p2align	4, , 16
.LBB92_9:                               # %list_PointerMember.exit
                                        #   in Loop: Header=BB92_10 Depth=1
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s2, 3
	ldx.d	$s6, $a0, $a1
	ld.d	$a0, $s6, 24
	move	$s1, $s7
	move	$s7, $fp
	move	$fp, $s3
	move	$s3, $a4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	move	$s3, $fp
	move	$fp, $s7
	move	$s7, $s1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $a3, 256
	st.d	$s6, $a0, 0
	addi.d	$s2, $s2, 1
	beq	$s2, $s7, .LBB92_3
.LBB92_10:                              # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB92_11 Depth 2
	move	$a0, $s3
	.p2align	4, , 16
.LBB92_11:                              # %.lr.ph.i
                                        #   Parent Loop BB92_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	beq	$a1, $s2, .LBB92_9
# %bb.12:                               #   in Loop: Header=BB92_11 Depth=2
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB92_11
# %bb.13:                               # %.loopexit
                                        #   in Loop: Header=BB92_10 Depth=1
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $a0, $a1
	addi.w	$a0, $s4, 1
	slli.d	$a2, $s4, 3
	stx.d	$a1, $s8, $a2
	bge	$a4, $s2, .LBB92_16
# %bb.14:                               #   in Loop: Header=BB92_10 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $s2, .LBB92_17
# %bb.15:                               #   in Loop: Header=BB92_10 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s4, $a0
	addi.d	$s2, $s2, 1
	bne	$s2, $s7, .LBB92_10
	b	.LBB92_3
	.p2align	4, , 16
.LBB92_16:                              #   in Loop: Header=BB92_10 Depth=1
	addi.d	$s5, $s5, 1
	move	$s4, $a0
	addi.d	$s2, $s2, 1
	bne	$s2, $s7, .LBB92_10
	b	.LBB92_3
.LBB92_17:                              #   in Loop: Header=BB92_10 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s4, $a0
	addi.d	$s2, $s2, 1
	bne	$s2, $s7, .LBB92_10
	b	.LBB92_3
.LBB92_18:
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a3, %got_pc_hi20(memory_OFFSET)
	ld.d	$a3, $a3, %got_pc_lo12(memory_OFFSET)
	ld.w	$a5, $a2, 0
	ld.wu	$a2, $a3, 0
	mod.wu	$a6, $a1, $a5
	sltui	$a7, $a6, 1
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	sub.d	$a5, $a5, $a6
	masknez	$a5, $a5, $a7
	add.w	$a1, $a5, $a1
	beqz	$a4, .LBB92_32
# %bb.19:
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB92_21
.LBB92_20:
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB92_21:
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a2, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	add.d	$a3, $a1, $a3
	ld.d	$a5, $a4, 0
	ld.d	$a1, $a2, 0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 16
	add.d	$a5, $a3, $a5
	st.d	$a5, $a4, 0
	bltz	$a1, .LBB92_23
# %bb.22:
	add.d	$a1, $a1, $a3
	st.d	$a1, $a2, 0
.LBB92_23:
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB92_24:                              # %clause_FreeLitArray.exit
	st.d	$s8, $fp, 56
	st.w	$s5, $fp, 64
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $fp, 68
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $fp, 72
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(clause_ReInit)
	jr	$t8
.LBB92_25:                              # %.lr.ph.split.us.preheader
	move	$a0, $zero
	move	$s5, $zero
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB92_28
	.p2align	4, , 16
.LBB92_26:                              #   in Loop: Header=BB92_28 Depth=1
	addi.d	$s5, $s5, 1
.LBB92_27:                              #   in Loop: Header=BB92_28 Depth=1
	move	$a0, $a1
	beq	$a1, $s7, .LBB92_3
.LBB92_28:                              # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	slli.d	$a2, $a0, 3
	ldx.d	$a3, $a1, $a2
	addi.d	$a1, $a0, 1
	stx.d	$a3, $s8, $a2
	bge	$a4, $a0, .LBB92_26
# %bb.29:                               #   in Loop: Header=BB92_28 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bge	$a2, $a0, .LBB92_31
# %bb.30:                               #   in Loop: Header=BB92_28 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB92_27
	.p2align	4, , 16
.LBB92_31:                              #   in Loop: Header=BB92_28 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB92_27
.LBB92_32:
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB92_20
	b	.LBB92_21
.Lfunc_end92:
	.size	clause_DeleteLiterals, .Lfunc_end92-clause_DeleteLiterals
                                        # -- End function
	.globl	clause_IsHornClause             # -- Begin function clause_IsHornClause
	.p2align	5
	.type	clause_IsHornClause,@function
clause_IsHornClause:                    # @clause_IsHornClause
# %bb.0:
	ld.w	$a0, $a0, 72
	slti	$a0, $a0, 2
	ret
.Lfunc_end93:
	.size	clause_IsHornClause, .Lfunc_end93-clause_IsHornClause
                                        # -- End function
	.globl	clause_HasTermSortConstraintLits # -- Begin function clause_HasTermSortConstraintLits
	.p2align	5
	.type	clause_HasTermSortConstraintLits,@function
clause_HasTermSortConstraintLits:       # @clause_HasTermSortConstraintLits
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	blez	$a0, .LBB94_6
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s0, $a1, %got_pc_lo12(fol_NOT)
	move	$s1, $zero
	slli.d	$s2, $a0, 3
	.p2align	4, , 16
.LBB94_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s0, 0
	bne	$a1, $a2, .LBB94_4
# %bb.3:                                #   in Loop: Header=BB94_2 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB94_4:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB94_2 Depth=1
	pcaddu18i	$ra, %call36(term_AllArgsAreVar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB94_7
# %bb.5:                                #   in Loop: Header=BB94_2 Depth=1
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB94_2
.LBB94_6:
	move	$a0, $zero
	b	.LBB94_8
.LBB94_7:
	ori	$a0, $zero, 1
.LBB94_8:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end94:
	.size	clause_HasTermSortConstraintLits, .Lfunc_end94-clause_HasTermSortConstraintLits
                                        # -- End function
	.globl	clause_HasSolvedConstraint      # -- Begin function clause_HasSolvedConstraint
	.p2align	5
	.type	clause_HasSolvedConstraint,@function
clause_HasSolvedConstraint:             # @clause_HasSolvedConstraint
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
	ld.wu	$s3, $a0, 64
	addi.w	$s2, $s3, 0
	ori	$fp, $zero, 1
	beqz	$s2, .LBB95_24
# %bb.1:
	blez	$s2, .LBB95_23
# %bb.2:                                # %.lr.ph.i
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	move	$s1, $zero
	slli.d	$s5, $s2, 3
	.p2align	4, , 16
.LBB95_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB95_5
# %bb.4:                                #   in Loop: Header=BB95_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB95_5:                               # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB95_3 Depth=1
	pcaddu18i	$ra, %call36(term_AllArgsAreVar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB95_23
# %bb.6:                                #   in Loop: Header=BB95_3 Depth=1
	addi.d	$s1, $s1, 8
	bne	$s5, $s1, .LBB95_3
# %bb.7:                                # %.lr.ph
	move	$s6, $zero
	move	$s1, $zero
	slli.d	$s5, $s3, 3
	b	.LBB95_9
	.p2align	4, , 16
.LBB95_8:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB95_9 Depth=1
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_NPointerUnion)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 8
	move	$s1, $a0
	beq	$s5, $s6, .LBB95_11
.LBB95_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s6
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB95_8
# %bb.10:                               #   in Loop: Header=BB95_9 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB95_8
.LBB95_11:                              # %._crit_edge
	ld.w	$a0, $s0, 64
	ld.w	$a1, $s0, 68
	ld.w	$a2, $s0, 72
	add.d	$a0, $a1, $a0
	add.w	$s6, $a0, $a2
	bge	$s2, $s6, .LBB95_16
# %bb.12:                               # %.lr.ph63
	move	$s2, $zero
	b	.LBB95_14
	.p2align	4, , 16
.LBB95_13:                              # %clause_GetLiteralAtom.exit39
                                        #   in Loop: Header=BB95_14 Depth=1
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_NPointerUnion)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s3, $s3, 1
	addi.d	$s5, $s5, 8
	bgeu	$s3, $s6, .LBB95_17
.LBB95_14:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB95_13
# %bb.15:                               #   in Loop: Header=BB95_14 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB95_13
.LBB95_16:                              # %._crit_edge64.thread
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_NPointerDifference)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB95_21
	b	.LBB95_24
.LBB95_17:                              # %._crit_edge64
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(list_NPointerDifference)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB95_25
# %bb.18:
	beqz	$s2, .LBB95_21
# %bb.19:                               # %.lr.ph.i42.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB95_20:                              # %.lr.ph.i42
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s2, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s2, 0
	ld.d	$a3, $a1, 128
	st.d	$s2, $a3, 0
	move	$s2, $a6
	bnez	$a6, .LBB95_20
.LBB95_21:                              # %.lr.ph.i48.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB95_22:                              # %.lr.ph.i48
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
	bnez	$a6, .LBB95_22
.LBB95_23:
	move	$fp, $zero
.LBB95_24:                              # %list_Delete.exit
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
.LBB95_25:
	beqz	$s2, .LBB95_24
# %bb.26:                               # %.lr.ph.i40.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB95_27:                              # %.lr.ph.i40
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
	bnez	$a5, .LBB95_27
	b	.LBB95_24
.Lfunc_end95:
	.size	clause_HasSolvedConstraint, .Lfunc_end95-clause_HasSolvedConstraint
                                        # -- End function
	.globl	clause_HasSelectedLiteral       # -- Begin function clause_HasSelectedLiteral
	.p2align	5
	.type	clause_HasSelectedLiteral,@function
clause_HasSelectedLiteral:              # @clause_HasSelectedLiteral
# %bb.0:
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	add.d	$a3, $a2, $a1
	addi.w	$a3, $a3, -1
	blt	$a3, $a2, .LBB96_4
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $a0, 56
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ld.bu	$a2, $a2, 0
	andi	$a2, $a2, 4
	bnez	$a2, .LBB96_5
# %bb.3:                                #   in Loop: Header=BB96_2 Depth=1
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB96_2
.LBB96_4:
	move	$a0, $zero
	ret
.LBB96_5:
	ori	$a0, $zero, 1
	ret
.Lfunc_end96:
	.size	clause_HasSelectedLiteral, .Lfunc_end96-clause_HasSelectedLiteral
                                        # -- End function
	.globl	clause_IsDeclarationClause      # -- Begin function clause_IsDeclarationClause
	.p2align	5
	.type	clause_IsDeclarationClause,@function
clause_IsDeclarationClause:             # @clause_IsDeclarationClause
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB97_7
# %bb.1:
	ld.w	$a0, $fp, 72
	blez	$a0, .LBB97_7
# %bb.2:                                # %.lr.ph
	ld.w	$a3, $fp, 68
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$a4, $fp, 64
	ld.d	$a5, $fp, 56
	ld.w	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	add.w	$a3, $a3, $a4
	add.w	$a4, $a3, $a0
	alsl.d	$a5, $a3, $a5, 3
	b	.LBB97_4
	.p2align	4, , 16
.LBB97_3:                               #   in Loop: Header=BB97_4 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, 8
	bge	$a3, $a4, .LBB97_7
.LBB97_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a5, 0
	ld.bu	$a6, $a0, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB97_3
# %bb.5:                                #   in Loop: Header=BB97_4 Depth=1
	ld.d	$a0, $a0, 24
	ld.w	$a0, $a0, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.w	$a6, $a0, 16
	ori	$a0, $zero, 1
	bne	$a6, $a0, .LBB97_3
# %bb.6:                                # %.loopexit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB97_7:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end97:
	.size	clause_IsDeclarationClause, .Lfunc_end97-clause_IsDeclarationClause
                                        # -- End function
	.globl	clause_IsSortTheoryClause       # -- Begin function clause_IsSortTheoryClause
	.p2align	5
	.type	clause_IsSortTheoryClause,@function
clause_IsSortTheoryClause:              # @clause_IsSortTheoryClause
# %bb.0:
	ld.w	$a1, $a0, 68
	bgtz	$a1, .LBB98_2
# %bb.1:
	ld.w	$a1, $a0, 72
	ori	$a2, $zero, 1
	bge	$a2, $a1, .LBB98_3
.LBB98_2:
	move	$a0, $zero
	ret
.LBB98_3:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB98_5
# %bb.4:
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.d	$a2, $fp, 56
	add.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$a0, $a0, 0
	ld.wu	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 16
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB98_5:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end98:
	.size	clause_IsSortTheoryClause, .Lfunc_end98-clause_IsSortTheoryClause
                                        # -- End function
	.globl	clause_IsPotentialSortTheoryClause # -- Begin function clause_IsPotentialSortTheoryClause
	.p2align	5
	.type	clause_IsPotentialSortTheoryClause,@function
clause_IsPotentialSortTheoryClause:     # @clause_IsPotentialSortTheoryClause
# %bb.0:
	ld.w	$a1, $a0, 72
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB99_10
# %bb.1:                                # %.preheader
	ld.w	$a1, $a0, 64
	ld.w	$a2, $a0, 68
	ld.d	$a0, $a0, 56
	add.w	$a1, $a2, $a1
	blez	$a1, .LBB99_11
# %bb.2:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a2, %got_pc_lo12(fol_NOT)
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a3, $a3, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a4, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a5, $a4, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$a4, $a2, 0
	ld.w	$a3, $a3, 0
	ld.d	$a2, $a5, 0
	ori	$a5, $zero, 1
	move	$a6, $a1
	move	$a7, $a0
	.p2align	4, , 16
.LBB99_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a7, 0
	ld.d	$t0, $t0, 24
	ld.w	$t1, $t0, 0
	move	$t2, $t1
	bne	$t1, $a4, .LBB99_5
# %bb.4:                                #   in Loop: Header=BB99_3 Depth=1
	ld.d	$t2, $t0, 16
	ld.d	$t2, $t2, 8
	ld.w	$t2, $t2, 0
.LBB99_5:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB99_3 Depth=1
	sub.d	$t2, $zero, $t2
	sra.w	$t2, $t2, $a3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	ld.w	$t2, $t2, 16
	bne	$t2, $a5, .LBB99_10
# %bb.6:                                #   in Loop: Header=BB99_3 Depth=1
	bne	$t1, $a4, .LBB99_8
# %bb.7:                                #   in Loop: Header=BB99_3 Depth=1
	ld.d	$t0, $t0, 16
	ld.d	$t0, $t0, 8
.LBB99_8:                               # %clause_LiteralAtom.exit33
                                        #   in Loop: Header=BB99_3 Depth=1
	ld.d	$t0, $t0, 16
	ld.d	$t0, $t0, 8
	ld.w	$t0, $t0, 0
	blez	$t0, .LBB99_10
# %bb.9:                                #   in Loop: Header=BB99_3 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB99_3
	b	.LBB99_12
.LBB99_10:
	move	$a0, $zero
	ret
.LBB99_11:                              # %.preheader.._crit_edge_crit_edge
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a3, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a4, $a3, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$a3, $a2, 0
	ld.d	$a2, $a4, 0
.LBB99_12:                              # %._crit_edge
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a0, $a0, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $a3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 16
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ret
.Lfunc_end99:
	.size	clause_IsPotentialSortTheoryClause, .Lfunc_end99-clause_IsPotentialSortTheoryClause
                                        # -- End function
	.globl	clause_HasOnlyVarsInConstraint  # -- Begin function clause_HasOnlyVarsInConstraint
	.p2align	5
	.type	clause_HasOnlyVarsInConstraint,@function
clause_HasOnlyVarsInConstraint:         # @clause_HasOnlyVarsInConstraint
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$s0, $a0, 64
	blez	$s0, .LBB100_7
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	move	$s3, $zero
	move	$s1, $zero
	slli.d	$s4, $s0, 3
	.p2align	4, , 16
.LBB100_2:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB100_4
# %bb.3:                                #   in Loop: Header=BB100_2 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB100_4:                              # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB100_2 Depth=1
	pcaddu18i	$ra, %call36(term_AllArgsAreVar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB100_8
# %bb.5:                                #   in Loop: Header=BB100_2 Depth=1
	addi.d	$s3, $s3, 8
	addi.w	$s1, $s1, 1
	bne	$s4, $s3, .LBB100_2
# %bb.6:
	move	$s1, $s0
	b	.LBB100_8
.LBB100_7:
	move	$s1, $zero
.LBB100_8:                              # %.critedge
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end100:
	.size	clause_HasOnlyVarsInConstraint, .Lfunc_end100-clause_HasOnlyVarsInConstraint
                                        # -- End function
	.globl	clause_HasSortInSuccedent       # -- Begin function clause_HasSortInSuccedent
	.p2align	5
	.type	clause_HasSortInSuccedent,@function
clause_HasSortInSuccedent:              # @clause_HasSortInSuccedent
# %bb.0:
	ld.w	$a1, $a0, 72
	blez	$a1, .LBB101_7
# %bb.1:                                # %.lr.ph
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 64
	add.w	$a5, $a2, $a3
	add.w	$a1, $a5, $a1
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a2, %got_pc_lo12(fol_NOT)
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a3, $a3, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a4, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a4, $a4, %got_pc_lo12(symbol_SIGNATURE)
	ld.d	$a6, $a0, 56
	ld.w	$a0, $a2, 0
	ld.w	$a2, $a3, 0
	ld.d	$a3, $a4, 0
	alsl.d	$a4, $a5, $a6, 3
	addi.d	$a5, $a5, 1
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB101_2:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a7, 24
	ld.w	$a7, $t0, 0
	bne	$a7, $a0, .LBB101_4
# %bb.3:                                #   in Loop: Header=BB101_2 Depth=1
	ld.d	$a7, $t0, 16
	ld.d	$a7, $a7, 8
	ld.w	$a7, $a7, 0
.LBB101_4:                              # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB101_2 Depth=1
	sub.d	$a7, $zero, $a7
	sra.w	$a7, $a7, $a2
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a3, $a7
	ld.w	$a7, $a7, 16
	bge	$a5, $a1, .LBB101_6
# %bb.5:                                # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB101_2 Depth=1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 1
	bne	$a7, $a6, .LBB101_2
.LBB101_6:                              # %._crit_edge.loopexit
	addi.d	$a0, $a7, -1
	sltui	$a0, $a0, 1
	ret
.LBB101_7:
	move	$a0, $zero
	ret
.Lfunc_end101:
	.size	clause_HasSortInSuccedent, .Lfunc_end101-clause_HasSortInSuccedent
                                        # -- End function
	.globl	clause_LitsHaveCommonVar        # -- Begin function clause_LitsHaveCommonVar
	.p2align	5
	.type	clause_LitsHaveCommonVar,@function
clause_LitsHaveCommonVar:               # @clause_LitsHaveCommonVar
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$s0, $a2, %got_pc_lo12(fol_NOT)
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s0, 0
	move	$fp, $a1
	bne	$a2, $a3, .LBB102_2
# %bb.1:
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB102_2:                              # %clause_LiteralAtom.exit
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	ld.w	$a2, $a1, 0
	ld.w	$a3, $s0, 0
	move	$s0, $a0
	bne	$a2, $a3, .LBB102_4
# %bb.3:
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB102_4:                              # %clause_LiteralAtom.exit12
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(list_HasIntersection)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB102_7
# %bb.5:                                # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB102_6:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a1, 128
	st.d	$s0, $a3, 0
	move	$s0, $a6
	bnez	$a6, .LBB102_6
.LBB102_7:                              # %list_Delete.exit
	beqz	$fp, .LBB102_10
# %bb.8:                                # %.lr.ph.i15.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB102_9:                              # %.lr.ph.i15
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $fp, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $fp, 0
	ld.d	$a3, $a1, 128
	st.d	$fp, $a3, 0
	move	$fp, $a6
	bnez	$a6, .LBB102_9
.LBB102_10:                             # %list_Delete.exit19
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end102:
	.size	clause_LitsHaveCommonVar, .Lfunc_end102-clause_LitsHaveCommonVar
                                        # -- End function
	.globl	clause_Print                    # -- Begin function clause_Print
	.p2align	5
	.type	clause_Print,@function
clause_Print:                           # @clause_Print
# %bb.0:
	beqz	$a0, .LBB103_12
# %bb.1:
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
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 76
	ld.w	$a1, $fp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_FPrintOrigin)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	beq	$s0, $a0, .LBB103_6
# %bb.2:
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 58
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 32
	beqz	$s0, .LBB103_6
# %bb.3:
	ld.d	$s2, $fp, 40
	ld.w	$a1, $s0, 8
	ld.w	$a2, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 0
	beqz	$s3, .LBB103_6
# %bb.4:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB103_5:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	ld.w	$a1, $s3, 8
	ld.w	$a2, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB103_5
.LBB103_6:                              # %clause_PrintParentClauses.exit
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 93
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$s2, $fp, 64
	ld.w	$s3, $fp, 68
	ld.w	$s0, $fp, 72
	blez	$s2, .LBB103_13
# %bb.7:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	move	$s5, $zero
	slli.d	$s6, $s2, 3
	b	.LBB103_9
	.p2align	4, , 16
.LBB103_8:                              # %clause_LiteralPrintUnsigned.exit
                                        #   in Loop: Header=BB103_9 Depth=1
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 8
	beq	$s6, $s5, .LBB103_11
.LBB103_9:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB103_8
# %bb.10:                               #   in Loop: Header=BB103_9 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB103_8
.LBB103_11:
	move	$s4, $s2
	b	.LBB103_14
.LBB103_12:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB103_13:
	move	$s4, $zero
.LBB103_14:                             # %._crit_edge
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.w	$s2, $s3, $s2
	bge	$s4, $s2, .LBB103_27
# %bb.15:                               # %.lr.ph81
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	bstrpick.d	$s4, $s4, 31, 0
	bstrpick.d	$s5, $s2, 31, 0
	slli.d	$s6, $s4, 3
	b	.LBB103_17
	.p2align	4, , 16
.LBB103_16:                             #   in Loop: Header=BB103_17 Depth=1
	addi.d	$s6, $s6, 8
	beq	$s5, $s4, .LBB103_26
.LBB103_17:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$s7, $a0, $s6
	ld.d	$a0, $s7, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s3, 0
	bne	$a1, $a2, .LBB103_19
# %bb.18:                               #   in Loop: Header=BB103_17 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB103_19:                             # %clause_LiteralPrintUnsigned.exit69
                                        #   in Loop: Header=BB103_17 Depth=1
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB103_22
# %bb.20:                               #   in Loop: Header=BB103_17 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 42
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 8
	beqz	$a0, .LBB103_22
# %bb.21:                               #   in Loop: Header=BB103_17 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 42
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB103_22:                             #   in Loop: Header=BB103_17 Depth=1
	ld.bu	$a0, $s7, 0
	andi	$a0, $a0, 4
	bnez	$a0, .LBB103_24
# %bb.23:                               #   in Loop: Header=BB103_17 Depth=1
	addi.d	$s4, $s4, 1
	bgeu	$s4, $s2, .LBB103_16
	b	.LBB103_25
	.p2align	4, , 16
.LBB103_24:                             #   in Loop: Header=BB103_17 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 43
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	bgeu	$s4, $s2, .LBB103_16
.LBB103_25:                             #   in Loop: Header=BB103_17 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB103_16
.LBB103_26:
	move	$s4, $s2
.LBB103_27:                             # %._crit_edge82
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.w	$s0, $s0, $s2
	bge	$s4, $s0, .LBB103_36
# %bb.28:                               # %.lr.ph86
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$s3, $a0, 3
	.p2align	4, , 16
.LBB103_29:                             # =>This Inner Loop Header: Depth=1
	addi.w	$s4, $s4, 1
	ld.d	$a0, $fp, 56
	ldx.d	$s5, $a0, $s3
	ld.d	$a0, $s5, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB103_31
# %bb.30:                               #   in Loop: Header=BB103_29 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB103_31:                             # %clause_LiteralPrintUnsigned.exit76
                                        #   in Loop: Header=BB103_29 Depth=1
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB103_34
# %bb.32:                               #   in Loop: Header=BB103_29 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 42
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 8
	beqz	$a0, .LBB103_34
# %bb.33:                               #   in Loop: Header=BB103_29 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 42
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB103_34:                             #   in Loop: Header=BB103_29 Depth=1
	bge	$s4, $s0, .LBB103_36
# %bb.35:                               #   in Loop: Header=BB103_29 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	b	.LBB103_29
.LBB103_36:                             # %._crit_edge87
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 46
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
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.Lfunc_end103:
	.size	clause_Print, .Lfunc_end103-clause_Print
                                        # -- End function
	.globl	clause_PrintOrigin              # -- Begin function clause_PrintOrigin
	.p2align	5
	.type	clause_PrintOrigin,@function
clause_PrintOrigin:                     # @clause_PrintOrigin
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$t8, %call36(clause_FPrintOrigin)
	jr	$t8
.Lfunc_end104:
	.size	clause_PrintOrigin, .Lfunc_end104-clause_PrintOrigin
                                        # -- End function
	.globl	clause_PrintParentClauses       # -- Begin function clause_PrintParentClauses
	.p2align	5
	.type	clause_PrintParentClauses,@function
clause_PrintParentClauses:              # @clause_PrintParentClauses
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 32
	beqz	$fp, .LBB105_4
# %bb.1:
	ld.d	$s0, $a0, 40
	ld.w	$a1, $fp, 8
	ld.w	$a2, $s0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	beqz	$s1, .LBB105_4
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$fp, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB105_3:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.w	$a1, $s1, 8
	ld.w	$a2, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB105_3
.LBB105_4:                              # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end105:
	.size	clause_PrintParentClauses, .Lfunc_end105-clause_PrintParentClauses
                                        # -- End function
	.globl	clause_PrintMaxLitsOnly         # -- Begin function clause_PrintMaxLitsOnly
	.p2align	5
	.type	clause_PrintMaxLitsOnly,@function
clause_PrintMaxLitsOnly:                # @clause_PrintMaxLitsOnly
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
	move	$fp, $a0
	ld.w	$s4, $a0, 64
	ld.w	$s5, $a0, 68
	ld.w	$s1, $a0, 72
	blez	$s4, .LBB106_8
# %bb.1:                                # %.lr.ph
	move	$s2, $zero
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	slli.d	$s6, $s4, 3
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	b	.LBB106_3
	.p2align	4, , 16
.LBB106_2:                              #   in Loop: Header=BB106_3 Depth=1
	addi.d	$s2, $s2, 8
	beq	$s6, $s2, .LBB106_7
.LBB106_3:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s2
	ld.wu	$a1, $a0, 0
	andi	$a2, $a1, 1
	bnez	$a2, .LBB106_5
# %bb.4:                                #   in Loop: Header=BB106_3 Depth=1
	andi	$a1, $a1, 2
	beqz	$a1, .LBB106_2
	b	.LBB106_6
	.p2align	4, , 16
.LBB106_5:                              #   in Loop: Header=BB106_3 Depth=1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s2
	ld.w	$a1, $a0, 0
	andi	$a1, $a1, 2
	beqz	$a1, .LBB106_2
.LBB106_6:                              #   in Loop: Header=BB106_3 Depth=1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s3, 0
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB106_2
.LBB106_7:
	move	$s3, $s4
	b	.LBB106_9
.LBB106_8:
	move	$s3, $zero
.LBB106_9:                              # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s2, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.w	$s4, $s5, $s4
	bge	$s3, $s4, .LBB106_17
# %bb.10:                               # %.lr.ph74
	bstrpick.d	$a0, $s3, 31, 0
	bstrpick.d	$a1, $s4, 31, 0
	slli.d	$s3, $a0, 3
	sub.d	$s5, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	b	.LBB106_12
	.p2align	4, , 16
.LBB106_11:                             #   in Loop: Header=BB106_12 Depth=1
	addi.d	$s5, $s5, -1
	addi.d	$s3, $s3, 8
	beqz	$s5, .LBB106_16
.LBB106_12:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.wu	$a1, $a0, 0
	andi	$a2, $a1, 1
	bnez	$a2, .LBB106_14
# %bb.13:                               #   in Loop: Header=BB106_12 Depth=1
	andi	$a1, $a1, 2
	beqz	$a1, .LBB106_11
	b	.LBB106_15
	.p2align	4, , 16
.LBB106_14:                             #   in Loop: Header=BB106_12 Depth=1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.w	$a1, $a0, 0
	andi	$a1, $a1, 2
	beqz	$a1, .LBB106_11
.LBB106_15:                             #   in Loop: Header=BB106_12 Depth=1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB106_11
.LBB106_16:
	move	$s3, $s4
.LBB106_17:                             # %._crit_edge75
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.w	$s1, $s1, $s4
	bge	$s3, $s1, .LBB106_24
# %bb.18:                               # %.lr.ph79
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$s4, $a0, 3
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	b	.LBB106_20
	.p2align	4, , 16
.LBB106_19:                             #   in Loop: Header=BB106_20 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bge	$s3, $s1, .LBB106_24
.LBB106_20:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s4
	ld.wu	$a1, $a0, 0
	andi	$a2, $a1, 1
	bnez	$a2, .LBB106_22
# %bb.21:                               #   in Loop: Header=BB106_20 Depth=1
	andi	$a1, $a1, 2
	beqz	$a1, .LBB106_19
	b	.LBB106_23
	.p2align	4, , 16
.LBB106_22:                             #   in Loop: Header=BB106_20 Depth=1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s4
	ld.w	$a1, $a0, 0
	andi	$a1, $a1, 2
	beqz	$a1, .LBB106_19
.LBB106_23:                             #   in Loop: Header=BB106_20 Depth=1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_PrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB106_19
.LBB106_24:                             # %._crit_edge80
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
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
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end106:
	.size	clause_PrintMaxLitsOnly, .Lfunc_end106-clause_PrintMaxLitsOnly
                                        # -- End function
	.globl	clause_FPrint                   # -- Begin function clause_FPrint
	.p2align	5
	.type	clause_FPrint,@function
clause_FPrint:                          # @clause_FPrint
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
	move	$fp, $a1
	ld.w	$s4, $a1, 64
	ld.w	$s5, $a1, 68
	ld.w	$s1, $a1, 72
	move	$s0, $a0
	blez	$s4, .LBB107_6
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	move	$s3, $zero
	slli.d	$s6, $s4, 3
	b	.LBB107_3
	.p2align	4, , 16
.LBB107_2:                              # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB107_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	beq	$s6, $s3, .LBB107_5
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s2, 0
	bne	$a0, $a2, .LBB107_2
# %bb.4:                                #   in Loop: Header=BB107_3 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB107_2
.LBB107_5:
	move	$s2, $s4
	b	.LBB107_7
.LBB107_6:
	move	$s2, $zero
.LBB107_7:                              # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.w	$s4, $s5, $s4
	bge	$s2, $s4, .LBB107_13
# %bb.8:                                # %.lr.ph49
	bstrpick.d	$a0, $s2, 31, 0
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a1, %got_pc_lo12(fol_NOT)
	bstrpick.d	$a1, $s4, 31, 0
	slli.d	$s5, $a0, 3
	sub.d	$s6, $a1, $a0
	b	.LBB107_10
	.p2align	4, , 16
.LBB107_9:                              # %clause_GetLiteralAtom.exit38
                                        #   in Loop: Header=BB107_10 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 8
	beqz	$s6, .LBB107_12
.LBB107_10:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s2, 0
	bne	$a0, $a2, .LBB107_9
# %bb.11:                               #   in Loop: Header=BB107_10 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB107_9
.LBB107_12:
	move	$s2, $s4
.LBB107_13:                             # %._crit_edge50
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.w	$s1, $s1, $s4
	bge	$s2, $s1, .LBB107_18
# %bb.14:                               # %.lr.ph54
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	bstrpick.d	$a0, $s2, 31, 0
	slli.d	$s4, $a0, 3
	b	.LBB107_16
	.p2align	4, , 16
.LBB107_15:                             # %clause_GetLiteralAtom.exit45
                                        #   in Loop: Header=BB107_16 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	bge	$s2, $s1, .LBB107_18
.LBB107_16:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s3, 0
	bne	$a0, $a2, .LBB107_15
# %bb.17:                               #   in Loop: Header=BB107_16 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB107_15
.LBB107_18:                             # %._crit_edge55
	ori	$a0, $zero, 46
	move	$a1, $s0
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
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.Lfunc_end107:
	.size	clause_FPrint, .Lfunc_end107-clause_FPrint
                                        # -- End function
	.globl	clause_GetOriginFromString      # -- Begin function clause_GetOriginFromString
	.p2align	5
	.type	clause_GetOriginFromString,@function
clause_GetOriginFromString:             # @clause_GetOriginFromString
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_28
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_30
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_31
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_32
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_33
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_34
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_35
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_36
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_37
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_38
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_39
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_40
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_41
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_42
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_43
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_44
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_45
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_46
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_47
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_48
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_49
# %bb.21:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_50
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_51
# %bb.23:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_52
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_53
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB108_54
# %bb.26:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 26
	beqz	$a1, .LBB108_29
# %bb.27:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	ori	$a3, $zero, 3811
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_DumpCore)
	jirl	$ra, $ra, 0
.LBB108_28:
	move	$a0, $zero
.LBB108_29:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_30:
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_31:
	ori	$a0, $zero, 2
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_32:
	ori	$a0, $zero, 3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_33:
	ori	$a0, $zero, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_34:
	ori	$a0, $zero, 5
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_35:
	ori	$a0, $zero, 8
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_36:
	ori	$a0, $zero, 6
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_37:
	ori	$a0, $zero, 7
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_38:
	ori	$a0, $zero, 9
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_39:
	ori	$a0, $zero, 13
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_40:
	ori	$a0, $zero, 10
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_41:
	ori	$a0, $zero, 11
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_42:
	ori	$a0, $zero, 12
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_43:
	ori	$a0, $zero, 14
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_44:
	ori	$a0, $zero, 15
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_45:
	ori	$a0, $zero, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_46:
	ori	$a0, $zero, 21
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_47:
	ori	$a0, $zero, 22
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_48:
	ori	$a0, $zero, 17
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_49:
	ori	$a0, $zero, 18
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_50:
	ori	$a0, $zero, 19
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_51:
	ori	$a0, $zero, 20
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_52:
	ori	$a0, $zero, 23
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_53:
	ori	$a0, $zero, 24
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB108_54:
	ori	$a0, $zero, 25
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end108:
	.size	clause_GetOriginFromString, .Lfunc_end108-clause_GetOriginFromString
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
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
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
.Lfunc_end109:
	.size	misc_DumpCore, .Lfunc_end109-misc_DumpCore
                                        # -- End function
	.text
	.globl	clause_FPrintOrigin             # -- Begin function clause_FPrintOrigin
	.p2align	5
	.type	clause_FPrintOrigin,@function
clause_FPrintOrigin:                    # @clause_FPrintOrigin
# %bb.0:
	ld.w	$a1, $a1, 76
	ori	$a2, $zero, 27
	bltu	$a2, $a1, .LBB110_30
# %bb.1:
	move	$a3, $a0
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI110_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI110_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB110_2:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_3:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_4:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_5:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_6:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_7:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_8:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_9:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_10:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_11:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_12:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_13:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_14:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_15:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_16:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_17:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_18:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_19:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_20:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_21:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_22:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_23:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_24:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_25:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_26:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_27:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_28:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_29:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB110_30:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	ori	$a3, $zero, 3859
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_DumpCore)
	jirl	$ra, $ra, 0
.Lfunc_end110:
	.size	clause_FPrintOrigin, .Lfunc_end110-clause_FPrintOrigin
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI110_0:
	.word	.LBB110_2-.LJTI110_0
	.word	.LBB110_16-.LJTI110_0
	.word	.LBB110_12-.LJTI110_0
	.word	.LBB110_14-.LJTI110_0
	.word	.LBB110_7-.LJTI110_0
	.word	.LBB110_19-.LJTI110_0
	.word	.LBB110_22-.LJTI110_0
	.word	.LBB110_15-.LJTI110_0
	.word	.LBB110_25-.LJTI110_0
	.word	.LBB110_9-.LJTI110_0
	.word	.LBB110_24-.LJTI110_0
	.word	.LBB110_6-.LJTI110_0
	.word	.LBB110_8-.LJTI110_0
	.word	.LBB110_21-.LJTI110_0
	.word	.LBB110_5-.LJTI110_0
	.word	.LBB110_13-.LJTI110_0
	.word	.LBB110_4-.LJTI110_0
	.word	.LBB110_17-.LJTI110_0
	.word	.LBB110_23-.LJTI110_0
	.word	.LBB110_27-.LJTI110_0
	.word	.LBB110_18-.LJTI110_0
	.word	.LBB110_20-.LJTI110_0
	.word	.LBB110_26-.LJTI110_0
	.word	.LBB110_28-.LJTI110_0
	.word	.LBB110_11-.LJTI110_0
	.word	.LBB110_10-.LJTI110_0
	.word	.LBB110_29-.LJTI110_0
	.word	.LBB110_3-.LJTI110_0
                                        # -- End function
	.text
	.globl	clause_PrintVerbose             # -- Begin function clause_PrintVerbose
	.p2align	5
	.type	clause_PrintVerbose,@function
clause_PrintVerbose:                    # @clause_PrintVerbose
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a1, $a0, 64
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 72
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 48
	andi	$a1, $a0, 1
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.L.str.46)
	addi.d	$a2, $a2, %pc_lo12(.L.str.46)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.47)
	addi.d	$a3, $a3, %pc_lo12(.L.str.47)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	andi	$a0, $a0, 2
	sltui	$a0, $a0, 1
	pcalau12i	$a2, %pc_hi20(.L.str.48)
	addi.d	$a2, $a2, %pc_lo12(.L.str.48)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.49)
	addi.d	$a3, $a3, %pc_lo12(.L.str.49)
	maskeqz	$a0, $a3, $a0
	or	$a2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(clause_Print)
	jr	$t8
.Lfunc_end111:
	.size	clause_PrintVerbose, .Lfunc_end111-clause_PrintVerbose
                                        # -- End function
	.globl	clause_GetNumberedCl            # -- Begin function clause_GetNumberedCl
	.p2align	5
	.type	clause_GetNumberedCl,@function
clause_GetNumberedCl:                   # @clause_GetNumberedCl
# %bb.0:
	beqz	$a1, .LBB112_3
	.p2align	4, , 16
.LBB112_1:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 8
	ld.w	$a3, $a2, 0
	beq	$a3, $a0, .LBB112_4
# %bb.2:                                #   in Loop: Header=BB112_1 Depth=1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB112_1
.LBB112_3:
	move	$a2, $zero
.LBB112_4:                              # %.critedge
	move	$a0, $a2
	ret
.Lfunc_end112:
	.size	clause_GetNumberedCl, .Lfunc_end112-clause_GetNumberedCl
                                        # -- End function
	.globl	clause_NumberSort               # -- Begin function clause_NumberSort
	.p2align	5
	.type	clause_NumberSort,@function
clause_NumberSort:                      # @clause_NumberSort
# %bb.0:
	pcalau12i	$a1, %pc_hi20(clause_NumberLower)
	addi.d	$a1, $a1, %pc_lo12(clause_NumberLower)
	pcaddu18i	$t8, %call36(list_Sort)
	jr	$t8
.Lfunc_end113:
	.size	clause_NumberSort, .Lfunc_end113-clause_NumberSort
                                        # -- End function
	.p2align	5                               # -- Begin function clause_NumberLower
	.type	clause_NumberLower,@function
clause_NumberLower:                     # @clause_NumberLower
# %bb.0:
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	slt	$a0, $a0, $a1
	ret
.Lfunc_end114:
	.size	clause_NumberLower, .Lfunc_end114-clause_NumberLower
                                        # -- End function
	.globl	clause_NumberDelete             # -- Begin function clause_NumberDelete
	.p2align	5
	.type	clause_NumberDelete,@function
clause_NumberDelete:                    # @clause_NumberDelete
# %bb.0:
	beqz	$a0, .LBB115_6
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	b	.LBB115_3
	.p2align	4, , 16
.LBB115_2:                              #   in Loop: Header=BB115_3 Depth=1
	beqz	$s0, .LBB115_5
.LBB115_3:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.w	$a2, $a1, 0
	ld.d	$s0, $s0, 0
	bne	$a2, $fp, .LBB115_2
# %bb.4:                                #   in Loop: Header=BB115_3 Depth=1
	pcaddu18i	$ra, %call36(list_PointerDeleteOneElement)
	jirl	$ra, $ra, 0
	b	.LBB115_2
.LBB115_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB115_6:
	move	$a0, $zero
	ret
.Lfunc_end115:
	.size	clause_NumberDelete, .Lfunc_end115-clause_NumberDelete
                                        # -- End function
	.globl	clause_NumberOfMaxAntecedentLits # -- Begin function clause_NumberOfMaxAntecedentLits
	.p2align	5
	.type	clause_NumberOfMaxAntecedentLits,@function
clause_NumberOfMaxAntecedentLits:       # @clause_NumberOfMaxAntecedentLits
# %bb.0:
	ld.w	$a4, $a0, 64
	ld.w	$a1, $a0, 68
	add.w	$a3, $a4, $a1
	addi.w	$a1, $a3, -1
	bgeu	$a1, $a4, .LBB116_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB116_2:                              # %.lr.ph
	ld.d	$a2, $a0, 56
	addi.w	$a0, $a4, 1
	sltu	$a5, $a0, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a0, $a0, $a5
	or	$a0, $a3, $a0
	sub.w	$a5, $a0, $a4
	ori	$a3, $zero, 8
	bltu	$a5, $a3, .LBB116_4
# %bb.3:                                # %vector.scevcheck
	addi.w	$a0, $a0, -1
	bge	$a0, $a4, .LBB116_7
.LBB116_4:
	move	$a0, $zero
	move	$a3, $a4
	.p2align	4, , 16
.LBB116_5:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a2, $a4
	ld.wu	$a4, $a4, 0
	andi	$a4, $a4, 1
	addi.w	$a3, $a3, 1
	add.w	$a0, $a4, $a0
	bgeu	$a1, $a3, .LBB116_5
.LBB116_6:                              # %._crit_edge
	ret
.LBB116_7:                              # %vector.ph
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	add.w	$a3, $a4, $a6
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 1
	move	$a0, $a6
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB116_8:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a7, $a4, $a2, 3
	slli.d	$t0, $a4, 3
	ldx.d	$t0, $a2, $t0
	ld.d	$t1, $a7, 8
	ld.d	$t2, $a7, 16
	ld.d	$a7, $a7, 24
	ld.w	$t0, $t0, 0
	ld.w	$t1, $t1, 0
	ld.w	$t2, $t2, 0
	ld.w	$a7, $a7, 0
	vinsgr2vr.w	$vr3, $t0, 0
	vinsgr2vr.w	$vr3, $t1, 1
	vinsgr2vr.w	$vr4, $t2, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vand.v	$vr3, $vr3, $vr1
	vand.v	$vr4, $vr4, $vr1
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr2, $vr4, $vr2
	addi.w	$a0, $a0, -4
	addi.w	$a4, $a4, 4
	bnez	$a0, .LBB116_8
# %bb.9:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vpickve2gr.w	$a0, $vr0, 0
	bne	$a5, $a6, .LBB116_5
	b	.LBB116_6
.Lfunc_end116:
	.size	clause_NumberOfMaxAntecedentLits, .Lfunc_end116-clause_NumberOfMaxAntecedentLits
                                        # -- End function
	.globl	clause_SelectLiteral            # -- Begin function clause_SelectLiteral
	.p2align	5
	.type	clause_SelectLiteral,@function
clause_SelectLiteral:                   # @clause_SelectLiteral
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB117_15
# %bb.1:
	ld.bu	$a0, $fp, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB117_15
# %bb.2:
	ld.w	$a1, $fp, 68
	blez	$a1, .LBB117_15
# %bb.3:
	ld.w	$a0, $s0, 152
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB117_9
# %bb.4:
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB117_15
# %bb.5:                                # %._crit_edge36
	ld.w	$a2, $fp, 64
	ld.d	$a0, $fp, 56
.LBB117_6:
	add.d	$a3, $a1, $a2
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a0, $a1
	addi.w	$a3, $a3, -1
	addi.w	$a2, $a2, 1
	bltu	$a3, $a2, .LBB117_8
	.p2align	4, , 16
.LBB117_7:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a0, $a4
	ld.w	$a5, $a1, 4
	ld.w	$a6, $a4, 4
	sltu	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a5
	masknez	$a1, $a1, $a5
	addi.w	$a2, $a2, 1
	or	$a1, $a4, $a1
	bgeu	$a3, $a2, .LBB117_7
.LBB117_8:                              # %._crit_edge
	ld.w	$a0, $a1, 0
	ori	$a0, $a0, 4
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, 48
	ori	$a0, $a0, 2
	st.w	$a0, $fp, 48
	b	.LBB117_15
.LBB117_9:
	ld.w	$a2, $fp, 64
	ld.w	$a4, $fp, 72
	add.d	$a0, $a2, $a1
	add.w	$a3, $a0, $a4
	bgeu	$a2, $a3, .LBB117_15
# %bb.10:                               # %.lr.ph.i
	ld.d	$a0, $fp, 56
	add.w	$a5, $a1, $a4
	ori	$a4, $zero, 4
	bltu	$a5, $a4, .LBB117_12
# %bb.11:                               # %vector.scevcheck
	add.d	$a4, $a5, $a2
	addi.w	$a4, $a4, -1
	bge	$a4, $a2, .LBB117_16
.LBB117_12:
	move	$a7, $zero
	move	$a4, $a2
	.p2align	4, , 16
.LBB117_13:                             # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	ld.wu	$a5, $a5, 0
	andi	$a5, $a5, 1
	addi.w	$a4, $a4, 1
	add.w	$a7, $a5, $a7
	bne	$a3, $a4, .LBB117_13
.LBB117_14:                             # %clause_NumberOfMaxLits.exit
	ori	$a3, $zero, 2
	bgeu	$a7, $a3, .LBB117_6
.LBB117_15:                             # %clause_NumberOfMaxLits.exit.thread
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB117_16:                             # %vector.ph
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	add.w	$a4, $a2, $a6
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 1
	move	$a7, $a2
	move	$t0, $a6
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB117_17:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$t1, $a7, $a0, 3
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a0, $t2
	ld.d	$t3, $t1, 8
	ld.d	$t4, $t1, 16
	ld.d	$t1, $t1, 24
	ld.w	$t2, $t2, 0
	ld.w	$t3, $t3, 0
	ld.w	$t4, $t4, 0
	ld.w	$t1, $t1, 0
	vinsgr2vr.w	$vr3, $t2, 0
	vinsgr2vr.w	$vr3, $t3, 1
	vinsgr2vr.w	$vr4, $t4, 0
	vinsgr2vr.w	$vr4, $t1, 1
	vand.v	$vr3, $vr3, $vr1
	vand.v	$vr4, $vr4, $vr1
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr2, $vr4, $vr2
	addi.w	$t0, $t0, -4
	addi.w	$a7, $a7, 4
	bnez	$t0, .LBB117_17
# %bb.18:                               # %middle.block
	vadd.w	$vr0, $vr2, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	bne	$a5, $a6, .LBB117_13
	b	.LBB117_14
.Lfunc_end117:
	.size	clause_SelectLiteral, .Lfunc_end117-clause_SelectLiteral
                                        # -- End function
	.globl	clause_SetSpecialFlags          # -- Begin function clause_SetSpecialFlags
	.p2align	5
	.type	clause_SetSpecialFlags,@function
clause_SetSpecialFlags:                 # @clause_SetSpecialFlags
# %bb.0:
	beqz	$a1, .LBB118_2
# %bb.1:
	ld.w	$a1, $a0, 68
	blez	$a1, .LBB118_3
.LBB118_2:                              # %clause_IsSortTheoryClause.exit.thread
	ret
.LBB118_3:
	ld.w	$a1, $a0, 72
	ori	$a2, $zero, 1
	blt	$a2, $a1, .LBB118_2
# %bb.4:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB118_8
# %bb.5:                                # %clause_IsSortTheoryClause.exit
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.d	$a2, $fp, 56
	add.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$a0, $a0, 0
	ld.wu	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.w	$a1, $a0, 16
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB118_8
# %bb.6:
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 32
	beqz	$a0, .LBB118_8
# %bb.7:
	ld.w	$a0, $fp, 48
	ori	$a0, $a0, 32
	st.w	$a0, $fp, 48
.LBB118_8:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end118:
	.size	clause_SetSpecialFlags, .Lfunc_end118-clause_SetSpecialFlags
                                        # -- End function
	.globl	clause_ContainsPotPredDef       # -- Begin function clause_ContainsPotPredDef
	.p2align	5
	.type	clause_ContainsPotPredDef,@function
clause_ContainsPotPredDef:              # @clause_ContainsPotPredDef
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
	ld.w	$a0, $a0, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.w	$s6, $a1, $a0
	add.w	$a5, $s6, $a2
	bgeu	$s6, $a5, .LBB119_59
# %bb.1:                                # %.lr.ph241
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a3, $a3, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$s0, $a3, 0
	ori	$s8, $zero, 2
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB119_4
.LBB119_2:                              # %.thread
                                        #   in Loop: Header=BB119_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 128
	st.d	$s2, $a0, 0
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	.p2align	4, , 16
.LBB119_3:                              # %.critedge102
                                        #   in Loop: Header=BB119_4 Depth=1
	addi.w	$s6, $s6, 1
	add.d	$a3, $a1, $a0
	add.w	$a3, $a3, $a2
	bgeu	$s6, $a3, .LBB119_59
.LBB119_4:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB119_7 Depth 2
                                        #     Child Loop BB119_11 Depth 2
                                        #     Child Loop BB119_19 Depth 2
                                        #       Child Loop BB119_24 Depth 3
                                        #         Child Loop BB119_25 Depth 4
                                        #       Child Loop BB119_30 Depth 3
                                        #     Child Loop BB119_35 Depth 2
                                        #       Child Loop BB119_43 Depth 3
                                        #         Child Loop BB119_44 Depth 4
                                        #       Child Loop BB119_49 Depth 3
                                        #     Child Loop BB119_53 Depth 2
                                        #     Child Loop BB119_56 Depth 2
                                        #     Child Loop BB119_58 Depth 2
	ld.d	$a3, $fp, 56
	slli.d	$a4, $s6, 3
	ldx.d	$a3, $a3, $a4
	ld.d	$s3, $a3, 24
	ld.w	$a3, $s3, 0
	bgez	$a3, .LBB119_3
# %bb.5:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB119_4 Depth=1
	sub.w	$a3, $zero, $a3
	and	$a3, $s0, $a3
	bne	$a3, $s8, .LBB119_3
# %bb.6:                                #   in Loop: Header=BB119_4 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	addi.d	$a0, $s3, 16
	.p2align	4, , 16
.LBB119_7:                              #   Parent Loop BB119_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB119_9
# %bb.8:                                #   in Loop: Header=BB119_7 Depth=2
	ld.d	$a1, $a0, 8
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -2001
	addi.w	$a2, $zero, -2000
	bgeu	$a1, $a2, .LBB119_7
	b	.LBB119_57
.LBB119_9:                              # %.critedge.preheader
                                        #   in Loop: Header=BB119_4 Depth=1
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	beqz	$a0, .LBB119_16
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB119_4 Depth=1
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a1, %got_pc_lo12(fol_NOT)
	ld.d	$a1, $fp, 56
	ld.w	$a2, $a2, 0
	ld.w	$a3, $s3, 0
	move	$a4, $zero
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB119_11:                             #   Parent Loop BB119_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a5, -1
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a1, $a6
	ld.d	$a7, $a6, 24
	ld.w	$a6, $a7, 0
	bne	$a6, $a2, .LBB119_13
# %bb.12:                               #   in Loop: Header=BB119_11 Depth=2
	ld.d	$a6, $a7, 16
	ld.d	$a6, $a6, 8
	ld.w	$a6, $a6, 0
.LBB119_13:                             # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB119_11 Depth=2
	xor	$a6, $a6, $a3
	sltui	$a6, $a6, 1
	add.w	$a4, $a4, $a6
	bgeu	$a5, $a0, .LBB119_15
# %bb.14:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB119_11 Depth=2
	addi.w	$a5, $a5, 1
	bltu	$a4, $s8, .LBB119_11
.LBB119_15:                             # %.critedge._crit_edge
                                        #   in Loop: Header=BB119_4 Depth=1
	ori	$a0, $zero, 1
	bltu	$a0, $a4, .LBB119_57
.LBB119_16:                             # %.critedge._crit_edge.thread
                                        #   in Loop: Header=BB119_4 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	sub.w	$a1, $zero, $a1
	move	$s7, $a0
	bne	$a2, $a1, .LBB119_18
# %bb.17:                               #   in Loop: Header=BB119_4 Depth=1
	move	$s0, $zero
	ori	$a0, $zero, 1
	b	.LBB119_33
.LBB119_18:                             # %.lr.ph220
                                        #   in Loop: Header=BB119_4 Depth=1
	move	$s1, $zero
	.p2align	4, , 16
.LBB119_19:                             #   Parent Loop BB119_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB119_24 Depth 3
                                        #         Child Loop BB119_25 Depth 4
                                        #       Child Loop BB119_30 Depth 3
	ld.d	$a0, $fp, 56
	slli.d	$s0, $s1, 3
	ldx.d	$a0, $a0, $s0
	ld.d	$s4, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $s4, 0
	ld.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB119_21
# %bb.20:                               #   in Loop: Header=BB119_19 Depth=2
	ld.d	$a0, $s4, 16
	ld.d	$s4, $a0, 8
.LBB119_21:                             # %clause_GetLiteralAtom.exit137
                                        #   in Loop: Header=BB119_19 Depth=2
	ld.d	$s3, $s2, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s3, $a0, 0
	st.d	$a0, $s2, 8
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	sltui	$a0, $a0, 1
	beqz	$s4, .LBB119_29
# %bb.22:                               # %clause_GetLiteralAtom.exit137
                                        #   in Loop: Header=BB119_19 Depth=2
	beqz	$s7, .LBB119_29
# %bb.23:                               # %.lr.ph.i.i.preheader.preheader
                                        #   in Loop: Header=BB119_19 Depth=2
	move	$s0, $s4
.LBB119_24:                             # %.lr.ph.i.i.preheader
                                        #   Parent Loop BB119_4 Depth=1
                                        #     Parent Loop BB119_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB119_25 Depth 4
	ld.d	$s5, $s0, 8
	move	$s3, $s7
	.p2align	4, , 16
.LBB119_25:                             # %.lr.ph.i.i
                                        #   Parent Loop BB119_4 Depth=1
                                        #     Parent Loop BB119_19 Depth=2
                                        #       Parent Loop BB119_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s3, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB119_27
# %bb.26:                               #   in Loop: Header=BB119_25 Depth=4
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB119_25
	b	.LBB119_28
	.p2align	4, , 16
.LBB119_27:                             # %term_ListContainsTerm.exit
                                        #   in Loop: Header=BB119_24 Depth=3
	ld.d	$s0, $s0, 0
	ori	$a0, $zero, 1
	bnez	$s0, .LBB119_24
	b	.LBB119_29
	.p2align	4, , 16
.LBB119_28:                             #   in Loop: Header=BB119_19 Depth=2
	move	$a0, $zero
.LBB119_29:                             # %term_ListContainsTerm.exit.thread
                                        #   in Loop: Header=BB119_19 Depth=2
	beqz	$s4, .LBB119_31
	.p2align	4, , 16
.LBB119_30:                             # %.lr.ph.i
                                        #   Parent Loop BB119_4 Depth=1
                                        #     Parent Loop BB119_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $s4, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s4, 0
	ld.d	$a1, $a1, 128
	st.d	$s4, $a1, 0
	move	$s4, $a6
	bnez	$a6, .LBB119_30
.LBB119_31:                             # %list_Delete.exit
                                        #   in Loop: Header=BB119_19 Depth=2
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	add.w	$s0, $a2, $a1
	beqz	$a0, .LBB119_33
# %bb.32:                               # %list_Delete.exit
                                        #   in Loop: Header=BB119_19 Depth=2
	addi.w	$s1, $s1, 1
	bltu	$s1, $s0, .LBB119_19
.LBB119_33:                             # %.preheader
                                        #   in Loop: Header=BB119_4 Depth=1
	beqz	$a0, .LBB119_52
# %bb.34:                               # %.preheader
                                        #   in Loop: Header=BB119_4 Depth=1
	ld.w	$a1, $fp, 72
	add.w	$a1, $s0, $a1
	bgeu	$s0, $a1, .LBB119_52
	.p2align	4, , 16
.LBB119_35:                             #   Parent Loop BB119_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB119_43 Depth 3
                                        #         Child Loop BB119_44 Depth 4
                                        #       Child Loop BB119_49 Depth 3
	ori	$a0, $zero, 1
	beq	$s0, $s6, .LBB119_50
# %bb.36:                               #   in Loop: Header=BB119_35 Depth=2
	ld.d	$a0, $fp, 56
	slli.d	$s1, $s0, 3
	ldx.d	$a0, $a0, $s1
	ld.d	$s5, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s4, 0
	bne	$a0, $a1, .LBB119_38
# %bb.37:                               #   in Loop: Header=BB119_35 Depth=2
	ld.d	$a0, $s5, 16
	ld.d	$s5, $a0, 8
.LBB119_38:                             # %clause_GetLiteralAtom.exit151
                                        #   in Loop: Header=BB119_35 Depth=2
	ld.d	$s3, $s2, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s3, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB119_40
# %bb.39:                               #   in Loop: Header=BB119_35 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB119_40:                             # %clause_GetLiteralAtom.exit158
                                        #   in Loop: Header=BB119_35 Depth=2
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	sltui	$a0, $a0, 1
	beqz	$s4, .LBB119_48
# %bb.41:                               # %clause_GetLiteralAtom.exit158
                                        #   in Loop: Header=BB119_35 Depth=2
	beqz	$s7, .LBB119_48
# %bb.42:                               # %.lr.ph.i.i160.preheader.preheader
                                        #   in Loop: Header=BB119_35 Depth=2
	move	$s1, $s4
.LBB119_43:                             # %.lr.ph.i.i160.preheader
                                        #   Parent Loop BB119_4 Depth=1
                                        #     Parent Loop BB119_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB119_44 Depth 4
	ld.d	$s5, $s1, 8
	move	$s3, $s7
	.p2align	4, , 16
.LBB119_44:                             # %.lr.ph.i.i160
                                        #   Parent Loop BB119_4 Depth=1
                                        #     Parent Loop BB119_35 Depth=2
                                        #       Parent Loop BB119_43 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s3, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB119_46
# %bb.45:                               #   in Loop: Header=BB119_44 Depth=4
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB119_44
	b	.LBB119_47
	.p2align	4, , 16
.LBB119_46:                             # %term_ListContainsTerm.exit167
                                        #   in Loop: Header=BB119_43 Depth=3
	ld.d	$s1, $s1, 0
	ori	$a0, $zero, 1
	bnez	$s1, .LBB119_43
	b	.LBB119_48
	.p2align	4, , 16
.LBB119_47:                             #   in Loop: Header=BB119_35 Depth=2
	move	$a0, $zero
.LBB119_48:                             # %term_ListContainsTerm.exit167.thread
                                        #   in Loop: Header=BB119_35 Depth=2
	beqz	$s4, .LBB119_50
	.p2align	4, , 16
.LBB119_49:                             # %.lr.ph.i169
                                        #   Parent Loop BB119_4 Depth=1
                                        #     Parent Loop BB119_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $s4, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s4, 0
	ld.d	$a1, $a1, 128
	st.d	$s4, $a1, 0
	move	$s4, $a6
	bnez	$a6, .LBB119_49
.LBB119_50:                             # %list_Delete.exit173
                                        #   in Loop: Header=BB119_35 Depth=2
	beqz	$a0, .LBB119_52
# %bb.51:                               # %list_Delete.exit173
                                        #   in Loop: Header=BB119_35 Depth=2
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	addi.w	$s0, $s0, 1
	add.d	$a1, $a2, $a1
	add.w	$a1, $a1, $a3
	bltu	$s0, $a1, .LBB119_35
.LBB119_52:                             # %._crit_edge
                                        #   in Loop: Header=BB119_4 Depth=1
	beqz	$s7, .LBB119_54
	.p2align	4, , 16
.LBB119_53:                             # %.lr.ph.i175
                                        #   Parent Loop BB119_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $s7, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s7, 0
	ld.d	$a1, $a1, 128
	st.d	$s7, $a1, 0
	move	$s7, $a6
	bnez	$a6, .LBB119_53
.LBB119_54:                             # %.critedge100
                                        #   in Loop: Header=BB119_4 Depth=1
	bnez	$a0, .LBB119_61
# %bb.55:                               # %.critedge100.thread
                                        #   in Loop: Header=BB119_4 Depth=1
	ld.d	$a0, $s2, 8
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB119_57
	.p2align	4, , 16
.LBB119_56:                             # %.lr.ph.i181
                                        #   Parent Loop BB119_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	bnez	$a6, .LBB119_56
.LBB119_57:                             # %list_Delete.exit185
                                        #   in Loop: Header=BB119_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB119_2
	.p2align	4, , 16
.LBB119_58:                             # %.lr.ph.i187
                                        #   Parent Loop BB119_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	bnez	$a6, .LBB119_58
	b	.LBB119_2
.LBB119_59:
	move	$a0, $zero
.LBB119_60:                             # %.loopexit
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
.LBB119_61:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$s6, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$s2, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB119_60
.Lfunc_end119:
	.size	clause_ContainsPotPredDef, .Lfunc_end119-clause_ContainsPotPredDef
                                        # -- End function
	.globl	clause_IsPartOfDefinition       # -- Begin function clause_IsPartOfDefinition
	.p2align	5
	.type	clause_IsPartOfDefinition,@function
clause_IsPartOfDefinition:              # @clause_IsPartOfDefinition
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
	ld.w	$a4, $a0, 64
	ld.w	$a5, $a0, 68
	sub.w	$a0, $zero, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s3, $zero
	beq	$a5, $a0, .LBB120_6
# %bb.1:                                # %.lr.ph
	move	$s2, $a1
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	move	$s3, $zero
	.p2align	4, , 16
.LBB120_2:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s3, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s4, 0
	bne	$a0, $a2, .LBB120_4
# %bb.3:                                #   in Loop: Header=BB120_2 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB120_4:                              # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB120_2 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	ld.w	$a4, $fp, 64
	ld.w	$a5, $fp, 68
	bnez	$a0, .LBB120_6
# %bb.5:                                #   in Loop: Header=BB120_2 Depth=1
	addi.w	$s3, $s3, 1
	add.w	$a0, $a5, $a4
	bltu	$s3, $a0, .LBB120_2
.LBB120_6:                              # %clause_GetLiteralAtom.exit._crit_edge
	add.w	$a0, $a5, $a4
	beq	$s3, $a0, .LBB120_37
# %bb.7:
	st.w	$s3, $s1, 0
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	sub.w	$a0, $zero, $a1
	bne	$a2, $a0, .LBB120_9
# %bb.8:
	move	$s2, $zero
	ori	$a3, $zero, 1
	b	.LBB120_19
.LBB120_9:                              # %.lr.ph138
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	move	$s5, $zero
	.p2align	4, , 16
.LBB120_10:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB120_14 Depth 2
	ori	$a3, $zero, 1
	beq	$s5, $s3, .LBB120_17
# %bb.11:                               #   in Loop: Header=BB120_10 Depth=1
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s1, $a0, 24
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s4, 0
	bne	$a0, $a1, .LBB120_13
# %bb.12:                               #   in Loop: Header=BB120_10 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$s1, $a0, 8
.LBB120_13:                             # %clause_GetLiteralAtom.exit82
                                        #   in Loop: Header=BB120_10 Depth=1
	ld.d	$s2, $s0, 0
	beqz	$s2, .LBB120_37
	.p2align	4, , 16
.LBB120_14:                             # %.lr.ph.i.i
                                        #   Parent Loop BB120_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB120_16
# %bb.15:                               #   in Loop: Header=BB120_14 Depth=2
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB120_14
.LBB120_16:                             # %term_ListContainsTerm.exit.loopexit
                                        #   in Loop: Header=BB120_10 Depth=1
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	sltu	$a3, $zero, $a0
.LBB120_17:                             # %term_ListContainsTerm.exit
                                        #   in Loop: Header=BB120_10 Depth=1
	add.w	$s2, $a2, $a1
	beqz	$a3, .LBB120_19
# %bb.18:                               # %term_ListContainsTerm.exit
                                        #   in Loop: Header=BB120_10 Depth=1
	addi.w	$s5, $s5, 1
	bltu	$s5, $s2, .LBB120_10
.LBB120_19:                             # %.preheader124
	ld.w	$a4, $fp, 72
	beqz	$a3, .LBB120_29
# %bb.20:                               # %.preheader124
	add.w	$a0, $s2, $a4
	bgeu	$s2, $a0, .LBB120_29
# %bb.21:
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	.p2align	4, , 16
.LBB120_22:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB120_25 Depth 2
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s2, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s1, $a0, 24
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s4, 0
	bne	$a0, $a1, .LBB120_24
# %bb.23:                               #   in Loop: Header=BB120_22 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$s1, $a0, 8
.LBB120_24:                             # %clause_GetLiteralAtom.exit92
                                        #   in Loop: Header=BB120_22 Depth=1
	ld.d	$s5, $s0, 8
	beqz	$s5, .LBB120_37
	.p2align	4, , 16
.LBB120_25:                             # %.lr.ph.i.i94
                                        #   Parent Loop BB120_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB120_27
# %bb.26:                               #   in Loop: Header=BB120_25 Depth=2
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB120_25
.LBB120_27:                             # %term_ListContainsTerm.exit101
                                        #   in Loop: Header=BB120_22 Depth=1
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a4, $fp, 72
	sltu	$a3, $zero, $a0
	beqz	$a0, .LBB120_29
# %bb.28:                               # %term_ListContainsTerm.exit101
                                        #   in Loop: Header=BB120_22 Depth=1
	addi.w	$s2, $s2, 1
	add.d	$a0, $a2, $a1
	add.w	$a0, $a0, $a4
	bltu	$s2, $a0, .LBB120_22
.LBB120_29:                             # %._crit_edge146
	beqz	$a3, .LBB120_37
# %bb.30:                               # %.preheader123
	sub.w	$a0, $zero, $a1
	move	$s4, $zero
	beq	$a2, $a0, .LBB120_40
# %bb.31:                               # %.lr.ph151
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(term_Equal)
	ld.d	$s1, $a0, %got_pc_lo12(term_Equal)
	move	$s5, $zero
	b	.LBB120_34
	.p2align	4, , 16
.LBB120_32:                             # %clause_GetLiteralAtom.exit108
                                        #   in Loop: Header=BB120_34 Depth=1
	ld.d	$a0, $s0, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(list_DeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
.LBB120_33:                             #   in Loop: Header=BB120_34 Depth=1
	addi.w	$s5, $s5, 1
	add.w	$s4, $a2, $a1
	bgeu	$s5, $s4, .LBB120_39
.LBB120_34:                             # =>This Inner Loop Header: Depth=1
	beq	$s3, $s5, .LBB120_33
# %bb.35:                               #   in Loop: Header=BB120_34 Depth=1
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s2, 0
	bne	$a0, $a2, .LBB120_32
# %bb.36:                               #   in Loop: Header=BB120_34 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB120_32
.LBB120_37:
	move	$s1, $zero
.LBB120_38:                             # %.loopexit
	move	$a0, $s1
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
.LBB120_39:                             # %.preheader.loopexit
	ld.w	$a4, $fp, 72
.LBB120_40:                             # %.preheader
	add.w	$a0, $s4, $a4
	ori	$s1, $zero, 1
	bgeu	$s4, $a0, .LBB120_38
# %bb.41:                               # %.lr.ph157
	ld.d	$a0, $s0, 8
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a1, %got_pc_lo12(fol_NOT)
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$s2, $a1, %got_pc_lo12(term_Equal)
	b	.LBB120_43
	.p2align	4, , 16
.LBB120_42:                             # %clause_GetLiteralAtom.exit118
                                        #   in Loop: Header=BB120_43 Depth=1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(list_DeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	addi.w	$s4, $s4, 1
	add.d	$a1, $a2, $a1
	add.w	$a1, $a1, $a3
	bgeu	$s4, $a1, .LBB120_38
.LBB120_43:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	slli.d	$a2, $s4, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 24
	ld.w	$a2, $a1, 0
	ld.w	$a3, $s3, 0
	bne	$a2, $a3, .LBB120_42
# %bb.44:                               #   in Loop: Header=BB120_43 Depth=1
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 8
	b	.LBB120_42
.Lfunc_end120:
	.size	clause_IsPartOfDefinition, .Lfunc_end120-clause_IsPartOfDefinition
                                        # -- End function
	.globl	clause_FPrintRule               # -- Begin function clause_FPrintRule
	.p2align	5
	.type	clause_FPrintRule,@function
clause_FPrintRule:                      # @clause_FPrintRule
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
	move	$s0, $a1
	ld.w	$a1, $a1, 64
	ld.w	$a2, $s0, 68
	ld.w	$a3, $s0, 72
	add.d	$a1, $a2, $a1
	add.w	$a1, $a1, $a3
	move	$fp, $a0
	blez	$a1, .LBB121_15
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.w	$s5, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s6, $a0, %got_pc_lo12(symbol_SIGNATURE)
	move	$s7, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s3, $zero
	move	$s2, $zero
	slli.d	$s8, $a1, 3
	b	.LBB121_4
	.p2align	4, , 16
.LBB121_2:                              #   in Loop: Header=BB121_4 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s3, $a0, 0
	move	$s3, $a0
.LBB121_3:                              #   in Loop: Header=BB121_4 Depth=1
	addi.d	$s7, $s7, 8
	beq	$s8, $s7, .LBB121_9
.LBB121_4:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s7
	ld.d	$s1, $a0, 24
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s4, 0
	bne	$a0, $a1, .LBB121_2
# %bb.5:                                # %fol_Atom.exit
                                        #   in Loop: Header=BB121_4 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	ld.d	$a2, $s6, 0
	sub.d	$a1, $zero, $a1
	sra.w	$a1, $a1, $s5
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 16
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB121_8
# %bb.6:                                # %fol_Atom.exit67
                                        #   in Loop: Header=BB121_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB121_8
# %bb.7:                                #   in Loop: Header=BB121_4 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB121_3
	.p2align	4, , 16
.LBB121_8:                              #   in Loop: Header=BB121_4 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s2, $a0, 0
	move	$s2, $a0
	b	.LBB121_3
.LBB121_9:                              # %.preheader
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	beqz	$s5, .LBB121_16
# %bb.10:
	move	$s0, $s5
	b	.LBB121_12
	.p2align	4, , 16
.LBB121_11:                             # %fol_Atom.exit72
                                        #   in Loop: Header=BB121_12 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB121_14
.LBB121_12:                             # %.lr.ph102
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s4, 0
	bne	$a0, $a2, .LBB121_11
# %bb.13:                               #   in Loop: Header=BB121_12 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB121_11
.LBB121_14:
	move	$s0, $s5
	b	.LBB121_17
.LBB121_15:                             # %list_Delete.exit83.thread
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB121_16:
	move	$s0, $zero
.LBB121_17:                             # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB121_25
# %bb.18:                               # %.lr.ph106.preheader
	move	$s1, $s2
	b	.LBB121_20
	.p2align	4, , 16
.LBB121_19:                             #   in Loop: Header=BB121_20 Depth=1
	move	$s1, $a0
	beqz	$a0, .LBB121_24
.LBB121_20:                             # %.lr.ph106
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s4, 0
	beq	$a0, $a2, .LBB121_22
# %bb.21:                               # %fol_Atom.exit77
                                        #   in Loop: Header=BB121_20 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB121_19
	b	.LBB121_23
	.p2align	4, , 16
.LBB121_22:                             #   in Loop: Header=BB121_20 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB121_19
.LBB121_23:                             #   in Loop: Header=BB121_20 Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	b	.LBB121_19
.LBB121_24:
	move	$s1, $s2
	b	.LBB121_26
.LBB121_25:
	move	$s1, $zero
.LBB121_26:                             # %._crit_edge107
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB121_30
# %bb.27:                               # %.lr.ph111.preheader
	move	$s4, $s3
	.p2align	4, , 16
.LBB121_28:                             # %.lr.ph111
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrint)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB121_28
# %bb.29:
	move	$s4, $s3
	b	.LBB121_31
.LBB121_30:
	move	$s4, $zero
.LBB121_31:                             # %._crit_edge112
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB121_34
# %bb.32:                               # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB121_33:                             # %.lr.ph.i
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
	bnez	$a5, .LBB121_33
.LBB121_34:                             # %list_Delete.exit
	beqz	$s3, .LBB121_37
# %bb.35:                               # %.lr.ph.i79.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB121_36:                             # %.lr.ph.i79
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
	bnez	$a5, .LBB121_36
.LBB121_37:                             # %list_Delete.exit83
	beqz	$s5, .LBB121_40
# %bb.38:                               # %.lr.ph.i85.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB121_39:                             # %.lr.ph.i85
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
	bnez	$a5, .LBB121_39
.LBB121_40:                             # %list_Delete.exit89
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
.Lfunc_end121:
	.size	clause_FPrintRule, .Lfunc_end121-clause_FPrintRule
                                        # -- End function
	.globl	clause_FPrintOtter              # -- Begin function clause_FPrintOtter
	.p2align	5
	.type	clause_FPrintOtter,@function
clause_FPrintOtter:                     # @clause_FPrintOtter
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
	move	$s0, $a1
	ld.w	$a1, $a1, 64
	ld.w	$a2, $s0, 68
	ld.w	$a3, $s0, 72
	add.d	$a1, $a2, $a1
	add.w	$s4, $a1, $a3
	move	$fp, $a0
	beqz	$s4, .LBB122_14
# %bb.1:                                # %.preheader
	blez	$s4, .LBB122_15
# %bb.2:                                # %.lr.ph
	move	$s5, $zero
	addi.w	$s6, $s4, -2
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s8, $a0, %got_pc_lo12(fol_EQUALITY)
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$s2, $a0, %pc_lo12(.L.str.55)
	b	.LBB122_4
	.p2align	4, , 16
.LBB122_3:                              #   in Loop: Header=BB122_4 Depth=1
	addi.d	$s5, $s5, 1
	beq	$s5, $s4, .LBB122_15
.LBB122_4:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	slli.d	$a1, $s5, 3
	ldx.d	$s1, $a0, $a1
	ld.d	$s3, $s1, 24
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB122_6
# %bb.5:                                #   in Loop: Header=BB122_4 Depth=1
	ld.d	$a0, $s3, 16
	ld.d	$s3, $a0, 8
	ori	$a0, $zero, 45
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
.LBB122_6:                              # %clause_LiteralAtom.exit.thread
                                        #   in Loop: Header=BB122_4 Depth=1
	ld.w	$a1, $s8, 0
	bne	$a0, $a1, .LBB122_11
# %bb.7:                                #   in Loop: Header=BB122_4 Depth=1
	ld.d	$a0, $s1, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB122_9
# %bb.8:                                #   in Loop: Header=BB122_4 Depth=1
	ori	$a0, $zero, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB122_9:                              #   in Loop: Header=BB122_4 Depth=1
	ld.d	$a0, $s3, 16
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintOtterPrefix)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintOtterPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s7, 0
	beq	$a0, $a1, .LBB122_12
# %bb.10:                               #   in Loop: Header=BB122_4 Depth=1
	blt	$s6, $s5, .LBB122_3
	b	.LBB122_13
	.p2align	4, , 16
.LBB122_11:                             #   in Loop: Header=BB122_4 Depth=1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(term_FPrintOtterPrefix)
	jirl	$ra, $ra, 0
	blt	$s6, $s5, .LBB122_3
	b	.LBB122_13
	.p2align	4, , 16
.LBB122_12:                             #   in Loop: Header=BB122_4 Depth=1
	ori	$a0, $zero, 41
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s5, .LBB122_3
.LBB122_13:                             #   in Loop: Header=BB122_4 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB122_3
.LBB122_14:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB122_15:                             # %.loopexit
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end122:
	.size	clause_FPrintOtter, .Lfunc_end122-clause_FPrintOtter
                                        # -- End function
	.globl	clause_FPrintCnfDFG             # -- Begin function clause_FPrintCnfDFG
	.p2align	5
	.type	clause_FPrintCnfDFG,@function
clause_FPrintCnfDFG:                    # @clause_FPrintCnfDFG
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$s1, $a1
	move	$fp, $a0
	beqz	$a2, .LBB123_4
# %bb.1:
	move	$s2, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB123_10
	.p2align	4, , 16
.LBB123_2:                              # %clause_HasSelectedLiteral.exit.thread.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintDFG)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB123_2
.LBB123_3:                              # %.split61.us
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB123_4:
	beqz	$s0, .LBB123_22
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB123_17
	.p2align	4, , 16
.LBB123_6:                              # %clause_HasSelectedLiteral.exit52.thread.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintDFG)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB123_6
.LBB123_7:                              # %.split65.us
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
	.p2align	4, , 16
.LBB123_8:                              # %clause_HasSelectedLiteral.exit.thread
                                        #   in Loop: Header=BB123_10 Depth=1
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintDFG)
	jirl	$ra, $ra, 0
.LBB123_9:                              # %clause_HasSelectedLiteral.exit
                                        #   in Loop: Header=BB123_10 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB123_3
.LBB123_10:                             # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB123_13 Depth 2
	ld.d	$s3, $s2, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB123_9
# %bb.11:                               #   in Loop: Header=BB123_10 Depth=1
	ld.w	$a1, $s3, 64
	ld.w	$a0, $s3, 68
	add.d	$a2, $a0, $a1
	addi.w	$a2, $a2, -1
	blt	$a2, $a1, .LBB123_8
# %bb.12:                               # %.lr.ph.i
                                        #   in Loop: Header=BB123_10 Depth=1
	ld.d	$a2, $s3, 56
	alsl.d	$a1, $a1, $a2, 3
	.p2align	4, , 16
.LBB123_13:                             #   Parent Loop BB123_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.bu	$a2, $a2, 0
	andi	$a2, $a2, 4
	bnez	$a2, .LBB123_9
# %bb.14:                               #   in Loop: Header=BB123_13 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB123_13
	b	.LBB123_8
	.p2align	4, , 16
.LBB123_15:                             # %clause_HasSelectedLiteral.exit52.thread
                                        #   in Loop: Header=BB123_17 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintDFG)
	jirl	$ra, $ra, 0
.LBB123_16:                             # %clause_HasSelectedLiteral.exit52
                                        #   in Loop: Header=BB123_17 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB123_7
.LBB123_17:                             # %.split63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB123_20 Depth 2
	ld.d	$s1, $s0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB123_16
# %bb.18:                               #   in Loop: Header=BB123_17 Depth=1
	ld.w	$a1, $s1, 64
	ld.w	$a0, $s1, 68
	add.d	$a2, $a0, $a1
	addi.w	$a2, $a2, -1
	blt	$a2, $a1, .LBB123_15
# %bb.19:                               # %.lr.ph.i43
                                        #   in Loop: Header=BB123_17 Depth=1
	ld.d	$a2, $s1, 56
	alsl.d	$a1, $a1, $a2, 3
	.p2align	4, , 16
.LBB123_20:                             #   Parent Loop BB123_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.bu	$a2, $a2, 0
	andi	$a2, $a2, 4
	bnez	$a2, .LBB123_16
# %bb.21:                               #   in Loop: Header=BB123_20 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB123_20
	b	.LBB123_15
.LBB123_22:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end123:
	.size	clause_FPrintCnfDFG, .Lfunc_end123-clause_FPrintCnfDFG
                                        # -- End function
	.globl	clause_FPrintDFG                # -- Begin function clause_FPrintDFG
	.p2align	5
	.type	clause_FPrintDFG,@function
clause_FPrintDFG:                       # @clause_FPrintDFG
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
	move	$s0, $a1
	ld.w	$a1, $a1, 64
	ld.w	$a3, $s0, 68
	ld.w	$a4, $s0, 72
	move	$s1, $a2
	move	$fp, $a0
	add.d	$a0, $a3, $a1
	add.w	$s3, $a0, $a4
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	ori	$s5, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	slli.d	$s4, $s3, 3
	blez	$s3, .LBB124_10
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a0, %got_pc_lo12(fol_NOT)
	move	$s7, $zero
	move	$s2, $zero
	b	.LBB124_3
	.p2align	4, , 16
.LBB124_2:                              # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB124_3 Depth=1
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_NPointerUnion)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 8
	move	$s2, $a0
	beq	$s4, $s7, .LBB124_5
.LBB124_3:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s7
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s6, 0
	bne	$a1, $a2, .LBB124_2
# %bb.4:                                #   in Loop: Header=BB124_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB124_2
.LBB124_5:                              # %._crit_edge
	beqz	$s2, .LBB124_10
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s5, $s2
	.p2align	4, , 16
.LBB124_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s5, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB124_9
# %bb.8:                                #   in Loop: Header=BB124_7 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB124_7
.LBB124_9:                              # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB124_11
.LBB124_10:
	move	$s2, $zero
.LBB124_11:                             # %._crit_edge.thread
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB124_16
# %bb.12:                               # %.lr.ph83
	move	$s6, $zero
	ori	$s7, $zero, 1
	b	.LBB124_14
	.p2align	4, , 16
.LBB124_13:                             #   in Loop: Header=BB124_14 Depth=1
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 1
	beq	$s4, $s6, .LBB124_16
.LBB124_14:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s6
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintPrefix)
	jirl	$ra, $ra, 0
	bgeu	$s7, $s3, .LBB124_13
# %bb.15:                               #   in Loop: Header=BB124_14 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB124_13
.LBB124_16:                             # %._crit_edge84
	beqz	$s3, .LBB124_18
# %bb.17:
	beqz	$s5, .LBB124_19
	b	.LBB124_22
.LBB124_18:
	pcalau12i	$a0, %got_pc_hi20(fol_FALSE)
	ld.d	$a0, $a0, %got_pc_lo12(fol_FALSE)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB124_22
.LBB124_19:                             # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB124_20:                             # %.lr.ph.i
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
	bnez	$a5, .LBB124_20
# %bb.21:                               # %list_Delete.exit
	ori	$a0, $zero, 41
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB124_22:
	ld.w	$a2, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB124_28
# %bb.23:
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_FPrintOrigin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 32
	beqz	$s2, .LBB124_27
# %bb.24:                               # %.lr.ph89.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB124_25:                             # %.lr.ph89
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s2, 8
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB124_27
# %bb.26:                               #   in Loop: Header=BB124_25 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB124_25
.LBB124_27:                             # %._crit_edge90
	ori	$a0, $zero, 93
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 12
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB124_28:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end124:
	.size	clause_FPrintDFG, .Lfunc_end124-clause_FPrintDFG
                                        # -- End function
	.globl	clause_FPrintCnfDFGProblem      # -- Begin function clause_FPrintCnfDFGProblem
	.p2align	5
	.type	clause_FPrintCnfDFGProblem,@function
clause_FPrintCnfDFGProblem:             # @clause_FPrintCnfDFGProblem
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintDFGSignature)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB125_9
# %bb.1:                                # %.lr.ph.preheader
	move	$s1, $s0
	b	.LBB125_3
	.p2align	4, , 16
.LBB125_2:                              #   in Loop: Header=BB125_3 Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB125_5
.LBB125_3:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	ld.bu	$a0, $a1, 48
	andi	$a0, $a0, 8
	bnez	$a0, .LBB125_2
# %bb.4:                                #   in Loop: Header=BB125_3 Depth=1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB125_2
.LBB125_5:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB125_7
	.p2align	4, , 16
.LBB125_6:                              #   in Loop: Header=BB125_7 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB125_10
.LBB125_7:                              # %.lr.ph41
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.bu	$a0, $a1, 48
	andi	$a0, $a0, 8
	beqz	$a0, .LBB125_6
# %bb.8:                                #   in Loop: Header=BB125_7 Depth=1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB125_6
.LBB125_9:                              # %._crit_edge42.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB125_10:                             # %._crit_edge42
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end125:
	.size	clause_FPrintCnfDFGProblem, .Lfunc_end125-clause_FPrintCnfDFGProblem
                                        # -- End function
	.globl	clause_FPrintCnfFormulasDFGProblem # -- Begin function clause_FPrintCnfFormulasDFGProblem
	.p2align	5
	.type	clause_FPrintCnfFormulasDFGProblem,@function
clause_FPrintCnfFormulasDFGProblem:     # @clause_FPrintCnfFormulasDFGProblem
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
	ld.d	$s0, $sp, 104
	move	$s1, $a7
	move	$s3, $a6
	move	$s4, $a5
	move	$s5, $a4
	move	$s6, $a3
	move	$s7, $a2
	move	$s2, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $fp
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	move	$a0, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintDFGSignature)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB126_4
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB126_11
	.p2align	4, , 16
.LBB126_2:                              # %clause_HasSelectedLiteral.exit.thread.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintFormulaDFG)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB126_2
.LBB126_3:                              # %.split74.us
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB126_4:
	beqz	$s1, .LBB126_8
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB126_18
	.p2align	4, , 16
.LBB126_6:                              # %clause_HasSelectedLiteral.exit65.thread.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintFormulaDFG)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB126_6
.LBB126_7:                              # %.split78.us
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB126_8:
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fol_FPrintPrecedence)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
	.p2align	4, , 16
.LBB126_9:                              # %clause_HasSelectedLiteral.exit.thread
                                        #   in Loop: Header=BB126_11 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintFormulaDFG)
	jirl	$ra, $ra, 0
.LBB126_10:                             # %clause_HasSelectedLiteral.exit
                                        #   in Loop: Header=BB126_11 Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB126_3
.LBB126_11:                             # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB126_14 Depth 2
	ld.d	$s4, $s3, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB126_10
# %bb.12:                               #   in Loop: Header=BB126_11 Depth=1
	ld.w	$a1, $s4, 64
	ld.w	$a0, $s4, 68
	add.d	$a2, $a0, $a1
	addi.w	$a2, $a2, -1
	blt	$a2, $a1, .LBB126_9
# %bb.13:                               # %.lr.ph.i
                                        #   in Loop: Header=BB126_11 Depth=1
	ld.d	$a2, $s4, 56
	alsl.d	$a1, $a1, $a2, 3
	.p2align	4, , 16
.LBB126_14:                             #   Parent Loop BB126_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.bu	$a2, $a2, 0
	andi	$a2, $a2, 4
	bnez	$a2, .LBB126_10
# %bb.15:                               #   in Loop: Header=BB126_14 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB126_14
	b	.LBB126_9
	.p2align	4, , 16
.LBB126_16:                             # %clause_HasSelectedLiteral.exit65.thread
                                        #   in Loop: Header=BB126_18 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintFormulaDFG)
	jirl	$ra, $ra, 0
.LBB126_17:                             # %clause_HasSelectedLiteral.exit65
                                        #   in Loop: Header=BB126_18 Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB126_7
.LBB126_18:                             # %.split76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB126_21 Depth 2
	ld.d	$s2, $s1, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB126_17
# %bb.19:                               #   in Loop: Header=BB126_18 Depth=1
	ld.w	$a1, $s2, 64
	ld.w	$a0, $s2, 68
	add.d	$a2, $a0, $a1
	addi.w	$a2, $a2, -1
	blt	$a2, $a1, .LBB126_16
# %bb.20:                               # %.lr.ph.i56
                                        #   in Loop: Header=BB126_18 Depth=1
	ld.d	$a2, $s2, 56
	alsl.d	$a1, $a1, $a2, 3
	.p2align	4, , 16
.LBB126_21:                             #   Parent Loop BB126_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.bu	$a2, $a2, 0
	andi	$a2, $a2, 4
	bnez	$a2, .LBB126_17
# %bb.22:                               #   in Loop: Header=BB126_21 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB126_21
	b	.LBB126_16
.Lfunc_end126:
	.size	clause_FPrintCnfFormulasDFGProblem, .Lfunc_end126-clause_FPrintCnfFormulasDFGProblem
                                        # -- End function
	.globl	clause_FPrintFormulaDFG         # -- Begin function clause_FPrintFormulaDFG
	.p2align	5
	.type	clause_FPrintFormulaDFG,@function
clause_FPrintFormulaDFG:                # @clause_FPrintFormulaDFG
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
	move	$s0, $a1
	ld.w	$a1, $a1, 64
	ld.w	$a3, $s0, 68
	ld.w	$a4, $s0, 72
	move	$s1, $a2
	move	$fp, $a0
	add.d	$a0, $a3, $a1
	add.w	$s3, $a0, $a4
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	ori	$s5, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB127_28
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	move	$s5, $zero
	move	$s2, $zero
	slli.d	$s6, $s3, 3
	b	.LBB127_3
	.p2align	4, , 16
.LBB127_2:                              # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB127_3 Depth=1
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_NPointerUnion)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 8
	move	$s2, $a0
	beq	$s6, $s5, .LBB127_5
.LBB127_3:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB127_2
# %bb.4:                                #   in Loop: Header=BB127_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB127_2
.LBB127_5:                              # %._crit_edge
	beqz	$s2, .LBB127_29
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s4, $s2
	.p2align	4, , 16
.LBB127_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s4, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB127_9
# %bb.8:                                #   in Loop: Header=BB127_7 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB127_7
.LBB127_9:                              # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s4, $s2
	ori	$a0, $zero, 1
	beq	$s3, $a0, .LBB127_11
.LBB127_10:                             # %.thread114
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB127_11:                             # %.lr.ph88
	move	$s6, $zero
	move	$s7, $zero
	sltui	$s5, $s2, 1
	bstrpick.d	$s2, $s3, 31, 0
	b	.LBB127_13
	.p2align	4, , 16
.LBB127_12:                             #   in Loop: Header=BB127_13 Depth=1
	addi.d	$s6, $s6, 8
	beq	$s2, $s7, .LBB127_15
.LBB127_13:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s6
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintPrefix)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 1
	bgeu	$s7, $s3, .LBB127_12
# %bb.14:                               #   in Loop: Header=BB127_13 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB127_12
.LBB127_15:                             # %._crit_edge89.loopexit
	addi.d	$a0, $s3, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.78)
	addi.d	$a1, $a1, %pc_lo12(.L.str.78)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.79)
	addi.d	$a2, $a2, %pc_lo12(.L.str.79)
	maskeqz	$a0, $a2, $a0
	or	$s2, $a0, $a1
	bnez	$s3, .LBB127_17
.LBB127_16:
	pcalau12i	$a0, %got_pc_hi20(fol_FALSE)
	ld.d	$a0, $a0, %got_pc_lo12(fol_FALSE)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
.LBB127_17:
	bnez	$s5, .LBB127_21
# %bb.18:                               # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB127_19:                             # %.lr.ph.i
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
	bnez	$a5, .LBB127_19
# %bb.20:                               # %list_Delete.exit
	ori	$a0, $zero, 41
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB127_21:
	ld.w	$a2, $s0, 0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB127_27
# %bb.22:
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_FPrintOrigin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 32
	beqz	$s2, .LBB127_26
# %bb.23:                               # %.lr.ph94.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB127_24:                             # %.lr.ph94
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s2, 8
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB127_26
# %bb.25:                               #   in Loop: Header=BB127_24 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB127_24
.LBB127_26:                             # %._crit_edge95
	ori	$a0, $zero, 93
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 12
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB127_27:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB127_28:
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$s2, $a0, %pc_lo12(.L.str.79)
	bnez	$s3, .LBB127_17
	b	.LBB127_16
.LBB127_29:
	move	$s4, $zero
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB127_10
	b	.LBB127_11
.Lfunc_end127:
	.size	clause_FPrintFormulaDFG, .Lfunc_end127-clause_FPrintFormulaDFG
                                        # -- End function
	.globl	clause_FPrintCnfOtter           # -- Begin function clause_FPrintCnfOtter
	.p2align	5
	.type	clause_FPrintCnfOtter,@function
clause_FPrintCnfOtter:                  # @clause_FPrintCnfOtter
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB128_14
# %bb.1:                                # %.lr.ph47
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	ori	$a3, $zero, 1
	move	$a4, $s0
	.p2align	4, , 16
.LBB128_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB128_5 Depth 2
	ld.d	$a7, $a4, 8
	ld.w	$a6, $a7, 64
	ld.w	$a5, $a7, 68
	ld.w	$t0, $a7, 72
	add.d	$a5, $a5, $a6
	add.w	$a5, $a5, $t0
	bge	$a6, $a5, .LBB128_7
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB128_2 Depth=1
	ld.d	$a7, $a7, 56
	move	$s1, $zero
	b	.LBB128_5
	.p2align	4, , 16
.LBB128_4:                              # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB128_5 Depth=2
	xor	$t0, $t0, $a1
	sltui	$t0, $t0, 1
	masknez	$a6, $a6, $t0
	maskeqz	$t1, $a5, $t0
	or	$a6, $t1, $a6
	masknez	$t1, $s1, $t0
	maskeqz	$t0, $a3, $t0
	addi.w	$a6, $a6, 1
	or	$s1, $t0, $t1
	bge	$a6, $a5, .LBB128_8
.LBB128_5:                              #   Parent Loop BB128_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $a6, 3
	ldx.d	$t0, $a7, $t0
	ld.d	$t1, $t0, 24
	ld.w	$t0, $t1, 0
	bne	$t0, $a0, .LBB128_4
# %bb.6:                                #   in Loop: Header=BB128_5 Depth=2
	ld.d	$t0, $t1, 16
	ld.d	$t0, $t0, 8
	ld.w	$t0, $t0, 0
	b	.LBB128_4
	.p2align	4, , 16
.LBB128_7:                              #   in Loop: Header=BB128_2 Depth=1
	move	$s1, $zero
.LBB128_8:                              # %._crit_edge
                                        #   in Loop: Header=BB128_2 Depth=1
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB128_10
# %bb.9:                                # %._crit_edge
                                        #   in Loop: Header=BB128_2 Depth=1
	beqz	$s1, .LBB128_2
.LBB128_10:                             # %._crit_edge48
	ld.w	$a2, $a2, 380
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fol_FPrintOtterOptions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB128_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB128_12:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_FPrintOtter)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB128_12
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB128_14:                             # %._crit_edge48.thread
	ld.w	$a2, $a2, 380
	move	$a0, $fp
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fol_FPrintOtterOptions)
	jr	$t8
.Lfunc_end128:
	.size	clause_FPrintCnfOtter, .Lfunc_end128-clause_FPrintCnfOtter
                                        # -- End function
	.globl	clause_FPrintCnfDFGDerivables   # -- Begin function clause_FPrintCnfDFGDerivables
	.p2align	5
	.type	clause_FPrintCnfDFGDerivables,@function
clause_FPrintCnfDFGDerivables:          # @clause_FPrintCnfDFGDerivables
# %bb.0:
	beqz	$a1, .LBB129_9
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	bnez	$a2, .LBB129_3
	b	.LBB129_6
	.p2align	4, , 16
.LBB129_2:                              #   in Loop: Header=BB129_3 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB129_8
.LBB129_3:                              # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	ld.bu	$a0, $a1, 48
	andi	$a0, $a0, 8
	bnez	$a0, .LBB129_2
# %bb.4:                                #   in Loop: Header=BB129_3 Depth=1
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB129_2
	.p2align	4, , 16
.LBB129_5:                              #   in Loop: Header=BB129_6 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB129_8
.LBB129_6:                              # %.critedge.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	ld.bu	$a0, $a1, 48
	andi	$a0, $a0, 8
	beqz	$a0, .LBB129_5
# %bb.7:                                #   in Loop: Header=BB129_6 Depth=1
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(clause_FPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB129_5
.LBB129_8:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB129_9:                              # %._crit_edge
	ret
.Lfunc_end129:
	.size	clause_FPrintCnfDFGDerivables, .Lfunc_end129-clause_FPrintCnfDFGDerivables
                                        # -- End function
	.globl	clause_FPrintDFGStep            # -- Begin function clause_FPrintDFGStep
	.p2align	5
	.type	clause_FPrintDFGStep,@function
clause_FPrintDFGStep:                   # @clause_FPrintDFGStep
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
	move	$s0, $a1
	ld.w	$a1, $a1, 64
	ld.w	$a2, $s0, 68
	ld.w	$a3, $s0, 72
	move	$fp, $a0
	add.d	$a0, $a2, $a1
	add.w	$s2, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	ori	$s4, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	slli.d	$s3, $s2, 3
	blez	$s2, .LBB130_10
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a0, %got_pc_lo12(fol_NOT)
	move	$s6, $zero
	move	$s1, $zero
	b	.LBB130_3
	.p2align	4, , 16
.LBB130_2:                              # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB130_3 Depth=1
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_NPointerUnion)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 8
	move	$s1, $a0
	beq	$s3, $s6, .LBB130_5
.LBB130_3:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s6
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s5, 0
	bne	$a1, $a2, .LBB130_2
# %bb.4:                                #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB130_2
.LBB130_5:                              # %._crit_edge
	beqz	$s1, .LBB130_10
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$a0, $a0, %got_pc_lo12(fol_ALL)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s4, $s1
	.p2align	4, , 16
.LBB130_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s4, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB130_9
# %bb.8:                                #   in Loop: Header=BB130_7 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB130_7
.LBB130_9:                              # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	b	.LBB130_11
.LBB130_10:
	move	$s1, $zero
.LBB130_11:                             # %._crit_edge.thread
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB130_16
# %bb.12:                               # %.lr.ph81
	move	$s5, $zero
	ori	$s6, $zero, 1
	b	.LBB130_14
	.p2align	4, , 16
.LBB130_13:                             #   in Loop: Header=BB130_14 Depth=1
	addi.d	$s5, $s5, 8
	addi.d	$s6, $s6, 1
	beq	$s3, $s5, .LBB130_16
.LBB130_14:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s5
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintPrefix)
	jirl	$ra, $ra, 0
	bgeu	$s6, $s2, .LBB130_13
# %bb.15:                               #   in Loop: Header=BB130_14 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB130_13
.LBB130_16:                             # %._crit_edge82
	beqz	$s2, .LBB130_18
# %bb.17:
	beqz	$s4, .LBB130_19
	b	.LBB130_22
.LBB130_18:
	pcalau12i	$a0, %got_pc_hi20(fol_FALSE)
	ld.d	$a0, $a0, %got_pc_lo12(fol_FALSE)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB130_22
.LBB130_19:                             # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB130_20:                             # %.lr.ph.i
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
	bnez	$a5, .LBB130_20
# %bb.21:                               # %list_Delete.exit
	ori	$a0, $zero, 41
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB130_22:
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_FPrintOrigin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 32
	beqz	$s2, .LBB130_26
# %bb.23:                               # %.lr.ph87.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB130_24:                             # %.lr.ph87
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s2, 8
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB130_26
# %bb.25:                               #   in Loop: Header=BB130_24 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB130_24
.LBB130_26:                             # %._crit_edge88
	ori	$a0, $zero, 93
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 12
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end130:
	.size	clause_FPrintDFGStep, .Lfunc_end130-clause_FPrintDFGStep
                                        # -- End function
	.globl	clause_Check                    # -- Begin function clause_Check
	.p2align	5
	.type	clause_Check,@function
clause_Check:                           # @clause_Check
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
	beqz	$a0, .LBB131_6
# %bb.1:
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clause_IsUnorderedClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB131_12
# %bb.2:
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a3, $a0, $a1
	add.d	$a3, $a3, $a2
	addi.w	$a3, $a3, -1
	bge	$a3, $a0, .LBB131_7
.LBB131_3:                              # %clause_IsClause.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(clause_ReInit)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ld.w	$a2, $s2, 4
	bne	$a1, $a2, .LBB131_14
# %bb.4:
	ld.w	$a1, $fp, 52
	ld.w	$a2, $s2, 52
	bne	$a1, $a2, .LBB131_14
# %bb.5:
	move	$a0, $s2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(clause_Delete)
	jr	$t8
.LBB131_6:
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
.LBB131_7:                              # %.lr.ph.i
	pcalau12i	$a3, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s2, $a3, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a3, $s2, 0
	addi.d	$s3, $a0, -1
	slli.d	$s4, $a0, 3
	ori	$s5, $zero, 1
	b	.LBB131_10
	.p2align	4, , 16
.LBB131_8:                              # %._crit_edge.i
                                        #   in Loop: Header=BB131_10 Depth=1
	ld.w	$a3, $s2, 0
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
.LBB131_9:                              #   in Loop: Header=BB131_10 Depth=1
	add.d	$a4, $a2, $a1
	add.d	$a4, $a4, $a0
	addi.w	$a4, $a4, -1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bge	$s3, $a4, .LBB131_3
.LBB131_10:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $fp, 56
	ldx.d	$a4, $a4, $s4
	ld.d	$a4, $a4, 24
	ld.w	$a5, $a4, 0
	bne	$a5, $a3, .LBB131_9
# %bb.11:                               #   in Loop: Header=BB131_10 Depth=1
	ld.d	$a0, $a4, 16
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB131_8
.LBB131_12:                             # %.loopexit
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	lu12i.w	$a3, 1
	ori	$a3, $a3, 678
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
.LBB131_13:                             # %.loopexit
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_DumpCore)
	jirl	$ra, $ra, 0
.LBB131_14:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	lu12i.w	$a3, 1
	ori	$a3, $a3, 687
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	b	.LBB131_13
.Lfunc_end131:
	.size	clause_Check, .Lfunc_end131-clause_Check
                                        # -- End function
	.globl	clause_PParentsFPrintParentClauses # -- Begin function clause_PParentsFPrintParentClauses
	.p2align	5
	.type	clause_PParentsFPrintParentClauses,@function
clause_PParentsFPrintParentClauses:     # @clause_PParentsFPrintParentClauses
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s1, $a1, 32
	beqz	$s1, .LBB132_12
# %bb.1:
	move	$s0, $a2
	move	$fp, $a0
	ld.d	$s2, $a1, 40
	ld.d	$a0, $s1, 8
	beqz	$a2, .LBB132_3
# %bb.2:
	ld.w	$a0, $a0, 0
.LBB132_3:
	ld.w	$a3, $s2, 8
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB132_12
# %bb.4:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	ld.d	$s2, $s2, 0
	ld.d	$a0, $s1, 8
	beqz	$s0, .LBB132_6
# %bb.5:
	ld.w	$a0, $a0, 0
.LBB132_6:
	ld.w	$a3, $s2, 8
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB132_12
# %bb.7:                                # %.lr.ph
	ld.d	$s2, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	beqz	$s0, .LBB132_10
# %bb.8:
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB132_9:                              # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s2, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	ld.d	$s2, $s2, 0
	bnez	$s1, .LBB132_9
	b	.LBB132_12
.LBB132_10:                             # %.lr.ph.split.us.preheader
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB132_11:                             # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s1, 8
	ld.w	$a3, $s2, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	ld.d	$s2, $s2, 0
	bnez	$s1, .LBB132_11
.LBB132_12:                             # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end132:
	.size	clause_PParentsFPrintParentClauses, .Lfunc_end132-clause_PParentsFPrintParentClauses
                                        # -- End function
	.globl	clause_PParentsLiteralFPrintUnsigned # -- Begin function clause_PParentsLiteralFPrintUnsigned
	.p2align	5
	.type	clause_PParentsLiteralFPrintUnsigned,@function
clause_PParentsLiteralFPrintUnsigned:   # @clause_PParentsLiteralFPrintUnsigned
# %bb.0:
	ld.d	$a1, $a1, 24
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a2, %got_pc_lo12(fol_NOT)
	ld.w	$a3, $a1, 0
	ld.w	$a2, $a2, 0
	bne	$a3, $a2, .LBB133_2
# %bb.1:
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 8
.LBB133_2:                              # %clause_LiteralAtom.exit
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(term_FPrintPrefix)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end133:
	.size	clause_PParentsLiteralFPrintUnsigned, .Lfunc_end133-clause_PParentsLiteralFPrintUnsigned
                                        # -- End function
	.globl	clause_PParentsFPrintGen        # -- Begin function clause_PParentsFPrintGen
	.p2align	5
	.type	clause_PParentsFPrintGen,@function
clause_PParentsFPrintGen:               # @clause_PParentsFPrintGen
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
	beqz	$a1, .LBB134_11
# %bb.1:
	move	$s0, $a1
	move	$s1, $a2
	ld.w	$a2, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 12
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_FPrintOrigin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB134_3
# %bb.2:
	ori	$a0, $zero, 58
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_PParentsFPrintParentClauses)
	jirl	$ra, $ra, 0
.LBB134_3:
	ori	$a0, $zero, 93
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, 64
	ld.w	$s3, $s0, 68
	ld.w	$s1, $s0, 72
	blez	$s2, .LBB134_12
# %bb.4:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s5, $a0, %got_pc_lo12(stdout)
	move	$s6, $zero
	slli.d	$s7, $s2, 3
	ori	$s8, $zero, 1
	b	.LBB134_6
	.p2align	4, , 16
.LBB134_5:                              #   in Loop: Header=BB134_6 Depth=1
	addi.d	$s6, $s6, 8
	addi.d	$s8, $s8, 1
	beq	$s7, $s6, .LBB134_10
.LBB134_6:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s6
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s4, 0
	bne	$a0, $a2, .LBB134_8
# %bb.7:                                #   in Loop: Header=BB134_6 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB134_8:                              # %clause_PParentsLiteralFPrintUnsigned.exit
                                        #   in Loop: Header=BB134_6 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	bgeu	$s8, $s2, .LBB134_5
# %bb.9:                                #   in Loop: Header=BB134_6 Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB134_5
.LBB134_10:
	move	$s5, $s2
	b	.LBB134_13
.LBB134_11:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB134_12:
	move	$s5, $zero
.LBB134_13:                             # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.w	$s2, $s3, $s2
	bge	$s5, $s2, .LBB134_26
# %bb.14:                               # %.lr.ph105
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s4, $a0, %got_pc_lo12(stdout)
	bstrpick.d	$s5, $s5, 31, 0
	bstrpick.d	$s6, $s2, 31, 0
	slli.d	$s7, $s5, 3
	b	.LBB134_16
	.p2align	4, , 16
.LBB134_15:                             #   in Loop: Header=BB134_16 Depth=1
	addi.d	$s7, $s7, 8
	beq	$s6, $s5, .LBB134_25
.LBB134_16:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$s8, $a0, $s7
	ld.d	$a1, $s8, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s3, 0
	bne	$a0, $a2, .LBB134_18
# %bb.17:                               #   in Loop: Header=BB134_16 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB134_18:                             # %clause_PParentsLiteralFPrintUnsigned.exit93
                                        #   in Loop: Header=BB134_16 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s8, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB134_21
# %bb.19:                               #   in Loop: Header=BB134_16 Depth=1
	ori	$a0, $zero, 42
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 8
	beqz	$a0, .LBB134_21
# %bb.20:                               #   in Loop: Header=BB134_16 Depth=1
	ori	$a0, $zero, 42
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB134_21:                             #   in Loop: Header=BB134_16 Depth=1
	ld.bu	$a0, $s8, 0
	andi	$a0, $a0, 4
	bnez	$a0, .LBB134_23
# %bb.22:                               #   in Loop: Header=BB134_16 Depth=1
	addi.d	$s5, $s5, 1
	bgeu	$s5, $s2, .LBB134_15
	b	.LBB134_24
	.p2align	4, , 16
.LBB134_23:                             #   in Loop: Header=BB134_16 Depth=1
	ori	$a0, $zero, 43
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	bgeu	$s5, $s2, .LBB134_15
.LBB134_24:                             #   in Loop: Header=BB134_16 Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB134_15
.LBB134_25:
	move	$s5, $s2
.LBB134_26:                             # %._crit_edge106
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.w	$s1, $s1, $s2
	bge	$s5, $s1, .LBB134_35
# %bb.27:                               # %.lr.ph110
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	bstrpick.d	$a0, $s5, 31, 0
	slli.d	$s4, $a0, 3
	.p2align	4, , 16
.LBB134_28:                             # =>This Inner Loop Header: Depth=1
	addi.w	$s5, $s5, 1
	ld.d	$a0, $s0, 56
	ldx.d	$s6, $a0, $s4
	ld.d	$a1, $s6, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s2, 0
	bne	$a0, $a2, .LBB134_30
# %bb.29:                               #   in Loop: Header=BB134_28 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB134_30:                             # %clause_PParentsLiteralFPrintUnsigned.exit100
                                        #   in Loop: Header=BB134_28 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB134_33
# %bb.31:                               #   in Loop: Header=BB134_28 Depth=1
	ori	$a0, $zero, 42
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 8
	beqz	$a0, .LBB134_33
# %bb.32:                               #   in Loop: Header=BB134_28 Depth=1
	ori	$a0, $zero, 42
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB134_33:                             #   in Loop: Header=BB134_28 Depth=1
	bge	$s5, $s1, .LBB134_35
# %bb.34:                               #   in Loop: Header=BB134_28 Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	b	.LBB134_28
.LBB134_35:                             # %._crit_edge111
	ori	$a0, $zero, 46
	move	$a1, $fp
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
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.Lfunc_end134:
	.size	clause_PParentsFPrintGen, .Lfunc_end134-clause_PParentsFPrintGen
                                        # -- End function
	.globl	clause_PParentsFPrint           # -- Begin function clause_PParentsFPrint
	.p2align	5
	.type	clause_PParentsFPrint,@function
clause_PParentsFPrint:                  # @clause_PParentsFPrint
# %bb.0:
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(clause_PParentsFPrintGen)
	jr	$t8
.Lfunc_end135:
	.size	clause_PParentsFPrint, .Lfunc_end135-clause_PParentsFPrint
                                        # -- End function
	.globl	clause_PParentsListFPrint       # -- Begin function clause_PParentsListFPrint
	.p2align	5
	.type	clause_PParentsListFPrint,@function
clause_PParentsListFPrint:              # @clause_PParentsListFPrint
# %bb.0:
	beqz	$a1, .LBB136_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	.p2align	4, , 16
.LBB136_2:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_PParentsFPrintGen)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB136_2
# %bb.3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB136_4:                              # %._crit_edge
	ret
.Lfunc_end136:
	.size	clause_PParentsListFPrint, .Lfunc_end136-clause_PParentsListFPrint
                                        # -- End function
	.globl	clause_PParentsPrint            # -- Begin function clause_PParentsPrint
	.p2align	5
	.type	clause_PParentsPrint,@function
clause_PParentsPrint:                   # @clause_PParentsPrint
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 1
	move	$a3, $a0
	move	$a0, $a1
	move	$a1, $a3
	pcaddu18i	$t8, %call36(clause_PParentsFPrintGen)
	jr	$t8
.Lfunc_end137:
	.size	clause_PParentsPrint, .Lfunc_end137-clause_PParentsPrint
                                        # -- End function
	.globl	clause_PParentsListPrint        # -- Begin function clause_PParentsListPrint
	.p2align	5
	.type	clause_PParentsListPrint,@function
clause_PParentsListPrint:               # @clause_PParentsListPrint
# %bb.0:
	beqz	$a0, .LBB138_4
# %bb.1:                                # %.lr.ph.i.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s0, $a0, 0
	.p2align	4, , 16
.LBB138_2:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_PParentsFPrintGen)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB138_2
# %bb.3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB138_4:                              # %clause_PParentsListFPrint.exit
	ret
.Lfunc_end138:
	.size	clause_PParentsListPrint, .Lfunc_end138-clause_PParentsListPrint
                                        # -- End function
	.p2align	5                               # -- Begin function clause_LiteralsCompare
	.type	clause_LiteralsCompare,@function
clause_LiteralsCompare:                 # @clause_LiteralsCompare
# %bb.0:
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	pcaddu18i	$t8, %call36(term_CompareAbstractLEQ)
	jr	$t8
.Lfunc_end139:
	.size	clause_LiteralsCompare, .Lfunc_end139-clause_LiteralsCompare
                                        # -- End function
	.type	clause_WEIGHTUNDEFINED,@object  # @clause_WEIGHTUNDEFINED
	.section	.rodata,"a",@progbits
	.globl	clause_WEIGHTUNDEFINED
	.p2align	2, 0x0
clause_WEIGHTUNDEFINED:
	.word	4294967295                      # 0xffffffff
	.size	clause_WEIGHTUNDEFINED, 4

	.type	clause_SORT,@object             # @clause_SORT
	.bss
	.globl	clause_SORT
	.p2align	3, 0x0
clause_SORT:
	.space	168
	.size	clause_SORT, 168

	.type	clause_STAMPID,@object          # @clause_STAMPID
	.globl	clause_STAMPID
	.p2align	2, 0x0
clause_STAMPID:
	.word	0                               # 0x0
	.size	clause_STAMPID, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(CLAUSE)NULL"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"[%d:"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" || "
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" -> "
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"(strictly)"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"."
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d.%d"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	",%d.%d"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"App"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"EmS"
	.size	.L.str.10, 4

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SoR"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"EqR"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"EqF"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"MPm"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SpR"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SPm"
	.size	.L.str.16, 4

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"OPm"
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"SpL"
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Res"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"SHy"
	.size	.L.str.20, 4

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"OHy"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"URR"
	.size	.L.str.22, 4

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Fac"
	.size	.L.str.23, 4

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Spt"
	.size	.L.str.24, 4

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Inp"
	.size	.L.str.25, 4

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Rew"
	.size	.L.str.26, 4

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"CRw"
	.size	.L.str.27, 4

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Con"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"AED"
	.size	.L.str.29, 4

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Obv"
	.size	.L.str.30, 4

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SSi"
	.size	.L.str.31, 4

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"MRR"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"UnC"
	.size	.L.str.33, 4

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Def"
	.size	.L.str.34, 4

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Ter"
	.size	.L.str.35, 4

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"\n\tError in file %s at line %d\n"
	.size	.L.str.36, 31

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Applications/SPASS/clause.c"
	.size	.L.str.37, 123

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"\nIn clause_GetOriginFromString: Unknown clause origin."
	.size	.L.str.38, 55

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"\n Please report this error via email to spass@mpi-sb.mpg.de including\n the SPASS version, input problem, options, operating system.\n"
	.size	.L.str.39, 133

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Temporary"
	.size	.L.str.40, 10

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"\n In clause_FPrintOrigin: Clause has no origin."
	.size	.L.str.41, 48

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	" c = %d a = %d s = %d"
	.size	.L.str.42, 22

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	" Weight : %d"
	.size	.L.str.43, 13

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	" Depth  : %d"
	.size	.L.str.44, 13

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	" %s %s "
	.size	.L.str.45, 8

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"WorkedOff"
	.size	.L.str.46, 10

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Usable"
	.size	.L.str.47, 7

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Selected"
	.size	.L.str.48, 9

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"NotSelected"
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"||"
	.size	.L.str.50, 3

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"->"
	.size	.L.str.51, 3

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	".\n"
	.size	.L.str.52, 3

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	" $F "
	.size	.L.str.53, 5

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	" = "
	.size	.L.str.54, 4

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	" | "
	.size	.L.str.55, 4

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"list_of_clauses(axioms, cnf).\n"
	.size	.L.str.56, 31

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"end_of_list.\n\n"
	.size	.L.str.57, 15

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"list_of_clauses(conjectures, cnf).\n"
	.size	.L.str.58, 36

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"begin_problem(Unknown).\n\n"
	.size	.L.str.59, 26

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"list_of_symbols.\n"
	.size	.L.str.60, 18

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"\nend_problem.\n\n"
	.size	.L.str.61, 16

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"\nlist_of_symbols.\n"
	.size	.L.str.62, 19

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"list_of_formulae(axioms).\n"
	.size	.L.str.63, 27

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"list_of_formulae(conjectures).\n"
	.size	.L.str.64, 32

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"list_of_settings(SPASS).\n{*\n"
	.size	.L.str.65, 29

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"\n*}\nend_of_list.\n\nend_problem.\n\n"
	.size	.L.str.66, 33

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"list(usable).\n"
	.size	.L.str.67, 15

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"x=x.\n"
	.size	.L.str.68, 6

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"  step("
	.size	.L.str.69, 8

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"%d,"
	.size	.L.str.70, 4

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"(["
	.size	.L.str.71, 3

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"],"
	.size	.L.str.72, 3

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"),"
	.size	.L.str.73, 3

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	",["
	.size	.L.str.74, 3

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	",[splitlevel:%d]"
	.size	.L.str.75, 17

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	").\n"
	.size	.L.str.76, 4

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"  clause("
	.size	.L.str.77, 10

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"),%d"
	.size	.L.str.78, 5

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	",%d"
	.size	.L.str.79, 4

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"  formula("
	.size	.L.str.80, 11

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"\n In clause_Check: Clause not consistent !\n"
	.size	.L.str.81, 44

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"\n In clause_Check: Weight or maximal variable not properly set.\n"
	.size	.L.str.82, 65

	.type	clause_CLAUSECOUNTER,@object    # @clause_CLAUSECOUNTER
	.bss
	.globl	clause_CLAUSECOUNTER
	.p2align	2, 0x0
clause_CLAUSECOUNTER:
	.word	0                               # 0x0
	.size	clause_CLAUSECOUNTER, 4

	.type	.L.str.83,@object               # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"\n\n"
	.size	.L.str.83, 3

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"list_of_descriptions.\n"
	.size	.L.str.84, 23

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"name(%s).\n"
	.size	.L.str.85, 11

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"author(%s).\n"
	.size	.L.str.86, 13

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"status(%s).\n"
	.size	.L.str.87, 13

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"description(%s).\n"
	.size	.L.str.88, 18

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"end_of_list.\n"
	.size	.L.str.89, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym term_Equal
	.addrsig_sym clause_Weight
	.addrsig_sym clause_NumberLower
	.addrsig_sym clause_LiteralsCompare
