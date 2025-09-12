	.file	"pr38969.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	pcaddu18i	$t8, %call36(foo)
	jr	$t8
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI2_0:
	.word	0x42280000                      # float 42
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI2_0)
	vldi	$vr0, -1246
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	vldi	$vr2, -1246
	fcmp.cune.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB2_3
# %bb.1:
	fcmp.ceq.s	$fcc0, $fa1, $fs0
	bceqz	$fcc0, .LBB2_3
# %bb.2:
	move	$a0, $zero
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_3:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
