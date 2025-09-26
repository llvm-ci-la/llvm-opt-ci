	.file	"pr51581-2.c"
	.text
	.globl	f1                              # -- Begin function f1
	.p2align	5
	.type	f1,@function
f1:                                     # @f1
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 16
	lu12i.w	$a4, 349525
	ori	$a4, $a4, 1366
	vreplgr2vr.w	$vr0, $a4
	vrepli.w	$vr1, 3
	pcalau12i	$a4, %pc_hi20(c)
	addi.d	$a4, $a4, %pc_lo12(c)
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	vldx	$vr2, $a5, $a2
	vldx	$vr3, $a5, $a3
	vmuh.w	$vr4, $vr2, $vr0
	vsrli.w	$vr5, $vr4, 31
	vadd.w	$vr4, $vr4, $vr5
	vmsub.w	$vr2, $vr4, $vr1
	vmuh.w	$vr4, $vr3, $vr0
	vsrli.w	$vr5, $vr4, 31
	vadd.w	$vr4, $vr4, $vr5
	vmsub.w	$vr3, $vr4, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr3, $a5, $a3
	bnez	$a0, .LBB0_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end0:
	.size	f1, .Lfunc_end0-f1
                                        # -- End function
	.globl	f2                              # -- Begin function f2
	.p2align	5
	.type	f2,@function
f2:                                     # @f2
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 16
	lu12i.w	$a4, -349526
	ori	$a4, $a4, 2731
	vreplgr2vr.w	$vr0, $a4
	vrepli.w	$vr1, 3
	pcalau12i	$a4, %pc_hi20(d)
	addi.d	$a4, $a4, %pc_lo12(d)
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	vldx	$vr2, $a5, $a2
	vldx	$vr3, $a5, $a3
	vmuh.wu	$vr4, $vr2, $vr0
	vsrli.w	$vr4, $vr4, 1
	vmsub.w	$vr2, $vr4, $vr1
	vmuh.wu	$vr4, $vr3, $vr0
	vsrli.w	$vr4, $vr4, 1
	vmsub.w	$vr3, $vr4, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr3, $a5, $a3
	bnez	$a0, .LBB1_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end1:
	.size	f2, .Lfunc_end1-f2
                                        # -- End function
	.globl	f3                              # -- Begin function f3
	.p2align	5
	.type	f3,@function
f3:                                     # @f3
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 16
	lu12i.w	$a4, 233016
	ori	$a4, $a4, 3641
	vreplgr2vr.w	$vr0, $a4
	vrepli.w	$vr1, 18
	pcalau12i	$a4, %pc_hi20(c)
	addi.d	$a4, $a4, %pc_lo12(c)
	.p2align	4, , 16
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	vldx	$vr2, $a5, $a2
	vldx	$vr3, $a5, $a3
	vmuh.w	$vr4, $vr2, $vr0
	vsrai.w	$vr4, $vr4, 2
	vsrli.w	$vr5, $vr4, 31
	vadd.w	$vr4, $vr4, $vr5
	vmsub.w	$vr2, $vr4, $vr1
	vmuh.w	$vr4, $vr3, $vr0
	vsrai.w	$vr4, $vr4, 2
	vsrli.w	$vr5, $vr4, 31
	vadd.w	$vr4, $vr4, $vr5
	vmsub.w	$vr3, $vr4, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr3, $a5, $a3
	bnez	$a0, .LBB2_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end2:
	.size	f3, .Lfunc_end2-f3
                                        # -- End function
	.globl	f4                              # -- Begin function f4
	.p2align	5
	.type	f4,@function
f4:                                     # @f4
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 16
	lu12i.w	$a4, 233016
	ori	$a4, $a4, 3641
	vreplgr2vr.w	$vr0, $a4
	vrepli.w	$vr1, 18
	pcalau12i	$a4, %pc_hi20(d)
	addi.d	$a4, $a4, %pc_lo12(d)
	.p2align	4, , 16
