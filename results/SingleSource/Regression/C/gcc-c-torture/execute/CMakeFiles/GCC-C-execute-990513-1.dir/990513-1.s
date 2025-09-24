	.file	"990513-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %vector.ph
	move	$a2, $zero
	addi.d	$a0, $a0, 1020
	addi.w	$a3, $zero, -1024
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $a2
	stx.w	$a1, $a0, $a2
	st.w	$a1, $a4, -16
	st.w	$a1, $a4, -4
	st.w	$a1, $a4, -20
	st.w	$a1, $a4, -8
	st.w	$a1, $a4, -24
	st.w	$a1, $a4, -12
	addi.d	$a2, $a2, -32
	st.w	$a1, $a4, -28
	bne	$a2, $a3, .LBB0_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
