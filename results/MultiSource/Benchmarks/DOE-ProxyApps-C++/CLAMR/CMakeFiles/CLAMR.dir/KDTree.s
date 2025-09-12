	.file	"KDTree.c"
	.text
	.globl	KDTree_Initialize               # -- Begin function KDTree_Initialize
	.p2align	5
	.type	KDTree_Initialize,@function
KDTree_Initialize:                      # @KDTree_Initialize
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(Bounds_Infinite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1024
	st.d	$a0, $fp, 32
	lu12i.w	$a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 40
	st.b	$zero, $fp, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 52
	st.w	$zero, $fp, 68
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	KDTree_Initialize, .Lfunc_end0-KDTree_Initialize
                                        # -- End function
	.globl	KDTree_Finalize                 # -- Begin function KDTree_Finalize
	.p2align	5
	.type	KDTree_Finalize,@function
KDTree_Finalize:                        # @KDTree_Finalize
# %bb.0:
	ld.d	$a0, $a0, 40
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	KDTree_Finalize, .Lfunc_end1-KDTree_Finalize
                                        # -- End function
	.globl	KDTree_Destroy                  # -- Begin function KDTree_Destroy
	.p2align	5
	.type	KDTree_Destroy,@function
KDTree_Destroy:                         # @KDTree_Destroy
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(Bounds_Infinite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	st.d	$zero, $fp, 32
	beqz	$a0, .LBB2_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.d	$a0, $fp, 56
	st.d	$zero, $fp, 40
	st.b	$zero, $fp, 48
	st.w	$zero, $fp, 52
	beqz	$a0, .LBB2_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_4:
	ld.d	$a0, $fp, 64
	st.d	$zero, $fp, 56
	beqz	$a0, .LBB2_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_6:
	st.d	$zero, $fp, 64
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	KDTree_Destroy, .Lfunc_end2-KDTree_Destroy
                                        # -- End function
	.globl	KDTree_AddElement               # -- Begin function KDTree_AddElement
	.p2align	5
	.type	KDTree_AddElement,@function
KDTree_AddElement:                      # @KDTree_AddElement
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 48
	move	$s0, $a1
	beqz	$a0, .LBB3_6
# %bb.1:
	ld.d	$a0, $fp, 56
	st.b	$zero, $fp, 48
	st.w	$zero, $fp, 52
	beqz	$a0, .LBB3_3
# %bb.2:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_3:
	ld.d	$a0, $fp, 64
	st.d	$zero, $fp, 56
	beqz	$a0, .LBB3_5
# %bb.4:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_5:
	st.d	$zero, $fp, 64
.LBB3_6:
	ld.w	$a1, $fp, 32
	ld.w	$a0, $fp, 36
	bne	$a1, $a0, .LBB3_8
# %bb.7:
	ld.d	$a0, $fp, 40
	addi.w	$a1, $a1, 1024
	st.w	$a1, $fp, 36
	slli.d	$a1, $a1, 5
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 40
.LBB3_8:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Bounds_AddBounds)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 32
	ld.d	$a1, $fp, 40
	slli.d	$a0, $a0, 5
	add.d	$a1, $a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Bounds_Copy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 32
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 32
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	KDTree_AddElement, .Lfunc_end3-KDTree_AddElement
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function KDTree_CreateTree
.LCPI4_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	KDTree_CreateTree
	.p2align	5
	.type	KDTree_CreateTree,@function
KDTree_CreateTree:                      # @KDTree_CreateTree
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 200                  # 8-byte Folded Spill
	move	$s8, $a0
	ld.bu	$a0, $a0, 48
	bnez	$a0, .LBB4_45
# %bb.1:
	ld.w	$s1, $s8, 32
	blez	$s1, .LBB4_44
# %bb.2:
	slli.w	$fp, $s1, 1
	st.w	$fp, $s8, 52
	slli.d	$a0, $fp, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s8, 56
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 64
	slli.d	$s0, $s1, 2
	alsl.w	$a0, $s1, $s0, 1
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$s3, $a0
	bgeu	$s1, $a1, .LBB4_4
# %bb.3:
	move	$a0, $zero
	b	.LBB4_7
.LBB4_4:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI4_0)
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s3, 16
	move	$a2, $a0
	.p2align	4, , 16
.LBB4_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB4_5
# %bb.6:                                # %middle.block
	beq	$a0, $s1, .LBB4_9
.LBB4_7:                                # %scalar.ph.preheader
	alsl.d	$a1, $a0, $s3, 2
	sub.d	$a2, $s1, $a0
	.p2align	4, , 16
.LBB4_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_8
.LBB4_9:                                # %.loopexit
	st.d	$zero, $s4, 0
	addi.d	$a0, $s1, -1
	st.w	$a0, $s4, 8
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bounds_Copy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s4, -4
	addi.d	$s2, $s3, 4
	ori	$s6, $zero, 3
	ori	$s1, $zero, 0
	lu32i.d	$s1, -3
	lu12i.w	$a0, -93185
	ori	$a0, $a0, 2549
	lu32i.d	$a0, -504061
	lu52i.d	$a0, $a0, -813
	movgr2fr.d	$fs1, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
.LBB4_10:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #     Child Loop BB4_16 Depth 2
                                        #       Child Loop BB4_25 Depth 3
                                        #         Child Loop BB4_26 Depth 4
                                        #         Child Loop BB4_28 Depth 4
                                        #     Child Loop BB4_37 Depth 2
                                        #     Child Loop BB4_39 Depth 2
	move	$s0, $s6
	slli.d	$a0, $s6, 32
	addi.w	$s6, $s6, 3
	alsl.d	$s7, $s0, $a1, 2
	.p2align	4, , 16
