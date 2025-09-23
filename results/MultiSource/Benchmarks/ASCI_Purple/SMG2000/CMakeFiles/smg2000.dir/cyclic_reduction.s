	.file	"cyclic_reduction.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_CyclicReductionCreate
.LCPI0_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.text
	.globl	hypre_CyclicReductionCreate
	.p2align	5
	.type	hypre_CyclicReductionCreate,@function
hypre_CyclicReductionCreate:            # @hypre_CyclicReductionCreate
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 112
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$fp, $a0, 0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	st.w	$a0, $s0, 104
	vst	$vr0, $s0, 12
	lu32i.d	$s1, 1
	st.d	$s1, $s0, 28
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	hypre_CyclicReductionCreate, .Lfunc_end0-hypre_CyclicReductionCreate
                                        # -- End function
	.globl	hypre_CycRedCreateCoarseOp      # -- Begin function hypre_CycRedCreateCoarseOp
	.p2align	5
	.type	hypre_CycRedCreateCoarseOp,@function
hypre_CycRedCreateCoarseOp:             # @hypre_CycRedCreateCoarseOp
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 72
	move	$s0, $a2
	move	$s1, $a1
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 40
	beqz	$a0, .LBB1_2
# %bb.1:                                # %.loopexit.loopexit47
	ori	$a0, $zero, 2
	ori	$a1, $zero, 12
	ori	$s2, $zero, 2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a2, 4
	st.w	$zero, $a2, 20
	b	.LBB1_3
.LBB1_2:                                # %.loopexit.loopexit
	ori	$a0, $zero, 3
	ori	$a1, $zero, 12
	ori	$s2, $zero, 3
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a2, 4
	st.w	$zero, $a2, 20
	ori	$a0, $zero, 1
	st.d	$a0, $a2, 24
	st.w	$zero, $a2, 32
.LBB1_3:                                # %.loopexit
	ori	$a0, $zero, 1
	ori	$s3, $zero, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 72
	st.w	$a2, $s1, 72
	slli.w	$a0, $s0, 1
	addi.d	$a1, $sp, 40
	slli.d	$a3, $a0, 2
	stx.w	$s3, $a3, $a1
	bnez	$a2, .LBB1_5
# %bb.4:
	alsl.d	$a0, $a0, $a1, 2
	st.w	$s3, $a0, 4
.LBB1_5:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeShell)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end1:
	.size	hypre_CycRedCreateCoarseOp, .Lfunc_end1-hypre_CycRedCreateCoarseOp
                                        # -- End function
	.globl	hypre_CycRedSetupCoarseOp       # -- Begin function hypre_CycRedSetupCoarseOp
	.p2align	5
	.type	hypre_CycRedSetupCoarseOp,@function
hypre_CycRedSetupCoarseOp:              # @hypre_CycRedSetupCoarseOp
# %bb.0:
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	move	$s3, $a1
	ld.d	$a1, $a1, 8
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a1, 8
	ld.w	$a1, $fp, 8
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	blez	$a1, .LBB2_63
# %bb.1:                                # %.preheader866.lr.ph
	move	$s4, $a0
	ld.d	$a0, $a0, 8
	move	$s7, $zero
	move	$a3, $zero
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit864
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 8
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s7, $s7, 1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB2_63
.LBB2_3:                                # %.preheader866
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_15 Depth 3
                                        #         Child Loop BB2_24 Depth 4
                                        #         Child Loop BB2_31 Depth 4
                                        #     Child Loop BB2_39 Depth 2
                                        #       Child Loop BB2_41 Depth 3
                                        #         Child Loop BB2_55 Depth 4
                                        #         Child Loop BB2_62 Depth 4
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s5, $a3, -1
	slli.d	$a1, $a3, 4
	alsl.d	$a2, $a3, $a1, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 2
	addi.d	$a3, $a3, -1
	addi.d	$s0, $a2, -12
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s5, $s5, 1
	addi.d	$s0, $s0, 24
	addi.d	$a1, $a1, 4
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s7, 4
	alsl.d	$s1, $s7, $a1, 3
	add.d	$s2, $a0, $s1
	addi.d	$a3, $sp, 320
	move	$a0, $s2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 40
	ld.d	$a1, $s3, 40
	ld.d	$s8, $a0, 0
	ld.d	$a0, $a1, 0
	add.d	$fp, $s8, $s0
	add.d	$a0, $a0, $s1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$zero, $sp, 332
	st.w	$zero, $sp, 340
	addi.d	$a2, $sp, 332
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s1, $sp, 332
	st.w	$zero, $sp, 340
	addi.d	$a2, $sp, 332
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 332
	st.w	$zero, $sp, 340
	addi.d	$a2, $sp, 332
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$zero, $sp, 332
	st.w	$zero, $sp, 340
	addi.d	$a2, $sp, 332
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s1, $sp, 332
	ori	$s1, $zero, 1
	st.w	$zero, $sp, 340
	addi.d	$a2, $sp, 332
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$s1, $sp, 332
	st.w	$zero, $sp, 340
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	bnez	$a1, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a2, $sp, 332
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	st.d	$s1, $sp, 332
	st.w	$zero, $sp, 340
	beqz	$a1, .LBB2_33
.LBB2_7:                                # %.thread1078
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$s3, $fp, 4
	addi.d	$s7, $fp, -8
	addi.d	$a1, $sp, 308
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 308
	ld.w	$t4, $sp, 312
	ld.w	$a1, $sp, 316
	slt	$a2, $a0, $t4
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $t4, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	maskeqz	$a3, $a1, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB2_2
# %bb.8:                                # %.preheader862.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	blez	$a1, .LBB2_2
# %bb.9:                                # %.preheader862.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	blez	$t4, .LBB2_2
# %bb.10:                               # %.preheader862.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	blez	$a0, .LBB2_2
# %bb.11:                               # %.preheader859.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t7, $zero
	ld.w	$a2, $sp, 320
	ld.w	$a3, $fp, -12
	ld.w	$a4, $sp, 324
	ld.w	$a5, $s7, 0
	ld.w	$a6, $sp, 328
	ld.w	$a7, $fp, -4
	ld.w	$t0, $s3, 0
	sub.d	$a2, $a2, $a3
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.w	$a5, $t0, $a5
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	slt	$a7, $a1, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $a1, $a7
	or	$a5, $a5, $a7
	ldx.w	$a7, $s8, $s0
	addi.d	$t0, $a5, 1
	mul.d	$a5, $t0, $a6
	add.d	$a4, $a4, $a5
	sub.w	$a3, $a7, $a3
	slt	$a5, $a1, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	addi.d	$a6, $a3, 1
	mul.d	$a3, $a4, $a6
	add.w	$a3, $a2, $a3
	ld.w	$a2, $s2, 0
	ld.d	$t5, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a4, $t5, 0
	ld.w	$a5, $s2, 4
	ld.w	$a7, $t5, 4
	ld.w	$t1, $s2, 8
	ld.w	$t2, $t5, 8
	ld.w	$t3, $t5, 16
	sub.d	$a2, $a2, $a4
	sub.d	$a5, $a5, $a7
	sub.d	$t1, $t1, $t2
	sub.w	$a7, $t3, $a7
	slt	$t2, $a1, $a7
	maskeqz	$a7, $a7, $t2
	masknez	$t2, $a1, $t2
	or	$a7, $a7, $t2
	ld.w	$t2, $t5, 12
	addi.d	$t3, $a7, 1
	mul.d	$a7, $t3, $t1
	add.d	$a5, $a5, $a7
	sub.w	$a4, $t2, $a4
	slt	$a7, $a1, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $a1, $a7
	or	$a4, $a4, $a7
	addi.d	$t1, $a4, 1
	mul.d	$a4, $a5, $t1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a7, $a1, 4
	add.w	$a4, $a2, $a4
	ld.w	$a5, $a1, 0
	ld.w	$a2, $a1, 8
	mul.d	$a7, $a7, $a6
	mul.d	$t2, $t4, $a7
	mul.d	$a6, $a6, $t0
	mul.d	$a2, $a6, $a2
	mul.d	$a6, $a0, $a5
	sub.d	$a6, $a7, $a6
	sub.d	$s0, $t1, $a0
	sub.d	$a1, $a2, $t2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	sub.d	$a2, $t3, $t4
	mul.d	$a1, $a2, $t1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a2, $a0, -1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$t0, $a2, $a1, 3
	addi.d	$a1, $t0, 8
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t0, $a2, $a1, 3
	addi.d	$a1, $t0, 8
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a1, $s6, -8
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$t0, $a2, $s6, 3
	addi.d	$a1, $t0, 16
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$t6, $t1, -8
	alsl.d	$t0, $a2, $t1, 3
	addi.d	$a1, $t0, 16
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$t8, $a1, -8
	alsl.d	$a2, $a2, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ori	$a1, $zero, 3
	sltu	$a2, $a1, $a0
	addi.d	$t0, $a5, -1
	sltui	$t0, $t0, 1
	and	$s5, $a2, $t0
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a1, $a2, 2
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	mul.d	$a1, $a1, $a5
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$s7, $a5, 5
	addi.d	$s8, $t1, 8
	addi.d	$ra, $s6, 8
	slli.d	$a2, $a5, 3
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %._crit_edge876.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.w	$a3, $a1, $a3
	ld.d	$t7, $sp, 168                   # 8-byte Folded Reload
	addi.w	$t7, $t7, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a4, $a4, $a1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$t7, $a1, .LBB2_2
.LBB2_13:                               # %.preheader859.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_15 Depth 3
                                        #         Child Loop BB2_24 Depth 4
                                        #         Child Loop BB2_31 Depth 4
	st.d	$t7, $sp, 168                   # 8-byte Folded Spill
	move	$t0, $zero
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_15 Depth=3
	add.w	$a3, $a6, $t1
	addi.w	$t0, $t0, 1
	add.w	$a4, $s0, $a4
	beq	$t0, $t4, .LBB2_12
.LBB2_15:                               # %.preheader857.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_24 Depth 4
                                        #         Child Loop BB2_31 Depth 4
	beqz	$s5, .LBB2_26
# %bb.16:                               # %vector.memcheck1205
                                        #   in Loop: Header=BB2_15 Depth=3
	alsl.d	$s1, $a4, $fp, 3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$s4, $a4, $a1, 3
	alsl.d	$s3, $a4, $t7, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$t1, $a4, $a1, 3
	sltu	$t2, $s1, $t1
	sltu	$t3, $s3, $s4
	and	$t2, $t2, $t3
	move	$s2, $zero
	bnez	$t2, .LBB2_32
# %bb.17:                               # %vector.memcheck1205
                                        #   in Loop: Header=BB2_15 Depth=3
	move	$a7, $a0
	move	$a0, $t4
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$t2, $a3, $a1, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$t4, $a3, $a1, 3
	sltu	$t3, $s1, $t4
	sltu	$t5, $t2, $s4
	and	$t3, $t3, $t5
	bnez	$t3, .LBB2_27
# %bb.18:                               # %vector.memcheck1205
                                        #   in Loop: Header=BB2_15 Depth=3
	alsl.d	$fp, $a3, $t6, 3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$t3, $a3, $a1, 3
	sltu	$t5, $s1, $t3
	sltu	$t7, $fp, $s4
	and	$t5, $t5, $t7
	bnez	$t5, .LBB2_28
# %bb.19:                               # %vector.memcheck1205
                                        #   in Loop: Header=BB2_15 Depth=3
	alsl.d	$t5, $a3, $t8, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t7, $a3, $a1, 3
	sltu	$a1, $s1, $t7
	sltu	$s4, $t5, $s4
	and	$a1, $a1, $s4
	bnez	$a1, .LBB2_28
# %bb.20:                               # %vector.memcheck1205
                                        #   in Loop: Header=BB2_15 Depth=3
	sltu	$a1, $s3, $t4
	sltu	$t2, $t2, $t1
	and	$a1, $a1, $t2
	bnez	$a1, .LBB2_28
# %bb.21:                               # %vector.memcheck1205
                                        #   in Loop: Header=BB2_15 Depth=3
	sltu	$a1, $s3, $t3
	sltu	$t2, $fp, $t1
	and	$a1, $a1, $t2
	bnez	$a1, .LBB2_28
# %bb.22:                               # %vector.memcheck1205
                                        #   in Loop: Header=BB2_15 Depth=3
	sltu	$a1, $s3, $t7
	sltu	$t1, $t5, $t1
	and	$a1, $a1, $t1
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_27
# %bb.23:                               # %vector.ph1258
                                        #   in Loop: Header=BB2_15 Depth=3
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	add.d	$a4, $s2, $a4
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$t1, $a1, $a3
	slli.d	$a3, $a3, 3
	move	$t4, $a0
	.p2align	4, , 16
.LBB2_24:                               # %vector.body1261
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a1, $ra, $a3
	xvld	$xr0, $a1, -8
	xvld	$xr1, $a1, -16
	add.d	$a1, $s8, $a3
	xvld	$xr2, $a1, -16
	xvbitrevi.d	$xr3, $xr0, 63
	xvfmul.d	$xr1, $xr1, $xr3
	xvfdiv.d	$xr1, $xr1, $xr2
	xvldx	$xr3, $t8, $a3
	xvst	$xr1, $s1, 0
	xvld	$xr1, $a1, -8
	add.d	$a1, $t8, $a3
	xvfmul.d	$xr0, $xr0, $xr3
	xvld	$xr3, $a1, 8
	xvldx	$xr4, $ra, $a3
	xvldx	$xr5, $s8, $a3
	xvfdiv.d	$xr0, $xr0, $xr2
	xvfsub.d	$xr0, $xr1, $xr0
	xvfmul.d	$xr1, $xr3, $xr4
	xvfdiv.d	$xr1, $xr1, $xr5
	xvfsub.d	$xr0, $xr0, $xr1
	xvst	$xr0, $s3, 0
	addi.d	$s2, $s2, -4
	addi.d	$s1, $s1, 32
	addi.d	$s3, $s3, 32
	add.d	$a3, $a3, $s7
	bnez	$s2, .LBB2_24
# %bb.25:                               # %middle.block1276
                                        #   in Loop: Header=BB2_15 Depth=3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$s2, $a1
	move	$a0, $a7
	beq	$a1, $a7, .LBB2_14
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_15 Depth=3
	move	$s2, $zero
	move	$t1, $a3
	b	.LBB2_30
.LBB2_27:                               #   in Loop: Header=BB2_15 Depth=3
	move	$t1, $a3
	b	.LBB2_29
.LBB2_28:                               #   in Loop: Header=BB2_15 Depth=3
	move	$t1, $a3
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
.LBB2_29:                               # %scalar.ph1256.preheader
                                        #   in Loop: Header=BB2_15 Depth=3
	move	$t4, $a0
	move	$a0, $a7
.LBB2_30:                               # %scalar.ph1256.preheader
                                        #   in Loop: Header=BB2_15 Depth=3
	alsl.d	$a3, $a4, $fp, 3
	alsl.d	$s1, $a4, $t7, 3
	sub.d	$s2, $a0, $s2
	slli.d	$s3, $t1, 3
	.p2align	4, , 16
.LBB2_31:                               # %scalar.ph1256
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a1, $s6, $s3
	fldx.d	$fa0, $s6, $s3
	fld.d	$fa1, $a1, -8
	fldx.d	$fa2, $t6, $s3
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	add.d	$a1, $t6, $s3
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $a3, 0
	fldx.d	$fa0, $t6, $s3
	vldx	$vr1, $t8, $s3
	vldx	$vr2, $s6, $s3
	fld.d	$fa3, $a1, 16
	fld.d	$fa4, $a1, 8
	vfmul.d	$vr1, $vr1, $vr2
	vextrins.d	$vr0, $vr3, 16
	vfdiv.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 0
	fsub.d	$fa1, $fa4, $fa1
	vreplvei.d	$vr0, $vr0, 1
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s1, 0
	add.d	$t1, $t1, $a5
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 8
	addi.d	$s1, $s1, 8
	addi.w	$s2, $s2, -1
	add.d	$s3, $s3, $a2
	bnez	$s2, .LBB2_31
	b	.LBB2_14
