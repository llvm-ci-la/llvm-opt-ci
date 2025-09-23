	.file	"idctref.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Initialize_Reference_IDCT
.LCPI0_0:
	.dword	0x3fdf6297cff75cb0              # double 0.49039264020161522
	.dword	0x3fda9b66290ea1a3              # double 0.41573480615127262
	.dword	0x3fd1c73b39ae68c9              # double 0.27778511650980114
	.dword	0x3fb8f8b83c69a60d              # double 0.097545161008064166
.LCPI0_1:
	.dword	0xbfb8f8b83c69a608              # double -0.097545161008064096
	.dword	0xbfd1c73b39ae68c6              # double -0.27778511650980098
	.dword	0xbfda9b66290ea1a4              # double -0.41573480615127267
	.dword	0xbfdf6297cff75cb0              # double -0.49039264020161522
.LCPI0_2:
	.dword	0x3fdd906bcf328d46              # double 0.46193976625564337
	.dword	0x3fc87de2a6aea964              # double 0.19134171618254492
	.dword	0xbfc87de2a6aea962              # double -0.19134171618254486
	.dword	0xbfdd906bcf328d46              # double -0.46193976625564337
.LCPI0_3:
	.dword	0xbfdd906bcf328d47              # double -0.46193976625564342
	.dword	0xbfc87de2a6aea96d              # double -0.19134171618254517
	.dword	0x3fc87de2a6aea967              # double 0.191341716182545
	.dword	0x3fdd906bcf328d44              # double 0.46193976625564326
.LCPI0_4:
	.dword	0x3fda9b66290ea1a3              # double 0.41573480615127262
	.dword	0xbfb8f8b83c69a608              # double -0.097545161008064096
	.dword	0xbfdf6297cff75cb0              # double -0.49039264020161522
	.dword	0xbfd1c73b39ae68c8              # double -0.27778511650980109
.LCPI0_5:
	.dword	0x3fd1c73b39ae68c5              # double 0.27778511650980092
	.dword	0x3fdf6297cff75cb0              # double 0.49039264020161522
	.dword	0x3fb8f8b83c69a61d              # double 0.097545161008064388
	.dword	0xbfda9b66290ea1a2              # double -0.41573480615127256
.LCPI0_6:
	.dword	0x3fd6a09e667f3bcd              # double 0.35355339059327379
	.dword	0xbfd6a09e667f3bcc              # double -0.35355339059327373
	.dword	0xbfd6a09e667f3bce              # double -0.35355339059327384
	.dword	0x3fd6a09e667f3bcb              # double 0.35355339059327368
.LCPI0_7:
	.dword	0x3fd6a09e667f3bce              # double 0.35355339059327384
	.dword	0xbfd6a09e667f3bc5              # double -0.35355339059327334
	.dword	0xbfd6a09e667f3bc9              # double -0.35355339059327356
	.dword	0x3fd6a09e667f3bc4              # double 0.35355339059327329
.LCPI0_8:
	.dword	0x3fd1c73b39ae68c9              # double 0.27778511650980114
	.dword	0xbfdf6297cff75cb0              # double -0.49039264020161522
	.dword	0x3fb8f8b83c69a60c              # double 0.097545161008064151
	.dword	0x3fda9b66290ea1a5              # double 0.41573480615127273
.LCPI0_9:
	.dword	0xbfda9b66290ea1a2              # double -0.41573480615127256
	.dword	0xbfb8f8b83c69a602              # double -0.097545161008064013
	.dword	0x3fdf6297cff75cb2              # double 0.49039264020161533
	.dword	0xbfd1c73b39ae68c2              # double -0.27778511650980076
.LCPI0_10:
	.dword	0x3fc87de2a6aea964              # double 0.19134171618254492
	.dword	0xbfdd906bcf328d47              # double -0.46193976625564342
	.dword	0x3fdd906bcf328d44              # double 0.46193976625564326
	.dword	0xbfc87de2a6aea965              # double -0.19134171618254495
.LCPI0_11:
	.dword	0xbfc87de2a6aea971              # double -0.19134171618254528
	.dword	0x3fdd906bcf328d46              # double 0.46193976625564337
	.dword	0xbfdd906bcf328d43              # double -0.4619397662556432
	.dword	0x3fc87de2a6aea95f              # double 0.19134171618254478
