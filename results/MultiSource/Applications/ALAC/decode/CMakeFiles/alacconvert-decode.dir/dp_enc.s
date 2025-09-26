	.file	"dp_enc.c"
	.text
	.globl	init_coefs                      # -- Begin function init_coefs
	.p2align	5
	.type	init_coefs,@function
init_coefs:                             # @init_coefs
# %bb.0:
	ori	$a3, $zero, 38
	sll.w	$a3, $a3, $a1
	srli.d	$a3, $a3, 4
	st.h	$a3, $a0, 0
	addi.d	$a3, $zero, -29
	sll.w	$a3, $a3, $a1
	srli.d	$a3, $a3, 4
	st.h	$a3, $a0, 2
	addi.d	$a3, $zero, -2
	sll.w	$a1, $a3, $a1
	srli.d	$a1, $a1, 4
	ori	$a3, $zero, 4
	st.h	$a1, $a0, 4
	blt	$a2, $a3, .LBB0_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 6
	slli.d	$a1, $a2, 1
	addi.d	$a2, $a1, -6
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB0_2:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	init_coefs, .Lfunc_end0-init_coefs
                                        # -- End function
	.globl	copy_coefs                      # -- Begin function copy_coefs
	.p2align	5
	.type	copy_coefs,@function
copy_coefs:                             # @copy_coefs
# %bb.0:
	blez	$a2, .LBB1_14
# %bb.1:                                # %iter.check
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$a2, $a4, .LBB1_12
# %bb.2:                                # %iter.check
	sub.d	$a4, $a1, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB1_12
# %bb.3:                                # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a2, $a3, .LBB1_8
# %bb.4:
	move	$a3, $zero
.LBB1_5:                                # %vec.epilog.ph
	move	$a6, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a4, $a6, $a3
	alsl.d	$a5, $a6, $a1, 1
	alsl.d	$a6, $a6, $a0, 1
	.p2align	4, , 16
.LBB1_6:                                # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB1_6
# %bb.7:                                # %vec.epilog.middle.block
	bne	$a3, $a2, .LBB1_12
	b	.LBB1_14
.LBB1_8:                                # %vector.ph
	andi	$a4, $a2, 8
	bstrpick.d	$a3, $a2, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a5, $a1, 16
	addi.d	$a6, $a0, 16
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB1_9
# %bb.10:                               # %middle.block
	beq	$a3, $a2, .LBB1_14
# %bb.11:                               # %vec.epilog.iter.check
	bnez	$a4, .LBB1_5
.LBB1_12:                               # %.lr.ph.preheader
	alsl.d	$a1, $a3, $a1, 1
	alsl.d	$a0, $a3, $a0, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a0, 0
	st.h	$a3, $a1, 0
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB1_13
.LBB1_14:                               # %._crit_edge
	ret
.Lfunc_end1:
	.size	copy_coefs, .Lfunc_end1-copy_coefs
                                        # -- End function
	.globl	pc_block                        # -- Begin function pc_block
	.p2align	5
	.type	pc_block,@function
pc_block:                               # @pc_block
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
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	beqz	$a4, .LBB2_11
# %bb.1:
	ori	$a7, $zero, 32
	ori	$t0, $zero, 31
	sub.d	$a5, $a7, $a5
	bne	$a4, $t0, .LBB2_14
# %bb.2:                                # %.preheader526
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB2_81
# %bb.3:                                # %.lr.ph.preheader
	ori	$a4, $zero, 9
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_9
# %bb.4:                                # %vector.memcheck
	addi.d	$a4, $a1, 4
	alsl.d	$a6, $a2, $a0, 2
	bgeu	$a4, $a6, .LBB2_6
# %bb.5:                                # %vector.memcheck
	alsl.d	$a4, $a2, $a1, 2
	bltu	$a0, $a4, .LBB2_9
.LBB2_6:                                # %vector.ph
	addi.d	$a4, $a2, -1
	move	$a6, $a4
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a3, $a4
	bstrins.d	$a3, $a7, 2, 0
	vreplgr2vr.w	$vr0, $a5
	addi.d	$a7, $a0, 16
	addi.d	$t0, $a1, 20
	move	$t1, $a6
	.p2align	4, , 16
