	.file	"me_distortion.c"
	.text
	.globl	distortion4x4                   # -- Begin function distortion4x4
	.p2align	5
	.type	distortion4x4,@function
distortion4x4:                          # @distortion4x4
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5792
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB0_3
# %bb.1:
	bnez	$a1, .LBB0_5
# %bb.2:                                # %.preheader
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a1, $a1, %got_pc_lo12(byte_abs)
	ld.w	$a2, $a0, 0
	ld.d	$a1, $a1, 0
	b	.LBB0_4
.LBB0_3:                                # %.loopexit.loopexit19
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 0
	ldptr.d	$a1, $a1, 14232
.LBB0_4:                                # %.loopexit
	ld.w	$a3, $a0, 4
	slli.d	$a2, $a2, 2
	ld.w	$a4, $a0, 8
	ldx.w	$a2, $a1, $a2
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ld.w	$a5, $a0, 12
	add.d	$a2, $a3, $a2
	add.d	$a2, $a4, $a2
	ld.w	$a3, $a0, 16
	slli.d	$a4, $a5, 2
	ld.w	$a5, $a0, 20
	ldx.w	$a4, $a1, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	add.d	$a2, $a4, $a2
	ld.w	$a4, $a0, 24
	add.d	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	ld.w	$a3, $a0, 28
	slli.d	$a4, $a4, 2
	ld.w	$a5, $a0, 32
	ldx.w	$a4, $a1, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	add.d	$a2, $a4, $a2
	ld.w	$a4, $a0, 36
	add.d	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	ld.w	$a3, $a0, 40
	slli.d	$a4, $a4, 2
	ld.w	$a5, $a0, 44
	ldx.w	$a4, $a1, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	add.d	$a2, $a4, $a2
	ld.w	$a4, $a0, 48
	add.d	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	ld.w	$a3, $a0, 52
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ld.w	$a5, $a0, 56
	slli.d	$a3, $a3, 2
	ld.w	$a0, $a0, 60
	ldx.w	$a3, $a1, $a3
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a4, $a2
	add.d	$a1, $a3, $a1
	add.d	$a1, $a5, $a1
	add.w	$a0, $a0, $a1
	ret
.LBB0_5:
	pcaddu18i	$t8, %call36(HadamardSAD4x4)
	jr	$t8
.Lfunc_end0:
	.size	distortion4x4, .Lfunc_end0-distortion4x4
                                        # -- End function
	.globl	HadamardSAD4x4                  # -- Begin function HadamardSAD4x4
	.p2align	5
	.type	HadamardSAD4x4,@function
HadamardSAD4x4:                         # @HadamardSAD4x4
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 48
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 52
	ld.w	$a5, $a0, 8
	ld.w	$a6, $a0, 56
	ld.w	$a7, $a0, 12
	ld.w	$t0, $a0, 60
	add.d	$t1, $a2, $a1
	add.d	$t2, $a4, $a3
	add.d	$t3, $a6, $a5
	add.d	$t4, $t0, $a7
	ld.w	$t5, $a0, 16
	ld.w	$t6, $a0, 32
	ld.w	$t7, $a0, 20
	ld.w	$t8, $a0, 36
	ld.w	$fp, $a0, 24
	ld.w	$s0, $a0, 40
	ld.w	$s1, $a0, 28
	ld.w	$a0, $a0, 44
	add.d	$s2, $t6, $t5
	add.d	$s3, $t8, $t7
	add.d	$s4, $s0, $fp
	add.d	$s5, $a0, $s1
	sub.d	$t5, $t5, $t6
	sub.d	$t6, $t7, $t8
	sub.d	$t7, $fp, $s0
	sub.d	$a0, $s1, $a0
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $a3, $a4
	sub.d	$a3, $a5, $a6
	sub.d	$a4, $a7, $t0
	add.d	$a5, $s2, $t1
	add.d	$a6, $s3, $t2
	add.d	$a7, $s4, $t3
	add.d	$t0, $s5, $t4
	add.d	$t8, $t5, $a1
	add.d	$fp, $t6, $a2
	add.d	$s0, $t7, $a3
	add.d	$s1, $a0, $a4
	sub.d	$t1, $t1, $s2
	sub.d	$t2, $t2, $s3
	sub.d	$t3, $t3, $s4
	sub.d	$t4, $t4, $s5
	sub.d	$a1, $a1, $t5
	sub.d	$a2, $a2, $t6
	sub.d	$a3, $a3, $t7
	sub.d	$a0, $a4, $a0
	add.d	$a4, $t0, $a5
	add.d	$t5, $a7, $a6
	sub.d	$a6, $a6, $a7
	sub.d	$a5, $a5, $t0
	add.d	$a7, $s1, $t8
	add.d	$t0, $s0, $fp
	sub.d	$t6, $fp, $s0
	sub.d	$t7, $t8, $s1
	add.d	$t8, $t4, $t1
	add.d	$fp, $t3, $t2
	sub.d	$t2, $t2, $t3
	sub.d	$t1, $t1, $t4
	add.d	$t3, $a0, $a1
	add.d	$t4, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a0, $a1, $a0
	add.w	$a1, $a4, $t5
	sub.w	$a3, $a4, $t5
	add.w	$a4, $a5, $a6
	sub.w	$a5, $a5, $a6
	add.w	$a6, $a7, $t0
	sub.w	$a7, $a7, $t0
	add.w	$t0, $t7, $t6
	sub.w	$t5, $t7, $t6
	add.w	$t6, $t8, $fp
	sub.w	$t7, $t8, $fp
	add.w	$t8, $t1, $t2
	sub.w	$t1, $t1, $t2
	add.w	$t2, $t3, $t4
	sub.w	$t3, $t3, $t4
	add.w	$t4, $a0, $a2
	sub.w	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a2, %got_pc_lo12(byte_abs)
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a2, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a2, $a5
	add.d	$a1, $a3, $a1
	add.d	$a1, $a4, $a1
	add.d	$a1, $a5, $a1
	slli.d	$a3, $a6, 2
	ldx.w	$a3, $a2, $a3
	slli.d	$a4, $a7, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a5, $t0, 2
	ldx.w	$a5, $a2, $a5
	slli.d	$a6, $t5, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a1, $a3, $a1
	add.d	$a1, $a4, $a1
	add.d	$a1, $a5, $a1
	add.d	$a1, $a6, $a1
	slli.d	$a3, $t6, 2
	ldx.w	$a3, $a2, $a3
	slli.d	$a4, $t7, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a5, $t8, 2
	ldx.w	$a5, $a2, $a5
	slli.d	$a6, $t1, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a1, $a3, $a1
	add.d	$a1, $a4, $a1
	add.d	$a1, $a5, $a1
	add.d	$a1, $a6, $a1
	slli.d	$a3, $t2, 2
	ldx.w	$a3, $a2, $a3
	slli.d	$a4, $t3, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a5, $t4, 2
	ldx.w	$a5, $a2, $a5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	add.d	$a1, $a3, $a1
	add.d	$a1, $a4, $a1
	add.d	$a1, $a5, $a1
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	srai.d	$a0, $a0, 1
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	HadamardSAD4x4, .Lfunc_end1-HadamardSAD4x4
                                        # -- End function
	.globl	distortion8x8                   # -- Begin function distortion8x8
	.p2align	5
	.type	distortion8x8,@function
distortion8x8:                          # @distortion8x8
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5792
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB2_4
# %bb.1:
	bnez	$a1, .LBB2_7
# %bb.2:                                # %.preheader
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a1, $a1, %got_pc_lo12(byte_abs)
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	vrepli.b	$vr0, 0
	ori	$a3, $zero, 256
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_3:                                # %vector.body32
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr2, $a0, $a2
	add.d	$a4, $a0, $a2
	vld	$vr3, $a4, 16
	vshuf4i.w	$vr4, $vr2, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr5, $vr3, 50
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$a4, $vr2, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr2, 1
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr4, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr4, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr3, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr3, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr5, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr5, 1
	slli.d	$t3, $t3, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a5, $a1, $a5
	ldx.w	$a6, $a1, $a6
	ldx.w	$a7, $a1, $a7
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ldx.w	$a4, $a1, $t0
	ldx.w	$a5, $a1, $t1
	ldx.w	$a6, $a1, $t2
	ldx.w	$a7, $a1, $t3
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vadd.w	$vr0, $vr2, $vr0
	addi.d	$a2, $a2, 32
	vadd.w	$vr1, $vr3, $vr1
	bne	$a2, $a3, .LBB2_3
	b	.LBB2_6
.LBB2_4:                                # %vector.ph
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 14232
	move	$a2, $zero
	vrepli.b	$vr0, 0
	ori	$a3, $zero, 256
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr2, $a0, $a2
	add.d	$a4, $a0, $a2
	vld	$vr3, $a4, 16
	vshuf4i.w	$vr4, $vr2, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr5, $vr3, 50
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$a4, $vr2, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr2, 1
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr4, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr4, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr3, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr3, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr5, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr5, 1
	slli.d	$t3, $t3, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a5, $a1, $a5
	ldx.w	$a6, $a1, $a6
	ldx.w	$a7, $a1, $a7
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ldx.w	$a4, $a1, $t0
	ldx.w	$a5, $a1, $t1
	ldx.w	$a6, $a1, $t2
	ldx.w	$a7, $a1, $t3
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vadd.w	$vr0, $vr2, $vr0
	addi.d	$a2, $a2, 32
	vadd.w	$vr1, $vr3, $vr1
	bne	$a2, $a3, .LBB2_5
.LBB2_6:                                # %middle.block39
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	addi.w	$a0, $a0, 0
	ret
.LBB2_7:
	pcaddu18i	$t8, %call36(HadamardSAD8x8)
	jr	$t8
.Lfunc_end2:
	.size	distortion8x8, .Lfunc_end2-distortion8x8
                                        # -- End function
	.globl	HadamardSAD8x8                  # -- Begin function HadamardSAD8x8
	.p2align	5
	.type	HadamardSAD8x8,@function
HadamardSAD8x8:                         # @HadamardSAD8x8
# %bb.0:
	addi.d	$a1, $a0, 28
	pcalau12i	$a0, %pc_hi20(m2)
	addi.d	$a0, $a0, %pc_lo12(m2)
	move	$a2, $zero
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a2
	ld.w	$a5, $a4, -28
	ld.w	$a6, $a4, -12
	add.d	$a7, $a6, $a5
	ld.w	$t0, $a4, -24
	ld.w	$t1, $a4, -8
	ld.w	$t2, $a4, -20
	ld.w	$t3, $a4, -4
	ld.w	$a4, $a4, -16
	ldx.w	$t4, $a1, $a2
	add.d	$t5, $a0, $a2
	add.d	$t6, $t1, $t0
	add.d	$t7, $t3, $t2
	add.d	$t8, $t4, $a4
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $t0, $t1
	sub.d	$t0, $t2, $t3
	sub.d	$a4, $a4, $t4
	add.d	$t1, $t7, $a7
	add.d	$t2, $t8, $t6
	sub.d	$a7, $a7, $t7
	sub.d	$t3, $t6, $t8
	add.d	$t4, $t0, $a5
	add.d	$t6, $a4, $a6
	sub.d	$a5, $a5, $t0
	sub.d	$a4, $a6, $a4
	add.d	$a6, $t2, $t1
	stx.w	$a6, $a0, $a2
	sub.d	$a6, $t1, $t2
	st.w	$a6, $t5, 4
	add.d	$a6, $t3, $a7
	st.w	$a6, $t5, 8
	sub.d	$a6, $a7, $t3
	st.w	$a6, $t5, 12
	add.d	$a6, $t6, $t4
	st.w	$a6, $t5, 16
	sub.d	$a6, $t4, $t6
	st.w	$a6, $t5, 20
	add.d	$a6, $a4, $a5
	st.w	$a6, $t5, 24
	sub.d	$a4, $a5, $a4
	addi.d	$a2, $a2, 32
	st.w	$a4, $t5, 28
	bne	$a2, $a3, .LBB3_1
# %bb.2:                                # %vector.body
	move	$a1, $zero
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 128
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 160
	vld	$vr4, $a0, 64
	vld	$vr5, $a0, 192
	vld	$vr6, $a0, 96
	vld	$vr7, $a0, 224
	vadd.w	$vr8, $vr1, $vr0
	vadd.w	$vr9, $vr3, $vr2
	vadd.w	$vr10, $vr5, $vr4
	vadd.w	$vr11, $vr7, $vr6
	vsub.w	$vr0, $vr0, $vr1
	vsub.w	$vr1, $vr2, $vr3
	vsub.w	$vr2, $vr4, $vr5
	vsub.w	$vr3, $vr6, $vr7
	vadd.w	$vr4, $vr10, $vr8
	vadd.w	$vr5, $vr11, $vr9
	vsub.w	$vr6, $vr8, $vr10
	vsub.w	$vr7, $vr9, $vr11
	vadd.w	$vr8, $vr2, $vr0
	vadd.w	$vr9, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr5, $vr4
	vst	$vr2, $a0, 0
	vsub.w	$vr2, $vr4, $vr5
	vst	$vr2, $a0, 32
	vadd.w	$vr2, $vr7, $vr6
	vst	$vr2, $a0, 64
	vsub.w	$vr2, $vr6, $vr7
	vst	$vr2, $a0, 96
	vadd.w	$vr2, $vr9, $vr8
	vst	$vr2, $a0, 128
	vsub.w	$vr2, $vr8, $vr9
	vst	$vr2, $a0, 160
	vadd.w	$vr2, $vr1, $vr0
	vst	$vr2, $a0, 192
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 224
	vld	$vr0, $a0, 16
	vld	$vr1, $a0, 144
	vld	$vr2, $a0, 48
	vld	$vr3, $a0, 176
	vld	$vr4, $a0, 80
	vld	$vr5, $a0, 208
	vld	$vr6, $a0, 112
	vld	$vr7, $a0, 240
	vadd.w	$vr8, $vr1, $vr0
	vadd.w	$vr9, $vr3, $vr2
	vadd.w	$vr10, $vr5, $vr4
	vadd.w	$vr11, $vr7, $vr6
	vsub.w	$vr0, $vr0, $vr1
	vsub.w	$vr1, $vr2, $vr3
	vsub.w	$vr2, $vr4, $vr5
	vsub.w	$vr3, $vr6, $vr7
	vadd.w	$vr4, $vr10, $vr8
	vadd.w	$vr5, $vr11, $vr9
	vsub.w	$vr6, $vr8, $vr10
	vsub.w	$vr7, $vr9, $vr11
	vadd.w	$vr8, $vr2, $vr0
	vadd.w	$vr9, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr5, $vr4
	vst	$vr2, $a0, 16
	vsub.w	$vr2, $vr4, $vr5
	vst	$vr2, $a0, 48
	vadd.w	$vr2, $vr7, $vr6
	vst	$vr2, $a0, 80
	vsub.w	$vr2, $vr6, $vr7
	vst	$vr2, $a0, 112
	vadd.w	$vr2, $vr9, $vr8
	vst	$vr2, $a0, 144
	vsub.w	$vr2, $vr8, $vr9
	vst	$vr2, $a0, 176
	vadd.w	$vr2, $vr1, $vr0
	vst	$vr2, $a0, 208
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 240
	vrepli.b	$vr0, 0
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB3_3:                                # %vector.body202
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	ldx.w	$a4, $a0, $a1
	ld.w	$a5, $a3, 32
	ld.w	$a6, $a3, 64
	ld.w	$a7, $a3, 96
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 1
	vinsgr2vr.w	$vr1, $a6, 2
	vinsgr2vr.w	$vr1, $a7, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a4, $a3, 4
	ld.w	$a5, $a3, 36
	ld.w	$a6, $a3, 68
	ld.w	$a7, $a3, 100
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 1
	vinsgr2vr.w	$vr1, $a6, 2
	vinsgr2vr.w	$vr1, $a7, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a4, $a3, 8
	ld.w	$a5, $a3, 40
	ld.w	$a6, $a3, 72
	ld.w	$a7, $a3, 104
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 1
	vinsgr2vr.w	$vr1, $a6, 2
	vinsgr2vr.w	$vr1, $a7, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a4, $a3, 12
	ld.w	$a5, $a3, 44
	ld.w	$a6, $a3, 76
	ld.w	$a7, $a3, 108
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 1
	vinsgr2vr.w	$vr1, $a6, 2
	vinsgr2vr.w	$vr1, $a7, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a4, $a3, 16
	ld.w	$a5, $a3, 48
	ld.w	$a6, $a3, 80
	ld.w	$a7, $a3, 112
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 1
	vinsgr2vr.w	$vr1, $a6, 2
	vinsgr2vr.w	$vr1, $a7, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a4, $a3, 20
	ld.w	$a5, $a3, 52
	ld.w	$a6, $a3, 84
	ld.w	$a7, $a3, 116
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 1
	vinsgr2vr.w	$vr1, $a6, 2
	vinsgr2vr.w	$vr1, $a7, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a4, $a3, 24
	ld.w	$a5, $a3, 56
	ld.w	$a6, $a3, 88
	ld.w	$a7, $a3, 120
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 1
	vinsgr2vr.w	$vr1, $a6, 2
	vinsgr2vr.w	$vr1, $a7, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a4, $a3, 28
	ld.w	$a5, $a3, 60
	ld.w	$a6, $a3, 92
	ld.w	$a3, $a3, 124
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr1, $a5, 1
	vinsgr2vr.w	$vr1, $a6, 2
	vinsgr2vr.w	$vr1, $a3, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	addi.d	$a1, $a1, 128
	vadd.w	$vr0, $vr1, $vr0
	bne	$a1, $a2, .LBB3_3
# %bb.4:                                # %middle.block205
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 2
	ret
.Lfunc_end3:
	.size	HadamardSAD8x8, .Lfunc_end3-HadamardSAD8x8
                                        # -- End function
	.globl	HadamardMB                      # -- Begin function HadamardMB
	.p2align	5
	.type	HadamardMB,@function
HadamardMB:                             # @HadamardMB
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a2, $a1, -2
	ori	$a3, $zero, 2
	bltu	$a2, $a3, .LBB4_4
# %bb.1:
	ori	$a2, $zero, 4
	beq	$a1, $a2, .LBB4_5
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_6
# %bb.3:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $fp, 256
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	addi.d	$a0, $fp, 512
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
	addi.d	$a0, $fp, 768
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$a0, $s0, $a0
	b	.LBB4_7
.LBB4_4:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $fp, 256
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s0
	b	.LBB4_7
.LBB4_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(HadamardSAD8x8)
	jr	$t8
.LBB4_6:
	addi.w	$a0, $zero, -1
.LBB4_7:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	HadamardMB, .Lfunc_end4-HadamardMB
                                        # -- End function
	.globl	computeSAD                      # -- Begin function computeSAD
	.p2align	5
	.type	computeSAD,@function
computeSAD:                             # @computeSAD
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
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s8, $a5
	move	$s3, $a4
	move	$fp, $a3
	move	$s5, $a2
	move	$s4, $a1
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$s1, %pc_hi20(ref_access_method)
	ld.w	$a1, $s1, %pc_lo12(ref_access_method)
	ld.w	$s0, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s6, %pc_hi20(src_line)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	addi.d	$s2, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a0, $s2, 0
	move	$a1, $a5
	move	$a2, $a4
	jirl	$ra, $a3, 0
	pcalau12i	$s7, %pc_hi20(ref_line)
	st.d	$a0, $s7, %pc_lo12(ref_line)
	blez	$s4, .LBB5_8
# %bb.1:                                # %.preheader54.lr.ph
	ld.d	$a4, $s6, %pc_lo12(src_line)
	sub.w	$a1, $s0, $s5
	pcalau12i	$a2, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a2, %got_pc_lo12(byte_abs)
	ld.d	$a2, $a2, 0
	move	$s0, $zero
	move	$a3, $zero
	.p2align	4, , 16
.LBB5_2:                                # %.preheader54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	blez	$s5, .LBB5_6
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$a5, $zero
	.p2align	4, , 16
.LBB5_4:                                # %.lr.ph
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a4, 0
	ld.hu	$a7, $a0, 0
	sub.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ld.hu	$a7, $a4, 2
	ld.hu	$t0, $a0, 2
	ldx.w	$a6, $a2, $a6
	ld.hu	$t1, $a4, 4
	ld.hu	$t2, $a0, 4
	sub.d	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	sub.d	$t0, $t1, $t2
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	ld.hu	$t1, $a4, 6
	ld.hu	$t2, $a0, 6
	add.d	$a6, $a6, $s0
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	sub.d	$a7, $t1, $t2
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	addi.w	$a5, $a5, 4
	add.w	$s0, $a6, $a7
	blt	$a5, $s5, .LBB5_4
# %bb.5:                                # %._crit_edge
                                        #   in Loop: Header=BB5_2 Depth=1
	st.d	$a4, $s6, %pc_lo12(src_line)
	st.d	$a0, $s7, %pc_lo12(ref_line)
.LBB5_6:                                #   in Loop: Header=BB5_2 Depth=1
	bge	$s0, $fp, .LBB5_36
# %bb.7:                                #   in Loop: Header=BB5_2 Depth=1
	alsl.d	$a0, $a1, $a0, 1
	addi.w	$a3, $a3, 1
	st.d	$a0, $s7, %pc_lo12(ref_line)
	bne	$a3, $s4, .LBB5_2
	b	.LBB5_9
.LBB5_8:
	move	$s0, $zero
.LBB5_9:                                # %._crit_edge72
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB5_36
# %bb.10:
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(shift_cr_y)
	ld.wu	$a1, $a1, %pc_lo12(shift_cr_y)
	pcalau12i	$a2, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a2, $a2, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s5, $s5, $a0
	sra.w	$s4, $s4, $a1
	ld.w	$a0, $s1, %pc_lo12(ref_access_method)
	move	$a1, $s8
	sub.w	$s8, $a2, $s5
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 512
	st.d	$a2, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %pc_hi20(get_crline)
	addi.d	$a2, $a2, %pc_lo12(get_crline)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $s2, 8
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	move	$a2, $s3
	jirl	$ra, $a3, 0
	st.d	$a0, $s7, %pc_lo12(ref_line)
	bstrpick.d	$a1, $s5, 31, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a4, $s5, 30, 1
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	blez	$s4, .LBB5_23
# %bb.11:                               # %.preheader.lr.ph
	ld.d	$t0, $s6, %pc_lo12(src_line)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a1, %got_pc_lo12(byte_abs)
	move	$a1, $zero
	ld.d	$a2, $a2, 0
	slli.d	$a3, $a4, 1
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB5_12:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
                                        #     Child Loop BB5_19 Depth 2
	blez	$s5, .LBB5_21
# %bb.13:                               # %.lr.ph76.preheader
                                        #   in Loop: Header=BB5_12 Depth=1
	move	$t1, $zero
	bne	$s5, $a5, .LBB5_15
# %bb.14:                               #   in Loop: Header=BB5_12 Depth=1
	move	$a6, $t0
	move	$a7, $a0
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_15:                               # %vector.ph
                                        #   in Loop: Header=BB5_12 Depth=1
	add.d	$a6, $t0, $a4
	add.d	$a7, $a0, $a4
	addi.d	$t0, $t0, 4
	addi.d	$a0, $a0, 4
	move	$t2, $a3
	.p2align	4, , 16
.LBB5_16:                               # %vector.body
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t3, $t0, -4
	ld.hu	$t4, $t0, 0
	ld.hu	$t5, $a0, -4
	ld.hu	$t6, $a0, 0
	ld.hu	$t7, $t0, -2
	ld.hu	$t8, $t0, 2
	ld.hu	$ra, $a0, -2
	ld.hu	$s3, $a0, 2
	sub.d	$t3, $t3, $t5
	sub.d	$t4, $t4, $t6
	sub.d	$t5, $t7, $ra
	sub.d	$t6, $t8, $s3
	slli.d	$t3, $t3, 2
	slli.d	$t4, $t4, 2
	ldx.w	$t3, $a2, $t3
	ldx.w	$t4, $a2, $t4
	slli.d	$t5, $t5, 2
	slli.d	$t6, $t6, 2
	ldx.w	$t5, $a2, $t5
	ldx.w	$t6, $a2, $t6
	add.d	$t3, $t3, $s0
	add.d	$t1, $t4, $t1
	add.d	$s0, $t3, $t5
	add.d	$t1, $t1, $t6
	addi.d	$t2, $t2, -2
	addi.d	$t0, $t0, 8
	addi.d	$a0, $a0, 8
	bnez	$t2, .LBB5_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB5_12 Depth=1
	add.w	$s0, $t1, $s0
	move	$t1, $a3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a3, $a0, .LBB5_20
.LBB5_18:                               # %.lr.ph76.preheader179
                                        #   in Loop: Header=BB5_12 Depth=1
	sub.d	$a0, $s5, $t1
	.p2align	4, , 16
.LBB5_19:                               # %.lr.ph76
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t0, $a6, 0
	ld.hu	$t1, $a7, 0
	sub.d	$t0, $t0, $t1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	ld.hu	$t1, $a6, 2
	ld.hu	$t2, $a7, 2
	add.d	$t0, $t0, $s0
	sub.d	$t1, $t1, $t2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	addi.w	$a0, $a0, -1
	add.w	$s0, $t0, $t1
	bnez	$a0, .LBB5_19
.LBB5_20:                               # %._crit_edge77
                                        #   in Loop: Header=BB5_12 Depth=1
	st.d	$a6, $s6, %pc_lo12(src_line)
	st.d	$a7, $s7, %pc_lo12(ref_line)
	move	$t0, $a6
	move	$a0, $a7
.LBB5_21:                               #   in Loop: Header=BB5_12 Depth=1
	bge	$s0, $fp, .LBB5_36
# %bb.22:                               #   in Loop: Header=BB5_12 Depth=1
	alsl.d	$a0, $s8, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s7, %pc_lo12(ref_line)
	bne	$a1, $s4, .LBB5_12
.LBB5_23:                               # %._crit_edge91
	ld.w	$a0, $s1, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $s2, 16
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	st.d	$a1, $s6, %pc_lo12(src_line)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s7, %pc_lo12(ref_line)
	blez	$s4, .LBB5_36
# %bb.24:                               # %.preheader.lr.ph.1
	ld.d	$t0, $s6, %pc_lo12(src_line)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a1, %got_pc_lo12(byte_abs)
	move	$a1, $zero
	ld.d	$a2, $a2, 0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a3, $a4, 1
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB5_25:                               # %.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_29 Depth 2
                                        #     Child Loop BB5_32 Depth 2
	blez	$s5, .LBB5_34
# %bb.26:                               # %.lr.ph76.1.preheader
                                        #   in Loop: Header=BB5_25 Depth=1
	move	$t1, $zero
	bne	$s5, $a5, .LBB5_28
# %bb.27:                               #   in Loop: Header=BB5_25 Depth=1
	move	$a6, $t0
	move	$a7, $a0
	b	.LBB5_31
	.p2align	4, , 16
.LBB5_28:                               # %vector.ph151
                                        #   in Loop: Header=BB5_25 Depth=1
	add.d	$a6, $t0, $a4
	add.d	$a7, $a0, $a4
	addi.d	$t0, $t0, 4
	addi.d	$a0, $a0, 4
	move	$t2, $a3
	.p2align	4, , 16
.LBB5_29:                               # %vector.body154
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t3, $t0, -4
	ld.hu	$t4, $t0, 0
	ld.hu	$t5, $a0, -4
	ld.hu	$t6, $a0, 0
	ld.hu	$t7, $t0, -2
	ld.hu	$t8, $t0, 2
	ld.hu	$s1, $a0, -2
	ld.hu	$s2, $a0, 2
	sub.d	$t3, $t3, $t5
	sub.d	$t4, $t4, $t6
	sub.d	$t5, $t7, $s1
	sub.d	$t6, $t8, $s2
	slli.d	$t3, $t3, 2
	slli.d	$t4, $t4, 2
	ldx.w	$t3, $a2, $t3
	ldx.w	$t4, $a2, $t4
	slli.d	$t5, $t5, 2
	slli.d	$t6, $t6, 2
	ldx.w	$t5, $a2, $t5
	ldx.w	$t6, $a2, $t6
	add.d	$t3, $t3, $s0
	add.d	$t1, $t4, $t1
	add.d	$s0, $t3, $t5
	add.d	$t1, $t1, $t6
	addi.d	$t2, $t2, -2
	addi.d	$t0, $t0, 8
	addi.d	$a0, $a0, 8
	bnez	$t2, .LBB5_29
# %bb.30:                               # %middle.block165
                                        #   in Loop: Header=BB5_25 Depth=1
	add.w	$s0, $t1, $s0
	move	$t1, $a3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a3, $a0, .LBB5_33
.LBB5_31:                               # %.lr.ph76.1.preheader172
                                        #   in Loop: Header=BB5_25 Depth=1
	sub.d	$a0, $s5, $t1
	.p2align	4, , 16
