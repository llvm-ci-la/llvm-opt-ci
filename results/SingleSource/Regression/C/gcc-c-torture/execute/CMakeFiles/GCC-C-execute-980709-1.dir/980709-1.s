	.file	"980709-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	lu52i.d	$a0, $zero, 1028
	st.d	$a0, $sp, 0
	fld.d	$fa0, $sp, 0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa1, $a0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, -419431
	lu52i.d	$a1, $a0, 1019
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa2, $fa0, $fa1
	lu12i.w	$a1, -428893
	ori	$a1, $a1, 1025
	lu32i.d	$a1, -432642
	lu52i.d	$a1, $a1, 1024
	movgr2fr.d	$fa1, $a1
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_3
# %bb.1:
	lu52i.d	$a0, $a0, -1029
	movgr2fr.d	$fa2, $a0
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
