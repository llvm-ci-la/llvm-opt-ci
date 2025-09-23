	.file	"smg2_setup_rap.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMG2CreateRAPOp
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_1:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_2:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_3:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.text
	.globl	hypre_SMG2CreateRAPOp
	.p2align	5
	.type	hypre_SMG2CreateRAPOp,@function
hypre_SMG2CreateRAPOp:                  # @hypre_SMG2CreateRAPOp
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $a3
	move	$fp, $a1
	pcalau12i	$a0, %pc_hi20(.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost)
	addi.d	$a0, $a0, %pc_lo12(.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost)
	ld.d	$a1, $a0, 16
	vld	$vr0, $a0, 0
	ld.w	$a0, $fp, 72
	st.d	$a1, $sp, 24
	vst	$vr0, $sp, 8
	beqz	$a0, .LBB0_2
# %bb.1:                                # %.loopexit.loopexit59
	ori	$a0, $zero, 5
	ori	$a1, $zero, 12
	ori	$s1, $zero, 5
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	move	$a2, $a0
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a2, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 40
	st.w	$zero, $a2, 56
	b	.LBB0_3
.LBB0_2:                                # %.preheader
	ori	$a0, $zero, 9
	ori	$a1, $zero, 12
	ori	$s1, $zero, 9
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	move	$a2, $a0
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_3)
	vrepli.b	$vr2, 0
	vst	$vr2, $a2, 40
	vst	$vr0, $a2, 60
	vst	$vr1, $a2, 76
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_4)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a2, 32
	st.w	$zero, $a2, 56
	vst	$vr0, $a2, 92
.LBB0_3:                                # %.loopexit
	ori	$a0, $zero, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	st.w	$a0, $s0, 72
	beqz	$a0, .LBB0_5
# %bb.4:
	st.w	$zero, $sp, 12
	st.w	$zero, $sp, 20
.LBB0_5:
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	hypre_SMG2CreateRAPOp, .Lfunc_end0-hypre_SMG2CreateRAPOp
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMG2BuildRAPSym
.LCPI1_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
.LCPI1_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
.LCPI1_2:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	5                               # 0x5
.LCPI1_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
.LCPI1_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI1_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	6                               # 0x6
.LCPI1_6:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI1_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
.LCPI1_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	7                               # 0x7
	.text
	.globl	hypre_SMG2BuildRAPSym
	.p2align	5
	.type	hypre_SMG2BuildRAPSym,@function
hypre_SMG2BuildRAPSym:                  # @hypre_SMG2BuildRAPSym
# %bb.0:
	addi.d	$sp, $sp, -1760
	st.d	$ra, $sp, 1752                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1744                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1736                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1728                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1720                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1712                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1704                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1696                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1688                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1680                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1672                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1664                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1656                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1648                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1640                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1632                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1624                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1616                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1608                 # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	blez	$a6, .LBB1_54
# %bb.1:                                # %.preheader953.lr.ph
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 24
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a1, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vrepli.d	$vr13, 1
                                        # implicit-def: $r29
                                        # implicit-def: $r15
                                        # implicit-def: $r16
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	vst	$vr13, $sp, 464                 # 16-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.loopexit951
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	bge	$a4, $a0, .LBB1_54
.LBB1_3:                                # %.preheader953
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_49 Depth 2
                                        #       Child Loop BB1_50 Depth 3
                                        #         Child Loop BB1_51 Depth 4
                                        #     Child Loop BB1_14 Depth 2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_34 Depth 4
                                        #         Child Loop BB1_43 Depth 4
	st.d	$t4, $sp, 520                   # 8-byte Folded Spill
	st.d	$t3, $sp, 528                   # 8-byte Folded Spill
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s8, $a5, -1
	slli.d	$a1, $a5, 4
	alsl.d	$a2, $a5, $a1, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	addi.d	$a3, $a5, -1
	addi.d	$a5, $a2, -24
	.p2align	4, , 16
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s8, $s8, 1
	addi.d	$a5, $a5, 24
	addi.d	$a1, $a1, 4
	bne	$a2, $a0, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$a5, $sp, 1552                  # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$fp, $a4, $a1, 3
	add.d	$a0, $a0, $fp
	addi.d	$a3, $sp, 1584
	st.d	$a0, $sp, 1544                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $s7, 40
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $s2, 40
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $s0, 40
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 1536                  # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	st.d	$a1, $sp, 1528                  # 8-byte Folded Spill
	ld.d	$a1, $a3, 0
	st.d	$a1, $sp, 1496                  # 8-byte Folded Spill
	add.d	$a0, $a0, $fp
	st.d	$a0, $sp, 1504                  # 8-byte Folded Spill
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	st.d	$fp, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s2
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	st.d	$s5, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s2
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s5, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$zero, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$fp, $a0
	st.d	$a1, $sp, 1520                  # 8-byte Folded Spill
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 1488                  # 8-byte Folded Spill
	st.d	$a1, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1512                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 6
	blt	$a0, $a1, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 1520                  # 8-byte Folded Reload
	st.d	$a0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 1512                  # 8-byte Folded Reload
	st.d	$a0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1520                  # 8-byte Folded Reload
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s8
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1488                  # 8-byte Folded Reload
	st.d	$a0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 1520                  # 8-byte Folded Reload
	st.d	$s0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1464                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1512                  # 8-byte Folded Reload
	st.d	$a0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a2, $sp, 1596
	move	$a0, $s8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1596
	st.w	$zero, $sp, 1604
	ld.d	$a4, $sp, 1552                  # 8-byte Folded Reload
	ld.d	$a2, $sp, 1536                  # 8-byte Folded Reload
	add.d	$a1, $a2, $a4
	st.d	$a1, $sp, 1512                  # 8-byte Folded Spill
	ld.w	$a1, $a1, 12
	ldx.w	$a2, $a2, $a4
	st.d	$a0, $sp, 1456                  # 8-byte Folded Spill
	sub.w	$a0, $a1, $a2
	slt	$a1, $s0, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$a3, $sp, 1528                  # 8-byte Folded Reload
	add.d	$a2, $a3, $a4
	st.d	$a2, $sp, 1488                  # 8-byte Folded Spill
	ld.w	$a2, $a2, 12
	ldx.w	$a3, $a3, $a4
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
	addi.w	$s8, $a0, 1
	sub.w	$a0, $a2, $a3
	slt	$a1, $s0, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
	addi.w	$s0, $a0, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1596
	st.w	$zero, $sp, 1604
	addi.d	$a1, $sp, 1568
	ld.d	$a0, $sp, 1544                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 1544                  # 8-byte Folded Reload
	ld.w	$a4, $a2, 8
	ld.d	$a0, $sp, 1488                  # 8-byte Folded Reload
	ld.w	$a0, $a0, 16
	ld.d	$t1, $sp, 1496                  # 8-byte Folded Reload
	ld.d	$t2, $sp, 1552                  # 8-byte Folded Reload
	add.d	$a1, $t1, $t2
	ld.w	$a1, $a1, 16
	ld.w	$a5, $sp, 1592
	ld.d	$a6, $a2, 0
	ld.d	$a2, $sp, 1512                  # 8-byte Folded Reload
	ld.w	$a2, $a2, 16
	ld.d	$t0, $sp, 1504                  # 8-byte Folded Reload
	ld.w	$a3, $t0, 16
	ld.d	$a7, $sp, 1584
	vinsgr2vr.d	$vr1, $a6, 0
	ld.d	$a6, $sp, 1528                  # 8-byte Folded Reload
	vldx	$vr2, $a6, $t2
	vldx	$vr4, $t1, $t2
	vinsgr2vr.d	$vr7, $a7, 0
	ld.d	$a6, $sp, 1536                  # 8-byte Folded Reload
	vldx	$vr3, $a6, $t2
	pcalau12i	$a6, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI1_0)
	vld	$vr5, $t0, 0
	pcalau12i	$a6, %pc_hi20(.LCPI1_1)
	vld	$vr6, $a6, %pc_lo12(.LCPI1_1)
	vshuf.w	$vr0, $vr7, $vr1
	vpackev.w	$vr8, $vr2, $vr4
	vpackev.d	$vr8, $vr5, $vr8
	vshuf.w	$vr6, $vr3, $vr8
	pcalau12i	$a6, %pc_hi20(.LCPI1_2)
	vld	$vr8, $a6, %pc_lo12(.LCPI1_2)
	pcalau12i	$a6, %pc_hi20(.LCPI1_3)
	vld	$vr9, $a6, %pc_lo12(.LCPI1_3)
	pcalau12i	$a6, %pc_hi20(.LCPI1_4)
	vld	$vr10, $a6, %pc_lo12(.LCPI1_4)
	vshuf.w	$vr8, $vr7, $vr1
	vpackod.w	$vr1, $vr2, $vr4
	vshuf.w	$vr9, $vr5, $vr1
	vshuf.w	$vr10, $vr3, $vr9
	vsub.w	$vr7, $vr8, $vr10
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 1
	pcalau12i	$a4, %pc_hi20(.LCPI1_5)
	vld	$vr8, $a4, %pc_lo12(.LCPI1_5)
	vshuf4i.w	$vr1, $vr1, 64
	vilvh.w	$vr9, $vr2, $vr4
	vshuf4i.d	$vr9, $vr5, 12
	vshuf.w	$vr8, $vr3, $vr9
	vsub.w	$vr8, $vr1, $vr8
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a0, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a2, 3
	vsub.w	$vr1, $vr1, $vr10
	vmaxi.w	$vr1, $vr1, -1
	vaddi.wu	$vr1, $vr1, 1
	vmadd.w	$vr7, $vr1, $vr8
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr8, $a0, %pc_lo12(.LCPI1_6)
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	vld	$vr9, $a0, %pc_lo12(.LCPI1_7)
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	vld	$vr10, $a0, %pc_lo12(.LCPI1_8)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	vsub.w	$vr0, $vr0, $vr6
	vshuf.w	$vr8, $vr2, $vr4
	vshuf.w	$vr9, $vr5, $vr8
	vst	$vr10, $sp, 144                 # 16-byte Folded Spill
	vori.b	$vr2, $vr10, 0
	vshuf.w	$vr2, $vr3, $vr9
	vsub.w	$vr2, $vr2, $vr6
	vmaxi.w	$vr2, $vr2, -1
	vaddi.wu	$vr2, $vr2, 1
	ld.d	$a1, $sp, 1568
	ld.w	$a3, $sp, 1572
	ld.w	$a2, $sp, 1568
	vmadd.w	$vr0, $vr7, $vr2
	vinsgr2vr.d	$vr3, $a1, 0
	ld.w	$a4, $sp, 1576
	slt	$a1, $a2, $a3
	st.d	$a2, $sp, 1504                  # 8-byte Folded Spill
	masknez	$a2, $a2, $a1
	st.d	$a3, $sp, 1496                  # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a4
	masknez	$a1, $a1, $a2
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ori	$a3, $zero, 5
	bne	$a2, $a3, .LBB1_44
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	vld	$vr13, $sp, 464                 # 16-byte Folded Reload
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	blez	$a1, .LBB1_2
# %bb.9:                                # %.preheader948.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	blez	$a1, .LBB1_2
# %bb.10:                               # %.preheader948.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 1496                  # 8-byte Folded Reload
	blez	$a1, .LBB1_2
# %bb.11:                               # %.preheader948.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 1504                  # 8-byte Folded Reload
	blez	$a1, .LBB1_2
# %bb.12:                               # %.preheader946.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 4
	move	$t1, $zero
	vpickve2gr.w	$a2, $vr2, 3
	mul.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 1496                  # 8-byte Folded Reload
	mul.d	$a2, $a2, $a1
	vmul.w	$vr4, $vr2, $vr1
	ld.w	$a3, $a3, 8
	ld.d	$t0, $sp, 1504                  # 8-byte Folded Reload
	mul.d	$a4, $t0, $a0
	vori.b	$vr5, $vr2, 0
	vinsgr2vr.w	$vr5, $a1, 3
	vreplvei.w	$vr6, $vr3, 1
	vinsgr2vr.w	$vr3, $a4, 1
	vshuf4i.w	$vr3, $vr3, 64
	vsub.w	$vr14, $vr5, $vr3
	vinsgr2vr.w	$vr6, $a3, 1
	vshuf4i.w	$vr3, $vr6, 64
	vsub.w	$vr1, $vr1, $vr3
	vmul.w	$vr3, $vr4, $vr3
	vinsgr2vr.w	$vr5, $a2, 3
	vmul.w	$vr1, $vr1, $vr2
	vsub.w	$vr2, $vr3, $vr5
	vld	$vr3, $sp, 144                  # 16-byte Folded Reload
	vshuf.w	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 144                  # 16-byte Folded Spill
	bstrpick.d	$a4, $s8, 31, 0
	bstrpick.d	$a5, $s0, 31, 0
	addi.d	$a1, $t0, -1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 1464                  # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $t8, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 1456                  # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $t7, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $t6, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s3, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	addi.d	$a2, $s4, 8
	alsl.d	$a3, $a1, $a2, 3
	st.d	$a3, $sp, 1328                  # 8-byte Folded Spill
	slli.d	$a3, $a4, 3
	sub.d	$a6, $s4, $a3
	st.d	$a6, $sp, 392                   # 8-byte Folded Spill
	sub.d	$a6, $a1, $a4
	alsl.d	$a2, $a6, $a2, 3
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s1, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	sub.d	$a2, $a1, $a5
	alsl.d	$a2, $a2, $s1, 3
	addi.d	$a2, $a2, 16
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	addi.d	$a2, $fp, 8
	alsl.d	$a7, $a1, $a2, 3
	st.d	$a7, $sp, 1320                  # 8-byte Folded Spill
	sub.d	$a7, $fp, $a3
	st.d	$a7, $sp, 360                   # 8-byte Folded Spill
	alsl.d	$a2, $a6, $a2, 3
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	addi.d	$a2, $s5, 8
	alsl.d	$a7, $a1, $a2, 3
	st.d	$a7, $sp, 1312                  # 8-byte Folded Spill
	alsl.d	$a2, $a6, $a2, 3
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$a2, $a6, $t5, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $t2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	ori	$a2, $zero, 25
	sltu	$a2, $a2, $t0
	addi.d	$a7, $a0, -1
	sltui	$a7, $a7, 1
	and	$a2, $a2, $a7
	st.d	$a2, $sp, 1304                  # 8-byte Folded Spill
	bstrpick.d	$a2, $t0, 30, 1
	slli.d	$a7, $a2, 1
	mul.d	$a2, $a7, $a0
	vinsgr2vr.d	$vr1, $a7, 0
	vinsgr2vr.d	$vr1, $a2, 1
	vst	$vr1, $sp, 208                  # 16-byte Folded Spill
	addi.d	$a2, $s7, 8
	alsl.d	$a6, $a6, $a2, 3
	st.d	$a6, $sp, 320                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $s2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	sub.d	$a1, $s5, $a3
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	sub.d	$a1, $t5, $a3
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	sub.d	$a1, $s7, $a3
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	st.d	$a7, $sp, 232                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr1, $a7
	vst	$vr1, $sp, 192                  # 16-byte Folded Spill
	vori.b	$vr20, $vr13, 0
	vinsgr2vr.d	$vr20, $a0, 1
	slli.d	$a1, $t0, 3
	bstrpick.d	$a1, $a1, 33, 4
	slli.d	$a1, $a1, 4
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a1, $s1, -8
	slli.d	$a0, $a5, 3
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	sub.d	$a0, $s1, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $t2, -8
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	vst	$vr14, $sp, 448                 # 16-byte Folded Spill
	st.d	$a5, $sp, 560                   # 8-byte Folded Spill
	st.d	$a4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 240                   # 8-byte Folded Spill
	st.d	$s7, $sp, 248                   # 8-byte Folded Spill
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %._crit_edge1025.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_14 Depth=2
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	addi.w	$t1, $t1, 1
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vadd.w	$vr0, $vr1, $vr0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB1_2
.LBB1_14:                               # %.preheader946.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_34 Depth 4
                                        #         Child Loop BB1_43 Depth 4
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $zero
	ld.d	$s8, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1456                  # 8-byte Folded Reload
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %._crit_edge.us.us.us.us.us.us1071
                                        #   in Loop: Header=BB1_16 Depth=3
	vpickev.w	$vr0, $vr5, $vr6
	ld.d	$a1, $sp, 1488                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr0, $vr14, $vr0
	ld.d	$a0, $sp, 1496                  # 8-byte Folded Reload
	beq	$a1, $a0, .LBB1_13
