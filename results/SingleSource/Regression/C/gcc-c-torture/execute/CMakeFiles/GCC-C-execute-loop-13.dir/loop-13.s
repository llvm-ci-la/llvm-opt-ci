	.file	"loop-13.c"
	.text
	.globl	scale                           # -- Begin function scale
	.p2align	5
	.type	scale,@function
scale:                                  # @scale
# %bb.0:
	ld.d	$a3, $a0, 0
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB0_3
# %bb.1:
	blez	$a2, .LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	vld	$vr0, $a1, 0
	vreplgr2vr.d	$vr1, $a3
	vmul.d	$vr0, $vr0, $vr1
	vst	$vr0, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB0_2
.LBB0_3:                                # %.loopexit
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
