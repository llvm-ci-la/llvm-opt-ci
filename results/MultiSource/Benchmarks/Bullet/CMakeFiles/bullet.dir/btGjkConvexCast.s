	.file	"btGjkConvexCast.cpp"
	.text
	.globl	_ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver # -- Begin function _ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
	.p2align	5
	.type	_ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver,@function
_ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver: # @_ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
# %bb.0:
	pcalau12i	$a4, %pc_hi20(_ZTV15btGjkConvexCast+16)
	addi.d	$a4, $a4, %pc_lo12(_ZTV15btGjkConvexCast+16)
	st.d	$a4, $a0, 0
	st.d	$a3, $a0, 8
	st.d	$a1, $a0, 16
	st.d	$a2, $a0, 24
	ret
.Lfunc_end0:
	.size	_ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver, .Lfunc_end0-_ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
                                        # -- End function
	.globl	_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE # -- Begin function _ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.p2align	5
	.type	_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE,@function
_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE: # @_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -464
	.cfi_def_cfa_offset 464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 336                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	.cfi_offset 58, -88
	.cfi_offset 59, -96
	.cfi_offset 60, -104
	.cfi_offset 61, -112
	.cfi_offset 62, -120
	.cfi_offset 63, -128
	move	$s4, $a0
	ld.d	$a0, $a0, 8
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver5resetEv)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s2, 48
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa0, $s3, 48
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa0, $s2, 52
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fld.s	$fa0, $s3, 52
	fst.s	$fa0, $sp, 16                   # 4-byte Folded Spill
	fld.s	$fs4, $s2, 56
	fld.s	$fs5, $s3, 56
	fld.s	$fs6, $s0, 48
	fld.s	$fs7, $s1, 48
	fld.s	$fs0, $s0, 52
	fld.s	$fs1, $s1, 52
	fld.s	$fs2, $s0, 56
	fld.s	$fs3, $s1, 56
	pcalau12i	$a0, %pc_hi20(_ZTV16btPointCollector+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV16btPointCollector+16)
	st.d	$a0, $sp, 272
	lu12i.w	$a0, 382432
	ld.d	$a1, $s4, 16
	ld.d	$a2, $s4, 24
	ld.d	$a3, $s4, 8
	ori	$s4, $a0, 2923
	st.w	$s4, $sp, 312
	st.b	$zero, $sp, 316
	addi.d	$a0, $sp, 176
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver)
	jirl	$ra, $ra, 0
	vld	$vr0, $s3, 0
	vld	$vr1, $s3, 16
	vld	$vr2, $s3, 32
	vst	$vr0, $sp, 32
	vst	$vr1, $sp, 48
	vld	$vr0, $s3, 48
	vst	$vr2, $sp, 64
	vld	$vr1, $s1, 0
	vld	$vr2, $s1, 16
	vst	$vr0, $sp, 80
	vld	$vr0, $s1, 32
	vst	$vr1, $sp, 96
	vst	$vr2, $sp, 112
	vld	$vr1, $s1, 48
	vst	$vr0, $sp, 128
	st.w	$s4, $sp, 160
	st.d	$zero, $sp, 168
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 272
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 316
	vld	$vr0, $sp, 296
	vst	$vr0, $sp, 320
	beqz	$a0, .LBB1_14
# %bb.1:
	fld.s	$fa0, $sp, 28                   # 4-byte Folded Reload
	fld.s	$fa1, $sp, 24                   # 4-byte Folded Reload
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $sp, 20                   # 4-byte Folded Reload
	fld.s	$fa2, $sp, 16                   # 4-byte Folded Reload
	fsub.s	$fa1, $fa1, $fa2
	fsub.s	$fa4, $fs4, $fs5
	fsub.s	$fa2, $fs6, $fs7
	fsub.s	$fa3, $fs0, $fs1
	fsub.s	$fa5, $fs2, $fs3
	fsub.s	$fs1, $fa0, $fa2
	fsub.s	$fs2, $fa1, $fa3
	fld.s	$fa3, $sp, 312
	fld.s	$fa2, $sp, 280
	fld.s	$fa1, $sp, 284
	fld.s	$fa0, $sp, 288
	lu12i.w	$a0, 239665
	ori	$a0, $a0, 623
	movgr2fr.w	$fs4, $a0
	fcmp.cule.s	$fcc0, $fa3, $fs4
	fsub.s	$fs3, $fa4, $fa5
	bcnez	$fcc0, .LBB1_11
