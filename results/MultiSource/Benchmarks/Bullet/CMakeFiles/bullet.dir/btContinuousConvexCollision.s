	.file	"btContinuousConvexCollision.cpp"
	.text
	.globl	_ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver # -- Begin function _ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.p2align	5
	.type	_ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver: # @_ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
# %bb.0:
	pcalau12i	$a5, %pc_hi20(_ZTV27btContinuousConvexCollision+16)
	addi.d	$a5, $a5, %pc_lo12(_ZTV27btContinuousConvexCollision+16)
	st.d	$a5, $a0, 0
	st.d	$a3, $a0, 8
	st.d	$a4, $a0, 16
	st.d	$a1, $a0, 24
	st.d	$a2, $a0, 32
	ret
.Lfunc_end0:
	.size	_ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver, .Lfunc_end0-_ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
.LCPI1_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
.LCPI1_1:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.p2align	5
	.type	_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE,@function
_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE: # @_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -816
	.cfi_def_cfa_offset 816
	st.d	$ra, $sp, 808                   # 8-byte Folded Spill
	st.d	$fp, $sp, 800                   # 8-byte Folded Spill
	st.d	$s0, $sp, 792                   # 8-byte Folded Spill
	st.d	$s1, $sp, 784                   # 8-byte Folded Spill
	st.d	$s2, $sp, 776                   # 8-byte Folded Spill
	st.d	$s3, $sp, 768                   # 8-byte Folded Spill
	st.d	$s4, $sp, 760                   # 8-byte Folded Spill
	st.d	$s5, $sp, 752                   # 8-byte Folded Spill
	st.d	$s6, $sp, 744                   # 8-byte Folded Spill
	st.d	$s7, $sp, 736                   # 8-byte Folded Spill
	st.d	$s8, $sp, 728                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 720                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 712                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 704                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 696                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 688                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 680                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 672                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 664                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$s0, $a0
	ld.d	$a0, $a0, 8
	move	$fp, $a5
	move	$s3, $a4
	move	$s1, $a3
	move	$s4, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver5resetEv)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s4, 48
	fld.s	$fa1, $s2, 48
	fld.s	$fa2, $s4, 52
	fld.s	$fa3, $s2, 52
	fld.s	$fa4, $s4, 56
	fld.s	$fa5, $s2, 56
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 648
	st.d	$a1, $sp, 656
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 376
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 224
	fld.s	$fa1, $sp, 376
	fld.s	$fa2, $sp, 228
	fld.s	$fa3, $sp, 232
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 44                   # 4-byte Folded Spill
	fmul.s	$fs3, $fa1, $fa2
	fmul.s	$fa4, $fa1, $fa3
	fst.s	$fa4, $sp, 40                   # 4-byte Folded Spill
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fs3
	fld.s	$fa0, $s3, 48
	fld.s	$fa1, $s1, 48
	fld.s	$fa2, $s3, 52
	fld.s	$fa3, $s1, 52
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	fsub.s	$fs4, $fa0, $fa1
	fsub.s	$fs5, $fa2, $fa3
	fld.s	$fa0, $s3, 56
	fld.s	$fa1, $s1, 56
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	fsub.s	$fs6, $fa0, $fa1
	movfr2gr.s	$a0, $fs4
	movfr2gr.s	$a1, $fs5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fs6
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 616
	st.d	$a1, $sp, 624
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 376
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 224
	fld.s	$fa1, $sp, 376
	fld.s	$fa2, $sp, 228
	fld.s	$fa3, $sp, 232
	fmul.s	$fs7, $fa0, $fa1
	fmul.s	$fs1, $fa1, $fa2
	fmul.s	$fs2, $fa1, $fa3
	movfr2gr.s	$a0, $fs7
	movfr2gr.s	$a1, $fs1
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 600
	ld.d	$a0, $s0, 24
	movfr2gr.s	$a1, $fs2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 608
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	fmov.s	$fs0, $fa0
	jirl	$ra, $a1, 0
	fmul.s	$fa1, $fs3, $fs3
	fld.s	$fa2, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fld.s	$fa2, $sp, 40                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fs1, $fs1
	fmadd.s	$fa2, $fs7, $fs7, $fa2
	fmadd.s	$fa2, $fs2, $fs2, $fa2
	fsqrt.s	$fa2, $fa2
	fmul.s	$fa0, $fa0, $fa2
	fld.s	$fa2, $sp, 648
	fld.s	$fa3, $sp, 652
	fld.s	$fa4, $sp, 656
	fmadd.s	$fs0, $fa1, $fs0, $fa0
	fsub.s	$fs2, $fs4, $fa2
	fsub.s	$fs5, $fs5, $fa3
	fsub.s	$fs6, $fs6, $fa4
	fmul.s	$fa0, $fs5, $fs5
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	fmadd.s	$fa0, $fs6, $fs6, $fa0
	fsqrt.s	$fa0, $fa0
	fadd.s	$fa0, $fs0, $fa0
	movgr2fr.w	$fs4, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fs4
	bceqz	$fcc0, .LBB1_2