.LBB2_32:                               #   in Loop: Header=BB2_15 Depth=3
	move	$t1, $a3
	b	.LBB2_30
.LBB2_33:                               #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $sp, 308
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 308
	ld.w	$a3, $sp, 312
	ld.w	$a4, $sp, 316
	slt	$a0, $a2, $a3
	masknez	$a1, $a2, $a0
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a4
	masknez	$a0, $a0, $a1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	maskeqz	$a1, $a4, $a1
	or	$a0, $a1, $a0
	blez	$a0, .LBB2_2
# %bb.34:                               # %.preheader860.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.35:                               # %.preheader860.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.36:                               # %.preheader860.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	blez	$a2, .LBB2_2
# %bb.37:                               # %.preheader858.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t5, $zero
	ld.w	$a0, $sp, 320
	ld.w	$a1, $fp, -12
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.w	$a2, $sp, 324
	ld.w	$a3, $fp, -8
	ld.w	$a4, $sp, 328
	ld.w	$a5, $fp, -4
	ld.w	$a6, $fp, 4
	sub.d	$a0, $a0, $a1
	sub.d	$a2, $a2, $a3
	sub.d	$a4, $a4, $a5
	sub.w	$a3, $a6, $a3
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	slt	$a5, $t2, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $t2, $a5
	or	$a3, $a3, $a5
	ldx.w	$a5, $s8, $s0
	addi.d	$a3, $a3, 1
	mul.d	$a4, $a3, $a4
	add.d	$a2, $a2, $a4
	sub.w	$a1, $a5, $a1
	slt	$a4, $t2, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $t2, $a4
	or	$a1, $a1, $a4
	addi.d	$a1, $a1, 1
	mul.d	$a2, $a2, $a1
	add.w	$t3, $a0, $a2
	ld.w	$a0, $s2, 0
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $t1, 0
	ld.w	$a4, $s2, 4
	ld.w	$a5, $t1, 4
	ld.w	$a6, $s2, 8
	ld.w	$a7, $t1, 8
	ld.w	$t0, $t1, 16
	sub.d	$a0, $a0, $a2
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.w	$a5, $t0, $a5
	slt	$a7, $t2, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t2, $a7
	or	$a5, $a5, $a7
	ld.w	$a7, $t1, 12
	addi.d	$t1, $a5, 1
	mul.d	$a5, $t1, $a6
	add.d	$a4, $a4, $a5
	sub.w	$a2, $a7, $a2
	slt	$a5, $t2, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $t2, $a5
	or	$a2, $a2, $a5
	addi.d	$a2, $a2, 1
	mul.d	$a4, $a4, $a2
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a7, $t0, 4
	add.w	$a5, $a0, $a4
	ld.w	$a6, $t0, 0
	ld.w	$a0, $t0, 8
	mul.d	$a4, $a7, $a1
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	mul.d	$t2, $a7, $a4
	mul.d	$a1, $a1, $a3
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a6
	sub.d	$a1, $a4, $a1
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	sub.d	$t0, $a2, $a1
	sub.d	$a0, $a0, $t2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	sub.d	$a0, $t1, $a7
	mul.d	$a0, $a0, $a2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a0, $a2, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a1, $s6, -8
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s6, 3
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	addi.d	$t8, $a3, -8
	alsl.d	$a1, $a0, $a3, 3
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$s0, $a1, -8
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $zero, 7
	sltu	$a0, $a0, $a2
	addi.d	$a1, $a6, -1
	sltui	$a1, $a1, 1
	and	$s8, $a0, $a1
	bstrpick.d	$a0, $a2, 30, 2
	slli.d	$t4, $a0, 2
	mul.d	$a0, $t4, $a6
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	slli.d	$t1, $a6, 5
	addi.d	$t2, $a3, 8
	addi.d	$s3, $s6, 8
	slli.d	$a4, $a6, 3
	b	.LBB2_39
	.p2align	4, , 16
.LBB2_38:                               # %._crit_edge913.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_39 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.w	$t3, $a0, $t3
	ld.d	$t5, $sp, 128                   # 8-byte Folded Reload
	addi.w	$t5, $t5, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$t5, $a0, .LBB2_2
.LBB2_39:                               # %.preheader858.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_41 Depth 3
                                        #         Child Loop BB2_55 Depth 4
                                        #         Child Loop BB2_62 Depth 4
	st.d	$t5, $sp, 128                   # 8-byte Folded Spill
	move	$a3, $zero
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %._crit_edge.us.us.us.us.us.us945
                                        #   in Loop: Header=BB2_41 Depth=3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.w	$t3, $a0, $s7
	addi.w	$a3, $a3, 1
	add.w	$a5, $t0, $a5
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	beq	$a3, $a0, .LBB2_38
.LBB2_41:                               # %.preheader856.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_39 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_55 Depth 4
                                        #         Child Loop BB2_62 Depth 4
	beqz	$s8, .LBB2_57
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	alsl.d	$t5, $a5, $fp, 3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 3
	alsl.d	$t6, $a5, $a7, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s4, $a5, $a1, 3
	sltu	$a1, $t5, $s4
	sltu	$a2, $t6, $a0
	and	$a1, $a1, $a2
	move	$ra, $zero
	bnez	$a1, .LBB2_58
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	alsl.d	$t7, $a5, $s2, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$s1, $a5, $a1, 3
	sltu	$a1, $t5, $s1
	sltu	$a2, $t7, $a0
	and	$a1, $a1, $a2
	bnez	$a1, .LBB2_58
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$s5, $t3, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$s7, $t3, $a1, 3
	sltu	$a1, $t5, $s7
	sltu	$a2, $s5, $a0
	and	$a1, $a1, $a2
	bnez	$a1, .LBB2_58
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	alsl.d	$fp, $t3, $t8, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s2, $t3, $a1, 3
	sltu	$a1, $t5, $s2
	sltu	$a2, $fp, $a0
	and	$a1, $a1, $a2
	bnez	$a1, .LBB2_59
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	alsl.d	$a2, $t3, $s0, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a1, $t3, $a1, 3
	sltu	$a7, $t5, $a1
	sltu	$a0, $a2, $a0
	and	$a0, $a7, $a0
	bnez	$a0, .LBB2_59
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	sltu	$a0, $t6, $s1
	sltu	$a7, $t7, $s4
	and	$a0, $a0, $a7
	bnez	$a0, .LBB2_59
# %bb.48:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	sltu	$a0, $t6, $s7
	sltu	$a7, $s5, $s4
	and	$a0, $a0, $a7
	bnez	$a0, .LBB2_59
# %bb.49:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	sltu	$a0, $t6, $s2
	sltu	$a7, $fp, $s4
	and	$a0, $a0, $a7
	bnez	$a0, .LBB2_59
# %bb.50:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	sltu	$a0, $t6, $a1
	sltu	$a7, $a2, $s4
	and	$a0, $a0, $a7
	bnez	$a0, .LBB2_59
# %bb.51:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	sltu	$a0, $t7, $s7
	sltu	$a7, $s5, $s1
	and	$a0, $a0, $a7
	bnez	$a0, .LBB2_59
# %bb.52:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	sltu	$a0, $t7, $s2
	sltu	$a7, $fp, $s1
	and	$a0, $a0, $a7
	bnez	$a0, .LBB2_59
# %bb.53:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_41 Depth=3
	sltu	$a0, $t7, $a1
	sltu	$a1, $a2, $s1
	and	$a0, $a0, $a1
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_58
# %bb.54:                               # %vector.ph
                                        #   in Loop: Header=BB2_41 Depth=3
	add.d	$a5, $t4, $a5
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$s7, $a0, $t3
	slli.d	$t3, $t3, 3
	move	$s1, $t4
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_55:                               # %vector.body
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_39 Depth=2
                                        #       Parent Loop BB2_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a0, $s3, $t3
	xvld	$xr0, $a0, -8
	xvld	$xr1, $a0, -16
	add.d	$a0, $t2, $t3
	xvld	$xr2, $a0, -16
	xvbitrevi.d	$xr3, $xr0, 63
	xvfmul.d	$xr1, $xr1, $xr3
	xvfdiv.d	$xr1, $xr1, $xr2
	xvldx	$xr3, $s0, $t3
	xvst	$xr1, $t5, 0
	xvld	$xr1, $a0, -8
	add.d	$a0, $s0, $t3
	xvfmul.d	$xr0, $xr0, $xr3
	xvldx	$xr3, $s3, $t3
	xvld	$xr4, $a0, 8
	xvldx	$xr5, $t2, $t3
	xvfdiv.d	$xr0, $xr0, $xr2
	xvfsub.d	$xr0, $xr1, $xr0
	xvfmul.d	$xr1, $xr4, $xr3
	xvfdiv.d	$xr1, $xr1, $xr5
	xvld	$xr2, $a0, 16
	xvfsub.d	$xr0, $xr0, $xr1
	xvst	$xr0, $t6, 0
	xvbitrevi.d	$xr0, $xr4, 63
	xvfmul.d	$xr0, $xr2, $xr0
	xvfdiv.d	$xr0, $xr0, $xr5
	xvst	$xr0, $t7, 0
	addi.d	$s1, $s1, -4
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	addi.d	$t7, $t7, 32
	add.d	$t3, $t3, $t1
	bnez	$s1, .LBB2_55
# %bb.56:                               # %middle.block
                                        #   in Loop: Header=BB2_41 Depth=3
	move	$ra, $t4
	beq	$t4, $a2, .LBB2_40
	b	.LBB2_61
	.p2align	4, , 16
.LBB2_57:                               #   in Loop: Header=BB2_41 Depth=3
	move	$ra, $zero
	move	$s7, $t3
	b	.LBB2_61
.LBB2_58:                               #   in Loop: Header=BB2_41 Depth=3
	move	$s7, $t3
	b	.LBB2_60
.LBB2_59:                               #   in Loop: Header=BB2_41 Depth=3
	move	$s7, $t3
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
.LBB2_60:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_41 Depth=3
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
.LBB2_61:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_41 Depth=3
	alsl.d	$t3, $a5, $fp, 3
	alsl.d	$t5, $a5, $a7, 3
	alsl.d	$t6, $a5, $s2, 3
	slli.d	$t7, $s7, 3
	sub.d	$s1, $a2, $ra
	move	$s5, $t8
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	move	$s4, $s6
	.p2align	4, , 16
.LBB2_62:                               # %scalar.ph
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_39 Depth=2
                                        #       Parent Loop BB2_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a0, $s4, $t7
	fldx.d	$fa0, $s4, $t7
	fld.d	$fa1, $a0, -8
	fldx.d	$fa2, $s5, $t7
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	add.d	$a0, $s5, $t7
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $t3, 0
	add.d	$a1, $ra, $t7
	fldx.d	$fa0, $s5, $t7
	vld	$vr1, $a1, -8
	vldx	$vr2, $s4, $t7
	fld.d	$fa3, $a0, 16
	fld.d	$fa4, $a0, 8
	vfmul.d	$vr1, $vr1, $vr2
	vextrins.d	$vr0, $vr3, 16
	vfdiv.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 0
	fsub.d	$fa1, $fa4, $fa1
	vreplvei.d	$vr0, $vr0, 1
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $t5, 0
	fldx.d	$fa0, $ra, $t7
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a0, 16
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $t6, 0
	add.d	$s7, $s7, $a6
	addi.d	$a5, $a5, 1
	addi.d	$t3, $t3, 8
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 8
	add.d	$s4, $s4, $a4
	addi.w	$s1, $s1, -1
	add.d	$ra, $ra, $a4
	add.d	$s5, $s5, $a4
	bnez	$s1, .LBB2_62
	b	.LBB2_40
.LBB2_63:                               # %._crit_edge
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a0, 56
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_104
# %bb.64:                               # %.preheader854
	ld.w	$a0, $fp, 8
	blez	$a0, .LBB2_104
# %bb.65:                               # %.lr.ph
	addi.w	$s5, $zero, -1
	move	$s1, $zero
	move	$s6, $s5
	lu32i.d	$s6, 0
	ori	$s7, $zero, 1
	ori	$s8, $zero, 4
	xvrepli.b	$xr3, 0
	xvldi	$xr4, -1024
	xvst	$xr3, $sp, 272                  # 32-byte Folded Spill
	xvst	$xr4, $sp, 240                  # 32-byte Folded Spill
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_66:                               # %.loopexit852
                                        #   in Loop: Header=BB2_67 Depth=1
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 8
	addi.d	$s1, $s1, 1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	bge	$s1, $a0, .LBB2_104
.LBB2_67:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_75 Depth 2
                                        #       Child Loop BB2_77 Depth 3
                                        #         Child Loop BB2_84 Depth 4
                                        #         Child Loop BB2_82 Depth 4
                                        #     Child Loop BB2_92 Depth 2
                                        #       Child Loop BB2_94 Depth 3
                                        #         Child Loop BB2_102 Depth 4
                                        #         Child Loop BB2_97 Depth 4
	ld.d	$a0, $s3, 40
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $s1, 4
	alsl.d	$a2, $s1, $a2, 3
	add.d	$s4, $a1, $a2
	add.d	$fp, $a0, $a2
	st.d	$zero, $sp, 332
	st.w	$zero, $sp, 340
	addi.d	$a2, $sp, 332
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s6, $sp, 332
	st.w	$zero, $sp, 340
	addi.d	$a2, $sp, 332
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 72
	move	$s3, $a0
	bnez	$a1, .LBB2_69
# %bb.68:                               #   in Loop: Header=BB2_67 Depth=1
	st.d	$s7, $sp, 332
	st.w	$zero, $sp, 340
	addi.d	$a2, $sp, 332
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 72
	beqz	$a1, .LBB2_86
.LBB2_69:                               # %.thread
                                        #   in Loop: Header=BB2_67 Depth=1
	addi.d	$a1, $sp, 308
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 308
	ld.w	$a1, $sp, 312
	ld.w	$a2, $sp, 316
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	xvld	$xr3, $sp, 272                  # 32-byte Folded Reload
	vldi	$vr2, -1024
	xvld	$xr4, $sp, 240                  # 32-byte Folded Reload
	blez	$a3, .LBB2_66
# %bb.70:                               # %.preheader850.lr.ph
                                        #   in Loop: Header=BB2_67 Depth=1
	blez	$a2, .LBB2_66
# %bb.71:                               # %.preheader850.lr.ph
                                        #   in Loop: Header=BB2_67 Depth=1
	blez	$a1, .LBB2_66
# %bb.72:                               # %.preheader850.lr.ph
                                        #   in Loop: Header=BB2_67 Depth=1
	blez	$a0, .LBB2_66
