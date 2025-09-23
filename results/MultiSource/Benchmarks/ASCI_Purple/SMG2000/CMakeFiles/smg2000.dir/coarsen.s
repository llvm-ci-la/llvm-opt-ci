	.file	"coarsen.c"
	.text
	.globl	hypre_StructMapFineToCoarse     # -- Begin function hypre_StructMapFineToCoarse
	.p2align	5
	.type	hypre_StructMapFineToCoarse,@function
hypre_StructMapFineToCoarse:            # @hypre_StructMapFineToCoarse
# %bb.0:
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	sub.w	$a4, $a4, $a5
	div.w	$a4, $a4, $a6
	st.w	$a4, $a3, 0
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a1, 4
	ld.w	$a6, $a2, 4
	sub.w	$a4, $a4, $a5
	div.w	$a4, $a4, $a6
	st.w	$a4, $a3, 4
	ld.w	$a0, $a0, 8
	ld.w	$a1, $a1, 8
	ld.w	$a2, $a2, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $a3, 8
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	hypre_StructMapFineToCoarse, .Lfunc_end0-hypre_StructMapFineToCoarse
                                        # -- End function
	.globl	hypre_StructMapCoarseToFine     # -- Begin function hypre_StructMapCoarseToFine
	.p2align	5
	.type	hypre_StructMapCoarseToFine,@function
hypre_StructMapCoarseToFine:            # @hypre_StructMapCoarseToFine
# %bb.0:
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a1, 0
	mul.d	$a4, $a5, $a4
	add.d	$a4, $a4, $a6
	st.w	$a4, $a3, 0
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a2, 4
	ld.w	$a6, $a1, 4
	mul.d	$a4, $a5, $a4
	add.d	$a4, $a4, $a6
	st.w	$a4, $a3, 4
	ld.w	$a0, $a0, 8
	ld.w	$a2, $a2, 8
	ld.w	$a1, $a1, 8
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a1
	st.w	$a0, $a3, 8
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	hypre_StructMapCoarseToFine, .Lfunc_end1-hypre_StructMapCoarseToFine
                                        # -- End function
	.globl	hypre_StructCoarsen             # -- Begin function hypre_StructCoarsen
	.p2align	5
	.type	hypre_StructCoarsen,@function
hypre_StructCoarsen:                    # @hypre_StructCoarsen
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
	move	$s0, $a0
	ld.d	$fp, $a0, 24
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$s3, $s0, 4
	ld.d	$a0, $fp, 0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$s6, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.w	$s4, $a0, 8
	ld.d	$s2, $fp, 8
	slli.w	$s5, $s4, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	blez	$s4, .LBB2_6
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 8
	move	$a4, $zero
	bltu	$s4, $a1, .LBB2_7
# %bb.2:                                # %.lr.ph.preheader
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $s2
	ori	$a2, $zero, 32
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB2_8
# %bb.3:                                # %vector.ph
	bstrpick.d	$a1, $s4, 30, 3
	slli.d	$a4, $a1, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	addi.d	$a2, $s2, 16
	move	$a3, $a4
	.p2align	4, , 16
.LBB2_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB2_4
# %bb.5:                                # %middle.block
	bne	$a4, $s4, .LBB2_8
	b	.LBB2_10
.LBB2_6:                                # %._crit_edge
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB2_17
.LBB2_7:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
.LBB2_8:                                # %.lr.ph.preheader781
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 2
	alsl.d	$a2, $a4, $s2, 2
	sub.d	$a4, $s4, $a4
	.p2align	4, , 16
.LBB2_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB2_9
.LBB2_10:                               # %.lr.ph571.preheader
	ld.d	$s2, $fp, 16
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a4, $zero
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bltu	$s4, $a1, .LBB2_15
# %bb.11:                               # %.lr.ph571.preheader
	sub.d	$a1, $a0, $s2
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB2_15
# %bb.12:                               # %vector.ph756
	bstrpick.d	$a1, $s4, 30, 3
	slli.d	$a4, $a1, 3
	move	$a1, $zero
	move	$a2, $a4
	.p2align	4, , 16
.LBB2_13:                               # %vector.body759
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s2, $a1
	vldx	$vr0, $s2, $a1
	vld	$vr1, $a3, 16
	add.d	$a3, $a0, $a1
	vstx	$vr0, $a0, $a1
	vst	$vr1, $a3, 16
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_13
# %bb.14:                               # %middle.block764
	beq	$a4, $s4, .LBB2_17
