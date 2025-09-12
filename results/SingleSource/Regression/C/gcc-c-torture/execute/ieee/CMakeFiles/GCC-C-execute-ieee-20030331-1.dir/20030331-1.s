	.file	"20030331-1.c"
	.text
	.globl	rintf                           # -- Begin function rintf
	.p2align	5
	.type	rintf,@function
rintf:                                  # @rintf
# %bb.0:
	pcalau12i	$a0, %pc_hi20(x)
	fld.s	$fa0, $a0, %pc_lo12(x)
	fabs.s	$fa2, $fa0
	lu12i.w	$a1, 307200
	movgr2fr.w	$fa1, $a1
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB0_6
# %bb.1:
	movgr2fr.w	$fa2, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB0_3
# %bb.2:
	fadd.s	$fa0, $fa0, $fa1
	lu12i.w	$a1, -217088
	lu32i.d	$a1, 0
	movgr2fr.w	$fa1, $a1
	fadd.s	$fa0, $fa0, $fa1
	b	.LBB0_5
.LBB0_3:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_6
# %bb.4:
	fsub.s	$fa0, $fa1, $fa0
	lu12i.w	$a1, -217088
	lu32i.d	$a1, 0
	movgr2fr.w	$fa1, $a1
	fadd.s	$fa0, $fa0, $fa1
	fneg.s	$fa0, $fa0
.LBB0_5:                                # %.sink.split
	fst.s	$fa0, $a0, %pc_lo12(x)
.LBB0_6:
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
	pcalau12i	$a0, %pc_hi20(x)
	fld.s	$fa0, $a0, %pc_lo12(x)
	fabs.s	$fa2, $fa0
	lu12i.w	$a1, 307200
	movgr2fr.w	$fa1, $a1
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_6
# %bb.1:
	movgr2fr.w	$fa2, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB1_3
# %bb.2:
	fadd.s	$fa0, $fa0, $fa1
	lu12i.w	$a1, -217088
	lu32i.d	$a1, 0
	movgr2fr.w	$fa1, $a1
	fadd.s	$fa0, $fa0, $fa1
	b	.LBB1_5
.LBB1_3:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_6
# %bb.4:
	fsub.s	$fa0, $fa1, $fa0
	lu12i.w	$a1, -217088
	lu32i.d	$a1, 0
	movgr2fr.w	$fa1, $a1
	fadd.s	$fa0, $fa0, $fa1
	fneg.s	$fa0, $fa0
.LBB1_5:                                # %.sink.split.i
	fst.s	$fa0, $a0, %pc_lo12(x)
.LBB1_6:                                # %rintf.exit
	vldi	$vr1, -1152
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_8
# %bb.7:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB1_8:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	x,@object                       # @x
	.data
	.globl	x
	.p2align	2, 0x0
x:
	.word	0xbfc00000                      # float -1.5
	.size	x, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
