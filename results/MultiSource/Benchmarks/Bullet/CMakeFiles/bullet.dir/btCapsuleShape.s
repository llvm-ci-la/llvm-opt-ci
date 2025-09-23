	.file	"btCapsuleShape.cpp"
	.text
	.globl	_ZN14btCapsuleShapeC2Eff        # -- Begin function _ZN14btCapsuleShapeC2Eff
	.p2align	5
	.type	_ZN14btCapsuleShapeC2Eff,@function
_ZN14btCapsuleShapeC2Eff:               # @_ZN14btCapsuleShapeC2Eff
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
	fmov.s	$fs0, $fa1
	fmov.s	$fs1, $fa0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV14btCapsuleShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV14btCapsuleShape+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 10
	st.w	$a0, $fp, 8
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 64
	vldi	$vr0, -1184
	fmul.s	$fa0, $fs0, $fa0
	fst.s	$fs1, $fp, 40
	fst.s	$fa0, $fp, 44
	fst.s	$fs1, $fp, 48
	st.w	$zero, $fp, 52
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN14btCapsuleShapeC2Eff, .Lfunc_end0-_ZN14btCapsuleShapeC2Eff
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3
.LCPI2_0:
	.word	0x38d1b717                      # float 9.99999974E-5
.LCPI2_1:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.text
	.globl	_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 64                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	.cfi_offset 57, -48
	.cfi_offset 58, -56
	.cfi_offset 59, -64
	.cfi_offset 60, -72
	.cfi_offset 61, -80
	.cfi_offset 62, -88
	.cfi_offset 63, -96
	move	$fp, $a0
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 8
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.s	$fa4, $a0, %pc_lo12(.LCPI2_0)
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fcmp.clt.s	$fcc0, $fa3, $fa4
	movgr2fr.w	$fs0, $zero
	bceqz	$fcc0, .LBB2_2
# %bb.1:
	vldi	$vr4, -1168
	fmov.s	$fs1, $fs0
	fmov.s	$fs2, $fs0
	b	.LBB2_3
.LBB2_2:
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa4, $fa0, $fa3
	fmul.s	$fs1, $fa1, $fa3
	fmul.s	$fs2, $fa2, $fa3
.LBB2_3:
	vst	$vr4, $sp, 32                   # 16-byte Folded Spill
	ld.w	$a0, $fp, 64
	addi.w	$a1, $a0, 2
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1366
	mul.d	$a2, $a1, $a2
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.w	$a1, $a1, $a2
	addi.d	$s1, $fp, 40
	slli.d	$a1, $a1, 2
	fldx.s	$fs3, $s1, $a1
	slli.d	$a0, $a0, 2
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 48
	fldx.s	$fa0, $s1, $a0
	addi.d	$s0, $sp, 48
	fld.s	$fa1, $fp, 24
	fld.s	$fa2, $fp, 28
	fstx.s	$fa0, $a0, $s0
	fld.s	$fa0, $sp, 48
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fs1, $fa2
	fmul.s	$fa1, $fs3, $fa1
	fadd.s	$fs4, $fa1, $fa0
	fld.s	$fa0, $sp, 52
	fld.s	$fa1, $fp, 32
	ld.d	$a0, $fp, 0
	fmul.s	$fa2, $fs3, $fa2
	fadd.s	$fs5, $fa2, $fa0
	fld.s	$fa0, $sp, 56
	ld.d	$a1, $a0, 88
	fmul.s	$fa1, $fs2, $fa1
	fmul.s	$fa1, $fs3, $fa1
	fadd.s	$fs6, $fa1, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	fmul.s	$fa1, $fa4, $fa0
	fmul.s	$fa2, $fs1, $fa0
	fmul.s	$fa3, $fs2, $fa0
	fsub.s	$fa0, $fs4, $fa1
	fsub.s	$fa1, $fs5, $fa2
	fsub.s	$fa2, $fs6, $fa3
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.s	$fs6, $a0, %pc_lo12(.LCPI2_1)
	fmul.s	$fa3, $fs1, $fa1
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fs2, $fa2, $fa3
	fcmp.cule.s	$fcc0, $fa3, $fs6
	fmov.s	$fa5, $fs0
	fmov.s	$fs4, $fs0
	bcnez	$fcc0, .LBB2_5
