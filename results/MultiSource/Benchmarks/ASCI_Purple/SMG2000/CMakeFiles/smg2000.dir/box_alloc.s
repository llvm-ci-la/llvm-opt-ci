	.file	"box_alloc.c"
	.text
	.globl	hypre_BoxInitializeMemory       # -- Begin function hypre_BoxInitializeMemory
	.p2align	5
	.type	hypre_BoxInitializeMemory,@function
hypre_BoxInitializeMemory:              # @hypre_BoxInitializeMemory
# %bb.0:
	blez	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(s_at_a_time)
	st.w	$a0, $a1, %pc_lo12(s_at_a_time)
.LBB0_2:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	hypre_BoxInitializeMemory, .Lfunc_end0-hypre_BoxInitializeMemory
                                        # -- End function
	.globl	hypre_BoxFinalizeMemory         # -- Begin function hypre_BoxFinalizeMemory
	.p2align	5
	.type	hypre_BoxFinalizeMemory,@function
hypre_BoxFinalizeMemory:                # @hypre_BoxFinalizeMemory
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(s_finalize)
	ld.d	$a0, $fp, %pc_lo12(s_finalize)
	beqz	$a0, .LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	st.d	$a1, $fp, %pc_lo12(s_finalize)
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(s_finalize)
	bnez	$a0, .LBB1_1
.LBB1_2:                                # %._crit_edge
	st.d	$zero, $fp, %pc_lo12(s_finalize)
	pcalau12i	$a0, %pc_hi20(s_free)
	st.d	$zero, $a0, %pc_lo12(s_free)
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	hypre_BoxFinalizeMemory, .Lfunc_end1-hypre_BoxFinalizeMemory
                                        # -- End function
	.globl	hypre_BoxAlloc                  # -- Begin function hypre_BoxAlloc
	.p2align	5
	.type	hypre_BoxAlloc,@function
hypre_BoxAlloc:                         # @hypre_BoxAlloc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(s_free)
	ld.d	$a0, $fp, %pc_lo12(s_free)
	bnez	$a0, .LBB2_10
# %bb.1:
	pcalau12i	$s0, %pc_hi20(s_at_a_time)
	ld.w	$a0, $s0, %pc_lo12(s_at_a_time)
	slli.d	$a1, $a0, 4
	alsl.w	$a0, $a0, $a1, 3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a3, %pc_hi20(s_finalize)
	ld.d	$a2, $a3, %pc_lo12(s_finalize)
	move	$a1, $a0
	st.d	$a2, $a0, 0
	ld.w	$a5, $s0, %pc_lo12(s_at_a_time)
	ld.d	$a0, $fp, %pc_lo12(s_free)
	ori	$a2, $zero, 2
	st.d	$a1, $a3, %pc_lo12(s_finalize)
	blt	$a5, $a2, .LBB2_10
# %bb.2:                                # %.lr.ph.preheader.i
	bne	$a5, $a2, .LBB2_4
# %bb.3:
	move	$a2, $a5
	b	.LBB2_7
.LBB2_4:                                # %vector.ph
	addi.d	$a3, $a5, -1
	move	$a4, $a3
	bstrins.d	$a4, $zero, 0, 0
	sub.d	$a2, $a5, $a4
	slli.d	$a6, $a5, 4
	alsl.d	$a5, $a5, $a6, 3
	add.d	$a5, $a5, $a1
	addi.d	$a6, $a5, -48
	move	$a5, $a4
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a7, $a6, 24
	st.d	$a0, $a6, 24
	st.d	$a7, $a6, 0
	addi.d	$a5, $a5, -2
	move	$a0, $a6
	addi.d	$a6, $a6, -48
	bnez	$a5, .LBB2_5
# %bb.6:                                # %middle.block
	addi.d	$a0, $a6, 48
	beq	$a3, $a4, .LBB2_10
.LBB2_7:                                # %.lr.ph.i.preheader
	addi.d	$a3, $a2, 1
	slli.d	$a4, $a2, 4
	alsl.d	$a2, $a2, $a4, 3
	add.d	$a1, $a2, $a1
	addi.d	$a2, $a1, -24
	ori	$a1, $zero, 2
	.p2align	4, , 16
.LBB2_8:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $a2, 0
	addi.d	$a3, $a3, -1
	move	$a0, $a2
	addi.d	$a2, $a2, -24
	bltu	$a1, $a3, .LBB2_8
# %bb.9:                                # %hypre_AllocateBoxBlock.exit.loopexit
	addi.d	$a0, $a2, 24
.LBB2_10:                               # %hypre_AllocateBoxBlock.exit
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(s_count)
	ld.w	$a3, $a2, %pc_lo12(s_count)
	st.d	$a1, $fp, %pc_lo12(s_free)
	addi.d	$a1, $a3, 1
	st.w	$a1, $a2, %pc_lo12(s_count)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	hypre_BoxAlloc, .Lfunc_end2-hypre_BoxAlloc
                                        # -- End function
	.globl	hypre_BoxFree                   # -- Begin function hypre_BoxFree
	.p2align	5
	.type	hypre_BoxFree,@function
hypre_BoxFree:                          # @hypre_BoxFree
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(s_free)
	ld.d	$a1, $fp, %pc_lo12(s_free)
	pcalau12i	$a2, %pc_hi20(s_count)
	ld.w	$a3, $a2, %pc_lo12(s_count)
	st.d	$a1, $a0, 0
	st.d	$a0, $fp, %pc_lo12(s_free)
	addi.w	$a0, $a3, -1
	st.w	$a0, $a2, %pc_lo12(s_count)
	bnez	$a0, .LBB3_4
# %bb.1:
	pcalau12i	$s0, %pc_hi20(s_finalize)
	ld.d	$a0, $s0, %pc_lo12(s_finalize)
	beqz	$a0, .LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	st.d	$a1, $s0, %pc_lo12(s_finalize)
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(s_finalize)
	bnez	$a0, .LBB3_2
.LBB3_3:                                # %hypre_BoxFinalizeMemory.exit
	st.d	$zero, $s0, %pc_lo12(s_finalize)
	st.d	$zero, $fp, %pc_lo12(s_free)
.LBB3_4:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	hypre_BoxFree, .Lfunc_end3-hypre_BoxFree
                                        # -- End function
	.type	s_at_a_time,@object             # @s_at_a_time
	.data
	.p2align	2, 0x0
s_at_a_time:
	.word	1000                            # 0x3e8
	.size	s_at_a_time, 4

	.type	s_finalize,@object              # @s_finalize
	.local	s_finalize
	.comm	s_finalize,8,8
	.type	s_free,@object                  # @s_free
	.local	s_free
	.comm	s_free,8,8
	.type	s_count,@object                 # @s_count
	.local	s_count
	.comm	s_count,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