.LBB2_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, -12
	vld	$vr2, $a7, 4
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vsub.w	$vr1, $vr1, $vr3
	vsub.w	$vr2, $vr2, $vr4
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsra.w	$vr1, $vr1, $vr0
	vsra.w	$vr2, $vr2, $vr0
	vst	$vr1, $t0, -16
	vst	$vr2, $t0, 0
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB2_7
# %bb.8:                                # %middle.block
	beq	$a4, $a6, .LBB2_81
.LBB2_9:                                # %.lr.ph.preheader681
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB2_10:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a0, -4
	sub.d	$a3, $a3, $a4
	sll.w	$a3, $a3, $a5
	sra.w	$a3, $a3, $a5
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB2_10
	b	.LBB2_81
.LBB2_11:
	beq	$a0, $a1, .LBB2_81
# %bb.12:
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB2_81
# %bb.13:
	addi.d	$a3, $a1, 4
	addi.d	$a1, $a0, 4
	slli.d	$a0, $a2, 2
	addi.d	$a2, $a0, -4
	move	$a0, $a3
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
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.LBB2_14:                               # %.preheader525
	addi.d	$a7, $a6, -1
	ori	$t0, $zero, 1
	addi.w	$t7, $a4, 1
	blez	$a4, .LBB2_23
# %bb.15:                               # %.lr.ph531.preheader
	bstrpick.d	$t1, $t7, 31, 0
	ori	$t3, $zero, 9
	ori	$t2, $zero, 1
	bltu	$t7, $t3, .LBB2_21
# %bb.16:                               # %vector.memcheck632
	addi.d	$t3, $a1, 4
	alsl.d	$t4, $t1, $a0, 2
	bgeu	$t3, $t4, .LBB2_18
# %bb.17:                               # %vector.memcheck632
	alsl.d	$t3, $t1, $a1, 2
	bltu	$a0, $t3, .LBB2_21
.LBB2_18:                               # %vector.ph641
	addi.d	$t3, $t1, -1
	move	$t4, $t3
	bstrins.d	$t4, $zero, 2, 0
	ori	$t5, $zero, 1
	move	$t2, $t3
	bstrins.d	$t2, $t5, 2, 0
	vreplgr2vr.w	$vr0, $a5
	addi.d	$t5, $a0, 16
	addi.d	$t6, $a1, 20
	move	$t8, $t4
	.p2align	4, , 16
.LBB2_19:                               # %vector.body646
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t5, -12
	vld	$vr2, $t5, 4
	vld	$vr3, $t5, -16
	vld	$vr4, $t5, 0
	vsub.w	$vr1, $vr1, $vr3
	vsub.w	$vr2, $vr2, $vr4
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsra.w	$vr1, $vr1, $vr0
	vsra.w	$vr2, $vr2, $vr0
	vst	$vr1, $t6, -16
	vst	$vr2, $t6, 0
	addi.d	$t5, $t5, 32
	addi.d	$t8, $t8, -8
	addi.d	$t6, $t6, 32
	bnez	$t8, .LBB2_19
# %bb.20:                               # %middle.block654
	beq	$t3, $t4, .LBB2_23
.LBB2_21:                               # %.lr.ph531.preheader680
	alsl.d	$t3, $t2, $a1, 2
	alsl.d	$t4, $t2, $a0, 2
	sub.d	$t1, $t1, $t2
	.p2align	4, , 16
.LBB2_22:                               # %.lr.ph531
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t4, 0
	ld.w	$t5, $t4, -4
	sub.d	$t2, $t2, $t5
	sll.w	$t2, $t2, $a5
	sra.w	$t2, $t2, $a5
	st.w	$t2, $t3, 0
	addi.d	$t3, $t3, 4
	addi.d	$t1, $t1, -1
	addi.d	$t4, $t4, 4
	bnez	$t1, .LBB2_22
.LBB2_23:                               # %._crit_edge
	ori	$t1, $zero, 4
	sll.w	$a7, $t0, $a7
	beq	$a4, $t1, .LBB2_47
# %bb.24:                               # %._crit_edge
	ori	$t0, $zero, 8
	bne	$a4, $t0, .LBB2_61
# %bb.25:
	ld.hu	$a4, $a3, 0
	ld.hu	$t0, $a3, 2
	ld.hu	$t1, $a3, 4
	ld.hu	$t2, $a3, 6
	ld.hu	$t6, $a3, 8
	ld.hu	$t5, $a3, 10
	ld.hu	$t4, $a3, 12
	ld.hu	$t3, $a3, 14
	ori	$t8, $zero, 10
	blt	$a2, $t8, .LBB2_46
