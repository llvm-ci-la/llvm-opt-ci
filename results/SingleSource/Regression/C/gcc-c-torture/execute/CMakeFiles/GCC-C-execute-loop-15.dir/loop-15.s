	.file	"loop-15.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	bgeu	$a0, $a1, .LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, -8
	addi.d	$a3, $a1, -8
	st.d	$a2, $a1, 0
	move	$a1, $a3
	bltu	$a0, $a3, .LBB0_1
.LBB0_2:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $zero
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 15
	addi.d	$a3, $sp, 8
	ori	$a4, $zero, 1
	addi.w	$a5, $zero, -1
	addi.d	$a6, $sp, 24
	pcalau12i	$a7, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_0)
	pcalau12i	$a7, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a7, %pc_lo12(.LCPI1_1)
	ori	$a7, $zero, 4
	ori	$t0, $zero, 7
	ori	$t1, $zero, 3
	ori	$t2, $zero, 5
	move	$t3, $a6
	addi.d	$t4, $sp, 16
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 1
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$a5, $a5, 1
	beq	$a0, $t2, .LBB1_19
.LBB1_2:                                # %.preheader33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_7 Depth 3
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_17 Depth 3
	move	$t5, $zero
	alsl.d	$t6, $a0, $a1, 3
	move	$t7, $a6
	move	$t8, $a3
	move	$fp, $a3
	move	$s0, $a2
	ori	$s1, $zero, 1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	beq	$t5, $t2, .LBB1_1
.LBB1_4:                                # %.preheader32
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_17 Depth 3
	vst	$vr0, $sp, 16
	vst	$vr1, $sp, 32
	st.d	$a7, $sp, 48
	bgeu	$a0, $t5, .LBB1_10
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_4 Depth=2
	alsl.d	$s2, $t5, $a2, 3
	alsl.d	$s3, $t5, $a3, 3
	sltu	$s4, $t6, $s3
	masknez	$s3, $s3, $s4
	maskeqz	$s4, $t6, $s4
	or	$s3, $s4, $s3
	sub.d	$s3, $s2, $s3
	alsl.d	$s2, $t5, $a1, 3
	beq	$s3, $t0, .LBB1_9
# %bb.6:                                # %vector.ph
                                        #   in Loop: Header=BB1_4 Depth=2
	sltu	$s4, $t4, $fp
	masknez	$s5, $fp, $s4
	maskeqz	$s4, $t4, $s4
	or	$s4, $s4, $s5
	sub.d	$s4, $s0, $s4
	srli.d	$s4, $s4, 3
	addi.d	$s4, $s4, 1
	bstrpick.d	$s4, $s4, 61, 1
	slli.d	$s4, $s4, 1
	srli.d	$s3, $s3, 3
	addi.d	$s3, $s3, 1
	bstrpick.d	$s6, $s3, 61, 1
	slli.d	$s5, $s6, 1
	slli.d	$s6, $s6, 4
	sub.d	$s2, $s2, $s6
	move	$s6, $t8
	.p2align	4, , 16
.LBB1_7:                                # %vector.body
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $s6, -8
	vst	$vr2, $s6, 0
	addi.d	$s4, $s4, -2
	addi.d	$s6, $s6, -16
	bnez	$s4, .LBB1_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB1_4 Depth=2
	beq	$s3, $s5, .LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %.lr.ph.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $s2, -8
	addi.d	$s4, $s2, -8
	st.d	$s3, $s2, 0
	move	$s2, $s4
	bltu	$t6, $s4, .LBB1_9
.LBB1_10:                               # %foo.exit.preheader
                                        #   in Loop: Header=BB1_4 Depth=2
	move	$s2, $zero
	addi.d	$s3, $sp, 16
	.p2align	4, , 16
.LBB1_11:                               # %foo.exit
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s3, 0
	bne	$s2, $s4, .LBB1_20
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=3
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	bne	$a4, $s2, .LBB1_11
# %bb.13:                               #   in Loop: Header=BB1_4 Depth=2
	move	$s2, $a5
	move	$s3, $t3
	.p2align	4, , 16
.LBB1_14:                               # %.preheader
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$s2, $s2, 1
	bgeu	$s2, $t5, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=3
	ld.d	$s4, $s3, 0
	addi.d	$s3, $s3, 8
	beq	$s2, $s4, .LBB1_14
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=2
	move	$s2, $t7
	move	$s3, $s1
	bltu	$t1, $t5, .LBB1_3
	.p2align	4, , 16
.LBB1_17:                               # %.lr.ph
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s2, 0
	bne	$s3, $s4, .LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=3
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bne	$s3, $t2, .LBB1_17
	b	.LBB1_3
.LBB1_19:
	move	$a0, $zero
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB1_20:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