.LBB1_16:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_34 Depth 4
                                        #         Child Loop BB1_43 Depth 4
	st.d	$a1, $sp, 1488                  # 8-byte Folded Spill
	vshuf4i.w	$vr1, $vr0, 50
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr5, $vr1, 32
	vshuf4i.w	$vr0, $vr0, 16
	vslli.d	$vr0, $vr0, 32
	vsrai.d	$vr6, $vr0, 32
	ld.d	$a0, $sp, 1304                  # 8-byte Folded Reload
	beqz	$a0, .LBB1_36
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	vpickve2gr.d	$a1, $vr5, 0
	st.d	$a1, $sp, 1408                  # 8-byte Folded Spill
	alsl.d	$t0, $a1, $s8, 3
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1432                  # 8-byte Folded Spill
	alsl.d	$a3, $a1, $t8, 3
	st.d	$a3, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$t5, $a1, $a0, 3
	alsl.d	$t3, $a1, $ra, 3
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$t8, $a1, $a0, 3
	st.d	$t8, $sp, 872                   # 8-byte Folded Spill
	alsl.d	$t1, $a1, $t7, 3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$s0, $a1, $a0, 3
	alsl.d	$a7, $a1, $t6, 3
	vpickve2gr.d	$s8, $vr6, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 1552                  # 8-byte Folded Spill
	st.d	$s8, $sp, 984                   # 8-byte Folded Spill
	vpickve2gr.d	$a1, $vr5, 1
	add.d	$a2, $a1, $a4
	alsl.d	$a6, $a2, $s4, 3
	ld.d	$a0, $sp, 1328                  # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1424                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$t4, $a1, $a0, 3
	vpickve2gr.d	$a5, $vr6, 1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 3
	st.d	$a0, $sp, 1536                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$t7, $a5, $a0, 3
	st.d	$a5, $sp, 1344                  # 8-byte Folded Spill
	ld.d	$t2, $sp, 1320                  # 8-byte Folded Reload
	st.d	$a2, $sp, 1472                  # 8-byte Folded Spill
	alsl.d	$a0, $a2, $t2, 3
	st.d	$a0, $sp, 1512                  # 8-byte Folded Spill
	alsl.d	$t2, $a1, $fp, 3
	alsl.d	$a2, $a2, $s5, 3
	st.d	$a2, $sp, 1528                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$t6, $a1, $a0, 3
	st.d	$t6, $sp, 1376                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$ra, $a5, $a0, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a5, $s8, $a0, 3
	st.d	$a5, $sp, 1368                  # 8-byte Folded Spill
	alsl.d	$s8, $a1, $s7, 3
	vinsgr2vr.d	$vr1, $a6, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1520                  # 8-byte Folded Spill
	vori.b	$vr0, $vr1, 0
	vinsgr2vr.d	$vr13, $a7, 0
	vinsgr2vr.d	$vr2, $a3, 0
	vinsgr2vr.d	$vr1, $t1, 1
	vinsgr2vr.d	$vr17, $a2, 0
	vst	$vr17, $sp, 1152                # 16-byte Folded Spill
	st.d	$t7, $sp, 1416                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr7, $t7, 0
	vst	$vr7, $sp, 1280                 # 16-byte Folded Spill
	st.d	$t2, $sp, 1480                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr18, $t2, 0
	vst	$vr18, $sp, 1168                # 16-byte Folded Spill
	vinsgr2vr.d	$vr7, $t3, 1
	vori.b	$vr8, $vr2, 0
	vinsgr2vr.d	$vr8, $t2, 1
	vori.b	$vr9, $vr2, 0
	vinsgr2vr.d	$vr9, $t7, 1
	move	$t7, $a1
	vori.b	$vr10, $vr2, 0
	vinsgr2vr.d	$vr10, $t4, 1
	vori.b	$vr12, $vr2, 0
	st.d	$a6, $sp, 1192                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr12, $a6, 1
	vori.b	$vr16, $vr2, 0
	vori.b	$vr28, $vr2, 0
	vinsgr2vr.d	$vr19, $t0, 0
	move	$t2, $t0
	st.d	$a7, $sp, 904                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr16, $a7, 1
	vori.b	$vr4, $vr19, 0
	vinsgr2vr.d	$vr4, $s8, 1
	vori.b	$vr11, $vr19, 0
	vinsgr2vr.d	$vr11, $ra, 1
	vst	$vr19, $sp, 1264                # 16-byte Folded Spill
	vst	$vr19, $sp, 1232                # 16-byte Folded Spill
	vst	$vr19, $sp, 1216                # 16-byte Folded Spill
	vst	$vr19, $sp, 1200                # 16-byte Folded Spill
	vori.b	$vr15, $vr19, 0
	vinsgr2vr.d	$vr15, $t4, 1
	vori.b	$vr23, $vr19, 0
	vinsgr2vr.d	$vr23, $a6, 1
	vori.b	$vr25, $vr19, 0
	vinsgr2vr.d	$vr14, $t8, 0
	vinsgr2vr.d	$vr25, $a7, 1
	vori.b	$vr2, $vr14, 0
	vori.b	$vr3, $vr14, 0
	vinsgr2vr.d	$vr21, $a5, 0
	move	$t0, $a5
	vinsgr2vr.d	$vr24, $t6, 0
	vinsgr2vr.d	$vr29, $s0, 0
	move	$a2, $s0
	st.d	$s0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 1424                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr26, $a7, 0
	ld.d	$a5, $sp, 1552                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr22, $a5, 0
	vori.b	$vr27, $vr29, 0
	ld.d	$s0, $sp, 1432                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr27, $s0, 1
	vinsgr2vr.d	$vr19, $t3, 1
	vslt.du	$vr25, $vr25, $vr27
	vinsgr2vr.d	$vr27, $t5, 0
	vinsgr2vr.d	$vr27, $s0, 1
	vslt.du	$vr27, $vr19, $vr27
	vpickev.w	$vr25, $vr25, $vr27
	vst	$vr25, $sp, 1136                # 16-byte Folded Spill
	vori.b	$vr25, $vr22, 0
	vst	$vr22, $sp, 1248                # 16-byte Folded Spill
	vinsgr2vr.d	$vr25, $s0, 1
	vslt.du	$vr23, $vr23, $vr25
	vst	$vr23, $sp, 1120                # 16-byte Folded Spill
	vori.b	$vr23, $vr26, 0
	vinsgr2vr.d	$vr26, $s0, 1
	vslt.du	$vr15, $vr15, $vr26
	vst	$vr15, $sp, 1104                # 16-byte Folded Spill
	vori.b	$vr26, $vr24, 0
	vinsgr2vr.d	$vr24, $s0, 1
	vslt.du	$vr15, $vr11, $vr24
	vori.b	$vr11, $vr21, 0
	vinsgr2vr.d	$vr21, $s0, 1
	vslt.du	$vr4, $vr4, $vr21
	ld.d	$a1, $sp, 1520                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr21, $a1, 0
	vpickev.w	$vr15, $vr4, $vr15
	vori.b	$vr4, $vr21, 0
	vinsgr2vr.d	$vr21, $t5, 1
	vslt.du	$vr19, $vr19, $vr21
	vori.b	$vr21, $vr29, 0
	vinsgr2vr.d	$vr21, $t5, 1
	vslt.du	$vr21, $vr16, $vr21
	vori.b	$vr16, $vr14, 0
	vpickev.w	$vr19, $vr21, $vr19
	vori.b	$vr27, $vr14, 0
	vpickev.h	$vr15, $vr19, $vr15
	vori.b	$vr19, $vr22, 0
	vinsgr2vr.d	$vr19, $t5, 1
	vslt.du	$vr12, $vr12, $vr19
	ld.d	$a0, $sp, 1512                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr19, $a0, 0
	vst	$vr19, $sp, 992                 # 16-byte Folded Spill
	vinsgr2vr.d	$vr23, $t5, 1
	vslt.du	$vr10, $vr10, $vr23
	ld.d	$a6, $sp, 1536                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr21, $a6, 0
	vst	$vr21, $sp, 1008                # 16-byte Folded Spill
	vpickev.w	$vr10, $vr10, $vr12
	vori.b	$vr12, $vr21, 0
	vinsgr2vr.d	$vr12, $t5, 1
	vslt.du	$vr9, $vr9, $vr12
	vori.b	$vr12, $vr19, 0
	vinsgr2vr.d	$vr12, $t5, 1
	vslt.du	$vr8, $vr8, $vr12
	vori.b	$vr12, $vr14, 0
	vpickev.w	$vr8, $vr8, $vr9
	vori.b	$vr9, $vr14, 0
	vpickev.h	$vr8, $vr8, $vr10
	vori.b	$vr10, $vr14, 0
	vpickev.b	$vr8, $vr8, $vr15
	vst	$vr8, $sp, 944                  # 16-byte Folded Spill
	vori.b	$vr8, $vr14, 0
	vinsgr2vr.d	$vr14, $a0, 1
	vslt.du	$vr7, $vr7, $vr14
	vori.b	$vr14, $vr18, 0
	vinsgr2vr.d	$vr14, $t3, 1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a3, $t7, $a0, 3
	vinsgr2vr.d	$vr8, $a3, 1
	st.d	$a3, $sp, 1400                  # 8-byte Folded Spill
	vslt.du	$vr8, $vr14, $vr8
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$t8, $t7, $a0, 3
	vinsgr2vr.d	$vr14, $t8, 0
	st.d	$t8, $sp, 1384                  # 8-byte Folded Spill
	vst	$vr14, $sp, 1088                # 16-byte Folded Spill
	vpickev.w	$vr7, $vr8, $vr7
	vori.b	$vr8, $vr14, 0
	vinsgr2vr.d	$vr8, $t3, 1
	vinsgr2vr.d	$vr10, $t6, 1
	vslt.du	$vr8, $vr8, $vr10
	vori.b	$vr10, $vr17, 0
	vinsgr2vr.d	$vr10, $t3, 1
	ld.d	$a0, $sp, 1312                  # 8-byte Folded Reload
	alsl.d	$a0, $t7, $a0, 3
	vinsgr2vr.d	$vr9, $a0, 1
	st.d	$a0, $sp, 1392                  # 8-byte Folded Spill
	vslt.du	$vr9, $vr10, $vr9
	vinsgr2vr.d	$vr10, $s8, 0
	vst	$vr10, $sp, 1072                # 16-byte Folded Spill
	vpickev.w	$vr8, $vr8, $vr9
	vinsgr2vr.d	$vr9, $ra, 0
	vst	$vr9, $sp, 1056                 # 16-byte Folded Spill
	vpickev.h	$vr7, $vr8, $vr7
	vori.b	$vr8, $vr9, 0
	vinsgr2vr.d	$vr8, $t3, 1
	vinsgr2vr.d	$vr12, $t0, 1
	vslt.du	$vr8, $vr8, $vr12
	vori.b	$vr9, $vr10, 0
	vinsgr2vr.d	$vr9, $t3, 1
	vinsgr2vr.d	$vr27, $a1, 1
	vslt.du	$vr9, $vr9, $vr27
	vst	$vr13, $sp, 1024                # 16-byte Folded Spill
	vori.b	$vr10, $vr13, 0
	vinsgr2vr.d	$vr10, $t1, 1
	vpickev.w	$vr8, $vr9, $vr8
	vst	$vr29, $sp, 1440                # 16-byte Folded Spill
	vori.b	$vr9, $vr29, 0
	vinsgr2vr.d	$vr9, $a5, 1
	vslt.du	$vr9, $vr10, $vr9
	vori.b	$vr10, $vr29, 0
	move	$a1, $a7
	vinsgr2vr.d	$vr10, $a7, 1
	vslt.du	$vr1, $vr1, $vr10
	vori.b	$vr14, $vr28, 0
	vori.b	$vr10, $vr28, 0
	vpickev.w	$vr1, $vr1, $vr9
	vori.b	$vr9, $vr28, 0
	ld.d	$a7, $sp, 1528                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr9, $a7, 1
	vpickev.h	$vr1, $vr1, $vr8
	vinsgr2vr.d	$vr27, $a3, 0
	vpickev.b	$vr1, $vr1, $vr7
	vst	$vr1, $sp, 912                  # 16-byte Folded Spill
	vori.b	$vr1, $vr27, 0
	vinsgr2vr.d	$vr1, $t5, 1
	vslt.du	$vr1, $vr9, $vr1
	vinsgr2vr.d	$vr25, $a0, 0
	vinsgr2vr.d	$vr10, $t8, 1
	vori.b	$vr7, $vr25, 0
	vinsgr2vr.d	$vr7, $t5, 1
	vslt.du	$vr7, $vr10, $vr7
	vinsgr2vr.d	$vr16, $a5, 1
	vinsgr2vr.d	$vr0, $t3, 1
	vpickev.w	$vr1, $vr7, $vr1
	vori.b	$vr7, $vr28, 0
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr7, $ra, 1
	ld.d	$t6, $sp, 1344                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr26, $t5, 1
	vslt.du	$vr7, $vr7, $vr26
	vori.b	$vr8, $vr28, 0
	st.d	$s8, $sp, 1544                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr8, $s8, 1
	vinsgr2vr.d	$vr11, $t5, 1
	vslt.du	$vr8, $vr8, $vr11
	vinsgr2vr.d	$vr26, $t4, 0
	vpickev.w	$vr7, $vr8, $vr7
	vori.b	$vr8, $vr26, 0
	vinsgr2vr.d	$vr8, $t3, 1
	vpickev.h	$vr1, $vr7, $vr1
	vori.b	$vr7, $vr28, 0
	vinsgr2vr.d	$vr7, $t3, 1
	vinsgr2vr.d	$vr4, $a2, 1
	vslt.du	$vr4, $vr7, $vr4
	vori.b	$vr7, $vr13, 0
	vinsgr2vr.d	$vr7, $t3, 1
	vinsgr2vr.d	$vr2, $a1, 1
	vinsgr2vr.d	$vr3, $a6, 1
	vslt.du	$vr7, $vr7, $vr16
	vpickev.w	$vr4, $vr7, $vr4
	vslt.du	$vr3, $vr8, $vr3
	vslt.du	$vr0, $vr0, $vr2
	vpickev.w	$vr0, $vr3, $vr0
	vpickev.h	$vr0, $vr0, $vr4
	vpickev.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 880                  # 16-byte Folded Spill
	st.d	$t2, $sp, 1336                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr14, $t2, 1
	ld.d	$a1, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $s2, 3
	st.d	$a0, $sp, 1360                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr10, $a0, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$t8, $t7, $a0, 3
	vinsgr2vr.d	$vr10, $t8, 1
	st.d	$t8, $sp, 1552                  # 8-byte Folded Spill
	vori.b	$vr1, $vr14, 0
	vshuf4i.d	$vr1, $vr10, 6
	vori.b	$vr2, $vr14, 0
	vinsgr2vr.d	$vr24, $s0, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a5, $t7, $a0, 3
	vinsgr2vr.d	$vr2, $a5, 0
	vori.b	$vr19, $vr24, 0
	ld.d	$s0, $sp, 872                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr19, $s0, 1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a0, $t7, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$s8, $t6, $a0, 3
	vinsgr2vr.d	$vr0, $s8, 1
	st.d	$s8, $sp, 976                   # 8-byte Folded Spill
	vori.b	$vr3, $vr19, 0
	vshuf4i.d	$vr3, $vr0, 12
	vslt.du	$vr2, $vr2, $vr3
	vori.b	$vr3, $vr19, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a0, $t7, $a0, 3
	st.d	$a0, $sp, 1352                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr3, $a0, 1
	vslt.du	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr4, $a0, 0
	vinsgr2vr.d	$vr4, $t5, 1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 1408                  # 8-byte Folded Reload
	alsl.d	$ra, $a3, $a0, 3
	alsl.d	$t5, $a1, $s3, 3
	vpickev.w	$vr2, $vr1, $vr2
	vinsgr2vr.d	$vr21, $t1, 0
	ld.d	$t0, $sp, 1472                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1328                  # 8-byte Folded Reload
	alsl.d	$a7, $t0, $a1, 3
	ld.d	$t2, $sp, 936                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr3, $ra, 0
	vinsgr2vr.d	$vr3, $a7, 1
	vori.b	$vr12, $vr21, 0
	vinsgr2vr.d	$vr12, $t5, 1
	vori.b	$vr7, $vr3, 0
	vshuf4i.d	$vr7, $vr4, 3
	vpackev.d	$vr8, $vr14, $vr12
	vslt.du	$vr7, $vr8, $vr7
	vori.b	$vr8, $vr14, 0
	vshuf4i.d	$vr8, $vr10, 3
	vslt.du	$vr8, $vr8, $vr19
	vpickev.w	$vr7, $vr7, $vr8
	vpickev.h	$vr7, $vr7, $vr2
	alsl.d	$a6, $t7, $s4, 3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a3, $t6, $a0, 3
	st.d	$a6, $sp, 576                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr8, $a6, 0
	vinsgr2vr.d	$vr8, $a3, 1
	vori.b	$vr2, $vr14, 0
	vshuf4i.d	$vr2, $vr8, 3
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a1, $t7, $a0, 3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$t6, $t6, $a0, 3
	vinsgr2vr.d	$vr23, $a1, 0
	st.d	$a1, $sp, 968                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr23, $t6, 1
	vpackod.d	$vr9, $vr23, $vr4
	vslt.du	$vr9, $vr2, $vr9
	move	$a0, $t0
	alsl.d	$t0, $t0, $fp, 3
	st.d	$t0, $sp, 1408                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 1312                  # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	ld.d	$a6, $sp, 1320                  # 8-byte Folded Reload
	alsl.d	$a6, $t7, $a6, 3
	st.d	$a6, $sp, 984                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr2, $a6, 0
	vinsgr2vr.d	$vr2, $a0, 1
	move	$a6, $a0
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a2, $t7, $a0, 3
	vinsgr2vr.d	$vr16, $t0, 0
	ld.d	$t0, $sp, 904                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr16, $a2, 1
	vori.b	$vr15, $vr2, 0
	vshuf4i.d	$vr15, $vr4, 3
	vpackev.d	$vr22, $vr14, $vr16
	vslt.du	$vr15, $vr22, $vr15
	vpickev.w	$vr9, $vr15, $vr9
	vori.b	$vr15, $vr14, 0
	vshuf4i.d	$vr15, $vr12, 3
	vpackod.d	$vr22, $vr3, $vr4
	vslt.du	$vr15, $vr15, $vr22
	vinsgr2vr.d	$vr22, $a1, 1
	vpackod.d	$vr22, $vr22, $vr4
	vpackev.d	$vr18, $vr14, $vr8
	vslt.du	$vr18, $vr18, $vr22
	vpickev.w	$vr15, $vr18, $vr15
	vpickev.h	$vr9, $vr9, $vr15
	vpickev.b	$vr15, $vr9, $vr7
	vori.b	$vr7, $vr19, 0
	vinsgr2vr.d	$vr7, $s8, 0
	st.d	$t3, $sp, 552                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr18, $t3, 0
	vpackev.d	$vr9, $vr10, $vr18
	vslt.du	$vr7, $vr9, $vr7
	st.d	$t7, $sp, 544                   # 8-byte Folded Spill
	alsl.d	$a0, $t7, $s5, 3
	st.d	$a0, $sp, 1472                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr9, $a0, 0
	vinsgr2vr.d	$vr9, $a5, 1
	vori.b	$vr22, $vr18, 0
	vpackev.d	$vr1, $vr8, $vr18
	vori.b	$vr31, $vr18, 0
	vpackev.d	$vr17, $vr16, $vr18
	vori.b	$vr28, $vr18, 0
	vori.b	$vr13, $vr18, 0
	vpackev.d	$vr29, $vr9, $vr18
	vinsgr2vr.d	$vr18, $t8, 1
	vori.b	$vr30, $vr19, 0
	vshuf4i.d	$vr30, $vr4, 6
	vslt.du	$vr18, $vr18, $vr30
	vpickev.w	$vr7, $vr18, $vr7
	vori.b	$vr18, $vr3, 0
	vld	$vr11, $sp, 1440                # 16-byte Folded Reload
	vshuf4i.d	$vr18, $vr11, 9
	vpackev.d	$vr30, $vr8, $vr12
	vslt.du	$vr18, $vr30, $vr18
	vpackev.d	$vr30, $vr11, $vr3
	vslt.du	$vr30, $vr12, $vr30
	vpickev.w	$vr18, $vr18, $vr30
	vpickev.h	$vr7, $vr18, $vr7
	vori.b	$vr18, $vr19, 0
	vinsgr2vr.d	$vr18, $a6, 0
	vslt.du	$vr18, $vr29, $vr18
	vinsgr2vr.d	$vr13, $a5, 1
	move	$t8, $a5
	vinsgr2vr.d	$vr29, $s0, 1
	vshuf4i.d	$vr29, $vr0, 6
	vslt.du	$vr13, $vr13, $vr29
	vpickev.w	$vr13, $vr13, $vr18
	vori.b	$vr18, $vr19, 0
	vshuf4i.d	$vr18, $vr2, 6
	vinsgr2vr.d	$vr28, $a2, 1
	vslt.du	$vr18, $vr28, $vr18
	vori.b	$vr28, $vr19, 0
	vinsgr2vr.d	$vr28, $t6, 0
	move	$a1, $t6
	vslt.du	$vr17, $vr17, $vr28
	vpickev.w	$vr17, $vr18, $vr17
	vpickev.h	$vr13, $vr13, $vr17
	vpickev.b	$vr7, $vr7, $vr13
	vori.b	$vr13, $vr10, 0
	vshuf4i.d	$vr13, $vr12, 9
	vpackod.d	$vr17, $vr19, $vr4
	vslt.du	$vr13, $vr13, $vr17
	vori.b	$vr17, $vr19, 0
	vshuf4i.d	$vr17, $vr3, 6
	vinsgr2vr.d	$vr31, $t5, 1
	move	$a6, $t5
	vslt.du	$vr17, $vr31, $vr17
	vpickev.w	$vr13, $vr17, $vr13
	vori.b	$vr17, $vr19, 0
	vinsgr2vr.d	$vr17, $a7, 0
	vslt.du	$vr1, $vr1, $vr17
	vinsgr2vr.d	$vr22, $a3, 1
	vori.b	$vr17, $vr19, 0
	vshuf4i.d	$vr17, $vr23, 6
	vslt.du	$vr17, $vr22, $vr17
	vpickev.w	$vr1, $vr17, $vr1
	vpickev.h	$vr1, $vr1, $vr13
	vori.b	$vr13, $vr14, 0
	vshuf4i.d	$vr13, $vr9, 3
	vpackod.d	$vr17, $vr0, $vr4
	vslt.du	$vr13, $vr13, $vr17
	vpackev.d	$vr17, $vr14, $vr10
	vpackev.d	$vr11, $vr0, $vr24
	vshuf4i.d	$vr0, $vr4, 3
	vpackod.d	$vr18, $vr2, $vr4
	vshuf4i.d	$vr4, $vr0, 1
	vslt.du	$vr4, $vr17, $vr4
	vpickev.w	$vr4, $vr4, $vr13
	vori.b	$vr13, $vr14, 0
	vshuf4i.d	$vr13, $vr16, 3
	vslt.du	$vr13, $vr13, $vr18
	vinsgr2vr.d	$vr17, $t2, 1
	vshuf4i.d	$vr17, $vr9, 6
	vslt.du	$vr0, $vr17, $vr0
	vpickev.w	$vr0, $vr0, $vr13
	vpickev.h	$vr0, $vr4, $vr0
	vpickev.b	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 880                  # 16-byte Folded Reload
	vand.v	$vr0, $vr1, $vr0
	vpickve2gr.b	$s0, $vr0, 0
	vpickve2gr.b	$a5, $vr0, 1
	vpickve2gr.b	$a7, $vr0, 2
	vpickve2gr.b	$t5, $vr0, 3
	vpickve2gr.b	$t7, $vr0, 4
	vpickve2gr.b	$a0, $vr0, 5
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 6
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 7
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 8
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 9
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 10
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 11
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 12
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 13
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 14
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 15
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	vld	$vr0, $sp, 912                  # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr7
	vpickve2gr.b	$t6, $vr0, 0
	vpickve2gr.b	$a0, $vr0, 1
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 2
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 3
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 4
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 5
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 6
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 7
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 8
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 9
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 10
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 11
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 12
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 13
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 14
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 15
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	vld	$vr0, $sp, 944                  # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr15
	vpickve2gr.b	$s8, $vr0, 0
	vpickve2gr.b	$a0, $vr0, 1
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 2
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 3
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 4
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 5
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 6
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 7
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 8
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 9
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 10
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 11
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 12
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 13
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 14
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	vpickve2gr.b	$t3, $vr0, 15
	ld.d	$a0, $sp, 1432                  # 8-byte Folded Reload
	vld	$vr15, $sp, 992                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr15, $a0, 1
	vld	$vr10, $sp, 1008                # 16-byte Folded Reload
	vinsgr2vr.d	$vr10, $a0, 1
	vinsgr2vr.d	$vr25, $a0, 1
	vinsgr2vr.d	$vr27, $a0, 1
	andi	$a0, $a5, 1
	bstrins.d	$s0, $a0, 63, 1
	bstrins.d	$s0, $a7, 2, 2
	bstrins.d	$s0, $t5, 3, 3
	bstrins.d	$s0, $t7, 4, 4
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	bstrins.d	$s0, $a0, 5, 5
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $s0, $a0
	ld.d	$a5, $sp, 864                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 7
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 856                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 8
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 848                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 9
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 840                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 10
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 832                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 11
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 824                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 12
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 816                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 13
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 808                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 14
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 800                   # 8-byte Folded Reload
	slli.d	$t5, $a5, 15
	or	$a0, $a0, $t5
	st.d	$a0, $sp, 1432                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	bstrins.d	$t6, $a0, 63, 1
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	bstrins.d	$t6, $a0, 2, 2
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	bstrins.d	$t6, $a0, 3, 3
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	bstrins.d	$t6, $a0, 4, 4
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	bstrins.d	$t6, $a0, 5, 5
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $t6, $a0
	ld.d	$a5, $sp, 752                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 7
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 744                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 8
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 736                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 9
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 728                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 10
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 720                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 11
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 712                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 12
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 13
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 696                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 14
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 688                   # 8-byte Folded Reload
	slli.d	$t5, $a5, 15
	or	$a0, $a0, $t5
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 944                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	bstrins.d	$s8, $a0, 63, 1
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	bstrins.d	$s8, $a0, 2, 2
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	bstrins.d	$s8, $a0, 3, 3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	bstrins.d	$s8, $a0, 4, 4
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	bstrins.d	$s8, $a0, 5, 5
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $s8, $a0
	ld.d	$a5, $sp, 640                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 7
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 632                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 8
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 624                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 9
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 616                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 10
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 608                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 11
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 600                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 12
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 592                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 13
	or	$a0, $a0, $t5
	ld.d	$a5, $sp, 584                   # 8-byte Folded Reload
	andi	$t5, $a5, 1
	slli.d	$t5, $t5, 14
	or	$a0, $a0, $t5
	slli.d	$t3, $t3, 15
	or	$s0, $a0, $t3
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	vld	$vr18, $sp, 1024                # 16-byte Folded Reload
	vinsgr2vr.d	$vr18, $a0, 1
	vld	$vr0, $sp, 1120                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1104                 # 16-byte Folded Reload
	vpickev.w	$vr1, $vr1, $vr0
	ld.d	$a0, $sp, 1040                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vld	$vr4, $sp, 1136                 # 16-byte Folded Reload
	vpickev.h	$vr1, $vr1, $vr4
	ld.d	$a0, $sp, 1528                  # 8-byte Folded Reload
	vld	$vr4, $sp, 1200                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr4, $a0, 1
	vslt.du	$vr4, $vr4, $vr27
	ld.d	$a0, $sp, 1384                  # 8-byte Folded Reload
	vld	$vr7, $sp, 1216                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr7, $a0, 1
	vslt.du	$vr7, $vr7, $vr25
	vpickev.w	$vr4, $vr7, $vr4
	ld.d	$a0, $sp, 1416                  # 8-byte Folded Reload
	vld	$vr7, $sp, 1232                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr7, $a0, 1
	vslt.du	$vr7, $vr7, $vr10
	ld.d	$a0, $sp, 1480                  # 8-byte Folded Reload
	vld	$vr13, $sp, 1264                # 16-byte Folded Reload
	vinsgr2vr.d	$vr13, $a0, 1
	vslt.du	$vr13, $vr13, $vr15
	vpickev.w	$vr7, $vr13, $vr7
	vori.b	$vr13, $vr19, 0
	vshuf4i.d	$vr13, $vr2, 12
	vpackev.d	$vr2, $vr2, $vr19
	vpickev.h	$vr4, $vr4, $vr7
	vori.b	$vr7, $vr14, 0
	vpickev.b	$vr1, $vr4, $vr1
	vori.b	$vr4, $vr14, 0
	vshuf4i.d	$vr7, $vr16, 6
	vori.b	$vr17, $vr14, 0
	vshuf4i.d	$vr4, $vr8, 6
	vori.b	$vr8, $vr19, 0
	vshuf4i.d	$vr8, $vr3, 12
	vshuf4i.d	$vr14, $vr12, 6
	ld.d	$a0, $sp, 1336                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr10, $a0, 1
	vshuf4i.d	$vr10, $vr9, 6
	vinsgr2vr.d	$vr9, $a6, 0
	vinsgr2vr.d	$vr9, $t0, 1
	vslt.du	$vr9, $vr9, $vr3
	vpackev.d	$vr3, $vr3, $vr19
	vslt.du	$vr3, $vr14, $vr3
	vori.b	$vr14, $vr19, 0
	vshuf4i.d	$vr14, $vr23, 12
	vpackev.d	$vr15, $vr23, $vr19
	vslt.du	$vr16, $vr17, $vr19
	vpickev.w	$vr3, $vr3, $vr16
	vslt.du	$vr4, $vr4, $vr15
	vori.b	$vr15, $vr17, 0
	st.d	$a6, $sp, 1264                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr15, $a6, 0
	vslt.du	$vr8, $vr15, $vr8
	vpickev.w	$vr4, $vr4, $vr8
	vpickev.h	$vr3, $vr4, $vr3
	vori.b	$vr4, $vr17, 0
	move	$a7, $a2
	vinsgr2vr.d	$vr4, $a2, 0
	vslt.du	$vr4, $vr4, $vr13
	vslt.du	$vr8, $vr10, $vr11
	vpickev.w	$vr4, $vr8, $vr4
	vori.b	$vr8, $vr17, 0
	vinsgr2vr.d	$vr8, $a3, 0
	vslt.du	$vr2, $vr7, $vr2
	vslt.du	$vr7, $vr8, $vr14
	vpickev.w	$vr2, $vr2, $vr7
	vpickev.h	$vr2, $vr4, $vr2
	vpickev.b	$vr2, $vr2, $vr3
	vand.v	$vr1, $vr1, $vr2
	vld	$vr14, $sp, 1088                # 16-byte Folded Reload
	vinsgr2vr.d	$vr14, $t1, 1
	vld	$vr13, $sp, 1440                # 16-byte Folded Reload
	vori.b	$vr2, $vr13, 0
	vori.b	$vr3, $vr13, 0
	vori.b	$vr4, $vr13, 0
	vori.b	$vr7, $vr13, 0
	vori.b	$vr8, $vr13, 0
	vori.b	$vr10, $vr13, 0
	ld.d	$a0, $sp, 1376                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr13, $a0, 1
	vslt.du	$vr13, $vr14, $vr13
	vld	$vr14, $sp, 1056                # 16-byte Folded Reload
	vinsgr2vr.d	$vr14, $t1, 1
	ld.d	$a0, $sp, 1368                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr10, $a0, 1
	ld.d	$a2, $sp, 1512                  # 8-byte Folded Reload
	vslt.du	$vr10, $vr14, $vr10
	vpickev.w	$vr10, $vr10, $vr13
	vld	$vr13, $sp, 1072                # 16-byte Folded Reload
	vinsgr2vr.d	$vr13, $t1, 1
	ld.d	$a0, $sp, 1520                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr8, $a0, 1
	vslt.du	$vr8, $vr13, $vr8
	vpickev.w	$vr8, $vr9, $vr8
	vpickev.h	$vr8, $vr8, $vr10
	vinsgr2vr.d	$vr26, $t1, 1
	ld.d	$a0, $sp, 1536                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr7, $a0, 1
	vslt.du	$vr7, $vr26, $vr7
	vld	$vr9, $sp, 1280                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr9, $t1, 1
	vinsgr2vr.d	$vr4, $a2, 1
	vslt.du	$vr4, $vr9, $vr4
	vpickev.w	$vr4, $vr4, $vr7
	vld	$vr7, $sp, 1168                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr7, $t1, 1
	ld.d	$a0, $sp, 1400                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr3, $a0, 1
	vslt.du	$vr3, $vr7, $vr3
	vld	$vr7, $sp, 1152                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr7, $t1, 1
	ld.d	$a0, $sp, 1392                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vslt.du	$vr2, $vr7, $vr2
	vpickev.w	$vr2, $vr2, $vr3
	vpickev.h	$vr2, $vr2, $vr4
	vpickev.b	$vr2, $vr8, $vr2
	vori.b	$vr3, $vr21, 0
	move	$a6, $a3
	vinsgr2vr.d	$vr3, $a3, 1
	vori.b	$vr4, $vr21, 0
	ld.d	$a0, $sp, 1408                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr4, $a0, 1
	vori.b	$vr7, $vr21, 0
	st.d	$a7, $sp, 1440                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr7, $a7, 1
	vori.b	$vr8, $vr0, 0
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	move	$a3, $a0
	vinsgr2vr.d	$vr8, $a0, 0
	vslt.du	$vr3, $vr3, $vr8
	vori.b	$vr8, $vr0, 0
	move	$t7, $a1
	vinsgr2vr.d	$vr8, $a1, 0
	vslt.du	$vr4, $vr4, $vr8
	vori.b	$vr8, $vr21, 0
	ld.d	$a0, $sp, 1472                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr8, $a0, 1
	vpickev.w	$vr3, $vr4, $vr3
	vori.b	$vr4, $vr0, 0
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	move	$t6, $a0
	vinsgr2vr.d	$vr4, $a0, 0
	vslt.du	$vr4, $vr7, $vr4
	vori.b	$vr7, $vr0, 0
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	move	$a1, $a0
	vinsgr2vr.d	$vr7, $a0, 0
	vslt.du	$vr7, $vr8, $vr7
	vori.b	$vr8, $vr21, 0
	vinsgr2vr.d	$vr8, $t8, 1
	vpickev.w	$vr4, $vr7, $vr4
	vori.b	$vr7, $vr21, 0
	ld.d	$a0, $sp, 1360                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr7, $a0, 1
	vpickev.h	$vr3, $vr4, $vr3
	vori.b	$vr4, $vr0, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	move	$a7, $a0
	vinsgr2vr.d	$vr4, $a0, 0
	vslt.du	$vr4, $vr8, $vr4
	vori.b	$vr8, $vr0, 0
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	move	$s8, $a0
	vinsgr2vr.d	$vr8, $a0, 0
	vslt.du	$vr7, $vr7, $vr8
	vpickev.w	$vr4, $vr7, $vr4
	ld.d	$a0, $sp, 1552                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr21, $a0, 1
	ld.d	$a0, $sp, 1352                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	vslt.du	$vr0, $vr21, $vr0
	vld	$vr7, $sp, 1248                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr7, $ra, 1
	vslt.du	$vr7, $vr18, $vr7
	vpickev.w	$vr0, $vr7, $vr0
	vpickev.h	$vr0, $vr0, $vr4
	vpickev.b	$vr0, $vr0, $vr3
	vand.v	$vr0, $vr2, $vr0
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.b	$a0, $vr0, 1
	andi	$a0, $a0, 1
	vpickve2gr.b	$t3, $vr0, 0
	bstrins.d	$t3, $a0, 63, 1
	vpickve2gr.b	$a0, $vr0, 2
	bstrins.d	$t3, $a0, 2, 2
	vpickve2gr.b	$a0, $vr0, 3
	bstrins.d	$t3, $a0, 3, 3
	vpickve2gr.b	$a0, $vr0, 4
	bstrins.d	$t3, $a0, 4, 4
	vpickve2gr.b	$a0, $vr0, 5
	bstrins.d	$t3, $a0, 5, 5
	vpickve2gr.b	$a0, $vr0, 6
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $t3, $a0
	vpickve2gr.b	$t3, $vr0, 7
	andi	$t3, $t3, 1
	slli.d	$t3, $t3, 7
	or	$a0, $a0, $t3
	vpickve2gr.b	$t3, $vr0, 8
	andi	$t3, $t3, 1
	slli.d	$t3, $t3, 8
	or	$a0, $a0, $t3
	vpickve2gr.b	$t3, $vr0, 9
	andi	$t3, $t3, 1
	slli.d	$t3, $t3, 9
	or	$a0, $a0, $t3
	vpickve2gr.b	$t3, $vr0, 10
	andi	$t3, $t3, 1
	slli.d	$t3, $t3, 10
	or	$a0, $a0, $t3
	vpickve2gr.b	$t3, $vr0, 11
	andi	$t3, $t3, 1
	slli.d	$t3, $t3, 11
	or	$a0, $a0, $t3
	vpickve2gr.b	$t3, $vr0, 12
	andi	$t3, $t3, 1
	slli.d	$t3, $t3, 12
	or	$a0, $a0, $t3
	vpickve2gr.b	$t3, $vr0, 13
	andi	$t3, $t3, 1
	slli.d	$t3, $t3, 13
	or	$a0, $a0, $t3
	vpickve2gr.b	$t3, $vr0, 14
	andi	$t3, $t3, 1
	slli.d	$t3, $t3, 14
	or	$a0, $a0, $t3
	vpickve2gr.b	$t3, $vr0, 15
	slli.d	$t3, $t3, 15
	or	$a0, $a0, $t3
	ld.d	$t3, $sp, 1008                  # 8-byte Folded Reload
	bstrpick.d	$t3, $t3, 15, 0
	bstrpick.d	$t5, $s0, 15, 0
	or	$t3, $t5, $t3
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$t3, $t3, 16
	or	$a0, $t3, $a0
	ld.d	$t3, $sp, 1432                  # 8-byte Folded Reload
	bstrpick.d	$t3, $t3, 15, 0
	or	$a0, $a0, $t3
	bstrpick.d	$a0, $a0, 31, 0
	move	$s0, $zero
	bnez	$a0, .LBB1_41
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 1424                  # 8-byte Folded Reload
	sltu	$a0, $t0, $a0
	ld.d	$t5, $sp, 576                   # 8-byte Folded Reload
	sltu	$t3, $t5, $ra
	and	$a0, $a0, $t3
	vld	$vr13, $sp, 464                 # 16-byte Folded Reload
	vld	$vr14, $sp, 448                 # 16-byte Folded Reload
	ld.d	$a5, $sp, 560                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_37
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t0, $a3
	sltu	$t3, $t4, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_37
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 1536                  # 8-byte Folded Reload
	sltu	$a0, $t0, $a0
	sltu	$t3, $a6, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_37
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t0, $t7
	ld.d	$t3, $sp, 1416                  # 8-byte Folded Reload
	sltu	$t3, $t3, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_37
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t0, $a2
	ld.d	$a2, $sp, 1408                  # 8-byte Folded Reload
	sltu	$t3, $a2, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_37
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t0, $t6
	ld.d	$a2, $sp, 1480                  # 8-byte Folded Reload
	sltu	$t3, $a2, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_37
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 1400                  # 8-byte Folded Reload
	sltu	$a0, $t0, $a0
	ld.d	$t6, $sp, 1440                  # 8-byte Folded Reload
	sltu	$t3, $t6, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_37
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t0, $a1
	ld.d	$a2, $sp, 1528                  # 8-byte Folded Reload
	sltu	$t3, $a2, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_37
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 1392                  # 8-byte Folded Reload
	sltu	$a0, $t0, $a0
	ld.d	$a2, $sp, 1472                  # 8-byte Folded Reload
	sltu	$t3, $a2, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_37
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t0, $a7
	ld.d	$a4, $sp, 1384                  # 8-byte Folded Reload
	sltu	$t3, $a4, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_40
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 1376                  # 8-byte Folded Reload
	sltu	$a0, $t0, $a0
	sltu	$t3, $t8, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_39
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t0, $s8
	ld.d	$a2, $sp, 568                   # 8-byte Folded Reload
	sltu	$t3, $a2, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_39
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 1368                  # 8-byte Folded Reload
	sltu	$a0, $t0, $a0
	ld.d	$s6, $sp, 1360                  # 8-byte Folded Reload
	sltu	$t3, $s6, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_38
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 1352                  # 8-byte Folded Reload
	sltu	$a0, $t0, $a0
	ld.d	$a7, $sp, 1544                  # 8-byte Folded Reload
	sltu	$t3, $a7, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_38
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$s7, $t8
	ld.d	$a0, $sp, 1520                  # 8-byte Folded Reload
	sltu	$a0, $t0, $a0
	ld.d	$t8, $sp, 1552                  # 8-byte Folded Reload
	sltu	$t3, $t8, $ra
	and	$a0, $a0, $t3
	bnez	$a0, .LBB1_38
