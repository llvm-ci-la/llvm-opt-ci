	.file	"LzFind.c"
	.text
	.globl	MatchFinder_GetPointerToCurrentPos # -- Begin function MatchFinder_GetPointerToCurrentPos
	.p2align	5
	.type	MatchFinder_GetPointerToCurrentPos,@function
MatchFinder_GetPointerToCurrentPos:     # @MatchFinder_GetPointerToCurrentPos
# %bb.0:
	ld.d	$a0, $a0, 0
	ret
.Lfunc_end0:
	.size	MatchFinder_GetPointerToCurrentPos, .Lfunc_end0-MatchFinder_GetPointerToCurrentPos
                                        # -- End function
	.globl	MatchFinder_GetIndexByte        # -- Begin function MatchFinder_GetIndexByte
	.p2align	5
	.type	MatchFinder_GetIndexByte,@function
MatchFinder_GetIndexByte:               # @MatchFinder_GetIndexByte
# %bb.0:
	ld.d	$a0, $a0, 0
	ldx.bu	$a0, $a0, $a1
	ret
.Lfunc_end1:
	.size	MatchFinder_GetIndexByte, .Lfunc_end1-MatchFinder_GetIndexByte
                                        # -- End function
	.globl	MatchFinder_GetNumAvailableBytes # -- Begin function MatchFinder_GetNumAvailableBytes
	.p2align	5
	.type	MatchFinder_GetNumAvailableBytes,@function
MatchFinder_GetNumAvailableBytes:       # @MatchFinder_GetNumAvailableBytes
# %bb.0:
	ld.w	$a1, $a0, 16
	ld.w	$a0, $a0, 8
	sub.w	$a0, $a1, $a0
	ret
.Lfunc_end2:
	.size	MatchFinder_GetNumAvailableBytes, .Lfunc_end2-MatchFinder_GetNumAvailableBytes
                                        # -- End function
	.globl	MatchFinder_ReduceOffsets       # -- Begin function MatchFinder_ReduceOffsets
	.p2align	5
	.type	MatchFinder_ReduceOffsets,@function
MatchFinder_ReduceOffsets:              # @MatchFinder_ReduceOffsets
# %bb.0:
	ld.w	$a2, $a0, 12
	ld.w	$a3, $a0, 8
	sub.d	$a2, $a2, $a1
	ld.w	$a4, $a0, 16
	st.w	$a2, $a0, 12
	sub.d	$a2, $a3, $a1
	st.w	$a2, $a0, 8
	sub.d	$a1, $a4, $a1
	st.w	$a1, $a0, 16
	ret
.Lfunc_end3:
	.size	MatchFinder_ReduceOffsets, .Lfunc_end3-MatchFinder_ReduceOffsets
                                        # -- End function
	.globl	MatchFinder_MoveBlock           # -- Begin function MatchFinder_MoveBlock
	.p2align	5
	.type	MatchFinder_MoveBlock,@function
MatchFinder_MoveBlock:                  # @MatchFinder_MoveBlock
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a1, $a0, 0
	ld.wu	$a2, $a0, 88
	ld.w	$a3, $a0, 16
	ld.w	$a4, $a0, 8
	ld.d	$a0, $a0, 64
	sub.d	$a1, $a1, $a2
	add.d	$a2, $a3, $a2
	sub.d	$a2, $a2, $a4
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.wu	$a1, $fp, 88
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	MatchFinder_MoveBlock, .Lfunc_end4-MatchFinder_MoveBlock
                                        # -- End function
	.globl	MatchFinder_NeedMove            # -- Begin function MatchFinder_NeedMove
	.p2align	5
	.type	MatchFinder_NeedMove,@function
MatchFinder_NeedMove:                   # @MatchFinder_NeedMove
# %bb.0:
	ld.w	$a1, $a0, 100
	beqz	$a1, .LBB5_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB5_2:
	ld.d	$a1, $a0, 64
	ld.wu	$a2, $a0, 84
	ld.d	$a3, $a0, 0
	ld.wu	$a0, $a0, 92
	add.d	$a1, $a1, $a2
	sub.d	$a1, $a1, $a3
	sltu	$a0, $a0, $a1
	xori	$a0, $a0, 1
	ret
.Lfunc_end5:
	.size	MatchFinder_NeedMove, .Lfunc_end5-MatchFinder_NeedMove
                                        # -- End function
	.globl	MatchFinder_ReadIfRequired      # -- Begin function MatchFinder_ReadIfRequired
	.p2align	5
	.type	MatchFinder_ReadIfRequired,@function
MatchFinder_ReadIfRequired:             # @MatchFinder_ReadIfRequired
# %bb.0:
	ld.w	$a1, $a0, 80
	beqz	$a1, .LBB6_2
.LBB6_1:                                # %MatchFinder_ReadBlock.exit
	ret
.LBB6_2:
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a0, 92
	sub.w	$a4, $a1, $a2
	bltu	$a3, $a4, .LBB6_1
# %bb.3:
	ld.w	$a3, $a0, 136
	bnez	$a3, .LBB6_1
# %bb.4:
	ld.w	$a3, $a0, 100
	beqz	$a3, .LBB6_7
# %bb.5:
	ld.d	$a2, $a0, 104
	nor	$a3, $a1, $zero
	bstrpick.d	$a3, $a3, 31, 0
	sltu	$a4, $a2, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a5
	sub.d	$a5, $a2, $a4
	st.d	$a5, $a0, 104
	add.d	$a1, $a1, $a4
	st.w	$a1, $a0, 16
	bltu	$a3, $a2, .LBB6_1
# %bb.6:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 80
	ret
.LBB6_7:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a0, 64
	ld.wu	$a5, $a0, 84
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a3, $a1
	add.d	$a2, $a4, $a5
	sub.d	$a3, $a2, $a1
	st.d	$a3, $sp, 8
	beq	$a2, $a1, .LBB6_13
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=1
	ld.d	$a3, $a0, 72
	ld.d	$a4, $a3, 0
	addi.d	$a2, $sp, 8
	move	$fp, $a0
	move	$a0, $a3
	jirl	$ra, $a4, 0
	st.w	$a0, $fp, 136
	bnez	$a0, .LBB6_13
# %bb.10:                               #   in Loop: Header=BB6_8 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 8
	beqz	$a1, .LBB6_12
# %bb.11:                               #   in Loop: Header=BB6_8 Depth=1
	ld.w	$a3, $a0, 16
	ld.w	$a2, $a0, 8
	ld.w	$a4, $a0, 92
	add.w	$a1, $a3, $a1
	sub.w	$a3, $a1, $a2
	st.w	$a1, $a0, 16
	bgeu	$a4, $a3, .LBB6_8
	b	.LBB6_13
.LBB6_12:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 80
.LBB6_13:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	MatchFinder_ReadIfRequired, .Lfunc_end6-MatchFinder_ReadIfRequired
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function MatchFinder_Construct
.LCPI7_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	MatchFinder_Construct
	.p2align	5
	.type	MatchFinder_Construct,@function
MatchFinder_Construct:                  # @MatchFinder_Construct
# %bb.0:                                # %vector.ph
	move	$a1, $zero
	st.d	$zero, $a0, 64
	st.d	$zero, $a0, 40
	ori	$a2, $zero, 32
	st.w	$a2, $a0, 60
	ori	$a2, $zero, 1
	st.d	$a2, $a0, 112
	ori	$a2, $zero, 4
	st.d	$a2, $a0, 96
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI7_0)
	addi.d	$a0, $a0, 140
	vrepli.w	$vr1, 1
	vrepli.b	$vr2, -1
	lu12i.w	$a2, -74872
	ori	$a2, $a2, 800
	vreplgr2vr.w	$vr3, $a2
	vrepli.w	$vr4, 2
	vrepli.w	$vr5, 4
	lu12i.w	$a2, 30428
	ori	$a2, $a2, 1049
	vreplgr2vr.w	$vr6, $a2
	vrepli.w	$vr7, 8
	lu12i.w	$a2, 60856
	ori	$a2, $a2, 2098
	vreplgr2vr.w	$vr8, $a2
	vrepli.w	$vr9, 16
	lu12i.w	$a2, 121713
	ori	$a2, $a2, 100
	vreplgr2vr.w	$vr10, $a2
	vrepli.w	$vr11, 32
	lu12i.w	$a2, 243426
	ori	$a2, $a2, 200
	vreplgr2vr.w	$vr12, $a2
	lu12i.w	$a2, 486852
	ori	$a2, $a2, 400
	vreplgr2vr.w	$vr13, $a2
	ori	$a2, $zero, 1024
	.p2align	4, , 16
.LBB7_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vsrli.w	$vr14, $vr0, 1
	vand.v	$vr15, $vr0, $vr1
	vseqi.w	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr2
	vand.v	$vr15, $vr15, $vr3
	vxor.v	$vr14, $vr15, $vr14
	vsrli.w	$vr15, $vr14, 1
	vand.v	$vr16, $vr0, $vr4
	vseqi.w	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr2
	vand.v	$vr16, $vr16, $vr3
	vxor.v	$vr15, $vr16, $vr15
	vsrli.w	$vr16, $vr15, 6
	vand.v	$vr17, $vr0, $vr5
	vseqi.w	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr2
	vand.v	$vr17, $vr17, $vr6
	vxor.v	$vr16, $vr17, $vr16
	vand.v	$vr17, $vr0, $vr7
	vseqi.w	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr2
	vand.v	$vr17, $vr17, $vr8
	vxor.v	$vr16, $vr17, $vr16
	vand.v	$vr17, $vr0, $vr9
	vseqi.w	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr2
	vand.v	$vr17, $vr17, $vr10
	vxor.v	$vr16, $vr17, $vr16
	vand.v	$vr17, $vr0, $vr11
	vseqi.w	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr2
	vand.v	$vr17, $vr17, $vr12
	vxor.v	$vr16, $vr17, $vr16
	vand.v	$vr14, $vr14, $vr11
	vseqi.w	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr2
	vand.v	$vr14, $vr14, $vr13
	vxor.v	$vr14, $vr14, $vr16
	vand.v	$vr15, $vr15, $vr11
	vseqi.w	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr2
	vand.v	$vr15, $vr15, $vr3
	vxor.v	$vr14, $vr15, $vr14
	vstx	$vr14, $a0, $a1
	addi.d	$a1, $a1, 16
	vaddi.wu	$vr0, $vr0, 4
	bne	$a1, $a2, .LBB7_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end7:
	.size	MatchFinder_Construct, .Lfunc_end7-MatchFinder_Construct
                                        # -- End function
	.globl	MatchFinder_Free                # -- Begin function MatchFinder_Free
	.p2align	5
	.type	MatchFinder_Free,@function
MatchFinder_Free:                       # @MatchFinder_Free
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a2, $a1, 8
	ld.d	$a1, $a0, 40
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 100
	st.d	$zero, $fp, 40
	bnez	$a0, .LBB8_2
# %bb.1:
	ld.d	$a2, $s0, 8
	ld.d	$a1, $fp, 64
	move	$a0, $s0
	jirl	$ra, $a2, 0
	st.d	$zero, $fp, 64
.LBB8_2:                                # %LzInWindow_Free.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	MatchFinder_Free, .Lfunc_end8-MatchFinder_Free
                                        # -- End function
	.globl	MatchFinder_Create              # -- Begin function MatchFinder_Create
	.p2align	5
	.type	MatchFinder_Create,@function
MatchFinder_Create:                     # @MatchFinder_Create
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a6, -262144
	ori	$a6, $a6, 1
	move	$s0, $a5
	move	$fp, $a0
	bltu	$a1, $a6, .LBB9_2
# %bb.1:
	ld.d	$a2, $s0, 8
	ld.d	$a1, $fp, 40
	b	.LBB9_20
.LBB9_2:
	lu12i.w	$a0, -524288
	sltu	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srl.w	$a0, $a1, $a0
	add.d	$a4, $a4, $a3
	add.d	$a5, $a4, $a2
	bstrpick.d	$a5, $a5, 31, 1
	addi.d	$s1, $a1, 1
	add.d	$a2, $s1, $a2
	st.w	$a2, $fp, 88
	st.w	$a4, $fp, 92
	add.d	$a0, $a2, $a0
	ld.w	$a2, $fp, 100
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	addu16i.d	$a0, $a0, 8
	addi.w	$s2, $a0, 0
	beqz	$a2, .LBB9_4
# %bb.3:
	st.w	$s2, $fp, 84
	b	.LBB9_7
.LBB9_4:
	ld.d	$a2, $fp, 64
	beqz	$a2, .LBB9_6
# %bb.5:
	ld.w	$a0, $fp, 84
	beq	$a0, $s2, .LBB9_7
.LBB9_6:                                # %LzInWindow_Create.exit
	ld.d	$a4, $s0, 8
	move	$a0, $s0
	move	$s3, $a1
	move	$a1, $a2
	move	$s4, $a3
	jirl	$ra, $a4, 0
	ld.d	$a2, $s0, 0
	st.d	$zero, $fp, 64
	st.w	$s2, $fp, 84
	bstrpick.d	$a1, $s2, 31, 0
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a3, $s4
	move	$a1, $s3
	st.d	$a0, $fp, 64
	beqz	$a0, .LBB9_18
.LBB9_7:                                # %LzInWindow_Create.exit.thread
	ld.w	$a0, $fp, 96
	st.w	$a3, $fp, 32
	ori	$a2, $zero, 2
	st.w	$zero, $fp, 124
	bne	$a0, $a2, .LBB9_9
# %bb.8:                                # %.thread
	move	$a3, $zero
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.w	$a0, $fp, 56
	lu12i.w	$a2, 16
	b	.LBB9_13
.LBB9_9:
	addi.w	$a2, $a1, -1
	bstrpick.d	$a3, $a2, 31, 1
	or	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 31, 2
	or	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 31, 4
	or	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 31, 1
	bstrpick.d	$a2, $a2, 31, 9
	bstrpick.d	$a3, $a3, 62, 0
	or	$a2, $a3, $a2
	lu12i.w	$a3, 15
	ori	$a3, $a3, 4095
	or	$a2, $a2, $a3
	lu12i.w	$a3, 4096
	sltu	$a3, $a3, $a2
	addi.d	$a4, $a0, -3
	sltui	$a4, $a4, 1
	srli.d	$a5, $a2, 1
	masknez	$a5, $a5, $a4
	lu12i.w	$a6, 4095
	ori	$a6, $a6, 4095
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.w	$a2, $fp, 56
	ori	$a4, $zero, 3
	addi.d	$a2, $a2, 1
	bltu	$a0, $a4, .LBB9_12
# %bb.10:
	ori	$a3, $zero, 1024
	st.w	$a3, $fp, 124
	beq	$a0, $a4, .LBB9_13
# %bb.11:
	ori	$a3, $zero, 4
	sltu	$a0, $a3, $a0
	lu12i.w	$a3, 16
	ori	$a3, $a3, 1024
	masknez	$a3, $a3, $a0
	lu12i.w	$a4, 272
	ori	$a4, $a4, 1024
	maskeqz	$a0, $a4, $a0
	or	$a3, $a0, $a3
	st.w	$a3, $fp, 124
	b	.LBB9_13
.LBB9_12:
	move	$a3, $zero
.LBB9_13:                               # %.thread101
	add.d	$a0, $a3, $a2
	ld.w	$a2, $fp, 128
	ld.w	$a3, $fp, 132
	ld.w	$a4, $fp, 112
	st.w	$a1, $fp, 120
	st.w	$a0, $fp, 128
	st.w	$s1, $fp, 28
	sltu	$a4, $zero, $a4
	ld.d	$a1, $fp, 40
	sll.w	$a4, $s1, $a4
	st.w	$a4, $fp, 132
	add.w	$s1, $a4, $a0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB9_15
