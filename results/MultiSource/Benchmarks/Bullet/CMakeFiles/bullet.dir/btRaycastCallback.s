	.file	"btRaycastCallback.cpp"
	.text
	.globl	_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j # -- Begin function _ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j
	.p2align	5
	.type	_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j,@function
_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j: # @_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j
# %bb.0:
	pcalau12i	$a4, %pc_hi20(_ZTV25btTriangleRaycastCallback+16)
	addi.d	$a4, $a4, %pc_lo12(_ZTV25btTriangleRaycastCallback+16)
	st.d	$a4, $a0, 0
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 8
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 24
	st.w	$a3, $a0, 40
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 44
	ret
.Lfunc_end0:
	.size	_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j, .Lfunc_end0-_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii
.LCPI1_0:
	.word	0xb8d1b717                      # float -9.99999974E-5
	.text
	.globl	_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii
	.p2align	5
	.type	_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii,@function
_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii: # @_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	fld.s	$ft1, $a1, 16
	fld.s	$ft3, $a1, 0
	fld.s	$ft2, $a1, 20
	fld.s	$ft4, $a1, 4
	fsub.s	$fa0, $ft1, $ft3
	fsub.s	$fa3, $ft2, $ft4
	fld.s	$ft5, $a1, 24
	fld.s	$ft6, $a1, 8
	fld.s	$fa5, $a1, 32
	fld.s	$fa6, $a1, 36
	fld.s	$fa7, $a1, 40
	fsub.s	$fa2, $ft5, $ft6
	fsub.s	$fa4, $fa5, $ft3
	fsub.s	$ft0, $fa6, $ft4
	fsub.s	$ft7, $fa7, $ft6
	fneg.s	$fa1, $ft0
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa1, $fa3, $ft7, $fa1
	fneg.s	$ft7, $ft7
	fmul.s	$ft7, $fa0, $ft7
	fmadd.s	$fa2, $fa2, $fa4, $ft7
	fneg.s	$fa4, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa3, $fa0, $ft0, $fa3
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	fmul.s	$fa0, $ft4, $fa2
	fmadd.s	$fa0, $ft3, $fa1, $fa0
	fld.s	$ft9, $a0, 12
	fld.s	$ft11, $a0, 8
	fld.s	$ft10, $a0, 16
	fmadd.s	$fa0, $ft6, $fa3, $fa0
	fmul.s	$fa4, $fa2, $ft9
	fmadd.s	$fa4, $fa1, $ft11, $fa4
	fmadd.s	$fa4, $fa3, $ft10, $fa4
	fld.s	$ft12, $a0, 28
	fld.s	$ft14, $a0, 24
	fld.s	$ft13, $a0, 32
	fsub.s	$fa4, $fa4, $fa0
	fmul.s	$ft0, $fa2, $ft12
	fmadd.s	$ft0, $fa1, $ft14, $ft0
	fmadd.s	$ft0, $fa3, $ft13, $ft0
	fsub.s	$fa0, $ft0, $fa0
	fmul.s	$ft7, $fa4, $fa0
	movgr2fr.w	$ft0, $zero
	fcmp.cle.s	$fcc0, $ft0, $ft7
	st.d	$a1, $sp, 24
	bcnez	$fcc0, .LBB1_3
# %bb.1:
	ld.wu	$a1, $a0, 40
	fcmp.cule.s	$fcc0, $fa4, $ft0
	bcnez	$fcc0, .LBB1_4
# %bb.2:
	andi	$a4, $a1, 1
	beqz	$a4, .LBB1_4
.LBB1_3:
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_4:
	fld.s	$ft7, $a0, 44
	fsub.s	$fa0, $fa4, $fa0
	fdiv.s	$fa0, $fa4, $fa0
	fcmp.cule.s	$fcc0, $ft7, $fa0
	bcnez	$fcc0, .LBB1_3
# %bb.5:
	pcalau12i	$a4, %pc_hi20(.LCPI1_0)
	fld.s	$ft8, $a4, %pc_lo12(.LCPI1_0)
	fmul.s	$ft7, $fa2, $fa2
	fmadd.s	$ft7, $fa1, $fa1, $ft7
	fmadd.s	$ft7, $fa3, $fa3, $ft7
	fmul.s	$ft8, $ft7, $ft8
	vldi	$vr23, -1168
	fsub.s	$ft15, $ft15, $fa0
	fmul.s	$ft14, $ft14, $fa0
	fmadd.s	$ft11, $ft15, $ft11, $ft14
	fmul.s	$ft12, $ft12, $fa0
	fmadd.s	$ft12, $ft15, $ft9, $ft12
	fmul.s	$ft9, $ft13, $fa0
	fmadd.s	$ft10, $ft15, $ft10, $ft9
	fsub.s	$ft9, $ft3, $ft11
	fsub.s	$ft3, $ft4, $ft12
	fsub.s	$ft4, $ft6, $ft10
	fsub.s	$ft1, $ft1, $ft11
	fsub.s	$ft2, $ft2, $ft12
	fsub.s	$ft5, $ft5, $ft10
	fneg.s	$ft6, $ft2
	fmul.s	$ft6, $ft4, $ft6
	fmadd.s	$ft6, $ft3, $ft5, $ft6
	fneg.s	$ft13, $ft5
	fmul.s	$ft13, $ft9, $ft13
	fmadd.s	$ft13, $ft4, $ft1, $ft13
	fneg.s	$ft14, $ft1
	fmul.s	$ft14, $ft3, $ft14
	fmadd.s	$ft14, $ft9, $ft2, $ft14
	fmul.s	$ft13, $fa2, $ft13
	fmadd.s	$ft6, $ft6, $fa1, $ft13
	fmadd.s	$ft6, $ft14, $fa3, $ft6
	fcmp.cult.s	$fcc0, $ft6, $ft8
	bcnez	$fcc0, .LBB1_3