.LBB2_15:                               # %.lr.ph571.preheader780
	slli.d	$a1, $a4, 2
	sub.d	$a3, $s4, $a4
	.p2align	4, , 16
.LBB2_16:                               # %.lr.ph571
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s2, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB2_16
.LBB2_17:                               # %._crit_edge572
	ld.w	$s2, $fp, 24
	ld.wu	$a1, $fp, 28
	ld.w	$a0, $fp, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $s0, 32
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 40
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	addi.w	$a1, $a1, 0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxDuplicate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 56
	ld.d	$a2, $s0, 60
	move	$fp, $a0
	st.w	$a1, $sp, 260
	st.d	$a2, $sp, 264
	addi.d	$a1, $sp, 252
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 0
	ld.w	$a0, $fp, 4
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s1, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 4
	ld.w	$a0, $fp, 8
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s1, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 8
	ld.w	$a0, $fp, 12
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 12
	ld.w	$a0, $fp, 16
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s1, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 16
	ld.w	$a0, $fp, 20
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s1, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.w	$a0, $fp, 20
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	blez	$s4, .LBB2_32
# %bb.18:                               # %.lr.ph588
	move	$a2, $zero
	move	$s8, $zero
	move	$a4, $zero
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s1, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               # %.loopexit567
                                        #   in Loop: Header=BB2_20 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	beq	$a2, $s4, .LBB2_33
.LBB2_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_25 Depth 2
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $sp, 252
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB2_19
# %bb.21:                               # %.preheader566
                                        #   in Loop: Header=BB2_20 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	blez	$a0, .LBB2_19
# %bb.22:                               # %.lr.ph578.preheader
                                        #   in Loop: Header=BB2_20 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s1, $a2, $a0, 2
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_23:                               #   in Loop: Header=BB2_25 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.w	$a1, $a0, 0
	ori	$a4, $zero, 1
.LBB2_24:                               #   in Loop: Header=BB2_25 Depth=2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 24
	beqz	$s4, .LBB2_19
.LBB2_25:                               # %.lr.ph578
                                        #   Parent Loop BB2_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	ld.d	$s7, $s7, 0
	ldx.w	$a0, $s7, $s5
	add.d	$a1, $s7, $s5
	st.w	$a0, $s3, 0
	ld.w	$a0, $a1, 4
	st.w	$a0, $s3, 4
	ld.w	$a0, $a1, 8
	st.w	$a0, $s3, 8
	ld.w	$a0, $a1, 12
	st.w	$a0, $s3, 12
	ld.w	$a0, $a1, 16
	st.w	$a0, $s3, 16
	ld.w	$a0, $a1, 20
	slli.d	$a1, $a2, 4
	alsl.d	$s8, $a2, $a1, 3
	add.d	$s2, $s7, $s8
	st.w	$a0, $s3, 20
	move	$a0, $s3
	move	$a1, $s6
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $fp, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s3, 0
	ld.w	$a0, $s3, 4
	ld.w	$a1, $s6, 4
	ld.w	$a2, $fp, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s3, 4
	ld.w	$a0, $s3, 8
	ld.w	$a1, $s6, 8
	ld.w	$a2, $fp, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s3, 8
	ld.w	$a0, $s3, 12
	ld.w	$a1, $s6, 0
	ld.w	$a2, $fp, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s3, 12
	ld.w	$a0, $s3, 16
	ld.w	$a1, $s6, 4
	ld.w	$a2, $fp, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s3, 16
	ld.w	$a0, $s3, 20
	ld.w	$a1, $s6, 8
	ld.w	$a2, $fp, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s3, 20
	ldx.w	$a0, $s7, $s8
	st.w	$a0, $s0, 0
	ld.w	$a0, $s2, 4
	st.w	$a0, $s0, 4
	ld.w	$a0, $s2, 8
	st.w	$a0, $s0, 8
	ld.w	$a0, $s2, 12
	st.w	$a0, $s0, 12
	ld.w	$a0, $s2, 16
	st.w	$a0, $s0, 16
	ld.w	$a0, $s2, 20
	st.w	$a0, $s0, 20
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $fp
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $fp, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 0
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s6, 4
	ld.w	$a2, $fp, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 4
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s6, 8
	ld.w	$a2, $fp, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 8
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s6, 0
	ld.w	$a2, $fp, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 12
	ld.w	$a0, $s0, 16
	ld.w	$a1, $s6, 4
	ld.w	$a2, $fp, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 16
	ld.w	$a0, $s0, 20
	ld.w	$a1, $s6, 8
	ld.w	$a2, $fp, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 20
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	beqz	$a3, .LBB2_29
# %bb.26:                               #   in Loop: Header=BB2_25 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 2
	ld.w	$a2, $a1, -4
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB2_28
# %bb.27:                               #   in Loop: Header=BB2_25 Depth=2
	st.w	$a0, $a1, 0
	addi.w	$a3, $a3, 1