.LBB4_11:                               #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a0, $s7, 0
	ld.w	$a2, $s7, -4
	ld.w	$s5, $s7, -8
	bne	$a0, $a2, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=2
	slli.d	$a0, $a0, 2
	ldx.w	$fp, $s3, $a0
	ld.d	$a0, $s8, 40
	addi.d	$s0, $s0, -3
	ld.d	$a1, $s8, 56
	slli.d	$a2, $fp, 5
	add.d	$a0, $a0, $a2
	slli.d	$a2, $s5, 5
	add.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(Bounds_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 64
	sub.d	$a1, $zero, $fp
	slli.d	$a2, $s5, 2
	stx.w	$a1, $a0, $a2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	addi.w	$s6, $s6, -3
	addi.d	$s7, $s7, -12
	bnez	$s0, .LBB4_11
	b	.LBB4_42
	.p2align	4, , 16
.LBB4_13:                               # %.preheader
                                        #   in Loop: Header=BB4_10 Depth=1
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	move	$s7, $a0
	ld.d	$a0, $s8, 56
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	slli.d	$fp, $s5, 5
	add.d	$a0, $a0, $fp
	move	$a1, $zero
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Bounds_WidthAxis)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 56
	fcmp.cule.d	$fcc0, $fa0, $fs1
	fsel	$fs0, $fa0, $fs1, $fcc0
	movcf2gr	$a1, $fcc0
	sub.d	$s0, $zero, $a1
	add.d	$a0, $a0, $fp
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(Bounds_WidthAxis)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fs0, $fa0
	movcf2gr	$a0, $fcc0
	masknez	$a1, $s0, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	sub.w	$a1, $s7, $a2
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $a2, $s7
	move	$s7, $a1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s5, $a0, 1
	alsl.d	$a0, $a2, $s3, 2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	blt	$s7, $a0, .LBB4_31
# %bb.14:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_10 Depth=1
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	sub.w	$a0, $s5, $a2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$a0, $a2, $s2, 2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_15:                               #   in Loop: Header=BB4_16 Depth=2
	addi.w	$a0, $s0, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$s8, $a1, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	slt	$a0, $a3, $a0
	addi.w	$a1, $s0, -1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s7, $a0, $a2
	slt	$a0, $a3, $s0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	sub.w	$a0, $s7, $fp
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.w	$a1, $s1, 0
	move	$s8, $s2
	ori	$a1, $zero, 1
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB4_32
.LBB4_16:                               # %.lr.ph.i
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_25 Depth 3
                                        #         Child Loop BB4_26 Depth 4
                                        #         Child Loop BB4_28 Depth 4
	add.d	$a0, $s7, $fp
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	addi.w	$a3, $fp, 1
	slli.d	$a1, $a3, 2
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a2, $s2, $a1
	slli.d	$a0, $a0, 1
	bstrins.d	$a0, $zero, 1, 0
	ldx.w	$s3, $s2, $a0
	stx.w	$a2, $s2, $a0
	ld.d	$a0, $s8, 40
	move	$s6, $a3
	alsl.d	$s0, $a3, $s2, 2
	stx.w	$s3, $s2, $a1
	slli.d	$a1, $s3, 5
	add.d	$a0, $a0, $a1
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 2
	ldx.w	$s1, $s2, $a0
	ld.d	$a0, $s8, 40
	fmov.d	$fs0, $fa0
	alsl.d	$s5, $s7, $s2, 2
	move	$s2, $s4
	slli.d	$a1, $s1, 5
	add.d	$a0, $a0, $a1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB4_18
# %bb.17:                               #   in Loop: Header=BB4_16 Depth=2
	st.w	$s1, $s0, 0
	st.w	$s3, $s5, 0
	move	$s1, $s3
	b	.LBB4_19
	.p2align	4, , 16
.LBB4_18:                               #   in Loop: Header=BB4_16 Depth=2
	move	$s3, $s1
.LBB4_19:                               #   in Loop: Header=BB4_16 Depth=2
	slli.d	$a0, $fp, 2
	move	$a1, $fp
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$fp, $a2, $a0
	ld.d	$a0, $s8, 40
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$s4, $a1, $a2, 2
	slli.d	$a1, $fp, 5
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 40
	fmov.d	$fs0, $fa0
	slli.d	$a1, $s1, 5
	move	$s1, $s4
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB4_21
# %bb.20:                               #   in Loop: Header=BB4_16 Depth=2
	st.w	$s3, $s1, 0
	st.w	$fp, $s5, 0
.LBB4_21:                               #   in Loop: Header=BB4_16 Depth=2
	ld.w	$fp, $s0, 0
	ld.d	$a0, $s8, 40
	slli.d	$a1, $fp, 5
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s1, 0
	ld.d	$a0, $s8, 40
	fmov.d	$fs0, $fa0
	slli.d	$a1, $s4, 5
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	fcmp.cule.d	$fcc0, $fs0, $fa0
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	bcnez	$fcc0, .LBB4_23
# %bb.22:                               #   in Loop: Header=BB4_16 Depth=2
	st.w	$s4, $s0, 0
	st.w	$fp, $s1, 0
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	move	$s4, $fp
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_23:                               #   in Loop: Header=BB4_16 Depth=2
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
.LBB4_24:                               #   in Loop: Header=BB4_16 Depth=2
	move	$fp, $s6
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	move	$s0, $s7
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_25:                               #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_26 Depth 4
                                        #         Child Loop BB4_28 Depth 4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$s6, $fp, $a0, 2
	move	$s3, $fp
	.p2align	4, , 16
.LBB4_26:                               #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_16 Depth=2
                                        #       Parent Loop BB4_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s5, $s6, 0
	ld.d	$a0, $s8, 40
	addi.d	$s3, $s3, 1
	slli.d	$a1, $s5, 5
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 40
	fmov.d	$fs0, $fa0
	slli.d	$s7, $s4, 5
	add.d	$a0, $a0, $s7
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$s6, $s6, 4
	bcnez	$fcc0, .LBB4_26
# %bb.27:                               # %.preheader.i
                                        #   in Loop: Header=BB4_25 Depth=3
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	addi.d	$fp, $s0, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s1, $s0, $a0, 2
	move	$s4, $s2
	move	$s2, $s8
	.p2align	4, , 16
