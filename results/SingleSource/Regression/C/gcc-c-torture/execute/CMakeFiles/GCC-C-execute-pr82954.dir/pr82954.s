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
	.globl	main                            # -- Begin function main
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
	ld.w	$a3, $sp, 32
	ld.w	$a0, $sp, 36
	xori	$a1, $a3, 1
	st.w	$a1, $sp, 32
	xori	$a1, $a0, 2
	ld.w	$a2, $sp, 40
	ld.w	$a4, $sp, 24
	ld.w	$a5, $sp, 44
	ld.w	$a6, $sp, 28
	st.w	$a1, $sp, 36
	xor	$a2, $a4, $a2
	st.w	$a2, $sp, 40
	xor	$a1, $a6, $a5
	ori	$a4, $zero, 16
	st.w	$a1, $sp, 44
	bne	$a3, $a4, .LBB1_5
# %bb.1:
	ori	$a3, $zero, 32
	bne	$a0, $a3, .LBB1_5
# %bb.2:
	ori	$a0, $zero, 66
	bne	$a2, $a0, .LBB1_5
# %bb.3:
	ori	$a0, $zero, 129
	bne	$a1, $a0, .LBB1_5
# %bb.4:
	move	$a0, $zero
	addi.d	$sp, $sp, 48
	ret
.LBB1_5:
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
