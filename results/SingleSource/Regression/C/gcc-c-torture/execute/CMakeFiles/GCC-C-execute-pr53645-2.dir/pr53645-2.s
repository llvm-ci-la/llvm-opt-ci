	.file	"pr53645-2.c"
	.text
	.globl	uq44444444                      # -- Begin function uq44444444
	.p2align	5
	.type	uq44444444,@function
uq44444444:                             # @uq44444444
# %bb.0:
	vld	$vr0, $a1, 0
	vsrli.h	$vr0, $vr0, 2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end0:
	.size	uq44444444, .Lfunc_end0-uq44444444
                                        # -- End function
	.globl	ur44444444                      # -- Begin function ur44444444
	.p2align	5
	.type	ur44444444,@function
ur44444444:                             # @ur44444444
# %bb.0:
	vld	$vr0, $a1, 0
	vrepli.h	$vr1, 3
	vand.v	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end1:
	.size	ur44444444, .Lfunc_end1-ur44444444
                                        # -- End function
	.globl	sq44444444                      # -- Begin function sq44444444
	.p2align	5
	.type	sq44444444,@function
sq44444444:                             # @sq44444444
# %bb.0:
	vld	$vr0, $a1, 0
	vsrai.h	$vr1, $vr0, 15
	vsrli.h	$vr1, $vr1, 14
	vadd.h	$vr0, $vr0, $vr1
	vsrai.h	$vr0, $vr0, 2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end2:
	.size	sq44444444, .Lfunc_end2-sq44444444
                                        # -- End function
	.globl	sr44444444                      # -- Begin function sr44444444
	.p2align	5
	.type	sr44444444,@function
sr44444444:                             # @sr44444444
# %bb.0:
	vld	$vr0, $a1, 0
	vsrai.h	$vr1, $vr0, 15
	vsrli.h	$vr1, $vr1, 14
	vadd.h	$vr1, $vr0, $vr1
	vrepli.h	$vr2, -4
	vand.v	$vr1, $vr1, $vr2
	vsub.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end3:
	.size	sr44444444, .Lfunc_end3-sr44444444
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function uq1428166432128
.LCPI4_0:
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	7                               # 0x7
	.text
	.globl	uq1428166432128
	.p2align	5
	.type	uq1428166432128,@function
uq1428166432128:                        # @uq1428166432128
# %bb.0:
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_0)
	vsrl.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end4:
	.size	uq1428166432128, .Lfunc_end4-uq1428166432128
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function ur1428166432128
.LCPI5_0:
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	1                               # 0x1
	.half	7                               # 0x7
	.half	15                              # 0xf
	.half	63                              # 0x3f
	.half	31                              # 0x1f
	.half	127                             # 0x7f
	.text
	.globl	ur1428166432128
	.p2align	5
	.type	ur1428166432128,@function
ur1428166432128:                        # @ur1428166432128
# %bb.0:
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI5_0)
	vand.v	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end5:
	.size	ur1428166432128, .Lfunc_end5-ur1428166432128
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sq1428166432128
.LCPI6_0:
	.half	16                              # 0x10
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	13                              # 0xd
	.half	12                              # 0xc
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	9                               # 0x9
.LCPI6_1:
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	7                               # 0x7
.LCPI6_2:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.text
	.globl	sq1428166432128
	.p2align	5
	.type	sq1428166432128,@function
sq1428166432128:                        # @sq1428166432128
# %bb.0:
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI6_0)
	vsrai.h	$vr2, $vr0, 15
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	vld	$vr3, $a1, %pc_lo12(.LCPI6_1)
	pcalau12i	$a1, %pc_hi20(.LCPI6_2)
	vld	$vr4, $a1, %pc_lo12(.LCPI6_2)
	vsrl.h	$vr1, $vr2, $vr1
	vadd.h	$vr1, $vr0, $vr1
	vsra.h	$vr1, $vr1, $vr3
	vbitsel.v	$vr0, $vr1, $vr0, $vr4
	vst	$vr0, $a0, 0
	ret