# %bb.14:                               # %.thread101
	add.w	$a2, $a3, $a2
	beq	$a2, $s1, .LBB9_23
.LBB9_15:
	ld.d	$a2, $s0, 8
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 0
	st.d	$zero, $fp, 40
	bstrpick.d	$a0, $s1, 31, 0
	slli.d	$a1, $a0, 2
	move	$a0, $s0
	jirl	$ra, $a2, 0
	st.d	$a0, $fp, 40
	beqz	$a0, .LBB9_17
# %bb.16:
	ld.wu	$a1, $fp, 128
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $fp, 48
	ori	$a0, $zero, 1
	b	.LBB9_23
.LBB9_17:
	move	$a1, $zero
	b	.LBB9_19
.LBB9_18:                               # %LzInWindow_Create.exit._crit_edge
	ld.d	$a1, $fp, 40
.LBB9_19:
	ld.d	$a2, $s0, 8
.LBB9_20:
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 100
	st.d	$zero, $fp, 40
	beqz	$a0, .LBB9_22
# %bb.21:
	move	$a0, $zero
	b	.LBB9_23
.LBB9_22:
	ld.d	$a2, $s0, 8
	ld.d	$a1, $fp, 64
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a0, $zero
	st.d	$zero, $fp, 64
.LBB9_23:                               # %.critedge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end9:
	.size	MatchFinder_Create, .Lfunc_end9-MatchFinder_Create
                                        # -- End function
	.globl	MatchFinder_Init                # -- Begin function MatchFinder_Init
	.p2align	5
	.type	MatchFinder_Init,@function
MatchFinder_Init:                       # @MatchFinder_Init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 128
	beqz	$a0, .LBB10_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $fp, 40
	move	$a1, $zero
	.p2align	4, , 16
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	ld.wu	$a2, $fp, 128
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	bltu	$a1, $a2, .LBB10_2
.LBB10_3:                               # %._crit_edge
	ld.d	$a1, $fp, 64
	ld.w	$a0, $fp, 28
	st.w	$zero, $fp, 24
	st.d	$a1, $fp, 0
	ld.w	$a1, $fp, 100
	st.w	$a0, $fp, 16
	st.w	$a0, $fp, 8
	st.w	$zero, $fp, 136
	st.w	$zero, $fp, 80
	beqz	$a1, .LBB10_6
# %bb.4:
	ld.d	$a2, $fp, 104
	nor	$a1, $a0, $zero
	bstrpick.d	$a3, $a1, 31, 0
	sltu	$a1, $a2, $a3
	masknez	$a4, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	sub.d	$a4, $a2, $a1
	st.d	$a4, $fp, 104
	add.w	$a1, $a0, $a1
	st.w	$a1, $fp, 16
	bltu	$a3, $a2, .LBB10_13
# %bb.5:
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 80
	b	.LBB10_13
.LBB10_6:
	move	$a1, $a0
	.p2align	4, , 16
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 64
	ld.wu	$a4, $fp, 84
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a1, $a2, $a0
	add.d	$a0, $a3, $a4
	sub.d	$a2, $a0, $a1
	st.d	$a2, $sp, 8
	beq	$a0, $a1, .LBB10_12
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=1
	ld.d	$a0, $fp, 72
	ld.d	$a3, $a0, 0
	addi.d	$a2, $sp, 8
	jirl	$ra, $a3, 0
	st.w	$a0, $fp, 136
	bnez	$a0, .LBB10_12
# %bb.9:                                #   in Loop: Header=BB10_7 Depth=1
	ld.d	$a1, $sp, 8
	beqz	$a1, .LBB10_11
# %bb.10:                               #   in Loop: Header=BB10_7 Depth=1
	ld.w	$a2, $fp, 16
	ld.w	$a0, $fp, 8
	ld.w	$a3, $fp, 92
	add.w	$a1, $a2, $a1
	sub.w	$a2, $a1, $a0
	st.w	$a1, $fp, 16
	bgeu	$a3, $a2, .LBB10_7
	b	.LBB10_13
.LBB10_11:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 80
.LBB10_12:                              # %.thread.i
	ld.w	$a0, $fp, 8
	ld.w	$a1, $fp, 16
.LBB10_13:                              # %MatchFinder_ReadBlock.exit
	ld.w	$a2, $fp, 28
	ld.w	$a3, $fp, 24
	nor	$a4, $a0, $zero
	addi.w	$a4, $a4, 0
	sub.w	$a2, $a2, $a3
	sltu	$a3, $a2, $a4
	maskeqz	$a2, $a2, $a3
	ld.w	$a5, $fp, 92
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	sub.w	$a3, $a1, $a0
	sltu	$a4, $a5, $a3
	xor	$a1, $a1, $a0
	sltu	$a1, $zero, $a1
	sub.w	$a5, $a3, $a5
	masknez	$a1, $a1, $a4
	maskeqz	$a4, $a5, $a4
	or	$a1, $a4, $a1
	sltu	$a4, $a1, $a2
	ld.w	$a5, $fp, 32
	maskeqz	$a1, $a1, $a4
	masknez	$a2, $a2, $a4
	or	$a1, $a1, $a2
	sltu	$a2, $a3, $a5
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $a5, $a2
	or	$a2, $a3, $a2
	st.w	$a2, $fp, 20
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 12
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	MatchFinder_Init, .Lfunc_end10-MatchFinder_Init
                                        # -- End function
	.globl	MatchFinder_Normalize3          # -- Begin function MatchFinder_Normalize3
	.p2align	5
	.type	MatchFinder_Normalize3,@function
MatchFinder_Normalize3:                 # @MatchFinder_Normalize3
# %bb.0:
	beqz	$a2, .LBB11_8
# %bb.1:                                # %.lr.ph.preheader
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a2, 31, 0
	bgeu	$a2, $a4, .LBB11_3
# %bb.2:
	move	$a2, $zero
	b	.LBB11_6
.LBB11_3:                               # %vector.ph
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a2, $a2, 3
	vreplgr2vr.w	$vr0, $a0
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vssub.wu	$vr1, $vr1, $vr0
	vssub.wu	$vr2, $vr2, $vr0
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_4
# %bb.5:                                # %middle.block
	beq	$a2, $a3, .LBB11_8
.LBB11_6:                               # %.lr.ph.preheader17
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB11_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	sub.d	$a4, $a3, $a0
	sltu	$a3, $a3, $a4
	masknez	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB11_7
.LBB11_8:                               # %._crit_edge
	ret
.Lfunc_end11:
	.size	MatchFinder_Normalize3, .Lfunc_end11-MatchFinder_Normalize3
                                        # -- End function
	.globl	GetMatchesSpec1                 # -- Begin function GetMatchesSpec1
	.p2align	5
	.type	GetMatchesSpec1,@function
GetMatchesSpec1:                        # @GetMatchesSpec1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ld.d	$t3, $sp, 48
	slli.d	$t0, $a5, 3
	bstrpick.d	$t0, $t0, 33, 3
	alsl.d	$t2, $t0, $a4, 3
	addi.d	$t1, $t2, 4
	beqz	$a7, .LBB12_19
# %bb.1:
	sub.w	$t6, $a2, $a1
	bgeu	$t6, $a6, .LBB12_19
# %bb.2:                                # %.lr.ph.preheader
	ld.w	$t0, $sp, 56
	move	$t5, $zero
	move	$t4, $zero
	.p2align	4, , 16
.LBB12_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
	sub.d	$t7, $a5, $t6
	sltu	$t8, $a5, $t6
	maskeqz	$s0, $a6, $t8
	bstrpick.d	$t8, $t6, 31, 0
	sub.d	$t8, $a3, $t8
	sltu	$fp, $t4, $t5
	masknez	$s1, $t5, $fp
	maskeqz	$fp, $t4, $fp
	or	$fp, $fp, $s1
	bstrpick.d	$s1, $fp, 31, 0
	ldx.bu	$s2, $t8, $s1
	ldx.bu	$s1, $a3, $s1
	add.d	$t7, $t7, $s0
	slli.d	$t7, $t7, 3
	bstrpick.d	$t7, $t7, 33, 3
	alsl.d	$t7, $t7, $a4, 3
	bne	$s2, $s1, .LBB12_14
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	addi.w	$s1, $fp, 1
	move	$s0, $a0
	beq	$s1, $a0, .LBB12_10
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	bstrpick.d	$s0, $s1, 31, 0
	ldx.bu	$s2, $t8, $s0
	ldx.bu	$s3, $a3, $s0
	move	$s0, $s1
	bne	$s2, $s3, .LBB12_10
# %bb.6:                                # %.preheader.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.w	$fp, $fp, 2
	.p2align	4, , 16
.LBB12_7:                               # %.preheader
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB12_18
# %bb.8:                                #   in Loop: Header=BB12_7 Depth=2
	bstrpick.d	$s0, $fp, 31, 0
	ldx.bu	$s1, $t8, $s0
	ldx.bu	$s0, $a3, $s0
	addi.w	$fp, $fp, 1
	beq	$s1, $s0, .LBB12_7
# %bb.9:                                # %..loopexit.loopexit_crit_edge
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.w	$s0, $fp, -1
	.p2align	4, , 16
.LBB12_10:                              # %.loopexit
                                        #   in Loop: Header=BB12_3 Depth=1
	bgeu	$t0, $s0, .LBB12_13
.LBB12_11:                              #   in Loop: Header=BB12_3 Depth=1
	st.w	$s0, $t3, 0
	addi.d	$t6, $t6, -1
	addi.d	$t0, $t3, 8
	st.w	$t6, $t3, 4
	beq	$s0, $a0, .LBB12_21
# %bb.12:                               #   in Loop: Header=BB12_3 Depth=1
	move	$t3, $t0
	move	$t0, $s0
.LBB12_13:                              #   in Loop: Header=BB12_3 Depth=1
	move	$fp, $s0
.LBB12_14:                              #   in Loop: Header=BB12_3 Depth=1
	bstrpick.d	$t6, $fp, 31, 0
	ldx.bu	$t8, $t8, $t6
	ldx.bu	$t6, $a3, $t6
	bgeu	$t8, $t6, .LBB12_16
# %bb.15:                               #   in Loop: Header=BB12_3 Depth=1
	st.w	$a1, $t2, 0
	addi.d	$t2, $t7, 4
	move	$t5, $fp
	move	$t7, $t2
	addi.w	$a7, $a7, -1
	bnez	$a7, .LBB12_17
	b	.LBB12_19
	.p2align	4, , 16
.LBB12_16:                              #   in Loop: Header=BB12_3 Depth=1
	st.w	$a1, $t1, 0
	move	$t1, $t7
	move	$t4, $fp
	addi.w	$a7, $a7, -1
	beqz	$a7, .LBB12_19
.LBB12_17:                              #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a1, $t7, 0
	sub.w	$t6, $a2, $a1
	bltu	$t6, $a6, .LBB12_3
	b	.LBB12_19
.LBB12_18:                              #   in Loop: Header=BB12_3 Depth=1
	move	$s0, $a0
	bltu	$t0, $s0, .LBB12_11
	b	.LBB12_13
.LBB12_19:                              # %._crit_edge
	move	$a0, $zero
	st.w	$zero, $t2, 0
	move	$t0, $t3
.LBB12_20:
	st.w	$a0, $t1, 0
	move	$a0, $t0
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB12_21:
	ld.w	$a0, $t7, 0
	st.w	$a0, $t2, 0
	ld.w	$a0, $t7, 4
	b	.LBB12_20
.Lfunc_end12:
	.size	GetMatchesSpec1, .Lfunc_end12-GetMatchesSpec1
                                        # -- End function
	.globl	Bt3Zip_MatchFinder_GetMatches   # -- Begin function Bt3Zip_MatchFinder_GetMatches
	.p2align	5
	.type	Bt3Zip_MatchFinder_GetMatches,@function
Bt3Zip_MatchFinder_GetMatches:          # @Bt3Zip_MatchFinder_GetMatches
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
	ld.w	$a4, $a0, 20
	ori	$a2, $zero, 2
	bltu	$a2, $a4, .LBB13_2
# %bb.1:
	ld.w	$a1, $a0, 24
	move	$fp, $zero
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	st.w	$a1, $a0, 24
	ld.w	$a1, $a0, 8
	ld.w	$a3, $a0, 12
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	beq	$a1, $a3, .LBB13_24
	b	.LBB13_25
.LBB13_2:
	ld.d	$a5, $a0, 0
	ld.bu	$a2, $a5, 0
	ld.bu	$a3, $a5, 1
	ld.bu	$a6, $a5, 2
	slli.d	$a2, $a2, 8
	alsl.d	$a3, $a3, $a0, 2
	ld.hu	$a3, $a3, 140
	or	$a2, $a2, $a6
	ld.d	$a6, $a0, 40
	ld.w	$a7, $a0, 8
	xor	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$t5, $a6, $a2
	stx.w	$a7, $a6, $a2
	ld.w	$t0, $a0, 24
	addi.d	$a2, $a5, 1
	ld.d	$t1, $a0, 48
	ld.w	$t2, $a0, 28
	slli.d	$a3, $t0, 3
	bstrpick.d	$a3, $a3, 33, 3
	alsl.d	$a6, $a3, $t1, 3
	sub.w	$fp, $a7, $t5
	addi.d	$a3, $a6, 4
	bgeu	$fp, $t2, .LBB13_21
# %bb.3:
	ld.w	$t4, $a0, 60
	beqz	$t4, .LBB13_21
# %bb.4:                                # %.lr.ph.i.preheader
	move	$t7, $zero
	move	$t6, $zero
	ori	$t8, $zero, 2
	move	$t3, $a1
	.p2align	4, , 16
.LBB13_5:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_9 Depth 2
	sub.d	$s0, $t0, $fp
	sltu	$s1, $t0, $fp
	maskeqz	$s3, $t2, $s1
	bstrpick.d	$s1, $fp, 31, 0
	sub.d	$s1, $a5, $s1
	sltu	$s2, $t6, $t7
	masknez	$s4, $t7, $s2
	maskeqz	$s2, $t6, $s2
	or	$s2, $s2, $s4
	bstrpick.d	$s4, $s2, 31, 0
	ldx.bu	$s5, $s1, $s4
	ldx.bu	$s4, $a5, $s4
	add.d	$s0, $s0, $s3
	slli.d	$s0, $s0, 3
	bstrpick.d	$s0, $s0, 33, 3
	alsl.d	$s0, $s0, $t1, 3
	bne	$s5, $s4, .LBB13_16
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	addi.w	$s4, $s2, 1
	move	$s3, $a4
	beq	$s4, $a4, .LBB13_12
# %bb.7:                                #   in Loop: Header=BB13_5 Depth=1
	bstrpick.d	$s3, $s4, 31, 0
	ldx.bu	$s5, $s1, $s3
	ldx.bu	$s6, $a5, $s3
	move	$s3, $s4
	bne	$s5, $s6, .LBB13_12
# %bb.8:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB13_5 Depth=1
	addi.w	$s2, $s2, 2
	.p2align	4, , 16
.LBB13_9:                               # %.preheader.i
                                        #   Parent Loop BB13_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a4, $s2, .LBB13_20
# %bb.10:                               #   in Loop: Header=BB13_9 Depth=2
	bstrpick.d	$s3, $s2, 31, 0
	ldx.bu	$s4, $s1, $s3
	ldx.bu	$s3, $a5, $s3
	addi.w	$s2, $s2, 1
	beq	$s4, $s3, .LBB13_9