.LBB3_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	vldx	$vr2, $a5, $a2
	vldx	$vr3, $a5, $a3
	vmuh.wu	$vr4, $vr2, $vr0
	vsrli.w	$vr4, $vr4, 2
	vmsub.w	$vr2, $vr4, $vr1
	vmuh.wu	$vr4, $vr3, $vr0
	vsrli.w	$vr4, $vr4, 2
	vmsub.w	$vr3, $vr4, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr3, $a5, $a3
	bnez	$a0, .LBB3_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end3:
	.size	f4, .Lfunc_end3-f4
                                        # -- End function
	.globl	f5                              # -- Begin function f5
	.p2align	5
	.type	f5,@function
f5:                                     # @f5
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 16
	lu12i.w	$a4, 441505
	ori	$a4, $a4, 2803
	vreplgr2vr.w	$vr0, $a4
	vrepli.w	$vr1, 19
	pcalau12i	$a4, %pc_hi20(c)
	addi.d	$a4, $a4, %pc_lo12(c)
	.p2align	4, , 16
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	vldx	$vr2, $a5, $a2
	vldx	$vr3, $a5, $a3
	vmuh.w	$vr4, $vr2, $vr0
	vsrai.w	$vr4, $vr4, 3
	vsrli.w	$vr5, $vr4, 31
	vadd.w	$vr4, $vr4, $vr5
	vmsub.w	$vr2, $vr4, $vr1
	vmuh.w	$vr4, $vr3, $vr0
	vsrai.w	$vr4, $vr4, 3
	vsrli.w	$vr5, $vr4, 31
	vadd.w	$vr4, $vr4, $vr5
	vmsub.w	$vr3, $vr4, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr3, $a5, $a3
	bnez	$a0, .LBB4_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end4:
	.size	f5, .Lfunc_end4-f5
                                        # -- End function
	.globl	f6                              # -- Begin function f6
	.p2align	5
	.type	f6,@function
f6:                                     # @f6
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 16
	lu12i.w	$a4, -331130
	ori	$a4, $a4, 3019
	vreplgr2vr.w	$vr0, $a4
	vrepli.w	$vr1, 19
	pcalau12i	$a4, %pc_hi20(d)
	addi.d	$a4, $a4, %pc_lo12(d)
	.p2align	4, , 16
.LBB5_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	vldx	$vr2, $a5, $a2
	vldx	$vr3, $a5, $a3
	vmuh.wu	$vr4, $vr2, $vr0
	vsub.w	$vr5, $vr2, $vr4
	vsrli.w	$vr5, $vr5, 1
	vadd.w	$vr4, $vr5, $vr4
	vsrli.w	$vr4, $vr4, 4
	vmsub.w	$vr2, $vr4, $vr1
	vmuh.wu	$vr4, $vr3, $vr0
	vsub.w	$vr5, $vr3, $vr4
	vsrli.w	$vr5, $vr5, 1
	vadd.w	$vr4, $vr5, $vr4
	vsrli.w	$vr4, $vr4, 4
	vmsub.w	$vr3, $vr4, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr3, $a5, $a3
	bnez	$a0, .LBB5_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end5:
	.size	f6, .Lfunc_end5-f6
                                        # -- End function
	.globl	f7                              # -- Begin function f7
	.p2align	5
	.type	f7,@function
f7:                                     # @f7
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	lu12i.w	$a3, 349525
	ori	$a3, $a3, 1366
	vreplgr2vr.w	$vr0, $a3
	vrepli.w	$vr1, -3
	pcalau12i	$a3, %pc_hi20(c)
	addi.d	$a3, $a3, %pc_lo12(c)
	.p2align	4, , 16