.LBB4_28:                               #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_16 Depth=2
                                        #       Parent Loop BB4_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s8, $s1, -4
	ld.d	$a0, $s2, 40
	addi.d	$s1, $s1, -4
	slli.d	$a1, $s8, 5
	add.d	$a0, $a0, $a1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	fmov.d	$fs0, $fa0
	add.d	$a0, $a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	fcmp.clt.d	$fcc0, $fa0, $fs0
	addi.d	$fp, $fp, -1
	bcnez	$fcc0, .LBB4_28
# %bb.29:                               #   in Loop: Header=BB4_25 Depth=3
	bge	$s3, $fp, .LBB4_15
# %bb.30:                               #   in Loop: Header=BB4_25 Depth=3
	st.w	$s8, $s6, -4
	st.w	$s5, $s1, 0
	move	$s8, $s2
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	b	.LBB4_25
.LBB4_31:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s7
	move	$s7, $zero
	move	$s1, $a0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_33
	b	.LBB4_35
.LBB4_32:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$s1, $s7
	move	$s7, $fp
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_35
.LBB4_33:                               #   in Loop: Header=BB4_10 Depth=1
	slli.d	$a0, $s1, 2
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a1, $s0, $a0
	ld.d	$a0, $s8, 40
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	move	$fp, $s4
	move	$s4, $s2
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 2
	ldx.w	$s0, $s0, $a0
	ld.d	$a0, $s8, 40
	fmov.d	$fs0, $fa0
	slli.d	$a1, $s0, 5
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	move	$s2, $s4
	move	$s4, $fp
	pcaddu18i	$ra, %call36(Bounds_CenterAxis)
	jirl	$ra, $ra, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB4_35
