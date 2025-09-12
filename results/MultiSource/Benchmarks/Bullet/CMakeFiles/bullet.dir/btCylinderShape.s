	.file	"btCylinderShape.cpp"
	.text
	.globl	_ZN15btCylinderShapeC2ERK9btVector3 # -- Begin function _ZN15btCylinderShapeC2ERK9btVector3
	.p2align	5
	.type	_ZN15btCylinderShapeC2ERK9btVector3,@function
_ZN15btCylinderShapeC2ERK9btVector3:    # @_ZN15btCylinderShapeC2ERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV15btCylinderShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV15btCylinderShape+16)
	fld.s	$fa0, $fp, 0
	fld.s	$fa1, $s0, 24
	fld.s	$fa2, $fp, 4
	fld.s	$fa3, $s0, 28
	st.d	$a0, $s0, 0
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fld.s	$fa2, $fp, 8
	fld.s	$fa3, $s0, 32
	fld.s	$fa4, $s0, 56
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 64
	fmul.s	$fa2, $fa2, $fa3
	fsub.s	$fa0, $fa0, $fa4
	fsub.s	$fa1, $fa1, $fa4
	fsub.s	$fa2, $fa2, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 40
	st.d	$a1, $s0, 48
	ori	$a0, $zero, 13
	st.w	$a0, $s0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN15btCylinderShapeC2ERK9btVector3, .Lfunc_end0-_ZN15btCylinderShapeC2ERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	__clang_call_terminate, .Lfunc_end1-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN16btCylinderShapeXC2ERK9btVector3 # -- Begin function _ZN16btCylinderShapeXC2ERK9btVector3
	.p2align	5
	.type	_ZN16btCylinderShapeXC2ERK9btVector3,@function
_ZN16btCylinderShapeXC2ERK9btVector3:   # @_ZN16btCylinderShapeXC2ERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 0
	fld.s	$fa1, $s0, 24
	fld.s	$fa2, $fp, 4
	fld.s	$fa3, $s0, 28
	fld.s	$fa4, $fp, 8
	fld.s	$fa5, $s0, 32
	fld.s	$fa6, $s0, 56
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	fsub.s	$fa0, $fa0, $fa6
	fsub.s	$fa1, $fa1, $fa6
	fsub.s	$fa2, $fa2, $fa6
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 40
	st.d	$a1, $s0, 48
	ori	$a0, $zero, 13
	st.w	$a0, $s0, 8
	pcalau12i	$a0, %pc_hi20(_ZTV16btCylinderShapeX+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV16btCylinderShapeX+16)
	st.d	$a0, $s0, 0
	st.w	$zero, $s0, 64
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	_ZN16btCylinderShapeXC2ERK9btVector3, .Lfunc_end2-_ZN16btCylinderShapeXC2ERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btCylinderShapeZC2ERK9btVector3 # -- Begin function _ZN16btCylinderShapeZC2ERK9btVector3
	.p2align	5
	.type	_ZN16btCylinderShapeZC2ERK9btVector3,@function