# %bb.11:                               # %..loopexit.i.loopexit_crit_edge
                                        #   in Loop: Header=BB13_5 Depth=1
	addi.w	$s3, $s2, -1
	.p2align	4, , 16
.LBB13_12:                              # %.loopexit.i
                                        #   in Loop: Header=BB13_5 Depth=1
	bgeu	$t8, $s3, .LBB13_15
.LBB13_13:                              #   in Loop: Header=BB13_5 Depth=1
	st.w	$s3, $t3, 0
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t3, 8
	st.w	$fp, $t3, 4
	beq	$s3, $a4, .LBB13_26
# %bb.14:                               #   in Loop: Header=BB13_5 Depth=1
	move	$t3, $t8
	move	$t8, $s3
.LBB13_15:                              #   in Loop: Header=BB13_5 Depth=1
	move	$s2, $s3
.LBB13_16:                              #   in Loop: Header=BB13_5 Depth=1
	bstrpick.d	$fp, $s2, 31, 0
	ldx.bu	$s1, $s1, $fp
	ldx.bu	$fp, $a5, $fp
	bgeu	$s1, $fp, .LBB13_18
# %bb.17:                               #   in Loop: Header=BB13_5 Depth=1
	st.w	$t5, $a6, 0
	addi.d	$a6, $s0, 4
	move	$t7, $s2
	move	$s0, $a6
	addi.w	$t4, $t4, -1
	bnez	$t4, .LBB13_19
	b	.LBB13_22
	.p2align	4, , 16
.LBB13_18:                              #   in Loop: Header=BB13_5 Depth=1
	st.w	$t5, $a3, 0
	move	$a3, $s0
	move	$t6, $s2
	addi.w	$t4, $t4, -1
	beqz	$t4, .LBB13_22
.LBB13_19:                              #   in Loop: Header=BB13_5 Depth=1
	ld.w	$t5, $s0, 0
	sub.w	$fp, $a7, $t5
	bltu	$fp, $t2, .LBB13_5
	b	.LBB13_22
.LBB13_20:                              #   in Loop: Header=BB13_5 Depth=1
	move	$s3, $a4
	bltu	$t8, $s3, .LBB13_13
	b	.LBB13_15
.LBB13_21:
	move	$t3, $a1
.LBB13_22:                              # %._crit_edge.i
	move	$a4, $zero
	st.w	$zero, $a6, 0
	move	$t8, $t3
.LBB13_23:                              # %GetMatchesSpec1.exit
	st.w	$a4, $a3, 0
	ld.w	$a3, $a0, 24
	sub.d	$a1, $t8, $a1
	srli.d	$fp, $a1, 2
	addi.d	$a1, $a3, 1
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a0, 12
	st.w	$a1, $a0, 24
	st.d	$a2, $a0, 0
	addi.w	$a1, $a3, 1
	st.w	$a1, $a0, 8
	bne	$a1, $a4, .LBB13_25
.LBB13_24:                              # %MatchFinder_MovePos.exit.sink.split
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB13_25:                              # %MatchFinder_MovePos.exit
	addi.w	$a0, $fp, 0
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
.LBB13_26:
	ld.w	$a4, $s0, 0
	st.w	$a4, $a6, 0
	ld.w	$a4, $s0, 4
	b	.LBB13_23
.Lfunc_end13:
	.size	Bt3Zip_MatchFinder_GetMatches, .Lfunc_end13-Bt3Zip_MatchFinder_GetMatches
                                        # -- End function
	.p2align	5                               # -- Begin function MatchFinder_CheckLimits
	.type	MatchFinder_CheckLimits,@function
MatchFinder_CheckLimits:                # @MatchFinder_CheckLimits
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a3, $a0, 8
	addi.w	$a2, $zero, -1
	beq	$a3, $a2, .LBB14_2
# %bb.1:
	ld.w	$a1, $a0, 80
	bnez	$a1, .LBB14_17
	b	.LBB14_12
.LBB14_2:
	ld.w	$a1, $a0, 120
	ld.w	$a3, $a0, 128
	ld.w	$a4, $a0, 132
	addi.d	$a5, $zero, -2
	sub.w	$a1, $a5, $a1
	add.w	$a4, $a4, $a3
	bstrins.d	$a1, $zero, 9, 0
	beqz	$a4, .LBB14_11
# %bb.3:                                # %.lr.ph.preheader.i.i
	ld.d	$a2, $a0, 40
	ori	$a5, $zero, 8
	bstrpick.d	$a3, $a4, 31, 0
	bgeu	$a4, $a5, .LBB14_5
# %bb.4:
	move	$a4, $zero
	b	.LBB14_8
.LBB14_5:                               # %vector.ph
	bstrpick.d	$a4, $a3, 31, 3
	slli.d	$a4, $a4, 3
	vreplgr2vr.w	$vr0, $a1
	addi.d	$a5, $a2, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB14_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, -16
	vld	$vr2, $a5, 0
	vssub.wu	$vr1, $vr1, $vr0
	vssub.wu	$vr2, $vr2, $vr0
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB14_6
# %bb.7:                                # %middle.block
	beq	$a4, $a3, .LBB14_10
.LBB14_8:                               # %.lr.ph.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	.p2align	4, , 16
.LBB14_9:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	sub.d	$a5, $a4, $a1
	sltu	$a4, $a4, $a5
	masknez	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB14_9
.LBB14_10:                              # %MatchFinder_Normalize3.exit.loopexit.i
	ld.w	$a2, $a0, 8
.LBB14_11:                              # %MatchFinder_Normalize.exit
	ld.w	$a3, $a0, 12
	sub.d	$a3, $a3, $a1
	ld.w	$a4, $a0, 16
	st.w	$a3, $a0, 12
	sub.d	$a3, $a2, $a1
	st.w	$a3, $a0, 8
	sub.d	$a1, $a4, $a1
	st.w	$a1, $a0, 16
	ld.w	$a1, $a0, 80
	bnez	$a1, .LBB14_17
.LBB14_12:
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a0, 92
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB14_17
# %bb.13:
	ld.w	$a1, $a0, 100
	move	$fp, $a0
	bnez	$a1, .LBB14_16
# %bb.14:                               # %MatchFinder_NeedMove.exit.i
	ld.d	$a3, $a0, 64
	ld.wu	$a4, $a0, 84
	ld.d	$a1, $a0, 0
	bstrpick.d	$a5, $a2, 31, 0
	add.d	$a4, $a3, $a4
	sub.d	$a4, $a4, $a1
	bltu	$a5, $a4, .LBB14_16
# %bb.15:                               # %MatchFinder_NeedMove.exit.thread.i
	ld.wu	$a0, $a0, 88
	sub.d	$a1, $a1, $a0
	add.d	$a0, $a2, $a0
	bstrpick.d	$a2, $a0, 31, 0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $fp, 64
	ld.wu	$a2, $fp, 88
	ld.w	$a3, $fp, 80
	add.d	$a1, $a1, $a2
	st.d	$a1, $fp, 0
	bnez	$a3, .LBB14_17
.LBB14_16:                              # %MatchFinder_NeedMove.exit.thread.i.thread
	ld.w	$a1, $a0, 136
	beqz	$a1, .LBB14_20
.LBB14_17:                              # %MatchFinder_CheckAndMoveAndRead.exit
	ld.w	$a2, $a0, 24
	ld.w	$a1, $a0, 28
	bne	$a2, $a1, .LBB14_19
# %bb.18:
	move	$a2, $zero
	st.w	$zero, $a0, 24
.LBB14_19:
	ld.w	$a3, $a0, 8
	nor	$a4, $a3, $zero
	sub.w	$a1, $a1, $a2
	sltu	$a2, $a1, $a4
	maskeqz	$a1, $a1, $a2
	ld.w	$a5, $a0, 16
	ld.w	$a6, $a0, 92
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	sub.w	$a2, $a5, $a3
	sltu	$a4, $a6, $a2
	xor	$a5, $a5, $a3
	sltu	$a5, $zero, $a5
	sub.w	$a6, $a2, $a6
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	sltu	$a5, $a4, $a1
	ld.w	$a6, $a0, 32
	maskeqz	$a4, $a4, $a5
	masknez	$a1, $a1, $a5
	or	$a1, $a4, $a1
	sltu	$a4, $a2, $a6
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a6, $a4
	or	$a2, $a2, $a4
	st.w	$a2, $a0, 20
	add.d	$a1, $a1, $a3
	st.w	$a1, $a0, 12
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB14_20:
	ld.w	$a1, $a0, 100
	beqz	$a1, .LBB14_23
# %bb.21:
	ld.w	$a1, $a0, 16
	ld.d	$a2, $a0, 104
	nor	$a3, $a1, $zero
	bstrpick.d	$a3, $a3, 31, 0
	sltu	$a4, $a2, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a5
	sub.d	$a5, $a2, $a4
	st.d	$a5, $a0, 104
	add.d	$a1, $a1, $a4
	st.w	$a1, $a0, 16
	bltu	$a3, $a2, .LBB14_17
.LBB14_22:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 80
	b	.LBB14_17
.LBB14_23:                              # %.preheader.i.i
	ld.w	$a2, $a0, 16
	ld.w	$a1, $a0, 8
.LBB14_24:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a0, 64
	ld.wu	$a5, $a0, 84
	sub.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a3, $a1
	add.d	$a2, $a4, $a5
	sub.d	$a3, $a2, $a1
	st.d	$a3, $sp, 8
	beq	$a2, $a1, .LBB14_17
# %bb.25:                               #   in Loop: Header=BB14_24 Depth=1
	ld.d	$a0, $a0, 72
	ld.d	$a3, $a0, 0
	addi.d	$a2, $sp, 8
	jirl	$ra, $a3, 0
	move	$a1, $a0
	move	$a0, $fp
	st.w	$a1, $fp, 136
	bnez	$a1, .LBB14_17
# %bb.26:                               #   in Loop: Header=BB14_24 Depth=1
	ld.d	$a2, $sp, 8
	beqz	$a2, .LBB14_22
# %bb.27:                               #   in Loop: Header=BB14_24 Depth=1
	ld.w	$a3, $a0, 16
	ld.w	$a1, $a0, 8
	ld.w	$a4, $a0, 92
	add.w	$a2, $a3, $a2
	sub.w	$a3, $a2, $a1
	st.w	$a2, $a0, 16
	bgeu	$a4, $a3, .LBB14_24
	b	.LBB14_17
.Lfunc_end14:
	.size	MatchFinder_CheckLimits, .Lfunc_end14-MatchFinder_CheckLimits
                                        # -- End function
	.globl	Hc3Zip_MatchFinder_GetMatches   # -- Begin function Hc3Zip_MatchFinder_GetMatches
	.p2align	5
	.type	Hc3Zip_MatchFinder_GetMatches,@function
Hc3Zip_MatchFinder_GetMatches:          # @Hc3Zip_MatchFinder_GetMatches
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.wu	$a2, $a0, 20
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB15_2
# %bb.1:
	ld.w	$a1, $a0, 24
	move	$fp, $zero
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	st.w	$a1, $a0, 24
	ld.w	$a1, $a0, 8
	ld.w	$a3, $a0, 12
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	beq	$a1, $a3, .LBB15_17
	b	.LBB15_18
.LBB15_2:
	ld.d	$a3, $a0, 0
	ld.bu	$a4, $a3, 0
	ld.bu	$a5, $a3, 1
	ld.bu	$a6, $a3, 2
	slli.d	$a4, $a4, 8
	alsl.d	$a5, $a5, $a0, 2
	ld.hu	$a7, $a5, 140
	or	$a4, $a4, $a6
	ld.d	$a6, $a0, 40
	ld.w	$a5, $a0, 8
	xor	$a4, $a4, $a7
	slli.d	$a4, $a4, 2
	ldx.w	$t2, $a6, $a4
	stx.w	$a5, $a6, $a4
	ld.wu	$a6, $a0, 24
	ld.d	$a7, $a0, 48
	ld.w	$t0, $a0, 28
	ld.w	$t1, $a0, 60
	slli.d	$a4, $a6, 2
	stx.w	$t2, $a7, $a4
	sub.w	$t6, $a5, $t2
	addi.d	$a4, $a3, 1
	move	$t2, $a1
	bgeu	$t6, $t0, .LBB15_16
# %bb.3:
	move	$t2, $a1
	beqz	$t1, .LBB15_16
# %bb.4:                                # %.lr.ph.preheader.i
	addi.d	$t3, $a2, -1
	ori	$t5, $zero, 2
	addi.w	$t4, $a6, 0
	move	$t2, $a1
	.p2align	4, , 16
.LBB15_5:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
	bstrpick.d	$fp, $t6, 31, 0
	sub.d	$t8, $a3, $fp
	sub.d	$t7, $a6, $t6
	sltu	$s0, $t4, $t6
	maskeqz	$s0, $t0, $s0
	add.d	$t7, $t7, $s0
	bstrpick.d	$t7, $t7, 31, 0
	slli.d	$t7, $t7, 2
	ldx.bu	$s0, $t8, $t5
	ldx.bu	$s1, $a3, $t5
	ldx.w	$t7, $a7, $t7
	bne	$s0, $s1, .LBB15_13
# %bb.6:                                #   in Loop: Header=BB15_5 Depth=1
	ld.bu	$t8, $t8, 0
	ld.bu	$s0, $a3, 0
	bne	$t8, $s0, .LBB15_13
# %bb.7:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$t8, $zero
	sub.d	$fp, $zero, $fp
	move	$s0, $t3
	move	$s1, $a4
	.p2align	4, , 16
.LBB15_8:                               # %.preheader.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s0, .LBB15_12
# %bb.9:                                #   in Loop: Header=BB15_8 Depth=2
	ldx.bu	$s2, $s1, $fp
	ld.bu	$s3, $s1, 0
	addi.d	$t8, $t8, 1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, -1
	beq	$s2, $s3, .LBB15_8
# %bb.10:                               # %.thread97.i
                                        #   in Loop: Header=BB15_5 Depth=1
	bgeu	$t5, $t8, .LBB15_13
# %bb.11:                               # %.thread100.i
                                        #   in Loop: Header=BB15_5 Depth=1
	st.w	$t8, $t2, 0
	addi.d	$t5, $t6, -1
	addi.d	$t6, $t2, 8
	st.w	$t5, $t2, 4
	move	$t2, $t6
	move	$t5, $t8
	b	.LBB15_13
.LBB15_12:                              #   in Loop: Header=BB15_5 Depth=1
	bltu	$t5, $a2, .LBB15_15
	.p2align	4, , 16
.LBB15_13:                              # %.thread.i
                                        #   in Loop: Header=BB15_5 Depth=1
	addi.w	$t1, $t1, -1
	beqz	$t1, .LBB15_16
# %bb.14:                               # %.thread.i
                                        #   in Loop: Header=BB15_5 Depth=1
	sub.w	$t6, $a5, $t7
	bltu	$t6, $t0, .LBB15_5
	b	.LBB15_16
.LBB15_15:
	st.w	$a2, $t2, 0
	addi.d	$a2, $t6, -1
	addi.d	$a3, $t2, 8
	st.w	$a2, $t2, 4
	move	$t2, $a3
.LBB15_16:                              # %Hc_GetMatchesSpec.exit
	ld.w	$a2, $a0, 24
	sub.d	$a1, $t2, $a1
	srli.d	$fp, $a1, 2
	addi.d	$a1, $a2, 1
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a0, 12
	st.w	$a1, $a0, 24
	st.d	$a4, $a0, 0
	addi.w	$a1, $a2, 1
	st.w	$a1, $a0, 8
	bne	$a1, $a3, .LBB15_18