# %bb.34:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a1, 2
	alsl.d	$a1, $s7, $a1, 2
	st.w	$s0, $a0, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB4_35:                               # %median_sort.exit
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $s8, 64
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	stx.w	$a2, $a0, $a1
	ld.d	$a0, $s8, 56
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a2, $a1, -8
	st.w	$s5, $a1, 0
	slli.d	$s0, $a2, 5
	add.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(Bounds_Infinite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s5, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$s5, $a0, .LBB4_38
# %bb.36:                               # %.lr.ph149.preheader
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_37:                               # %.lr.ph149
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 56
	bstrpick.d	$a1, $s1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s3, $a1
	ld.d	$a2, $s8, 40
	add.d	$a0, $a0, $s0
	slli.d	$a1, $a1, 5
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(Bounds_AddBounds)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$fp, $s1, .LBB4_37
.LBB4_38:                               # %._crit_edge150
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	srai.d	$a1, $a1, 30
	add.d	$a2, $s4, $a1
	stx.w	$a0, $s4, $a1
	ld.d	$a1, $s8, 56
	st.w	$fp, $a2, 4
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	st.w	$s0, $a2, 8
	slli.d	$fp, $a0, 5
	add.d	$a0, $a1, $fp
	pcaddu18i	$ra, %call36(Bounds_Infinite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.w	$s0, $a1, 1
	blt	$a0, $s0, .LBB4_40
	.p2align	4, , 16
.LBB4_39:                               # %.lr.ph155
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 56
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s3, $a1
	ld.d	$a2, $s8, 40
	add.d	$a0, $a0, $fp
	slli.d	$a1, $a1, 5
	add.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(Bounds_AddBounds)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$a0, $s0, .LBB4_39
.LBB4_40:                               # %.outer
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bnez	$s6, .LBB4_10
# %bb.41:                               # %.outer._crit_edge
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB4_43
	b	.LBB4_44
.LBB4_42:                               # %.outer._crit_edge.thread
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_43:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_44:
	ori	$a0, $zero, 1
	st.b	$a0, $s8, 48
.LBB4_45:
	fld.d	$fs1, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end4:
	.size	KDTree_CreateTree, .Lfunc_end4-KDTree_CreateTree
                                        # -- End function
	.globl	KDTree_QueryBoxIntersect        # -- Begin function KDTree_QueryBoxIntersect
	.p2align	5
	.type	KDTree_QueryBoxIntersect,@function
KDTree_QueryBoxIntersect:               # @KDTree_QueryBoxIntersect
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 48
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	bnez	$a0, .LBB5_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(KDTree_CreateTree)
	jirl	$ra, $ra, 0
.LBB5_2:
	st.w	$zero, $s2, 0
	ld.w	$a0, $fp, 52
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.w	$zero, $a0, 0
	ori	$s5, $zero, 1
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_3:                                #   in Loop: Header=BB5_5 Depth=1
	alsl.d	$a1, $s4, $s3, 2
	st.w	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.w	$s4, $s5, 1
	slli.d	$a1, $s5, 2
	stx.w	$a0, $s3, $a1
.LBB5_4:                                # %.backedge
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s5, $s4
	beqz	$s4, .LBB5_8
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	addi.w	$s4, $s5, -1
	slli.d	$a0, $s4, 2
	ldx.w	$s6, $s3, $a0
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s6, 5
	add.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(Bounds_Copy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Bounds_IsOverlappingBounds)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_4
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a0, $fp, 64
	slli.d	$a1, $s6, 2
	ldx.w	$a0, $a0, $a1
	bgtz	$a0, .LBB5_3
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=1
	ld.w	$a1, $s2, 0
	sub.d	$a0, $zero, $a0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $s1, $a1
	ld.w	$a0, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
	b	.LBB5_4
.LBB5_8:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
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
.Lfunc_end5:
	.size	KDTree_QueryBoxIntersect, .Lfunc_end5-KDTree_QueryBoxIntersect
                                        # -- End function
	.globl	KDTree_QueryCircleIntersect_Double # -- Begin function KDTree_QueryCircleIntersect_Double
	.p2align	5
	.type	KDTree_QueryCircleIntersect_Double,@function
KDTree_QueryCircleIntersect_Double:     # @KDTree_QueryCircleIntersect_Double
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.bu	$a0, $a0, 48
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s5, $a3
	fmov.d	$fs0, $fa0
	move	$s3, $a2
	move	$s4, $a1
	bnez	$a0, .LBB6_2
# %bb.1:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(KDTree_CreateTree)
	jirl	$ra, $ra, 0
.LBB6_2:
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	fneg.d	$fa0, $fs0
	fst.d	$fa0, $sp, 8
	fst.d	$fs0, $sp, 24
	fst.d	$fa0, $sp, 16
	fst.d	$fs0, $sp, 32
	addi.d	$a1, $sp, 44
	addi.d	$a3, $sp, 8
	move	$a0, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 44
	st.w	$zero, $s4, 0
	blez	$a0, .LBB6_20
# %bb.3:                                # %.lr.ph.preheader
	move	$a2, $zero
	move	$a1, $s5
	.p2align	4, , 16
.LBB6_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	slli.d	$a4, $a3, 3
	fldx.d	$fa3, $s2, $a4
	fldx.d	$fa2, $s0, $a4
	fmul.d	$fa1, $fa3, $fa3
	fldx.d	$fa4, $s1, $a4
	fmul.d	$fa6, $fa2, $fa2
	fadd.d	$fa0, $fa1, $fa6
	fsqrt.d	$fa0, $fa0
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa3, $fa3
	fldx.d	$fa5, $fp, $a4
	fadd.d	$fa3, $fa6, $fa4
	fcmp.cule.d	$fcc0, $fa0, $fs0
	fsqrt.d	$fa3, $fa3
	bcnez	$fcc0, .LBB6_6
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	fcmp.clt.d	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB6_16
.LBB6_6:                                #   in Loop: Header=BB6_4 Depth=1
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_4 Depth=1
	fcmp.clt.d	$fcc0, $fs0, $fa3
	bcnez	$fcc0, .LBB6_16
.LBB6_8:                                #   in Loop: Header=BB6_4 Depth=1
	fadd.d	$fa2, $fa2, $fa5
	fmul.d	$fa5, $fa2, $fa2
	fadd.d	$fa2, $fa4, $fa5
	fcmp.cule.d	$fcc0, $fa3, $fs0
	fsqrt.d	$fa2, $fa2
	bcnez	$fcc0, .LBB6_10
# %bb.9:                                #   in Loop: Header=BB6_4 Depth=1
	fcmp.clt.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB6_16
.LBB6_10:                               #   in Loop: Header=BB6_4 Depth=1
	fcmp.cule.d	$fcc0, $fs0, $fa3
	bcnez	$fcc0, .LBB6_12
# %bb.11:                               #   in Loop: Header=BB6_4 Depth=1
	fcmp.clt.d	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB6_16
.LBB6_12:                               #   in Loop: Header=BB6_4 Depth=1
	fadd.d	$fa1, $fa1, $fa5
	fsqrt.d	$fa1, $fa1
	fcmp.cule.d	$fcc1, $fa2, $fs0
	fcmp.clt.d	$fcc0, $fa1, $fs0
	bcnez	$fcc1, .LBB6_14
# %bb.13:                               #   in Loop: Header=BB6_4 Depth=1
	bcnez	$fcc0, .LBB6_16
.LBB6_14:                               #   in Loop: Header=BB6_4 Depth=1
	fcmp.cule.d	$fcc2, $fs0, $fa2
	fcmp.clt.d	$fcc1, $fs0, $fa1
	bcnez	$fcc2, .LBB6_18
# %bb.15:                               #   in Loop: Header=BB6_4 Depth=1
	bceqz	$fcc1, .LBB6_18
	.p2align	4, , 16
.LBB6_16:                               # %.sink.split
                                        #   in Loop: Header=BB6_4 Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $s3, $a2
	ld.w	$a2, $s4, 0
	addi.w	$a2, $a2, 1
	st.w	$a2, $s4, 0
.LBB6_17:                               #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB6_4
	b	.LBB6_20
.LBB6_18:                               #   in Loop: Header=BB6_4 Depth=1
	fcmp.clt.d	$fcc2, $fa0, $fs0
	movcf2gr	$a4, $fcc2
	movcf2gr	$a5, $fcc1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB6_16
# %bb.19:                               #   in Loop: Header=BB6_4 Depth=1
	fcmp.clt.d	$fcc1, $fs0, $fa0
	movcf2gr	$a4, $fcc1
	movcf2gr	$a5, $fcc0
	and	$a4, $a4, $a5
	beqz	$a4, .LBB6_17
	b	.LBB6_16
.LBB6_20:                               # %._crit_edge
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end6:
	.size	KDTree_QueryCircleIntersect_Double, .Lfunc_end6-KDTree_QueryCircleIntersect_Double
                                        # -- End function
	.globl	KDTree_QueryCircleIntersect_Float # -- Begin function KDTree_QueryCircleIntersect_Float
	.p2align	5
	.type	KDTree_QueryCircleIntersect_Float,@function
KDTree_QueryCircleIntersect_Float:      # @KDTree_QueryCircleIntersect_Float
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.bu	$a0, $a0, 48
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s5, $a3
	fmov.d	$fs0, $fa0
	move	$s3, $a2
	move	$s4, $a1
	bnez	$a0, .LBB7_2
# %bb.1:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(KDTree_CreateTree)
	jirl	$ra, $ra, 0
.LBB7_2:
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	fneg.d	$fa0, $fs0
	fst.d	$fa0, $sp, 8
	fst.d	$fs0, $sp, 24
	fst.d	$fa0, $sp, 16
	fst.d	$fs0, $sp, 32
	addi.d	$a1, $sp, 44
	addi.d	$a3, $sp, 8
	move	$a0, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 44
	st.w	$zero, $s4, 0
	blez	$a0, .LBB7_20
# %bb.3:                                # %.lr.ph.preheader
	move	$a2, $zero
	move	$a1, $s5
	.p2align	4, , 16
.LBB7_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	slli.d	$a4, $a3, 2
	fldx.s	$fa3, $s2, $a4
	fldx.s	$fa2, $s0, $a4
	fcvt.d.s	$fa0, $fa3
	fmul.d	$fa1, $fa0, $fa0
	fcvt.d.s	$fa0, $fa2
	fldx.s	$fa4, $s1, $a4
	fmul.d	$fa6, $fa0, $fa0
	fadd.d	$fa0, $fa1, $fa6
	fsqrt.d	$fa0, $fa0
	fadd.s	$fa3, $fa3, $fa4
	fcvt.d.s	$fa3, $fa3
	fmul.d	$fa4, $fa3, $fa3
	fldx.s	$fa5, $fp, $a4
	fadd.d	$fa3, $fa6, $fa4
	fcmp.cule.d	$fcc0, $fa0, $fs0
	fsqrt.d	$fa3, $fa3
	bcnez	$fcc0, .LBB7_6
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	fcmp.clt.d	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB7_16
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_4 Depth=1
	fcmp.clt.d	$fcc0, $fs0, $fa3
	bcnez	$fcc0, .LBB7_16
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=1
	fadd.s	$fa2, $fa2, $fa5
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa5, $fa2, $fa2
	fadd.d	$fa2, $fa4, $fa5
	fcmp.cule.d	$fcc0, $fa3, $fs0
	fsqrt.d	$fa2, $fa2
	bcnez	$fcc0, .LBB7_10
# %bb.9:                                #   in Loop: Header=BB7_4 Depth=1
	fcmp.clt.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB7_16
.LBB7_10:                               #   in Loop: Header=BB7_4 Depth=1
	fcmp.cule.d	$fcc0, $fs0, $fa3
	bcnez	$fcc0, .LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_4 Depth=1
	fcmp.clt.d	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB7_16
.LBB7_12:                               #   in Loop: Header=BB7_4 Depth=1
	fadd.d	$fa1, $fa1, $fa5
	fsqrt.d	$fa1, $fa1
	fcmp.cule.d	$fcc1, $fa2, $fs0
	fcmp.clt.d	$fcc0, $fa1, $fs0
	bcnez	$fcc1, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_4 Depth=1
	bcnez	$fcc0, .LBB7_16
.LBB7_14:                               #   in Loop: Header=BB7_4 Depth=1
	fcmp.cule.d	$fcc2, $fs0, $fa2
	fcmp.clt.d	$fcc1, $fs0, $fa1
	bcnez	$fcc2, .LBB7_18
# %bb.15:                               #   in Loop: Header=BB7_4 Depth=1
	bceqz	$fcc1, .LBB7_18
	.p2align	4, , 16
.LBB7_16:                               # %.sink.split
                                        #   in Loop: Header=BB7_4 Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $s3, $a2
	ld.w	$a2, $s4, 0
	addi.w	$a2, $a2, 1
	st.w	$a2, $s4, 0
.LBB7_17:                               #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB7_4
	b	.LBB7_20
.LBB7_18:                               #   in Loop: Header=BB7_4 Depth=1
	fcmp.clt.d	$fcc2, $fa0, $fs0
	movcf2gr	$a4, $fcc2
	movcf2gr	$a5, $fcc1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB7_16
# %bb.19:                               #   in Loop: Header=BB7_4 Depth=1
	fcmp.clt.d	$fcc1, $fs0, $fa0
	movcf2gr	$a4, $fcc1
	movcf2gr	$a5, $fcc0
	and	$a4, $a4, $a5
	beqz	$a4, .LBB7_17
	b	.LBB7_16
.LBB7_20:                               # %._crit_edge
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	KDTree_QueryCircleIntersect_Float, .Lfunc_end7-KDTree_QueryCircleIntersect_Float
                                        # -- End function
	.globl	KDTree_QueryCircleIntersectWeighted_Double # -- Begin function KDTree_QueryCircleIntersectWeighted_Double
	.p2align	5
	.type	KDTree_QueryCircleIntersectWeighted_Double,@function
KDTree_QueryCircleIntersectWeighted_Double: # @KDTree_QueryCircleIntersectWeighted_Double
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.bu	$a0, $a0, 48
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s5, $a4
	fmov.d	$fs0, $fa0
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	bnez	$a0, .LBB8_2
# %bb.1:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(KDTree_CreateTree)
	jirl	$ra, $ra, 0
.LBB8_2:
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	fneg.d	$fa0, $fs0
	fst.d	$fa0, $sp, 8
	fst.d	$fs0, $sp, 24
	fst.d	$fa0, $sp, 16
	fst.d	$fs0, $sp, 32
	addi.d	$a1, $sp, 44
	addi.d	$a3, $sp, 8
	move	$a0, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 44
	st.w	$zero, $s4, 0
	blez	$a0, .LBB8_23
# %bb.3:                                # %.lr.ph.preheader
	ld.d	$a1, $sp, 128
	move	$a3, $zero
	vldi	$vr0, -928
	movgr2fr.d	$fa1, $zero
	move	$a2, $s5
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_4:                                #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	beqz	$a0, .LBB8_23
.LBB8_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a6, $a4, 3
	fldx.d	$fa7, $s1, $a6
	fldx.d	$fa6, $fp, $a6
	fmul.d	$fa4, $fa7, $fa7
	fldx.d	$ft0, $s0, $a6
	fmul.d	$fa3, $fa6, $fa6
	fadd.d	$fa2, $fa4, $fa3
	fsqrt.d	$fa2, $fa2
	fadd.d	$fa5, $fa7, $ft0
	fmul.d	$fa5, $fa5, $fa5
	fadd.d	$fa3, $fa3, $fa5
	fsqrt.d	$fa3, $fa3
	fcmp.cule.d	$fcc1, $fa2, $fs0
	fcmp.clt.d	$fcc0, $fa3, $fs0
	bcnez	$fcc1, .LBB8_7
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB8_5 Depth=1
	bcnez	$fcc0, .LBB8_9
.LBB8_7:                                #   in Loop: Header=BB8_5 Depth=1
	fcmp.cule.d	$fcc1, $fs0, $fa2
	move	$a5, $zero
	bcnez	$fcc1, .LBB8_10
# %bb.8:                                #   in Loop: Header=BB8_5 Depth=1
	fcmp.cule.d	$fcc1, $fa3, $fs0
	bcnez	$fcc1, .LBB8_10
.LBB8_9:                                #   in Loop: Header=BB8_5 Depth=1
	ori	$a5, $zero, 1
.LBB8_10:                               #   in Loop: Header=BB8_5 Depth=1
	fldx.d	$ft1, $a1, $a6
	fadd.d	$ft2, $fa6, $ft1
	fmul.d	$ft2, $ft2, $ft2
	fadd.d	$fa5, $fa5, $ft2
	fsqrt.d	$fa5, $fa5
	fadd.d	$fa4, $fa4, $ft2
	fsqrt.d	$fa4, $fa4
	fmul.d	$ft0, $ft0, $fa0
	fadd.d	$fa7, $fa7, $ft0
	fcmp.cule.d	$fcc1, $fa7, $fa1
	fmul.d	$fa7, $ft1, $fa0
	fadd.d	$fa6, $fa6, $fa7
	fcmp.cule.d	$fcc2, $fa6, $fa1
	bcnez	$fcc1, .LBB8_13
# %bb.11:                               #   in Loop: Header=BB8_5 Depth=1
	bcnez	$fcc2, .LBB8_13
# %bb.12:                               #   in Loop: Header=BB8_5 Depth=1
	fsub.d	$fa6, $fs0, $fa2
	fsub.d	$fa7, $fa5, $fa2
	b	.LBB8_19
	.p2align	4, , 16
.LBB8_13:                               #   in Loop: Header=BB8_5 Depth=1
	movcf2gr	$a6, $fcc1
	xori	$a7, $a6, 1
	movcf2gr	$t0, $fcc2
	or	$a7, $t0, $a7
	bnez	$a7, .LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_5 Depth=1
	fsub.d	$fa6, $fs0, $fa3
	fsub.d	$fa7, $fa4, $fa3
	b	.LBB8_19
	.p2align	4, , 16
.LBB8_15:                               #   in Loop: Header=BB8_5 Depth=1
	movcf2gr	$a7, $fcc2
	and	$a6, $a6, $a7
	beqz	$a6, .LBB8_17
# %bb.16:                               #   in Loop: Header=BB8_5 Depth=1
	fsub.d	$fa6, $fs0, $fa5
	fsub.d	$fa7, $fa2, $fa5
	b	.LBB8_19
.LBB8_17:                               #   in Loop: Header=BB8_5 Depth=1
	xori	$a6, $a7, 1
	movcf2gr	$a7, $fcc1
	or	$a6, $a7, $a6
	bnez	$a6, .LBB8_22
# %bb.18:                               #   in Loop: Header=BB8_5 Depth=1
	fsub.d	$fa6, $fs0, $fa4
	fsub.d	$fa7, $fa3, $fa4
	.p2align	4, , 16
.LBB8_19:                               #   in Loop: Header=BB8_5 Depth=1
	fdiv.d	$fa6, $fa6, $fa7
.LBB8_20:                               #   in Loop: Header=BB8_5 Depth=1
	fcmp.clt.d	$fcc2, $fs0, $fa3
	fcmp.clt.d	$fcc3, $fa5, $fs0
	fcmp.clt.d	$fcc1, $fs0, $fa2
	movcf2gr	$a6, $fcc2
	movcf2gr	$a7, $fcc3
	fcmp.clt.d	$fcc2, $fs0, $fa5
	and	$a6, $a6, $a7
	movcf2gr	$t0, $fcc0
	movcf2gr	$t1, $fcc2
	and	$t0, $t0, $t1
	fcmp.clt.d	$fcc0, $fa4, $fs0
	or	$a6, $a6, $t0
	movcf2gr	$t0, $fcc0
	fcmp.clt.d	$fcc0, $fs0, $fa4
	and	$t1, $t1, $t0
	movcf2gr	$t2, $fcc0
	and	$a7, $a7, $t2
	fcmp.clt.d	$fcc0, $fa2, $fs0
	or	$a7, $t1, $a7
	movcf2gr	$t1, $fcc0
	and	$t1, $t1, $t2
	movcf2gr	$t2, $fcc1
	and	$t0, $t2, $t0
	or	$t0, $t1, $t0
	slli.d	$t1, $a3, 3
	or	$a5, $a7, $a5
	or	$a5, $t0, $a5
	or	$a5, $a6, $a5
	fstx.d	$fa6, $s2, $t1
	beqz	$a5, .LBB8_4
# %bb.21:                               #   in Loop: Header=BB8_5 Depth=1
	slli.d	$a3, $a3, 2
	stx.w	$a4, $s3, $a3
	ld.w	$a3, $s4, 0
	addi.w	$a3, $a3, 1
	st.w	$a3, $s4, 0
	b	.LBB8_4
.LBB8_22:                               #   in Loop: Header=BB8_5 Depth=1
	vldi	$vr6, -928
	b	.LBB8_20
.LBB8_23:                               # %._crit_edge
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end8:
	.size	KDTree_QueryCircleIntersectWeighted_Double, .Lfunc_end8-KDTree_QueryCircleIntersectWeighted_Double
                                        # -- End function
	.globl	KDTree_QueryCircleIntersectWeighted_Float # -- Begin function KDTree_QueryCircleIntersectWeighted_Float
	.p2align	5
	.type	KDTree_QueryCircleIntersectWeighted_Float,@function
KDTree_QueryCircleIntersectWeighted_Float: # @KDTree_QueryCircleIntersectWeighted_Float
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.bu	$a0, $a0, 48
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s5, $a4
	fmov.d	$fs0, $fa0
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	bnez	$a0, .LBB9_2
# %bb.1:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(KDTree_CreateTree)
	jirl	$ra, $ra, 0
.LBB9_2:
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	fneg.d	$fa0, $fs0
	fst.d	$fa0, $sp, 8
	fst.d	$fs0, $sp, 24
	fst.d	$fa0, $sp, 16
	fst.d	$fs0, $sp, 32
	addi.d	$a1, $sp, 44
	addi.d	$a3, $sp, 8
	move	$a0, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 44
	st.w	$zero, $s4, 0
	blez	$a0, .LBB9_23
# %bb.3:                                # %.lr.ph.preheader
	ld.d	$a1, $sp, 128
	move	$a3, $zero
	vldi	$vr0, -928
	movgr2fr.d	$fa1, $zero
	move	$a2, $s5
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                #   in Loop: Header=BB9_5 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	beqz	$a0, .LBB9_23
.LBB9_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a6, $a4, 2
	fldx.s	$fa3, $s1, $a6
	fldx.s	$fa5, $fp, $a6
	fcvt.d.s	$fa7, $fa3
	fmul.d	$fa4, $fa7, $fa7
	fcvt.d.s	$fa6, $fa5
	fldx.s	$ft0, $s0, $a6
	fmul.d	$ft2, $fa6, $fa6
	fadd.d	$fa2, $fa4, $ft2
	fsqrt.d	$fa2, $fa2
	fadd.s	$fa3, $fa3, $ft0
	fcvt.d.s	$fa3, $fa3
	fmul.d	$ft1, $fa3, $fa3
	fadd.d	$fa3, $ft2, $ft1
	fsqrt.d	$fa3, $fa3
	fcmp.cule.d	$fcc1, $fa2, $fs0
	fcmp.clt.d	$fcc0, $fa3, $fs0
	bcnez	$fcc1, .LBB9_7
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB9_5 Depth=1
	bcnez	$fcc0, .LBB9_9
.LBB9_7:                                #   in Loop: Header=BB9_5 Depth=1
	fcmp.cule.d	$fcc1, $fs0, $fa2
	move	$a5, $zero
	bcnez	$fcc1, .LBB9_10
# %bb.8:                                #   in Loop: Header=BB9_5 Depth=1
	fcmp.cule.d	$fcc1, $fa3, $fs0
	bcnez	$fcc1, .LBB9_10
.LBB9_9:                                #   in Loop: Header=BB9_5 Depth=1
	ori	$a5, $zero, 1
.LBB9_10:                               #   in Loop: Header=BB9_5 Depth=1
	fldx.s	$ft2, $a1, $a6
	fadd.s	$fa5, $fa5, $ft2
	fcvt.d.s	$fa5, $fa5
	fmul.d	$ft3, $fa5, $fa5
	fadd.d	$fa5, $ft1, $ft3
	fsqrt.d	$fa5, $fa5
	fadd.d	$fa4, $fa4, $ft3
	fsqrt.d	$fa4, $fa4
	fcvt.d.s	$ft0, $ft0
	fmul.d	$ft0, $ft0, $fa0
	fadd.d	$fa7, $ft0, $fa7
	fcmp.cule.d	$fcc1, $fa7, $fa1
	fcvt.d.s	$fa7, $ft2
	fmul.d	$fa7, $fa7, $fa0
	fadd.d	$fa6, $fa7, $fa6
	fcmp.cule.d	$fcc2, $fa6, $fa1
	bcnez	$fcc1, .LBB9_13
# %bb.11:                               #   in Loop: Header=BB9_5 Depth=1
	bcnez	$fcc2, .LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_5 Depth=1
	fsub.d	$fa6, $fs0, $fa2
	fsub.d	$fa7, $fa5, $fa2
	b	.LBB9_19
	.p2align	4, , 16
.LBB9_13:                               #   in Loop: Header=BB9_5 Depth=1
	movcf2gr	$a6, $fcc1
	xori	$a7, $a6, 1
	movcf2gr	$t0, $fcc2
	or	$a7, $t0, $a7
	bnez	$a7, .LBB9_15
# %bb.14:                               #   in Loop: Header=BB9_5 Depth=1
	fsub.d	$fa6, $fs0, $fa3
	fsub.d	$fa7, $fa4, $fa3
	b	.LBB9_19
	.p2align	4, , 16
.LBB9_15:                               #   in Loop: Header=BB9_5 Depth=1
	movcf2gr	$a7, $fcc2
	and	$a6, $a6, $a7
	beqz	$a6, .LBB9_17
# %bb.16:                               #   in Loop: Header=BB9_5 Depth=1
	fsub.d	$fa6, $fs0, $fa5
	fsub.d	$fa7, $fa2, $fa5
	b	.LBB9_19
.LBB9_17:                               #   in Loop: Header=BB9_5 Depth=1
	xori	$a6, $a7, 1
	movcf2gr	$a7, $fcc1
	or	$a6, $a7, $a6
	bnez	$a6, .LBB9_22
# %bb.18:                               #   in Loop: Header=BB9_5 Depth=1
	fsub.d	$fa6, $fs0, $fa4
	fsub.d	$fa7, $fa3, $fa4
	.p2align	4, , 16
.LBB9_19:                               #   in Loop: Header=BB9_5 Depth=1
	fdiv.d	$fa6, $fa6, $fa7
.LBB9_20:                               #   in Loop: Header=BB9_5 Depth=1
	fcmp.clt.d	$fcc2, $fs0, $fa3
	fcmp.clt.d	$fcc3, $fa5, $fs0
	fcmp.clt.d	$fcc1, $fs0, $fa2
	movcf2gr	$a6, $fcc2
	movcf2gr	$a7, $fcc3
	fcmp.clt.d	$fcc2, $fs0, $fa5
	and	$a6, $a6, $a7
	movcf2gr	$t0, $fcc0
	movcf2gr	$t1, $fcc2
	and	$t0, $t0, $t1
	fcmp.clt.d	$fcc0, $fa4, $fs0
	or	$a6, $a6, $t0
	movcf2gr	$t0, $fcc0
	fcmp.clt.d	$fcc0, $fs0, $fa4
	and	$t1, $t1, $t0
	movcf2gr	$t2, $fcc0
	and	$a7, $a7, $t2
	fcmp.clt.d	$fcc0, $fa2, $fs0
	or	$a7, $t1, $a7
	movcf2gr	$t1, $fcc0
	and	$t1, $t1, $t2
	movcf2gr	$t2, $fcc1
	and	$t0, $t2, $t0
	or	$t0, $t1, $t0
	slli.d	$t1, $a3, 3
	or	$a5, $a7, $a5
	or	$a5, $t0, $a5
	or	$a5, $a6, $a5
	fstx.d	$fa6, $s2, $t1
	beqz	$a5, .LBB9_4
# %bb.21:                               #   in Loop: Header=BB9_5 Depth=1
	slli.d	$a3, $a3, 2
	stx.w	$a4, $s3, $a3
	ld.w	$a3, $s4, 0
	addi.w	$a3, $a3, 1
	st.w	$a3, $s4, 0
	b	.LBB9_4
.LBB9_22:                               #   in Loop: Header=BB9_5 Depth=1
	vldi	$vr6, -928
	b	.LBB9_20
.LBB9_23:                               # %._crit_edge
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end9:
	.size	KDTree_QueryCircleIntersectWeighted_Float, .Lfunc_end9-KDTree_QueryCircleIntersectWeighted_Float
                                        # -- End function
	.globl	KDTree_QueryCircleInterior_Double # -- Begin function KDTree_QueryCircleInterior_Double
	.p2align	5
	.type	KDTree_QueryCircleInterior_Double,@function
KDTree_QueryCircleInterior_Double:      # @KDTree_QueryCircleInterior_Double
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.bu	$a0, $a0, 48
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s5, $a3
	fmov.d	$fs0, $fa0
	move	$s3, $a2
	move	$s4, $a1
	bnez	$a0, .LBB10_2
# %bb.1:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(KDTree_CreateTree)
	jirl	$ra, $ra, 0
.LBB10_2:
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	fneg.d	$fa0, $fs0
	fst.d	$fa0, $sp, 8
	fst.d	$fs0, $sp, 24
	fst.d	$fa0, $sp, 16
	fst.d	$fs0, $sp, 32
	addi.d	$a1, $sp, 44
	addi.d	$a3, $sp, 8
	move	$a0, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 44
	st.w	$zero, $s4, 0
	blez	$a0, .LBB10_10
# %bb.3:                                # %.lr.ph.preheader
	move	$a2, $zero
	move	$a1, $s5
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_4:                               #   in Loop: Header=BB10_6 Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $s3, $a2
	ld.w	$a2, $s4, 0
	addi.w	$a2, $a2, 1
	st.w	$a2, $s4, 0
.LBB10_5:                               #   in Loop: Header=BB10_6 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB10_10
.LBB10_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	slli.d	$a4, $a3, 3
	fldx.d	$fa2, $s2, $a4
	fldx.d	$fa1, $s0, $a4
	fmul.d	$fa0, $fa2, $fa2
	fmul.d	$fa3, $fa1, $fa1
	fadd.d	$fa4, $fa0, $fa3
	fsqrt.d	$fa4, $fa4
	fcmp.clt.d	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB10_4
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB10_6 Depth=1
	fldx.d	$fa4, $s1, $a4
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa2
	fadd.d	$fa3, $fa3, $fa2
	fsqrt.d	$fa3, $fa3
	fcmp.clt.d	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB10_4
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB10_6 Depth=1
	fldx.d	$fa3, $fp, $a4
	fadd.d	$fa1, $fa1, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa2, $fa2, $fa1
	fsqrt.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB10_4
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB10_6 Depth=1
	fadd.d	$fa0, $fa0, $fa1
	fsqrt.d	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB10_5
	b	.LBB10_4
.LBB10_10:                              # %._crit_edge
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end10:
	.size	KDTree_QueryCircleInterior_Double, .Lfunc_end10-KDTree_QueryCircleInterior_Double
                                        # -- End function
	.globl	KDTree_QueryCircleInterior_Float # -- Begin function KDTree_QueryCircleInterior_Float
	.p2align	5
	.type	KDTree_QueryCircleInterior_Float,@function
KDTree_QueryCircleInterior_Float:       # @KDTree_QueryCircleInterior_Float
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.bu	$a0, $a0, 48
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s5, $a3
	fmov.d	$fs0, $fa0
	move	$s3, $a2
	move	$s4, $a1
	bnez	$a0, .LBB11_2
# %bb.1:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(KDTree_CreateTree)
	jirl	$ra, $ra, 0
.LBB11_2:
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	fneg.d	$fa0, $fs0
	fst.d	$fa0, $sp, 8
	fst.d	$fs0, $sp, 24
	fst.d	$fa0, $sp, 16
	fst.d	$fs0, $sp, 32
	addi.d	$a1, $sp, 44
	addi.d	$a3, $sp, 8
	move	$a0, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 44
	st.w	$zero, $s4, 0
	blez	$a0, .LBB11_10
# %bb.3:                                # %.lr.ph.preheader
	move	$a2, $zero
	move	$a1, $s5
	b	.LBB11_6
	.p2align	4, , 16
.LBB11_4:                               #   in Loop: Header=BB11_6 Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $s3, $a2
	ld.w	$a2, $s4, 0
	addi.w	$a2, $a2, 1
	st.w	$a2, $s4, 0
.LBB11_5:                               #   in Loop: Header=BB11_6 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB11_10
.LBB11_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	slli.d	$a4, $a3, 2
	fldx.s	$fa2, $s2, $a4
	fldx.s	$fa1, $s0, $a4
	fcvt.d.s	$fa0, $fa2
	fmul.d	$fa0, $fa0, $fa0
	fcvt.d.s	$fa3, $fa1
	fmul.d	$fa3, $fa3, $fa3
	fadd.d	$fa4, $fa0, $fa3
	fsqrt.d	$fa4, $fa4
	fcmp.clt.d	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB11_4
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB11_6 Depth=1
	fldx.s	$fa4, $s1, $a4
	fadd.s	$fa2, $fa2, $fa4
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa2
	fadd.d	$fa3, $fa3, $fa2
	fsqrt.d	$fa3, $fa3
	fcmp.clt.d	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB11_4
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB11_6 Depth=1
	fldx.s	$fa3, $fp, $a4
	fadd.s	$fa1, $fa1, $fa3
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa2, $fa2, $fa1
	fsqrt.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB11_4
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB11_6 Depth=1
	fadd.d	$fa0, $fa0, $fa1
	fsqrt.d	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB11_5
	b	.LBB11_4
.LBB11_10:                              # %._crit_edge
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end11:
	.size	KDTree_QueryCircleInterior_Float, .Lfunc_end11-KDTree_QueryCircleInterior_Float
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