.LBB6_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	vldx	$vr2, $a4, $a2
	vmuh.w	$vr3, $vr2, $vr0
	vsrli.w	$vr4, $vr2, 31
	vadd.w	$vr3, $vr4, $vr3
	vmadd.w	$vr2, $vr3, $vr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 16
	vstx	$vr2, $a4, $a2
	bnez	$a0, .LBB6_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end6:
	.size	f7, .Lfunc_end6-f7
                                        # -- End function
	.globl	f8                              # -- Begin function f8
	.p2align	5
	.type	f8,@function
f8:                                     # @f8
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 16
	lu12i.w	$a4, -349526
	ori	$a4, $a4, 2731
	lu32i.d	$a4, 0
	vreplgr2vr.d	$vr0, $a4
	vrepli.w	$vr1, -3
	pcalau12i	$a4, %pc_hi20(d)
	addi.d	$a4, $a4, %pc_lo12(d)
	.p2align	4, , 16
.LBB7_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	vldx	$vr2, $a5, $a2
	vldx	$vr3, $a5, $a3
	vsllwil.du.wu	$vr4, $vr2, 0
	vshuf4i.w	$vr5, $vr2, 14
	vsllwil.du.wu	$vr5, $vr5, 0
	vsllwil.du.wu	$vr6, $vr3, 0
	vshuf4i.w	$vr7, $vr3, 14
	vsllwil.du.wu	$vr7, $vr7, 0
	vmul.d	$vr5, $vr5, $vr0
	vmul.d	$vr4, $vr4, $vr0
	vmul.d	$vr7, $vr7, $vr0
	vmul.d	$vr6, $vr6, $vr0
	vsrli.d	$vr4, $vr4, 33
	vsrli.d	$vr5, $vr5, 33
	vsrli.d	$vr6, $vr6, 33
	vsrli.d	$vr7, $vr7, 33
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vmadd.w	$vr2, $vr4, $vr1
	vmadd.w	$vr3, $vr5, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr3, $a5, $a3
	bnez	$a0, .LBB7_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end7:
	.size	f8, .Lfunc_end7-f8
                                        # -- End function
	.globl	f9                              # -- Begin function f9
	.p2align	5
	.type	f9,@function
f9:                                     # @f9
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	lu12i.w	$a3, 233016
	ori	$a3, $a3, 3641
	vreplgr2vr.d	$vr0, $a3
	vrepli.w	$vr1, -18
	pcalau12i	$a3, %pc_hi20(c)
	addi.d	$a3, $a3, %pc_lo12(c)
	.p2align	4, , 16
.LBB8_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	vldx	$vr2, $a4, $a2
	vsllwil.d.w	$vr3, $vr2, 0
	vshuf4i.w	$vr4, $vr2, 14
	vsllwil.d.w	$vr4, $vr4, 0
	vmul.d	$vr4, $vr4, $vr0
	vmul.d	$vr3, $vr3, $vr0
	vsrai.d	$vr3, $vr3, 34
	vsrai.d	$vr4, $vr4, 34
	vpickev.w	$vr3, $vr4, $vr3
	vsrli.w	$vr4, $vr2, 31
	vadd.w	$vr3, $vr3, $vr4
	vmadd.w	$vr2, $vr3, $vr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 16
	vstx	$vr2, $a4, $a2
	bnez	$a0, .LBB8_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end8:
	.size	f9, .Lfunc_end8-f9
                                        # -- End function
	.globl	f10                             # -- Begin function f10
	.p2align	5
	.type	f10,@function
f10:                                    # @f10
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 16
	lu12i.w	$a4, 233016
	ori	$a4, $a4, 3641
	vreplgr2vr.d	$vr0, $a4
	vrepli.w	$vr1, -18
	pcalau12i	$a4, %pc_hi20(d)
	addi.d	$a4, $a4, %pc_lo12(d)
	.p2align	4, , 16
