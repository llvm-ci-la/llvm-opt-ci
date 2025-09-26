	.file	"rpe.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Gsm_RPE_Encoding
.LCPI0_0:
	.half	3                               # 0x3
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI0_1:
	.half	5                               # 0x5
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	6                               # 0x6
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI0_2:
	.half	7                               # 0x7
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI0_3:
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.text
	.globl	Gsm_RPE_Encoding
	.p2align	5
	.type	Gsm_RPE_Encoding,@function
Gsm_RPE_Encoding:                       # @Gsm_RPE_Encoding
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 176                  # 8-byte Folded Spill
	move	$fp, $a1
	ld.h	$a0, $a1, -10
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	move	$t3, $a3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	move	$a2, $zero
	vinsgr2vr.h	$vr14, $a0, 7
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_3)
	lu12i.w	$a0, 1
	ori	$a1, $a0, 1645
	vreplgr2vr.d	$vr4, $a1
	ori	$a1, $zero, 2054
	vreplgr2vr.d	$vr5, $a1
	vrepli.d	$vr6, -374
	vrepli.d	$vr7, -134
	vreplgr2vr.d	$vr8, $a0
	lu12i.w	$a1, -8
	vreplgr2vr.d	$vr9, $a1
	lu12i.w	$a1, 7
	ori	$a1, $a1, 4095
	vreplgr2vr.d	$vr10, $a1
	addi.d	$a3, $sp, 96
	ori	$a4, $zero, 80
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $fp, $a2
	vld	$vr11, $a5, -8
	vori.b	$vr12, $vr0, 0
	vshuf.h	$vr12, $vr0, $vr11
	vslli.d	$vr12, $vr12, 48
	vsrai.d	$vr12, $vr12, 48
	vori.b	$vr13, $vr1, 0
	vshuf.h	$vr13, $vr0, $vr11
	vslli.d	$vr13, $vr13, 48
	vsrai.d	$vr13, $vr13, 48
	vori.b	$vr15, $vr2, 0
	vshuf.h	$vr15, $vr11, $vr14
	vslli.d	$vr14, $vr15, 48
	vsrai.d	$vr14, $vr14, 48
	vori.b	$vr15, $vr3, 0
	vshuf.h	$vr15, $vr0, $vr11
	vslli.d	$vr15, $vr15, 48
	vsrai.d	$vr15, $vr15, 48
	vilvl.h	$vr17, $vr11, $vr11
	vilvh.w	$vr16, $vr17, $vr17
	vslli.d	$vr16, $vr16, 48
	vsrai.d	$vr16, $vr16, 48
	vilvl.w	$vr17, $vr17, $vr17
	vslli.d	$vr17, $vr17, 48
	vsrai.d	$vr17, $vr17, 48
	vilvh.h	$vr19, $vr11, $vr11
	vilvh.w	$vr18, $vr19, $vr19
	vslli.d	$vr18, $vr18, 48
	vsrai.d	$vr18, $vr18, 48
	vld	$vr22, $a5, -4
	vilvl.w	$vr19, $vr19, $vr19
	vslli.d	$vr19, $vr19, 48
	vsrai.d	$vr19, $vr19, 48
	vilvh.h	$vr21, $vr22, $vr22
	vilvl.w	$vr20, $vr21, $vr21
	vslli.d	$vr20, $vr20, 48
	vsrai.d	$vr20, $vr20, 48
	vilvh.w	$vr21, $vr21, $vr21
	vslli.d	$vr21, $vr21, 48
	vsrai.d	$vr21, $vr21, 48
	vilvl.h	$vr23, $vr22, $vr22
	vilvl.w	$vr22, $vr23, $vr23
	vslli.d	$vr22, $vr22, 48
	vsrai.d	$vr22, $vr22, 48
	vld	$vr26, $a5, -2
	vilvh.w	$vr23, $vr23, $vr23
	vslli.d	$vr23, $vr23, 48
	vsrai.d	$vr23, $vr23, 48
	vilvh.h	$vr25, $vr26, $vr26
	vilvl.w	$vr24, $vr25, $vr25
	vslli.d	$vr24, $vr24, 48
	vsrai.d	$vr24, $vr24, 48
	vilvh.w	$vr25, $vr25, $vr25
	vslli.d	$vr25, $vr25, 48
	vsrai.d	$vr25, $vr25, 48
	vilvl.h	$vr26, $vr26, $vr26
	vilvl.w	$vr27, $vr26, $vr26
	vslli.d	$vr27, $vr27, 48
	vsrai.d	$vr27, $vr27, 48
	vld	$vr28, $a5, 2
	vilvh.w	$vr26, $vr26, $vr26
	vslli.d	$vr26, $vr26, 48
	vsrai.d	$vr26, $vr26, 48
	vilvh.h	$vr29, $vr28, $vr28
	vilvl.h	$vr28, $vr28, $vr28
	vilvh.w	$vr30, $vr28, $vr28
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vadd.d	$vr26, $vr30, $vr26
	vilvl.w	$vr30, $vr29, $vr29
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vilvh.w	$vr29, $vr29, $vr29
	vilvl.w	$vr28, $vr28, $vr28
	vslli.d	$vr28, $vr28, 48
	vsrai.d	$vr28, $vr28, 48
	vadd.d	$vr27, $vr28, $vr27
	vld	$vr28, $a5, 4
	vslli.d	$vr29, $vr29, 48
	vsrai.d	$vr29, $vr29, 48
	vadd.d	$vr25, $vr29, $vr25
	vilvh.h	$vr29, $vr28, $vr28
	vilvl.h	$vr28, $vr28, $vr28
	vadd.d	$vr24, $vr30, $vr24
	vilvh.w	$vr30, $vr28, $vr28
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vadd.d	$vr23, $vr30, $vr23
	vilvl.w	$vr30, $vr29, $vr29
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vilvh.w	$vr29, $vr29, $vr29
	vilvl.w	$vr28, $vr28, $vr28
	vslli.d	$vr28, $vr28, 48
	vsrai.d	$vr28, $vr28, 48
	vadd.d	$vr22, $vr28, $vr22
	vld	$vr28, $a5, 8
	vslli.d	$vr29, $vr29, 48
	vsrai.d	$vr29, $vr29, 48
	vadd.d	$vr21, $vr29, $vr21
	vilvl.h	$vr29, $vr28, $vr28
	vilvh.h	$vr28, $vr28, $vr28
	vadd.d	$vr20, $vr30, $vr20
	vilvl.w	$vr30, $vr28, $vr28
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vadd.d	$vr19, $vr30, $vr19
	vilvh.w	$vr30, $vr29, $vr29
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vilvl.w	$vr29, $vr29, $vr29
	vilvh.w	$vr28, $vr28, $vr28
	vslli.d	$vr28, $vr28, 48
	vsrai.d	$vr28, $vr28, 48
	vadd.d	$vr18, $vr28, $vr18
	vld	$vr28, $a5, 10
	vslli.d	$vr29, $vr29, 48
	vsrai.d	$vr29, $vr29, 48
	vadd.d	$vr17, $vr29, $vr17
	vilvl.h	$vr29, $vr28, $vr28
	vadd.d	$vr16, $vr30, $vr16
	vilvh.w	$vr30, $vr29, $vr29
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vadd.d	$vr15, $vr30, $vr15
	vldx	$vr30, $fp, $a2
	vilvh.h	$vr28, $vr28, $vr28
	vilvl.w	$vr29, $vr29, $vr29
	vslli.d	$vr29, $vr29, 48
	vsrai.d	$vr29, $vr29, 48
	vadd.d	$vr14, $vr29, $vr14
	vilvh.w	$vr29, $vr28, $vr28
	vslli.d	$vr29, $vr29, 48
	vsrai.d	$vr29, $vr29, 48
	vadd.d	$vr13, $vr29, $vr13
	vilvh.h	$vr29, $vr30, $vr30
	vilvl.w	$vr28, $vr28, $vr28
	vslli.d	$vr28, $vr28, 48
	vsrai.d	$vr28, $vr28, 48
	vadd.d	$vr12, $vr28, $vr12
	vilvl.w	$vr28, $vr29, $vr29
	vslli.d	$vr28, $vr28, 48
	vsrai.d	$vr28, $vr28, 48
	vslli.d	$vr28, $vr28, 13
	vmadd.d	$vr28, $vr24, $vr4
	vmadd.d	$vr28, $vr20, $vr5
	vilvh.w	$vr20, $vr29, $vr29
	vslli.d	$vr20, $vr20, 48
	vsrai.d	$vr20, $vr20, 48
	vslli.d	$vr20, $vr20, 13
	vmadd.d	$vr20, $vr25, $vr4
	vilvl.h	$vr24, $vr30, $vr30
	vmadd.d	$vr20, $vr21, $vr5
	vilvl.w	$vr21, $vr24, $vr24
	vslli.d	$vr21, $vr21, 48
	vsrai.d	$vr21, $vr21, 48
	vslli.d	$vr21, $vr21, 13
	vmadd.d	$vr21, $vr27, $vr4
	vmadd.d	$vr21, $vr22, $vr5
	vilvh.w	$vr22, $vr24, $vr24
	vslli.d	$vr22, $vr22, 48
	vsrai.d	$vr22, $vr22, 48
	vslli.d	$vr22, $vr22, 13
	vmadd.d	$vr22, $vr26, $vr4
	vmadd.d	$vr22, $vr23, $vr5
	vmadd.d	$vr22, $vr16, $vr6
	vmadd.d	$vr21, $vr17, $vr6
	vmadd.d	$vr20, $vr18, $vr6
	vmadd.d	$vr28, $vr19, $vr6
	vmadd.d	$vr28, $vr12, $vr7
	vmadd.d	$vr20, $vr13, $vr7
	vmadd.d	$vr21, $vr14, $vr7
	vmadd.d	$vr22, $vr15, $vr7
	vadd.d	$vr12, $vr22, $vr8
	vadd.d	$vr13, $vr21, $vr8
	vsrai.d	$vr13, $vr13, 13
	vsrai.d	$vr12, $vr12, 13
	vmax.d	$vr12, $vr12, $vr9
	vmax.d	$vr13, $vr13, $vr9
	vmin.d	$vr13, $vr13, $vr10
	vmin.d	$vr12, $vr12, $vr10
	vpickev.w	$vr12, $vr12, $vr13
	vadd.d	$vr13, $vr20, $vr8
	vadd.d	$vr14, $vr28, $vr8
	vsrai.d	$vr14, $vr14, 13
	vsrai.d	$vr13, $vr13, 13
	vmax.d	$vr13, $vr13, $vr9
	vmax.d	$vr14, $vr14, $vr9
	vmin.d	$vr14, $vr14, $vr10
	vmin.d	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vpickev.h	$vr12, $vr13, $vr12
	vstx	$vr12, $a2, $a3
	addi.d	$a2, $a2, 16
	vori.b	$vr14, $vr11, 0
	bne	$a2, $a4, .LBB0_1
