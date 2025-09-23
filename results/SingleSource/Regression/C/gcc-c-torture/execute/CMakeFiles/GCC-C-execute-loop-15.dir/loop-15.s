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
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $zero
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 15
	addi.d	$a3, $sp, 8
	addi.d	$a4, $sp, 0
	ori	$a5, $zero, 1
	addi.w	$a6, $zero, -1
	addi.d	$a7, $sp, 24
	pcalau12i	$t0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $t0, %pc_lo12(.LCPI1_0)
	pcalau12i	$t0, %pc_hi20(.LCPI1_1)
	vld	$vr1, $t0, %pc_lo12(.LCPI1_1)
	ori	$t0, $zero, 4
	ori	$t1, $zero, 24
	ori	$t2, $zero, 3
	ori	$t3, $zero, 5
	move	$t4, $a7
	addi.d	$t5, $sp, 16
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$a6, $a6, 1
	beq	$a0, $t3, .LBB1_19
.LBB1_2:                                # %.preheader33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_7 Depth 3
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_17 Depth 3
	move	$t6, $zero
	alsl.d	$t7, $a0, $a1, 3
	move	$t8, $a7
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	ori	$s2, $zero, 1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=2
	addi.d	$t6, $t6, 1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	beq	$t6, $t3, .LBB1_1
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
	st.d	$t0, $sp, 48
	bgeu	$a0, $t6, .LBB1_10
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_4 Depth=2
	alsl.d	$s3, $t6, $a2, 3
	alsl.d	$s4, $t6, $a3, 3
	sltu	$s5, $t7, $s4
	masknez	$s4, $s4, $s5
	maskeqz	$s5, $t7, $s5
	or	$s4, $s5, $s4
	sub.d	$s4, $s3, $s4
	alsl.d	$s3, $t6, $a1, 3
	bltu	$s4, $t1, .LBB1_9
# %bb.6:                                # %vector.ph
                                        #   in Loop: Header=BB1_4 Depth=2
	sltu	$s5, $t5, $s0
	masknez	$s6, $s0, $s5
	maskeqz	$s5, $t5, $s5
	or	$s5, $s5, $s6
	sub.d	$s5, $s1, $s5
	srli.d	$s5, $s5, 3
	addi.d	$s5, $s5, 1
	bstrpick.d	$s5, $s5, 61, 2
	slli.d	$s5, $s5, 2
	srli.d	$s4, $s4, 3
	addi.d	$s4, $s4, 1
	bstrpick.d	$s7, $s4, 61, 2
	slli.d	$s6, $s7, 2
	slli.d	$s7, $s7, 5
	sub.d	$s3, $s3, $s7
	move	$s7, $fp
	.p2align	4, , 16
.LBB1_7:                                # %vector.body
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $s7, 0
	vld	$vr3, $s7, -16
	vst	$vr2, $s7, 8
	vst	$vr3, $s7, -8
	addi.d	$s5, $s5, -4
	addi.d	$s7, $s7, -32
	bnez	$s5, .LBB1_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB1_4 Depth=2
	beq	$s4, $s6, .LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %.lr.ph.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s3, -8
	addi.d	$s5, $s3, -8
	st.d	$s4, $s3, 0
	move	$s3, $s5
	bltu	$t7, $s5, .LBB1_9
.LBB1_10:                               # %foo.exit.preheader
                                        #   in Loop: Header=BB1_4 Depth=2
	move	$s3, $zero
	addi.d	$s4, $sp, 16
	.p2align	4, , 16
.LBB1_11:                               # %foo.exit
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $s4, 0
	bne	$s3, $s5, .LBB1_20
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=3
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bne	$a5, $s3, .LBB1_11
# %bb.13:                               #   in Loop: Header=BB1_4 Depth=2
	move	$s3, $a6
	move	$s4, $t4
	.p2align	4, , 16
.LBB1_14:                               # %.preheader
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$s3, $s3, 1
	bgeu	$s3, $t6, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=3
	ld.d	$s5, $s4, 0
	addi.d	$s4, $s4, 8
	beq	$s3, $s5, .LBB1_14
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=2
	move	$s3, $t8
	move	$s4, $s2
	bltu	$t2, $t6, .LBB1_3
	.p2align	4, , 16
.LBB1_17:                               # %.lr.ph
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $s3, 0
	bne	$s4, $s5, .LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=3
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bne	$s4, $t3, .LBB1_17
	b	.LBB1_3
.LBB1_19:
	move	$a0, $zero
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
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
