	.file	"btConeShape.cpp"
	.text
	.globl	_ZN11btConeShapeC2Eff           # -- Begin function _ZN11btConeShapeC2Eff
	.p2align	5
	.type	_ZN11btConeShapeC2Eff,@function
_ZN11btConeShapeC2Eff:                  # @_ZN11btConeShapeC2Eff
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
	pcalau12i	$a0, %pc_hi20(_ZTV11btConeShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV11btConeShape+16)
	st.d	$a0, $fp, 0
	fst.s	$fs1, $fp, 68
	fst.s	$fs0, $fp, 72
	ori	$a0, $zero, 11
	st.w	$a0, $fp, 8
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 76
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 84
	fmul.s	$fa0, $fs0, $fs0
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fsqrt.s	$fa0, $fa0
	fdiv.s	$fa0, $fs1, $fa0
	fst.s	$fa0, $fp, 64
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN11btConeShapeC2Eff, .Lfunc_end0-_ZN11btConeShapeC2Eff
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11btConeShape14setConeUpIndexEi # -- Begin function _ZN11btConeShape14setConeUpIndexEi
	.p2align	5
	.type	_ZN11btConeShape14setConeUpIndexEi,@function
_ZN11btConeShape14setConeUpIndexEi:     # @_ZN11btConeShape14setConeUpIndexEi
# %bb.0:
	ori	$a2, $zero, 2
	bltu	$a2, $a1, .LBB1_2
# %bb.1:                                # %switch.lookup
	slli.d	$a2, $a1, 2
	pcalau12i	$a3, %pc_hi20(.Lswitch.table._ZN11btConeShape14setConeUpIndexEi)
	addi.d	$a3, $a3, %pc_lo12(.Lswitch.table._ZN11btConeShape14setConeUpIndexEi)
	ldx.w	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(.Lswitch.table._ZN11btConeShape14setConeUpIndexEi.1)
	addi.d	$a4, $a4, %pc_lo12(.Lswitch.table._ZN11btConeShape14setConeUpIndexEi.1)
	ldx.w	$a2, $a4, $a2
	st.w	$a3, $a0, 76
	st.w	$a1, $a0, 80
	st.w	$a2, $a0, 84
.LBB1_2:
	ret
.Lfunc_end1:
	.size	_ZN11btConeShape14setConeUpIndexEi, .Lfunc_end1-_ZN11btConeShape14setConeUpIndexEi
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
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN12btConeShapeZC2Eff          # -- Begin function _ZN12btConeShapeZC2Eff
	.p2align	5
	.type	_ZN12btConeShapeZC2Eff,@function