# %bb.33:                               # %vector.ph
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$t3, $zero
	move	$s8, $t6
	move	$t6, $zero
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vadd.d	$vr6, $vr0, $vr6
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vadd.d	$vr5, $vr0, $vr5
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	alsl.d	$a1, $a0, $s5, 3
	st.d	$a1, $sp, 1536                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $fp, 3
	st.d	$a1, $sp, 1528                  # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a0, $sp, 1520                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1512                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1344                  # 8-byte Folded Reload
	alsl.d	$ra, $a1, $s1, 3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$t7, $sp, 1480                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 1336                  # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 1264                  # 8-byte Folded Reload
	move	$s0, $t5
	ld.d	$s2, $sp, 1472                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_34:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $a6, $t6
	vldx	$vr1, $t4, $t3
	add.d	$t5, $a0, $t6
	vld	$vr2, $t5, -8
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr1, $vr2
	vstx	$vr2, $s7, $t6
	vldx	$vr2, $s8, $t3
	vldx	$vr3, $a4, $t3
	vldx	$vr4, $a0, $t6
	vldx	$vr7, $s2, $t3
	vfmul.d	$vr2, $vr0, $vr2
	vfmul.d	$vr3, $vr0, $vr3
	vfmadd.d	$vr2, $vr2, $vr4, $vr3
	vfmadd.d	$vr2, $vr7, $vr4, $vr2
	vldx	$vr3, $s0, $t3
	vldx	$vr4, $a2, $t6
	move	$a5, $t4
	move	$t4, $t1
	move	$t1, $t2
	add.d	$t2, $ra, $t6
	vld	$vr7, $t2, -8
	add.d	$t2, $a2, $t6
	vldx	$vr8, $s6, $t6
	ld.d	$a7, $sp, 1520                  # 8-byte Folded Reload
	vldx	$vr9, $a7, $t3
	vfmadd.d	$vr1, $vr1, $vr4, $vr3
	vldx	$vr3, $a6, $t6
	vldx	$vr4, $s8, $t3
	vfmul.d	$vr8, $vr8, $vr9
	vfmadd.d	$vr1, $vr8, $vr7, $vr1
	vldx	$vr7, $t7, $t3
	vfmul.d	$vr4, $vr3, $vr4
	vld	$vr8, $t2, 8
	move	$t2, $t1
	move	$t1, $t4
	move	$t4, $a5
	vldx	$vr9, $s6, $t6
	ld.d	$a5, $sp, 1528                  # 8-byte Folded Reload
	vldx	$vr10, $a5, $t3
	vldx	$vr12, $ra, $t6
	vfmadd.d	$vr4, $vr4, $vr8, $vr7
	ld.d	$a5, $sp, 1552                  # 8-byte Folded Reload
	vldx	$vr7, $a5, $t3
	vfmul.d	$vr10, $vr9, $vr10
	vfmadd.d	$vr4, $vr10, $vr12, $vr4
	ld.d	$a5, $sp, 1512                  # 8-byte Folded Reload
	vldx	$vr10, $a5, $t3
	vfmadd.d	$vr3, $vr3, $vr7, $vr4
	vld	$vr4, $t5, 8
	ld.d	$a5, $sp, 1536                  # 8-byte Folded Reload
	vldx	$vr7, $a5, $t3
	vstx	$vr2, $t2, $t6
	vfmul.d	$vr0, $vr0, $vr10
	vfmul.d	$vr0, $vr0, $vr4
	vfmadd.d	$vr2, $vr9, $vr7, $vr3
	vldx	$vr3, $s2, $t3
	ld.d	$a5, $sp, 1544                  # 8-byte Folded Reload
	vldx	$vr4, $a5, $t3
	vstx	$vr0, $a1, $t6
	vstx	$vr1, $t1, $t6
	vfmadd.d	$vr0, $vr3, $vr8, $vr2
	vfmadd.d	$vr0, $vr4, $vr12, $vr0
	vstx	$vr0, $t0, $t6
	addi.d	$t6, $t6, 16
	add.d	$t3, $t3, $t8
	bne	$a3, $t6, .LBB1_34
# %bb.35:                               # %middle.block
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$s0, $a1
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1456                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 1504                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB1_15
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_36:                               #   in Loop: Header=BB1_16 Depth=3
	move	$s0, $zero
	b	.LBB1_42
.LBB1_37:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1456                  # 8-byte Folded Reload
	b	.LBB1_42
.LBB1_38:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1456                  # 8-byte Folded Reload
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	b	.LBB1_42
.LBB1_39:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1456                  # 8-byte Folded Reload
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	b	.LBB1_42
.LBB1_40:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1456                  # 8-byte Folded Reload
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	b	.LBB1_42
.LBB1_41:                               #   in Loop: Header=BB1_16 Depth=3
	vld	$vr13, $sp, 464                 # 16-byte Folded Reload
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1456                  # 8-byte Folded Reload
	vld	$vr14, $sp, 448                 # 16-byte Folded Reload
	ld.d	$a5, $sp, 560                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_42:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 1504                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	.p2align	4, , 16
.LBB1_43:                               # %scalar.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$a6, $vr5, 1
	sub.d	$a1, $a6, $a4
	vpickve2gr.d	$a7, $vr6, 1
	sub.d	$t0, $a7, $a5
	vpickve2gr.d	$a2, $vr6, 0
	slli.d	$a3, $a2, 3
	fldx.d	$fa0, $s3, $a3
	slli.d	$a2, $a1, 3
	fldx.d	$fa1, $s4, $a2
	alsl.d	$t1, $t0, $s1, 3
	fld.d	$fa2, $t1, -8
	fmul.d	$fa0, $fa0, $fa1
	slli.d	$t0, $t0, 3
	fmul.d	$fa0, $fa0, $fa2
	vpickve2gr.d	$a1, $vr5, 0
	slli.d	$a1, $a1, 3
	fstx.d	$fa0, $s8, $a1
	fldx.d	$fa0, $s3, $a3
	fldx.d	$fa1, $fp, $a2
	fldx.d	$fa2, $s1, $t0
	fldx.d	$fa3, $s5, $a2
	slli.d	$t0, $a6, 3
	fldx.d	$fa4, $s5, $t0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa2, $fa0
	fstx.d	$fa0, $t8, $a1
	fldx.d	$fa0, $s3, $a3
	fldx.d	$fa1, $t5, $a2
	fld.d	$fa2, $t1, 8
	add.d	$a6, $a6, $a4
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $ra, $a1
	fldx.d	$fa0, $s4, $t0
	fldx.d	$fa1, $s3, $a3
	fldx.d	$fa2, $s4, $a2
	slli.d	$a7, $a7, 3
	addi.d	$t1, $a7, -8
	fldx.d	$fa3, $t2, $t1
	fldx.d	$fa4, $s2, $a3
	slli.d	$a6, $a6, 3
	fldx.d	$fa7, $s4, $a6
	fldx.d	$ft0, $s1, $t1
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa7
	fmadd.d	$fa0, $fa1, $ft0, $fa0
	fstx.d	$fa0, $t7, $a1
	fldx.d	$fa0, $fp, $t0
	fldx.d	$fa1, $s3, $a3
	fldx.d	$fa2, $fp, $a2
	fldx.d	$fa3, $t2, $a7
	fldx.d	$fa4, $s2, $a3
	fldx.d	$fa7, $fp, $a6
	fldx.d	$ft0, $s1, $a7
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa7
	fmadd.d	$fa0, $fa2, $ft0, $fa0
	fldx.d	$fa2, $s7, $a2
	fldx.d	$fa7, $s5, $a6
	fldx.d	$ft1, $s5, $t0
	fldx.d	$ft2, $s7, $t0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa7, $fa0
	fmadd.d	$fa0, $ft1, $fa3, $fa0
	fmadd.d	$fa0, $ft2, $ft0, $fa0
	fstx.d	$fa0, $t6, $a1
	vadd.d	$vr6, $vr6, $vr13
	addi.w	$a0, $a0, -1
	vadd.d	$vr5, $vr5, $vr20
	bnez	$a0, .LBB1_43
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_44:                               #   in Loop: Header=BB1_3 Depth=1
	vld	$vr13, $sp, 464                 # 16-byte Folded Reload
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	blez	$a1, .LBB1_2
# %bb.45:                               # %.preheader949.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	blez	$a1, .LBB1_2
# %bb.46:                               # %.preheader949.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 1496                  # 8-byte Folded Reload
	blez	$a1, .LBB1_2
# %bb.47:                               # %.preheader949.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 1504                  # 8-byte Folded Reload
	blez	$a1, .LBB1_2
# %bb.48:                               # %.preheader947.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a4, 4
	move	$a5, $zero
	vpickve2gr.w	$a3, $vr2, 3
	mul.d	$a2, $a2, $a3
	ld.d	$a1, $sp, 1496                  # 8-byte Folded Reload
	mul.d	$a3, $a1, $a2
	vmul.w	$vr4, $vr2, $vr1
	ld.w	$a4, $a4, 8
	vori.b	$vr5, $vr2, 0
	vinsgr2vr.w	$vr5, $a2, 3
	ld.d	$a1, $sp, 1504                  # 8-byte Folded Reload
	mul.d	$a2, $a1, $a0
	vreplvei.w	$vr6, $vr3, 1
	vinsgr2vr.w	$vr3, $a2, 1
	vshuf4i.w	$vr3, $vr3, 64
	vsub.w	$vr3, $vr5, $vr3
	vinsgr2vr.w	$vr6, $a4, 1
	vshuf4i.w	$vr5, $vr6, 64
	vsub.w	$vr1, $vr1, $vr5
	vmul.w	$vr4, $vr4, $vr5
	vmul.w	$vr1, $vr1, $vr2
	vinsgr2vr.w	$vr2, $a3, 3
	vsub.w	$vr2, $vr4, $vr2
	vld	$vr4, $sp, 144                  # 16-byte Folded Reload
	vshuf.w	$vr4, $vr2, $vr1
	vst	$vr4, $sp, 144                  # 16-byte Folded Spill
	vori.b	$vr1, $vr13, 0
	vinsgr2vr.d	$vr1, $a0, 1
	.p2align	4, , 16
.LBB1_49:                               # %.preheader947.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_50 Depth 3
                                        #         Child Loop BB1_51 Depth 4
	st.d	$a5, $sp, 1544                  # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_50:                               # %.preheader945.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_49 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_51 Depth 4
	st.d	$a1, $sp, 1552                  # 8-byte Folded Spill
	vshuf4i.w	$vr2, $vr0, 50
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr0, $vr0, 16
	vslli.d	$vr0, $vr0, 32
	vsrai.d	$vr0, $vr0, 32
	ld.d	$a2, $sp, 1504                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 1456                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_51:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_49 Depth=2
                                        #       Parent Loop BB1_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$a5, $vr2, 1
	sub.d	$a3, $a5, $s8
	vpickve2gr.d	$a4, $vr0, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa4, $s3, $a4
	slli.d	$a3, $a3, 3
	fldx.d	$fa5, $s4, $a3
	add.d	$a7, $a5, $s8
	vpickve2gr.d	$t0, $vr0, 1
	sub.d	$a6, $t0, $s0
	fmul.d	$fa5, $fa4, $fa5
	alsl.d	$t1, $a6, $s1, 3
	fld.d	$fa6, $t1, -8
	fldx.d	$fa7, $s6, $a3
	slli.d	$a5, $a5, 3
	fldx.d	$ft0, $s6, $a5
	slli.d	$t2, $a6, 3
	fmul.d	$fa4, $fa4, $fa7
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fmadd.d	$fa4, $ft0, $fa6, $fa4
	vpickve2gr.d	$a6, $vr2, 0
	slli.d	$a6, $a6, 3
	fstx.d	$fa4, $a1, $a6
	fldx.d	$fa4, $s3, $a4
	fldx.d	$fa5, $fp, $a3
	fldx.d	$fa6, $s5, $a3
	fldx.d	$fa7, $s1, $t2
	fldx.d	$ft0, $s5, $a5
	fmul.d	$fa5, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa6
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	fmadd.d	$fa4, $ft0, $fa7, $fa4
	fstx.d	$fa4, $ra, $a6
	fldx.d	$fa4, $s3, $a4
	fldx.d	$fa5, $t6, $a3
	fldx.d	$fa6, $t3, $a3
	fld.d	$fa7, $t1, 8
	fldx.d	$ft0, $t3, $a5
	fmul.d	$fa5, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa6
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	fmadd.d	$fa4, $ft0, $fa7, $fa4
	fstx.d	$fa4, $a0, $a6
	fldx.d	$fa4, $s4, $a5
	fldx.d	$fa5, $s3, $a4
	fldx.d	$fa6, $s4, $a3
	slli.d	$t0, $t0, 3
	addi.d	$t1, $t0, -8
	fldx.d	$fa7, $t5, $t1
	fldx.d	$ft0, $s2, $a4
	slli.d	$a7, $a7, 3
	fldx.d	$ft1, $s4, $a7
	fldx.d	$ft2, $s1, $t1
	fmul.d	$fa6, $fa5, $fa6
	fmadd.d	$fa4, $fa6, $fa7, $fa4
	fmul.d	$fa6, $ft0, $ft1
	fmadd.d	$fa4, $fa6, $ft2, $fa4
	fldx.d	$fa6, $t4, $a3
	fldx.d	$ft1, $s6, $a7
	fldx.d	$ft3, $s6, $a5
	fldx.d	$ft4, $t4, $a5
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fmadd.d	$fa4, $ft0, $ft1, $fa4
	fmadd.d	$fa4, $ft3, $fa7, $fa4
	fmadd.d	$fa4, $ft4, $ft2, $fa4
	fstx.d	$fa4, $t8, $a6
	fldx.d	$fa4, $fp, $a5
	fldx.d	$fa5, $s3, $a4
	fldx.d	$fa6, $fp, $a3
	fldx.d	$fa7, $t5, $t0
	fldx.d	$ft0, $s2, $a4
	fldx.d	$ft1, $fp, $a7
	fldx.d	$ft2, $s1, $t0
	fmul.d	$fa6, $fa5, $fa6
	fmadd.d	$fa4, $fa6, $fa7, $fa4
	fmul.d	$fa6, $ft0, $ft1
	fmadd.d	$fa4, $fa6, $ft2, $fa4
	fldx.d	$fa6, $s7, $a3
	fldx.d	$ft1, $s5, $a7
	fldx.d	$ft3, $s5, $a5
	fldx.d	$ft4, $s7, $a5
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fmadd.d	$fa4, $ft0, $ft1, $fa4
	fmadd.d	$fa4, $ft3, $fa7, $fa4
	fmadd.d	$fa4, $ft4, $ft2, $fa4
	fstx.d	$fa4, $t7, $a6
	vadd.d	$vr0, $vr0, $vr13
	addi.w	$a2, $a2, -1
	vadd.d	$vr2, $vr2, $vr1
	bnez	$a2, .LBB1_51