# %bb.4:
	fmov.s	$fs0, $fa0
	fmov.s	$fa5, $fa1
	fmov.s	$fs4, $fa2
	fmov.s	$fs6, $fa3
.LBB2_5:
	fst.s	$fa5, $sp, 12                   # 4-byte Folded Spill
	ld.w	$a0, $fp, 64
	slli.d	$a0, $a0, 2
	fldx.s	$fa0, $s1, $a0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 48
	fneg.s	$fa0, $fa0
	fld.s	$fa1, $fp, 24
	fld.s	$fa2, $fp, 28
	fld.s	$fa3, $fp, 32
	fstx.s	$fa0, $a0, $s0
	fmul.s	$fa0, $fa4, $fa1
	fmul.s	$fa1, $fs1, $fa2
	fmul.s	$fa2, $fs2, $fa3
	fmul.s	$fa0, $fs3, $fa0
	fmul.s	$fa1, $fs3, $fa1
	fmul.s	$fa2, $fs3, $fa2
	ld.d	$a0, $fp, 0
	fld.s	$fa3, $sp, 48
	fld.s	$fa4, $sp, 52
	fld.s	$fa5, $sp, 56
	ld.d	$a1, $a0, 88
	fadd.s	$fs3, $fa0, $fa3
	fadd.s	$fs7, $fa1, $fa4
	fadd.s	$fs5, $fa2, $fa5
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	fmul.s	$fa1, $fa4, $fa0
	fmul.s	$fa2, $fs1, $fa0
	fmul.s	$fa0, $fs2, $fa0
	fsub.s	$fa1, $fs3, $fa1
	fsub.s	$fa2, $fs7, $fa2
	fsub.s	$fa0, $fs5, $fa0
	fmul.s	$fa3, $fs1, $fa2
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fmadd.s	$fa3, $fs2, $fa0, $fa3
	fcmp.clt.s	$fcc0, $fs6, $fa3
	fsel	$fa1, $fs0, $fa1, $fcc0
	fld.s	$fa3, $sp, 12                   # 4-byte Folded Reload
	fsel	$fa2, $fa3, $fa2, $fcc0
	fsel	$fa0, $fs4, $fa0, $fcc0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fld.d	$fs7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end2:
	.size	_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end2-_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
.LCPI3_0:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.text
	.globl	_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_startproc