# %bb.6:
	fsub.s	$fa5, $fa5, $ft11
	fsub.s	$fa6, $fa6, $ft12
	fsub.s	$fa7, $fa7, $ft10
	fneg.s	$ft6, $fa6
	fmul.s	$ft6, $ft5, $ft6
	fmadd.s	$ft6, $ft2, $fa7, $ft6
	fneg.s	$ft10, $fa7
	fmul.s	$ft10, $ft1, $ft10
	fmadd.s	$ft5, $ft5, $fa5, $ft10
	fneg.s	$ft10, $fa5
	fmul.s	$ft2, $ft2, $ft10
	fmadd.s	$ft1, $ft1, $fa6, $ft2
	fmul.s	$ft2, $fa2, $ft5
	fmadd.s	$ft2, $ft6, $fa1, $ft2
	fmadd.s	$ft1, $ft1, $fa3, $ft2
	fcmp.cult.s	$fcc0, $ft1, $ft8
	bcnez	$fcc0, .LBB1_3
# %bb.7:
	fneg.s	$ft1, $ft3
	fmul.s	$ft1, $fa7, $ft1
	fmadd.s	$ft1, $fa6, $ft4, $ft1
	fneg.s	$ft2, $ft4
	fmul.s	$ft2, $fa5, $ft2
	fmadd.s	$fa7, $fa7, $ft9, $ft2
	fneg.s	$ft2, $ft9
	fmul.s	$fa6, $fa6, $ft2
	fmadd.s	$fa5, $fa5, $ft3, $fa6
	fmul.s	$fa6, $fa2, $fa7
	fmadd.s	$fa6, $ft1, $fa1, $fa6
	fmadd.s	$fa5, $fa5, $fa3, $fa6
	fcmp.cult.s	$fcc0, $fa5, $ft8
	bcnez	$fcc0, .LBB1_3
# %bb.8:
	frsqrt.s	$fa5, $ft7
	fmul.s	$fa1, $fa1, $fa5
	fst.s	$fa1, $sp, 16
	fmul.s	$fa2, $fa2, $fa5
	fst.s	$fa2, $sp, 20
	fmul.s	$fa3, $fa3, $fa5
	fcmp.cle.s	$fcc0, $fa4, $ft0
	fst.s	$fa3, $sp, 24
	bcnez	$fcc0, .LBB1_11
# %bb.9:
	andi	$a1, $a1, 2
	bnez	$a1, .LBB1_11
# %bb.10:
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 24
	addi.d	$a1, $sp, 16
	move	$fp, $a0
	jirl	$ra, $a4, 0
	b	.LBB1_12
.LBB1_11:
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a4, $fa2
	movfr2gr.s	$a5, $fa3
	lu12i.w	$a6, -524288
	lu32i.d	$a6, 0
	xor	$a1, $a1, $a6
	ld.d	$a7, $a0, 0
	xor	$a4, $a4, $a6
	bstrins.d	$a1, $a4, 63, 32
	xor	$a4, $a5, $a6
	ld.d	$a5, $a7, 24
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a1, $sp, 0
	st.d	$a4, $sp, 8
	addi.d	$a1, $sp, 0
	move	$fp, $a0
	jirl	$ra, $a5, 0
.LBB1_12:
	fst.s	$fa0, $fp, 44
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii, .Lfunc_end1-_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f # -- Begin function _ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f
	.p2align	5
	.type	_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f,@function
_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f: # @_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f
	.cfi_startproc
# %bb.0:
	pcalau12i	$a5, %pc_hi20(_ZTV28btTriangleConvexcastCallback+16)
	addi.d	$a5, $a5, %pc_lo12(_ZTV28btTriangleConvexcastCallback+16)
	st.d	$a5, $a0, 0
	st.d	$a1, $a0, 8
	vld	$vr1, $a2, 0
	vst	$vr1, $a0, 16
	vld	$vr1, $a2, 16
	vst	$vr1, $a0, 32
	vld	$vr1, $a2, 32
	vst	$vr1, $a0, 48
	vld	$vr1, $a2, 48
	vst	$vr1, $a0, 64
	vld	$vr1, $a3, 0
	vst	$vr1, $a0, 80
	vld	$vr1, $a3, 16
	vst	$vr1, $a0, 96
	vld	$vr1, $a3, 32
	vst	$vr1, $a0, 112
	vld	$vr1, $a3, 48
	vst	$vr1, $a0, 128
	vld	$vr1, $a4, 0
	vst	$vr1, $a0, 144
	vld	$vr1, $a4, 16
	vst	$vr1, $a0, 160
	vld	$vr1, $a4, 32
	vst	$vr1, $a0, 176
	vld	$vr1, $a4, 48
	vst	$vr1, $a0, 192
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 208
	fst.s	$fa0, $a0, 212
	ret