# %bb.52:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_50 Depth=3
	vpickev.w	$vr0, $vr2, $vr0
	ld.d	$a1, $sp, 1552                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr0, $vr3, $vr0
	ld.d	$a0, $sp, 1496                  # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_50
# %bb.53:                               # %._crit_edge968.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_49 Depth=2
	ld.d	$a5, $sp, 1544                  # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	vld	$vr2, $sp, 144                  # 16-byte Folded Reload
	vadd.w	$vr0, $vr2, $vr0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$a5, $a0, .LBB1_49
	b	.LBB1_2
.LBB1_54:                               # %._crit_edge
	move	$a0, $zero
	fld.d	$fs7, $sp, 1608                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1616                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1624                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1632                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1640                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1648                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1656                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1664                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1672                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1680                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1688                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1696                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1704                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1712                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1720                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1728                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1736                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1744                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1752                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1760
	ret
.Lfunc_end1:
	.size	hypre_SMG2BuildRAPSym, .Lfunc_end1-hypre_SMG2BuildRAPSym
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMG2BuildRAPNoSym
.LCPI2_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	0                               # 0x0
.LCPI2_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
.LCPI2_2:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	1                               # 0x1
.LCPI2_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
.LCPI2_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI2_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	6                               # 0x6
.LCPI2_6:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
.LCPI2_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	7                               # 0x7
.LCPI2_9:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	3                               # 0x3
	.text
	.globl	hypre_SMG2BuildRAPNoSym
	.p2align	5
	.type	hypre_SMG2BuildRAPNoSym,@function
hypre_SMG2BuildRAPNoSym:                # @hypre_SMG2BuildRAPNoSym
# %bb.0:
	addi.d	$sp, $sp, -1344
	st.d	$ra, $sp, 1336                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1304                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1256                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1248                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1240                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1232                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1224                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1216                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1208                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1200                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1192                 # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	blez	$a6, .LBB2_53
# %bb.1:                                # %.preheader885.lr.ph
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 24
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a1, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vrepli.d	$vr11, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	vst	$vr11, $sp, 336                 # 16-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit883
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	bge	$a4, $a0, .LBB2_53
.LBB2_3:                                # %.preheader885
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_38 Depth 2
                                        #       Child Loop BB2_40 Depth 3
                                        #         Child Loop BB2_45 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #     Child Loop BB2_14 Depth 2
                                        #       Child Loop BB2_16 Depth 3
                                        #         Child Loop BB2_25 Depth 4
                                        #         Child Loop BB2_31 Depth 4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s5, $a5, -1
	slli.d	$a1, $a5, 4
	alsl.d	$a2, $a5, $a1, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	addi.d	$a3, $a5, -1
	addi.d	$a5, $a2, -24
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s5, $s5, 1
	addi.d	$a5, $a5, 24
	addi.d	$a1, $a1, 4
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$a5, $sp, 1136                  # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$s6, $a4, $a1, 3
	add.d	$a0, $a0, $s6
	addi.d	$a3, $sp, 1168
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 40
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $s1, 40
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $fp, 40
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$s7, $a3, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	st.d	$s8, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	st.d	$s4, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s8, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	addi.w	$s4, $zero, -1
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	move	$a0, $s4
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	lu32i.d	$s1, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 6
	blt	$a0, $a1, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	move	$a0, $s4
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=1
	add.d	$fp, $s7, $s6
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $s3
	move	$s6, $s4
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	move	$a0, $s6
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	ld.d	$s4, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1120                  # 8-byte Folded Reload
	add.d	$s1, $s7, $s4
	ld.w	$a1, $s1, 12
	ldx.w	$a2, $s7, $s4
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	sub.w	$a0, $a1, $a2
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s8, $sp, 1104                  # 8-byte Folded Reload
	add.d	$s3, $s8, $s4
	ld.w	$a2, $s3, 12
	ldx.w	$a3, $s8, $s4
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a1, $sp, 1152
	ld.d	$s5, $sp, 1128                  # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s5, 8
	ld.w	$a0, $s3, 16
	ld.d	$t0, $sp, 1056                  # 8-byte Folded Reload
	add.d	$a1, $t0, $s4
	ld.w	$a1, $a1, 16
	ld.d	$a5, $s5, 0
	ld.w	$a6, $sp, 1176
	ld.w	$a3, $s1, 16
	ld.w	$a2, $fp, 16
	vinsgr2vr.d	$vr1, $a5, 0
	ld.d	$a5, $sp, 1168
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a7, $a7, 0
	st.d	$a7, $sp, 1112                  # 8-byte Folded Spill
	vldx	$vr0, $s8, $s4
	vldx	$vr2, $t0, $s4
	vinsgr2vr.d	$vr6, $a5, 0
	vldx	$vr3, $s7, $s4
	pcalau12i	$a5, %pc_hi20(.LCPI2_0)
	vld	$vr5, $a5, %pc_lo12(.LCPI2_0)
	vld	$vr4, $fp, 0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	vld	$vr7, $a5, %pc_lo12(.LCPI2_1)
	vshuf.w	$vr5, $vr6, $vr1
	vpackev.w	$vr8, $vr2, $vr0
	vpackev.d	$vr8, $vr3, $vr8
	vshuf.w	$vr7, $vr4, $vr8
	pcalau12i	$a5, %pc_hi20(.LCPI2_2)
	vld	$vr8, $a5, %pc_lo12(.LCPI2_2)
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	vld	$vr9, $a5, %pc_lo12(.LCPI2_3)
	pcalau12i	$a5, %pc_hi20(.LCPI2_4)
	vld	$vr10, $a5, %pc_lo12(.LCPI2_4)
	vshuf.w	$vr8, $vr6, $vr1
	vpackod.w	$vr1, $vr2, $vr0
	vshuf.w	$vr9, $vr3, $vr1
	vshuf.w	$vr10, $vr4, $vr9
	vsub.w	$vr8, $vr8, $vr10
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a6, 1
	pcalau12i	$a4, %pc_hi20(.LCPI2_5)
	vld	$vr6, $a4, %pc_lo12(.LCPI2_5)
	vshuf4i.w	$vr1, $vr1, 16
	vilvh.w	$vr9, $vr2, $vr0
	vshuf4i.d	$vr9, $vr3, 12
	vshuf.w	$vr6, $vr4, $vr9
	vsub.w	$vr6, $vr1, $vr6
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a2, 3
	vsub.w	$vr1, $vr1, $vr10
	vmaxi.w	$vr1, $vr1, -1
	vaddi.wu	$vr1, $vr1, 1
	vmadd.w	$vr8, $vr1, $vr6
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr9, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr10, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr11, $a0, %pc_lo12(.LCPI2_8)
	vsub.w	$vr6, $vr5, $vr7
	vshuf.w	$vr9, $vr2, $vr0
	vshuf.w	$vr10, $vr3, $vr9
	vshuf.w	$vr11, $vr4, $vr10
	vsub.w	$vr0, $vr11, $vr7
	vmaxi.w	$vr0, $vr0, -1
	ld.w	$a2, $sp, 1156
	ld.w	$a1, $sp, 1152
	vaddi.wu	$vr2, $vr0, 1
	vmadd.w	$vr6, $vr8, $vr2
	ld.w	$a3, $sp, 1160
	slt	$a0, $a1, $a2
	st.d	$a1, $sp, 1056                  # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	st.d	$a2, $sp, 1024                  # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ori	$a2, $zero, 5
	bne	$a1, $a2, .LBB2_32
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	vld	$vr11, $sp, 336                 # 16-byte Folded Reload
	ld.d	$s7, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$t7, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$t6, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$t8, $sp, 1072                  # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.9:                                # %.preheader880.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.10:                               # %.preheader880.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.11:                               # %.preheader880.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.12:                               # %.preheader878.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1152
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 4
	move	$t0, $zero
	vinsgr2vr.d	$vr0, $a0, 0
	vpickve2gr.w	$a0, $vr2, 2
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 1024                  # 8-byte Folded Reload
	mul.d	$a1, $a1, $a0
	vmul.w	$vr3, $vr2, $vr1
	ld.w	$a2, $a2, 8
	ld.d	$a6, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$a7, $sp, 1112                  # 8-byte Folded Reload
	mul.d	$a3, $a6, $a7
	vori.b	$vr4, $vr2, 0
	vinsgr2vr.w	$vr4, $a0, 2
	vreplvei.w	$vr5, $vr0, 1
	vinsgr2vr.w	$vr0, $a3, 1
	vshuf4i.w	$vr0, $vr0, 16
	vsub.w	$vr0, $vr4, $vr0
	vinsgr2vr.w	$vr5, $a2, 1
	vshuf4i.w	$vr5, $vr5, 16
	vsub.w	$vr1, $vr1, $vr5
	vmul.w	$vr3, $vr3, $vr5
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr5, $a0, %pc_lo12(.LCPI2_9)
	vinsgr2vr.w	$vr4, $a1, 2
	vmul.w	$vr1, $vr1, $vr2
	vsub.w	$vr2, $vr3, $vr4
	vshuf.w	$vr5, $vr2, $vr1
	vst	$vr5, $sp, 544                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a2, $a0, $s2, 3
	addi.d	$a3, $a6, -1
	bstrpick.d	$a3, $a3, 31, 0
	alsl.d	$a4, $a3, $t6, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 848                   # 8-byte Folded Spill
	alsl.d	$a4, $a3, $t5, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 840                   # 8-byte Folded Spill
	alsl.d	$a4, $a3, $t8, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 832                   # 8-byte Folded Spill
	alsl.d	$a4, $a3, $t7, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 824                   # 8-byte Folded Spill
	alsl.d	$a4, $a3, $s7, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 816                   # 8-byte Folded Spill
	slli.d	$a4, $a1, 3
	sub.d	$a4, $s4, $a4
	st.d	$a4, $sp, 808                   # 8-byte Folded Spill
	addi.d	$a4, $s4, 8
	sub.d	$a5, $a3, $a1
	alsl.d	$a5, $a5, $a4, 3
	st.d	$a5, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$a4, $a3, $a4, 3
	st.d	$a4, $sp, 792                   # 8-byte Folded Spill
	addi.d	$a5, $s2, 8
	alsl.d	$a4, $a3, $s2, 3
	addi.d	$a4, $a4, 16
	addi.d	$t1, $a2, -8
	st.d	$t1, $sp, 768                   # 8-byte Folded Spill
	st.d	$a4, $sp, 776                   # 8-byte Folded Spill
	alsl.d	$a4, $a0, $a4, 3
	st.d	$a4, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a4, $a3, $s5, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 744                   # 8-byte Folded Spill
	alsl.d	$a4, $a3, $s6, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 736                   # 8-byte Folded Spill
	alsl.d	$a4, $a3, $s8, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 720                   # 8-byte Folded Spill
	addi.d	$a4, $s0, 8
	st.d	$a4, $sp, 704                   # 8-byte Folded Spill
	alsl.d	$a3, $a3, $s0, 3
	addi.d	$a3, $a3, 16
	st.d	$a3, $sp, 688                   # 8-byte Folded Spill
	ori	$a3, $zero, 19
	sltu	$a3, $a3, $a6
	addi.d	$a4, $a7, -1
	sltui	$a4, $a4, 1
	and	$s1, $a3, $a4
	bstrpick.d	$a3, $a6, 30, 1
	slli.d	$a4, $a3, 1
	mul.d	$a3, $a4, $a7
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.d	$vr1, $a4, 1
	vst	$vr1, $sp, 640                  # 16-byte Folded Spill
	st.d	$a4, $sp, 664                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr1, $a4
	vst	$vr1, $sp, 624                  # 16-byte Folded Spill
	vori.b	$vr4, $vr11, 0
	vinsgr2vr.d	$vr4, $a7, 0
	slli.d	$a3, $a6, 3
	bstrpick.d	$a3, $a3, 33, 4
	slli.d	$a3, $a3, 4
	st.d	$a3, $sp, 600                   # 8-byte Folded Spill
	slli.d	$a3, $a7, 4
	st.d	$a3, $sp, 576                   # 8-byte Folded Spill
	st.d	$a5, $sp, 784                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a5, 3
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_13:                               # %._crit_edge957.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_14 Depth=2
	ld.d	$t0, $sp, 568                   # 8-byte Folded Reload
	addi.w	$t0, $t0, 1
	vld	$vr1, $sp, 544                  # 16-byte Folded Reload
	vadd.w	$vr6, $vr1, $vr6
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$t0, $a0, .LBB2_2
.LBB2_14:                               # %.preheader878.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_16 Depth 3
                                        #         Child Loop BB2_25 Depth 4
                                        #         Child Loop BB2_31 Depth 4
	st.d	$t0, $sp, 568                   # 8-byte Folded Spill
	move	$s3, $zero
	ld.d	$t2, $sp, 992                   # 8-byte Folded Reload
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %._crit_edge.us.us.us.us.us.us1003
                                        #   in Loop: Header=BB2_16 Depth=3
	vpickev.w	$vr1, $vr5, $vr6
	addi.w	$s3, $s3, 1
	vadd.w	$vr6, $vr0, $vr1
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	beq	$s3, $a0, .LBB2_13
.LBB2_16:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_25 Depth 4
                                        #         Child Loop BB2_31 Depth 4
	vshuf4i.w	$vr1, $vr6, 50
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr5, $vr1, 32
	vshuf4i.w	$vr1, $vr6, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr6, $vr1, 32
	beqz	$s1, .LBB2_27
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	st.d	$s3, $sp, 984                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr5, 1
	alsl.d	$a3, $a0, $t6, 3
	st.d	$a3, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$a7, $a0, $a4, 3
	alsl.d	$a3, $a0, $t5, 3
	st.d	$a3, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$s3, $a0, $a4, 3
	alsl.d	$t5, $a0, $t8, 3
	ld.d	$a4, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a4, 3
	st.d	$a3, $sp, 888                   # 8-byte Folded Spill
	alsl.d	$t7, $a0, $t7, 3
	ld.d	$a4, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$t6, $a0, $a4, 3
	vpickve2gr.d	$a3, $vr6, 1
	st.d	$a3, $sp, 928                   # 8-byte Folded Spill
	alsl.d	$t8, $a3, $s7, 3
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	vpickve2gr.d	$t3, $vr5, 0
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a0, $t3, $a0, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$s1, $t3, $a4, 3
	st.d	$s1, $sp, 896                   # 8-byte Folded Spill
	alsl.d	$t0, $t3, $s4, 3
	ld.d	$a5, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$a3, $t3, $a5, 3
	st.d	$a3, $sp, 960                   # 8-byte Folded Spill
	add.d	$ra, $t3, $a1
	alsl.d	$a0, $ra, $s4, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	alsl.d	$t4, $ra, $a5, 3
	st.d	$t4, $sp, 968                   # 8-byte Folded Spill
	vpickve2gr.d	$a3, $vr6, 0
	ld.d	$a5, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a5, $a3, $a5, 3
	ld.d	$a6, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a6, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a6, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a6, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a6, 3
	st.d	$a4, $sp, 872                   # 8-byte Folded Spill
	move	$a0, $a3
	st.d	$a3, $sp, 1016                  # 8-byte Folded Spill
	alsl.d	$a6, $ra, $s5, 3
	ld.d	$t1, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a3, $t3, $t1, 3
	st.d	$a3, $sp, 976                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$fp, $ra, $fp, 3
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr15, $fp, 0
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $fp, 3
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	vori.b	$vr11, $vr15, 0
	vinsgr2vr.d	$vr18, $a3, 0
	vinsgr2vr.d	$vr11, $s3, 1
	vori.b	$vr12, $vr18, 0
	vinsgr2vr.d	$vr19, $fp, 0
	vinsgr2vr.d	$vr23, $t4, 0
	ld.d	$t4, $sp, 864                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr12, $s3, 1
	vori.b	$vr13, $vr19, 0
	vori.b	$vr14, $vr23, 0
	vinsgr2vr.d	$vr22, $a4, 0
	move	$a4, $t0
	vinsgr2vr.d	$vr14, $s3, 1
	vori.b	$vr16, $vr22, 0
	vinsgr2vr.d	$vr25, $s1, 0
	vinsgr2vr.d	$vr16, $s3, 1
	vori.b	$vr17, $vr25, 0
	vinsgr2vr.d	$vr7, $t6, 0
	vinsgr2vr.d	$vr17, $s3, 1
	vori.b	$vr21, $vr7, 0
	vinsgr2vr.d	$vr21, $s3, 1
	vinsgr2vr.d	$vr19, $s3, 1
	vinsgr2vr.d	$vr10, $s3, 0
	move	$a0, $a6
	ld.d	$fp, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a3, $ra, $fp, 3
	st.d	$a3, $sp, 904                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr15, $a7, 1
	vinsgr2vr.d	$vr18, $a7, 1
	vinsgr2vr.d	$vr22, $a7, 1
	vinsgr2vr.d	$vr23, $a7, 1
	vinsgr2vr.d	$vr25, $a7, 1
	vori.b	$vr1, $vr7, 0
	vinsgr2vr.d	$vr1, $a7, 1
	vori.b	$vr26, $vr10, 0
	vinsgr2vr.d	$vr26, $a7, 1
	vinsgr2vr.d	$vr24, $a7, 0
	st.d	$t3, $sp, 856                   # 8-byte Folded Spill
	alsl.d	$a7, $t3, $t2, 3
	ld.d	$a3, $sp, 1128                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr8, $a3, 0
	alsl.d	$t3, $ra, $t2, 3
	ld.d	$a3, $sp, 1112                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr9, $a3, 0
	alsl.d	$s3, $ra, $t1, 3
	vinsgr2vr.d	$vr28, $t4, 0
	alsl.d	$s1, $ra, $s6, 3
	vori.b	$vr27, $vr28, 0
	vori.b	$vr29, $vr28, 0
	vori.b	$vr30, $vr28, 0
	vori.b	$vr31, $vr28, 0
	vori.b	$vr3, $vr28, 0
	vinsgr2vr.d	$vr3, $t0, 1
	vori.b	$vr20, $vr28, 0
	vinsgr2vr.d	$vr20, $t8, 1
	vinsgr2vr.d	$vr28, $t5, 1
	vslt.du	$vr1, $vr20, $vr1
	ld.d	$t0, $sp, 888                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr20, $t0, 0
	vslt.du	$vr26, $vr28, $vr26
	vpickev.w	$vr1, $vr1, $vr26
	vslt.du	$vr3, $vr3, $vr25
	vori.b	$vr25, $vr20, 0
	ld.d	$t1, $sp, 872                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr25, $t1, 1
	vori.b	$vr26, $vr7, 0
	vinsgr2vr.d	$vr26, $t1, 1
	ld.d	$a3, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$ra, $a3, $s8, 3
	ld.d	$a6, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$fp, $a3, $a6, 3
	vinsgr2vr.d	$vr31, $a5, 1
	vslt.du	$vr31, $vr31, $vr23
	ld.d	$a3, $sp, 936                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr23, $a3, 0
	vpickev.w	$vr3, $vr31, $vr3
	vori.b	$vr31, $vr23, 0
	vinsgr2vr.d	$vr31, $ra, 1
	vpickev.h	$vr1, $vr3, $vr1
	vori.b	$vr3, $vr23, 0
	st.d	$t3, $sp, 1128                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr3, $t3, 1
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr30, $a0, 1
	vslt.du	$vr30, $vr30, $vr22
	vinsgr2vr.d	$vr22, $t8, 0
	vinsgr2vr.d	$vr29, $t3, 1
	vslt.du	$vr18, $vr29, $vr18
	vori.b	$vr29, $vr22, 0
	vinsgr2vr.d	$vr29, $t5, 1
	vpickev.w	$vr18, $vr18, $vr30
	vori.b	$vr30, $vr23, 0
	vinsgr2vr.d	$vr30, $t5, 1
	vslt.du	$vr19, $vr28, $vr19
	vori.b	$vr28, $vr23, 0
	vinsgr2vr.d	$vr28, $a5, 1
	vinsgr2vr.d	$vr27, $ra, 1
	vslt.du	$vr15, $vr27, $vr15
	vori.b	$vr27, $vr23, 0
	vinsgr2vr.d	$vr27, $a0, 1
	vpickev.w	$vr15, $vr19, $vr15
	vori.b	$vr19, $vr23, 0
	vinsgr2vr.d	$vr19, $a4, 1
	vpickev.h	$vr15, $vr15, $vr18
	vori.b	$vr18, $vr23, 0
	st.d	$t8, $sp, 872                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr18, $t8, 1
	vpickev.b	$vr15, $vr15, $vr1
	vori.b	$vr1, $vr20, 0
	ld.d	$a6, $sp, 896                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr1, $a6, 1
	move	$t1, $t6
	vinsgr2vr.d	$vr13, $t6, 1
	vslt.du	$vr18, $vr18, $vr21
	vslt.du	$vr17, $vr19, $vr17
	vpickev.w	$vr17, $vr17, $vr18
	vslt.du	$vr16, $vr27, $vr16
	vslt.du	$vr14, $vr28, $vr14
	vpickev.w	$vr14, $vr16, $vr14
	vpickev.h	$vr14, $vr14, $vr17
	vslt.du	$vr13, $vr30, $vr13
	vslt.du	$vr1, $vr29, $vr1
	vpickev.w	$vr1, $vr1, $vr13
	vslt.du	$vr3, $vr3, $vr12
	vslt.du	$vr11, $vr31, $vr11
	vpickev.w	$vr3, $vr11, $vr3
	vpickev.h	$vr1, $vr1, $vr3
	vpickev.b	$vr1, $vr1, $vr14
	vinsgr2vr.d	$vr23, $t4, 1
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr12, $a0, 0
	ld.d	$t3, $sp, 944                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr12, $t3, 1
	vinsgr2vr.d	$vr14, $a7, 0
	st.d	$s1, $sp, 1112                  # 8-byte Folded Spill
	vinsgr2vr.d	$vr14, $s1, 1
	vpackev.d	$vr3, $vr23, $vr14
	vinsgr2vr.d	$vr11, $t7, 0
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr11, $a0, 1
	vori.b	$vr13, $vr23, 0
	vpackev.d	$vr17, $vr23, $vr12
	vori.b	$vr18, $vr23, 0
	vpackev.d	$vr19, $vr23, $vr11
	vori.b	$vr21, $vr23, 0
	vori.b	$vr27, $vr23, 0
	vori.b	$vr28, $vr23, 0
	vori.b	$vr29, $vr23, 0
	vori.b	$vr30, $vr23, 0
	vori.b	$vr31, $vr23, 0
	vinsgr2vr.d	$vr24, $t0, 1
	vslt.du	$vr2, $vr23, $vr24
	vori.b	$vr16, $vr23, 0
	vshuf4i.d	$vr16, $vr14, 3
	vshuf4i.d	$vr13, $vr12, 3
	vshuf4i.d	$vr21, $vr14, 6
	vshuf4i.d	$vr27, $vr12, 6
	vshuf4i.d	$vr28, $vr11, 6
	vori.b	$vr23, $vr8, 0
	ld.d	$t8, $sp, 960                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr23, $t8, 1
	vpackev.d	$vr12, $vr23, $vr24
	vslt.du	$vr12, $vr28, $vr12
	vori.b	$vr14, $vr7, 0
	vinsgr2vr.d	$vr7, $a6, 1
	ld.d	$a6, $sp, 704                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 1016                  # 8-byte Folded Reload
	alsl.d	$a6, $t6, $a6, 3
	move	$t6, $a3
	vinsgr2vr.d	$vr31, $a0, 0
	ld.d	$a3, $sp, 904                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr9, $a3, 1
	vpickev.w	$vr2, $vr12, $vr2
	vpackev.d	$vr12, $vr9, $vr24
	vslt.du	$vr12, $vr27, $vr12
	vori.b	$vr27, $vr24, 0
	vshuf4i.d	$vr27, $vr23, 12
	vslt.du	$vr27, $vr31, $vr27
	vinsgr2vr.d	$vr28, $a6, 0
	vinsgr2vr.d	$vr28, $t5, 1
	vshuf4i.d	$vr18, $vr11, 3
	vinsgr2vr.d	$vr29, $s1, 0
	vinsgr2vr.d	$vr30, $t3, 0
	vpickev.w	$vr27, $vr12, $vr27
	st.d	$s3, $sp, 928                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr12, $s3, 0
	vinsgr2vr.d	$vr12, $fp, 1
	vpickev.h	$vr2, $vr27, $vr2
	vpackev.d	$vr27, $vr12, $vr24
	vslt.du	$vr21, $vr21, $vr27
	vori.b	$vr27, $vr24, 0
	vshuf4i.d	$vr27, $vr9, 12
	vslt.du	$vr27, $vr30, $vr27
	vinsgr2vr.d	$vr30, $t6, 1
	vshuf4i.d	$vr30, $vr28, 6
	vpickev.w	$vr21, $vr21, $vr27
	vori.b	$vr27, $vr24, 0
	vslt.du	$vr30, $vr30, $vr24
	vshuf4i.d	$vr24, $vr23, 6
	vshuf4i.d	$vr27, $vr12, 12
	vslt.du	$vr27, $vr29, $vr27
	vpackev.d	$vr29, $vr12, $vr10
	vpickev.w	$vr27, $vr30, $vr27
	vori.b	$vr30, $vr10, 0
	vpickev.h	$vr21, $vr27, $vr21
	vori.b	$vr27, $vr10, 0
	vpickev.b	$vr2, $vr21, $vr2
	vori.b	$vr21, $vr10, 0
	vpackev.d	$vr23, $vr23, $vr10
	vslt.du	$vr19, $vr19, $vr23
	vpackev.d	$vr23, $vr9, $vr10
	vinsgr2vr.d	$vr10, $t8, 1
	move	$s1, $t8
	vslt.du	$vr10, $vr18, $vr10
	vpickev.w	$vr10, $vr10, $vr19
	vslt.du	$vr17, $vr17, $vr23
	vinsgr2vr.d	$vr21, $a3, 1
	move	$s3, $a3
	vslt.du	$vr13, $vr13, $vr21
	vpickev.w	$vr13, $vr13, $vr17
	vpickev.h	$vr10, $vr13, $vr10
	vpackev.d	$vr13, $vr11, $vr28
	vinsgr2vr.d	$vr27, $t0, 1
	vslt.du	$vr13, $vr13, $vr27
	vori.b	$vr17, $vr11, 0
	vinsgr2vr.d	$vr17, $t5, 0
	vslt.du	$vr17, $vr17, $vr24
	vpickev.w	$vr13, $vr17, $vr13
	vinsgr2vr.d	$vr30, $fp, 1
	move	$t8, $fp
	vslt.du	$vr16, $vr16, $vr30
	vslt.du	$vr3, $vr3, $vr29
	vpickev.w	$vr3, $vr16, $vr3
	vpickev.h	$vr3, $vr13, $vr3
	vpickev.b	$vr3, $vr3, $vr10
	vand.v	$vr10, $vr1, $vr3
	vand.v	$vr13, $vr15, $vr2
	vinsgr2vr.d	$vr1, $ra, 0
	vinsgr2vr.d	$vr1, $t5, 1
	vori.b	$vr2, $vr20, 0
	vori.b	$vr3, $vr20, 0
	vori.b	$vr15, $vr20, 0
	ld.d	$a3, $sp, 1104                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr20, $a3, 1
	vslt.du	$vr1, $vr1, $vr20
	vinsgr2vr.d	$vr16, $a5, 0
	vinsgr2vr.d	$vr22, $t7, 1
	vslt.du	$vr7, $vr22, $vr7
	vinsgr2vr.d	$vr17, $a4, 0
	vpickev.w	$vr1, $vr7, $vr1
	vori.b	$vr7, $vr17, 0
	vinsgr2vr.d	$vr17, $t7, 1
	ld.d	$a3, $sp, 968                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr14, $a3, 1
	vslt.du	$vr14, $vr17, $vr14
	vori.b	$vr17, $vr16, 0
	vinsgr2vr.d	$vr16, $t7, 1
	vslt.du	$vr16, $vr16, $vr26
	vpickev.w	$vr14, $vr16, $vr14
	vpickev.h	$vr14, $vr14, $vr1
	vinsgr2vr.d	$vr15, $a3, 1
	move	$a3, $s3
	vinsgr2vr.d	$vr7, $t5, 1
	vslt.du	$vr7, $vr7, $vr15
	vinsgr2vr.d	$vr1, $t3, 0
	vinsgr2vr.d	$vr17, $t5, 1
	vslt.du	$vr15, $vr17, $vr25
	vinsgr2vr.d	$vr16, $s1, 0
	vinsgr2vr.d	$vr16, $t0, 1
	vpickev.w	$vr7, $vr15, $vr7
	ld.d	$t0, $sp, 880                   # 8-byte Folded Reload
	move	$s3, $t0
	vinsgr2vr.d	$vr15, $t0, 0
	vinsgr2vr.d	$vr15, $t5, 1
	ld.d	$t0, $sp, 976                   # 8-byte Folded Reload
	move	$t3, $t0
	vinsgr2vr.d	$vr3, $t0, 1
	vslt.du	$vr3, $vr15, $vr3
	ld.d	$t0, $sp, 1128                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr15, $t0, 0
	vinsgr2vr.d	$vr15, $t5, 1
	ld.d	$t0, $sp, 1120                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $t0, 1
	vslt.du	$vr2, $vr15, $vr2
	vpickev.w	$vr2, $vr2, $vr3
	vpickev.h	$vr2, $vr2, $vr7
	vpickev.b	$vr2, $vr14, $vr2
	vinsgr2vr.d	$vr3, $t5, 0
	ld.d	$fp, $sp, 1136                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr3, $fp, 1
	vinsgr2vr.d	$vr1, $a7, 1
	ld.d	$t0, $sp, 1112                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr7, $t0, 0
	vinsgr2vr.d	$vr7, $a6, 1
	vpackev.d	$vr14, $vr1, $vr3
	vori.b	$vr15, $vr16, 0
	vshuf4i.d	$vr15, $vr12, 6
	vori.b	$vr12, $vr16, 0
	vshuf4i.d	$vr12, $vr9, 6
	vslt.du	$vr12, $vr14, $vr12
	vslt.du	$vr14, $vr3, $vr16
	vpickev.w	$vr12, $vr12, $vr14
	vori.b	$vr14, $vr3, 0
	vshuf4i.d	$vr14, $vr7, 12
	vpackev.d	$vr7, $vr7, $vr3
	vshuf4i.d	$vr3, $vr1, 12
	vslt.du	$vr7, $vr7, $vr15
	vori.b	$vr15, $vr16, 0
	vinsgr2vr.d	$vr16, $a3, 0
	vslt.du	$vr3, $vr3, $vr16
	vpickev.w	$vr3, $vr7, $vr3
	vpickev.h	$vr3, $vr3, $vr12
	vpackev.d	$vr1, $vr1, $vr11
	vinsgr2vr.d	$vr8, $t1, 1
	vshuf4i.d	$vr9, $vr8, 12
	vslt.du	$vr1, $vr1, $vr9
	vori.b	$vr7, $vr11, 0
	vslt.du	$vr9, $vr11, $vr8
	vinsgr2vr.d	$vr7, $fp, 1
	vinsgr2vr.d	$vr8, $s1, 0
	vslt.du	$vr7, $vr7, $vr8
	vpickev.w	$vr1, $vr1, $vr7
	vinsgr2vr.d	$vr15, $t8, 0
	vslt.du	$vr7, $vr14, $vr15
	vpickev.w	$vr7, $vr9, $vr7
	vpickev.h	$vr1, $vr1, $vr7
	vpickev.b	$vr1, $vr1, $vr3
	vand.v	$vr1, $vr2, $vr1
	vor.v	$vr1, $vr13, $vr1
	vslli.b	$vr1, $vr1, 7
	vmskltz.b	$vr1, $vr1
	vpickve2gr.hu	$fp, $vr1, 0
	vslli.b	$vr1, $vr10, 7
	vmskltz.b	$vr1, $vr1
	vpickve2gr.hu	$s1, $vr1, 0
	slli.d	$s1, $s1, 16
	or	$fp, $fp, $s1
	addi.w	$s1, $fp, 0
	move	$fp, $zero
	bnez	$s1, .LBB2_28
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$s1, $t7, $a3
	sltu	$s3, $s3, $t1
	and	$s1, $s1, $s3
	vld	$vr11, $sp, 336                 # 16-byte Folded Reload
	bnez	$s1, .LBB2_29
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$s1, $t7, $t3
	sltu	$s3, $a7, $t1
	and	$s1, $s1, $s3
	bnez	$s1, .LBB2_29
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a3, $sp, 928                   # 8-byte Folded Reload
	sltu	$s1, $t7, $a3
	ld.d	$a3, $sp, 1128                  # 8-byte Folded Reload
	sltu	$s3, $a3, $t1
	and	$s1, $s1, $s3
	bnez	$s1, .LBB2_29
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a3, $sp, 1120                  # 8-byte Folded Reload
	sltu	$s1, $t7, $a3
	ld.d	$a3, $sp, 1112                  # 8-byte Folded Reload
	sltu	$s3, $a3, $t1
	and	$s1, $s1, $s3
	bnez	$s1, .LBB2_29
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$t0, $t7, $t8
	sltu	$s1, $ra, $t1
	and	$t0, $t0, $s1
	bnez	$t0, .LBB2_29
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$t0, $sp, 1104                  # 8-byte Folded Reload
	sltu	$t0, $t7, $t0
	sltu	$t3, $a6, $t1
	and	$t0, $t0, $t3
	bnez	$t0, .LBB2_29