# %bb.1:
	move	$a0, $zero
	b	.LBB1_32
.LBB1_2:
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTV13btSphereShape)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV13btSphereShape)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 520
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 528
	st.w	$zero, $sp, 560
	st.w	$zero, $sp, 576
	pcalau12i	$a0, %pc_hi20(_ZTV16btPointCollector+16)
	addi.d	$s7, $a0, %pc_lo12(_ZTV16btPointCollector+16)
	st.d	$s7, $sp, 472
	lu12i.w	$a0, 382432
	ori	$s8, $a0, 2923
	ld.d	$s3, $s0, 24
	st.w	$s8, $sp, 512
	st.b	$zero, $sp, 516
	ld.d	$s4, $s0, 32
	ld.d	$a0, $s3, 0
	ld.w	$s5, $s3, 8
	ld.w	$s6, $s4, 8
	ld.d	$a1, $a0, 88
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:
	fmov.s	$fs1, $fa0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 88
.Ltmp2:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp3:                                 # EH_LABEL
# %bb.4:
	fmov.s	$fa1, $fa0
	ld.d	$a5, $s0, 8
	ld.d	$a6, $s0, 16
.Ltmp4:                                 # EH_LABEL
	addi.d	$a0, $sp, 376
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s5
	move	$a4, $s6
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.5:
	vld	$vr0, $s2, 0
	addi.d	$a0, $s2, 48
	vld	$vr1, $s2, 16
	vst	$vr0, $sp, 224
	vld	$vr0, $s2, 32
	vld	$vr2, $a0, 0
	vst	$vr1, $sp, 240
	vld	$vr1, $s1, 0
	vst	$vr0, $sp, 256
	vst	$vr2, $sp, 272
	vld	$vr0, $s1, 16
	vst	$vr1, $sp, 288
	vld	$vr1, $s1, 32
	addi.d	$a0, $s1, 48
	vst	$vr0, $sp, 304
	vld	$vr0, $a0, 0
	vst	$vr1, $sp, 320
	st.w	$s8, $sp, 352
	st.d	$zero, $sp, 360
	vst	$vr0, $sp, 336
.Ltmp7:                                 # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 472
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.6:
	ld.bu	$a0, $sp, 516
	vld	$vr0, $sp, 496
	vst	$vr0, $sp, 584
	beqz	$a0, .LBB1_30
# %bb.7:
	fst.s	$fs2, $sp, 44                   # 4-byte Folded Spill
	fld.s	$fs3, $sp, 512
	fld.s	$fs2, $sp, 480
	fld.s	$fs7, $sp, 484
	fld.s	$fs1, $sp, 488
	lu12i.w	$a0, 239665
	ori	$a0, $a0, 623
	movgr2fr.w	$fa0, $a0
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	fcmp.clt.s	$fcc0, $fa0, $fs3
	bceqz	$fcc0, .LBB1_27
# %bb.8:                                # %.lr.ph
	fst.s	$fs6, $sp, 32                   # 4-byte Folded Spill
	fst.s	$fs0, $sp, 28                   # 4-byte Folded Spill
	addi.d	$s3, $sp, 208
	addi.d	$s5, $sp, 320
	addi.d	$s6, $sp, 336
	movgr2fr.w	$fs0, $zero
	ori	$s4, $zero, 65
	lu12i.w	$a0, 212992
	movgr2fr.w	$fa0, $a0
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	lu12i.w	$a0, 255180
	ori	$a0, $a0, 3277
	movgr2fr.w	$fa0, $a0
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	fst.s	$fs0, $sp, 20                   # 4-byte Folded Spill
	.p2align	4, , 16
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 176
	fld.s	$fs4, $sp, 32                   # 4-byte Folded Reload
	beqz	$a0, .LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	vst	$vr0, $sp, 224
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 32
.Ltmp10:                                # EH_LABEL
	addi.d	$a1, $sp, 584
	addi.d	$a2, $sp, 224
	fld.s	$fa0, $sp, 40                   # 4-byte Folded Reload
	jirl	$ra, $a3, 0
.Ltmp11:                                # EH_LABEL
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=1
	addi.w	$s4, $s4, -1
	beqz	$s4, .LBB1_30
# %bb.12:                               #   in Loop: Header=BB1_9 Depth=1
	fmul.s	$fa0, $fs5, $fs7
	fld.s	$fa1, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs2, $fa0
	fmadd.s	$fa0, $fs4, $fs1, $fa0
	fld.s	$fa1, $sp, 28                   # 4-byte Folded Reload
	fadd.s	$fs6, $fa1, $fa0
	fld.s	$fa0, $sp, 24                   # 4-byte Folded Reload
	fcmp.cle.s	$fcc0, $fs6, $fa0
	bcnez	$fcc0, .LBB1_30