.LBB2_28:                               #   in Loop: Header=BB2_25 Depth=2
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	bnez	$a4, .LBB2_30
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_29:                               #   in Loop: Header=BB2_25 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.w	$a1, $a0, 0
	ori	$a3, $zero, 1
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	beqz	$a4, .LBB2_23
.LBB2_30:                               #   in Loop: Header=BB2_25 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 2
	ld.w	$a2, $a1, -4
	beq	$a0, $a2, .LBB2_24
# %bb.31:                               #   in Loop: Header=BB2_25 Depth=2
	st.w	$a0, $a1, 0
	addi.w	$a4, $a4, 1
	b	.LBB2_24
.LBB2_32:
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	move	$a4, $zero
	move	$s8, $zero
.LBB2_33:                               # %._crit_edge589
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB2_36
# %bb.34:                               # %.lr.ph596.preheader
	move	$fp, $zero
	slli.d	$a0, $s4, 4
	alsl.d	$s2, $s4, $a0, 3
	.p2align	4, , 16
.LBB2_35:                               # %.lr.ph596
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s7, 0
	add.d	$s0, $s3, $fp
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s3, $fp
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	stx.w	$a0, $s3, $fp
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s1, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 4
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s1, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 8
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 12
	ld.w	$a0, $s0, 16
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s1, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 16
	ld.w	$a0, $s0, 20
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s1, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	addi.d	$fp, $fp, 24
	st.w	$a0, $s0, 20
	bne	$s2, $fp, .LBB2_35
.LBB2_36:                               # %._crit_edge597
	beqz	$s8, .LBB2_62
# %bb.37:
	slli.w	$s0, $s8, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	blez	$s8, .LBB2_40
# %bb.38:                               # %.lr.ph600.preheader
	move	$fp, $zero
	slli.d	$s0, $s8, 2
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_39:                               # %.lr.ph600
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s4, $fp
	add.d	$a0, $s3, $fp
	add.d	$a6, $s6, $fp
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a4, $zero
	move	$a5, $s5
	pcaddu18i	$ra, %call36(hypre_MPI_Irecv)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 4
	bne	$s0, $fp, .LBB2_39
.LBB2_40:                               # %.loopexit565
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	beqz	$fp, .LBB2_63
.LBB2_41:
	slli.w	$s0, $fp, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	st.w	$a0, $sp, 256
	blez	$fp, .LBB2_45
# %bb.42:                               # %.lr.ph603.preheader
	move	$a0, $fp
	move	$fp, $zero
	slli.d	$s0, $a0, 2
	.p2align	4, , 16
.LBB2_43:                               # %.lr.ph603
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s2, $fp
	add.d	$a6, $s6, $fp
	addi.d	$a0, $sp, 256
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a4, $zero
	move	$a5, $s5
	pcaddu18i	$ra, %call36(hypre_MPI_Isend)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 4
	bne	$s0, $fp, .LBB2_43
# %bb.44:
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
.LBB2_45:                               # %.loopexit564
	move	$s0, $s6
	beqz	$s8, .LBB2_47
.LBB2_46:
	move	$a0, $s8
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MPI_Waitall)
	jirl	$ra, $ra, 0
.LBB2_47:
	beqz	$fp, .LBB2_49
# %bb.48:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MPI_Waitall)
	jirl	$ra, $ra, 0
.LBB2_49:
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	beqz	$s8, .LBB2_64
# %bb.50:
	slli.w	$a0, $s8, 3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	blez	$s8, .LBB2_54
# %bb.51:                               # %.lr.ph606.preheader
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	move	$fp, $zero
	slli.d	$s0, $s8, 3
	move	$s6, $s2
	move	$s2, $s3
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_52:                               # %.lr.ph606
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	ld.w	$a3, $s4, 0
	stx.d	$a0, $s6, $fp
	ori	$a2, $zero, 1
	move	$a4, $zero
	move	$a5, $s5
	move	$a6, $s3
	pcaddu18i	$ra, %call36(hypre_MPI_Irecv)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 4
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 4
	bne	$s0, $fp, .LBB2_52