# %bb.26:                               # %.lr.ph542.preheader
	slli.d	$t7, $t7, 2
	sub.d	$t7, $zero, $t7
	addi.d	$a0, $a0, 36
	addi.d	$a1, $a1, 36
	addi.d	$a2, $a2, -9
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_27:                               #   in Loop: Header=BB2_29 Depth=1
	bltz	$s7, .LBB2_38
.LBB2_28:                               #   in Loop: Header=BB2_29 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB2_46
.LBB2_29:                               # %.lr.ph542
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s6, $a0, $t7
	ld.w	$t8, $a0, -4
	ld.w	$fp, $a0, -8
	ld.w	$s0, $a0, -12
	ld.w	$s1, $a0, -16
	sub.w	$t8, $s6, $t8
	sub.w	$fp, $s6, $fp
	sub.w	$s0, $s6, $s0
	sub.w	$s1, $s6, $s1
	ld.w	$s2, $a0, -20
	ld.w	$s3, $a0, -24
	ld.w	$s4, $a0, -28
	ld.w	$s5, $a0, -32
	sub.w	$s2, $s6, $s2
	sub.w	$s3, $s6, $s3
	sub.w	$s4, $s6, $s4
	sub.w	$s5, $s6, $s5
	ext.w.h	$s7, $a4
	ext.w.h	$s8, $t0
	mul.d	$s7, $t8, $s7
	mul.d	$s8, $fp, $s8
	add.d	$s7, $s8, $s7
	ext.w.h	$s8, $t1
	mul.d	$s8, $s0, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t2
	mul.d	$s8, $s1, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t6
	mul.d	$s8, $s2, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t5
	mul.d	$s8, $s3, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t4
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t3
	mul.d	$s8, $s5, $s8
	add.d	$s7, $s7, $s8
	ld.w	$s8, $a0, 0
	sub.d	$s7, $a7, $s7
	sra.w	$s7, $s7, $a6
	add.d	$s6, $s6, $s7
	sub.d	$s6, $s8, $s6
	sll.w	$s6, $s6, $a5
	sra.w	$s6, $s6, $a5
	slt	$s8, $zero, $s6
	srai.d	$s7, $s6, 31
	or	$s8, $s7, $s8
	st.w	$s6, $a1, 0
	blez	$s8, .LBB2_27
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s7, $zero, $s5
	srai.d	$s8, $s5, 31
	or	$s7, $s8, $s7
	mul.d	$s5, $s7, $s5
	sra.w	$s5, $s5, $a6
	sub.w	$s5, $s6, $s5
	sub.d	$t3, $t3, $s7
	blez	$s5, .LBB2_28
# %bb.31:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s6, $zero, $s4
	srai.d	$s7, $s4, 31
	or	$s6, $s7, $s6
	mul.d	$s4, $s6, $s4
	sra.w	$s4, $s4, $a6
	slli.d	$s4, $s4, 1
	sub.w	$s4, $s5, $s4
	sub.d	$t4, $t4, $s6
	blez	$s4, .LBB2_28
# %bb.32:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s5, $zero, $s3
	srai.d	$s6, $s3, 31
	or	$s5, $s6, $s5
	mul.d	$s3, $s5, $s3
	sra.w	$s3, $s3, $a6
	alsl.d	$s3, $s3, $s3, 1
	sub.w	$s3, $s4, $s3
	sub.d	$t5, $t5, $s5
	blez	$s3, .LBB2_28
# %bb.33:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s4, $zero, $s2
	srai.d	$s5, $s2, 31
	or	$s4, $s5, $s4
	mul.d	$s2, $s4, $s2
	sra.w	$s2, $s2, $a6
	slli.d	$s2, $s2, 2
	sub.w	$s2, $s3, $s2
	sub.d	$t6, $t6, $s4
	blez	$s2, .LBB2_28
# %bb.34:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s3, $zero, $s1
	srai.d	$s4, $s1, 31
	or	$s3, $s4, $s3
	mul.d	$s1, $s3, $s1
	sra.w	$s1, $s1, $a6
	alsl.d	$s1, $s1, $s1, 2
	sub.w	$s1, $s2, $s1
	sub.d	$t2, $t2, $s3
	blez	$s1, .LBB2_28