# %bb.13:                               #   in Loop: Header=BB1_9 Depth=1
	fdiv.s	$fa0, $fs3, $fs6
	fadd.s	$fs4, $fs0, $fa0
	fcmp.cle.s	$fcc0, $fs4, $fs0
	move	$a0, $zero
	bcnez	$fcc0, .LBB1_31
# %bb.14:                               #   in Loop: Header=BB1_9 Depth=1
	vldi	$vr0, -1168
	fcmp.clt.s	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB1_31
# %bb.15:                               #   in Loop: Header=BB1_9 Depth=1
	fld.s	$fs0, $sp, 20                   # 4-byte Folded Reload
	fcmp.clt.s	$fcc0, $fs4, $fs0
	bcnez	$fcc0, .LBB1_31
# %bb.16:                               #   in Loop: Header=BB1_9 Depth=1
.Ltmp13:                                # EH_LABEL
	addi.d	$a1, $sp, 648
	addi.d	$a2, $sp, 632
	addi.d	$a3, $sp, 160
	move	$a0, $s2
	fmov.s	$fa0, $fs4
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.17:                               #   in Loop: Header=BB1_9 Depth=1
.Ltmp15:                                # EH_LABEL
	addi.d	$a1, $sp, 616
	addi.d	$a2, $sp, 600
	addi.d	$a3, $sp, 96
	move	$a0, $s1
	fmov.s	$fa0, $fs4
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.18:                               #   in Loop: Header=BB1_9 Depth=1
	ld.d	$a0, $fp, 176
	beqz	$a0, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_9 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_1)
	vst	$vr0, $sp, 224
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 32
.Ltmp17:                                # EH_LABEL
	addi.d	$a2, $sp, 224
	move	$a1, $s3
	fld.s	$fa0, $sp, 40                   # 4-byte Folded Reload
	jirl	$ra, $a3, 0
.Ltmp18:                                # EH_LABEL
.LBB1_20:                               #   in Loop: Header=BB1_9 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
.Ltmp20:                                # EH_LABEL
	move	$a0, $fp
	fmov.s	$fa0, $fs4
	jirl	$ra, $a1, 0
.Ltmp21:                                # EH_LABEL
# %bb.21:                               #   in Loop: Header=BB1_9 Depth=1
	ld.d	$a1, $s0, 24
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 8
	ld.d	$a4, $s0, 16
	st.d	$s7, $sp, 48
	st.w	$s8, $sp, 88
	st.b	$zero, $sp, 92
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.22:                               #   in Loop: Header=BB1_9 Depth=1
	vld	$vr0, $sp, 160
	addi.d	$a0, $sp, 176
	vld	$vr1, $a0, 0
	addi.d	$a0, $sp, 192
	vld	$vr2, $a0, 0
	vst	$vr0, $sp, 224
	addi.d	$a0, $sp, 240
	vst	$vr1, $a0, 0
	vld	$vr0, $s3, 0
	addi.d	$a0, $sp, 256
	vst	$vr2, $a0, 0
	vld	$vr1, $sp, 96
	addi.d	$a0, $sp, 112
	vld	$vr2, $a0, 0
	addi.d	$a0, $sp, 272
	vst	$vr0, $a0, 0
	addi.d	$a0, $sp, 128
	vld	$vr0, $a0, 0
	addi.d	$a0, $sp, 288
	vst	$vr1, $a0, 0
	addi.d	$a0, $sp, 304
	vst	$vr2, $a0, 0
	addi.d	$a0, $sp, 144
	vld	$vr1, $a0, 0
	vst	$vr0, $s5, 0
	st.w	$s8, $sp, 352
	st.d	$zero, $sp, 360
	vst	$vr1, $s6, 0
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 48
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.23:                               #   in Loop: Header=BB1_9 Depth=1
	ld.bu	$a0, $sp, 92
	beqz	$a0, .LBB1_31
# %bb.24:                               #   in Loop: Header=BB1_9 Depth=1
	fld.s	$fs3, $sp, 88
	fcmp.cule.s	$fcc0, $fs0, $fs3
	bceqz	$fcc0, .LBB1_33
# %bb.25:                               #   in Loop: Header=BB1_9 Depth=1
	addi.d	$a0, $sp, 72
	vld	$vr0, $a0, 0
	fld.s	$fs2, $sp, 56
	fld.s	$fs7, $sp, 60
	fld.s	$fs1, $sp, 64
	fld.s	$fa1, $sp, 36                   # 4-byte Folded Reload
	fcmp.clt.s	$fcc0, $fa1, $fs3
	vst	$vr0, $sp, 584
	fmov.s	$fs0, $fs4
	bcnez	$fcc0, .LBB1_9
# %bb.26:
	fld.s	$fa0, $sp, 68
	b	.LBB1_28