# %bb.2:                                # %.lr.ph
	addi.d	$s4, $sp, 296
	movgr2fr.w	$fs5, $zero
	ori	$s5, $zero, 33
	fmov.s	$fa4, $fs5
	.p2align	4, , 16
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	addi.w	$s5, $s5, -1
	beqz	$s5, .LBB1_14
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	fmul.s	$fa1, $fs2, $fa1
	fmadd.s	$fa1, $fs1, $fa2, $fa1
	fmadd.s	$fa0, $fs3, $fa0, $fa1
	fdiv.s	$fa0, $fa3, $fa0
	fsub.s	$fs0, $fa4, $fa0
	fcmp.cle.s	$fcc0, $fs0, $fa4
	move	$a0, $zero
	bcnez	$fcc0, .LBB1_17
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	vldi	$vr0, -1168
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB1_17
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	fcmp.clt.s	$fcc0, $fs0, $fs5
	bcnez	$fcc0, .LBB1_17
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s2, 48
	fld.s	$fa1, $s3, 48
	vldi	$vr2, -1168
	fsub.s	$fa2, $fa2, $fs0
	fmul.s	$fa0, $fs0, $fa0
	fld.s	$fa3, $s2, 52
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	fld.s	$fa1, $s3, 52
	fst.s	$fa0, $sp, 80
	fmul.s	$fa0, $fs0, $fa3
	fld.s	$fa3, $s2, 56
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	fld.s	$fa1, $s3, 56
	fst.s	$fa0, $sp, 84
	fmul.s	$fa0, $fs0, $fa3
	fld.s	$fa3, $s0, 48
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	fld.s	$fa1, $s1, 48
	fst.s	$fa0, $sp, 88
	fmul.s	$fa0, $fs0, $fa3
	fld.s	$fa3, $s0, 52
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	fst.s	$fa0, $sp, 144
	fld.s	$fa0, $s1, 52
	fmul.s	$fa1, $fs0, $fa3
	fld.s	$fa3, $s0, 56
	fld.s	$fa4, $s1, 56
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fst.s	$fa0, $sp, 148
	fmul.s	$fa0, $fs0, $fa3
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fst.s	$fa0, $sp, 152
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 272
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 316
	beqz	$a0, .LBB1_14
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	fld.s	$fa3, $sp, 312
	fcmp.cule.s	$fcc0, $fs5, $fa3
	bceqz	$fcc0, .LBB1_15
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=1
	vld	$vr4, $s4, 0
	fld.s	$fa2, $sp, 280
	fld.s	$fa1, $sp, 284
	fld.s	$fa0, $sp, 288
	fcmp.clt.s	$fcc0, $fs4, $fa3
	vst	$vr4, $sp, 320
	fmov.s	$fa4, $fs0
	bcnez	$fcc0, .LBB1_3
# %bb.10:                               # %._crit_edge.loopexit
	fld.s	$fa3, $sp, 292
	b	.LBB1_12
.LBB1_11:
	fld.s	$fa3, $sp, 292
	movgr2fr.w	$fs0, $zero
.LBB1_12:                               # %._crit_edge
	fld.s	$fa4, $fp, 184
	fmul.s	$fa5, $fs2, $fa1
	fmadd.s	$fa5, $fa2, $fs1, $fa5
	fmadd.s	$fa5, $fa0, $fs3, $fa5
	fneg.s	$fa4, $fa4
	fcmp.cle.s	$fcc0, $fa4, $fa5
	bcnez	$fcc0, .LBB1_14
# %bb.13:
	fst.s	$fs0, $fp, 168
	addi.d	$s4, $sp, 320
	b	.LBB1_16
.LBB1_14:
	move	$a0, $zero
	b	.LBB1_17
.LBB1_15:
	fld.s	$fa2, $sp, 280
	fld.s	$fa1, $sp, 284
	fld.s	$fa0, $sp, 288
	fld.s	$fa3, $sp, 292
	fst.s	$fs0, $fp, 168
.LBB1_16:                               # %.thread.sink.split
	fst.s	$fa2, $fp, 136
	vld	$vr2, $s4, 0
	fst.s	$fa1, $fp, 140
	fst.s	$fa0, $fp, 144
	fst.s	$fa3, $fp, 148
	vst	$vr2, $fp, 152
	ori	$a0, $zero, 1
