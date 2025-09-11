	.file	"struct_matrix.c"
	.text
	.globl	hypre_StructMatrixExtractPointerByIndex # -- Begin function hypre_StructMatrixExtractPointerByIndex
	.p2align	5
	.type	hypre_StructMatrixExtractPointerByIndex,@function
hypre_StructMatrixExtractPointerByIndex: # @hypre_StructMatrixExtractPointerByIndex
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	move	$s0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(hypre_StructStencilElementRank)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_2
# %bb.1:
	ld.d	$a1, $fp, 64
	slli.d	$a2, $s0, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $fp, 48
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	alsl.d	$a0, $a0, $a2, 3
	b	.LBB0_3
.LBB0_2:
	move	$a0, $zero
.LBB0_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	hypre_StructMatrixExtractPointerByIndex, .Lfunc_end0-hypre_StructMatrixExtractPointerByIndex
                                        # -- End function
	.globl	hypre_StructMatrixCreate        # -- Begin function hypre_StructMatrixCreate
	.p2align	5
	.type	hypre_StructMatrixCreate,@function
hypre_StructMatrixCreate:               # @hypre_StructMatrixCreate
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
	move	$s1, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 136
	ori	$s3, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.w	$s1, $a0, 0
	addi.d	$a1, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructGridRef)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructStencilRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.w	$s3, $s2, 56
	st.w	$s3, $s2, 128
	st.w	$zero, $s2, 72
	st.d	$zero, $s2, 88
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 96
	move	$a0, $s2
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	hypre_StructMatrixCreate, .Lfunc_end1-hypre_StructMatrixCreate
                                        # -- End function
	.globl	hypre_StructMatrixRef           # -- Begin function hypre_StructMatrixRef
	.p2align	5
	.type	hypre_StructMatrixRef,@function
hypre_StructMatrixRef:                  # @hypre_StructMatrixRef
# %bb.0:
	ld.w	$a1, $a0, 128
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 128
	ret
.Lfunc_end2:
	.size	hypre_StructMatrixRef, .Lfunc_end2-hypre_StructMatrixRef
                                        # -- End function
	.globl	hypre_StructMatrixDestroy       # -- Begin function hypre_StructMatrixDestroy
	.p2align	5
	.type	hypre_StructMatrixDestroy,@function
hypre_StructMatrixDestroy:              # @hypre_StructMatrixDestroy
# %bb.0:
	beqz	$a0, .LBB3_9
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 128
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 128
	bnez	$a0, .LBB3_8
# %bb.2:
	ld.w	$a0, $fp, 56
	beqz	$a0, .LBB3_4