.LBB1_27:                               # %.._crit_edge_crit_edge
	fmul.s	$fa1, $fs5, $fs7
	fld.s	$fa0, $sp, 492
	fld.s	$fa2, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa2, $fs2, $fa1
	fmadd.s	$fa1, $fs6, $fs1, $fa1
	fadd.s	$fs6, $fs0, $fa1
.LBB1_28:                               # %._crit_edge
	fld.s	$fa1, $fp, 184
	fcmp.cle.s	$fcc0, $fs6, $fa1
	bcnez	$fcc0, .LBB1_30
# %bb.29:
	fst.s	$fs4, $fp, 168
	fst.s	$fs2, $fp, 136
	vld	$vr1, $sp, 584
	fst.s	$fs7, $fp, 140
	fst.s	$fs1, $fp, 144
	fst.s	$fa0, $fp, 148
	vst	$vr1, $fp, 152
	ori	$a0, $zero, 1
	b	.LBB1_31
.LBB1_30:
	move	$a0, $zero
.LBB1_31:                               # %.thread
	move	$fp, $a0
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB1_32:
	fld.d	$fs7, $sp, 664                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 680                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 688                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 696                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 712                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 720                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 792                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 800                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 808                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 816
	ret
.LBB1_33:
	vld	$vr0, $sp, 56
	addi.d	$a1, $sp, 72
	vld	$vr1, $a1, 0
	fst.s	$fs4, $fp, 168
	vst	$vr0, $fp, 136
	vst	$vr1, $fp, 152
	b	.LBB1_31
.LBB1_34:
.Ltmp19:                                # EH_LABEL
	b	.LBB1_41
.LBB1_35:
.Ltmp12:                                # EH_LABEL
	b	.LBB1_41
.LBB1_36:
.Ltmp9:                                 # EH_LABEL
	b	.LBB1_41
.LBB1_37:
.Ltmp28:                                # EH_LABEL
	b	.LBB1_41
.LBB1_38:
.Ltmp25:                                # EH_LABEL
	b	.LBB1_41
.LBB1_39:
.Ltmp6:                                 # EH_LABEL
	b	.LBB1_41
.LBB1_40:
.Ltmp22:                                # EH_LABEL
.LBB1_41:
	move	$fp, $a0
.Ltmp29:                                # EH_LABEL
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.42:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_43:
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE, .Lfunc_end1-_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
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
	.uleb128 .Ltmp5-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp13                #   Call between .Ltmp13 and .Ltmp16
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp29-.Ltmp27                #   Call between .Ltmp27 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Lfunc_end1-.Ltmp30            #   Call between .Ltmp30 and .Lfunc_end1
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
	.section	.text._ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_,"axG",@progbits,_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_,comdat
	.weak	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_ # -- Begin function _ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.p2align	5
	.type	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_,@function
_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_: # @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a1, 4
	move	$fp, $a3
	fmov.s	$fs0, $fa0
	move	$s0, $a0
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fs0, $fa2
	fld.s	$fa2, $a1, 8
	fld.s	$fa3, $a0, 48
	fld.s	$fa4, $a0, 52
	fld.s	$fa5, $a0, 56
	fmul.s	$fa2, $fs0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $a3, 48
	st.d	$a1, $a3, 56
	fld.s	$fs2, $a2, 4
	fld.s	$fs1, $a2, 0
	fld.s	$fs3, $a2, 8
	fmul.s	$fa0, $fs2, $fs2
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fmadd.s	$fa0, $fs3, $fs3, $fa0
	fsqrt.s	$fa0, $fa0
	fmul.s	$fa1, $fs0, $fa0
	lu12i.w	$a0, 259216
	ori	$a0, $a0, 4059
	movgr2fr.w	$fa2, $a0
	fdiv.s	$fa3, $fa2, $fs0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fs4, $fa0, $fa3, $fcc0
	lu12i.w	$a0, 239665
	ori	$a0, $a0, 623
	movgr2fr.w	$fa0, $a0
	fcmp.cule.s	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB3_2
# %bb.1:
	fmul.s	$fa0, $fs0, $fs0
	fmul.s	$fa0, $fs0, $fa0
	lu12i.w	$a0, -275798
	ori	$a0, $a0, 2731
	lu32i.d	$a0, 0
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa0, $fa0, $fs4
	fmul.s	$fa0, $fa0, $fs4
	vldi	$vr1, -1184
	fmadd.s	$fa0, $fs0, $fa1, $fa0
	b	.LBB3_3
.LBB3_2:
	vldi	$vr0, -1184
	fmul.s	$fa0, $fs4, $fa0
	fmul.s	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs4