_ZN16btCylinderShapeZC2ERK9btVector3:   # @_ZN16btCylinderShapeZC2ERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 0
	fld.s	$fa1, $s0, 24
	fld.s	$fa2, $fp, 4
	fld.s	$fa3, $s0, 28
	fld.s	$fa4, $fp, 8
	fld.s	$fa5, $s0, 32
	fld.s	$fa6, $s0, 56
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	fsub.s	$fa0, $fa0, $fa6
	fsub.s	$fa1, $fa1, $fa6
	fsub.s	$fa2, $fa2, $fa6
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 40
	st.d	$a1, $s0, 48
	ori	$a0, $zero, 13
	st.w	$a0, $s0, 8
	pcalau12i	$a0, %pc_hi20(_ZTV16btCylinderShapeZ+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV16btCylinderShapeZ+16)
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 64
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZN16btCylinderShapeZC2ERK9btVector3, .Lfunc_end3-_ZN16btCylinderShapeZC2ERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 88
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$a0, $s1
	jirl	$ra, $a4, 0
	fld.s	$fa1, $s1, 40
	fld.s	$fa2, $s1, 44
	fld.s	$fa3, $s1, 48
	fld.s	$fa4, $s2, 0
	fadd.s	$fa1, $fa0, $fa1
	fadd.s	$fa2, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fabs.s	$fa3, $fa4
	fld.s	$fa4, $s2, 4
	fld.s	$fa5, $s2, 8
	fld.s	$fa6, $s2, 16
	fld.s	$fa7, $s2, 20
	fabs.s	$fa4, $fa4
	fabs.s	$fa5, $fa5
	fabs.s	$fa6, $fa6
	fabs.s	$fa7, $fa7
	fld.s	$ft0, $s2, 24
	fld.s	$ft1, $s2, 32
	fld.s	$ft2, $s2, 36
	fld.s	$ft3, $s2, 40
	fabs.s	$ft0, $ft0
	fabs.s	$ft1, $ft1
	fabs.s	$ft2, $ft2
	fabs.s	$ft3, $ft3
	fld.s	$ft4, $s2, 48
	fld.s	$ft5, $s2, 52
	fld.s	$ft6, $s2, 56
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa3, $fa3, $fa1, $fa4
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fmul.s	$fa4, $fa2, $fa7
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fmadd.s	$fa4, $ft0, $fa0, $fa4
	fmul.s	$fa2, $fa2, $ft2
	fmadd.s	$fa1, $ft1, $fa1, $fa2
	fmadd.s	$fa0, $ft3, $fa0, $fa1
	fsub.s	$fa1, $ft4, $fa3
	fsub.s	$fa2, $ft5, $fa4
	fsub.s	$fa5, $ft6, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fadd.s	$fa1, $fa3, $ft4
	fadd.s	$fa2, $fa4, $ft5
	fadd.s	$fa0, $ft6, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end4-_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3: # @_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	.cfi_offset 61, -72
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	fld.s	$fs3, $fp, 40
	fld.s	$fs4, $fp, 44
	fld.s	$fs5, $fp, 48
	ld.d	$a2, $a0, 88
	move	$s0, $a1
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs2, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fadd.s	$fa1, $fs3, $fs1
	fadd.s	$fa2, $fs4, $fs2
	fadd.s	$fa0, $fs5, $fa0
	fadd.s	$fa1, $fa1, $fa1
	fadd.s	$fa2, $fa2, $fa2
	fadd.s	$fa0, $fa0, $fa0
	vldi	$vr3, -1240
	fdiv.s	$fa3, $fs0, $fa3
	fmul.s	$fa0, $fa0, $fa0
	fmadd.s	$fa4, $fa2, $fa2, $fa0
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmul.s	$fa0, $fa3, $fa0
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa1, $fa1, $fa1, $fa2
	fmul.s	$fa1, $fa3, $fa1
	fst.s	$fa4, $s0, 0
	fst.s	$fa0, $s0, 4
	fst.s	$fa1, $s0, 8
	st.w	$zero, $s0, 12
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end5-_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3
# %bb.0:
	fld.s	$fa3, $a1, 8
	fld.s	$fa4, $a1, 4
	fld.s	$fa0, $a0, 44
	fld.s	$fa1, $a0, 40
	fmul.s	$fa2, $fa3, $fa3
	fmadd.s	$fa5, $fa4, $fa4, $fa2
	movgr2fr.w	$fa2, $zero
	fcmp.ceq.s	$fcc0, $fa5, $fa2
	bcnez	$fcc0, .LBB6_2
# %bb.1:
	fsqrt.s	$fa5, $fa5
	fld.s	$fa6, $a1, 0
	fdiv.s	$fa5, $fa0, $fa5
	fmul.s	$fa0, $fa4, $fa5
	fneg.s	$fa4, $fa1
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fsel	$fa1, $fa1, $fa4, $fcc0
	fmul.s	$fa2, $fa3, $fa5
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$a1, $a0, 31, 0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a0, $a2, 63, 32
	ret
.LBB6_2:
	fld.s	$fa3, $a1, 0
	move	$a1, $zero
	fneg.s	$fa4, $fa1
	fcmp.clt.s	$fcc0, $fa3, $fa2
	fsel	$fa1, $fa1, $fa4, $fcc0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a0, $a2, 63, 32
	ret
.Lfunc_end6:
	.size	_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end6-_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3
                                        # -- End function
	.globl	_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3
