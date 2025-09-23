	.file	"idctref.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Initialize_Reference_IDCT
.LCPI0_0:
	.dword	0x3fdf6297cff75cb0              # double 0.49039264020161522
	.dword	0x3fda9b66290ea1a3              # double 0.41573480615127262
.LCPI0_1:
	.dword	0x3fd1c73b39ae68c9              # double 0.27778511650980114
	.dword	0x3fb8f8b83c69a60d              # double 0.097545161008064166
.LCPI0_2:
	.dword	0xbfb8f8b83c69a608              # double -0.097545161008064096
	.dword	0xbfd1c73b39ae68c6              # double -0.27778511650980098
.LCPI0_3:
	.dword	0xbfda9b66290ea1a4              # double -0.41573480615127267
	.dword	0xbfdf6297cff75cb0              # double -0.49039264020161522
.LCPI0_4:
	.dword	0x3fdd906bcf328d46              # double 0.46193976625564337
	.dword	0x3fc87de2a6aea964              # double 0.19134171618254492
.LCPI0_5:
	.dword	0xbfc87de2a6aea962              # double -0.19134171618254486
	.dword	0xbfdd906bcf328d46              # double -0.46193976625564337
.LCPI0_6:
	.dword	0xbfdd906bcf328d47              # double -0.46193976625564342
	.dword	0xbfc87de2a6aea96d              # double -0.19134171618254517
.LCPI0_7:
	.dword	0x3fc87de2a6aea967              # double 0.191341716182545
	.dword	0x3fdd906bcf328d44              # double 0.46193976625564326
.LCPI0_8:
	.dword	0x3fda9b66290ea1a3              # double 0.41573480615127262
	.dword	0xbfb8f8b83c69a608              # double -0.097545161008064096
.LCPI0_9:
	.dword	0xbfdf6297cff75cb0              # double -0.49039264020161522
	.dword	0xbfd1c73b39ae68c8              # double -0.27778511650980109
.LCPI0_10:
	.dword	0x3fd1c73b39ae68c5              # double 0.27778511650980092
	.dword	0x3fdf6297cff75cb0              # double 0.49039264020161522
.LCPI0_11:
	.dword	0x3fb8f8b83c69a61d              # double 0.097545161008064388
	.dword	0xbfda9b66290ea1a2              # double -0.41573480615127256
.LCPI0_12:
	.dword	0x3fd6a09e667f3bcd              # double 0.35355339059327379
	.dword	0xbfd6a09e667f3bcc              # double -0.35355339059327373
.LCPI0_13:
	.dword	0xbfd6a09e667f3bce              # double -0.35355339059327384
	.dword	0x3fd6a09e667f3bcb              # double 0.35355339059327368
.LCPI0_14:
	.dword	0x3fd6a09e667f3bce              # double 0.35355339059327384
	.dword	0xbfd6a09e667f3bc5              # double -0.35355339059327334
.LCPI0_15:
	.dword	0xbfd6a09e667f3bc9              # double -0.35355339059327356
	.dword	0x3fd6a09e667f3bc4              # double 0.35355339059327329
.LCPI0_16:
	.dword	0x3fd1c73b39ae68c9              # double 0.27778511650980114
	.dword	0xbfdf6297cff75cb0              # double -0.49039264020161522
.LCPI0_17:
	.dword	0x3fb8f8b83c69a60c              # double 0.097545161008064151
	.dword	0x3fda9b66290ea1a5              # double 0.41573480615127273
.LCPI0_18:
	.dword	0xbfda9b66290ea1a2              # double -0.41573480615127256
	.dword	0xbfb8f8b83c69a602              # double -0.097545161008064013
.LCPI0_19:
	.dword	0x3fdf6297cff75cb2              # double 0.49039264020161533
	.dword	0xbfd1c73b39ae68c2              # double -0.27778511650980076
.LCPI0_20:
	.dword	0x3fc87de2a6aea964              # double 0.19134171618254492
	.dword	0xbfdd906bcf328d47              # double -0.46193976625564342
.LCPI0_21:
	.dword	0x3fdd906bcf328d44              # double 0.46193976625564326
	.dword	0xbfc87de2a6aea965              # double -0.19134171618254495
.LCPI0_22:
	.dword	0xbfc87de2a6aea971              # double -0.19134171618254528
	.dword	0x3fdd906bcf328d46              # double 0.46193976625564337
