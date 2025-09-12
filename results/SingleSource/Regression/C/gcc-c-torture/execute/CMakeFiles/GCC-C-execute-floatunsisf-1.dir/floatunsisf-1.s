	.file	"floatunsisf-1.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	0x4f000001                      # float 2.1474839E+9
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(u)
	ld.wu	$a0, $a0, %pc_lo12(u)
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(f1)
	fst.s	$fa0, $a0, %pc_lo12(f1)
	pcalau12i	$a1, %pc_hi20(f2)
	fst.s	$fa1, $a1, %pc_lo12(f2)
	fld.s	$fa0, $a0, %pc_lo12(f1)
	fld.s	$fa1, $a1, %pc_lo12(f2)
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_2
# %bb.1:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB0_2:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	u,@object                       # @u
	.data
	.globl	u
	.p2align	2, 0x0
u:
	.word	2147483777                      # 0x80000081
	.size	u, 4

	.type	f1,@object                      # @f1
	.bss
	.globl	f1
	.p2align	2, 0x0
f1:
	.word	0x00000000                      # float 0
	.size	f1, 4

	.type	f2,@object                      # @f2
	.globl	f2
	.p2align	2, 0x0
f2:
	.word	0x00000000                      # float 0
	.size	f2, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym u
	.addrsig_sym f1
	.addrsig_sym f2
