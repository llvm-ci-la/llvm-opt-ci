	.file	"20010114-2.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function rintf
.LCPI0_0:
	.word	0x4b000000                      # float 8388608
.LCPI0_1:
	.word	0xcb000000                      # float -8388608
	.text
	.globl	rintf
	.p2align	5
	.type	rintf,@function
rintf:                                  # @rintf
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_0)
	fabs.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB0_5
# %bb.1:
	movgr2fr.w	$fa2, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB0_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI0_1)
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	ret
.LBB0_3:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI0_1)
	fsub.s	$fa0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $fa2
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