# %bb.3:
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB3_4:
	ld.d	$a0, $fp, 120
	pcaddu18i	$ra, %call36(hypre_CommPkgDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.w	$a1, $a0, 8
	ld.d	$a0, $fp, 64
	blez	$a1, .LBB3_7
# %bb.5:                                # %.lr.ph.preheader
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 64
	ld.w	$a1, $a1, 8
	stx.d	$zero, $a0, $s0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a1, .LBB3_6
.LBB3_7:                                # %._crit_edge
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	st.d	$zero, $fp, 64
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$zero, $fp, 80
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(hypre_StructGridDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB3_8:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_9:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_StructMatrixDestroy, .Lfunc_end3-hypre_StructMatrixDestroy
                                        # -- End function
	.globl	hypre_StructMatrixInitializeShell # -- Begin function hypre_StructMatrixInitializeShell
	.p2align	5
	.type	hypre_StructMatrixInitializeShell,@function
hypre_StructMatrixInitializeShell:      # @hypre_StructMatrixInitializeShell
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
	ld.d	$s0, $a0, 24
	ld.d	$s3, $a0, 8
	beqz	$s0, .LBB4_2
# %bb.1:                                # %._crit_edge225
	ld.d	$s1, $fp, 80
	b	.LBB4_7
.LBB4_2:
	ld.d	$a0, $fp, 16
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 72
	pcaddu18i	$ra, %call36(hypre_StructStencilSymmetrize)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80
	ld.w	$a0, $fp, 72
	ld.w	$s2, $s0, 8
	beqz	$a0, .LBB4_4
# %bb.3:
	addi.d	$a0, $s2, 1
	ld.d	$s1, $sp, 72
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s2, $a0, 1
	b	.LBB4_6
.LBB4_4:                                # %.preheader172
	ld.d	$s1, $sp, 72
	blez	$s2, .LBB4_6
# %bb.5:                                # %.lr.ph
	slli.d	$a2, $s2, 2
	ori	$a1, $zero, 255
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %.loopexit173
	st.d	$s0, $fp, 24
	st.d	$s1, $fp, 80
	st.w	$s2, $fp, 32
.LBB4_7:
	ld.wu	$a0, $s0, 8
	ld.d	$s5, $s0, 0
	st.d	$s0, $sp, 80
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s0, $a0, 0
	st.d	$s1, $sp, 72
	move	$a0, $zero
	move	$a1, $zero
	vrepli.b	$vr0, 0
	blez	$s0, .LBB4_12
# %bb.8:                                # %.lr.ph177.preheader
	move	$a2, $s0
	move	$a3, $s5
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                # %.loopexit
                                        #   in Loop: Header=BB4_10 Depth=1
	addi.d	$a3, $a3, 12
	addi.d	$a2, $a2, -1
	addi.d	$s1, $s1, 4
	beqz	$a2, .LBB4_12
.LBB4_10:                               # %.lr.ph177
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $s1, 0
	bltz	$a4, .LBB4_9
# %bb.11:                               # %.preheader171
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a3, 4
	vinsgr2vr.d	$vr1, $a4, 0
	sub.d	$a4, $zero, $a5
	sub.d	$a5, $zero, $a6
	vshuf4i.w	$vr1, $vr1, 64
	ld.w	$a6, $a3, 8
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 2
	vmax.w	$vr0, $vr0, $vr1
	sub.w	$a4, $zero, $a6
	slt	$a5, $a4, $a0
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a4
	slt	$a4, $a6, $a1
	masknez	$a5, $a6, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	b	.LBB4_9
.LBB4_12:                               # %.preheader170
	vld	$vr1, $fp, 88
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a2, $fp, 104
	vst	$vr0, $fp, 88
	ld.w	$a3, $fp, 108
	ld.d	$s1, $fp, 40
	add.d	$a0, $a2, $a0
	st.w	$a0, $fp, 104
	add.d	$a0, $a3, $a1
	st.w	$a0, $fp, 108
	beqz	$s1, .LBB4_14
# %bb.13:
	ld.d	$a0, $fp, 64
	bnez	$a0, .LBB4_33
	b	.LBB4_18
.LBB4_14:
	ld.d	$s2, $s3, 8
	ld.w	$a0, $s2, 8
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 8
	move	$s1, $a0
	blez	$a1, .LBB4_17
# %bb.15:                               # %.lr.ph181
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s1, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 12
	addi.d	$a2, $a2, 12
	.p2align	4, , 16
.LBB4_16:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -12
	st.w	$a3, $a2, -12
	ld.w	$a4, $a1, -8
	st.w	$a4, $a2, -8
	ld.w	$a5, $a1, -4
	st.w	$a5, $a2, -4
	ld.w	$a6, $a1, 0
	st.w	$a6, $a2, 0
	ld.w	$a7, $a1, 4
	st.w	$a7, $a2, 4
	ld.w	$t0, $a1, 8
	st.w	$t0, $a2, 8
	ld.w	$t1, $fp, 88
	sub.d	$a3, $a3, $t1
	st.w	$a3, $a2, -12
	ld.w	$a3, $fp, 92
	add.d	$a3, $a6, $a3
	st.w	$a3, $a2, 0
	ld.w	$a3, $fp, 96
	sub.d	$a3, $a4, $a3
	st.w	$a3, $a2, -8
	ld.w	$a3, $fp, 100
	add.d	$a3, $a7, $a3
	st.w	$a3, $a2, 4
	ld.w	$a3, $fp, 104
	sub.d	$a3, $a5, $a3
	st.w	$a3, $a2, -4
	ld.w	$a3, $fp, 108
	add.d	$a3, $t0, $a3
	st.w	$a3, $a2, 8
	ld.w	$a3, $s2, 8
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 24
	addi.d	$a2, $a2, 24
	blt	$a0, $a3, .LBB4_16
.LBB4_17:                               # %._crit_edge
	st.d	$s1, $fp, 40
	ld.d	$a0, $fp, 64
	bnez	$a0, .LBB4_33
.LBB4_18:
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $s1, 8
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	blez	$a1, .LBB4_31
# %bb.19:                               # %.lr.ph192
	move	$s7, $zero
	move	$s6, $zero
	addi.d	$a0, $s5, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_20:                               #   in Loop: Header=BB4_22 Depth=1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
.LBB4_21:                               # %._crit_edge188
                                        #   in Loop: Header=BB4_22 Depth=1
	ld.w	$a0, $s1, 8
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB4_32
.LBB4_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_25 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s7, 4
	alsl.d	$a1, $s7, $a1, 3
	add.d	$s3, $a0, $a1
	ld.w	$s1, $s3, 12
	ldx.w	$fp, $a0, $a1
	ld.w	$s2, $s3, 16
	ld.w	$s0, $s3, 4
	ld.w	$a0, $s3, 20
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 8
	ori	$a1, $zero, 4
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s7, 3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	blez	$s5, .LBB4_20
# %bb.23:                               # %.lr.ph185
                                        #   in Loop: Header=BB4_22 Depth=1
	sub.w	$a1, $s1, $fp
	slt	$a2, $s8, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s8, $a2
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	sub.w	$a2, $s2, $s0
	slt	$a3, $s8, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $s8, $a3
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	mulw.d.w	$a2, $a2, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.w	$a1, $a1, $s4
	slt	$a3, $s8, $a1
	maskeqz	$a4, $a1, $a3
	masknez	$a3, $s8, $a3
	ld.d	$a1, $sp, 72
	or	$a3, $a4, $a3
	addi.d	$a3, $a3, 1
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_24:                               #   in Loop: Header=BB4_25 Depth=2
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	beqz	$a3, .LBB4_27
.LBB4_25:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a1, 0
	bgez	$a5, .LBB4_24
# %bb.26:                               #   in Loop: Header=BB4_25 Depth=2
	st.w	$s6, $a4, 0
	add.d	$s6, $s6, $a2
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_27:                               # %.lr.ph187
                                        #   in Loop: Header=BB4_22 Depth=1
	ld.d	$a1, $sp, 72
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	move	$a4, $a0
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_28:                               #   in Loop: Header=BB4_29 Depth=2
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 12
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB4_21
.LBB4_29:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a1, 0
	bltz	$a5, .LBB4_28
# %bb.30:                               #   in Loop: Header=BB4_29 Depth=2
	slli.d	$a5, $a5, 2
	ld.w	$a6, $s3, 16
	ld.w	$a7, $s3, 4
	ldx.w	$a5, $a0, $a5
	ld.w	$t0, $a3, -4
	ld.w	$t1, $a3, 0
	sub.w	$a6, $a6, $a7
	slt	$a7, $s8, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s8, $a7
	or	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	ld.w	$a7, $s3, 12
	ld.w	$t2, $s3, 0
	mul.d	$a6, $a6, $t1
	ld.w	$t1, $a3, -8
	add.d	$a6, $a6, $t0
	sub.w	$a7, $a7, $t2
	slt	$t0, $s8, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $s8, $t0
	or	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	mul.d	$a6, $a6, $a7
	add.d	$a5, $t1, $a5
	add.d	$a5, $a5, $a6
	st.w	$a5, $a4, 0
	b	.LBB4_28
.LBB4_31:
	move	$s6, $zero
.LBB4_32:                               # %._crit_edge193
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $fp, 64
	st.w	$s6, $fp, 60
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
.LBB4_33:
	ld.w	$a0, $s3, 52
	mul.d	$a0, $a0, $s0
	st.w	$a0, $fp, 112
	move	$a0, $zero
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
.Lfunc_end4:
	.size	hypre_StructMatrixInitializeShell, .Lfunc_end4-hypre_StructMatrixInitializeShell
                                        # -- End function
	.globl	hypre_StructMatrixInitializeData # -- Begin function hypre_StructMatrixInitializeData
	.p2align	5
	.type	hypre_StructMatrixInitializeData,@function
hypre_StructMatrixInitializeData:       # @hypre_StructMatrixInitializeData
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
	move	$fp, $a0
	ld.d	$s1, $a0, 40
	st.w	$zero, $sp, 48
	ld.w	$a0, $s1, 8
	st.d	$a1, $fp, 48
	st.w	$zero, $fp, 56
	st.d	$zero, $sp, 40
	blez	$a0, .LBB5_20
# %bb.1:                                # %.lr.ph
	move	$s2, $zero
	addi.w	$s3, $zero, -1
	ori	$s4, $zero, 4
	lu52i.d	$s5, $zero, 1023
	vreplgr2vr.d	$vr0, $s5
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %hypre_StructMatrixExtractPointerByIndex.exit.thread
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s1, 8
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB5_20
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
                                        #       Child Loop BB5_13 Depth 3
                                        #         Child Loop BB5_16 Depth 4
                                        #         Child Loop BB5_19 Depth 4
	ld.d	$a0, $fp, 24
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(hypre_StructStencilElementRank)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_2
# %bb.4:                                # %hypre_StructMatrixExtractPointerByIndex.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$s6, $fp, 48
	beqz	$s6, .LBB5_2
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a1, $fp, 64
	slli.d	$a2, $s2, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a0, $a0, 2
	ld.d	$a2, $s1, 0
	ldx.w	$s7, $a1, $a0
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	add.d	$s0, $a2, $a0
	addi.d	$a1, $sp, 52
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	ld.w	$a0, $sp, 52
	ld.w	$a1, $sp, 56
	ld.w	$a2, $sp, 60
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blez	$a3, .LBB5_2
# %bb.6:                                # %.preheader160.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	blez	$a2, .LBB5_2
# %bb.7:                                # %.preheader160.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	blez	$a1, .LBB5_2
# %bb.8:                                # %.preheader160.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	blez	$a0, .LBB5_2
# %bb.9:                                # %.preheader159.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a4, $s0, 16
	ld.w	$a5, $s0, 4
	move	$t2, $zero
	move	$a3, $zero
	sub.w	$a4, $a4, $a5
	slt	$a5, $s3, $a4
	ld.w	$a6, $s0, 12
	ld.w	$a7, $s0, 0
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $s3, $a5
	or	$a5, $a4, $a5
	sub.w	$a4, $a6, $a7
	slt	$a6, $s3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s3, $a6
	or	$a4, $a4, $a6
	addi.d	$a6, $a4, 1
	sub.d	$a4, $a6, $a0
	sub.d	$a5, $a5, $a1
	addi.d	$a5, $a5, 1
	mulw.d.w	$a5, $a6, $a5
	bstrpick.d	$a6, $a0, 30, 2
	slli.d	$a6, $a6, 2
	alsl.d	$a7, $s7, $s6, 3
	addi.d	$t0, $a7, 16
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               # %._crit_edge165.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_11 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$t2, $t2, $a5
	beq	$a3, $a2, .LBB5_2
.LBB5_11:                               # %.preheader159.us.us.us.us.us
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_13 Depth 3
                                        #         Child Loop BB5_16 Depth 4
                                        #         Child Loop BB5_19 Depth 4
	move	$t1, $zero
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_12:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_13 Depth=3
	addi.w	$t1, $t1, 1
	add.w	$t2, $a4, $t3
	beq	$t1, $a1, .LBB5_10
.LBB5_13:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_16 Depth 4
                                        #         Child Loop BB5_19 Depth 4
	bgeu	$a0, $s4, .LBB5_15
# %bb.14:                               #   in Loop: Header=BB5_13 Depth=3
	move	$t4, $zero
	move	$t3, $t2
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_15:                               # %vector.ph
                                        #   in Loop: Header=BB5_13 Depth=3
	add.d	$t3, $a6, $t2
	alsl.d	$t2, $t2, $t0, 3
	move	$t4, $a6
	.p2align	4, , 16
.LBB5_16:                               # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_11 Depth=2
                                        #       Parent Loop BB5_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr0, $t2, -16
	vst	$vr0, $t2, 0
	addi.d	$t4, $t4, -4
	addi.d	$t2, $t2, 32
	bnez	$t4, .LBB5_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB5_13 Depth=3
	move	$t4, $a6
	beq	$a6, $a0, .LBB5_12
.LBB5_18:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_13 Depth=3
	alsl.d	$t2, $t3, $a7, 3
	sub.d	$t4, $a0, $t4
	.p2align	4, , 16
.LBB5_19:                               # %scalar.ph
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_11 Depth=2
                                        #       Parent Loop BB5_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$s5, $t2, 0
	addi.d	$t3, $t3, 1
	addi.w	$t4, $t4, -1
	addi.d	$t2, $t2, 8
	bnez	$t4, .LBB5_19
	b	.LBB5_12
.LBB5_20:                               # %._crit_edge
	move	$a0, $zero
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
.Lfunc_end5:
	.size	hypre_StructMatrixInitializeData, .Lfunc_end5-hypre_StructMatrixInitializeData
                                        # -- End function
	.globl	hypre_StructMatrixInitialize    # -- Begin function hypre_StructMatrixInitialize
	.p2align	5
	.type	hypre_StructMatrixInitialize,@function
hypre_StructMatrixInitialize:           # @hypre_StructMatrixInitialize
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeShell)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 60
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeData)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 56
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	hypre_StructMatrixInitialize, .Lfunc_end6-hypre_StructMatrixInitialize
                                        # -- End function
	.globl	hypre_StructMatrixSetValues     # -- Begin function hypre_StructMatrixSetValues
	.p2align	5
	.type	hypre_StructMatrixSetValues,@function