# %bb.24:                               # %vector.ph
                                        #   in Loop: Header=BB2_16 Depth=3
	move	$t0, $zero
	move	$t3, $zero
	vld	$vr1, $sp, 624                  # 16-byte Folded Reload
	vadd.d	$vr6, $vr1, $vr6
	vld	$vr1, $sp, 640                  # 16-byte Folded Reload
	vadd.d	$vr5, $vr1, $vr5
	move	$s1, $t2
	move	$t2, $s4
	ld.d	$fp, $sp, 856                   # 8-byte Folded Reload
	add.d	$s4, $a1, $fp
	alsl.d	$fp, $s4, $s6, 3
	alsl.d	$s1, $s4, $s1, 3
	alsl.d	$s3, $s4, $s5, 3
	alsl.d	$s4, $s4, $t2, 3
	ld.d	$t2, $sp, 608                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 1016                  # 8-byte Folded Reload
	alsl.d	$s5, $t1, $t2, 3
	ld.d	$t1, $sp, 600                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 872                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_25:                               # %vector.body
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        #       Parent Loop BB2_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr1, $t2, $t3
	vldx	$vr2, $s4, $t0
	vldx	$vr3, $s5, $t3
	vfmul.d	$vr2, $vr1, $vr2
	add.d	$s6, $s5, $t3
	vfmul.d	$vr3, $vr2, $vr3
	vldx	$vr7, $s3, $t0
	vldx	$vr8, $s1, $t0
	vstx	$vr3, $t4, $t3
	vld	$vr3, $s6, -8
	vfmul.d	$vr7, $vr1, $vr7
	vfmul.d	$vr8, $vr1, $vr8
	vldx	$vr9, $a7, $t0
	vfmadd.d	$vr7, $vr7, $vr3, $vr8
	vldx	$vr8, $fp, $t0
	vld	$vr10, $s6, -16
	vfmadd.d	$vr3, $vr9, $vr3, $vr7
	vstx	$vr3, $t6, $t3
	vfmul.d	$vr1, $vr1, $vr8
	vfmul.d	$vr1, $vr1, $vr10
	vldx	$vr3, $a4, $t0
	vldx	$vr7, $ra, $t3
	vldx	$vr8, $a0, $t0
	vldx	$vr9, $a5, $t3
	vldx	$vr10, $a6, $t3
	vstx	$vr1, $t5, $t3
	vfmul.d	$vr1, $vr7, $vr8
	vfmadd.d	$vr1, $vr1, $vr9, $vr3
	vfmadd.d	$vr1, $vr2, $vr10, $vr1
	vstx	$vr1, $t7, $t3
	addi.d	$t3, $t3, 16
	add.d	$t0, $t0, $a3
	bne	$t1, $t3, .LBB2_25
# %bb.26:                               # %middle.block
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a4, $sp, 664                   # 8-byte Folded Reload
	move	$fp, $a4
	ld.d	$s5, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$t2, $sp, 992                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$t6, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$t8, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 984                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB2_15
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_27:                               #   in Loop: Header=BB2_16 Depth=3
	move	$fp, $zero
	b	.LBB2_30
.LBB2_28:                               #   in Loop: Header=BB2_16 Depth=3
	vld	$vr11, $sp, 336                 # 16-byte Folded Reload
	.p2align	4, , 16
.LBB2_29:                               #   in Loop: Header=BB2_16 Depth=3
	ld.d	$t7, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$t6, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$t8, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 984                   # 8-byte Folded Reload
.LBB2_30:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $fp
	.p2align	4, , 16
.LBB2_31:                               # %scalar.ph
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        #       Parent Loop BB2_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$a4, $vr6, 0
	vpickve2gr.d	$a5, $vr5, 0
	add.d	$a6, $a5, $a1
	vpickve2gr.d	$a7, $vr6, 1
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $s7, $a7
	slli.d	$a6, $a6, 3
	fldx.d	$fa2, $s4, $a6
	alsl.d	$t0, $a4, $a2, 3
	fld.d	$fa3, $t0, 8
	fmul.d	$fa1, $fa1, $fa2
	slli.d	$a4, $a4, 3
	fmul.d	$fa1, $fa1, $fa3
	vpickve2gr.d	$t3, $vr5, 1
	slli.d	$t3, $t3, 3
	fstx.d	$fa1, $t6, $t3
	fldx.d	$fa1, $s7, $a7
	fldx.d	$fa2, $s5, $a6
	fldx.d	$fa3, $a2, $a4
	fldx.d	$fa7, $t2, $a6
	slli.d	$t4, $a5, 3
	fldx.d	$ft0, $t2, $t4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fa7
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $ft0, $fa3, $fa1
	fstx.d	$fa1, $t5, $t3
	fldx.d	$fa1, $s7, $a7
	fldx.d	$fa2, $s6, $a6
	fld.d	$fa3, $t0, -8
	sub.d	$a5, $a5, $a1
	fmul.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $t8, $t3
	fldx.d	$fa1, $s4, $t4
	fldx.d	$fa2, $s8, $a7
	slli.d	$a5, $a5, 3
	fldx.d	$fa3, $s4, $a5
	addi.d	$a4, $a4, 8
	fldx.d	$fa7, $s2, $a4
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa1, $fa2, $fa7, $fa1
	fldx.d	$fa2, $s7, $a7
	fldx.d	$fa3, $s4, $a6
	fldx.d	$fa7, $s0, $a4
	vadd.d	$vr6, $vr6, $vr11
	vadd.d	$vr5, $vr5, $vr4
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa1, $fa2, $fa7, $fa1
	addi.w	$a0, $a0, -1
	fstx.d	$fa1, $t7, $t3
	bnez	$a0, .LBB2_31
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_32:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a6, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$a7, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$t0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$t2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$t3, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$t4, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$t6, $sp, 1072                  # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.33:                               # %.preheader881.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.34:                               # %.preheader881.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.35:                               # %.preheader881.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.36:                               # %.preheader879.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 4
	move	$s1, $zero
	vpickve2gr.w	$a1, $vr2, 2
	mul.d	$a0, $a0, $a1
	ld.w	$a1, $a2, 8
	ld.d	$t7, $sp, 1024                  # 8-byte Folded Reload
	mul.d	$a2, $t7, $a0
	vmul.w	$vr0, $vr2, $vr1
	vpickve2gr.w	$a3, $vr0, 2
	mul.d	$a1, $a3, $a1
	ld.d	$t8, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$t1, $sp, 1112                  # 8-byte Folded Reload
	mul.d	$a3, $t8, $t1
	vpickve2gr.w	$a4, $vr2, 0
	sub.d	$a5, $a4, $t8
	st.d	$a5, $sp, 848                   # 8-byte Folded Spill
	vpickve2gr.w	$a5, $vr2, 1
	sub.d	$s3, $a5, $t8
	st.d	$s3, $sp, 840                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	vpickve2gr.w	$a0, $vr2, 3
	sub.d	$a3, $a0, $t8
	st.d	$a3, $sp, 824                   # 8-byte Folded Spill
	vpickve2gr.w	$a3, $vr1, 0
	sub.d	$a3, $a3, $t7
	mul.d	$a3, $a3, $a4
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	vpickve2gr.w	$a3, $vr1, 1
	sub.d	$a3, $a3, $t7
	mul.d	$a3, $a3, $a5
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	vpickve2gr.w	$a1, $vr1, 3
	sub.d	$a1, $a1, $t7
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	bstrpick.d	$a4, $a0, 31, 0
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $t8, -1
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a2, $a1, $t5, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $t4, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $t6, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $t3, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $a6, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	slli.d	$a2, $a4, 3
	sub.d	$a3, $t2, $a2
	st.d	$a3, $sp, 896                   # 8-byte Folded Spill
	addi.d	$a3, $t2, 8
	st.d	$a4, $sp, 904                   # 8-byte Folded Spill
	sub.d	$a4, $a1, $a4
	alsl.d	$a5, $a4, $a3, 3
	st.d	$a5, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $a3, 3
	st.d	$a3, $sp, 816                   # 8-byte Folded Spill
	addi.d	$t7, $s2, 8
	alsl.d	$a3, $a1, $s2, 3
	addi.d	$s3, $a3, 16
	alsl.d	$a3, $a0, $s2, 3
	addi.d	$a3, $a3, -8
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	ori	$a3, $zero, 23
	sltu	$a3, $a3, $t8
	addi.d	$a5, $t1, -1
	sltui	$a5, $a5, 1
	and	$a3, $a3, $a5
	st.d	$a3, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 912                   # 8-byte Folded Reload
	sub.d	$a2, $a3, $a2
	st.d	$a2, $sp, 880                   # 8-byte Folded Spill
	addi.d	$a2, $a3, 8
	alsl.d	$a3, $a4, $a2, 3
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 1064                  # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $t0, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $fp, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $a7, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $s0, 3
	addi.d	$a2, $s0, 8
	st.d	$a2, $sp, 872                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t8, 30, 1
	slli.d	$a2, $a1, 1
	slli.d	$a1, $t8, 3
	bstrpick.d	$a1, $a1, 33, 4
	slli.d	$a1, $a1, 4
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s3, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s3, 3
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$t7, $sp, 888                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $t7, 3
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	vpickve2gr.w	$s3, $vr6, 0
	vpickve2gr.w	$t7, $vr6, 1
	vpickve2gr.w	$s0, $vr6, 2
	vpickve2gr.w	$s2, $vr6, 3
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	mul.d	$a0, $a2, $t1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a0, $t1, 4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $t1, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	b	.LBB2_38
	.p2align	4, , 16
.LBB2_37:                               # %._crit_edge900.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_38 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.w	$s3, $s3, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.w	$s0, $a0, $s0
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	addi.w	$s1, $s1, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$s2, $s2, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB2_2
.LBB2_38:                               # %.preheader879.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_40 Depth 3
                                        #         Child Loop BB2_45 Depth 4
                                        #         Child Loop BB2_52 Depth 4
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_39:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_40 Depth=3
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	add.w	$s3, $a0, $a2
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	add.w	$t7, $a0, $t7
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	add.w	$s0, $a0, $s0
	ld.d	$a1, $sp, 1016                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	add.w	$s2, $a0, $s2
	ld.d	$a6, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$a7, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$t0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$t2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$t3, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$t4, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$t6, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_37
.LBB2_40:                               # %.preheader877.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_38 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_45 Depth 4
                                        #         Child Loop BB2_52 Depth 4
	st.d	$a1, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_47