.LBB5_32:                               # %.lr.ph76.1
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t0, $a6, 0
	ld.hu	$t1, $a7, 0
	sub.d	$t0, $t0, $t1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	ld.hu	$t1, $a6, 2
	ld.hu	$t2, $a7, 2
	add.d	$t0, $t0, $s0
	sub.d	$t1, $t1, $t2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	addi.w	$a0, $a0, -1
	add.w	$s0, $t0, $t1
	bnez	$a0, .LBB5_32
.LBB5_33:                               # %._crit_edge77.1
                                        #   in Loop: Header=BB5_25 Depth=1
	st.d	$a6, $s6, %pc_lo12(src_line)
	st.d	$a7, $s7, %pc_lo12(ref_line)
	move	$t0, $a6
	move	$a0, $a7
.LBB5_34:                               #   in Loop: Header=BB5_25 Depth=1
	bge	$s0, $fp, .LBB5_36
# %bb.35:                               #   in Loop: Header=BB5_25 Depth=1
	alsl.d	$a0, $s8, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s7, %pc_lo12(ref_line)
	bne	$a1, $s4, .LBB5_25
.LBB5_36:                               # %.loopexit
	move	$a0, $s0
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
	ret
.Lfunc_end5:
	.size	computeSAD, .Lfunc_end5-computeSAD
                                        # -- End function
	.globl	computeSADWP                    # -- Begin function computeSADWP
	.p2align	5
	.type	computeSADWP,@function
computeSADWP:                           # @computeSADWP
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
	move	$s1, $a3
	move	$s4, $a2
	move	$s3, $a1
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(ref_access_method)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(ref_access_method)
	ld.w	$fp, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s7, %pc_hi20(src_line)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	move	$a2, $a4
	jirl	$ra, $a3, 0
	pcalau12i	$s8, %pc_hi20(ref_line)
	st.d	$a0, $s8, %pc_lo12(ref_line)
	lu12i.w	$a3, 3
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	blez	$s3, .LBB6_12
# %bb.1:                                # %.preheader64.lr.ph
	ld.d	$s2, $s7, %pc_lo12(src_line)
	sub.w	$a2, $fp, $s4
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$t5, $a1, 0
	pcalau12i	$a1, %pc_hi20(weight_luma)
	ld.w	$a4, $a1, %pc_lo12(weight_luma)
	pcalau12i	$a1, %pc_hi20(wp_luma_round)
	ld.w	$a5, $a1, %pc_lo12(wp_luma_round)
	pcalau12i	$a1, %pc_hi20(luma_log_weight_denom)
	ld.w	$a6, $a1, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a1, %pc_hi20(offset_luma)
	ld.w	$a7, $a1, %pc_lo12(offset_luma)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a1, $a1, %got_pc_lo12(byte_abs)
	move	$fp, $zero
	move	$t0, $zero
	ld.d	$t1, $a1, 0
	addi.d	$a1, $s4, -1
	bstrpick.d	$a1, $a1, 31, 2
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 30, 3
	slli.d	$t3, $a1, 3
	slli.d	$t2, $a1, 5
	st.d	$t2, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 6
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr0, $a4
	vreplgr2vr.w	$vr1, $a5
	vreplgr2vr.w	$vr2, $a6
	vreplgr2vr.w	$vr3, $a7
	ori	$t6, $a3, 3232
	ori	$s5, $zero, 29
	vrepli.b	$vr4, 0
	.p2align	4, , 16
.LBB6_2:                                # %.preheader64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
                                        #     Child Loop BB6_8 Depth 2
	blez	$s4, .LBB6_10
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	ldx.w	$t8, $t5, $t6
	bgeu	$s4, $s5, .LBB6_5
# %bb.4:                                #   in Loop: Header=BB6_2 Depth=1
	move	$s0, $zero
	move	$ra, $a0
	move	$a1, $s2
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_5:                                # %vector.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$ra, $a0, $a1
	add.d	$a1, $s2, $a1
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $fp, 0
	vreplgr2vr.w	$vr5, $t8
	addi.d	$a0, $a0, 32
	addi.d	$fp, $s2, 32
	move	$s0, $t3
	vori.b	$vr7, $vr4, 0
	.p2align	4, , 16
.LBB6_6:                                # %vector.body
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s2, $a0, -32
	ld.h	$s5, $a0, -24
	ld.h	$s6, $a0, -16
	ld.h	$s7, $a0, -8
	vinsgr2vr.h	$vr8, $s2, 0
	vinsgr2vr.h	$vr8, $s5, 1
	vinsgr2vr.h	$vr8, $s6, 2
	vinsgr2vr.h	$vr8, $s7, 3
	ld.h	$s2, $a0, 0
	ld.h	$s5, $a0, 8
	ld.h	$s6, $a0, 16
	ld.h	$s7, $a0, 24
	vinsgr2vr.h	$vr9, $s2, 0
	vinsgr2vr.h	$vr9, $s5, 1
	vinsgr2vr.h	$vr9, $s6, 2
	vinsgr2vr.h	$vr9, $s7, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$s2, $fp, -32
	ld.h	$s5, $fp, -24
	ld.h	$s6, $fp, -16
	ld.h	$s7, $fp, -8
	vinsgr2vr.h	$vr10, $s2, 0
	vinsgr2vr.h	$vr10, $s5, 1
	vinsgr2vr.h	$vr10, $s6, 2
	vinsgr2vr.h	$vr10, $s7, 3
	ld.h	$s2, $fp, 0
	ld.h	$s5, $fp, 8
	ld.h	$s6, $fp, 16
	ld.h	$s7, $fp, 24
	vinsgr2vr.h	$vr11, $s2, 0
	vinsgr2vr.h	$vr11, $s5, 1
	vinsgr2vr.h	$vr11, $s6, 2
	vinsgr2vr.h	$vr11, $s7, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$s2, $vr9, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr9, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr10, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr10, 1
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$t7, $vr8, 0
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t4, $vr8, 1
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t2, $vr11, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$a3, $vr11, 1
	slli.d	$a3, $a3, 2
	ldx.w	$s2, $t1, $s2
	ldx.w	$s5, $t1, $s5
	ldx.w	$s6, $t1, $s6
	ldx.w	$s7, $t1, $s7
	vinsgr2vr.w	$vr8, $s2, 0
	vinsgr2vr.w	$vr8, $s5, 1
	vinsgr2vr.w	$vr8, $s6, 2
	vinsgr2vr.w	$vr8, $s7, 3
	ldx.w	$t7, $t1, $t7
	ldx.w	$t4, $t1, $t4
	ldx.w	$t2, $t1, $t2
	ldx.w	$a3, $t1, $a3
	vinsgr2vr.w	$vr9, $t7, 0
	vinsgr2vr.w	$vr9, $t4, 1
	vinsgr2vr.w	$vr9, $t2, 2
	vinsgr2vr.w	$vr9, $a3, 3
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	ld.h	$a3, $a0, -30
	ld.h	$t2, $a0, -22
	ld.h	$t4, $a0, -14
	ld.h	$t7, $a0, -6
	vinsgr2vr.h	$vr8, $a3, 0
	vinsgr2vr.h	$vr8, $t2, 1
	vinsgr2vr.h	$vr8, $t4, 2
	vinsgr2vr.h	$vr8, $t7, 3
	ld.h	$a3, $a0, 2
	ld.h	$t2, $a0, 10
	ld.h	$t4, $a0, 18
	ld.h	$t7, $a0, 26
	vinsgr2vr.h	$vr9, $a3, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t4, 2
	vinsgr2vr.h	$vr9, $t7, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$a3, $fp, -30
	ld.h	$t2, $fp, -22
	ld.h	$t4, $fp, -14
	ld.h	$t7, $fp, -6
	vinsgr2vr.h	$vr10, $a3, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t4, 2
	vinsgr2vr.h	$vr10, $t7, 3
	ld.h	$a3, $fp, 2
	ld.h	$t2, $fp, 10
	ld.h	$t4, $fp, 18
	ld.h	$t7, $fp, 26
	vinsgr2vr.h	$vr11, $a3, 0
	vinsgr2vr.h	$vr11, $t2, 1
	vinsgr2vr.h	$vr11, $t4, 2
	vinsgr2vr.h	$vr11, $t7, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a3, $vr9, 0
	slli.d	$a3, $a3, 2
	vpickve2gr.d	$t2, $vr9, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t4, $vr10, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t7, $vr10, 1
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 1
	slli.d	$s7, $s7, 2
	ldx.w	$a3, $t1, $a3
	ldx.w	$t2, $t1, $t2
	ldx.w	$t4, $t1, $t4
	ldx.w	$t7, $t1, $t7
	vinsgr2vr.w	$vr8, $a3, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vinsgr2vr.w	$vr8, $t4, 2
	vinsgr2vr.w	$vr8, $t7, 3
	ldx.w	$a3, $t1, $s2
	ldx.w	$t2, $t1, $s5
	ldx.w	$t4, $t1, $s6
	ldx.w	$t7, $t1, $s7
	vinsgr2vr.w	$vr9, $a3, 0
	vinsgr2vr.w	$vr9, $t2, 1
	vinsgr2vr.w	$vr9, $t4, 2
	vinsgr2vr.w	$vr9, $t7, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	ld.h	$a3, $a0, -28
	ld.h	$t2, $a0, -20
	ld.h	$t4, $a0, -12
	ld.h	$t7, $a0, -4
	vinsgr2vr.h	$vr8, $a3, 0
	vinsgr2vr.h	$vr8, $t2, 1
	vinsgr2vr.h	$vr8, $t4, 2
	vinsgr2vr.h	$vr8, $t7, 3
	ld.h	$a3, $a0, 4
	ld.h	$t2, $a0, 12
	ld.h	$t4, $a0, 20
	ld.h	$t7, $a0, 28
	vinsgr2vr.h	$vr9, $a3, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t4, 2
	vinsgr2vr.h	$vr9, $t7, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$a3, $fp, -28
	ld.h	$t2, $fp, -20
	ld.h	$t4, $fp, -12
	ld.h	$t7, $fp, -4
	vinsgr2vr.h	$vr10, $a3, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t4, 2
	vinsgr2vr.h	$vr10, $t7, 3
	ld.h	$a3, $fp, 4
	ld.h	$t2, $fp, 12
	ld.h	$t4, $fp, 20
	ld.h	$t7, $fp, 28
	vinsgr2vr.h	$vr11, $a3, 0
	vinsgr2vr.h	$vr11, $t2, 1
	vinsgr2vr.h	$vr11, $t4, 2
	vinsgr2vr.h	$vr11, $t7, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a3, $vr9, 0
	slli.d	$a3, $a3, 2
	vpickve2gr.d	$t2, $vr9, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t4, $vr10, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t7, $vr10, 1
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 1
	slli.d	$s7, $s7, 2
	ldx.w	$a3, $t1, $a3
	ldx.w	$t2, $t1, $t2
	ldx.w	$t4, $t1, $t4
	ldx.w	$t7, $t1, $t7
	vinsgr2vr.w	$vr8, $a3, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vinsgr2vr.w	$vr8, $t4, 2
	vinsgr2vr.w	$vr8, $t7, 3
	ldx.w	$a3, $t1, $s2
	ldx.w	$t2, $t1, $s5
	ldx.w	$t4, $t1, $s6
	ldx.w	$t7, $t1, $s7
	vinsgr2vr.w	$vr9, $a3, 0
	vinsgr2vr.w	$vr9, $t2, 1
	vinsgr2vr.w	$vr9, $t4, 2
	vinsgr2vr.w	$vr9, $t7, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	ld.h	$a3, $a0, -26
	ld.h	$t2, $a0, -18
	ld.h	$t4, $a0, -10
	ld.h	$t7, $a0, -2
	vinsgr2vr.h	$vr8, $a3, 0
	vinsgr2vr.h	$vr8, $t2, 1
	vinsgr2vr.h	$vr8, $t4, 2
	vinsgr2vr.h	$vr8, $t7, 3
	ld.h	$a3, $a0, 6
	ld.h	$t2, $a0, 14
	ld.h	$t4, $a0, 22
	ld.h	$t7, $a0, 30
	vinsgr2vr.h	$vr9, $a3, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t4, 2
	vinsgr2vr.h	$vr9, $t7, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$a3, $fp, -26
	ld.h	$t2, $fp, -18
	ld.h	$t4, $fp, -10
	ld.h	$t7, $fp, -2
	vinsgr2vr.h	$vr10, $a3, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t4, 2
	vinsgr2vr.h	$vr10, $t7, 3
	ld.h	$a3, $fp, 6
	ld.h	$t2, $fp, 14
	ld.h	$t4, $fp, 22
	ld.h	$t7, $fp, 30
	vinsgr2vr.h	$vr11, $a3, 0
	vinsgr2vr.h	$vr11, $t2, 1
	vinsgr2vr.h	$vr11, $t4, 2
	vinsgr2vr.h	$vr11, $t7, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a3, $vr9, 0
	slli.d	$a3, $a3, 2
	vpickve2gr.d	$t2, $vr9, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t4, $vr10, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t7, $vr10, 1
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 1
	slli.d	$s7, $s7, 2
	ldx.w	$a3, $t1, $a3
	ldx.w	$t2, $t1, $t2
	ldx.w	$t4, $t1, $t4
	ldx.w	$t7, $t1, $t7
	vinsgr2vr.w	$vr8, $a3, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vinsgr2vr.w	$vr8, $t4, 2
	vinsgr2vr.w	$vr8, $t7, 3
	ldx.w	$a3, $t1, $s2
	ldx.w	$t2, $t1, $s5
	ldx.w	$t4, $t1, $s6
	ldx.w	$t7, $t1, $s7
	vinsgr2vr.w	$vr9, $a3, 0
	vinsgr2vr.w	$vr9, $t2, 1
	vinsgr2vr.w	$vr9, $t4, 2
	vinsgr2vr.w	$vr9, $t7, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$s0, $s0, -8
	addi.d	$a0, $a0, 64
	addi.d	$fp, $fp, 64
	bnez	$s0, .LBB6_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB6_2 Depth=1
	vadd.w	$vr5, $vr7, $vr6
	vhaddw.d.w	$vr5, $vr5, $vr5
	vhaddw.q.d	$vr5, $vr5, $vr5
	vpickve2gr.d	$fp, $vr5, 0
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$s5, $zero, 29
	beq	$t3, $a0, .LBB6_9
	.p2align	4, , 16
.LBB6_8:                                # %scalar.ph
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $ra, 0
	mul.d	$a0, $a4, $a0
	add.d	$a0, $a0, $a5
	sra.w	$a0, $a0, $a6
	add.w	$a0, $a0, $a7
	srai.d	$a3, $a0, 63
	andn	$a0, $a0, $a3
	slt	$a3, $a0, $t8
	maskeqz	$a0, $a0, $a3
	ld.hu	$t2, $a1, 0
	ld.hu	$t4, $ra, 2
	masknez	$a3, $t8, $a3
	or	$a0, $a0, $a3
	sub.w	$a0, $t2, $a0
	mul.d	$a3, $a4, $t4
	add.d	$a3, $a3, $a5
	sra.w	$a3, $a3, $a6
	add.w	$a3, $a3, $a7
	srai.d	$t2, $a3, 63
	andn	$a3, $a3, $t2
	slt	$t2, $a3, $t8
	maskeqz	$a3, $a3, $t2
	masknez	$t2, $t8, $t2
	ld.hu	$t4, $a1, 2
	ld.hu	$t7, $ra, 4
	or	$a3, $a3, $t2
	slli.d	$a0, $a0, 2
	sub.w	$a3, $t4, $a3
	mul.d	$t2, $a4, $t7
	add.d	$t2, $t2, $a5
	sra.w	$t2, $t2, $a6
	add.w	$t2, $t2, $a7
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $t8
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $t8, $t4
	or	$t2, $t2, $t4
	ld.hu	$t4, $a1, 4
	ldx.w	$a0, $t1, $a0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $t1, $a3
	sub.w	$t2, $t4, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t1, $t2
	ld.hu	$t4, $ra, 6
	add.d	$a0, $a0, $fp
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $t2
	mul.d	$a3, $a4, $t4
	add.d	$a3, $a3, $a5
	sra.w	$a3, $a3, $a6
	add.w	$a3, $a3, $a7
	srai.d	$t2, $a3, 63
	andn	$a3, $a3, $t2
	slt	$t2, $a3, $t8
	ld.hu	$t4, $a1, 6
	maskeqz	$a3, $a3, $t2
	masknez	$t2, $t8, $t2
	or	$a3, $a3, $t2
	sub.w	$a3, $t4, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $t1, $a3
	addi.d	$ra, $ra, 8
	addi.d	$a1, $a1, 8
	addi.w	$s0, $s0, 4
	add.d	$fp, $a0, $a3
	blt	$s0, $s4, .LBB6_8
.LBB6_9:                                # %._crit_edge
                                        #   in Loop: Header=BB6_2 Depth=1
	st.d	$ra, $s8, %pc_lo12(ref_line)
	st.d	$a1, $s7, %pc_lo12(src_line)
	move	$s2, $a1
	move	$a0, $ra
.LBB6_10:                               #   in Loop: Header=BB6_2 Depth=1
	addi.w	$a1, $fp, 0
	bge	$a1, $s1, .LBB6_29
# %bb.11:                               #   in Loop: Header=BB6_2 Depth=1
	alsl.d	$a0, $a2, $a0, 1
	addi.w	$t0, $t0, 1
	st.d	$a0, $s8, %pc_lo12(ref_line)
	bne	$t0, $s3, .LBB6_2
	b	.LBB6_13
.LBB6_12:
	move	$fp, $zero
