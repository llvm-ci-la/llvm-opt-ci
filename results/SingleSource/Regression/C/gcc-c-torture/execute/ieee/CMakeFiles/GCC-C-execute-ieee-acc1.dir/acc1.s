	.file	"acc1.c"
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
	movgr2fr.d	$fa0, $zero
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB0_2
# %bb.1:
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(func)
	jirl	$ra, $ra, 0
	fadd.d	$fs0, $fs0, $fa0
.LBB0_2:                                # %common.ret7
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	func, .Lfunc_end0-func
                                        # -- End function
	.globl	main                            # -- Begin function main
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
	lu12i.w	$a0, 119782
	ori	$a0, $a0, 2701
	lu32i.d	$a0, 419263
	lu52i.d	$a0, $a0, 687
	movgr2fr.d	$fa1, $a0
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
	.dword	0x2af665bf1d3e6a8d              # double 1.0000000000000001E-101
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x0000000000000000              # double 0
	.size	.L__const.main.values, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