hypre_StructMatrixSetValues:            # @hypre_StructMatrixSetValues
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a6, $a0, 8
	ld.d	$a7, $a6, 8
	ld.w	$a6, $a7, 8
	blez	$a6, .LBB7_24
# %bb.1:                                # %.lr.ph117
	ld.d	$a7, $a7, 0
	ld.w	$t0, $a1, 0
	beqz	$a5, .LBB7_13
# %bb.2:                                # %.lr.ph117.split
	blez	$a2, .LBB7_24
# %bb.3:                                # %.lr.ph117.split.split.us.preheader
	move	$a5, $zero
	addi.w	$t1, $zero, -1
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %..loopexit110_crit_edge.us
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a6, .LBB7_24
.LBB7_5:                                # %.lr.ph117.split.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	slli.d	$t2, $a5, 4
	alsl.d	$t3, $a5, $t2, 3
	ldx.w	$t2, $a7, $t3
	blt	$t0, $t2, .LBB7_4
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	add.d	$t2, $a7, $t3
	ld.w	$t4, $t2, 12
	blt	$t4, $t0, .LBB7_4
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	ld.w	$t4, $a1, 4
	ld.w	$t5, $t2, 4
	blt	$t4, $t5, .LBB7_4
# %bb.8:                                #   in Loop: Header=BB7_5 Depth=1
	ld.w	$t5, $t2, 16
	blt	$t5, $t4, .LBB7_4