# %bb.2:                                # %Weighting_filter.exit
	ld.h	$a2, $sp, 96
	ld.h	$a3, $sp, 98
	srai.d	$a2, $a2, 2
	mul.d	$a2, $a2, $a2
	ld.h	$a4, $sp, 104
	srai.d	$a3, $a3, 2
	mul.d	$a3, $a3, $a3
	ld.h	$a5, $sp, 110
	srai.d	$a4, $a4, 2
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a4, $a3
	srai.d	$a4, $a5, 2
	ld.h	$a5, $sp, 116
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 122
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	ld.h	$a5, $sp, 128
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 134
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	ld.h	$a5, $sp, 140
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 146
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	ld.h	$a5, $sp, 152
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 158
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	ld.h	$a5, $sp, 164
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 170
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	ld.w	$a5, $sp, 100
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 1
	vinsgr2vr.w	$vr0, $a5, 0
	vsrai.h	$vr0, $vr0, 2
	ld.w	$a4, $sp, 106
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	ld.w	$a4, $sp, 112
	vsrai.w	$vr1, $vr1, 16
	vmul.w	$vr1, $vr1, $vr1
	vmadd.w	$vr1, $vr0, $vr0
	vinsgr2vr.w	$vr0, $a4, 0
	vsrai.h	$vr0, $vr0, 2
	vilvl.h	$vr0, $vr0, $vr0
	ld.w	$a4, $sp, 118
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vmadd.w	$vr1, $vr0, $vr0
	vinsgr2vr.w	$vr0, $a4, 0
	vsrai.h	$vr0, $vr0, 2
	vilvl.h	$vr0, $vr0, $vr0
	vilvl.w	$vr0, $vr0, $vr0
	ld.w	$a4, $sp, 124
	vslli.d	$vr0, $vr0, 48
	ld.w	$a5, $sp, 130
	vsrai.d	$vr2, $vr0, 48
	vinsgr2vr.w	$vr0, $a4, 0
	vsrai.h	$vr3, $vr0, 2
	vinsgr2vr.w	$vr0, $a5, 0
	vsrai.h	$vr4, $vr0, 2
	ld.h	$a4, $sp, 138
	vrepli.b	$vr0, 0
	vilvl.w	$vr0, $vr0, $vr1
	vmadd.d	$vr0, $vr2, $vr2
	vilvl.h	$vr1, $vr3, $vr3
	vilvl.w	$vr1, $vr1, $vr1
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmadd.d	$vr0, $vr1, $vr1
	vilvl.h	$vr1, $vr4, $vr4
	vilvl.w	$vr1, $vr1, $vr1
	vld	$vr2, $sp, 136
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.h	$vr2, $a4, 1
	vsrai.h	$vr1, $vr2, 2
	vilvl.h	$vr1, $vr1, $vr1
	vilvl.w	$vr1, $vr1, $vr1
	ld.w	$a4, $sp, 142
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	vilvl.h	$vr1, $vr1, $vr1
	vilvl.w	$vr1, $vr1, $vr1
	ld.w	$a4, $sp, 148
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	vilvl.h	$vr1, $vr1, $vr1
	vilvl.w	$vr1, $vr1, $vr1
	ld.w	$a4, $sp, 154
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	vilvl.h	$vr1, $vr1, $vr1
	vilvl.w	$vr1, $vr1, $vr1
	ld.w	$a4, $sp, 160
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	vilvl.h	$vr1, $vr1, $vr1
	vilvl.w	$vr1, $vr1, $vr1
	ld.w	$a4, $sp, 166
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	vilvl.h	$vr1, $vr1, $vr1
	vilvl.w	$vr1, $vr1, $vr1
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmadd.d	$vr0, $vr1, $vr1
	vpickve2gr.d	$a4, $vr0, 1
	add.d	$a2, $a4, $a2
	slli.d	$a2, $a2, 1
	slt	$a4, $a2, $a3
	ld.w	$a5, $sp, 172
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$a2, $a3, $a2
	vinsgr2vr.w	$vr1, $a5, 0
	vsrai.h	$vr1, $vr1, 2
	vilvl.h	$vr1, $vr1, $vr1
	vilvl.w	$vr1, $vr1, $vr1
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmadd.d	$vr0, $vr1, $vr1
	vslli.d	$vr0, $vr0, 1
	vpickve2gr.d	$a3, $vr0, 0
	slt	$a5, $a2, $a3
	masknez	$a6, $a2, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr1, $a3, 1
	vslt.d	$vr0, $vr1, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	andi	$a2, $a2, 1
	masknez	$a3, $a4, $a2
	ori	$a4, $zero, 2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	vpickve2gr.d	$a3, $vr0, 1
	andi	$a3, $a3, 1
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a2
	addi.d	$a4, $sp, 96
	alsl.d	$a2, $a3, $a4, 1
	slli.d	$a5, $a3, 1
	ldx.hu	$a6, $a5, $a4
	ld.hu	$t2, $a2, 6
	ld.hu	$t1, $a2, 12
	ext.w.h	$t7, $a6
	ext.w.h	$t6, $t2
	ext.w.h	$t5, $t1
	ld.hu	$t0, $a2, 18
	ld.hu	$a7, $a2, 24
	ld.hu	$a5, $a2, 30
	ld.hu	$a4, $a2, 36
	ext.w.h	$t8, $t0
	ext.w.h	$s0, $a7
	ext.w.h	$s2, $a5
	ext.w.h	$s8, $a4
	st.d	$t3, $sp, 56                    # 8-byte Folded Spill
	st.h	$a3, $t3, 0
	lu12i.w	$a3, 8
	xor	$t3, $a6, $a3
	sltui	$t3, $t3, 1
	sub.d	$t4, $zero, $a6
	masknez	$t4, $t4, $t3
	maskeqz	$t3, $a1, $t3
	or	$t3, $t3, $t4
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	slti	$t4, $t7, 0
	masknez	$a6, $a6, $t4
	maskeqz	$t3, $t3, $t4
	or	$t3, $t3, $a6
	xor	$a6, $t2, $a3
	sltui	$a6, $a6, 1
	sub.d	$t4, $zero, $t2
	masknez	$t4, $t4, $a6
	maskeqz	$a6, $a1, $a6
	or	$a6, $a6, $t4
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	slti	$t4, $t6, 0
	masknez	$t2, $t2, $t4
	maskeqz	$t4, $a6, $t4
	ld.hu	$a6, $a2, 42
	ext.w.h	$t3, $t3
	or	$t2, $t4, $t2
	ext.w.h	$t2, $t2
	slt	$t4, $t2, $t3
	masknez	$t2, $t2, $t4
	maskeqz	$t3, $t3, $t4
	or	$t2, $t3, $t2
	xor	$t3, $t1, $a3
	sltui	$t3, $t3, 1
	sub.d	$t4, $zero, $t1
	masknez	$t4, $t4, $t3
	maskeqz	$t3, $a1, $t3
	or	$t3, $t3, $t4
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	slti	$t4, $t5, 0
	masknez	$t1, $t1, $t4
	maskeqz	$t3, $t3, $t4
	ext.w.h	$s3, $a6
	or	$t1, $t3, $t1
	ext.w.h	$t1, $t1
	slt	$t3, $t1, $t2
	maskeqz	$t2, $t2, $t3
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	xor	$t2, $t0, $a3
	sltui	$t2, $t2, 1
	sub.d	$t3, $zero, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $a1, $t2
	or	$t2, $t2, $t3
	st.d	$t8, $sp, 8                     # 8-byte Folded Spill
	slti	$t3, $t8, 0
	masknez	$t4, $t0, $t3
	maskeqz	$t2, $t2, $t3
	ld.hu	$t0, $a2, 48
	or	$t2, $t2, $t4
	ext.w.h	$t2, $t2
	slt	$t3, $t2, $t1
	maskeqz	$t1, $t1, $t3
	masknez	$t2, $t2, $t3
	or	$t1, $t1, $t2
	xor	$t2, $a7, $a3
	sltui	$t2, $t2, 1
	sub.d	$t3, $zero, $a7
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $a1, $t2
	or	$t2, $t2, $t3
	slti	$t3, $s0, 0
	masknez	$a7, $a7, $t3
	maskeqz	$t2, $t2, $t3
	ext.w.h	$s1, $t0
	or	$a7, $t2, $a7
	ext.w.h	$a7, $a7
	slt	$t2, $a7, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$a7, $a7, $t2
	or	$a7, $t1, $a7
	xor	$t1, $a5, $a3
	sltui	$t1, $t1, 1
	sub.d	$t2, $zero, $a5
	masknez	$t2, $t2, $t1
	maskeqz	$t1, $a1, $t1
	or	$t1, $t1, $t2
	slti	$t2, $s2, 0
	masknez	$t3, $a5, $t2
	maskeqz	$t1, $t1, $t2
	ld.hu	$a5, $a2, 54
	or	$t1, $t1, $t3
	ext.w.h	$t1, $t1
	slt	$t2, $t1, $a7
	maskeqz	$a7, $a7, $t2
	masknez	$t1, $t1, $t2
	or	$a7, $a7, $t1
	xor	$t1, $a4, $a3
	sltui	$t1, $t1, 1
	sub.d	$t2, $zero, $a4
	masknez	$t2, $t2, $t1
	maskeqz	$t1, $a1, $t1
	or	$t1, $t1, $t2
	slti	$t2, $s8, 0
	masknez	$a4, $a4, $t2
	maskeqz	$t1, $t1, $t2
	ext.w.h	$s4, $a5
	or	$a4, $t1, $a4
	ext.w.h	$a4, $a4
	slt	$t1, $a4, $a7
	maskeqz	$a7, $a7, $t1
	masknez	$a4, $a4, $t1
	or	$a4, $a7, $a4
	xor	$a7, $a6, $a3
	sltui	$a7, $a7, 1
	sub.d	$t1, $zero, $a6
	masknez	$t1, $t1, $a7
	maskeqz	$a7, $a1, $a7
	or	$a7, $a7, $t1
	slti	$t1, $s3, 0
	masknez	$a6, $a6, $t1
	maskeqz	$a7, $a7, $t1
	ld.hu	$t1, $a2, 60
	or	$a6, $a7, $a6
	ext.w.h	$a6, $a6
	slt	$a7, $a6, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a6, $a6, $a7
	or	$a4, $a4, $a6
	xor	$a6, $t0, $a3
	sltui	$a6, $a6, 1
	sub.d	$a7, $zero, $t0
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $a1, $a6
	or	$a6, $a6, $a7
	slti	$a7, $s1, 0
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	ext.w.h	$s5, $t1
	or	$a6, $a6, $t0
	ext.w.h	$a6, $a6
	slt	$a7, $a6, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a6, $a6, $a7
	or	$a4, $a4, $a6
	xor	$a6, $a5, $a3
	sltui	$a6, $a6, 1
	sub.d	$a7, $zero, $a5
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $a1, $a6
	or	$a6, $a6, $a7
	slti	$a7, $s4, 0
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	ld.hu	$a7, $a2, 66
	or	$a5, $a6, $a5
	ext.w.h	$a5, $a5
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	xor	$a5, $t1, $a3
	sltui	$a5, $a5, 1
	sub.d	$a6, $zero, $t1
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a6
	slti	$a6, $s5, 0
	masknez	$t0, $t1, $a6
	maskeqz	$a5, $a5, $a6
	ext.w.h	$s6, $a7
	or	$a5, $a5, $t0
	ext.w.h	$a5, $a5
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	xor	$a5, $a7, $a3
	sltui	$a5, $a5, 1
	sub.d	$a6, $zero, $a7
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a6
	slti	$a6, $s6, 0
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	ld.hu	$a2, $a2, 72
	or	$a5, $a5, $a7
	ext.w.h	$a5, $a5
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	xor	$a3, $a2, $a3
	sltui	$a3, $a3, 1
	sub.d	$a5, $zero, $a2
	masknez	$a5, $a5, $a3
	maskeqz	$a1, $a1, $a3
	ext.w.h	$s7, $a2
	or	$a1, $a1, $a5
	slti	$a3, $s7, 0
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	slt	$a2, $a1, $a4
	maskeqz	$a3, $a4, $a2
	masknez	$a1, $a1, $a2
	or	$a1, $a3, $a1
	ori	$a2, $zero, 511
	slt	$a2, $a2, $a1
	ori	$a3, $zero, 1023
	slt	$a3, $a3, $a1
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 2047
	slt	$a3, $a3, $a1
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 4095
	slt	$a3, $a3, $a1
	add.d	$a2, $a2, $a3
	srai.d	$a3, $a1, 63
	andn	$a3, $a1, $a3
	ori	$a0, $a0, 4095
	slt	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 4095
	slt	$a1, $a2, $a1
	add.d	$a1, $a0, $a1
	addi.d	$a0, $a1, 5
	srl.w	$a0, $a3, $a0
	slli.d	$a1, $a1, 3
	bstrpick.d	$a1, $a1, 15, 3
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(gsm_add)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 15
	slt	$a1, $a1, $a0
	bstrpick.d	$a2, $a0, 15, 3
	addi.d	$a2, $a2, -1
	maskeqz	$a2, $a2, $a1
	slli.d	$a1, $a2, 3
	sub.d	$a1, $a0, $a1
	bstrpick.d	$a3, $a1, 15, 0
	beqz	$a3, .LBB0_7