.Lfunc_end2:
	.size	_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f, .Lfunc_end2-_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f
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
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii
.LCPI4_0:
	.word	0x38d1b717                      # float 9.99999974E-5
	.text
	.globl	_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii
	.p2align	5
	.type	_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii,@function
_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii: # @_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -768
	.cfi_def_cfa_offset 768
	st.d	$ra, $sp, 760                   # 8-byte Folded Spill
	st.d	$fp, $sp, 752                   # 8-byte Folded Spill
	st.d	$s0, $sp, 744                   # 8-byte Folded Spill
	st.d	$s1, $sp, 736                   # 8-byte Folded Spill
	st.d	$s2, $sp, 728                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN23btPolyhedralConvexShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV15btTriangleShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV15btTriangleShape+16)
	st.d	$a0, $sp, 616
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 624
	vld	$vr0, $s2, 0
	vld	$vr1, $s2, 16
	vld	$vr2, $s2, 32
	fld.s	$fa3, $s1, 212
	vst	$vr0, $sp, 680
	vst	$vr1, $sp, 696
	vst	$vr2, $sp, 712
	fst.s	$fa3, $sp, 672
	st.b	$zero, $sp, 588
	pcalau12i	$a0, %got_pc_hi20(_ZTV30btGjkEpaPenetrationDepthSolver)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV30btGjkEpaPenetrationDepthSolver)
	ld.d	$a1, $s1, 8
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 248
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 208
	addi.d	$a2, $sp, 616
	addi.d	$a3, $sp, 260
	addi.d	$a4, $sp, 248
	pcaddu18i	$ra, %call36(_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZTVN12btConvexCast10CastResultE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN12btConvexCast10CastResultE+16)
	st.d	$a0, $sp, 16
	st.d	$zero, $sp, 192
	st.w	$zero, $sp, 200
	lu12i.w	$a0, 260096
	st.w	$a0, $sp, 184
	addi.d	$a1, $s1, 16
	addi.d	$a2, $s1, 80
	addi.d	$a3, $s1, 144
.Ltmp2:                                 # EH_LABEL
	addi.d	$a0, $sp, 208
	addi.d	$a5, $sp, 16
	move	$a4, $a3
	pcaddu18i	$ra, %call36(_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:
	beqz	$a0, .LBB4_6
# %bb.3:
	fld.s	$fa3, $sp, 152
	fld.s	$fa2, $sp, 156
	fld.s	$fa1, $sp, 160
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI4_0)
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB4_6
# %bb.4:
	fld.s	$fa0, $sp, 184
	fld.s	$fa5, $s1, 208
	fcmp.cule.s	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB4_6
# %bb.5:
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $sp, 152
	fmul.s	$fa2, $fa2, $fa4
	ld.d	$a0, $s1, 0
	fst.s	$fa2, $sp, 156
	fmul.s	$fa1, $fa1, $fa4
	fst.s	$fa1, $sp, 160
	ld.d	$a5, $a0, 24
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 168
.Ltmp4:                                 # EH_LABEL
	move	$a0, $s1
	move	$a3, $s0
	move	$a4, $fp
	jirl	$ra, $a5, 0
.Ltmp5:                                 # EH_LABEL
.LBB4_6:
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.7:
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 744                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 752                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 760                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 768
	ret
.LBB4_8:
.Ltmp6:                                 # EH_LABEL
	move	$fp, $a0
.Ltmp7:                                 # EH_LABEL
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
	b	.LBB4_10
.LBB4_9:
.Ltmp11:                                # EH_LABEL
	move	$fp, $a0
.LBB4_10:
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_12:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii, .Lfunc_end4-_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp5-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp10                 #   Call between .Ltmp10 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp7                 #   Call between .Ltmp7 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end4-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end4
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
	.section	.text._ZN21btConvexInternalShape9setMarginEf,"axG",@progbits,_ZN21btConvexInternalShape9setMarginEf,comdat
	.weak	_ZN21btConvexInternalShape9setMarginEf # -- Begin function _ZN21btConvexInternalShape9setMarginEf
	.p2align	5
	.type	_ZN21btConvexInternalShape9setMarginEf,@function
_ZN21btConvexInternalShape9setMarginEf: # @_ZN21btConvexInternalShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end5:
	.size	_ZN21btConvexInternalShape9setMarginEf, .Lfunc_end5-_ZN21btConvexInternalShape9setMarginEf
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResultD2Ev,"axG",@progbits,_ZN12btConvexCast10CastResultD2Ev,comdat
	.weak	_ZN12btConvexCast10CastResultD2Ev # -- Begin function _ZN12btConvexCast10CastResultD2Ev
	.p2align	5
	.type	_ZN12btConvexCast10CastResultD2Ev,@function
_ZN12btConvexCast10CastResultD2Ev:      # @_ZN12btConvexCast10CastResultD2Ev
# %bb.0:
	ret
