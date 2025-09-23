	.file	"loop-13.c"
	.text
	.globl	scale                           # -- Begin function scale
	.p2align	5
	.type	scale,@function
scale:                                  # @scale
# %bb.0:
	ld.d	$a3, $a0, 0
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB0_4
# %bb.1:
	blez	$a2, .LBB0_4
# %bb.2:                                # %.lr.ph.preheader
	addi.d	$a1, $a1, 8
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, -8
	ld.d	$a5, $a1, 0
	mul.d	$a4, $a4, $a3
	mul.d	$a3, $a5, $a3
	st.d	$a4, $a1, -8
	st.d	$a3, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB0_3
.LBB0_4:                                # %.loopexit
	ret
.Lfunc_end0:
	.size	scale, .Lfunc_end0-scale
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