# %bb.0:
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a1, 0
	fld.s	$fa0, $a0, 40
	fld.s	$fa1, $a0, 48
	fmul.s	$fa2, $fa3, $fa3
	fmadd.s	$fa5, $fa4, $fa4, $fa2
	movgr2fr.w	$fa2, $zero
	fcmp.ceq.s	$fcc0, $fa5, $fa2
	bcnez	$fcc0, .LBB7_2
# %bb.1:
	fsqrt.s	$fa5, $fa5
	fld.s	$fa6, $a1, 8
	fdiv.s	$fa5, $fa0, $fa5
	fmul.s	$fa0, $fa4, $fa5
	fneg.s	$fa4, $fa1
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fsel	$fa1, $fa1, $fa4, $fcc0
	fmul.s	$fa2, $fa3, $fa5
	movfr2gr.s	$a0, $fa2
	slli.d	$a0, $a0, 32
	b	.LBB7_3
.LBB7_2:
	fld.s	$fa3, $a1, 8
	move	$a0, $zero
	fneg.s	$fa4, $fa1
	fcmp.clt.s	$fcc0, $fa3, $fa2
	fsel	$fa1, $fa1, $fa4, $fcc0
.LBB7_3:                                # %_Z21CylinderLocalSupportZRK9btVector3S1_.exit
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	or	$a0, $a0, $a1
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end7:
	.size	_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end7-_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3
                                        # -- End function
	.globl	_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3
# %bb.0:
	fld.s	$fa3, $a1, 8
	fld.s	$fa4, $a1, 0
	fld.s	$fa0, $a0, 40
	fld.s	$fa1, $a0, 44
	fmul.s	$fa2, $fa3, $fa3
	fmadd.s	$fa5, $fa4, $fa4, $fa2
	movgr2fr.w	$fa2, $zero
	fcmp.ceq.s	$fcc0, $fa5, $fa2
	bcnez	$fcc0, .LBB8_2
# %bb.1:
	fsqrt.s	$fa5, $fa5
	fld.s	$fa6, $a1, 4
	fdiv.s	$fa5, $fa0, $fa5
	fmul.s	$fa0, $fa4, $fa5
	fneg.s	$fa4, $fa1
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fsel	$fa1, $fa1, $fa4, $fcc0
	fmul.s	$fa2, $fa3, $fa5
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$a1, $a0, 31, 0
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a0, $a2, 63, 32
	ret
.LBB8_2:
	fld.s	$fa3, $a1, 4
	move	$a1, $zero
	fneg.s	$fa4, $fa1
	fcmp.clt.s	$fcc0, $fa3, $fa2
	fsel	$fa1, $fa1, $fa4, $fcc0
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a0, $a2, 63, 32
	ret
.Lfunc_end8:
	.size	_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end8-_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3
                                        # -- End function
	.globl	_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
# %bb.0:
	blez	$a3, .LBB9_6
# %bb.1:                                # %.lr.ph
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 4
	movgr2fr.w	$fa0, $zero
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_4 Depth=1
	fld.s	$fa4, $a1, 0
	move	$a4, $zero
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fsel	$fa2, $fa2, $fa3, $fcc0
.LBB9_3:                                # %_Z21CylinderLocalSupportYRK9btVector3S1_.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	movfr2gr.s	$a5, $fa1
	movfr2gr.s	$a6, $fa2
	bstrins.d	$a5, $a6, 63, 32
	st.d	$a5, $a2, -8
	st.d	$a4, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 16
	beqz	$a3, .LBB9_6
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a1, 4
	fld.s	$fa5, $a1, -4
	fld.s	$fa1, $a0, 40
	fld.s	$fa2, $a0, 44
	fmul.s	$fa3, $fa4, $fa4
	fmadd.s	$fa6, $fa5, $fa5, $fa3
	fcmp.ceq.s	$fcc0, $fa6, $fa0
	fneg.s	$fa3, $fa2
	bcnez	$fcc0, .LBB9_2
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	fld.s	$fa7, $a1, 0
	fsqrt.s	$fa6, $fa6
	fdiv.s	$fa6, $fa1, $fa6
	fmul.s	$fa1, $fa5, $fa6
	fcmp.clt.s	$fcc0, $fa7, $fa0
	fsel	$fa2, $fa2, $fa3, $fcc0
	fmul.s	$fa3, $fa4, $fa6
	movfr2gr.s	$a4, $fa3
	bstrpick.d	$a4, $a4, 31, 0
	b	.LBB9_3