.LBB6_13:                               # %._crit_edge82
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB6_29
# %bb.14:
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(shift_cr_y)
	ld.wu	$a1, $a1, %pc_lo12(shift_cr_y)
	pcalau12i	$a2, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a2, $a2, %pc_lo12(img_cr_padded_size_x)
	vrepli.b	$vr11, 0
	sra.w	$s4, $s4, $a0
	sra.w	$s3, $s3, $a1
	sub.w	$a3, $a2, $s4
	bstrpick.d	$a0, $s4, 31, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a1, $a0, 3
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	pcalau12i	$a0, %pc_hi20(get_crline)
	addi.d	$a0, $a0, %pc_lo12(get_crline)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight_cr)
	addi.d	$a0, $a0, %pc_lo12(weight_cr)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(wp_chroma_round)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(chroma_log_weight_denom)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(offset_cr)
	addi.d	$a0, $a0, %pc_lo12(offset_cr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(byte_abs)
	ld.d	$a0, $a0, %got_pc_lo12(byte_abs)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $zero
	lu12i.w	$a0, 3
	ori	$s2, $a0, 3236
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	b	.LBB6_16
	.p2align	4, , 16
.LBB6_15:                               # %._crit_edge101
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s6, $zero, 1
	move	$a1, $zero
	beqz	$a0, .LBB6_29
.LBB6_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_18 Depth 2
                                        #       Child Loop BB6_22 Depth 3
                                        #       Child Loop BB6_25 Depth 3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a0, $s6, $a0, 3
	ld.d	$a0, $a0, 8
	ori	$a1, $zero, 256
	sll.w	$a1, $a1, $s6
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 1
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s8, %pc_lo12(ref_line)
	blez	$s3, .LBB6_15
# %bb.17:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a1, $zero
	ld.d	$t5, $s7, %pc_lo12(src_line)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $a2, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s0, $s6, $a2, 2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a4, $a2, %pc_lo12(wp_chroma_round)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a5, $a2, %pc_lo12(chroma_log_weight_denom)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $a2, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s5, $s6, $a2, 2
	vreplgr2vr.w	$vr0, $a4
	vreplgr2vr.w	$vr1, $a5
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_18:                               # %.preheader
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_22 Depth 3
                                        #       Child Loop BB6_25 Depth 3
	blez	$s4, .LBB6_27
# %bb.19:                               # %.lr.ph86
                                        #   in Loop: Header=BB6_18 Depth=2
	ldx.w	$t0, $a7, $s2
	ld.w	$t1, $s0, 0
	ld.w	$t2, $s5, 0
	ori	$a2, $zero, 8
	bgeu	$s4, $a2, .LBB6_21
# %bb.20:                               #   in Loop: Header=BB6_18 Depth=2
	move	$t6, $zero
	move	$t3, $a0
	move	$t4, $t5
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_21:                               # %vector.ph169
                                        #   in Loop: Header=BB6_18 Depth=2
	move	$a3, $s2
	move	$a2, $s1
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	add.d	$t3, $a0, $t4
	add.d	$t4, $t5, $t4
	vori.b	$vr5, $vr11, 0
	vinsgr2vr.w	$vr5, $fp, 0
	vreplgr2vr.w	$vr2, $t0
	vreplgr2vr.w	$vr3, $t1
	vreplgr2vr.w	$vr4, $t2
	addi.d	$a0, $a0, 16
	addi.d	$t5, $t5, 16
	ld.d	$t6, $sp, 176                   # 8-byte Folded Reload
	vori.b	$vr6, $vr11, 0
	.p2align	4, , 16
.LBB6_22:                               # %vector.body183
                                        #   Parent Loop BB6_16 Depth=1
                                        #     Parent Loop BB6_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$t7, $a0, -16
	ld.h	$t8, $a0, -12
	ld.h	$fp, $a0, -8
	ld.h	$s6, $a0, -4
	vinsgr2vr.h	$vr7, $t7, 0
	vinsgr2vr.h	$vr7, $t8, 1
	vinsgr2vr.h	$vr7, $fp, 2
	vinsgr2vr.h	$vr7, $s6, 3
	ld.h	$t7, $a0, 0
	ld.h	$t8, $a0, 4
	ld.h	$fp, $a0, 8
	ld.h	$s6, $a0, 12
	vinsgr2vr.h	$vr8, $t7, 0
	vinsgr2vr.h	$vr8, $t8, 1
	vinsgr2vr.h	$vr8, $fp, 2
	vinsgr2vr.h	$vr8, $s6, 3
	vilvl.h	$vr7, $vr11, $vr7
	vilvl.h	$vr8, $vr11, $vr8
	vori.b	$vr9, $vr0, 0
	vmadd.w	$vr9, $vr3, $vr7
	vori.b	$vr7, $vr0, 0
	vmadd.w	$vr7, $vr3, $vr8
	vsra.w	$vr8, $vr9, $vr1
	vsra.w	$vr7, $vr7, $vr1
	vadd.w	$vr8, $vr8, $vr4
	vadd.w	$vr7, $vr7, $vr4
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr2
	vmin.w	$vr7, $vr7, $vr2
	ld.h	$t7, $t5, -16
	ld.h	$t8, $t5, -12
	ld.h	$fp, $t5, -8
	ld.h	$s6, $t5, -4
	vinsgr2vr.h	$vr9, $t7, 0
	vinsgr2vr.h	$vr9, $t8, 1
	vinsgr2vr.h	$vr9, $fp, 2
	vinsgr2vr.h	$vr9, $s6, 3
	ld.h	$t7, $t5, 0
	ld.h	$t8, $t5, 4
	ld.h	$fp, $t5, 8
	ld.h	$s6, $t5, 12
	vinsgr2vr.h	$vr10, $t7, 0
	vinsgr2vr.h	$vr10, $t8, 1
	vinsgr2vr.h	$vr10, $fp, 2
	vinsgr2vr.h	$vr10, $s6, 3
	vilvl.h	$vr9, $vr11, $vr9
	vilvl.h	$vr10, $vr11, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vshuf4i.w	$vr9, $vr8, 50
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr10, $vr7, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$t7, $vr8, 0
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr8, 1
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$fp, $vr9, 0
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s6, $vr9, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$ra, $vr7, 0
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$s2, $vr7, 1
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s7, $vr10, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$s1, $vr10, 1
	slli.d	$s1, $s1, 2
	ldx.w	$t7, $a6, $t7
	ldx.w	$t8, $a6, $t8
	ldx.w	$fp, $a6, $fp
	ldx.w	$s6, $a6, $s6
	vinsgr2vr.w	$vr7, $t7, 0
	vinsgr2vr.w	$vr7, $t8, 1
	vinsgr2vr.w	$vr7, $fp, 2
	vinsgr2vr.w	$vr7, $s6, 3
	ldx.w	$t7, $a6, $ra
	ldx.w	$t8, $a6, $s2
	ldx.w	$fp, $a6, $s7
	ldx.w	$s1, $a6, $s1
	vinsgr2vr.w	$vr8, $t7, 0
	vinsgr2vr.w	$vr8, $t8, 1
	vinsgr2vr.w	$vr8, $fp, 2
	vinsgr2vr.w	$vr8, $s1, 3
	vadd.w	$vr5, $vr7, $vr5
	vadd.w	$vr6, $vr8, $vr6
	ld.h	$t7, $a0, -14
	ld.h	$t8, $a0, -10
	ld.h	$fp, $a0, -6
	ld.h	$s1, $a0, -2
	vinsgr2vr.h	$vr7, $t7, 0
	vinsgr2vr.h	$vr7, $t8, 1
	vinsgr2vr.h	$vr7, $fp, 2
	vinsgr2vr.h	$vr7, $s1, 3
	ld.h	$t7, $a0, 2
	ld.h	$t8, $a0, 6
	ld.h	$fp, $a0, 10
	ld.h	$s1, $a0, 14
	vinsgr2vr.h	$vr8, $t7, 0
	vinsgr2vr.h	$vr8, $t8, 1
	vinsgr2vr.h	$vr8, $fp, 2
	vinsgr2vr.h	$vr8, $s1, 3
	vilvl.h	$vr7, $vr11, $vr7
	vilvl.h	$vr8, $vr11, $vr8
	vori.b	$vr9, $vr0, 0
	vmadd.w	$vr9, $vr3, $vr7
	vori.b	$vr7, $vr0, 0
	vmadd.w	$vr7, $vr3, $vr8
	vsra.w	$vr8, $vr9, $vr1
	vsra.w	$vr7, $vr7, $vr1
	vadd.w	$vr8, $vr8, $vr4
	vadd.w	$vr7, $vr7, $vr4
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr2
	vmin.w	$vr7, $vr7, $vr2
	ld.h	$t7, $t5, -14
	ld.h	$t8, $t5, -10
	ld.h	$fp, $t5, -6
	ld.h	$s1, $t5, -2
	vinsgr2vr.h	$vr9, $t7, 0
	vinsgr2vr.h	$vr9, $t8, 1
	vinsgr2vr.h	$vr9, $fp, 2
	vinsgr2vr.h	$vr9, $s1, 3
	ld.h	$t7, $t5, 2
	ld.h	$t8, $t5, 6
	ld.h	$fp, $t5, 10
	ld.h	$s1, $t5, 14
	vinsgr2vr.h	$vr10, $t7, 0
	vinsgr2vr.h	$vr10, $t8, 1
	vinsgr2vr.h	$vr10, $fp, 2
	vinsgr2vr.h	$vr10, $s1, 3
	vilvl.h	$vr9, $vr11, $vr9
	vilvl.h	$vr10, $vr11, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vshuf4i.w	$vr9, $vr8, 50
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr10, $vr7, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$t7, $vr8, 0
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr8, 1
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$fp, $vr9, 0
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s1, $vr9, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr7, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s6, $vr7, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr10, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$ra, $vr10, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t7, $a6, $t7
	ldx.w	$t8, $a6, $t8
	ldx.w	$fp, $a6, $fp
	ldx.w	$s1, $a6, $s1
	vinsgr2vr.w	$vr7, $t7, 0
	vinsgr2vr.w	$vr7, $t8, 1
	vinsgr2vr.w	$vr7, $fp, 2
	vinsgr2vr.w	$vr7, $s1, 3
	ldx.w	$t7, $a6, $s2
	ldx.w	$t8, $a6, $s6
	ldx.w	$fp, $a6, $s7
	ldx.w	$s1, $a6, $ra
	vinsgr2vr.w	$vr8, $t7, 0
	vinsgr2vr.w	$vr8, $t8, 1
	vinsgr2vr.w	$vr8, $fp, 2
	vinsgr2vr.w	$vr8, $s1, 3
	vadd.w	$vr5, $vr5, $vr7
	vadd.w	$vr6, $vr6, $vr8
	addi.d	$t6, $t6, -8
	addi.d	$a0, $a0, 32
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB6_22
# %bb.23:                               # %middle.block206
                                        #   in Loop: Header=BB6_18 Depth=2
	vadd.w	$vr2, $vr6, $vr5
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$fp, $vr2, 0
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	move	$t6, $t5
	move	$s1, $a2
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$s2, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	beq	$t5, $a0, .LBB6_26
.LBB6_24:                               # %scalar.ph167.preheader
                                        #   in Loop: Header=BB6_18 Depth=2
	sub.d	$a0, $s4, $t6
	.p2align	4, , 16
.LBB6_25:                               # %scalar.ph167
                                        #   Parent Loop BB6_16 Depth=1
                                        #     Parent Loop BB6_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$t5, $t3, 0
	mul.d	$t5, $t1, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $t2
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $t0
	ld.hu	$t7, $t4, 0
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t0, $t6
	or	$t5, $t5, $t6
	sub.w	$t5, $t7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a6, $t5
	ld.hu	$t6, $t3, 2
	add.d	$t5, $t5, $fp
	mul.d	$t6, $t1, $t6
	add.d	$t6, $t6, $a4
	sra.w	$t6, $t6, $a5
	add.w	$t6, $t6, $t2
	srai.d	$t7, $t6, 63
	andn	$t6, $t6, $t7
	slt	$t7, $t6, $t0
	ld.hu	$t8, $t4, 2
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $t0, $t7
	or	$t6, $t6, $t7
	sub.w	$t6, $t8, $t6
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a6, $t6
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	addi.w	$a0, $a0, -1
	add.d	$fp, $t5, $t6
	bnez	$a0, .LBB6_25
.LBB6_26:                               # %._crit_edge87
                                        #   in Loop: Header=BB6_18 Depth=2
	st.d	$t3, $s8, %pc_lo12(ref_line)
	st.d	$t4, $s7, %pc_lo12(src_line)
	move	$t5, $t4
	move	$a0, $t3
.LBB6_27:                               #   in Loop: Header=BB6_18 Depth=2
	addi.w	$t0, $fp, 0
	bge	$t0, $s1, .LBB6_29
# %bb.28:                               #   in Loop: Header=BB6_18 Depth=2
	alsl.d	$a0, $a3, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s8, %pc_lo12(ref_line)
	bne	$a1, $s3, .LBB6_18
	b	.LBB6_15
.LBB6_29:                               # %.loopexit
	addi.w	$a0, $fp, 0
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
.Lfunc_end6:
	.size	computeSADWP, .Lfunc_end6-computeSADWP
                                        # -- End function
	.globl	computeBiPredSAD1               # -- Begin function computeBiPredSAD1
	.p2align	5
	.type	computeBiPredSAD1,@function
computeBiPredSAD1:                      # @computeBiPredSAD1
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
	move	$s3, $a6
	move	$s5, $a5
	move	$s4, $a4
	move	$fp, $a3
	move	$s7, $a2
	move	$s6, $a1
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$s0, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s8, %pc_hi20(src_line)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $s8, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$s1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $s1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	move	$a1, $a7
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s1, $a1
	pcalau12i	$s1, %pc_hi20(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	move	$a1, $s5
	move	$a2, $s4
	jirl	$ra, $a3, 0
	pcalau12i	$s2, %pc_hi20(ref1_line)
	st.d	$a0, $s2, %pc_lo12(ref1_line)
	blez	$s6, .LBB7_8
# %bb.1:                                # %.preheader67.lr.ph
	ld.d	$a5, $s8, %pc_lo12(src_line)
	ld.d	$a4, $s1, %pc_lo12(ref2_line)
	sub.w	$a1, $s0, $s7
	pcalau12i	$a2, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a2, %got_pc_lo12(byte_abs)
	ld.d	$a2, $a2, 0
	move	$s0, $zero
	move	$a3, $zero
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB7_2:                                # %.preheader67
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	blez	$s7, .LBB7_6
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	move	$a6, $zero
	.p2align	4, , 16
.LBB7_4:                                # %.lr.ph
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a0, 0
	ld.d	$t1, $a4, 0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $t0, 0
	vinsgr2vr.d	$vr3, $t1, 0
	vor.v	$vr4, $vr2, $vr3
	vxor.v	$vr2, $vr2, $vr3
	vsrli.h	$vr2, $vr2, 1
	vsub.h	$vr2, $vr4, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a7, $vr1, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 8
	addi.d	$a4, $a4, 8
	add.d	$a7, $a7, $s0
	vpickve2gr.w	$t0, $vr1, 1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	vpickve2gr.w	$t1, $vr1, 2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	vpickve2gr.w	$t2, $vr1, 3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a2, $t2
	add.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t1
	addi.w	$a6, $a6, 4
	add.w	$s0, $a7, $t2
	blt	$a6, $s7, .LBB7_4
# %bb.5:                                # %._crit_edge
                                        #   in Loop: Header=BB7_2 Depth=1
	st.d	$a5, $s8, %pc_lo12(src_line)
	st.d	$a0, $s2, %pc_lo12(ref1_line)
	st.d	$a4, $s1, %pc_lo12(ref2_line)
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	bge	$s0, $fp, .LBB7_27
# %bb.7:                                #   in Loop: Header=BB7_2 Depth=1
	alsl.d	$a4, $a1, $a4, 1
	st.d	$a4, $s1, %pc_lo12(ref2_line)
	alsl.d	$a0, $a1, $a0, 1
	addi.w	$a3, $a3, 1
	st.d	$a0, $s2, %pc_lo12(ref1_line)
	bne	$a3, $s6, .LBB7_2
	b	.LBB7_9
.LBB7_8:
	move	$s0, $zero
.LBB7_9:                                # %._crit_edge90
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB7_27
# %bb.10:
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(shift_cr_y)
	ld.wu	$a1, $a1, %pc_lo12(shift_cr_y)
	pcalau12i	$a2, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a3, $a2, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s7, $s7, $a0
	sra.w	$s6, $s6, $a1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	move	$a2, $s3
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	sub.w	$s4, $a3, $s7
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	st.d	$a1, $s8, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s3, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s3, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ldx.d	$a3, $s3, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $a1
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $s5
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s2, %pc_lo12(ref1_line)
	blez	$s6, .LBB7_18
# %bb.11:                               # %.preheader.lr.ph
	ld.d	$a3, $s8, %pc_lo12(src_line)
	ld.d	$a4, $s1, %pc_lo12(ref2_line)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a1, $a1, %got_pc_lo12(byte_abs)
	ld.d	$a1, $a1, 0
	move	$t2, $zero
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_12:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	blez	$s7, .LBB7_16
# %bb.13:                               # %.lr.ph94.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$a5, $s7
	.p2align	4, , 16
.LBB7_14:                               # %.lr.ph94
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a0, 0
	ld.hu	$a7, $a4, 0
	ld.hu	$t0, $a3, 0
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	sub.d	$a6, $t0, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	ld.hu	$a7, $a0, 2
	ld.hu	$t0, $a4, 2
	add.d	$a6, $a6, $s0
	ld.hu	$t1, $a3, 2
	addi.d	$a3, $a3, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	sub.d	$a7, $t1, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a1, $a7
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, 4
	addi.w	$a5, $a5, -1
	add.w	$s0, $a6, $a7
	bnez	$a5, .LBB7_14
# %bb.15:                               # %._crit_edge95
                                        #   in Loop: Header=BB7_12 Depth=1
	st.d	$a3, $s8, %pc_lo12(src_line)
	st.d	$a0, $s2, %pc_lo12(ref1_line)
	st.d	$a4, $s1, %pc_lo12(ref2_line)
.LBB7_16:                               #   in Loop: Header=BB7_12 Depth=1
	bge	$s0, $fp, .LBB7_27
# %bb.17:                               #   in Loop: Header=BB7_12 Depth=1
	alsl.d	$a4, $s4, $a4, 1
	st.d	$a4, $s1, %pc_lo12(ref2_line)
	alsl.d	$a0, $s4, $a0, 1
	addi.w	$t2, $t2, 1
	st.d	$a0, $s2, %pc_lo12(ref1_line)
	bne	$t2, $s6, .LBB7_12
	b	.LBB7_19
.LBB7_18:
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
.LBB7_19:                               # %._crit_edge114
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a3, $s3, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	st.d	$a1, $s8, %pc_lo12(src_line)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s3, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s2, %pc_lo12(ref1_line)
	blez	$s6, .LBB7_27
# %bb.20:                               # %.preheader.lr.ph.1
	ld.d	$a3, $s8, %pc_lo12(src_line)
	ld.d	$a4, $s1, %pc_lo12(ref2_line)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a1, $a1, %got_pc_lo12(byte_abs)
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	.p2align	4, , 16
.LBB7_21:                               # %.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_23 Depth 2
	blez	$s7, .LBB7_25
# %bb.22:                               # %.lr.ph94.1.preheader
                                        #   in Loop: Header=BB7_21 Depth=1
	move	$a5, $s7
	.p2align	4, , 16
.LBB7_23:                               # %.lr.ph94.1
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a0, 0
	ld.hu	$a7, $a4, 0
	ld.hu	$t0, $a3, 0
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	sub.d	$a6, $t0, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	ld.hu	$a7, $a0, 2
	ld.hu	$t0, $a4, 2
	add.d	$a6, $a6, $s0
	ld.hu	$t1, $a3, 2
	addi.d	$a3, $a3, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	sub.d	$a7, $t1, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a1, $a7
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, 4
	addi.w	$a5, $a5, -1
	add.w	$s0, $a6, $a7
	bnez	$a5, .LBB7_23
# %bb.24:                               # %._crit_edge95.1
                                        #   in Loop: Header=BB7_21 Depth=1
	st.d	$a3, $s8, %pc_lo12(src_line)
	st.d	$a0, $s2, %pc_lo12(ref1_line)
	st.d	$a4, $s1, %pc_lo12(ref2_line)
.LBB7_25:                               #   in Loop: Header=BB7_21 Depth=1
	bge	$s0, $fp, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_21 Depth=1
	alsl.d	$a4, $s4, $a4, 1
	st.d	$a4, $s1, %pc_lo12(ref2_line)
	alsl.d	$a0, $s4, $a0, 1
	addi.w	$a2, $a2, 1
	st.d	$a0, $s2, %pc_lo12(ref1_line)
	bne	$a2, $s6, .LBB7_21
.LBB7_27:                               # %.loopexit
	move	$a0, $s0
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
.Lfunc_end7:
	.size	computeBiPredSAD1, .Lfunc_end7-computeBiPredSAD1
                                        # -- End function
	.globl	computeBiPredSAD2               # -- Begin function computeBiPredSAD2
	.p2align	5
	.type	computeBiPredSAD2,@function
computeBiPredSAD2:                      # @computeBiPredSAD2
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
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.w	$t0, $t0, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$t1, %pc_hi20(wp_luma_round)
	ld.w	$t1, $t1, %pc_lo12(wp_luma_round)
	move	$s1, $a5
	move	$s3, $a4
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	move	$s6, $a2
	move	$s5, $a1
	addi.d	$s7, $t0, 1
	slli.d	$s8, $t1, 1
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$fp, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s4, %pc_hi20(src_line)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a0, $s4, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$s0, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $s0, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 192                   # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 184                   # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	pcalau12i	$s2, %pc_hi20(ref2_line)
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	move	$a1, $s1
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	move	$a2, $s3
	jirl	$ra, $a3, 0
	pcalau12i	$s0, %pc_hi20(ref1_line)
	st.d	$a0, $s0, %pc_lo12(ref1_line)
	vreplgr2vr.w	$vr12, $s8
	vreplgr2vr.w	$vr13, $s7
	lu12i.w	$t5, 3
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	blez	$s5, .LBB8_12
# %bb.1:                                # %.preheader103.lr.ph
	ld.d	$s4, $s4, %pc_lo12(src_line)
	ld.d	$s1, $s2, %pc_lo12(ref2_line)
	pcalau12i	$a1, %pc_hi20(weight1)
	ld.h	$a2, $a1, %pc_lo12(weight1)
	pcalau12i	$a1, %pc_hi20(weight2)
	ld.h	$a3, $a1, %pc_lo12(weight2)
	sub.w	$a4, $fp, $s6
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$t6, $a1, 0
	pcalau12i	$a1, %pc_hi20(offsetBi)
	ld.h	$a6, $a1, %pc_lo12(offsetBi)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a1, $a1, %got_pc_lo12(byte_abs)
	move	$s3, $zero
	move	$a7, $zero
	ld.d	$t0, $a1, 0
	addi.d	$a1, $s6, -1
	bstrpick.d	$a1, $a1, 31, 2
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 30, 3
	slli.d	$a5, $a1, 3
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	slli.d	$a5, $a1, 5
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 6
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr0, $a2
	vreplgr2vr.w	$vr1, $a3
	vreplgr2vr.w	$vr2, $a6
	ori	$a1, $t5, 3232
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	vrepli.b	$vr3, 0
	st.d	$t6, $sp, 240                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_2:                                # %.preheader103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
                                        #     Child Loop BB8_8 Depth 2
	blez	$s6, .LBB8_10
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$t7, $t6, $a1
	ori	$a1, $zero, 29
	bgeu	$s6, $a1, .LBB8_5
# %bb.4:                                #   in Loop: Header=BB8_2 Depth=1
	move	$fp, $zero
	move	$t8, $a0
	move	$a1, $s1
	move	$ra, $s4
	ld.d	$t4, $sp, 264                   # 8-byte Folded Reload
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_5:                                # %vector.ph
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	add.d	$t8, $a0, $a5
	add.d	$a1, $s1, $a5
	add.d	$ra, $s4, $a5
	vori.b	$vr5, $vr3, 0
	vinsgr2vr.w	$vr5, $s3, 0
	vreplgr2vr.w	$vr4, $t7
	addi.d	$a0, $a0, 32
	addi.d	$s1, $s1, 32
	addi.d	$s4, $s4, 32
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	vori.b	$vr6, $vr3, 0
	.p2align	4, , 16
.LBB8_6:                                # %vector.body
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s3, $a0, -32
	ld.h	$t6, $a0, -24
	ld.h	$t3, $a0, -16
	ld.h	$t1, $a0, -8
	vinsgr2vr.h	$vr7, $s3, 0
	vinsgr2vr.h	$vr7, $t6, 1
	vinsgr2vr.h	$vr7, $t3, 2
	vinsgr2vr.h	$vr7, $t1, 3
	ld.h	$t1, $a0, 0
	ld.h	$t3, $a0, 8
	ld.h	$t6, $a0, 16
	ld.h	$s3, $a0, 24
	vinsgr2vr.h	$vr8, $t1, 0
	vinsgr2vr.h	$vr8, $t3, 1
	vinsgr2vr.h	$vr8, $t6, 2
	vinsgr2vr.h	$vr8, $s3, 3
	vilvl.h	$vr7, $vr3, $vr7
	vilvl.h	$vr8, $vr3, $vr8
	ld.h	$t1, $s1, -32
	ld.h	$t3, $s1, -24
	ld.h	$t6, $s1, -16
	ld.h	$s3, $s1, -8
	vinsgr2vr.h	$vr9, $t1, 0
	vinsgr2vr.h	$vr9, $t3, 1
	vinsgr2vr.h	$vr9, $t6, 2
	vinsgr2vr.h	$vr9, $s3, 3
	ld.h	$t1, $s1, 0
	ld.h	$t3, $s1, 8
	ld.h	$t6, $s1, 16
	ld.h	$s3, $s1, 24
	vinsgr2vr.h	$vr10, $t1, 0
	vinsgr2vr.h	$vr10, $t3, 1
	vinsgr2vr.h	$vr10, $t6, 2
	vinsgr2vr.h	$vr10, $s3, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vori.b	$vr11, $vr12, 0
	vmadd.w	$vr11, $vr0, $vr7
	vori.b	$vr7, $vr12, 0
	vmadd.w	$vr7, $vr0, $vr8
	vmadd.w	$vr11, $vr1, $vr9
	vmadd.w	$vr7, $vr1, $vr10
	vsra.w	$vr8, $vr11, $vr13
	vsra.w	$vr7, $vr7, $vr13
	vadd.w	$vr8, $vr8, $vr2
	vadd.w	$vr7, $vr7, $vr2
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr4
	vmin.w	$vr7, $vr7, $vr4
	ld.h	$t1, $s4, -32
	ld.h	$t3, $s4, -24
	ld.h	$t6, $s4, -16
	ld.h	$s3, $s4, -8
	vinsgr2vr.h	$vr9, $t1, 0
	vinsgr2vr.h	$vr9, $t3, 1
	vinsgr2vr.h	$vr9, $t6, 2
	vinsgr2vr.h	$vr9, $s3, 3
	ld.h	$t1, $s4, 0
	ld.h	$t3, $s4, 8
	ld.h	$t6, $s4, 16
	ld.h	$s3, $s4, 24
	vinsgr2vr.h	$vr10, $t1, 0
	vinsgr2vr.h	$vr10, $t3, 1
	vinsgr2vr.h	$vr10, $t6, 2
	vinsgr2vr.h	$vr10, $s3, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vshuf4i.w	$vr9, $vr8, 50
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr10, $vr7, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$t1, $vr8, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t3, $vr8, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t6, $vr9, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$s3, $vr9, 1
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$a5, $vr7, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$t5, $vr7, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t2, $vr10, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t4, $vr10, 1
	slli.d	$t4, $t4, 2
	ldx.w	$t1, $t0, $t1
	ldx.w	$t3, $t0, $t3
	ldx.w	$t6, $t0, $t6
	ldx.w	$s3, $t0, $s3
	vinsgr2vr.w	$vr7, $t1, 0
	vinsgr2vr.w	$vr7, $t3, 1
	vinsgr2vr.w	$vr7, $t6, 2
	vinsgr2vr.w	$vr7, $s3, 3
	ldx.w	$a5, $t0, $a5
	ldx.w	$t1, $t0, $t5
	ldx.w	$t2, $t0, $t2
	ldx.w	$t3, $t0, $t4
	vinsgr2vr.w	$vr8, $a5, 0
	vinsgr2vr.w	$vr8, $t1, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t3, 3
	vadd.w	$vr5, $vr7, $vr5
	vadd.w	$vr6, $vr8, $vr6
	ld.h	$a5, $a0, -30
	ld.h	$t1, $a0, -22
	ld.h	$t2, $a0, -14
	ld.h	$t3, $a0, -6
	vinsgr2vr.h	$vr7, $a5, 0
	vinsgr2vr.h	$vr7, $t1, 1
	vinsgr2vr.h	$vr7, $t2, 2
	vinsgr2vr.h	$vr7, $t3, 3
	ld.h	$a5, $a0, 2
	ld.h	$t1, $a0, 10
	ld.h	$t2, $a0, 18
	ld.h	$t3, $a0, 26
	vinsgr2vr.h	$vr8, $a5, 0
	vinsgr2vr.h	$vr8, $t1, 1
	vinsgr2vr.h	$vr8, $t2, 2
	vinsgr2vr.h	$vr8, $t3, 3
	vilvl.h	$vr7, $vr3, $vr7
	vilvl.h	$vr8, $vr3, $vr8
	ld.h	$a5, $s1, -30
	ld.h	$t1, $s1, -22
	ld.h	$t2, $s1, -14
	ld.h	$t3, $s1, -6
	vinsgr2vr.h	$vr9, $a5, 0
	vinsgr2vr.h	$vr9, $t1, 1
	vinsgr2vr.h	$vr9, $t2, 2
	vinsgr2vr.h	$vr9, $t3, 3
	ld.h	$a5, $s1, 2
	ld.h	$t1, $s1, 10
	ld.h	$t2, $s1, 18
	ld.h	$t3, $s1, 26
	vinsgr2vr.h	$vr10, $a5, 0
	vinsgr2vr.h	$vr10, $t1, 1
	vinsgr2vr.h	$vr10, $t2, 2
	vinsgr2vr.h	$vr10, $t3, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vori.b	$vr11, $vr12, 0
	vmadd.w	$vr11, $vr0, $vr7
	vori.b	$vr7, $vr12, 0
	vmadd.w	$vr7, $vr0, $vr8
	vmadd.w	$vr11, $vr1, $vr9
	vmadd.w	$vr7, $vr1, $vr10
	vsra.w	$vr8, $vr11, $vr13
	vsra.w	$vr7, $vr7, $vr13
	vadd.w	$vr8, $vr8, $vr2
	vadd.w	$vr7, $vr7, $vr2
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr4
	vmin.w	$vr7, $vr7, $vr4
	ld.h	$a5, $s4, -30
	ld.h	$t1, $s4, -22
	ld.h	$t2, $s4, -14
	ld.h	$t3, $s4, -6
	vinsgr2vr.h	$vr9, $a5, 0
	vinsgr2vr.h	$vr9, $t1, 1
	vinsgr2vr.h	$vr9, $t2, 2
	vinsgr2vr.h	$vr9, $t3, 3
	ld.h	$a5, $s4, 2
	ld.h	$t1, $s4, 10
	ld.h	$t2, $s4, 18
	ld.h	$t3, $s4, 26
	vinsgr2vr.h	$vr10, $a5, 0
	vinsgr2vr.h	$vr10, $t1, 1
	vinsgr2vr.h	$vr10, $t2, 2
	vinsgr2vr.h	$vr10, $t3, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vshuf4i.w	$vr9, $vr8, 50
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr10, $vr7, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a5, $vr8, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$t1, $vr8, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr9, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr9, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr7, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr7, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr10, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$s3, $vr10, 1
	slli.d	$s3, $s3, 2
	ldx.w	$a5, $t0, $a5
	ldx.w	$t1, $t0, $t1
	ldx.w	$t2, $t0, $t2
	ldx.w	$t3, $t0, $t3
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $t1, 1
	vinsgr2vr.w	$vr7, $t2, 2
	vinsgr2vr.w	$vr7, $t3, 3
	ldx.w	$a5, $t0, $t4
	ldx.w	$t1, $t0, $t5
	ldx.w	$t2, $t0, $t6
	ldx.w	$t3, $t0, $s3
	vinsgr2vr.w	$vr8, $a5, 0
	vinsgr2vr.w	$vr8, $t1, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t3, 3
	vadd.w	$vr5, $vr5, $vr7
	vadd.w	$vr6, $vr6, $vr8
	ld.h	$a5, $a0, -28
	ld.h	$t1, $a0, -20
	ld.h	$t2, $a0, -12
	ld.h	$t3, $a0, -4
	vinsgr2vr.h	$vr7, $a5, 0
	vinsgr2vr.h	$vr7, $t1, 1
	vinsgr2vr.h	$vr7, $t2, 2
	vinsgr2vr.h	$vr7, $t3, 3
	ld.h	$a5, $a0, 4
	ld.h	$t1, $a0, 12
	ld.h	$t2, $a0, 20
	ld.h	$t3, $a0, 28
	vinsgr2vr.h	$vr8, $a5, 0
	vinsgr2vr.h	$vr8, $t1, 1
	vinsgr2vr.h	$vr8, $t2, 2
	vinsgr2vr.h	$vr8, $t3, 3
	vilvl.h	$vr7, $vr3, $vr7
	vilvl.h	$vr8, $vr3, $vr8
	ld.h	$a5, $s1, -28
	ld.h	$t1, $s1, -20
	ld.h	$t2, $s1, -12
	ld.h	$t3, $s1, -4
	vinsgr2vr.h	$vr9, $a5, 0
	vinsgr2vr.h	$vr9, $t1, 1
	vinsgr2vr.h	$vr9, $t2, 2
	vinsgr2vr.h	$vr9, $t3, 3
	ld.h	$a5, $s1, 4
	ld.h	$t1, $s1, 12
	ld.h	$t2, $s1, 20
	ld.h	$t3, $s1, 28
	vinsgr2vr.h	$vr10, $a5, 0
	vinsgr2vr.h	$vr10, $t1, 1
	vinsgr2vr.h	$vr10, $t2, 2
	vinsgr2vr.h	$vr10, $t3, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vori.b	$vr11, $vr12, 0
	vmadd.w	$vr11, $vr0, $vr7
	vori.b	$vr7, $vr12, 0
	vmadd.w	$vr7, $vr0, $vr8
	vmadd.w	$vr11, $vr1, $vr9
	vmadd.w	$vr7, $vr1, $vr10
	vsra.w	$vr8, $vr11, $vr13
	vsra.w	$vr7, $vr7, $vr13
	vadd.w	$vr8, $vr8, $vr2
	vadd.w	$vr7, $vr7, $vr2
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr4
	vmin.w	$vr7, $vr7, $vr4
	ld.h	$a5, $s4, -28
	ld.h	$t1, $s4, -20
	ld.h	$t2, $s4, -12
	ld.h	$t3, $s4, -4
	vinsgr2vr.h	$vr9, $a5, 0
	vinsgr2vr.h	$vr9, $t1, 1
	vinsgr2vr.h	$vr9, $t2, 2
	vinsgr2vr.h	$vr9, $t3, 3
	ld.h	$a5, $s4, 4
	ld.h	$t1, $s4, 12
	ld.h	$t2, $s4, 20
	ld.h	$t3, $s4, 28
	vinsgr2vr.h	$vr10, $a5, 0
	vinsgr2vr.h	$vr10, $t1, 1
	vinsgr2vr.h	$vr10, $t2, 2
	vinsgr2vr.h	$vr10, $t3, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vshuf4i.w	$vr9, $vr8, 50
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr10, $vr7, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a5, $vr8, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$t1, $vr8, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr9, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr9, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr7, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr7, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr10, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$s3, $vr10, 1
	slli.d	$s3, $s3, 2
	ldx.w	$a5, $t0, $a5
	ldx.w	$t1, $t0, $t1
	ldx.w	$t2, $t0, $t2
	ldx.w	$t3, $t0, $t3
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $t1, 1
	vinsgr2vr.w	$vr7, $t2, 2
	vinsgr2vr.w	$vr7, $t3, 3
	ldx.w	$a5, $t0, $t4
	ldx.w	$t1, $t0, $t5
	ldx.w	$t2, $t0, $t6
	ldx.w	$t3, $t0, $s3
	vinsgr2vr.w	$vr8, $a5, 0
	vinsgr2vr.w	$vr8, $t1, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t3, 3
	vadd.w	$vr5, $vr5, $vr7
	vadd.w	$vr6, $vr6, $vr8
	ld.h	$a5, $a0, -26
	ld.h	$t1, $a0, -18
	ld.h	$t2, $a0, -10
	ld.h	$t3, $a0, -2
	vinsgr2vr.h	$vr7, $a5, 0
	vinsgr2vr.h	$vr7, $t1, 1
	vinsgr2vr.h	$vr7, $t2, 2
	vinsgr2vr.h	$vr7, $t3, 3
	ld.h	$a5, $a0, 6
	ld.h	$t1, $a0, 14
	ld.h	$t2, $a0, 22
	ld.h	$t3, $a0, 30
	vinsgr2vr.h	$vr8, $a5, 0
	vinsgr2vr.h	$vr8, $t1, 1
	vinsgr2vr.h	$vr8, $t2, 2
	vinsgr2vr.h	$vr8, $t3, 3
	vilvl.h	$vr7, $vr3, $vr7
	vilvl.h	$vr8, $vr3, $vr8
	ld.h	$a5, $s1, -26
	ld.h	$t1, $s1, -18
	ld.h	$t2, $s1, -10
	ld.h	$t3, $s1, -2
	vinsgr2vr.h	$vr9, $a5, 0
	vinsgr2vr.h	$vr9, $t1, 1
	vinsgr2vr.h	$vr9, $t2, 2
	vinsgr2vr.h	$vr9, $t3, 3
	ld.h	$a5, $s1, 6
	ld.h	$t1, $s1, 14
	ld.h	$t2, $s1, 22
	ld.h	$t3, $s1, 30
	vinsgr2vr.h	$vr10, $a5, 0
	vinsgr2vr.h	$vr10, $t1, 1
	vinsgr2vr.h	$vr10, $t2, 2
	vinsgr2vr.h	$vr10, $t3, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vori.b	$vr11, $vr12, 0
	vmadd.w	$vr11, $vr0, $vr7
	vori.b	$vr7, $vr12, 0
	vmadd.w	$vr7, $vr0, $vr8
	vmadd.w	$vr11, $vr1, $vr9
	vmadd.w	$vr7, $vr1, $vr10
	vsra.w	$vr8, $vr11, $vr13
	vsra.w	$vr7, $vr7, $vr13
	vadd.w	$vr8, $vr8, $vr2
	vadd.w	$vr7, $vr7, $vr2
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr4
	vmin.w	$vr7, $vr7, $vr4
	ld.h	$a5, $s4, -26
	ld.h	$t1, $s4, -18
	ld.h	$t2, $s4, -10
	ld.h	$t3, $s4, -2
	vinsgr2vr.h	$vr9, $a5, 0
	vinsgr2vr.h	$vr9, $t1, 1
	vinsgr2vr.h	$vr9, $t2, 2
	vinsgr2vr.h	$vr9, $t3, 3
	ld.h	$a5, $s4, 6
	ld.h	$t1, $s4, 14
	ld.h	$t2, $s4, 22
	ld.h	$t3, $s4, 30
	vinsgr2vr.h	$vr10, $a5, 0
	vinsgr2vr.h	$vr10, $t1, 1
	vinsgr2vr.h	$vr10, $t2, 2
	vinsgr2vr.h	$vr10, $t3, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vshuf4i.w	$vr9, $vr8, 50
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr10, $vr7, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a5, $vr8, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$t1, $vr8, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr9, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr9, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr7, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr7, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr10, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$s3, $vr10, 1
	slli.d	$s3, $s3, 2
	ldx.w	$a5, $t0, $a5
	ldx.w	$t1, $t0, $t1
	ldx.w	$t2, $t0, $t2
	ldx.w	$t3, $t0, $t3
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $t1, 1
	vinsgr2vr.w	$vr7, $t2, 2
	vinsgr2vr.w	$vr7, $t3, 3
	ldx.w	$a5, $t0, $t4
	ldx.w	$t1, $t0, $t5
	ldx.w	$t2, $t0, $t6
	ldx.w	$t3, $t0, $s3
	vinsgr2vr.w	$vr8, $a5, 0
	vinsgr2vr.w	$vr8, $t1, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t3, 3
	vadd.w	$vr5, $vr5, $vr7
	vadd.w	$vr6, $vr6, $vr8
	addi.d	$fp, $fp, -8
	addi.d	$a0, $a0, 64
	addi.d	$s1, $s1, 64
	addi.d	$s4, $s4, 64
	bnez	$fp, .LBB8_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB8_2 Depth=1
	vadd.w	$vr4, $vr6, $vr5
	vhaddw.d.w	$vr4, $vr4, $vr4
	vhaddw.q.d	$vr4, $vr4, $vr4
	vpickve2gr.d	$s3, $vr4, 0
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$t5, 3
	ld.d	$t6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB8_9
	.p2align	4, , 16
.LBB8_8:                                # %scalar.ph
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t8, 0
	ld.hu	$a5, $a1, 0
	mul.d	$a0, $a0, $a2
	mul.d	$a5, $a5, $a3
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $a5
	sra.w	$a0, $a0, $s7
	add.w	$a0, $a0, $a6
	srai.d	$a5, $a0, 63
	andn	$a0, $a0, $a5
	slt	$a5, $a0, $t7
	ld.hu	$t1, $ra, 0
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $t7, $a5
	or	$a0, $a0, $a5
	sub.w	$a0, $t1, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $t0, $a0
	ld.hu	$a5, $t8, 2
	ld.hu	$t1, $a1, 2
	add.d	$a0, $a0, $s3
	mul.d	$a5, $a5, $a2
	mul.d	$t1, $t1, $a3
	add.d	$a5, $a5, $s8
	add.d	$a5, $a5, $t1
	sra.w	$a5, $a5, $s7
	add.w	$a5, $a5, $a6
	srai.d	$t1, $a5, 63
	andn	$a5, $a5, $t1
	slt	$t1, $a5, $t7
	ld.hu	$t2, $ra, 2
	maskeqz	$a5, $a5, $t1
	masknez	$t1, $t7, $t1
	or	$a5, $a5, $t1
	sub.w	$a5, $t2, $a5
	ld.hu	$t1, $t8, 4
	ld.hu	$t2, $a1, 4
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $t0, $a5
	mul.d	$t1, $t1, $a2
	mul.d	$t2, $t2, $a3
	add.d	$t1, $t1, $s8
	add.d	$t1, $t1, $t2
	sra.w	$t1, $t1, $s7
	add.w	$t1, $t1, $a6
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $t7
	ld.hu	$t3, $ra, 4
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $t7, $t2
	or	$t1, $t1, $t2
	sub.w	$t1, $t3, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $t0, $t1
	ld.hu	$t2, $t8, 6
	ld.hu	$t3, $a1, 6
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $t1
	mul.d	$a5, $t2, $a2
	mul.d	$t1, $t3, $a3
	add.d	$a5, $a5, $s8
	add.d	$a5, $a5, $t1
	sra.w	$a5, $a5, $s7
	add.w	$a5, $a5, $a6
	srai.d	$t1, $a5, 63
	andn	$a5, $a5, $t1
	slt	$t1, $a5, $t7
	maskeqz	$a5, $a5, $t1
	ld.hu	$t2, $ra, 6
	masknez	$t1, $t7, $t1
	or	$a5, $a5, $t1
	addi.d	$t8, $t8, 8
	sub.w	$a5, $t2, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $t0, $a5
	addi.d	$a1, $a1, 8
	addi.d	$ra, $ra, 8
	addi.w	$fp, $fp, 4
	add.d	$s3, $a0, $a5
	blt	$fp, $s6, .LBB8_8
.LBB8_9:                                # %._crit_edge
                                        #   in Loop: Header=BB8_2 Depth=1
	st.d	$t8, $s0, %pc_lo12(ref1_line)
	st.d	$a1, $s2, %pc_lo12(ref2_line)
	st.d	$ra, $t4, %pc_lo12(src_line)
	move	$s4, $ra
	move	$a0, $t8
	move	$s1, $a1
.LBB8_10:                               #   in Loop: Header=BB8_2 Depth=1
	addi.w	$a1, $s3, 0
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	bge	$a1, $a5, .LBB8_29
# %bb.11:                               #   in Loop: Header=BB8_2 Depth=1
	alsl.d	$s1, $a4, $s1, 1
	st.d	$s1, $s2, %pc_lo12(ref2_line)
	alsl.d	$a0, $a4, $a0, 1
	addi.w	$a7, $a7, 1
	st.d	$a0, $s0, %pc_lo12(ref1_line)
	bne	$a7, $s5, .LBB8_2
	b	.LBB8_13
.LBB8_12:
	move	$s3, $zero
.LBB8_13:                               # %._crit_edge126
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB8_29
# %bb.14:
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(shift_cr_y)
	ld.wu	$a1, $a1, %pc_lo12(shift_cr_y)
	pcalau12i	$a2, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a2, $a2, %pc_lo12(img_cr_padded_size_x)
	vrepli.b	$vr11, 0
	sra.w	$s6, $s6, $a0
	sra.w	$s5, $s5, $a1
	sub.w	$s1, $a2, $s6
	bstrpick.d	$a0, $s6, 31, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 30, 3
	slli.d	$a1, $a0, 3
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	pcalau12i	$a0, %pc_hi20(get_crline)
	addi.d	$a0, $a0, %pc_lo12(get_crline)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight1_cr)
	addi.d	$a0, $a0, %pc_lo12(weight1_cr)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight2_cr)
	addi.d	$a0, $a0, %pc_lo12(weight2_cr)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(offsetBi_cr)
	addi.d	$a0, $a0, %pc_lo12(offsetBi_cr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(byte_abs)
	ld.d	$a0, $a0, %got_pc_lo12(byte_abs)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $zero
	ori	$a0, $t5, 3236
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	vst	$vr12, $sp, 96                  # 16-byte Folded Spill
	vst	$vr13, $sp, 80                  # 16-byte Folded Spill
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	b	.LBB8_16
	.p2align	4, , 16
.LBB8_15:                               # %._crit_edge150
                                        #   in Loop: Header=BB8_16 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$fp, $zero, 1
	move	$a1, $zero
	beqz	$a0, .LBB8_29
.LBB8_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_18 Depth 2
                                        #       Child Loop BB8_22 Depth 3
                                        #       Child Loop BB8_25 Depth 3
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	move	$s1, $s2
	move	$s2, $s0
	move	$s0, $s5
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a3, $s5, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	ld.d	$a0, $a0, 8
	ori	$a1, $zero, 256
	sll.w	$a1, $a1, $fp
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 1
	st.d	$a1, $s4, %pc_lo12(src_line)
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s5, $a1
	move	$s5, $s0
	move	$s0, $s2
	move	$s2, $s1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a1, $fp, $a1, 3
	ld.d	$a1, $a1, 8
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s0, %pc_lo12(ref1_line)
	blez	$s5, .LBB8_15
# %bb.17:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB8_16 Depth=1
	move	$a1, $zero
	ld.d	$t7, $s4, %pc_lo12(src_line)
	ld.d	$t6, $s2, %pc_lo12(ref2_line)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $a2, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $a2, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a2, 1
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a2, 1
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$fp, $fp, $a2, 1
	vld	$vr12, $sp, 96                  # 16-byte Folded Reload
	vld	$vr13, $sp, 80                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	st.d	$ra, $sp, 224                   # 8-byte Folded Spill
	st.d	$fp, $sp, 216                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_18:                               # %.preheader
                                        #   Parent Loop BB8_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_22 Depth 3
                                        #       Child Loop BB8_25 Depth 3
	blez	$s6, .LBB8_27
# %bb.19:                               # %.lr.ph130
                                        #   in Loop: Header=BB8_18 Depth=2
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.h	$a7, $a2, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.h	$t0, $a2, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$t1, $ra, $a2
	ld.h	$t2, $fp, 0
	ori	$a2, $zero, 8
	bgeu	$s6, $a2, .LBB8_21
# %bb.20:                               #   in Loop: Header=BB8_18 Depth=2
	move	$t8, $zero
	move	$t3, $a0
	move	$t5, $t6
	move	$t4, $t7
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_21:                               # %vector.ph236
                                        #   in Loop: Header=BB8_18 Depth=2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.d	$t3, $a0, $a2
	add.d	$t5, $t6, $a2
	add.d	$t4, $t7, $a2
	vori.b	$vr4, $vr11, 0
	vinsgr2vr.w	$vr4, $s3, 0
	vreplgr2vr.w	$vr0, $a7
	vreplgr2vr.w	$vr1, $t0
	vreplgr2vr.w	$vr2, $t1
	vreplgr2vr.w	$vr3, $t2
	addi.d	$a0, $a0, 16
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	ld.d	$t8, $sp, 240                   # 8-byte Folded Reload
	vori.b	$vr5, $vr11, 0
	.p2align	4, , 16
.LBB8_22:                               # %vector.body252
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$fp, $a0, -16
	ld.h	$s3, $a0, -12
	ld.h	$ra, $a0, -8
	ld.h	$a2, $a0, -4
	vinsgr2vr.h	$vr6, $fp, 0
	vinsgr2vr.h	$vr6, $s3, 1
	vinsgr2vr.h	$vr6, $ra, 2
	vinsgr2vr.h	$vr6, $a2, 3
	ld.h	$a2, $a0, 0
	ld.h	$fp, $a0, 4
	ld.h	$s3, $a0, 8
	ld.h	$ra, $a0, 12
	vinsgr2vr.h	$vr7, $a2, 0
	vinsgr2vr.h	$vr7, $fp, 1
	vinsgr2vr.h	$vr7, $s3, 2
	vinsgr2vr.h	$vr7, $ra, 3
	vilvl.h	$vr6, $vr11, $vr6
	vilvl.h	$vr7, $vr11, $vr7
	ld.h	$a2, $t6, -16
	ld.h	$fp, $t6, -12
	ld.h	$s3, $t6, -8
	ld.h	$ra, $t6, -4
	vinsgr2vr.h	$vr8, $a2, 0
	vinsgr2vr.h	$vr8, $fp, 1
	vinsgr2vr.h	$vr8, $s3, 2
	vinsgr2vr.h	$vr8, $ra, 3
	ld.h	$a2, $t6, 0
	ld.h	$fp, $t6, 4
	ld.h	$s3, $t6, 8
	ld.h	$ra, $t6, 12
	vinsgr2vr.h	$vr9, $a2, 0
	vinsgr2vr.h	$vr9, $fp, 1
	vinsgr2vr.h	$vr9, $s3, 2
	vinsgr2vr.h	$vr9, $ra, 3
	vilvl.h	$vr8, $vr11, $vr8
	vilvl.h	$vr9, $vr11, $vr9
	vori.b	$vr10, $vr12, 0
	vmadd.w	$vr10, $vr0, $vr6
	vori.b	$vr6, $vr12, 0
	vmadd.w	$vr6, $vr0, $vr7
	vmadd.w	$vr10, $vr1, $vr8
	vmadd.w	$vr6, $vr1, $vr9
	vsra.w	$vr7, $vr10, $vr13
	vsra.w	$vr6, $vr6, $vr13
	vadd.w	$vr7, $vr7, $vr3
	vadd.w	$vr6, $vr6, $vr3
	vmaxi.w	$vr7, $vr7, 0
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr7, $vr7, $vr2
	vmin.w	$vr6, $vr6, $vr2
	ld.h	$a2, $t7, -16
	ld.h	$fp, $t7, -12
	ld.h	$s3, $t7, -8
	ld.h	$ra, $t7, -4
	vinsgr2vr.h	$vr8, $a2, 0
	vinsgr2vr.h	$vr8, $fp, 1
	vinsgr2vr.h	$vr8, $s3, 2
	vinsgr2vr.h	$vr8, $ra, 3
	ld.h	$a2, $t7, 0
	ld.h	$fp, $t7, 4
	ld.h	$s3, $t7, 8
	ld.h	$ra, $t7, 12
	vinsgr2vr.h	$vr9, $a2, 0
	vinsgr2vr.h	$vr9, $fp, 1
	vinsgr2vr.h	$vr9, $s3, 2
	vinsgr2vr.h	$vr9, $ra, 3
	vilvl.h	$vr8, $vr11, $vr8
	vilvl.h	$vr9, $vr11, $vr9
	vsub.w	$vr7, $vr8, $vr7
	vsub.w	$vr6, $vr9, $vr6
	vshuf4i.w	$vr8, $vr7, 50
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vshuf4i.w	$vr9, $vr6, 50
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr6, $vr6, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vpickve2gr.d	$a2, $vr7, 0
	slli.d	$a2, $a2, 2
	vpickve2gr.d	$fp, $vr7, 1
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s3, $vr8, 0
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$ra, $vr8, 1
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$a4, $vr6, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr6, 1
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr9, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$s4, $vr9, 1
	slli.d	$s4, $s4, 2
	ldx.w	$a2, $a3, $a2
	ldx.w	$fp, $a3, $fp
	ldx.w	$s3, $a3, $s3
	ldx.w	$ra, $a3, $ra
	vinsgr2vr.w	$vr6, $a2, 0
	vinsgr2vr.w	$vr6, $fp, 1
	vinsgr2vr.w	$vr6, $s3, 2
	vinsgr2vr.w	$vr6, $ra, 3
	ldx.w	$a2, $a3, $a4
	ldx.w	$a4, $a3, $a5
	ldx.w	$a5, $a3, $a6
	ldx.w	$a6, $a3, $s4
	vinsgr2vr.w	$vr7, $a2, 0
	vinsgr2vr.w	$vr7, $a4, 1
	vinsgr2vr.w	$vr7, $a5, 2
	vinsgr2vr.w	$vr7, $a6, 3
	vadd.w	$vr4, $vr6, $vr4
	vadd.w	$vr5, $vr7, $vr5
	ld.h	$a2, $a0, -14
	ld.h	$a4, $a0, -10
	ld.h	$a5, $a0, -6
	ld.h	$a6, $a0, -2
	vinsgr2vr.h	$vr6, $a2, 0
	vinsgr2vr.h	$vr6, $a4, 1
	vinsgr2vr.h	$vr6, $a5, 2
	vinsgr2vr.h	$vr6, $a6, 3
	ld.h	$a2, $a0, 2
	ld.h	$a4, $a0, 6
	ld.h	$a5, $a0, 10
	ld.h	$a6, $a0, 14
	vinsgr2vr.h	$vr7, $a2, 0
	vinsgr2vr.h	$vr7, $a4, 1
	vinsgr2vr.h	$vr7, $a5, 2
	vinsgr2vr.h	$vr7, $a6, 3
	vilvl.h	$vr6, $vr11, $vr6
	vilvl.h	$vr7, $vr11, $vr7
	ld.h	$a2, $t6, -14
	ld.h	$a4, $t6, -10
	ld.h	$a5, $t6, -6
	ld.h	$a6, $t6, -2
	vinsgr2vr.h	$vr8, $a2, 0
	vinsgr2vr.h	$vr8, $a4, 1
	vinsgr2vr.h	$vr8, $a5, 2
	vinsgr2vr.h	$vr8, $a6, 3
	ld.h	$a2, $t6, 2
	ld.h	$a4, $t6, 6
	ld.h	$a5, $t6, 10
	ld.h	$a6, $t6, 14
	vinsgr2vr.h	$vr9, $a2, 0
	vinsgr2vr.h	$vr9, $a4, 1
	vinsgr2vr.h	$vr9, $a5, 2
	vinsgr2vr.h	$vr9, $a6, 3
	vilvl.h	$vr8, $vr11, $vr8
	vilvl.h	$vr9, $vr11, $vr9
	vori.b	$vr10, $vr12, 0
	vmadd.w	$vr10, $vr0, $vr6
	vori.b	$vr6, $vr12, 0
	vmadd.w	$vr6, $vr0, $vr7
	vmadd.w	$vr10, $vr1, $vr8
	vmadd.w	$vr6, $vr1, $vr9
	vsra.w	$vr7, $vr10, $vr13
	vsra.w	$vr6, $vr6, $vr13
	vadd.w	$vr7, $vr7, $vr3
	vadd.w	$vr6, $vr6, $vr3
	vmaxi.w	$vr7, $vr7, 0
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr7, $vr7, $vr2
	vmin.w	$vr6, $vr6, $vr2
	ld.h	$a2, $t7, -14
	ld.h	$a4, $t7, -10
	ld.h	$a5, $t7, -6
	ld.h	$a6, $t7, -2
	vinsgr2vr.h	$vr8, $a2, 0
	vinsgr2vr.h	$vr8, $a4, 1
	vinsgr2vr.h	$vr8, $a5, 2
	vinsgr2vr.h	$vr8, $a6, 3
	ld.h	$a2, $t7, 2
	ld.h	$a4, $t7, 6
	ld.h	$a5, $t7, 10
	ld.h	$a6, $t7, 14
	vinsgr2vr.h	$vr9, $a2, 0
	vinsgr2vr.h	$vr9, $a4, 1
	vinsgr2vr.h	$vr9, $a5, 2
	vinsgr2vr.h	$vr9, $a6, 3
	vilvl.h	$vr8, $vr11, $vr8
	vilvl.h	$vr9, $vr11, $vr9
	vsub.w	$vr7, $vr8, $vr7
	vsub.w	$vr6, $vr9, $vr6
	vshuf4i.w	$vr8, $vr7, 50
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vshuf4i.w	$vr9, $vr6, 50
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr6, $vr6, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vpickve2gr.d	$a2, $vr7, 0
	slli.d	$a2, $a2, 2
	vpickve2gr.d	$a4, $vr7, 1
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr8, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr8, 1
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$fp, $vr6, 0
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s3, $vr6, 1
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s4, $vr9, 0
	slli.d	$s4, $s4, 2
	vpickve2gr.d	$ra, $vr9, 1
	slli.d	$ra, $ra, 2
	ldx.w	$a2, $a3, $a2
	ldx.w	$a4, $a3, $a4
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	vinsgr2vr.w	$vr6, $a2, 0
	vinsgr2vr.w	$vr6, $a4, 1
	vinsgr2vr.w	$vr6, $a5, 2
	vinsgr2vr.w	$vr6, $a6, 3
	ldx.w	$a2, $a3, $fp
	ldx.w	$a4, $a3, $s3
	ldx.w	$a5, $a3, $s4
	ldx.w	$a6, $a3, $ra
	vinsgr2vr.w	$vr7, $a2, 0
	vinsgr2vr.w	$vr7, $a4, 1
	vinsgr2vr.w	$vr7, $a5, 2
	vinsgr2vr.w	$vr7, $a6, 3
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr5, $vr5, $vr7
	addi.d	$t8, $t8, -8
	addi.d	$a0, $a0, 32
	addi.d	$t6, $t6, 32
	addi.d	$t7, $t7, 32
	bnez	$t8, .LBB8_22
# %bb.23:                               # %middle.block284
                                        #   in Loop: Header=BB8_18 Depth=2
	vadd.w	$vr0, $vr5, $vr4
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$s3, $vr0, 0
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	move	$t8, $a2
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 224                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB8_26
.LBB8_24:                               # %scalar.ph234.preheader
                                        #   in Loop: Header=BB8_18 Depth=2
	sub.d	$a0, $s6, $t8
	.p2align	4, , 16
.LBB8_25:                               # %scalar.ph234
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a2, $t3, 0
	ld.hu	$a4, $t5, 0
	mul.d	$a2, $a2, $a7
	mul.d	$a4, $a4, $t0
	add.d	$a2, $a2, $s8
	add.d	$a2, $a2, $a4
	sra.w	$a2, $a2, $s7
	add.w	$a2, $a2, $t2
	srai.d	$a4, $a2, 63
	andn	$a2, $a2, $a4
	slt	$a4, $a2, $t1
	ld.hu	$a5, $t4, 0
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $t1, $a4
	or	$a2, $a2, $a4
	sub.w	$a2, $a5, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.hu	$a4, $t3, 2
	ld.hu	$a5, $t5, 2
	add.d	$a2, $a2, $s3
	mul.d	$a4, $a4, $a7
	mul.d	$a5, $a5, $t0
	add.d	$a4, $a4, $s8
	add.d	$a4, $a4, $a5
	sra.w	$a4, $a4, $s7
	add.w	$a4, $a4, $t2
	srai.d	$a5, $a4, 63
	andn	$a4, $a4, $a5
	slt	$a5, $a4, $t1
	maskeqz	$a4, $a4, $a5
	ld.hu	$a6, $t4, 2
	masknez	$a5, $t1, $a5
	or	$a4, $a4, $a5
	addi.d	$t3, $t3, 4
	sub.w	$a4, $a6, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a3, $a4
	addi.d	$t5, $t5, 4
	addi.d	$t4, $t4, 4
	addi.w	$a0, $a0, -1
	add.d	$s3, $a2, $a4
	bnez	$a0, .LBB8_25
.LBB8_26:                               # %._crit_edge131
                                        #   in Loop: Header=BB8_18 Depth=2
	st.d	$t3, $s0, %pc_lo12(ref1_line)
	st.d	$t5, $s2, %pc_lo12(ref2_line)
	st.d	$t4, $s4, %pc_lo12(src_line)
	move	$t7, $t4
	move	$a0, $t3
	move	$t6, $t5
.LBB8_27:                               #   in Loop: Header=BB8_18 Depth=2
	addi.w	$a2, $s3, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	bge	$a2, $a4, .LBB8_29
# %bb.28:                               #   in Loop: Header=BB8_18 Depth=2
	alsl.d	$t6, $s1, $t6, 1
	st.d	$t6, $s2, %pc_lo12(ref2_line)
	alsl.d	$a0, $s1, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s0, %pc_lo12(ref1_line)
	bne	$a1, $s5, .LBB8_18
	b	.LBB8_15
.LBB8_29:                               # %.loopexit
	addi.w	$a0, $s3, 0
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
.Lfunc_end8:
	.size	computeBiPredSAD2, .Lfunc_end8-computeBiPredSAD2
                                        # -- End function
	.globl	computeSATD                     # -- Begin function computeSATD
	.p2align	5
	.type	computeSATD,@function
computeSATD:                            # @computeSATD
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a6, %pc_hi20(test8x8transform)
	ld.w	$a6, $a6, %pc_lo12(test8x8transform)
	move	$fp, $a5
	move	$s2, $a4
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	move	$a3, $a0
	slli.w	$a0, $a1, 2
	alsl.w	$a1, $a1, $a5, 2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	beqz	$a6, .LBB9_8
# %bb.1:
	blez	$a0, .LBB9_15
# %bb.2:                                # %.preheader78.lr.ph
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.w	$a0, $a2, 3
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$s8, $a1, %pc_lo12(img_padded_size_x)
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$s0, $a2, 1
	pcalau12i	$a0, %pc_hi20(ref_access_method)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s5, $a0, %pc_lo12(diff)
	move	$s4, $zero
	slli.d	$s3, $s8, 1
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_line)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_3:                                # %._crit_edge
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.w	$fp, $fp, 32
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bge	$fp, $a0, .LBB9_16
.LBB9_4:                                # %.preheader78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	blez	$a0, .LBB9_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$s7, $zero
	move	$s1, $a3
	move	$s6, $s2
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	move	$a1, $fp
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	vinsgr2vr.d	$vr0, $a1, 0
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a1, $s1, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a0, 8
	vst	$vr0, $s5, 0
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 16
	ldx.d	$a1, $s1, $s0
	alsl.d	$a2, $s8, $a0, 1
	ldx.d	$a0, $a0, $s3
	add.d	$a3, $s1, $s0
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a2, 8
	vst	$vr0, $s5, 32
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 48
	ldx.d	$a0, $a3, $s0
	alsl.d	$a1, $s8, $a2, 1
	ldx.d	$a2, $a2, $s3
	add.d	$a3, $a3, $s0
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 8
	vst	$vr0, $s5, 64
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 80
	ldx.d	$a0, $a3, $s0
	alsl.d	$a2, $s8, $a1, 1
	ldx.d	$a1, $a1, $s3
	add.d	$a3, $a3, $s0
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a2, 8
	vst	$vr0, $s5, 96
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 112
	ldx.d	$a0, $a3, $s0
	alsl.d	$a1, $s8, $a2, 1
	ldx.d	$a2, $a2, $s3
	add.d	$a3, $a3, $s0
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 8
	vst	$vr0, $s5, 128
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 144
	ldx.d	$a0, $a3, $s0
	alsl.d	$a2, $s8, $a1, 1
	ldx.d	$a1, $a1, $s3
	add.d	$a3, $a3, $s0
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a2, 8
	vst	$vr0, $s5, 160
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 176
	ldx.d	$a0, $a3, $s0
	alsl.d	$a1, $s8, $a2, 1
	ldx.d	$a2, $a2, $s3
	add.d	$a3, $a3, $s0
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 8
	vst	$vr0, $s5, 192
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 208
	ldx.d	$a0, $a3, $s0
	alsl.d	$a2, $s8, $a1, 1
	ldx.d	$a1, $a1, $s3
	add.d	$a3, $a3, $s0
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a2, 8
	vst	$vr0, $s5, 224
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 240
	alsl.d	$a0, $s8, $a2, 1
	add.d	$a1, $a3, $s0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ref_line)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB9_16
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=2
	addi.w	$s6, $s6, 32
	addi.w	$s7, $s7, 8
	addi.d	$s1, $s1, 16
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s7, $a0, .LBB9_6
	b	.LBB9_3