.LBB1_17:                               # %.thread
	fld.d	$fs7, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 352                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 392                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end1:
	.size	_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE, .Lfunc_end1-_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,"axG",@progbits,_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,comdat
	.weak	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev # -- Begin function _ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
	.p2align	5
	.type	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,@function
_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev: # @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
# %bb.0:
	ret
.Lfunc_end2:
	.size	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, .Lfunc_end2-_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
                                        # -- End function
	.section	.text._ZN15btGjkConvexCastD0Ev,"axG",@progbits,_ZN15btGjkConvexCastD0Ev,comdat
	.weak	_ZN15btGjkConvexCastD0Ev        # -- Begin function _ZN15btGjkConvexCastD0Ev
	.p2align	5
	.type	_ZN15btGjkConvexCastD0Ev,@function
_ZN15btGjkConvexCastD0Ev:               # @_ZN15btGjkConvexCastD0Ev
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
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB3_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN15btGjkConvexCastD0Ev, .Lfunc_end3-_ZN15btGjkConvexCastD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN15btGjkConvexCastD0Ev,"aG",@progbits,_ZN15btGjkConvexCastD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN16btPointCollectorD0Ev,"axG",@progbits,_ZN16btPointCollectorD0Ev,comdat
	.weak	_ZN16btPointCollectorD0Ev       # -- Begin function _ZN16btPointCollectorD0Ev
	.p2align	5
	.type	_ZN16btPointCollectorD0Ev,@function
_ZN16btPointCollectorD0Ev:              # @_ZN16btPointCollectorD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end4:
	.size	_ZN16btPointCollectorD0Ev, .Lfunc_end4-_ZN16btPointCollectorD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16btPointCollector20setShapeIdentifiersAEii,"axG",@progbits,_ZN16btPointCollector20setShapeIdentifiersAEii,comdat
	.weak	_ZN16btPointCollector20setShapeIdentifiersAEii # -- Begin function _ZN16btPointCollector20setShapeIdentifiersAEii
	.p2align	5
	.type	_ZN16btPointCollector20setShapeIdentifiersAEii,@function
_ZN16btPointCollector20setShapeIdentifiersAEii: # @_ZN16btPointCollector20setShapeIdentifiersAEii
# %bb.0:
	ret
.Lfunc_end5:
	.size	_ZN16btPointCollector20setShapeIdentifiersAEii, .Lfunc_end5-_ZN16btPointCollector20setShapeIdentifiersAEii
                                        # -- End function
	.section	.text._ZN16btPointCollector20setShapeIdentifiersBEii,"axG",@progbits,_ZN16btPointCollector20setShapeIdentifiersBEii,comdat
	.weak	_ZN16btPointCollector20setShapeIdentifiersBEii # -- Begin function _ZN16btPointCollector20setShapeIdentifiersBEii
	.p2align	5
	.type	_ZN16btPointCollector20setShapeIdentifiersBEii,@function
_ZN16btPointCollector20setShapeIdentifiersBEii: # @_ZN16btPointCollector20setShapeIdentifiersBEii
# %bb.0:
	ret
.Lfunc_end6:
	.size	_ZN16btPointCollector20setShapeIdentifiersBEii, .Lfunc_end6-_ZN16btPointCollector20setShapeIdentifiersBEii
                                        # -- End function
	.section	.text._ZN16btPointCollector15addContactPointERK9btVector3S2_f,"axG",@progbits,_ZN16btPointCollector15addContactPointERK9btVector3S2_f,comdat
	.weak	_ZN16btPointCollector15addContactPointERK9btVector3S2_f # -- Begin function _ZN16btPointCollector15addContactPointERK9btVector3S2_f
	.p2align	5
	.type	_ZN16btPointCollector15addContactPointERK9btVector3S2_f,@function
_ZN16btPointCollector15addContactPointERK9btVector3S2_f: # @_ZN16btPointCollector15addContactPointERK9btVector3S2_f
# %bb.0:
	fld.s	$fa1, $a0, 40
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_2
# %bb.1:
	ori	$a3, $zero, 1
	st.b	$a3, $a0, 44
	vld	$vr1, $a1, 0
	vst	$vr1, $a0, 8
	vld	$vr1, $a2, 0
	vst	$vr1, $a0, 24
	fst.s	$fa0, $a0, 40
.LBB7_2:
	ret
.Lfunc_end7:
	.size	_ZN16btPointCollector15addContactPointERK9btVector3S2_f, .Lfunc_end7-_ZN16btPointCollector15addContactPointERK9btVector3S2_f
                                        # -- End function
	.type	_ZTV15btGjkConvexCast,@object   # @_ZTV15btGjkConvexCast
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV15btGjkConvexCast
	.p2align	3, 0x0
