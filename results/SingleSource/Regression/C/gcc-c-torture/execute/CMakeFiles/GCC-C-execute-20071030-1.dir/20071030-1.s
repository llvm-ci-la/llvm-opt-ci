	.file	"20071030-1.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function CalcPing
.LCPI0_0:
	.word	0x447a0000                      # float 1000
	.text
	.globl	CalcPing
	.p2align	5
	.type	CalcPing,@function
CalcPing:                               # @CalcPing
# %bb.0:
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_2
# %bb.1:
	ld.w	$a0, $a0, 4
	ret
.LBB0_2:
	move	$a1, $zero
	addi.d	$a0, $a0, 16
	movgr2fr.w	$fa1, $zero
	ori	$a2, $zero, 64
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a0, 0
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fadd.s	$fa2, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	movcf2gr	$a3, $fcc0
	add.w	$a1, $a1, $a3
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB0_3
# %bb.4:
	beqz	$a1, .LBB0_6
# %bb.5:
	bstrpick.d	$a0, $a1, 31, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI0_0)
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa0, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ret
.LBB0_6:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1807
	ret
.Lfunc_end0:
	.size	CalcPing, .Lfunc_end0-CalcPing
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0x447a0000                      # float 1000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -48
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 2056
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $sp, 32
	lu12i.w	$a2, 260096
	st.w	$a2, $sp, 32
	movgr2fr.w	$fa1, $zero
	ori	$a2, $zero, 64
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a1, 0
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fadd.s	$fa2, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	movcf2gr	$a3, $fcc0
	add.w	$a0, $a0, $a3
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB1_1
# %bb.2:
	beqz	$a0, .LBB1_5
# %bb.3:                                # %CalcPing.exit
	bstrpick.d	$a0, $a0, 31, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI1_0)
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa0, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ori	$a1, $zero, 1000
	bne	$a0, $a1, .LBB1_5
# %bb.4:
	move	$a0, $zero
	addi.d	$sp, $sp, 48
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB1_5:                                # %CalcPing.exit.thread
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