.LBB9_8:
	blez	$a0, .LBB9_15
# %bb.9:                                # %.preheader.lr.ph
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.w	$a0, $a2, 2
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$s0, $a1, %pc_lo12(img_padded_size_x)
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$s3, $a2, 1
	pcalau12i	$a0, %pc_hi20(ref_access_method)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s5, $a0, %pc_lo12(diff)
	move	$s4, $zero
	slli.d	$s7, $s0, 1
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(ref_line)
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_10:                               # %._crit_edge105
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.w	$fp, $fp, 16
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bge	$fp, $a0, .LBB9_16
.LBB9_11:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_13 Depth 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	blez	$a0, .LBB9_10
# %bb.12:                               # %.lr.ph104.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	move	$s2, $zero
	move	$s8, $a3
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_13:                               # %.lr.ph104
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	move	$a1, $fp
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	vinsgr2vr.d	$vr0, $a1, 0
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 0
	ldx.d	$a1, $s8, $s3
	alsl.d	$a2, $s0, $a0, 1
	ldx.d	$a0, $a0, $s7
	add.d	$a3, $s8, $s3
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 16
	ldx.d	$a0, $a3, $s3
	alsl.d	$a1, $s0, $a2, 1
	ldx.d	$a2, $a2, $s7
	add.d	$a3, $a3, $s3
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 32
	ldx.d	$a0, $a3, $s3
	alsl.d	$a2, $s0, $a1, 1
	ldx.d	$a1, $a1, $s7
	add.d	$a3, $a3, $s3
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 48
	alsl.d	$a0, $s0, $a2, 1
	add.d	$a1, $a3, $s3
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
	st.d	$a0, $s1, %pc_lo12(ref_line)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB9_16
# %bb.14:                               #   in Loop: Header=BB9_13 Depth=2
	addi.w	$s6, $s6, 16
	addi.w	$s2, $s2, 4
	addi.d	$s8, $s8, 8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s2, $a0, .LBB9_13
	b	.LBB9_10
.LBB9_15:
	move	$s4, $zero
.LBB9_16:                               # %.loopexit
	move	$a0, $s4
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end9:
	.size	computeSATD, .Lfunc_end9-computeSATD
                                        # -- End function
	.globl	computeSATDWP                   # -- Begin function computeSATDWP
	.p2align	5
	.type	computeSATDWP,@function
computeSATDWP:                          # @computeSATDWP
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a6, %pc_hi20(test8x8transform)
	ld.w	$a6, $a6, %pc_lo12(test8x8transform)
	move	$fp, $a5
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$a2, $a0
	slli.w	$a0, $a1, 2
	alsl.w	$a1, $a1, $a5, 2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	beqz	$a6, .LBB10_10
# %bb.1:
	blez	$a0, .LBB10_19