# %bb.53:
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	move	$s2, $s6
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
.LBB2_54:                               # %.loopexit563
	beqz	$fp, .LBB2_65
.LBB2_55:
	ld.w	$a0, $sp, 256
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	blez	$a0, .LBB2_58
# %bb.56:                               # %.lr.ph614
	ld.d	$a1, $s7, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 12
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_57:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a0, 2
	stx.w	$a5, $s3, $a6
	ld.w	$a5, $a2, 0
	alsl.d	$a6, $a0, $s3, 2
	st.w	$a5, $a6, 4
	ld.w	$a5, $a1, -12
	addi.w	$a7, $a0, 2
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s3, $t0
	ld.w	$a5, $a1, 0
	st.w	$a5, $a6, 12
	ld.w	$a5, $a1, -8
	addi.d	$a6, $a7, 2
	slli.d	$t0, $a6, 2
	stx.w	$a5, $s3, $t0
	ld.w	$a5, $a1, 4
	alsl.d	$a7, $a7, $s3, 2
	st.w	$a5, $a7, 12
	ld.w	$a5, $a1, -4
	st.w	$a5, $a7, 16
	ld.w	$a5, $a1, 8
	slli.d	$a6, $a6, 32
	srai.d	$a6, $a6, 30
	add.d	$a6, $s3, $a6
	st.w	$a5, $a6, 12
	addi.w	$a0, $a0, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 24
	bnez	$a4, .LBB2_57
.LBB2_58:                               # %.preheader562
	blez	$fp, .LBB2_106
# %bb.59:                               # %.lr.ph616.preheader
	move	$s4, $s2
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	move	$s6, $s0
	.p2align	4, , 16
.LBB2_60:                               # %.lr.ph616
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $sp, 256
	ld.w	$a3, $s2, 0
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $s5
	move	$a6, $s0
	pcaddu18i	$ra, %call36(hypre_MPI_Isend)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 4
	bnez	$fp, .LBB2_60
# %bb.61:
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	move	$s2, $s4
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	bnez	$s8, .LBB2_66
	b	.LBB2_67
.LBB2_62:
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r26
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	bnez	$fp, .LBB2_41
.LBB2_63:
                                        # implicit-def: $r23
                                        # implicit-def: $r4
                                        # kill: killed $r4
	bnez	$s8, .LBB2_46
	b	.LBB2_47
.LBB2_64:
                                        # implicit-def: $r25
	bnez	$fp, .LBB2_55
.LBB2_65:
	move	$s6, $s0
                                        # implicit-def: $r26
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	beqz	$s8, .LBB2_67
.LBB2_66:
	move	$a0, $s8
	move	$a1, $s0
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(hypre_MPI_Waitall)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB2_67:
	beqz	$fp, .LBB2_69
# %bb.68:
	move	$a0, $fp
	move	$a1, $s6
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hypre_MPI_Waitall)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB2_69:
	beqz	$s8, .LBB2_95
# %bb.70:
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$s6, $zero
	move	$s2, $zero
	addi.w	$fp, $zero, -1
	bstrpick.d	$a0, $s8, 31, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $fp
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	move	$t0, $s5
                                        # implicit-def: $r26
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_71:                               #   in Loop: Header=BB2_73 Depth=1
	slli.d	$a1, $s2, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	stx.w	$a2, $a3, $a6
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	ld.d	$a2, $s7, 0
	stx.w	$a1, $a0, $a6
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	xor	$a0, $s2, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$s2, $s2, 1
.LBB2_72:                               #   in Loop: Header=BB2_73 Depth=1
	move	$s6, $s0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
.LBB2_73:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_80 Depth 2
	bge	$s2, $s5, .LBB2_75
# %bb.74:                               #   in Loop: Header=BB2_73 Depth=1
	slli.d	$a0, $s2, 2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$s3, $a1, $a0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	bgtz	$s8, .LBB2_77
	b	.LBB2_86
	.p2align	4, , 16
.LBB2_75:                               # %.thread
                                        #   in Loop: Header=BB2_73 Depth=1
	blez	$s8, .LBB2_94
# %bb.76:                               #   in Loop: Header=BB2_73 Depth=1
	addi.w	$s4, $zero, -2
	lu32i.d	$s4, 0
.LBB2_77:                               # %.lr.ph621.preheader
                                        #   in Loop: Header=BB2_73 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	b	.LBB2_80
	.p2align	4, , 16
.LBB2_78:                               #   in Loop: Header=BB2_80 Depth=2
	move	$s4, $a0
	move	$s3, $a6