.LBB9_6:                                # %._crit_edge
	ret
.Lfunc_end9:
	.size	_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end9-_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
                                        # -- End function
	.globl	_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
# %bb.0:
	blez	$a3, .LBB10_6
# %bb.1:                                # %.lr.ph
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	movgr2fr.w	$fa0, $zero
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_2:                               #   in Loop: Header=BB10_4 Depth=1
	fld.s	$fa4, $a1, 0
	move	$a4, $zero
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fsel	$fa2, $fa2, $fa3, $fcc0
.LBB10_3:                               # %_Z21CylinderLocalSupportZRK9btVector3S1_.exit
                                        #   in Loop: Header=BB10_4 Depth=1
	movfr2gr.s	$a5, $fa1
	bstrpick.d	$a5, $a5, 31, 0
	or	$a4, $a4, $a5
	movfr2gr.s	$a5, $fa2
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a4, $a2, -8
	st.d	$a5, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 16
	beqz	$a3, .LBB10_6
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a1, -4
	fld.s	$fa5, $a1, -8
	fld.s	$fa1, $a0, 40
	fld.s	$fa2, $a0, 48
	fmul.s	$fa3, $fa4, $fa4
	fmadd.s	$fa6, $fa5, $fa5, $fa3
	fcmp.ceq.s	$fcc0, $fa6, $fa0
	fneg.s	$fa3, $fa2
	bcnez	$fcc0, .LBB10_2
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	fld.s	$fa7, $a1, 0
	fsqrt.s	$fa6, $fa6
	fdiv.s	$fa6, $fa1, $fa6
	fmul.s	$fa1, $fa5, $fa6
	fcmp.clt.s	$fcc0, $fa7, $fa0
	fsel	$fa2, $fa2, $fa3, $fcc0
	fmul.s	$fa3, $fa4, $fa6
	movfr2gr.s	$a4, $fa3
	slli.d	$a4, $a4, 32
	b	.LBB10_3
.LBB10_6:                               # %._crit_edge
	ret
.Lfunc_end10:
	.size	_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end10-_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
                                        # -- End function
	.globl	_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
# %bb.0:
	blez	$a3, .LBB11_6
# %bb.1:                                # %.lr.ph
	addi.d	$a2, $a2, 8
	movgr2fr.w	$fa0, $zero
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_2:                               #   in Loop: Header=BB11_4 Depth=1
	fld.s	$fa4, $a1, 0
	move	$a4, $zero
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fsel	$fa2, $fa2, $fa3, $fcc0
.LBB11_3:                               # %_Z21CylinderLocalSupportXRK9btVector3S1_.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	movfr2gr.s	$a5, $fa2
	movfr2gr.s	$a6, $fa1
	bstrins.d	$a5, $a6, 63, 32
	st.d	$a5, $a2, -8
	st.d	$a4, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 16
	beqz	$a3, .LBB11_6
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a1, 4
	fld.s	$fa1, $a0, 44
	fld.s	$fa2, $a0, 40
	fmul.s	$fa3, $fa4, $fa4
	fmadd.s	$fa6, $fa5, $fa5, $fa3
	fcmp.ceq.s	$fcc0, $fa6, $fa0
	fneg.s	$fa3, $fa2
	bcnez	$fcc0, .LBB11_2
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	fld.s	$fa7, $a1, 0
	fsqrt.s	$fa6, $fa6
	fdiv.s	$fa6, $fa1, $fa6
	fmul.s	$fa1, $fa5, $fa6
	fcmp.clt.s	$fcc0, $fa7, $fa0
	fsel	$fa2, $fa2, $fa3, $fcc0
	fmul.s	$fa3, $fa4, $fa6
	movfr2gr.s	$a4, $fa3
	bstrpick.d	$a4, $a4, 31, 0
	b	.LBB11_3
.LBB11_6:                               # %._crit_edge
	ret
.Lfunc_end11:
	.size	_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end11-_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
                                        # -- End function
	.section	.text._ZN15btCylinderShapeD0Ev,"axG",@progbits,_ZN15btCylinderShapeD0Ev,comdat
	.weak	_ZN15btCylinderShapeD0Ev        # -- Begin function _ZN15btCylinderShapeD0Ev
	.p2align	5
	.type	_ZN15btCylinderShapeD0Ev,@function
