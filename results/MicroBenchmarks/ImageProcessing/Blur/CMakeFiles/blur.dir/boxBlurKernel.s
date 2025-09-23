	.file	"boxBlurKernel.c"
	.text
	.globl	boxBlurKernel                   # -- Begin function boxBlurKernel
	.p2align	5
	.type	boxBlurKernel,@function
boxBlurKernel:                          # @boxBlurKernel
# %bb.0:
	ori	$a4, $zero, 9
	blt	$a0, $a4, .LBB0_11
# %bb.1:
	blt	$a1, $a4, .LBB0_11
# %bb.2:                                # %.preheader35.us.preheader
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
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a5, $a1, 31, 0
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, -4
	bstrpick.d	$a0, $a0, 31, 0
	bstrpick.d	$t1, $a1, 31, 0
	alsl.d	$a4, $a5, $a3, 4
	addi.d	$a7, $a4, 16
	slli.d	$a1, $a0, 2
	addi.d	$a1, $a1, -4
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a3, $a1
	alsl.d	$a1, $t1, $a1, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a3, $a0, 12
	add.d	$a3, $a2, $a3
	alsl.d	$t0, $t1, $a3, 2
	lu12i.w	$a3, 2
	ori	$a6, $a3, 12
	add.d	$t0, $t0, $a6
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $t1, -4
	sltu	$t0, $a7, $t0
	sltu	$a1, $a2, $a1
	and	$t0, $t0, $a1
	addi.w	$a1, $zero, -4
	and	$t1, $a0, $a1
	addi.d	$a1, $t1, 4
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	slli.d	$t2, $a5, 2
	lu12i.w	$a1, 4
	add.d	$a1, $a2, $a1
	lu12i.w	$t4, 3
	ori	$a5, $t4, 4080
	add.d	$a2, $a2, $a5
	ori	$t5, $zero, 4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	sltui	$a5, $a0, 4
	or	$a5, $a5, $t0
	andi	$a0, $a5, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$t7, -4
	ori	$t8, $t7, 16
	lu12i.w	$fp, -3
	ori	$s0, $fp, 16
	lu12i.w	$s1, -2
	ori	$s2, $s1, 16
	lu12i.w	$s3, -1
	lu12i.w	$s4, 1
	lu12i.w	$a5, 103563
	ori	$s5, $a5, 253
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$t5, $t5, 1
	add.d	$a7, $a7, $t2
	add.d	$a1, $a1, $s4
	add.d	$a4, $a4, $t2
	add.d	$a2, $a2, $s4
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$t5, $a0, .LBB0_10
.LBB0_4:                                # %.preheader35.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	ori	$s6, $s3, 16
	ori	$s7, $s4, 16
	ori	$s8, $a3, 16
	ori	$ra, $t4, 16
	ori	$t3, $zero, 4
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_8
# %bb.5:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t3, $a1
	move	$t0, $t1
	move	$a5, $a7
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $t3, $t7
	ori	$a0, $t7, 4
	vldx	$vr1, $t3, $a0
	ori	$a0, $t7, 8
	vldx	$vr2, $t3, $a0
	ori	$a0, $t7, 12
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $t8
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $t7, 20
	vldx	$vr1, $t3, $a0
	ori	$a0, $t7, 24
	vldx	$vr2, $t3, $a0
	ori	$a0, $t7, 28
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $fp
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $fp, 4
	vldx	$vr1, $t3, $a0
	ori	$a0, $fp, 8
	vldx	$vr2, $t3, $a0
	ori	$a0, $fp, 12
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $s0
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $fp, 20
	vldx	$vr1, $t3, $a0
	ori	$a0, $fp, 24
	vldx	$vr2, $t3, $a0
	ori	$a0, $fp, 28
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $s1
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $s1, 4
	vldx	$vr1, $t3, $a0
	ori	$a0, $s1, 8
	vldx	$vr2, $t3, $a0
	ori	$a0, $s1, 12
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $s2
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $s1, 20
	vldx	$vr1, $t3, $a0
	ori	$a0, $s1, 24
	vldx	$vr2, $t3, $a0
	ori	$a0, $s1, 28
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $s3
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $s3, 4
	vldx	$vr1, $t3, $a0
	ori	$a0, $s3, 8
	vldx	$vr2, $t3, $a0
	ori	$a0, $s3, 12
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $s6
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $s3, 20
	vldx	$vr1, $t3, $a0
	ori	$a0, $s3, 24
	vldx	$vr2, $t3, $a0
	ori	$a0, $s3, 28
	vldx	$vr3, $t3, $a0
	vld	$vr4, $t3, 0
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr1, $t3, 4
	vld	$vr2, $t3, 8
	vld	$vr3, $t3, 12
	vld	$vr4, $t3, 16
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr1, $t3, 20
	vld	$vr2, $t3, 24
	vld	$vr3, $t3, 28
	vldx	$vr4, $t3, $s4
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $s4, 4
	vldx	$vr1, $t3, $a0
	ori	$a0, $s4, 8
	vldx	$vr2, $t3, $a0
	ori	$a0, $s4, 12
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $s7
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $s4, 20
	vldx	$vr1, $t3, $a0
	ori	$a0, $s4, 24
	vldx	$vr2, $t3, $a0
	ori	$a0, $s4, 28
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $a3
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $a3, 4
	vldx	$vr1, $t3, $a0
	ori	$a0, $a3, 8
	vldx	$vr2, $t3, $a0
	vldx	$vr3, $t3, $a6
	vldx	$vr4, $t3, $s8
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $a3, 20
	vldx	$vr1, $t3, $a0
	ori	$a0, $a3, 24
	vldx	$vr2, $t3, $a0
	ori	$a0, $a3, 28
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $t4
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $t4, 4
	vldx	$vr1, $t3, $a0
	ori	$a0, $t4, 8
	vldx	$vr2, $t3, $a0
	ori	$a0, $t4, 12
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $t3, $ra
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr4, $vr0
	ori	$a0, $t4, 20
	vldx	$vr1, $t3, $a0
	ori	$a0, $t4, 24
	vldx	$vr2, $t3, $a0
	ori	$a0, $t4, 28
	vldx	$vr3, $t3, $a0
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr2, $vr0
	addi.d	$t3, $t3, 16
	vadd.w	$vr0, $vr3, $vr0
	vreplgr2vr.w	$vr1, $s5
	vmuh.w	$vr0, $vr0, $vr1
	vsrai.w	$vr0, $vr0, 3
	vsrli.w	$vr1, $vr0, 31
	vadd.w	$vr0, $vr0, $vr1
	vst	$vr0, $a5, 0
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, 16
	bnez	$t0, .LBB0_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $t1, .LBB0_3
