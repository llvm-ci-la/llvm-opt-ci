	.file	"pr23941.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	pcalau12i	$a0, %pc_hi20(d)
	fld.d	$fa0, $a0, %pc_lo12(d)
	lu52i.d	$a0, $zero, 896
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB0_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	d,@object                       # @d
	.data
	.globl	d
	.p2align	3, 0x0
d:
	.dword	0x3800000000000000              # double 5.8774717541114375E-39
	.size	d, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