.Lfunc_end6:
	.size	_ZN12btConvexCast10CastResultD2Ev, .Lfunc_end6-_ZN12btConvexCast10CastResultD2Ev
                                        # -- End function
	.section	.text._ZN25btTriangleRaycastCallbackD0Ev,"axG",@progbits,_ZN25btTriangleRaycastCallbackD0Ev,comdat
	.weak	_ZN25btTriangleRaycastCallbackD0Ev # -- Begin function _ZN25btTriangleRaycastCallbackD0Ev
	.p2align	5
	.type	_ZN25btTriangleRaycastCallbackD0Ev,@function
_ZN25btTriangleRaycastCallbackD0Ev:     # @_ZN25btTriangleRaycastCallbackD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end7:
	.size	_ZN25btTriangleRaycastCallbackD0Ev, .Lfunc_end7-_ZN25btTriangleRaycastCallbackD0Ev
                                        # -- End function
	.section	.text._ZN28btTriangleConvexcastCallbackD0Ev,"axG",@progbits,_ZN28btTriangleConvexcastCallbackD0Ev,comdat
	.weak	_ZN28btTriangleConvexcastCallbackD0Ev # -- Begin function _ZN28btTriangleConvexcastCallbackD0Ev
	.p2align	5
	.type	_ZN28btTriangleConvexcastCallbackD0Ev,@function
_ZN28btTriangleConvexcastCallbackD0Ev:  # @_ZN28btTriangleConvexcastCallbackD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end8:
	.size	_ZN28btTriangleConvexcastCallbackD0Ev, .Lfunc_end8-_ZN28btTriangleConvexcastCallbackD0Ev
                                        # -- End function
	.section	.text._ZN15btTriangleShapeD0Ev,"axG",@progbits,_ZN15btTriangleShapeD0Ev,comdat
	.weak	_ZN15btTriangleShapeD0Ev        # -- Begin function _ZN15btTriangleShapeD0Ev
	.p2align	5
	.type	_ZN15btTriangleShapeD0Ev,@function
_ZN15btTriangleShapeD0Ev:               # @_ZN15btTriangleShapeD0Ev
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
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB9_2:
.Ltmp17:                                # EH_LABEL
	move	$s0, $a0
.Ltmp18:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.3:                                # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_4:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN15btTriangleShapeD0Ev, .Lfunc_end9-_ZN15btTriangleShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN15btTriangleShapeD0Ev,"aG",@progbits,_ZN15btTriangleShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end9-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end9
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
	.section	.text._ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_,"axG",@progbits,_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_,comdat
	.weak	_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 120
	jr	$a4
.Lfunc_end10:
	.size	_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end10-_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_
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
	.section	.text._ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3,"axG",@progbits,_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3,comdat
	.weak	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3: # @_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
	.cfi_startproc
# %bb.0:
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 0
	ret
.Lfunc_end12:
	.size	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end12-_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape7getNameEv,"axG",@progbits,_ZNK15btTriangleShape7getNameEv,comdat
	.weak	_ZNK15btTriangleShape7getNameEv # -- Begin function _ZNK15btTriangleShape7getNameEv
	.p2align	5
	.type	_ZNK15btTriangleShape7getNameEv,@function
_ZNK15btTriangleShape7getNameEv:        # @_ZNK15btTriangleShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end13:
	.size	_ZNK15btTriangleShape7getNameEv, .Lfunc_end13-_ZNK15btTriangleShape7getNameEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end14:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end14-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3,"axG",@progbits,_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3,comdat
	.weak	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a0, 68
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a0, 64
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a0, 72
	fld.s	$fa6, $a0, 84
	fld.s	$fa7, $a0, 80
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa5, $fa1
	fmul.s	$fa3, $fa0, $fa6
	fmadd.s	$fa3, $fa2, $fa7, $fa3
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 100
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 104
	fmadd.s	$fa3, $fa4, $fa5, $fa3
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa2, $fa7, $fa0
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.s	$fcc1, $fa1, $fa0
	addi.d	$a0, $a0, 64
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a1, $a0, 4
	slli.d	$a1, $a1, 4
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a2, 8
	ret
.Lfunc_end15:
	.size	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end15-_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,"axG",@progbits,_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,comdat
	.weak	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_startproc
# %bb.0:
	blez	$a3, .LBB16_3
# %bb.1:                                # %.lr.ph
	addi.d	$a4, $a0, 64
	addi.d	$a1, $a1, 8
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB16_2:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, -4
	fld.s	$fa1, $a0, 68
	fld.s	$fa2, $a1, -8
	fld.s	$fa3, $a0, 64
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a0, 72
	fld.s	$fa6, $a0, 84
	fld.s	$fa7, $a0, 80
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa5, $fa1
	fmul.s	$fa3, $fa0, $fa6
	fmadd.s	$fa3, $fa2, $fa7, $fa3
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 100
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 104
	fmadd.s	$fa3, $fa4, $fa5, $fa3
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa2, $fa7, $fa0
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.s	$fcc1, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	movcf2gr	$a7, $fcc1
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a5, $a7
	or	$a6, $a7, $a6
	slli.d	$a6, $a6, 4
	vldx	$vr0, $a4, $a6
	vst	$vr0, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 16
	bnez	$a3, .LBB16_2
.LBB16_3:                               # %._crit_edge
	ret
.Lfunc_end16:
	.size	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end16-_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	ori	$a0, $zero, 2
	ret