.LBB15_17:                              # %MatchFinder_MovePos.exit.sink.split
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB15_18:                              # %MatchFinder_MovePos.exit
	addi.w	$a0, $fp, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	Hc3Zip_MatchFinder_GetMatches, .Lfunc_end15-Hc3Zip_MatchFinder_GetMatches
                                        # -- End function
	.globl	Bt3Zip_MatchFinder_Skip         # -- Begin function Bt3Zip_MatchFinder_Skip
	.p2align	5
	.type	Bt3Zip_MatchFinder_Skip,@function
Bt3Zip_MatchFinder_Skip:                # @Bt3Zip_MatchFinder_Skip
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
	move	$s0, $a0
	addi.d	$s1, $a0, 140
	ori	$s2, $zero, 2
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_1:                               # %MatchFinder_MovePos.exit.sink.split
                                        #   in Loop: Header=BB16_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB16_2:                               # %MatchFinder_MovePos.exit
                                        #   in Loop: Header=BB16_3 Depth=1
	addi.w	$fp, $fp, -1
	beqz	$fp, .LBB16_18
.LBB16_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_8 Depth 2
                                        #       Child Loop BB16_9 Depth 3
	ld.w	$t1, $s0, 20
	bltu	$s2, $t1, .LBB16_5
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	ld.w	$a0, $s0, 24
	addi.d	$a0, $a0, 1
	ld.d	$a1, $s0, 0
	st.w	$a0, $s0, 24
	ld.w	$a0, $s0, 8
	ld.w	$a2, $s0, 12
	addi.d	$a1, $a1, 1
	st.d	$a1, $s0, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a2, .LBB16_1
	b	.LBB16_2
	.p2align	4, , 16
.LBB16_5:                               #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a0, 1
	ld.bu	$a3, $a0, 2
	slli.d	$a1, $a1, 8
	slli.d	$a2, $a2, 2
	ldx.hu	$a2, $s1, $a2
	or	$a1, $a1, $a3
	ld.d	$a4, $s0, 40
	ld.w	$a3, $s0, 8
	xor	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$t0, $a4, $a1
	stx.w	$a3, $a4, $a1
	ld.w	$a4, $s0, 24
	ld.d	$a5, $s0, 48
	ld.w	$a6, $s0, 28
	slli.d	$a1, $a4, 3
	bstrpick.d	$a1, $a1, 33, 3
	alsl.d	$a2, $a1, $a5, 3
	sub.w	$t4, $a3, $t0
	addi.d	$a1, $a2, 4
	bgeu	$t4, $a6, .LBB16_15
# %bb.6:                                #   in Loop: Header=BB16_3 Depth=1
	ld.w	$a7, $s0, 60
	beqz	$a7, .LBB16_15
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	move	$t3, $zero
	move	$t2, $zero
	addi.w	$t1, $t1, -1
.LBB16_8:                               # %.lr.ph.i
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_9 Depth 3
	sub.d	$s3, $a4, $t4
	sltu	$t5, $a4, $t4
	maskeqz	$s4, $a6, $t5
	bstrpick.d	$t4, $t4, 31, 0
	sub.d	$t6, $a0, $t4
	sltu	$t4, $t2, $t3
	masknez	$t5, $t3, $t4
	maskeqz	$t4, $t2, $t4
	or	$t5, $t4, $t5
	bstrpick.d	$t4, $t5, 31, 0
	ldx.bu	$t7, $t6, $t4
	ldx.bu	$t8, $a0, $t4
	add.d	$t4, $s3, $s4
	slli.d	$t4, $t4, 3
	bstrpick.d	$t4, $t4, 33, 3
	alsl.d	$t4, $t4, $a5, 3
	bne	$t7, $t8, .LBB16_11
	.p2align	4, , 16
.LBB16_9:                               # %.preheader.i
                                        #   Parent Loop BB16_3 Depth=1
                                        #     Parent Loop BB16_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$t1, $t5, .LBB16_16
# %bb.10:                               #   in Loop: Header=BB16_9 Depth=3
	addi.w	$t5, $t5, 1
	bstrpick.d	$t8, $t5, 31, 0
	ldx.bu	$t7, $t6, $t8
	ldx.bu	$t8, $a0, $t8
	beq	$t7, $t8, .LBB16_9
.LBB16_11:                              # %.loopexit.i
                                        #   in Loop: Header=BB16_8 Depth=2
	bgeu	$t7, $t8, .LBB16_13
# %bb.12:                               #   in Loop: Header=BB16_8 Depth=2
	st.w	$t0, $a2, 0
	addi.d	$a2, $t4, 4
	move	$t3, $t5
	move	$t4, $a2
	addi.w	$a7, $a7, -1
	bnez	$a7, .LBB16_14
	b	.LBB16_15
	.p2align	4, , 16
.LBB16_13:                              #   in Loop: Header=BB16_8 Depth=2
	st.w	$t0, $a1, 0
	move	$t2, $t5
	move	$a1, $t4
	addi.w	$a7, $a7, -1
	beqz	$a7, .LBB16_15
.LBB16_14:                              #   in Loop: Header=BB16_8 Depth=2
	ld.w	$t0, $t4, 0
	sub.w	$t4, $a3, $t0
	bltu	$t4, $a6, .LBB16_8
	.p2align	4, , 16
.LBB16_15:                              # %._crit_edge.i
                                        #   in Loop: Header=BB16_3 Depth=1
	move	$a3, $zero
	st.w	$zero, $a2, 0
	b	.LBB16_17
	.p2align	4, , 16
.LBB16_16:                              #   in Loop: Header=BB16_3 Depth=1
	ld.w	$a3, $t4, 0
	st.w	$a3, $a2, 0
	ld.w	$a3, $t4, 4
.LBB16_17:                              # %SkipMatchesSpec.exit
                                        #   in Loop: Header=BB16_3 Depth=1
	st.w	$a3, $a1, 0
	ld.w	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	ld.w	$a2, $s0, 8
	ld.w	$a3, $s0, 12
	st.w	$a1, $s0, 24
	st.d	$a0, $s0, 0
	addi.w	$a0, $a2, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a3, .LBB16_1
	b	.LBB16_2
.LBB16_18:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end16:
	.size	Bt3Zip_MatchFinder_Skip, .Lfunc_end16-Bt3Zip_MatchFinder_Skip
                                        # -- End function
	.globl	Hc3Zip_MatchFinder_Skip         # -- Begin function Hc3Zip_MatchFinder_Skip
	.p2align	5
	.type	Hc3Zip_MatchFinder_Skip,@function
Hc3Zip_MatchFinder_Skip:                # @Hc3Zip_MatchFinder_Skip
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$s1, $a0, 140
	ori	$s2, $zero, 2
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_1:                               # %MatchFinder_MovePos.exit.sink.split
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB17_2:                               # %MatchFinder_MovePos.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	addi.w	$fp, $fp, -1
	beqz	$fp, .LBB17_6
.LBB17_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 20
	bltu	$s2, $a0, .LBB17_5
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	ld.w	$a0, $s0, 24
	addi.d	$a0, $a0, 1
	ld.d	$a1, $s0, 0
	st.w	$a0, $s0, 24
	ld.w	$a0, $s0, 8
	ld.w	$a2, $s0, 12
	addi.d	$a1, $a1, 1
	st.d	$a1, $s0, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a2, .LBB17_1
	b	.LBB17_2
	.p2align	4, , 16
.LBB17_5:                               #   in Loop: Header=BB17_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a0, 1
	ld.bu	$a3, $a0, 2
	slli.d	$a1, $a1, 8
	slli.d	$a2, $a2, 2
	ldx.hu	$a2, $s1, $a2
	or	$a1, $a1, $a3
	ld.d	$a3, $s0, 40
	ld.w	$a4, $s0, 8
	xor	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a3, $a1
	stx.w	$a4, $a3, $a1
	ld.wu	$a1, $s0, 24
	ld.d	$a3, $s0, 48
	slli.d	$a1, $a1, 2
	stx.w	$a2, $a3, $a1
	ld.w	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	ld.w	$a2, $s0, 8
	ld.w	$a3, $s0, 12
	st.w	$a1, $s0, 24
	st.d	$a0, $s0, 0
	addi.w	$a0, $a2, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a3, .LBB17_1
	b	.LBB17_2
.LBB17_6:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	Hc3Zip_MatchFinder_Skip, .Lfunc_end17-Hc3Zip_MatchFinder_Skip
                                        # -- End function
	.globl	MatchFinder_CreateVTable        # -- Begin function MatchFinder_CreateVTable
	.p2align	5
	.type	MatchFinder_CreateVTable,@function
MatchFinder_CreateVTable:               # @MatchFinder_CreateVTable
# %bb.0:
	pcalau12i	$a2, %pc_hi20(MatchFinder_Init)
	addi.d	$a2, $a2, %pc_lo12(MatchFinder_Init)
	st.d	$a2, $a1, 0
	pcalau12i	$a2, %pc_hi20(MatchFinder_GetIndexByte)
	addi.d	$a2, $a2, %pc_lo12(MatchFinder_GetIndexByte)
	st.d	$a2, $a1, 8
	pcalau12i	$a2, %pc_hi20(MatchFinder_GetNumAvailableBytes)
	addi.d	$a2, $a2, %pc_lo12(MatchFinder_GetNumAvailableBytes)
	st.d	$a2, $a1, 16
	pcalau12i	$a2, %pc_hi20(MatchFinder_GetPointerToCurrentPos)
	addi.d	$a2, $a2, %pc_lo12(MatchFinder_GetPointerToCurrentPos)
	ld.w	$a3, $a0, 112
	st.d	$a2, $a1, 24
	beqz	$a3, .LBB18_4
# %bb.1:
	ld.w	$a0, $a0, 96
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB18_5
# %bb.2:
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB18_6
# %bb.3:
	pcalau12i	$a0, %pc_hi20(Bt2_MatchFinder_GetMatches)
	addi.d	$a0, $a0, %pc_lo12(Bt2_MatchFinder_GetMatches)
	st.d	$a0, $a1, 32
	pcalau12i	$a0, %pc_hi20(Bt2_MatchFinder_Skip)
	addi.d	$a0, $a0, %pc_lo12(Bt2_MatchFinder_Skip)
	st.d	$a0, $a1, 40
	ret
.LBB18_4:
	pcalau12i	$a0, %pc_hi20(Hc4_MatchFinder_GetMatches)
	addi.d	$a0, $a0, %pc_lo12(Hc4_MatchFinder_GetMatches)
	st.d	$a0, $a1, 32
	pcalau12i	$a0, %pc_hi20(Hc4_MatchFinder_Skip)
	addi.d	$a0, $a0, %pc_lo12(Hc4_MatchFinder_Skip)
	st.d	$a0, $a1, 40
	ret
.LBB18_5:
	pcalau12i	$a0, %pc_hi20(Bt3_MatchFinder_GetMatches)
	addi.d	$a0, $a0, %pc_lo12(Bt3_MatchFinder_GetMatches)
	st.d	$a0, $a1, 32
	pcalau12i	$a0, %pc_hi20(Bt3_MatchFinder_Skip)
	addi.d	$a0, $a0, %pc_lo12(Bt3_MatchFinder_Skip)
	st.d	$a0, $a1, 40
	ret
.LBB18_6:
	pcalau12i	$a0, %pc_hi20(Bt4_MatchFinder_GetMatches)
	addi.d	$a0, $a0, %pc_lo12(Bt4_MatchFinder_GetMatches)
	st.d	$a0, $a1, 32
	pcalau12i	$a0, %pc_hi20(Bt4_MatchFinder_Skip)
	addi.d	$a0, $a0, %pc_lo12(Bt4_MatchFinder_Skip)
	st.d	$a0, $a1, 40
	ret
.Lfunc_end18:
	.size	MatchFinder_CreateVTable, .Lfunc_end18-MatchFinder_CreateVTable
                                        # -- End function
	.p2align	5                               # -- Begin function Hc4_MatchFinder_GetMatches
	.type	Hc4_MatchFinder_GetMatches,@function
Hc4_MatchFinder_GetMatches:             # @Hc4_MatchFinder_GetMatches
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a2, $a0, 20
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB19_2
# %bb.1:
	ld.w	$a1, $a0, 24
	move	$fp, $zero
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	st.w	$a1, $a0, 24
	ld.w	$a1, $a0, 8
	ld.w	$a3, $a0, 12
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	beq	$a1, $a3, .LBB19_32
	b	.LBB19_33
.LBB19_2:
	ld.d	$a3, $a0, 0
	ld.bu	$a4, $a3, 0
	addi.d	$a5, $a0, 140
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a5, $a4
	ld.bu	$a6, $a3, 1
	ld.bu	$a7, $a3, 2
	ld.bu	$t0, $a3, 3
	xor	$a4, $a4, $a6
	andi	$a6, $a4, 1023
	slli.d	$a7, $a7, 8
	slli.d	$t0, $t0, 2
	ldx.w	$a5, $a5, $t0
	xor	$a4, $a7, $a4
	bstrpick.d	$t0, $a4, 15, 0
	ld.w	$a7, $a0, 56
	slli.d	$a5, $a5, 5
	xor	$a4, $a4, $a5
	ld.d	$t1, $a0, 40
	and	$a4, $a4, $a7
	ld.w	$a7, $a0, 8
	slli.d	$a6, $a6, 2
	ldx.w	$t2, $t1, $a6
	alsl.d	$t3, $t0, $t1, 2
	lu12i.w	$a5, 1
	ldx.w	$t0, $t3, $a5
	addu16i.d	$a4, $a4, 1
	addi.d	$a4, $a4, 1024
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $t1, $a4
	stx.w	$a7, $t1, $a4
	stptr.w	$a7, $t3, 4096
	stx.w	$a7, $t1, $a6
	ld.w	$a4, $a0, 28
	sub.w	$a6, $a7, $t2
	bgeu	$a6, $a4, .LBB19_5
# %bb.3:
	bstrpick.d	$a4, $a6, 31, 0
	sub.d	$a4, $a3, $a4
	ld.bu	$a4, $a4, 0
	ld.bu	$t1, $a3, 0
	bne	$a4, $t1, .LBB19_5
# %bb.4:
	move	$t3, $zero
	ori	$fp, $zero, 2
	st.w	$fp, $a1, 0
	addi.d	$a4, $a6, -1
	st.w	$a4, $a1, 4
	ori	$t1, $zero, 2
	addi.d	$a4, $a3, 1
	bne	$t0, $t2, .LBB19_6
	b	.LBB19_9
.LBB19_5:
	move	$fp, $zero
	ori	$t3, $zero, 1
	ori	$t1, $zero, 1
	addi.d	$a4, $a3, 1
	beq	$t0, $t2, .LBB19_9
.LBB19_6:
	ld.w	$t2, $a0, 28
	sub.w	$a7, $a7, $t0
	bgeu	$a7, $t2, .LBB19_9
# %bb.7:
	bstrpick.d	$t0, $a7, 31, 0
	sub.d	$t0, $a3, $t0
	ld.bu	$t0, $t0, 0
	ld.bu	$t2, $a3, 0
	bne	$t0, $t2, .LBB19_9
# %bb.8:                                # %.thread
	addi.d	$a6, $a7, -1
	alsl.d	$t0, $fp, $a1, 2
	st.w	$a6, $t0, 4
	addi.d	$fp, $fp, 2
	ori	$t1, $zero, 3
	move	$a6, $a7
	b	.LBB19_11