.LCPI0_23:
	.dword	0xbfdd906bcf328d43              # double -0.4619397662556432
	.dword	0x3fc87de2a6aea95f              # double 0.19134171618254478
.LCPI0_24:
	.dword	0x3fb8f8b83c69a60d              # double 0.097545161008064166
	.dword	0xbfd1c73b39ae68c8              # double -0.27778511650980109
.LCPI0_25:
	.dword	0x3fda9b66290ea1a5              # double 0.41573480615127273
	.dword	0xbfdf6297cff75cb2              # double -0.49039264020161533
.LCPI0_26:
	.dword	0x3fdf6297cff75cb0              # double 0.49039264020161522
	.dword	0xbfda9b66290ea1a1              # double -0.41573480615127251
.LCPI0_27:
	.dword	0x3fd1c73b39ae68c2              # double 0.27778511650980076
	.dword	0xbfb8f8b83c69a616              # double -0.09754516100806429
	.text
	.globl	Initialize_Reference_IDCT
	.p2align	5
	.type	Initialize_Reference_IDCT,@function
Initialize_Reference_IDCT:              # @Initialize_Reference_IDCT
# %bb.0:
	lu12i.w	$a0, 419827
	ori	$a0, $a0, 3021
	lu32i.d	$a0, 434334
	lu52i.d	$a0, $a0, 1021
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(c)
	addi.d	$a0, $a0, %pc_lo12(c)
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 48
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_2)
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_3)
	vst	$vr0, $a0, 64
	vst	$vr1, $a0, 80
	vst	$vr2, $a0, 96
	vst	$vr3, $a0, 112
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_4)
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_5)
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_6)
	pcalau12i	$a1, %pc_hi20(.LCPI0_7)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_7)
	vst	$vr0, $a0, 128
	vst	$vr1, $a0, 144
	vst	$vr2, $a0, 160
	vst	$vr3, $a0, 176
	pcalau12i	$a1, %pc_hi20(.LCPI0_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_8)
	pcalau12i	$a1, %pc_hi20(.LCPI0_9)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_9)
	pcalau12i	$a1, %pc_hi20(.LCPI0_10)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_10)
	pcalau12i	$a1, %pc_hi20(.LCPI0_11)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_11)
	vst	$vr0, $a0, 192
	vst	$vr1, $a0, 208
	vst	$vr2, $a0, 224
	vst	$vr3, $a0, 240
	pcalau12i	$a1, %pc_hi20(.LCPI0_12)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_12)
	pcalau12i	$a1, %pc_hi20(.LCPI0_13)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_13)
	pcalau12i	$a1, %pc_hi20(.LCPI0_14)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_14)
	pcalau12i	$a1, %pc_hi20(.LCPI0_15)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_15)
	vst	$vr0, $a0, 256
	vst	$vr1, $a0, 272
	vst	$vr2, $a0, 288
	vst	$vr3, $a0, 304
	pcalau12i	$a1, %pc_hi20(.LCPI0_16)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_16)
	pcalau12i	$a1, %pc_hi20(.LCPI0_17)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_17)
	pcalau12i	$a1, %pc_hi20(.LCPI0_18)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_18)
	pcalau12i	$a1, %pc_hi20(.LCPI0_19)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_19)
	vst	$vr0, $a0, 320
	vst	$vr1, $a0, 336
	vst	$vr2, $a0, 352
	vst	$vr3, $a0, 368
	pcalau12i	$a1, %pc_hi20(.LCPI0_20)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_20)
	pcalau12i	$a1, %pc_hi20(.LCPI0_21)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_21)
	pcalau12i	$a1, %pc_hi20(.LCPI0_22)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_22)
	pcalau12i	$a1, %pc_hi20(.LCPI0_23)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_23)
	vst	$vr0, $a0, 384
	vst	$vr1, $a0, 400
	vst	$vr2, $a0, 416
	vst	$vr3, $a0, 432
	pcalau12i	$a1, %pc_hi20(.LCPI0_24)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_24)
	pcalau12i	$a1, %pc_hi20(.LCPI0_25)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_25)
	pcalau12i	$a1, %pc_hi20(.LCPI0_26)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_26)
	pcalau12i	$a1, %pc_hi20(.LCPI0_27)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_27)
	vst	$vr0, $a0, 448
	vst	$vr1, $a0, 464
	vst	$vr2, $a0, 480
	vst	$vr3, $a0, 496
	ret
