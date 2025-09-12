	.file	"rotate.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rotate
.LCPI0_0:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI0_1:
	.dword	0x4066800000000000              # double 180
	.text
	.globl	rotate
	.p2align	5
	.type	rotate,@function
rotate:                                 # @rotate
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_1)
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(text_rotation)
	fst.s	$fa0, $a0, %pc_lo12(text_rotation)
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	rotate, .Lfunc_end0-rotate
                                        # -- End function
	.type	text_rotation,@object           # @text_rotation
	.bss
	.globl	text_rotation
	.p2align	2, 0x0
text_rotation:
	.word	0x00000000                      # float 0
	.size	text_rotation, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