.LBB19_9:
	beqz	$t3, .LBB19_11
# %bb.10:
	move	$fp, $zero
	ori	$a7, $zero, 3
	b	.LBB19_16
.LBB19_11:                              # %.lr.ph
	bstrpick.d	$a6, $a6, 31, 0
	.p2align	4, , 16
.LBB19_12:                              # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a7, $t1, 31, 0
	sub.d	$t0, $a7, $a6
	ldx.bu	$t0, $a3, $t0
	ldx.bu	$a7, $a3, $a7
	bne	$t0, $a7, .LBB19_15
# %bb.13:                               #   in Loop: Header=BB19_12 Depth=1
	addi.w	$t1, $t1, 1
	bne	$a2, $t1, .LBB19_12
# %bb.14:                               # %._crit_edge
	addi.d	$a3, $fp, -2
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	stx.w	$a2, $a1, $a3
	ld.wu	$a1, $a0, 24
	ld.d	$a2, $a0, 48
	slli.d	$a1, $a1, 2
	stx.w	$a5, $a2, $a1
	ld.w	$a1, $a0, 24
	addi.d	$a1, $a1, 1
	b	.LBB19_31
.LBB19_15:
	addi.d	$a6, $fp, -2
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	stx.w	$t1, $a1, $a6
	ori	$a6, $zero, 3
	sltu	$a7, $a6, $t1
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $t1, $a7
	or	$a7, $a7, $a6
.LBB19_16:
	ld.w	$t0, $a0, 8
	ld.d	$t1, $a0, 48
	ld.wu	$t2, $a0, 24
	ld.w	$t3, $a0, 28
	ld.w	$t4, $a0, 60
	alsl.d	$a6, $fp, $a1, 2
	slli.d	$t5, $t2, 2
	sub.w	$t6, $t0, $a5
	stx.w	$a5, $t1, $t5
	bgeu	$t6, $t3, .LBB19_30
# %bb.17:
	beqz	$t4, .LBB19_30
# %bb.18:                               # %.lr.ph.preheader.i
	bstrpick.d	$a5, $a2, 31, 0
	addi.d	$a5, $a5, -1
	addi.w	$t5, $t2, 0
	.p2align	4, , 16
.LBB19_19:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_22 Depth 2
	bstrpick.d	$fp, $t6, 31, 0
	sub.d	$t8, $a3, $fp
	sub.d	$t7, $t2, $t6
	sltu	$s0, $t5, $t6
	maskeqz	$s0, $t3, $s0
	add.d	$t7, $t7, $s0
	bstrpick.d	$t7, $t7, 31, 0
	slli.d	$t7, $t7, 2
	bstrpick.d	$s0, $a7, 31, 0
	ldx.bu	$s1, $t8, $s0
	ldx.bu	$s0, $a3, $s0
	ldx.w	$t7, $t1, $t7
	bne	$s1, $s0, .LBB19_27
# %bb.20:                               #   in Loop: Header=BB19_19 Depth=1
	ld.bu	$t8, $t8, 0
	ld.bu	$s0, $a3, 0
	bne	$t8, $s0, .LBB19_27
# %bb.21:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB19_19 Depth=1
	move	$t8, $zero
	sub.d	$fp, $zero, $fp
	move	$s0, $a5
	move	$s1, $a4
	.p2align	4, , 16
.LBB19_22:                              # %.preheader.i
                                        #   Parent Loop BB19_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s0, .LBB19_26
# %bb.23:                               #   in Loop: Header=BB19_22 Depth=2
	ldx.bu	$s2, $s1, $fp
	ld.bu	$s3, $s1, 0
	addi.w	$t8, $t8, 1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, -1
	beq	$s2, $s3, .LBB19_22
# %bb.24:                               # %.thread97.i
                                        #   in Loop: Header=BB19_19 Depth=1
	bgeu	$a7, $t8, .LBB19_27
# %bb.25:                               # %.thread100.i
                                        #   in Loop: Header=BB19_19 Depth=1
	st.w	$t8, $a6, 0
	addi.d	$a7, $t6, -1
	addi.d	$t6, $a6, 8
	st.w	$a7, $a6, 4
	move	$a6, $t6
	move	$a7, $t8
	b	.LBB19_27
.LBB19_26:                              #   in Loop: Header=BB19_19 Depth=1
	bltu	$a7, $a2, .LBB19_29
	.p2align	4, , 16
.LBB19_27:                              # %.thread.i
                                        #   in Loop: Header=BB19_19 Depth=1
	addi.w	$t4, $t4, -1
	beqz	$t4, .LBB19_30
# %bb.28:                               # %.thread.i
                                        #   in Loop: Header=BB19_19 Depth=1
	sub.w	$t6, $t0, $t7
	bltu	$t6, $t3, .LBB19_19
	b	.LBB19_30
.LBB19_29:
	st.w	$a2, $a6, 0
	addi.d	$a2, $t6, -1
	addi.d	$a3, $a6, 8
	st.w	$a2, $a6, 4
	move	$a6, $a3
.LBB19_30:                              # %Hc_GetMatchesSpec.exit
	ld.w	$a2, $a0, 24
	sub.d	$a1, $a6, $a1
	srli.d	$fp, $a1, 2
	addi.d	$a1, $a2, 1
.LBB19_31:                              # %Hc_GetMatchesSpec.exit
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a0, 12
	st.w	$a1, $a0, 24
	st.d	$a4, $a0, 0
	addi.w	$a1, $a2, 1
	st.w	$a1, $a0, 8
	bne	$a1, $a3, .LBB19_33
.LBB19_32:                              # %MatchFinder_MovePos.exit.sink.split
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB19_33:                              # %MatchFinder_MovePos.exit
	addi.w	$a0, $fp, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	Hc4_MatchFinder_GetMatches, .Lfunc_end19-Hc4_MatchFinder_GetMatches
                                        # -- End function
	.p2align	5                               # -- Begin function Hc4_MatchFinder_Skip
	.type	Hc4_MatchFinder_Skip,@function
Hc4_MatchFinder_Skip:                   # @Hc4_MatchFinder_Skip
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$s1, $a0, 140
	ori	$s2, $zero, 3
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_1:                               # %MatchFinder_MovePos.exit.sink.split
                                        #   in Loop: Header=BB20_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB20_2:                               # %MatchFinder_MovePos.exit
                                        #   in Loop: Header=BB20_3 Depth=1
	addi.w	$fp, $fp, -1
	beqz	$fp, .LBB20_6
.LBB20_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 20
	bltu	$s2, $a0, .LBB20_5
# %bb.4:                                #   in Loop: Header=BB20_3 Depth=1
	ld.w	$a0, $s0, 24
	addi.d	$a0, $a0, 1
	ld.d	$a1, $s0, 0
	st.w	$a0, $s0, 24
	ld.w	$a0, $s0, 8
	ld.w	$a2, $s0, 12
	addi.d	$a1, $a1, 1
	st.d	$a1, $s0, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a2, .LBB20_1
	b	.LBB20_2
	.p2align	4, , 16
.LBB20_5:                               #   in Loop: Header=BB20_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.bu	$a1, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s1, $a1
	ld.bu	$a2, $a0, 1
	ld.bu	$a3, $a0, 2
	ld.bu	$a4, $a0, 3
	xor	$a1, $a1, $a2
	andi	$a2, $a1, 1023
	slli.d	$a3, $a3, 8
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s1, $a4
	xor	$a1, $a3, $a1
	ld.w	$a3, $s0, 56
	bstrpick.d	$a5, $a1, 15, 0
	slli.d	$a4, $a4, 5
	xor	$a1, $a1, $a4
	and	$a1, $a1, $a3
	ld.d	$a3, $s0, 40
	addu16i.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1024
	ld.w	$a4, $s0, 8
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a6, $a3, $a1
	stx.w	$a4, $a3, $a1
	alsl.d	$a1, $a5, $a3, 2
	stptr.w	$a4, $a1, 4096
	slli.d	$a1, $a2, 2
	stx.w	$a4, $a3, $a1
	ld.wu	$a1, $s0, 24
	ld.d	$a2, $s0, 48
	slli.d	$a1, $a1, 2
	stx.w	$a6, $a2, $a1
	ld.w	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	ld.w	$a2, $s0, 8
	ld.w	$a3, $s0, 12
	st.w	$a1, $s0, 24
	st.d	$a0, $s0, 0
	addi.w	$a0, $a2, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a3, .LBB20_1
	b	.LBB20_2
.LBB20_6:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	Hc4_MatchFinder_Skip, .Lfunc_end20-Hc4_MatchFinder_Skip
                                        # -- End function
	.p2align	5                               # -- Begin function Bt2_MatchFinder_GetMatches
	.type	Bt2_MatchFinder_GetMatches,@function
Bt2_MatchFinder_GetMatches:             # @Bt2_MatchFinder_GetMatches
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
	ld.w	$a4, $a0, 20
	ori	$a2, $zero, 1
	bltu	$a2, $a4, .LBB21_2
# %bb.1:
	ld.w	$a1, $a0, 24
	move	$fp, $zero
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	st.w	$a1, $a0, 24
	ld.w	$a1, $a0, 8
	ld.w	$a3, $a0, 12
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	beq	$a1, $a3, .LBB21_24
	b	.LBB21_25
.LBB21_2:
	ld.d	$a6, $a0, 0
	ld.bu	$a2, $a6, 1
	ld.d	$a3, $a0, 40
	ld.bu	$a5, $a6, 0
	slli.d	$a2, $a2, 10
	ld.w	$a7, $a0, 8
	add.d	$a2, $a3, $a2
	slli.d	$a3, $a5, 2
	ldx.w	$t5, $a2, $a3
	stx.w	$a7, $a2, $a3
	ld.w	$t0, $a0, 24
	addi.d	$a2, $a6, 1
	ld.d	$t1, $a0, 48
	ld.w	$t2, $a0, 28
	slli.d	$a3, $t0, 3
	bstrpick.d	$a3, $a3, 33, 3
	alsl.d	$a5, $a3, $t1, 3
	sub.w	$fp, $a7, $t5
	addi.d	$a3, $a5, 4
	bgeu	$fp, $t2, .LBB21_21
# %bb.3:
	ld.w	$t4, $a0, 60
	beqz	$t4, .LBB21_21
# %bb.4:                                # %.lr.ph.i.preheader
	move	$t7, $zero
	move	$t6, $zero
	ori	$t8, $zero, 1
	move	$t3, $a1
	.p2align	4, , 16
.LBB21_5:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_9 Depth 2
	sub.d	$s0, $t0, $fp
	sltu	$s1, $t0, $fp
	maskeqz	$s3, $t2, $s1
	bstrpick.d	$s1, $fp, 31, 0
	sub.d	$s1, $a6, $s1
	sltu	$s2, $t6, $t7
	masknez	$s4, $t7, $s2
	maskeqz	$s2, $t6, $s2
	or	$s2, $s2, $s4
	bstrpick.d	$s4, $s2, 31, 0
	ldx.bu	$s5, $s1, $s4
	ldx.bu	$s4, $a6, $s4
	add.d	$s0, $s0, $s3
	slli.d	$s0, $s0, 3
	bstrpick.d	$s0, $s0, 33, 3
	alsl.d	$s0, $s0, $t1, 3
	bne	$s5, $s4, .LBB21_16
# %bb.6:                                #   in Loop: Header=BB21_5 Depth=1
	addi.w	$s4, $s2, 1
	move	$s3, $a4
	beq	$s4, $a4, .LBB21_12
# %bb.7:                                #   in Loop: Header=BB21_5 Depth=1
	bstrpick.d	$s3, $s4, 31, 0
	ldx.bu	$s5, $s1, $s3
	ldx.bu	$s6, $a6, $s3
	move	$s3, $s4
	bne	$s5, $s6, .LBB21_12
# %bb.8:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB21_5 Depth=1
	addi.w	$s2, $s2, 2
	.p2align	4, , 16
.LBB21_9:                               # %.preheader.i
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a4, $s2, .LBB21_20
# %bb.10:                               #   in Loop: Header=BB21_9 Depth=2
	bstrpick.d	$s3, $s2, 31, 0
	ldx.bu	$s4, $s1, $s3
	ldx.bu	$s3, $a6, $s3
	addi.w	$s2, $s2, 1
	beq	$s4, $s3, .LBB21_9
# %bb.11:                               # %..loopexit.i.loopexit_crit_edge
                                        #   in Loop: Header=BB21_5 Depth=1
	addi.w	$s3, $s2, -1
	.p2align	4, , 16
.LBB21_12:                              # %.loopexit.i
                                        #   in Loop: Header=BB21_5 Depth=1
	bgeu	$t8, $s3, .LBB21_15
.LBB21_13:                              #   in Loop: Header=BB21_5 Depth=1
	st.w	$s3, $t3, 0
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t3, 8
	st.w	$fp, $t3, 4
	beq	$s3, $a4, .LBB21_26
# %bb.14:                               #   in Loop: Header=BB21_5 Depth=1
	move	$t3, $t8
	move	$t8, $s3
.LBB21_15:                              #   in Loop: Header=BB21_5 Depth=1
	move	$s2, $s3
.LBB21_16:                              #   in Loop: Header=BB21_5 Depth=1
	bstrpick.d	$fp, $s2, 31, 0
	ldx.bu	$s1, $s1, $fp
	ldx.bu	$fp, $a6, $fp
	bgeu	$s1, $fp, .LBB21_18
# %bb.17:                               #   in Loop: Header=BB21_5 Depth=1
	st.w	$t5, $a5, 0
	addi.d	$a5, $s0, 4
	move	$t7, $s2
	move	$s0, $a5
	addi.w	$t4, $t4, -1
	bnez	$t4, .LBB21_19
	b	.LBB21_22
	.p2align	4, , 16
.LBB21_18:                              #   in Loop: Header=BB21_5 Depth=1
	st.w	$t5, $a3, 0
	move	$a3, $s0
	move	$t6, $s2
	addi.w	$t4, $t4, -1
	beqz	$t4, .LBB21_22
.LBB21_19:                              #   in Loop: Header=BB21_5 Depth=1
	ld.w	$t5, $s0, 0
	sub.w	$fp, $a7, $t5
	bltu	$fp, $t2, .LBB21_5
	b	.LBB21_22
.LBB21_20:                              #   in Loop: Header=BB21_5 Depth=1
	move	$s3, $a4
	bltu	$t8, $s3, .LBB21_13
	b	.LBB21_15
.LBB21_21:
	move	$t3, $a1
.LBB21_22:                              # %._crit_edge.i
	move	$a4, $zero
	st.w	$zero, $a5, 0
	move	$t8, $t3
.LBB21_23:                              # %GetMatchesSpec1.exit
	st.w	$a4, $a3, 0
	ld.w	$a3, $a0, 24
	sub.d	$a1, $t8, $a1
	srli.d	$fp, $a1, 2
	addi.d	$a1, $a3, 1
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a0, 12
	st.w	$a1, $a0, 24
	st.d	$a2, $a0, 0
	addi.w	$a1, $a3, 1
	st.w	$a1, $a0, 8
	bne	$a1, $a4, .LBB21_25
.LBB21_24:                              # %MatchFinder_MovePos.exit.sink.split
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB21_25:                              # %MatchFinder_MovePos.exit
	addi.w	$a0, $fp, 0
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
.LBB21_26:
	ld.w	$a4, $s0, 0
	st.w	$a4, $a5, 0
	ld.w	$a4, $s0, 4
	b	.LBB21_23