.LBB2_79:                               #   in Loop: Header=BB2_80 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	beqz	$a1, .LBB2_85
.LBB2_80:                               # %.lr.ph621
                                        #   Parent Loop BB2_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a3, 0
	bge	$a5, $a6, .LBB2_79
# %bb.81:                               #   in Loop: Header=BB2_80 Depth=2
	ld.d	$a6, $a4, 0
	slli.d	$a7, $a5, 2
	ldx.w	$a6, $a6, $a7
	addi.w	$a7, $zero, -2
	lu32i.d	$a7, 0
	beq	$s4, $a7, .LBB2_78
# %bb.82:                               #   in Loop: Header=BB2_80 Depth=2
	addi.w	$a7, $s3, 0
	blt	$a6, $a7, .LBB2_78
# %bb.83:                               #   in Loop: Header=BB2_80 Depth=2
	bne	$a6, $a7, .LBB2_79
# %bb.84:                               #   in Loop: Header=BB2_80 Depth=2
	addi.d	$a5, $a5, 8
	st.w	$a5, $a2, 0
	b	.LBB2_79
	.p2align	4, , 16
.LBB2_85:                               # %._crit_edge622
                                        #   in Loop: Header=BB2_73 Depth=1
	addi.w	$a0, $s4, 0
	addi.w	$a1, $zero, -2
	bge	$a1, $a0, .LBB2_91
.LBB2_86:                               # %._crit_edge622.thread
                                        #   in Loop: Header=BB2_73 Depth=1
	bstrpick.d	$a0, $t0, 31, 0
	bne	$s6, $a0, .LBB2_88
# %bb.87:                               #   in Loop: Header=BB2_73 Depth=1
	add.w	$t0, $t0, $s5
	st.d	$t0, $sp, 192                   # 8-byte Folded Spill
	slli.w	$s0, $t0, 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_ReAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_ReAlloc)
	jirl	$ra, $ra, 0
	b	.LBB2_89
	.p2align	4, , 16
.LBB2_88:                               #   in Loop: Header=BB2_73 Depth=1
	st.d	$t0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
.LBB2_89:                               #   in Loop: Header=BB2_73 Depth=1
	move	$a1, $fp
	lu32i.d	$a1, 0
	slli.d	$a6, $s6, 2
	addi.d	$s0, $s6, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	beq	$s4, $a1, .LBB2_71
# %bb.90:                               #   in Loop: Header=BB2_73 Depth=1
	slli.d	$s5, $s4, 2
	slli.d	$a1, $s4, 3
	move	$s8, $fp
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a2, $fp, $s5
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $a1, $a3
	alsl.d	$a4, $a2, $a1, 2
	stx.w	$a3, $a0, $a6
	ld.w	$a3, $a4, 4
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	stx.w	$a3, $a5, $a6
	addi.w	$a0, $a2, 2
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $a1, $a3
	st.w	$a3, $sp, 240
	ld.w	$a3, $a4, 12
	st.w	$a3, $sp, 228
	addi.d	$a3, $a0, 2
	slli.d	$a4, $a3, 2
	ldx.w	$a4, $a1, $a4
	alsl.d	$a0, $a0, $a1, 2
	st.w	$a4, $sp, 244
	ld.w	$a4, $a0, 12
	st.w	$a4, $sp, 232
	ld.w	$a0, $a0, 16
	st.w	$a0, $sp, 248
	slli.d	$a0, $a3, 32
	srai.d	$a0, $a0, 30
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 12
	st.w	$a0, $sp, 236
	addi.d	$s4, $a2, 8
	addi.d	$a1, $sp, 240
	addi.d	$a2, $sp, 228
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	stx.w	$s4, $fp, $s5
	move	$fp, $s8
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB2_72
.LBB2_91:                               # %.preheader561
	blez	$s8, .LBB2_94
# %bb.92:                               # %.lr.ph630.preheader
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_93:                               # %.lr.ph630
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, 8
	bnez	$s8, .LBB2_93
.LBB2_94:                               # %._crit_edge631
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB2_96
.LBB2_95:
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
.LBB2_96:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB2_109
# %bb.97:                               # %.preheader
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB2_107
# %bb.98:                               # %.lr.ph638
	move	$a2, $zero
	move	$a1, $zero
	ld.d	$a3, $s7, 0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $s3, $a4
	add.w	$a5, $a4, $s0
	addi.w	$a6, $s3, 0
	addi.w	$a7, $zero, -1
	addi.d	$t0, $a3, 20
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	move	$t2, $s2
	move	$s3, $a7
	move	$s0, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	b	.LBB2_102
	.p2align	4, , 16