_ZN15btCylinderShapeD0Ev:               # @_ZN15btCylinderShapeD0Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB12_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:                                # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_4:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN15btCylinderShapeD0Ev, .Lfunc_end12-_ZN15btCylinderShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN15btCylinderShapeD0Ev,"aG",@progbits,_ZN15btCylinderShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end12-.Ltmp4            #   Call between .Ltmp4 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape15getLocalScalingEv,"axG",@progbits,_ZNK21btConvexInternalShape15getLocalScalingEv,comdat
	.weak	_ZNK21btConvexInternalShape15getLocalScalingEv # -- Begin function _ZNK21btConvexInternalShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape15getLocalScalingEv,@function
_ZNK21btConvexInternalShape15getLocalScalingEv: # @_ZNK21btConvexInternalShape15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 24
	ret
.Lfunc_end13:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end13-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK15btCylinderShape7getNameEv,"axG",@progbits,_ZNK15btCylinderShape7getNameEv,comdat
	.weak	_ZNK15btCylinderShape7getNameEv # -- Begin function _ZNK15btCylinderShape7getNameEv
	.p2align	5
	.type	_ZNK15btCylinderShape7getNameEv,@function
_ZNK15btCylinderShape7getNameEv:        # @_ZNK15btCylinderShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end14:
	.size	_ZNK15btCylinderShape7getNameEv, .Lfunc_end14-_ZNK15btCylinderShape7getNameEv
                                        # -- End function
	.section	.text._ZN15btCylinderShape9setMarginEf,"axG",@progbits,_ZN15btCylinderShape9setMarginEf,comdat
	.weak	_ZN15btCylinderShape9setMarginEf # -- Begin function _ZN15btCylinderShape9setMarginEf
	.p2align	5
	.type	_ZN15btCylinderShape9setMarginEf,@function
_ZN15btCylinderShape9setMarginEf:       # @_ZN15btCylinderShape9setMarginEf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	.cfi_offset 57, -32
	.cfi_offset 58, -40
	.cfi_offset 59, -48
	.cfi_offset 60, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs2, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fld.s	$fa1, $fp, 40
	ld.d	$a0, $fp, 0
	fld.s	$fa2, $fp, 44
	fld.s	$fa3, $fp, 48
	fst.s	$fs0, $fp, 56
	ld.d	$a1, $a0, 88
	fadd.s	$fs3, $fs1, $fa1
	fadd.s	$fs2, $fs2, $fa2
	fadd.s	$fs4, $fa0, $fa3
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fsub.s	$fa1, $fs3, $fs0
	fsub.s	$fa2, $fs2, $fs1
	fsub.s	$fa0, $fs4, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 40
	st.d	$a1, $fp, 48
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end15:
	.size	_ZN15btCylinderShape9setMarginEf, .Lfunc_end15-_ZN15btCylinderShape9setMarginEf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end16:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end16-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3
.LCPI17_0:
	.word	0x28800000                      # float 1.42108547E-14
	.section	.text._ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3,"axG",@progbits,_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3,comdat
	.weak	_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3
	.p2align	5
	.type	_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3,@function
_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3: # @_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	.cfi_offset 58, -72
	.cfi_offset 59, -80
	.cfi_offset 60, -88
	.cfi_offset 61, -96
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 104
	move	$s2, $a1
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a2, $a2, 88
	move	$s1, $a0
	move	$fp, $a1
	srli.d	$s3, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_2