_ZN12btConeShapeZC2Eff:                 # @_ZN12btConeShapeZC2Eff
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
	fst.s	$fs1, $fp, 68
	fst.s	$fs0, $fp, 72
	ori	$a0, $zero, 11
	st.w	$a0, $fp, 8
	fmul.s	$fa0, $fs0, $fs0
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fsqrt.s	$fa0, $fa0
	fdiv.s	$fa0, $fs1, $fa0
	fst.s	$fa0, $fp, 64
	pcalau12i	$a0, %pc_hi20(_ZTV12btConeShapeZ+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV12btConeShapeZ+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 2
	st.d	$a0, $fp, 76
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 84
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZN12btConeShapeZC2Eff, .Lfunc_end3-_ZN12btConeShapeZC2Eff
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12btConeShapeXC2Eff          # -- Begin function _ZN12btConeShapeXC2Eff
	.p2align	5
	.type	_ZN12btConeShapeXC2Eff,@function
_ZN12btConeShapeXC2Eff:                 # @_ZN12btConeShapeXC2Eff
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
	fst.s	$fs1, $fp, 68
	fst.s	$fs0, $fp, 72
	ori	$a0, $zero, 11
	st.w	$a0, $fp, 8
	fmul.s	$fa0, $fs0, $fs0
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fsqrt.s	$fa0, $fa0
	fdiv.s	$fa0, $fs1, $fa0
	fst.s	$fa0, $fp, 64
	pcalau12i	$a0, %pc_hi20(_ZTV12btConeShapeX+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV12btConeShapeX+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1
	st.d	$a0, $fp, 76
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 84
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZN12btConeShapeXC2Eff, .Lfunc_end4-_ZN12btConeShapeXC2Eff
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK11btConeShape16coneLocalSupportERK9btVector3 # -- Begin function _ZNK11btConeShape16coneLocalSupportERK9btVector3
	.p2align	5
	.type	_ZNK11btConeShape16coneLocalSupportERK9btVector3,@function
_ZNK11btConeShape16coneLocalSupportERK9btVector3: # @_ZNK11btConeShape16coneLocalSupportERK9btVector3
# %bb.0:
	addi.d	$sp, $sp, -16
	ld.w	$a2, $a0, 80
	fld.s	$fa0, $a0, 72
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 0
	slli.d	$a2, $a2, 2
	fld.s	$fa3, $a1, 8
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fld.s	$fa2, $a0, 64
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fldx.s	$fa3, $a1, $a2
	fsqrt.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ld.w	$a4, $a0, 76
	vldi	$vr2, -1184
	fcmp.cule.s	$fcc0, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa2
	bcnez	$fcc0, .LBB5_2
# %bb.1:
	slli.d	$a1, $a4, 2
	addi.d	$a4, $sp, 0
	ld.w	$a3, $a0, 84
	stx.w	$zero, $a1, $a4
	fstx.s	$fa0, $a2, $a4
	b	.LBB5_5
.LBB5_2:
	ld.w	$a3, $a0, 84
	slli.d	$a4, $a4, 2
	slli.d	$a5, $a3, 2
	fldx.s	$fa1, $a1, $a5
	fldx.s	$fa2, $a1, $a4
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fsqrt.s	$fa3, $fa3
	lu12i.w	$a1, 212992
	movgr2fr.w	$fa4, $a1
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB5_4
# %bb.3:
	fld.s	$fa4, $a0, 68
	fdiv.s	$fa3, $fa4, $fa3
	fmul.s	$fa2, $fa3, $fa2
	addi.d	$a0, $sp, 0
	fstx.s	$fa2, $a4, $a0
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a2, $a0
	fmul.s	$fa0, $fa3, $fa1
	b	.LBB5_6
.LBB5_4:
	addi.d	$a0, $sp, 0
	stx.w	$zero, $a4, $a0
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a2, $a0
.LBB5_5:
	movgr2fr.w	$fa0, $zero
.LBB5_6:
	slli.d	$a0, $a3, 2
	addi.d	$a1, $sp, 0
	fstx.s	$fa0, $a0, $a1
	ld.d	$a0, $sp, 0
	ld.d	$a1, $sp, 8
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	_ZNK11btConeShape16coneLocalSupportERK9btVector3, .Lfunc_end5-_ZNK11btConeShape16coneLocalSupportERK9btVector3
                                        # -- End function
	.globl	_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3
# %bb.0:
	addi.d	$sp, $sp, -16
	ld.w	$a2, $a0, 80
	fld.s	$fa0, $a0, 72
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 0
	slli.d	$a2, $a2, 2
	fld.s	$fa3, $a1, 8
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fld.s	$fa2, $a0, 64
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fldx.s	$fa3, $a1, $a2
	fsqrt.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ld.w	$a4, $a0, 76
	vldi	$vr2, -1184
	fcmp.cule.s	$fcc0, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa2
	bcnez	$fcc0, .LBB6_2
# %bb.1:
	slli.d	$a1, $a4, 2
	addi.d	$a4, $sp, 0
	ld.w	$a3, $a0, 84
	stx.w	$zero, $a1, $a4
	fstx.s	$fa0, $a2, $a4
	b	.LBB6_5
.LBB6_2:
	ld.w	$a3, $a0, 84
	slli.d	$a4, $a4, 2
	slli.d	$a5, $a3, 2
	fldx.s	$fa1, $a1, $a5
	fldx.s	$fa2, $a1, $a4
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fsqrt.s	$fa3, $fa3
	lu12i.w	$a1, 212992
	movgr2fr.w	$fa4, $a1
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB6_4
# %bb.3:
	fld.s	$fa4, $a0, 68
	fdiv.s	$fa3, $fa4, $fa3
	fmul.s	$fa2, $fa2, $fa3
	addi.d	$a0, $sp, 0
	fstx.s	$fa2, $a4, $a0
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a2, $a0
	fmul.s	$fa0, $fa1, $fa3
	b	.LBB6_6
.LBB6_4:
	addi.d	$a0, $sp, 0
	stx.w	$zero, $a4, $a0
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a2, $a0
.LBB6_5:                                # %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit
	movgr2fr.w	$fa0, $zero
.LBB6_6:                                # %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit
	slli.d	$a0, $a3, 2
	addi.d	$a1, $sp, 0
	fstx.s	$fa0, $a0, $a1
	ld.d	$a0, $sp, 0
	ld.d	$a1, $sp, 8
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end6-_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3
                                        # -- End function
	.globl	_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
# %bb.0:
	blez	$a3, .LBB7_9
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -16
	vldi	$vr0, -1184
	addi.d	$a4, $sp, 0
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a5, 212992
	movgr2fr.w	$fa2, $a5
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a6, $a0, 84
.LBB7_3:                                #   in Loop: Header=BB7_5 Depth=1
	stx.w	$zero, $a7, $a4
	fstx.s	$fa3, $a5, $a4
	fmov.s	$fa3, $fa1
.LBB7_4:                                # %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	slli.d	$a5, $a6, 2
	fstx.s	$fa3, $a5, $a4
	vld	$vr3, $sp, 0
	vst	$vr3, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 16
	beqz	$a3, .LBB7_8
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a0, 72
	fmul.s	$fa3, $fa3, $fa0
	ld.w	$a5, $a0, 80
	fld.s	$fa4, $a1, 4
	fld.s	$fa5, $a1, 0
	fld.s	$fa6, $a1, 8
	slli.d	$a5, $a5, 2
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa4, $fa5, $fa5, $fa4
	fmadd.s	$fa4, $fa6, $fa6, $fa4
	fld.s	$fa5, $a0, 64
	fldx.s	$fa6, $a1, $a5
	ld.w	$a6, $a0, 76
	fsqrt.s	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fcmp.cule.s	$fcc0, $fa6, $fa4
	slli.d	$a7, $a6, 2
	bceqz	$fcc0, .LBB7_2
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a6, $a0, 84
	slli.d	$t0, $a6, 2
	fldx.s	$fa4, $a1, $t0
	fldx.s	$fa5, $a1, $a7
	fmul.s	$fa6, $fa4, $fa4
	fmadd.s	$fa6, $fa5, $fa5, $fa6
	fsqrt.s	$fa6, $fa6
	fcmp.cule.s	$fcc0, $fa6, $fa2
	fneg.s	$fa3, $fa3
	bcnez	$fcc0, .LBB7_3
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	fld.s	$fa7, $a0, 68
	fdiv.s	$fa6, $fa7, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fstx.s	$fa5, $a7, $a4
	fstx.s	$fa3, $a5, $a4
	fmul.s	$fa3, $fa4, $fa6
	b	.LBB7_4
.LBB7_8:
	addi.d	$sp, $sp, 16
.LBB7_9:                                # %._crit_edge
	ret
.Lfunc_end7:
	.size	_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end7-_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
                                        # -- End function
	.globl	_ZNK11btConeShape24localGetSupportingVertexERK9btVector3 # -- Begin function _ZNK11btConeShape24localGetSupportingVertexERK9btVector3
	.p2align	5
	.type	_ZNK11btConeShape24localGetSupportingVertexERK9btVector3,@function
_ZNK11btConeShape24localGetSupportingVertexERK9btVector3: # @_ZNK11btConeShape24localGetSupportingVertexERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
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
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$a0, $a0, 80
	fld.s	$fa0, $fp, 72
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 0
	slli.d	$a0, $a0, 2
	fld.s	$fa3, $a1, 8
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fld.s	$fa2, $fp, 64
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fldx.s	$fa3, $a1, $a0
	fsqrt.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	ld.w	$a2, $fp, 76
	vldi	$vr2, -1184
	fcmp.cule.s	$fcc0, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa2
	bcnez	$fcc0, .LBB8_2
# %bb.1:
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 16
	ld.w	$a1, $fp, 84
	stx.w	$zero, $a2, $a3
	b	.LBB8_5
.LBB8_2:
	ld.w	$a1, $fp, 84
	slli.d	$a2, $a2, 2
	slli.d	$a3, $a1, 2
	fldx.s	$fa1, $s0, $a3
	fldx.s	$fa2, $s0, $a2
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fsqrt.s	$fa3, $fa3
	lu12i.w	$a3, 212992
	movgr2fr.w	$fa4, $a3
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB8_4
# %bb.3:
	fld.s	$fa4, $fp, 68
	fdiv.s	$fa3, $fa4, $fa3
	fmul.s	$fa2, $fa2, $fa3
	addi.d	$a3, $sp, 16
	fstx.s	$fa2, $a2, $a3
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a0, $a3
	fmul.s	$fa0, $fa1, $fa3
	b	.LBB8_6
.LBB8_4:
	addi.d	$a3, $sp, 16
	stx.w	$zero, $a2, $a3
	fneg.s	$fa0, $fa0
.LBB8_5:                                # %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit
	fstx.s	$fa0, $a0, $a3
	movgr2fr.w	$fa0, $zero
.LBB8_6:                                # %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit
	slli.d	$a0, $a1, 2
	addi.d	$a1, $sp, 16
	ld.d	$a2, $fp, 0
	fstx.s	$fa0, $a0, $a1
	ld.d	$s2, $sp, 16
	ld.d	$s1, $sp, 24
	ld.d	$a1, $a2, 88
	srli.d	$s3, $s2, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_8
# %bb.7:
	movgr2fr.w	$fs0, $s1
	movgr2fr.w	$fs1, $s3
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s0, 8
	movgr2fr.w	$fs2, $s2
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	lu12i.w	$a0, 165888
	movgr2fr.w	$fa4, $a0
	fcmp.clt.s	$fcc0, $fa3, $fa4
	vldi	$vr3, -1040
	fsel	$fa1, $fa1, $fa3, $fcc0
	fsel	$fa0, $fa0, $fa3, $fcc0
	fsel	$fa2, $fa2, $fa3, $fcc0
	fmul.s	$fa3, $fa0, $fa0
	ld.d	$a0, $fp, 0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	ld.d	$a1, $a0, 88
	fmul.s	$fs3, $fa1, $fa3
	fmul.s	$fs4, $fa0, $fa3
	fmul.s	$fs5, $fa2, $fa3
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fmul.s	$fa1, $fa0, $fs3
	fmul.s	$fa2, $fa0, $fs4
	fmul.s	$fa0, $fa0, $fs5
	fadd.s	$fa1, $fa1, $fs2
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa0, $fa0, $fs0
	movfr2gr.s	$s2, $fa1
	movfr2gr.s	$s3, $fa2
	movfr2gr.s	$a0, $fa0
	b	.LBB8_9
.LBB8_8:
	move	$a0, $s1
.LBB8_9:
	bstrins.d	$s2, $s3, 63, 32
	bstrpick.d	$a0, $a0, 31, 0
	bstrins.d	$s1, $a0, 31, 0
	move	$a0, $s2
	move	$a1, $s1
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end8:
	.size	_ZNK11btConeShape24localGetSupportingVertexERK9btVector3, .Lfunc_end8-_ZNK11btConeShape24localGetSupportingVertexERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11btConeShapeD0Ev,"axG",@progbits,_ZN11btConeShapeD0Ev,comdat
	.weak	_ZN11btConeShapeD0Ev            # -- Begin function _ZN11btConeShapeD0Ev
	.p2align	5
	.type	_ZN11btConeShapeD0Ev,@function
_ZN11btConeShapeD0Ev:                   # @_ZN11btConeShapeD0Ev
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
.LBB9_2:
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
.LBB9_4:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN11btConeShapeD0Ev, .Lfunc_end9-_ZN11btConeShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11btConeShapeD0Ev,"aG",@progbits,_ZN11btConeShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table9:
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
	.uleb128 .Lfunc_end9-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end9
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
	.section	.text._ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_,"axG",@progbits,_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_,comdat
	.weak	_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 120
	jr	$a4
.Lfunc_end10:
	.size	_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end10-_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_
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
.Lfunc_end11:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end11-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK11btConeShape21calculateLocalInertiaEfR9btVector3,"axG",@progbits,_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3,comdat
	.weak	_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK11btConeShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3: # @_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	move	$s0, $a0
	lu12i.w	$a0, 260096
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 44
	st.w	$a0, $sp, 60
	vst	$vr1, $sp, 64
	ld.d	$a2, $s0, 0
	st.w	$a0, $sp, 80
	vst	$vr1, $sp, 84
	st.w	$zero, $sp, 100
	ld.d	$a4, $a2, 16
	move	$fp, $a1
	fmov.s	$fs0, $fa0
	st.w	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 8
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 8
	fld.s	$fa1, $sp, 24
	fld.s	$fa2, $sp, 12
	fld.s	$fa3, $sp, 28
	fld.s	$fa4, $sp, 16
	fld.s	$fa5, $sp, 32
	fsub.s	$fa0, $fa0, $fa1
	ld.d	$a0, $s0, 0
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	vldi	$vr3, -1184
	ld.d	$a1, $a0, 88
	fmul.s	$fs1, $fa0, $fa3
	fmul.s	$fs2, $fa1, $fa3
	fmul.s	$fs3, $fa2, $fa3
	move	$a0, $s0
	jirl	$ra, $a1, 0
	fadd.s	$fa1, $fs1, $fa0
	fadd.s	$fa1, $fa1, $fa1
	fadd.s	$fa2, $fs2, $fa0
	fadd.s	$fa2, $fa2, $fa2
	fadd.s	$fa0, $fs3, $fa0
	fadd.s	$fa0, $fa0, $fa0
	fmul.s	$fa1, $fa1, $fa1
	fmul.s	$fa2, $fa2, $fa2
	fmul.s	$fa0, $fa0, $fa0
	lu12i.w	$a0, 252586
	ori	$a0, $a0, 2730
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa3, $fs0, $fa3
	fadd.s	$fa4, $fa2, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa3, $fa4
	fmul.s	$fa0, $fa3, $fa0
	fmul.s	$fa1, $fa3, $fa1
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end12:
	.size	_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end12-_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK11btConeShape7getNameEv,"axG",@progbits,_ZNK11btConeShape7getNameEv,comdat
	.weak	_ZNK11btConeShape7getNameEv     # -- Begin function _ZNK11btConeShape7getNameEv
	.p2align	5
	.type	_ZNK11btConeShape7getNameEv,@function
_ZNK11btConeShape7getNameEv:            # @_ZNK11btConeShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end13:
	.size	_ZNK11btConeShape7getNameEv, .Lfunc_end13-_ZNK11btConeShape7getNameEv
                                        # -- End function
	.section	.text._ZN21btConvexInternalShape9setMarginEf,"axG",@progbits,_ZN21btConvexInternalShape9setMarginEf,comdat
	.weak	_ZN21btConvexInternalShape9setMarginEf # -- Begin function _ZN21btConvexInternalShape9setMarginEf
	.p2align	5
	.type	_ZN21btConvexInternalShape9setMarginEf,@function
_ZN21btConvexInternalShape9setMarginEf: # @_ZN21btConvexInternalShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end14:
	.size	_ZN21btConvexInternalShape9setMarginEf, .Lfunc_end14-_ZN21btConvexInternalShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end15:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end15-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end16:
	.size	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end16-_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ret
.Lfunc_end17:
	.size	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end17-_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
                                        # -- End function
	.section	.text._ZN12btConeShapeZD0Ev,"axG",@progbits,_ZN12btConeShapeZD0Ev,comdat
	.weak	_ZN12btConeShapeZD0Ev           # -- Begin function _ZN12btConeShapeZD0Ev
	.p2align	5
	.type	_ZN12btConeShapeZD0Ev,@function
_ZN12btConeShapeZD0Ev:                  # @_ZN12btConeShapeZD0Ev
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
.LBB18_2:
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
.LBB18_4:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN12btConeShapeZD0Ev, .Lfunc_end18-_ZN12btConeShapeZD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12btConeShapeZD0Ev,"aG",@progbits,_ZN12btConeShapeZD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table18:
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
	.uleb128 .Lfunc_end18-.Ltmp10           #   Call between .Ltmp10 and .Lfunc_end18
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
	.section	.text._ZN12btConeShapeXD0Ev,"axG",@progbits,_ZN12btConeShapeXD0Ev,comdat
	.weak	_ZN12btConeShapeXD0Ev           # -- Begin function _ZN12btConeShapeXD0Ev
	.p2align	5
	.type	_ZN12btConeShapeXD0Ev,@function
_ZN12btConeShapeXD0Ev:                  # @_ZN12btConeShapeXD0Ev
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
.LBB19_2:
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
.LBB19_4:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN12btConeShapeXD0Ev, .Lfunc_end19-_ZN12btConeShapeXD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12btConeShapeXD0Ev,"aG",@progbits,_ZN12btConeShapeXD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table19:
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
	.uleb128 .Lfunc_end19-.Ltmp16           #   Call between .Ltmp16 and .Lfunc_end19
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
	.type	_ZTV11btConeShape,@object       # @_ZTV11btConeShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV11btConeShape
	.p2align	3, 0x0
_ZTV11btConeShape:
	.dword	0
	.dword	_ZTI11btConeShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN11btConeShapeD0Ev
	.dword	_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK11btConeShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK11btConeShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV11btConeShape, 160

	.type	_ZTV12btConeShapeZ,@object      # @_ZTV12btConeShapeZ
	.section	.data.rel.ro._ZTV12btConeShapeZ,"awG",@progbits,_ZTV12btConeShapeZ,comdat
	.weak	_ZTV12btConeShapeZ
	.p2align	3, 0x0
_ZTV12btConeShapeZ:
	.dword	0
	.dword	_ZTI12btConeShapeZ
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN12btConeShapeZD0Ev
	.dword	_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK11btConeShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK11btConeShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV12btConeShapeZ, 160

	.type	_ZTV12btConeShapeX,@object      # @_ZTV12btConeShapeX
	.section	.data.rel.ro._ZTV12btConeShapeX,"awG",@progbits,_ZTV12btConeShapeX,comdat
	.weak	_ZTV12btConeShapeX
	.p2align	3, 0x0
_ZTV12btConeShapeX:
	.dword	0
	.dword	_ZTI12btConeShapeX
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN12btConeShapeXD0Ev
	.dword	_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK11btConeShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK11btConeShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV12btConeShapeX, 160

	.type	_ZTI11btConeShape,@object       # @_ZTI11btConeShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI11btConeShape
	.p2align	3, 0x0
_ZTI11btConeShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS11btConeShape
	.dword	_ZTI21btConvexInternalShape
	.size	_ZTI11btConeShape, 24

	.type	_ZTS11btConeShape,@object       # @_ZTS11btConeShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS11btConeShape
_ZTS11btConeShape:
	.asciz	"11btConeShape"
	.size	_ZTS11btConeShape, 14

	.type	_ZTI12btConeShapeZ,@object      # @_ZTI12btConeShapeZ
	.section	.data.rel.ro._ZTI12btConeShapeZ,"awG",@progbits,_ZTI12btConeShapeZ,comdat
	.weak	_ZTI12btConeShapeZ
	.p2align	3, 0x0
_ZTI12btConeShapeZ:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS12btConeShapeZ
	.dword	_ZTI11btConeShape
	.size	_ZTI12btConeShapeZ, 24

	.type	_ZTS12btConeShapeZ,@object      # @_ZTS12btConeShapeZ
	.section	.rodata._ZTS12btConeShapeZ,"aG",@progbits,_ZTS12btConeShapeZ,comdat
	.weak	_ZTS12btConeShapeZ
_ZTS12btConeShapeZ:
	.asciz	"12btConeShapeZ"
	.size	_ZTS12btConeShapeZ, 15

	.type	_ZTI12btConeShapeX,@object      # @_ZTI12btConeShapeX
	.section	.data.rel.ro._ZTI12btConeShapeX,"awG",@progbits,_ZTI12btConeShapeX,comdat
	.weak	_ZTI12btConeShapeX
	.p2align	3, 0x0
_ZTI12btConeShapeX:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS12btConeShapeX
	.dword	_ZTI11btConeShape
	.size	_ZTI12btConeShapeX, 24

	.type	_ZTS12btConeShapeX,@object      # @_ZTS12btConeShapeX
	.section	.rodata._ZTS12btConeShapeX,"aG",@progbits,_ZTS12btConeShapeX,comdat
	.weak	_ZTS12btConeShapeX
_ZTS12btConeShapeX:
	.asciz	"12btConeShapeX"
	.size	_ZTS12btConeShapeX, 15

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cone"
	.size	.L.str, 5

	.type	.Lswitch.table._ZN11btConeShape14setConeUpIndexEi,@object # @switch.table._ZN11btConeShape14setConeUpIndexEi
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table._ZN11btConeShape14setConeUpIndexEi:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.Lswitch.table._ZN11btConeShape14setConeUpIndexEi, 12

	.type	.Lswitch.table._ZN11btConeShape14setConeUpIndexEi.1,@object # @switch.table._ZN11btConeShape14setConeUpIndexEi.1
	.p2align	2, 0x0
.Lswitch.table._ZN11btConeShape14setConeUpIndexEi.1:
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	.Lswitch.table._ZN11btConeShape14setConeUpIndexEi.1, 12

	.globl	_ZN11btConeShapeC1Eff
	.type	_ZN11btConeShapeC1Eff,@function
_ZN11btConeShapeC1Eff = _ZN11btConeShapeC2Eff
	.globl	_ZN12btConeShapeZC1Eff
	.type	_ZN12btConeShapeZC1Eff,@function
_ZN12btConeShapeZC1Eff = _ZN12btConeShapeZC2Eff
	.globl	_ZN12btConeShapeXC1Eff
	.type	_ZN12btConeShapeXC1Eff,@function
_ZN12btConeShapeXC1Eff = _ZN12btConeShapeXC2Eff
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
	.addrsig_sym _ZTI11btConeShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS11btConeShape
	.addrsig_sym _ZTI21btConvexInternalShape
	.addrsig_sym _ZTI12btConeShapeZ
	.addrsig_sym _ZTS12btConeShapeZ
	.addrsig_sym _ZTI12btConeShapeX
	.addrsig_sym _ZTS12btConeShapeX
