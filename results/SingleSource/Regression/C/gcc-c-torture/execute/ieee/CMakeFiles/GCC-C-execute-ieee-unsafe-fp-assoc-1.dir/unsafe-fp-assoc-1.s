	.file	"unsafe-fp-assoc-1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function func
.LCPI0_0:
	.dword	0xc330000000000000              # double -4503599627370496
.LCPI0_1:
	.dword	0x4330000000000000              # double 4503599627370496
	.text
	.globl	func
	.p2align	5
	.type	func,@function
func:                                   # @func
# %bb.0:
	movfr2gr.d	$a0, $fa0
	bstrpick.d	$a0, $a0, 30, 20
	ori	$a1, $zero, 1074
	bltu	$a1, $a0, .LBB0_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fa3, $fa3, $fa2
	fcmp.ceq.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB0_4
# %bb.2:
	vldi	$vr4, -800
	fadd.d	$fa0, $fa0, $fa4
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa2
	fcmp.cune.d	$fcc0, $fa0, $fa3
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