# %bb.1:
	movgr2fr.w	$fs0, $fp
	movgr2fr.w	$fs1, $s3
	movgr2fr.w	$fs2, $s1
	fld.s	$fa0, $s2, 0
	fld.s	$fa1, $s2, 4
	fld.s	$fa2, $s2, 8
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI17_0)
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fcmp.clt.s	$fcc0, $fa4, $fa3
	vldi	$vr3, -1040
	fsel	$fa0, $fa0, $fa3, $fcc0
	fsel	$fa1, $fa1, $fa3, $fcc0
	fsel	$fa2, $fa2, $fa3, $fcc0
	fmul.s	$fa3, $fa1, $fa1
	ld.d	$a0, $s0, 0
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	ld.d	$a1, $a0, 88
	fmul.s	$fs3, $fa0, $fa3
	fmul.s	$fs4, $fa1, $fa3
	fmul.s	$fs5, $fa2, $fa3
	move	$a0, $s0
	jirl	$ra, $a1, 0
	fmul.s	$fa1, $fa0, $fs3
	fmul.s	$fa2, $fa0, $fs4
	fmul.s	$fa0, $fa0, $fs5
	fadd.s	$fa1, $fa1, $fs2
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa0, $fa0, $fs0
	movfr2gr.s	$s1, $fa1
	movfr2gr.s	$s3, $fa2
	movfr2gr.s	$a0, $fa0
	b	.LBB17_3
.LBB17_2:
	move	$a0, $fp
.LBB17_3:
	bstrins.d	$s1, $s3, 63, 32
	bstrpick.d	$a0, $a0, 31, 0
	bstrins.d	$fp, $a0, 31, 0
	move	$a0, $s1
	move	$a1, $fp
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end17:
	.size	_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3, .Lfunc_end17-_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end18:
	.size	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end18-_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ret
.Lfunc_end19:
	.size	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end19-_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
                                        # -- End function
	.section	.text._ZNK15btCylinderShape9getRadiusEv,"axG",@progbits,_ZNK15btCylinderShape9getRadiusEv,comdat
	.weak	_ZNK15btCylinderShape9getRadiusEv # -- Begin function _ZNK15btCylinderShape9getRadiusEv
	.p2align	5
	.type	_ZNK15btCylinderShape9getRadiusEv,@function
_ZNK15btCylinderShape9getRadiusEv:      # @_ZNK15btCylinderShape9getRadiusEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	.cfi_offset 57, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	fld.s	$fs1, $fp, 40
	ld.d	$a1, $a0, 88
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fadd.s	$fa0, $fs1, $fs0
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end20:
	.size	_ZNK15btCylinderShape9getRadiusEv, .Lfunc_end20-_ZNK15btCylinderShape9getRadiusEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16btCylinderShapeXD0Ev,"axG",@progbits,_ZN16btCylinderShapeXD0Ev,comdat
	.weak	_ZN16btCylinderShapeXD0Ev       # -- Begin function _ZN16btCylinderShapeXD0Ev
	.p2align	5
	.type	_ZN16btCylinderShapeXD0Ev,@function
_ZN16btCylinderShapeXD0Ev:              # @_ZN16btCylinderShapeXD0Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB21_2:
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp9:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.3:                                # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB21_4:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN16btCylinderShapeXD0Ev, .Lfunc_end21-_ZN16btCylinderShapeXD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16btCylinderShapeXD0Ev,"aG",@progbits,_ZN16btCylinderShapeXD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end21-.Ltmp10           #   Call between .Ltmp10 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK16btCylinderShapeX7getNameEv,"axG",@progbits,_ZNK16btCylinderShapeX7getNameEv,comdat
	.weak	_ZNK16btCylinderShapeX7getNameEv # -- Begin function _ZNK16btCylinderShapeX7getNameEv
	.p2align	5
	.type	_ZNK16btCylinderShapeX7getNameEv,@function
_ZNK16btCylinderShapeX7getNameEv:       # @_ZNK16btCylinderShapeX7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ret
.Lfunc_end22:
	.size	_ZNK16btCylinderShapeX7getNameEv, .Lfunc_end22-_ZNK16btCylinderShapeX7getNameEv
                                        # -- End function
	.section	.text._ZNK16btCylinderShapeX9getRadiusEv,"axG",@progbits,_ZNK16btCylinderShapeX9getRadiusEv,comdat
	.weak	_ZNK16btCylinderShapeX9getRadiusEv # -- Begin function _ZNK16btCylinderShapeX9getRadiusEv
	.p2align	5
	.type	_ZNK16btCylinderShapeX9getRadiusEv,@function
