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
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 64
	fst.d	$fa0, $sp, 720                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 128
	fst.d	$fa0, $sp, 704                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 192
	fst.d	$fa0, $sp, 688                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 256
	fst.d	$fa0, $sp, 672                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 320
	fst.d	$fa0, $sp, 656                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 384
	fst.d	$fa0, $sp, 640                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 448
	fst.d	$fa0, $sp, 624                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 8
	fst.d	$fa0, $sp, 608                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 72
	fst.d	$fa0, $sp, 592                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 136
	fst.d	$fa0, $sp, 576                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 200
	fst.d	$fa0, $sp, 560                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 264
	fst.d	$fa0, $sp, 544                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 328
	fst.d	$fa0, $sp, 528                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 392
	fst.d	$fa0, $sp, 512                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 456
	fst.d	$fa0, $sp, 496                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 16
	fst.d	$fa0, $sp, 480                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 80
	fst.d	$fa0, $sp, 464                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 144
	fst.d	$fa0, $sp, 448                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 208
	fst.d	$fa0, $sp, 432                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 272
	fst.d	$fa0, $sp, 416                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 336
	fst.d	$fa0, $sp, 400                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 400
	fst.d	$fa0, $sp, 384                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 464
	fst.d	$fa0, $sp, 368                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 24
	fst.d	$fa0, $sp, 352                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 88
	fst.d	$fa0, $sp, 336                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 152
	fst.d	$fa0, $sp, 320                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 216
	fst.d	$fa0, $sp, 304                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 280
	fst.d	$fa0, $sp, 288                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 344
	fst.d	$fa0, $sp, 272                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 408
	fst.d	$fa0, $sp, 256                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 472
	fst.d	$fa0, $sp, 240                  # 8-byte Folded Spill
	addi.d	$a3, $sp, 784
	fld.d	$fa0, $a1, 32
	fst.d	$fa0, $sp, 224                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 96
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 160
	fst.d	$fa0, $sp, 192                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 224
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 288
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 352
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 416
	fst.d	$fa0, $sp, 128                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 480
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 40
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fld.d	$fa0, $a1, 104
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fld.d	$fa0, $a1, 168
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	fld.d	$ft3, $a1, 232
	fld.d	$ft4, $a1, 296
	fld.d	$ft5, $a1, 360
	fld.d	$ft6, $a1, 424
	fld.d	$ft7, $a1, 488
	fld.d	$ft8, $a1, 48
	fld.d	$ft9, $a1, 112
	fld.d	$ft10, $a1, 176
	fld.d	$ft11, $a1, 240
	fld.d	$ft12, $a1, 304
	fld.d	$ft13, $a1, 368
	fld.d	$ft14, $a1, 432
	fld.d	$ft15, $a1, 496
	fld.d	$fs0, $a1, 56
	fld.d	$fs1, $a1, 120
	fld.d	$fs2, $a1, 184
	fld.d	$fs3, $a1, 248
	fld.d	$fs4, $a1, 312
	fld.d	$fs5, $a1, 376
	fld.d	$fs6, $a1, 440
	fld.d	$fs7, $a1, 504
	addi.d	$a4, $a0, 8
	addi.d	$a5, $sp, 752
	ori	$a6, $zero, 512
	movgr2fr.d	$fa1, $zero
	.p2align	4, , 16