.LBB3_3:
	fmul.s	$fs2, $fs2, $fa0
	fmul.s	$fs1, $fs1, $fa0
	fmul.s	$fs3, $fs3, $fa0
	fmul.s	$fa0, $fs0, $fs4
	vldi	$vr1, -1184
	fmul.s	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	srli.d	$a0, $a1, 32
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa4, $fs1, $fa3
	fmadd.s	$fa4, $fs0, $fa0, $fa4
	fmadd.s	$fa4, $fs2, $fa2, $fa4
	fneg.s	$fa5, $fs3
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fmul.s	$fa6, $fs2, $fa3
	fmadd.s	$fa6, $fs0, $fa1, $fa6
	fmadd.s	$fa6, $fs3, $fa0, $fa6
	fneg.s	$fa7, $fs1
	fmadd.s	$fa6, $fa7, $fa2, $fa6
	fmul.s	$fa7, $fs3, $fa3
	fmadd.s	$fa7, $fs0, $fa2, $fa7
	fmadd.s	$fa7, $fs1, $fa1, $fa7
	fneg.s	$ft0, $fs2
	fmadd.s	$fa7, $ft0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $fs0, $fa3, $fa0
	fmadd.s	$fa0, $ft0, $fa1, $fa0
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmul.s	$fa1, $fa6, $fa6
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa7, $fa7, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fa4, $fa1
	fmul.s	$fa3, $fa6, $fa1
	fmul.s	$fa4, $fa7, $fa1
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa3, $fa3
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	vldi	$vr5, -1280
	fdiv.s	$fa1, $fa5, $fa1
	fmul.s	$fa5, $fa2, $fa1
	fmul.s	$fa6, $fa3, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa7, $fa0, $fa5
	fmul.s	$ft0, $fa0, $fa6
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa5, $fa2, $fa5
	fmul.s	$ft1, $fa2, $fa6
	fmul.s	$fa2, $fa2, $fa1
	fmul.s	$fa6, $fa3, $fa6
	fmul.s	$fa3, $fa3, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fadd.s	$fa4, $fa6, $fa1
	vldi	$vr10, -1168
	fsub.s	$fa4, $ft2, $fa4
	fsub.s	$ft3, $ft1, $fa0
	fadd.s	$ft4, $fa2, $ft0
	fadd.s	$fa0, $ft1, $fa0
	fadd.s	$fa1, $fa5, $fa1
	fsub.s	$fa1, $ft2, $fa1
	fsub.s	$ft1, $fa3, $fa7
	fsub.s	$fa2, $fa2, $ft0
	fadd.s	$fa3, $fa3, $fa7
	fadd.s	$fa5, $fa5, $fa6
	fsub.s	$fa5, $ft2, $fa5
	fst.s	$fa4, $fp, 0
	fst.s	$ft3, $fp, 4
	fst.s	$ft4, $fp, 8
	st.w	$zero, $fp, 12
	fst.s	$fa0, $fp, 16
	fst.s	$fa1, $fp, 20
	fst.s	$ft1, $fp, 24
	st.w	$zero, $fp, 28
	fst.s	$fa2, $fp, 32
	fst.s	$fa3, $fp, 36
	fst.s	$fa5, $fp, 40
	st.w	$zero, $fp, 44
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end3:
	.size	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_, .Lfunc_end3-_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,"axG",@progbits,_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,comdat
	.weak	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev # -- Begin function _ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
	.p2align	5
	.type	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,@function
_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev: # @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
# %bb.0:
	ret
.Lfunc_end4:
	.size	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, .Lfunc_end4-_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
                                        # -- End function
	.section	.text._ZN27btContinuousConvexCollisionD0Ev,"axG",@progbits,_ZN27btContinuousConvexCollisionD0Ev,comdat
	.weak	_ZN27btContinuousConvexCollisionD0Ev # -- Begin function _ZN27btContinuousConvexCollisionD0Ev
	.p2align	5
	.type	_ZN27btContinuousConvexCollisionD0Ev,@function
_ZN27btContinuousConvexCollisionD0Ev:   # @_ZN27btContinuousConvexCollisionD0Ev
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
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB5_2:
.Ltmp34:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN27btContinuousConvexCollisionD0Ev, .Lfunc_end5-_ZN27btContinuousConvexCollisionD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN27btContinuousConvexCollisionD0Ev,"aG",@progbits,_ZN27btContinuousConvexCollisionD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp33            #   Call between .Ltmp33 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,"axG",@progbits,_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,comdat
	.weak	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf # -- Begin function _ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.p2align	5
	.type	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,@function