.Lfunc_end21:
	.size	Bt2_MatchFinder_GetMatches, .Lfunc_end21-Bt2_MatchFinder_GetMatches
                                        # -- End function
	.p2align	5                               # -- Begin function Bt2_MatchFinder_Skip
	.type	Bt2_MatchFinder_Skip,@function
Bt2_MatchFinder_Skip:                   # @Bt2_MatchFinder_Skip
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$s1, $zero, 1
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_1:                               # %MatchFinder_MovePos.exit.sink.split
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB22_2:                               # %MatchFinder_MovePos.exit
                                        #   in Loop: Header=BB22_3 Depth=1
	addi.w	$fp, $fp, -1
	beqz	$fp, .LBB22_18
.LBB22_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_8 Depth 2
                                        #       Child Loop BB22_9 Depth 3
	ld.w	$t1, $s0, 20
	bltu	$s1, $t1, .LBB22_5
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $s0, 24
	addi.d	$a0, $a0, 1
	ld.d	$a1, $s0, 0
	st.w	$a0, $s0, 24
	ld.w	$a0, $s0, 8
	ld.w	$a2, $s0, 12
	addi.d	$a1, $a1, 1
	st.d	$a1, $s0, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a2, .LBB22_1
	b	.LBB22_2
	.p2align	4, , 16
.LBB22_5:                               #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.bu	$a1, $a0, 1
	ld.d	$a2, $s0, 40
	ld.bu	$a4, $a0, 0
	slli.d	$a1, $a1, 10
	ld.w	$a3, $s0, 8
	add.d	$a1, $a2, $a1
	slli.d	$a2, $a4, 2
	ldx.w	$t0, $a1, $a2
	stx.w	$a3, $a1, $a2
	ld.w	$a4, $s0, 24
	ld.d	$a5, $s0, 48
	ld.w	$a6, $s0, 28
	slli.d	$a1, $a4, 3
	bstrpick.d	$a1, $a1, 33, 3
	alsl.d	$a2, $a1, $a5, 3
	sub.w	$t4, $a3, $t0
	addi.d	$a1, $a2, 4
	bgeu	$t4, $a6, .LBB22_15
# %bb.6:                                #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a7, $s0, 60
	beqz	$a7, .LBB22_15
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$t3, $zero
	move	$t2, $zero
	addi.w	$t1, $t1, -1
.LBB22_8:                               # %.lr.ph.i
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_9 Depth 3
	sub.d	$s2, $a4, $t4
	sltu	$t5, $a4, $t4
	maskeqz	$s3, $a6, $t5
	bstrpick.d	$t4, $t4, 31, 0
	sub.d	$t6, $a0, $t4
	sltu	$t4, $t2, $t3
	masknez	$t5, $t3, $t4
	maskeqz	$t4, $t2, $t4
	or	$t5, $t4, $t5
	bstrpick.d	$t4, $t5, 31, 0
	ldx.bu	$t7, $t6, $t4
	ldx.bu	$t8, $a0, $t4
	add.d	$t4, $s2, $s3
	slli.d	$t4, $t4, 3
	bstrpick.d	$t4, $t4, 33, 3
	alsl.d	$t4, $t4, $a5, 3
	bne	$t7, $t8, .LBB22_11
	.p2align	4, , 16
.LBB22_9:                               # %.preheader.i
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$t1, $t5, .LBB22_16
# %bb.10:                               #   in Loop: Header=BB22_9 Depth=3
	addi.w	$t5, $t5, 1
	bstrpick.d	$t8, $t5, 31, 0
	ldx.bu	$t7, $t6, $t8
	ldx.bu	$t8, $a0, $t8
	beq	$t7, $t8, .LBB22_9
.LBB22_11:                              # %.loopexit.i
                                        #   in Loop: Header=BB22_8 Depth=2
	bgeu	$t7, $t8, .LBB22_13
# %bb.12:                               #   in Loop: Header=BB22_8 Depth=2
	st.w	$t0, $a2, 0
	addi.d	$a2, $t4, 4
	move	$t3, $t5
	move	$t4, $a2
	addi.w	$a7, $a7, -1
	bnez	$a7, .LBB22_14
	b	.LBB22_15
	.p2align	4, , 16
.LBB22_13:                              #   in Loop: Header=BB22_8 Depth=2
	st.w	$t0, $a1, 0
	move	$t2, $t5
	move	$a1, $t4
	addi.w	$a7, $a7, -1
	beqz	$a7, .LBB22_15
.LBB22_14:                              #   in Loop: Header=BB22_8 Depth=2
	ld.w	$t0, $t4, 0
	sub.w	$t4, $a3, $t0
	bltu	$t4, $a6, .LBB22_8
	.p2align	4, , 16
.LBB22_15:                              # %._crit_edge.i
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$a3, $zero
	st.w	$zero, $a2, 0
	b	.LBB22_17
	.p2align	4, , 16
.LBB22_16:                              #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a3, $t4, 0
	st.w	$a3, $a2, 0
	ld.w	$a3, $t4, 4
.LBB22_17:                              # %SkipMatchesSpec.exit
                                        #   in Loop: Header=BB22_3 Depth=1
	st.w	$a3, $a1, 0
	ld.w	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	ld.w	$a2, $s0, 8
	ld.w	$a3, $s0, 12
	st.w	$a1, $s0, 24
	st.d	$a0, $s0, 0
	addi.w	$a0, $a2, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a3, .LBB22_1
	b	.LBB22_2
.LBB22_18:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end22:
	.size	Bt2_MatchFinder_Skip, .Lfunc_end22-Bt2_MatchFinder_Skip
                                        # -- End function
	.p2align	5                               # -- Begin function Bt3_MatchFinder_GetMatches
	.type	Bt3_MatchFinder_GetMatches,@function
Bt3_MatchFinder_GetMatches:             # @Bt3_MatchFinder_GetMatches
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
	ld.w	$a5, $a0, 20
	ori	$a6, $zero, 2
	bltu	$a6, $a5, .LBB23_4
# %bb.1:
	ld.w	$a1, $a0, 24
	move	$fp, $zero
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	st.w	$a1, $a0, 24
	ld.w	$a1, $a0, 8
	ld.w	$a3, $a0, 12
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	bne	$a1, $a3, .LBB23_3
.LBB23_2:                               # %MatchFinder_MovePos.exit.sink.split
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB23_3:                               # %MatchFinder_MovePos.exit
	addi.w	$a0, $fp, 0
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
.LBB23_4:
	ld.d	$a3, $a0, 0
	ld.bu	$a2, $a3, 0
	alsl.d	$a2, $a2, $a0, 2
	ld.w	$a2, $a2, 140
	ld.bu	$a4, $a3, 1
	ld.bu	$a7, $a3, 2
	xor	$a2, $a2, $a4
	andi	$a4, $a2, 1023
	ld.w	$t0, $a0, 56
	slli.d	$a7, $a7, 8
	xor	$a2, $a7, $a2
	ld.d	$a7, $a0, 40
	and	$a2, $a2, $t0
	ld.w	$t0, $a0, 8
	slli.d	$t1, $a4, 2
	ldx.w	$t2, $a7, $t1
	addi.d	$a2, $a2, 1024
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a7, $a2
	stx.w	$t0, $a7, $a2
	stx.w	$t0, $a7, $t1
	ld.w	$a7, $a0, 28
	sub.w	$t0, $t0, $t2
	addi.d	$a2, $a3, 1
	bgeu	$t0, $a7, .LBB23_21
# %bb.5:
	bstrpick.d	$t1, $t0, 31, 0
	sub.d	$t2, $a3, $t1
	ld.bu	$t2, $t2, 0
	ld.bu	$t3, $a3, 0
	bne	$t2, $t3, .LBB23_21
# %bb.6:                                # %.lr.ph.preheader
	addi.d	$a7, $a3, 2
	sub.d	$t1, $zero, $t1
	ori	$a6, $zero, 2
	.p2align	4, , 16
.LBB23_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$t2, $a7, $t1
	ld.bu	$t3, $a7, 0
	bne	$t2, $t3, .LBB23_43
# %bb.8:                                #   in Loop: Header=BB23_7 Depth=1
	addi.w	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	bne	$a5, $a6, .LBB23_7
# %bb.9:                                # %._crit_edge
	st.w	$a5, $a1, 0
	addi.d	$a6, $t0, -1
	st.w	$a6, $a1, 4
	ld.w	$a7, $a0, 24
	ld.w	$t0, $a0, 8
	ld.d	$t1, $a0, 48
	ld.w	$t2, $a0, 28
	slli.d	$a1, $a7, 3
	bstrpick.d	$a1, $a1, 33, 3
	alsl.d	$a6, $a1, $t1, 3
	sub.w	$t6, $t0, $a4
	addi.d	$a1, $a6, 4
	bgeu	$t6, $t2, .LBB23_20
# %bb.10:                               # %._crit_edge
	ld.w	$t3, $a0, 60
	beqz	$t3, .LBB23_20
# %bb.11:                               # %.lr.ph.i.preheader
	move	$t5, $zero
	move	$t4, $zero
	addi.w	$a5, $a5, -1
.LBB23_12:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_13 Depth 2
	sub.d	$s1, $a7, $t6
	sltu	$t7, $a7, $t6
	maskeqz	$s2, $t2, $t7
	bstrpick.d	$t6, $t6, 31, 0
	sub.d	$t8, $a3, $t6
	sltu	$t6, $t4, $t5
	masknez	$t7, $t5, $t6
	maskeqz	$t6, $t4, $t6
	or	$t7, $t6, $t7
	bstrpick.d	$t6, $t7, 31, 0
	ldx.bu	$fp, $t8, $t6
	ldx.bu	$s0, $a3, $t6
	add.d	$t6, $s1, $s2
	slli.d	$t6, $t6, 3
	bstrpick.d	$t6, $t6, 33, 3
	alsl.d	$t6, $t6, $t1, 3
	bne	$fp, $s0, .LBB23_15
	.p2align	4, , 16
.LBB23_13:                              # %.preheader.i
                                        #   Parent Loop BB23_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a5, $t7, .LBB23_45
# %bb.14:                               #   in Loop: Header=BB23_13 Depth=2
	addi.w	$t7, $t7, 1
	bstrpick.d	$s0, $t7, 31, 0
	ldx.bu	$fp, $t8, $s0
	ldx.bu	$s0, $a3, $s0
	beq	$fp, $s0, .LBB23_13
.LBB23_15:                              # %.loopexit.i
                                        #   in Loop: Header=BB23_12 Depth=1
	bgeu	$fp, $s0, .LBB23_17
# %bb.16:                               #   in Loop: Header=BB23_12 Depth=1
	st.w	$a4, $a6, 0
	addi.d	$a6, $t6, 4
	move	$t5, $t7
	move	$t6, $a6
	b	.LBB23_18
.LBB23_17:                              #   in Loop: Header=BB23_12 Depth=1
	st.w	$a4, $a1, 0
	move	$t4, $t7
	move	$a1, $t6
.LBB23_18:                              #   in Loop: Header=BB23_12 Depth=1
	addi.w	$t3, $t3, -1
	beqz	$t3, .LBB23_20
# %bb.19:                               #   in Loop: Header=BB23_12 Depth=1
	ld.w	$a4, $t6, 0
	sub.w	$t6, $t0, $a4
	bltu	$t6, $t2, .LBB23_12
.LBB23_20:                              # %._crit_edge.i
	move	$a3, $zero
	st.w	$zero, $a6, 0
	b	.LBB23_46
.LBB23_21:
	move	$t0, $zero
.LBB23_22:
	ld.w	$t3, $a0, 24
	ld.w	$t4, $a0, 8
	ld.d	$t5, $a0, 48
	alsl.d	$t2, $t0, $a1, 2
	slli.d	$t0, $t3, 3
	bstrpick.d	$t0, $t0, 33, 3
	alsl.d	$t1, $t0, $t5, 3
	sub.w	$fp, $t4, $a4
	addi.d	$t0, $t1, 4
	bgeu	$fp, $a7, .LBB23_41
# %bb.23:
	ld.w	$t6, $a0, 60
	beqz	$t6, .LBB23_41
# %bb.24:                               # %.lr.ph.i79.preheader
	move	$t8, $zero
	move	$t7, $zero
	b	.LBB23_27
	.p2align	4, , 16
.LBB23_25:                              #   in Loop: Header=BB23_27 Depth=1
	st.w	$a4, $t0, 0
	move	$t0, $s0
	move	$t7, $s2
	addi.w	$t6, $t6, -1
	beqz	$t6, .LBB23_41
.LBB23_26:                              #   in Loop: Header=BB23_27 Depth=1
	ld.w	$a4, $s0, 0
	sub.w	$fp, $t4, $a4
	bgeu	$fp, $a7, .LBB23_41
.LBB23_27:                              # %.lr.ph.i79
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_31 Depth 2
	sub.d	$s0, $t3, $fp
	sltu	$s1, $t3, $fp
	maskeqz	$s3, $a7, $s1
	bstrpick.d	$s1, $fp, 31, 0
	sub.d	$s1, $a3, $s1
	sltu	$s2, $t7, $t8
	masknez	$s4, $t8, $s2
	maskeqz	$s2, $t7, $s2
	or	$s2, $s2, $s4
	bstrpick.d	$s4, $s2, 31, 0
	ldx.bu	$s5, $s1, $s4
	ldx.bu	$s4, $a3, $s4
	add.d	$s0, $s0, $s3
	slli.d	$s0, $s0, 3
	bstrpick.d	$s0, $s0, 33, 3
	alsl.d	$s0, $s0, $t5, 3
	bne	$s5, $s4, .LBB23_38
# %bb.28:                               #   in Loop: Header=BB23_27 Depth=1
	addi.w	$s4, $s2, 1
	move	$s3, $a5
	beq	$s4, $a5, .LBB23_34
# %bb.29:                               #   in Loop: Header=BB23_27 Depth=1
	bstrpick.d	$s3, $s4, 31, 0
	ldx.bu	$s5, $s1, $s3
	ldx.bu	$s6, $a3, $s3
	move	$s3, $s4
	bne	$s5, $s6, .LBB23_34
# %bb.30:                               # %.preheader.i85.preheader
                                        #   in Loop: Header=BB23_27 Depth=1
	addi.w	$s2, $s2, 2
	.p2align	4, , 16
.LBB23_31:                              # %.preheader.i85
                                        #   Parent Loop BB23_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a5, $s2, .LBB23_40
# %bb.32:                               #   in Loop: Header=BB23_31 Depth=2
	bstrpick.d	$s3, $s2, 31, 0
	ldx.bu	$s4, $s1, $s3
	ldx.bu	$s3, $a3, $s3
	addi.w	$s2, $s2, 1
	beq	$s4, $s3, .LBB23_31
# %bb.33:                               # %..loopexit.i83.loopexit_crit_edge
                                        #   in Loop: Header=BB23_27 Depth=1
	addi.w	$s3, $s2, -1
	.p2align	4, , 16
.LBB23_34:                              # %.loopexit.i83
                                        #   in Loop: Header=BB23_27 Depth=1
	bgeu	$a6, $s3, .LBB23_37
.LBB23_35:                              #   in Loop: Header=BB23_27 Depth=1
	st.w	$s3, $t2, 0
	addi.d	$fp, $fp, -1
	addi.d	$a6, $t2, 8
	st.w	$fp, $t2, 4
	beq	$s3, $a5, .LBB23_44
# %bb.36:                               #   in Loop: Header=BB23_27 Depth=1
	move	$t2, $a6
	move	$a6, $s3