# %bb.73:                               # %.preheader848.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_67 Depth=1
	ld.w	$a5, $fp, 4
	ld.w	$a4, $fp, 16
	move	$a3, $zero
	ld.w	$a6, $fp, 0
	sub.w	$a4, $a4, $a5
	slt	$a7, $s5, $a4
	maskeqz	$a4, $a4, $a7
	ld.w	$t0, $fp, 12
	masknez	$a7, $s5, $a7
	or	$a4, $a4, $a7
	addi.d	$a7, $a4, 1
	sub.w	$a4, $t0, $a6
	slt	$t0, $s5, $a4
	maskeqz	$a4, $a4, $t0
	ld.w	$t1, $s4, 0
	masknez	$t0, $s5, $t0
	or	$a4, $a4, $t0
	addi.d	$t0, $a4, 1
	sub.d	$a6, $t1, $a6
	ld.w	$t1, $s4, 4
	sub.d	$a4, $t0, $a0
	ld.w	$t2, $s4, 8
	ld.w	$t3, $fp, 8
	sub.d	$t1, $t1, $a5
	sub.d	$a5, $a7, $a1
	mulw.d.w	$a5, $t0, $a5
	sub.d	$t2, $t2, $t3
	mul.d	$a7, $a7, $t2
	add.d	$a7, $t1, $a7
	mul.d	$a7, $a7, $t0
	add.w	$a6, $a6, $a7
	addi.d	$a7, $a0, -1
	bstrpick.d	$t0, $a7, 31, 0
	alsl.d	$a7, $t0, $s2, 3
	addi.d	$a7, $a7, 8
	alsl.d	$t0, $t0, $s3, 3
	addi.d	$t0, $t0, 8
	bstrpick.d	$t1, $a0, 30, 2
	slli.d	$t1, $t1, 2
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_74:                               # %._crit_edge955.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_75 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$a6, $a6, $a5
	beq	$a3, $a2, .LBB2_66
.LBB2_75:                               # %.preheader848.us.us.us.us.us
                                        #   Parent Loop BB2_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_77 Depth 3
                                        #         Child Loop BB2_84 Depth 4
                                        #         Child Loop BB2_82 Depth 4
	move	$t2, $zero
	b	.LBB2_77
	.p2align	4, , 16
.LBB2_76:                               # %._crit_edge952.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_77 Depth=3
	addi.w	$t2, $t2, 1
	add.w	$a6, $a4, $a6
	beq	$t2, $a1, .LBB2_74
.LBB2_77:                               # %.preheader846.us.us.us.us.us.us
                                        #   Parent Loop BB2_67 Depth=1
                                        #     Parent Loop BB2_75 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_84 Depth 4
                                        #         Child Loop BB2_82 Depth 4
	bltu	$a0, $s8, .LBB2_80
# %bb.78:                               # %vector.memcheck1321
                                        #   in Loop: Header=BB2_77 Depth=3
	alsl.d	$t3, $a6, $s2, 3
	alsl.d	$t5, $a6, $t0, 3
	alsl.d	$t4, $a6, $s3, 3
	bgeu	$t3, $t5, .LBB2_83
# %bb.79:                               # %vector.memcheck1321
                                        #   in Loop: Header=BB2_77 Depth=3
	alsl.d	$t5, $a6, $a7, 3
	bgeu	$t4, $t5, .LBB2_83
.LBB2_80:                               #   in Loop: Header=BB2_77 Depth=3
	move	$t5, $zero
.LBB2_81:                               # %scalar.ph1333.preheader
                                        #   in Loop: Header=BB2_77 Depth=3
	alsl.d	$t3, $a6, $s3, 3
	alsl.d	$t4, $a6, $s2, 3
	sub.d	$t5, $a0, $t5
	.p2align	4, , 16
.LBB2_82:                               # %scalar.ph1333
                                        #   Parent Loop BB2_67 Depth=1
                                        #     Parent Loop BB2_75 Depth=2
                                        #       Parent Loop BB2_77 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t3, 0
	fld.d	$fa1, $t4, 0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fst.d	$fa0, $t4, 0
	st.d	$zero, $t3, 0
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, 8
	addi.w	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB2_82
	b	.LBB2_76
	.p2align	4, , 16
.LBB2_83:                               # %vector.ph1335
                                        #   in Loop: Header=BB2_77 Depth=3
	add.d	$a6, $t1, $a6
	move	$t5, $t1
	.p2align	4, , 16
.LBB2_84:                               # %vector.body1338
                                        #   Parent Loop BB2_67 Depth=1
                                        #     Parent Loop BB2_75 Depth=2
                                        #       Parent Loop BB2_77 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t4, 0
	xvld	$xr1, $t3, 0
	xvfmadd.d	$xr0, $xr0, $xr4, $xr1
	xvst	$xr0, $t3, 0
	xvst	$xr3, $t4, 0
	addi.d	$t5, $t5, -4
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB2_84
# %bb.85:                               # %middle.block1344
                                        #   in Loop: Header=BB2_77 Depth=3
	move	$t5, $t1
	beq	$t1, $a0, .LBB2_76
	b	.LBB2_81
.LBB2_86:                               #   in Loop: Header=BB2_67 Depth=1
	addi.d	$a1, $sp, 308
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 308
	ld.w	$a2, $sp, 312
	ld.w	$a3, $sp, 316
	slt	$a4, $a1, $a2
	masknez	$a5, $a1, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a5
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a3, $a5
	or	$a4, $a5, $a4
	xvld	$xr3, $sp, 272                  # 32-byte Folded Reload
	blez	$a4, .LBB2_66
# %bb.87:                               # %.preheader849.lr.ph
                                        #   in Loop: Header=BB2_67 Depth=1
	blez	$a3, .LBB2_66
# %bb.88:                               # %.preheader849.lr.ph
                                        #   in Loop: Header=BB2_67 Depth=1
	blez	$a2, .LBB2_66
# %bb.89:                               # %.preheader849.lr.ph
                                        #   in Loop: Header=BB2_67 Depth=1
	blez	$a1, .LBB2_66
# %bb.90:                               # %.preheader847.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_67 Depth=1
	move	$a0, $s0
	ld.w	$a6, $fp, 4
	ld.w	$a5, $fp, 16
	move	$a4, $zero
	ld.w	$a7, $fp, 0
	sub.w	$a5, $a5, $a6
	slt	$t0, $s5, $a5
	maskeqz	$a5, $a5, $t0
	ld.w	$t1, $fp, 12
	masknez	$t0, $s5, $t0
	or	$a5, $a5, $t0
	addi.d	$t0, $a5, 1
	sub.w	$a5, $t1, $a7
	slt	$t1, $s5, $a5
	maskeqz	$a5, $a5, $t1
	ld.w	$t2, $s4, 0
	masknez	$t1, $s5, $t1
	or	$a5, $a5, $t1
	addi.d	$t1, $a5, 1
	sub.d	$a7, $t2, $a7
	ld.w	$t2, $s4, 4
	sub.d	$a5, $t1, $a1
	ld.w	$t3, $s4, 8
	ld.w	$t4, $fp, 8
	sub.d	$t2, $t2, $a6
	sub.d	$a6, $t0, $a2
	mulw.d.w	$a6, $t1, $a6
	sub.d	$t3, $t3, $t4
	mul.d	$t0, $t0, $t3
	add.d	$t0, $t2, $t0
	mul.d	$t0, $t0, $t1
	add.w	$a7, $a7, $t0
	addi.d	$t0, $a1, -1
	bstrpick.d	$t2, $t0, 31, 0
	alsl.d	$t0, $t2, $s2, 3
	addi.d	$t0, $t0, 8
	alsl.d	$t1, $t2, $s3, 3
	addi.d	$t1, $t1, 8
	alsl.d	$t2, $t2, $s0, 3
	addi.d	$t2, $t2, 8
	bstrpick.d	$t3, $a1, 30, 2
	slli.d	$t3, $t3, 2
	b	.LBB2_92
	.p2align	4, , 16
.LBB2_91:                               # %._crit_edge981.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_92 Depth=2
	addi.w	$a4, $a4, 1
	add.w	$a7, $a7, $a6
	beq	$a4, $a3, .LBB2_66
.LBB2_92:                               # %.preheader847.us.us.us.us.us
                                        #   Parent Loop BB2_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_94 Depth 3
                                        #         Child Loop BB2_102 Depth 4
                                        #         Child Loop BB2_97 Depth 4
	move	$t4, $zero
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_93:                               # %._crit_edge978.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_94 Depth=3
	addi.w	$t4, $t4, 1
	add.w	$a7, $a5, $a7
	beq	$t4, $a2, .LBB2_91
.LBB2_94:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_67 Depth=1
                                        #     Parent Loop BB2_92 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_102 Depth 4
                                        #         Child Loop BB2_97 Depth 4
	bgeu	$a1, $s8, .LBB2_98
# %bb.95:                               #   in Loop: Header=BB2_94 Depth=3
	move	$t8, $zero
.LBB2_96:                               # %scalar.ph1305.preheader
                                        #   in Loop: Header=BB2_94 Depth=3
	alsl.d	$t5, $a7, $s3, 3
	alsl.d	$t6, $a7, $a0, 3
	alsl.d	$t7, $a7, $s2, 3
	sub.d	$t8, $a1, $t8
	.p2align	4, , 16
.LBB2_97:                               # %scalar.ph1305
                                        #   Parent Loop BB2_67 Depth=1
                                        #     Parent Loop BB2_92 Depth=2
                                        #       Parent Loop BB2_94 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t5, 0
	fld.d	$fa1, $t6, 0
	fld.d	$fa2, $t7, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $t7, 0
	st.d	$zero, $t5, 0
	st.d	$zero, $t6, 0
	addi.d	$a7, $a7, 1
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 8
	addi.w	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB2_97
	b	.LBB2_93
	.p2align	4, , 16
.LBB2_98:                               # %vector.memcheck1281
                                        #   in Loop: Header=BB2_94 Depth=3
	alsl.d	$t5, $a7, $s2, 3
	alsl.d	$s0, $a7, $t0, 3
	alsl.d	$t6, $a7, $s3, 3
	alsl.d	$fp, $a7, $t1, 3
	sltu	$t7, $t5, $fp
	sltu	$t8, $t6, $s0
	and	$t7, $t7, $t8
	move	$t8, $zero
	bnez	$t7, .LBB2_96
# %bb.99:                               # %vector.memcheck1281
                                        #   in Loop: Header=BB2_94 Depth=3
	alsl.d	$t7, $a7, $a0, 3
	alsl.d	$s4, $a7, $t2, 3
	sltu	$ra, $t5, $s4
	sltu	$s0, $t7, $s0
	and	$s0, $ra, $s0
	bnez	$s0, .LBB2_96
# %bb.100:                              # %vector.memcheck1281
                                        #   in Loop: Header=BB2_94 Depth=3
	sltu	$s0, $t6, $s4
	sltu	$fp, $t7, $fp
	and	$fp, $s0, $fp
	bnez	$fp, .LBB2_96
# %bb.101:                              # %vector.ph1307
                                        #   in Loop: Header=BB2_94 Depth=3
	add.d	$a7, $t3, $a7
	move	$t8, $t3
	.p2align	4, , 16
.LBB2_102:                              # %vector.body1310
                                        #   Parent Loop BB2_67 Depth=1
                                        #     Parent Loop BB2_92 Depth=2
                                        #       Parent Loop BB2_94 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t6, 0
	xvld	$xr1, $t7, 0
	xvld	$xr2, $t5, 0
	xvfadd.d	$xr0, $xr0, $xr1
	xvfadd.d	$xr0, $xr2, $xr0
	xvst	$xr0, $t5, 0
	xvst	$xr3, $t6, 0
	xvst	$xr3, $t7, 0
	addi.d	$t8, $t8, -4
	addi.d	$t5, $t5, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	bnez	$t8, .LBB2_102
# %bb.103:                              # %middle.block1317
                                        #   in Loop: Header=BB2_94 Depth=3
	move	$t8, $t3
	beq	$t3, $a1, .LBB2_93
	b	.LBB2_96
.LBB2_104:                              # %.loopexit855
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.Lfunc_end2:
	.size	hypre_CycRedSetupCoarseOp, .Lfunc_end2-hypre_CycRedSetupCoarseOp
                                        # -- End function
	.globl	hypre_CyclicReductionSetup      # -- Begin function hypre_CyclicReductionSetup
	.p2align	5
	.type	hypre_CyclicReductionSetup,@function
hypre_CyclicReductionSetup:             # @hypre_CyclicReductionSetup
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s2, $a1, 8
	ld.w	$s1, $fp, 8
	addi.d	$a0, $fp, 12
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 24
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $s2, 40
	st.d	$zero, $sp, 184
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 168
	pcaddu18i	$ra, %call36(hypre_BoxDuplicate)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	addi.d	$s5, $a0, 12
	slli.d	$s3, $s1, 2
	ldx.w	$a0, $s5, $s3
	ldx.w	$a1, $s8, $s3
	sub.w	$a0, $a0, $a1
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(hypre_Log2)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 16
	alsl.w	$a0, $a0, $a1, 3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructGridRef)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 244
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 28
	ld.w	$a3, $fp, 12
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a4, $fp, 16
	st.w	$a1, $sp, 244
	st.d	$a2, $sp, 248
	ldx.w	$a1, $s3, $a0
	st.w	$a3, $sp, 268
	st.d	$a4, $sp, 272
	ldx.w	$a2, $s5, $s3
	slli.d	$a1, $a1, 1
	stx.w	$a1, $s3, $a0
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	ldx.w	$a1, $s8, $s3
	move	$s3, $zero
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$s1, $s1, $a0, 2
	addi.d	$s7, $s0, 8
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	beq	$a1, $a2, .LBB3_4
# %bb.1:                                # %.peel.next
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $s5, 2
	alsl.d	$s6, $a0, $s8, 2
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s8
	move	$a3, $s8
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s5
	move	$a3, $s5
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	ori	$a3, $zero, 1
	ori	$s3, $zero, 1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(hypre_StructCoarsen)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 244
	st.w	$s3, $sp, 252
	ld.w	$a0, $s1, 0
	st.d	$zero, $sp, 268
	st.w	$zero, $sp, 276
	ld.w	$a1, $fp, 0
	slli.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	ld.w	$a0, $s6, 0
	beq	$a0, $a1, .LBB3_4
# %bb.2:                                # %.lr.ph.preheader
	addi.d	$s2, $s0, 16
	ori	$s4, $zero, 1
	lu32i.d	$s4, 1
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s8
	move	$a3, $s8
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s5
	move	$a3, $s5
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, -8
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	ori	$a3, $zero, 1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(hypre_StructCoarsen)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 244
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 252
	ld.w	$a0, $s1, 0
	st.d	$zero, $sp, 268
	st.w	$zero, $sp, 276
	ld.w	$a1, $fp, 0
	slli.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	ld.w	$a0, $s6, 0
	addi.w	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bne	$a0, $a1, .LBB3_3
.LBB3_4:                                # %.loopexit
	addi.d	$fp, $s3, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	st.w	$fp, $s4, 4
	st.d	$s0, $s4, 40
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArray)
	jirl	$ra, $ra, 0
	st.d	$s2, $s4, 48
	slli.w	$s5, $fp, 3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	bstrpick.d	$a0, $s3, 31, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s6, $s3
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	beqz	$s3, .LBB3_9
# %bb.5:
	ld.w	$a0, $s4, 12
	ld.w	$a1, $s4, 16
	ld.w	$a2, $s4, 20
	addi.d	$fp, $sp, 256
	st.w	$a0, $sp, 268
	st.w	$a1, $sp, 272
	st.w	$a2, $sp, 276
	st.w	$a0, $sp, 256
	st.w	$a1, $sp, 260
	ld.d	$a0, $s4, 28
	st.w	$a2, $sp, 264
	ld.w	$a1, $s4, 24
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $fp
	st.d	$a0, $sp, 248
	ld.d	$a0, $s0, 0
	st.w	$a1, $sp, 244
	ld.w	$a1, $s1, 0
	addi.d	$a2, $a2, 1
	ld.d	$a0, $a0, 8
	stx.w	$a2, $a3, $fp
	slli.d	$a1, $a1, 1
	st.w	$a1, $s1, 0
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 0
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArray)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	beq	$s6, $a0, .LBB3_10
# %bb.6:                                # %.peel.next277.preheader
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $fp, 2
	addi.d	$s2, $s8, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s3, $a0, -1
	ori	$s4, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	.p2align	4, , 16