.LBB2_99:                               #   in Loop: Header=BB2_102 Depth=1
	slt	$t3, $a2, $a4
	xori	$t3, $t3, 1
	slt	$t4, $a2, $a5
	and	$t3, $t3, $t4
	add.w	$s0, $s0, $t3
.LBB2_100:                              #   in Loop: Header=BB2_102 Depth=1
	addi.w	$a1, $a1, 1
.LBB2_101:                              #   in Loop: Header=BB2_102 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 24
	beq	$a0, $a2, .LBB2_108
.LBB2_102:                              # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, -20
	ld.w	$t3, $t0, -4
	ld.w	$t4, $t0, 0
	vreplvei.w	$vr1, $vr0, 3
	vinsgr2vr.w	$vr1, $t3, 1
	vsub.w	$vr1, $vr1, $vr0
	vmaxi.w	$vr1, $vr1, -1
	vaddi.wu	$vr1, $vr1, 1
	vpickve2gr.w	$t5, $vr1, 0
	vpickve2gr.w	$t6, $vr1, 1
	vpickve2gr.w	$t7, $vr0, 2
	sub.w	$t7, $t4, $t7
	slt	$t8, $a7, $t7
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $a7, $t8
	or	$t7, $t7, $t8
	sltui	$t5, $t5, 1
	sltui	$t6, $t6, 1
	or	$t5, $t6, $t5
	addi.d	$t6, $t7, 1
	sltui	$t6, $t6, 1
	or	$t5, $t5, $t6
	bnez	$t5, .LBB2_101
# %bb.103:                              #   in Loop: Header=BB2_102 Depth=1
	slli.d	$t5, $a1, 4
	alsl.d	$t5, $a1, $t5, 3
	add.d	$t6, $a3, $t5
	vstx	$vr0, $a3, $t5
	st.w	$t3, $t6, 16
	st.w	$t4, $t6, 20
	ld.w	$t3, $t1, 0
	slli.d	$t4, $a1, 2
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	stx.w	$t3, $t5, $t4
	ld.w	$t3, $t2, 0
	stx.w	$t3, $s2, $t4
	blt	$a2, $a6, .LBB2_99
# %bb.104:                              #   in Loop: Header=BB2_102 Depth=1
	bge	$a2, $a4, .LBB2_99
# %bb.105:                              #   in Loop: Header=BB2_102 Depth=1
	addi.d	$t3, $s3, 1
	sltui	$t3, $t3, 1
	masknez	$t4, $s3, $t3
	maskeqz	$t3, $a1, $t3
	or	$s3, $t3, $t4
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	addi.w	$t3, $t3, 1
	st.d	$t3, $sp, 128                   # 8-byte Folded Spill
	b	.LBB2_100
.LBB2_106:
	move	$s6, $s0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	bnez	$s8, .LBB2_66
	b	.LBB2_67
.LBB2_107:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$a1, $zero
	addi.d	$s3, $zero, -1
.LBB2_108:                              # %._crit_edge639
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
.LBB2_109:
	addi.d	$a2, $sp, 272
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructGridCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	addi.w	$a4, $s3, 0
	move	$a1, $s7
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	move	$a6, $s0
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructGridSetHood)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructGridSetHoodInfo)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB2_114
# %bb.110:                              # %.lr.ph646.preheader
	addi.d	$a0, $sp, 260
	b	.LBB2_112
	.p2align	4, , 16
.LBB2_111:                              #   in Loop: Header=BB2_112 Depth=1
	addi.d	$s1, $s1, 4
	addi.d	$fp, $fp, -1
	addi.d	$a0, $a0, 4
	beqz	$fp, .LBB2_114
.LBB2_112:                              # %.lr.ph646
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB2_111
# %bb.113:                              #   in Loop: Header=BB2_112 Depth=1
	ld.w	$a2, $s1, 0
	div.w	$a1, $a1, $a2
	st.w	$a1, $a0, 0
	b	.LBB2_111
.LBB2_114:                              # %._crit_edge647
	ld.d	$a0, $sp, 272
	addi.d	$a1, $sp, 260
	pcaddu18i	$ra, %call36(hypre_StructGridSetPeriodic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(hypre_StructGridAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
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
.Lfunc_end2:
	.size	hypre_StructCoarsen, .Lfunc_end2-hypre_StructCoarsen
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