# %bb.41:                               # %vector.memcheck1404
                                        #   in Loop: Header=BB2_40 Depth=3
	alsl.d	$a0, $s2, $t5, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	alsl.d	$t5, $s2, $t4, 3
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a0, 3
	alsl.d	$t6, $s2, $t6, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a0, 3
	alsl.d	$a0, $s2, $t3, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$a0, $t7, $a6, 3
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a4, $t7, $a0, 3
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $t2, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$s8, $s0, $a0, 3
	st.d	$s8, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	add.d	$t8, $a0, $s0
	alsl.d	$a0, $t8, $t2, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$ra, $s3, $a0, 3
	st.d	$ra, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 3
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s6, $s0, $a2, 3
	st.d	$s6, $sp, 744                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a0, $t8, $t3, 3
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	alsl.d	$t2, $t8, $a2, 3
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s7, $s0, $a3, 3
	st.d	$s7, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a0, $t8, $a0, 3
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$t4, $s0, $a3, 3
	ld.d	$a2, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$t1, $t8, $a2, 3
	st.d	$t1, $sp, 776                   # 8-byte Folded Spill
	alsl.d	$s1, $t8, $t0, 3
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s5, $s0, $t0, 3
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	vinsgr2vr.d	$vr4, $a6, 0
	st.d	$a6, $sp, 640                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$s4, $t8, $a2, 3
	vori.b	$vr5, $vr4, 0
	vinsgr2vr.d	$vr10, $s8, 0
	vinsgr2vr.d	$vr22, $a4, 0
	move	$s8, $a4
	vinsgr2vr.d	$vr7, $t1, 0
	vinsgr2vr.d	$vr5, $a1, 1
	vori.b	$vr11, $vr10, 0
	vori.b	$vr12, $vr22, 0
	vori.b	$vr13, $vr7, 0
	vinsgr2vr.d	$vr9, $s5, 0
	st.d	$s5, $sp, 664                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr13, $a1, 1
	vori.b	$vr16, $vr9, 0
	vinsgr2vr.d	$vr17, $a0, 0
	vinsgr2vr.d	$vr16, $a1, 1
	vori.b	$vr1, $vr17, 0
	vinsgr2vr.d	$vr18, $s7, 0
	vinsgr2vr.d	$vr1, $a1, 1
	vori.b	$vr2, $vr18, 0
	vinsgr2vr.d	$vr24, $s6, 0
	vinsgr2vr.d	$vr26, $ra, 0
	vinsgr2vr.d	$vr14, $a5, 0
	vinsgr2vr.d	$vr2, $a1, 1
	vori.b	$vr20, $vr24, 0
	vori.b	$vr23, $vr26, 0
	vori.b	$vr25, $vr14, 0
	vinsgr2vr.d	$vr25, $a1, 1
	vinsgr2vr.d	$vr24, $a1, 1
	vinsgr2vr.d	$vr26, $a1, 1
	vinsgr2vr.d	$vr10, $a1, 1
	vinsgr2vr.d	$vr22, $a1, 1
	vinsgr2vr.d	$vr21, $a1, 0
	alsl.d	$a1, $t8, $t0, 3
	vinsgr2vr.d	$vr8, $t2, 0
	vst	$vr8, $sp, 608                  # 16-byte Folded Spill
	alsl.d	$t0, $t7, $a7, 3
	vinsgr2vr.d	$vr3, $a1, 0
	vst	$vr3, $sp, 688                  # 16-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a1, 3
	vinsgr2vr.d	$vr6, $t5, 0
	vinsgr2vr.d	$vr19, $t6, 0
	vori.b	$vr27, $vr6, 0
	vori.b	$vr30, $vr6, 0
	vori.b	$vr28, $vr6, 0
	vinsgr2vr.d	$vr29, $s4, 0
	vst	$vr29, $sp, 720                 # 16-byte Folded Spill
	move	$t2, $t4
	st.d	$t4, $sp, 544                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr28, $t4, 1
	ld.d	$ra, $sp, 952                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr29, $ra, 1
	vinsgr2vr.d	$vr15, $s1, 0
	vst	$vr15, $sp, 704                 # 16-byte Folded Spill
	vori.b	$vr0, $vr6, 0
	ld.d	$t4, $sp, 936                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $t4, 1
	vslt.du	$vr0, $vr0, $vr22
	vori.b	$vr22, $vr6, 0
	ld.d	$s7, $sp, 1136                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr22, $s7, 1
	vslt.du	$vr10, $vr22, $vr10
	vori.b	$vr22, $vr15, 0
	vinsgr2vr.d	$vr22, $ra, 1
	vpickev.w	$vr0, $vr10, $vr0
	vori.b	$vr10, $vr6, 0
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr10, $a4, 1
	vslt.du	$vr10, $vr10, $vr26
	vori.b	$vr26, $vr6, 0
	ld.d	$a7, $sp, 976                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr26, $a7, 1
	vslt.du	$vr24, $vr26, $vr24
	vinsgr2vr.d	$vr26, $t0, 0
	vinsgr2vr.d	$vr26, $ra, 1
	vpickev.w	$vr24, $vr24, $vr10
	ld.d	$s6, $sp, 928                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr10, $s6, 0
	vpickev.h	$vr24, $vr24, $vr0
	vori.b	$vr0, $vr10, 0
	vinsgr2vr.d	$vr0, $a0, 1
	vslt.du	$vr26, $vr26, $vr0
	vori.b	$vr0, $vr6, 0
	ld.d	$t1, $sp, 960                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $t1, 1
	vslt.du	$vr25, $vr0, $vr25
	vpickev.w	$vr25, $vr25, $vr26
	vori.b	$vr26, $vr10, 0
	vinsgr2vr.d	$vr26, $s5, 1
	vslt.du	$vr22, $vr22, $vr26
	vori.b	$vr26, $vr10, 0
	vinsgr2vr.d	$vr26, $a6, 1
	vslt.du	$vr26, $vr29, $vr26
	vori.b	$vr29, $vr6, 0
	ld.d	$a1, $sp, 968                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr29, $a1, 1
	vpickev.w	$vr22, $vr26, $vr22
	vori.b	$vr26, $vr19, 0
	vinsgr2vr.d	$vr26, $t0, 1
	vpickev.h	$vr22, $vr25, $vr22
	vori.b	$vr25, $vr19, 0
	vinsgr2vr.d	$vr25, $t1, 1
	vpickev.b	$vr22, $vr24, $vr22
	vori.b	$vr24, $vr19, 0
	vinsgr2vr.d	$vr24, $a4, 1
	vinsgr2vr.d	$vr23, $a5, 1
	vslt.du	$vr23, $vr24, $vr23
	vori.b	$vr24, $vr19, 0
	vinsgr2vr.d	$vr24, $a7, 1
	vinsgr2vr.d	$vr20, $a5, 1
	vslt.du	$vr20, $vr24, $vr20
	vori.b	$vr24, $vr19, 0
	vinsgr2vr.d	$vr24, $s1, 1
	vpickev.w	$vr20, $vr20, $vr23
	vori.b	$vr23, $vr19, 0
	vinsgr2vr.d	$vr23, $a1, 1
	vinsgr2vr.d	$vr18, $a5, 1
	vslt.du	$vr18, $vr23, $vr18
	vori.b	$vr23, $vr19, 0
	vinsgr2vr.d	$vr23, $t2, 1
	vinsgr2vr.d	$vr17, $a5, 1
	vslt.du	$vr17, $vr23, $vr17
	vori.b	$vr23, $vr19, 0
	vinsgr2vr.d	$vr23, $s4, 1
	vpickev.w	$vr17, $vr17, $vr18
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr18, $a0, 0
	vpickev.h	$vr17, $vr17, $vr20
	vori.b	$vr31, $vr18, 0
	vinsgr2vr.d	$vr4, $a5, 1
	vinsgr2vr.d	$vr18, $s8, 1
	vinsgr2vr.d	$vr7, $a5, 1
	vinsgr2vr.d	$vr9, $a5, 1
	vslt.du	$vr9, $vr23, $vr9
	vslt.du	$vr7, $vr24, $vr7
	vpickev.w	$vr7, $vr9, $vr7
	vslt.du	$vr9, $vr25, $vr18
	vslt.du	$vr4, $vr26, $vr4
	vpickev.w	$vr4, $vr9, $vr4
	vpickev.h	$vr4, $vr4, $vr7
	vpickev.b	$vr24, $vr4, $vr17
	vslt.du	$vr4, $vr29, $vr2
	vslt.du	$vr7, $vr28, $vr1
	vinsgr2vr.d	$vr1, $ra, 0
	vst	$vr1, $sp, 576                  # 16-byte Folded Spill
	vpickev.w	$vr18, $vr7, $vr4
	vori.b	$vr7, $vr1, 0
	st.d	$t6, $sp, 376                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr7, $t6, 1
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr9, $a0, 0
	ld.d	$a6, $sp, 944                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr9, $a6, 1
	ld.d	$a1, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a1, 3
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr20, $a0, 0
	alsl.d	$t6, $s0, $t3, 3
	vinsgr2vr.d	$vr20, $t6, 1
	st.d	$t6, $sp, 464                   # 8-byte Folded Spill
	vori.b	$vr17, $vr7, 0
	vshuf4i.d	$vr17, $vr20, 6
	vori.b	$vr1, $vr7, 0
	vshuf4i.d	$vr1, $vr20, 12
	vst	$vr1, $sp, 672                  # 16-byte Folded Spill
	vpackev.d	$vr1, $vr20, $vr7
	vst	$vr1, $sp, 624                  # 16-byte Folded Spill
	vpackev.d	$vr23, $vr6, $vr20
	vshuf4i.d	$vr20, $vr6, 9
	vori.b	$vr28, $vr9, 0
	vshuf4i.d	$vr28, $vr6, 9
	vpackev.d	$vr29, $vr6, $vr9
	vori.b	$vr25, $vr6, 0
	st.d	$t0, $sp, 416                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr25, $t0, 1
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr30, $s4, 1
	vslt.du	$vr16, $vr30, $vr16
	vori.b	$vr26, $vr19, 0
	vinsgr2vr.d	$vr26, $s7, 1
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr27, $s1, 1
	vslt.du	$vr13, $vr27, $vr13
	vori.b	$vr27, $vr19, 0
	vinsgr2vr.d	$vr27, $t4, 1
	vinsgr2vr.d	$vr31, $a5, 1
	vinsgr2vr.d	$vr11, $a5, 1
	vinsgr2vr.d	$vr12, $a5, 1
	vpickev.w	$vr13, $vr16, $vr13
	vpickev.h	$vr13, $vr13, $vr18
	vslt.du	$vr12, $vr27, $vr12
	vslt.du	$vr11, $vr26, $vr11
	vpickev.w	$vr11, $vr11, $vr12
	vslt.du	$vr0, $vr0, $vr31
	vslt.du	$vr5, $vr25, $vr5
	vpickev.w	$vr0, $vr0, $vr5
	vpickev.h	$vr0, $vr11, $vr0
	vpickev.b	$vr27, $vr0, $vr13
	alsl.d	$a0, $t8, $a3, 3
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr16, $a0, 0
	alsl.d	$a7, $s0, $a2, 3
	vinsgr2vr.d	$vr16, $a7, 1
	alsl.d	$a0, $t8, $fp, 3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr25, $a0, 0
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a0, 3
	vinsgr2vr.d	$vr25, $a1, 1
	vori.b	$vr0, $vr7, 0
	vshuf4i.d	$vr0, $vr25, 12
	vori.b	$vr11, $vr7, 0
	vshuf4i.d	$vr11, $vr16, 12
	vpackev.d	$vr18, $vr25, $vr7
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr19, $t5, 1
	vori.b	$vr12, $vr21, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	st.d	$s2, $sp, 1120                  # 8-byte Folded Spill
	alsl.d	$t1, $s2, $a0, 3
	vinsgr2vr.d	$vr5, $t1, 0
	st.d	$t1, $sp, 528                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr12, $s6, 1
	vori.b	$vr13, $vr5, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$t0, $s0, $a0, 3
	vinsgr2vr.d	$vr13, $t0, 1
	st.d	$t0, $sp, 496                   # 8-byte Folded Spill
	vori.b	$vr26, $vr3, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$t7, $sp, 1128                  # 8-byte Folded Spill
	alsl.d	$a2, $t7, $a0, 3
	vinsgr2vr.d	$vr26, $a2, 1
	vori.b	$vr30, $vr12, 0
	vshuf4i.d	$vr30, $vr26, 6
	vslt.du	$vr18, $vr18, $vr30
	vori.b	$vr30, $vr12, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$t3, $t8, $a0, 3
	vinsgr2vr.d	$vr30, $t3, 0
	vslt.du	$vr30, $vr11, $vr30
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a3, $t8, $a0, 3
	vinsgr2vr.d	$vr11, $a3, 0
	vpickev.w	$vr31, $vr18, $vr30
	vori.b	$vr18, $vr12, 0
	vinsgr2vr.d	$vr18, $a2, 0
	vslt.du	$vr0, $vr0, $vr18
	vpackev.d	$vr30, $vr13, $vr12
	vslt.du	$vr18, $vr19, $vr30
	vpickev.w	$vr0, $vr18, $vr0
	vori.b	$vr18, $vr11, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$s3, $sp, 784                   # 8-byte Folded Spill
	alsl.d	$t4, $s3, $a0, 3
	vinsgr2vr.d	$vr18, $t4, 1
	st.d	$t4, $sp, 568                   # 8-byte Folded Spill
	vpickev.h	$vr1, $vr0, $vr31
	vori.b	$vr19, $vr12, 0
	vshuf4i.d	$vr19, $vr13, 12
	vslt.du	$vr29, $vr29, $vr19
	vpackev.d	$vr19, $vr18, $vr12
	vslt.du	$vr28, $vr28, $vr19
	vori.b	$vr19, $vr8, 0
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$t5, $s0, $a0, 3
	vinsgr2vr.d	$vr19, $t5, 1
	st.d	$t5, $sp, 536                   # 8-byte Folded Spill
	vpickev.w	$vr29, $vr28, $vr29
	vori.b	$vr28, $vr12, 0
	vshuf4i.d	$vr28, $vr18, 12
	vslt.du	$vr23, $vr23, $vr28
	vpackev.d	$vr28, $vr19, $vr12
	vslt.du	$vr20, $vr20, $vr28
	vinsgr2vr.d	$vr28, $a3, 1
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	alsl.d	$t2, $t8, $a0, 3
	vpickev.w	$vr20, $vr20, $vr23
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr0, $t2, 1
	st.d	$t2, $sp, 600                   # 8-byte Folded Spill
	vpickev.h	$vr20, $vr20, $vr29
	vori.b	$vr23, $vr7, 0
	vshuf4i.d	$vr23, $vr0, 6
	vshuf4i.d	$vr28, $vr14, 6
	vpickev.b	$vr29, $vr20, $vr1
	vinsgr2vr.d	$vr1, $t1, 1
	vshuf4i.d	$vr1, $vr14, 6
	st.d	$s0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a0, 3
	vinsgr2vr.d	$vr20, $a3, 1
	vshuf4i.d	$vr20, $vr14, 6
	vori.b	$vr31, $vr14, 0
	vori.b	$vr15, $vr14, 0
	vpackev.d	$vr4, $vr26, $vr14
	vori.b	$vr3, $vr14, 0
	vpackev.d	$vr2, $vr19, $vr14
	vori.b	$vr8, $vr14, 0
	vinsgr2vr.d	$vr14, $t5, 1
	vslt.du	$vr14, $vr23, $vr14
	vori.b	$vr23, $vr7, 0
	vinsgr2vr.d	$vr23, $t2, 0
	vslt.du	$vr20, $vr23, $vr20
	vpickev.w	$vr14, $vr20, $vr14
	vinsgr2vr.d	$vr8, $t4, 1
	vslt.du	$vr8, $vr17, $vr8
	vori.b	$vr17, $vr7, 0
	vinsgr2vr.d	$vr17, $t6, 0
	vslt.du	$vr2, $vr17, $vr2
	vpickev.w	$vr2, $vr2, $vr8
	vpickev.h	$vr2, $vr14, $vr2
	vori.b	$vr8, $vr7, 0
	vshuf4i.d	$vr8, $vr16, 6
	st.d	$t3, $sp, 512                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr3, $t3, 1
	vslt.du	$vr3, $vr8, $vr3
	vori.b	$vr8, $vr7, 0
	vinsgr2vr.d	$vr8, $a7, 0
	vslt.du	$vr4, $vr8, $vr4
	vpickev.w	$vr3, $vr4, $vr3
	vori.b	$vr4, $vr7, 0
	vshuf4i.d	$vr4, $vr25, 6
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr15, $a2, 1
	vslt.du	$vr4, $vr4, $vr15
	vori.b	$vr8, $vr9, 0
	vshuf4i.d	$vr8, $vr25, 3
	vslt.du	$vr1, $vr8, $vr1
	vpickev.w	$vr1, $vr1, $vr4
	vpickev.h	$vr1, $vr1, $vr3
	vpackev.d	$vr3, $vr6, $vr0
	vpickev.b	$vr1, $vr1, $vr2
	vori.b	$vr17, $vr7, 0
	vshuf4i.d	$vr17, $vr0, 12
	vpackev.d	$vr20, $vr0, $vr7
	vinsgr2vr.d	$vr15, $a3, 0
	vshuf4i.d	$vr0, $vr6, 9
	vori.b	$vr23, $vr15, 0
	vinsgr2vr.d	$vr23, $t3, 1
	vpackev.d	$vr2, $vr23, $vr21
	vslt.du	$vr0, $vr0, $vr2
	vori.b	$vr2, $vr12, 0
	vshuf4i.d	$vr2, $vr19, 12
	vslt.du	$vr2, $vr3, $vr2
	vpickev.w	$vr0, $vr0, $vr2
	vori.b	$vr2, $vr12, 0
	vshuf4i.d	$vr2, $vr23, 12
	vpackev.d	$vr3, $vr6, $vr16
	vslt.du	$vr2, $vr3, $vr2
	vori.b	$vr3, $vr16, 0
	vshuf4i.d	$vr3, $vr6, 9
	vori.b	$vr4, $vr12, 0
	vshuf4i.d	$vr4, $vr26, 12
	vpackev.d	$vr8, $vr26, $vr12
	vslt.du	$vr3, $vr3, $vr8
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.h	$vr0, $vr2, $vr0
	vori.b	$vr2, $vr7, 0
	vshuf4i.d	$vr2, $vr9, 6
	vinsgr2vr.d	$vr31, $t0, 1
	vslt.du	$vr2, $vr2, $vr31
	vori.b	$vr3, $vr7, 0
	vinsgr2vr.d	$vr3, $a6, 0
	vslt.du	$vr3, $vr3, $vr28
	vpickev.w	$vr2, $vr3, $vr2
	vori.b	$vr3, $vr7, 0
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr3, $a1, 0
	vslt.du	$vr3, $vr3, $vr30
	vpackev.d	$vr8, $vr6, $vr25
	vslt.du	$vr4, $vr8, $vr4
	vinsgr2vr.d	$vr21, $a4, 0
	vpickev.w	$vr3, $vr3, $vr4
	vori.b	$vr28, $vr10, 0
	vinsgr2vr.d	$vr28, $s8, 1
	vpickev.h	$vr2, $vr2, $vr3
	vori.b	$vr25, $vr10, 0
	vpickev.b	$vr0, $vr2, $vr0
	vori.b	$vr26, $vr10, 0
	vand.v	$vr31, $vr27, $vr0
	vori.b	$vr27, $vr10, 0
	vand.v	$vr0, $vr24, $vr1
	vori.b	$vr24, $vr10, 0
	vand.v	$vr30, $vr22, $vr29
	vori.b	$vr29, $vr10, 0
	vpickve2gr.b	$s4, $vr31, 0
	vpickve2gr.b	$s5, $vr31, 1
	vpickve2gr.b	$s6, $vr31, 2
	vpickve2gr.b	$s7, $vr31, 3
	vpickve2gr.b	$s8, $vr31, 4
	vpickve2gr.b	$t7, $vr31, 5
	vpickve2gr.b	$a2, $vr31, 6
	vpickve2gr.b	$ra, $vr31, 7
	vpickve2gr.b	$t4, $vr31, 8
	vpickve2gr.b	$t1, $vr31, 9
	vpickve2gr.b	$t3, $vr31, 10
	vpickve2gr.b	$a4, $vr31, 11
	vpickve2gr.b	$a1, $vr31, 12
	vpickve2gr.b	$s2, $vr31, 13
	vpickve2gr.b	$a0, $vr31, 14
	vpickve2gr.b	$a3, $vr31, 15
	vori.b	$vr31, $vr10, 0
	vinsgr2vr.d	$vr10, $a5, 1
	vpickve2gr.b	$fp, $vr0, 0
	vpickve2gr.b	$t5, $vr0, 1
	vpickve2gr.b	$a5, $vr0, 2
	vpickve2gr.b	$s0, $vr0, 3
	vpickve2gr.b	$t2, $vr0, 4
	vpickve2gr.b	$t6, $vr0, 5
	vpickve2gr.b	$s1, $vr0, 6
	vpickve2gr.b	$a6, $vr0, 7
	vpickve2gr.b	$t0, $vr0, 8
	vpickve2gr.b	$s3, $vr0, 9
	vpickve2gr.b	$t8, $vr0, 10
	st.d	$t8, $sp, 424                   # 8-byte Folded Spill
	vpickve2gr.b	$t8, $vr0, 11
	st.d	$t8, $sp, 432                   # 8-byte Folded Spill
	vpickve2gr.b	$t8, $vr0, 12
	st.d	$t8, $sp, 440                   # 8-byte Folded Spill
	vpickve2gr.b	$t8, $vr0, 13
	st.d	$t8, $sp, 448                   # 8-byte Folded Spill
	vpickve2gr.b	$t8, $vr0, 14
	st.d	$t8, $sp, 456                   # 8-byte Folded Spill
	vpickve2gr.b	$t8, $vr0, 15
	st.d	$t8, $sp, 472                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 928                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr22, $t8, 1
	andi	$s5, $s5, 1
	bstrins.d	$s4, $s5, 63, 1
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	bstrins.d	$s4, $s6, 2, 2
	ld.d	$t8, $sp, 488                   # 8-byte Folded Reload
	bstrins.d	$s4, $s7, 3, 3
	bstrins.d	$s4, $s8, 4, 4
	bstrins.d	$s4, $t7, 5, 5
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $s4, $a2
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	andi	$t7, $ra, 1
	slli.d	$t7, $t7, 7
	or	$a2, $a2, $t7
	ld.d	$t7, $sp, 1136                  # 8-byte Folded Reload
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 8
	or	$a2, $a2, $t4
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 9
	or	$a2, $a2, $t1
	andi	$t1, $t3, 1
	ld.d	$t3, $sp, 960                   # 8-byte Folded Reload
	slli.d	$t1, $t1, 10
	or	$a2, $a2, $t1
	andi	$a4, $a4, 1
	slli.d	$a4, $a4, 11
	or	$a2, $a2, $a4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 12
	or	$a1, $a2, $a1
	andi	$a2, $s2, 1
	slli.d	$a2, $a2, 13
	or	$a1, $a1, $a2
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 14
	or	$a0, $a1, $a0
	slli.d	$a1, $a3, 15
	or	$t4, $a0, $a1
	andi	$a0, $t5, 1
	ld.d	$a2, $sp, 936                   # 8-byte Folded Reload
	bstrins.d	$fp, $a0, 63, 1
	bstrins.d	$fp, $a5, 2, 2
	ld.d	$a5, $sp, 952                   # 8-byte Folded Reload
	bstrins.d	$fp, $s0, 3, 3
	ld.d	$a4, $sp, 968                   # 8-byte Folded Reload
	bstrins.d	$fp, $t2, 4, 4
	bstrins.d	$fp, $t6, 5, 5
	ld.d	$t1, $sp, 944                   # 8-byte Folded Reload
	andi	$a0, $s1, 1
	ld.d	$t2, $sp, 544                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 6
	or	$a0, $fp, $a0
	ld.d	$a3, $sp, 976                   # 8-byte Folded Reload
	andi	$a1, $a6, 1
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a1, $t0, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a0, $a1
	andi	$a1, $s3, 1
	slli.d	$a1, $a1, 9
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 10
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 11
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 12
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 13
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 14
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 15
	or	$s2, $a0, $a1
	vpickve2gr.b	$a0, $vr30, 1
	andi	$a0, $a0, 1
	vpickve2gr.b	$a1, $vr30, 0
	bstrins.d	$a1, $a0, 63, 1
	vpickve2gr.b	$a0, $vr30, 2
	bstrins.d	$a1, $a0, 2, 2
	vpickve2gr.b	$a0, $vr30, 3
	bstrins.d	$a1, $a0, 3, 3
	vpickve2gr.b	$a0, $vr30, 4
	bstrins.d	$a1, $a0, 4, 4
	vpickve2gr.b	$a0, $vr30, 5
	bstrins.d	$a1, $a0, 5, 5
	vpickve2gr.b	$a0, $vr30, 6
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a1, $a0
	vpickve2gr.b	$a1, $vr30, 7
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr30, 8
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr30, 9
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 9
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr30, 10
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 10
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr30, 11
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 11
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr30, 12
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 12
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr30, 13
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 13
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr30, 14
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 14
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr30, 15
	slli.d	$a1, $a1, 15
	or	$a0, $a0, $a1
	vld	$vr0, $sp, 576                  # 16-byte Folded Reload
	vpackev.d	$vr16, $vr16, $vr0
	vori.b	$vr0, $vr6, 0
	vinsgr2vr.d	$vr14, $t7, 0
	vinsgr2vr.d	$vr6, $t3, 0
	vinsgr2vr.d	$vr0, $a5, 1
	vslt.du	$vr0, $vr0, $vr10
	vori.b	$vr1, $vr6, 0
	vinsgr2vr.d	$vr1, $a5, 1
	vslt.du	$vr1, $vr1, $vr28
	move	$s0, $a2
	vinsgr2vr.d	$vr28, $a2, 0
	vpickev.w	$vr0, $vr1, $vr0
	vori.b	$vr1, $vr28, 0
	vinsgr2vr.d	$vr1, $a5, 1
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr31, $a1, 1
	vslt.du	$vr1, $vr1, $vr31
	vori.b	$vr2, $vr14, 0
	vinsgr2vr.d	$vr2, $a5, 1
	ld.d	$a2, $sp, 736                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr29, $a2, 1
	vslt.du	$vr2, $vr2, $vr29
	move	$fp, $t2
	vinsgr2vr.d	$vr10, $t2, 0
	vpickev.w	$vr1, $vr2, $vr1
	move	$t6, $a4
	vinsgr2vr.d	$vr29, $a4, 0
	vpickev.h	$vr0, $vr1, $vr0
	vori.b	$vr1, $vr29, 0
	vinsgr2vr.d	$vr1, $a5, 1
	ld.d	$a6, $sp, 752                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr24, $a6, 1
	vslt.du	$vr1, $vr1, $vr24
	vori.b	$vr2, $vr10, 0
	vinsgr2vr.d	$vr2, $a5, 1
	ld.d	$t0, $sp, 776                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr27, $t0, 1
	vslt.du	$vr2, $vr2, $vr27
	move	$t5, $a3
	vinsgr2vr.d	$vr24, $a3, 0
	vpickev.w	$vr1, $vr2, $vr1
	vori.b	$vr2, $vr21, 0
	vinsgr2vr.d	$vr2, $a5, 1
	ld.d	$a3, $sp, 744                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr26, $a3, 1
	vslt.du	$vr2, $vr2, $vr26
	vori.b	$vr3, $vr24, 0
	vinsgr2vr.d	$vr3, $a5, 1
	ld.d	$a4, $sp, 768                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr25, $a4, 1
	vslt.du	$vr3, $vr3, $vr25
	vori.b	$vr25, $vr5, 0
	ld.d	$t2, $sp, 640                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr25, $t2, 1
	vpickev.w	$vr2, $vr3, $vr2
	vori.b	$vr26, $vr5, 0
	ld.d	$t2, $sp, 664                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr26, $t2, 1
	vpickev.h	$vr1, $vr1, $vr2
	vori.b	$vr27, $vr5, 0
	vinsgr2vr.d	$vr27, $t0, 1
	vpickev.b	$vr30, $vr1, $vr0
	vori.b	$vr31, $vr12, 0
	vshuf4i.d	$vr31, $vr19, 6
	vori.b	$vr1, $vr12, 0
	vshuf4i.d	$vr1, $vr18, 6
	vori.b	$vr2, $vr12, 0
	vshuf4i.d	$vr2, $vr13, 6
	vori.b	$vr0, $vr5, 0
	vinsgr2vr.d	$vr0, $a6, 1
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	vshuf4i.d	$vr22, $vr23, 6
	vori.b	$vr3, $vr7, 0
	vshuf4i.d	$vr3, $vr9, 12
	vpackev.d	$vr4, $vr9, $vr7
	vslt.du	$vr2, $vr4, $vr2
	vori.b	$vr8, $vr5, 0
	vinsgr2vr.d	$vr8, $a4, 1
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	vslt.du	$vr4, $vr7, $vr12
	vpickev.w	$vr2, $vr2, $vr4
	vori.b	$vr18, $vr12, 0
	vld	$vr4, $sp, 624                  # 16-byte Folded Reload
	vslt.du	$vr1, $vr4, $vr1
	vori.b	$vr4, $vr12, 0
	ld.d	$t0, $sp, 496                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr12, $t0, 0
	vslt.du	$vr3, $vr3, $vr12
	vori.b	$vr9, $vr5, 0
	vinsgr2vr.d	$vr9, $a3, 1
	vpickev.w	$vr1, $vr1, $vr3
	vori.b	$vr12, $vr5, 0
	vinsgr2vr.d	$vr12, $a2, 1
	vinsgr2vr.d	$vr5, $a1, 1
	vpickev.h	$vr1, $vr1, $vr2
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr7, $a1, 0
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr18, $a1, 0
	vslt.du	$vr2, $vr20, $vr31
	vinsgr2vr.d	$vr13, $a1, 0
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr4, $a1, 0
	vld	$vr3, $sp, 672                  # 16-byte Folded Reload
	vslt.du	$vr3, $vr3, $vr4
	vinsgr2vr.d	$vr4, $a1, 0
	vpickev.w	$vr2, $vr2, $vr3
	vinsgr2vr.d	$vr3, $t0, 0
	vslt.du	$vr17, $vr17, $vr18
	vslt.du	$vr16, $vr16, $vr22
	vpickev.w	$vr16, $vr16, $vr17
	vpickev.h	$vr2, $vr16, $vr2
	vpickev.b	$vr1, $vr2, $vr1
	vand.v	$vr1, $vr30, $vr1
	vinsgr2vr.d	$vr28, $t3, 1
	vslt.du	$vr2, $vr28, $vr5
	vinsgr2vr.d	$vr14, $t3, 1
	vslt.du	$vr5, $vr14, $vr12
	vpickev.w	$vr2, $vr5, $vr2
	vinsgr2vr.d	$vr21, $t3, 1
	vslt.du	$vr5, $vr21, $vr9
	vinsgr2vr.d	$vr24, $t3, 1
	vslt.du	$vr8, $vr24, $vr8
	vpickev.w	$vr5, $vr8, $vr5
	vpickev.h	$vr2, $vr5, $vr2
	vinsgr2vr.d	$vr29, $t3, 1
	vslt.du	$vr0, $vr29, $vr0
	vld	$vr8, $sp, 720                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr8, $t3, 1
	vld	$vr9, $sp, 704                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr9, $t3, 1
	vinsgr2vr.d	$vr10, $t3, 1
	vslt.du	$vr5, $vr10, $vr27
	vpickev.w	$vr0, $vr5, $vr0
	vslt.du	$vr5, $vr9, $vr26
	vslt.du	$vr8, $vr8, $vr25
	vpickev.w	$vr5, $vr8, $vr5
	vpickev.h	$vr0, $vr5, $vr0
	vpickev.b	$vr0, $vr0, $vr2
	vori.b	$vr2, $vr6, 0
	vori.b	$vr5, $vr6, 0
	vori.b	$vr8, $vr6, 0
	vori.b	$vr9, $vr6, 0
	vori.b	$vr10, $vr6, 0
	vori.b	$vr12, $vr6, 0
	vori.b	$vr14, $vr6, 0
	vinsgr2vr.d	$vr6, $t1, 1
	vinsgr2vr.d	$vr3, $a4, 1
	vslt.du	$vr3, $vr6, $vr3
	move	$t7, $s4
	vinsgr2vr.d	$vr14, $s4, 1
	vinsgr2vr.d	$vr11, $a4, 1
	vslt.du	$vr6, $vr14, $vr11
	vpickev.w	$vr3, $vr6, $vr3
	move	$s6, $s5
	vinsgr2vr.d	$vr12, $s5, 1
	ld.d	$s5, $sp, 600                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr4, $a4, 1
	vslt.du	$vr4, $vr12, $vr4
	vinsgr2vr.d	$vr10, $a6, 1
	vld	$vr6, $sp, 608                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr6, $a4, 1
	vslt.du	$vr6, $vr10, $vr6
	vpickev.w	$vr4, $vr6, $vr4
	vpickev.h	$vr3, $vr4, $vr3
	vinsgr2vr.d	$vr9, $s5, 1
	vinsgr2vr.d	$vr13, $a4, 1
	vslt.du	$vr4, $vr9, $vr13
	vinsgr2vr.d	$vr8, $t8, 1
	vinsgr2vr.d	$vr15, $a4, 1
	vslt.du	$vr6, $vr8, $vr15
	vpickev.w	$vr4, $vr6, $vr4
	vinsgr2vr.d	$vr5, $a7, 1
	vinsgr2vr.d	$vr7, $a4, 1
	vslt.du	$vr5, $vr5, $vr7
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	move	$s4, $a1
	vinsgr2vr.d	$vr2, $a1, 1
	vld	$vr6, $sp, 688                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr6, $a4, 1
	vslt.du	$vr2, $vr2, $vr6
	vpickev.w	$vr2, $vr2, $vr5
	vpickev.h	$vr2, $vr2, $vr4
	vpickev.b	$vr2, $vr2, $vr3
	vand.v	$vr0, $vr0, $vr2
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 1
	andi	$a1, $a1, 1
	vpickve2gr.b	$a2, $vr0, 0
	bstrins.d	$a2, $a1, 63, 1
	vpickve2gr.b	$a1, $vr0, 2
	bstrins.d	$a2, $a1, 2, 2
	vpickve2gr.b	$a1, $vr0, 3
	bstrins.d	$a2, $a1, 3, 3
	vpickve2gr.b	$a1, $vr0, 4
	bstrins.d	$a2, $a1, 4, 4
	vpickve2gr.b	$a1, $vr0, 5
	bstrins.d	$a2, $a1, 5, 5
	vpickve2gr.b	$a1, $vr0, 6
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a2, $a1
	vpickve2gr.b	$a2, $vr0, 7
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 8
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 8
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 9
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 9
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 10
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 10
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 11
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 11
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 12
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 13
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 13
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 14
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 14
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 15
	slli.d	$a2, $a2, 15
	or	$a1, $a1, $a2
	bstrpick.d	$a2, $s2, 15, 0
	bstrpick.d	$a0, $a0, 15, 0
	or	$a0, $a0, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a0, $a0, 16
	or	$a0, $a0, $a1
	bstrpick.d	$a1, $t4, 15, 0
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	move	$a3, $zero
	bnez	$a0, .LBB2_49