.LBB3_7:                                # %.peel.next277
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 268
	st.w	$zero, $sp, 276
	st.d	$zero, $sp, 256
	st.w	$zero, $sp, 264
	ld.w	$a0, $fp, 0
	st.d	$s6, $sp, 244
	ld.d	$a1, $s7, 0
	st.w	$s4, $sp, 252
	ld.w	$a2, $s1, 0
	addi.d	$a3, $a0, 1
	ld.d	$a0, $a1, 8
	st.w	$a3, $fp, 0
	slli.d	$a1, $a2, 1
	st.w	$a1, $s1, 0
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArray)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, -1
	addi.d	$s7, $s7, 8
	bnez	$s3, .LBB3_7
# %bb.8:                                # %._crit_edge.loopexit.loopexit
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s6
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	b	.LBB3_10
.LBB3_9:
	move	$a0, $zero
.LBB3_10:                               # %._crit_edge
	slli.d	$fp, $a0, 3
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	ldx.d	$a0, $s0, $fp
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s8, $fp
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB3_12
# %bb.11:
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArray)
	jirl	$ra, $ra, 0
.LBB3_12:
	st.d	$s8, $s4, 56
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	slli.w	$a0, $s0, 1
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	addi.d	$a2, $sp, 168
	stx.d	$a1, $a0, $a2
	beqz	$s6, .LBB3_20
# %bb.13:                               # %.lr.ph243.preheader
	move	$s4, $zero
	move	$s5, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slli.d	$fp, $a0, 3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s6, $a0, 8
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_14:                               # %.lr.ph243
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s3, $s4
	ldx.d	$a1, $s6, $s4
	add.d	$s7, $s3, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hypre_CycRedCreateCoarseOp)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 60
	ldx.d	$a1, $s6, $s4
	st.d	$a0, $s7, 8
	add.d	$s5, $a2, $s5
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	add.d	$s7, $s2, $s4
	st.d	$a0, $s7, 8
	addi.d	$a1, $sp, 168
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	ld.w	$a0, $a0, 36
	addi.d	$s4, $s4, 8
	add.w	$s5, $s5, $a0
	bne	$fp, $s4, .LBB3_14
# %bb.15:                               # %.lr.ph249.preheader
	ori	$a1, $zero, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$s5, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$s4, $a0, 64
	.p2align	4, , 16
.LBB3_16:                               # %.lr.ph249
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s5
	ld.d	$a0, $s6, 8
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a1, $a0, 60
	add.d	$s6, $s2, $s5
	ld.d	$a0, $s6, 8
	alsl.d	$s4, $a1, $s4, 3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a0, $a0, 36
	addi.d	$s5, $s5, 8
	alsl.d	$s4, $a0, $s4, 3
	bne	$fp, $s5, .LBB3_16
# %bb.17:
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 24
	ld.d	$a1, $a3, 28
	ld.w	$a2, $a3, 12
	st.w	$a0, $sp, 244
	ld.d	$a0, $a3, 16
	st.d	$a1, $sp, 248
	ld.w	$a1, $s1, 0
	st.w	$a2, $sp, 268
	st.d	$a0, $sp, 272
	slli.d	$a2, $a1, 1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s3, 8
	st.w	$a2, $s1, 0
	st.d	$s3, $a3, 72
	st.d	$s2, $a3, 80
	addi.d	$a2, $sp, 268
	addi.d	$a3, $sp, 244
	pcaddu18i	$ra, %call36(hypre_CycRedSetupCoarseOp)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$a0, $fp, .LBB3_21
# %bb.18:                               # %.peel.next292.preheader
	addi.d	$s4, $s3, 16
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s5, $a0, -1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	.p2align	4, , 16
.LBB3_19:                               # %.peel.next292
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 268
	st.d	$s6, $sp, 244
	st.w	$fp, $sp, 252
	ld.w	$a2, $s1, 0
	ld.d	$a0, $s4, -8
	ld.d	$a1, $s4, 0
	st.w	$zero, $sp, 276
	slli.d	$a2, $a2, 1
	st.w	$a2, $s1, 0
	addi.d	$a2, $sp, 268
	addi.d	$a3, $sp, 244
	pcaddu18i	$ra, %call36(hypre_CycRedSetupCoarseOp)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	bnez	$s5, .LBB3_19
	b	.LBB3_21
.LBB3_20:                               # %._crit_edge250.thread
	ori	$a1, $zero, 8
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 64
	st.d	$s3, $s4, 72
	st.d	$s2, $s4, 80
.LBB3_21:                               # %._crit_edge254
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	slli.w	$s4, $fp, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	beqz	$fp, .LBB3_27
# %bb.22:                               # %.lr.ph257
	move	$s7, $zero
	addi.d	$a0, $sp, 256
	alsl.d	$s8, $s0, $a0, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slli.d	$fp, $a0, 3
	addi.d	$s6, $sp, 244
	ori	$s4, $zero, 1
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_23:                               #   in Loop: Header=BB3_25 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 12
	ld.w	$a1, $a3, 16
	st.w	$a0, $sp, 268
	ld.w	$a2, $a3, 20
	st.w	$a1, $sp, 272
	st.w	$a0, $sp, 256
	st.w	$a1, $sp, 260
	st.w	$a2, $sp, 264
	ld.w	$a1, $s8, 0
	st.w	$a2, $sp, 276
	ld.d	$a2, $a3, 24
	ld.w	$a0, $a3, 32
	addi.d	$a1, $a1, 1
	st.w	$a1, $s8, 0
	st.d	$a2, $sp, 244
.LBB3_24:                               #   in Loop: Header=BB3_25 Depth=1
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a1, $s3, $s7
	st.w	$a0, $sp, 252
	ld.w	$a2, $s1, 0
	ldx.d	$a0, $s0, $s7
	ld.d	$a1, $a1, 24
	slli.d	$a2, $a2, 1
	st.w	$a2, $s1, 0
	addi.d	$a2, $sp, 232
	addi.d	$a3, $sp, 224
	addi.d	$a4, $sp, 216
	addi.d	$a5, $sp, 208
	addi.d	$a6, $sp, 200
	addi.d	$a7, $sp, 192
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	ld.d	$a1, $sp, 224
	ld.d	$a4, $sp, 216
	ld.d	$a5, $sp, 208
	ldx.d	$a2, $s2, $s7
	ld.d	$a6, $sp, 200
	ld.d	$a7, $sp, 192
	ldx.d	$a3, $s0, $s7
	ld.d	$a2, $a2, 16
	add.d	$t0, $s5, $s7
	st.d	$t0, $sp, 32
	st.d	$s4, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	addi.d	$a2, $sp, 244
	addi.d	$a3, $sp, 244
	st.d	$s6, $sp, 0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s3, $s7
	ldx.d	$a0, $s0, $s7
	ld.d	$a1, $a1, 24
	addi.d	$a2, $sp, 232
	addi.d	$a3, $sp, 224
	addi.d	$a4, $sp, 216
	addi.d	$a5, $sp, 208
	addi.d	$a6, $sp, 200
	addi.d	$a7, $sp, 192
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	ld.d	$a1, $sp, 224
	ld.d	$a4, $sp, 216
	ld.d	$a5, $sp, 208
	ldx.d	$a2, $s2, $s7
	ld.d	$a6, $sp, 200
	ld.d	$a7, $sp, 192
	ldx.d	$a3, $s0, $s7
	ld.d	$a2, $a2, 16
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	add.d	$t0, $t0, $s7
	st.d	$t0, $sp, 32
	st.d	$s4, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	addi.d	$a2, $sp, 244
	addi.d	$a3, $sp, 244
	st.d	$s6, $sp, 0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 8
	beq	$fp, $s7, .LBB3_27
.LBB3_25:                               # =>This Inner Loop Header: Depth=1
	beqz	$s7, .LBB3_23
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=1
	st.d	$zero, $sp, 256
	st.w	$zero, $sp, 264
	ld.w	$a0, $s8, 0
	st.d	$zero, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 244
	b	.LBB3_24
.LBB3_27:                               # %._crit_edge258
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	st.d	$s5, $t5, 88
	ld.d	$a0, $s2, 0
	ld.w	$a1, $t5, 24
	ld.w	$a2, $t5, 28
	ld.w	$a3, $t5, 32
	ld.wu	$a0, $a0, 72
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	st.d	$a4, $t5, 96
	mul.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $a3
	srli.d	$a2, $a0, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	div.w	$a2, $a2, $a1
	alsl.d	$a0, $a0, $a0, 2
	bstrpick.d	$a3, $a0, 31, 31
	add.w	$a0, $a0, $a3
	srai.d	$a0, $a0, 1
	div.w	$a0, $a0, $a1
	add.d	$a1, $a0, $a2
	st.w	$a1, $t5, 108
	ori	$a2, $zero, 2
	ori	$a0, $zero, 1
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	ld.d	$t6, $sp, 136                   # 8-byte Folded Reload
	bltu	$t6, $a2, .LBB3_35
# %bb.28:                               # %.lr.ph261
	ori	$a2, $zero, 9
	ori	$a0, $zero, 1
	bltu	$t6, $a2, .LBB3_32
# %bb.29:                               # %vector.ph
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a2, $a0, -1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a0, $a2
	bstrins.d	$a0, $a4, 2, 0
	vori.b	$vr0, $vr4, 0
	vinsgr2vr.w	$vr0, $a1, 0
	addi.d	$a1, $s2, 32
	vrepli.w	$vr1, 5
	move	$a4, $a3
	.p2align	4, , 16
.LBB3_30:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, -24
	ld.d	$a6, $a1, -16
	ld.d	$a7, $a1, -8
	ld.d	$t0, $a1, 0
	ld.d	$t1, $a1, 8
	ld.d	$t2, $a1, 16
	ld.d	$t3, $a1, 24
	ld.d	$t4, $a1, 32
	ld.w	$a5, $a5, 72
	ld.w	$a6, $a6, 72
	ld.w	$a7, $a7, 72
	ld.w	$t0, $t0, 72
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr2, $a6, 1
	vinsgr2vr.w	$vr2, $a7, 2
	vinsgr2vr.w	$vr2, $t0, 3
	ld.w	$a5, $t1, 72
	ld.w	$a6, $t2, 72
	ld.w	$a7, $t3, 72
	ld.w	$t0, $t4, 72
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	vmadd.w	$vr0, $vr2, $vr1
	vmadd.w	$vr4, $vr3, $vr1
	addi.d	$a4, $a4, -8
	addi.d	$a1, $a1, 64
	bnez	$a4, .LBB3_30
# %bb.31:                               # %middle.block
	vadd.w	$vr0, $vr4, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a2, $a3, .LBB3_34
.LBB3_32:                               # %scalar.ph.preheader
	alsl.d	$a2, $a0, $s2, 3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB3_33:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.w	$a3, $a3, 72
	alsl.d	$a3, $a3, $a3, 2
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB3_33
.LBB3_34:                               # %._crit_edge262
	st.w	$a1, $t5, 108
	move	$a0, $t6
.LBB3_35:
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	beq	$a3, $a2, .LBB3_37
# %bb.36:
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ld.wu	$a0, $a0, 72
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 1
	add.d	$a0, $a1, $a0
	st.w	$a0, $t5, 108
.LBB3_37:
	move	$a0, $zero
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end3:
	.size	hypre_CyclicReductionSetup, .Lfunc_end3-hypre_CyclicReductionSetup
                                        # -- End function
	.globl	hypre_CyclicReduction           # -- Begin function hypre_CyclicReduction
	.p2align	5
	.type	hypre_CyclicReduction,@function
hypre_CyclicReduction:                  # @hypre_CyclicReduction
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	ld.w	$a4, $a0, 4
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a4, $a0, 8
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	ld.d	$s1, $a0, 48
	ld.d	$a4, $a0, 56
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.d	$fp, $a0, 72
	ld.d	$s0, $a0, 80
	ld.d	$a4, $a0, 88
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a4, $a0, 96
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 104
	move	$s3, $a3
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	move	$s2, $a1
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $s0, 0
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	blez	$a1, .LBB4_20
# %bb.1:                                # %.lr.ph
	move	$a6, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ori	$s6, $zero, 64
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %._crit_edge
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 8
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	bge	$a6, $a0, .LBB4_20
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_18 Depth 4
                                        #         Child Loop BB4_15 Depth 4
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a6, $a6, 1
	slli.d	$s2, $a0, 3
	add.d	$a0, $a1, $s2
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a7, 16
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a3, $t0, 16
	ld.d	$a4, $a7, 40
	ld.d	$a5, $t0, 40
	ldx.w	$a1, $a1, $s2
	st.d	$a6, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a6, $a6, 2
	ldx.w	$s7, $a4, $a6
	ldx.w	$s8, $a5, $a6
	st.w	$a1, $sp, 340
	ld.w	$a1, $a0, 4
	ld.d	$s1, $a2, 0
	ld.d	$fp, $a3, 0
	ld.d	$s3, $a7, 24
	st.w	$a1, $sp, 344
	ld.w	$a1, $a0, 8
	ld.d	$s5, $t0, 24
	st.w	$a1, $sp, 348
	addi.d	$a2, $sp, 352
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a4, $sp, 360
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB4_2
# %bb.4:                                # %.preheader1393.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	blez	$a2, .LBB4_2
# %bb.5:                                # %.preheader1393.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	blez	$a1, .LBB4_2
# %bb.6:                                # %.preheader1393.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	blez	$a0, .LBB4_2
# %bb.7:                                # %.preheader1392.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a3, $zero
	add.d	$a2, $s1, $s2
	add.d	$a5, $fp, $s2
	alsl.d	$a4, $s8, $s5, 3
	ld.w	$a6, $sp, 340
	ldx.w	$a7, $s1, $s2
	ld.w	$t0, $sp, 344
	ld.w	$t1, $a2, 4
	ld.w	$t2, $sp, 348
	ld.w	$t3, $a2, 8
	ld.w	$t4, $a2, 16
	sub.d	$t5, $a6, $a7
	sub.d	$t6, $t0, $t1
	sub.d	$t3, $t2, $t3
	sub.w	$t1, $t4, $t1
	ld.d	$t7, $sp, 216                   # 8-byte Folded Reload
	slt	$t4, $t7, $t1
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $t7, $t4
	or	$t1, $t1, $t4
	ld.w	$a2, $a2, 12
	addi.d	$t1, $t1, 1
	mul.d	$t3, $t1, $t3
	add.d	$t3, $t6, $t3
	sub.w	$a2, $a2, $a7
	slt	$a7, $t7, $a2
	maskeqz	$a2, $a2, $a7
	masknez	$a7, $t7, $a7
	or	$a2, $a2, $a7
	addi.d	$a2, $a2, 1
	mul.d	$a7, $t3, $a2
	add.w	$s0, $t5, $a7
	ldx.w	$a7, $fp, $s2
	ld.w	$t3, $a5, 4
	ld.w	$t4, $a5, 8
	ld.w	$t5, $a5, 16
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t3
	sub.d	$t2, $t2, $t4
	sub.w	$t3, $t5, $t3
	slt	$t4, $t7, $t3
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $t7, $t4
	or	$t3, $t3, $t4
	ld.w	$a5, $a5, 12
	addi.d	$t3, $t3, 1
	mul.d	$t2, $t3, $t2
	add.d	$t0, $t0, $t2
	sub.w	$a5, $a5, $a7
	slt	$a7, $t7, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t7, $a7
	or	$a5, $a5, $a7
	addi.d	$a7, $a5, 1
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	ld.w	$t2, $t5, 28
	mul.d	$a5, $t0, $a7
	add.w	$s2, $a6, $a5
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	mul.d	$t0, $a7, $t2
	mul.d	$t4, $a1, $t0
	mul.d	$a6, $t2, $a2
	ld.w	$t2, $t5, 32
	mul.d	$t5, $a1, $a6
	mul.d	$t6, $a5, $a0
	mul.d	$a7, $a7, $t3
	mul.d	$t3, $a7, $t2
	mul.d	$a2, $a2, $t1
	mul.d	$a2, $a2, $t2
	sub.d	$a6, $a6, $t6
	sub.d	$a7, $t0, $t6
	sub.d	$a2, $a2, $t5
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	sub.d	$t1, $t3, $t4
	ori	$a2, $zero, 7
	sltu	$a2, $a2, $a0
	addi.d	$t0, $a5, -1
	sltui	$t0, $t0, 1
	and	$t2, $a2, $t0
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$s4, $a2, 3
	mul.d	$t4, $s4, $a5
	slli.d	$t5, $a5, 6
	alsl.d	$t6, $s7, $s3, 3
	addi.d	$t7, $t6, 32
	slli.d	$t8, $a5, 3
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                # %._crit_edge1406.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	add.w	$s0, $a2, $s0
	addi.w	$a3, $a3, 1
	add.w	$s2, $t1, $s2
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	beq	$a3, $a2, .LBB4_2
.LBB4_9:                                # %.preheader1392.us.us.us.us.us
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_18 Depth 4
                                        #         Child Loop BB4_15 Depth 4
	move	$fp, $zero
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_10:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_11 Depth=3
	add.w	$s0, $a6, $s1
	addi.w	$fp, $fp, 1
	add.w	$s2, $a7, $ra
	beq	$fp, $a1, .LBB4_8