.Lfunc_end6:
	.size	sq1428166432128, .Lfunc_end6-sq1428166432128
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sr1428166432128
.LCPI7_0:
	.half	16                              # 0x10
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	13                              # 0xd
	.half	12                              # 0xc
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	9                               # 0x9
.LCPI7_1:
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	7                               # 0x7
.LCPI7_2:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.text
	.globl	sr1428166432128
	.p2align	5
	.type	sr1428166432128,@function
sr1428166432128:                        # @sr1428166432128
# %bb.0:
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_0)
	vsrai.h	$vr2, $vr0, 15
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	vld	$vr3, $a1, %pc_lo12(.LCPI7_1)
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	vld	$vr4, $a1, %pc_lo12(.LCPI7_2)
	vsrl.h	$vr1, $vr2, $vr1
	vadd.h	$vr1, $vr0, $vr1
	vsra.h	$vr1, $vr1, $vr3
	vbitsel.v	$vr1, $vr1, $vr0, $vr4
	vsll.h	$vr1, $vr1, $vr3
	vsub.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end7:
	.size	sr1428166432128, .Lfunc_end7-sr1428166432128
                                        # -- End function
	.globl	uq33333333                      # -- Begin function uq33333333
	.p2align	5
	.type	uq33333333,@function
uq33333333:                             # @uq33333333
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 10
	ori	$a1, $a1, 2731
	vreplgr2vr.h	$vr1, $a1
	vmuh.hu	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end8:
	.size	uq33333333, .Lfunc_end8-uq33333333
                                        # -- End function
	.globl	ur33333333                      # -- Begin function ur33333333
	.p2align	5
	.type	ur33333333,@function
ur33333333:                             # @ur33333333
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 10
	ori	$a1, $a1, 2731
	vreplgr2vr.h	$vr1, $a1
	vmuh.hu	$vr1, $vr0, $vr1
	vsrli.h	$vr1, $vr1, 1
	vrepli.h	$vr2, 3
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end9:
	.size	ur33333333, .Lfunc_end9-ur33333333
                                        # -- End function
	.globl	sq33333333                      # -- Begin function sq33333333
	.p2align	5
	.type	sq33333333,@function
sq33333333:                             # @sq33333333
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 5
	ori	$a1, $a1, 1366
	vreplgr2vr.h	$vr1, $a1
	vmuh.h	$vr0, $vr0, $vr1
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end10:
	.size	sq33333333, .Lfunc_end10-sq33333333
                                        # -- End function
	.globl	sr33333333                      # -- Begin function sr33333333
	.p2align	5
	.type	sr33333333,@function
sr33333333:                             # @sr33333333
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 5
	ori	$a1, $a1, 1366
	vreplgr2vr.h	$vr1, $a1
	vmuh.h	$vr1, $vr0, $vr1
	vsrli.h	$vr2, $vr1, 15
	vadd.h	$vr1, $vr1, $vr2
	vrepli.h	$vr2, 3
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end11:
	.size	sr33333333, .Lfunc_end11-sr33333333
                                        # -- End function
	.globl	uq65656565                      # -- Begin function uq65656565
	.p2align	5
	.type	uq65656565,@function
uq65656565:                             # @uq65656565
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, -209702
	ori	$a1, $a1, 2731
	vreplgr2vr.w	$vr1, $a1
	vmuh.hu	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end12:
	.size	uq65656565, .Lfunc_end12-uq65656565
                                        # -- End function
	.globl	ur65656565                      # -- Begin function ur65656565
	.p2align	5
	.type	ur65656565,@function
ur65656565:                             # @ur65656565
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, -209702
	ori	$a1, $a1, 2731
	vreplgr2vr.w	$vr1, $a1
	vmuh.hu	$vr1, $vr0, $vr1
	vsrli.h	$vr1, $vr1, 2
	lu12i.w	$a1, 80
	ori	$a1, $a1, 6
	vreplgr2vr.w	$vr2, $a1
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end13:
	.size	ur65656565, .Lfunc_end13-ur65656565
                                        # -- End function
	.globl	sq65656565                      # -- Begin function sq65656565
	.p2align	5
	.type	sq65656565,@function
