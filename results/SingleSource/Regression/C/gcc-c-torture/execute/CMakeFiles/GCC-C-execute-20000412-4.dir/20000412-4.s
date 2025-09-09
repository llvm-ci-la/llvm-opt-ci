	.file	"20000412-4.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function f
.LCPI0_0:
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI0_1:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
.LCPI0_2:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI0_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	sub.w	$a4, $a0, $a2
	ori	$a5, $zero, 2
	blt	$a5, $a4, .LBB0_11
# %bb.1:                                # %.lr.ph
	srai.d	$a5, $a4, 63
	andn	$a7, $a4, $a5
	ori	$a4, $zero, 3
	sub.w	$a4, $a4, $a7
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB0_3
# %bb.2:
	move	$a5, $a7
	b	.LBB0_8
.LBB0_3:                                # %vector.ph
	sub.d	$t0, $a2, $a0
	sub.d	$t1, $a2, $a1
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	add.d	$a5, $a7, $a6
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr1, $t1
	vreplgr2vr.w	$vr2, $a3
	vreplgr2vr.w	$vr6, $a7
	pcalau12i	$a7, %pc_hi20(.LCPI0_0)
	vld	$vr3, $a7, %pc_lo12(.LCPI0_0)
	pcalau12i	$a7, %pc_hi20(.LCPI0_1)
	vld	$vr4, $a7, %pc_lo12(.LCPI0_1)
	pcalau12i	$a7, %pc_hi20(.LCPI0_2)
	vld	$vr5, $a7, %pc_lo12(.LCPI0_2)
	pcalau12i	$a7, %pc_hi20(.LCPI0_3)
	vld	$vr7, $a7, %pc_lo12(.LCPI0_3)
	vadd.w	$vr3, $vr6, $vr3
	vadd.w	$vr4, $vr6, $vr4
	vadd.w	$vr5, $vr6, $vr5
	vadd.w	$vr6, $vr6, $vr7
	addi.w	$a7, $a6, -16
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr7, $vr0, $vr6
	vadd.w	$vr8, $vr0, $vr5
	vadd.w	$vr9, $vr0, $vr4
	vadd.w	$vr10, $vr0, $vr3
	vori.b	$vr11, $vr1, 0
	vmadd.w	$vr11, $vr10, $vr2
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr9, $vr2
	vori.b	$vr9, $vr1, 0
	vmadd.w	$vr9, $vr8, $vr2
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr7, $vr2
	vslti.w	$vr7, $vr8, 0
	vslti.w	$vr8, $vr9, 0
	vpickev.h	$vr8, $vr8, $vr7
	vpickve2gr.b	$t0, $vr8, 2
	andi	$t0, $t0, 1
	vpickve2gr.b	$t1, $vr7, 0
	bstrins.d	$t1, $t0, 63, 1
	vpickve2gr.b	$t0, $vr8, 4
	bstrins.d	$t1, $t0, 2, 2
	vpickve2gr.b	$t0, $vr8, 6
	bstrins.d	$t1, $t0, 3, 3
	vpickve2gr.b	$t0, $vr8, 8
	bstrins.d	$t1, $t0, 4, 4
	vpickve2gr.b	$t0, $vr8, 10
	bstrins.d	$t1, $t0, 5, 5
	vpickve2gr.b	$t0, $vr8, 12
	andi	$t0, $t0, 1
	slli.d	$t0, $t0, 6
	or	$t0, $t1, $t0
	vpickve2gr.b	$t1, $vr8, 14
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 7
	or	$t0, $t0, $t1
	vslti.w	$vr7, $vr10, 0
	vpickve2gr.b	$t1, $vr7, 0
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 8
	or	$t0, $t0, $t1
	vslti.w	$vr8, $vr11, 0
	vpickev.h	$vr7, $vr8, $vr7
	vpickve2gr.b	$t1, $vr7, 2
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 9
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr7, 4
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 10
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr7, 6
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 11
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr7, 8
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 12
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr7, 10
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 13
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr7, 12
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 14
	or	$t0, $t0, $t1
	vpickve2gr.b	$t1, $vr7, 14
	slli.d	$t1, $t1, 15
	or	$t0, $t0, $t1
	bstrpick.d	$t0, $t0, 15, 0
	bnez	$t0, .LBB0_6
# %bb.5:                                # %vector.body
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t1, $a7
	vaddi.wu	$vr6, $vr6, 16
	vaddi.wu	$vr5, $vr5, 16
	vaddi.wu	$vr4, $vr4, 16
	vaddi.wu	$vr3, $vr3, 16
	addi.w	$a7, $a7, -16
	bnez	$t1, .LBB0_4
.LBB0_6:                                # %middle.split
	slli.d	$a7, $t0, 48
	bnez	$a7, .LBB0_12
# %bb.7:                                # %middle.block
	beq	$a4, $a6, .LBB0_11
.LBB0_8:                                # %scalar.ph.preheader
	addi.d	$a4, $a5, -3
	add.d	$a5, $a5, $a2
	nor	$a0, $a0, $zero
	add.d	$a0, $a0, $a5
	mul.d	$a0, $a3, $a0
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB0_9:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.w	$a0, $a0, $a3
	bltz	$a0, .LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	addi.w	$a4, $a4, 1
	bnez	$a4, .LBB0_9
.LBB0_11:                               # %.preheader
	ret
.LBB0_12:                               # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %f.exit.2
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