.LBB9_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	vldx	$vr2, $a5, $a2
	vldx	$vr3, $a5, $a3
	vsllwil.du.wu	$vr4, $vr2, 0
	vshuf4i.w	$vr5, $vr2, 14
	vsllwil.du.wu	$vr5, $vr5, 0
	vsllwil.du.wu	$vr6, $vr3, 0
	vshuf4i.w	$vr7, $vr3, 14
	vsllwil.du.wu	$vr7, $vr7, 0
	vmul.d	$vr5, $vr5, $vr0
	vmul.d	$vr4, $vr4, $vr0
	vmul.d	$vr7, $vr7, $vr0
	vmul.d	$vr6, $vr6, $vr0
	vsrli.d	$vr4, $vr4, 34
	vsrli.d	$vr5, $vr5, 34
	vsrli.d	$vr6, $vr6, 34
	vsrli.d	$vr7, $vr7, 34
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vmadd.w	$vr2, $vr4, $vr1
	vmadd.w	$vr3, $vr5, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr3, $a5, $a3
	bnez	$a0, .LBB9_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end9:
	.size	f10, .Lfunc_end9-f10
                                        # -- End function
	.globl	f11                             # -- Begin function f11
	.p2align	5
	.type	f11,@function
f11:                                    # @f11
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	lu12i.w	$a3, 441505
	ori	$a3, $a3, 2803
	vreplgr2vr.d	$vr0, $a3
	vrepli.w	$vr1, -19
	pcalau12i	$a3, %pc_hi20(c)
	addi.d	$a3, $a3, %pc_lo12(c)
	.p2align	4, , 16
.LBB10_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	vldx	$vr2, $a4, $a2
	vsllwil.d.w	$vr3, $vr2, 0
	vshuf4i.w	$vr4, $vr2, 14
	vsllwil.d.w	$vr4, $vr4, 0
	vmul.d	$vr4, $vr4, $vr0
	vmul.d	$vr3, $vr3, $vr0
	vsrai.d	$vr3, $vr3, 35
	vsrai.d	$vr4, $vr4, 35
	vpickev.w	$vr3, $vr4, $vr3
	vsrli.w	$vr4, $vr2, 31
	vadd.w	$vr3, $vr3, $vr4
	vmadd.w	$vr2, $vr3, $vr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 16
	vstx	$vr2, $a4, $a2
	bnez	$a0, .LBB10_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end10:
	.size	f11, .Lfunc_end10-f11
                                        # -- End function
	.globl	f12                             # -- Begin function f12
	.p2align	5
	.type	f12,@function
f12:                                    # @f12
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	lu12i.w	$a3, -331130
	ori	$a3, $a3, 3019
	vreplgr2vr.w	$vr0, $a3
	vrepli.w	$vr1, -19
	pcalau12i	$a3, %pc_hi20(d)
	addi.d	$a3, $a3, %pc_lo12(d)
	.p2align	4, , 16
.LBB11_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	vldx	$vr2, $a4, $a2
	vmuh.wu	$vr3, $vr2, $vr0
	vsub.w	$vr4, $vr2, $vr3
	vsrli.w	$vr4, $vr4, 1
	vadd.w	$vr3, $vr4, $vr3
	vsrli.w	$vr3, $vr3, 4
	vmadd.w	$vr2, $vr3, $vr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 16
	vstx	$vr2, $a4, $a2
	bnez	$a0, .LBB11_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end11:
	.size	f12, .Lfunc_end11-f12
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$fp, $a1, %pc_lo12(a)
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$s0, $a1, %pc_lo12(b)
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	add.d	$a2, $fp, $a0
	addi.d	$a3, $a1, -2048
	stptr.w	$a3, $a2, 16384
	add.d	$a2, $s0, $a0
	stptr.w	$a1, $a2, 16384
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB12_1
# %bb.2:
	lu12i.w	$a0, -524288
	bstrins.d	$a0, $a0, 62, 33
	st.d	$a0, $fp, 0
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	stptr.w	$a0, $fp, 16380
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	stptr.w	$a0, $s0, 16380
	pcaddu18i	$ra, %call36(f1)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f2)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(c)
	addi.d	$s1, $a1, %pc_lo12(c)
	lu12i.w	$a1, 349525
	ori	$s4, $a1, 1366
	pcalau12i	$a1, %pc_hi20(d)
	addi.d	$s2, $a1, %pc_lo12(d)
	lu12i.w	$s3, 4
	lu12i.w	$a1, -349526
	ori	$s5, $a1, 2731
	lu32i.d	$s5, 0
	.p2align	4, , 16
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s4
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s5
	srli.d	$a3, $a3, 33
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_3
# %bb.6:
	pcaddu18i	$ra, %call36(f3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f4)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	lu12i.w	$a1, 233016
	ori	$s7, $a1, 3641
	.p2align	4, , 16