# %bb.35:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s2, $zero, $s0
	srai.d	$s3, $s0, 31
	or	$s2, $s3, $s2
	mul.d	$s0, $s2, $s0
	sra.w	$s0, $s0, $a6
	addi.d	$s3, $zero, -6
	mul.d	$s0, $s0, $s3
	add.w	$s0, $s1, $s0
	sub.d	$t1, $t1, $s2
	blez	$s0, .LBB2_28
# %bb.36:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s1, $zero, $fp
	srai.d	$s2, $fp, 31
	or	$s1, $s2, $s1
	mul.d	$fp, $s1, $fp
	sra.w	$fp, $fp, $a6
	slli.d	$s2, $fp, 3
	sub.d	$fp, $fp, $s2
	add.w	$fp, $s0, $fp
	sub.d	$t0, $t0, $s1
	blez	$fp, .LBB2_28
# %bb.37:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$fp, $zero, $t8
	srai.d	$t8, $t8, 31
	or	$t8, $t8, $fp
	sub.d	$a4, $a4, $t8
	b	.LBB2_28
.LBB2_38:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s7, $zero, $s5
	srai.d	$s8, $s5, 31
	or	$s7, $s8, $s7
	mul.d	$s5, $s5, $s7
	sub.d	$s5, $zero, $s5
	sra.w	$s5, $s5, $a6
	sub.w	$s5, $s6, $s5
	add.d	$t3, $t3, $s7
	bgez	$s5, .LBB2_28
# %bb.39:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s6, $zero, $s4
	srai.d	$s7, $s4, 31
	or	$s6, $s7, $s6
	mul.d	$s4, $s4, $s6
	sub.d	$s4, $zero, $s4
	sra.w	$s4, $s4, $a6
	slli.d	$s4, $s4, 1
	sub.w	$s4, $s5, $s4
	add.d	$t4, $t4, $s6
	bgez	$s4, .LBB2_28
# %bb.40:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s5, $zero, $s3
	srai.d	$s6, $s3, 31
	or	$s5, $s6, $s5
	mul.d	$s3, $s3, $s5
	sub.d	$s3, $zero, $s3
	sra.w	$s3, $s3, $a6
	alsl.d	$s3, $s3, $s3, 1
	sub.w	$s3, $s4, $s3
	add.d	$t5, $t5, $s5
	bgez	$s3, .LBB2_28
# %bb.41:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s4, $zero, $s2
	srai.d	$s5, $s2, 31
	or	$s4, $s5, $s4
	mul.d	$s2, $s2, $s4
	sub.d	$s2, $zero, $s2
	sra.w	$s2, $s2, $a6
	slli.d	$s2, $s2, 2
	sub.w	$s2, $s3, $s2
	add.d	$t6, $t6, $s4
	bgez	$s2, .LBB2_28
# %bb.42:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s3, $zero, $s1
	srai.d	$s4, $s1, 31
	or	$s3, $s4, $s3
	mul.d	$s1, $s1, $s3
	sub.d	$s1, $zero, $s1
	sra.w	$s1, $s1, $a6
	alsl.d	$s1, $s1, $s1, 2
	sub.w	$s1, $s2, $s1
	add.d	$t2, $t2, $s3
	bgez	$s1, .LBB2_28
# %bb.43:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s2, $zero, $s0
	srai.d	$s3, $s0, 31
	or	$s2, $s3, $s2
	mul.d	$s0, $s0, $s2
	sub.d	$s0, $zero, $s0
	sra.w	$s0, $s0, $a6
	addi.d	$s3, $zero, -6
	mul.d	$s0, $s0, $s3
	add.w	$s0, $s1, $s0
	add.d	$t1, $t1, $s2
	bgez	$s0, .LBB2_28
# %bb.44:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s1, $zero, $fp
	srai.d	$s2, $fp, 31
	or	$s1, $s2, $s1
	mul.d	$fp, $fp, $s1
	sub.d	$fp, $zero, $fp
	sra.w	$fp, $fp, $a6
	slli.d	$s2, $fp, 3
	sub.d	$fp, $fp, $s2
	add.w	$fp, $s0, $fp
	add.d	$t0, $t0, $s1
	bgez	$fp, .LBB2_28
# %bb.45:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$fp, $zero, $t8
	srai.d	$t8, $t8, 31
	or	$t8, $t8, $fp
	add.d	$a4, $a4, $t8
	b	.LBB2_28