# %bb.9:                                #   in Loop: Header=BB7_5 Depth=1
	ld.w	$t5, $a1, 8
	ld.w	$t6, $t2, 8
	blt	$t5, $t6, .LBB7_4
# %bb.10:                               #   in Loop: Header=BB7_5 Depth=1
	ld.w	$t2, $t2, 20
	blt	$t2, $t5, .LBB7_4
# %bb.11:                               # %.preheader109.us
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$t2, $a0, 40
	ld.d	$t6, $a0, 64
	ld.d	$t7, $t2, 0
	ld.d	$t8, $a0, 48
	slli.d	$t2, $a5, 3
	ldx.d	$t2, $t6, $t2
	add.d	$t6, $t7, $t3
	ld.w	$fp, $t6, 8
	ldx.w	$t3, $t7, $t3
	ld.w	$t7, $t6, 4
	ld.w	$s0, $t6, 16
	sub.d	$t5, $t5, $fp
	sub.d	$fp, $t0, $t3
	sub.d	$t4, $t4, $t7
	sub.w	$t7, $s0, $t7
	slt	$s0, $t1, $t7
	maskeqz	$t7, $t7, $s0
	masknez	$s0, $t1, $s0
	or	$t7, $t7, $s0
	ld.w	$t6, $t6, 12
	addi.d	$t7, $t7, 1
	mul.d	$t5, $t7, $t5
	add.d	$t4, $t4, $t5
	sub.w	$t3, $t6, $t3
	slt	$t5, $t1, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $t1, $t5
	or	$t3, $t3, $t5
	addi.d	$t3, $t3, 1
	mul.d	$t3, $t4, $t3
	add.w	$t3, $fp, $t3
	alsl.d	$t3, $t3, $t8, 3
	move	$t4, $a2
	move	$t5, $a4
	move	$t6, $a3
	.p2align	4, , 16
.LBB7_12:                               #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $t2, $t7
	slli.d	$t7, $t7, 3
	fld.d	$fa0, $t5, 0
	fldx.d	$fa1, $t3, $t7
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $t3, $t7
	addi.d	$t6, $t6, 4
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 8
	bnez	$t4, .LBB7_12
	b	.LBB7_4
.LBB7_13:                               # %.lr.ph117.split.us
	blez	$a2, .LBB7_24
# %bb.14:                               # %.lr.ph117.split.us.split.us.preheader
	move	$a5, $zero
	addi.w	$t1, $zero, -1
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_15:                               # %..loopexit_crit_edge.us.us
                                        #   in Loop: Header=BB7_16 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a6, .LBB7_24
.LBB7_16:                               # %.lr.ph117.split.us.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_23 Depth 2
	slli.d	$t2, $a5, 4
	alsl.d	$t3, $a5, $t2, 3
	ldx.w	$t2, $a7, $t3
	blt	$t0, $t2, .LBB7_15
# %bb.17:                               #   in Loop: Header=BB7_16 Depth=1
	add.d	$t2, $a7, $t3
	ld.w	$t4, $t2, 12
	blt	$t4, $t0, .LBB7_15
# %bb.18:                               #   in Loop: Header=BB7_16 Depth=1
	ld.w	$t4, $a1, 4
	ld.w	$t5, $t2, 4
	blt	$t4, $t5, .LBB7_15
# %bb.19:                               #   in Loop: Header=BB7_16 Depth=1
	ld.w	$t5, $t2, 16
	blt	$t5, $t4, .LBB7_15
# %bb.20:                               #   in Loop: Header=BB7_16 Depth=1
	ld.w	$t5, $a1, 8
	ld.w	$t6, $t2, 8
	blt	$t5, $t6, .LBB7_15
# %bb.21:                               #   in Loop: Header=BB7_16 Depth=1
	ld.w	$t2, $t2, 20
	blt	$t2, $t5, .LBB7_15
# %bb.22:                               # %.preheader.us.us
                                        #   in Loop: Header=BB7_16 Depth=1
	ld.d	$t2, $a0, 40
	ld.d	$t6, $a0, 64
	ld.d	$t7, $t2, 0
	ld.d	$t8, $a0, 48
	slli.d	$t2, $a5, 3
	ldx.d	$t2, $t6, $t2
	add.d	$t6, $t7, $t3
	ld.w	$fp, $t6, 8
	ldx.w	$t3, $t7, $t3
	ld.w	$t7, $t6, 4
	ld.w	$s0, $t6, 16
	sub.d	$t5, $t5, $fp
	sub.d	$fp, $t0, $t3
	sub.d	$t4, $t4, $t7
	sub.w	$t7, $s0, $t7
	slt	$s0, $t1, $t7
	maskeqz	$t7, $t7, $s0
	masknez	$s0, $t1, $s0
	or	$t7, $t7, $s0
	ld.w	$t6, $t6, 12
	addi.d	$t7, $t7, 1
	mul.d	$t5, $t7, $t5
	add.d	$t4, $t4, $t5
	sub.w	$t3, $t6, $t3
	slt	$t5, $t1, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $t1, $t5
	or	$t3, $t3, $t5
	addi.d	$t3, $t3, 1
	mul.d	$t3, $t4, $t3
	add.w	$t3, $fp, $t3
	alsl.d	$t3, $t3, $t8, 3
	move	$t4, $a2
	move	$t5, $a4
	move	$t6, $a3
	.p2align	4, , 16
.LBB7_23:                               #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $t2, $t7
	fld.d	$fa0, $t5, 0
	slli.d	$t7, $t7, 3
	fstx.d	$fa0, $t3, $t7
	addi.d	$t6, $t6, 4
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 8
	bnez	$t4, .LBB7_23
	b	.LBB7_15
.LBB7_24:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	hypre_StructMatrixSetValues, .Lfunc_end7-hypre_StructMatrixSetValues
                                        # -- End function
	.globl	hypre_StructMatrixSetBoxValues  # -- Begin function hypre_StructMatrixSetBoxValues
	.p2align	5
	.type	hypre_StructMatrixSetBoxValues,@function