# %bb.0:
	blez	$a3, .LBB3_8
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	.cfi_offset 58, -80
	.cfi_offset 59, -88
	.cfi_offset 60, -96
	.cfi_offset 61, -104
	move	$fp, $a3
	move	$s0, $a0
	ld.w	$a0, $a0, 64
	addi.w	$a0, $a0, 2
	lu12i.w	$a3, 349525
	ori	$a3, $a3, 1366
	mul.d	$a3, $a0, $a3
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a0, $a0, $a3
	addi.d	$s1, $s0, 40
	slli.d	$a0, $a0, 2
	fldx.s	$fs0, $s1, $a0
	addi.d	$s2, $a2, 8
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI3_0)
	addi.d	$s3, $a1, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.d	$s4, $sp, 40
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi.d	$s2, $s2, 16
	addi.d	$fp, $fp, -1
	addi.d	$s3, $s3, 16
	beqz	$fp, .LBB3_7
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 40
	slli.d	$a0, $a0, 2
	fldx.s	$fa0, $s1, $a0
	fld.s	$fa1, $s3, -8
	fld.s	$fa2, $s0, 24
	fld.s	$fa3, $s3, -4
	fld.s	$fa4, $s0, 28
	fld.s	$fa5, $s3, 0
	fld.s	$fa6, $s0, 32
	fstx.s	$fa0, $a0, $s4
	fmul.s	$fa0, $fa1, $fa2
	fmul.s	$fa1, $fa3, $fa4
	fmul.s	$fa2, $fa5, $fa6
	fmul.s	$fa0, $fs0, $fa0
	fld.s	$fa3, $sp, 40
	fmul.s	$fa1, $fs0, $fa1
	ld.d	$a0, $s0, 0
	fld.s	$fa4, $sp, 44
	fadd.s	$fs2, $fa0, $fa3
	fld.s	$fa0, $sp, 48
	ld.d	$a1, $a0, 88
	fadd.s	$fs3, $fa1, $fa4
	fmul.s	$fa1, $fs0, $fa2
	fadd.s	$fs4, $fa1, $fa0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	fld.s	$fa1, $s3, -8
	fld.s	$fa2, $s3, -4
	fld.s	$fa3, $s3, 0
	fmul.s	$fa4, $fa0, $fa1
	fmul.s	$fa5, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	fsub.s	$fa4, $fs2, $fa4
	fsub.s	$fa5, $fs3, $fa5
	fsub.s	$fa6, $fs4, $fa0
	fmul.s	$fa0, $fa2, $fa5
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fmadd.s	$fa0, $fa3, $fa6, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fs1
	fmov.s	$fs2, $fs1
	bcnez	$fcc0, .LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	fst.s	$fa4, $s2, -8
	fst.s	$fa5, $s2, -4
	fst.s	$fa6, $s2, 0
	st.w	$zero, $s2, 4
	fld.s	$fa1, $s3, -8
	fld.s	$fa2, $s3, -4
	fld.s	$fa3, $s3, 0
	fmov.s	$fs2, $fa0
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a0, $s0, 64
	slli.d	$a0, $a0, 2
	fldx.s	$fa0, $s1, $a0
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vst	$vr4, $sp, 40
	fneg.s	$fa0, $fa0
	fld.s	$fa4, $s0, 24
	fld.s	$fa5, $s0, 28
	fld.s	$fa6, $s0, 32
	fstx.s	$fa0, $a0, $s4
	fmul.s	$fa0, $fa1, $fa4
	fmul.s	$fa1, $fa2, $fa5
	fmul.s	$fa2, $fa3, $fa6
	fmul.s	$fa0, $fs0, $fa0
	fld.s	$fa3, $sp, 40
	fmul.s	$fa1, $fs0, $fa1
	ld.d	$a0, $s0, 0
	fld.s	$fa4, $sp, 44
	fadd.s	$fs3, $fa0, $fa3
	fld.s	$fa0, $sp, 48
	ld.d	$a1, $a0, 88
	fadd.s	$fs4, $fa1, $fa4
	fmul.s	$fa1, $fs0, $fa2
	fadd.s	$fs5, $fa1, $fa0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	fld.s	$fa3, $s3, -8
	fld.s	$fa4, $s3, -4
	fld.s	$fa5, $s3, 0
	fmul.s	$fa1, $fa0, $fa3
	fmul.s	$fa2, $fa0, $fa4
	fmul.s	$fa6, $fa0, $fa5
	fsub.s	$fa0, $fs3, $fa1
	fsub.s	$fa1, $fs4, $fa2
	fsub.s	$fa2, $fs5, $fa6
	fmul.s	$fa4, $fa4, $fa1
	fmadd.s	$fa3, $fa3, $fa0, $fa4
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fcmp.cule.s	$fcc0, $fa3, $fs2
	bcnez	$fcc0, .LBB3_2
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	fst.s	$fa0, $s2, -8
	fst.s	$fa1, $s2, -4
	fst.s	$fa2, $s2, 0
	st.w	$zero, $s2, 4
	b	.LBB3_2
.LBB3_7:
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
.LBB3_8:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end3-_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3
.LCPI4_0:
	.word	0x3d23d70a                      # float 0.0399999991