# %bb.2:                                # %.preheader90.lr.ph
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	slli.w	$a1, $s2, 3
	slli.d	$s6, $a0, 1
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s8, $s2, 1
	pcalau12i	$a0, %pc_hi20(ref_access_method)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight_luma)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(wp_luma_round)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(luma_log_weight_denom)
	pcalau12i	$s3, %pc_hi20(offset_luma)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s0, $a0, %pc_lo12(diff)
	move	$s4, $zero
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_3:                               # %._crit_edge
                                        #   in Loop: Header=BB10_4 Depth=1
	addi.w	$fp, $fp, 32
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bge	$fp, $a0, .LBB10_20
.LBB10_4:                               # %.preheader90
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
                                        #       Child Loop BB10_7 Depth 3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	blez	$s2, .LBB10_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB10_4 Depth=1
	move	$s1, $zero
	move	$s7, $a2
	.p2align	4, , 16
.LBB10_6:                               # %.lr.ph
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_7 Depth 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	alsl.w	$a2, $s1, $a1, 2
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(weight_luma)
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(wp_luma_round)
	ld.w	$a5, $s5, %pc_lo12(luma_log_weight_denom)
	ld.w	$a6, $s3, %pc_lo12(offset_luma)
	ori	$a7, $zero, 8
	move	$a4, $s7
	move	$t0, $s0
	.p2align	4, , 16
.LBB10_7:                               #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$t1, $a0, 0
	ldptr.w	$t2, $a1, 15520
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a5
	add.w	$t1, $t1, $a6
	srai.d	$t3, $t1, 63
	andn	$t1, $t1, $t3
	slt	$t3, $t1, $t2
	maskeqz	$t1, $t1, $t3
	ld.hu	$t4, $a4, 0
	masknez	$t2, $t2, $t3
	or	$t1, $t1, $t2
	ld.hu	$t2, $a0, 2
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 0
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 2
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 4
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 4
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 4
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 6
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 8
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 6
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 8
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 12
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 8
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 10
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 16
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 10
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 12
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 20
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 12
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 14
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 24
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	ld.hu	$t4, $a4, 14
	maskeqz	$t2, $t2, $t3
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 28
	addi.w	$a7, $a7, -1
	add.d	$a0, $a0, $s6
	add.d	$a4, $a4, $s8
	addi.d	$t0, $t0, 32
	bnez	$a7, .LBB10_7
# %bb.8:                                #   in Loop: Header=BB10_6 Depth=2
	pcalau12i	$a1, %pc_hi20(ref_line)
	st.d	$a0, $a1, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a4, $a0, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s4, .LBB10_20
# %bb.9:                                #   in Loop: Header=BB10_6 Depth=2
	addi.w	$s1, $s1, 8
	addi.d	$s7, $s7, 16
	blt	$s1, $s2, .LBB10_6
	b	.LBB10_3
.LBB10_10:
	blez	$a0, .LBB10_19
# %bb.11:                               # %.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	slli.w	$a1, $s2, 2
	slli.d	$s0, $a0, 1
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s3, $s2, 1
	pcalau12i	$a0, %pc_hi20(ref_access_method)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight_luma)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(wp_luma_round)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(luma_log_weight_denom)
	pcalau12i	$s7, %pc_hi20(offset_luma)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s8, $a0, %pc_lo12(diff)
	move	$s4, $zero
	b	.LBB10_13
	.p2align	4, , 16
.LBB10_12:                              # %._crit_edge117
                                        #   in Loop: Header=BB10_13 Depth=1
	addi.w	$fp, $fp, 16
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bge	$fp, $a0, .LBB10_20
.LBB10_13:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
                                        #       Child Loop BB10_16 Depth 3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	blez	$s2, .LBB10_12
# %bb.14:                               # %.lr.ph116.preheader
                                        #   in Loop: Header=BB10_13 Depth=1
	move	$s1, $zero
	move	$s5, $a2
	.p2align	4, , 16
.LBB10_15:                              # %.lr.ph116
                                        #   Parent Loop BB10_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_16 Depth 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	alsl.w	$a2, $s1, $a1, 2
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(weight_luma)
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(wp_luma_round)
	ld.w	$a5, $s6, %pc_lo12(luma_log_weight_denom)
	ld.w	$a6, $s7, %pc_lo12(offset_luma)
	ori	$a7, $zero, 4
	move	$a4, $s5
	move	$t0, $s8
	.p2align	4, , 16
.LBB10_16:                              #   Parent Loop BB10_13 Depth=1
                                        #     Parent Loop BB10_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$t1, $a0, 0
	ldptr.w	$t2, $a1, 15520
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a5
	add.w	$t1, $t1, $a6
	srai.d	$t3, $t1, 63
	andn	$t1, $t1, $t3
	slt	$t3, $t1, $t2
	maskeqz	$t1, $t1, $t3
	ld.hu	$t4, $a4, 0
	masknez	$t2, $t2, $t3
	or	$t1, $t1, $t2
	ld.hu	$t2, $a0, 2
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 0
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 2
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 4
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 4
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 4
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 6
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 8
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	ld.hu	$t4, $a4, 6
	maskeqz	$t2, $t2, $t3
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 12
	addi.w	$a7, $a7, -1
	add.d	$a0, $a0, $s0
	add.d	$a4, $a4, $s3
	addi.d	$t0, $t0, 16
	bnez	$a7, .LBB10_16
# %bb.17:                               #   in Loop: Header=BB10_15 Depth=2
	pcalau12i	$a1, %pc_hi20(ref_line)
	st.d	$a0, $a1, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a4, $a0, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s4, .LBB10_20
# %bb.18:                               #   in Loop: Header=BB10_15 Depth=2
	addi.w	$s1, $s1, 4
	addi.d	$s5, $s5, 8
	blt	$s1, $s2, .LBB10_15
	b	.LBB10_12
.LBB10_19:
	move	$s4, $zero
.LBB10_20:                              # %.loopexit
	move	$a0, $s4
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end10:
	.size	computeSATDWP, .Lfunc_end10-computeSATDWP
                                        # -- End function
	.globl	computeBiPredSATD1              # -- Begin function computeBiPredSATD1
	.p2align	5
	.type	computeBiPredSATD1,@function
computeBiPredSATD1:                     # @computeBiPredSATD1
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(test8x8transform)
	ld.w	$t0, $t0, %pc_lo12(test8x8transform)
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	move	$s4, $a2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	beqz	$t0, .LBB11_10
# %bb.1:
	blez	$a1, .LBB11_17
# %bb.2:                                # %.lr.ph118
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	slli.w	$a2, $s4, 3
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $a0, -8
	slli.d	$s2, $s4, 1
	slli.d	$a0, $a0, 1
	addi.d	$s3, $a0, 16
	pcalau12i	$s5, %pc_hi20(src_line)
	pcalau12i	$a0, %pc_hi20(bipred2_access_method)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$s7, $a0, %pc_lo12(get_line)
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(ref2_line)
	pcalau12i	$a0, %pc_hi20(bipred1_access_method)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s8, $a0, %pc_lo12(diff)
	move	$s6, $zero
	move	$a2, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref1_line)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_3:                               # %.thread
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 8
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bge	$a2, $a1, .LBB11_18
.LBB11_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_6 Depth 2
                                        #       Child Loop BB11_7 Depth 3
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	blez	$s4, .LBB11_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB11_4 Depth=1
	move	$fp, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.w	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.w	$s0, $a2, $a0, 2
	.p2align	4, , 16
.LBB11_6:                               # %.lr.ph
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_7 Depth 3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $s7, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a1, $fp, $a1, 1
	st.d	$a1, $s5, %pc_lo12(src_line)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.w	$a2, $fp, $a1, 2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s7, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	alsl.w	$a2, $fp, $a0, 2
	move	$a0, $a1
	move	$a1, $s0
	jirl	$ra, $a3, 0
	ld.d	$a2, $s5, %pc_lo12(src_line)
	ld.d	$a1, $s1, %pc_lo12(ref2_line)
	move	$a3, $zero
	ori	$a4, $zero, 8
	move	$a5, $s8
	vld	$vr4, $sp, 112                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB11_7:                               #   Parent Loop BB11_4 Depth=1
                                        #     Parent Loop BB11_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a2, 0
	ldx.d	$a7, $a0, $a3
	add.d	$t0, $a0, $a3
	vinsgr2vr.d	$vr0, $a6, 0
	ldx.d	$a6, $a1, $a3
	vinsgr2vr.d	$vr1, $a7, 0
	add.d	$a7, $a1, $a3
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a6, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a6, $a2, 8
	vst	$vr0, $a5, 0
	ld.d	$t0, $t0, 8
	ld.d	$a7, $a7, 8
	vinsgr2vr.d	$vr0, $a6, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $t0, 0
	vinsgr2vr.d	$vr2, $a7, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a5, 16
	addi.w	$a4, $a4, -1
	add.d	$a2, $a2, $s2
	add.d	$a3, $a3, $s3
	addi.d	$a5, $a5, 32
	bnez	$a4, .LBB11_7
# %bb.8:                                #   in Loop: Header=BB11_6 Depth=2
	st.d	$a2, $s5, %pc_lo12(src_line)
	add.d	$a0, $a0, $a3
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref1_line)
	add.d	$a0, $a1, $a3
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB11_18
# %bb.9:                                #   in Loop: Header=BB11_6 Depth=2
	addi.d	$fp, $fp, 8
	addi.w	$a0, $fp, 0
	blt	$a0, $s4, .LBB11_6
	b	.LBB11_3
.LBB11_10:
	slli.w	$a0, $a1, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$a0, .LBB11_17
# %bb.11:                               # %.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	slli.w	$a1, $s4, 2
	addi.w	$s1, $a0, -4
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bipred2_access_method)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref2_line)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bipred1_access_method)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s7, $a0, %pc_lo12(diff)
	move	$s6, $zero
	move	$a2, $zero
	slli.d	$a0, $s4, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref1_line)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB11_13
	.p2align	4, , 16
.LBB11_12:                              # %._crit_edge
                                        #   in Loop: Header=BB11_13 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 16
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bge	$a2, $a0, .LBB11_18
.LBB11_13:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_15 Depth 2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	blez	$s4, .LBB11_12
# %bb.14:                               # %.lr.ph130
                                        #   in Loop: Header=BB11_13 Depth=1
	move	$fp, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $a2, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.w	$a0, $a2, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_15:                              #   Parent Loop BB11_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a3, $s5, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	st.d	$s8, $s3, %pc_lo12(src_line)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s5, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $s5, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.d	$a1, $s3, %pc_lo12(src_line)
	ld.d	$a2, $s5, %pc_lo12(ref2_line)
	alsl.d	$a3, $s1, $a0, 1
	ld.d	$a4, $a1, 0
	alsl.d	$a5, $s1, $a2, 1
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	vinsgr2vr.d	$vr0, $a4, 0
	vld	$vr4, $sp, 64                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 0
	addi.d	$a0, $a3, 8
	addi.d	$a2, $a5, 8
	alsl.d	$a4, $s4, $a1, 1
	alsl.d	$a0, $s1, $a0, 1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a6
	alsl.d	$a2, $s1, $a2, 1
	ld.d	$a3, $a3, 8
	ld.d	$a5, $a5, 8
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 16
	addi.d	$a1, $a0, 8
	addi.d	$a3, $a2, 8
	alsl.d	$a5, $s4, $a4, 1
	alsl.d	$a1, $s1, $a1, 1
	ldx.d	$a4, $a4, $a6
	alsl.d	$a3, $s1, $a3, 1
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	vinsgr2vr.d	$vr0, $a4, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 32
	addi.d	$a0, $a1, 8
	addi.d	$a2, $a3, 8
	alsl.d	$a4, $s4, $a5, 1
	alsl.d	$a0, $s1, $a0, 1
	ldx.d	$a5, $a5, $a6
	alsl.d	$a2, $s1, $a2, 1
	ld.d	$a1, $a1, 8
	ld.d	$a3, $a3, 8
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a3, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 48
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a2, 8
	alsl.d	$a2, $s4, $a4, 1
	st.d	$a2, $s3, %pc_lo12(src_line)
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref1_line)
	st.d	$a1, $s5, %pc_lo12(ref2_line)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB11_18
# %bb.16:                               #   in Loop: Header=BB11_15 Depth=2
	addi.w	$s2, $s2, 16
	addi.w	$s0, $s0, 16
	addi.w	$fp, $fp, 4
	addi.d	$s8, $s8, 8
	blt	$fp, $s4, .LBB11_15
	b	.LBB11_12
.LBB11_17:
	move	$s6, $zero
.LBB11_18:                              # %.loopexit
	move	$a0, $s6
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end11:
	.size	computeBiPredSATD1, .Lfunc_end11-computeBiPredSATD1
                                        # -- End function
	.globl	computeBiPredSATD2              # -- Begin function computeBiPredSATD2
	.p2align	5
	.type	computeBiPredSATD2,@function
computeBiPredSATD2:                     # @computeBiPredSATD2
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.w	$t0, $t0, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$t1, %pc_hi20(wp_luma_round)
	ld.w	$t1, $t1, %pc_lo12(wp_luma_round)
	pcalau12i	$t2, %pc_hi20(test8x8transform)
	ld.w	$t2, $t2, %pc_lo12(test8x8transform)
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	move	$s5, $a0
	addi.d	$s1, $t0, 1
	slli.d	$s0, $t1, 1
	beqz	$t2, .LBB12_10
# %bb.1:
	blez	$a1, .LBB12_19
# %bb.2:                                # %.lr.ph178
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	slli.w	$a3, $a2, 3
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $a0, -8
	slli.d	$a0, $a0, 1
	addi.d	$s7, $a0, 16
	slli.d	$a0, $a2, 1
	addi.d	$s2, $a0, -2
	pcalau12i	$s3, %pc_hi20(src_line)
	pcalau12i	$a0, %pc_hi20(bipred2_access_method)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$s4, $a0, %pc_lo12(get_line)
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(ref2_line)
	pcalau12i	$a0, %pc_hi20(bipred1_access_method)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(offsetBi)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$a2, $zero
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               # %.thread
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 8
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$s5, $a0, $s5, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bge	$a2, $a1, .LBB12_20
.LBB12_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
                                        #       Child Loop BB12_7 Depth 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	blez	$a0, .LBB12_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$fp, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.w	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.w	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB12_6:                               # %.lr.ph
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_7 Depth 3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $s4, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	alsl.d	$a1, $fp, $s5, 1
	st.d	$a1, $s3, %pc_lo12(src_line)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.w	$a2, $fp, $a1, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s4, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $s8, %pc_lo12(ref2_line)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.w	$a2, $fp, $a0, 2
	move	$a0, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.h	$a3, $a1, %pc_lo12(weight1)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.h	$a4, $a1, %pc_lo12(weight2)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.h	$a6, $a1, %pc_lo12(offsetBi)
	ld.d	$a2, $s8, %pc_lo12(ref2_line)
	ld.d	$a1, $s3, %pc_lo12(src_line)
	move	$a7, $zero
	ori	$t0, $zero, 8
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_7:                               #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.hu	$t4, $a0, $a7
	ldx.hu	$t5, $a2, $a7
	add.d	$t2, $a2, $a7
	add.d	$t3, $a0, $a7
	mul.d	$t4, $t4, $a3
	mul.d	$t5, $t5, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 0
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 2
	ld.hu	$t7, $t2, 2
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 0
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 2
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 4
	ld.hu	$t7, $t2, 4
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 4
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 4
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 6
	ld.hu	$t7, $t2, 6
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 8
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 6
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 8
	ld.hu	$t7, $t2, 8
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 12
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 8
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 10
	ld.hu	$t7, $t2, 10
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 16
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 10
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 12
	ld.hu	$t7, $t2, 12
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 20
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 12
	or	$t4, $t4, $t5
	ld.hu	$t3, $t3, 14
	ld.hu	$t2, $t2, 14
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 24
	mul.d	$t3, $t3, $a3
	mul.d	$t2, $t2, $a4
	ldptr.w	$t4, $a5, 15520
	add.d	$t3, $t3, $s0
	add.d	$t2, $t3, $t2
	sra.w	$t2, $t2, $s1
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t4
	ld.hu	$t5, $a1, 14
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $t4, $t3
	or	$t2, $t2, $t3
	sub.d	$t2, $t5, $t2
	st.w	$t2, $t1, 28
	addi.w	$t0, $t0, -1
	add.d	$a7, $a7, $s7
	add.d	$a1, $a1, $s2
	addi.d	$t1, $t1, 32
	bnez	$t0, .LBB12_7
# %bb.8:                                #   in Loop: Header=BB12_6 Depth=2
	add.d	$a0, $a0, $a7
	pcalau12i	$a3, %pc_hi20(ref1_line)
	st.d	$a0, $a3, %pc_lo12(ref1_line)
	add.d	$a0, $a2, $a7
	st.d	$a0, $s8, %pc_lo12(ref2_line)
	st.d	$a1, $s3, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB12_20
# %bb.9:                                #   in Loop: Header=BB12_6 Depth=2
	addi.d	$fp, $fp, 8
	addi.w	$a0, $fp, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB12_6
	b	.LBB12_3
.LBB12_10:
	slli.w	$a0, $a1, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$a0, .LBB12_19
# %bb.11:                               # %.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	slli.w	$a2, $a1, 2
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $a0, -4
	slli.d	$a0, $a0, 1
	addi.d	$s4, $a0, 8
	slli.d	$s8, $a1, 1
	pcalau12i	$s3, %pc_hi20(src_line)
	pcalau12i	$a0, %pc_hi20(bipred2_access_method)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$s2, $a0, %pc_lo12(get_line)
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(ref2_line)
	pcalau12i	$a0, %pc_hi20(bipred1_access_method)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(offsetBi)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$a1, $zero
	b	.LBB12_13
	.p2align	4, , 16
.LBB12_12:                              # %._crit_edge
                                        #   in Loop: Header=BB12_13 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 16
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$s5, $a0, $s5, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB12_20
.LBB12_13:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_15 Depth 2
                                        #       Child Loop BB12_16 Depth 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	blez	$a0, .LBB12_12
# %bb.14:                               # %.lr.ph190
                                        #   in Loop: Header=BB12_13 Depth=1
	move	$s7, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB12_15:                              #   Parent Loop BB12_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_16 Depth 3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $s2, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	alsl.d	$a1, $s7, $s5, 1
	st.d	$a1, $s3, %pc_lo12(src_line)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.w	$a2, $s7, $a1, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s2, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $fp, %pc_lo12(ref2_line)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.w	$a2, $s7, $a0, 2
	move	$a0, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.h	$a3, $a1, %pc_lo12(weight1)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.h	$a4, $a1, %pc_lo12(weight2)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.h	$a6, $a1, %pc_lo12(offsetBi)
	ld.d	$a2, $fp, %pc_lo12(ref2_line)
	ld.d	$a1, $s3, %pc_lo12(src_line)
	move	$a7, $zero
	ori	$t0, $zero, 4
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_16:                              #   Parent Loop BB12_13 Depth=1
                                        #     Parent Loop BB12_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.hu	$t4, $a0, $a7
	ldx.hu	$t5, $a2, $a7
	add.d	$t3, $a0, $a7
	add.d	$t2, $a2, $a7
	mul.d	$t4, $t4, $a3
	mul.d	$t5, $t5, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 0
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 2
	ld.hu	$t7, $t2, 2
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 0
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 2
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 4
	ld.hu	$t7, $t2, 4
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 4
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s0
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 4
	or	$t4, $t4, $t5
	ld.hu	$t3, $t3, 6
	ld.hu	$t2, $t2, 6
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 8
	mul.d	$t3, $t3, $a3
	mul.d	$t2, $t2, $a4
	ldptr.w	$t4, $a5, 15520
	add.d	$t3, $t3, $s0
	add.d	$t2, $t3, $t2
	sra.w	$t2, $t2, $s1
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t4
	ld.hu	$t5, $a1, 6
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $t4, $t3
	or	$t2, $t2, $t3
	sub.d	$t2, $t5, $t2
	st.w	$t2, $t1, 12
	addi.w	$t0, $t0, -1
	add.d	$a7, $a7, $s4
	add.d	$a1, $a1, $s8
	addi.d	$t1, $t1, 16
	bnez	$t0, .LBB12_16
# %bb.17:                               #   in Loop: Header=BB12_15 Depth=2
	add.d	$a0, $a0, $a7
	pcalau12i	$a3, %pc_hi20(ref1_line)
	st.d	$a0, $a3, %pc_lo12(ref1_line)
	add.d	$a0, $a2, $a7
	st.d	$a0, $fp, %pc_lo12(ref2_line)
	st.d	$a1, $s3, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB12_20
# %bb.18:                               #   in Loop: Header=BB12_15 Depth=2
	addi.d	$s7, $s7, 4
	addi.w	$a0, $s7, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB12_15
	b	.LBB12_12
.LBB12_19:
	move	$s6, $zero
.LBB12_20:                              # %.loopexit
	move	$a0, $s6
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end12:
	.size	computeBiPredSATD2, .Lfunc_end12-computeBiPredSATD2
                                        # -- End function
	.globl	computeSSE                      # -- Begin function computeSSE
	.p2align	5
	.type	computeSSE,@function
computeSSE:                             # @computeSSE
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
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a3
	move	$s5, $a2
	move	$s4, $a1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.d	$s6, $a1, 14232
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$s2, %pc_hi20(ref_access_method)
	ld.w	$a1, $s2, %pc_lo12(ref_access_method)
	ld.w	$s1, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s7, %pc_hi20(src_line)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	addi.d	$s3, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a0, $s3, 0
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	move	$a2, $a4
	jirl	$ra, $a3, 0
	pcalau12i	$s8, %pc_hi20(ref_line)
	st.d	$a0, $s8, %pc_lo12(ref_line)
	blez	$s4, .LBB13_8
# %bb.1:                                # %.preheader60.lr.ph
	ld.d	$a3, $s7, %pc_lo12(src_line)
	move	$s0, $zero
	move	$a1, $zero
	sub.w	$a2, $s1, $s5
	.p2align	4, , 16
.LBB13_2:                               # %.preheader60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	blez	$s5, .LBB13_6
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB13_2 Depth=1
	move	$a4, $zero
	.p2align	4, , 16
.LBB13_4:                               # %.lr.ph
                                        #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a3, 0
	ld.hu	$a6, $a0, 0
	sub.d	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ld.hu	$a6, $a3, 2
	ld.hu	$a7, $a0, 2
	ldx.w	$a5, $s6, $a5
	ld.hu	$t0, $a3, 4
	ld.hu	$t1, $a0, 4
	sub.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s6, $a6
	sub.d	$a7, $t0, $t1
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s6, $a7
	ld.hu	$t0, $a3, 6
	ld.hu	$t1, $a0, 6
	add.d	$a5, $a5, $s0
	add.d	$a5, $a5, $a6
	add.d	$a5, $a5, $a7
	sub.d	$a6, $t0, $t1
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s6, $a6
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	addi.w	$a4, $a4, 4
	add.w	$s0, $a5, $a6
	blt	$a4, $s5, .LBB13_4
# %bb.5:                                # %._crit_edge
                                        #   in Loop: Header=BB13_2 Depth=1
	st.d	$a3, $s7, %pc_lo12(src_line)
	st.d	$a0, $s8, %pc_lo12(ref_line)
.LBB13_6:                               #   in Loop: Header=BB13_2 Depth=1
	bge	$s0, $fp, .LBB13_36
# %bb.7:                                #   in Loop: Header=BB13_2 Depth=1
	alsl.d	$a0, $a2, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s8, %pc_lo12(ref_line)
	bne	$a1, $s4, .LBB13_2
	b	.LBB13_9
.LBB13_8:
	move	$s0, $zero
.LBB13_9:                               # %._crit_edge78
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB13_36
# %bb.10:
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(shift_cr_y)
	ld.wu	$a1, $a1, %pc_lo12(shift_cr_y)
	pcalau12i	$a2, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a2, $a2, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s5, $s5, $a0
	sra.w	$s4, $s4, $a1
	ld.w	$a0, $s2, %pc_lo12(ref_access_method)
	sub.w	$s1, $a2, $s5
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $s3, 8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s8, %pc_lo12(ref_line)
	bstrpick.d	$a1, $s5, 31, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a3, $s5, 30, 1
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	blez	$s4, .LBB13_23
# %bb.11:                               # %.preheader.preheader
	move	$a1, $zero
	ld.d	$a7, $s7, %pc_lo12(src_line)
	slli.d	$a2, $a3, 1
	slli.d	$a3, $a3, 3
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB13_12:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_16 Depth 2
                                        #     Child Loop BB13_19 Depth 2
	blez	$s5, .LBB13_21
# %bb.13:                               # %.lr.ph82.preheader
                                        #   in Loop: Header=BB13_12 Depth=1
	move	$t0, $zero
	bne	$s5, $a4, .LBB13_15
# %bb.14:                               #   in Loop: Header=BB13_12 Depth=1
	move	$a5, $a7
	move	$a6, $a0
	b	.LBB13_18
	.p2align	4, , 16
.LBB13_15:                              # %vector.ph
                                        #   in Loop: Header=BB13_12 Depth=1
	add.d	$a5, $a7, $a3
	add.d	$a6, $a0, $a3
	addi.d	$a7, $a7, 4
	addi.d	$a0, $a0, 4
	move	$t1, $a2
	.p2align	4, , 16
.LBB13_16:                              # %vector.body
                                        #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t2, $a7, -4
	ld.hu	$t3, $a7, 0
	ld.hu	$t4, $a0, -4
	ld.hu	$t5, $a0, 0
	ld.hu	$t6, $a7, -2
	ld.hu	$t7, $a7, 2
	ld.hu	$t8, $a0, -2
	ld.hu	$ra, $a0, 2
	sub.d	$t2, $t2, $t4
	sub.d	$t3, $t3, $t5
	sub.d	$t4, $t6, $t8
	sub.d	$t5, $t7, $ra
	slli.d	$t2, $t2, 2
	slli.d	$t3, $t3, 2
	ldx.w	$t2, $s6, $t2
	ldx.w	$t3, $s6, $t3
	slli.d	$t4, $t4, 2
	slli.d	$t5, $t5, 2
	ldx.w	$t4, $s6, $t4
	ldx.w	$t5, $s6, $t5
	add.d	$t2, $t2, $s0
	add.d	$t0, $t3, $t0
	add.d	$s0, $t2, $t4
	add.d	$t0, $t0, $t5
	addi.d	$t1, $t1, -2
	addi.d	$a7, $a7, 8
	addi.d	$a0, $a0, 8
	bnez	$t1, .LBB13_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB13_12 Depth=1
	add.w	$s0, $t0, $s0
	move	$t0, $a2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB13_20
.LBB13_18:                              # %.lr.ph82.preheader185
                                        #   in Loop: Header=BB13_12 Depth=1
	sub.d	$a0, $s5, $t0
	.p2align	4, , 16
.LBB13_19:                              # %.lr.ph82
                                        #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a6, 0
	sub.d	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s6, $a7
	ld.hu	$t0, $a5, 2
	ld.hu	$t1, $a6, 2
	add.d	$a7, $a7, $s0
	sub.d	$t0, $t0, $t1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s6, $t0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.w	$a0, $a0, -1
	add.w	$s0, $a7, $t0
	bnez	$a0, .LBB13_19
.LBB13_20:                              # %._crit_edge83
                                        #   in Loop: Header=BB13_12 Depth=1
	st.d	$a5, $s7, %pc_lo12(src_line)
	st.d	$a6, $s8, %pc_lo12(ref_line)
	move	$a7, $a5
	move	$a0, $a6
.LBB13_21:                              #   in Loop: Header=BB13_12 Depth=1
	bge	$s0, $fp, .LBB13_36
# %bb.22:                               #   in Loop: Header=BB13_12 Depth=1
	alsl.d	$a0, $s1, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s8, %pc_lo12(ref_line)
	bne	$a1, $s4, .LBB13_12
.LBB13_23:                              # %._crit_edge97
	ld.w	$a0, $s2, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $s3, 16
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s8, %pc_lo12(ref_line)
	blez	$s4, .LBB13_36
# %bb.24:                               # %.preheader.preheader.1
	move	$a1, $zero
	ld.d	$a7, $s7, %pc_lo12(src_line)
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a2, $a3, 1
	slli.d	$a3, $a3, 3
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB13_25:                              # %.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_29 Depth 2
                                        #     Child Loop BB13_32 Depth 2
	blez	$s5, .LBB13_34
# %bb.26:                               # %.lr.ph82.1.preheader
                                        #   in Loop: Header=BB13_25 Depth=1
	move	$t0, $zero
	bne	$s5, $a4, .LBB13_28
# %bb.27:                               #   in Loop: Header=BB13_25 Depth=1
	move	$a5, $a7
	move	$a6, $a0
	b	.LBB13_31
	.p2align	4, , 16
.LBB13_28:                              # %vector.ph157
                                        #   in Loop: Header=BB13_25 Depth=1
	add.d	$a5, $a7, $a3
	add.d	$a6, $a0, $a3
	addi.d	$a7, $a7, 4
	addi.d	$a0, $a0, 4
	move	$t1, $a2
	.p2align	4, , 16