_ZNK16btCylinderShapeX9getRadiusEv:     # @_ZNK16btCylinderShapeX9getRadiusEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	.cfi_offset 57, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	fld.s	$fs1, $fp, 44
	ld.d	$a1, $a0, 88
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fadd.s	$fa0, $fs1, $fs0
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	_ZNK16btCylinderShapeX9getRadiusEv, .Lfunc_end23-_ZNK16btCylinderShapeX9getRadiusEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16btCylinderShapeZD0Ev,"axG",@progbits,_ZN16btCylinderShapeZD0Ev,comdat
	.weak	_ZN16btCylinderShapeZD0Ev       # -- Begin function _ZN16btCylinderShapeZD0Ev
	.p2align	5
	.type	_ZN16btCylinderShapeZD0Ev,@function
_ZN16btCylinderShapeZD0Ev:              # @_ZN16btCylinderShapeZD0Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
.Ltmp12:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB24_2:
.Ltmp14:                                # EH_LABEL
	move	$s0, $a0
.Ltmp15:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.3:                                # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_4:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN16btCylinderShapeZD0Ev, .Lfunc_end24-_ZN16btCylinderShapeZD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16btCylinderShapeZD0Ev,"aG",@progbits,_ZN16btCylinderShapeZD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end24-.Ltmp16           #   Call between .Ltmp16 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK16btCylinderShapeZ7getNameEv,"axG",@progbits,_ZNK16btCylinderShapeZ7getNameEv,comdat
	.weak	_ZNK16btCylinderShapeZ7getNameEv # -- Begin function _ZNK16btCylinderShapeZ7getNameEv
	.p2align	5
	.type	_ZNK16btCylinderShapeZ7getNameEv,@function
_ZNK16btCylinderShapeZ7getNameEv:       # @_ZNK16btCylinderShapeZ7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ret
.Lfunc_end25:
	.size	_ZNK16btCylinderShapeZ7getNameEv, .Lfunc_end25-_ZNK16btCylinderShapeZ7getNameEv
                                        # -- End function
	.section	.text._ZNK16btCylinderShapeZ9getRadiusEv,"axG",@progbits,_ZNK16btCylinderShapeZ9getRadiusEv,comdat
	.weak	_ZNK16btCylinderShapeZ9getRadiusEv # -- Begin function _ZNK16btCylinderShapeZ9getRadiusEv
	.p2align	5
	.type	_ZNK16btCylinderShapeZ9getRadiusEv,@function
_ZNK16btCylinderShapeZ9getRadiusEv:     # @_ZNK16btCylinderShapeZ9getRadiusEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	.cfi_offset 57, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	fld.s	$fs1, $fp, 40
	ld.d	$a1, $a0, 88
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fadd.s	$fa0, $fs1, $fs0
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end26:
	.size	_ZNK16btCylinderShapeZ9getRadiusEv, .Lfunc_end26-_ZNK16btCylinderShapeZ9getRadiusEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK16btCylinderShapeZ9getUpAxisEv,"axG",@progbits,_ZNK16btCylinderShapeZ9getUpAxisEv,comdat
	.weak	_ZNK16btCylinderShapeZ9getUpAxisEv # -- Begin function _ZNK16btCylinderShapeZ9getUpAxisEv
	.p2align	5
	.type	_ZNK16btCylinderShapeZ9getUpAxisEv,@function
_ZNK16btCylinderShapeZ9getUpAxisEv:     # @_ZNK16btCylinderShapeZ9getUpAxisEv
# %bb.0:
	ori	$a0, $zero, 2
	ret
.Lfunc_end27:
	.size	_ZNK16btCylinderShapeZ9getUpAxisEv, .Lfunc_end27-_ZNK16btCylinderShapeZ9getUpAxisEv
                                        # -- End function
	.type	_ZTV15btCylinderShape,@object   # @_ZTV15btCylinderShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV15btCylinderShape
	.p2align	3, 0x0
_ZTV15btCylinderShape:
	.dword	0
	.dword	_ZTI15btCylinderShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN15btCylinderShapeD0Ev
	.dword	_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK15btCylinderShape7getNameEv
	.dword	_ZN15btCylinderShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK15btCylinderShape9getRadiusEv
	.size	_ZTV15btCylinderShape, 168

	.type	_ZTV16btCylinderShapeX,@object  # @_ZTV16btCylinderShapeX
	.globl	_ZTV16btCylinderShapeX
	.p2align	3, 0x0
