	.file	"pr30704.c"
	.text
	.globl	f1                              # -- Begin function f1
	.p2align	5
	.type	f1,@function
f1:                                     # @f1
# %bb.0:
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 0
	ret
.Lfunc_end0:
	.size	f1, .Lfunc_end0-f1
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function f2
.LCPI1_0:
	.dword	0x000fedcba9876543              # double 2.2151846413582804E-308
	.text
	.globl	f2
	.p2align	5
	.type	f2,@function
f2:                                     # @f2
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	ret
.Lfunc_end1:
	.size	f2, .Lfunc_end1-f2
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