.LBB13_29:                              # %vector.body160
                                        #   Parent Loop BB13_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t2, $a7, -4
	ld.hu	$t3, $a7, 0
	ld.hu	$t4, $a0, -4
	ld.hu	$t5, $a0, 0
	ld.hu	$t6, $a7, -2
	ld.hu	$t7, $a7, 2
	ld.hu	$t8, $a0, -2
	ld.hu	$s2, $a0, 2
	sub.d	$t2, $t2, $t4
	sub.d	$t3, $t3, $t5
	sub.d	$t4, $t6, $t8
	sub.d	$t5, $t7, $s2
	slli.d	$t2, $t2, 2
	slli.d	$t3, $t3, 2
	ldx.w	$t2, $s6, $t2
	ldx.w	$t3, $s6, $t3
	slli.d	$t4, $t4, 2
	slli.d	$t5, $t5, 2
	ldx.w	$t4, $s6, $t4
	ldx.w	$t5, $s6, $t5
	add.d	$t2, $t2, $s0
	add.d	$t0, $t3, $t0
	add.d	$s0, $t2, $t4
	add.d	$t0, $t0, $t5
	addi.d	$t1, $t1, -2
	addi.d	$a7, $a7, 8
	addi.d	$a0, $a0, 8
	bnez	$t1, .LBB13_29
# %bb.30:                               # %middle.block171
                                        #   in Loop: Header=BB13_25 Depth=1
	add.w	$s0, $t0, $s0
	move	$t0, $a2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB13_33
.LBB13_31:                              # %.lr.ph82.1.preheader178
                                        #   in Loop: Header=BB13_25 Depth=1
	sub.d	$a0, $s5, $t0
	.p2align	4, , 16
.LBB13_32:                              # %.lr.ph82.1
                                        #   Parent Loop BB13_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a6, 0
	sub.d	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s6, $a7
	ld.hu	$t0, $a5, 2
	ld.hu	$t1, $a6, 2
	add.d	$a7, $a7, $s0
	sub.d	$t0, $t0, $t1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s6, $t0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.w	$a0, $a0, -1
	add.w	$s0, $a7, $t0
	bnez	$a0, .LBB13_32
.LBB13_33:                              # %._crit_edge83.1
                                        #   in Loop: Header=BB13_25 Depth=1
	st.d	$a5, $s7, %pc_lo12(src_line)
	st.d	$a6, $s8, %pc_lo12(ref_line)
	move	$a7, $a5
	move	$a0, $a6
.LBB13_34:                              #   in Loop: Header=BB13_25 Depth=1
	bge	$s0, $fp, .LBB13_36
# %bb.35:                               #   in Loop: Header=BB13_25 Depth=1
	alsl.d	$a0, $s1, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s8, %pc_lo12(ref_line)
	bne	$a1, $s4, .LBB13_25
.LBB13_36:                              # %.loopexit
	move	$a0, $s0
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
	ret
.Lfunc_end13:
	.size	computeSSE, .Lfunc_end13-computeSSE
                                        # -- End function
	.globl	computeSSEWP                    # -- Begin function computeSSEWP
	.p2align	5
	.type	computeSSEWP,@function
computeSSEWP:                           # @computeSSEWP
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a3
	move	$s4, $a2
	move	$s3, $a1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s8, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s8, 0
	ldptr.d	$s5, $a1, 14232
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(ref_access_method)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(ref_access_method)
	ld.w	$s0, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s6, %pc_hi20(src_line)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$a2, $a4
	jirl	$ra, $a3, 0
	pcalau12i	$s7, %pc_hi20(ref_line)
	st.d	$a0, $s7, %pc_lo12(ref_line)
	lu12i.w	$a3, 3
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $zero
	blez	$s3, .LBB14_12
# %bb.1:                                # %.preheader70.lr.ph
	move	$a1, $zero
	ld.d	$s2, $s6, %pc_lo12(src_line)
	sub.w	$a2, $s0, $s4
	ld.d	$s8, $s8, 0
	pcalau12i	$a4, %pc_hi20(weight_luma)
	ld.w	$a4, $a4, %pc_lo12(weight_luma)
	pcalau12i	$a5, %pc_hi20(wp_luma_round)
	ld.w	$a5, $a5, %pc_lo12(wp_luma_round)
	pcalau12i	$a6, %pc_hi20(luma_log_weight_denom)
	ld.w	$a6, $a6, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a7, %pc_hi20(offset_luma)
	ld.w	$a7, $a7, %pc_lo12(offset_luma)
	addi.d	$t0, $s4, -1
	bstrpick.d	$t0, $t0, 31, 2
	addi.d	$t0, $t0, 1
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$t3, $t0, 30, 3
	slli.d	$t1, $t3, 3
	slli.d	$t0, $t3, 5
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	slli.d	$t0, $t3, 6
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr0, $a4
	vreplgr2vr.w	$vr1, $a5
	vreplgr2vr.w	$vr2, $a6
	vreplgr2vr.w	$vr3, $a7
	ori	$t4, $a3, 3232
	ori	$t3, $zero, 29
	vrepli.b	$vr4, 0
	.p2align	4, , 16
.LBB14_2:                               # %.preheader70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #     Child Loop BB14_8 Depth 2
	blez	$s4, .LBB14_10
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB14_2 Depth=1
	ldx.w	$t6, $s8, $t4
	bgeu	$s4, $t3, .LBB14_5
# %bb.4:                                #   in Loop: Header=BB14_2 Depth=1
	move	$s0, $zero
	move	$t7, $a0
	move	$t8, $s2
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_5:                               # %vector.ph
                                        #   in Loop: Header=BB14_2 Depth=1
	move	$t3, $s8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.d	$t7, $a0, $a3
	add.d	$t8, $s2, $a3
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $s1, 0
	vreplgr2vr.w	$vr5, $t6
	addi.d	$a0, $a0, 32
	addi.d	$s0, $s2, 32
	move	$s1, $t1
	vori.b	$vr7, $vr4, 0
	.p2align	4, , 16
.LBB14_6:                               # %vector.body
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s2, $a0, -32
	ld.h	$s8, $a0, -24
	ld.h	$ra, $a0, -16
	ld.h	$t5, $a0, -8
	vinsgr2vr.h	$vr8, $s2, 0
	vinsgr2vr.h	$vr8, $s8, 1
	vinsgr2vr.h	$vr8, $ra, 2
	vinsgr2vr.h	$vr8, $t5, 3
	ld.h	$t5, $a0, 0
	ld.h	$s2, $a0, 8
	ld.h	$s8, $a0, 16
	ld.h	$ra, $a0, 24
	vinsgr2vr.h	$vr9, $t5, 0
	vinsgr2vr.h	$vr9, $s2, 1
	vinsgr2vr.h	$vr9, $s8, 2
	vinsgr2vr.h	$vr9, $ra, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$t5, $s0, -32
	ld.h	$s2, $s0, -24
	ld.h	$s8, $s0, -16
	ld.h	$ra, $s0, -8
	vinsgr2vr.h	$vr10, $t5, 0
	vinsgr2vr.h	$vr10, $s2, 1
	vinsgr2vr.h	$vr10, $s8, 2
	vinsgr2vr.h	$vr10, $ra, 3
	ld.h	$t5, $s0, 0
	ld.h	$s2, $s0, 8
	ld.h	$s8, $s0, 16
	ld.h	$ra, $s0, 24
	vinsgr2vr.h	$vr11, $t5, 0
	vinsgr2vr.h	$vr11, $s2, 1
	vinsgr2vr.h	$vr11, $s8, 2
	vinsgr2vr.h	$vr11, $ra, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t5, $vr9, 0
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$s2, $vr9, 1
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s8, $vr10, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr10, 1
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$t2, $vr8, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t0, $vr8, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$a3, $vr11, 1
	slli.d	$a3, $a3, 2
	ldx.w	$t5, $s5, $t5
	ldx.w	$s2, $s5, $s2
	ldx.w	$s8, $s5, $s8
	ldx.w	$ra, $s5, $ra
	vinsgr2vr.w	$vr8, $t5, 0
	vinsgr2vr.w	$vr8, $s2, 1
	vinsgr2vr.w	$vr8, $s8, 2
	vinsgr2vr.w	$vr8, $ra, 3
	ldx.w	$t2, $s5, $t2
	ldx.w	$t0, $s5, $t0
	ldx.w	$t5, $s5, $s6
	ldx.w	$a3, $s5, $a3
	vinsgr2vr.w	$vr9, $t2, 0
	vinsgr2vr.w	$vr9, $t0, 1
	vinsgr2vr.w	$vr9, $t5, 2
	vinsgr2vr.w	$vr9, $a3, 3
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	ld.h	$a3, $a0, -30
	ld.h	$t0, $a0, -22
	ld.h	$t2, $a0, -14
	ld.h	$t5, $a0, -6
	vinsgr2vr.h	$vr8, $a3, 0
	vinsgr2vr.h	$vr8, $t0, 1
	vinsgr2vr.h	$vr8, $t2, 2
	vinsgr2vr.h	$vr8, $t5, 3
	ld.h	$a3, $a0, 2
	ld.h	$t0, $a0, 10
	ld.h	$t2, $a0, 18
	ld.h	$t5, $a0, 26
	vinsgr2vr.h	$vr9, $a3, 0
	vinsgr2vr.h	$vr9, $t0, 1
	vinsgr2vr.h	$vr9, $t2, 2
	vinsgr2vr.h	$vr9, $t5, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$a3, $s0, -30
	ld.h	$t0, $s0, -22
	ld.h	$t2, $s0, -14
	ld.h	$t5, $s0, -6
	vinsgr2vr.h	$vr10, $a3, 0
	vinsgr2vr.h	$vr10, $t0, 1
	vinsgr2vr.h	$vr10, $t2, 2
	vinsgr2vr.h	$vr10, $t5, 3
	ld.h	$a3, $s0, 2
	ld.h	$t0, $s0, 10
	ld.h	$t2, $s0, 18
	ld.h	$t5, $s0, 26
	vinsgr2vr.h	$vr11, $a3, 0
	vinsgr2vr.h	$vr11, $t0, 1
	vinsgr2vr.h	$vr11, $t2, 2
	vinsgr2vr.h	$vr11, $t5, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a3, $vr9, 0
	slli.d	$a3, $a3, 2
	vpickve2gr.d	$t0, $vr9, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t2, $vr10, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t5, $vr10, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$a3, $s5, $a3
	ldx.w	$t0, $s5, $t0
	ldx.w	$t2, $s5, $t2
	ldx.w	$t5, $s5, $t5
	vinsgr2vr.w	$vr8, $a3, 0
	vinsgr2vr.w	$vr8, $t0, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t5, 3
	ldx.w	$a3, $s5, $s2
	ldx.w	$t0, $s5, $s6
	ldx.w	$t2, $s5, $s8
	ldx.w	$t5, $s5, $ra
	vinsgr2vr.w	$vr9, $a3, 0
	vinsgr2vr.w	$vr9, $t0, 1
	vinsgr2vr.w	$vr9, $t2, 2
	vinsgr2vr.w	$vr9, $t5, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	ld.h	$a3, $a0, -28
	ld.h	$t0, $a0, -20
	ld.h	$t2, $a0, -12
	ld.h	$t5, $a0, -4
	vinsgr2vr.h	$vr8, $a3, 0
	vinsgr2vr.h	$vr8, $t0, 1
	vinsgr2vr.h	$vr8, $t2, 2
	vinsgr2vr.h	$vr8, $t5, 3
	ld.h	$a3, $a0, 4
	ld.h	$t0, $a0, 12
	ld.h	$t2, $a0, 20
	ld.h	$t5, $a0, 28
	vinsgr2vr.h	$vr9, $a3, 0
	vinsgr2vr.h	$vr9, $t0, 1
	vinsgr2vr.h	$vr9, $t2, 2
	vinsgr2vr.h	$vr9, $t5, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$a3, $s0, -28
	ld.h	$t0, $s0, -20
	ld.h	$t2, $s0, -12
	ld.h	$t5, $s0, -4
	vinsgr2vr.h	$vr10, $a3, 0
	vinsgr2vr.h	$vr10, $t0, 1
	vinsgr2vr.h	$vr10, $t2, 2
	vinsgr2vr.h	$vr10, $t5, 3
	ld.h	$a3, $s0, 4
	ld.h	$t0, $s0, 12
	ld.h	$t2, $s0, 20
	ld.h	$t5, $s0, 28
	vinsgr2vr.h	$vr11, $a3, 0
	vinsgr2vr.h	$vr11, $t0, 1
	vinsgr2vr.h	$vr11, $t2, 2
	vinsgr2vr.h	$vr11, $t5, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a3, $vr9, 0
	slli.d	$a3, $a3, 2
	vpickve2gr.d	$t0, $vr9, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t2, $vr10, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t5, $vr10, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$a3, $s5, $a3
	ldx.w	$t0, $s5, $t0
	ldx.w	$t2, $s5, $t2
	ldx.w	$t5, $s5, $t5
	vinsgr2vr.w	$vr8, $a3, 0
	vinsgr2vr.w	$vr8, $t0, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t5, 3
	ldx.w	$a3, $s5, $s2
	ldx.w	$t0, $s5, $s6
	ldx.w	$t2, $s5, $s8
	ldx.w	$t5, $s5, $ra
	vinsgr2vr.w	$vr9, $a3, 0
	vinsgr2vr.w	$vr9, $t0, 1
	vinsgr2vr.w	$vr9, $t2, 2
	vinsgr2vr.w	$vr9, $t5, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	ld.h	$a3, $a0, -26
	ld.h	$t0, $a0, -18
	ld.h	$t2, $a0, -10
	ld.h	$t5, $a0, -2
	vinsgr2vr.h	$vr8, $a3, 0
	vinsgr2vr.h	$vr8, $t0, 1
	vinsgr2vr.h	$vr8, $t2, 2
	vinsgr2vr.h	$vr8, $t5, 3
	ld.h	$a3, $a0, 6
	ld.h	$t0, $a0, 14
	ld.h	$t2, $a0, 22
	ld.h	$t5, $a0, 30
	vinsgr2vr.h	$vr9, $a3, 0
	vinsgr2vr.h	$vr9, $t0, 1
	vinsgr2vr.h	$vr9, $t2, 2
	vinsgr2vr.h	$vr9, $t5, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$a3, $s0, -26
	ld.h	$t0, $s0, -18
	ld.h	$t2, $s0, -10
	ld.h	$t5, $s0, -2
	vinsgr2vr.h	$vr10, $a3, 0
	vinsgr2vr.h	$vr10, $t0, 1
	vinsgr2vr.h	$vr10, $t2, 2
	vinsgr2vr.h	$vr10, $t5, 3
	ld.h	$a3, $s0, 6
	ld.h	$t0, $s0, 14
	ld.h	$t2, $s0, 22
	ld.h	$t5, $s0, 30
	vinsgr2vr.h	$vr11, $a3, 0
	vinsgr2vr.h	$vr11, $t0, 1
	vinsgr2vr.h	$vr11, $t2, 2
	vinsgr2vr.h	$vr11, $t5, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a3, $vr9, 0
	slli.d	$a3, $a3, 2
	vpickve2gr.d	$t0, $vr9, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t2, $vr10, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t5, $vr10, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$a3, $s5, $a3
	ldx.w	$t0, $s5, $t0
	ldx.w	$t2, $s5, $t2
	ldx.w	$t5, $s5, $t5
	vinsgr2vr.w	$vr8, $a3, 0
	vinsgr2vr.w	$vr8, $t0, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t5, 3
	ldx.w	$a3, $s5, $s2
	ldx.w	$t0, $s5, $s6
	ldx.w	$t2, $s5, $s8
	ldx.w	$t5, $s5, $ra
	vinsgr2vr.w	$vr9, $a3, 0
	vinsgr2vr.w	$vr9, $t0, 1
	vinsgr2vr.w	$vr9, $t2, 2
	vinsgr2vr.w	$vr9, $t5, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$s1, $s1, -8
	addi.d	$a0, $a0, 64
	addi.d	$s0, $s0, 64
	bnez	$s1, .LBB14_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB14_2 Depth=1
	vadd.w	$vr5, $vr7, $vr6
	vhaddw.d.w	$vr5, $vr5, $vr5
	vhaddw.q.d	$vr5, $vr5, $vr5
	vpickve2gr.d	$s1, $vr5, 0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	move	$s8, $t3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ori	$t3, $zero, 29
	beq	$t1, $a0, .LBB14_9
	.p2align	4, , 16
.LBB14_8:                               # %scalar.ph
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t7, 0
	mul.d	$a0, $a4, $a0
	add.d	$a0, $a0, $a5
	sra.w	$a0, $a0, $a6
	add.w	$a0, $a0, $a7
	srai.d	$a3, $a0, 63
	andn	$a0, $a0, $a3
	slt	$a3, $a0, $t6
	maskeqz	$a0, $a0, $a3
	ld.hu	$t0, $t8, 0
	ld.hu	$t2, $t7, 2
	masknez	$a3, $t6, $a3
	or	$a0, $a0, $a3
	sub.w	$a0, $t0, $a0
	mul.d	$a3, $a4, $t2
	add.d	$a3, $a3, $a5
	sra.w	$a3, $a3, $a6
	add.w	$a3, $a3, $a7
	srai.d	$t0, $a3, 63
	andn	$a3, $a3, $t0
	slt	$t0, $a3, $t6
	maskeqz	$a3, $a3, $t0
	masknez	$t0, $t6, $t0
	ld.hu	$t2, $t8, 2
	ld.hu	$t5, $t7, 4
	or	$a3, $a3, $t0
	slli.d	$a0, $a0, 2
	sub.w	$a3, $t2, $a3
	mul.d	$t0, $a4, $t5
	add.d	$t0, $t0, $a5
	sra.w	$t0, $t0, $a6
	add.w	$t0, $t0, $a7
	srai.d	$t2, $t0, 63
	andn	$t0, $t0, $t2
	slt	$t2, $t0, $t6
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $t6, $t2
	or	$t0, $t0, $t2
	ld.hu	$t2, $t8, 4
	ldx.w	$a0, $s5, $a0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s5, $a3
	sub.w	$t0, $t2, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s5, $t0
	ld.hu	$t2, $t7, 6
	add.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $t0
	mul.d	$a3, $a4, $t2
	add.d	$a3, $a3, $a5
	sra.w	$a3, $a3, $a6
	add.w	$a3, $a3, $a7
	srai.d	$t0, $a3, 63
	andn	$a3, $a3, $t0
	slt	$t0, $a3, $t6
	ld.hu	$t2, $t8, 6
	maskeqz	$a3, $a3, $t0
	masknez	$t0, $t6, $t0
	or	$a3, $a3, $t0
	sub.w	$a3, $t2, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s5, $a3
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	addi.w	$s0, $s0, 4
	add.d	$s1, $a0, $a3
	blt	$s0, $s4, .LBB14_8
.LBB14_9:                               # %._crit_edge
                                        #   in Loop: Header=BB14_2 Depth=1
	st.d	$t7, $s7, %pc_lo12(ref_line)
	st.d	$t8, $s6, %pc_lo12(src_line)
	move	$s2, $t8
	move	$a0, $t7
.LBB14_10:                              #   in Loop: Header=BB14_2 Depth=1
	addi.w	$a3, $s1, 0
	bge	$a3, $fp, .LBB14_39
# %bb.11:                               #   in Loop: Header=BB14_2 Depth=1
	alsl.d	$a0, $a2, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s7, %pc_lo12(ref_line)
	bne	$a1, $s3, .LBB14_2
.LBB14_12:                              # %._crit_edge88
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB14_39
# %bb.13:
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(shift_cr_y)
	ld.wu	$a1, $a1, %pc_lo12(shift_cr_y)
	pcalau12i	$a2, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a2, $a2, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s4, $s4, $a0
	sra.w	$s3, $s3, $a1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	sub.w	$s2, $a2, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	st.d	$a1, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s7, %pc_lo12(ref_line)
	pcalau12i	$a3, %pc_hi20(wp_chroma_round)
	pcalau12i	$a4, %pc_hi20(chroma_log_weight_denom)
	pcalau12i	$a1, %pc_hi20(weight_cr)
	addi.d	$a5, $a1, %pc_lo12(weight_cr)
	pcalau12i	$a1, %pc_hi20(offset_cr)
	addi.d	$a6, $a1, %pc_lo12(offset_cr)
	bstrpick.d	$a1, $s4, 31, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$t0, $s4, 30, 3
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	blez	$s3, .LBB14_26
# %bb.14:                               # %.preheader.lr.ph
	move	$a1, $zero
	ld.d	$t6, $s6, %pc_lo12(src_line)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t8, $a2, 0
	ld.w	$a3, $a3, %pc_lo12(wp_chroma_round)
	ld.w	$a4, $a4, %pc_lo12(chroma_log_weight_denom)
	ld.w	$a5, $a5, 0
	ld.w	$a6, $a6, 0
	slli.d	$a7, $t0, 3
	slli.d	$a2, $t0, 5
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr1, $a3
	vreplgr2vr.w	$vr2, $a4
	vreplgr2vr.w	$vr3, $a6
	lu12i.w	$a2, 3
	ori	$t1, $a2, 3236
	ori	$t0, $zero, 8
	vrepli.b	$vr4, 0
	.p2align	4, , 16
.LBB14_15:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_19 Depth 2
                                        #     Child Loop BB14_22 Depth 2
	blez	$s4, .LBB14_24
# %bb.16:                               # %.lr.ph92
                                        #   in Loop: Header=BB14_15 Depth=1
	ldx.w	$t3, $t8, $t1
	bgeu	$s4, $t0, .LBB14_18
# %bb.17:                               #   in Loop: Header=BB14_15 Depth=1
	move	$t7, $zero
	move	$t4, $a0
	move	$t5, $t6
	b	.LBB14_21
	.p2align	4, , 16
.LBB14_18:                              # %vector.ph187
                                        #   in Loop: Header=BB14_15 Depth=1
	move	$t0, $t8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$t4, $a0, $a2
	add.d	$t5, $t6, $a2
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $s1, 0
	vreplgr2vr.w	$vr5, $t3
	addi.d	$a0, $a0, 16
	addi.d	$t6, $t6, 16
	move	$t7, $a7
	vori.b	$vr7, $vr4, 0
	.p2align	4, , 16
.LBB14_19:                              # %vector.body201
                                        #   Parent Loop BB14_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t8, $a0, -16
	ld.h	$s1, $a0, -12
	ld.h	$s6, $a0, -8
	ld.h	$ra, $a0, -4
	vinsgr2vr.h	$vr8, $t8, 0
	vinsgr2vr.h	$vr8, $s1, 1
	vinsgr2vr.h	$vr8, $s6, 2
	vinsgr2vr.h	$vr8, $ra, 3
	ld.h	$t8, $a0, 0
	ld.h	$s1, $a0, 4
	ld.h	$s6, $a0, 8
	ld.h	$ra, $a0, 12
	vinsgr2vr.h	$vr9, $t8, 0
	vinsgr2vr.h	$vr9, $s1, 1
	vinsgr2vr.h	$vr9, $s6, 2
	vinsgr2vr.h	$vr9, $ra, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$t8, $t6, -16
	ld.h	$s1, $t6, -12
	ld.h	$s6, $t6, -8
	ld.h	$ra, $t6, -4
	vinsgr2vr.h	$vr10, $t8, 0
	vinsgr2vr.h	$vr10, $s1, 1
	vinsgr2vr.h	$vr10, $s6, 2
	vinsgr2vr.h	$vr10, $ra, 3
	ld.h	$t8, $t6, 0
	ld.h	$s1, $t6, 4
	ld.h	$s6, $t6, 8
	ld.h	$ra, $t6, 12
	vinsgr2vr.h	$vr11, $t8, 0
	vinsgr2vr.h	$vr11, $s1, 1
	vinsgr2vr.h	$vr11, $s6, 2
	vinsgr2vr.h	$vr11, $ra, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t8, $vr9, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s1, $vr9, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s6, $vr10, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$ra, $vr10, 1
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$s8, $vr8, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$s0, $vr8, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$t2, $vr11, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$a2, $vr11, 1
	slli.d	$a2, $a2, 2
	ldx.w	$t8, $s5, $t8
	ldx.w	$s1, $s5, $s1
	ldx.w	$s6, $s5, $s6
	ldx.w	$ra, $s5, $ra
	vinsgr2vr.w	$vr8, $t8, 0
	vinsgr2vr.w	$vr8, $s1, 1
	vinsgr2vr.w	$vr8, $s6, 2
	vinsgr2vr.w	$vr8, $ra, 3
	ldx.w	$t8, $s5, $s8
	ldx.w	$s0, $s5, $s0
	ldx.w	$t2, $s5, $t2
	ldx.w	$a2, $s5, $a2
	vinsgr2vr.w	$vr9, $t8, 0
	vinsgr2vr.w	$vr9, $s0, 1
	vinsgr2vr.w	$vr9, $t2, 2
	vinsgr2vr.w	$vr9, $a2, 3
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	ld.h	$a2, $a0, -14
	ld.h	$t2, $a0, -10
	ld.h	$t8, $a0, -6
	ld.h	$s0, $a0, -2
	vinsgr2vr.h	$vr8, $a2, 0
	vinsgr2vr.h	$vr8, $t2, 1
	vinsgr2vr.h	$vr8, $t8, 2
	vinsgr2vr.h	$vr8, $s0, 3
	ld.h	$a2, $a0, 2
	ld.h	$t2, $a0, 6
	ld.h	$t8, $a0, 10
	ld.h	$s0, $a0, 14
	vinsgr2vr.h	$vr9, $a2, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t8, 2
	vinsgr2vr.h	$vr9, $s0, 3
	vilvl.h	$vr8, $vr4, $vr8
	vilvl.h	$vr9, $vr4, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$a2, $t6, -14
	ld.h	$t2, $t6, -10
	ld.h	$t8, $t6, -6
	ld.h	$s0, $t6, -2
	vinsgr2vr.h	$vr10, $a2, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t8, 2
	vinsgr2vr.h	$vr10, $s0, 3
	ld.h	$a2, $t6, 2
	ld.h	$t2, $t6, 6
	ld.h	$t8, $t6, 10
	ld.h	$s0, $t6, 14
	vinsgr2vr.h	$vr11, $a2, 0
	vinsgr2vr.h	$vr11, $t2, 1
	vinsgr2vr.h	$vr11, $t8, 2
	vinsgr2vr.h	$vr11, $s0, 3
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.h	$vr11, $vr4, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a2, $vr9, 0
	slli.d	$a2, $a2, 2
	vpickve2gr.d	$t2, $vr9, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t8, $vr10, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s0, $vr10, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr8, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$a2, $s5, $a2
	ldx.w	$t2, $s5, $t2
	ldx.w	$t8, $s5, $t8
	ldx.w	$s0, $s5, $s0
	vinsgr2vr.w	$vr8, $a2, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vinsgr2vr.w	$vr8, $t8, 2
	vinsgr2vr.w	$vr8, $s0, 3
	ldx.w	$a2, $s5, $s1
	ldx.w	$t2, $s5, $s6
	ldx.w	$t8, $s5, $s8
	ldx.w	$s0, $s5, $ra
	vinsgr2vr.w	$vr9, $a2, 0
	vinsgr2vr.w	$vr9, $t2, 1
	vinsgr2vr.w	$vr9, $t8, 2
	vinsgr2vr.w	$vr9, $s0, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$t7, $t7, -8
	addi.d	$a0, $a0, 32
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB14_19
# %bb.20:                               # %middle.block224
                                        #   in Loop: Header=BB14_15 Depth=1
	vadd.w	$vr5, $vr7, $vr6
	vhaddw.d.w	$vr5, $vr5, $vr5
	vhaddw.q.d	$vr5, $vr5, $vr5
	vpickve2gr.d	$s1, $vr5, 0
	move	$t7, $a7
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$t8, $t0
	ori	$t0, $zero, 8
	beq	$a7, $a0, .LBB14_23
.LBB14_21:                              # %scalar.ph185.preheader
                                        #   in Loop: Header=BB14_15 Depth=1
	sub.d	$a0, $s4, $t7
	.p2align	4, , 16
.LBB14_22:                              # %scalar.ph185
                                        #   Parent Loop BB14_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a2, $t4, 0
	mul.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a3
	sra.w	$a2, $a2, $a4
	add.w	$a2, $a2, $a6
	srai.d	$t2, $a2, 63
	andn	$a2, $a2, $t2
	slt	$t2, $a2, $t3
	ld.hu	$t6, $t5, 0
	maskeqz	$a2, $a2, $t2
	masknez	$t2, $t3, $t2
	or	$a2, $a2, $t2
	sub.w	$a2, $t6, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s5, $a2
	ld.hu	$t2, $t4, 2
	add.d	$a2, $a2, $s1
	mul.d	$t2, $a5, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a6
	srai.d	$t6, $t2, 63
	andn	$t2, $t2, $t6
	slt	$t6, $t2, $t3
	ld.hu	$t7, $t5, 2
	maskeqz	$t2, $t2, $t6
	masknez	$t6, $t3, $t6
	or	$t2, $t2, $t6
	sub.w	$t2, $t7, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s5, $t2
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	addi.w	$a0, $a0, -1
	add.d	$s1, $a2, $t2
	bnez	$a0, .LBB14_22