.Lfunc_end0:
	.size	Initialize_Reference_IDCT, .Lfunc_end0-Initialize_Reference_IDCT
                                        # -- End function
	.globl	Reference_IDCT                  # -- Begin function Reference_IDCT
	.p2align	5
	.type	Reference_IDCT,@function
Reference_IDCT:                         # @Reference_IDCT
# %bb.0:
	addi.d	$sp, $sp, -1328
	fst.d	$fs0, $sp, 1320                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1312                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1304                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1296                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1288                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1280                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1272                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1264                 # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(c)
	addi.d	$a1, $a1, %pc_lo12(c)
	move	$a2, $zero
	vld	$vr0, $a1, 0
	vst	$vr0, $sp, 736                  # 16-byte Folded Spill
	vld	$vr0, $a1, 64
	vst	$vr0, $sp, 720                  # 16-byte Folded Spill
	vld	$vr0, $a1, 128
	vst	$vr0, $sp, 704                  # 16-byte Folded Spill
	vld	$vr0, $a1, 192
	vst	$vr0, $sp, 688                  # 16-byte Folded Spill
	vld	$vr0, $a1, 256
	vst	$vr0, $sp, 672                  # 16-byte Folded Spill
	vld	$vr0, $a1, 320
	vst	$vr0, $sp, 656                  # 16-byte Folded Spill
	vld	$vr0, $a1, 384
	vst	$vr0, $sp, 640                  # 16-byte Folded Spill
	vld	$vr0, $a1, 448
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	vld	$vr0, $a1, 16
	vst	$vr0, $sp, 608                  # 16-byte Folded Spill
	vld	$vr0, $a1, 80
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	vld	$vr0, $a1, 144
	vst	$vr0, $sp, 576                  # 16-byte Folded Spill
	vld	$vr0, $a1, 208
	vst	$vr0, $sp, 560                  # 16-byte Folded Spill
	vld	$vr0, $a1, 272
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	vld	$vr0, $a1, 336
	vst	$vr0, $sp, 528                  # 16-byte Folded Spill
	vld	$vr0, $a1, 400
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	vld	$vr0, $a1, 464
	vst	$vr0, $sp, 496                  # 16-byte Folded Spill
	fld.d	$fa0, $a1, 32
	fst.d	$fa0, $sp, 480                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 96
	fst.d	$fa0, $sp, 464                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 160
	fst.d	$fa0, $sp, 448                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 224
	fst.d	$fa0, $sp, 432                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 288
	fst.d	$fa0, $sp, 416                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 352
	fst.d	$fa0, $sp, 400                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 416
	fst.d	$fa0, $sp, 384                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 480
	fst.d	$fa0, $sp, 368                  # 8-byte Folded Spill
	vld	$vr0, $a1, 40
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	vld	$vr0, $a1, 104
	vst	$vr0, $sp, 336                  # 16-byte Folded Spill
	vld	$vr0, $a1, 168
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	vld	$vr0, $a1, 232
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	vld	$vr29, $a1, 296
	vld	$vr30, $a1, 360
	vld	$vr31, $a1, 424
	vld	$vr1, $a1, 488
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 120
	fld.d	$fa4, $a1, 184
	fld.d	$fa5, $a1, 248
	fld.d	$fa6, $a1, 312
	fld.d	$fa7, $a1, 376
	fld.d	$ft0, $a1, 440
	fld.d	$ft1, $a1, 504
	addi.d	$a3, $a0, 8
	addi.d	$a4, $sp, 752
	ori	$a5, $zero, 512
	.p2align	4, , 16
