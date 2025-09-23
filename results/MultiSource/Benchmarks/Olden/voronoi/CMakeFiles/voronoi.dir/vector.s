	.file	"vector.c"
	.text
	.globl	V2_cprod                        # -- Begin function V2_cprod
	.p2align	5
	.type	V2_cprod,@function
V2_cprod:                               # @V2_cprod
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a1, 8
	fneg.d	$fa1, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	ret
.Lfunc_end0:
	.size	V2_cprod, .Lfunc_end0-V2_cprod
                                        # -- End function
	.globl	V2_dot                          # -- Begin function V2_dot
	.p2align	5
	.type	V2_dot,@function
V2_dot:                                 # @V2_dot
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, 8
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $a1, 0
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	ret
.Lfunc_end1:
	.size	V2_dot, .Lfunc_end1-V2_dot
                                        # -- End function
	.globl	V2_times                        # -- Begin function V2_times
	.p2align	5
	.type	V2_times,@function
V2_times:                               # @V2_times
# %bb.0:
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a1, 8
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 0
	fmul.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $a0, 8
	ret
.Lfunc_end2:
	.size	V2_times, .Lfunc_end2-V2_times
                                        # -- End function
	.globl	V2_sum                          # -- Begin function V2_sum
	.p2align	5
	.type	V2_sum,@function
V2_sum:                                 # @V2_sum
# %bb.0:
	vld	$vr0, $a1, 0
	vld	$vr1, $a2, 0
	vfadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end3:
	.size	V2_sum, .Lfunc_end3-V2_sum
                                        # -- End function
	.globl	V2_sub                          # -- Begin function V2_sub
	.p2align	5
	.type	V2_sub,@function
V2_sub:                                 # @V2_sub
# %bb.0:
	vld	$vr0, $a1, 0
	vld	$vr1, $a2, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end4:
	.size	V2_sub, .Lfunc_end4-V2_sub
                                        # -- End function
	.globl	V2_magn                         # -- Begin function V2_magn
	.p2align	5
	.type	V2_magn,@function
V2_magn:                                # @V2_magn
# %bb.0:
	fld.d	$fa0, $a0, 8
	fld.d	$fa1, $a0, 0
	fmul.d	$fa0, $fa0, $fa0
	fmadd.d	$fa0, $fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa0
	ret
.Lfunc_end5:
	.size	V2_magn, .Lfunc_end5-V2_magn
                                        # -- End function
	.globl	V2_cross                        # -- Begin function V2_cross
	.p2align	5
	.type	V2_cross,@function
V2_cross:                               # @V2_cross
# %bb.0:
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	fst.d	$fa0, $a0, 0
	fneg.d	$fa0, $fa1
	fst.d	$fa0, $a0, 8
	ret
.Lfunc_end6:
	.size	V2_cross, .Lfunc_end6-V2_cross
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