_ZTV15btGjkConvexCast:
	.dword	0
	.dword	_ZTI15btGjkConvexCast
	.dword	_ZN12btConvexCastD2Ev
	.dword	_ZN15btGjkConvexCastD0Ev
	.dword	_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.size	_ZTV15btGjkConvexCast, 40

	.type	_ZTI15btGjkConvexCast,@object   # @_ZTI15btGjkConvexCast
	.globl	_ZTI15btGjkConvexCast
	.p2align	3, 0x0
_ZTI15btGjkConvexCast:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15btGjkConvexCast
	.dword	_ZTI12btConvexCast
	.size	_ZTI15btGjkConvexCast, 24

	.type	_ZTS15btGjkConvexCast,@object   # @_ZTS15btGjkConvexCast
	.section	.rodata,"a",@progbits
	.globl	_ZTS15btGjkConvexCast
_ZTS15btGjkConvexCast:
	.asciz	"15btGjkConvexCast"
	.size	_ZTS15btGjkConvexCast, 18

	.type	_ZTV16btPointCollector,@object  # @_ZTV16btPointCollector
	.section	.data.rel.ro._ZTV16btPointCollector,"awG",@progbits,_ZTV16btPointCollector,comdat
	.weak	_ZTV16btPointCollector
	.p2align	3, 0x0
_ZTV16btPointCollector:
	.dword	0
	.dword	_ZTI16btPointCollector
	.dword	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
	.dword	_ZN16btPointCollectorD0Ev
	.dword	_ZN16btPointCollector20setShapeIdentifiersAEii
	.dword	_ZN16btPointCollector20setShapeIdentifiersBEii
	.dword	_ZN16btPointCollector15addContactPointERK9btVector3S2_f
	.size	_ZTV16btPointCollector, 56

	.type	_ZTI16btPointCollector,@object  # @_ZTI16btPointCollector
	.section	.data.rel.ro._ZTI16btPointCollector,"awG",@progbits,_ZTI16btPointCollector,comdat
	.weak	_ZTI16btPointCollector
	.p2align	3, 0x0
_ZTI16btPointCollector:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS16btPointCollector
	.dword	_ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.size	_ZTI16btPointCollector, 24

	.type	_ZTS16btPointCollector,@object  # @_ZTS16btPointCollector
	.section	.rodata._ZTS16btPointCollector,"aG",@progbits,_ZTS16btPointCollector,comdat
	.weak	_ZTS16btPointCollector
_ZTS16btPointCollector:
	.asciz	"16btPointCollector"
	.size	_ZTS16btPointCollector, 19

	.type	_ZTIN36btDiscreteCollisionDetectorInterface6ResultE,@object # @_ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.section	.data.rel.ro._ZTIN36btDiscreteCollisionDetectorInterface6ResultE,"awG",@progbits,_ZTIN36btDiscreteCollisionDetectorInterface6ResultE,comdat
	.weak	_ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.p2align	3, 0x0
_ZTIN36btDiscreteCollisionDetectorInterface6ResultE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN36btDiscreteCollisionDetectorInterface6ResultE
	.size	_ZTIN36btDiscreteCollisionDetectorInterface6ResultE, 16

	.type	_ZTSN36btDiscreteCollisionDetectorInterface6ResultE,@object # @_ZTSN36btDiscreteCollisionDetectorInterface6ResultE
	.section	.rodata._ZTSN36btDiscreteCollisionDetectorInterface6ResultE,"aG",@progbits,_ZTSN36btDiscreteCollisionDetectorInterface6ResultE,comdat
	.weak	_ZTSN36btDiscreteCollisionDetectorInterface6ResultE
_ZTSN36btDiscreteCollisionDetectorInterface6ResultE:
	.asciz	"N36btDiscreteCollisionDetectorInterface6ResultE"
	.size	_ZTSN36btDiscreteCollisionDetectorInterface6ResultE, 48

	.globl	_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
	.type	_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver,@function
_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver = _ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
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
	.addrsig_sym _ZTI15btGjkConvexCast
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS15btGjkConvexCast
	.addrsig_sym _ZTI12btConvexCast
	.addrsig_sym _ZTI16btPointCollector
	.addrsig_sym _ZTS16btPointCollector
	.addrsig_sym _ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSN36btDiscreteCollisionDetectorInterface6ResultE