sq65656565:                             # @sq65656565
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 419442
	ori	$a1, $a1, 2731
	vreplgr2vr.w	$vr1, $a1
	vmuh.h	$vr0, $vr0, $vr1
	vldi	$vr1, -3583
	vsra.h	$vr0, $vr0, $vr1
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end14:
	.size	sq65656565, .Lfunc_end14-sq65656565
                                        # -- End function
	.globl	sr65656565                      # -- Begin function sr65656565
	.p2align	5
	.type	sr65656565,@function
sr65656565:                             # @sr65656565
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 419442
	ori	$a1, $a1, 2731
	vreplgr2vr.w	$vr1, $a1
	vmuh.h	$vr1, $vr0, $vr1
	vldi	$vr2, -3583
	vsra.h	$vr1, $vr1, $vr2
	vsrli.h	$vr2, $vr1, 15
	vadd.h	$vr1, $vr1, $vr2
	lu12i.w	$a1, 80
	ori	$a1, $a1, 6
	vreplgr2vr.w	$vr2, $a1
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end15:
	.size	sr65656565, .Lfunc_end15-sr65656565
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function uq14141461461414
.LCPI16_0:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
.LCPI16_1:
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	43691                           # 0xaaab
	.half	18725                           # 0x4925
	.half	43691                           # 0xaaab
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
.LCPI16_2:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	1                               # 0x1
	.text
	.globl	uq14141461461414
	.p2align	5
	.type	uq14141461461414,@function
uq14141461461414:                       # @uq14141461461414
# %bb.0:
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI16_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI16_0)
	pcalau12i	$a1, %pc_hi20(.LCPI16_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI16_1)
	pcalau12i	$a1, %pc_hi20(.LCPI16_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI16_2)
	vsrl.h	$vr0, $vr0, $vr1
	vmuh.hu	$vr0, $vr0, $vr2
	vsrl.h	$vr0, $vr0, $vr3
	vst	$vr0, $a0, 0
	ret
.Lfunc_end16:
	.size	uq14141461461414, .Lfunc_end16-uq14141461461414
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function ur14141461461414
.LCPI17_0:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
.LCPI17_1:
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	43691                           # 0xaaab
	.half	18725                           # 0x4925
	.half	43691                           # 0xaaab
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
.LCPI17_2:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	1                               # 0x1
.LCPI17_3:
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	6                               # 0x6
	.half	14                              # 0xe
	.half	6                               # 0x6
	.half	14                              # 0xe
	.half	14                              # 0xe
	.text
	.globl	ur14141461461414
	.p2align	5
	.type	ur14141461461414,@function
ur14141461461414:                       # @ur14141461461414
# %bb.0:
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI17_0)
	pcalau12i	$a1, %pc_hi20(.LCPI17_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI17_1)
	pcalau12i	$a1, %pc_hi20(.LCPI17_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI17_2)
	pcalau12i	$a1, %pc_hi20(.LCPI17_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI17_3)
	vsrl.h	$vr1, $vr0, $vr1
	vmuh.hu	$vr1, $vr1, $vr2
	vsrl.h	$vr1, $vr1, $vr3
	vmsub.h	$vr0, $vr1, $vr4
	vst	$vr0, $a0, 0
	ret
.Lfunc_end17:
	.size	ur14141461461414, .Lfunc_end17-ur14141461461414
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sq14141461461414
.LCPI18_0:
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	10923                           # 0x2aab
	.half	18725                           # 0x4925
	.half	10923                           # 0x2aab
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
.LCPI18_1:
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	2                               # 0x2
	.text
	.globl	sq14141461461414
	.p2align	5
	.type	sq14141461461414,@function
