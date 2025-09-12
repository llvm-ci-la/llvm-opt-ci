	.file	"20010114-2.c"
	.text
	.globl	rintf                           # -- Begin function rintf
	.p2align	5
	.type	rintf,@function
rintf:                                  # @rintf
# %bb.0:
	fabs.s	$fa2, $fa0
	lu12i.w	$a0, 307200
	movgr2fr.w	$fa1, $a0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB0_5
# %bb.1:
	movgr2fr.w	$fa2, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB0_3
# %bb.2:
	fadd.s	$fa0, $fa0, $fa1
	lu12i.w	$a0, -217088
	lu32i.d	$a0, 0
	movgr2fr.w	$fa1, $a0
	fadd.s	$fa0, $fa0, $fa1
	ret
.LBB0_3:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_5
# %bb.4:
	fsub.s	$fa0, $fa1, $fa0
	lu12i.w	$a0, -217088
	lu32i.d	$a0, 0
	movgr2fr.w	$fa1, $a0
	fadd.s	$fa0, $fa0, $fa1
	fneg.s	$fa0, $fa0
.LBB0_5:
	ret
.Lfunc_end0:
	.size	rintf, .Lfunc_end0-rintf
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