.LCPI4_1:
	.word	0x3daaaaaa                      # float 0.0833333284
	.text
	.globl	_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3: # @_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3
# %bb.0:
	addi.d	$sp, $sp, -16
	ld.w	$a2, $a0, 64
	addi.w	$a3, $a2, 2
	lu12i.w	$a4, 349525
	ori	$a4, $a4, 1366
	mul.d	$a4, $a3, $a4
	srli.d	$a5, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a5
	alsl.d	$a4, $a4, $a4, 1
	sub.w	$a3, $a3, $a4
	addi.d	$a0, $a0, 40
	slli.d	$a3, $a3, 2
	fldx.s	$fa1, $a0, $a3
	vrepli.b	$vr2, 0
	vextrins.w	$vr2, $vr1, 0
	vshuf4i.w	$vr1, $vr2, 64
	vst	$vr1, $sp, 0
	slli.d	$a2, $a2, 2
	fldx.s	$fa1, $a0, $a2
	addi.d	$a0, $sp, 0
	fldx.s	$fa2, $a2, $a0
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a2, $a0
	fld.s	$fa1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI4_0)
	fld.s	$fa3, $sp, 4
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa4, $sp, 8
	fadd.s	$fa1, $fa1, $fa1
	fadd.s	$fa3, $fa3, $fa2
	fadd.s	$fa3, $fa3, $fa3
	fadd.s	$fa2, $fa4, $fa2
	fadd.s	$fa2, $fa2, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.s	$fa4, $a0, %pc_lo12(.LCPI4_1)
	fmul.s	$fa1, $fa1, $fa1
	fmul.s	$fa3, $fa3, $fa3
	fmul.s	$fa2, $fa2, $fa2
	fmul.s	$fa0, $fa0, $fa4
	fadd.s	$fa4, $fa3, $fa2
	fmul.s	$fa4, $fa0, $fa4
	fst.s	$fa4, $a1, 0
	fadd.s	$fa2, $fa1, $fa2
	fmul.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $a1, 4
	fadd.s	$fa1, $fa1, $fa3
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 8
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end4-_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3
                                        # -- End function
	.globl	_ZN15btCapsuleShapeXC2Eff       # -- Begin function _ZN15btCapsuleShapeXC2Eff
	.p2align	5
	.type	_ZN15btCapsuleShapeXC2Eff,@function
_ZN15btCapsuleShapeXC2Eff:              # @_ZN15btCapsuleShapeXC2Eff
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
	fmov.s	$fs0, $fa1
	fmov.s	$fs1, $fa0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	st.w	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(_ZTV15btCapsuleShapeX+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV15btCapsuleShapeX+16)
	st.d	$a0, $fp, 0
	st.w	$zero, $fp, 64
	vldi	$vr0, -1184
	fmul.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $fp, 40
	fst.s	$fs1, $fp, 44
	fst.s	$fs1, $fp, 48
	st.w	$zero, $fp, 52
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZN15btCapsuleShapeXC2Eff, .Lfunc_end5-_ZN15btCapsuleShapeXC2Eff
	.cfi_endproc
                                        # -- End function
	.globl	_ZN15btCapsuleShapeZC2Eff       # -- Begin function _ZN15btCapsuleShapeZC2Eff
	.p2align	5
	.type	_ZN15btCapsuleShapeZC2Eff,@function
