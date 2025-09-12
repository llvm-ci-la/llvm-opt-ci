	.file	"930702-1.c"
	.text
	.globl	fp                              # -- Begin function fp
	.p2align	5
	.type	fp,@function
fp:                                     # @fp
# %bb.0:
	ori	$a1, $zero, 0
	lu32i.d	$a1, 32768
	lu52i.d	$a1, $a1, 1028
	movgr2fr.d	$fa1, $a1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_3
# %bb.1:
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB0_3
# %bb.2:
	move	$a0, $zero
	ret
.LBB0_3:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	fp, .Lfunc_end0-fp
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
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
