	.file	"btSphereShape.cpp"
	.text
	.globl	_ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3
# %bb.0:
	move	$a0, $zero
	move	$a1, $zero
	ret
.Lfunc_end0:
	.size	_ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end0-_ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3
                                        # -- End function
	.globl	_ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
# %bb.0:
	blez	$a3, .LBB1_2
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a3, $a3, 4
	move	$a0, $a2
	move	$a1, $zero
	move	$a2, $a3
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB1_2:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	_ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end1-_ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK13btSphereShape24localGetSupportingVertexERK9btVector3
.LCPI2_0:
	.word	0x28800000                      # float 1.42108547E-14
	.text
	.globl	_ZNK13btSphereShape24localGetSupportingVertexERK9btVector3
	.p2align	5
	.type	_ZNK13btSphereShape24localGetSupportingVertexERK9btVector3,@function
_ZNK13btSphereShape24localGetSupportingVertexERK9btVector3: # @_ZNK13btSphereShape24localGetSupportingVertexERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
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
	.cfi_offset 56, -40
	.cfi_offset 57, -48
	.cfi_offset 58, -56
	.cfi_offset 59, -64
	.cfi_offset 60, -72
	.cfi_offset 61, -80
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 104
	move	$s1, $a1
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$fp, $a1
	movgr2fr.w	$fs0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fs1, $a0
	movgr2fr.w	$fs2, $a1
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s1, 4
	fld.s	$fa2, $s1, 8
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI2_0)
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
	fadd.s	$fa1, $fa1, $fs0
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa0, $fa0, $fs2
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	bstrins.d	$fp, $a1, 31, 0
	move	$a1, $fp
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end2:
	.size	_ZNK13btSphereShape24localGetSupportingVertexERK9btVector3, .Lfunc_end2-_ZNK13btSphereShape24localGetSupportingVertexERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 88
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$a0, $fp
	jirl	$ra, $a4, 0
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
	fld.s	$fa1, $s2, 48
	fld.s	$fa2, $s2, 52
	fld.s	$fa3, $s2, 56
	fsub.s	$fa1, $fa1, $fs0
	fsub.s	$fa2, $fa2, $fs1
	fsub.s	$fa3, $fa3, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s1, 0
	st.d	$a1, $s1, 8
	fld.s	$fa1, $s2, 48
	fld.s	$fa2, $s2, 52
	fld.s	$fa3, $s2, 56
	fadd.s	$fa1, $fs0, $fa1
	fadd.s	$fa2, $fs1, $fa2
	fadd.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	_ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end3-_ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3
.LCPI4_0:
	.word	0x3ecccccd                      # float 0.400000006
	.text
	.globl	_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3: # @_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	fld.s	$fa1, $a2, %pc_lo12(.LCPI4_0)
	ld.d	$a2, $a0, 88
	move	$s0, $a1
	fmul.s	$fs0, $fa0, $fa1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmul.s	$fs0, $fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fmul.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s0, 0
	fst.s	$fa0, $s0, 4
	fst.s	$fa0, $s0, 8
	st.w	$zero, $s0, 12
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end4-_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13btSphereShapeD0Ev,"axG",@progbits,_ZN13btSphereShapeD0Ev,comdat
	.weak	_ZN13btSphereShapeD0Ev          # -- Begin function _ZN13btSphereShapeD0Ev
	.p2align	5
	.type	_ZN13btSphereShapeD0Ev,@function
_ZN13btSphereShapeD0Ev:                 # @_ZN13btSphereShapeD0Ev
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
.LBB5_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:                                # %_ZN13btSphereShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_4:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN13btSphereShapeD0Ev, .Lfunc_end5-_ZN13btSphereShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13btSphereShapeD0Ev,"aG",@progbits,_ZN13btSphereShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Lfunc_end5-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end5
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
.Lfunc_end6:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end6-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK13btSphereShape7getNameEv,"axG",@progbits,_ZNK13btSphereShape7getNameEv,comdat
	.weak	_ZNK13btSphereShape7getNameEv   # -- Begin function _ZNK13btSphereShape7getNameEv
	.p2align	5
	.type	_ZNK13btSphereShape7getNameEv,@function
_ZNK13btSphereShape7getNameEv:          # @_ZNK13btSphereShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end7:
	.size	_ZNK13btSphereShape7getNameEv, .Lfunc_end7-_ZNK13btSphereShape7getNameEv
                                        # -- End function
	.section	.text._ZN13btSphereShape9setMarginEf,"axG",@progbits,_ZN13btSphereShape9setMarginEf,comdat
	.weak	_ZN13btSphereShape9setMarginEf  # -- Begin function _ZN13btSphereShape9setMarginEf
	.p2align	5
	.type	_ZN13btSphereShape9setMarginEf,@function
_ZN13btSphereShape9setMarginEf:         # @_ZN13btSphereShape9setMarginEf
	.cfi_startproc
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end8:
	.size	_ZN13btSphereShape9setMarginEf, .Lfunc_end8-_ZN13btSphereShape9setMarginEf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK13btSphereShape9getMarginEv,"axG",@progbits,_ZNK13btSphereShape9getMarginEv,comdat
	.weak	_ZNK13btSphereShape9getMarginEv # -- Begin function _ZNK13btSphereShape9getMarginEv
	.p2align	5
	.type	_ZNK13btSphereShape9getMarginEv,@function
_ZNK13btSphereShape9getMarginEv:        # @_ZNK13btSphereShape9getMarginEv
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 40
	fld.s	$fa1, $a0, 24
	fmul.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end9:
	.size	_ZNK13btSphereShape9getMarginEv, .Lfunc_end9-_ZNK13btSphereShape9getMarginEv
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
.Lfunc_end10:
	.size	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end10-_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ret
.Lfunc_end11:
	.size	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end11-_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
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
.Lfunc_end12:
	.size	__clang_call_terminate, .Lfunc_end12-__clang_call_terminate
                                        # -- End function
	.type	_ZTV13btSphereShape,@object     # @_ZTV13btSphereShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV13btSphereShape
	.p2align	3, 0x0
_ZTV13btSphereShape:
	.dword	0
	.dword	_ZTI13btSphereShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN13btSphereShapeD0Ev
	.dword	_ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK13btSphereShape7getNameEv
	.dword	_ZN13btSphereShape9setMarginEf
	.dword	_ZNK13btSphereShape9getMarginEv
	.dword	_ZNK13btSphereShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV13btSphereShape, 160

	.type	_ZTI13btSphereShape,@object     # @_ZTI13btSphereShape
	.globl	_ZTI13btSphereShape
	.p2align	3, 0x0
_ZTI13btSphereShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13btSphereShape
	.dword	_ZTI21btConvexInternalShape
	.size	_ZTI13btSphereShape, 24

	.type	_ZTS13btSphereShape,@object     # @_ZTS13btSphereShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS13btSphereShape
_ZTS13btSphereShape:
	.asciz	"13btSphereShape"
	.size	_ZTS13btSphereShape, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SPHERE"
	.size	.L.str, 7

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
	.addrsig_sym _ZTI13btSphereShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS13btSphereShape
	.addrsig_sym _ZTI21btConvexInternalShape