.LBB14_23:                              # %._crit_edge93
                                        #   in Loop: Header=BB14_15 Depth=1
	st.d	$t4, $s7, %pc_lo12(ref_line)
	st.d	$t5, $s6, %pc_lo12(src_line)
	move	$t6, $t5
	move	$a0, $t4
.LBB14_24:                              #   in Loop: Header=BB14_15 Depth=1
	addi.w	$a2, $s1, 0
	bge	$a2, $fp, .LBB14_39
# %bb.25:                               #   in Loop: Header=BB14_15 Depth=1
	alsl.d	$a0, $s2, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s7, %pc_lo12(ref_line)
	bne	$a1, $s3, .LBB14_15
.LBB14_26:                              # %._crit_edge107
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	st.d	$a1, $s6, %pc_lo12(src_line)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s7, %pc_lo12(ref_line)
	blez	$s3, .LBB14_39
# %bb.27:                               # %.preheader.lr.ph.1
	move	$a1, $zero
	vrepli.b	$vr0, 0
	ld.d	$t6, $s6, %pc_lo12(src_line)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a2, %pc_lo12(wp_chroma_round)
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a4, $a2, %pc_lo12(chroma_log_weight_denom)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a5, $a2, 4
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a6, $a2, 4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	slli.d	$a7, $a2, 3
	slli.d	$a2, $a2, 5
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr1, $a5
	vreplgr2vr.w	$vr2, $a3
	vreplgr2vr.w	$vr3, $a4
	vreplgr2vr.w	$vr4, $a6
	lu12i.w	$a2, 3
	ori	$t1, $a2, 3236
	ori	$t8, $zero, 8
	.p2align	4, , 16
.LBB14_28:                              # %.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_32 Depth 2
                                        #     Child Loop BB14_35 Depth 2
	blez	$s4, .LBB14_37
# %bb.29:                               # %.lr.ph92.1
                                        #   in Loop: Header=BB14_28 Depth=1
	ldx.w	$t3, $t0, $t1
	bgeu	$s4, $t8, .LBB14_31
# %bb.30:                               #   in Loop: Header=BB14_28 Depth=1
	move	$t7, $zero
	move	$t4, $a0
	move	$t5, $t6
	b	.LBB14_34
	.p2align	4, , 16
.LBB14_31:                              # %vector.ph233
                                        #   in Loop: Header=BB14_28 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$t4, $a0, $a2
	add.d	$t5, $t6, $a2
	vori.b	$vr6, $vr0, 0
	vinsgr2vr.w	$vr6, $s1, 0
	vreplgr2vr.w	$vr5, $t3
	addi.d	$a0, $a0, 16
	addi.d	$t6, $t6, 16
	move	$t7, $a7
	vori.b	$vr7, $vr0, 0
	.p2align	4, , 16
.LBB14_32:                              # %vector.body247
                                        #   Parent Loop BB14_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t8, $a0, -16
	ld.h	$s0, $a0, -12
	ld.h	$s1, $a0, -8
	ld.h	$s6, $a0, -4
	vinsgr2vr.h	$vr8, $t8, 0
	vinsgr2vr.h	$vr8, $s0, 1
	vinsgr2vr.h	$vr8, $s1, 2
	vinsgr2vr.h	$vr8, $s6, 3
	ld.h	$t8, $a0, 0
	ld.h	$s0, $a0, 4
	ld.h	$s1, $a0, 8
	ld.h	$s6, $a0, 12
	vinsgr2vr.h	$vr9, $t8, 0
	vinsgr2vr.h	$vr9, $s0, 1
	vinsgr2vr.h	$vr9, $s1, 2
	vinsgr2vr.h	$vr9, $s6, 3
	vilvl.h	$vr8, $vr0, $vr8
	vilvl.h	$vr9, $vr0, $vr9
	vori.b	$vr10, $vr2, 0
	vmadd.w	$vr10, $vr1, $vr8
	vori.b	$vr8, $vr2, 0
	vmadd.w	$vr8, $vr1, $vr9
	vsra.w	$vr9, $vr10, $vr3
	vsra.w	$vr8, $vr8, $vr3
	vadd.w	$vr9, $vr9, $vr4
	vadd.w	$vr8, $vr8, $vr4
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$t8, $t6, -16
	ld.h	$s0, $t6, -12
	ld.h	$s1, $t6, -8
	ld.h	$s6, $t6, -4
	vinsgr2vr.h	$vr10, $t8, 0
	vinsgr2vr.h	$vr10, $s0, 1
	vinsgr2vr.h	$vr10, $s1, 2
	vinsgr2vr.h	$vr10, $s6, 3
	ld.h	$t8, $t6, 0
	ld.h	$s0, $t6, 4
	ld.h	$s1, $t6, 8
	ld.h	$s6, $t6, 12
	vinsgr2vr.h	$vr11, $t8, 0
	vinsgr2vr.h	$vr11, $s0, 1
	vinsgr2vr.h	$vr11, $s1, 2
	vinsgr2vr.h	$vr11, $s6, 3
	vilvl.h	$vr10, $vr0, $vr10
	vilvl.h	$vr11, $vr0, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t8, $vr9, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s0, $vr9, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s6, $vr10, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr8, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr8, 1
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$t2, $vr11, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$a2, $vr11, 1
	slli.d	$a2, $a2, 2
	ldx.w	$t8, $s5, $t8
	ldx.w	$s0, $s5, $s0
	ldx.w	$s1, $s5, $s1
	ldx.w	$s6, $s5, $s6
	vinsgr2vr.w	$vr8, $t8, 0
	vinsgr2vr.w	$vr8, $s0, 1
	vinsgr2vr.w	$vr8, $s1, 2
	vinsgr2vr.w	$vr8, $s6, 3
	ldx.w	$t8, $s5, $s8
	ldx.w	$s0, $s5, $ra
	ldx.w	$t2, $s5, $t2
	ldx.w	$a2, $s5, $a2
	vinsgr2vr.w	$vr9, $t8, 0
	vinsgr2vr.w	$vr9, $s0, 1
	vinsgr2vr.w	$vr9, $t2, 2
	vinsgr2vr.w	$vr9, $a2, 3
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	ld.h	$a2, $a0, -14
	ld.h	$t2, $a0, -10
	ld.h	$t8, $a0, -6
	ld.h	$s0, $a0, -2
	vinsgr2vr.h	$vr8, $a2, 0
	vinsgr2vr.h	$vr8, $t2, 1
	vinsgr2vr.h	$vr8, $t8, 2
	vinsgr2vr.h	$vr8, $s0, 3
	ld.h	$a2, $a0, 2
	ld.h	$t2, $a0, 6
	ld.h	$t8, $a0, 10
	ld.h	$s0, $a0, 14
	vinsgr2vr.h	$vr9, $a2, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t8, 2
	vinsgr2vr.h	$vr9, $s0, 3
	vilvl.h	$vr8, $vr0, $vr8
	vilvl.h	$vr9, $vr0, $vr9
	vori.b	$vr10, $vr2, 0
	vmadd.w	$vr10, $vr1, $vr8
	vori.b	$vr8, $vr2, 0
	vmadd.w	$vr8, $vr1, $vr9
	vsra.w	$vr9, $vr10, $vr3
	vsra.w	$vr8, $vr8, $vr3
	vadd.w	$vr9, $vr9, $vr4
	vadd.w	$vr8, $vr8, $vr4
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr9, $vr9, $vr5
	vmin.w	$vr8, $vr8, $vr5
	ld.h	$a2, $t6, -14
	ld.h	$t2, $t6, -10
	ld.h	$t8, $t6, -6
	ld.h	$s0, $t6, -2
	vinsgr2vr.h	$vr10, $a2, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t8, 2
	vinsgr2vr.h	$vr10, $s0, 3
	ld.h	$a2, $t6, 2
	ld.h	$t2, $t6, 6
	ld.h	$t8, $t6, 10
	ld.h	$s0, $t6, 14
	vinsgr2vr.h	$vr11, $a2, 0
	vinsgr2vr.h	$vr11, $t2, 1
	vinsgr2vr.h	$vr11, $t8, 2
	vinsgr2vr.h	$vr11, $s0, 3
	vilvl.h	$vr10, $vr0, $vr10
	vilvl.h	$vr11, $vr0, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a2, $vr9, 0
	slli.d	$a2, $a2, 2
	vpickve2gr.d	$t2, $vr9, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t8, $vr10, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s0, $vr10, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr8, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$a2, $s5, $a2
	ldx.w	$t2, $s5, $t2
	ldx.w	$t8, $s5, $t8
	ldx.w	$s0, $s5, $s0
	vinsgr2vr.w	$vr8, $a2, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vinsgr2vr.w	$vr8, $t8, 2
	vinsgr2vr.w	$vr8, $s0, 3
	ldx.w	$a2, $s5, $s1
	ldx.w	$t2, $s5, $s6
	ldx.w	$t8, $s5, $s8
	ldx.w	$s0, $s5, $ra
	vinsgr2vr.w	$vr9, $a2, 0
	vinsgr2vr.w	$vr9, $t2, 1
	vinsgr2vr.w	$vr9, $t8, 2
	vinsgr2vr.w	$vr9, $s0, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$t7, $t7, -8
	addi.d	$a0, $a0, 32
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB14_32
# %bb.33:                               # %middle.block270
                                        #   in Loop: Header=BB14_28 Depth=1
	vadd.w	$vr5, $vr7, $vr6
	vhaddw.d.w	$vr5, $vr5, $vr5
	vhaddw.q.d	$vr5, $vr5, $vr5
	vpickve2gr.d	$s1, $vr5, 0
	move	$t7, $a7
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ori	$t8, $zero, 8
	beq	$a7, $a0, .LBB14_36
.LBB14_34:                              # %scalar.ph231.preheader
                                        #   in Loop: Header=BB14_28 Depth=1
	sub.d	$a0, $s4, $t7
	.p2align	4, , 16
.LBB14_35:                              # %scalar.ph231
                                        #   Parent Loop BB14_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a2, $t4, 0
	mul.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a3
	sra.w	$a2, $a2, $a4
	add.w	$a2, $a2, $a6
	srai.d	$t2, $a2, 63
	andn	$a2, $a2, $t2
	slt	$t2, $a2, $t3
	ld.hu	$t6, $t5, 0
	maskeqz	$a2, $a2, $t2
	masknez	$t2, $t3, $t2
	or	$a2, $a2, $t2
	sub.w	$a2, $t6, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s5, $a2
	ld.hu	$t2, $t4, 2
	add.d	$a2, $a2, $s1
	mul.d	$t2, $a5, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a6
	srai.d	$t6, $t2, 63
	andn	$t2, $t2, $t6
	slt	$t6, $t2, $t3
	ld.hu	$t7, $t5, 2
	maskeqz	$t2, $t2, $t6
	masknez	$t6, $t3, $t6
	or	$t2, $t2, $t6
	sub.w	$t2, $t7, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s5, $t2
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	addi.w	$a0, $a0, -1
	add.d	$s1, $a2, $t2
	bnez	$a0, .LBB14_35
.LBB14_36:                              # %._crit_edge93.1
                                        #   in Loop: Header=BB14_28 Depth=1
	st.d	$t4, $s7, %pc_lo12(ref_line)
	st.d	$t5, $s6, %pc_lo12(src_line)
	move	$t6, $t5
	move	$a0, $t4
.LBB14_37:                              #   in Loop: Header=BB14_28 Depth=1
	addi.w	$a2, $s1, 0
	bge	$a2, $fp, .LBB14_39
# %bb.38:                               #   in Loop: Header=BB14_28 Depth=1
	alsl.d	$a0, $s2, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s7, %pc_lo12(ref_line)
	bne	$a1, $s3, .LBB14_28
.LBB14_39:                              # %.loopexit
	addi.w	$a0, $s1, 0
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end14:
	.size	computeSSEWP, .Lfunc_end14-computeSSEWP
                                        # -- End function
	.globl	computeBiPredSSE1               # -- Begin function computeBiPredSSE1
	.p2align	5
	.type	computeBiPredSSE1,@function
computeBiPredSSE1:                      # @computeBiPredSSE1
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
	move	$s3, $a5
	move	$s5, $a4
	move	$fp, $a3
	move	$s7, $a2
	move	$s6, $a1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.d	$s8, $a1, 14232
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$s4, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s1, %pc_hi20(src_line)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $s1, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$s0, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $s0, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	pcalau12i	$s2, %pc_hi20(ref2_line)
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	move	$a1, $s3
	move	$a2, $s5
	jirl	$ra, $a3, 0
	pcalau12i	$s3, %pc_hi20(ref1_line)
	st.d	$a0, $s3, %pc_lo12(ref1_line)
	blez	$s6, .LBB15_8
# %bb.1:                                # %.preheader73.lr.ph
	ld.d	$a4, $s1, %pc_lo12(src_line)
	ld.d	$a3, $s2, %pc_lo12(ref2_line)
	move	$s0, $zero
	move	$a1, $zero
	sub.w	$a2, $s4, $s7
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB15_2:                               # %.preheader73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_4 Depth 2
	blez	$s7, .LBB15_6
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB15_2 Depth=1
	move	$a5, $zero
	.p2align	4, , 16
.LBB15_4:                               # %.lr.ph
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a0, 0
	ld.d	$t0, $a3, 0
	vinsgr2vr.d	$vr1, $a6, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $a7, 0
	vinsgr2vr.d	$vr3, $t0, 0
	vor.v	$vr4, $vr2, $vr3
	vxor.v	$vr2, $vr2, $vr3
	vsrli.h	$vr2, $vr2, 1
	vsub.h	$vr2, $vr4, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a6, $vr1, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s8, $a6
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, 8
	add.d	$a6, $a6, $s0
	vpickve2gr.w	$a7, $vr1, 1
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s8, $a7
	vpickve2gr.w	$t0, $vr1, 2
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s8, $t0
	vpickve2gr.w	$t1, $vr1, 3
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s8, $t1
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	addi.w	$a5, $a5, 4
	add.w	$s0, $a6, $t1
	blt	$a5, $s7, .LBB15_4
# %bb.5:                                # %._crit_edge
                                        #   in Loop: Header=BB15_2 Depth=1
	st.d	$a4, $s1, %pc_lo12(src_line)
	st.d	$a0, $s3, %pc_lo12(ref1_line)
	st.d	$a3, $s2, %pc_lo12(ref2_line)
.LBB15_6:                               #   in Loop: Header=BB15_2 Depth=1
	bge	$s0, $fp, .LBB15_26
# %bb.7:                                #   in Loop: Header=BB15_2 Depth=1
	alsl.d	$a3, $a2, $a3, 1
	st.d	$a3, $s2, %pc_lo12(ref2_line)
	alsl.d	$a0, $a2, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s3, %pc_lo12(ref1_line)
	bne	$a1, $s6, .LBB15_2
	b	.LBB15_9
.LBB15_8:
	move	$s0, $zero
.LBB15_9:                               # %._crit_edge96
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB15_26
# %bb.10:
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(shift_cr_y)
	ld.wu	$a1, $a1, %pc_lo12(shift_cr_y)
	pcalau12i	$a2, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a2, $a2, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s7, $s7, $a0
	sra.w	$s6, $s6, $a1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	sub.w	$s5, $a2, $s7
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	st.d	$a1, $s1, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s4, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s4, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ldx.d	$a3, $s4, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s3, %pc_lo12(ref1_line)
	blez	$s6, .LBB15_18
# %bb.11:                               # %.preheader.preheader
	ld.d	$a2, $s1, %pc_lo12(src_line)
	ld.d	$a3, $s2, %pc_lo12(ref2_line)
	move	$a1, $zero
	.p2align	4, , 16
.LBB15_12:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_14 Depth 2
	blez	$s7, .LBB15_16
# %bb.13:                               # %.lr.ph100.preheader
                                        #   in Loop: Header=BB15_12 Depth=1
	move	$a4, $s7
	.p2align	4, , 16
.LBB15_14:                              # %.lr.ph100
                                        #   Parent Loop BB15_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a0, 0
	ld.hu	$a6, $a3, 0
	ld.hu	$a7, $a2, 0
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	sub.d	$a5, $a7, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s8, $a5
	ld.hu	$a6, $a0, 2
	ld.hu	$a7, $a3, 2
	add.d	$a5, $a5, $s0
	ld.hu	$t0, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	sub.d	$a6, $t0, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s8, $a6
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	addi.w	$a4, $a4, -1
	add.w	$s0, $a5, $a6
	bnez	$a4, .LBB15_14
# %bb.15:                               # %._crit_edge101
                                        #   in Loop: Header=BB15_12 Depth=1
	st.d	$a2, $s1, %pc_lo12(src_line)
	st.d	$a0, $s3, %pc_lo12(ref1_line)
	st.d	$a3, $s2, %pc_lo12(ref2_line)
.LBB15_16:                              #   in Loop: Header=BB15_12 Depth=1
	bge	$s0, $fp, .LBB15_26
# %bb.17:                               #   in Loop: Header=BB15_12 Depth=1
	alsl.d	$a3, $s5, $a3, 1
	st.d	$a3, $s2, %pc_lo12(ref2_line)
	alsl.d	$a0, $s5, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s3, %pc_lo12(ref1_line)
	bne	$a1, $s6, .LBB15_12
.LBB15_18:                              # %._crit_edge120
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a3, $s4, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	st.d	$a1, $s1, %pc_lo12(src_line)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s4, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s3, %pc_lo12(ref1_line)
	blez	$s6, .LBB15_26
# %bb.19:                               # %.preheader.preheader.1
	ld.d	$a2, $s1, %pc_lo12(src_line)
	ld.d	$a3, $s2, %pc_lo12(ref2_line)
	move	$a1, $zero
	.p2align	4, , 16
.LBB15_20:                              # %.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_22 Depth 2
	blez	$s7, .LBB15_24
# %bb.21:                               # %.lr.ph100.1.preheader
                                        #   in Loop: Header=BB15_20 Depth=1
	move	$a4, $s7
	.p2align	4, , 16
.LBB15_22:                              # %.lr.ph100.1
                                        #   Parent Loop BB15_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a0, 0
	ld.hu	$a6, $a3, 0
	ld.hu	$a7, $a2, 0
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	sub.d	$a5, $a7, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s8, $a5
	ld.hu	$a6, $a0, 2
	ld.hu	$a7, $a3, 2
	add.d	$a5, $a5, $s0
	ld.hu	$t0, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	sub.d	$a6, $t0, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s8, $a6
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	addi.w	$a4, $a4, -1
	add.w	$s0, $a5, $a6
	bnez	$a4, .LBB15_22
# %bb.23:                               # %._crit_edge101.1
                                        #   in Loop: Header=BB15_20 Depth=1
	st.d	$a2, $s1, %pc_lo12(src_line)
	st.d	$a0, $s3, %pc_lo12(ref1_line)
	st.d	$a3, $s2, %pc_lo12(ref2_line)
.LBB15_24:                              #   in Loop: Header=BB15_20 Depth=1
	bge	$s0, $fp, .LBB15_26
# %bb.25:                               #   in Loop: Header=BB15_20 Depth=1
	alsl.d	$a3, $s5, $a3, 1
	st.d	$a3, $s2, %pc_lo12(ref2_line)
	alsl.d	$a0, $s5, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $s3, %pc_lo12(ref1_line)
	bne	$a1, $s6, .LBB15_20
.LBB15_26:                              # %.loopexit
	move	$a0, $s0
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
.Lfunc_end15:
	.size	computeBiPredSSE1, .Lfunc_end15-computeBiPredSSE1
                                        # -- End function
	.globl	computeBiPredSSE2               # -- Begin function computeBiPredSSE2
	.p2align	5
	.type	computeBiPredSSE2,@function
computeBiPredSSE2:                      # @computeBiPredSSE2
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.w	$t0, $t0, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$t1, %pc_hi20(wp_luma_round)
	ld.w	$t1, $t1, %pc_lo12(wp_luma_round)
	move	$s1, $a5
	move	$s3, $a4
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	move	$s6, $a2
	move	$s5, $a1
	addi.d	$s7, $t0, 1
	slli.d	$s8, $t1, 1
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$s0, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s4, %pc_hi20(src_line)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a0, $s4, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$fp, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $fp, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 200                   # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	pcalau12i	$s2, %pc_hi20(ref2_line)
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$s1, $sp, 184                   # 8-byte Folded Spill
	move	$a1, $s1
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	move	$a2, $s3
	jirl	$ra, $a3, 0
	pcalau12i	$fp, %pc_hi20(ref1_line)
	st.d	$a0, $fp, %pc_lo12(ref1_line)
	vreplgr2vr.w	$vr12, $s8
	vreplgr2vr.w	$vr13, $s7
	lu12i.w	$a1, 3
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	blez	$s5, .LBB16_12
# %bb.1:                                # %.preheader109.lr.ph
	ld.d	$s4, $s4, %pc_lo12(src_line)
	ld.d	$ra, $s2, %pc_lo12(ref2_line)
	pcalau12i	$a2, %pc_hi20(weight1)
	ld.h	$a2, $a2, %pc_lo12(weight1)
	pcalau12i	$a3, %pc_hi20(weight2)
	ld.h	$a3, $a3, %pc_lo12(weight2)
	sub.w	$a4, $s0, $s6
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a6, $a5, %got_pc_lo12(img)
	move	$s3, $zero
	move	$a5, $zero
	ld.d	$a6, $a6, 0
	pcalau12i	$a7, %pc_hi20(offsetBi)
	ld.h	$a7, $a7, %pc_lo12(offsetBi)
	addi.d	$t0, $s6, -1
	bstrpick.d	$t0, $t0, 31, 2
	addi.d	$t0, $t0, 1
	bstrpick.d	$t3, $t0, 30, 3
	slli.d	$t1, $t3, 3
	slli.d	$t2, $t3, 5
	st.d	$t2, $sp, 224                   # 8-byte Folded Spill
	slli.d	$t3, $t3, 6
	vreplgr2vr.w	$vr0, $a2
	vreplgr2vr.w	$vr1, $a3
	vreplgr2vr.w	$vr2, $a7
	ori	$t4, $a1, 3232
	vrepli.b	$vr3, 0
	.p2align	4, , 16
.LBB16_2:                               # %.preheader109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #     Child Loop BB16_8 Depth 2
	blez	$s6, .LBB16_10
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB16_2 Depth=1
	ldx.w	$t6, $a6, $t4
	ori	$a1, $zero, 29
	bgeu	$s6, $a1, .LBB16_5
# %bb.4:                                #   in Loop: Header=BB16_2 Depth=1
	move	$s1, $zero
	move	$t7, $a0
	move	$s0, $ra
	move	$t8, $s4
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	b	.LBB16_8
	.p2align	4, , 16
.LBB16_5:                               # %vector.ph
                                        #   in Loop: Header=BB16_2 Depth=1
	add.d	$t7, $a0, $t3
	add.d	$s0, $ra, $t3
	add.d	$t8, $s4, $t3
	vori.b	$vr4, $vr3, 0
	vinsgr2vr.w	$vr4, $s3, 0
	vreplgr2vr.w	$vr5, $t6
	addi.d	$a0, $a0, 32
	addi.d	$s1, $ra, 32
	addi.d	$s3, $s4, 32
	move	$s4, $t1
	vori.b	$vr6, $vr3, 0
	.p2align	4, , 16