.LBB2_46:                               # %._crit_edge543
	st.h	$a4, $a3, 0
	st.h	$t0, $a3, 2
	st.h	$t1, $a3, 4
	st.h	$t2, $a3, 6
	st.h	$t6, $a3, 8
	st.h	$t5, $a3, 10
	st.h	$t4, $a3, 12
	st.h	$t3, $a3, 14
	b	.LBB2_81
.LBB2_47:
	ld.hu	$a4, $a3, 0
	ld.hu	$t0, $a3, 2
	ld.hu	$t1, $a3, 4
	ld.hu	$t2, $a3, 6
	ori	$t3, $zero, 6
	blt	$a2, $t3, .LBB2_60
# %bb.48:                               # %.lr.ph557.preheader
	slli.d	$t3, $t7, 2
	sub.d	$t3, $zero, $t3
	addi.d	$a0, $a0, 20
	addi.d	$a1, $a1, 20
	addi.d	$a2, $a2, -5
	b	.LBB2_51
	.p2align	4, , 16
.LBB2_49:                               #   in Loop: Header=BB2_51 Depth=1
	bltz	$fp, .LBB2_56
.LBB2_50:                               #   in Loop: Header=BB2_51 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB2_60
.LBB2_51:                               # %.lr.ph557
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t8, $a0, $t3
	ld.w	$t4, $a0, -4
	ld.w	$t5, $a0, -8
	ld.w	$t6, $a0, -12
	ld.w	$t7, $a0, -16
	sub.w	$t4, $t8, $t4
	sub.w	$t5, $t8, $t5
	sub.w	$t6, $t8, $t6
	sub.w	$t7, $t8, $t7
	ext.w.h	$fp, $a4
	ext.w.h	$s0, $t0
	ext.w.h	$s1, $t1
	ext.w.h	$s2, $t2
	mul.d	$fp, $t4, $fp
	mul.d	$s0, $t5, $s0
	mul.d	$s1, $t6, $s1
	mul.d	$s2, $t7, $s2
	add.d	$fp, $s0, $fp
	add.d	$fp, $fp, $s1
	add.d	$fp, $fp, $s2
	ld.w	$s0, $a0, 0
	sub.d	$fp, $a7, $fp
	sra.w	$fp, $fp, $a6
	add.d	$t8, $t8, $fp
	sub.d	$t8, $s0, $t8
	sll.w	$t8, $t8, $a5
	sra.w	$t8, $t8, $a5
	slt	$s0, $zero, $t8
	srai.d	$fp, $t8, 31
	or	$s0, $fp, $s0
	st.w	$t8, $a1, 0
	blez	$s0, .LBB2_49
# %bb.52:                               #   in Loop: Header=BB2_51 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $fp, $t7
	sra.w	$t7, $t7, $a6
	sub.w	$t7, $t8, $t7
	sub.d	$t2, $t2, $fp
	blez	$t7, .LBB2_50
# %bb.53:                               #   in Loop: Header=BB2_51 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$fp, $t6, 31
	or	$t8, $fp, $t8
	mul.d	$t6, $t8, $t6
	sra.w	$t6, $t6, $a6
	slli.d	$t6, $t6, 1
	sub.w	$t6, $t7, $t6
	sub.d	$t1, $t1, $t8
	blez	$t6, .LBB2_50
# %bb.54:                               #   in Loop: Header=BB2_51 Depth=1
	slt	$t7, $zero, $t5
	srai.d	$t8, $t5, 31
	or	$t7, $t8, $t7
	mul.d	$t5, $t7, $t5
	sra.w	$t5, $t5, $a6
	alsl.d	$t5, $t5, $t5, 1
	sub.w	$t5, $t6, $t5
	sub.d	$t0, $t0, $t7
	blez	$t5, .LBB2_50
# %bb.55:                               #   in Loop: Header=BB2_51 Depth=1
	slt	$t5, $zero, $t4
	srai.d	$t4, $t4, 31
	or	$t4, $t4, $t5
	sub.d	$a4, $a4, $t4
	b	.LBB2_50
.LBB2_56:                               #   in Loop: Header=BB2_51 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $t7, $fp
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	sub.w	$t7, $t8, $t7
	add.d	$t2, $t2, $fp
	bgez	$t7, .LBB2_50