.LBB4_11:                               # %.preheader1391.us.us.us.us.us.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_18 Depth 4
                                        #         Child Loop BB4_15 Depth 4
	beqz	$t2, .LBB4_13
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_11 Depth=3
	add.d	$a2, $s7, $s0
	alsl.d	$a2, $a2, $s3, 3
	add.d	$t0, $s8, $s2
	alsl.d	$t0, $t0, $s5, 3
	sub.d	$a2, $a2, $t0
	bgeu	$a2, $s6, .LBB4_17
.LBB4_13:                               #   in Loop: Header=BB4_11 Depth=3
	move	$t3, $zero
	move	$ra, $s2
	move	$s1, $s0
.LBB4_14:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_11 Depth=3
	move	$s0, $zero
	move	$s2, $zero
	alsl.d	$a2, $ra, $a4, 3
	alsl.d	$t0, $s1, $t6, 3
	sub.d	$t3, $a0, $t3
	.p2align	4, , 16
.LBB4_15:                               # %scalar.ph
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a2, $s2
	fstx.d	$fa0, $t0, $s2
	add.d	$s2, $s2, $t8
	addi.w	$t3, $t3, -1
	sub.d	$s0, $s0, $a5
	bnez	$t3, .LBB4_15
# %bb.16:                               # %._crit_edge.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB4_11 Depth=3
	sub.d	$ra, $ra, $s0
	sub.d	$s1, $s1, $s0
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_17:                               # %vector.ph
                                        #   in Loop: Header=BB4_11 Depth=3
	move	$t3, $zero
	add.d	$ra, $t4, $s2
	add.d	$s1, $t4, $s0
	alsl.d	$s2, $s2, $a4, 3
	alsl.d	$a2, $s0, $t7, 3
	move	$t0, $s4
	.p2align	4, , 16
.LBB4_18:                               # %vector.body
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$s0, $s2, $t3
	xvldx	$xr0, $s2, $t3
	xvld	$xr1, $s0, 32
	add.d	$s0, $a2, $t3
	xvst	$xr0, $s0, -32
	xvstx	$xr1, $a2, $t3
	addi.d	$t0, $t0, -8
	add.d	$t3, $t3, $t5
	bnez	$t0, .LBB4_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB4_11 Depth=3
	move	$t3, $s4
	beq	$s4, $a0, .LBB4_10
	b	.LBB4_14
.LBB4_20:                               # %.preheader1390
	move	$a4, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$a1, $sp, 376
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_21:                               #   in Loop: Header=BB4_22 Depth=1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
.LBB4_22:                               # %.loopexit1389
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_28 Depth 2
                                        #       Child Loop BB4_34 Depth 3
                                        #         Child Loop BB4_36 Depth 4
                                        #           Child Loop BB4_44 Depth 5
                                        #           Child Loop BB4_41 Depth 5
                                        #     Child Loop BB4_49 Depth 2
                                        #       Child Loop BB4_54 Depth 3
                                        #         Child Loop BB4_55 Depth 4
                                        #         Child Loop BB4_59 Depth 4
                                        #           Child Loop BB4_65 Depth 5
                                        #             Child Loop BB4_67 Depth 6
                                        #               Child Loop BB4_74 Depth 7
                                        #               Child Loop BB4_78 Depth 7
	beqz	$a4, .LBB4_24
# %bb.23:                               #   in Loop: Header=BB4_22 Depth=1
	st.d	$zero, $sp, 388
	st.w	$zero, $sp, 396
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 376
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_24:                               #   in Loop: Header=BB4_22 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 24
	ld.w	$a0, $a0, 32
	st.w	$a1, $sp, 388
	st.d	$a2, $sp, 392
	st.d	$a3, $sp, 376
.LBB4_25:                               #   in Loop: Header=BB4_22 Depth=1
	st.w	$a0, $sp, 384
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	slli.d	$a3, $a4, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	ldx.d	$s5, $a2, $a3
	slli.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	ld.w	$a0, $s5, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	blez	$a0, .LBB4_46
# %bb.26:                               # %.lr.ph1488
                                        #   in Loop: Header=BB4_22 Depth=1
	move	$s0, $zero
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_27:                               # %._crit_edge1472
                                        #   in Loop: Header=BB4_28 Depth=2
	ld.w	$a0, $s5, 8
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB4_46
.LBB4_28:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_34 Depth 3
                                        #         Child Loop BB4_36 Depth 4
                                        #           Child Loop BB4_44 Depth 5
                                        #           Child Loop BB4_41 Depth 5
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $s1, 0
	ld.d	$fp, $s5, 0
	ld.d	$a2, $a0, 40
	ld.d	$a1, $a1, 16
	alsl.d	$a3, $s0, $s0, 1
	slli.d	$s6, $a3, 3
	ld.d	$s8, $a2, 0
	ld.d	$s7, $a1, 0
	add.d	$s2, $fp, $s6
	st.d	$zero, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a1, 40
	ldx.w	$a3, $fp, $s6
	slli.d	$a4, $s0, 2
	ldx.w	$s3, $a2, $a4
	st.w	$a3, $sp, 340
	ld.w	$a2, $s2, 4
	st.w	$a2, $sp, 344
	ld.w	$a2, $s2, 8
	ld.d	$fp, $a1, 24
	move	$s1, $a0
	st.w	$a2, $sp, 348
	addi.d	$a1, $sp, 376
	addi.d	$a2, $sp, 352
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a2, $sp, 360
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blez	$a3, .LBB4_27
# %bb.29:                               # %.preheader1387.lr.ph
                                        #   in Loop: Header=BB4_28 Depth=2
	blez	$a2, .LBB4_27
# %bb.30:                               # %.preheader1387.lr.ph
                                        #   in Loop: Header=BB4_28 Depth=2
	blez	$a1, .LBB4_27
# %bb.31:                               # %.preheader1387.lr.ph
                                        #   in Loop: Header=BB4_28 Depth=2
	blez	$a0, .LBB4_27
# %bb.32:                               # %.preheader1385.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_28 Depth=2
	move	$a3, $zero
	add.d	$a5, $s8, $s6
	add.d	$a6, $s7, $s6
	alsl.d	$a4, $s3, $fp, 3
	ld.w	$a7, $sp, 340
	ldx.w	$t0, $s8, $s6
	ld.w	$t1, $sp, 344
	ld.w	$t2, $a5, 4
	ld.w	$t3, $sp, 348
	ld.w	$t4, $a5, 8
	ld.w	$t5, $a5, 16
	sub.d	$t6, $a7, $t0
	sub.d	$t7, $t1, $t2
	sub.d	$t4, $t3, $t4
	sub.w	$t2, $t5, $t2
	ld.d	$t8, $sp, 216                   # 8-byte Folded Reload
	slt	$t5, $t8, $t2
	maskeqz	$t2, $t2, $t5
	masknez	$t5, $t8, $t5
	or	$t2, $t2, $t5
	ld.w	$a5, $a5, 12
	addi.d	$t2, $t2, 1
	mul.d	$t4, $t2, $t4
	add.d	$t4, $t7, $t4
	sub.w	$a5, $a5, $t0
	slt	$t0, $t8, $a5
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $t8, $t0
	or	$a5, $a5, $t0
	addi.d	$t0, $a5, 1
	mul.d	$a5, $t4, $t0
	add.w	$a5, $t6, $a5
	ldx.w	$t4, $s7, $s6
	ld.w	$t5, $a6, 4
	ld.w	$t6, $a6, 8
	ld.w	$t7, $a6, 16
	sub.d	$a7, $a7, $t4
	sub.d	$t1, $t1, $t5
	sub.d	$t3, $t3, $t6
	sub.w	$t5, $t7, $t5
	slt	$t6, $t8, $t5
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t8, $t6
	or	$t5, $t5, $t6
	ld.w	$a6, $a6, 12
	addi.d	$t5, $t5, 1
	mul.d	$t3, $t5, $t3
	add.d	$t1, $t1, $t3
	sub.w	$a6, $a6, $t4
	slt	$t3, $t8, $a6
	maskeqz	$a6, $a6, $t3
	masknez	$t3, $t8, $t3
	or	$a6, $a6, $t3
	addi.d	$t3, $a6, 1
	ld.w	$t4, $sp, 380
	mul.d	$a6, $t1, $t3
	add.w	$a6, $a7, $a6
	ld.w	$a7, $sp, 376
	mul.d	$t1, $t3, $t4
	mul.d	$t6, $a1, $t1
	mul.d	$t4, $t4, $t0
	ld.w	$t7, $sp, 384
	mul.d	$t8, $a1, $t4
	mul.d	$fp, $a7, $a0
	mul.d	$t3, $t3, $t5
	mul.d	$t3, $t3, $t7
	mul.d	$t0, $t0, $t2
	mul.d	$t2, $t0, $t7
	sub.d	$t0, $t4, $fp
	sub.d	$t1, $t1, $fp
	sub.d	$t2, $t2, $t8
	sub.d	$t3, $t3, $t6
	addi.d	$t4, $a0, -1
	bstrpick.d	$t5, $t4, 31, 0
	alsl.d	$t4, $t5, $a4, 3
	addi.d	$t4, $t4, 8
	alsl.d	$t5, $t5, $s1, 3
	addi.d	$t5, $t5, 8
	ori	$t6, $zero, 7
	sltu	$t6, $t6, $a0
	addi.d	$t7, $a7, -1
	sltui	$t7, $t7, 1
	and	$t6, $t6, $t7
	bstrpick.d	$t7, $a0, 30, 3
	slli.d	$t7, $t7, 3
	mul.d	$t8, $t7, $a7
	slli.d	$s2, $a7, 6
	slli.d	$s6, $a7, 3
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_33:                               # %._crit_edge1450.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_34 Depth=3
	add.w	$a5, $t2, $a5
	addi.w	$a3, $a3, 1
	add.w	$a6, $t3, $a6
	beq	$a3, $a2, .LBB4_27
.LBB4_34:                               # %.preheader1385.us.us.us.us.us
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_36 Depth 4
                                        #           Child Loop BB4_44 Depth 5
                                        #           Child Loop BB4_41 Depth 5
	move	$fp, $zero
	b	.LBB4_36
	.p2align	4, , 16
.LBB4_35:                               # %._crit_edge1444.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_36 Depth=4
	add.w	$a5, $t0, $a5
	addi.w	$fp, $fp, 1
	add.w	$a6, $t1, $a6
	beq	$fp, $a1, .LBB4_33
.LBB4_36:                               # %.preheader1384.us.us.us.us.us.us
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        #       Parent Loop BB4_34 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_44 Depth 5
                                        #           Child Loop BB4_41 Depth 5
	beqz	$t6, .LBB4_39
# %bb.37:                               # %vector.memcheck1874
                                        #   in Loop: Header=BB4_36 Depth=4
	alsl.d	$s3, $a6, $a4, 3
	alsl.d	$s7, $a5, $t5, 3
	alsl.d	$s4, $a5, $s1, 3
	bgeu	$s3, $s7, .LBB4_43
# %bb.38:                               # %vector.memcheck1874
                                        #   in Loop: Header=BB4_36 Depth=4
	alsl.d	$s7, $a6, $t4, 3
	bgeu	$s4, $s7, .LBB4_43
.LBB4_39:                               #   in Loop: Header=BB4_36 Depth=4
	move	$s4, $zero
.LBB4_40:                               # %scalar.ph1883.preheader
                                        #   in Loop: Header=BB4_36 Depth=4
	move	$s3, $zero
	move	$s7, $zero
	alsl.d	$s8, $a6, $a4, 3
	alsl.d	$ra, $a5, $s1, 3
	sub.d	$s4, $a0, $s4
	.p2align	4, , 16
.LBB4_41:                               # %scalar.ph1883
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        #       Parent Loop BB4_34 Depth=3
                                        #         Parent Loop BB4_36 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.d	$fa0, $ra, $s7
	fldx.d	$fa1, $s8, $s7
	fdiv.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $s8, $s7
	add.d	$s7, $s7, $s6
	addi.w	$s4, $s4, -1
	sub.d	$s3, $s3, $a7
	bnez	$s4, .LBB4_41
# %bb.42:                               # %._crit_edge1444.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB4_36 Depth=4
	sub.d	$a6, $a6, $s3
	sub.d	$a5, $a5, $s3
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_43:                               # %vector.ph1885
                                        #   in Loop: Header=BB4_36 Depth=4
	move	$s7, $zero
	add.d	$a6, $t8, $a6
	add.d	$a5, $t8, $a5
	move	$s8, $t7
	.p2align	4, , 16
.LBB4_44:                               # %vector.body1888
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        #       Parent Loop BB4_34 Depth=3
                                        #         Parent Loop BB4_36 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.d	$ra, $s4, $s7
	xvldx	$xr0, $s4, $s7
	xvld	$xr1, $ra, 32
	add.d	$ra, $s3, $s7
	xvldx	$xr2, $s3, $s7
	xvld	$xr3, $ra, 32
	xvfdiv.d	$xr0, $xr2, $xr0
	xvfdiv.d	$xr1, $xr3, $xr1
	xvstx	$xr0, $s3, $s7
	xvst	$xr1, $ra, 32
	addi.d	$s8, $s8, -8
	add.d	$s7, $s7, $s2
	bnez	$s8, .LBB4_44
# %bb.45:                               # %middle.block1897
                                        #   in Loop: Header=BB4_36 Depth=4
	move	$s4, $t7
	beq	$t7, $a0, .LBB4_35
	b	.LBB4_40
	.p2align	4, , 16
.LBB4_46:                               # %._crit_edge1489
                                        #   in Loop: Header=BB4_22 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB4_80
# %bb.47:                               #   in Loop: Header=BB4_22 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	addi.d	$a4, $a5, 1
	slli.d	$a1, $a4, 3
	ldx.d	$a1, $a3, $a1
	ld.d	$a2, $a0, 8
	ld.d	$a1, $a1, 8
	move	$a0, $zero
	ld.d	$s0, $a2, 16
	ld.d	$a2, $a1, 8
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 16
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a3, 3
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$s4, $zero, 32
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB4_49
	.p2align	4, , 16
.LBB4_48:                               # %._crit_edge1552
                                        #   in Loop: Header=BB4_49 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	move	$a2, $zero
	beqz	$a1, .LBB4_21
.LBB4_49:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_54 Depth 3
                                        #         Child Loop BB4_55 Depth 4
                                        #         Child Loop BB4_59 Depth 4
                                        #           Child Loop BB4_65 Depth 5
                                        #             Child Loop BB4_67 Depth 6
                                        #               Child Loop BB4_74 Depth 7
                                        #               Child Loop BB4_78 Depth 7
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_51
# %bb.50:                               #   in Loop: Header=BB4_49 Depth=2
	ld.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	bgtz	$a1, .LBB4_52
	b	.LBB4_48
	.p2align	4, , 16