hypre_StructMatrixSetBoxValues:         # @hypre_StructMatrixSetBoxValues
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 8
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a4
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	move	$s4, $a2
	move	$s5, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$s6, $a0
	blez	$a1, .LBB8_4
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	add.d	$a1, $a0, $s0
	move	$a0, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(hypre_IntersectBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s3, 0
	stx.w	$a0, $a1, $s0
	ld.w	$a0, $s6, 4
	add.d	$a1, $a1, $s0
	st.w	$a0, $a1, 4
	ld.w	$a0, $s6, 8
	st.w	$a0, $a1, 8
	ld.w	$a0, $s6, 12
	st.w	$a0, $a1, 12
	ld.w	$a0, $s6, 16
	st.w	$a0, $a1, 16
	ld.w	$a0, $s6, 20
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, 8
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 24
	blt	$s2, $a0, .LBB8_2
# %bb.3:                                # %._crit_edge.thread
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	b	.LBB8_5
.LBB8_4:                                # %._crit_edge
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB8_50
.LBB8_5:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxDuplicate)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 0
	ld.w	$a1, $a0, 12
	mul.d	$a2, $a2, $s4
	st.w	$a2, $a0, 0
	mul.d	$a1, $a1, $s4
	add.d	$a1, $s4, $a1
	addi.d	$a1, $a1, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$a1, $a0, 12
	ld.w	$a0, $s3, 8
	blez	$a0, .LBB8_49
# %bb.6:                                # %.lr.ph586
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB8_49
# %bb.7:                                # %.lr.ph586.split.preheader
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	addi.d	$a1, $s1, 8
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s7, $s1, 16
	slli.d	$s0, $s4, 5
	slli.d	$s2, $s4, 3
	ori	$s8, $zero, 32
	beqz	$a0, .LBB8_47
	.p2align	4, , 16
.LBB8_8:
	blez	$s4, .LBB8_47
# %bb.9:                                # %.lr.ph574
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a1, $a3, 4
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	alsl.d	$a1, $a3, $a1, 3
	add.d	$a4, $a0, $a1
	ld.w	$a0, $a4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a1, $a4, 4
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a1, $a4, 8
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	mul.d	$a0, $a0, $s4
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a3, 3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s4, -1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB8_29
# %bb.10:                               # %.lr.ph574.split.preheader
	move	$s3, $zero
	b	.LBB8_12
	.p2align	4, , 16
.LBB8_11:                               # %.loopexit490
                                        #   in Loop: Header=BB8_12 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	beq	$s3, $s4, .LBB8_47
.LBB8_12:                               # %.lr.ph574.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_18 Depth 2
                                        #       Child Loop BB8_20 Depth 3
                                        #         Child Loop BB8_27 Depth 4
                                        #         Child Loop BB8_25 Depth 4
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 64
	slli.d	$a1, $s3, 2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	ld.d	$s5, $a2, 48
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
	addi.d	$a1, $sp, 140
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 140
	ld.w	$a1, $sp, 144
	ld.w	$a2, $sp, 148
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blez	$a3, .LBB8_11
# %bb.13:                               # %.preheader487.lr.ph
                                        #   in Loop: Header=BB8_12 Depth=1
	blez	$a2, .LBB8_11
# %bb.14:                               # %.preheader487.lr.ph
                                        #   in Loop: Header=BB8_12 Depth=1
	blez	$a1, .LBB8_11
# %bb.15:                               # %.preheader487.lr.ph
                                        #   in Loop: Header=BB8_12 Depth=1
	blez	$a0, .LBB8_11
# %bb.16:                               # %.preheader485.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB8_12 Depth=1
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ld.w	$t0, $t8, 4
	ld.w	$a4, $t8, 16
	move	$a3, $zero
	ld.w	$t1, $t8, 0
	sub.w	$a4, $a4, $t0
	addi.w	$a5, $zero, -1
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	ld.w	$a7, $t8, 12
	masknez	$a6, $a5, $a6
	or	$a4, $a4, $a6
	addi.d	$t2, $a4, 1
	sub.w	$a4, $a7, $t1
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a5, $a6
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a7, $s5, 4
	ld.w	$t3, $s5, 16
	or	$a4, $a4, $a6
	addi.d	$t4, $a4, 1
	ld.w	$a4, $s5, 0
	sub.w	$a6, $t3, $a7
	slt	$t3, $a5, $a6
	maskeqz	$a6, $a6, $t3
	ld.w	$t5, $s5, 12
	masknez	$t3, $a5, $t3
	or	$a6, $a6, $t3
	addi.d	$a6, $a6, 1
	sub.w	$t3, $t5, $a4
	slt	$t5, $a5, $t3
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.w	$t6, $t7, 0
	maskeqz	$t3, $t3, $t5
	masknez	$a5, $a5, $t5
	or	$a5, $t3, $a5
	sub.d	$t3, $t6, $a4
	ld.w	$a4, $t7, 4
	ld.w	$t5, $t7, 8
	ld.w	$t6, $s5, 8
	addi.d	$t7, $a5, 1
	sub.d	$a7, $a4, $a7
	mul.d	$a5, $s4, $a0
	sub.d	$t5, $t5, $t6
	sub.d	$a4, $t7, $a0
	sub.d	$a5, $t4, $a5
	mul.d	$t5, $a6, $t5
	sub.d	$a6, $a6, $a1
	mulw.d.w	$a6, $a6, $t7
	add.d	$t5, $a7, $t5
	sub.d	$a7, $t2, $a1
	mulw.d.w	$a7, $t4, $a7
	mul.d	$t5, $t5, $t7
	add.w	$ra, $t3, $t5
	ld.w	$t3, $t8, 8
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	sltui	$t5, $t5, 1
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	sub.d	$t1, $t6, $t1
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	sub.d	$t0, $t6, $t0
	ld.d	$t6, $sp, 64                    # 8-byte Folded Reload
	sub.d	$t3, $t6, $t3
	mul.d	$t2, $t2, $t3
	add.d	$t0, $t0, $t2
	mul.d	$t0, $t0, $t4
	add.w	$s6, $t1, $t0
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$t0, $fp, $t0, 3
	addi.d	$t1, $a0, -1
	bstrpick.d	$t2, $t1, 31, 0
	alsl.d	$t1, $t2, $t0, 3
	addi.d	$t1, $t1, 8
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$t2, $t2, $t3, 3
	ori	$t3, $zero, 3
	sltu	$t3, $t3, $a0
	and	$t3, $t3, $t5
	bstrpick.d	$t4, $a0, 30, 2
	slli.d	$t4, $t4, 2
	mul.d	$t5, $t4, $s4
	addi.d	$t6, $t0, 16
	b	.LBB8_18
	.p2align	4, , 16
.LBB8_17:                               # %._crit_edge502.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB8_18 Depth=2
	add.w	$ra, $ra, $a6
	addi.w	$a3, $a3, 1
	add.w	$s6, $s6, $a7
	beq	$a3, $a2, .LBB8_11
