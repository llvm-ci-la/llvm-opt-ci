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
.LCPI0_4:
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	6                               # 0x6
	.half	9                               # 0x9
	.half	12                              # 0xc
	.half	15                              # 0xf
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI0_5:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	10                              # 0xa
	.half	13                              # 0xd
.LCPI0_6:
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	6                               # 0x6
	.half	9                               # 0x9
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.text
	.globl	Gsm_RPE_Encoding
	.p2align	5
	.type	Gsm_RPE_Encoding,@function
Gsm_RPE_Encoding:                       # @Gsm_RPE_Encoding
# %bb.0:                                # %vector.ph
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
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 144                  # 8-byte Folded Spill
	move	$fp, $a1
	ld.h	$a0, $a1, -10
	move	$s1, $a4
	move	$s0, $a3
	move	$s2, $a2
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
	addi.d	$a3, $sp, 64
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
	ld.d	$a2, $sp, 102
	ld.w	$a3, $sp, 110
	vld	$vr2, $sp, 70
	vld	$vr3, $sp, 86
	pcalau12i	$a4, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a4, %pc_lo12(.LCPI0_4)
	pcalau12i	$a4, %pc_hi20(.LCPI0_5)
	vld	$vr1, $a4, %pc_lo12(.LCPI0_5)
	vinsgr2vr.d	$vr4, $a2, 0
	vinsgr2vr.w	$vr4, $a3, 2
	vori.b	$vr5, $vr0, 0
	vshuf.h	$vr5, $vr3, $vr2
	vori.b	$vr2, $vr1, 0
	vshuf.h	$vr2, $vr4, $vr5
	vsrai.h	$vr2, $vr2, 2
	vilvh.h	$vr3, $vr2, $vr2
	vilvl.w	$vr4, $vr3, $vr3
	vslli.d	$vr4, $vr4, 48
	vsrai.d	$vr4, $vr4, 48
	vilvh.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr5, $vr2, $vr2
	vslli.d	$vr5, $vr5, 48
	vsrai.d	$vr5, $vr5, 48
	vilvh.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr6, $vr2, 48
	ld.w	$a2, $sp, 134
	pcalau12i	$a3, %pc_hi20(.LCPI0_6)
	vld	$vr2, $a3, %pc_lo12(.LCPI0_6)
	vld	$vr7, $sp, 118
	vmul.d	$vr6, $vr6, $vr6
	vmul.d	$vr5, $vr5, $vr5
	vinsgr2vr.w	$vr8, $a2, 0
	vori.b	$vr9, $vr2, 0
	vshuf.h	$vr9, $vr8, $vr7
	vsrai.h	$vr7, $vr9, 2
	vilvl.h	$vr7, $vr7, $vr7
	vilvh.w	$vr8, $vr7, $vr7
	vslli.d	$vr8, $vr8, 48
	vsrai.d	$vr8, $vr8, 48
	vilvl.w	$vr7, $vr7, $vr7
	vslli.d	$vr7, $vr7, 48
	vsrai.d	$vr7, $vr7, 48
	vmadd.d	$vr5, $vr7, $vr7
	vmadd.d	$vr6, $vr8, $vr8
	vmadd.d	$vr6, $vr3, $vr3
	vmadd.d	$vr5, $vr4, $vr4
	ld.h	$a3, $sp, 64
	vadd.d	$vr3, $vr5, $vr6
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$a2, $vr3, 0
	srai.d	$a3, $a3, 2
	mul.d	$a3, $a3, $a3
	add.d	$a3, $a2, $a3
	ld.d	$a5, $sp, 98
	ld.w	$a6, $sp, 106
	vld	$vr3, $sp, 66
	vld	$vr4, $sp, 82
	slli.d	$a4, $a3, 1
	vinsgr2vr.d	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 2
	vori.b	$vr6, $vr0, 0
	vshuf.h	$vr6, $vr4, $vr3
	vori.b	$vr3, $vr1, 0
	vshuf.h	$vr3, $vr5, $vr6
	vsrai.h	$vr3, $vr3, 2
	vilvh.h	$vr4, $vr3, $vr3
	vilvl.w	$vr5, $vr4, $vr4
	vslli.d	$vr5, $vr5, 48
	vsrai.d	$vr5, $vr5, 48
	vilvh.w	$vr4, $vr4, $vr4
	vslli.d	$vr4, $vr4, 48
	vsrai.d	$vr4, $vr4, 48
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr6, $vr3, $vr3
	vslli.d	$vr6, $vr6, 48
	vsrai.d	$vr6, $vr6, 48
	vilvh.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	ld.w	$a3, $sp, 130
	vld	$vr7, $sp, 114
	vmul.d	$vr3, $vr3, $vr3
	vmul.d	$vr6, $vr6, $vr6
	vinsgr2vr.w	$vr8, $a3, 0
	vori.b	$vr9, $vr2, 0
	vshuf.h	$vr9, $vr8, $vr7
	vsrai.h	$vr7, $vr9, 2
	vilvl.h	$vr7, $vr7, $vr7
	vilvh.w	$vr8, $vr7, $vr7
	vslli.d	$vr8, $vr8, 48
	vsrai.d	$vr8, $vr8, 48
	ld.h	$a3, $sp, 138
	vilvl.w	$vr7, $vr7, $vr7
	vslli.d	$vr7, $vr7, 48
	vsrai.d	$vr7, $vr7, 48
	srai.d	$a3, $a3, 2
	mul.d	$a3, $a3, $a3
	vmadd.d	$vr6, $vr7, $vr7
	vmadd.d	$vr3, $vr8, $vr8
	vmadd.d	$vr3, $vr4, $vr4
	vmadd.d	$vr6, $vr5, $vr5
	vadd.d	$vr3, $vr6, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$a5, $vr3, 0
	add.d	$a3, $a5, $a3
	slli.d	$a5, $a3, 1
	slt	$a3, $a4, $a5
	masknez	$a4, $a4, $a3
	maskeqz	$a5, $a5, $a3
	ld.d	$a6, $sp, 100
	ld.w	$a7, $sp, 108
	vld	$vr3, $sp, 68
	vld	$vr4, $sp, 84
	or	$a4, $a5, $a4
	vinsgr2vr.d	$vr5, $a6, 0
	vinsgr2vr.w	$vr5, $a7, 2
	vshuf.h	$vr0, $vr4, $vr3
	vshuf.h	$vr1, $vr5, $vr0
	vsrai.h	$vr0, $vr1, 2
	vilvh.h	$vr1, $vr0, $vr0
	vilvl.w	$vr3, $vr1, $vr1
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	vilvh.w	$vr1, $vr1, $vr1
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vilvl.h	$vr0, $vr0, $vr0
	vilvl.w	$vr4, $vr0, $vr0
	vslli.d	$vr4, $vr4, 48
	vsrai.d	$vr4, $vr4, 48
	vilvh.w	$vr0, $vr0, $vr0
	vslli.d	$vr0, $vr0, 48
	vsrai.d	$vr0, $vr0, 48
	ld.w	$a5, $sp, 132
	vld	$vr5, $sp, 116
	vmul.d	$vr0, $vr0, $vr0
	vmul.d	$vr4, $vr4, $vr4
	vinsgr2vr.w	$vr6, $a5, 0
	vshuf.h	$vr2, $vr6, $vr5
	vsrai.h	$vr2, $vr2, 2
	vilvl.h	$vr2, $vr2, $vr2
	vilvh.w	$vr5, $vr2, $vr2
	vslli.d	$vr5, $vr5, 48
	vsrai.d	$vr5, $vr5, 48
	ld.h	$a5, $sp, 140
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	vmadd.d	$vr4, $vr2, $vr2
	vmadd.d	$vr0, $vr5, $vr5
	vmadd.d	$vr0, $vr1, $vr1
	vmadd.d	$vr4, $vr3, $vr3
	vadd.d	$vr0, $vr4, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a6, $vr0, 0
	add.d	$a5, $a6, $a5
	slli.d	$a5, $a5, 1
	slt	$a6, $a4, $a5
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a5, $a6
	or	$a4, $a5, $a4
	masknez	$a3, $a3, $a6
	ld.h	$a5, $sp, 142
	ori	$a7, $zero, 2
	maskeqz	$a6, $a7, $a6
	or	$a3, $a6, $a3
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a2, $a5, $a2
	slli.d	$a2, $a2, 1
	slt	$a2, $a4, $a2
	masknez	$a3, $a3, $a2
	ori	$s3, $zero, 3
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	addi.d	$a3, $sp, 64
	alsl.d	$a4, $a2, $a3, 1
	slli.d	$a5, $a2, 1
	ldx.h	$a3, $a5, $a3
	ld.h	$a5, $a4, 6
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 18
	ld.h	$t0, $a4, 24
	ld.h	$t1, $a4, 30
	ld.h	$t2, $a4, 36
	ld.h	$t3, $a4, 42
	ld.hu	$s8, $a4, 48
	ld.hu	$t4, $a4, 72
	ld.hu	$s7, $a4, 54
	ld.hu	$s6, $a4, 60
	ld.hu	$s5, $a4, 66
	ext.w.h	$s4, $t4
	st.h	$a2, $s0, 0
	vinsgr2vr.h	$vr5, $a3, 0
	vinsgr2vr.h	$vr5, $a5, 1
	vinsgr2vr.h	$vr5, $a6, 2
	vinsgr2vr.h	$vr5, $a7, 3
	vinsgr2vr.h	$vr5, $t0, 4
	vinsgr2vr.h	$vr5, $t1, 5
	vinsgr2vr.h	$vr5, $t2, 6
	vinsgr2vr.h	$vr5, $t3, 7
	vslti.h	$vr0, $vr5, 0
	lu12i.w	$a2, 8
	vreplgr2vr.h	$vr1, $a2
	vseq.h	$vr2, $vr5, $vr1
	vneg.h	$vr3, $vr5
	vreplgr2vr.h	$vr4, $a1
	vbitsel.v	$vr2, $vr3, $vr4, $vr2
	vst	$vr5, $sp, 16                   # 16-byte Folded Spill
	vbitsel.v	$vr0, $vr5, $vr2, $vr0
	vinsgr2vr.h	$vr2, $s8, 0
	vinsgr2vr.h	$vr2, $s7, 1
	vinsgr2vr.h	$vr2, $s6, 2
	vinsgr2vr.h	$vr2, $s5, 3
	vslti.h	$vr3, $vr2, 0
	vseq.h	$vr1, $vr2, $vr1
	vneg.h	$vr5, $vr2
	vbitsel.v	$vr1, $vr5, $vr4, $vr1
	vbitsel.v	$vr1, $vr2, $vr1, $vr3
	slti	$a3, $s4, 0
	xor	$a2, $t4, $a2
	sltui	$a2, $a2, 1
	sub.d	$a4, $zero, $t4
	masknez	$a4, $a4, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a4
	masknez	$a2, $t4, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	vmax.h	$vr1, $vr0, $vr1
	vshuf4i.d	$vr1, $vr0, 12
	vbsrl.v	$vr0, $vr1, 8
	vmax.h	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a2, $vr0, 0
	ext.w.h	$a2, $a2
	slt	$a3, $a1, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a1, $a1, $a3
	or	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	andn	$a2, $a1, $a2
	vinsgr2vr.h	$vr0, $a1, 0
	vinsgr2vr.h	$vr0, $a1, 1
	vinsgr2vr.h	$vr0, $a1, 2
	vinsgr2vr.h	$vr0, $a1, 3
	lu12i.w	$a3, 16368
	ori	$a3, $a3, 511
	lu32i.d	$a3, -63489
	lu52i.d	$a3, $a3, 255
	vreplgr2vr.d	$vr1, $a3
	ori	$a0, $a0, 4095
	slt	$a0, $a0, $a1
	lu12i.w	$a3, 3
	ori	$a3, $a3, 4095
	slt	$a1, $a3, $a1
	vslt.h	$vr0, $vr1, $vr0
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a3, $vr0, 0
	vldi	$vr0, 0
	vinsgr2vr.d	$vr0, $a3, 0
	vpcnt.d	$vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	add.d	$a0, $a3, $a0
	add.d	$a1, $a0, $a1
	addi.d	$a0, $a1, 5
	srl.w	$a0, $a2, $a0
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
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vilvh.h	$vr0, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
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
	vst	$vr0, $s1, 0
	sll.w	$a5, $s8, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $s1, 16
	sll.w	$a5, $s7, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $s1, 18
	sll.w	$a5, $s6, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $s1, 20
	sll.w	$a5, $s5, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $s1, 22
	sll.w	$a3, $s4, $a3
	ext.w.h	$a3, $a3
	mul.d	$a3, $a3, $a4
	slli.w	$a3, $a3, 1
	srli.d	$a3, $a3, 28
	addi.d	$a3, $a3, 4
	st.h	$a3, $s1, 24
	st.h	$a0, $s2, 0
	ext.w.h	$a1, $a1
	ext.w.h	$a2, $a2
	addi.d	$a3, $sp, 38
	addi.d	$s2, $sp, 38
	move	$a0, $s1
	pcaddu18i	$ra, %call36(APCM_inverse_quantization)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s0, 0
	bltu	$s3, $a0, .LBB0_15
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
	addi.d	$s2, $sp, 38
.LBB0_12:
	st.h	$zero, $fp, 0
	addi.d	$fp, $fp, 2
	addi.w	$a1, $a1, -1
.LBB0_13:
	addi.d	$a2, $fp, 2
	st.h	$zero, $fp, 0
	move	$fp, $a2
.LBB0_14:
	ld.h	$a2, $s2, 0
	addi.d	$s2, $s2, 2
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
	fld.d	$fs6, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB0_17:                               # %RPE_grid_positioning.exit
	fld.d	$fs6, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
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