.LBB16_6:                               # %vector.body
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$ra, $a0, -32
	ld.h	$a1, $a0, -24
	ld.h	$t5, $a0, -16
	ld.h	$t2, $a0, -8
	vinsgr2vr.h	$vr7, $ra, 0
	vinsgr2vr.h	$vr7, $a1, 1
	vinsgr2vr.h	$vr7, $t5, 2
	vinsgr2vr.h	$vr7, $t2, 3
	ld.h	$a1, $a0, 0
	ld.h	$t2, $a0, 8
	ld.h	$t5, $a0, 16
	ld.h	$ra, $a0, 24
	vinsgr2vr.h	$vr8, $a1, 0
	vinsgr2vr.h	$vr8, $t2, 1
	vinsgr2vr.h	$vr8, $t5, 2
	vinsgr2vr.h	$vr8, $ra, 3
	vilvl.h	$vr7, $vr3, $vr7
	vilvl.h	$vr8, $vr3, $vr8
	ld.h	$a1, $s1, -32
	ld.h	$t2, $s1, -24
	ld.h	$t5, $s1, -16
	ld.h	$ra, $s1, -8
	vinsgr2vr.h	$vr9, $a1, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t5, 2
	vinsgr2vr.h	$vr9, $ra, 3
	ld.h	$a1, $s1, 0
	ld.h	$t2, $s1, 8
	ld.h	$t5, $s1, 16
	ld.h	$ra, $s1, 24
	vinsgr2vr.h	$vr10, $a1, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t5, 2
	vinsgr2vr.h	$vr10, $ra, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vori.b	$vr11, $vr12, 0
	vmadd.w	$vr11, $vr0, $vr7
	vori.b	$vr7, $vr12, 0
	vmadd.w	$vr7, $vr0, $vr8
	vmadd.w	$vr11, $vr1, $vr9
	vmadd.w	$vr7, $vr1, $vr10
	vsra.w	$vr8, $vr11, $vr13
	vsra.w	$vr7, $vr7, $vr13
	vadd.w	$vr8, $vr8, $vr2
	vadd.w	$vr7, $vr7, $vr2
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr5
	vmin.w	$vr7, $vr7, $vr5
	ld.h	$a1, $s3, -32
	ld.h	$t2, $s3, -24
	ld.h	$t5, $s3, -16
	ld.h	$ra, $s3, -8
	vinsgr2vr.h	$vr9, $a1, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t5, 2
	vinsgr2vr.h	$vr9, $ra, 3
	ld.h	$a1, $s3, 0
	ld.h	$t2, $s3, 8
	ld.h	$t5, $s3, 16
	ld.h	$ra, $s3, 24
	vinsgr2vr.h	$vr10, $a1, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t5, 2
	vinsgr2vr.h	$vr10, $ra, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vmadd.w	$vr4, $vr8, $vr8
	vmadd.w	$vr6, $vr7, $vr7
	ld.h	$a1, $a0, -30
	ld.h	$t2, $a0, -22
	ld.h	$t5, $a0, -14
	ld.h	$ra, $a0, -6
	vinsgr2vr.h	$vr7, $a1, 0
	vinsgr2vr.h	$vr7, $t2, 1
	vinsgr2vr.h	$vr7, $t5, 2
	vinsgr2vr.h	$vr7, $ra, 3
	ld.h	$a1, $a0, 2
	ld.h	$t2, $a0, 10
	ld.h	$t5, $a0, 18
	ld.h	$ra, $a0, 26
	vinsgr2vr.h	$vr8, $a1, 0
	vinsgr2vr.h	$vr8, $t2, 1
	vinsgr2vr.h	$vr8, $t5, 2
	vinsgr2vr.h	$vr8, $ra, 3
	vilvl.h	$vr7, $vr3, $vr7
	vilvl.h	$vr8, $vr3, $vr8
	ld.h	$a1, $s1, -30
	ld.h	$t2, $s1, -22
	ld.h	$t5, $s1, -14
	ld.h	$ra, $s1, -6
	vinsgr2vr.h	$vr9, $a1, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t5, 2
	vinsgr2vr.h	$vr9, $ra, 3
	ld.h	$a1, $s1, 2
	ld.h	$t2, $s1, 10
	ld.h	$t5, $s1, 18
	ld.h	$ra, $s1, 26
	vinsgr2vr.h	$vr10, $a1, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t5, 2
	vinsgr2vr.h	$vr10, $ra, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vori.b	$vr11, $vr12, 0
	vmadd.w	$vr11, $vr0, $vr7
	vori.b	$vr7, $vr12, 0
	vmadd.w	$vr7, $vr0, $vr8
	vmadd.w	$vr11, $vr1, $vr9
	vmadd.w	$vr7, $vr1, $vr10
	vsra.w	$vr8, $vr11, $vr13
	vsra.w	$vr7, $vr7, $vr13
	vadd.w	$vr8, $vr8, $vr2
	vadd.w	$vr7, $vr7, $vr2
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr5
	vmin.w	$vr7, $vr7, $vr5
	ld.h	$a1, $s3, -30
	ld.h	$t2, $s3, -22
	ld.h	$t5, $s3, -14
	ld.h	$ra, $s3, -6
	vinsgr2vr.h	$vr9, $a1, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t5, 2
	vinsgr2vr.h	$vr9, $ra, 3
	ld.h	$a1, $s3, 2
	ld.h	$t2, $s3, 10
	ld.h	$t5, $s3, 18
	ld.h	$ra, $s3, 26
	vinsgr2vr.h	$vr10, $a1, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t5, 2
	vinsgr2vr.h	$vr10, $ra, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vmadd.w	$vr4, $vr8, $vr8
	vmadd.w	$vr6, $vr7, $vr7
	ld.h	$a1, $a0, -28
	ld.h	$t2, $a0, -20
	ld.h	$t5, $a0, -12
	ld.h	$ra, $a0, -4
	vinsgr2vr.h	$vr7, $a1, 0
	vinsgr2vr.h	$vr7, $t2, 1
	vinsgr2vr.h	$vr7, $t5, 2
	vinsgr2vr.h	$vr7, $ra, 3
	ld.h	$a1, $a0, 4
	ld.h	$t2, $a0, 12
	ld.h	$t5, $a0, 20
	ld.h	$ra, $a0, 28
	vinsgr2vr.h	$vr8, $a1, 0
	vinsgr2vr.h	$vr8, $t2, 1
	vinsgr2vr.h	$vr8, $t5, 2
	vinsgr2vr.h	$vr8, $ra, 3
	vilvl.h	$vr7, $vr3, $vr7
	vilvl.h	$vr8, $vr3, $vr8
	ld.h	$a1, $s1, -28
	ld.h	$t2, $s1, -20
	ld.h	$t5, $s1, -12
	ld.h	$ra, $s1, -4
	vinsgr2vr.h	$vr9, $a1, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t5, 2
	vinsgr2vr.h	$vr9, $ra, 3
	ld.h	$a1, $s1, 4
	ld.h	$t2, $s1, 12
	ld.h	$t5, $s1, 20
	ld.h	$ra, $s1, 28
	vinsgr2vr.h	$vr10, $a1, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t5, 2
	vinsgr2vr.h	$vr10, $ra, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vori.b	$vr11, $vr12, 0
	vmadd.w	$vr11, $vr0, $vr7
	vori.b	$vr7, $vr12, 0
	vmadd.w	$vr7, $vr0, $vr8
	vmadd.w	$vr11, $vr1, $vr9
	vmadd.w	$vr7, $vr1, $vr10
	vsra.w	$vr8, $vr11, $vr13
	vsra.w	$vr7, $vr7, $vr13
	vadd.w	$vr8, $vr8, $vr2
	vadd.w	$vr7, $vr7, $vr2
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr5
	vmin.w	$vr7, $vr7, $vr5
	ld.h	$a1, $s3, -28
	ld.h	$t2, $s3, -20
	ld.h	$t5, $s3, -12
	ld.h	$ra, $s3, -4
	vinsgr2vr.h	$vr9, $a1, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t5, 2
	vinsgr2vr.h	$vr9, $ra, 3
	ld.h	$a1, $s3, 4
	ld.h	$t2, $s3, 12
	ld.h	$t5, $s3, 20
	ld.h	$ra, $s3, 28
	vinsgr2vr.h	$vr10, $a1, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t5, 2
	vinsgr2vr.h	$vr10, $ra, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vmadd.w	$vr4, $vr8, $vr8
	vmadd.w	$vr6, $vr7, $vr7
	ld.h	$a1, $a0, -26
	ld.h	$t2, $a0, -18
	ld.h	$t5, $a0, -10
	ld.h	$ra, $a0, -2
	vinsgr2vr.h	$vr7, $a1, 0
	vinsgr2vr.h	$vr7, $t2, 1
	vinsgr2vr.h	$vr7, $t5, 2
	vinsgr2vr.h	$vr7, $ra, 3
	ld.h	$a1, $a0, 6
	ld.h	$t2, $a0, 14
	ld.h	$t5, $a0, 22
	ld.h	$ra, $a0, 30
	vinsgr2vr.h	$vr8, $a1, 0
	vinsgr2vr.h	$vr8, $t2, 1
	vinsgr2vr.h	$vr8, $t5, 2
	vinsgr2vr.h	$vr8, $ra, 3
	vilvl.h	$vr7, $vr3, $vr7
	vilvl.h	$vr8, $vr3, $vr8
	ld.h	$a1, $s1, -26
	ld.h	$t2, $s1, -18
	ld.h	$t5, $s1, -10
	ld.h	$ra, $s1, -2
	vinsgr2vr.h	$vr9, $a1, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t5, 2
	vinsgr2vr.h	$vr9, $ra, 3
	ld.h	$a1, $s1, 6
	ld.h	$t2, $s1, 14
	ld.h	$t5, $s1, 22
	ld.h	$ra, $s1, 30
	vinsgr2vr.h	$vr10, $a1, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t5, 2
	vinsgr2vr.h	$vr10, $ra, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vori.b	$vr11, $vr12, 0
	vmadd.w	$vr11, $vr0, $vr7
	vori.b	$vr7, $vr12, 0
	vmadd.w	$vr7, $vr0, $vr8
	vmadd.w	$vr11, $vr1, $vr9
	vmadd.w	$vr7, $vr1, $vr10
	vsra.w	$vr8, $vr11, $vr13
	vsra.w	$vr7, $vr7, $vr13
	vadd.w	$vr8, $vr8, $vr2
	vadd.w	$vr7, $vr7, $vr2
	vmaxi.w	$vr8, $vr8, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr8, $vr8, $vr5
	vmin.w	$vr7, $vr7, $vr5
	ld.h	$a1, $s3, -26
	ld.h	$t2, $s3, -18
	ld.h	$t5, $s3, -10
	ld.h	$ra, $s3, -2
	vinsgr2vr.h	$vr9, $a1, 0
	vinsgr2vr.h	$vr9, $t2, 1
	vinsgr2vr.h	$vr9, $t5, 2
	vinsgr2vr.h	$vr9, $ra, 3
	ld.h	$a1, $s3, 6
	ld.h	$t2, $s3, 14
	ld.h	$t5, $s3, 22
	ld.h	$ra, $s3, 30
	vinsgr2vr.h	$vr10, $a1, 0
	vinsgr2vr.h	$vr10, $t2, 1
	vinsgr2vr.h	$vr10, $t5, 2
	vinsgr2vr.h	$vr10, $ra, 3
	vilvl.h	$vr9, $vr3, $vr9
	vilvl.h	$vr10, $vr3, $vr10
	vsub.w	$vr8, $vr9, $vr8
	vsub.w	$vr7, $vr10, $vr7
	vmadd.w	$vr4, $vr8, $vr8
	vmadd.w	$vr6, $vr7, $vr7
	addi.d	$s4, $s4, -8
	addi.d	$a0, $a0, 64
	addi.d	$s1, $s1, 64
	addi.d	$s3, $s3, 64
	bnez	$s4, .LBB16_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB16_2 Depth=1
	vadd.w	$vr4, $vr6, $vr4
	vhaddw.d.w	$vr4, $vr4, $vr4
	vhaddw.q.d	$vr4, $vr4, $vr4
	vpickve2gr.d	$s3, $vr4, 0
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	beq	$t1, $t0, .LBB16_9
	.p2align	4, , 16
.LBB16_8:                               # %scalar.ph
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t7, 0
	ld.hu	$a1, $s0, 0
	mul.d	$a0, $a0, $a2
	mul.d	$a1, $a1, $a3
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $s7
	add.w	$a0, $a0, $a7
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $t6
	ld.hu	$t2, $t8, 0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t6, $a1
	or	$a0, $a0, $a1
	sub.d	$a0, $t2, $a0
	ld.hu	$a1, $t7, 2
	ld.hu	$t2, $s0, 2
	mulw.d.w	$a0, $a0, $a0
	add.d	$a0, $a0, $s3
	mul.d	$a1, $a1, $a2
	mul.d	$t2, $t2, $a3
	add.d	$a1, $a1, $s8
	add.d	$a1, $a1, $t2
	sra.w	$a1, $a1, $s7
	add.w	$a1, $a1, $a7
	srai.d	$t2, $a1, 63
	andn	$a1, $a1, $t2
	slt	$t2, $a1, $t6
	ld.hu	$t5, $t8, 2
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $t6, $t2
	or	$a1, $a1, $t2
	sub.d	$a1, $t5, $a1
	ld.hu	$t2, $t7, 4
	ld.hu	$t5, $s0, 4
	mul.d	$a1, $a1, $a1
	add.d	$a0, $a0, $a1
	mul.d	$a1, $t2, $a2
	mul.d	$t2, $t5, $a3
	add.d	$a1, $a1, $s8
	add.d	$a1, $a1, $t2
	sra.w	$a1, $a1, $s7
	add.w	$a1, $a1, $a7
	srai.d	$t2, $a1, 63
	andn	$a1, $a1, $t2
	slt	$t2, $a1, $t6
	ld.hu	$t5, $t8, 4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $t6, $t2
	or	$a1, $a1, $t2
	sub.d	$a1, $t5, $a1
	ld.hu	$t2, $t7, 6
	ld.hu	$t5, $s0, 6
	mul.d	$a1, $a1, $a1
	add.d	$a0, $a0, $a1
	mul.d	$a1, $t2, $a2
	mul.d	$t2, $t5, $a3
	add.d	$a1, $a1, $s8
	add.d	$a1, $a1, $t2
	sra.w	$a1, $a1, $s7
	add.w	$a1, $a1, $a7
	srai.d	$t2, $a1, 63
	andn	$a1, $a1, $t2
	slt	$t2, $a1, $t6
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $t6, $t2
	or	$a1, $a1, $t2
	ld.hu	$t2, $t8, 6
	addi.d	$t7, $t7, 8
	addi.d	$s0, $s0, 8
	addi.d	$t8, $t8, 8
	sub.d	$a1, $t2, $a1
	mul.d	$a1, $a1, $a1
	addi.w	$s1, $s1, 4
	add.d	$s3, $a0, $a1
	blt	$s1, $s6, .LBB16_8
.LBB16_9:                               # %._crit_edge
                                        #   in Loop: Header=BB16_2 Depth=1
	st.d	$t7, $fp, %pc_lo12(ref1_line)
	st.d	$s0, $s2, %pc_lo12(ref2_line)
	st.d	$t8, $s4, %pc_lo12(src_line)
	move	$s4, $t8
	move	$a0, $t7
	move	$ra, $s0
.LBB16_10:                              #   in Loop: Header=BB16_2 Depth=1
	addi.w	$a1, $s3, 0
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	bge	$a1, $t2, .LBB16_30
# %bb.11:                               #   in Loop: Header=BB16_2 Depth=1
	alsl.d	$ra, $a4, $ra, 1
	st.d	$ra, $s2, %pc_lo12(ref2_line)
	alsl.d	$a0, $a4, $a0, 1
	addi.w	$a5, $a5, 1
	st.d	$a0, $fp, %pc_lo12(ref1_line)
	bne	$a5, $s5, .LBB16_2
	b	.LBB16_13
.LBB16_12:
	move	$s3, $zero
.LBB16_13:                              # %._crit_edge132
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB16_30
# %bb.14:
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(shift_cr_y)
	ld.wu	$a1, $a1, %pc_lo12(shift_cr_y)
	pcalau12i	$a2, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a2, $a2, %pc_lo12(img_cr_padded_size_x)
	vrepli.b	$vr11, 0
	sra.w	$s6, $s6, $a0
	sra.w	$s5, $s5, $a1
	sub.w	$s1, $a2, $s6
	bstrpick.d	$s4, $s6, 31, 0
	bstrpick.d	$a0, $s6, 30, 3
	slli.d	$a1, $a0, 3
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	pcalau12i	$a0, %pc_hi20(get_crline)
	addi.d	$a0, $a0, %pc_lo12(get_crline)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight1_cr)
	addi.d	$a0, $a0, %pc_lo12(weight1_cr)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight2_cr)
	addi.d	$a0, $a0, %pc_lo12(weight2_cr)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(offsetBi_cr)
	addi.d	$a0, $a0, %pc_lo12(offsetBi_cr)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3236
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 232                   # 8-byte Folded Reload
	vst	$vr12, $sp, 96                  # 16-byte Folded Spill
	vst	$vr13, $sp, 80                  # 16-byte Folded Spill
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
.LBB16_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_17 Depth 2
                                        #       Child Loop BB16_21 Depth 3
                                        #       Child Loop BB16_24 Depth 3
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	move	$s1, $s2
	move	$s2, $fp
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a3, $fp, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 3
	ld.d	$a0, $a0, 8
	ori	$a1, $zero, 256
	sll.w	$a1, $a1, $s0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 1
	st.d	$a1, $t8, %pc_lo12(src_line)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$s4, $t8
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	move	$fp, $s2
	move	$s2, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a1, $s0, $a1, 3
	ld.d	$a1, $a1, 8
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, %pc_lo12(ref1_line)
	move	$a6, $s5
	blez	$s5, .LBB16_28
# %bb.16:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB16_15 Depth=1
	move	$a1, $zero
	ld.d	$t6, $s4, %pc_lo12(src_line)
	ld.d	$t5, $s2, %pc_lo12(ref2_line)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a3, 1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a4, $s0, $a4, 1
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a5, $s0, $a5, 1
	move	$t8, $s4
	vld	$vr12, $sp, 96                  # 16-byte Folded Reload
	vld	$vr13, $sp, 80                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	move	$s5, $a6
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_17:                              # %.preheader
                                        #   Parent Loop BB16_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_21 Depth 3
                                        #       Child Loop BB16_24 Depth 3
	blez	$s6, .LBB16_26
# %bb.18:                               # %.lr.ph136
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.h	$a6, $a3, 0
	ld.h	$a7, $a4, 0
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ldx.w	$t0, $a2, $t0
	ld.h	$t1, $a5, 0
	ori	$t2, $zero, 8
	bgeu	$s6, $t2, .LBB16_20
# %bb.19:                               #   in Loop: Header=BB16_17 Depth=2
	move	$t7, $zero
	move	$t2, $a0
	move	$t4, $t5
	move	$t3, $t6
	b	.LBB16_23
	.p2align	4, , 16
.LBB16_20:                              # %vector.ph242
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$t3, $sp, 208                   # 8-byte Folded Reload
	add.d	$t2, $a0, $t3
	add.d	$t4, $t5, $t3
	add.d	$t3, $t6, $t3
	vori.b	$vr0, $vr11, 0
	vinsgr2vr.w	$vr0, $s3, 0
	vreplgr2vr.w	$vr1, $a6
	vreplgr2vr.w	$vr2, $a7
	vreplgr2vr.w	$vr3, $t0
	vreplgr2vr.w	$vr4, $t1
	addi.d	$a0, $a0, 16
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 16
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	vori.b	$vr5, $vr11, 0
	.p2align	4, , 16
.LBB16_21:                              # %vector.body258
                                        #   Parent Loop BB16_15 Depth=1
                                        #     Parent Loop BB16_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$t8, $a0, -16
	ld.h	$s0, $a0, -12
	ld.h	$s3, $a0, -8
	ld.h	$ra, $a0, -4
	vinsgr2vr.h	$vr6, $t8, 0
	vinsgr2vr.h	$vr6, $s0, 1
	vinsgr2vr.h	$vr6, $s3, 2
	vinsgr2vr.h	$vr6, $ra, 3
	ld.h	$t8, $a0, 0
	ld.h	$s0, $a0, 4
	ld.h	$s3, $a0, 8
	ld.h	$ra, $a0, 12
	vinsgr2vr.h	$vr7, $t8, 0
	vinsgr2vr.h	$vr7, $s0, 1
	vinsgr2vr.h	$vr7, $s3, 2
	vinsgr2vr.h	$vr7, $ra, 3
	vilvl.h	$vr6, $vr11, $vr6
	vilvl.h	$vr7, $vr11, $vr7
	ld.h	$t8, $t5, -16
	ld.h	$s0, $t5, -12
	ld.h	$s3, $t5, -8
	ld.h	$ra, $t5, -4
	vinsgr2vr.h	$vr8, $t8, 0
	vinsgr2vr.h	$vr8, $s0, 1
	vinsgr2vr.h	$vr8, $s3, 2
	vinsgr2vr.h	$vr8, $ra, 3
	ld.h	$t8, $t5, 0
	ld.h	$s0, $t5, 4
	ld.h	$s3, $t5, 8
	ld.h	$ra, $t5, 12
	vinsgr2vr.h	$vr9, $t8, 0
	vinsgr2vr.h	$vr9, $s0, 1
	vinsgr2vr.h	$vr9, $s3, 2
	vinsgr2vr.h	$vr9, $ra, 3
	vilvl.h	$vr8, $vr11, $vr8
	vilvl.h	$vr9, $vr11, $vr9
	vori.b	$vr10, $vr12, 0
	vmadd.w	$vr10, $vr1, $vr6
	vori.b	$vr6, $vr12, 0
	vmadd.w	$vr6, $vr1, $vr7
	vmadd.w	$vr10, $vr2, $vr8
	vmadd.w	$vr6, $vr2, $vr9
	vsra.w	$vr7, $vr10, $vr13
	vsra.w	$vr6, $vr6, $vr13
	vadd.w	$vr7, $vr7, $vr4
	vadd.w	$vr6, $vr6, $vr4
	vmaxi.w	$vr7, $vr7, 0
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr7, $vr7, $vr3
	vmin.w	$vr6, $vr6, $vr3
	ld.h	$t8, $t6, -16
	ld.h	$s0, $t6, -12
	ld.h	$s3, $t6, -8
	ld.h	$ra, $t6, -4
	vinsgr2vr.h	$vr8, $t8, 0
	vinsgr2vr.h	$vr8, $s0, 1
	vinsgr2vr.h	$vr8, $s3, 2
	vinsgr2vr.h	$vr8, $ra, 3
	ld.h	$t8, $t6, 0
	ld.h	$s0, $t6, 4
	ld.h	$s3, $t6, 8
	ld.h	$ra, $t6, 12
	vinsgr2vr.h	$vr9, $t8, 0
	vinsgr2vr.h	$vr9, $s0, 1
	vinsgr2vr.h	$vr9, $s3, 2
	vinsgr2vr.h	$vr9, $ra, 3
	vilvl.h	$vr8, $vr11, $vr8
	vilvl.h	$vr9, $vr11, $vr9
	vsub.w	$vr7, $vr8, $vr7
	vsub.w	$vr6, $vr9, $vr6
	vmadd.w	$vr0, $vr7, $vr7
	vmadd.w	$vr5, $vr6, $vr6
	ld.h	$t8, $a0, -14
	ld.h	$s0, $a0, -10
	ld.h	$s3, $a0, -6
	ld.h	$ra, $a0, -2
	vinsgr2vr.h	$vr6, $t8, 0
	vinsgr2vr.h	$vr6, $s0, 1
	vinsgr2vr.h	$vr6, $s3, 2
	vinsgr2vr.h	$vr6, $ra, 3
	ld.h	$t8, $a0, 2
	ld.h	$s0, $a0, 6
	ld.h	$s3, $a0, 10
	ld.h	$ra, $a0, 14
	vinsgr2vr.h	$vr7, $t8, 0
	vinsgr2vr.h	$vr7, $s0, 1
	vinsgr2vr.h	$vr7, $s3, 2
	vinsgr2vr.h	$vr7, $ra, 3
	vilvl.h	$vr6, $vr11, $vr6
	vilvl.h	$vr7, $vr11, $vr7
	ld.h	$t8, $t5, -14
	ld.h	$s0, $t5, -10
	ld.h	$s3, $t5, -6
	ld.h	$ra, $t5, -2
	vinsgr2vr.h	$vr8, $t8, 0
	vinsgr2vr.h	$vr8, $s0, 1
	vinsgr2vr.h	$vr8, $s3, 2
	vinsgr2vr.h	$vr8, $ra, 3
	ld.h	$t8, $t5, 2
	ld.h	$s0, $t5, 6
	ld.h	$s3, $t5, 10
	ld.h	$ra, $t5, 14
	vinsgr2vr.h	$vr9, $t8, 0
	vinsgr2vr.h	$vr9, $s0, 1
	vinsgr2vr.h	$vr9, $s3, 2
	vinsgr2vr.h	$vr9, $ra, 3
	vilvl.h	$vr8, $vr11, $vr8
	vilvl.h	$vr9, $vr11, $vr9
	vori.b	$vr10, $vr12, 0
	vmadd.w	$vr10, $vr1, $vr6
	vori.b	$vr6, $vr12, 0
	vmadd.w	$vr6, $vr1, $vr7
	vmadd.w	$vr10, $vr2, $vr8
	vmadd.w	$vr6, $vr2, $vr9
	vsra.w	$vr7, $vr10, $vr13
	vsra.w	$vr6, $vr6, $vr13
	vadd.w	$vr7, $vr7, $vr4
	vadd.w	$vr6, $vr6, $vr4
	vmaxi.w	$vr7, $vr7, 0
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr7, $vr7, $vr3
	vmin.w	$vr6, $vr6, $vr3
	ld.h	$t8, $t6, -14
	ld.h	$s0, $t6, -10
	ld.h	$s3, $t6, -6
	ld.h	$ra, $t6, -2
	vinsgr2vr.h	$vr8, $t8, 0
	vinsgr2vr.h	$vr8, $s0, 1
	vinsgr2vr.h	$vr8, $s3, 2
	vinsgr2vr.h	$vr8, $ra, 3
	ld.h	$t8, $t6, 2
	ld.h	$s0, $t6, 6
	ld.h	$s3, $t6, 10
	ld.h	$ra, $t6, 14
	vinsgr2vr.h	$vr9, $t8, 0
	vinsgr2vr.h	$vr9, $s0, 1
	vinsgr2vr.h	$vr9, $s3, 2
	vinsgr2vr.h	$vr9, $ra, 3
	vilvl.h	$vr8, $vr11, $vr8
	vilvl.h	$vr9, $vr11, $vr9
	vsub.w	$vr7, $vr8, $vr7
	vsub.w	$vr6, $vr9, $vr6
	vmadd.w	$vr0, $vr7, $vr7
	vmadd.w	$vr5, $vr6, $vr6
	addi.d	$t7, $t7, -8
	addi.d	$a0, $a0, 32
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB16_21
# %bb.22:                               # %middle.block290
                                        #   in Loop: Header=BB16_17 Depth=2
	vadd.w	$vr0, $vr5, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$s3, $vr0, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$t7, $a0
	ld.d	$t8, $sp, 232                   # 8-byte Folded Reload
	beq	$a0, $s4, .LBB16_25
.LBB16_23:                              # %scalar.ph240.preheader
                                        #   in Loop: Header=BB16_17 Depth=2
	sub.d	$a0, $s6, $t7
	.p2align	4, , 16
.LBB16_24:                              # %scalar.ph240
                                        #   Parent Loop BB16_15 Depth=1
                                        #     Parent Loop BB16_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $t4, 0
	mul.d	$t5, $t5, $a6
	mul.d	$t6, $t6, $a7
	add.d	$t5, $t5, $s8
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $s7
	add.w	$t5, $t5, $t1
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $t0
	ld.hu	$t7, $t3, 0
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t0, $t6
	or	$t5, $t5, $t6
	sub.d	$t5, $t7, $t5
	ld.hu	$t6, $t2, 2
	ld.hu	$t7, $t4, 2
	mul.d	$t5, $t5, $t5
	add.d	$t5, $t5, $s3
	mul.d	$t6, $t6, $a6
	mul.d	$t7, $t7, $a7
	add.d	$t6, $t6, $s8
	add.d	$t6, $t6, $t7
	sra.w	$t6, $t6, $s7
	add.w	$t6, $t6, $t1
	srai.d	$t7, $t6, 63
	andn	$t6, $t6, $t7
	slt	$t7, $t6, $t0
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $t0, $t7
	or	$t6, $t6, $t7
	ld.hu	$t7, $t3, 2
	addi.d	$t2, $t2, 4
	addi.d	$t4, $t4, 4
	addi.d	$t3, $t3, 4
	sub.d	$t6, $t7, $t6
	mul.d	$t6, $t6, $t6
	addi.w	$a0, $a0, -1
	add.d	$s3, $t5, $t6
	bnez	$a0, .LBB16_24
.LBB16_25:                              # %._crit_edge137
                                        #   in Loop: Header=BB16_17 Depth=2
	st.d	$t2, $fp, %pc_lo12(ref1_line)
	st.d	$t4, $s2, %pc_lo12(ref2_line)
	st.d	$t3, $t8, %pc_lo12(src_line)
	move	$t6, $t3
	move	$a0, $t2
	move	$t5, $t4
.LBB16_26:                              #   in Loop: Header=BB16_17 Depth=2
	addi.w	$a6, $s3, 0
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	bge	$a6, $a7, .LBB16_30
# %bb.27:                               #   in Loop: Header=BB16_17 Depth=2
	alsl.d	$t5, $s1, $t5, 1
	st.d	$t5, $s2, %pc_lo12(ref2_line)
	alsl.d	$a0, $s1, $a0, 1
	addi.w	$a1, $a1, 1
	st.d	$a0, $fp, %pc_lo12(ref1_line)
	bne	$a1, $s5, .LBB16_17
	b	.LBB16_29
	.p2align	4, , 16
.LBB16_28:                              #   in Loop: Header=BB16_15 Depth=1
	move	$t8, $s4
	move	$s5, $a6
.LBB16_29:                              # %._crit_edge156
                                        #   in Loop: Header=BB16_15 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s0, $zero, 1
	move	$a1, $zero
	bnez	$a0, .LBB16_15
.LBB16_30:                              # %.loopexit
	addi.w	$a0, $s3, 0
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end16:
	.size	computeBiPredSSE2, .Lfunc_end16-computeBiPredSSE2
                                        # -- End function
	.type	m2,@object                      # @m2
	.local	m2
	.comm	m2,256,16
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	src_line,@object                # @src_line
	.local	src_line
	.comm	src_line,8,8
	.type	get_line,@object                # @get_line
	.comm	get_line,16,8
	.type	ref_access_method,@object       # @ref_access_method
	.comm	ref_access_method,4,4
	.type	ref_pic_sub,@object             # @ref_pic_sub
	.comm	ref_pic_sub,24,8
	.type	ref_line,@object                # @ref_line
	.local	ref_line
	.comm	ref_line,8,8
	.type	ChromaMEEnable,@object          # @ChromaMEEnable
	.comm	ChromaMEEnable,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	get_crline,@object              # @get_crline
	.comm	get_crline,16,8
	.type	weight_luma,@object             # @weight_luma
	.comm	weight_luma,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	offset_luma,@object             # @offset_luma
	.comm	offset_luma,4,4
	.type	weight_cr,@object               # @weight_cr
	.comm	weight_cr,8,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	offset_cr,@object               # @offset_cr
	.comm	offset_cr,8,4
	.type	bipred2_access_method,@object   # @bipred2_access_method
	.comm	bipred2_access_method,4,4
	.type	ref_pic2_sub,@object            # @ref_pic2_sub
	.comm	ref_pic2_sub,24,8
	.type	ref2_line,@object               # @ref2_line
	.local	ref2_line
	.comm	ref2_line,8,8
	.type	bipred1_access_method,@object   # @bipred1_access_method
	.comm	bipred1_access_method,4,4
	.type	ref_pic1_sub,@object            # @ref_pic1_sub
	.comm	ref_pic1_sub,24,8
	.type	ref1_line,@object               # @ref1_line
	.local	ref1_line
	.comm	ref1_line,8,8
	.type	weight1,@object                 # @weight1
	.comm	weight1,2,2
	.type	weight2,@object                 # @weight2
	.comm	weight2,2,2
	.type	offsetBi,@object                # @offsetBi
	.comm	offsetBi,2,2
	.type	weight1_cr,@object              # @weight1_cr
	.comm	weight1_cr,4,2
	.type	weight2_cr,@object              # @weight2_cr
	.comm	weight2_cr,4,2
	.type	offsetBi_cr,@object             # @offsetBi_cr
	.comm	offsetBi_cr,4,2
	.type	test8x8transform,@object        # @test8x8transform
	.comm	test8x8transform,4,4
	.type	diff,@object                    # @diff
	.local	diff
	.comm	diff,1024,16
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	get_line1,@object               # @get_line1
	.comm	get_line1,16,8
	.type	get_line2,@object               # @get_line2
	.comm	get_line2,16,8
	.type	get_crline1,@object             # @get_crline1
	.comm	get_crline1,16,8
	.type	get_crline2,@object             # @get_crline2
	.comm	get_crline2,16,8
	.type	img_width,@object               # @img_width
	.comm	img_width,2,2
	.type	img_height,@object              # @img_height
	.comm	img_height,2,2
	.type	computeUniPred,@object          # @computeUniPred
	.comm	computeUniPred,48,8
	.type	computeBiPred,@object           # @computeBiPred
	.comm	computeBiPred,8,8
	.type	computeBiPred1,@object          # @computeBiPred1
	.comm	computeBiPred1,24,8
	.type	computeBiPred2,@object          # @computeBiPred2
	.comm	computeBiPred2,24,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym diff