.LCPI0_12:
	.dword	0x3fb8f8b83c69a60d              # double 0.097545161008064166
	.dword	0xbfd1c73b39ae68c8              # double -0.27778511650980109
	.dword	0x3fda9b66290ea1a5              # double 0.41573480615127273
	.dword	0xbfdf6297cff75cb2              # double -0.49039264020161533
.LCPI0_13:
	.dword	0x3fdf6297cff75cb0              # double 0.49039264020161522
	.dword	0xbfda9b66290ea1a1              # double -0.41573480615127251
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
	xvreplgr2vr.d	$xr0, $a0
	pcalau12i	$a0, %pc_hi20(c)
	addi.d	$a0, $a0, %pc_lo12(c)
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_1)
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr1, $a0, 64
	xvst	$xr2, $a0, 96
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_2)
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_3)
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_4)
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	xvld	$xr3, $a1, %pc_lo12(.LCPI0_5)
	xvst	$xr0, $a0, 128
	xvst	$xr1, $a0, 160
	xvst	$xr2, $a0, 192
	xvst	$xr3, $a0, 224
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_6)
	pcalau12i	$a1, %pc_hi20(.LCPI0_7)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_7)
	pcalau12i	$a1, %pc_hi20(.LCPI0_8)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_8)
	pcalau12i	$a1, %pc_hi20(.LCPI0_9)
	xvld	$xr3, $a1, %pc_lo12(.LCPI0_9)
	xvst	$xr0, $a0, 256
	xvst	$xr1, $a0, 288
	xvst	$xr2, $a0, 320
	xvst	$xr3, $a0, 352
	pcalau12i	$a1, %pc_hi20(.LCPI0_10)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_10)
	pcalau12i	$a1, %pc_hi20(.LCPI0_11)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_11)
	pcalau12i	$a1, %pc_hi20(.LCPI0_12)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_12)
	pcalau12i	$a1, %pc_hi20(.LCPI0_13)
	xvld	$xr3, $a1, %pc_lo12(.LCPI0_13)
	xvst	$xr0, $a0, 384
	xvst	$xr1, $a0, 416
	xvst	$xr2, $a0, 448
	xvst	$xr3, $a0, 480
	ret
.Lfunc_end0:
	.size	Initialize_Reference_IDCT, .Lfunc_end0-Initialize_Reference_IDCT
                                        # -- End function
	.globl	Reference_IDCT                  # -- Begin function Reference_IDCT
	.p2align	5
	.type	Reference_IDCT,@function
