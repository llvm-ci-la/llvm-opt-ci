	.file	"980709-1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3fd5555555555555              # double 0.33333333333333331
.LCPI0_1:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI0_2:
	.dword	0xbfb999999999999a              # double -0.10000000000000001
.LCPI0_3:
	.dword	0x400965fe974a3401              # double 3.1748020000000001
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	lu52i.d	$a0, $zero, 1028
	st.d	$a0, $sp, 0
	fld.d	$fa0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	fadd.d	$fa2, $fa0, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_2)
	fadd.d	$fa0, $fa0, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_3
# %bb.2:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_3:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
