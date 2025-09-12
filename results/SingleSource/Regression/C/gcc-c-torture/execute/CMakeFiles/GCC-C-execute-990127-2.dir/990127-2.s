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
	.globl	fpTest                          # -- Begin function fpTest
	.p2align	5
	.type	fpTest,@function
fpTest:                                 # @fpTest
# %bb.0:
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	lu32i.d	$a0, 251221
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
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
