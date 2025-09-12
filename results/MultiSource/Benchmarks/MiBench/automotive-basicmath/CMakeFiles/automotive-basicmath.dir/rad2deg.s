	.file	"rad2deg.c"
	.text
	.globl	rad2deg                         # -- Begin function rad2deg
	.p2align	5
	.type	rad2deg,@function
rad2deg:                                # @rad2deg
# %bb.0:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 425984
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end0:
	.size	rad2deg, .Lfunc_end0-rad2deg
                                        # -- End function
	.globl	deg2rad                         # -- Begin function deg2rad
	.p2align	5
	.type	deg2rad,@function
deg2rad:                                # @deg2rad
# %bb.0:
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
	ret
.Lfunc_end1:
	.size	deg2rad, .Lfunc_end1-deg2rad
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