.LBB8_18:                               # %.preheader485.us.us.us.us.us
                                        #   Parent Loop BB8_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_20 Depth 3
                                        #         Child Loop BB8_27 Depth 4
                                        #         Child Loop BB8_25 Depth 4
	move	$t7, $zero
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_19:                               # %._crit_edge497.us.us.us.us.us.us
                                        #   in Loop: Header=BB8_20 Depth=3
	add.w	$ra, $a4, $fp
	addi.w	$t7, $t7, 1
	add.w	$s6, $a5, $t8
	beq	$t7, $a1, .LBB8_17
.LBB8_20:                               # %.preheader483.us.us.us.us.us.us
                                        #   Parent Loop BB8_12 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_27 Depth 4
                                        #         Child Loop BB8_25 Depth 4
	beqz	$t3, .LBB8_23
# %bb.21:                               # %vector.memcheck663
                                        #   in Loop: Header=BB8_20 Depth=3
	alsl.d	$t8, $ra, $t0, 3
	alsl.d	$fp, $s6, $t2, 3
	bgeu	$t8, $fp, .LBB8_26
# %bb.22:                               # %vector.memcheck663
                                        #   in Loop: Header=BB8_20 Depth=3
	alsl.d	$t8, $ra, $t1, 3
	alsl.d	$fp, $s6, $s1, 3
	bgeu	$fp, $t8, .LBB8_26
.LBB8_23:                               #   in Loop: Header=BB8_20 Depth=3
	move	$s5, $zero
	move	$t8, $s6
	move	$fp, $ra
.LBB8_24:                               # %scalar.ph672.preheader
                                        #   in Loop: Header=BB8_20 Depth=3
	alsl.d	$s6, $t8, $s1, 3
	alsl.d	$ra, $fp, $t0, 3
	sub.d	$s5, $a0, $s5
	.p2align	4, , 16
.LBB8_25:                               # %scalar.ph672
                                        #   Parent Loop BB8_12 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $s6, 0
	fld.d	$fa1, $ra, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $ra, 0
	addi.d	$fp, $fp, 1
	add.d	$t8, $t8, $s4
	add.d	$s6, $s6, $s2
	addi.w	$s5, $s5, -1
	addi.d	$ra, $ra, 8
	bnez	$s5, .LBB8_25
	b	.LBB8_19
	.p2align	4, , 16
.LBB8_26:                               # %vector.ph674
                                        #   in Loop: Header=BB8_20 Depth=3
	add.d	$t8, $t5, $s6
	add.d	$fp, $t4, $ra
	alsl.d	$s5, $s6, $s7, 3
	alsl.d	$s6, $ra, $t6, 3
	move	$ra, $t4
	.p2align	4, , 16
.LBB8_27:                               # %vector.body677
                                        #   Parent Loop BB8_12 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $s5, -16
	vld	$vr1, $s5, 0
	vld	$vr2, $s6, -16
	vld	$vr3, $s6, 0
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr0, $s6, -16
	vst	$vr1, $s6, 0
	add.d	$s5, $s5, $s0
	addi.d	$ra, $ra, -4
	addi.d	$s6, $s6, 32
	bnez	$ra, .LBB8_27
# %bb.28:                               # %middle.block686
                                        #   in Loop: Header=BB8_20 Depth=3
	move	$s5, $t4
	beq	$t4, $a0, .LBB8_19
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_29:                               # %.lr.ph574.split.us.preheader
	move	$s3, $zero
	b	.LBB8_31
	.p2align	4, , 16
.LBB8_30:                               # %.loopexit489.us
                                        #   in Loop: Header=BB8_31 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	beq	$s3, $s4, .LBB8_47
.LBB8_31:                               # %.lr.ph574.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_37 Depth 2
                                        #       Child Loop BB8_39 Depth 3
                                        #         Child Loop BB8_45 Depth 4
                                        #         Child Loop BB8_43 Depth 4
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 64
	slli.d	$a1, $s3, 2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	ld.d	$fp, $a2, 48
	slli.d	$a1, $a1, 2
	ldx.w	$s6, $a0, $a1
	addi.d	$a1, $sp, 140
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 140
	ld.w	$a1, $sp, 144
	ld.w	$a2, $sp, 148
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blez	$a3, .LBB8_30
# %bb.32:                               # %.preheader486.lr.ph.us
                                        #   in Loop: Header=BB8_31 Depth=1
	blez	$a2, .LBB8_30
# %bb.33:                               # %.preheader486.lr.ph.us
                                        #   in Loop: Header=BB8_31 Depth=1
	blez	$a1, .LBB8_30
# %bb.34:                               # %.preheader486.lr.ph.us
                                        #   in Loop: Header=BB8_31 Depth=1
	blez	$a0, .LBB8_30
# %bb.35:                               # %.preheader484.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB8_31 Depth=1
	ld.d	$ra, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a5, $ra, 4
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a4, $ra, 16
	move	$a3, $zero
	ld.w	$t1, $ra, 0
	sub.w	$a4, $a4, $a5
	addi.w	$a5, $zero, -1
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	ld.w	$a7, $ra, 12
	masknez	$a6, $a5, $a6
	or	$a4, $a4, $a6
	addi.d	$t2, $a4, 1
	sub.w	$a4, $a7, $t1
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a5, $a6
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t0, $a7, 4
	ld.w	$t3, $a7, 16
	or	$a4, $a4, $a6
	addi.d	$t4, $a4, 1
	ld.w	$t5, $a7, 0
	sub.w	$a4, $t3, $t0
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	ld.w	$t3, $a7, 12
	masknez	$a6, $a5, $a6
	or	$a4, $a4, $a6
	addi.d	$t6, $a4, 1
	sub.w	$a4, $t3, $t5
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	addi.d	$t3, $a4, 1
	mul.d	$a5, $s4, $a0
	sub.d	$a4, $t3, $a0
	sub.d	$a5, $t4, $a5
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.w	$t7, $s5, 0
	sub.d	$a6, $t6, $a1
	mulw.d.w	$a6, $a6, $t3
	ld.w	$t8, $s5, 4
	sub.d	$t5, $t7, $t5
	ld.w	$t7, $s5, 8
	ld.w	$s5, $a7, 8
	sub.d	$t8, $t8, $t0
	sub.d	$a7, $t2, $a1
	mulw.d.w	$a7, $t4, $a7
	sub.d	$t7, $t7, $s5
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	sltui	$s5, $t0, 1
	mul.d	$t6, $t6, $t7
	add.d	$t6, $t8, $t6
	mul.d	$t3, $t6, $t3
	ld.w	$t6, $ra, 8
	add.w	$t8, $t5, $t3
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	sub.d	$t1, $t0, $t1
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	sub.d	$t0, $t0, $t3
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	sub.d	$t3, $t3, $t6
	mul.d	$t2, $t2, $t3
	add.d	$t0, $t0, $t2
	mul.d	$t0, $t0, $t4
	add.w	$t0, $t1, $t0
	ori	$t1, $zero, 3
	sltu	$t1, $t1, $a0
	and	$t1, $t1, $s5
	bstrpick.d	$t2, $a0, 30, 2
	slli.d	$t2, $t2, 2
	mul.d	$t3, $t2, $s4
	alsl.d	$t4, $s6, $fp, 3
	addi.d	$t5, $t4, 16
	b	.LBB8_37
	.p2align	4, , 16