# %bb.42:                               # %vector.memcheck1404
                                        #   in Loop: Header=BB2_40 Depth=3
	move	$s8, $a7
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	sltu	$a0, $t3, $a0
	ld.d	$a7, $sp, 416                   # 8-byte Folded Reload
	sltu	$a1, $a7, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB2_49
# %bb.43:                               # %vector.memcheck1404
                                        #   in Loop: Header=BB2_40 Depth=3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	sltu	$a0, $t3, $a0
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	sltu	$a1, $ra, $a4
	and	$a0, $a0, $a1
	ld.d	$a4, $sp, 784                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_48
# %bb.44:                               # %vector.ph1832
                                        #   in Loop: Header=BB2_40 Depth=3
	move	$s1, $t1
	move	$s7, $t8
	move	$a3, $zero
	move	$t8, $a6
	move	$a6, $zero
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 1128                  # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 1128                  # 8-byte Folded Spill
	add.d	$a2, $a0, $a4
	ld.d	$a1, $sp, 1120                  # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 984                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$t0, $a4, $a0, 3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 360                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_45:                               # %vector.body1835
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_38 Depth=2
                                        #       Parent Loop BB2_40 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $t4, $a6
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	vldx	$vr1, $a0, $a3
	vfmul.d	$vr1, $vr0, $vr1
	vldx	$vr2, $s7, $a3
	vldx	$vr3, $t0, $a6
	vldx	$vr4, $fp, $a3
	add.d	$a0, $t0, $a6
	vfmul.d	$vr2, $vr0, $vr2
	vfmadd.d	$vr2, $vr1, $vr3, $vr2
	vfmadd.d	$vr2, $vr4, $vr3, $vr2
	vstx	$vr2, $a5, $a6
	vldx	$vr2, $s2, $a3
	vldx	$vr3, $s3, $a3
	vld	$vr5, $a0, -8
	vldx	$vr6, $s8, $a3
	vfmul.d	$vr2, $vr0, $vr2
	vfmul.d	$vr3, $vr0, $vr3
	vfmadd.d	$vr2, $vr2, $vr5, $vr3
	vfmadd.d	$vr2, $vr6, $vr5, $vr2
	vldx	$vr3, $s4, $a3
	vldx	$vr5, $s5, $a3
	vld	$vr6, $a0, -16
	vldx	$vr7, $t6, $a3
	vfmul.d	$vr3, $vr0, $vr3
	vfmul.d	$vr5, $vr0, $vr5
	vfmadd.d	$vr3, $vr3, $vr6, $vr5
	vfmadd.d	$vr3, $vr7, $vr6, $vr3
	vldx	$vr5, $s1, $a3
	vldx	$vr6, $a7, $a6
	vldx	$vr7, $s0, $a3
	vldx	$vr8, $t7, $a6
	vldx	$vr9, $ra, $a6
	vldx	$vr10, $t8, $a3
	vfmul.d	$vr7, $vr6, $vr7
	vfmadd.d	$vr5, $vr7, $vr8, $vr5
	vfmadd.d	$vr1, $vr1, $vr9, $vr5
	vfmadd.d	$vr1, $vr6, $vr10, $vr1
	vldx	$vr5, $t5, $a3
	vldx	$vr6, $s6, $a3
	vstx	$vr2, $t1, $a6
	vstx	$vr3, $t2, $a6
	vfmadd.d	$vr0, $vr0, $vr5, $vr1
	vfmadd.d	$vr0, $vr6, $vr8, $vr0
	vfmadd.d	$vr0, $vr4, $vr9, $vr0
	vstx	$vr0, $t3, $a6
	addi.d	$a6, $a6, 16
	add.d	$a3, $a3, $a4
	bne	$a1, $a6, .LBB2_45
# %bb.46:                               # %middle.block1868
                                        #   in Loop: Header=BB2_40 Depth=3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$a3, $a1
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$t7, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 1120                  # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_39
	b	.LBB2_51
	.p2align	4, , 16
.LBB2_47:                               #   in Loop: Header=BB2_40 Depth=3
	move	$a3, $zero
	move	$a2, $s3
	b	.LBB2_51
.LBB2_48:                               #   in Loop: Header=BB2_40 Depth=3
	move	$a2, $a4
	b	.LBB2_50
.LBB2_49:                               #   in Loop: Header=BB2_40 Depth=3
	ld.d	$a2, $sp, 784                   # 8-byte Folded Reload
.LBB2_50:                               # %scalar.ph1830.preheader
                                        #   in Loop: Header=BB2_40 Depth=3
	ld.d	$t7, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 1120                  # 8-byte Folded Reload
.LBB2_51:                               # %scalar.ph1830.preheader
                                        #   in Loop: Header=BB2_40 Depth=3
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$a4, $sp, 1008                  # 8-byte Folded Reload
	alsl.d	$a4, $t7, $a4, 3
	ld.d	$a5, $sp, 1000                  # 8-byte Folded Reload
	alsl.d	$a5, $t7, $a5, 3
	st.d	$a5, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a6, $sp, 1056                  # 8-byte Folded Reload
	sub.d	$t1, $a6, $a3
	ld.d	$a3, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$t2, $a2, $a3, 3
	ld.d	$a3, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 1080                  # 8-byte Folded Reload
	alsl.d	$t5, $s2, $a3, 3
	ld.d	$a3, $sp, 1088                  # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a3, 3
	ld.d	$a3, $sp, 1072                  # 8-byte Folded Reload
	alsl.d	$t8, $s2, $a3, 3
	ld.d	$a3, $sp, 1096                  # 8-byte Folded Reload
	alsl.d	$t3, $s2, $a3, 3
	ld.d	$a3, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$t4, $s0, $a3, 3
	ld.d	$fp, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$ra, $s0, $fp, 3
	ld.d	$t0, $sp, 1064                  # 8-byte Folded Reload
	alsl.d	$s3, $s0, $t0, 3
	ld.d	$t6, $sp, 1032                  # 8-byte Folded Reload
	alsl.d	$s5, $s0, $t6, 3
	ld.d	$a7, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$s6, $s0, $a7, 3
	ld.d	$a6, $sp, 904                   # 8-byte Folded Reload
	add.d	$a6, $a6, $s0
	alsl.d	$s7, $a6, $t6, 3
	alsl.d	$s8, $a6, $a3, 3
	ld.d	$a3, $sp, 1048                  # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a3, 3
	alsl.d	$t6, $a6, $fp, 3
	ld.d	$fp, $sp, 1040                  # 8-byte Folded Reload
	alsl.d	$s4, $a6, $fp, 3
	alsl.d	$s1, $a6, $t0, 3
	alsl.d	$fp, $a6, $a7, 3
	ld.d	$a6, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a6, $s0, $a6, 3
	ld.d	$a7, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$t0, $s0, $a7, 3
	.p2align	4, , 16
.LBB2_52:                               # %scalar.ph1830
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_38 Depth=2
                                        #       Parent Loop BB2_40 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a4, $a1
	fldx.d	$fa1, $s7, $a0
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa2, $s8, $a0
	fldx.d	$fa3, $t2, $a1
	fldx.d	$fa4, $t4, $a0
	add.d	$a7, $t2, $a1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t5, $a1
	fldx.d	$fa0, $a4, $a1
	fldx.d	$fa1, $a3, $a0
	fldx.d	$fa2, $t6, $a0
	fld.d	$fa3, $a7, -8
	fldx.d	$fa4, $ra, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $a5, $a1
	fldx.d	$fa0, $a4, $a1
	fldx.d	$fa1, $s4, $a0
	fldx.d	$fa2, $s1, $a0
	fld.d	$fa3, $a7, -16
	fldx.d	$fa4, $s3, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t8, $a1
	ld.d	$a7, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a1
	fldx.d	$fa1, $a6, $a0
	fldx.d	$fa2, $s5, $a0
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$a7, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $a1
	fldx.d	$fa4, $a4, $a1
	fldx.d	$fa5, $s7, $a0
	ld.d	$a7, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa6, $a7, $a1
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fldx.d	$fa2, $t0, $a0
	fmul.d	$fa5, $fa4, $fa5
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fldx.d	$fa5, $fp, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fldx.d	$fa1, $s6, $a0
	fldx.d	$fa2, $t4, $a0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	addi.d	$a2, $a2, 1
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fstx.d	$fa0, $t3, $a1
	addi.d	$t7, $t7, 1
	ld.d	$a7, $sp, 1112                  # 8-byte Folded Reload
	add.d	$s0, $s0, $a7
	addi.d	$s2, $s2, 1
	addi.d	$a1, $a1, 8
	addi.w	$t1, $t1, -1
	ld.d	$a7, $sp, 1104                  # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	bnez	$t1, .LBB2_52
	b	.LBB2_39
.LBB2_53:                               # %._crit_edge
	move	$a0, $zero
	fld.d	$fs7, $sp, 1192                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1200                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1208                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1216                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1224                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1232                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1240                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1248                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1336                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1344
	ret
.Lfunc_end2:
	.size	hypre_SMG2BuildRAPNoSym, .Lfunc_end2-hypre_SMG2BuildRAPNoSym
                                        # -- End function
	.globl	hypre_SMG2RAPPeriodicSym        # -- Begin function hypre_SMG2RAPPeriodicSym
	.p2align	5
	.type	hypre_SMG2RAPPeriodicSym,@function
hypre_SMG2RAPPeriodicSym:               # @hypre_SMG2RAPPeriodicSym
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 60
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB3_41
# %bb.1:
	ld.d	$fp, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	blez	$a0, .LBB3_41
# %bb.2:                                # %.lr.ph
	addi.w	$a0, $zero, -1
	move	$s3, $zero
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vrepli.b	$vr6, 0
	lu52i.d	$a0, $zero, 1024
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	vst	$vr6, $sp, 48                   # 16-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %._crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 8
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB3_41
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_24 Depth 4
                                        #         Child Loop BB3_15 Depth 4
                                        #     Child Loop BB3_32 Depth 2
                                        #       Child Loop BB3_34 Depth 3
                                        #         Child Loop BB3_37 Depth 4
                                        #         Child Loop BB3_40 Depth 4
	ld.d	$a0, $s0, 40
	ld.d	$s8, $fp, 0
	slli.d	$a1, $s3, 4
	alsl.d	$fp, $s3, $a1, 3
	ld.d	$s7, $a0, 0
	add.d	$s6, $s8, $fp
	st.d	$zero, $sp, 168
	st.w	$zero, $sp, 176
	addi.d	$a2, $sp, 168
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168
	st.w	$zero, $sp, 176
	addi.d	$a2, $sp, 168
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168
	st.w	$zero, $sp, 176
	addi.d	$a2, $sp, 168
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 168
	st.w	$zero, $sp, 176
	addi.d	$a2, $sp, 168
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168
	st.w	$zero, $sp, 176
	addi.d	$a2, $sp, 168
	move	$a0, $s0
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$a1, $sp, 156
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	vld	$vr6, $sp, 48                   # 16-byte Folded Reload
	ld.w	$a0, $sp, 156
	ld.w	$a1, $sp, 160
	ld.w	$a4, $sp, 164
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB3_3
# %bb.5:                                # %.preheader332.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a0, .LBB3_3
# %bb.6:                                # %.preheader332.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	blez	$a2, .LBB3_3
# %bb.7:                                # %.preheader332.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_3
# %bb.8:                                # %.preheader330.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t7, $zero
	add.d	$a2, $s7, $fp
	ldx.w	$a3, $s8, $fp
	ldx.w	$a4, $s7, $fp
	ld.w	$a5, $s6, 4
	ld.w	$a6, $a2, 4
	ld.w	$a7, $s6, 8
	ld.w	$t0, $a2, 8
	ld.w	$t1, $a2, 16
	sub.d	$a3, $a3, $a4
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.w	$a6, $t1, $a6
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	slt	$t0, $t1, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t1, $t0
	or	$a6, $a6, $t0
	ld.w	$a2, $a2, 12
	addi.d	$a6, $a6, 1
	mul.d	$a7, $a6, $a7
	add.d	$a5, $a5, $a7
	sub.w	$a2, $a2, $a4
	slt	$a4, $t1, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $t1, $a4
	or	$a2, $a2, $a4
	addi.d	$a2, $a2, 1
	mul.d	$a4, $a5, $a2
	add.w	$a5, $a4, $a3
	sub.d	$a3, $a2, $a0
	sub.d	$a4, $a6, $a1
	mul.d	$a2, $a2, $a4
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a2, $a0, -1
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a4, $a2, $s5, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a4, $a2, $s4, 3
	addi.d	$t0, $a4, 8
	addi.d	$t1, $s3, -8
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$t2, $a2, $s3, 3
	alsl.d	$a4, $a2, $s2, 3
	addi.d	$t3, $a4, 8
	alsl.d	$a2, $a2, $s1, 3
	addi.d	$t4, $a2, 8
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$t5, $a2, 1
	move	$t6, $a5
	ori	$a7, $zero, 8
	vldi	$vr5, -1024
	vld	$vr7, $sp, 16                   # 16-byte Folded Reload
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %._crit_edge340.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	addi.w	$t7, $t7, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.w	$t6, $t6, $a2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$t7, $a2, .LBB3_27
.LBB3_10:                               # %.preheader330.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_24 Depth 4
                                        #         Child Loop BB3_15 Depth 4
	st.d	$t7, $sp, 136                   # 8-byte Folded Spill
	move	$t7, $zero
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_12 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$t6, $a3, $t6
	beq	$t7, $a1, .LBB3_9
.LBB3_12:                               # %.preheader328.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_24 Depth 4
                                        #         Child Loop BB3_15 Depth 4
	bgeu	$a0, $a7, .LBB3_16
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=3
	move	$s6, $zero
.LBB3_14:                               # %scalar.ph469.preheader
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$t8, $t6, $t1, 3
	alsl.d	$fp, $t6, $s2, 3
	alsl.d	$s0, $t6, $s5, 3
	alsl.d	$s8, $t6, $s1, 3
	alsl.d	$ra, $t6, $s4, 3
	sub.d	$s6, $a0, $s6
	.p2align	4, , 16
.LBB3_15:                               # %scalar.ph469
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t8, 0
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $s0, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s0, 0
	fld.d	$fa0, $s8, 0
	fld.d	$fa1, $ra, 0
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	fst.d	$fa0, $ra, 0
	addi.d	$t6, $t6, 1
	addi.d	$t8, $t8, 8
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 8
	addi.d	$s8, $s8, 8
	addi.w	$s6, $s6, -1
	addi.d	$ra, $ra, 8
	bnez	$s6, .LBB3_15
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_16:                               # %vector.memcheck425
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$t8, $t6, $s5, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a4, $t6, $a2, 3
	alsl.d	$fp, $t6, $s4, 3
	alsl.d	$a2, $t6, $t0, 3
	sltu	$a6, $t8, $a2
	sltu	$s0, $fp, $a4
	and	$a6, $a6, $s0
	move	$s6, $zero
	bnez	$a6, .LBB3_14
# %bb.17:                               # %vector.memcheck425
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$s8, $t6, $t1, 3
	alsl.d	$s3, $t6, $t2, 3
	sltu	$a6, $t8, $s3
	sltu	$s0, $s8, $a4
	and	$a6, $a6, $s0
	bnez	$a6, .LBB3_14
# %bb.18:                               # %vector.memcheck425
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$ra, $t6, $s2, 3
	alsl.d	$a6, $t6, $t3, 3
	sltu	$s0, $t8, $a6
	sltu	$s7, $ra, $a4
	and	$s0, $s0, $s7
	bnez	$s0, .LBB3_14
# %bb.19:                               # %vector.memcheck425
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$s0, $t6, $s1, 3
	alsl.d	$s7, $t6, $t4, 3
	sltu	$a7, $t8, $s7
	sltu	$a4, $s0, $a4
	and	$a4, $a7, $a4
	bnez	$a4, .LBB3_26
# %bb.20:                               # %vector.memcheck425
                                        #   in Loop: Header=BB3_12 Depth=3
	sltu	$a4, $fp, $s3
	sltu	$a7, $s8, $a2
	and	$a4, $a4, $a7
	bnez	$a4, .LBB3_26
# %bb.21:                               # %vector.memcheck425
                                        #   in Loop: Header=BB3_12 Depth=3
	sltu	$a4, $fp, $a6
	sltu	$a6, $ra, $a2
	and	$a4, $a4, $a6
	ori	$a7, $zero, 8
	bnez	$a4, .LBB3_14
# %bb.22:                               # %vector.memcheck425
                                        #   in Loop: Header=BB3_12 Depth=3
	sltu	$a4, $fp, $s7
	sltu	$a2, $s0, $a2
	and	$a2, $a4, $a2
	bnez	$a2, .LBB3_14
# %bb.23:                               # %vector.ph471
                                        #   in Loop: Header=BB3_12 Depth=3
	add.d	$t6, $t5, $t6
	move	$a2, $t5
	.p2align	4, , 16
