	.file	"scal-to-vec1.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI0_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	7                               # 0x7
.LCPI0_2:
	.half	0                               # 0x0
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	pcalau12i	$a0, %pc_hi20(one)
	ld.w	$a0, $a0, %pc_lo12(one)
	ori	$a1, $zero, 7
	st.h	$a1, $sp, 46
	lu12i.w	$a1, 96
	ori	$a1, $a1, 5
	st.w	$a1, $sp, 42
	lu12i.w	$a3, 32
	ori	$a1, $a3, 1
	lu32i.d	$a1, 262147
	st.d	$a1, $sp, 34
	slli.d	$a1, $a0, 16
	addu16i.d	$a2, $a1, 2
	addi.w	$a2, $a2, 0
	srai.d	$a4, $a2, 16
	ext.w.h	$a2, $a0
	addi.d	$a5, $a2, 2
	st.h	$a0, $sp, 32
	bne	$a5, $a4, .LBB0_14
# %bb.1:
	sub.w	$a4, $a3, $a1
	srai.d	$a4, $a4, 16
	ori	$a5, $zero, 2
	sub.d	$a5, $a5, $a2
	bne	$a5, $a4, .LBB0_14
# %bb.2:
	slli.d	$a4, $a0, 1
	ext.w.h	$a4, $a4
	addi.w	$a5, $a1, 0
	srai.d	$a5, $a5, 15
	bne	$a5, $a4, .LBB0_14
# %bb.3:
	vld	$vr0, $sp, 32
	vrepli.h	$vr1, 2
	vdiv.h	$vr2, $vr1, $vr0
	vpickve2gr.h	$a4, $vr2, 0
	bstrpick.d	$a6, $a4, 15, 0
	ori	$a5, $zero, 2
	div.d	$a4, $a5, $a2
	bstrpick.d	$a7, $a4, 15, 0
	bne	$a7, $a6, .LBB0_14
# %bb.4:
	vpickve2gr.h	$a6, $vr2, 1
	bstrpick.d	$a6, $a6, 15, 0
	bne	$a6, $a5, .LBB0_14
# %bb.5:
	mul.d	$a5, $a4, $a0
	ori	$a4, $zero, 2
	sub.d	$a5, $a4, $a5
	st.h	$zero, $sp, 22
	ori	$a3, $a3, 2
	st.w	$a3, $sp, 18
	st.h	$a5, $sp, 16
	pcalau12i	$a5, %pc_hi20(.LCPI0_0)
	vld	$vr3, $a5, %pc_lo12(.LCPI0_0)
	vld	$vr4, $sp, 16
	vmsub.h	$vr1, $vr2, $vr0
	vshuf.h	$vr3, $vr0, $vr1
	vseq.h	$vr2, $vr4, $vr3
	vilvl.h	$vr3, $vr2, $vr2
	vrepli.b	$vr4, -1
	vxor.v	$vr2, $vr2, $vr4
	pcalau12i	$a5, %pc_hi20(.LCPI0_1)
	vld	$vr4, $a5, %pc_lo12(.LCPI0_1)
	vslli.w	$vr3, $vr3, 16
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vshuf.w	$vr4, $vr2, $vr3
	vmskltz.w	$vr2, $vr4
	vpickve2gr.hu	$a5, $vr2, 0
	ori	$a6, $zero, 15
	bne	$a5, $a6, .LBB0_14
# %bb.6:
	vpickve2gr.h	$a5, $vr1, 7
	bstrpick.d	$a5, $a5, 15, 0
	bne	$a5, $a4, .LBB0_14
# %bb.7:
	ori	$a4, $zero, 2
	sll.d	$a5, $a4, $a0
	ext.w.h	$a5, $a5
	sll.w	$a6, $a4, $a0
	bne	$a6, $a5, .LBB0_14
# %bb.8:
	bstrpick.d	$a5, $a0, 15, 0
	srl.d	$a6, $a4, $a0
	srl.w	$a4, $a4, $a5
	bne	$a4, $a6, .LBB0_14
# %bb.9:
	addu16i.d	$a1, $a1, -2
	addi.w	$a1, $a1, 0
	srai.d	$a1, $a1, 16
	addi.d	$a2, $a2, -2
	bne	$a2, $a1, .LBB0_14
# %bb.10:
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	bstrpick.d	$a1, $a0, 15, 15
	add.d	$a1, $a0, $a1
	ext.w.h	$a0, $a1
	srai.d	$a0, $a0, 1
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr1, $a2, %pc_lo12(.LCPI0_2)
	ori	$a2, $zero, 3
	st.h	$a2, $sp, 6
	st.w	$a3, $sp, 2
	st.h	$a0, $sp, 0
	ld.d	$a3, $sp, 0
	vsrai.h	$vr0, $vr0, 1
	vshuf.h	$vr1, $vr0, $vr0
	vpickve2gr.d	$a4, $vr1, 0
	bne	$a4, $a3, .LBB0_14
# %bb.11:
	vpickve2gr.h	$a3, $vr0, 7
	bstrpick.d	$a3, $a3, 15, 0
	bne	$a3, $a2, .LBB0_14
# %bb.12:
	bstrpick.d	$a1, $a1, 15, 1
	slli.d	$a1, $a1, 1
	slli.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	bne	$a0, $a1, .LBB0_14
# %bb.13:
	move	$a0, $zero
	addi.d	$sp, $sp, 48
	ret
.LBB0_14:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	one,@object                     # @one
	.data
	.globl	one
	.p2align	2, 0x0
one:
	.word	1                               # 0x1
	.size	one, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym one