Reference_IDCT:                         # @Reference_IDCT
# %bb.0:
	addi.d	$sp, $sp, -2032
	fst.d	$fs0, $sp, 2024                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 2016                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 2008                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 2000                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1992                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1984                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1976                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1968                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -64
	pcalau12i	$a1, %pc_hi20(c)
	addi.d	$a1, $a1, %pc_lo12(c)
	move	$a2, $zero
	xvld	$xr0, $a1, 0
	xvst	$xr0, $sp, 1488                 # 32-byte Folded Spill
	xvld	$xr0, $a1, 64
	xvst	$xr0, $sp, 1456                 # 32-byte Folded Spill
	xvld	$xr0, $a1, 128
	xvst	$xr0, $sp, 1424                 # 32-byte Folded Spill
	xvld	$xr0, $a1, 192
	xvst	$xr0, $sp, 1392                 # 32-byte Folded Spill
	xvld	$xr0, $a1, 256
	xvst	$xr0, $sp, 1360                 # 32-byte Folded Spill
	xvld	$xr0, $a1, 320
	xvst	$xr0, $sp, 1328                 # 32-byte Folded Spill
	xvld	$xr0, $a1, 384
	xvst	$xr0, $sp, 1296                 # 32-byte Folded Spill
	xvld	$xr0, $a1, 448
	xvst	$xr0, $sp, 1264                 # 32-byte Folded Spill
	fld.d	$fa0, $a1, 32
	fst.d	$fa0, $sp, 1232                 # 8-byte Folded Spill
	fld.d	$fa0, $a1, 96
	fst.d	$fa0, $sp, 1200                 # 8-byte Folded Spill
	fld.d	$fa0, $a1, 160
	fst.d	$fa0, $sp, 1168                 # 8-byte Folded Spill
	fld.d	$fa0, $a1, 224
	fst.d	$fa0, $sp, 1136                 # 8-byte Folded Spill
	fld.d	$fa0, $a1, 288
	fst.d	$fa0, $sp, 1104                 # 8-byte Folded Spill
	fld.d	$fa0, $a1, 352
	fst.d	$fa0, $sp, 1072                 # 8-byte Folded Spill
	fld.d	$fa0, $a1, 416
	fst.d	$fa0, $sp, 1040                 # 8-byte Folded Spill
	fld.d	$fa0, $a1, 480
	fst.d	$fa0, $sp, 1008                 # 8-byte Folded Spill
	fld.d	$fa0, $a1, 40
	fst.d	$fa0, $sp, 976                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 104
	fst.d	$fa0, $sp, 944                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 168
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 232
	fst.d	$fa0, $sp, 880                  # 8-byte Folded Spill
	fld.d	$ft13, $a1, 296
	fld.d	$ft14, $a1, 360
	fld.d	$ft15, $a1, 424
	fld.d	$fs0, $a1, 488
	fld.d	$fs1, $a1, 48
	fld.d	$fs2, $a1, 112
	fld.d	$fs3, $a1, 176
	fld.d	$fs4, $a1, 240
	fld.d	$fs5, $a1, 304
	fld.d	$fs6, $a1, 368
	fld.d	$fs7, $a1, 432
	fld.d	$fa1, $a1, 496
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 120
	fld.d	$fa4, $a1, 184
	fld.d	$fa5, $a1, 248
	fld.d	$fa6, $a1, 312
	fld.d	$fa7, $a1, 376
	fld.d	$ft0, $a1, 440
	fld.d	$ft1, $a1, 504
	addi.d	$a3, $a0, 8
	addi.d	$a4, $sp, 1520
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
	xvreplve0.d	$xr18, $xr10
	xvrepli.b	$xr0, 0
	xvld	$xr19, $sp, 1488                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr19, $xr18, $xr0
	xvreplve0.d	$xr19, $xr11
	xvld	$xr20, $sp, 1456                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr12
	xvld	$xr20, $sp, 1424                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr13
	xvld	$xr20, $sp, 1392                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr14
	xvld	$xr20, $sp, 1360                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr16
	xvld	$xr20, $sp, 1328                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr15
	xvld	$xr20, $sp, 1296                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr17
	xvld	$xr20, $sp, 1264                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvstx	$xr18, $a2, $a4
	movgr2fr.d	$ft10, $zero
	fld.d	$ft11, $sp, 1232                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft11, $ft2, $ft10
	fld.d	$ft12, $sp, 1200                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft3, $ft11
	fld.d	$ft12, $sp, 1168                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft4, $ft11
	fld.d	$ft12, $sp, 1136                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft5, $ft11
	fld.d	$ft12, $sp, 1104                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft6, $ft11
	fld.d	$ft12, $sp, 1072                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft8, $ft11
	fld.d	$ft12, $sp, 1040                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft7, $ft11
	fld.d	$ft12, $sp, 1008                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft9, $ft11
	fst.d	$ft11, $a6, 32
	fld.d	$ft11, $sp, 976                 # 8-byte Folded Reload
	fmadd.d	$ft11, $ft11, $ft2, $ft10
	fld.d	$ft12, $sp, 944                 # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft3, $ft11
	fld.d	$ft12, $sp, 912                 # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft4, $ft11
	fld.d	$ft12, $sp, 880                 # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft5, $ft11
	fmadd.d	$ft11, $ft13, $ft6, $ft11
	fmadd.d	$ft11, $ft14, $ft8, $ft11
	fmadd.d	$ft11, $ft15, $ft7, $ft11
	fmadd.d	$ft11, $fs0, $ft9, $ft11
	fst.d	$ft11, $a6, 40
	fmadd.d	$ft11, $fs1, $ft2, $ft10
	fmadd.d	$ft11, $fs2, $ft3, $ft11
	fmadd.d	$ft11, $fs3, $ft4, $ft11
	fmadd.d	$ft11, $fs4, $ft5, $ft11
	fmadd.d	$ft11, $fs5, $ft6, $ft11
	fmadd.d	$ft11, $fs6, $ft8, $ft11
	fmadd.d	$ft11, $fs7, $ft7, $ft11
	fmadd.d	$ft11, $fa1, $ft9, $ft11
	fst.d	$ft11, $a6, 48
	fmadd.d	$ft2, $fa2, $ft2, $ft10
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
	xvst	$xr1, $sp, 496                  # 32-byte Folded Spill
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
	vld	$vr30, $a1, 192
	vld	$vr31, $a1, 64
	vld	$vr1, $a1, 128
	xvpermi.d	$xr29, $xr29, 68
	xvrepl128vei.d	$xr29, $xr29, 0
	xvst	$xr29, $sp, 1488                # 32-byte Folded Spill
	xvpermi.d	$xr29, $xr31, 68
	xvrepl128vei.d	$xr29, $xr29, 0
	xvst	$xr29, $sp, 1456                # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1424                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr30, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1392                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr28, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1360                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr27, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1328                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr26, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1296                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr25, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1264                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr24, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1232                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr23, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1200                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr22, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1168                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr21, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1136                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr20, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1104                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr19, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1072                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr18, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1040                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr17, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1008                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr16, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 976                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr15, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 944                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr14, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 912                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr13, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 880                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr12, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 848                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr11, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 816                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr10, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 784                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr9, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 752                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr8, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 720                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr7, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 688                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr6, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 656                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr5, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 624                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr4, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 592                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr3, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 560                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr2, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 528                  # 32-byte Folded Spill
	vld	$vr1, $a1, 32
	xvld	$xr2, $sp, 496                  # 32-byte Folded Reload
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 496                  # 32-byte Folded Spill
	vld	$vr2, $a1, 96
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 464                  # 32-byte Folded Spill
	vld	$vr1, $a1, 160
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 432                  # 32-byte Folded Spill
	vld	$vr2, $a1, 224
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 400                  # 32-byte Folded Spill
	vld	$vr1, $a1, 288
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 368                  # 32-byte Folded Spill
	vld	$vr2, $a1, 352
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 336                  # 32-byte Folded Spill
	vld	$vr1, $a1, 416
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 304                  # 32-byte Folded Spill
	vld	$vr2, $a1, 480
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 272                  # 32-byte Folded Spill
	vld	$vr1, $a1, 40
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 240                  # 32-byte Folded Spill
	vld	$vr2, $a1, 104
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 208                  # 32-byte Folded Spill
	vld	$vr1, $a1, 168
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 176                  # 32-byte Folded Spill
	vld	$vr2, $a1, 232
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 144                  # 32-byte Folded Spill
	vld	$vr1, $a1, 296
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 112                  # 32-byte Folded Spill
	vld	$vr2, $a1, 360
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 80                   # 32-byte Folded Spill
	vld	$vr1, $a1, 424
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 48                   # 32-byte Folded Spill
	vld	$vr2, $a1, 488
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 16                   # 32-byte Folded Spill
	vld	$vr1, $a1, 48
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr17, $xr2, 0
	vld	$vr2, $a1, 112
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr18, $xr1, 0
	vld	$vr1, $a1, 176
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr19, $xr2, 0
	vld	$vr2, $a1, 240
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr20, $xr1, 0
	vld	$vr1, $a1, 304
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr21, $xr2, 0
	vld	$vr2, $a1, 368
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr22, $xr1, 0
	vld	$vr1, $a1, 432
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr23, $xr2, 0
	vld	$vr2, $a1, 496
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr24, $xr1, 0
	vld	$vr1, $a1, 56
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr25, $xr2, 0
	vld	$vr2, $a1, 120
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr26, $xr1, 0
	vld	$vr1, $a1, 184
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr27, $xr2, 0
	vld	$vr2, $a1, 248
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr28, $xr1, 0
	vld	$vr1, $a1, 312
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr29, $xr2, 0
	vld	$vr2, $a1, 376
	xvpermi.d	$xr1, $xr1, 68
	vld	$vr3, $a1, 440
	xvrepl128vei.d	$xr30, $xr1, 0
	xvpermi.d	$xr1, $xr2, 68
	xvrepl128vei.d	$xr31, $xr1, 0
	xvpermi.d	$xr1, $xr3, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	addi.d	$a2, $sp, 1776
	xvldrepl.d	$xr2, $a1, 504
	addi.d	$a0, $a0, 112
	addi.w	$a1, $zero, -16
	lu52i.d	$a3, $zero, 1022
	.p2align	4, , 16
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a2, -256
	xvld	$xr4, $a2, -192
	xvld	$xr5, $a2, -128
	xvld	$xr6, $a2, -64
	xvld	$xr7, $sp, 1488                 # 32-byte Folded Reload
	xvfmadd.d	$xr7, $xr7, $xr3, $xr0
	xvld	$xr8, $sp, 1456                 # 32-byte Folded Reload
	xvfmadd.d	$xr7, $xr8, $xr4, $xr7
	xvld	$xr8, $sp, 1424                 # 32-byte Folded Reload
	xvfmadd.d	$xr7, $xr8, $xr5, $xr7
	xvld	$xr8, $sp, 1392                 # 32-byte Folded Reload
	xvfmadd.d	$xr11, $xr8, $xr6, $xr7
	xvld	$xr7, $a2, 0
	xvld	$xr8, $a2, 64
	xvld	$xr9, $a2, 128
	xvld	$xr10, $a2, 192
	xvld	$xr12, $sp, 1360                # 32-byte Folded Reload
	xvfmadd.d	$xr11, $xr12, $xr7, $xr11
	xvld	$xr12, $sp, 1328                # 32-byte Folded Reload
	xvfmadd.d	$xr11, $xr12, $xr8, $xr11
	xvld	$xr12, $sp, 1296                # 32-byte Folded Reload
	xvfmadd.d	$xr11, $xr12, $xr9, $xr11
	xvld	$xr12, $sp, 1264                # 32-byte Folded Reload
	xvfmadd.d	$xr12, $xr12, $xr10, $xr11
	xvreplgr2vr.d	$xr11, $a3
	xvfadd.d	$xr12, $xr12, $xr11
	xvpickve.d	$xr13, $xr12, 1
	vreplvei.d	$vr13, $vr13, 0
	vfrintrm.d	$vr13, $vr13
	xvpickve.d	$xr14, $xr12, 0
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsve0.d	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr12, 2
	vreplvei.d	$vr13, $vr13, 0
	vfrintrm.d	$vr13, $vr13
	xvinsve0.d	$xr14, $xr13, 2
	xvpickve.d	$xr12, $xr12, 3
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	xvinsve0.d	$xr14, $xr12, 3
	xvftintrz.l.d	$xr12, $xr14
	xvpermi.d	$xr13, $xr12, 238
	xvpickev.w	$xr13, $xr13, $xr12
	vrepli.w	$vr12, -256
	vmax.w	$vr14, $vr13, $vr12
	vrepli.w	$vr13, 255
	vmin.w	$vr14, $vr14, $vr13
	vpickev.h	$vr14, $vr14, $vr14
	add.d	$a4, $a0, $a1
	vstelm.d	$vr14, $a4, -96, 0
	xvld	$xr14, $sp, 1232                # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr14, $xr3, $xr0
	xvld	$xr15, $sp, 1200                # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr4, $xr14
	xvld	$xr15, $sp, 1168                # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr5, $xr14
	xvld	$xr15, $sp, 1136                # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr6, $xr14
	xvld	$xr15, $sp, 1104                # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr7, $xr14
	xvld	$xr15, $sp, 1072                # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr8, $xr14
	xvld	$xr15, $sp, 1040                # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr9, $xr14
	xvld	$xr15, $sp, 1008                # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr10, $xr14
	xvfadd.d	$xr14, $xr14, $xr11
	xvpickve.d	$xr15, $xr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvpickve.d	$xr16, $xr14, 0
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	xvinsve0.d	$xr16, $xr15, 1
	xvpickve.d	$xr15, $xr14, 2
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvinsve0.d	$xr16, $xr15, 2
	xvpickve.d	$xr14, $xr14, 3
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsve0.d	$xr16, $xr14, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr12
	vmin.w	$vr14, $vr14, $vr13
	vpickev.h	$vr14, $vr14, $vr14
	vstelm.d	$vr14, $a4, -80, 0
	xvld	$xr14, $sp, 976                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr14, $xr3, $xr0
	xvld	$xr15, $sp, 944                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr4, $xr14
	xvld	$xr15, $sp, 912                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr5, $xr14
	xvld	$xr15, $sp, 880                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr6, $xr14
	xvld	$xr15, $sp, 848                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr7, $xr14
	xvld	$xr15, $sp, 816                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr8, $xr14
	xvld	$xr15, $sp, 784                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr9, $xr14
	xvld	$xr15, $sp, 752                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr10, $xr14
	xvfadd.d	$xr14, $xr14, $xr11
	xvpickve.d	$xr15, $xr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvpickve.d	$xr16, $xr14, 0
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	xvinsve0.d	$xr16, $xr15, 1
	xvpickve.d	$xr15, $xr14, 2
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvinsve0.d	$xr16, $xr15, 2
	xvpickve.d	$xr14, $xr14, 3
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsve0.d	$xr16, $xr14, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr12
	vmin.w	$vr14, $vr14, $vr13
	vpickev.h	$vr14, $vr14, $vr14
	vstelm.d	$vr14, $a4, -64, 0
	xvld	$xr14, $sp, 720                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr14, $xr3, $xr0
	xvld	$xr15, $sp, 688                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr4, $xr14
	xvld	$xr15, $sp, 656                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr5, $xr14
	xvld	$xr15, $sp, 624                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr6, $xr14
	xvld	$xr15, $sp, 592                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr7, $xr14
	xvld	$xr15, $sp, 560                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr8, $xr14
	xvld	$xr15, $sp, 528                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr9, $xr14
	xvld	$xr15, $sp, 496                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr10, $xr14
	xvfadd.d	$xr14, $xr14, $xr11
	xvpickve.d	$xr15, $xr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvpickve.d	$xr16, $xr14, 0
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	xvinsve0.d	$xr16, $xr15, 1
	xvpickve.d	$xr15, $xr14, 2
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvinsve0.d	$xr16, $xr15, 2
	xvpickve.d	$xr14, $xr14, 3
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsve0.d	$xr16, $xr14, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr12
	vmin.w	$vr14, $vr14, $vr13
	vpickev.h	$vr14, $vr14, $vr14
	vstelm.d	$vr14, $a4, -48, 0
	xvld	$xr14, $sp, 464                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr14, $xr3, $xr0
	xvld	$xr15, $sp, 432                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr4, $xr14
	xvld	$xr15, $sp, 400                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr5, $xr14
	xvld	$xr15, $sp, 368                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr6, $xr14
	xvld	$xr15, $sp, 336                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr7, $xr14
	xvld	$xr15, $sp, 304                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr8, $xr14
	xvld	$xr15, $sp, 272                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr9, $xr14
	xvld	$xr15, $sp, 240                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr10, $xr14
	xvfadd.d	$xr14, $xr14, $xr11
	xvpickve.d	$xr15, $xr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvpickve.d	$xr16, $xr14, 0
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	xvinsve0.d	$xr16, $xr15, 1
	xvpickve.d	$xr15, $xr14, 2
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvinsve0.d	$xr16, $xr15, 2
	xvpickve.d	$xr14, $xr14, 3
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsve0.d	$xr16, $xr14, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr12
	vmin.w	$vr14, $vr14, $vr13
	vpickev.h	$vr14, $vr14, $vr14
	vstelm.d	$vr14, $a4, -32, 0
	xvld	$xr14, $sp, 208                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr14, $xr3, $xr0
	xvld	$xr15, $sp, 176                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr4, $xr14
	xvld	$xr15, $sp, 144                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr5, $xr14
	xvld	$xr15, $sp, 112                 # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr6, $xr14
	xvld	$xr15, $sp, 80                  # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr7, $xr14
	xvld	$xr15, $sp, 48                  # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr8, $xr14
	xvld	$xr15, $sp, 16                  # 32-byte Folded Reload
	xvfmadd.d	$xr14, $xr15, $xr9, $xr14
	xvfmadd.d	$xr14, $xr17, $xr10, $xr14
	xvfadd.d	$xr14, $xr14, $xr11
	xvpickve.d	$xr15, $xr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvpickve.d	$xr16, $xr14, 0
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	xvinsve0.d	$xr16, $xr15, 1
	xvpickve.d	$xr15, $xr14, 2
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvinsve0.d	$xr16, $xr15, 2
	xvpickve.d	$xr14, $xr14, 3
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsve0.d	$xr16, $xr14, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr12
	vmin.w	$vr14, $vr14, $vr13
	vpickev.h	$vr14, $vr14, $vr14
	vstelm.d	$vr14, $a4, -16, 0
	xvfmadd.d	$xr14, $xr18, $xr3, $xr0
	xvfmadd.d	$xr14, $xr19, $xr4, $xr14
	xvfmadd.d	$xr14, $xr20, $xr5, $xr14
	xvfmadd.d	$xr14, $xr21, $xr6, $xr14
	xvfmadd.d	$xr14, $xr22, $xr7, $xr14
	xvfmadd.d	$xr14, $xr23, $xr8, $xr14
	xvfmadd.d	$xr14, $xr24, $xr9, $xr14
	xvfmadd.d	$xr14, $xr25, $xr10, $xr14
	xvfadd.d	$xr14, $xr14, $xr11
	xvpickve.d	$xr15, $xr14, 1
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvpickve.d	$xr16, $xr14, 0
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	xvinsve0.d	$xr16, $xr15, 1
	xvpickve.d	$xr15, $xr14, 2
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvinsve0.d	$xr16, $xr15, 2
	xvpickve.d	$xr14, $xr14, 3
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsve0.d	$xr16, $xr14, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr12
	vmin.w	$vr14, $vr14, $vr13
	vpickev.h	$vr14, $vr14, $vr14
	vstelm.d	$vr14, $a4, 0, 0
	xvfmadd.d	$xr3, $xr26, $xr3, $xr0
	xvfmadd.d	$xr3, $xr27, $xr4, $xr3
	xvfmadd.d	$xr3, $xr28, $xr5, $xr3
	xvfmadd.d	$xr3, $xr29, $xr6, $xr3
	xvfmadd.d	$xr3, $xr30, $xr7, $xr3
	xvfmadd.d	$xr3, $xr31, $xr8, $xr3
	xvfmadd.d	$xr3, $xr1, $xr9, $xr3
	xvfmadd.d	$xr3, $xr2, $xr10, $xr3
	xvfadd.d	$xr3, $xr3, $xr11
	xvpickve.d	$xr4, $xr3, 1
	vreplvei.d	$vr4, $vr4, 0
	vfrintrm.d	$vr4, $vr4
	xvpickve.d	$xr5, $xr3, 0
	vreplvei.d	$vr5, $vr5, 0
	vfrintrm.d	$vr5, $vr5
	xvinsve0.d	$xr5, $xr4, 1
	xvpickve.d	$xr4, $xr3, 2
	vreplvei.d	$vr4, $vr4, 0
	vfrintrm.d	$vr4, $vr4
	xvinsve0.d	$xr5, $xr4, 2
	xvpickve.d	$xr3, $xr3, 3
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	xvinsve0.d	$xr5, $xr3, 3
	xvftintrz.l.d	$xr3, $xr5
	xvpermi.d	$xr4, $xr3, 238
	xvpickev.w	$xr3, $xr4, $xr3
	vmax.w	$vr3, $vr3, $vr12
	vmin.w	$vr3, $vr3, $vr13
	vpickev.h	$vr3, $vr3, $vr3
	vstelm.d	$vr3, $a4, 16, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB1_3
# %bb.4:                                # %middle.block
	addi.d	$sp, $sp, 64
	fld.d	$fs7, $sp, 1968                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1976                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1984                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1992                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 2000                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 2008                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 2016                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 2024                 # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	Reference_IDCT, .Lfunc_end1-Reference_IDCT
                                        # -- End function
	.type	c,@object                       # @c
	.local	c
	.comm	c,512,32
	.section	".note.GNU-stack","",@progbits
	.addrsig