# %bb.3:                                # %.preheader.i.i
	ext.w.h	$a1, $a1
	ori	$a3, $zero, 7
	blt	$a3, $a1, .LBB0_6
# %bb.4:                                # %.lr.ph.i.i.preheader
	ori	$a3, $zero, 8
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	ext.w.h	$a1, $a1
	addi.d	$a2, $a2, -1
	blt	$a1, $a3, .LBB0_5
.LBB0_6:                                # %._crit_edge.i.i
	addi.d	$a1, $a1, -8
	b	.LBB0_8
.LBB0_7:
	ori	$a1, $zero, 7
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4092
.LBB0_8:                                # %APCM_quantization.exit
	ori	$a3, $zero, 6
	sub.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a1, 15, 0
	slli.d	$a4, $a4, 1
	pcalau12i	$a5, %got_pc_hi20(gsm_NRFAC)
	ld.d	$a5, $a5, %got_pc_lo12(gsm_NRFAC)
	ldx.h	$a4, $a5, $a4
	bstrpick.d	$a5, $a3, 15, 0
	vinsgr2vr.h	$vr0, $s0, 0
	vinsgr2vr.h	$vr0, $s2, 2
	vinsgr2vr.h	$vr0, $s8, 4
	vinsgr2vr.h	$vr0, $s3, 6
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	vinsgr2vr.h	$vr1, $a6, 0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	vinsgr2vr.h	$vr1, $a6, 2
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	vinsgr2vr.h	$vr1, $a6, 4
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	vinsgr2vr.h	$vr1, $a6, 6
	vreplgr2vr.w	$vr2, $a5
	vsll.w	$vr1, $vr1, $vr2
	vsll.w	$vr0, $vr0, $vr2
	vreplgr2vr.w	$vr2, $a4
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vmul.w	$vr1, $vr2, $vr1
	vmul.w	$vr0, $vr2, $vr0
	vslli.w	$vr0, $vr0, 1
	vslli.w	$vr1, $vr1, 1
	vsrai.w	$vr1, $vr1, 28
	vsrai.w	$vr0, $vr0, 28
	vpickev.h	$vr0, $vr0, $vr1
	vaddi.hu	$vr0, $vr0, 4
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	vst	$vr0, $a6, 0
	sll.w	$a5, $s1, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $a6, 16
	sll.w	$a5, $s4, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $a6, 18
	sll.w	$a5, $s5, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $a6, 20
	sll.w	$a5, $s6, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $a6, 22
	sll.w	$a3, $s7, $a3
	ext.w.h	$a3, $a3
	mul.d	$a3, $a3, $a4
	slli.w	$a3, $a3, 1
	srli.d	$a3, $a3, 28
	addi.d	$a3, $a3, 4
	st.h	$a3, $a6, 24
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.h	$a0, $a3, 0
	ext.w.h	$a1, $a1
	ext.w.h	$a2, $a2
	addi.d	$a3, $sp, 70
	addi.d	$s0, $sp, 70
	move	$a0, $a6
	pcaddu18i	$ra, %call36(APCM_inverse_quantization)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB0_15
