	.file	"util.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function my_rand
.LCPI0_0:
	.dword	0x40d069c000000000              # double 16807
.LCPI0_1:
	.dword	0x41dfffffffc00000              # double 2147483647
.LCPI0_2:
	.dword	0xc1dfffffffc00000              # double -2147483647
	.text
	.globl	my_rand
	.p2align	5
	.type	my_rand,@function
my_rand:                                # @my_rand
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	vldi	$vr2, -912
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_1)
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_2)
	fdiv.d	$fa2, $fa0, $fa3
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ret
.Lfunc_end0:
	.size	my_rand, .Lfunc_end0-my_rand
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function xrand
.LCPI1_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	xrand
	.p2align	5
	.type	xrand,@function
xrand:                                  # @xrand
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI1_0)
	fsub.d	$fa1, $fa1, $fa0
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fa1, $fa1, $fa3
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