_ZN15btCapsuleShapeZC2Eff:              # @_ZN15btCapsuleShapeZC2Eff
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
	fmov.s	$fs0, $fa1
	fmov.s	$fs1, $fa0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	st.w	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(_ZTV15btCapsuleShapeZ+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV15btCapsuleShapeZ+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 64
	vldi	$vr0, -1184
	fmul.s	$fa0, $fs0, $fa0
	fst.s	$fs1, $fp, 40
	fst.s	$fs1, $fp, 44
	fst.s	$fa0, $fp, 48
	st.w	$zero, $fp, 52
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	_ZN15btCapsuleShapeZC2Eff, .Lfunc_end6-_ZN15btCapsuleShapeZC2Eff
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN14btCapsuleShapeD0Ev,"axG",@progbits,_ZN14btCapsuleShapeD0Ev,comdat
	.weak	_ZN14btCapsuleShapeD0Ev         # -- Begin function _ZN14btCapsuleShapeD0Ev
	.p2align	5
	.type	_ZN14btCapsuleShapeD0Ev,@function
_ZN14btCapsuleShapeD0Ev:                # @_ZN14btCapsuleShapeD0Ev
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
.LBB7_2:
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
.LBB7_4:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN14btCapsuleShapeD0Ev, .Lfunc_end7-_ZN14btCapsuleShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN14btCapsuleShapeD0Ev,"aG",@progbits,_ZN14btCapsuleShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
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
	.uleb128 .Lfunc_end7-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end7
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
	.section	.text._ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_,"axG",@progbits,_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_,comdat
	.weak	_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	move	$s2, $a0
	ld.w	$a0, $a0, 64
	addi.w	$a4, $a0, 2
	lu12i.w	$a5, 349525
	ori	$a5, $a5, 1366
	mul.d	$a5, $a4, $a5
	srli.d	$a6, $a5, 63
	srli.d	$a5, $a5, 32
	add.d	$a5, $a5, $a6
	alsl.d	$a5, $a5, $a5, 1
	sub.w	$a4, $a4, $a5
	addi.d	$a5, $s2, 40
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a5, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	fst.s	$fa0, $sp, 8
	slli.d	$a0, $a0, 2
	ld.d	$a1, $s2, 0
	fldx.s	$fa1, $a5, $a0
	fst.s	$fa0, $sp, 12
	fst.s	$fa0, $sp, 16
	ld.d	$a1, $a1, 88
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a2, $sp, 8
	fstx.s	$fa0, $a0, $a2
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	fld.s	$fa1, $sp, 8
	fld.s	$fa2, $sp, 12
	fld.s	$fa3, $sp, 16
	fld.s	$fa4, $s1, 0
	fadd.s	$fa1, $fs0, $fa1
	fadd.s	$fa2, $fs1, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fabs.s	$fa3, $fa4
	fld.s	$fa4, $s1, 4
	fld.s	$fa5, $s1, 8
	fld.s	$fa6, $s1, 16
	fld.s	$fa7, $s1, 20
	fabs.s	$fa4, $fa4
	fabs.s	$fa5, $fa5
	fabs.s	$fa6, $fa6
	fabs.s	$fa7, $fa7
	fld.s	$ft0, $s1, 24
	fld.s	$ft1, $s1, 32
	fld.s	$ft2, $s1, 36
	fld.s	$ft3, $s1, 40
	fabs.s	$ft0, $ft0
	fabs.s	$ft1, $ft1
	fabs.s	$ft2, $ft2
	fabs.s	$ft3, $ft3
	fld.s	$ft4, $s1, 48
	fld.s	$ft5, $s1, 52
	fld.s	$ft6, $s1, 56
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
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end8:
	.size	_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end8-_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN14btCapsuleShape15setLocalScalingERK9btVector3,"axG",@progbits,_ZN14btCapsuleShape15setLocalScalingERK9btVector3,comdat
	.weak	_ZN14btCapsuleShape15setLocalScalingERK9btVector3 # -- Begin function _ZN14btCapsuleShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN14btCapsuleShape15setLocalScalingERK9btVector3,@function
_ZN14btCapsuleShape15setLocalScalingERK9btVector3: # @_ZN14btCapsuleShape15setLocalScalingERK9btVector3
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
	ld.d	$a2, $a0, 88
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
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
	fld.s	$fa1, $fp, 40
	fld.s	$fa2, $fp, 44
	fmov.s	$fs2, $fa0
	fadd.s	$fa0, $fs0, $fa1
	fadd.s	$fa1, $fs1, $fa2
	fld.s	$fa2, $fp, 48
	fld.s	$fa3, $fp, 24
	fld.s	$fa4, $fp, 28
	fld.s	$fa5, $fp, 32
	fadd.s	$fa2, $fs2, $fa2
	fdiv.s	$fs3, $fa0, $fa3
	fdiv.s	$fs4, $fa1, $fa4
	fdiv.s	$fs5, $fa2, $fa5
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShape15setLocalScalingERK9btVector3)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 24
	fld.s	$fa1, $fp, 28
	fld.s	$fa2, $fp, 32
	fmul.s	$fa0, $fs3, $fa0
	fmul.s	$fa1, $fs4, $fa1
	fmul.s	$fa2, $fs5, $fa2
	fsub.s	$fa0, $fa0, $fs0
	fsub.s	$fa1, $fa1, $fs1
	fsub.s	$fa2, $fa2, $fs2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 40
	st.d	$a1, $fp, 48
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
.Lfunc_end9:
	.size	_ZN14btCapsuleShape15setLocalScalingERK9btVector3, .Lfunc_end9-_ZN14btCapsuleShape15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape15getLocalScalingEv,"axG",@progbits,_ZNK21btConvexInternalShape15getLocalScalingEv,comdat
	.weak	_ZNK21btConvexInternalShape15getLocalScalingEv # -- Begin function _ZNK21btConvexInternalShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape15getLocalScalingEv,@function
