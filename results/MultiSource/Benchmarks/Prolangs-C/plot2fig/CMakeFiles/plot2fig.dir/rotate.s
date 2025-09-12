	.file	"rotate.c"
	.text
	.globl	rotate                          # -- Begin function rotate
	.p2align	5
	.type	rotate,@function
rotate:                                 # @rotate
# %bb.0:
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 425984
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa1, $a0
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
