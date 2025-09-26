	.file	"jfdctint.c"
	.text
	.globl	jpeg_fdct_islow                 # -- Begin function jpeg_fdct_islow
	.p2align	5
	.type	jpeg_fdct_islow,@function
jpeg_fdct_islow:                        # @jpeg_fdct_islow
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 8                    # 8-byte Folded Spill
	addi.w	$t5, $zero, -8
	lu12i.w	$a1, 1
	ori	$t2, $a1, 337
	lu12i.w	$a7, -4
	ori	$t1, $a7, 1247
	ori	$t3, $a1, 2174
	move	$t6, $t1
	lu32i.d	$t6, 2047
	lu12i.w	$a1, 2
	ori	$a3, $a1, 1441
	ori	$t7, $zero, 2446
	lu12i.w	$t4, 4
	ori	$a1, $t4, 435
	lu12i.w	$a2, 6
	ori	$a2, $a2, 596
	lu12i.w	$a4, 3
	ori	$a4, $a4, 11
	lu12i.w	$a5, -2
	ori	$a5, $a5, 819
	lu12i.w	$a6, -6
	ori	$a6, $a6, 3581
	ori	$a7, $a7, 315
	lu12i.w	$t0, -1
	ori	$t0, $t0, 900
	move	$t8, $a0
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$fp, $t8, 0
	ld.w	$s0, $t8, 28
	ld.w	$s1, $t8, 4
	ld.w	$s2, $t8, 24
	add.w	$s3, $s0, $fp
	sub.w	$fp, $fp, $s0
	add.w	$s0, $s2, $s1
	ld.w	$s4, $t8, 8
	ld.w	$s5, $t8, 20
	ld.w	$s6, $t8, 12
	ld.w	$s7, $t8, 16
	sub.w	$s1, $s1, $s2
	add.w	$s2, $s5, $s4
	sub.w	$s4, $s4, $s5
	add.w	$s5, $s7, $s6
	sub.w	$s6, $s6, $s7
	add.d	$s7, $s5, $s3
	sub.d	$s3, $s3, $s5
	add.d	$s5, $s2, $s0
	sub.d	$s0, $s0, $s2
	add.d	$s2, $s7, $s5
	slli.d	$s2, $s2, 2
	st.w	$s2, $t8, 0
	sub.d	$s2, $s7, $s5
	slli.d	$s2, $s2, 2
	st.w	$s2, $t8, 16
	add.d	$s2, $s3, $s0
	mul.d	$s2, $s2, $t2
	mul.d	$s3, $s3, $t3
	addi.d	$s2, $s2, 1024
	add.d	$s3, $s2, $s3
	srli.d	$s3, $s3, 11
	st.w	$s3, $t8, 8
	mul.d	$s0, $s0, $t6
	add.d	$s0, $s2, $s0
	srli.d	$s0, $s0, 11
	st.w	$s0, $t8, 24
	add.d	$s0, $s6, $fp
	add.d	$s2, $s4, $s1
	add.d	$s3, $s6, $s1
	add.d	$s5, $s4, $fp
	add.d	$s7, $s3, $s5
	mul.d	$s7, $s7, $a3
	mul.d	$s6, $s6, $t7
	mul.d	$s4, $s4, $a1
	mul.d	$s1, $s1, $a2
	mul.d	$fp, $fp, $a4
	mul.d	$s0, $s0, $a5
	mul.d	$s2, $s2, $a6
	mul.d	$s3, $s3, $a7
	mul.d	$s5, $s5, $t0
	add.d	$s3, $s7, $s3
	add.d	$s5, $s7, $s5
	addi.d	$s0, $s0, 1024
	add.d	$s6, $s0, $s6
	add.d	$s6, $s6, $s3
	srli.d	$s6, $s6, 11
	st.w	$s6, $t8, 28
	addi.d	$s2, $s2, 1024
	add.d	$s4, $s2, $s4
	add.d	$s4, $s4, $s5
	srli.d	$s4, $s4, 11
	st.w	$s4, $t8, 20
	add.d	$s1, $s2, $s1
	add.d	$s1, $s1, $s3
	srli.d	$s1, $s1, 11
	st.w	$s1, $t8, 12
	add.d	$fp, $s0, $fp
	add.d	$fp, $fp, $s5
	srli.d	$fp, $fp, 11
	st.w	$fp, $t8, 4
	bstrpick.d	$t5, $t5, 31, 0
	addi.d	$t5, $t5, 1
	slli.d	$fp, $t5, 31
	addi.d	$t8, $t8, 32
	bgez	$fp, .LBB0_1