.LBB1_1:                                # %.preheader41
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a3, -8
	ld.h	$a7, $a3, -6
	movgr2fr.w	$fa0, $a6
	ld.h	$a6, $a3, -4
	movgr2fr.w	$ft3, $a7
	ld.h	$a7, $a3, -2
	ld.h	$t0, $a3, 0
	movgr2fr.w	$ft4, $a6
	ld.h	$a6, $a3, 2
	movgr2fr.w	$ft5, $a7
	movgr2fr.w	$ft6, $t0
	ffint.d.w	$ft2, $fa0
	movgr2fr.w	$fa0, $a6
	ld.h	$a6, $a3, 4
	ffint.d.w	$ft3, $ft3
	ffint.d.w	$ft4, $ft4
	ffint.d.w	$ft5, $ft5
	movgr2fr.w	$ft7, $a6
	ld.h	$a6, $a3, 6
	ffint.d.w	$ft6, $ft6
	ffint.d.w	$ft8, $fa0
	ffint.d.w	$ft7, $ft7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$ft9, $fa0
	add.d	$a6, $a4, $a2
	vrepli.b	$vr0, 0
	vreplvei.d	$vr18, $vr10, 0
	vld	$vr19, $sp, 736                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr19, $vr18, $vr0
	vreplvei.d	$vr20, $vr11, 0
	vld	$vr21, $sp, 720                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr21, $vr20, $vr19
	vreplvei.d	$vr21, $vr12, 0
	vld	$vr22, $sp, 704                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr22, $vr21, $vr19
	vreplvei.d	$vr22, $vr13, 0
	vld	$vr23, $sp, 688                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr23, $vr22, $vr19
	vreplvei.d	$vr23, $vr14, 0
	vld	$vr24, $sp, 672                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr24, $vr23, $vr19
	vreplvei.d	$vr24, $vr16, 0
	vld	$vr25, $sp, 656                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr25, $vr24, $vr19
	vreplvei.d	$vr25, $vr15, 0
	vld	$vr26, $sp, 640                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr26, $vr25, $vr19
	vreplvei.d	$vr26, $vr17, 0
	vld	$vr27, $sp, 624                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr27, $vr26, $vr19
	vstx	$vr19, $a2, $a4
	vld	$vr19, $sp, 608                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr19, $vr18, $vr0
	vld	$vr27, $sp, 592                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr27, $vr20, $vr19
	vld	$vr27, $sp, 576                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr27, $vr21, $vr19
	vld	$vr27, $sp, 560                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr27, $vr22, $vr19
	vld	$vr27, $sp, 544                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr27, $vr23, $vr19
	vld	$vr27, $sp, 528                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr27, $vr24, $vr19
	vld	$vr27, $sp, 512                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr27, $vr25, $vr19
	vld	$vr27, $sp, 496                 # 16-byte Folded Reload
	vfmadd.d	$vr19, $vr27, $vr26, $vr19
	vst	$vr19, $a6, 16
	movgr2fr.d	$ft11, $zero
	fld.d	$fs3, $sp, 480                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs3, $ft2, $ft11
	fld.d	$fs4, $sp, 464                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs4, $ft3, $fs3
	fld.d	$fs4, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs4, $ft4, $fs3
	fld.d	$fs4, $sp, 432                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs4, $ft5, $fs3
	fld.d	$fs4, $sp, 416                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs4, $ft6, $fs3
	fld.d	$fs4, $sp, 400                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs4, $ft8, $fs3
	fld.d	$fs4, $sp, 384                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs4, $ft7, $fs3
	fld.d	$fs4, $sp, 368                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs4, $ft9, $fs3
	fst.d	$fs3, $a6, 32
	vld	$vr27, $sp, 352                 # 16-byte Folded Reload
	vfmadd.d	$vr18, $vr27, $vr18, $vr0
	vld	$vr27, $sp, 336                 # 16-byte Folded Reload
	vfmadd.d	$vr18, $vr27, $vr20, $vr18
	vld	$vr20, $sp, 320                 # 16-byte Folded Reload
	vfmadd.d	$vr18, $vr20, $vr21, $vr18
	vld	$vr20, $sp, 304                 # 16-byte Folded Reload
	vfmadd.d	$vr18, $vr20, $vr22, $vr18
	vfmadd.d	$vr18, $vr29, $vr23, $vr18
	vfmadd.d	$vr18, $vr30, $vr24, $vr18
	vfmadd.d	$vr18, $vr31, $vr25, $vr18
	vfmadd.d	$vr18, $vr1, $vr26, $vr18
	vst	$vr18, $a6, 40
	fmadd.d	$ft2, $fa2, $ft2, $ft11
	fmadd.d	$ft2, $fa3, $ft3, $ft2
	fmadd.d	$ft2, $fa4, $ft4, $ft2
	fmadd.d	$ft2, $fa5, $ft5, $ft2
	fmadd.d	$ft2, $fa6, $ft6, $ft2
	fmadd.d	$ft2, $fa7, $ft8, $ft2
	fmadd.d	$ft2, $ft0, $ft7, $ft2
	fmadd.d	$ft2, $ft1, $ft9, $ft2
	fst.d	$ft2, $a6, 56
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 16
	bne	$a2, $a5, .LBB1_1