.LBB8_36:                               # %._crit_edge540.split.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB8_37 Depth=2
	add.w	$t8, $t8, $a6
	addi.w	$a3, $a3, 1
	add.w	$t0, $t0, $a7
	beq	$a3, $a2, .LBB8_30
.LBB8_37:                               # %.preheader484.us.us.us.us.us.us
                                        #   Parent Loop BB8_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_39 Depth 3
                                        #         Child Loop BB8_45 Depth 4
                                        #         Child Loop BB8_43 Depth 4
	move	$t6, $zero
	b	.LBB8_39
	.p2align	4, , 16
.LBB8_38:                               # %._crit_edge534.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB8_39 Depth=3
	add.w	$t8, $a4, $t7
	addi.w	$t6, $t6, 1
	add.w	$t0, $a5, $t0
	beq	$t6, $a1, .LBB8_36
.LBB8_39:                               # %.preheader.us.us.us.us.us.us.us
                                        #   Parent Loop BB8_31 Depth=1
                                        #     Parent Loop BB8_37 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_45 Depth 4
                                        #         Child Loop BB8_43 Depth 4
	beqz	$t1, .LBB8_41
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_39 Depth=3
	add.d	$t7, $s6, $t8
	alsl.d	$t7, $t7, $fp, 3
	alsl.d	$s5, $t0, $s1, 3
	sub.d	$t7, $t7, $s5
	bgeu	$t7, $s8, .LBB8_44
.LBB8_41:                               #   in Loop: Header=BB8_39 Depth=3
	move	$ra, $zero
	move	$t7, $t8
.LBB8_42:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_39 Depth=3
	alsl.d	$t8, $t0, $s1, 3
	alsl.d	$s5, $t7, $t4, 3
	sub.d	$ra, $a0, $ra
	.p2align	4, , 16
.LBB8_43:                               # %scalar.ph
                                        #   Parent Loop BB8_31 Depth=1
                                        #     Parent Loop BB8_37 Depth=2
                                        #       Parent Loop BB8_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t8, 0
	fst.d	$fa0, $s5, 0
	addi.d	$t7, $t7, 1
	add.d	$t0, $t0, $s4
	add.d	$t8, $t8, $s2
	addi.w	$ra, $ra, -1
	addi.d	$s5, $s5, 8
	bnez	$ra, .LBB8_43
	b	.LBB8_38
	.p2align	4, , 16
.LBB8_44:                               # %vector.ph
                                        #   in Loop: Header=BB8_39 Depth=3
	slli.d	$s5, $t0, 3
	add.d	$t0, $t3, $t0
	add.d	$t7, $t2, $t8
	add.d	$s5, $s7, $s5
	alsl.d	$t8, $t8, $t5, 3
	move	$ra, $t2
	.p2align	4, , 16
.LBB8_45:                               # %vector.body
                                        #   Parent Loop BB8_31 Depth=1
                                        #     Parent Loop BB8_37 Depth=2
                                        #       Parent Loop BB8_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $s5, -16
	vld	$vr1, $s5, 0
	vst	$vr0, $t8, -16
	vst	$vr1, $t8, 0
	add.d	$s5, $s5, $s0
	addi.d	$ra, $ra, -4
	addi.d	$t8, $t8, 32
	bnez	$ra, .LBB8_45
# %bb.46:                               # %middle.block
                                        #   in Loop: Header=BB8_39 Depth=3
	move	$ra, $t2
	beq	$t2, $a0, .LBB8_38
	b	.LBB8_42
	.p2align	4, , 16
.LBB8_47:                               # %.loopexit491
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $s3, 8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	bge	$a1, $a0, .LBB8_49
# %bb.48:                               # %.lr.ph586.splitthread-pre-split
                                        #   in Loop: Header=BB8_47 Depth=1
	ld.d	$a0, $s3, 0
	bnez	$a0, .LBB8_8
	b	.LBB8_47
.LBB8_49:                               # %._crit_edge587
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
.LBB8_50:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end8:
	.size	hypre_StructMatrixSetBoxValues, .Lfunc_end8-hypre_StructMatrixSetBoxValues
                                        # -- End function
	.globl	hypre_StructMatrixAssemble      # -- Begin function hypre_StructMatrixAssemble
	.p2align	5
	.type	hypre_StructMatrixAssemble,@function
hypre_StructMatrixAssemble:             # @hypre_StructMatrixAssemble
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 120
	bnez	$a0, .LBB9_2
