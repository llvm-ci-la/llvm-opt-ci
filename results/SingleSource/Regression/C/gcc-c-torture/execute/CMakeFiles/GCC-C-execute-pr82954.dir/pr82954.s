	.file	"pr82954.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ld.d	$a1, $a1, 8
	vld	$vr0, $a0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	ori	$a1, $zero, 1
	lu32i.d	$a1, 2
	vreplgr2vr.d	$vr2, $a1
	vpackev.d	$vr1, $vr1, $vr2
	vxor.v	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	66                              # 0x42
	.word	129                             # 0x81
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	pcalau12i	$a0, %pc_hi20(.L__const.main.p)
	vld	$vr0, $a0, %pc_lo12(.L__const.main.p)
	pcalau12i	$a0, %pc_hi20(.L__const.main.q)
	vld	$vr1, $a0, %pc_lo12(.L__const.main.q)
	vst	$vr0, $sp, 32
	vst	$vr1, $sp, 16
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 16
	st.d	$a0, $sp, 0
	addi.d	$a0, $sp, 0
	addi.d	$a1, $sp, 8
	#APP
	#NO_APP
	ld.d	$a0, $sp, 24
	vld	$vr0, $sp, 32
	vinsgr2vr.d	$vr1, $a0, 0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 2
	vreplgr2vr.d	$vr2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_0)
	vpackev.d	$vr1, $vr1, $vr2
	vxor.v	$vr1, $vr0, $vr1
	vshuf4i.d	$vr0, $vr1, 12
	vseq.w	$vr0, $vr0, $vr3
	vrepli.b	$vr2, -1
	vxor.v	$vr0, $vr0, $vr2
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	vst	$vr1, $sp, 32
	bnez	$a0, .LBB1_2
# %bb.1:
	move	$a0, $zero
	addi.d	$sp, $sp, 48
	ret
.LBB1_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L__const.main.p,@object        # @__const.main.p
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__const.main.p:
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.size	.L__const.main.p, 16

	.type	.L__const.main.q,@object        # @__const.main.q
	.p2align	3, 0x0
.L__const.main.q:
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	.L__const.main.q, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