_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf: # @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	move	$s0, $a3
	move	$fp, $a2
	fld.s	$fa0, $a0, 36
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a0, 20
	fld.s	$fa3, $a0, 40
	fneg.s	$fa4, $fa0
	fmul.s	$fa5, $fa1, $fa4
	fld.s	$fa6, $a0, 16
	fld.s	$fa7, $a0, 32
	fmadd.s	$fa5, $fa2, $fa3, $fa5
	fneg.s	$ft0, $fa3
	fmul.s	$ft1, $fa6, $ft0
	fmadd.s	$ft1, $fa1, $fa7, $ft1
	fneg.s	$ft2, $fa7
	fmul.s	$ft3, $fa2, $ft2
	fld.s	$ft4, $a0, 4
	fld.s	$ft5, $a0, 0
	fld.s	$ft6, $a0, 8
	fmadd.s	$ft3, $fa6, $fa0, $ft3
	fmul.s	$ft7, $ft4, $ft1
	fmadd.s	$ft7, $ft5, $fa5, $ft7
	fmadd.s	$ft7, $ft6, $ft3, $ft7
	frecip.s	$ft7, $ft7
	fmul.s	$fa5, $fa5, $ft7
	fmul.s	$ft0, $ft4, $ft0
	fmadd.s	$fa0, $ft6, $fa0, $ft0
	fmul.s	$fa0, $fa0, $ft7
	fneg.s	$ft0, $fa2
	fmul.s	$ft0, $ft6, $ft0
	fmadd.s	$ft0, $ft4, $fa1, $ft0
	fmul.s	$ft0, $ft0, $ft7
	fmul.s	$ft1, $ft1, $ft7
	fmul.s	$ft2, $ft6, $ft2
	fmadd.s	$fa3, $ft5, $fa3, $ft2
	fmul.s	$fa3, $fa3, $ft7
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $ft5, $fa1
	fmadd.s	$fa1, $ft6, $fa6, $fa1
	fmul.s	$fa1, $fa1, $ft7
	fmul.s	$ft2, $ft3, $ft7
	fmul.s	$fa4, $ft5, $fa4
	fmadd.s	$fa4, $ft4, $fa7, $fa4
	fmul.s	$fa4, $fa4, $ft7
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $ft4, $fa6
	fmadd.s	$fa2, $ft5, $fa2, $fa6
	fld.s	$fa6, $a1, 4
	fld.s	$fa7, $a1, 0
	fld.s	$ft3, $a1, 8
	fmul.s	$fa2, $fa2, $ft7
	fmul.s	$ft4, $fa6, $ft1
	fmadd.s	$ft4, $fa5, $fa7, $ft4
	fmadd.s	$ft4, $ft2, $ft3, $ft4
	fmul.s	$ft5, $fa6, $fa3
	fmadd.s	$ft5, $fa0, $fa7, $ft5
	fmadd.s	$ft5, $fa4, $ft3, $ft5
	fmul.s	$fa6, $fa6, $fa1
	fmadd.s	$fa6, $ft0, $fa7, $fa6
	fld.s	$fa7, $a1, 20
	fld.s	$ft6, $a1, 16
	fld.s	$ft7, $a1, 24
	fmadd.s	$fa6, $fa2, $ft3, $fa6
	fmul.s	$ft3, $ft1, $fa7
	fmadd.s	$ft3, $fa5, $ft6, $ft3
	fmadd.s	$ft3, $ft2, $ft7, $ft3
	fmul.s	$ft8, $fa3, $fa7
	fmadd.s	$ft8, $fa0, $ft6, $ft8
	fmadd.s	$ft8, $fa4, $ft7, $ft8
	fmul.s	$fa7, $fa1, $fa7
	fmadd.s	$fa7, $ft0, $ft6, $fa7
	fld.s	$ft6, $a1, 36
	fld.s	$ft9, $a1, 32
	fld.s	$ft10, $a1, 40
	fmadd.s	$fa7, $fa2, $ft7, $fa7
	fmul.s	$ft1, $ft1, $ft6
	fmadd.s	$fa5, $fa5, $ft9, $ft1
	fmadd.s	$fa5, $ft2, $ft10, $fa5
	fmul.s	$fa3, $fa3, $ft6
	fmadd.s	$fa0, $fa0, $ft9, $fa3
	fmadd.s	$fa0, $fa4, $ft10, $fa0
	fmul.s	$fa1, $fa1, $ft6
	fmadd.s	$fa1, $ft0, $ft9, $fa1
	fmadd.s	$fa1, $fa2, $ft10, $fa1
	fst.s	$ft4, $sp, 32
	fst.s	$ft5, $sp, 36
	fst.s	$fa6, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$ft3, $sp, 48
	fst.s	$ft8, $sp, 52
	fst.s	$fa7, $sp, 56
	st.w	$zero, $sp, 60
	fst.s	$fa5, $sp, 64
	fst.s	$fa0, $sp, 68
	fst.s	$fa1, $sp, 72
	st.w	$zero, $sp, 76
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 20
	fld.s	$fa1, $sp, 16
	fld.s	$fa2, $sp, 24
	fld.s	$fa3, $sp, 28
	fmul.s	$fa4, $fa0, $fa0
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fs0, $fa1, $fa4
	fmul.s	$fs1, $fa0, $fa4
	fmul.s	$fs2, $fa2, $fa4
	fmul.s	$fa0, $fa3, $fa4
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $s0, 0
	fmul.s	$fa0, $fs1, $fs1
	fmadd.s	$fa0, $fs0, $fs0, $fa0
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	lu12i.w	$a0, 165888
	movgr2fr.w	$fa1, $a0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	st.w	$zero, $fp, 12
	bceqz	$fcc0, .LBB6_2