.LBB12_7:                               # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s7
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 34
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.8:                                #   in Loop: Header=BB12_7 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s7
	srli.d	$a3, $a3, 34
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.9:                                #   in Loop: Header=BB12_7 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_7
# %bb.10:
	pcaddu18i	$ra, %call36(f5)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f6)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	lu12i.w	$a1, 441505
	ori	$s6, $a1, 2803
	lu12i.w	$a1, -331130
	ori	$s8, $a1, 3019
	lu32i.d	$s8, 0
	.p2align	4, , 16
.LBB12_11:                              # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s6
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 35
	add.d	$a3, $a3, $a4
	alsl.d	$a4, $a3, $a3, 3
	alsl.d	$a3, $a4, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.12:                               #   in Loop: Header=BB12_11 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s8
	srli.d	$a3, $a3, 32
	sub.d	$a4, $a1, $a3
	bstrpick.d	$a4, $a4, 31, 1
	add.d	$a3, $a4, $a3
	bstrpick.d	$a3, $a3, 31, 4
	alsl.d	$a4, $a3, $a3, 3
	alsl.d	$a3, $a4, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.13:                               #   in Loop: Header=BB12_11 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_11
# %bb.14:
	pcaddu18i	$ra, %call36(f7)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f8)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	.p2align	4, , 16
.LBB12_15:                              # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s4
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.16:                               #   in Loop: Header=BB12_15 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s5
	srli.d	$a3, $a3, 33
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.17:                               #   in Loop: Header=BB12_15 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_15
# %bb.18:
	pcaddu18i	$ra, %call36(f9)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f10)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	.p2align	4, , 16
.LBB12_19:                              # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s7
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 34
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.20:                               #   in Loop: Header=BB12_19 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s7
	srli.d	$a3, $a3, 34
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.21:                               #   in Loop: Header=BB12_19 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_19
# %bb.22:
	pcaddu18i	$ra, %call36(f11)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f12)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	.p2align	4, , 16
.LBB12_23:                              # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s6
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 35
	add.d	$a3, $a3, $a4
	alsl.d	$a4, $a3, $a3, 3
	alsl.d	$a3, $a4, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.24:                               #   in Loop: Header=BB12_23 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s8
	srli.d	$a3, $a3, 32
	sub.d	$a4, $a1, $a3
	bstrpick.d	$a4, $a4, 31, 1
	add.d	$a3, $a4, $a3
	bstrpick.d	$a3, $a3, 31, 4
	alsl.d	$a4, $a3, $a3, 3
	alsl.d	$a3, $a4, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.25:                               #   in Loop: Header=BB12_23 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_23
# %bb.26:
	move	$a0, $zero
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.LBB12_27:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	main, .Lfunc_end12-main
                                        # -- End function
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2, 0x0
a:
	.space	16384
	.size	a, 16384

	.type	c,@object                       # @c
	.globl	c
	.p2align	2, 0x0
c:
	.space	16384
	.size	c, 16384

	.type	b,@object                       # @b
	.globl	b
	.p2align	2, 0x0
b:
	.space	16384
	.size	b, 16384

	.type	d,@object                       # @d
	.globl	d
	.p2align	2, 0x0
d:
	.space	16384
	.size	d, 16384

	.section	".note.GNU-stack","",@progbits
	.addrsig