.LBB23_37:                              #   in Loop: Header=BB23_27 Depth=1
	move	$s2, $s3
.LBB23_38:                              #   in Loop: Header=BB23_27 Depth=1
	bstrpick.d	$fp, $s2, 31, 0
	ldx.bu	$s1, $s1, $fp
	ldx.bu	$fp, $a3, $fp
	bgeu	$s1, $fp, .LBB23_25
# %bb.39:                               #   in Loop: Header=BB23_27 Depth=1
	st.w	$a4, $t1, 0
	addi.d	$t1, $s0, 4
	move	$t8, $s2
	move	$s0, $t1
	addi.w	$t6, $t6, -1
	bnez	$t6, .LBB23_26
	b	.LBB23_41
.LBB23_40:                              #   in Loop: Header=BB23_27 Depth=1
	move	$s3, $a5
	bltu	$a6, $s3, .LBB23_35
	b	.LBB23_37
.LBB23_41:                              # %._crit_edge.i77
	move	$a3, $zero
	st.w	$zero, $t1, 0
	move	$a6, $t2
.LBB23_42:                              # %GetMatchesSpec1.exit
	st.w	$a3, $t0, 0
	ld.w	$a3, $a0, 24
	sub.d	$a1, $a6, $a1
	srli.d	$fp, $a1, 2
	addi.d	$a1, $a3, 1
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a0, 12
	st.w	$a1, $a0, 24
	st.d	$a2, $a0, 0
	addi.w	$a1, $a3, 1
	st.w	$a1, $a0, 8
	beq	$a1, $a4, .LBB23_2
	b	.LBB23_3
.LBB23_43:
	st.w	$a6, $a1, 0
	addi.d	$a7, $t0, -1
	st.w	$a7, $a1, 4
	ld.w	$a7, $a0, 28
	ori	$t0, $zero, 2
	b	.LBB23_22
.LBB23_44:
	ld.w	$a3, $s0, 0
	st.w	$a3, $t1, 0
	ld.w	$a3, $s0, 4
	b	.LBB23_42
.LBB23_45:
	ld.w	$a3, $t6, 0
	st.w	$a3, $a6, 0
	ld.w	$a3, $t6, 4
.LBB23_46:                              # %SkipMatchesSpec.exit
	st.w	$a3, $a1, 0
	ld.w	$a1, $a0, 24
	addi.d	$a1, $a1, 1
	ld.w	$a3, $a0, 8
	st.w	$a1, $a0, 24
	ld.w	$a1, $a0, 12
	st.d	$a2, $a0, 0
	addi.w	$a2, $a3, 1
	st.w	$a2, $a0, 8
	ori	$fp, $zero, 2
	beq	$a2, $a1, .LBB23_2
	b	.LBB23_3
.Lfunc_end23:
	.size	Bt3_MatchFinder_GetMatches, .Lfunc_end23-Bt3_MatchFinder_GetMatches
                                        # -- End function
	.p2align	5                               # -- Begin function Bt3_MatchFinder_Skip
	.type	Bt3_MatchFinder_Skip,@function
Bt3_MatchFinder_Skip:                   # @Bt3_MatchFinder_Skip
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
	move	$s0, $a0
	addi.d	$s1, $a0, 140
	ori	$s2, $zero, 2
	b	.LBB24_3
	.p2align	4, , 16
.LBB24_1:                               # %MatchFinder_MovePos.exit.sink.split
                                        #   in Loop: Header=BB24_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB24_2:                               # %MatchFinder_MovePos.exit
                                        #   in Loop: Header=BB24_3 Depth=1
	addi.w	$fp, $fp, -1
	beqz	$fp, .LBB24_18
.LBB24_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_8 Depth 2
                                        #       Child Loop BB24_9 Depth 3
	ld.w	$t1, $s0, 20
	bltu	$s2, $t1, .LBB24_5
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	ld.w	$a0, $s0, 24
	addi.d	$a0, $a0, 1
	ld.d	$a1, $s0, 0
	st.w	$a0, $s0, 24
	ld.w	$a0, $s0, 8
	ld.w	$a2, $s0, 12
	addi.d	$a1, $a1, 1
	st.d	$a1, $s0, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a2, .LBB24_1
	b	.LBB24_2
	.p2align	4, , 16
.LBB24_5:                               #   in Loop: Header=BB24_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.bu	$a1, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s1, $a1
	ld.bu	$a2, $a0, 1
	ld.bu	$a3, $a0, 2
	xor	$a1, $a1, $a2
	ld.w	$a2, $s0, 56
	andi	$a4, $a1, 1023
	slli.d	$a3, $a3, 8
	xor	$a1, $a3, $a1
	and	$a1, $a1, $a2
	ld.d	$a2, $s0, 40
	addi.d	$a1, $a1, 1024
	ld.w	$a3, $s0, 8
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$t0, $a2, $a1
	stx.w	$a3, $a2, $a1
	slli.d	$a1, $a4, 2
	stx.w	$a3, $a2, $a1
	ld.w	$a3, $s0, 24
	ld.w	$a4, $s0, 8
	ld.d	$a5, $s0, 48
	ld.w	$a6, $s0, 28
	slli.d	$a1, $a3, 3
	bstrpick.d	$a1, $a1, 33, 3
	alsl.d	$a2, $a1, $a5, 3
	sub.w	$t4, $a4, $t0
	addi.d	$a1, $a2, 4
	bgeu	$t4, $a6, .LBB24_15
# %bb.6:                                #   in Loop: Header=BB24_3 Depth=1
	ld.w	$a7, $s0, 60
	beqz	$a7, .LBB24_15
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB24_3 Depth=1
	move	$t3, $zero
	move	$t2, $zero
	addi.w	$t1, $t1, -1
.LBB24_8:                               # %.lr.ph.i
                                        #   Parent Loop BB24_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_9 Depth 3
	sub.d	$s3, $a3, $t4
	sltu	$t5, $a3, $t4
	maskeqz	$s4, $a6, $t5
	bstrpick.d	$t4, $t4, 31, 0
	sub.d	$t6, $a0, $t4
	sltu	$t4, $t2, $t3
	masknez	$t5, $t3, $t4
	maskeqz	$t4, $t2, $t4
	or	$t5, $t4, $t5
	bstrpick.d	$t4, $t5, 31, 0
	ldx.bu	$t7, $t6, $t4
	ldx.bu	$t8, $a0, $t4
	add.d	$t4, $s3, $s4
	slli.d	$t4, $t4, 3
	bstrpick.d	$t4, $t4, 33, 3
	alsl.d	$t4, $t4, $a5, 3
	bne	$t7, $t8, .LBB24_11
	.p2align	4, , 16
.LBB24_9:                               # %.preheader.i
                                        #   Parent Loop BB24_3 Depth=1
                                        #     Parent Loop BB24_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$t1, $t5, .LBB24_16
# %bb.10:                               #   in Loop: Header=BB24_9 Depth=3
	addi.w	$t5, $t5, 1
	bstrpick.d	$t8, $t5, 31, 0
	ldx.bu	$t7, $t6, $t8
	ldx.bu	$t8, $a0, $t8
	beq	$t7, $t8, .LBB24_9
.LBB24_11:                              # %.loopexit.i
                                        #   in Loop: Header=BB24_8 Depth=2
	bgeu	$t7, $t8, .LBB24_13
# %bb.12:                               #   in Loop: Header=BB24_8 Depth=2
	st.w	$t0, $a2, 0
	addi.d	$a2, $t4, 4
	move	$t3, $t5
	move	$t4, $a2
	addi.w	$a7, $a7, -1
	bnez	$a7, .LBB24_14
	b	.LBB24_15
	.p2align	4, , 16
.LBB24_13:                              #   in Loop: Header=BB24_8 Depth=2
	st.w	$t0, $a1, 0
	move	$t2, $t5
	move	$a1, $t4
	addi.w	$a7, $a7, -1
	beqz	$a7, .LBB24_15
.LBB24_14:                              #   in Loop: Header=BB24_8 Depth=2
	ld.w	$t0, $t4, 0
	sub.w	$t4, $a4, $t0
	bltu	$t4, $a6, .LBB24_8
	.p2align	4, , 16
.LBB24_15:                              # %._crit_edge.i
                                        #   in Loop: Header=BB24_3 Depth=1
	move	$a3, $zero
	st.w	$zero, $a2, 0
	b	.LBB24_17
	.p2align	4, , 16
.LBB24_16:                              #   in Loop: Header=BB24_3 Depth=1
	ld.w	$a3, $t4, 0
	st.w	$a3, $a2, 0
	ld.w	$a3, $t4, 4
.LBB24_17:                              # %SkipMatchesSpec.exit
                                        #   in Loop: Header=BB24_3 Depth=1
	st.w	$a3, $a1, 0
	ld.w	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	ld.w	$a2, $s0, 8
	ld.w	$a3, $s0, 12
	st.w	$a1, $s0, 24
	st.d	$a0, $s0, 0
	addi.w	$a0, $a2, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a3, .LBB24_1
	b	.LBB24_2
.LBB24_18:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end24:
	.size	Bt3_MatchFinder_Skip, .Lfunc_end24-Bt3_MatchFinder_Skip
                                        # -- End function
	.p2align	5                               # -- Begin function Bt4_MatchFinder_GetMatches
	.type	Bt4_MatchFinder_GetMatches,@function
Bt4_MatchFinder_GetMatches:             # @Bt4_MatchFinder_GetMatches
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
	ld.w	$a5, $a0, 20
	ori	$a2, $zero, 3
	bltu	$a2, $a5, .LBB25_4
# %bb.1:
	ld.w	$a1, $a0, 24
	move	$fp, $zero
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	st.w	$a1, $a0, 24
	ld.w	$a1, $a0, 8
	ld.w	$a3, $a0, 12
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	bne	$a1, $a3, .LBB25_3
.LBB25_2:                               # %MatchFinder_MovePos.exit.sink.split
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB25_3:                               # %MatchFinder_MovePos.exit
	addi.w	$a0, $fp, 0
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
.LBB25_4:
	ld.d	$a3, $a0, 0
	ld.bu	$a2, $a3, 0
	addi.d	$a4, $a0, 140
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a4, $a2
	ld.bu	$a6, $a3, 1
	ld.bu	$a7, $a3, 2
	ld.bu	$t0, $a3, 3
	xor	$a2, $a2, $a6
	andi	$a6, $a2, 1023
	slli.d	$a7, $a7, 8
	slli.d	$t0, $t0, 2
	ldx.w	$a4, $a4, $t0
	xor	$a2, $a7, $a2
	bstrpick.d	$t0, $a2, 15, 0
	ld.w	$a7, $a0, 56
	slli.d	$a4, $a4, 5
	xor	$a2, $a2, $a4
	ld.d	$t1, $a0, 40
	and	$a2, $a2, $a7
	ld.w	$a7, $a0, 8
	slli.d	$a6, $a6, 2
	ldx.w	$t2, $t1, $a6
	alsl.d	$t3, $t0, $t1, 2
	lu12i.w	$a4, 1
	ldx.w	$t0, $t3, $a4
	addu16i.d	$a2, $a2, 1
	addi.d	$a2, $a2, 1024
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $t1, $a2
	stx.w	$a7, $t1, $a2
	stptr.w	$a7, $t3, 4096
	stx.w	$a7, $t1, $a6
	ld.w	$a2, $a0, 28
	sub.w	$a6, $a7, $t2
	bgeu	$a6, $a2, .LBB25_7
# %bb.5:
	bstrpick.d	$a2, $a6, 31, 0
	sub.d	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	ld.bu	$t1, $a3, 0
	bne	$a2, $t1, .LBB25_7
# %bb.6:
	move	$t3, $zero
	ori	$fp, $zero, 2
	st.w	$fp, $a1, 0
	addi.d	$a2, $a6, -1
	st.w	$a2, $a1, 4
	ori	$t1, $zero, 2
	addi.d	$a2, $a3, 1
	bne	$t0, $t2, .LBB25_8
	b	.LBB25_11
.LBB25_7:
	move	$fp, $zero
	ori	$t3, $zero, 1
	ori	$t1, $zero, 1
	addi.d	$a2, $a3, 1
	beq	$t0, $t2, .LBB25_11
.LBB25_8:
	ld.w	$t2, $a0, 28
	sub.w	$a7, $a7, $t0
	bgeu	$a7, $t2, .LBB25_11
# %bb.9:
	bstrpick.d	$t0, $a7, 31, 0
	sub.d	$t0, $a3, $t0
	ld.bu	$t0, $t0, 0
	ld.bu	$t2, $a3, 0
	bne	$t0, $t2, .LBB25_11
# %bb.10:                               # %.thread
	addi.d	$a6, $a7, -1
	alsl.d	$t0, $fp, $a1, 2
	st.w	$a6, $t0, 4
	addi.d	$fp, $fp, 2
	ori	$t1, $zero, 3
	move	$a6, $a7
	b	.LBB25_13
.LBB25_11:
	beqz	$t3, .LBB25_13
# %bb.12:
	move	$fp, $zero
	ori	$t1, $zero, 3
	b	.LBB25_29
.LBB25_13:                              # %.lr.ph
	bstrpick.d	$a6, $a6, 31, 0
	.p2align	4, , 16
.LBB25_14:                              # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a7, $t1, 31, 0
	sub.d	$t0, $a7, $a6
	ldx.bu	$t0, $a3, $t0
	ldx.bu	$a7, $a3, $a7
	bne	$t0, $a7, .LBB25_28
# %bb.15:                               #   in Loop: Header=BB25_14 Depth=1
	addi.w	$t1, $t1, 1
	bne	$a5, $t1, .LBB25_14
# %bb.16:                               # %._crit_edge
	addi.d	$a6, $fp, -2
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a1, $a6
	ld.w	$a7, $a0, 24
	ld.w	$t0, $a0, 8
	ld.d	$t1, $a0, 48
	ld.w	$t2, $a0, 28
	slli.d	$a1, $a7, 3
	bstrpick.d	$a1, $a1, 33, 3
	alsl.d	$a6, $a1, $t1, 3
	sub.w	$t6, $t0, $a4
	addi.d	$a1, $a6, 4
	bgeu	$t6, $t2, .LBB25_27
# %bb.17:                               # %._crit_edge
	ld.w	$t3, $a0, 60
	beqz	$t3, .LBB25_27
# %bb.18:                               # %.lr.ph.i.preheader
	move	$t5, $zero
	move	$t4, $zero
	addi.w	$a5, $a5, -1
.LBB25_19:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_20 Depth 2
	sub.d	$s2, $a7, $t6
	sltu	$t7, $a7, $t6
	maskeqz	$s3, $t2, $t7
	bstrpick.d	$t6, $t6, 31, 0
	sub.d	$t8, $a3, $t6
	sltu	$t6, $t4, $t5
	masknez	$t7, $t5, $t6
	maskeqz	$t6, $t4, $t6
	or	$t7, $t6, $t7
	bstrpick.d	$t6, $t7, 31, 0
	ldx.bu	$s0, $t8, $t6
	ldx.bu	$s1, $a3, $t6
	add.d	$t6, $s2, $s3
	slli.d	$t6, $t6, 3
	bstrpick.d	$t6, $t6, 33, 3
	alsl.d	$t6, $t6, $t1, 3
	bne	$s0, $s1, .LBB25_22
	.p2align	4, , 16
.LBB25_20:                              # %.preheader.i
                                        #   Parent Loop BB25_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a5, $t7, .LBB25_50
