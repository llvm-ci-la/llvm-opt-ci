	.file	"unsafe-fp-assoc-1.c"
	.text
	.globl	func                            # -- Begin function func
	.p2align	5
	.type	func,@function
func:                                   # @func
# %bb.0:
	movfr2gr.d	$a0, $fa0
	bstrpick.d	$a0, $a0, 30, 20
	ori	$a1, $zero, 1074
	bltu	$a1, $a0, .LBB0_3
# %bb.1:
	lu52i.d	$a0, $zero, -973
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa2, $fa0, $fa1
	lu52i.d	$a0, $zero, 1075
	movgr2fr.d	$fa3, $a0
	fadd.d	$fa2, $fa2, $fa3
	fcmp.ceq.d	$fcc0, $fa2, $fa0
	bceqz	$fcc0, .LBB0_4
# %bb.2:
	vldi	$vr4, -800
	fadd.d	$fa0, $fa0, $fa4
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa3
	fcmp.cune.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB0_4
.LBB0_3:
	ret
.LBB0_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	func, .Lfunc_end0-func
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