# %bb.1:
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa0
	b	.LBB6_3
.LBB6_2:
	frsqrt.s	$fa2, $fa0
	fmul.s	$fa1, $fs0, $fa2
	fmul.s	$fa0, $fs1, $fa2
	fmul.s	$fa2, $fs2, $fa2
.LBB6_3:
	fst.s	$fa1, $fp, 0
	fst.s	$fa0, $fp, 4
	fst.s	$fa2, $fp, 8
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end6:
	.size	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf, .Lfunc_end6-_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK11btMatrix3x311getRotationER12btQuaternion,"axG",@progbits,_ZNK11btMatrix3x311getRotationER12btQuaternion,comdat
	.weak	_ZNK11btMatrix3x311getRotationER12btQuaternion # -- Begin function _ZNK11btMatrix3x311getRotationER12btQuaternion
	.p2align	5
	.type	_ZNK11btMatrix3x311getRotationER12btQuaternion,@function
_ZNK11btMatrix3x311getRotationER12btQuaternion: # @_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	fld.s	$fa0, $a0, 0
	fld.s	$fa2, $a0, 20
	fld.s	$fa1, $a0, 40
	fadd.s	$fa3, $fa0, $fa2
	fadd.s	$fa3, $fa3, $fa1
	movgr2fr.w	$fa4, $zero
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB7_3
# %bb.1:
	vldi	$vr0, -1168
	fadd.s	$fa1, $fa3, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB7_6
.LBB7_2:                                # %.split
	fld.s	$fa1, $a0, 36
	fld.s	$fa2, $a0, 24
	fld.s	$fa3, $a0, 8
	fld.s	$fa4, $a0, 32
	fsub.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $a0, 16
	fld.s	$fa5, $a0, 4
	fsub.s	$fa3, $fa3, $fa4
	vldi	$vr4, -1184
	fdiv.s	$fa4, $fa4, $fa0
	fsub.s	$fa2, $fa2, $fa5
	vextrins.w	$vr4, $vr0, 16
	vshuf4i.w	$vr0, $vr4, 64
	lu12i.w	$a0, 258048
	vreplgr2vr.w	$vr4, $a0
	vextrins.w	$vr4, $vr1, 0
	vextrins.w	$vr4, $vr3, 16
	vextrins.w	$vr4, $vr2, 32
	vfmul.s	$vr0, $vr0, $vr4
	b	.LBB7_5
.LBB7_3:
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fcmp.clt.s	$fcc1, $fa0, $fa2
	movcf2gr	$a2, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a2, $a2, 1
	movcf2gr	$a3, $fcc0
	slli.d	$a3, $a3, 1
	movcf2gr	$a4, $fcc1
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	addi.d	$a3, $a2, 1
	addi.d	$a4, $a3, -3
	sltui	$a4, $a4, 1
	masknez	$a3, $a3, $a4
	addi.d	$a4, $a2, -1
	sltui	$a5, $a2, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 2
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	alsl.d	$fp, $a2, $a0, 4
	slli.d	$s1, $a2, 2
	fldx.s	$fa0, $fp, $s1
	alsl.d	$s4, $a3, $a0, 4
	slli.d	$s0, $a3, 2
	fldx.s	$fa1, $s4, $s0
	alsl.d	$s3, $a4, $a0, 4
	slli.d	$s2, $a4, 2
	fldx.s	$fa2, $s3, $s2
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa0, $fa0, $fa2
	vldi	$vr1, -1168
	fadd.s	$fa1, $fa0, $fa1
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB7_7
.LBB7_4:                                # %.split47
	vldi	$vr1, -1184
	fmul.s	$fa2, $fa0, $fa1
	addi.d	$a0, $sp, 16
	fldx.s	$fa3, $s3, $s0
	fldx.s	$fa4, $s4, $s2
	or	$a2, $a0, $s1
	fst.s	$fa2, $a2, 0
	fdiv.s	$fa0, $fa1, $fa0
	fsub.s	$fa1, $fa3, $fa4
	fmul.s	$fa1, $fa0, $fa1
	fldx.s	$fa2, $s4, $s1
	fldx.s	$fa3, $fp, $s0
	fst.s	$fa1, $sp, 28
	fldx.s	$fa1, $s3, $s1
	fldx.s	$fa4, $fp, $s2
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s0, $a0
	fadd.s	$fa1, $fa1, $fa4
	fmul.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $s2, $a0
	vld	$vr0, $sp, 16
.LBB7_5:
	vst	$vr0, $a1, 0
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB7_6:                                # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB7_2
.LBB7_7:                                # %call.sqrt48
	fmov.s	$fa0, $fa1
	move	$s5, $a1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	b	.LBB7_4
