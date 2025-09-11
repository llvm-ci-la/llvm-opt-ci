	.file	"Bounds.c"
	.text
	.globl	Bounds_Copy                     # -- Begin function Bounds_Copy
	.p2align	5
	.type	Bounds_Copy,@function
Bounds_Copy:                            # @Bounds_Copy
# %bb.0:
	vld	$vr0, $a0, 16
	vst	$vr0, $a1, 16
	vld	$vr0, $a0, 0
	vst	$vr0, $a1, 0
	ret
.Lfunc_end0:
	.size	Bounds_Copy, .Lfunc_end0-Bounds_Copy
                                        # -- End function
	.globl	Bounds_Infinite                 # -- Begin function Bounds_Infinite
	.p2align	5
	.type	Bounds_Infinite,@function
Bounds_Infinite:                        # @Bounds_Infinite
# %bb.0:
	lu12i.w	$a1, -93185
	ori	$a1, $a1, 2549
	lu32i.d	$a1, -504061
	lu52i.d	$a2, $a1, 1235
	vreplgr2vr.d	$vr0, $a2
	vst	$vr0, $a0, 0
	lu52i.d	$a1, $a1, -813
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $a0, 16
	ret
.Lfunc_end1:
	.size	Bounds_Infinite, .Lfunc_end1-Bounds_Infinite
                                        # -- End function
	.globl	Bounds_AddBounds                # -- Begin function Bounds_AddBounds
	.p2align	5
	.type	Bounds_AddBounds,@function
Bounds_AddBounds:                       # @Bounds_AddBounds
# %bb.0:
	vld	$vr0, $a0, 0
	vld	$vr1, $a1, 0
	vfcmp.clt.d	$vr2, $vr0, $vr1
	vbitsel.v	$vr0, $vr1, $vr0, $vr2
	vst	$vr0, $a0, 0
	vld	$vr0, $a0, 16
	vld	$vr1, $a1, 16
	vfcmp.clt.d	$vr2, $vr1, $vr0
	vbitsel.v	$vr0, $vr1, $vr0, $vr2
	vst	$vr0, $a0, 16
	ret
.Lfunc_end2:
	.size	Bounds_AddBounds, .Lfunc_end2-Bounds_AddBounds
                                        # -- End function
	.globl	Bounds_AddEpsilon               # -- Begin function Bounds_AddEpsilon
	.p2align	5
	.type	Bounds_AddEpsilon,@function
Bounds_AddEpsilon:                      # @Bounds_AddEpsilon
# %bb.0:
	vld	$vr1, $a0, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr2, $a0, 16
	vreplvei.d	$vr0, $vr0, 0
	vfsub.d	$vr1, $vr1, $vr0
	vst	$vr1, $a0, 0
	vfadd.d	$vr0, $vr0, $vr2
	vst	$vr0, $a0, 16
	ret
.Lfunc_end3:
	.size	Bounds_AddEpsilon, .Lfunc_end3-Bounds_AddEpsilon
                                        # -- End function
	.globl	Bounds_IsOverlappingBounds      # -- Begin function Bounds_IsOverlappingBounds
	.p2align	5
	.type	Bounds_IsOverlappingBounds,@function
Bounds_IsOverlappingBounds:             # @Bounds_IsOverlappingBounds
# %bb.0:
	fld.d	$fa0, $a1, 16
	fld.d	$fa1, $a0, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB4_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB4_2:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 16
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB4_4
# %bb.3:
	move	$a0, $zero
	ret
.LBB4_4:
	fld.d	$fa0, $a1, 24
	fld.d	$fa1, $a0, 8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB4_6
# %bb.5:
	move	$a0, $zero
	ret
.LBB4_6:
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a0, 24
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB4_8
# %bb.7:
	move	$a0, $zero
	ret
.LBB4_8:
	ori	$a0, $zero, 1
	ret
.Lfunc_end4:
	.size	Bounds_IsOverlappingBounds, .Lfunc_end4-Bounds_IsOverlappingBounds
                                        # -- End function
	.globl	Bounds_WidthAxis                # -- Begin function Bounds_WidthAxis
	.p2align	5
	.type	Bounds_WidthAxis,@function
Bounds_WidthAxis:                       # @Bounds_WidthAxis
# %bb.0:
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB5_3
# %bb.1:
                                        # implicit-def: $f0_64
	bnez	$a1, .LBB5_5
# %bb.2:
	fld.d	$fa0, $a0, 16
	fld.d	$fa1, $a0, 0
	b	.LBB5_4
.LBB5_3:
	fld.d	$fa0, $a0, 24
	fld.d	$fa1, $a0, 8
.LBB5_4:
	fsub.d	$fa0, $fa0, $fa1
.LBB5_5:
	ret
.Lfunc_end5:
	.size	Bounds_WidthAxis, .Lfunc_end5-Bounds_WidthAxis
                                        # -- End function
	.globl	Bounds_CenterAxis               # -- Begin function Bounds_CenterAxis
	.p2align	5
	.type	Bounds_CenterAxis,@function
Bounds_CenterAxis:                      # @Bounds_CenterAxis
# %bb.0:
	beqz	$a1, .LBB6_3
# %bb.1:
	ori	$a2, $zero, 1
                                        # implicit-def: $f0_64
	bne	$a1, $a2, .LBB6_5
# %bb.2:
	addi.d	$a2, $a0, 8
	ori	$a1, $zero, 24
	b	.LBB6_4
.LBB6_3:
	ori	$a1, $zero, 16
	move	$a2, $a0
.LBB6_4:                                # %.sink.split
	fld.d	$fa0, $a2, 0
	fldx.d	$fa1, $a0, $a1
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
.LBB6_5:
	ret
.Lfunc_end6:
	.size	Bounds_CenterAxis, .Lfunc_end6-Bounds_CenterAxis
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