.LBB1_1:                                # %.preheader41
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a7, $a4, -8
	ld.h	$t0, $a4, -6
	ld.h	$t1, $a4, -4
	movgr2fr.w	$fa0, $a7
	movgr2fr.w	$fa2, $t0
	movgr2fr.w	$fa3, $t1
	ld.h	$a7, $a4, -2
	ffint.d.w	$fa0, $fa0
	fld.d	$fa4, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa4, $fa0, $fa1
	movgr2fr.w	$fa5, $a7
	ld.h	$a7, $a4, 0
	ffint.d.w	$fa2, $fa2
	fld.d	$fa6, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa6, $fa2, $fa4
	ffint.d.w	$fa3, $fa3
	movgr2fr.w	$fa6, $a7
	ld.h	$a7, $a4, 2
	fld.d	$fa7, $sp, 704                  # 8-byte Folded Reload
	fmadd.d	$fa7, $fa7, $fa3, $fa4
	ffint.d.w	$fa4, $fa5
	fld.d	$fa5, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa7, $fa5, $fa4, $fa7
	movgr2fr.w	$ft0, $a7
	ld.h	$a7, $a4, 4
	ffint.d.w	$fa5, $fa6
	fld.d	$fa6, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$fa7, $fa6, $fa5, $fa7
	ffint.d.w	$fa6, $ft0
	movgr2fr.w	$ft0, $a7
	ld.h	$a7, $a4, 6
	fld.d	$ft1, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa6, $fa7
	ffint.d.w	$fa7, $ft0
	fld.d	$ft0, $sp, 640                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft0, $fa7, $ft1
	movgr2fr.w	$ft0, $a7
	ffint.d.w	$ft0, $ft0
	fld.d	$ft2, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fstx.d	$ft1, $a2, $a5
	fld.d	$ft1, $sp, 608                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa0, $fa1
	fld.d	$ft2, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 560                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa5, $ft1
	fld.d	$ft2, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 496                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	add.d	$a7, $a3, $a2
	fst.d	$ft1, $a7, -24
	fld.d	$ft1, $sp, 480                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa0, $fa1
	fld.d	$ft2, $sp, 464                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 432                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 416                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa5, $ft1
	fld.d	$ft2, $sp, 400                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 384                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 368                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fst.d	$ft1, $a7, -16
	fld.d	$ft1, $sp, 352                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa0, $fa1
	fld.d	$ft2, $sp, 336                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 320                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 304                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 288                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa5, $ft1
	fld.d	$ft2, $sp, 272                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 256                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 240                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fst.d	$ft1, $a7, -8
	fld.d	$ft1, $sp, 224                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa0, $fa1
	fld.d	$ft2, $sp, 208                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 192                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 176                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 160                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa5, $ft1
	fld.d	$ft2, $sp, 144                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 128                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fstx.d	$ft1, $a3, $a2
	fld.d	$ft1, $sp, 96                   # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa0, $fa1
	fld.d	$ft2, $sp, 80                   # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 64                   # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fmadd.d	$ft1, $ft3, $fa4, $ft1
	fmadd.d	$ft1, $ft4, $fa5, $ft1
	fmadd.d	$ft1, $ft5, $fa6, $ft1
	fmadd.d	$ft1, $ft6, $fa7, $ft1
	fmadd.d	$ft1, $ft7, $ft0, $ft1
	fst.d	$ft1, $a7, 8
	fmadd.d	$ft1, $ft8, $fa0, $fa1
	fmadd.d	$ft1, $ft9, $fa2, $ft1
	fmadd.d	$ft1, $ft10, $fa3, $ft1
	fmadd.d	$ft1, $ft11, $fa4, $ft1
	fmadd.d	$ft1, $ft12, $fa5, $ft1
	fmadd.d	$ft1, $ft13, $fa6, $ft1
	fmadd.d	$ft1, $ft14, $fa7, $ft1
	fmadd.d	$ft1, $ft15, $ft0, $ft1
	fst.d	$ft1, $a7, 16
	fmadd.d	$fa0, $fs0, $fa0, $fa1
	fmadd.d	$fa0, $fs1, $fa2, $fa0
	fmadd.d	$fa0, $fs2, $fa3, $fa0
	fmadd.d	$fa0, $fs3, $fa4, $fa0
	fmadd.d	$fa0, $fs4, $fa5, $fa0
	fmadd.d	$fa0, $fs5, $fa6, $fa0
	fmadd.d	$fa0, $fs6, $fa7, $fa0
	fmadd.d	$fa0, $fs7, $ft0, $fa0
	fst.d	$fa0, $a7, 24
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, 16
	bne	$a2, $a6, .LBB1_1