_ZNK21btConvexInternalShape15getLocalScalingEv: # @_ZNK21btConvexInternalShape15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 24
	ret
.Lfunc_end10:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end10-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK14btCapsuleShape7getNameEv,"axG",@progbits,_ZNK14btCapsuleShape7getNameEv,comdat
	.weak	_ZNK14btCapsuleShape7getNameEv  # -- Begin function _ZNK14btCapsuleShape7getNameEv
	.p2align	5
	.type	_ZNK14btCapsuleShape7getNameEv,@function
_ZNK14btCapsuleShape7getNameEv:         # @_ZNK14btCapsuleShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end11:
	.size	_ZNK14btCapsuleShape7getNameEv, .Lfunc_end11-_ZNK14btCapsuleShape7getNameEv
                                        # -- End function
	.section	.text._ZN21btConvexInternalShape9setMarginEf,"axG",@progbits,_ZN21btConvexInternalShape9setMarginEf,comdat
	.weak	_ZN21btConvexInternalShape9setMarginEf # -- Begin function _ZN21btConvexInternalShape9setMarginEf
	.p2align	5
	.type	_ZN21btConvexInternalShape9setMarginEf,@function
_ZN21btConvexInternalShape9setMarginEf: # @_ZN21btConvexInternalShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end12:
	.size	_ZN21btConvexInternalShape9setMarginEf, .Lfunc_end12-_ZN21btConvexInternalShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end13:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end13-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end14:
	.size	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end14-_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ret
.Lfunc_end15:
	.size	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end15-_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
                                        # -- End function
	.section	.text._ZN15btCapsuleShapeXD0Ev,"axG",@progbits,_ZN15btCapsuleShapeXD0Ev,comdat
	.weak	_ZN15btCapsuleShapeXD0Ev        # -- Begin function _ZN15btCapsuleShapeXD0Ev
	.p2align	5
	.type	_ZN15btCapsuleShapeXD0Ev,@function
_ZN15btCapsuleShapeXD0Ev:               # @_ZN15btCapsuleShapeXD0Ev
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
.LBB16_2:
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
.LBB16_4:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN15btCapsuleShapeXD0Ev, .Lfunc_end16-_ZN15btCapsuleShapeXD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN15btCapsuleShapeXD0Ev,"aG",@progbits,_ZN15btCapsuleShapeXD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
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
	.uleb128 .Lfunc_end16-.Ltmp10           #   Call between .Ltmp10 and .Lfunc_end16
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
	.section	.text._ZNK15btCapsuleShapeX7getNameEv,"axG",@progbits,_ZNK15btCapsuleShapeX7getNameEv,comdat
	.weak	_ZNK15btCapsuleShapeX7getNameEv # -- Begin function _ZNK15btCapsuleShapeX7getNameEv
	.p2align	5
	.type	_ZNK15btCapsuleShapeX7getNameEv,@function