# %bb.1:
	addi.d	$a1, $fp, 88
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ld.d	$a0, $fp, 8
	lu32i.d	$a3, 1
	st.d	$a3, $sp, 52
	st.w	$a2, $sp, 60
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 80
	addi.d	$a4, $sp, 72
	addi.d	$a5, $sp, 64
	pcaddu18i	$ra, %call36(hypre_CreateCommInfoFromNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 80
	ld.d	$a4, $fp, 40
	ld.d	$a6, $sp, 72
	ld.d	$a7, $sp, 64
	ld.w	$a5, $fp, 32
	ld.d	$a2, $fp, 8
	ld.w	$a3, $fp, 0
	addi.d	$a2, $a2, 56
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	addi.d	$a2, $sp, 52
	addi.d	$a3, $sp, 52
	st.d	$a5, $sp, 0
	move	$a5, $a4
	pcaddu18i	$ra, %call36(hypre_CommPkgCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 120
.LBB9_2:
	ld.d	$a1, $fp, 48
	addi.d	$a3, $sp, 40
	move	$a2, $a1
	pcaddu18i	$ra, %call36(hypre_InitializeCommunication)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(hypre_FinalizeCommunication)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end9:
	.size	hypre_StructMatrixAssemble, .Lfunc_end9-hypre_StructMatrixAssemble
                                        # -- End function
	.globl	hypre_StructMatrixSetNumGhost   # -- Begin function hypre_StructMatrixSetNumGhost
	.p2align	5
	.type	hypre_StructMatrixSetNumGhost,@function
hypre_StructMatrixSetNumGhost:          # @hypre_StructMatrixSetNumGhost
# %bb.0:
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 88
	ld.w	$a2, $a1, 4
	st.w	$a2, $a0, 92
	ld.w	$a2, $a1, 8
	st.w	$a2, $a0, 96
	ld.w	$a2, $a1, 12
	st.w	$a2, $a0, 100
	ld.w	$a2, $a1, 16
	st.w	$a2, $a0, 104
	ld.w	$a1, $a1, 20
	st.w	$a1, $a0, 108
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	hypre_StructMatrixSetNumGhost, .Lfunc_end10-hypre_StructMatrixSetNumGhost
                                        # -- End function
	.globl	hypre_StructMatrixPrint         # -- Begin function hypre_StructMatrixPrint
	.p2align	5
	.type	hypre_StructMatrixPrint,@function
hypre_StructMatrixPrint:                # @hypre_StructMatrixPrint
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
	move	$fp, $a1
	ld.w	$a3, $a1, 0
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	addi.d	$a1, $sp, 20
	move	$a0, $a3
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 20
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 25
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 25
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_9
# %bb.1:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 72
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 8
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructGridPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 24
	ld.d	$s4, $s5, 0
	ld.w	$s2, $fp, 32
	ld.d	$s6, $fp, 80
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 8
	blez	$a0, .LBB11_6
# %bb.2:                                # %.lr.ph.preheader
	addi.d	$s7, $s4, 8
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$s4, $a1, %pc_lo12(.L.str.8)
	move	$s8, $zero
	move	$a2, $zero
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_3:                               #   in Loop: Header=BB11_4 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 12
	addi.d	$s6, $s6, 4
	bge	$s8, $a0, .LBB11_6
.LBB11_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s6, 0
	bgez	$a1, .LBB11_3
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	ld.w	$a3, $s7, -8
	ld.w	$a4, $s7, -4
	ld.w	$a5, $s7, 0
	addi.w	$s1, $a2, 1
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 8
	move	$a2, $s1
	b	.LBB11_3
.LBB11_6:                               # %._crit_edge
	ld.d	$s4, $fp, 40
	move	$s5, $s4
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB11_8
# %bb.7:
	ld.d	$s5, $s3, 8
.LBB11_8:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 48
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(hypre_PrintBoxArrayData)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
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
.LBB11_9:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	addi.d	$a1, $sp, 25
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	hypre_StructMatrixPrint, .Lfunc_end11-hypre_StructMatrixPrint
                                        # -- End function
	.globl	hypre_StructMatrixMigrate       # -- Begin function hypre_StructMatrixMigrate
	.p2align	5
	.type	hypre_StructMatrixMigrate,@function
hypre_StructMatrixMigrate:              # @hypre_StructMatrixMigrate
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	lu32i.d	$a3, 1
	st.d	$a3, $sp, 44
	st.w	$a2, $sp, 52
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 72
	addi.d	$a4, $sp, 64
	addi.d	$a5, $sp, 56
	pcaddu18i	$ra, %call36(hypre_CreateCommInfoFromGrids)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72
	ld.d	$a4, $s0, 40
	ld.d	$a5, $fp, 40
	ld.d	$a6, $sp, 64
	ld.d	$a7, $sp, 56
	ld.w	$t0, $s0, 32
	ld.d	$a2, $s0, 8
	ld.w	$a3, $s0, 0
	addi.d	$a2, $a2, 56
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 44
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(hypre_CommPkgCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	ld.d	$a2, $fp, 48
	addi.d	$a3, $sp, 32
	pcaddu18i	$ra, %call36(hypre_InitializeCommunication)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(hypre_FinalizeCommunication)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end12:
	.size	hypre_StructMatrixMigrate, .Lfunc_end12-hypre_StructMatrixMigrate
                                        # -- End function
	.globl	hypre_StructMatrixRead          # -- Begin function hypre_StructMatrixRead
	.p2align	5
	.type	hypre_StructMatrixRead,@function
hypre_StructMatrixRead:                 # @hypre_StructMatrixRead
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
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 41
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 41
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_5
# %bb.1:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 32
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructGridRead)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	ld.w	$s2, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a2, $sp, 28
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 28
	move	$s3, $a0
	blez	$a1, .LBB13_4
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s4, $a0, %pc_lo12(.L.str.8)
	move	$s6, $zero
	move	$s5, $s3
	.p2align	4, , 16
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $s5, 4
	addi.d	$a5, $s5, 8
	addi.d	$a2, $sp, 20
	move	$a0, $fp
	move	$a1, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 28
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 12
	blt	$s6, $a1, .LBB13_3
.LBB13_4:                               # %._crit_edge
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 32
	move	$s4, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 136
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.w	$s1, $a0, 0
	addi.d	$a1, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructGridRef)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_StructStencilRef)
	jirl	$ra, $ra, 0
	st.w	$s5, $s2, 56
	st.w	$s5, $s2, 128
	ld.w	$a1, $sp, 24
	st.d	$zero, $s2, 88
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 96
	st.w	$a1, $s2, 72
	ld.w	$a1, $s0, 0
	st.w	$a1, $s2, 88
	ld.w	$a1, $s0, 4
	st.w	$a1, $s2, 92
	ld.w	$a1, $s0, 8
	st.w	$a1, $s2, 96
	ld.w	$a1, $s0, 12
	st.w	$a1, $s2, 100
	ld.w	$a1, $s0, 16
	st.w	$a1, $s2, 104
	ld.w	$a1, $s0, 20
	st.d	$a0, $s2, 16
	st.w	$a1, $s2, 108
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeShell)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 60
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	ld.d	$s0, $a0, 8
	ld.d	$s1, $s2, 40
	ld.w	$s3, $s2, 32
	st.w	$s5, $s2, 56
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s2, 48
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s3
	pcaddu18i	$ra, %call36(hypre_ReadBoxArrayData)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $s2
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
.LBB13_5:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	addi.d	$a1, $sp, 41
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	hypre_StructMatrixRead, .Lfunc_end13-hypre_StructMatrixRead
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.%05d"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Error: can't open output file %s\n"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"StructMatrix\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\nSymmetric: %d\n"
	.size	.L.str.4, 16

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\nGrid:\n"
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nStencil:\n"
	.size	.L.str.6, 11

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d\n"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%d: %d %d %d\n"
	.size	.L.str.8, 14

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\nData:\n"
	.size	.L.str.9, 8

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"r"
	.size	.L.str.10, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