# %bb.9:                                # %APCM_quantization.exit
	ori	$a1, $zero, 12
	slli.d	$a2, $a0, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB0_10:
	st.h	$zero, $fp, 0
	addi.d	$fp, $fp, 2
.LBB0_11:
	ori	$a1, $zero, 13
	addi.d	$s0, $sp, 70
.LBB0_12:
	st.h	$zero, $fp, 0
	addi.d	$fp, $fp, 2
	addi.w	$a1, $a1, -1
.LBB0_13:
	addi.d	$a2, $fp, 2
	st.h	$zero, $fp, 0
	move	$fp, $a2
.LBB0_14:
	ld.h	$a2, $s0, 0
	addi.d	$s0, $s0, 2
	addi.d	$a3, $fp, 2
	st.h	$a2, $fp, 0
	move	$fp, $a3
	bnez	$a1, .LBB0_12
.LBB0_15:
	addi.d	$a1, $a0, 1
	ext.w.h	$a1, $a1
	ori	$a2, $zero, 3
	blt	$a2, $a1, .LBB0_17
# %bb.16:                               # %.lr.ph.preheader.i
	ori	$a1, $zero, 2
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a0, 2
	move	$a0, $fp
	move	$a1, $zero
	fld.d	$fs6, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB0_17:                               # %RPE_grid_positioning.exit
	fld.d	$fs6, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end0:
	.size	Gsm_RPE_Encoding, .Lfunc_end0-Gsm_RPE_Encoding
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function APCM_inverse_quantization
	.type	APCM_inverse_quantization,@function