# %bb.57:                               #   in Loop: Header=BB2_51 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$fp, $t6, 31
	or	$t8, $fp, $t8
	mul.d	$t6, $t6, $t8
	sub.d	$t6, $zero, $t6
	sra.w	$t6, $t6, $a6
	slli.d	$t6, $t6, 1
	sub.w	$t6, $t7, $t6
	add.d	$t1, $t1, $t8
	bgez	$t6, .LBB2_50
# %bb.58:                               #   in Loop: Header=BB2_51 Depth=1
	slt	$t7, $zero, $t5
	srai.d	$t8, $t5, 31
	or	$t7, $t8, $t7
	mul.d	$t5, $t5, $t7
	sub.d	$t5, $zero, $t5
	sra.w	$t5, $t5, $a6
	alsl.d	$t5, $t5, $t5, 1
	sub.w	$t5, $t6, $t5
	add.d	$t0, $t0, $t7
	bgez	$t5, .LBB2_50
# %bb.59:                               #   in Loop: Header=BB2_51 Depth=1
	slt	$t5, $zero, $t4
	srai.d	$t4, $t4, 31
	or	$t4, $t4, $t5
	add.d	$a4, $a4, $t4
	b	.LBB2_50
.LBB2_60:                               # %._crit_edge558
	st.h	$a4, $a3, 0
	st.h	$t0, $a3, 2
	st.h	$t1, $a3, 4
	st.h	$t2, $a3, 6
	b	.LBB2_81
.LBB2_61:                               # %.preheader523
	bge	$t7, $a2, .LBB2_81
# %bb.62:                               # %.lr.ph570
	bstrpick.d	$t0, $a4, 31, 0
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t1, $t1, 3
	addi.d	$t2, $a3, 8
	slli.d	$t6, $t7, 2
	alsl.d	$t4, $t7, $a0, 2
	addi.d	$t3, $t4, -16
	addi.d	$t4, $t4, -4
	alsl.d	$t5, $a4, $a3, 1
	addi.d	$t5, $t5, -2
	slli.d	$t8, $a4, 2
	sub.d	$t6, $t6, $t8
	add.d	$t6, $a0, $t6
	ori	$t8, $zero, 8
	vrepli.b	$vr0, 0
	move	$fp, $t7
	b	.LBB2_65
	.p2align	4, , 16
.LBB2_63:                               #   in Loop: Header=BB2_65 Depth=1
	bltz	$s2, .LBB2_78
.LBB2_64:                               # %.loopexit
                                        #   in Loop: Header=BB2_65 Depth=1
	addi.d	$fp, $fp, 1
	addi.w	$s0, $fp, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, 4
	beq	$a2, $s0, .LBB2_81
.LBB2_65:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_70 Depth 2
                                        #     Child Loop BB2_73 Depth 2
                                        #     Child Loop BB2_79 Depth 2
                                        #     Child Loop BB2_76 Depth 2
	sub.d	$s0, $fp, $t7
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a0, $s0
	blez	$a4, .LBB2_68
# %bb.66:                               # %.lr.ph566.preheader
                                        #   in Loop: Header=BB2_65 Depth=1
	bgeu	$a4, $t8, .LBB2_69
# %bb.67:                               #   in Loop: Header=BB2_65 Depth=1
	move	$s4, $zero
	move	$s1, $zero
	b	.LBB2_72
	.p2align	4, , 16
.LBB2_68:                               #   in Loop: Header=BB2_65 Depth=1
	move	$s1, $zero
	b	.LBB2_74
	.p2align	4, , 16
.LBB2_69:                               # %vector.ph659
                                        #   in Loop: Header=BB2_65 Depth=1
	vreplgr2vr.w	$vr1, $s0
	move	$s1, $t3
	move	$s2, $t2
	move	$s3, $t1
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB2_70:                               # %vector.body664
                                        #   Parent Loop BB2_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s2, -8
	ld.d	$s5, $s2, 0
	vinsgr2vr.d	$vr4, $s4, 0
	vinsgr2vr.d	$vr5, $s5, 0
	vld	$vr6, $s1, 0
	vld	$vr7, $s1, -16
	vsllwil.w.h	$vr4, $vr4, 0
	vsllwil.w.h	$vr5, $vr5, 0
	vshuf4i.w	$vr6, $vr6, 27
	vshuf4i.w	$vr7, $vr7, 27
	vsub.w	$vr6, $vr6, $vr1
	vsub.w	$vr7, $vr7, $vr1
	vmadd.w	$vr2, $vr6, $vr4
	vmadd.w	$vr3, $vr7, $vr5
	addi.d	$s3, $s3, -8
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, -32
	bnez	$s3, .LBB2_70