sq14141461461414:                       # @sq14141461461414
# %bb.0:
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI18_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI18_0)
	pcalau12i	$a1, %pc_hi20(.LCPI18_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI18_1)
	vmuh.h	$vr0, $vr0, $vr1
	vsra.h	$vr0, $vr0, $vr2
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end18:
	.size	sq14141461461414, .Lfunc_end18-sq14141461461414
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sr14141461461414
.LCPI19_0:
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	10923                           # 0x2aab
	.half	18725                           # 0x4925
	.half	10923                           # 0x2aab
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
.LCPI19_1:
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	2                               # 0x2
.LCPI19_2:
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	6                               # 0x6
	.half	14                              # 0xe
	.half	6                               # 0x6
	.half	14                              # 0xe
	.half	14                              # 0xe
	.text
	.globl	sr14141461461414
	.p2align	5
	.type	sr14141461461414,@function
sr14141461461414:                       # @sr14141461461414
# %bb.0:
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI19_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI19_0)
	pcalau12i	$a1, %pc_hi20(.LCPI19_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI19_1)
	vmuh.h	$vr1, $vr0, $vr1
	pcalau12i	$a1, %pc_hi20(.LCPI19_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI19_2)
	vsra.h	$vr1, $vr1, $vr2
	vsrli.h	$vr2, $vr1, 15
	vadd.h	$vr1, $vr1, $vr2
	vmsub.h	$vr0, $vr1, $vr3
	vst	$vr0, $a0, 0
	ret
.Lfunc_end19:
	.size	sr14141461461414, .Lfunc_end19-sr14141461461414
                                        # -- End function
	.globl	uq77777777                      # -- Begin function uq77777777
	.p2align	5
	.type	uq77777777,@function
uq77777777:                             # @uq77777777
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1171
	vreplgr2vr.h	$vr1, $a1
	vmuh.hu	$vr1, $vr0, $vr1
	vsub.h	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vadd.h	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end20:
	.size	uq77777777, .Lfunc_end20-uq77777777
                                        # -- End function
	.globl	ur77777777                      # -- Begin function ur77777777
	.p2align	5
	.type	ur77777777,@function
ur77777777:                             # @ur77777777
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1171
	vreplgr2vr.h	$vr1, $a1
	vmuh.hu	$vr1, $vr0, $vr1
	vsub.h	$vr2, $vr0, $vr1
	vsrli.h	$vr2, $vr2, 1
	vadd.h	$vr1, $vr2, $vr1
	vsrli.h	$vr1, $vr1, 2
	vrepli.h	$vr2, 7
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end21:
	.size	ur77777777, .Lfunc_end21-ur77777777
                                        # -- End function
	.globl	sq77777777                      # -- Begin function sq77777777
	.p2align	5
	.type	sq77777777,@function
sq77777777:                             # @sq77777777
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2341
	vreplgr2vr.h	$vr1, $a1
	vmuh.h	$vr0, $vr0, $vr1
	vsrai.h	$vr0, $vr0, 1
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end22:
	.size	sq77777777, .Lfunc_end22-sq77777777
                                        # -- End function
	.globl	sr77777777                      # -- Begin function sr77777777
	.p2align	5
	.type	sr77777777,@function
sr77777777:                             # @sr77777777
# %bb.0:
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2341
	vreplgr2vr.h	$vr1, $a1
	vmuh.h	$vr1, $vr0, $vr1
	vsrai.h	$vr1, $vr1, 1
	vsrli.h	$vr2, $vr1, 15
	vadd.h	$vr1, $vr1, $vr2
	vrepli.h	$vr2, 7
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end23:
	.size	sr77777777, .Lfunc_end23-sr77777777
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	ori	$s1, $zero, 1
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$s2, $a0, %pc_lo12(u)
	move	$a0, $zero
	addi.d	$s3, $sp, 32
	lu12i.w	$a1, 10
	ori	$s4, $a1, 2731
	lu12i.w	$a1, 12
	ori	$s6, $a1, 3277
	lu12i.w	$a1, 4
	ori	$s0, $a1, 2341
	ori	$s7, $zero, 14
	lu12i.w	$a1, 2
	ori	$s8, $a1, 1171
	.p2align	4, , 16