APCM_inverse_quantization:              # @APCM_inverse_quantization
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
	move	$fp, $a3
	move	$s1, $a0
	slli.d	$a0, $a1, 1
	pcalau12i	$a1, %got_pc_hi20(gsm_FAC)
	ld.d	$a1, $a1, %got_pc_lo12(gsm_FAC)
	ldx.h	$s3, $a1, $a0
	ori	$a0, $zero, 6
	move	$a1, $a2
	pcaddu18i	$ra, %call36(gsm_sub)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(gsm_sub)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(gsm_asl)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s1, 0
	move	$s2, $a0
	slli.d	$s3, $s3, 33
	slli.d	$a0, $a1, 13
	lu12i.w	$s4, -7
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	ori	$s5, $zero, 0
	lu32i.d	$s5, 32768
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	lu12i.w	$a1, 7
	ori	$s6, $a1, 4095
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	lu12i.w	$s7, -8
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 0
	ld.h	$a0, $s1, 2
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 2
	ld.h	$a0, $s1, 4
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 4
	ld.h	$a0, $s1, 6
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 6
	ld.h	$a0, $s1, 8
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 8
	ld.h	$a0, $s1, 10
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 10
	ld.h	$a0, $s1, 12
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 12
	ld.h	$a0, $s1, 14
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 14
	ld.h	$a0, $s1, 16
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 16
	ld.h	$a0, $s1, 18
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 18
	ld.h	$a0, $s1, 20
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 20
	ld.h	$a0, $s1, 22
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 22
	ld.h	$a0, $s1, 24
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 24
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
.Lfunc_end1:
	.size	APCM_inverse_quantization, .Lfunc_end1-APCM_inverse_quantization
                                        # -- End function
	.globl	Gsm_RPE_Decoding                # -- Begin function Gsm_RPE_Decoding
	.p2align	5
	.type	Gsm_RPE_Decoding,@function