.Lfunc_end17:
	.size	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end17-_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 80
	fld.s	$fa1, $a0, 64
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $a0, 84
	fld.s	$fa3, $a0, 68
	fld.s	$fa4, $a0, 96
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 100
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a0, 104
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa7, $fa3
	fsub.s	$fa5, $fa5, $fa6
	fsub.s	$fa4, $fa4, $fa6
	fneg.s	$fa6, $fa3
	fmul.s	$fa6, $fa5, $fa6
	fmadd.s	$fa6, $fa2, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa2, $fa0, $fa3, $fa1
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $a2, 8
	fmul.s	$fa0, $fa4, $fa4
	fmadd.s	$fa0, $fa6, $fa6, $fa0
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	frsqrt.s	$fa3, $fa0
	fmul.s	$fa0, $fa6, $fa3
	fst.s	$fa0, $a2, 0
	fmul.s	$fa1, $fa4, $fa3
	fst.s	$fa1, $a2, 4
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $a2, 8
	beqz	$a1, .LBB18_2
# %bb.1:
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a2, 0
	fneg.s	$fa0, $fa1
	fst.s	$fa0, $a2, 4
	fneg.s	$fa0, $fa2
	fst.s	$fa0, $a2, 8
.LBB18_2:
	ret
.Lfunc_end18:
	.size	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end18-_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape14getNumVerticesEv,"axG",@progbits,_ZNK15btTriangleShape14getNumVerticesEv,comdat
	.weak	_ZNK15btTriangleShape14getNumVerticesEv # -- Begin function _ZNK15btTriangleShape14getNumVerticesEv
	.p2align	5
	.type	_ZNK15btTriangleShape14getNumVerticesEv,@function
_ZNK15btTriangleShape14getNumVerticesEv: # @_ZNK15btTriangleShape14getNumVerticesEv
# %bb.0:
	ori	$a0, $zero, 3
	ret
.Lfunc_end19:
	.size	_ZNK15btTriangleShape14getNumVerticesEv, .Lfunc_end19-_ZNK15btTriangleShape14getNumVerticesEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape11getNumEdgesEv,"axG",@progbits,_ZNK15btTriangleShape11getNumEdgesEv,comdat
	.weak	_ZNK15btTriangleShape11getNumEdgesEv # -- Begin function _ZNK15btTriangleShape11getNumEdgesEv
	.p2align	5
	.type	_ZNK15btTriangleShape11getNumEdgesEv,@function
_ZNK15btTriangleShape11getNumEdgesEv:   # @_ZNK15btTriangleShape11getNumEdgesEv
# %bb.0:
	ori	$a0, $zero, 3
	ret
.Lfunc_end20:
	.size	_ZNK15btTriangleShape11getNumEdgesEv, .Lfunc_end20-_ZNK15btTriangleShape11getNumEdgesEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape7getEdgeEiR9btVector3S1_,"axG",@progbits,_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_,comdat
	.weak	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_ # -- Begin function _ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.p2align	5
	.type	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_,@function
_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_: # @_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 168
	move	$s0, $a3
	move	$s1, $a1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	addi.w	$a0, $s1, 1
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1366
	ld.d	$a2, $fp, 0
	mul.d	$a1, $a0, $a1
	srli.d	$a3, $a1, 63
	srli.d	$a1, $a1, 32
	ld.d	$a4, $a2, 168
	add.d	$a1, $a1, $a3
	alsl.d	$a1, $a1, $a1, 1
	sub.w	$a1, $a0, $a1
	move	$a0, $fp
	move	$a2, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a4
.Lfunc_end21:
	.size	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_, .Lfunc_end21-_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape9getVertexEiR9btVector3,"axG",@progbits,_ZNK15btTriangleShape9getVertexEiR9btVector3,comdat
	.weak	_ZNK15btTriangleShape9getVertexEiR9btVector3 # -- Begin function _ZNK15btTriangleShape9getVertexEiR9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape9getVertexEiR9btVector3,@function
_ZNK15btTriangleShape9getVertexEiR9btVector3: # @_ZNK15btTriangleShape9getVertexEiR9btVector3
# %bb.0:
	alsl.d	$a0, $a1, $a0, 4
	vld	$vr0, $a0, 64
	vst	$vr0, $a2, 0
	ret
.Lfunc_end22:
	.size	_ZNK15btTriangleShape9getVertexEiR9btVector3, .Lfunc_end22-_ZNK15btTriangleShape9getVertexEiR9btVector3
                                        # -- End function
	.section	.text._ZNK15btTriangleShape12getNumPlanesEv,"axG",@progbits,_ZNK15btTriangleShape12getNumPlanesEv,comdat
	.weak	_ZNK15btTriangleShape12getNumPlanesEv # -- Begin function _ZNK15btTriangleShape12getNumPlanesEv
	.p2align	5
	.type	_ZNK15btTriangleShape12getNumPlanesEv,@function
_ZNK15btTriangleShape12getNumPlanesEv:  # @_ZNK15btTriangleShape12getNumPlanesEv
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end23:
	.size	_ZNK15btTriangleShape12getNumPlanesEv, .Lfunc_end23-_ZNK15btTriangleShape12getNumPlanesEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape8getPlaneER9btVector3S1_i,"axG",@progbits,_ZNK15btTriangleShape8getPlaneER9btVector3S1_i,comdat
	.weak	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i # -- Begin function _ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.p2align	5
	.type	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i,@function
