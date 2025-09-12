	.file	"utils.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rn
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	rn
	.p2align	5
	.type	rn,@function
rn:                                     # @rn
# %bb.0:
	ld.d	$a1, $a0, 0
	lu12i.w	$a2, 4
	ori	$a2, $a2, 423
	mul.d	$a1, $a1, $a2
	ori	$a2, $zero, 5
	lu32i.d	$a2, 2
	mulh.du	$a2, $a1, $a2
	sub.d	$a3, $a1, $a2
	srli.d	$a3, $a3, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 30
	slli.d	$a3, $a2, 31
	sub.d	$a2, $a2, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	add.d	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	st.d	$a1, $a0, 0
	ret
.Lfunc_end0:
	.size	rn, .Lfunc_end0-rn
                                        # -- End function
	.globl	get_mem_estimate                # -- Begin function get_mem_estimate
	.p2align	5
	.type	get_mem_estimate,@function
get_mem_estimate:                       # @get_mem_estimate
# %bb.0:
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a0, 4
	mul.w	$a1, $a1, $a2
	ld.w	$a3, $a0, 20
	slli.d	$a4, $a1, 6
	ld.w	$a0, $a0, 24
	alsl.d	$a1, $a1, $a4, 3
	mul.w	$a3, $a3, $a2
	slli.d	$a3, $a3, 5
	mul.w	$a0, $a0, $a2
	add.d	$a0, $a0, $a2
	slli.w	$a4, $a2, 1
	slli.d	$a2, $a2, 4
	alsl.d	$a2, $a4, $a2, 2
	add.d	$a1, $a2, $a1
	add.d	$a1, $a1, $a3
	alsl.d	$a0, $a0, $a1, 3
	ret
.Lfunc_end1:
	.size	get_mem_estimate, .Lfunc_end1-get_mem_estimate
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