# %bb.71:                               # %middle.block673
                                        #   in Loop: Header=BB2_65 Depth=1
	vadd.w	$vr1, $vr3, $vr2
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$s1, $vr1, 0
	move	$s4, $t1
	beq	$t1, $t0, .LBB2_74
.LBB2_72:                               # %.lr.ph566.preheader677
                                        #   in Loop: Header=BB2_65 Depth=1
	slli.d	$s2, $s4, 2
	sub.d	$s2, $t4, $s2
	alsl.d	$s3, $s4, $a3, 1
	sub.d	$s4, $t0, $s4
	.p2align	4, , 16
.LBB2_73:                               # %.lr.ph566
                                        #   Parent Loop BB2_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s5, $s2, 0
	ld.h	$s6, $s3, 0
	sub.d	$s5, $s5, $s0
	mul.d	$s5, $s5, $s6
	add.d	$s1, $s5, $s1
	addi.d	$s2, $s2, -4
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 2
	bnez	$s4, .LBB2_73
.LBB2_74:                               # %._crit_edge567
                                        #   in Loop: Header=BB2_65 Depth=1
	alsl.d	$s2, $fp, $a0, 2
	ld.w	$s2, $s2, 0
	add.d	$s1, $s1, $a7
	sra.w	$s1, $s1, $a6
	add.d	$s1, $s1, $s0
	sub.d	$s1, $s2, $s1
	sll.w	$s1, $s1, $a5
	sra.w	$s1, $s1, $a5
	slli.d	$s3, $fp, 2
	slt	$s4, $zero, $s1
	srai.d	$s2, $s1, 31
	or	$s4, $s2, $s4
	stx.w	$s1, $a1, $s3
	blez	$s4, .LBB2_63
# %bb.75:                               # %.preheader.preheader
                                        #   in Loop: Header=BB2_65 Depth=1
	move	$s2, $zero
	addi.d	$s3, $zero, -1
	move	$s4, $t5
	move	$s5, $a4
	.p2align	4, , 16
.LBB2_76:                               # %.preheader
                                        #   Parent Loop BB2_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$s5, .LBB2_64
# %bb.77:                               #   in Loop: Header=BB2_76 Depth=2
	ldx.w	$s6, $t6, $s2
	sub.w	$s6, $s0, $s6
	slt	$s7, $zero, $s6
	ld.h	$s8, $s4, 0
	srai.d	$ra, $s6, 31
	or	$s7, $ra, $s7
	addi.d	$s5, $s5, -1
	sub.d	$s8, $s8, $s7
	st.h	$s8, $s4, 0
	mul.d	$s6, $s7, $s6
	sra.w	$s6, $s6, $a6
	mul.d	$s6, $s6, $s3
	add.w	$s1, $s6, $s1
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, -2
	addi.d	$s2, $s2, 4
	bgtz	$s1, .LBB2_76
	b	.LBB2_64
.LBB2_78:                               # %.preheader521.preheader
                                        #   in Loop: Header=BB2_65 Depth=1
	addi.d	$s2, $zero, -1
	move	$s3, $t6
	move	$s4, $t5
	move	$s5, $a4
	.p2align	4, , 16
.LBB2_79:                               # %.preheader521
                                        #   Parent Loop BB2_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$s5, .LBB2_64
# %bb.80:                               #   in Loop: Header=BB2_79 Depth=2
	ld.w	$s6, $s3, 0
	sub.w	$s6, $s0, $s6
	slt	$s7, $zero, $s6
	ld.h	$s8, $s4, 0
	srai.d	$ra, $s6, 31
	or	$s7, $ra, $s7
	addi.d	$s5, $s5, -1
	add.d	$s8, $s8, $s7
	st.h	$s8, $s4, 0
	mul.d	$s6, $s6, $s7
	sub.d	$s6, $zero, $s6
	sra.w	$s6, $s6, $a6
	mul.d	$s6, $s6, $s2
	add.w	$s1, $s6, $s1
	addi.d	$s2, $s2, -1
	addi.d	$s4, $s4, -2
	addi.d	$s3, $s3, 4
	bltz	$s1, .LBB2_79
	b	.LBB2_64
.LBB2_81:                               # %.loopexit524
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
.Lfunc_end2:
	.size	pc_block, .Lfunc_end2-pc_block
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