_ZNK15btTriangleShape8getPlaneER9btVector3S1_i: # @_ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a4, 200
	move	$a4, $a2
	move	$a2, $a1
	move	$a1, $a3
	move	$a3, $a4
	jr	$a5
.Lfunc_end24:
	.size	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i, .Lfunc_end24-_ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape8isInsideERK9btVector3f,"axG",@progbits,_ZNK15btTriangleShape8isInsideERK9btVector3f,comdat
	.weak	_ZNK15btTriangleShape8isInsideERK9btVector3f # -- Begin function _ZNK15btTriangleShape8isInsideERK9btVector3f
	.p2align	5
	.type	_ZNK15btTriangleShape8isInsideERK9btVector3f,@function
_ZNK15btTriangleShape8isInsideERK9btVector3f: # @_ZNK15btTriangleShape8isInsideERK9btVector3f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	.cfi_offset 61, -72
	.cfi_offset 62, -80
	move	$s0, $a0
	fld.s	$fa1, $a0, 80
	fld.s	$fa2, $a0, 64
	fld.s	$fa3, $a0, 84
	fld.s	$fa4, $a0, 68
	fsub.s	$fa1, $fa1, $fa2
	fsub.s	$fa3, $fa3, $fa4
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 100
	fld.s	$ft1, $a0, 104
	fsub.s	$fa5, $fa5, $fa6
	fsub.s	$fa7, $fa7, $fa2
	fsub.s	$ft0, $ft0, $fa4
	fsub.s	$ft1, $ft1, $fa6
	fneg.s	$ft2, $ft0
	fmul.s	$ft2, $fa5, $ft2
	fmadd.s	$ft2, $fa3, $ft1, $ft2
	fneg.s	$ft1, $ft1
	fmul.s	$ft1, $fa1, $ft1
	fmadd.s	$fa5, $fa5, $fa7, $ft1
	fneg.s	$fa7, $fa7
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa1, $fa1, $ft0, $fa3
	fmul.s	$fa3, $fa5, $fa5
	fmadd.s	$fa3, $ft2, $ft2, $fa3
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fs2, $ft2, $fa3
	fmul.s	$fs1, $fa5, $fa3
	fld.s	$fa5, $a1, 4
	fld.s	$fa7, $a1, 0
	fld.s	$ft0, $a1, 8
	fmul.s	$fs3, $fa1, $fa3
	fmul.s	$fa1, $fa5, $fs1
	fmadd.s	$fa1, $fa7, $fs2, $fa1
	fmadd.s	$fa1, $ft0, $fs3, $fa1
	fmul.s	$fa3, $fa4, $fs1
	fmadd.s	$fa2, $fa2, $fs2, $fa3
	fmadd.s	$fa2, $fa6, $fs3, $fa2
	fsub.s	$fa1, $fa1, $fa2
	fneg.s	$fs0, $fa0
	fcmp.cult.s	$fcc0, $fa1, $fs0
	move	$a0, $zero
	bcnez	$fcc0, .LBB25_7
# %bb.1:
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB25_7
# %bb.2:                                # %.preheader
	move	$fp, $a1
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 160
	fneg.s	$fs6, $fs1
	fneg.s	$fs5, $fs3
	fneg.s	$fs4, $fs2
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	move	$a1, $zero
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 40
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa4, $fs6
	fmadd.s	$fa6, $fa2, $fs3, $fa6
	fmul.s	$fa7, $fa0, $fs5
	fmadd.s	$fa4, $fa4, $fs2, $fa7
	fmul.s	$fa2, $fa2, $fs4
	fmadd.s	$fa0, $fa0, $fs1, $fa2
	fmul.s	$fa2, $fa4, $fa4
	fmadd.s	$fa2, $fa6, $fa6, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa7, $fp, 4
	fld.s	$ft0, $fp, 0
	fld.s	$ft1, $fp, 8
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa7, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fmadd.s	$fa2, $ft1, $fa0, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB25_6
# %bb.3:
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 160
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 40
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa4, $fs6
	fmadd.s	$fa6, $fa2, $fs3, $fa6
	fmul.s	$fa7, $fa0, $fs5
	fmadd.s	$fa4, $fa4, $fs2, $fa7
	fmul.s	$fa2, $fa2, $fs4
	fmadd.s	$fa0, $fa0, $fs1, $fa2
	fmul.s	$fa2, $fa4, $fa4
	fmadd.s	$fa2, $fa6, $fa6, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa7, $fp, 4
	fld.s	$ft0, $fp, 0
	fld.s	$ft1, $fp, 8
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa7, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fmadd.s	$fa2, $ft1, $fa0, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB25_6
# %bb.4:
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 160
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 40
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa4, $fs6
	fmadd.s	$fa6, $fa2, $fs3, $fa6
	fmul.s	$fa7, $fa0, $fs5
	fmadd.s	$fa4, $fa4, $fs2, $fa7
	fmul.s	$fa2, $fa2, $fs4
	fmadd.s	$fa0, $fa0, $fs1, $fa2
	fmul.s	$fa2, $fa4, $fa4
	fmadd.s	$fa2, $fa6, $fa6, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa7, $fp, 4
	fld.s	$ft0, $fp, 0
	fld.s	$ft1, $fp, 8
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa7, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fmadd.s	$fa2, $ft1, $fa0, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB25_6
# %bb.5:
	ori	$a0, $zero, 1
	b	.LBB25_7
