	.file	"20050604-1.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function foo
.LCPI0_0:
	.word	0x41900000                      # float 18
	.word	0x41a00000                      # float 20
	.word	0x41b00000                      # float 22
	.word	0x00000000                      # float 0
	.text
	.globl	foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$a0, $a0, %pc_lo12(u)
	ld.d	$a1, $a0, 0
	vinsgr2vr.d	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(v)
	vld	$vr1, $a1, %pc_lo12(v)
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr2, $a2, %pc_lo12(.LCPI0_0)
	vrepli.d	$vr3, 24
	vadd.h	$vr0, $vr0, $vr3
	vstelm.d	$vr0, $a0, 0, 0
	vfadd.s	$vr0, $vr1, $vr2
	vfadd.s	$vr0, $vr0, $vr2
	vst	$vr0, $a1, %pc_lo12(v)
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0x41900000                      # float 18
	.word	0x41a00000                      # float 20
	.word	0x41b00000                      # float 22
	.word	0x00000000                      # float 0
.LCPI1_1:
	.word	0x42100000                      # float 36
	.word	0x42200000                      # float 40
	.word	0x42300000                      # float 44
	.word	0x00000000                      # float 0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$a0, $a0, %pc_lo12(u)
	ld.d	$a1, $a0, 0
	vinsgr2vr.d	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(v)
	vld	$vr1, $a1, %pc_lo12(v)
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	vld	$vr2, $a2, %pc_lo12(.LCPI1_0)
	vrepli.d	$vr3, 24
	vadd.h	$vr3, $vr0, $vr3
	vstelm.d	$vr3, $a0, 0, 0
	vfadd.s	$vr1, $vr1, $vr2
	vfadd.s	$vr1, $vr1, $vr2
	vpickve2gr.d	$a0, $vr3, 0
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a2, $zero, 24
	vst	$vr1, $a1, %pc_lo12(v)
	bne	$a0, $a2, .LBB1_4
# %bb.1:
	vreplvei.h	$vr2, $vr0, 2
	vreplvei.h	$vr3, $vr0, 3
	vor.v	$vr2, $vr2, $vr3
	vor.v	$vr0, $vr2, $vr0
	vpickve2gr.h	$a0, $vr0, 1
	slli.d	$a0, $a0, 48
	bnez	$a0, .LBB1_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_1)
	vfcmp.cune.s	$vr0, $vr1, $vr0
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	bnez	$a0, .LBB1_4
# %bb.3:
	move	$a0, $zero
	ret
.LBB1_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	u,@object                       # @u
	.bss
	.globl	u
	.p2align	3, 0x0
u:
	.space	8
	.size	u, 8

	.type	v,@object                       # @v
	.globl	v
	.p2align	4, 0x0
v:
	.space	16
	.size	v, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