.LBB3_24:                               # %vector.body474
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $s8, 0
	vld	$vr1, $ra, 0
	vld	$vr2, $t8, 0
	vld	$vr3, $s0, 0
	vld	$vr4, $fp, 0
	vfadd.d	$vr0, $vr0, $vr1
	vfadd.d	$vr0, $vr2, $vr0
	vst	$vr0, $t8, 0
	vfmadd.d	$vr0, $vr3, $vr7, $vr4
	vst	$vr0, $fp, 0
	addi.d	$a2, $a2, -2
	addi.d	$fp, $fp, 16
	addi.d	$s0, $s0, 16
	addi.d	$t8, $t8, 16
	addi.d	$ra, $ra, 16
	addi.d	$s8, $s8, 16
	bnez	$a2, .LBB3_24
# %bb.25:                               # %middle.block482
                                        #   in Loop: Header=BB3_12 Depth=3
	move	$s6, $t5
	beq	$t5, $a0, .LBB3_11
	b	.LBB3_14
.LBB3_26:                               #   in Loop: Header=BB3_12 Depth=3
	ori	$a7, $zero, 8
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_27:                               # %.preheader331.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	blez	$a0, .LBB3_3
# %bb.28:                               # %.preheader331.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	blez	$a2, .LBB3_3
# %bb.29:                               # %.preheader331.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_3
# %bb.30:                               # %.preheader329.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	sub.d	$a2, $s1, $s2
	sub.d	$a4, $t8, $s2
	sub.d	$a7, $t8, $s1
	sltui	$a2, $a2, 32
	sltui	$a4, $a4, 32
	or	$a2, $a2, $a4
	sltui	$a4, $a7, 32
	or	$a7, $a2, $a4
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$t0, $a2, 2
	addi.d	$t1, $s2, 16
	addi.d	$t2, $t8, 16
	addi.d	$t3, $s1, 16
	b	.LBB3_32
	.p2align	4, , 16
.LBB3_31:                               # %._crit_edge364.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_32 Depth=2
	addi.w	$a6, $a6, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a6, $a2, .LBB3_3
.LBB3_32:                               # %.preheader329.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_34 Depth 3
                                        #         Child Loop BB3_37 Depth 4
                                        #         Child Loop BB3_40 Depth 4
	move	$t4, $zero
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_33:                               # %._crit_edge.us.us.us.us.us.us384
                                        #   in Loop: Header=BB3_34 Depth=3
	addi.w	$t4, $t4, 1
	add.w	$a5, $a3, $t5
	beq	$t4, $a1, .LBB3_31
.LBB3_34:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_37 Depth 4
                                        #         Child Loop BB3_40 Depth 4
	sltui	$a2, $a0, 4
	or	$a2, $a2, $a7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB3_36
# %bb.35:                               #   in Loop: Header=BB3_34 Depth=3
	move	$a4, $zero
	move	$t5, $a5
	b	.LBB3_39
	.p2align	4, , 16
.LBB3_36:                               # %vector.ph
                                        #   in Loop: Header=BB3_34 Depth=3
	add.d	$t5, $t0, $a5
	alsl.d	$a2, $a5, $t1, 3
	alsl.d	$a4, $a5, $t2, 3
	alsl.d	$a5, $a5, $t3, 3
	move	$t6, $t0
	.p2align	4, , 16
.LBB3_37:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_32 Depth=2
                                        #       Parent Loop BB3_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr6, $a2, -16
	vst	$vr6, $a2, 0
	vst	$vr6, $a5, -16
	vst	$vr6, $a5, 0
	vst	$vr6, $a4, -16
	vst	$vr6, $a4, 0
	addi.d	$t6, $t6, -4
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$t6, .LBB3_37
# %bb.38:                               # %middle.block
                                        #   in Loop: Header=BB3_34 Depth=3
	move	$a4, $t0
	beq	$t0, $a0, .LBB3_33
.LBB3_39:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_34 Depth=3
	alsl.d	$a2, $t5, $s2, 3
	alsl.d	$a5, $t5, $s1, 3
	alsl.d	$t6, $t5, $t8, 3
	sub.d	$t7, $a0, $a4
	.p2align	4, , 16
.LBB3_40:                               # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_32 Depth=2
                                        #       Parent Loop BB3_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a2, 0
	st.d	$zero, $a5, 0
	st.d	$zero, $t6, 0
	addi.d	$t5, $t5, 1
	addi.d	$a2, $a2, 8
	addi.d	$a5, $a5, 8
	addi.w	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	bnez	$t7, .LBB3_40
	b	.LBB3_33
.LBB3_41:                               # %.loopexit335
	move	$a0, $zero
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end3:
	.size	hypre_SMG2RAPPeriodicSym, .Lfunc_end3-hypre_SMG2RAPPeriodicSym
                                        # -- End function
	.globl	hypre_SMG2RAPPeriodicNoSym      # -- Begin function hypre_SMG2RAPPeriodicNoSym
	.p2align	5
	.type	hypre_SMG2RAPPeriodicNoSym,@function
hypre_SMG2RAPPeriodicNoSym:             # @hypre_SMG2RAPPeriodicNoSym
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
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 60
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_27
# %bb.1:                                # %.preheader205
	ld.d	$a1, $a0, 8
	ld.w	$a0, $a1, 8
	blez	$a0, .LBB4_27
# %bb.2:                                # %.lr.ph
	addi.w	$a0, $zero, -1
	move	$s0, $zero
	move	$a2, $a0
	lu32i.d	$a2, 0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ori	$a2, $zero, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, -1
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	lu32i.d	$a3, -1
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vrepli.b	$vr21, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	vst	$vr21, $sp, 16                  # 16-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB4_27
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_22 Depth 4
                                        #         Child Loop BB4_15 Depth 4
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s0, 4
	alsl.d	$s4, $s0, $a2, 3
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	add.d	$s5, $a1, $s4
	st.d	$zero, $sp, 252
	st.w	$zero, $sp, 260
	addi.d	$a2, $sp, 252
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 252
	st.w	$zero, $sp, 260
	addi.d	$a2, $sp, 252
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 252
	st.w	$zero, $sp, 260
	addi.d	$a2, $sp, 252
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 252
	st.w	$zero, $sp, 260
	addi.d	$a2, $sp, 252
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 252
	st.w	$zero, $sp, 260
	addi.d	$a2, $sp, 252
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 252
	st.w	$zero, $sp, 260
	addi.d	$a2, $sp, 252
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 252
	st.w	$zero, $sp, 260
	addi.d	$a2, $sp, 252
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 252
	st.w	$zero, $sp, 260
	addi.d	$a2, $sp, 252
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 252
	st.w	$zero, $sp, 260
	addi.d	$a2, $sp, 252
	move	$a0, $fp
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 240
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	move	$t8, $s1
	vld	$vr21, $sp, 16                  # 16-byte Folded Reload
	ld.w	$a0, $sp, 240
	ld.w	$s1, $sp, 244
	ld.w	$a3, $sp, 248
	slt	$a1, $a0, $s1
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	blez	$a1, .LBB4_3
# %bb.5:                                # %.preheader204.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	blez	$a1, .LBB4_3
# %bb.6:                                # %.preheader204.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$s1, .LBB4_3
# %bb.7:                                # %.preheader204.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$a0, .LBB4_3
# %bb.8:                                # %.preheader203.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$t7, $s3
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	add.d	$a2, $a4, $s4
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 16
	move	$t2, $zero
	ldx.w	$a4, $a4, $s4
	sub.w	$a3, $a3, $a1
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	slt	$a5, $a7, $a3
	maskeqz	$a3, $a3, $a5
	ld.w	$a6, $a2, 12
	masknez	$a5, $a7, $a5
	or	$a3, $a3, $a5
	addi.d	$a3, $a3, 1
	sub.w	$a5, $a6, $a4
	slt	$a6, $a7, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a7, $a6
	or	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	sub.d	$s4, $a5, $a0
	sub.d	$a6, $a3, $s1
	ld.w	$a7, $s5, 0
	ld.w	$t0, $s5, 4
	ld.w	$t1, $s5, 8
	ld.w	$a2, $a2, 8
	mulw.d.w	$a6, $a5, $a6
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a4, $a7, $a4
	sub.d	$a1, $t0, $a1
	sub.d	$a2, $t1, $a2
	mul.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $a5
	add.w	$a6, $a4, $a1
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a2, $a1, $s2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $fp, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s3, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $t8, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s7, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s6, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s8, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 30, 1
	slli.d	$a1, $a1, 1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a1, $a0, 3
	bstrpick.d	$a1, $a1, 33, 4
	slli.d	$ra, $a1, 4
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                # %._crit_edge211.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_10 Depth=2
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$t2, $a1, .LBB4_3
.LBB4_10:                               # %.preheader203.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_22 Depth 4
                                        #         Child Loop BB4_15 Depth 4
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	move	$a5, $zero
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_12 Depth=3
	addi.w	$a5, $a5, 1
	add.w	$a6, $s4, $a6
	beq	$a5, $s1, .LBB4_9
.LBB4_12:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_22 Depth 4
                                        #         Child Loop BB4_15 Depth 4
	ori	$a1, $zero, 20
	bgeu	$a0, $a1, .LBB4_16
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=3
	move	$t6, $zero
.LBB4_14:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_12 Depth=3
	slli.d	$a1, $a6, 3
	sub.d	$a2, $a0, $t6
	move	$a3, $s6
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	move	$a7, $s8
	move	$t0, $t8
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	move	$t2, $s7
	move	$t3, $s2
	move	$t4, $t7
	move	$t5, $fp
	.p2align	4, , 16
.LBB4_15:                               # %scalar.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t5, $a1
	fldx.d	$fa1, $t4, $a1
	fldx.d	$fa2, $t3, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t3, $a1
	stx.d	$zero, $t5, $a1
	stx.d	$zero, $t4, $a1
	fldx.d	$fa0, $t2, $a1
	fldx.d	$fa1, $t1, $a1
	fldx.d	$fa2, $t0, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t0, $a1
	stx.d	$zero, $t2, $a1
	stx.d	$zero, $t1, $a1
	fldx.d	$fa0, $a7, $a1
	fldx.d	$fa1, $a4, $a1
	fldx.d	$fa2, $a3, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a3, $a1
	stx.d	$zero, $a7, $a1
	stx.d	$zero, $a4, $a1
	addi.d	$a6, $a6, 1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a4, $a4, 8
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_15
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_16:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	move	$s3, $s2
	alsl.d	$a2, $a6, $s2, 3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	alsl.d	$a3, $a6, $fp, 3
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a4, 3
	move	$s5, $t7
	alsl.d	$s0, $a6, $t7, 3
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a7, 3
	move	$s2, $t8
	alsl.d	$a7, $a6, $t8, 3
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$t8, $a6, $t0, 3
	alsl.d	$t0, $a6, $s7, 3
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $t1, 3
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 3
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $t2, 3
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $t2, 3
	alsl.d	$t2, $a6, $s8, 3
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $t4, 3
	vinsgr2vr.d	$vr16, $t2, 0
	vinsgr2vr.d	$vr8, $t4, 0
	vinsgr2vr.d	$vr0, $t3, 0
	vinsgr2vr.d	$vr11, $t6, 0
	vori.b	$vr4, $vr8, 0
	vori.b	$vr5, $vr0, 0
	vinsgr2vr.d	$vr5, $t7, 1
	vori.b	$vr6, $vr11, 0
	vinsgr2vr.d	$vr6, $t7, 1
	vinsgr2vr.d	$vr8, $t7, 1
	vinsgr2vr.d	$vr10, $a1, 0
	vinsgr2vr.d	$vr2, $t7, 0
	vori.b	$vr17, $vr10, 0
	vori.b	$vr12, $vr10, 0
	vori.b	$vr18, $vr10, 0
	vinsgr2vr.d	$vr10, $t7, 1
	alsl.d	$t7, $a6, $s6, 3
	vori.b	$vr7, $vr16, 0
	vinsgr2vr.d	$vr19, $a3, 0
	vinsgr2vr.d	$vr1, $t1, 0
	vori.b	$vr9, $vr16, 0
	vori.b	$vr14, $vr19, 0
	vori.b	$vr15, $vr19, 0
	vori.b	$vr13, $vr19, 0
	vinsgr2vr.d	$vr16, $a2, 1
	vinsgr2vr.d	$vr3, $a7, 0
	vinsgr2vr.d	$vr19, $a2, 1
	vslt.du	$vr10, $vr19, $vr10
	vori.b	$vr19, $vr3, 0
	vinsgr2vr.d	$vr19, $a2, 1
	vinsgr2vr.d	$vr18, $t6, 1
	vslt.du	$vr18, $vr19, $vr18
	vori.b	$vr19, $vr1, 0
	vinsgr2vr.d	$vr19, $a2, 1
	vpickev.w	$vr18, $vr18, $vr10
	vori.b	$vr10, $vr11, 0
	vinsgr2vr.d	$vr12, $t3, 1
	vslt.du	$vr19, $vr19, $vr12
	vori.b	$vr12, $vr11, 0
	vinsgr2vr.d	$vr17, $t4, 1
	vslt.du	$vr16, $vr16, $vr17
	vori.b	$vr17, $vr0, 0
	vinsgr2vr.d	$vr17, $a4, 1
	vinsgr2vr.d	$vr11, $a4, 1
	vpickev.w	$vr16, $vr16, $vr19
	vori.b	$vr19, $vr2, 0
	vinsgr2vr.d	$vr19, $a4, 1
	vpickev.h	$vr16, $vr16, $vr18
	vinsgr2vr.d	$vr18, $a4, 0
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a4, 3
	vinsgr2vr.d	$vr15, $t1, 1
	vslt.du	$vr15, $vr15, $vr11
	vinsgr2vr.d	$vr11, $t7, 0
	vinsgr2vr.d	$vr13, $a7, 1
	vslt.du	$vr19, $vr13, $vr19
	vpickev.w	$vr15, $vr15, $vr19
	vori.b	$vr19, $vr11, 0
	vinsgr2vr.d	$vr19, $t1, 1
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr14, $t2, 1
	vslt.du	$vr14, $vr14, $vr17
	vori.b	$vr17, $vr1, 0
	vinsgr2vr.d	$vr17, $t0, 1
	vinsgr2vr.d	$vr9, $a7, 1
	vslt.du	$vr8, $vr13, $vr8
	vori.b	$vr13, $vr1, 0
	vinsgr2vr.d	$vr13, $a7, 1
	vpickev.w	$vr8, $vr8, $vr14
	vinsgr2vr.d	$vr14, $s0, 0
	vpickev.h	$vr8, $vr8, $vr15
	vori.b	$vr15, $vr14, 0
	vinsgr2vr.d	$vr15, $a7, 1
	vpickev.b	$vr8, $vr8, $vr16
	vori.b	$vr16, $vr14, 0
	vinsgr2vr.d	$vr16, $t2, 1
	vinsgr2vr.d	$vr14, $t1, 1
	vslt.du	$vr6, $vr14, $vr6
	vinsgr2vr.d	$vr14, $t5, 0
	vslt.du	$vr5, $vr16, $vr5
	vori.b	$vr16, $vr14, 0
	vinsgr2vr.d	$vr16, $a4, 1
	vinsgr2vr.d	$vr10, $t4, 1
	vinsgr2vr.d	$vr12, $t3, 1
	vpickev.w	$vr5, $vr5, $vr6
	vinsgr2vr.d	$vr20, $t8, 0
	vinsgr2vr.d	$vr4, $t6, 1
	vslt.du	$vr4, $vr15, $vr4
	vori.b	$vr6, $vr20, 0
	vinsgr2vr.d	$vr6, $t3, 1
	vslt.du	$vr6, $vr13, $vr6
	vori.b	$vr13, $vr20, 0
	vinsgr2vr.d	$vr13, $t4, 1
	vpickev.w	$vr4, $vr6, $vr4
	vpickev.h	$vr4, $vr4, $vr5
	vslt.du	$vr5, $vr9, $vr13
	vslt.du	$vr6, $vr17, $vr12
	vpickev.w	$vr5, $vr6, $vr5
	vslt.du	$vr6, $vr7, $vr10
	vslt.du	$vr7, $vr19, $vr16
	vpickev.w	$vr6, $vr7, $vr6
	vpickev.h	$vr5, $vr6, $vr5
	vinsgr2vr.d	$vr10, $a2, 0
	vpickev.b	$vr4, $vr5, $vr4
	vori.b	$vr12, $vr10, 0
	vori.b	$vr13, $vr10, 0
	vinsgr2vr.d	$vr15, $a4, 0
	vinsgr2vr.d	$vr10, $t0, 1
	vori.b	$vr5, $vr15, 0
	vori.b	$vr6, $vr14, 0
	vori.b	$vr7, $vr15, 0
	vori.b	$vr9, $vr14, 0
	vori.b	$vr16, $vr18, 0
	vori.b	$vr17, $vr18, 0
	vinsgr2vr.d	$vr20, $a1, 1
	vslt.du	$vr10, $vr10, $vr20
	vori.b	$vr19, $vr18, 0
	vinsgr2vr.d	$vr15, $a1, 1
	vinsgr2vr.d	$vr14, $a1, 1
	vinsgr2vr.d	$vr18, $a1, 1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	vinsgr2vr.d	$vr12, $s0, 1
	vslt.du	$vr18, $vr12, $vr18
	vpickev.w	$vr10, $vr10, $vr18
	vinsgr2vr.d	$vr18, $t0, 0
	vinsgr2vr.d	$vr13, $t7, 1
	vslt.du	$vr13, $vr13, $vr14
	vori.b	$vr14, $vr12, 0
	vinsgr2vr.d	$vr14, $a1, 1
	vslt.du	$vr14, $vr14, $vr15
	vori.b	$vr15, $vr18, 0
	vinsgr2vr.d	$vr15, $t7, 1
	vpickev.w	$vr13, $vr14, $vr13
	vinsgr2vr.d	$vr14, $a1, 0
	vinsgr2vr.d	$vr14, $a3, 1
	vpickev.h	$vr10, $vr13, $vr10
	vori.b	$vr13, $vr15, 0
	vshuf4i.d	$vr13, $vr14, 12
	vinsgr2vr.d	$vr17, $t5, 1
	vslt.du	$vr13, $vr13, $vr17
	vpackod.d	$vr17, $vr14, $vr12
	vinsgr2vr.d	$vr19, $t8, 1
	vslt.du	$vr17, $vr17, $vr19
	vpickev.w	$vr13, $vr13, $vr17
	vpackod.d	$vr17, $vr14, $vr15
	vinsgr2vr.d	$vr16, $a4, 1
	vslt.du	$vr16, $vr17, $vr16
	vshuf4i.d	$vr12, $vr14, 6
	vslt.du	$vr12, $vr12, $vr19
	vpickev.w	$vr12, $vr12, $vr16
	vinsgr2vr.d	$vr18, $s0, 1
	vpickev.h	$vr12, $vr12, $vr13
	vori.b	$vr13, $vr2, 0
	vpickev.b	$vr10, $vr12, $vr10
	vori.b	$vr12, $vr2, 0
	vinsgr2vr.d	$vr2, $t5, 1
	vslt.du	$vr2, $vr18, $vr2
	vinsgr2vr.d	$vr11, $s0, 1
	vinsgr2vr.d	$vr12, $a4, 1
	vslt.du	$vr11, $vr11, $vr12
	vpickev.w	$vr2, $vr11, $vr2
	vori.b	$vr11, $vr3, 0
	vinsgr2vr.d	$vr3, $t7, 1
	vinsgr2vr.d	$vr9, $t8, 1
	vslt.du	$vr3, $vr3, $vr9
	vpackev.d	$vr9, $vr15, $vr14
	vinsgr2vr.d	$vr13, $t8, 1
	vslt.du	$vr9, $vr9, $vr13
	vpickev.w	$vr3, $vr3, $vr9
	vpickev.h	$vr2, $vr3, $vr2
	vinsgr2vr.d	$vr11, $a1, 1
	vinsgr2vr.d	$vr7, $t8, 1
	vslt.du	$vr3, $vr11, $vr7
	vinsgr2vr.d	$vr6, $t6, 1
	vslt.du	$vr6, $vr15, $vr6
	vpickev.w	$vr3, $vr6, $vr3
	vinsgr2vr.d	$vr1, $t2, 1
	vinsgr2vr.d	$vr0, $t5, 1
	vslt.du	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr15, $a1, 1
	vinsgr2vr.d	$vr5, $t6, 1
	vslt.du	$vr1, $vr15, $vr5
	vpickev.w	$vr0, $vr0, $vr1
	vpickev.h	$vr0, $vr0, $vr3
	vpickev.b	$vr0, $vr0, $vr2
	vand.v	$vr0, $vr4, $vr0
	vand.v	$vr1, $vr8, $vr10
	vslli.b	$vr1, $vr1, 7
	vmskltz.b	$vr1, $vr1
	vpickve2gr.hu	$t6, $vr1, 0
	vslli.b	$vr0, $vr0, 7
	vmskltz.b	$vr0, $vr0
	vpickve2gr.hu	$t8, $vr0, 0
	slli.d	$t8, $t8, 16
	or	$t6, $t6, $t8
	addi.w	$t8, $t6, 0
	move	$t6, $zero
	bnez	$t8, .LBB4_25
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$t8, $t1, $t4
	sltu	$t5, $a1, $t5
	and	$t5, $t8, $t5
	bnez	$t5, .LBB4_25
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$t5, $t7, $a4
	sltu	$t8, $t2, $t3
	and	$t5, $t5, $t8
	bnez	$t5, .LBB4_25
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$t5, $t7, $t4
	sltu	$t3, $a1, $t3
	and	$t3, $t5, $t3
	move	$t8, $s2
	bnez	$t3, .LBB4_26
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$t3, $t2, $t4
	sltu	$a4, $a1, $a4
	and	$a4, $t3, $a4
	move	$s2, $s3
	bnez	$a4, .LBB4_24
# %bb.21:                               # %vector.ph
                                        #   in Loop: Header=BB4_12 Depth=3
	move	$a4, $zero
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	add.d	$a6, $t3, $a6
	.p2align	4, , 16
.LBB4_22:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $a3, $a4
	vldx	$vr1, $s0, $a4
	vldx	$vr2, $a2, $a4
	vfadd.d	$vr0, $vr0, $vr1
	vldx	$vr1, $t0, $a4
	vldx	$vr3, $t1, $a4
	vfadd.d	$vr0, $vr2, $vr0
	vstx	$vr0, $a2, $a4
	vldx	$vr0, $a7, $a4
	vfadd.d	$vr1, $vr1, $vr3
	vldx	$vr2, $t2, $a4
	vldx	$vr3, $a1, $a4
	vfadd.d	$vr0, $vr0, $vr1
	vstx	$vr0, $a7, $a4
	vstx	$vr21, $a3, $a4
	vfadd.d	$vr0, $vr2, $vr3
	vldx	$vr1, $t7, $a4
	vstx	$vr21, $s0, $a4
	vstx	$vr21, $t0, $a4
	vstx	$vr21, $t1, $a4
	vfadd.d	$vr0, $vr1, $vr0
	vstx	$vr0, $t7, $a4
	vstx	$vr21, $t2, $a4
	vstx	$vr21, $a1, $a4
	addi.d	$a4, $a4, 16
	bne	$ra, $a4, .LBB4_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB4_12 Depth=3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$t6, $a1
	move	$t7, $s5
	beq	$a1, $a0, .LBB4_11
	b	.LBB4_14
.LBB4_24:                               #   in Loop: Header=BB4_12 Depth=3
	move	$t7, $s5
	b	.LBB4_14
.LBB4_25:                               #   in Loop: Header=BB4_12 Depth=3
	move	$t8, $s2
.LBB4_26:                               #   in Loop: Header=BB4_12 Depth=3
	move	$s2, $s3
	move	$t7, $s5
	b	.LBB4_14
.LBB4_27:                               # %.loopexit206
	move	$a0, $zero
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
.Lfunc_end4:
	.size	hypre_SMG2RAPPeriodicNoSym, .Lfunc_end4-hypre_SMG2RAPPeriodicNoSym
                                        # -- End function
	.type	.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost,@object # @__const.hypre_SMG2CreateRAPOp.RAP_num_ghost
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