# %bb.2:                                # %vector.ph
	vld	$vr1, $a1, 472
	vst	$vr1, $sp, 240                  # 16-byte Folded Spill
	vld	$vr2, $a1, 408
	vld	$vr3, $a1, 344
	vld	$vr4, $a1, 280
	vld	$vr5, $a1, 216
	vld	$vr6, $a1, 152
	vld	$vr7, $a1, 88
	vld	$vr8, $a1, 24
	vld	$vr9, $a1, 464
	vld	$vr10, $a1, 400
	vld	$vr11, $a1, 336
	vld	$vr12, $a1, 272
	vld	$vr13, $a1, 208
	vld	$vr14, $a1, 144
	vld	$vr15, $a1, 80
	vld	$vr16, $a1, 16
	vld	$vr17, $a1, 456
	vld	$vr18, $a1, 392
	vld	$vr19, $a1, 328
	vld	$vr20, $a1, 264
	vld	$vr21, $a1, 200
	vld	$vr22, $a1, 136
	vld	$vr23, $a1, 72
	vld	$vr24, $a1, 8
	vld	$vr25, $a1, 448
	vld	$vr26, $a1, 384
	vld	$vr27, $a1, 320
	vld	$vr28, $a1, 256
	vld	$vr29, $a1, 0
	vld	$vr30, $a1, 64
	vld	$vr31, $a1, 128
	vld	$vr1, $a1, 192
	vreplvei.d	$vr29, $vr29, 0
	vst	$vr29, $sp, 736                 # 16-byte Folded Spill
	vreplvei.d	$vr29, $vr30, 0
	vst	$vr29, $sp, 720                 # 16-byte Folded Spill
	vreplvei.d	$vr29, $vr31, 0
	vst	$vr29, $sp, 704                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr1, 0
	vst	$vr1, $sp, 688                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr28, 0
	vst	$vr1, $sp, 672                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr27, 0
	vst	$vr1, $sp, 656                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr26, 0
	vst	$vr1, $sp, 640                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr25, 0
	vst	$vr1, $sp, 624                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr24, 0
	vst	$vr1, $sp, 608                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr23, 0
	vst	$vr1, $sp, 592                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr22, 0
	vst	$vr1, $sp, 576                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr21, 0
	vst	$vr1, $sp, 560                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr20, 0
	vst	$vr1, $sp, 544                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr19, 0
	vst	$vr1, $sp, 528                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr18, 0
	vst	$vr1, $sp, 512                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr17, 0
	vst	$vr1, $sp, 496                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr16, 0
	vst	$vr1, $sp, 480                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr15, 0
	vst	$vr1, $sp, 464                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr14, 0
	vst	$vr1, $sp, 448                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr13, 0
	vst	$vr1, $sp, 432                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr12, 0
	vst	$vr1, $sp, 416                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr11, 0
	vst	$vr1, $sp, 400                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr10, 0
	vst	$vr1, $sp, 384                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr9, 0
	vst	$vr1, $sp, 368                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr8, 0
	vst	$vr1, $sp, 352                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr7, 0
	vst	$vr1, $sp, 336                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr6, 0
	vst	$vr1, $sp, 320                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr5, 0
	vst	$vr1, $sp, 304                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr4, 0
	vst	$vr1, $sp, 288                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr3, 0
	vst	$vr1, $sp, 272                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr2, 0
	vst	$vr1, $sp, 256                  # 16-byte Folded Spill
	vld	$vr1, $a1, 32
	vld	$vr2, $a1, 96
	vld	$vr3, $a1, 160
	vld	$vr4, $sp, 240                  # 16-byte Folded Reload
	vreplvei.d	$vr4, $vr4, 0
	vst	$vr4, $sp, 240                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr1, 0
	vst	$vr1, $sp, 224                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr2, 0
	vst	$vr1, $sp, 208                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr3, 0
	vst	$vr1, $sp, 192                  # 16-byte Folded Spill
	vld	$vr1, $a1, 224
	vld	$vr2, $a1, 288
	vld	$vr3, $a1, 352
	vld	$vr4, $a1, 416
	vreplvei.d	$vr1, $vr1, 0
	vst	$vr1, $sp, 176                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr2, 0
	vst	$vr1, $sp, 160                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr3, 0
	vst	$vr1, $sp, 144                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr4, 0
	vst	$vr1, $sp, 128                  # 16-byte Folded Spill
	vld	$vr1, $a1, 480
	vld	$vr2, $a1, 40
	vld	$vr3, $a1, 104
	vld	$vr4, $a1, 168
	vreplvei.d	$vr1, $vr1, 0
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr2, 0
	vst	$vr1, $sp, 96                   # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr3, 0
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr4, 0
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	vld	$vr1, $a1, 232
	vld	$vr2, $a1, 296
	vld	$vr3, $a1, 360
	vld	$vr4, $a1, 424
	vreplvei.d	$vr1, $vr1, 0
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr2, 0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr3, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vreplvei.d	$vr16, $vr4, 0
	vld	$vr1, $a1, 488
	vld	$vr2, $a1, 48
	vld	$vr3, $a1, 112
	vld	$vr4, $a1, 176
	vreplvei.d	$vr17, $vr1, 0
	vreplvei.d	$vr18, $vr2, 0
	vreplvei.d	$vr19, $vr3, 0
	vreplvei.d	$vr20, $vr4, 0
	vld	$vr1, $a1, 240
	vld	$vr2, $a1, 304
	vld	$vr3, $a1, 368
	vld	$vr4, $a1, 432
	vreplvei.d	$vr21, $vr1, 0
	vreplvei.d	$vr22, $vr2, 0
	vreplvei.d	$vr23, $vr3, 0
	vreplvei.d	$vr24, $vr4, 0
	vld	$vr1, $a1, 496
	vld	$vr2, $a1, 56
	vld	$vr3, $a1, 120
	vld	$vr4, $a1, 184
	vreplvei.d	$vr25, $vr1, 0
	vreplvei.d	$vr26, $vr2, 0
	vreplvei.d	$vr27, $vr3, 0
	vreplvei.d	$vr28, $vr4, 0
	vld	$vr1, $a1, 248
	vld	$vr2, $a1, 312
	vld	$vr3, $a1, 376
	vld	$vr4, $a1, 440
	vreplvei.d	$vr29, $vr1, 0
	vreplvei.d	$vr30, $vr2, 0
	vreplvei.d	$vr31, $vr3, 0
	vreplvei.d	$vr1, $vr4, 0
	addi.d	$a2, $sp, 1008
	vldrepl.d	$vr2, $a1, 504
	addi.d	$a0, $a0, 112
	addi.w	$a1, $zero, -16
	lu52i.d	$a3, $zero, 1022
	.p2align	4, , 16
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a2, -256
	vld	$vr4, $a2, -192
	vld	$vr5, $a2, -128
	vld	$vr6, $a2, -64
	vld	$vr7, $sp, 736                  # 16-byte Folded Reload
	vfmadd.d	$vr7, $vr7, $vr3, $vr0
	vld	$vr8, $sp, 720                  # 16-byte Folded Reload
	vfmadd.d	$vr7, $vr8, $vr4, $vr7
	vld	$vr8, $sp, 704                  # 16-byte Folded Reload
	vfmadd.d	$vr7, $vr8, $vr5, $vr7
	vld	$vr8, $sp, 688                  # 16-byte Folded Reload
	vfmadd.d	$vr11, $vr8, $vr6, $vr7
	vld	$vr7, $a2, 0
	vld	$vr8, $a2, 64
	vld	$vr9, $a2, 128
	vld	$vr10, $a2, 192
	vld	$vr12, $sp, 672                 # 16-byte Folded Reload
	vfmadd.d	$vr11, $vr12, $vr7, $vr11
	vld	$vr12, $sp, 656                 # 16-byte Folded Reload
	vfmadd.d	$vr11, $vr12, $vr8, $vr11
	vld	$vr12, $sp, 640                 # 16-byte Folded Reload
	vfmadd.d	$vr11, $vr12, $vr9, $vr11
	vld	$vr12, $sp, 624                 # 16-byte Folded Reload
	vfmadd.d	$vr11, $vr12, $vr10, $vr11
	vreplgr2vr.d	$vr13, $a3
	vfadd.d	$vr11, $vr11, $vr13
	vreplvei.d	$vr12, $vr11, 1
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	vreplvei.d	$vr11, $vr11, 0
	vreplvei.d	$vr11, $vr11, 0
	vfrintrm.d	$vr11, $vr11
	ftintrz.w.d	$ft3, $ft3
	movfr2gr.s	$a4, $ft3
	vinsgr2vr.w	$vr14, $a4, 0
	ftintrz.w.d	$ft3, $ft4
	movfr2gr.s	$a4, $ft3
	vinsgr2vr.w	$vr14, $a4, 1
	vrepli.w	$vr11, -256
	vmax.w	$vr14, $vr14, $vr11
	vrepli.w	$vr12, 255
	vmin.w	$vr14, $vr14, $vr12
	vshuf4i.h	$vr14, $vr14, 8
	add.d	$a4, $a0, $a1
	vstelm.w	$vr14, $a4, -96, 0
	vld	$vr14, $sp, 608                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr14, $vr3, $vr0
	vld	$vr15, $sp, 592                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr4, $vr14
	vld	$vr15, $sp, 576                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr5, $vr14
	vld	$vr15, $sp, 560                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr6, $vr14
	vld	$vr15, $sp, 544                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr7, $vr14
	vld	$vr15, $sp, 528                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr8, $vr14
	vld	$vr15, $sp, 512                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr9, $vr14
	vld	$vr15, $sp, 496                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr10, $vr14
	vfadd.d	$vr14, $vr14, $vr13
	vreplvei.d	$vr15, $vr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	vreplvei.d	$vr14, $vr14, 0
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	ftintrz.w.d	$ft6, $ft6
	movfr2gr.s	$a5, $ft6
	vinsgr2vr.w	$vr14, $a5, 0
	ftintrz.w.d	$ft7, $ft7
	movfr2gr.s	$a5, $ft7
	vinsgr2vr.w	$vr14, $a5, 1
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vshuf4i.h	$vr14, $vr14, 8
	vstelm.w	$vr14, $a4, -80, 0
	vld	$vr14, $sp, 480                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr14, $vr3, $vr0
	vld	$vr15, $sp, 464                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr4, $vr14
	vld	$vr15, $sp, 448                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr5, $vr14
	vld	$vr15, $sp, 432                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr6, $vr14
	vld	$vr15, $sp, 416                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr7, $vr14
	vld	$vr15, $sp, 400                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr8, $vr14
	vld	$vr15, $sp, 384                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr9, $vr14
	vld	$vr15, $sp, 368                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr10, $vr14
	vfadd.d	$vr14, $vr14, $vr13
	vreplvei.d	$vr15, $vr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	vreplvei.d	$vr14, $vr14, 0
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	ftintrz.w.d	$ft6, $ft6
	movfr2gr.s	$a5, $ft6
	vinsgr2vr.w	$vr14, $a5, 0
	ftintrz.w.d	$ft7, $ft7
	movfr2gr.s	$a5, $ft7
	vinsgr2vr.w	$vr14, $a5, 1
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vshuf4i.h	$vr14, $vr14, 8
	vstelm.w	$vr14, $a4, -64, 0
	vld	$vr14, $sp, 352                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr14, $vr3, $vr0
	vld	$vr15, $sp, 336                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr4, $vr14
	vld	$vr15, $sp, 320                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr5, $vr14
	vld	$vr15, $sp, 304                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr6, $vr14
	vld	$vr15, $sp, 288                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr7, $vr14
	vld	$vr15, $sp, 272                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr8, $vr14
	vld	$vr15, $sp, 256                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr9, $vr14
	vld	$vr15, $sp, 240                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr10, $vr14
	vfadd.d	$vr14, $vr14, $vr13
	vreplvei.d	$vr15, $vr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	vreplvei.d	$vr14, $vr14, 0
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	ftintrz.w.d	$ft6, $ft6
	movfr2gr.s	$a5, $ft6
	vinsgr2vr.w	$vr14, $a5, 0
	ftintrz.w.d	$ft7, $ft7
	movfr2gr.s	$a5, $ft7
	vinsgr2vr.w	$vr14, $a5, 1
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vshuf4i.h	$vr14, $vr14, 8
	vstelm.w	$vr14, $a4, -48, 0
	vld	$vr14, $sp, 224                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr14, $vr3, $vr0
	vld	$vr15, $sp, 208                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr4, $vr14
	vld	$vr15, $sp, 192                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr5, $vr14
	vld	$vr15, $sp, 176                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr6, $vr14
	vld	$vr15, $sp, 160                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr7, $vr14
	vld	$vr15, $sp, 144                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr8, $vr14
	vld	$vr15, $sp, 128                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr9, $vr14
	vld	$vr15, $sp, 112                 # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr10, $vr14
	vfadd.d	$vr14, $vr14, $vr13
	vreplvei.d	$vr15, $vr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	vreplvei.d	$vr14, $vr14, 0
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	ftintrz.w.d	$ft6, $ft6
	movfr2gr.s	$a5, $ft6
	vinsgr2vr.w	$vr14, $a5, 0
	ftintrz.w.d	$ft7, $ft7
	movfr2gr.s	$a5, $ft7
	vinsgr2vr.w	$vr14, $a5, 1
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vshuf4i.h	$vr14, $vr14, 8
	vstelm.w	$vr14, $a4, -32, 0
	vld	$vr14, $sp, 96                  # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr14, $vr3, $vr0
	vld	$vr15, $sp, 80                  # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr4, $vr14
	vld	$vr15, $sp, 64                  # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr5, $vr14
	vld	$vr15, $sp, 48                  # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr6, $vr14
	vld	$vr15, $sp, 32                  # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr7, $vr14
	vld	$vr15, $sp, 16                  # 16-byte Folded Reload
	vfmadd.d	$vr14, $vr15, $vr8, $vr14
	vfmadd.d	$vr14, $vr16, $vr9, $vr14
	vfmadd.d	$vr14, $vr17, $vr10, $vr14
	vfadd.d	$vr14, $vr14, $vr13
	vreplvei.d	$vr15, $vr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	vreplvei.d	$vr14, $vr14, 0
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	ftintrz.w.d	$ft6, $ft6
	movfr2gr.s	$a5, $ft6
	vinsgr2vr.w	$vr14, $a5, 0
	ftintrz.w.d	$ft7, $ft7
	movfr2gr.s	$a5, $ft7
	vinsgr2vr.w	$vr14, $a5, 1
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vshuf4i.h	$vr14, $vr14, 8
	vstelm.w	$vr14, $a4, -16, 0
	vfmadd.d	$vr14, $vr18, $vr3, $vr0
	vfmadd.d	$vr14, $vr19, $vr4, $vr14
	vfmadd.d	$vr14, $vr20, $vr5, $vr14
	vfmadd.d	$vr14, $vr21, $vr6, $vr14
	vfmadd.d	$vr14, $vr22, $vr7, $vr14
	vfmadd.d	$vr14, $vr23, $vr8, $vr14
	vfmadd.d	$vr14, $vr24, $vr9, $vr14
	vfmadd.d	$vr14, $vr25, $vr10, $vr14
	vfadd.d	$vr14, $vr14, $vr13
	vreplvei.d	$vr15, $vr14, 0
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	ftintrz.w.d	$ft7, $ft7
	movfr2gr.s	$a5, $ft7
	vreplvei.d	$vr14, $vr14, 1
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	ftintrz.w.d	$ft6, $ft6
	movfr2gr.s	$a6, $ft6
	vinsgr2vr.w	$vr14, $a5, 0
	vinsgr2vr.w	$vr14, $a6, 1
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vshuf4i.h	$vr14, $vr14, 8
	vstelm.w	$vr14, $a4, 0, 0
	vfmadd.d	$vr3, $vr26, $vr3, $vr0
	vfmadd.d	$vr3, $vr27, $vr4, $vr3
	vfmadd.d	$vr3, $vr28, $vr5, $vr3
	vfmadd.d	$vr3, $vr29, $vr6, $vr3
	vfmadd.d	$vr3, $vr30, $vr7, $vr3
	vfmadd.d	$vr3, $vr31, $vr8, $vr3
	vfmadd.d	$vr3, $vr1, $vr9, $vr3
	vfmadd.d	$vr3, $vr2, $vr10, $vr3
	vfadd.d	$vr3, $vr3, $vr13
	vreplvei.d	$vr4, $vr3, 0
	vreplvei.d	$vr4, $vr4, 0
	vfrintrm.d	$vr4, $vr4
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a5, $fa4
	vreplvei.d	$vr3, $vr3, 1
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a6, $fa3
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vmax.w	$vr3, $vr3, $vr11
	vmin.w	$vr3, $vr3, $vr12
	vshuf4i.h	$vr3, $vr3, 8
	vstelm.w	$vr3, $a4, 16, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB1_3
# %bb.4:                                # %middle.block
	fld.d	$fs7, $sp, 1264                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1272                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1280                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1288                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1296                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1304                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1312                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1320                 # 8-byte Folded Reload
	addi.d	$sp, $sp, 1328
	ret
.Lfunc_end1:
	.size	Reference_IDCT, .Lfunc_end1-Reference_IDCT
                                        # -- End function
	.type	c,@object                       # @c
	.local	c
	.comm	c,512,16
	.section	".note.GNU-stack","",@progbits
	.addrsig