.LBB25_6:
	move	$a0, $zero
.LBB25_7:                               # %.loopexit
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end25:
	.size	_ZNK15btTriangleShape8isInsideERK9btVector3f, .Lfunc_end25-_ZNK15btTriangleShape8isInsideERK9btVector3f
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_,"axG",@progbits,_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_,comdat
	.weak	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_ # -- Begin function _ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.p2align	5
	.type	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_,@function
_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_: # @_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 80
	fld.s	$fa1, $a0, 64
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $a0, 84
	fld.s	$fa3, $a0, 68
	fld.s	$fa4, $a0, 96
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 100
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a0, 104
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa7, $fa3
	fsub.s	$fa5, $fa5, $fa6
	fsub.s	$fa4, $fa4, $fa6
	fneg.s	$fa6, $fa3
	fmul.s	$fa6, $fa5, $fa6
	fmadd.s	$fa6, $fa2, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $a2, 8
	fmul.s	$fa1, $fa4, $fa4
	fmadd.s	$fa1, $fa6, $fa6, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fa6, $fa1
	fst.s	$fa2, $a2, 0
	fmul.s	$fa2, $fa4, $fa1
	fst.s	$fa2, $a2, 4
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 8
	vld	$vr0, $a0, 64
	vst	$vr0, $a3, 0
	ret
.Lfunc_end26:
	.size	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_, .Lfunc_end26-_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult9DebugDrawEf,"axG",@progbits,_ZN12btConvexCast10CastResult9DebugDrawEf,comdat
	.weak	_ZN12btConvexCast10CastResult9DebugDrawEf # -- Begin function _ZN12btConvexCast10CastResult9DebugDrawEf
	.p2align	5
	.type	_ZN12btConvexCast10CastResult9DebugDrawEf,@function
_ZN12btConvexCast10CastResult9DebugDrawEf: # @_ZN12btConvexCast10CastResult9DebugDrawEf
# %bb.0:
	ret
.Lfunc_end27:
	.size	_ZN12btConvexCast10CastResult9DebugDrawEf, .Lfunc_end27-_ZN12btConvexCast10CastResult9DebugDrawEf
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,"axG",@progbits,_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,comdat
	.weak	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform # -- Begin function _ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
	.p2align	5
	.type	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,@function
_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform: # @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
# %bb.0:
	ret
.Lfunc_end28:
	.size	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform, .Lfunc_end28-_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResultD0Ev,"axG",@progbits,_ZN12btConvexCast10CastResultD0Ev,comdat
	.weak	_ZN12btConvexCast10CastResultD0Ev # -- Begin function _ZN12btConvexCast10CastResultD0Ev
	.p2align	5
	.type	_ZN12btConvexCast10CastResultD0Ev,@function
_ZN12btConvexCast10CastResultD0Ev:      # @_ZN12btConvexCast10CastResultD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end29:
	.size	_ZN12btConvexCast10CastResultD0Ev, .Lfunc_end29-_ZN12btConvexCast10CastResultD0Ev
	.cfi_endproc
                                        # -- End function
	.type	_ZTV25btTriangleRaycastCallback,@object # @_ZTV25btTriangleRaycastCallback
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV25btTriangleRaycastCallback
	.p2align	3, 0x0
_ZTV25btTriangleRaycastCallback:
	.dword	0
	.dword	_ZTI25btTriangleRaycastCallback
	.dword	_ZN18btTriangleCallbackD2Ev
	.dword	_ZN25btTriangleRaycastCallbackD0Ev
	.dword	_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii
	.dword	__cxa_pure_virtual
	.size	_ZTV25btTriangleRaycastCallback, 48

	.type	_ZTV28btTriangleConvexcastCallback,@object # @_ZTV28btTriangleConvexcastCallback
	.globl	_ZTV28btTriangleConvexcastCallback
	.p2align	3, 0x0
_ZTV28btTriangleConvexcastCallback:
	.dword	0
	.dword	_ZTI28btTriangleConvexcastCallback
	.dword	_ZN18btTriangleCallbackD2Ev
	.dword	_ZN28btTriangleConvexcastCallbackD0Ev
	.dword	_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii
	.dword	__cxa_pure_virtual
	.size	_ZTV28btTriangleConvexcastCallback, 48

	.type	_ZTI25btTriangleRaycastCallback,@object # @_ZTI25btTriangleRaycastCallback
	.globl	_ZTI25btTriangleRaycastCallback
	.p2align	3, 0x0
_ZTI25btTriangleRaycastCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS25btTriangleRaycastCallback
	.dword	_ZTI18btTriangleCallback
	.size	_ZTI25btTriangleRaycastCallback, 24

	.type	_ZTS25btTriangleRaycastCallback,@object # @_ZTS25btTriangleRaycastCallback
	.section	.rodata,"a",@progbits
	.globl	_ZTS25btTriangleRaycastCallback
