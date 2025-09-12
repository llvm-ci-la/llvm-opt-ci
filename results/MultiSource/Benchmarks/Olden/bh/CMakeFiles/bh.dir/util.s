	.file	"util.c"
	.text
	.globl	my_rand                         # -- Begin function my_rand
	.p2align	5
	.type	my_rand,@function
my_rand:                                # @my_rand
# %bb.0:
	vldi	$vr1, -912
	ori	$a0, $zero, 0
	lu32i.d	$a0, 27072
	lu52i.d	$a0, $a0, 1037
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, -1024
	lu52i.d	$a1, $a0, 1053
	movgr2fr.d	$fa1, $a1
	fdiv.d	$fa1, $fa0, $fa1
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	lu52i.d	$a0, $a0, -995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	ret
.Lfunc_end0:
	.size	my_rand, .Lfunc_end0-my_rand
                                        # -- End function
	.globl	xrand                           # -- Begin function xrand
	.p2align	5
	.type	xrand,@function
xrand:                                  # @xrand
# %bb.0:
	fsub.d	$fa1, $fa1, $fa0
	fmul.d	$fa1, $fa1, $fa2
	lu12i.w	$a0, -1024
	lu52i.d	$a0, $a0, 1053
	movgr2fr.d	$fa2, $a0
	fdiv.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end1:
	.size	xrand, .Lfunc_end1-xrand
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	error                           # -- Begin function error
	.p2align	5
	.type	error,@function
error:                                  # @error
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(perror)
	jirl	$ra, $ra, 0
.LBB2_2:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	error, .Lfunc_end2-error
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error"
	.size	.L.str, 6

	.section	".note.GNU-stack","",@progbits
	.addrsig