# %bb.2:                                # %vector.body
	vld	$vr2, $a0, 0
	vld	$vr3, $a0, 224
	vadd.w	$vr1, $vr3, $vr2
	vshuf4i.w	$vr0, $vr1, 16
	vslli.d	$vr0, $vr0, 32
	vsrai.d	$vr0, $vr0, 32
	vshuf4i.w	$vr1, $vr1, 50
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vsub.w	$vr2, $vr2, $vr3
	vshuf4i.w	$vr3, $vr2, 50
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr13, $vr3, 32
	vld	$vr3, $a0, 32
	vld	$vr4, $a0, 192
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr14, $vr2, 32
	vadd.w	$vr2, $vr4, $vr3
	vshuf4i.w	$vr5, $vr2, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr2, $vr2, 50
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vsub.w	$vr3, $vr3, $vr4
	vshuf4i.w	$vr4, $vr3, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr15, $vr4, 32
	vld	$vr4, $a0, 64
	vld	$vr6, $a0, 160
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr16, $vr3, 32
	vadd.w	$vr3, $vr6, $vr4
	vshuf4i.w	$vr7, $vr3, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vshuf4i.w	$vr3, $vr3, 50
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vsub.w	$vr4, $vr4, $vr6
	vshuf4i.w	$vr6, $vr4, 50
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr17, $vr6, 32
	vld	$vr6, $a0, 96
	vld	$vr8, $a0, 128
	vshuf4i.w	$vr4, $vr4, 16
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr18, $vr4, 32
	vadd.w	$vr4, $vr8, $vr6
	vshuf4i.w	$vr9, $vr4, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr4, $vr4, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vsub.w	$vr6, $vr6, $vr8
	vshuf4i.w	$vr8, $vr6, 50
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr19, $vr8, 32
	vshuf4i.w	$vr6, $vr6, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr20, $vr6, 32
	vadd.d	$vr6, $vr4, $vr1
	vadd.d	$vr8, $vr9, $vr0
	vsub.d	$vr9, $vr0, $vr9
	vsub.d	$vr1, $vr1, $vr4
	vadd.d	$vr0, $vr3, $vr2
	vadd.d	$vr4, $vr7, $vr5
	vsub.d	$vr5, $vr5, $vr7
	vsub.d	$vr2, $vr2, $vr3
	vadd.d	$vr3, $vr4, $vr8
	vadd.d	$vr7, $vr0, $vr6
	vaddi.du	$vr7, $vr7, 2
	vaddi.du	$vr3, $vr3, 2
	vsrli.d	$vr3, $vr3, 2
	vsrli.d	$vr7, $vr7, 2
	vpickev.w	$vr3, $vr7, $vr3
	vst	$vr3, $a0, 0
	vsub.d	$vr3, $vr8, $vr4
	vsub.d	$vr0, $vr6, $vr0
	vaddi.du	$vr0, $vr0, 2
	vaddi.du	$vr3, $vr3, 2
	vsrli.d	$vr3, $vr3, 2
	vsrli.d	$vr0, $vr0, 2
	vpickev.w	$vr0, $vr0, $vr3
	vst	$vr0, $a0, 128
	vadd.d	$vr3, $vr1, $vr2
	vadd.d	$vr4, $vr9, $vr5
	vreplgr2vr.d	$vr7, $t2
	vreplgr2vr.d	$vr0, $t4
	vreplgr2vr.d	$vr6, $t3
	vori.b	$vr8, $vr0, 0
	vori.b	$vr10, $vr0, 0
	vmadd.d	$vr10, $vr3, $vr7
	vmadd.d	$vr8, $vr4, $vr7
	vori.b	$vr3, $vr10, 0
	vmadd.d	$vr3, $vr1, $vr6
	vori.b	$vr1, $vr8, 0
	vmadd.d	$vr1, $vr9, $vr6
	vsrli.d	$vr1, $vr1, 15
	vsrli.d	$vr3, $vr3, 15
	vpickev.w	$vr1, $vr3, $vr1
	vst	$vr1, $a0, 64
	lu32i.d	$t1, 32767
	vreplgr2vr.d	$vr9, $t1
	vmadd.d	$vr10, $vr2, $vr9
	vmadd.d	$vr8, $vr5, $vr9
	vsrli.d	$vr1, $vr8, 15
	vsrli.d	$vr2, $vr10, 15
	vpickev.w	$vr1, $vr2, $vr1
	vst	$vr1, $a0, 192
	vadd.d	$vr21, $vr20, $vr14
	vadd.d	$vr22, $vr19, $vr13
	vadd.d	$vr23, $vr18, $vr16
	vadd.d	$vr24, $vr17, $vr15
	vadd.d	$vr25, $vr19, $vr15
	vadd.d	$vr26, $vr20, $vr16
	vadd.d	$vr27, $vr17, $vr13
	vadd.d	$vr28, $vr18, $vr14
	vadd.d	$vr1, $vr26, $vr28
	vadd.d	$vr2, $vr25, $vr27
	vreplgr2vr.d	$vr10, $a3
	vmul.d	$vr29, $vr2, $vr10
	vmul.d	$vr30, $vr1, $vr10
	ori	$a3, $zero, 2446
	vreplgr2vr.d	$vr5, $a3
	vreplgr2vr.d	$vr3, $a1
	vreplgr2vr.d	$vr2, $a2
	vreplgr2vr.d	$vr1, $a4
	vreplgr2vr.d	$vr8, $a5
	vreplgr2vr.d	$vr4, $a6
	vreplgr2vr.d	$vr12, $a7
	vreplgr2vr.d	$vr11, $t0
	vori.b	$vr31, $vr30, 0
	vmadd.d	$vr31, $vr26, $vr12
	vori.b	$vr26, $vr29, 0
	vmadd.d	$vr26, $vr25, $vr12
	vmadd.d	$vr30, $vr28, $vr11
	vmadd.d	$vr29, $vr27, $vr11
	vori.b	$vr25, $vr0, 0
	vori.b	$vr27, $vr0, 0
	vmadd.d	$vr27, $vr21, $vr8
	vmadd.d	$vr25, $vr22, $vr8
	vori.b	$vr21, $vr27, 0
	vmadd.d	$vr21, $vr20, $vr5
	vori.b	$vr20, $vr25, 0
	vmadd.d	$vr20, $vr19, $vr5
	vadd.d	$vr19, $vr20, $vr26
	vadd.d	$vr20, $vr21, $vr31
	vsrli.d	$vr20, $vr20, 15
	vsrli.d	$vr19, $vr19, 15
	vpickev.w	$vr19, $vr19, $vr20
	vst	$vr19, $a0, 224
	vori.b	$vr19, $vr0, 0
	vori.b	$vr20, $vr0, 0
	vmadd.d	$vr20, $vr23, $vr4
	vmadd.d	$vr19, $vr24, $vr4
	vori.b	$vr21, $vr20, 0
	vmadd.d	$vr21, $vr18, $vr3
	vori.b	$vr18, $vr19, 0
	vmadd.d	$vr18, $vr17, $vr3
	vadd.d	$vr17, $vr18, $vr29
	vadd.d	$vr18, $vr21, $vr30
	vsrli.d	$vr18, $vr18, 15
	vsrli.d	$vr17, $vr17, 15
	vpickev.w	$vr17, $vr17, $vr18
	vst	$vr17, $a0, 160
	vmadd.d	$vr20, $vr16, $vr2
	vmadd.d	$vr19, $vr15, $vr2
	vadd.d	$vr15, $vr19, $vr26
	vadd.d	$vr16, $vr20, $vr31
	vsrli.d	$vr16, $vr16, 15
	vsrli.d	$vr15, $vr15, 15
	vpickev.w	$vr15, $vr15, $vr16
	vst	$vr15, $a0, 96
	vmadd.d	$vr27, $vr14, $vr1
	vmadd.d	$vr25, $vr13, $vr1
	vadd.d	$vr13, $vr25, $vr29
	vadd.d	$vr14, $vr27, $vr30
	vsrli.d	$vr14, $vr14, 15
	vld	$vr15, $a0, 16
	vld	$vr16, $a0, 240
	vsrli.d	$vr13, $vr13, 15
	vpickev.w	$vr13, $vr13, $vr14
	vst	$vr13, $a0, 32
	vadd.w	$vr13, $vr16, $vr15
	vshuf4i.w	$vr14, $vr13, 16
	vslli.d	$vr14, $vr14, 32
	vsrai.d	$vr21, $vr14, 32
	vshuf4i.w	$vr13, $vr13, 50
	vslli.d	$vr13, $vr13, 32
	vsrai.d	$vr22, $vr13, 32
	vsub.w	$vr14, $vr15, $vr16
	vshuf4i.w	$vr13, $vr14, 50
	vslli.d	$vr13, $vr13, 32
	vsrai.d	$vr13, $vr13, 32
	vld	$vr15, $a0, 48
	vld	$vr16, $a0, 208
	vshuf4i.w	$vr14, $vr14, 16
	vslli.d	$vr14, $vr14, 32
	vsrai.d	$vr14, $vr14, 32
	vadd.w	$vr17, $vr16, $vr15
	vshuf4i.w	$vr18, $vr17, 16
	vslli.d	$vr18, $vr18, 32
	vsrai.d	$vr23, $vr18, 32
	vshuf4i.w	$vr17, $vr17, 50
	vslli.d	$vr17, $vr17, 32
	vsrai.d	$vr24, $vr17, 32
	vsub.w	$vr16, $vr15, $vr16
	vshuf4i.w	$vr15, $vr16, 50
	vslli.d	$vr15, $vr15, 32
	vsrai.d	$vr15, $vr15, 32
	vld	$vr17, $a0, 80
	vld	$vr18, $a0, 176
	vshuf4i.w	$vr16, $vr16, 16
	vslli.d	$vr16, $vr16, 32
	vsrai.d	$vr16, $vr16, 32
	vadd.w	$vr19, $vr18, $vr17
	vshuf4i.w	$vr20, $vr19, 16
	vslli.d	$vr20, $vr20, 32
	vsrai.d	$vr25, $vr20, 32
	vshuf4i.w	$vr19, $vr19, 50
	vslli.d	$vr19, $vr19, 32
	vsrai.d	$vr26, $vr19, 32
	vsub.w	$vr18, $vr17, $vr18
	vshuf4i.w	$vr17, $vr18, 50
	vslli.d	$vr17, $vr17, 32
	vsrai.d	$vr17, $vr17, 32
	vld	$vr19, $a0, 112
	vld	$vr20, $a0, 144
	vshuf4i.w	$vr18, $vr18, 16
	vslli.d	$vr18, $vr18, 32
	vsrai.d	$vr18, $vr18, 32
	vadd.w	$vr27, $vr20, $vr19
	vshuf4i.w	$vr28, $vr27, 16
	vslli.d	$vr28, $vr28, 32
	vsrai.d	$vr28, $vr28, 32
	vshuf4i.w	$vr27, $vr27, 50
	vslli.d	$vr27, $vr27, 32
	vsrai.d	$vr27, $vr27, 32
	vsub.w	$vr20, $vr19, $vr20
	vshuf4i.w	$vr19, $vr20, 50
	vslli.d	$vr19, $vr19, 32
	vsrai.d	$vr19, $vr19, 32
	vshuf4i.w	$vr20, $vr20, 16
	vslli.d	$vr20, $vr20, 32
	vsrai.d	$vr20, $vr20, 32
	vadd.d	$vr29, $vr27, $vr22
	vadd.d	$vr30, $vr28, $vr21
	vsub.d	$vr21, $vr21, $vr28
	vsub.d	$vr22, $vr22, $vr27
	vadd.d	$vr27, $vr26, $vr24
	vadd.d	$vr28, $vr25, $vr23
	vsub.d	$vr23, $vr23, $vr25
	vsub.d	$vr24, $vr24, $vr26
	vadd.d	$vr25, $vr28, $vr30
	vadd.d	$vr26, $vr27, $vr29
	vaddi.du	$vr26, $vr26, 2
	vaddi.du	$vr25, $vr25, 2
	vsrli.d	$vr25, $vr25, 2
	vsrli.d	$vr26, $vr26, 2
	vpickev.w	$vr25, $vr26, $vr25
	vst	$vr25, $a0, 16
	vsub.d	$vr25, $vr30, $vr28
	vsub.d	$vr26, $vr29, $vr27
	vaddi.du	$vr26, $vr26, 2
	vaddi.du	$vr25, $vr25, 2
	vsrli.d	$vr25, $vr25, 2
	vsrli.d	$vr26, $vr26, 2
	vpickev.w	$vr25, $vr26, $vr25
	vst	$vr25, $a0, 144
	vadd.d	$vr25, $vr22, $vr24
	vadd.d	$vr26, $vr21, $vr23
	vori.b	$vr27, $vr0, 0
	vori.b	$vr28, $vr0, 0
	vmadd.d	$vr28, $vr25, $vr7
	vmadd.d	$vr27, $vr26, $vr7
	vori.b	$vr7, $vr28, 0
	vmadd.d	$vr7, $vr22, $vr6
	vori.b	$vr22, $vr27, 0
	vmadd.d	$vr22, $vr21, $vr6
	vsrli.d	$vr6, $vr22, 15
	vsrli.d	$vr7, $vr7, 15
	vpickev.w	$vr6, $vr7, $vr6
	vst	$vr6, $a0, 80
	vmadd.d	$vr28, $vr24, $vr9
	vmadd.d	$vr27, $vr23, $vr9
	vsrli.d	$vr6, $vr27, 15
	vsrli.d	$vr7, $vr28, 15
	vpickev.w	$vr6, $vr7, $vr6
	vst	$vr6, $a0, 208
	vadd.d	$vr6, $vr20, $vr14
	vadd.d	$vr7, $vr19, $vr13
	vadd.d	$vr9, $vr18, $vr16
	vadd.d	$vr21, $vr17, $vr15
	vadd.d	$vr22, $vr19, $vr15
	vadd.d	$vr23, $vr20, $vr16
	vadd.d	$vr24, $vr17, $vr13
	vadd.d	$vr25, $vr18, $vr14
	vadd.d	$vr26, $vr23, $vr25
	vadd.d	$vr27, $vr22, $vr24
	vmul.d	$vr26, $vr26, $vr10
	vmul.d	$vr10, $vr27, $vr10
	vori.b	$vr27, $vr26, 0
	vmadd.d	$vr27, $vr23, $vr12
	vori.b	$vr23, $vr10, 0
	vmadd.d	$vr23, $vr22, $vr12
	vmadd.d	$vr26, $vr25, $vr11
	vmadd.d	$vr10, $vr24, $vr11
	vori.b	$vr11, $vr0, 0
	vori.b	$vr12, $vr0, 0
	vmadd.d	$vr12, $vr6, $vr8
	vmadd.d	$vr11, $vr7, $vr8
	vori.b	$vr6, $vr12, 0
	vmadd.d	$vr6, $vr20, $vr5
	vori.b	$vr7, $vr11, 0
	vmadd.d	$vr7, $vr19, $vr5
	vadd.d	$vr5, $vr7, $vr23
	vadd.d	$vr6, $vr6, $vr27
	vsrli.d	$vr6, $vr6, 15
	vsrli.d	$vr5, $vr5, 15
	vpickev.w	$vr5, $vr5, $vr6
	vst	$vr5, $a0, 240
	vori.b	$vr5, $vr0, 0
	vmadd.d	$vr0, $vr9, $vr4
	vmadd.d	$vr5, $vr21, $vr4
	vori.b	$vr4, $vr0, 0
	vmadd.d	$vr4, $vr18, $vr3
	vori.b	$vr6, $vr5, 0
	vmadd.d	$vr6, $vr17, $vr3
	vadd.d	$vr3, $vr6, $vr10
	vadd.d	$vr4, $vr4, $vr26
	vsrli.d	$vr4, $vr4, 15
	vsrli.d	$vr3, $vr3, 15
	vpickev.w	$vr3, $vr3, $vr4
	vst	$vr3, $a0, 176
	vmadd.d	$vr0, $vr16, $vr2
	vmadd.d	$vr5, $vr15, $vr2
	vadd.d	$vr2, $vr5, $vr23
	vadd.d	$vr0, $vr0, $vr27
	vsrli.d	$vr0, $vr0, 15
	vsrli.d	$vr2, $vr2, 15
	vpickev.w	$vr0, $vr2, $vr0
	vst	$vr0, $a0, 112
	vmadd.d	$vr12, $vr14, $vr1
	vmadd.d	$vr11, $vr13, $vr1
	vadd.d	$vr0, $vr11, $vr10
	vadd.d	$vr1, $vr12, $vr26
	vsrli.d	$vr1, $vr1, 15
	vsrli.d	$vr0, $vr0, 15
	vpickev.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 48
	fld.d	$fs7, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs6, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end0:
	.size	jpeg_fdct_islow, .Lfunc_end0-jpeg_fdct_islow
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
