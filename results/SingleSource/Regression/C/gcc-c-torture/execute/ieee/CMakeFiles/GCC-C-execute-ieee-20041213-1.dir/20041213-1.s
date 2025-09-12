	.file	"20041213-1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function foo
.LCPI0_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.globl	foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	pcalau12i	$a0, %pc_hi20(once)
	ld.w	$a1, $a0, %pc_lo12(once)
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, %pc_lo12(once)
	bnez	$a1, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	ret
.LBB0_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	pcalau12i	$a0, %pc_hi20(once)
	ld.w	$a1, $a0, %pc_lo12(once)
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, %pc_lo12(once)
	bnez	$a1, .LBB1_2
# %bb.1:                                # %foo.exit
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	fsqrt.d	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(x)
	fst.d	$fa0, $a0, %pc_lo12(x)
	move	$a0, $zero
	ret
.LBB1_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	once,@object                    # @once
	.bss
	.globl	once
	.p2align	2, 0x0
once:
	.word	0                               # 0x0
	.size	once, 4

	.type	x,@object                       # @x
	.globl	x
	.p2align	3, 0x0
x:
	.dword	0x0000000000000000              # double 0
	.size	x, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
