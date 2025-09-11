	.file	"jfdctflt.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function jpeg_fdct_float
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
.LCPI0_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI0_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	6                               # 0x6
.LCPI0_4:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI0_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
.LCPI0_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	7                               # 0x7
	.text
	.globl	jpeg_fdct_float
	.p2align	5
	.type	jpeg_fdct_float,@function
jpeg_fdct_float:                        # @jpeg_fdct_float
# %bb.0:                                # %vector.ph
	fld.s	$fa1, $a0, 0
	fld.s	$fa0, $a0, 32
	fld.s	$fa2, $a0, 64
	fld.s	$fa3, $a0, 96
	vextrins.w	$vr1, $vr0, 16
	vextrins.w	$vr1, $vr2, 32
	fld.s	$fa2, $a0, 28
	fld.s	$fa0, $a0, 60
	fld.s	$fa4, $a0, 92
	fld.s	$fa5, $a0, 124
	vextrins.w	$vr1, $vr3, 48
	vextrins.w	$vr2, $vr0, 16
	vextrins.w	$vr2, $vr4, 32
	vextrins.w	$vr2, $vr5, 48
	vfadd.s	$vr0, $vr1, $vr2
	fld.s	$fa3, $a0, 4
	fld.s	$fa5, $a0, 36
	fld.s	$fa6, $a0, 68
	vfsub.s	$vr4, $vr1, $vr2
	fld.s	$fa1, $a0, 100
	vextrins.w	$vr3, $vr5, 16
	vextrins.w	$vr3, $vr6, 32
	fld.s	$fa5, $a0, 24
	fld.s	$fa2, $a0, 56
	fld.s	$fa6, $a0, 88
	fld.s	$fa7, $a0, 120
	vextrins.w	$vr3, $vr1, 48
	vextrins.w	$vr5, $vr2, 16
	vextrins.w	$vr5, $vr6, 32
	vextrins.w	$vr5, $vr7, 48
	vfadd.s	$vr2, $vr3, $vr5
	fld.s	$fa6, $a0, 8
	fld.s	$fa7, $a0, 40
	fld.s	$ft0, $a0, 72
	vfsub.s	$vr1, $vr3, $vr5
	fld.s	$fa3, $a0, 104
	vextrins.w	$vr6, $vr7, 16
	vextrins.w	$vr6, $vr8, 32
	fld.s	$fa5, $a0, 20
	fld.s	$fa7, $a0, 52
	fld.s	$ft0, $a0, 84
	fld.s	$ft1, $a0, 116
	vextrins.w	$vr6, $vr3, 48
	vextrins.w	$vr5, $vr7, 16
	vextrins.w	$vr5, $vr8, 32
	vextrins.w	$vr5, $vr9, 48
	vfadd.s	$vr3, $vr6, $vr5
	fld.s	$fa7, $a0, 12
	fld.s	$ft0, $a0, 44
	fld.s	$ft1, $a0, 76
	vfsub.s	$vr5, $vr6, $vr5
	fld.s	$fa6, $a0, 108
	vextrins.w	$vr7, $vr8, 16
	vextrins.w	$vr7, $vr9, 32
	fld.s	$ft0, $a0, 16
	fld.s	$ft1, $a0, 48
	fld.s	$ft2, $a0, 80
	fld.s	$ft3, $a0, 112
	vextrins.w	$vr7, $vr6, 48
	vextrins.w	$vr8, $vr9, 16
	vextrins.w	$vr8, $vr10, 32
	vextrins.w	$vr8, $vr11, 48
	vfadd.s	$vr6, $vr7, $vr8
	vfsub.s	$vr7, $vr7, $vr8
	vfadd.s	$vr8, $vr0, $vr6
	vfsub.s	$vr6, $vr0, $vr6
	vfadd.s	$vr0, $vr2, $vr3
	vfsub.s	$vr2, $vr2, $vr3
	vfadd.s	$vr13, $vr0, $vr8
	vfsub.s	$vr11, $vr8, $vr0
	vfadd.s	$vr2, $vr2, $vr6
	lu12i.w	$a1, 258896
	ori	$a1, $a1, 1267
	vreplgr2vr.w	$vr0, $a1
	vfmul.s	$vr2, $vr2, $vr0
	vfadd.s	$vr15, $vr6, $vr2
	vfsub.s	$vr12, $vr6, $vr2
	vfadd.s	$vr3, $vr5, $vr7
	vfadd.s	$vr5, $vr1, $vr5
	vfadd.s	$vr6, $vr4, $vr1
	vfsub.s	$vr2, $vr3, $vr6
	lu12i.w	$a1, 257086
	ori	$a1, $a1, 3861
	vreplgr2vr.w	$vr1, $a1
	vfmul.s	$vr7, $vr2, $vr1
	lu12i.w	$a1, 258216
	ori	$a1, $a1, 3028
	vreplgr2vr.w	$vr2, $a1
	vfmadd.s	$vr8, $vr3, $vr2, $vr7
	lu12i.w	$a1, 260723
	ori	$a1, $a1, 3445
	vreplgr2vr.w	$vr3, $a1
	vfmadd.s	$vr16, $vr6, $vr3, $vr7
	vfmul.s	$vr5, $vr5, $vr0
	vfadd.s	$vr17, $vr4, $vr5
	vfsub.s	$vr5, $vr4, $vr5
	vfadd.s	$vr14, $vr5, $vr8
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr4, $a1, %pc_lo12(.LCPI0_0)
	vfsub.s	$vr18, $vr5, $vr8
	vfadd.s	$vr19, $vr17, $vr16
	vpackev.w	$vr5, $vr19, $vr13
	vpackev.d	$vr6, $vr15, $vr5
	vori.b	$vr7, $vr4, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr8, $a1, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr5, $a1, %pc_lo12(.LCPI0_2)
	vshuf.w	$vr7, $vr18, $vr6
	vst	$vr7, $a0, 0
	vpackod.w	$vr6, $vr19, $vr13
	vori.b	$vr7, $vr8, 0
	vshuf.w	$vr7, $vr15, $vr6
	vori.b	$vr9, $vr5, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr6, $a1, %pc_lo12(.LCPI0_3)
	vshuf.w	$vr9, $vr18, $vr7
	vst	$vr9, $a0, 32
	vilvh.w	$vr20, $vr19, $vr13
	vshuf4i.d	$vr20, $vr15, 12
	vori.b	$vr21, $vr6, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	vld	$vr10, $a1, %pc_lo12(.LCPI0_4)
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	vld	$vr9, $a1, %pc_lo12(.LCPI0_5)
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	vld	$vr7, $a1, %pc_lo12(.LCPI0_6)
	vshuf.w	$vr21, $vr18, $vr20
	vst	$vr21, $a0, 64
	vori.b	$vr20, $vr10, 0
	vshuf.w	$vr20, $vr19, $vr13
	vori.b	$vr13, $vr9, 0
	vshuf.w	$vr13, $vr15, $vr20
	vori.b	$vr15, $vr7, 0
	vshuf.w	$vr15, $vr18, $vr13
	vst	$vr15, $a0, 96
	vfsub.s	$vr13, $vr17, $vr16
	vpackev.w	$vr15, $vr14, $vr11
	vpackev.d	$vr15, $vr12, $vr15
	vori.b	$vr16, $vr4, 0
	vshuf.w	$vr16, $vr13, $vr15
	vst	$vr16, $a0, 16
	vpackod.w	$vr15, $vr14, $vr11
	vori.b	$vr16, $vr8, 0
	vshuf.w	$vr16, $vr12, $vr15
	vori.b	$vr15, $vr5, 0
	vshuf.w	$vr15, $vr13, $vr16
	vst	$vr15, $a0, 48
	vilvh.w	$vr15, $vr14, $vr11
	vshuf4i.d	$vr15, $vr12, 12
	vori.b	$vr16, $vr6, 0
	vshuf.w	$vr16, $vr13, $vr15
	vst	$vr16, $a0, 80
	vori.b	$vr15, $vr10, 0
	vshuf.w	$vr15, $vr14, $vr11
	vori.b	$vr11, $vr9, 0
	vshuf.w	$vr11, $vr12, $vr15
	vori.b	$vr12, $vr7, 0
	vshuf.w	$vr12, $vr13, $vr11
	fld.s	$ft3, $a0, 128
	fld.s	$ft5, $a0, 160
	fld.s	$ft6, $a0, 192
	vst	$vr12, $a0, 112
	fld.s	$ft4, $a0, 224
	vextrins.w	$vr11, $vr13, 16
	vextrins.w	$vr11, $vr14, 32
	fld.s	$ft5, $a0, 156
	fld.s	$ft6, $a0, 188
	fld.s	$ft7, $a0, 220
	fld.s	$ft8, $a0, 252
	vextrins.w	$vr11, $vr12, 48
	vextrins.w	$vr13, $vr14, 16
	vextrins.w	$vr13, $vr15, 32
	vextrins.w	$vr13, $vr16, 48
	vfadd.s	$vr12, $vr11, $vr13
	fld.s	$ft7, $a0, 132
	fld.s	$ft6, $a0, 164
	fld.s	$ft8, $a0, 196
	vfsub.s	$vr11, $vr11, $vr13
	fld.s	$ft5, $a0, 228
	vextrins.w	$vr15, $vr14, 16
	vextrins.w	$vr15, $vr16, 32
	fld.s	$ft8, $a0, 152
	fld.s	$ft6, $a0, 184
	fld.s	$ft9, $a0, 216
	fld.s	$ft10, $a0, 248
	vextrins.w	$vr15, $vr13, 48
	vextrins.w	$vr16, $vr14, 16
	vextrins.w	$vr16, $vr17, 32
	vextrins.w	$vr16, $vr18, 48
	vfadd.s	$vr14, $vr15, $vr16
	fld.s	$ft9, $a0, 136
	fld.s	$ft10, $a0, 168
	fld.s	$ft11, $a0, 200
	vfsub.s	$vr13, $vr15, $vr16
	fld.s	$ft7, $a0, 232
	vextrins.w	$vr17, $vr18, 16
	vextrins.w	$vr17, $vr19, 32
	fld.s	$ft8, $a0, 148
	fld.s	$ft10, $a0, 180
	fld.s	$ft11, $a0, 212
	fld.s	$ft12, $a0, 244
	vextrins.w	$vr17, $vr15, 48
	vextrins.w	$vr16, $vr18, 16
	vextrins.w	$vr16, $vr19, 32
	vextrins.w	$vr16, $vr20, 48
	vfadd.s	$vr15, $vr17, $vr16
	fld.s	$ft10, $a0, 140
	fld.s	$ft11, $a0, 172
	fld.s	$ft12, $a0, 204
	vfsub.s	$vr16, $vr17, $vr16
	fld.s	$ft9, $a0, 236
	vextrins.w	$vr18, $vr19, 16
	vextrins.w	$vr18, $vr20, 32
	fld.s	$ft11, $a0, 144
	fld.s	$ft12, $a0, 176
	fld.s	$ft13, $a0, 208
	fld.s	$ft14, $a0, 240
	vextrins.w	$vr18, $vr17, 48
	vextrins.w	$vr19, $vr20, 16
	vextrins.w	$vr19, $vr21, 32
	vextrins.w	$vr19, $vr22, 48
	vfadd.s	$vr17, $vr18, $vr19
	vfsub.s	$vr18, $vr18, $vr19
	vfadd.s	$vr19, $vr12, $vr17
	vfsub.s	$vr12, $vr12, $vr17
	vfadd.s	$vr17, $vr14, $vr15
	vfsub.s	$vr14, $vr14, $vr15
	vfadd.s	$vr15, $vr17, $vr19
	vfsub.s	$vr17, $vr19, $vr17
	vfadd.s	$vr14, $vr14, $vr12
	vfmul.s	$vr14, $vr14, $vr0
	vfadd.s	$vr19, $vr12, $vr14
	vfsub.s	$vr12, $vr12, $vr14
	vfadd.s	$vr14, $vr16, $vr18
	vfadd.s	$vr16, $vr13, $vr16
	vfadd.s	$vr13, $vr11, $vr13
	vfsub.s	$vr18, $vr14, $vr13
	vfmul.s	$vr18, $vr18, $vr1
	vfmadd.s	$vr14, $vr14, $vr2, $vr18
	vfmadd.s	$vr13, $vr13, $vr3, $vr18
	vfmul.s	$vr16, $vr16, $vr0
	vfadd.s	$vr18, $vr11, $vr16
	vfsub.s	$vr11, $vr11, $vr16
	vfadd.s	$vr16, $vr11, $vr14
	vfsub.s	$vr11, $vr11, $vr14
	vfadd.s	$vr14, $vr18, $vr13
	vpackev.w	$vr20, $vr14, $vr15
	vpackev.d	$vr20, $vr19, $vr20
	vori.b	$vr21, $vr4, 0
	vshuf.w	$vr21, $vr11, $vr20
	vpackod.w	$vr20, $vr14, $vr15
	vori.b	$vr22, $vr8, 0
	vshuf.w	$vr22, $vr19, $vr20
	vori.b	$vr20, $vr5, 0
	vshuf.w	$vr20, $vr11, $vr22
	vilvh.w	$vr22, $vr14, $vr15
	vshuf4i.d	$vr22, $vr19, 12
	vori.b	$vr23, $vr6, 0
	vshuf.w	$vr23, $vr11, $vr22
	vori.b	$vr22, $vr10, 0
	vshuf.w	$vr22, $vr14, $vr15
	vori.b	$vr14, $vr9, 0
	vshuf.w	$vr14, $vr19, $vr22
	vori.b	$vr15, $vr7, 0
	vshuf.w	$vr15, $vr11, $vr14
	vfsub.s	$vr11, $vr18, $vr13
	vpackev.w	$vr13, $vr16, $vr17
	vpackev.d	$vr13, $vr12, $vr13
	vshuf.w	$vr4, $vr11, $vr13
	vst	$vr4, $a0, 144
	vpackod.w	$vr13, $vr16, $vr17
	vshuf.w	$vr8, $vr12, $vr13
	vshuf.w	$vr5, $vr11, $vr8
	vst	$vr5, $a0, 176
	vilvh.w	$vr8, $vr16, $vr17
	vshuf4i.d	$vr8, $vr12, 12
	vshuf.w	$vr6, $vr11, $vr8
	vst	$vr6, $a0, 208
	vshuf.w	$vr10, $vr16, $vr17
	vshuf.w	$vr9, $vr12, $vr10
	vld	$vr8, $a0, 0
	vshuf.w	$vr7, $vr11, $vr9
	vst	$vr7, $a0, 240
	vld	$vr9, $a0, 32
	vfadd.s	$vr10, $vr8, $vr15
	vfsub.s	$vr8, $vr8, $vr15
	vld	$vr11, $a0, 64
	vfadd.s	$vr12, $vr9, $vr23
	vld	$vr13, $a0, 96
	vfsub.s	$vr9, $vr9, $vr23
	vfadd.s	$vr14, $vr11, $vr20
	vfsub.s	$vr11, $vr11, $vr20
	vfadd.s	$vr15, $vr13, $vr21
	vfsub.s	$vr13, $vr13, $vr21
	vfadd.s	$vr16, $vr10, $vr15
	vfsub.s	$vr10, $vr10, $vr15
	vfadd.s	$vr15, $vr12, $vr14
	vfsub.s	$vr12, $vr12, $vr14
	vfadd.s	$vr14, $vr15, $vr16
	vst	$vr14, $a0, 0
	vfsub.s	$vr14, $vr16, $vr15
	vst	$vr14, $a0, 128
	vfadd.s	$vr12, $vr12, $vr10
	vfmul.s	$vr12, $vr12, $vr0
	vfadd.s	$vr14, $vr10, $vr12
	vst	$vr14, $a0, 64
	vfsub.s	$vr10, $vr10, $vr12
	vst	$vr10, $a0, 192
	vfadd.s	$vr10, $vr11, $vr13
	vfadd.s	$vr11, $vr9, $vr11
	vfadd.s	$vr9, $vr8, $vr9
	vfsub.s	$vr12, $vr10, $vr9
	vfmul.s	$vr12, $vr12, $vr1
	vfmadd.s	$vr10, $vr10, $vr2, $vr12
	vfmadd.s	$vr9, $vr9, $vr3, $vr12
	vfmul.s	$vr11, $vr11, $vr0
	vfadd.s	$vr12, $vr8, $vr11
	vfsub.s	$vr8, $vr8, $vr11
	vfadd.s	$vr11, $vr8, $vr10
	vst	$vr11, $a0, 160
	vfsub.s	$vr8, $vr8, $vr10
	vst	$vr8, $a0, 96
	vfadd.s	$vr8, $vr12, $vr9
	vst	$vr8, $a0, 32
	vld	$vr8, $a0, 16
	vfsub.s	$vr9, $vr12, $vr9
	vst	$vr9, $a0, 224
	vld	$vr9, $a0, 48
	vfadd.s	$vr10, $vr8, $vr7
	vfsub.s	$vr7, $vr8, $vr7
	vld	$vr8, $a0, 80
	vfadd.s	$vr11, $vr9, $vr6
	vld	$vr12, $a0, 112
	vfsub.s	$vr6, $vr9, $vr6
	vfadd.s	$vr9, $vr8, $vr5
	vfsub.s	$vr5, $vr8, $vr5
	vfadd.s	$vr8, $vr12, $vr4
	vfsub.s	$vr4, $vr12, $vr4
	vfadd.s	$vr12, $vr10, $vr8
	vfsub.s	$vr8, $vr10, $vr8
	vfadd.s	$vr10, $vr11, $vr9
	vfsub.s	$vr9, $vr11, $vr9
	vfadd.s	$vr11, $vr10, $vr12
	vst	$vr11, $a0, 16
	vfsub.s	$vr10, $vr12, $vr10
	vst	$vr10, $a0, 144
	vfadd.s	$vr9, $vr9, $vr8
	vfmul.s	$vr9, $vr9, $vr0
	vfadd.s	$vr10, $vr8, $vr9
	vst	$vr10, $a0, 80
	vfsub.s	$vr8, $vr8, $vr9
	vst	$vr8, $a0, 208
	vfadd.s	$vr4, $vr5, $vr4
	vfadd.s	$vr5, $vr6, $vr5
	vfadd.s	$vr6, $vr7, $vr6
	vfsub.s	$vr8, $vr4, $vr6
	vfmul.s	$vr1, $vr8, $vr1
	vfmadd.s	$vr2, $vr4, $vr2, $vr1
	vfmadd.s	$vr1, $vr6, $vr3, $vr1
	vfmul.s	$vr0, $vr5, $vr0
	vfadd.s	$vr3, $vr7, $vr0
	vfsub.s	$vr0, $vr7, $vr0
	vfadd.s	$vr4, $vr0, $vr2
	vst	$vr4, $a0, 176
	vfsub.s	$vr0, $vr0, $vr2
	vst	$vr0, $a0, 112
	vfadd.s	$vr0, $vr3, $vr1
	vst	$vr0, $a0, 48
	vfsub.s	$vr0, $vr3, $vr1
	vst	$vr0, $a0, 240
	ret
.Lfunc_end0:
	.size	jpeg_fdct_float, .Lfunc_end0-jpeg_fdct_float
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