# %bb.21:                               #   in Loop: Header=BB25_20 Depth=2
	addi.w	$t7, $t7, 1
	bstrpick.d	$s1, $t7, 31, 0
	ldx.bu	$s0, $t8, $s1
	ldx.bu	$s1, $a3, $s1
	beq	$s0, $s1, .LBB25_20
.LBB25_22:                              # %.loopexit.i
                                        #   in Loop: Header=BB25_19 Depth=1
	bgeu	$s0, $s1, .LBB25_24
# %bb.23:                               #   in Loop: Header=BB25_19 Depth=1
	st.w	$a4, $a6, 0
	addi.d	$a6, $t6, 4
	move	$t5, $t7
	move	$t6, $a6
	b	.LBB25_25
.LBB25_24:                              #   in Loop: Header=BB25_19 Depth=1
	st.w	$a4, $a1, 0
	move	$t4, $t7
	move	$a1, $t6
.LBB25_25:                              #   in Loop: Header=BB25_19 Depth=1
	addi.w	$t3, $t3, -1
	beqz	$t3, .LBB25_27
# %bb.26:                               #   in Loop: Header=BB25_19 Depth=1
	ld.w	$a4, $t6, 0
	sub.w	$t6, $t0, $a4
	bltu	$t6, $t2, .LBB25_19
.LBB25_27:                              # %._crit_edge.i
	move	$a3, $zero
	st.w	$zero, $a6, 0
	b	.LBB25_51
.LBB25_28:
	addi.d	$a6, $fp, -2
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	stx.w	$t1, $a1, $a6
	ori	$a6, $zero, 3
	sltu	$a7, $a6, $t1
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $t1, $a7
	or	$t1, $a7, $a6
.LBB25_29:
	ld.w	$t2, $a0, 8
	ld.w	$t3, $a0, 24
	ld.d	$t4, $a0, 48
	ld.w	$t5, $a0, 28
	alsl.d	$t0, $fp, $a1, 2
	slli.d	$a6, $t3, 3
	bstrpick.d	$a6, $a6, 33, 3
	alsl.d	$a7, $a6, $t4, 3
	sub.w	$fp, $t2, $a4
	addi.d	$a6, $a7, 4
	bgeu	$fp, $t5, .LBB25_48
# %bb.30:
	ld.w	$t6, $a0, 60
	beqz	$t6, .LBB25_48
# %bb.31:                               # %.lr.ph.i111.preheader
	move	$t8, $zero
	move	$t7, $zero
	.p2align	4, , 16
.LBB25_32:                              # %.lr.ph.i111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_36 Depth 2
	sub.d	$s0, $t3, $fp
	sltu	$s1, $t3, $fp
	maskeqz	$s3, $t5, $s1
	bstrpick.d	$s1, $fp, 31, 0
	sub.d	$s1, $a3, $s1
	sltu	$s2, $t7, $t8
	masknez	$s4, $t8, $s2
	maskeqz	$s2, $t7, $s2
	or	$s2, $s2, $s4
	bstrpick.d	$s4, $s2, 31, 0
	ldx.bu	$s5, $s1, $s4
	ldx.bu	$s4, $a3, $s4
	add.d	$s0, $s0, $s3
	slli.d	$s0, $s0, 3
	bstrpick.d	$s0, $s0, 33, 3
	alsl.d	$s0, $s0, $t4, 3
	bne	$s5, $s4, .LBB25_43
# %bb.33:                               #   in Loop: Header=BB25_32 Depth=1
	addi.w	$s4, $s2, 1
	move	$s3, $a5
	beq	$s4, $a5, .LBB25_39
# %bb.34:                               #   in Loop: Header=BB25_32 Depth=1
	bstrpick.d	$s3, $s4, 31, 0
	ldx.bu	$s5, $s1, $s3
	ldx.bu	$s6, $a3, $s3
	move	$s3, $s4
	bne	$s5, $s6, .LBB25_39
# %bb.35:                               # %.preheader.i117.preheader
                                        #   in Loop: Header=BB25_32 Depth=1
	addi.w	$s2, $s2, 2
	.p2align	4, , 16
.LBB25_36:                              # %.preheader.i117
                                        #   Parent Loop BB25_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a5, $s2, .LBB25_47
# %bb.37:                               #   in Loop: Header=BB25_36 Depth=2
	bstrpick.d	$s3, $s2, 31, 0
	ldx.bu	$s4, $s1, $s3
	ldx.bu	$s3, $a3, $s3
	addi.w	$s2, $s2, 1
	beq	$s4, $s3, .LBB25_36
# %bb.38:                               # %..loopexit.i115.loopexit_crit_edge
                                        #   in Loop: Header=BB25_32 Depth=1
	addi.w	$s3, $s2, -1
	.p2align	4, , 16
.LBB25_39:                              # %.loopexit.i115
                                        #   in Loop: Header=BB25_32 Depth=1
	bgeu	$t1, $s3, .LBB25_42
.LBB25_40:                              #   in Loop: Header=BB25_32 Depth=1
	st.w	$s3, $t0, 0
	addi.d	$fp, $fp, -1
	addi.d	$t1, $t0, 8
	st.w	$fp, $t0, 4
	beq	$s3, $a5, .LBB25_53
# %bb.41:                               #   in Loop: Header=BB25_32 Depth=1
	move	$t0, $t1
	move	$t1, $s3
.LBB25_42:                              #   in Loop: Header=BB25_32 Depth=1
	move	$s2, $s3
.LBB25_43:                              #   in Loop: Header=BB25_32 Depth=1
	bstrpick.d	$fp, $s2, 31, 0
	ldx.bu	$s1, $s1, $fp
	ldx.bu	$fp, $a3, $fp
	bgeu	$s1, $fp, .LBB25_45
# %bb.44:                               #   in Loop: Header=BB25_32 Depth=1
	st.w	$a4, $a7, 0
	addi.d	$a7, $s0, 4
	move	$t8, $s2
	move	$s0, $a7
	addi.w	$t6, $t6, -1
	bnez	$t6, .LBB25_46
	b	.LBB25_48
	.p2align	4, , 16
.LBB25_45:                              #   in Loop: Header=BB25_32 Depth=1
	st.w	$a4, $a6, 0
	move	$a6, $s0
	move	$t7, $s2
	addi.w	$t6, $t6, -1
	beqz	$t6, .LBB25_48
.LBB25_46:                              #   in Loop: Header=BB25_32 Depth=1
	ld.w	$a4, $s0, 0
	sub.w	$fp, $t2, $a4
	bltu	$fp, $t5, .LBB25_32
	b	.LBB25_48
.LBB25_47:                              #   in Loop: Header=BB25_32 Depth=1
	move	$s3, $a5
	bltu	$t1, $s3, .LBB25_40
	b	.LBB25_42
.LBB25_48:                              # %._crit_edge.i109
	move	$a3, $zero
	st.w	$zero, $a7, 0
	move	$t1, $t0
.LBB25_49:                              # %GetMatchesSpec1.exit
	st.w	$a3, $a6, 0
	ld.w	$a3, $a0, 24
	sub.d	$a1, $t1, $a1
	srli.d	$fp, $a1, 2
	addi.d	$a1, $a3, 1
	b	.LBB25_52
.LBB25_50:
	ld.w	$a3, $t6, 0
	st.w	$a3, $a6, 0
	ld.w	$a3, $t6, 4
.LBB25_51:                              # %SkipMatchesSpec.exit
	st.w	$a3, $a1, 0
	ld.w	$a1, $a0, 24
	addi.d	$a1, $a1, 1
.LBB25_52:                              # %GetMatchesSpec1.exit
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a0, 12
	st.w	$a1, $a0, 24
	st.d	$a2, $a0, 0
	addi.w	$a1, $a3, 1
	st.w	$a1, $a0, 8
	beq	$a1, $a4, .LBB25_2
	b	.LBB25_3
.LBB25_53:
	ld.w	$a3, $s0, 0
	st.w	$a3, $a7, 0
	ld.w	$a3, $s0, 4
	b	.LBB25_49
.Lfunc_end25:
	.size	Bt4_MatchFinder_GetMatches, .Lfunc_end25-Bt4_MatchFinder_GetMatches
                                        # -- End function
	.p2align	5                               # -- Begin function Bt4_MatchFinder_Skip
	.type	Bt4_MatchFinder_Skip,@function
Bt4_MatchFinder_Skip:                   # @Bt4_MatchFinder_Skip
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
	move	$s0, $a0
	addi.d	$s1, $a0, 140
	ori	$s2, $zero, 3
	b	.LBB26_3
	.p2align	4, , 16
.LBB26_1:                               # %MatchFinder_MovePos.exit.sink.split
                                        #   in Loop: Header=BB26_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(MatchFinder_CheckLimits)
	jirl	$ra, $ra, 0
.LBB26_2:                               # %MatchFinder_MovePos.exit
                                        #   in Loop: Header=BB26_3 Depth=1
	addi.w	$fp, $fp, -1
	beqz	$fp, .LBB26_18
.LBB26_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_8 Depth 2
                                        #       Child Loop BB26_9 Depth 3
	ld.w	$t1, $s0, 20
	bltu	$s2, $t1, .LBB26_5
# %bb.4:                                #   in Loop: Header=BB26_3 Depth=1
	ld.w	$a0, $s0, 24
	addi.d	$a0, $a0, 1
	ld.d	$a1, $s0, 0
	st.w	$a0, $s0, 24
	ld.w	$a0, $s0, 8
	ld.w	$a2, $s0, 12
	addi.d	$a1, $a1, 1
	st.d	$a1, $s0, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a2, .LBB26_1
	b	.LBB26_2
	.p2align	4, , 16
.LBB26_5:                               #   in Loop: Header=BB26_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.bu	$a1, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s1, $a1
	ld.bu	$a2, $a0, 1
	ld.bu	$a3, $a0, 2
	ld.bu	$a4, $a0, 3
	xor	$a1, $a1, $a2
	andi	$a2, $a1, 1023
	slli.d	$a3, $a3, 8
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s1, $a4
	xor	$a1, $a3, $a1
	ld.w	$a3, $s0, 56
	bstrpick.d	$a5, $a1, 15, 0
	slli.d	$a4, $a4, 5
	xor	$a1, $a1, $a4
	and	$a1, $a1, $a3
	ld.d	$a4, $s0, 40
	addu16i.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1024
	bstrpick.d	$a1, $a1, 31, 0
	ld.w	$a3, $s0, 8
	slli.d	$a1, $a1, 2
	ldx.w	$t0, $a4, $a1
	alsl.d	$a5, $a5, $a4, 2
	stptr.w	$a3, $a5, 4096
	slli.d	$a2, $a2, 2
	stx.w	$a3, $a4, $a2
	ld.w	$a3, $s0, 8
	stx.w	$a3, $a4, $a1
	ld.w	$a4, $s0, 24
	ld.d	$a5, $s0, 48
	ld.w	$a6, $s0, 28
	slli.d	$a1, $a4, 3
	bstrpick.d	$a1, $a1, 33, 3
	alsl.d	$a2, $a1, $a5, 3
	sub.w	$t4, $a3, $t0
	addi.d	$a1, $a2, 4
	bgeu	$t4, $a6, .LBB26_15
# %bb.6:                                #   in Loop: Header=BB26_3 Depth=1
	ld.w	$a7, $s0, 60
	beqz	$a7, .LBB26_15
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB26_3 Depth=1
	move	$t3, $zero
	move	$t2, $zero
	addi.w	$t1, $t1, -1
.LBB26_8:                               # %.lr.ph.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_9 Depth 3
	sub.d	$s3, $a4, $t4
	sltu	$t5, $a4, $t4
	maskeqz	$s4, $a6, $t5
	bstrpick.d	$t4, $t4, 31, 0
	sub.d	$t6, $a0, $t4
	sltu	$t4, $t2, $t3
	masknez	$t5, $t3, $t4
	maskeqz	$t4, $t2, $t4
	or	$t5, $t4, $t5
	bstrpick.d	$t4, $t5, 31, 0
	ldx.bu	$t7, $t6, $t4
	ldx.bu	$t8, $a0, $t4
	add.d	$t4, $s3, $s4
	slli.d	$t4, $t4, 3
	bstrpick.d	$t4, $t4, 33, 3
	alsl.d	$t4, $t4, $a5, 3
	bne	$t7, $t8, .LBB26_11
	.p2align	4, , 16
.LBB26_9:                               # %.preheader.i
                                        #   Parent Loop BB26_3 Depth=1
                                        #     Parent Loop BB26_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$t1, $t5, .LBB26_16
# %bb.10:                               #   in Loop: Header=BB26_9 Depth=3
	addi.w	$t5, $t5, 1
	bstrpick.d	$t8, $t5, 31, 0
	ldx.bu	$t7, $t6, $t8
	ldx.bu	$t8, $a0, $t8
	beq	$t7, $t8, .LBB26_9
.LBB26_11:                              # %.loopexit.i
                                        #   in Loop: Header=BB26_8 Depth=2
	bgeu	$t7, $t8, .LBB26_13
# %bb.12:                               #   in Loop: Header=BB26_8 Depth=2
	st.w	$t0, $a2, 0
	addi.d	$a2, $t4, 4
	move	$t3, $t5
	move	$t4, $a2
	addi.w	$a7, $a7, -1
	bnez	$a7, .LBB26_14
	b	.LBB26_15
	.p2align	4, , 16
.LBB26_13:                              #   in Loop: Header=BB26_8 Depth=2
	st.w	$t0, $a1, 0
	move	$t2, $t5
	move	$a1, $t4
	addi.w	$a7, $a7, -1
	beqz	$a7, .LBB26_15
.LBB26_14:                              #   in Loop: Header=BB26_8 Depth=2
	ld.w	$t0, $t4, 0
	sub.w	$t4, $a3, $t0
	bltu	$t4, $a6, .LBB26_8
	.p2align	4, , 16
.LBB26_15:                              # %._crit_edge.i
                                        #   in Loop: Header=BB26_3 Depth=1
	move	$a3, $zero
	st.w	$zero, $a2, 0
	b	.LBB26_17
	.p2align	4, , 16
.LBB26_16:                              #   in Loop: Header=BB26_3 Depth=1
	ld.w	$a3, $t4, 0
	st.w	$a3, $a2, 0
	ld.w	$a3, $t4, 4
.LBB26_17:                              # %SkipMatchesSpec.exit
                                        #   in Loop: Header=BB26_3 Depth=1
	st.w	$a3, $a1, 0
	ld.w	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	ld.w	$a2, $s0, 8
	ld.w	$a3, $s0, 12
	st.w	$a1, $s0, 24
	st.d	$a0, $s0, 0
	addi.w	$a0, $a2, 1
	st.w	$a0, $s0, 8
	beq	$a0, $a3, .LBB26_1
	b	.LBB26_2
.LBB26_18:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end26:
	.size	Bt4_MatchFinder_Skip, .Lfunc_end26-Bt4_MatchFinder_Skip
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym MatchFinder_GetPointerToCurrentPos
	.addrsig_sym MatchFinder_GetIndexByte
	.addrsig_sym MatchFinder_GetNumAvailableBytes
	.addrsig_sym MatchFinder_Init
	.addrsig_sym Hc4_MatchFinder_GetMatches
	.addrsig_sym Hc4_MatchFinder_Skip
	.addrsig_sym Bt2_MatchFinder_GetMatches
	.addrsig_sym Bt2_MatchFinder_Skip
	.addrsig_sym Bt3_MatchFinder_GetMatches
	.addrsig_sym Bt3_MatchFinder_Skip
	.addrsig_sym Bt4_MatchFinder_GetMatches
	.addrsig_sym Bt4_MatchFinder_Skip