# %bb.2:                                # %vector.ph
	vld	$vr0, $a1, 472
	vld	$vr1, $a1, 408
	vld	$vr2, $a1, 344
	vld	$vr3, $a1, 280
	vld	$vr4, $a1, 216
	vld	$vr5, $a1, 152
	vld	$vr6, $a1, 88
	vld	$vr7, $a1, 24
	vld	$vr8, $a1, 464
	vld	$vr9, $a1, 400
	vld	$vr10, $a1, 336
	vld	$vr11, $a1, 272
	vld	$vr12, $a1, 208
	vld	$vr13, $a1, 144
	vld	$vr14, $a1, 80
	vld	$vr15, $a1, 16
	vld	$vr16, $a1, 456
	vld	$vr17, $a1, 392
	vld	$vr18, $a1, 328
	vld	$vr19, $a1, 264
	vld	$vr20, $a1, 200
	vld	$vr21, $a1, 136
	vld	$vr22, $a1, 72
	vld	$vr23, $a1, 8
	vld	$vr24, $a1, 448
	vld	$vr25, $a1, 384
	vld	$vr26, $a1, 320
	vld	$vr27, $a1, 256
	vld	$vr28, $a1, 0
	vld	$vr29, $a1, 64
	vld	$vr30, $a1, 128
	vld	$vr31, $a1, 192
	vreplvei.d	$vr28, $vr28, 0
	vst	$vr28, $sp, 736                 # 16-byte Folded Spill
	vreplvei.d	$vr28, $vr29, 0
	vst	$vr28, $sp, 720                 # 16-byte Folded Spill
	vreplvei.d	$vr28, $vr30, 0
	vst	$vr28, $sp, 704                 # 16-byte Folded Spill
	vreplvei.d	$vr28, $vr31, 0
	vst	$vr28, $sp, 688                 # 16-byte Folded Spill
	vreplvei.d	$vr27, $vr27, 0
	vst	$vr27, $sp, 672                 # 16-byte Folded Spill
	vreplvei.d	$vr26, $vr26, 0
	vst	$vr26, $sp, 656                 # 16-byte Folded Spill
	vreplvei.d	$vr25, $vr25, 0
	vst	$vr25, $sp, 640                 # 16-byte Folded Spill
	vreplvei.d	$vr24, $vr24, 0
	vst	$vr24, $sp, 624                 # 16-byte Folded Spill
	vreplvei.d	$vr23, $vr23, 0
	vst	$vr23, $sp, 608                 # 16-byte Folded Spill
	vreplvei.d	$vr22, $vr22, 0
	vst	$vr22, $sp, 592                 # 16-byte Folded Spill
	vreplvei.d	$vr21, $vr21, 0
	vst	$vr21, $sp, 576                 # 16-byte Folded Spill
	vreplvei.d	$vr20, $vr20, 0
	vst	$vr20, $sp, 560                 # 16-byte Folded Spill
	vreplvei.d	$vr19, $vr19, 0
	vst	$vr19, $sp, 544                 # 16-byte Folded Spill
	vreplvei.d	$vr18, $vr18, 0
	vst	$vr18, $sp, 528                 # 16-byte Folded Spill
	vreplvei.d	$vr17, $vr17, 0
	vst	$vr17, $sp, 512                 # 16-byte Folded Spill
	vreplvei.d	$vr16, $vr16, 0
	vst	$vr16, $sp, 496                 # 16-byte Folded Spill
	vreplvei.d	$vr15, $vr15, 0
	vst	$vr15, $sp, 480                 # 16-byte Folded Spill
	vreplvei.d	$vr14, $vr14, 0
	vst	$vr14, $sp, 464                 # 16-byte Folded Spill
	vreplvei.d	$vr13, $vr13, 0
	vst	$vr13, $sp, 448                 # 16-byte Folded Spill
	vreplvei.d	$vr12, $vr12, 0
	vst	$vr12, $sp, 432                 # 16-byte Folded Spill
	vreplvei.d	$vr11, $vr11, 0
	vst	$vr11, $sp, 416                 # 16-byte Folded Spill
	vreplvei.d	$vr10, $vr10, 0
	vst	$vr10, $sp, 400                 # 16-byte Folded Spill
	vreplvei.d	$vr9, $vr9, 0
	vst	$vr9, $sp, 384                  # 16-byte Folded Spill
	vreplvei.d	$vr8, $vr8, 0
	vst	$vr8, $sp, 368                  # 16-byte Folded Spill
	vreplvei.d	$vr7, $vr7, 0
	vst	$vr7, $sp, 352                  # 16-byte Folded Spill
	vreplvei.d	$vr6, $vr6, 0
	vst	$vr6, $sp, 336                  # 16-byte Folded Spill
	vreplvei.d	$vr5, $vr5, 0
	vst	$vr5, $sp, 320                  # 16-byte Folded Spill
	vreplvei.d	$vr4, $vr4, 0
	vst	$vr4, $sp, 304                  # 16-byte Folded Spill
	vreplvei.d	$vr3, $vr3, 0
	vst	$vr3, $sp, 288                  # 16-byte Folded Spill
	vreplvei.d	$vr2, $vr2, 0
	vst	$vr2, $sp, 272                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr1, 0
	vst	$vr1, $sp, 256                  # 16-byte Folded Spill
	vld	$vr1, $a1, 32
	vld	$vr2, $a1, 96
	vld	$vr3, $a1, 160
	vreplvei.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr1, 0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr2, 0
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr3, 0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	vld	$vr0, $a1, 224
	vld	$vr1, $a1, 288
	vld	$vr2, $a1, 352
	vld	$vr3, $a1, 416
	vreplvei.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr1, 0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr2, 0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr3, 0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	vld	$vr0, $a1, 480
	vld	$vr1, $a1, 40
	vld	$vr2, $a1, 104
	vld	$vr3, $a1, 168
	vreplvei.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr1, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr2, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr3, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vld	$vr0, $a1, 232
	vld	$vr1, $a1, 296
	vld	$vr2, $a1, 360
	vld	$vr3, $a1, 424
	vreplvei.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr1, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr2, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vreplvei.d	$vr14, $vr3, 0
	vld	$vr0, $a1, 488
	vld	$vr1, $a1, 48
	vld	$vr2, $a1, 112
	vld	$vr3, $a1, 176
	vreplvei.d	$vr15, $vr0, 0
	vreplvei.d	$vr16, $vr1, 0
	vreplvei.d	$vr17, $vr2, 0
	vreplvei.d	$vr18, $vr3, 0
	vld	$vr0, $a1, 240
	vld	$vr1, $a1, 304
	vld	$vr2, $a1, 368
	vld	$vr3, $a1, 432
	vreplvei.d	$vr19, $vr0, 0
	vreplvei.d	$vr20, $vr1, 0
	vreplvei.d	$vr21, $vr2, 0
	vreplvei.d	$vr22, $vr3, 0
	vld	$vr0, $a1, 496
	vld	$vr1, $a1, 56
	vld	$vr2, $a1, 120
	vld	$vr3, $a1, 184
	vreplvei.d	$vr23, $vr0, 0
	vreplvei.d	$vr24, $vr1, 0
	vreplvei.d	$vr25, $vr2, 0
	vreplvei.d	$vr26, $vr3, 0
	vld	$vr0, $a1, 248
	vld	$vr1, $a1, 312
	vld	$vr2, $a1, 376
	vld	$vr3, $a1, 440
	vreplvei.d	$vr27, $vr0, 0
	vreplvei.d	$vr28, $vr1, 0
	vreplvei.d	$vr29, $vr2, 0
	vreplvei.d	$vr30, $vr3, 0
	addi.d	$a2, $sp, 1008
	vldrepl.d	$vr31, $a1, 504
	addi.d	$a0, $a0, 112
	addi.w	$a1, $zero, -16
	lu52i.d	$a3, $zero, 1022
	.p2align	4, , 16
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -256
	vrepli.b	$vr1, 0
	vld	$vr2, $a2, -192
	vld	$vr3, $a2, -128
	vld	$vr4, $a2, -64
	vld	$vr5, $sp, 736                  # 16-byte Folded Reload
	vfmadd.d	$vr5, $vr5, $vr0, $vr1
	vld	$vr6, $sp, 720                  # 16-byte Folded Reload
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vld	$vr6, $sp, 704                  # 16-byte Folded Reload
	vfmadd.d	$vr5, $vr6, $vr3, $vr5
	vld	$vr6, $sp, 688                  # 16-byte Folded Reload
	vfmadd.d	$vr9, $vr6, $vr4, $vr5
	vld	$vr5, $a2, 0
	vld	$vr6, $a2, 64
	vld	$vr7, $a2, 128
	vld	$vr8, $a2, 192
	vld	$vr10, $sp, 672                 # 16-byte Folded Reload
	vfmadd.d	$vr9, $vr10, $vr5, $vr9
	vld	$vr10, $sp, 656                 # 16-byte Folded Reload
	vfmadd.d	$vr9, $vr10, $vr6, $vr9
	vld	$vr10, $sp, 640                 # 16-byte Folded Reload
	vfmadd.d	$vr9, $vr10, $vr7, $vr9
	vld	$vr10, $sp, 624                 # 16-byte Folded Reload
	vfmadd.d	$vr9, $vr10, $vr8, $vr9
	vreplgr2vr.d	$vr11, $a3
	vfadd.d	$vr9, $vr9, $vr11
	vreplvei.d	$vr10, $vr9, 1
	vreplvei.d	$vr10, $vr10, 0
	vfrintrm.d	$vr10, $vr10
	vreplvei.d	$vr9, $vr9, 0
	vreplvei.d	$vr9, $vr9, 0
	vfrintrm.d	$vr9, $vr9
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$a4, $ft1
	vinsgr2vr.w	$vr12, $a4, 0
	ftintrz.w.d	$ft1, $ft2
	movfr2gr.s	$a4, $ft1
	vinsgr2vr.w	$vr12, $a4, 1
	vrepli.w	$vr9, -256
	vmax.w	$vr12, $vr12, $vr9
	vrepli.w	$vr10, 255
	vmin.w	$vr12, $vr12, $vr10
	vshuf4i.h	$vr12, $vr12, 8
	add.d	$a4, $a0, $a1
	vstelm.w	$vr12, $a4, -96, 0
	vld	$vr12, $sp, 608                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr12, $vr0, $vr1
	vld	$vr13, $sp, 592                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr2, $vr12
	vld	$vr13, $sp, 576                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr3, $vr12
	vld	$vr13, $sp, 560                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr4, $vr12
	vld	$vr13, $sp, 544                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr5, $vr12
	vld	$vr13, $sp, 528                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr6, $vr12
	vld	$vr13, $sp, 512                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr7, $vr12
	vld	$vr13, $sp, 496                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr8, $vr12
	vfadd.d	$vr12, $vr12, $vr11
	vreplvei.d	$vr13, $vr12, 1
	vreplvei.d	$vr13, $vr13, 0
	vfrintrm.d	$vr13, $vr13
	vreplvei.d	$vr12, $vr12, 0
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	ftintrz.w.d	$ft4, $ft4
	movfr2gr.s	$a5, $ft4
	vinsgr2vr.w	$vr12, $a5, 0
	ftintrz.w.d	$ft5, $ft5
	movfr2gr.s	$a5, $ft5
	vinsgr2vr.w	$vr12, $a5, 1
	vmax.w	$vr12, $vr12, $vr9
	vmin.w	$vr12, $vr12, $vr10
	vshuf4i.h	$vr12, $vr12, 8
	vstelm.w	$vr12, $a4, -80, 0
	vld	$vr12, $sp, 480                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr12, $vr0, $vr1
	vld	$vr13, $sp, 464                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr2, $vr12
	vld	$vr13, $sp, 448                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr3, $vr12
	vld	$vr13, $sp, 432                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr4, $vr12
	vld	$vr13, $sp, 416                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr5, $vr12
	vld	$vr13, $sp, 400                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr6, $vr12
	vld	$vr13, $sp, 384                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr7, $vr12
	vld	$vr13, $sp, 368                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr8, $vr12
	vfadd.d	$vr12, $vr12, $vr11
	vreplvei.d	$vr13, $vr12, 1
	vreplvei.d	$vr13, $vr13, 0
	vfrintrm.d	$vr13, $vr13
	vreplvei.d	$vr12, $vr12, 0
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	ftintrz.w.d	$ft4, $ft4
	movfr2gr.s	$a5, $ft4
	vinsgr2vr.w	$vr12, $a5, 0
	ftintrz.w.d	$ft5, $ft5
	movfr2gr.s	$a5, $ft5
	vinsgr2vr.w	$vr12, $a5, 1
	vmax.w	$vr12, $vr12, $vr9
	vmin.w	$vr12, $vr12, $vr10
	vshuf4i.h	$vr12, $vr12, 8
	vstelm.w	$vr12, $a4, -64, 0
	vld	$vr12, $sp, 352                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr12, $vr0, $vr1
	vld	$vr13, $sp, 336                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr2, $vr12
	vld	$vr13, $sp, 320                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr3, $vr12
	vld	$vr13, $sp, 304                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr4, $vr12
	vld	$vr13, $sp, 288                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr5, $vr12
	vld	$vr13, $sp, 272                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr6, $vr12
	vld	$vr13, $sp, 256                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr7, $vr12
	vld	$vr13, $sp, 240                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr8, $vr12
	vfadd.d	$vr12, $vr12, $vr11
	vreplvei.d	$vr13, $vr12, 1
	vreplvei.d	$vr13, $vr13, 0
	vfrintrm.d	$vr13, $vr13
	vreplvei.d	$vr12, $vr12, 0
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	ftintrz.w.d	$ft4, $ft4
	movfr2gr.s	$a5, $ft4
	vinsgr2vr.w	$vr12, $a5, 0
	ftintrz.w.d	$ft5, $ft5
	movfr2gr.s	$a5, $ft5
	vinsgr2vr.w	$vr12, $a5, 1
	vmax.w	$vr12, $vr12, $vr9
	vmin.w	$vr12, $vr12, $vr10
	vshuf4i.h	$vr12, $vr12, 8
	vstelm.w	$vr12, $a4, -48, 0
	vld	$vr12, $sp, 224                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr12, $vr0, $vr1
	vld	$vr13, $sp, 208                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr2, $vr12
	vld	$vr13, $sp, 192                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr3, $vr12
	vld	$vr13, $sp, 176                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr4, $vr12
	vld	$vr13, $sp, 160                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr5, $vr12
	vld	$vr13, $sp, 144                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr6, $vr12
	vld	$vr13, $sp, 128                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr7, $vr12
	vld	$vr13, $sp, 112                 # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr8, $vr12
	vfadd.d	$vr12, $vr12, $vr11
	vreplvei.d	$vr13, $vr12, 1
	vreplvei.d	$vr13, $vr13, 0
	vfrintrm.d	$vr13, $vr13
	vreplvei.d	$vr12, $vr12, 0
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	ftintrz.w.d	$ft4, $ft4
	movfr2gr.s	$a5, $ft4
	vinsgr2vr.w	$vr12, $a5, 0
	ftintrz.w.d	$ft5, $ft5
	movfr2gr.s	$a5, $ft5
	vinsgr2vr.w	$vr12, $a5, 1
	vmax.w	$vr12, $vr12, $vr9
	vmin.w	$vr12, $vr12, $vr10
	vshuf4i.h	$vr12, $vr12, 8
	vstelm.w	$vr12, $a4, -32, 0
	vld	$vr12, $sp, 96                  # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr12, $vr0, $vr1
	vld	$vr13, $sp, 80                  # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr2, $vr12
	vld	$vr13, $sp, 64                  # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr3, $vr12
	vld	$vr13, $sp, 48                  # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr4, $vr12
	vld	$vr13, $sp, 32                  # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr5, $vr12
	vld	$vr13, $sp, 16                  # 16-byte Folded Reload
	vfmadd.d	$vr12, $vr13, $vr6, $vr12
	vfmadd.d	$vr12, $vr14, $vr7, $vr12
	vfmadd.d	$vr12, $vr15, $vr8, $vr12
	vfadd.d	$vr12, $vr12, $vr11
	vreplvei.d	$vr13, $vr12, 1
	vreplvei.d	$vr13, $vr13, 0
	vfrintrm.d	$vr13, $vr13
	vreplvei.d	$vr12, $vr12, 0
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	ftintrz.w.d	$ft4, $ft4
	movfr2gr.s	$a5, $ft4
	vinsgr2vr.w	$vr12, $a5, 0
	ftintrz.w.d	$ft5, $ft5
	movfr2gr.s	$a5, $ft5
	vinsgr2vr.w	$vr12, $a5, 1
	vmax.w	$vr12, $vr12, $vr9
	vmin.w	$vr12, $vr12, $vr10
	vshuf4i.h	$vr12, $vr12, 8
	vstelm.w	$vr12, $a4, -16, 0
	vfmadd.d	$vr12, $vr16, $vr0, $vr1
	vfmadd.d	$vr12, $vr17, $vr2, $vr12
	vfmadd.d	$vr12, $vr18, $vr3, $vr12
	vfmadd.d	$vr12, $vr19, $vr4, $vr12
	vfmadd.d	$vr12, $vr20, $vr5, $vr12
	vfmadd.d	$vr12, $vr21, $vr6, $vr12
	vfmadd.d	$vr12, $vr22, $vr7, $vr12
	vfmadd.d	$vr12, $vr23, $vr8, $vr12
	vfadd.d	$vr12, $vr12, $vr11
	vreplvei.d	$vr13, $vr12, 0
	vreplvei.d	$vr13, $vr13, 0
	vfrintrm.d	$vr13, $vr13
	ftintrz.w.d	$ft5, $ft5
	movfr2gr.s	$a5, $ft5
	vreplvei.d	$vr12, $vr12, 1
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	ftintrz.w.d	$ft4, $ft4
	movfr2gr.s	$a6, $ft4
	vinsgr2vr.w	$vr12, $a5, 0
	vinsgr2vr.w	$vr12, $a6, 1
	vmax.w	$vr12, $vr12, $vr9
	vmin.w	$vr12, $vr12, $vr10
	vshuf4i.h	$vr12, $vr12, 8
	vstelm.w	$vr12, $a4, 0, 0
	vfmadd.d	$vr0, $vr24, $vr0, $vr1
	vfmadd.d	$vr0, $vr25, $vr2, $vr0
	vfmadd.d	$vr0, $vr26, $vr3, $vr0
	vfmadd.d	$vr0, $vr27, $vr4, $vr0
	vfmadd.d	$vr0, $vr28, $vr5, $vr0
	vfmadd.d	$vr0, $vr29, $vr6, $vr0
	vfmadd.d	$vr0, $vr30, $vr7, $vr0
	vfmadd.d	$vr0, $vr31, $vr8, $vr0
	vfadd.d	$vr0, $vr0, $vr11
	vreplvei.d	$vr1, $vr0, 0
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a5, $fa1
	vreplvei.d	$vr0, $vr0, 1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	vinsgr2vr.w	$vr0, $a5, 0
	vinsgr2vr.w	$vr0, $a6, 1
	vmax.w	$vr0, $vr0, $vr9
	vmin.w	$vr0, $vr0, $vr10
	vshuf4i.h	$vr0, $vr0, 8
	vstelm.w	$vr0, $a4, 16, 0
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