_ZNK15btCapsuleShapeX7getNameEv:        # @_ZNK15btCapsuleShapeX7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ret
.Lfunc_end17:
	.size	_ZNK15btCapsuleShapeX7getNameEv, .Lfunc_end17-_ZNK15btCapsuleShapeX7getNameEv
                                        # -- End function
	.section	.text._ZN15btCapsuleShapeZD0Ev,"axG",@progbits,_ZN15btCapsuleShapeZD0Ev,comdat
	.weak	_ZN15btCapsuleShapeZD0Ev        # -- Begin function _ZN15btCapsuleShapeZD0Ev
	.p2align	5
	.type	_ZN15btCapsuleShapeZD0Ev,@function
_ZN15btCapsuleShapeZD0Ev:               # @_ZN15btCapsuleShapeZD0Ev
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
.LBB18_2:
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
.LBB18_4:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN15btCapsuleShapeZD0Ev, .Lfunc_end18-_ZN15btCapsuleShapeZD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN15btCapsuleShapeZD0Ev,"aG",@progbits,_ZN15btCapsuleShapeZD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table18:
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
	.uleb128 .Lfunc_end18-.Ltmp16           #   Call between .Ltmp16 and .Lfunc_end18
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
	.section	.text._ZNK15btCapsuleShapeZ7getNameEv,"axG",@progbits,_ZNK15btCapsuleShapeZ7getNameEv,comdat
	.weak	_ZNK15btCapsuleShapeZ7getNameEv # -- Begin function _ZNK15btCapsuleShapeZ7getNameEv
	.p2align	5
	.type	_ZNK15btCapsuleShapeZ7getNameEv,@function
_ZNK15btCapsuleShapeZ7getNameEv:        # @_ZNK15btCapsuleShapeZ7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ret
.Lfunc_end19:
	.size	_ZNK15btCapsuleShapeZ7getNameEv, .Lfunc_end19-_ZNK15btCapsuleShapeZ7getNameEv
                                        # -- End function
	.type	_ZTV14btCapsuleShape,@object    # @_ZTV14btCapsuleShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV14btCapsuleShape
	.p2align	3, 0x0
_ZTV14btCapsuleShape:
	.dword	0
	.dword	_ZTI14btCapsuleShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN14btCapsuleShapeD0Ev
	.dword	_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN14btCapsuleShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK14btCapsuleShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV14btCapsuleShape, 160

	.type	_ZTV15btCapsuleShapeX,@object   # @_ZTV15btCapsuleShapeX
	.section	.data.rel.ro._ZTV15btCapsuleShapeX,"awG",@progbits,_ZTV15btCapsuleShapeX,comdat
	.weak	_ZTV15btCapsuleShapeX
	.p2align	3, 0x0
_ZTV15btCapsuleShapeX:
	.dword	0
	.dword	_ZTI15btCapsuleShapeX
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN15btCapsuleShapeXD0Ev
	.dword	_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN14btCapsuleShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK15btCapsuleShapeX7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV15btCapsuleShapeX, 160

	.type	_ZTV15btCapsuleShapeZ,@object   # @_ZTV15btCapsuleShapeZ
	.section	.data.rel.ro._ZTV15btCapsuleShapeZ,"awG",@progbits,_ZTV15btCapsuleShapeZ,comdat
	.weak	_ZTV15btCapsuleShapeZ
	.p2align	3, 0x0