.LBB4_51:                               #   in Loop: Header=BB4_49 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 24
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 400
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	blez	$a1, .LBB4_48
.LBB4_52:                               # %.preheader1386.preheader
                                        #   in Loop: Header=BB4_49 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a4, $zero
	b	.LBB4_54
	.p2align	4, , 16
.LBB4_53:                               # %._crit_edge1549
                                        #   in Loop: Header=BB4_54 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB4_48
.LBB4_54:                               # %.preheader1386
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_49 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_55 Depth 4
                                        #         Child Loop BB4_59 Depth 4
                                        #           Child Loop BB4_65 Depth 5
                                        #             Child Loop BB4_67 Depth 6
                                        #               Child Loop BB4_74 Depth 7
                                        #               Child Loop BB4_78 Depth 7
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	addi.d	$s1, $a4, -1
	slli.d	$a2, $a4, 3
	addi.d	$a2, $a2, -8
	slli.d	$a3, $a4, 2
	addi.d	$fp, $a3, -4
	slli.d	$a3, $a4, 4
	alsl.d	$a3, $a4, $a3, 3
	addi.d	$a4, $a4, -1
	addi.d	$s3, $a3, -12
	.p2align	4, , 16
.LBB4_55:                               #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_49 Depth=2
                                        #       Parent Loop BB4_54 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a3, $s0, $fp
	ld.w	$a3, $a3, 4
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, 8
	addi.d	$fp, $fp, 4
	addi.w	$a4, $a4, 1
	addi.d	$s3, $s3, 24
	bne	$a3, $a0, .LBB4_55
# %bb.56:                               #   in Loop: Header=BB4_54 Depth=3
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $s0, 0
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	ld.d	$a4, $a3, 16
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	ld.d	$a7, $a0, 40
	ld.d	$s8, $a4, 0
	ldx.d	$s2, $a5, $a2
	ld.d	$a2, $a6, 16
	ld.d	$a4, $a7, 0
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	add.d	$s7, $s8, $s3
	ld.d	$a4, $a3, 40
	ld.d	$a2, $a2, 0
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a2, $a6, 40
	ld.d	$a3, $a3, 24
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	ldx.w	$a3, $a4, $fp
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a3, $a6, 24
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	ldx.w	$a1, $a2, $a1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a1, 40
	move	$s0, $a0
	ld.d	$a0, $a1, 24
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ldx.w	$a0, $a2, $fp
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 364
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 368
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 372
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.w	$a0, $s7, 4
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.w	$s5, $s7, -8
	st.d	$s3, $sp, 232                   # 8-byte Folded Spill
	st.d	$s8, $sp, 224                   # 8-byte Folded Spill
	ldx.w	$s3, $s8, $s3
	st.d	$s7, $sp, 200                   # 8-byte Folded Spill
	ld.w	$s8, $s7, -12
	ld.d	$a0, $s6, 0
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 364
	st.w	$zero, $sp, 368
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 8
	blez	$a1, .LBB4_53
# %bb.57:                               # %.lr.ph1548
                                        #   in Loop: Header=BB4_54 Depth=3
	move	$s1, $a0
	move	$t4, $zero
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s6, $a1, $a0, 3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $s5
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	slt	$a1, $t0, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t0, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$a1, $s3, $s8
	slt	$a2, $t0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $t0, $a2
	or	$a1, $a1, $a2
	ld.d	$a2, $a3, 40
	addi.d	$a1, $a1, 1
	ld.d	$t3, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a4, $t3, 4
	ld.w	$a5, $t3, -8
	ldx.w	$a2, $a2, $fp
	ld.w	$a6, $sp, 368
	ld.w	$a7, $sp, 372
	sub.w	$a4, $a4, $a5
	slt	$a5, $t0, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t0, $a5
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	mul.d	$a4, $a4, $a7
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ldx.w	$a5, $a5, $t1
	ld.w	$a7, $t3, -12
	ld.d	$a3, $a3, 24
	add.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 364
	sub.w	$a5, $a5, $a7
	slt	$a7, $t0, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t0, $a7
	or	$a5, $a5, $a7
	addi.d	$a5, $a5, 1
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$s5, $t0, $a7, 3
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	add.d	$a1, $t0, $a0
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a7, 3
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	mul.d	$a1, $a4, $a5
	add.w	$a1, $a6, $a1
	add.d	$a4, $a2, $a1
	alsl.d	$a4, $a4, $a3, 3
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	alsl.d	$a1, $a1, $a2, 3
	add.d	$s8, $a3, $a1
	slli.d	$a1, $t0, 3
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s7, $a7, $a0
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	b	.LBB4_59
	.p2align	4, , 16
.LBB4_58:                               # %._crit_edge1530
                                        #   in Loop: Header=BB4_59 Depth=4
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $s2, 8
	ld.d	$t4, $sp, 248                   # 8-byte Folded Reload
	addi.d	$t4, $t4, 1
	bge	$t4, $a0, .LBB4_53
.LBB4_59:                               #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_49 Depth=2
                                        #       Parent Loop BB4_54 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_65 Depth 5
                                        #             Child Loop BB4_67 Depth 6
                                        #               Child Loop BB4_74 Depth 7
                                        #               Child Loop BB4_78 Depth 7
	ld.d	$a0, $s2, 0
	slli.d	$a1, $t4, 4
	st.d	$t4, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a1, $t4, $a1, 3
	ldx.w	$a2, $a0, $a1
	add.d	$s2, $a0, $a1
	st.w	$a2, $sp, 340
	ld.w	$a0, $s2, 4
	st.w	$a0, $sp, 344
	ld.w	$a0, $s2, 8
	st.w	$a0, $sp, 348
	addi.d	$a0, $sp, 340
	addi.d	$a1, $sp, 388
	addi.d	$a2, $sp, 376
	addi.d	$a3, $sp, 328
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 376
	addi.d	$a2, $sp, 352
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a3, $sp, 356
	ld.w	$a4, $sp, 360
	slt	$a1, $a0, $a3
	masknez	$a2, $a0, $a1
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a4
	masknez	$a1, $a1, $a2
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	blez	$a1, .LBB4_58
# %bb.60:                               # %.preheader1382.lr.ph
                                        #   in Loop: Header=BB4_59 Depth=4
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	blez	$a1, .LBB4_58
# %bb.61:                               # %.preheader1382.lr.ph
                                        #   in Loop: Header=BB4_59 Depth=4
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	blez	$a1, .LBB4_58
# %bb.62:                               # %.preheader1382.lr.ph
                                        #   in Loop: Header=BB4_59 Depth=4
	blez	$a0, .LBB4_58
# %bb.63:                               # %.preheader1381.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_59 Depth=4
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	ld.w	$a1, $sp, 340
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a3, $a7, -12
	ld.w	$a5, $sp, 344
	ld.w	$a2, $a7, -8
	ld.w	$a6, $sp, 348
	ld.w	$a4, $a7, -4
	ld.w	$a7, $a7, 4
	sub.d	$t1, $a1, $a3
	sub.d	$t0, $a5, $a2
	sub.d	$a4, $a6, $a4
	sub.w	$a2, $a7, $a2
	ld.d	$t6, $sp, 216                   # 8-byte Folded Reload
	slt	$a7, $t6, $a2
	maskeqz	$a2, $a2, $a7
	masknez	$a7, $t6, $a7
	or	$a2, $a2, $a7
	ld.d	$t3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a7, $a7, $t3
	addi.d	$a2, $a2, 1
	mul.d	$a4, $a2, $a4
	add.d	$a4, $t0, $a4
	sub.w	$a3, $a7, $a3
	slt	$a7, $t6, $a3
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t6, $a7
	or	$a3, $a3, $a7
	addi.d	$t0, $a3, 1
	mul.d	$a3, $a4, $t0
	add.w	$a4, $t1, $a3
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a3, $t2, -12
	ld.w	$a7, $t2, -8
	ld.w	$t1, $t2, -4
	ld.w	$t2, $t2, 4
	sub.d	$a1, $a1, $a3
	sub.d	$a5, $a5, $a7
	sub.d	$a6, $a6, $t1
	sub.w	$a7, $t2, $a7
	slt	$t1, $t6, $a7
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $t6, $t1
	or	$a7, $a7, $t1
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ldx.w	$t1, $t1, $t3
	addi.d	$t2, $a7, 1
	mul.d	$a6, $t2, $a6
	add.d	$a5, $a5, $a6
	sub.w	$a3, $t1, $a3
	slt	$a6, $t6, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $t6, $a6
	or	$a3, $a3, $a6
	addi.d	$a3, $a3, 1
	mul.d	$a5, $a5, $a3
	add.w	$a5, $a1, $a5
	ld.w	$a1, $sp, 328
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a6, $t7, 0
	ld.w	$a7, $sp, 332
	ld.w	$t1, $t7, 4
	ld.w	$t3, $sp, 336
	ld.w	$t4, $t7, 8
	ld.w	$t5, $t7, 16
	sub.d	$a1, $a1, $a6
	sub.d	$a7, $a7, $t1
	sub.d	$t3, $t3, $t4
	sub.w	$t1, $t5, $t1
	slt	$t4, $t6, $t1
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $t6, $t4
	or	$t1, $t1, $t4
	ld.w	$t4, $t7, 12
	addi.d	$t5, $t1, 1
	mul.d	$t1, $t5, $t3
	add.d	$a7, $a7, $t1
	sub.w	$a6, $t4, $a6
	slt	$t1, $t6, $a6
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t6, $t1
	or	$a6, $a6, $t1
	addi.d	$t3, $a6, 1
	ld.w	$t1, $sp, 380
	mul.d	$a6, $a7, $t3
	add.w	$a6, $a1, $a6
	ld.w	$a7, $sp, 376
	mul.d	$a1, $t1, $a3
	ld.d	$t8, $sp, 320                   # 8-byte Folded Reload
	mul.d	$t4, $t8, $a1
	mul.d	$t1, $t1, $t0
	ld.w	$t6, $sp, 384
	mul.d	$t7, $t8, $t1
	mul.d	$a3, $a3, $t2
	mul.d	$t2, $a7, $a0
	mul.d	$a3, $a3, $t6
	mul.d	$a2, $t0, $a2
	mul.d	$a2, $a2, $t6
	sub.d	$t0, $t1, $t2
	sub.d	$t1, $a1, $t2
	sub.d	$t2, $t3, $a0
	sub.d	$a1, $a2, $t7
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	sub.d	$a1, $a3, $t4
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	sub.d	$a1, $t5, $t8
	mul.d	$a1, $a1, $t3
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ori	$a1, $zero, 7
	sltu	$a1, $a1, $a0
	addi.d	$a2, $a7, -1
	sltui	$a2, $a2, 1
	and	$t6, $a1, $a2
	bstrpick.d	$a1, $a0, 30, 2
	slli.d	$t3, $a1, 2
	mul.d	$a1, $t3, $a7
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	slli.d	$s2, $a7, 5
	slli.d	$ra, $a7, 3
	b	.LBB4_65
	.p2align	4, , 16
.LBB4_64:                               # %._crit_edge1503.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_65 Depth=5
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a4
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.w	$a5, $a1, $a5
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	beq	$a2, $a1, .LBB4_58
.LBB4_65:                               # %.preheader1381.us.us.us.us.us
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_49 Depth=2
                                        #       Parent Loop BB4_54 Depth=3
                                        #         Parent Loop BB4_59 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_67 Depth 6
                                        #               Child Loop BB4_74 Depth 7
                                        #               Child Loop BB4_78 Depth 7
	move	$a2, $zero
	b	.LBB4_67
	.p2align	4, , 16
.LBB4_66:                               # %._crit_edge1495.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_67 Depth=6
	add.w	$a4, $t0, $a4
	add.w	$a5, $t1, $a5
	addi.w	$a2, $a2, 1
	add.w	$a6, $t2, $a6
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_64
.LBB4_67:                               # %.preheader1380.us.us.us.us.us.us
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_49 Depth=2
                                        #       Parent Loop BB4_54 Depth=3
                                        #         Parent Loop BB4_59 Depth=4
                                        #           Parent Loop BB4_65 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB4_74 Depth 7
                                        #               Child Loop BB4_78 Depth 7
	beqz	$t6, .LBB4_76
# %bb.68:                               # %vector.memcheck1841
                                        #   in Loop: Header=BB4_67 Depth=6
	alsl.d	$t4, $a6, $s6, 3
	alsl.d	$a1, $a5, $s5, 3
	sub.d	$a1, $t4, $a1
	move	$t7, $zero
	bltu	$a1, $s4, .LBB4_77
# %bb.69:                               # %vector.memcheck1841
                                        #   in Loop: Header=BB4_67 Depth=6
	alsl.d	$a1, $a4, $s0, 3
	sub.d	$a1, $t4, $a1
	bltu	$a1, $s4, .LBB4_77
# %bb.70:                               # %vector.memcheck1841
                                        #   in Loop: Header=BB4_67 Depth=6
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	sub.d	$a1, $t4, $a1
	bltu	$a1, $s4, .LBB4_77
# %bb.71:                               # %vector.memcheck1841
                                        #   in Loop: Header=BB4_67 Depth=6
	alsl.d	$a1, $a4, $s1, 3
	sub.d	$a1, $t4, $a1
	bltu	$a1, $s4, .LBB4_77
# %bb.72:                               # %vector.memcheck1841
                                        #   in Loop: Header=BB4_67 Depth=6
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	sub.d	$a1, $t4, $a1
	bltu	$a1, $s4, .LBB4_77
# %bb.73:                               # %vector.ph1852
                                        #   in Loop: Header=BB4_67 Depth=6
	move	$a3, $zero
	slli.d	$fp, $a5, 3
	slli.d	$t5, $a4, 3
	add.d	$a6, $t3, $a6
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	add.d	$a5, $a1, $a5
	add.d	$a4, $a1, $a4
	add.d	$a1, $s1, $t5
	add.d	$t5, $s0, $t5
	add.d	$t7, $s8, $fp
	add.d	$t8, $s7, $fp
	add.d	$fp, $s5, $fp
	move	$s3, $t3
	.p2align	4, , 16
.LBB4_74:                               # %vector.body1855
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_49 Depth=2
                                        #       Parent Loop BB4_54 Depth=3
                                        #         Parent Loop BB4_59 Depth=4
                                        #           Parent Loop BB4_65 Depth=5
                                        #             Parent Loop BB4_67 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	xvldx	$xr0, $fp, $a3
	xvldx	$xr1, $t5, $a3
	xvldx	$xr2, $t8, $a3
	xvldx	$xr3, $a1, $a3
	xvldx	$xr4, $t7, $a3
	xvbitrevi.d	$xr1, $xr1, 63
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvbitrevi.d	$xr1, $xr3, 63
	xvfmadd.d	$xr0, $xr1, $xr4, $xr0
	xvst	$xr0, $t4, 0
	addi.d	$t4, $t4, 32
	addi.d	$s3, $s3, -4
	add.d	$a3, $a3, $s2
	bnez	$s3, .LBB4_74
# %bb.75:                               # %middle.block1866
                                        #   in Loop: Header=BB4_67 Depth=6
	move	$t7, $t3
	beq	$t3, $a0, .LBB4_66
	b	.LBB4_77
	.p2align	4, , 16
.LBB4_76:                               #   in Loop: Header=BB4_67 Depth=6
	move	$t7, $zero
