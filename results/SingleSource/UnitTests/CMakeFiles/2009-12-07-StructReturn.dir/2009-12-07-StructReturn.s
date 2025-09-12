	.file	"2009-12-07-StructReturn.c"
	.text
	.globl	spooky                          # -- Begin function spooky
	.p2align	5
	.type	spooky,@function
spooky:                                 # @spooky
# %bb.0:
	pcalau12i	$a1, %pc_hi20(bar_ary)
	addi.d	$a1, $a1, %pc_lo12(bar_ary)
	alsl.d	$a1, $a0, $a1, 4
	addi.d	$a0, $a1, 12
	lu12i.w	$a2, 274656
	st.w	$a2, $a1, 12
	ret
.Lfunc_end0:
	.size	spooky, .Lfunc_end0-spooky
                                        # -- End function
	.globl	foobify                         # -- Begin function foobify
	.p2align	5
	.type	foobify,@function
foobify:                                # @foobify
# %bb.0:
	lu12i.w	$a1, 270976
	move	$a0, $a1
	bstrins.d	$a0, $a1, 62, 32
	ret
.Lfunc_end1:
	.size	foobify, .Lfunc_end1-foobify
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI2_0:
	.word	0x430e0000                      # float 142
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(spooky)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(foobify)
	jirl	$ra, $ra, 0
	pcalau12i	$a2, %pc_hi20(bar_ary)
	addi.d	$a2, $a2, %pc_lo12(bar_ary)
	st.d	$a0, $a2, 0
	st.w	$a1, $a2, 8
	fld.s	$fa0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI2_0)
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB2_2
# %bb.1:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_2:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	bar_ary,@object                 # @bar_ary
	.bss
	.globl	bar_ary
	.p2align	3, 0x0
bar_ary:
	.space	64
	.size	bar_ary, 64

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"error: store clobbered memory outside destination"
	.size	.Lstr, 50

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bar_ary