.Lfunc_end7:
	.size	_ZNK11btMatrix3x311getRotationER12btQuaternion, .Lfunc_end7-_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_endproc
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
.Lfunc_end8:
	.size	_ZN16btPointCollectorD0Ev, .Lfunc_end8-_ZN16btPointCollectorD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16btPointCollector20setShapeIdentifiersAEii,"axG",@progbits,_ZN16btPointCollector20setShapeIdentifiersAEii,comdat
	.weak	_ZN16btPointCollector20setShapeIdentifiersAEii # -- Begin function _ZN16btPointCollector20setShapeIdentifiersAEii
	.p2align	5
	.type	_ZN16btPointCollector20setShapeIdentifiersAEii,@function
_ZN16btPointCollector20setShapeIdentifiersAEii: # @_ZN16btPointCollector20setShapeIdentifiersAEii
# %bb.0:
	ret
.Lfunc_end9:
	.size	_ZN16btPointCollector20setShapeIdentifiersAEii, .Lfunc_end9-_ZN16btPointCollector20setShapeIdentifiersAEii
                                        # -- End function
	.section	.text._ZN16btPointCollector20setShapeIdentifiersBEii,"axG",@progbits,_ZN16btPointCollector20setShapeIdentifiersBEii,comdat
	.weak	_ZN16btPointCollector20setShapeIdentifiersBEii # -- Begin function _ZN16btPointCollector20setShapeIdentifiersBEii
	.p2align	5
	.type	_ZN16btPointCollector20setShapeIdentifiersBEii,@function
_ZN16btPointCollector20setShapeIdentifiersBEii: # @_ZN16btPointCollector20setShapeIdentifiersBEii
# %bb.0:
	ret
.Lfunc_end10:
	.size	_ZN16btPointCollector20setShapeIdentifiersBEii, .Lfunc_end10-_ZN16btPointCollector20setShapeIdentifiersBEii
                                        # -- End function
	.section	.text._ZN16btPointCollector15addContactPointERK9btVector3S2_f,"axG",@progbits,_ZN16btPointCollector15addContactPointERK9btVector3S2_f,comdat
	.weak	_ZN16btPointCollector15addContactPointERK9btVector3S2_f # -- Begin function _ZN16btPointCollector15addContactPointERK9btVector3S2_f
	.p2align	5
	.type	_ZN16btPointCollector15addContactPointERK9btVector3S2_f,@function
_ZN16btPointCollector15addContactPointERK9btVector3S2_f: # @_ZN16btPointCollector15addContactPointERK9btVector3S2_f
# %bb.0:
	fld.s	$fa1, $a0, 40
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_2
# %bb.1:
	ori	$a3, $zero, 1
	st.b	$a3, $a0, 44
	vld	$vr1, $a1, 0
	vst	$vr1, $a0, 8
	vld	$vr1, $a2, 0
	vst	$vr1, $a0, 24
	fst.s	$fa0, $a0, 40
.LBB11_2:
	ret
.Lfunc_end11:
	.size	_ZN16btPointCollector15addContactPointERK9btVector3S2_f, .Lfunc_end11-_ZN16btPointCollector15addContactPointERK9btVector3S2_f
                                        # -- End function
	.type	_ZTV27btContinuousConvexCollision,@object # @_ZTV27btContinuousConvexCollision
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV27btContinuousConvexCollision
	.p2align	3, 0x0
_ZTV27btContinuousConvexCollision:
	.dword	0
	.dword	_ZTI27btContinuousConvexCollision
	.dword	_ZN12btConvexCastD2Ev
	.dword	_ZN27btContinuousConvexCollisionD0Ev
	.dword	_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.size	_ZTV27btContinuousConvexCollision, 40

	.type	_ZTI27btContinuousConvexCollision,@object # @_ZTI27btContinuousConvexCollision
	.globl	_ZTI27btContinuousConvexCollision
	.p2align	3, 0x0
_ZTI27btContinuousConvexCollision:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS27btContinuousConvexCollision
	.dword	_ZTI12btConvexCast
	.size	_ZTI27btContinuousConvexCollision, 24

	.type	_ZTS27btContinuousConvexCollision,@object # @_ZTS27btContinuousConvexCollision
	.section	.rodata,"a",@progbits
	.globl	_ZTS27btContinuousConvexCollision
_ZTS27btContinuousConvexCollision:
	.asciz	"27btContinuousConvexCollision"
	.size	_ZTS27btContinuousConvexCollision, 30

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

	.globl	_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.type	_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver = _ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
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
	.addrsig_sym _ZTI27btContinuousConvexCollision
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS27btContinuousConvexCollision
	.addrsig_sym _ZTI12btConvexCast
	.addrsig_sym _ZTI16btPointCollector
	.addrsig_sym _ZTS16btPointCollector
	.addrsig_sym _ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSN36btDiscreteCollisionDetectorInterface6ResultE