_ZTV16btCylinderShapeX:
	.dword	0
	.dword	_ZTI16btCylinderShapeX
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN16btCylinderShapeXD0Ev
	.dword	_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK16btCylinderShapeX7getNameEv
	.dword	_ZN15btCylinderShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK16btCylinderShapeX9getRadiusEv
	.size	_ZTV16btCylinderShapeX, 168

	.type	_ZTV16btCylinderShapeZ,@object  # @_ZTV16btCylinderShapeZ
	.globl	_ZTV16btCylinderShapeZ
	.p2align	3, 0x0
_ZTV16btCylinderShapeZ:
	.dword	0
	.dword	_ZTI16btCylinderShapeZ
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN16btCylinderShapeZD0Ev
	.dword	_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK16btCylinderShapeZ7getNameEv
	.dword	_ZN15btCylinderShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK16btCylinderShapeZ9getRadiusEv
	.dword	_ZNK16btCylinderShapeZ9getUpAxisEv
	.size	_ZTV16btCylinderShapeZ, 176

	.type	_ZTI15btCylinderShape,@object   # @_ZTI15btCylinderShape
	.globl	_ZTI15btCylinderShape
	.p2align	3, 0x0
_ZTI15btCylinderShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15btCylinderShape
	.dword	_ZTI21btConvexInternalShape
	.size	_ZTI15btCylinderShape, 24

	.type	_ZTS15btCylinderShape,@object   # @_ZTS15btCylinderShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS15btCylinderShape
_ZTS15btCylinderShape:
	.asciz	"15btCylinderShape"
	.size	_ZTS15btCylinderShape, 18

	.type	_ZTI16btCylinderShapeX,@object  # @_ZTI16btCylinderShapeX
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI16btCylinderShapeX
	.p2align	3, 0x0
_ZTI16btCylinderShapeX:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS16btCylinderShapeX
	.dword	_ZTI15btCylinderShape
	.size	_ZTI16btCylinderShapeX, 24

	.type	_ZTS16btCylinderShapeX,@object  # @_ZTS16btCylinderShapeX
	.section	.rodata,"a",@progbits
	.globl	_ZTS16btCylinderShapeX
_ZTS16btCylinderShapeX:
	.asciz	"16btCylinderShapeX"
	.size	_ZTS16btCylinderShapeX, 19

	.type	_ZTI16btCylinderShapeZ,@object  # @_ZTI16btCylinderShapeZ
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI16btCylinderShapeZ
	.p2align	3, 0x0
_ZTI16btCylinderShapeZ:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS16btCylinderShapeZ
	.dword	_ZTI15btCylinderShape
	.size	_ZTI16btCylinderShapeZ, 24

	.type	_ZTS16btCylinderShapeZ,@object  # @_ZTS16btCylinderShapeZ
	.section	.rodata,"a",@progbits
	.globl	_ZTS16btCylinderShapeZ
_ZTS16btCylinderShapeZ:
	.asciz	"16btCylinderShapeZ"
	.size	_ZTS16btCylinderShapeZ, 19

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CylinderY"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"CylinderX"
	.size	.L.str.1, 10

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"CylinderZ"
	.size	.L.str.2, 10

	.globl	_ZN15btCylinderShapeC1ERK9btVector3
	.type	_ZN15btCylinderShapeC1ERK9btVector3,@function
_ZN15btCylinderShapeC1ERK9btVector3 = _ZN15btCylinderShapeC2ERK9btVector3
	.globl	_ZN16btCylinderShapeXC1ERK9btVector3
	.type	_ZN16btCylinderShapeXC1ERK9btVector3,@function
_ZN16btCylinderShapeXC1ERK9btVector3 = _ZN16btCylinderShapeXC2ERK9btVector3
	.globl	_ZN16btCylinderShapeZC1ERK9btVector3
	.type	_ZN16btCylinderShapeZC1ERK9btVector3,@function
_ZN16btCylinderShapeZC1ERK9btVector3 = _ZN16btCylinderShapeZC2ERK9btVector3
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTI15btCylinderShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS15btCylinderShape
	.addrsig_sym _ZTI21btConvexInternalShape
	.addrsig_sym _ZTI16btCylinderShapeX
	.addrsig_sym _ZTS16btCylinderShapeX
	.addrsig_sym _ZTI16btCylinderShapeZ
	.addrsig_sym _ZTS16btCylinderShapeZ