Gsm_RPE_Decoding:                       # @Gsm_RPE_Decoding
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 15
	slt	$a0, $a0, $a1
	bstrpick.d	$a5, $a1, 15, 3
	addi.d	$a5, $a5, -1
	maskeqz	$a5, $a5, $a0
	slli.d	$a0, $a5, 3
	sub.d	$a1, $a1, $a0
	slli.d	$a6, $a1, 48
	move	$s0, $a4
	move	$a0, $a3
	move	$fp, $a2
	beqz	$a6, .LBB2_5
# %bb.1:                                # %.preheader.i
	ext.w.h	$a1, $a1
	ori	$a2, $zero, 7
	blt	$a2, $a1, .LBB2_4
# %bb.2:                                # %.lr.ph.i.preheader
	ori	$a2, $zero, 8
	.p2align	4, , 16
.LBB2_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	ext.w.h	$a1, $a1
	addi.d	$a5, $a5, -1
	blt	$a1, $a2, .LBB2_3
.LBB2_4:                                # %._crit_edge.i
	addi.d	$a1, $a1, -8
	b	.LBB2_6
.LBB2_5:
	ori	$a1, $zero, 7
	lu12i.w	$a2, 15
	ori	$a5, $a2, 4092
.LBB2_6:                                # %APCM_quantization_xmaxc_to_exp_mant.exit
	ext.w.h	$a1, $a1
	ext.w.h	$a2, $a5
	addi.d	$a3, $sp, 22
	addi.d	$s1, $sp, 22
	pcaddu18i	$ra, %call36(APCM_inverse_quantization)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	bltu	$a0, $fp, .LBB2_12
