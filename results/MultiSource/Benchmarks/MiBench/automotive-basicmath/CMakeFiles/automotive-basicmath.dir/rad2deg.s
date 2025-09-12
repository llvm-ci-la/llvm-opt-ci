	.file	"rad2deg.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rad2deg
.LCPI0_0:
	.dword	0x4066800000000000              # double 180
.LCPI0_1:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
	.text
	.globl	rad2deg
	.p2align	5
	.type	rad2deg,@function
rad2deg:                                # @rad2deg
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	ret
.Lfunc_end0:
	.size	rad2deg, .Lfunc_end0-rad2deg
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function deg2rad
.LCPI1_0:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI1_1:
	.dword	0x4066800000000000              # double 180
	.text
	.globl	deg2rad
	.p2align	5
	.type	deg2rad,@function
deg2rad:                                # @deg2rad
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_1)
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	ret
.Lfunc_end1:
	.size	deg2rad, .Lfunc_end1-deg2rad
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