_ZTS25btTriangleRaycastCallback:
	.asciz	"25btTriangleRaycastCallback"
	.size	_ZTS25btTriangleRaycastCallback, 28

	.type	_ZTI28btTriangleConvexcastCallback,@object # @_ZTI28btTriangleConvexcastCallback
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI28btTriangleConvexcastCallback
	.p2align	3, 0x0
_ZTI28btTriangleConvexcastCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS28btTriangleConvexcastCallback
	.dword	_ZTI18btTriangleCallback
	.size	_ZTI28btTriangleConvexcastCallback, 24

	.type	_ZTS28btTriangleConvexcastCallback,@object # @_ZTS28btTriangleConvexcastCallback
	.section	.rodata,"a",@progbits
	.globl	_ZTS28btTriangleConvexcastCallback
_ZTS28btTriangleConvexcastCallback:
	.asciz	"28btTriangleConvexcastCallback"
	.size	_ZTS28btTriangleConvexcastCallback, 31

	.type	_ZTV15btTriangleShape,@object   # @_ZTV15btTriangleShape
	.section	.data.rel.ro._ZTV15btTriangleShape,"awG",@progbits,_ZTV15btTriangleShape,comdat
	.weak	_ZTV15btTriangleShape
	.p2align	3, 0x0
_ZTV15btTriangleShape:
	.dword	0
	.dword	_ZTI15btTriangleShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN15btTriangleShapeD0Ev
	.dword	_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK15btTriangleShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK15btTriangleShape14getNumVerticesEv
	.dword	_ZNK15btTriangleShape11getNumEdgesEv
	.dword	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.dword	_ZNK15btTriangleShape9getVertexEiR9btVector3
	.dword	_ZNK15btTriangleShape12getNumPlanesEv
	.dword	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.dword	_ZNK15btTriangleShape8isInsideERK9btVector3f
	.dword	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.size	_ZTV15btTriangleShape, 224

	.type	_ZTI15btTriangleShape,@object   # @_ZTI15btTriangleShape
	.section	.data.rel.ro._ZTI15btTriangleShape,"awG",@progbits,_ZTI15btTriangleShape,comdat
	.weak	_ZTI15btTriangleShape
	.p2align	3, 0x0
_ZTI15btTriangleShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15btTriangleShape
	.dword	_ZTI23btPolyhedralConvexShape
	.size	_ZTI15btTriangleShape, 24

	.type	_ZTS15btTriangleShape,@object   # @_ZTS15btTriangleShape
	.section	.rodata._ZTS15btTriangleShape,"aG",@progbits,_ZTS15btTriangleShape,comdat
	.weak	_ZTS15btTriangleShape
_ZTS15btTriangleShape:
	.asciz	"15btTriangleShape"
	.size	_ZTS15btTriangleShape, 18

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Triangle"
	.size	.L.str, 9

	.type	_ZTVN12btConvexCast10CastResultE,@object # @_ZTVN12btConvexCast10CastResultE
	.section	.data.rel.ro._ZTVN12btConvexCast10CastResultE,"awG",@progbits,_ZTVN12btConvexCast10CastResultE,comdat
	.weak	_ZTVN12btConvexCast10CastResultE
	.p2align	3, 0x0
_ZTVN12btConvexCast10CastResultE:
	.dword	0
	.dword	_ZTIN12btConvexCast10CastResultE
	.dword	_ZN12btConvexCast10CastResult9DebugDrawEf
	.dword	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
	.dword	_ZN12btConvexCast10CastResultD2Ev
	.dword	_ZN12btConvexCast10CastResultD0Ev
	.size	_ZTVN12btConvexCast10CastResultE, 48

	.type	_ZTIN12btConvexCast10CastResultE,@object # @_ZTIN12btConvexCast10CastResultE
	.section	.data.rel.ro._ZTIN12btConvexCast10CastResultE,"awG",@progbits,_ZTIN12btConvexCast10CastResultE,comdat
	.weak	_ZTIN12btConvexCast10CastResultE
	.p2align	3, 0x0
_ZTIN12btConvexCast10CastResultE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN12btConvexCast10CastResultE
	.size	_ZTIN12btConvexCast10CastResultE, 16

	.type	_ZTSN12btConvexCast10CastResultE,@object # @_ZTSN12btConvexCast10CastResultE
	.section	.rodata._ZTSN12btConvexCast10CastResultE,"aG",@progbits,_ZTSN12btConvexCast10CastResultE,comdat
	.weak	_ZTSN12btConvexCast10CastResultE
_ZTSN12btConvexCast10CastResultE:
	.asciz	"N12btConvexCast10CastResultE"
	.size	_ZTSN12btConvexCast10CastResultE, 29

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
	.addrsig_sym _ZTI25btTriangleRaycastCallback
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS25btTriangleRaycastCallback
	.addrsig_sym _ZTI18btTriangleCallback
	.addrsig_sym _ZTI28btTriangleConvexcastCallback
	.addrsig_sym _ZTS28btTriangleConvexcastCallback
	.addrsig_sym _ZTI15btTriangleShape
	.addrsig_sym _ZTS15btTriangleShape
	.addrsig_sym _ZTI23btPolyhedralConvexShape
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTIN12btConvexCast10CastResultE
	.addrsig_sym _ZTSN12btConvexCast10CastResultE