# %bb.7:                                # %APCM_quantization_xmaxc_to_exp_mant.exit
	ori	$a1, $zero, 12
	ori	$a2, $zero, 13
	slli.d	$a3, $fp, 2
	pcalau12i	$a4, %pc_hi20(.LJTI2_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI2_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB2_8:
	addi.d	$a1, $s0, 2
	st.h	$zero, $s0, 0
	move	$s0, $a1
.LBB2_9:
	st.h	$zero, $s0, 0
	addi.d	$s0, $s0, 2
	addi.w	$a1, $a2, -1
.LBB2_10:
	addi.d	$a2, $s0, 2
	st.h	$zero, $s0, 0
	move	$s0, $a2
.LBB2_11:
	ld.h	$a2, $s1, 0
	addi.d	$s1, $s1, 2
	addi.d	$a3, $s0, 2
	st.h	$a2, $s0, 0
	move	$s0, $a3
	move	$a2, $a1
	bnez	$a1, .LBB2_9
.LBB2_12:
	addi.d	$a1, $fp, 1
	ext.w.h	$a1, $a1
	blt	$a0, $a1, .LBB2_14
# %bb.13:                               # %.lr.ph.preheader.i
	ori	$a0, $zero, 2
	sub.d	$a0, $a0, $fp
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a0, 2
	move	$a0, $s0
	move	$a1, $zero
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB2_14:                               # %RPE_grid_positioning.exit
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	Gsm_RPE_Decoding, .Lfunc_end2-Gsm_RPE_Decoding
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_11-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_9-.LJTI2_0
	.word	.LBB2_8-.LJTI2_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