.LBB24_1:                               # =>This Inner Loop Header: Depth=1
	alsl.d	$fp, $a0, $s2, 4
	slli.d	$s5, $a0, 4
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq44444444)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vldx	$vr1, $s2, $s5
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.2:                                #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.3:                                #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.4:                                #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.5:                                #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.6:                                #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.7:                                #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.8:                                #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.9:                                #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur44444444)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.10:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.11:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.12:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.13:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.14:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.15:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.16:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.17:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq1428166432128)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 32
	vld	$vr0, $fp, 0
	vseq.h	$vr2, $vr1, $vr0
	vpickve2gr.h	$a0, $vr2, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB24_197
# %bb.18:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr1, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 3
	bne	$a0, $a1, .LBB24_197
# %bb.19:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 1
	bne	$a0, $a1, .LBB24_197
# %bb.20:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.21:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 4
	bne	$a0, $a1, .LBB24_197
# %bb.22:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 7
	bne	$a0, $a1, .LBB24_197
# %bb.23:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 5
	bne	$a0, $a1, .LBB24_197
# %bb.24:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 6
	bne	$a0, $a1, .LBB24_197
# %bb.25:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur1428166432128)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vpickve2gr.h	$a0, $vr0, 0
	slli.d	$a0, $a0, 48
	bnez	$a0, .LBB24_197
# %bb.26:                               #   in Loop: Header=BB24_1 Depth=1
	ld.hu	$a0, $fp, 6
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	andi	$a0, $a0, 7
	bne	$a1, $a0, .LBB24_197
# %bb.27:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	andi	$a1, $a1, 1
	bne	$a0, $a1, .LBB24_197
# %bb.28:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.29:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	andi	$a1, $a1, 15
	bne	$a0, $a1, .LBB24_197
# %bb.30:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	andi	$a1, $a1, 127
	bne	$a0, $a1, .LBB24_197
# %bb.31:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	andi	$a1, $a1, 31
	bne	$a0, $a1, .LBB24_197
# %bb.32:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	andi	$a1, $a1, 63
	bne	$a0, $a1, .LBB24_197
# %bb.33:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq33333333)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.34:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.35:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.36:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.37:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.38:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.39:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.40:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.41:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur33333333)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.42:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.43:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.44:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.45:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.46:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.47:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.48:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.49:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq65656565)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.50:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s6
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.51:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.52:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s6
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.53:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.54:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s6
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.55:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.56:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s6
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.57:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur65656565)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.58:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s6
	srli.d	$a2, $a2, 18
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.59:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.60:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s6
	srli.d	$a2, $a2, 18
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.61:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.62:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s6
	srli.d	$a2, $a2, 18
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.63:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.64:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s6
	srli.d	$a2, $a2, 18
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.65:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq14141461461414)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.66:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.67:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.68:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.69:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.70:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.71:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.72:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.73:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur14141461461414)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.74:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.75:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.76:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.77:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.78:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.79:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.80:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.81:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq77777777)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.82:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.83:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.84:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.85:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.86:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.87:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.88:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.89:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur77777777)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.90:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.91:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.92:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.93:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.94:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.95:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.96:                               #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.97:                               #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	andi	$a1, $s1, 1
	ori	$a0, $zero, 1
	move	$s1, $zero
	bnez	$a1, .LBB24_1
# %bb.98:                               # %.preheader.preheader
	ori	$s1, $zero, 1
	pcalau12i	$a0, %pc_hi20(s)
	addi.d	$s2, $a0, %pc_lo12(s)
	move	$a0, $zero
	addi.d	$s3, $sp, 16
	lu12i.w	$a1, 5
	ori	$s4, $a1, 1366
	lu12i.w	$a1, 2
	ori	$s5, $a1, 2731
	lu12i.w	$a1, 6
	ori	$s6, $a1, 1639
	ori	$s7, $zero, 14
	.p2align	4, , 16
.LBB24_99:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$fp, $a0, $s2, 4
	slli.d	$s8, $a0, 4
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq44444444)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vldx	$vr1, $s2, $s8
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.100:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.101:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.102:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.103:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.104:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.105:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.106:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.107:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr44444444)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.108:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.109:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.110:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.111:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.112:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.113:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.114:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.115:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq1428166432128)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16
	vld	$vr0, $fp, 0
	vseq.h	$vr2, $vr1, $vr0
	vpickve2gr.h	$a0, $vr2, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB24_197