.LBB4_77:                               # %scalar.ph1850.preheader
                                        #   in Loop: Header=BB4_67 Depth=6
	move	$t4, $zero
	move	$t5, $zero
	alsl.d	$a3, $a6, $s6, 3
	alsl.d	$fp, $a5, $s5, 3
	alsl.d	$s3, $a5, $s7, 3
	alsl.d	$s4, $a5, $s8, 3
	alsl.d	$t8, $a4, $s0, 3
	alsl.d	$a1, $a4, $s1, 3
	sub.d	$t7, $a0, $t7
	.p2align	4, , 16
.LBB4_78:                               # %scalar.ph1850
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_49 Depth=2
                                        #       Parent Loop BB4_54 Depth=3
                                        #         Parent Loop BB4_59 Depth=4
                                        #           Parent Loop BB4_65 Depth=5
                                        #             Parent Loop BB4_67 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $fp, $t5
	fldx.d	$fa1, $t8, $t5
	fldx.d	$fa2, $s3, $t5
	fldx.d	$fa3, $a1, $t5
	fldx.d	$fa4, $s4, $t5
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fneg.d	$fa1, $fa3
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a6, $a6, 1
	addi.d	$a3, $a3, 8
	add.d	$t5, $t5, $ra
	addi.w	$t7, $t7, -1
	sub.d	$t4, $t4, $a7
	bnez	$t7, .LBB4_78
# %bb.79:                               # %._crit_edge1495.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB4_67 Depth=6
	sub.d	$a5, $a5, $t4
	sub.d	$a4, $a4, $t4
	ori	$s4, $zero, 32
	b	.LBB4_66
.LBB4_80:
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_139
# %bb.81:                               # %.lr.ph1656
	addi.w	$a0, $a1, -2
	b	.LBB4_83
	.p2align	4, , 16
.LBB4_82:                               #   in Loop: Header=BB4_83 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a1, -1
	blez	$a1, .LBB4_139
.LBB4_83:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_89 Depth 2
                                        #       Child Loop BB4_90 Depth 3
                                        #       Child Loop BB4_97 Depth 3
                                        #         Child Loop BB4_99 Depth 4
                                        #           Child Loop BB4_105 Depth 5
                                        #           Child Loop BB4_103 Depth 5
                                        #     Child Loop BB4_109 Depth 2
                                        #       Child Loop BB4_114 Depth 3
                                        #         Child Loop BB4_117 Depth 4
                                        #           Child Loop BB4_123 Depth 5
                                        #             Child Loop BB4_125 Depth 6
                                        #               Child Loop BB4_132 Depth 7
                                        #               Child Loop BB4_137 Depth 7
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_85
# %bb.84:                               #   in Loop: Header=BB4_83 Depth=1
	st.d	$zero, $sp, 388
	st.w	$zero, $sp, 396
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 376
	b	.LBB4_86
	.p2align	4, , 16
.LBB4_85:                               #   in Loop: Header=BB4_83 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 24
	ld.w	$a0, $a0, 32
	st.w	$a1, $sp, 388
	st.d	$a2, $sp, 392
	st.d	$a3, $sp, 376
.LBB4_86:                               #   in Loop: Header=BB4_83 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 8
	ld.d	$a1, $a1, 8
	st.w	$a0, $sp, 384
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	ld.d	$a3, $a1, 8
	slli.d	$a0, $a0, 1
	st.w	$a0, $a2, 0
	ld.w	$a0, $a3, 8
	blez	$a0, .LBB4_107
# %bb.87:                               # %.preheader1378.preheader
                                        #   in Loop: Header=BB4_83 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s1, $a0, 16
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$a2, $zero
	move	$s4, $zero
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	b	.LBB4_89
	.p2align	4, , 16
.LBB4_88:                               # %._crit_edge1583
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 8
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bge	$a2, $a0, .LBB4_107
.LBB4_89:                               # %.preheader1378
                                        #   Parent Loop BB4_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_90 Depth 3
                                        #       Child Loop BB4_97 Depth 3
                                        #         Child Loop BB4_99 Depth 4
                                        #           Child Loop BB4_105 Depth 5
                                        #           Child Loop BB4_103 Depth 5
	slli.d	$s3, $a2, 2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s3
	slli.d	$s6, $s4, 2
	slli.d	$a1, $s4, 4
	alsl.d	$a1, $s4, $a1, 3
	addi.d	$s4, $s4, -1
	addi.d	$s2, $a1, -12
	.p2align	4, , 16
.LBB4_90:                               #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a1, $s1, $s6
	addi.d	$s6, $s6, 4
	addi.w	$s4, $s4, 1
	addi.d	$s2, $s2, 24
	bne	$a1, $a0, .LBB4_90
# %bb.91:                               #   in Loop: Header=BB4_89 Depth=2
	ld.d	$a0, $a3, 0
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a2, 1
	slli.d	$fp, $a1, 3
	ldx.w	$a1, $a0, $fp
	add.d	$s0, $a0, $fp
	st.w	$a1, $sp, 328
	ld.w	$a0, $s0, 4
	st.w	$a0, $sp, 332
	ld.w	$a0, $s0, 8
	st.w	$a0, $sp, 336
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 388
	addi.d	$a2, $sp, 376
	addi.d	$a3, $sp, 340
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	ld.d	$a2, $a2, 0
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 40
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s5, $a0, 24
	ld.d	$a0, $a1, 40
	add.d	$a2, $a2, $s6
	ld.w	$s6, $a2, -4
	ld.d	$s7, $a1, 24
	ldx.w	$s8, $a0, $s3
	addi.d	$a1, $sp, 352
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a4, $sp, 360
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB4_88
# %bb.92:                               # %.preheader1376.lr.ph
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	blez	$a2, .LBB4_88
# %bb.93:                               # %.preheader1376.lr.ph
                                        #   in Loop: Header=BB4_89 Depth=2
	blez	$a1, .LBB4_88
# %bb.94:                               # %.preheader1376.lr.ph
                                        #   in Loop: Header=BB4_89 Depth=2
	blez	$a0, .LBB4_88
# %bb.95:                               # %.preheader1375.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_89 Depth=2
	move	$a3, $zero
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	add.d	$a2, $t4, $s2
	ld.d	$t3, $sp, 312                   # 8-byte Folded Reload
	add.d	$a4, $t3, $fp
	ld.w	$a5, $sp, 340
	ld.w	$a6, $a2, -12
	ld.w	$a7, $sp, 344
	ld.w	$t0, $a2, -8
	ld.w	$t1, $sp, 348
	ld.w	$t2, $a2, -4
	ld.w	$a2, $a2, 4
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.d	$t1, $t1, $t2
	sub.w	$a2, $a2, $t0
	ld.d	$t6, $sp, 216                   # 8-byte Folded Reload
	slt	$t0, $t6, $a2
	maskeqz	$a2, $a2, $t0
	masknez	$t0, $t6, $t0
	or	$a2, $a2, $t0
	ldx.w	$t0, $t4, $s2
	addi.d	$t2, $a2, 1
	mul.d	$a2, $t2, $t1
	add.d	$a2, $a7, $a2
	sub.w	$a6, $t0, $a6
	slt	$a7, $t6, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t6, $a7
	or	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	mul.d	$a2, $a2, $a6
	add.w	$a2, $a5, $a2
	ld.w	$a5, $sp, 328
	ldx.w	$a7, $t3, $fp
	ld.w	$t0, $sp, 332
	ld.w	$t1, $a4, 4
	ld.w	$t3, $sp, 336
	ld.w	$t4, $a4, 8
	ld.w	$t5, $a4, 16
	sub.d	$a5, $a5, $a7
	sub.d	$t0, $t0, $t1
	sub.d	$t3, $t3, $t4
	sub.w	$t1, $t5, $t1
	slt	$t4, $t6, $t1
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $t6, $t4
	or	$t1, $t1, $t4
	ld.w	$a4, $a4, 12
	addi.d	$t1, $t1, 1
	mul.d	$t3, $t1, $t3
	add.d	$t0, $t0, $t3
	sub.w	$a4, $a4, $a7
	slt	$a7, $t6, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $t6, $a7
	or	$a4, $a4, $a7
	addi.d	$a7, $a4, 1
	mul.d	$a4, $t0, $a7
	ld.w	$t0, $sp, 380
	add.w	$s3, $a5, $a4
	ld.w	$a4, $sp, 376
	ld.w	$a5, $sp, 384
	mul.d	$t0, $t0, $a6
	mul.d	$t3, $a1, $t0
	mul.d	$a6, $a6, $t2
	mul.d	$t2, $a6, $a5
	mul.d	$a5, $a0, $a4
	sub.d	$a5, $t0, $a5
	sub.d	$a6, $a7, $a0
	sub.d	$t0, $t2, $t3
	st.d	$t0, $sp, 312                   # 8-byte Folded Spill
	sub.d	$t0, $t1, $a1
	mul.d	$t0, $t0, $a7
	ori	$a7, $zero, 7
	sltu	$a7, $a7, $a0
	addi.d	$t1, $a4, -1
	sltui	$t1, $t1, 1
	and	$t1, $a7, $t1
	bstrpick.d	$a7, $a0, 30, 3
	slli.d	$t2, $a7, 3
	mul.d	$t3, $t2, $a4
	alsl.d	$t4, $s6, $s5, 3
	addi.d	$t5, $t4, 32
	slli.d	$t6, $a4, 6
	alsl.d	$t7, $s8, $s7, 3
	addi.d	$t8, $t7, 32
	slli.d	$fp, $a4, 3
	b	.LBB4_97
	.p2align	4, , 16
.LBB4_96:                               # %._crit_edge1564.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_97 Depth=3
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	add.w	$a2, $a7, $a2
	addi.w	$a3, $a3, 1
	add.w	$s3, $s3, $t0
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
	beq	$a3, $a7, .LBB4_88
.LBB4_97:                               # %.preheader1375.us.us.us.us.us
                                        #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_89 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_99 Depth 4
                                        #           Child Loop BB4_105 Depth 5
                                        #           Child Loop BB4_103 Depth 5
	move	$s0, $zero
	b	.LBB4_99
	.p2align	4, , 16
.LBB4_98:                               # %._crit_edge1558.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_99 Depth=4
	add.w	$a2, $a5, $s2
	addi.w	$s0, $s0, 1
	add.w	$s3, $a6, $ra
	beq	$s0, $a1, .LBB4_96
.LBB4_99:                               # %.preheader1374.us.us.us.us.us.us
                                        #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_89 Depth=2
                                        #       Parent Loop BB4_97 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_105 Depth 5
                                        #           Child Loop BB4_103 Depth 5
	beqz	$t1, .LBB4_101
# %bb.100:                              # %vector.memcheck1977
                                        #   in Loop: Header=BB4_99 Depth=4
	add.d	$a7, $s6, $a2
	alsl.d	$a7, $a7, $s5, 3
	add.d	$s2, $s8, $s3
	alsl.d	$s2, $s2, $s7, 3
	sub.d	$a7, $a7, $s2
	ori	$s2, $zero, 64
	bgeu	$a7, $s2, .LBB4_104
.LBB4_101:                              #   in Loop: Header=BB4_99 Depth=4
	move	$a7, $zero
	move	$ra, $s3
	move	$s2, $a2
.LBB4_102:                              # %scalar.ph1979.preheader
                                        #   in Loop: Header=BB4_99 Depth=4
	alsl.d	$a2, $ra, $t7, 3
	alsl.d	$s3, $s2, $t4, 3
	sub.d	$a7, $a0, $a7
	.p2align	4, , 16
.LBB4_103:                              # %scalar.ph1979
                                        #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_89 Depth=2
                                        #       Parent Loop BB4_97 Depth=3
                                        #         Parent Loop BB4_99 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $s3, 0
	add.d	$s2, $s2, $a4
	addi.d	$ra, $ra, 1
	addi.d	$a2, $a2, 8
	addi.w	$a7, $a7, -1
	add.d	$s3, $s3, $fp
	bnez	$a7, .LBB4_103
	b	.LBB4_98
	.p2align	4, , 16
.LBB4_104:                              # %vector.ph1981
                                        #   in Loop: Header=BB4_99 Depth=4
	add.d	$ra, $t2, $s3
	add.d	$s2, $t3, $a2
	alsl.d	$a2, $a2, $t5, 3
	alsl.d	$a7, $s3, $t8, 3
	move	$s3, $t2
	.p2align	4, , 16
.LBB4_105:                              # %vector.body1984
                                        #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_89 Depth=2
                                        #       Parent Loop BB4_97 Depth=3
                                        #         Parent Loop BB4_99 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	add.d	$a2, $a2, $t6
	addi.d	$s3, $s3, -8
	addi.d	$a7, $a7, 64
	bnez	$s3, .LBB4_105
# %bb.106:                              # %middle.block1991
                                        #   in Loop: Header=BB4_99 Depth=4
	move	$a7, $t2
	beq	$t2, $a0, .LBB4_98
	b	.LBB4_102
	.p2align	4, , 16
.LBB4_107:                              # %.preheader1379
                                        #   in Loop: Header=BB4_83 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$fp, $a2, $a1, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	b	.LBB4_109
	.p2align	4, , 16
.LBB4_108:                              # %._crit_edge1652
                                        #   in Loop: Header=BB4_109 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	move	$a2, $zero
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	beqz	$a1, .LBB4_82
.LBB4_109:                              #   Parent Loop BB4_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_114 Depth 3
                                        #         Child Loop BB4_117 Depth 4
                                        #           Child Loop BB4_123 Depth 5
                                        #             Child Loop BB4_125 Depth 6
                                        #               Child Loop BB4_132 Depth 7
                                        #               Child Loop BB4_137 Depth 7
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_111
# %bb.110:                              #   in Loop: Header=BB4_109 Depth=2
	ld.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	ld.d	$a1, $fp, 0
	ldx.d	$a2, $a1, $a0
	ld.w	$a0, $a2, 8
	bgtz	$a0, .LBB4_112
	b	.LBB4_108
	.p2align	4, , 16
.LBB4_111:                              #   in Loop: Header=BB4_109 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 24
	ld.d	$a0, $fp, 0
	addi.d	$a2, $sp, 400
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ld.d	$a1, $fp, 0
	ldx.d	$a2, $a1, $a0
	ld.w	$a0, $a2, 8
	blez	$a0, .LBB4_108
.LBB4_112:                              # %.lr.ph1651.preheader
                                        #   in Loop: Header=BB4_109 Depth=2
	move	$s6, $zero
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	b	.LBB4_114
	.p2align	4, , 16
.LBB4_113:                              # %._crit_edge1648
                                        #   in Loop: Header=BB4_114 Depth=3
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB4_108
.LBB4_114:                              # %.lr.ph1651
                                        #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_117 Depth 4
                                        #           Child Loop BB4_123 Depth 5
                                        #             Child Loop BB4_125 Depth 6
                                        #               Child Loop BB4_132 Depth 7
                                        #               Child Loop BB4_137 Depth 7
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $s1, 0
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 16
	ld.d	$a3, $a0, 40
	slli.d	$a4, $s6, 3
	ldx.d	$s7, $a2, $a4
	ld.d	$fp, $a1, 0
	ld.d	$a1, $a3, 0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$a1, $s6, $s6, 1
	slli.d	$s0, $a1, 3
	add.d	$s8, $fp, $s0
	st.d	$zero, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a1, 40
	ld.d	$a1, $a1, 24
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	slli.d	$s4, $s6, 2
	ldx.w	$a1, $a2, $s4
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 364
	ld.d	$a1, $s3, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $a1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a1, 40
	move	$s2, $a0
	ld.d	$a0, $a1, 24
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ldx.w	$a0, $a2, $s4
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 364
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 368
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 372
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.w	$s1, $s8, 16
	ld.w	$s5, $s8, 4
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	ld.w	$a0, $s8, 12
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ldx.w	$s8, $fp, $s0
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 364
	st.w	$zero, $sp, 368
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 8
	blez	$a1, .LBB4_113
