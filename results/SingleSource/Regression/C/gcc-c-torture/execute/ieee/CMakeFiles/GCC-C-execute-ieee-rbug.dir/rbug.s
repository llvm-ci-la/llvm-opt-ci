	.file	"rbug.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function d
.LCPI0_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	d
	.p2align	5
	.type	d,@function
d:                                      # @d
# %bb.0:
	srli.d	$a1, $a0, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	ret
.Lfunc_end0:
	.size	d, .Lfunc_end0-d
                                        # -- End function
	.globl	s                               # -- Begin function s
	.p2align	5
	.type	s,@function
s:                                      # @s
# %bb.0:
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a1, $a0, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	ret
.Lfunc_end1:
	.size	s, .Lfunc_end1-s
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