.LBB0_8:                                # %.preheader34.us.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$a5, $t3, $a4, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$t0, $a0, $t3
	alsl.d	$t3, $t3, $a2, 2
	.p2align	4, , 16
.LBB0_9:                                # %.preheader34.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $t3, $t8
	vldx	$vr1, $t3, $t7
	vldx	$vr2, $t3, $fp
	vldx	$vr3, $t3, $s0
	vldx	$vr4, $t3, $s1
	vldx	$vr5, $t3, $s2
	vldx	$vr6, $t3, $s3
	vldx	$vr7, $t3, $s6
	vld	$vr8, $t3, 0
	vld	$vr9, $t3, 16
	vldx	$vr10, $t3, $s4
	vldx	$vr11, $t3, $s7
	vldx	$vr12, $t3, $a3
	vldx	$vr13, $t3, $ra
	vldx	$vr14, $t3, $s8
	vldx	$vr15, $t3, $t4
	vshuf4i.w	$vr1, $vr1, 225
	vadd.w	$vr7, $vr7, $vr13
	vadd.w	$vr3, $vr3, $vr11
	vadd.w	$vr3, $vr3, $vr7
	vadd.w	$vr5, $vr5, $vr14
	vadd.w	$vr0, $vr0, $vr9
	vadd.w	$vr0, $vr0, $vr5
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr3, $vr6, $vr15
	vadd.w	$vr2, $vr2, $vr10
	vadd.w	$vr2, $vr2, $vr3
	vadd.w	$vr3, $vr4, $vr12
	vadd.w	$vr1, $vr1, $vr8
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	addi.w	$a0, $a0, 0
	mul.d	$a0, $a0, $s5
	srli.d	$t6, $a0, 63
	srai.d	$a0, $a0, 35
	add.d	$a0, $a0, $t6
	st.w	$a0, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, -1
	addi.d	$t3, $t3, 4
	bnez	$t0, .LBB0_9
	b	.LBB0_3
.LBB0_10:
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
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
.LBB0_11:                               # %._crit_edge42
	ret
.Lfunc_end0:
	.size	boxBlurKernel, .Lfunc_end0-boxBlurKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
