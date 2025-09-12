	.file	"acc2.c"
	.text
	.globl	func                            # -- Begin function func
	.p2align	5
	.type	func,@function
func:                                   # @func
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	fld.d	$fs0, $a0, 0
	vldi	$vr0, -912
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB0_2
# %bb.1:                                # %common.ret7
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_2:
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(func)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fa0
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	func, .Lfunc_end0-func
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0x7fefffffffffffff              # double 1.7976931348623157E+308
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L__const.main.values)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.values)
	pcaddu18i	$ra, %call36(func)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_0)
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_2
# %bb.1:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB1_2:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L__const.main.values,@object   # @__const.main.values
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
.L__const.main.values:
	.dword	0x7fefffffffffffff              # double 1.7976931348623157E+308
	.dword	0x4000000000000000              # double 2
	.dword	0x3fe0000000000000              # double 0.5
	.dword	0x3ff0000000000000              # double 1
	.size	.L__const.main.values, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