_ZTV15btCapsuleShapeZ:
	.dword	0
	.dword	_ZTI15btCapsuleShapeZ
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN15btCapsuleShapeZD0Ev
	.dword	_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN14btCapsuleShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK15btCapsuleShapeZ7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV15btCapsuleShapeZ, 160

	.type	_ZTI14btCapsuleShape,@object    # @_ZTI14btCapsuleShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI14btCapsuleShape
	.p2align	3, 0x0
_ZTI14btCapsuleShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS14btCapsuleShape
	.dword	_ZTI21btConvexInternalShape
	.size	_ZTI14btCapsuleShape, 24

	.type	_ZTS14btCapsuleShape,@object    # @_ZTS14btCapsuleShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS14btCapsuleShape
_ZTS14btCapsuleShape:
	.asciz	"14btCapsuleShape"
	.size	_ZTS14btCapsuleShape, 17

	.type	_ZTI15btCapsuleShapeX,@object   # @_ZTI15btCapsuleShapeX
	.section	.data.rel.ro._ZTI15btCapsuleShapeX,"awG",@progbits,_ZTI15btCapsuleShapeX,comdat
	.weak	_ZTI15btCapsuleShapeX
	.p2align	3, 0x0
_ZTI15btCapsuleShapeX:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15btCapsuleShapeX
	.dword	_ZTI14btCapsuleShape
	.size	_ZTI15btCapsuleShapeX, 24

	.type	_ZTS15btCapsuleShapeX,@object   # @_ZTS15btCapsuleShapeX
	.section	.rodata._ZTS15btCapsuleShapeX,"aG",@progbits,_ZTS15btCapsuleShapeX,comdat
	.weak	_ZTS15btCapsuleShapeX
_ZTS15btCapsuleShapeX:
	.asciz	"15btCapsuleShapeX"
	.size	_ZTS15btCapsuleShapeX, 18

	.type	_ZTI15btCapsuleShapeZ,@object   # @_ZTI15btCapsuleShapeZ
	.section	.data.rel.ro._ZTI15btCapsuleShapeZ,"awG",@progbits,_ZTI15btCapsuleShapeZ,comdat
	.weak	_ZTI15btCapsuleShapeZ
	.p2align	3, 0x0
_ZTI15btCapsuleShapeZ:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15btCapsuleShapeZ
	.dword	_ZTI14btCapsuleShape
	.size	_ZTI15btCapsuleShapeZ, 24

	.type	_ZTS15btCapsuleShapeZ,@object   # @_ZTS15btCapsuleShapeZ
	.section	.rodata._ZTS15btCapsuleShapeZ,"aG",@progbits,_ZTS15btCapsuleShapeZ,comdat
	.weak	_ZTS15btCapsuleShapeZ
_ZTS15btCapsuleShapeZ:
	.asciz	"15btCapsuleShapeZ"
	.size	_ZTS15btCapsuleShapeZ, 18

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CapsuleShape"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"CapsuleX"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"CapsuleZ"
	.size	.L.str.2, 9

	.globl	_ZN14btCapsuleShapeC1Eff
	.type	_ZN14btCapsuleShapeC1Eff,@function
_ZN14btCapsuleShapeC1Eff = _ZN14btCapsuleShapeC2Eff
	.globl	_ZN15btCapsuleShapeXC1Eff
	.type	_ZN15btCapsuleShapeXC1Eff,@function
_ZN15btCapsuleShapeXC1Eff = _ZN15btCapsuleShapeXC2Eff
	.globl	_ZN15btCapsuleShapeZC1Eff
	.type	_ZN15btCapsuleShapeZC1Eff,@function
_ZN15btCapsuleShapeZC1Eff = _ZN15btCapsuleShapeZC2Eff
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
	.addrsig_sym _ZTI14btCapsuleShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS14btCapsuleShape
	.addrsig_sym _ZTI21btConvexInternalShape
	.addrsig_sym _ZTI15btCapsuleShapeX
	.addrsig_sym _ZTS15btCapsuleShapeX
	.addrsig_sym _ZTI15btCapsuleShapeZ
	.addrsig_sym _ZTS15btCapsuleShapeZ