# %bb.115:                              # %.lr.ph1647
                                        #   in Loop: Header=BB4_114 Depth=3
	move	$s3, $a0
	move	$t4, $zero
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	sub.w	$a0, $s1, $s5
	ld.d	$t2, $sp, 216                   # 8-byte Folded Reload
	slt	$a1, $t2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t2, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $s8
	slt	$a2, $t2, $a1
	maskeqz	$a1, $a1, $a2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	masknez	$a2, $t2, $a2
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a3, 40
	ld.d	$a3, $a3, 24
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a4, $t1, 16
	ld.w	$a5, $t1, 4
	ldx.w	$a2, $a2, $s4
	ld.w	$a6, $sp, 364
	ld.w	$a7, $sp, 368
	sub.w	$a4, $a4, $a5
	slt	$a5, $t2, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t2, $a5
	or	$a4, $a4, $a5
	ld.w	$a5, $sp, 372
	ldx.w	$t0, $fp, $s0
	ld.w	$t1, $t1, 12
	addi.d	$a4, $a4, 1
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a7
	sub.w	$a5, $t1, $t0
	slt	$a7, $t2, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t2, $a7
	or	$a5, $a5, $a7
	addi.d	$a5, $a5, 1
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$s5, $t0, $a7, 3
	addi.d	$a7, $s5, 8
	st.d	$a7, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a7, $s2, 8
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $t0, $a0
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a7, 3
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a1, $s3, 8
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	mul.d	$a1, $a4, $a5
	add.w	$a1, $a6, $a1
	add.d	$a4, $a2, $a1
	alsl.d	$a4, $a4, $a3, 3
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	alsl.d	$a1, $a1, $a2, 3
	add.d	$fp, $a3, $a1
	slli.d	$a1, $t0, 3
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s6, $a7, $a0
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	b	.LBB4_117
	.p2align	4, , 16
.LBB4_116:                              # %._crit_edge1631
                                        #   in Loop: Header=BB4_117 Depth=4
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $s7, 8
	ld.d	$t4, $sp, 224                   # 8-byte Folded Reload
	addi.d	$t4, $t4, 1
	bge	$t4, $a0, .LBB4_113
.LBB4_117:                              #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_109 Depth=2
                                        #       Parent Loop BB4_114 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_123 Depth 5
                                        #             Child Loop BB4_125 Depth 6
                                        #               Child Loop BB4_132 Depth 7
                                        #               Child Loop BB4_137 Depth 7
	ld.d	$a0, $s7, 0
	slli.d	$a1, $t4, 4
	st.d	$t4, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a1, $t4, $a1, 3
	ldx.w	$a2, $a0, $a1
	add.d	$a0, $a0, $a1
	st.w	$a2, $sp, 340
	ld.w	$a1, $a0, 4
	st.w	$a1, $sp, 344
	ld.w	$a1, $a0, 8
	st.w	$a1, $sp, 348
	addi.d	$a1, $sp, 376
	addi.d	$a2, $sp, 352
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a4, $sp, 360
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB4_116
# %bb.118:                              # %.preheader1373.lr.ph
                                        #   in Loop: Header=BB4_117 Depth=4
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blez	$a2, .LBB4_116
# %bb.119:                              # %.preheader1373.lr.ph
                                        #   in Loop: Header=BB4_117 Depth=4
	blez	$a1, .LBB4_116
# %bb.120:                              # %.preheader1373.lr.ph
                                        #   in Loop: Header=BB4_117 Depth=4
	blez	$a0, .LBB4_116
# %bb.121:                              # %.preheader1372.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_117 Depth=4
	move	$t7, $zero
	ld.w	$a2, $sp, 340
	ld.d	$t3, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a3, $t3, 0
	ld.w	$a5, $sp, 344
	ld.w	$a4, $t3, 4
	ld.w	$a6, $sp, 348
	ld.w	$a7, $t3, 8
	ld.w	$t0, $t3, 16
	sub.d	$t1, $a2, $a3
	sub.d	$t2, $a5, $a4
	sub.d	$a7, $a6, $a7
	sub.w	$a4, $t0, $a4
	ld.d	$t4, $sp, 216                   # 8-byte Folded Reload
	slt	$t0, $t4, $a4
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $t4, $t0
	or	$a4, $a4, $t0
	ld.w	$t0, $t3, 12
	addi.d	$t3, $a4, 1
	mul.d	$a4, $t3, $a7
	add.d	$a4, $t2, $a4
	sub.w	$a3, $t0, $a3
	slt	$a7, $t4, $a3
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t4, $a7
	or	$a3, $a3, $a7
	addi.d	$a3, $a3, 1
	mul.d	$a4, $a4, $a3
	add.w	$a4, $t1, $a4
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a7, $t5, 0
	ld.w	$t0, $t5, 4
	ld.w	$t1, $t5, 8
	ld.w	$t2, $t5, 16
	sub.d	$a2, $a2, $a7
	sub.d	$a5, $a5, $t0
	sub.d	$a6, $a6, $t1
	sub.w	$t0, $t2, $t0
	slt	$t1, $t4, $t0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $t4, $t1
	or	$t0, $t0, $t1
	ld.w	$t1, $t5, 12
	addi.d	$t0, $t0, 1
	mul.d	$a6, $t0, $a6
	add.d	$a5, $a5, $a6
	sub.w	$a6, $t1, $a7
	slt	$a7, $t4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t4, $a7
	or	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	ld.w	$a7, $sp, 380
	mul.d	$a5, $a5, $a6
	add.w	$t1, $a2, $a5
	ld.w	$a5, $sp, 376
	mul.d	$a2, $a6, $a7
	mul.d	$t2, $a1, $a2
	mul.d	$a7, $a7, $a3
	ld.w	$t4, $sp, 384
	mul.d	$t5, $a1, $a7
	mul.d	$t6, $a5, $a0
	mul.d	$a6, $a6, $t0
	mul.d	$t0, $a6, $t4
	mul.d	$a3, $a3, $t3
	mul.d	$a3, $a3, $t4
	sub.d	$a6, $a7, $t6
	sub.d	$a7, $a2, $t6
	sub.d	$a2, $a3, $t5
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	sub.d	$a2, $t0, $t2
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a2, $a0, -1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t3, $a2, $a3, 3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ori	$a2, $zero, 7
	sltu	$a2, $a2, $a0
	addi.d	$a3, $a5, -1
	sltui	$a3, $a3, 1
	and	$t8, $a2, $a3
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$s0, $a2, 2
	mul.d	$s4, $s0, $a5
	slli.d	$s7, $a5, 5
	slli.d	$a2, $a5, 3
	b	.LBB4_123
	.p2align	4, , 16
.LBB4_122:                              # %._crit_edge1609.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_123 Depth=5
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a4
	ld.d	$t7, $sp, 256                   # 8-byte Folded Reload
	addi.w	$t7, $t7, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	add.w	$t1, $a3, $t1
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	beq	$t7, $a3, .LBB4_116
.LBB4_123:                              # %.preheader1372.us.us.us.us.us
                                        #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_109 Depth=2
                                        #       Parent Loop BB4_114 Depth=3
                                        #         Parent Loop BB4_117 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_125 Depth 6
                                        #               Child Loop BB4_132 Depth 7
                                        #               Child Loop BB4_137 Depth 7
	st.d	$t7, $sp, 256                   # 8-byte Folded Spill
	move	$t0, $zero
	b	.LBB4_125
	.p2align	4, , 16
.LBB4_124:                              # %._crit_edge1603.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_125 Depth=6
	add.w	$a4, $a6, $a4
	addi.w	$t0, $t0, 1
	add.w	$t1, $a7, $a3
	beq	$t0, $a1, .LBB4_122
.LBB4_125:                              # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_109 Depth=2
                                        #       Parent Loop BB4_114 Depth=3
                                        #         Parent Loop BB4_117 Depth=4
                                        #           Parent Loop BB4_123 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB4_132 Depth 7
                                        #               Child Loop BB4_137 Depth 7
	beqz	$t8, .LBB4_134
# %bb.126:                              # %vector.memcheck1904
                                        #   in Loop: Header=BB4_125 Depth=6
	alsl.d	$s8, $t1, $s5, 3
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a3, $t1, $a3, 3
	alsl.d	$t7, $a4, $s2, 3
	alsl.d	$t2, $a4, $t3, 3
	sltu	$t2, $s8, $t2
	sltu	$t4, $t7, $a3
	and	$t2, $t2, $t4
	move	$ra, $zero
	bnez	$t2, .LBB4_135
# %bb.127:                              # %vector.memcheck1904
                                        #   in Loop: Header=BB4_125 Depth=6
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t2, 3
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$t4, $t1, $t4, 3
	sltu	$t4, $s8, $t4
	sltu	$t2, $t2, $a3
	and	$t2, $t4, $t2
	bnez	$t2, .LBB4_135
# %bb.128:                              # %vector.memcheck1904
                                        #   in Loop: Header=BB4_125 Depth=6
	alsl.d	$t6, $a4, $s3, 3
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$t2, $a4, $t2, 3
	sltu	$t2, $s8, $t2
	sltu	$t4, $t6, $a3
	and	$t2, $t2, $t4
	bnez	$t2, .LBB4_135
# %bb.129:                              # %vector.memcheck1904
                                        #   in Loop: Header=BB4_125 Depth=6
	ld.d	$t2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t2, 3
	ld.d	$t4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$t4, $t1, $t4, 3
	sltu	$t4, $s8, $t4
	sltu	$t2, $t2, $a3
	and	$t2, $t4, $t2
	bnez	$t2, .LBB4_135
# %bb.130:                              # %vector.memcheck1904
                                        #   in Loop: Header=BB4_125 Depth=6
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t5, $a4, $t2, 3
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$t2, $a4, $t2, 3
	sltu	$t2, $s8, $t2
	sltu	$a3, $t5, $a3
	and	$a3, $t2, $a3
	bnez	$a3, .LBB4_135
# %bb.131:                              # %vector.ph1956
                                        #   in Loop: Header=BB4_125 Depth=6
	move	$t2, $zero
	add.d	$a3, $s4, $t1
	add.d	$a4, $s4, $a4
	alsl.d	$t4, $t1, $fp, 3
	alsl.d	$t1, $t1, $s6, 3
	move	$s1, $s0
	.p2align	4, , 16
.LBB4_132:                              # %vector.body1959
                                        #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_109 Depth=2
                                        #       Parent Loop BB4_114 Depth=3
                                        #         Parent Loop BB4_117 Depth=4
                                        #           Parent Loop BB4_123 Depth=5
                                        #             Parent Loop BB4_125 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	xvldx	$xr0, $t7, $t2
	xvldx	$xr1, $t6, $t2
	xvldx	$xr2, $t4, $t2
	xvldx	$xr3, $t1, $t2
	xvldx	$xr4, $t5, $t2
	xvldx	$xr5, $s8, $t2
	xvfmul.d	$xr1, $xr1, $xr2
	xvfmadd.d	$xr0, $xr0, $xr3, $xr1
	xvfdiv.d	$xr0, $xr0, $xr4
	xvfsub.d	$xr0, $xr5, $xr0
	xvstx	$xr0, $s8, $t2
	addi.d	$s1, $s1, -4
	add.d	$t2, $t2, $s7
	bnez	$s1, .LBB4_132
# %bb.133:                              # %middle.block1970
                                        #   in Loop: Header=BB4_125 Depth=6
	move	$ra, $s0
	beq	$s0, $a0, .LBB4_124
	b	.LBB4_136
	.p2align	4, , 16
.LBB4_134:                              #   in Loop: Header=BB4_125 Depth=6
	move	$ra, $zero
.LBB4_135:                              # %scalar.ph1954.preheader
                                        #   in Loop: Header=BB4_125 Depth=6
	move	$a3, $t1
.LBB4_136:                              # %scalar.ph1954.preheader
                                        #   in Loop: Header=BB4_125 Depth=6
	move	$t1, $zero
	move	$t5, $zero
	alsl.d	$t6, $a3, $s6, 3
	alsl.d	$t7, $a3, $fp, 3
	alsl.d	$s8, $a3, $s5, 3
	alsl.d	$t4, $a4, $s2, 3
	alsl.d	$s1, $a4, $s3, 3
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t2, $a4, $t2, 3
	sub.d	$ra, $a0, $ra
	.p2align	4, , 16
.LBB4_137:                              # %scalar.ph1954
                                        #   Parent Loop BB4_83 Depth=1
                                        #     Parent Loop BB4_109 Depth=2
                                        #       Parent Loop BB4_114 Depth=3
                                        #         Parent Loop BB4_117 Depth=4
                                        #           Parent Loop BB4_123 Depth=5
                                        #             Parent Loop BB4_125 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $t4, $t5
	fldx.d	$fa1, $s1, $t5
	fldx.d	$fa2, $t7, $t5
	fldx.d	$fa3, $t6, $t5
	fldx.d	$fa4, $t2, $t5
	fldx.d	$fa5, $s8, $t5
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fdiv.d	$fa0, $fa0, $fa4
	fsub.d	$fa0, $fa5, $fa0
	fstx.d	$fa0, $s8, $t5
	add.d	$t5, $t5, $a2
	addi.w	$ra, $ra, -1
	sub.d	$t1, $t1, $a5
	bnez	$ra, .LBB4_137
# %bb.138:                              # %._crit_edge1603.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB4_125 Depth=6
	sub.d	$a3, $a3, $t1
	sub.d	$a4, $a4, $t1
	b	.LBB4_124
.LBB4_139:                              # %._crit_edge1657
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 108
	pcaddu18i	$ra, %call36(hypre_IncFLOPCount)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 104
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end4:
	.size	hypre_CyclicReduction, .Lfunc_end4-hypre_CyclicReduction
                                        # -- End function
	.globl	hypre_CyclicReductionSetBase    # -- Begin function hypre_CyclicReductionSetBase
	.p2align	5
	.type	hypre_CyclicReductionSetBase,@function
hypre_CyclicReductionSetBase:           # @hypre_CyclicReductionSetBase
# %bb.0:
	ld.w	$a3, $a1, 0
	st.w	$a3, $a0, 12
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 24
	ld.w	$a3, $a1, 4
	st.w	$a3, $a0, 16
	ld.w	$a3, $a2, 4
	st.w	$a3, $a0, 28
	ld.w	$a1, $a1, 8
	st.w	$a1, $a0, 20
	ld.w	$a1, $a2, 8
	st.w	$a1, $a0, 32
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	hypre_CyclicReductionSetBase, .Lfunc_end5-hypre_CyclicReductionSetBase
                                        # -- End function
	.globl	hypre_CyclicReductionDestroy    # -- Begin function hypre_CyclicReductionDestroy
	.p2align	5
	.type	hypre_CyclicReductionDestroy,@function
hypre_CyclicReductionDestroy:           # @hypre_CyclicReductionDestroy
# %bb.0:
	beqz	$a0, .LBB6_6
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructGridDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB6_4
# %bb.2:                                # %.lr.ph
	move	$s1, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	add.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 8
	addi.d	$s0, $s0, 1
	pcaddu18i	$ra, %call36(hypre_StructGridDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	add.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	add.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.w	$a0, $a0, -1
	addi.d	$s1, $s1, 8
	blt	$s0, $a0, .LBB6_3
	b	.LBB6_5
.LBB6_4:
	move	$s0, $zero
.LBB6_5:                                # %._crit_edge
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s0, 3
	ldx.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	st.d	$zero, $fp, 64
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	st.d	$zero, $fp, 40
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $fp, 56
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $fp, 72
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	st.d	$zero, $fp, 80
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	st.d	$zero, $fp, 88
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 104
	st.d	$zero, $fp, 96
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB6_6:
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	hypre_CyclicReductionDestroy, .Lfunc_end6-hypre_CyclicReductionDestroy
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CyclicReduction"
	.size	.L.str, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