# %bb.116:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr1, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr0, 3
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 28
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 18, 3
	bne	$a0, $a1, .LBB24_197
# %bb.117:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 15
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 16, 1
	bne	$a0, $a1, .LBB24_197
# %bb.118:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.119:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 27
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 19, 4
	bne	$a0, $a1, .LBB24_197
# %bb.120:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 24
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 22, 7
	bne	$a0, $a1, .LBB24_197
# %bb.121:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 26
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 20, 5
	bne	$a0, $a1, .LBB24_197
# %bb.122:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 25
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 21, 6
	bne	$a0, $a1, .LBB24_197
# %bb.123:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr1428166432128)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vpickve2gr.h	$a0, $vr0, 0
	slli.d	$a0, $a0, 48
	bnez	$a0, .LBB24_197
# %bb.124:                              #   in Loop: Header=BB24_99 Depth=1
	ld.h	$a0, $fp, 6
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a2, $a0, 30, 28
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 15, 3
	slli.d	$a2, $a2, 3
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.125:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 15
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 1
	slli.d	$a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.126:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.127:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 27
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 4
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.128:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 24
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 7
	slli.d	$a2, $a2, 7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.129:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 26
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 5
	slli.d	$a2, $a2, 5
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.130:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 25
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 6
	slli.d	$a2, $a2, 6
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.131:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq33333333)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.132:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.133:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.134:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.135:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.136:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.137:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.138:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.139:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr33333333)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.140:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.141:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.142:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.143:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.144:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.145:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.146:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.147:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq65656565)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.148:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s6
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.149:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.150:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s6
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.151:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.152:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s6
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.153:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.154:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s6
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.155:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr65656565)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.156:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s6
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.157:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.158:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s6
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.159:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.160:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s6
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.161:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.162:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s6
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.163:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq14141461461414)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.164:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.165:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.166:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.167:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.168:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.169:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.170:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.171:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr14141461461414)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.172:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.173:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.174:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.175:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.176:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.177:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.178:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.179:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq77777777)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.180:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.181:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.182:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.183:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.184:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.185:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.186:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.187:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr77777777)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.188:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.189:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.190:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.191:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.192:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.193:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.194:                              #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.195:                              #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	andi	$a1, $s1, 1
	ori	$a0, $zero, 1
	move	$s1, $zero
	bnez	$a1, .LBB24_99
# %bb.196:
	move	$a0, $zero
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
.LBB24_197:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	main, .Lfunc_end24-main
                                        # -- End function
	.type	u,@object                       # @u
	.data
	.globl	u
	.p2align	4, 0x0
u:
	.half	73                              # 0x49
	.half	65531                           # 0xfffb
	.half	0                               # 0x0
	.half	174                             # 0xae
	.half	921                             # 0x399
	.half	65535                           # 0xffff
	.half	17                              # 0x11
	.half	178                             # 0xb2
	.half	1                               # 0x1
	.half	8173                            # 0x1fed
	.half	65535                           # 0xffff
	.half	65472                           # 0xffc0
	.half	12                              # 0xc
	.half	29612                           # 0x73ac
	.half	128                             # 0x80
	.half	8912                            # 0x22d0
	.size	u, 32

	.type	s,@object                       # @s
	.globl	s
	.p2align	4, 0x0
s:
	.half	73                              # 0x49
	.half	56413                           # 0xdc5d
	.half	32761                           # 0x7ff9
	.half	8191                            # 0x1fff
	.half	16371                           # 0x3ff3
	.half	1201                            # 0x4b1
	.half	12701                           # 0x319d
	.half	9999                            # 0x270f
	.half	9903                            # 0x26af
	.half	65535                           # 0xffff
	.half	58213                           # 0xe365
	.half	0                               # 0x0
	.half	65529                           # 0xfff9
	.half	65213                           # 0xfebd
	.half	9124                            # 0x23a4
	.half	56337                           # 0xdc11
	.size	s, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym u
	.addrsig_sym s
