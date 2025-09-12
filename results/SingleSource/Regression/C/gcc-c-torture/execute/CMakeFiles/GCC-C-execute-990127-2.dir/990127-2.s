	.file	"990127-2.c"
	.text
	.globl	fpEq                            # -- Begin function fpEq
	.p2align	5
	.type	fpEq,@function
fpEq:                                   # @fpEq
# %bb.0:
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_2
# %bb.1:
	ret
.LBB0_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	fpEq, .Lfunc_end0-fpEq
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fpTest
.LCPI1_0:
	.dword	0x4059000000000000              # double 100
.LCPI1_1:
	.dword	0x4053d55555555556              # double 79.333333333333343
	.text
	.globl	fpTest
	.p2align	5
	.type	fpTest,@function
fpTest:                                 # @fpTest
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI1_1)
	fmul.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.ceq.d	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB1_2
# %bb.1:                                # %fpEq.exit
	ret
.LBB1_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	fpTest, .Lfunc_end1-fpTest
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
