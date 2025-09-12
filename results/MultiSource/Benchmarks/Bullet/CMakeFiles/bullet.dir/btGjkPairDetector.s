	.file	"btGjkPairDetector.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
.LCPI0_0:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.p2align	5
	.type	_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver: # @_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
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
	move	$fp, $a2
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV17btGjkPairDetector+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV17btGjkPairDetector+16)
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	st.d	$a0, $s0, 0
	vst	$vr0, $s0, 8
	st.d	$a4, $s0, 24
	st.d	$a3, $s0, 32
	st.d	$a1, $s0, 40
	ld.w	$a0, $a1, 8
	ld.w	$a2, $fp, 8
	ld.d	$a3, $a1, 0
	st.d	$fp, $s0, 48
	st.w	$a0, $s0, 56
	st.w	$a2, $s0, 60
	ld.d	$a2, $a3, 88
	move	$a0, $a1
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	fst.s	$fa0, $s0, 64
	ld.d	$a1, $a0, 88
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fst.s	$fa0, $s0, 68
	st.b	$zero, $s0, 72
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s0, 80
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 92
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver, .Lfunc_end0-_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
.LCPI1_0:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.p2align	5
	.type	_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver: # @_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.cfi_startproc
# %bb.0:
	pcalau12i	$a7, %pc_hi20(_ZTV17btGjkPairDetector+16)
	addi.d	$a7, $a7, %pc_lo12(_ZTV17btGjkPairDetector+16)
	pcalau12i	$t0, %pc_hi20(.LCPI1_0)
	vld	$vr2, $t0, %pc_lo12(.LCPI1_0)
	st.d	$a7, $a0, 0
	vst	$vr2, $a0, 8
	st.d	$a6, $a0, 24
	st.d	$a5, $a0, 32
	st.d	$a1, $a0, 40
	st.d	$a2, $a0, 48
	st.w	$a3, $a0, 56
	st.w	$a4, $a0, 60
	fst.s	$fa0, $a0, 64
	fst.s	$fa1, $a0, 68
	st.b	$zero, $a0, 72
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 80
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 92
	ret
.Lfunc_end1:
	.size	_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver, .Lfunc_end1-_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.cfi_endproc
                                        # -- End function
	.globl	_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb # -- Begin function _ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb
	.p2align	5
	.type	_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb,@function
_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb: # @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw)
	jr	$t8
.Lfunc_end2:
	.size	_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb, .Lfunc_end2-_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw
.LCPI3_0:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw
	.p2align	5
	.type	_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw,@function
_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw: # @_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -512
	.cfi_def_cfa_offset 512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 424                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 368                  # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	.cfi_offset 57, -96
	.cfi_offset 58, -104
	.cfi_offset 59, -112
	.cfi_offset 60, -120
	.cfi_offset 61, -128
	.cfi_offset 62, -136
	.cfi_offset 63, -144
	move	$s0, $a1
	move	$fp, $a0
	st.w	$zero, $a0, 76
	vrepli.b	$vr2, 0
	vld	$vr0, $a1, 0
	vld	$vr1, $a1, 16
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	vst	$vr2, $sp, 352
	vld	$vr2, $a1, 32
	vst	$vr0, $sp, 256
	vst	$vr1, $sp, 272
	vld	$vr0, $a1, 48
	vst	$vr2, $sp, 288
	vld	$vr1, $a1, 64
	vld	$vr2, $a1, 80
	vst	$vr0, $sp, 304
	vld	$vr0, $a1, 112
	vst	$vr1, $sp, 192
	vst	$vr2, $sp, 208
	vld	$vr1, $a1, 96
	vst	$vr0, $sp, 240
	fld.s	$fa0, $sp, 304
	fld.s	$fa2, $sp, 240
	fld.s	$fa3, $sp, 308
	fld.s	$fa4, $sp, 244
	fld.s	$fa5, $sp, 312
	fld.s	$fa6, $sp, 248
	vst	$vr1, $sp, 224
	fadd.s	$fa1, $fa0, $fa2
	fadd.s	$fa7, $fa3, $fa4
	fadd.s	$ft0, $fa5, $fa6
	vldi	$vr9, -1184
	fmul.s	$ft2, $fa1, $ft1
	fmul.s	$fa7, $fa7, $ft1
	fmul.s	$fa1, $ft0, $ft1
	fsub.s	$fa0, $fa0, $ft2
	fst.s	$fa0, $sp, 124                  # 4-byte Folded Spill
	fst.s	$fa0, $sp, 304
	fsub.s	$fa0, $fa3, $fa7
	fst.s	$fa0, $sp, 120                  # 4-byte Folded Spill
	fst.s	$fa0, $sp, 308
	fsub.s	$fa0, $fa5, $fa1
	fst.s	$fa0, $sp, 116                  # 4-byte Folded Spill
	fst.s	$fa0, $sp, 312
	fst.s	$ft2, $sp, 52                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa2, $ft2
	fst.s	$fa0, $sp, 240
	fst.s	$fa7, $sp, 56                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa4, $fa7
	ld.d	$a0, $a0, 40
	fst.s	$fa0, $sp, 244
	fst.s	$fa1, $sp, 60                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa6, $fa1
	fst.s	$fa0, $sp, 248
	ld.w	$a0, $a0, 8
	addi.w	$a0, $a0, -17
	ori	$a1, $zero, 1
	move	$s3, $a3
	move	$s1, $a2
	move	$s4, $zero
	bltu	$a1, $a0, .LBB3_2
# %bb.1:
	ld.d	$a0, $fp, 48
	ld.w	$a0, $a0, 8
	addi.w	$a0, $a0, -17
	sltui	$s4, $a0, 2
.LBB3_2:
	pcalau12i	$a0, %pc_hi20(gNumGjkChecks)
	ld.w	$a1, $a0, %pc_lo12(gNumGjkChecks)
	fld.s	$fa0, $fp, 64
	ld.bu	$a2, $fp, 72
	fld.s	$fa1, $fp, 68
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(gNumGjkChecks)
	movgr2fr.w	$fs1, $zero
	movgr2cf	$fcc0, $a2
	fsel	$fa1, $fa1, $fs1, $fcc0
	fsel	$fa2, $fa0, $fs1, $fcc0
	addi.d	$s2, $fp, 8
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $fp, 80
	ld.d	$a0, $fp, 32
	vst	$vr0, $fp, 8
	st.w	$zero, $fp, 88
	fst.s	$fa1, $sp, 48                   # 4-byte Folded Spill
	fst.s	$fa2, $sp, 44                   # 4-byte Folded Spill
	fadd.s	$fa0, $fa2, $fa1
	fst.s	$fa0, $sp, 84                   # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver5resetEv)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 256
	fst.s	$fa0, $sp, 112                  # 4-byte Folded Spill
	fld.s	$fa0, $sp, 260
	fst.s	$fa0, $sp, 108                  # 4-byte Folded Spill
	fld.s	$fa0, $sp, 264
	fst.s	$fa0, $sp, 104                  # 4-byte Folded Spill
	fld.s	$fa0, $sp, 272
	fst.s	$fa0, $sp, 100                  # 4-byte Folded Spill
	fld.s	$fa0, $sp, 276
	fst.s	$fa0, $sp, 96                   # 4-byte Folded Spill
	fld.s	$fa0, $sp, 280
	fst.s	$fa0, $sp, 92                   # 4-byte Folded Spill
	fld.s	$fa0, $sp, 288
	fst.s	$fa0, $sp, 88                   # 4-byte Folded Spill
	fld.s	$fs2, $sp, 292
	lu12i.w	$a0, 382432
	ori	$a0, $a0, 2923
	movgr2fr.w	$fs4, $a0
	fld.s	$fs3, $sp, 296
	lu12i.w	$a0, 219235
	ori	$a0, $a0, 1981
	movgr2fr.w	$fs7, $a0
	lu12i.w	$s5, 212992
	ori	$s6, $zero, 1000
	ori	$s7, $zero, 4
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $fp, 8
	fld.s	$fa1, $fp, 12
	fld.s	$fa2, $fp, 16
	fneg.s	$fa3, $fa0
	fld.s	$fa4, $s0, 16
	fneg.s	$fa5, $fa1
	fneg.s	$fa6, $fa2
	fld.s	$fa7, $s0, 0
	fmul.s	$fa4, $fa4, $fa5
	fld.s	$ft0, $s0, 32
	fld.s	$ft1, $s0, 20
	fld.s	$ft2, $s0, 4
	fmadd.s	$fa4, $fa7, $fa3, $fa4
	fmadd.s	$fa4, $ft0, $fa6, $fa4
	fmul.s	$fa7, $ft1, $fa5
	fmadd.s	$fa7, $ft2, $fa3, $fa7
	fld.s	$ft0, $s0, 36
	fld.s	$ft1, $s0, 24
	fld.s	$ft2, $s0, 8
	fld.s	$ft3, $s0, 40
	fmadd.s	$fa7, $ft0, $fa6, $fa7
	fmul.s	$fa5, $ft1, $fa5
	fmadd.s	$fa3, $ft2, $fa3, $fa5
	fmadd.s	$fa3, $ft3, $fa6, $fa3
	movfr2gr.s	$a0, $fa4
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa3, $s0, 80
	st.d	$a0, $sp, 336
	st.d	$a1, $sp, 344
	fld.s	$fa4, $s0, 64
	fmul.s	$fa3, $fa1, $fa3
	fld.s	$fa5, $s0, 96
	fld.s	$fa6, $s0, 84
	fld.s	$fa7, $s0, 68
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmul.s	$fa4, $fa1, $fa6
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fld.s	$fa5, $s0, 100
	fld.s	$fa6, $s0, 88
	fld.s	$fa7, $s0, 72
	fld.s	$ft0, $s0, 104
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa0, $fa7, $fa0, $fa1
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 320
	ld.d	$a0, $fp, 40
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 328
	addi.d	$a1, $sp, 336
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fs0, $a0
	ld.d	$a2, $fp, 48
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fs6, $a0
	movgr2fr.w	$fs5, $a1
	addi.d	$a1, $sp, 320
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa4, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa5, $a0
	movgr2fr.w	$fa6, $a1
	fld.s	$fa0, $sp, 108                  # 4-byte Folded Reload
	fmul.s	$fa0, $fa0, $fs6
	fld.s	$fa1, $sp, 112                  # 4-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fld.s	$fa1, $sp, 104                  # 4-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs5, $fa0
	fld.s	$fa1, $sp, 124                  # 4-byte Folded Reload
	fadd.s	$fa0, $fa1, $fa0
	fld.s	$fa1, $sp, 96                   # 4-byte Folded Reload
	fmul.s	$fa1, $fa1, $fs6
	fld.s	$fa2, $sp, 100                  # 4-byte Folded Reload
	fmadd.s	$fa1, $fa2, $fs0, $fa1
	fld.s	$fa2, $sp, 92                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa2, $fs5, $fa1
	fld.s	$fa2, $sp, 120                  # 4-byte Folded Reload
	fadd.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fs2, $fs6
	fld.s	$fa3, $sp, 88                   # 4-byte Folded Reload
	fmadd.s	$fa2, $fa3, $fs0, $fa2
	fmadd.s	$fa2, $fs3, $fs5, $fa2
	fld.s	$fa3, $sp, 116                  # 4-byte Folded Reload
	fadd.s	$fa2, $fa3, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	fld.s	$fa3, $sp, 196
	fld.s	$fa7, $sp, 192
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$ft0, $sp, 200
	fmul.s	$fa3, $fa3, $fa5
	fmadd.s	$fa3, $fa7, $fa4, $fa3
	fld.s	$fa7, $sp, 240
	fmadd.s	$fa3, $ft0, $fa6, $fa3
	fld.s	$ft0, $sp, 212
	fld.s	$ft1, $sp, 208
	fadd.s	$fa3, $fa7, $fa3
	fld.s	$fa7, $sp, 216
	fmul.s	$ft0, $ft0, $fa5
	fmadd.s	$ft0, $ft1, $fa4, $ft0
	fld.s	$ft1, $sp, 228
	fmadd.s	$fa7, $fa7, $fa6, $ft0
	fld.s	$ft0, $sp, 224
	st.d	$a0, $sp, 176
	fmul.s	$fa5, $ft1, $fa5
	fld.s	$ft1, $sp, 244
	fmadd.s	$fa5, $ft0, $fa4, $fa5
	fld.s	$ft0, $sp, 232
	fld.s	$ft2, $sp, 248
	st.d	$a1, $sp, 184
	fadd.s	$fa4, $ft1, $fa7
	fmadd.s	$fa5, $ft0, $fa6, $fa5
	fadd.s	$fa5, $ft2, $fa5
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	beqz	$s4, .LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	st.w	$zero, $sp, 184
	st.w	$zero, $sp, 168
	fmov.s	$fa5, $fs1
	fmov.s	$fa2, $fs1
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	fsub.s	$fa0, $fa0, $fa3
	fsub.s	$fa1, $fa1, $fa4
	fsub.s	$fa2, $fa2, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa3, $fp, 12
	fld.s	$fa4, $fp, 8
	fld.s	$fa5, $fp, 16
	st.d	$a0, $sp, 144
	fmul.s	$fa1, $fa3, $fa1
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fmadd.s	$fs0, $fa5, $fa2, $fa0
	fcmp.cule.s	$fcc0, $fs0, $fs1
	st.d	$a1, $sp, 152
	bcnez	$fcc0, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	fld.s	$fa0, $s0, 128
	fmul.s	$fa1, $fs0, $fs0
	fmul.s	$fa0, $fs4, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_22
.LBB3_7:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $fp, 32
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_15
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=1
	fsub.s	$fa0, $fs4, $fs0
	fmul.s	$fa1, $fs4, $fs7
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_16
# %bb.9:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $fp, 32
	addi.d	$a1, $sp, 144
	addi.d	$a2, $sp, 176
	addi.d	$a3, $sp, 160
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver7closestER9btVector3)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_17
# %bb.10:                               #   in Loop: Header=BB3_3 Depth=1
	fld.s	$fa0, $sp, 132
	fld.s	$fa1, $sp, 128
	fld.s	$fa2, $sp, 136
	fmul.s	$fa0, $fa0, $fa0
	vld	$vr3, $sp, 128
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fs0, $fa2, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fs0, $fs7
	vst	$vr3, $s2, 0
	bcnez	$fcc0, .LBB3_18
# %bb.11:                               #   in Loop: Header=BB3_3 Depth=1
	fsub.s	$fa0, $fs4, $fs0
	movgr2fr.w	$fa1, $s5
	fmul.s	$fa1, $fs4, $fa1
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_19
# %bb.12:                               #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a0, $fp, 84
	addi.d	$a1, $a0, 1
	st.w	$a1, $fp, 84
	blt	$s6, $a0, .LBB3_20
# %bb.13:                               #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $fp, 32
	ld.w	$a1, $a0, 0
	beq	$a1, $s7, .LBB3_21
# %bb.14:                               #   in Loop: Header=BB3_3 Depth=1
	fmov.s	$fs4, $fs0
	b	.LBB3_3
.LBB3_15:
	ori	$a0, $zero, 1
	b	.LBB3_23
.LBB3_16:
	movgr2fr.w	$fa1, $zero
	fcmp.cult.s	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 2
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 11
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	b	.LBB3_23
.LBB3_17:
	ori	$a0, $zero, 3
	b	.LBB3_23
.LBB3_18:
	ori	$a0, $zero, 6
	b	.LBB3_23
.LBB3_19:
	ld.d	$a0, $fp, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	fmov.s	$fs4, $fs0
	b	.LBB3_23
.LBB3_20:
	move	$s4, $zero
	b	.LBB3_29
.LBB3_21:
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	ori	$a0, $zero, 13
	st.w	$a0, $fp, 88
	b	.LBB3_29
.LBB3_22:
	ori	$a0, $zero, 10
.LBB3_23:                               # %.thread401
	st.w	$a0, $fp, 88
	ld.d	$a0, $fp, 32
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 320
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_)
	jirl	$ra, $ra, 0
	fld.s	$fs0, $sp, 336
	fld.s	$fa6, $sp, 320
	fld.s	$fs5, $sp, 340
	fld.s	$fa7, $sp, 324
	fld.s	$fs6, $sp, 344
	fld.s	$ft0, $sp, 328
	fsub.s	$fa2, $fs0, $fa6
	fsub.s	$fa1, $fs5, $fa7
	fsub.s	$fa0, $fs6, $ft0
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fs7, $fp, 12
	fld.s	$fs1, $fp, 8
	fld.s	$fs2, $fp, 16
	st.d	$a0, $sp, 352
	fmul.s	$fa3, $fs7, $fs7
	fmadd.s	$fa3, $fs1, $fs1, $fa3
	fmadd.s	$fa3, $fs2, $fs2, $fa3
	fcvt.d.s	$fa4, $fa3
	lu12i.w	$a0, -85564
	ori	$a0, $a0, 813
	lu32i.d	$a0, -379166
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa5, $a0
	fcmp.cule.d	$fcc0, $fa5, $fa4
	st.d	$a1, $sp, 360
	bcnez	$fcc0, .LBB3_25
# %bb.24:
	ori	$a0, $zero, 5
	st.w	$a0, $fp, 88
.LBB3_25:
	lu12i.w	$a0, 165888
	movgr2fr.w	$fa4, $a0
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB3_28
# %bb.26:
	frsqrt.s	$fs3, $fa3
	fmul.s	$fa2, $fs3, $fa2
	fst.s	$fa2, $sp, 352
	fmul.s	$fa1, $fs3, $fa1
	fst.s	$fa1, $sp, 356
	fmul.s	$fa1, $fs3, $fa0
	fsqrt.s	$fa0, $fs4
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fst.s	$fa1, $sp, 360
	bceqz	$fcc0, .LBB3_53
.LBB3_27:                               # %.split
	fld.s	$fa1, $sp, 44                   # 4-byte Folded Reload
	fdiv.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fs1, $fa1
	fmul.s	$fa3, $fs7, $fa1
	fmul.s	$fa1, $fs2, $fa1
	fsub.s	$fa2, $fs0, $fa2
	fst.s	$fa2, $sp, 336
	fsub.s	$fa2, $fs5, $fa3
	fst.s	$fa2, $sp, 340
	fsub.s	$fa1, $fs6, $fa1
	fst.s	$fa1, $sp, 344
	fld.s	$fa1, $sp, 48                   # 4-byte Folded Reload
	fdiv.s	$fa0, $fa1, $fa0
	fmul.s	$fa1, $fs1, $fa0
	fmul.s	$fa2, $fs7, $fa0
	fmul.s	$fa0, $fs2, $fa0
	fadd.s	$fa1, $fa6, $fa1
	fst.s	$fa1, $sp, 320
	fadd.s	$fa1, $fa7, $fa2
	fst.s	$fa1, $sp, 324
	fadd.s	$fa0, $ft0, $fa0
	fst.s	$fa0, $sp, 328
	frecip.s	$fa0, $fs3
	fld.s	$fs1, $sp, 84                   # 4-byte Folded Reload
	fsub.s	$fs0, $fa0, $fs1
	ori	$s4, $zero, 1
	st.w	$s4, $fp, 80
	ld.w	$a2, $fp, 92
	ld.d	$a0, $fp, 24
	ori	$a1, $zero, 1
	bnez	$a2, .LBB3_30
	b	.LBB3_33
.LBB3_28:
	move	$s4, $zero
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 80
.LBB3_29:
	movgr2fr.w	$fs0, $zero
	fld.s	$fs1, $sp, 84                   # 4-byte Folded Reload
	ld.w	$a2, $fp, 92
	ld.d	$a0, $fp, 24
	ori	$a1, $zero, 1
	beqz	$a2, .LBB3_33
.LBB3_30:
	beqz	$a0, .LBB3_33
# %bb.31:
	ld.w	$a2, $fp, 88
	beqz	$a2, .LBB3_33
# %bb.32:
	fadd.s	$fa0, $fs1, $fs0
	fcvt.d.s	$fa0, $fa0
	lu12i.w	$a1, 293601
	ori	$a1, $a1, 1147
	lu32i.d	$a1, 293601
	lu52i.d	$a1, $a1, 1016
	movgr2fr.d	$fa1, $a1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	movcf2gr	$a1, $fcc0
.LBB3_33:
	and	$a1, $s4, $a1
	bnez	$a1, .LBB3_43
# %bb.34:
	beqz	$a0, .LBB3_43
# %bb.35:
	pcalau12i	$a4, %pc_hi20(gNumDeepPenetrationChecks)
	ld.w	$a5, $a4, %pc_lo12(gNumDeepPenetrationChecks)
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $s2, 0
	ld.d	$a1, $fp, 32
	ld.d	$a6, $a0, 0
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 48
	ld.d	$a7, $s0, 136
	ld.d	$t0, $a6, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a4, %pc_lo12(gNumDeepPenetrationChecks)
	st.d	$a7, $sp, 16
	st.d	$s3, $sp, 8
	addi.d	$a6, $sp, 160
	addi.d	$a4, $sp, 256
	addi.d	$a5, $sp, 192
	addi.d	$a7, $sp, 176
	st.d	$a6, $sp, 0
	move	$a6, $s2
	jirl	$ra, $t0, 0
	beqz	$a0, .LBB3_40
# %bb.36:
	fld.s	$fa2, $sp, 160
	fld.s	$fa3, $sp, 176
	fld.s	$fs6, $sp, 164
	fld.s	$fs7, $sp, 180
	fld.s	$fs4, $sp, 168
	fld.s	$fs5, $sp, 184
	fsub.s	$fs1, $fa2, $fa3
	fsub.s	$fs2, $fs6, $fs7
	fsub.s	$fs3, $fs4, $fs5
	fmul.s	$fa0, $fs2, $fs2
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fmadd.s	$fa0, $fs3, $fs3, $fa0
	lu12i.w	$a0, 165888
	movgr2fr.w	$fa1, $a0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_44
# %bb.37:
	move	$s3, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_45
.LBB3_38:
	ori	$a0, $zero, 9
	st.w	$a0, $fp, 80
	beqz	$s4, .LBB3_52
.LBB3_39:
	movgr2fr.w	$fa0, $zero
	fcmp.clt.s	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB3_50
	b	.LBB3_51
.LBB3_40:
	fld.s	$fa1, $fp, 12
	fld.s	$fa2, $fp, 8
	fld.s	$fa3, $fp, 16
	fmul.s	$fa0, $fa1, $fa1
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fmadd.s	$fa0, $fa3, $fa3, $fa0
	movgr2fr.w	$fa4, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa4
	bcnez	$fcc0, .LBB3_43
# %bb.41:
	fld.s	$fa0, $sp, 176
	fld.s	$fa4, $sp, 160
	fld.s	$fa5, $sp, 180
	fld.s	$fa6, $sp, 164
	fld.s	$fa7, $sp, 184
	fld.s	$ft0, $sp, 168
	fsub.s	$fa0, $fa0, $fa4
	fsub.s	$fa4, $fa5, $fa6
	fsub.s	$fa5, $fa7, $ft0
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa0, $fa0, $fa0, $fa4
	fmadd.s	$fa0, $fa5, $fa5, $fa0
	fsqrt.s	$fa0, $fa0
	fsub.s	$fa0, $fa0, $fs1
	fcmp.cule.s	$fcc0, $fs0, $fa0
	movcf2gr	$a0, $fcc0
	and	$a1, $s4, $a0
	ori	$a0, $zero, 5
	bnez	$a1, .LBB3_49
# %bb.42:
	vld	$vr4, $sp, 176
	vld	$vr5, $sp, 160
	vst	$vr4, $sp, 336
	fld.s	$fa4, $sp, 336
	vst	$vr5, $sp, 320
	fld.s	$fa7, $sp, 44                   # 4-byte Folded Reload
	fmul.s	$fa5, $fa7, $fa2
	fmul.s	$fa6, $fa7, $fa1
	fsub.s	$fa4, $fa4, $fa5
	fld.s	$fa5, $sp, 340
	fst.s	$fa4, $sp, 336
	fld.s	$fa4, $sp, 344
	fmul.s	$fa7, $fa7, $fa3
	fsub.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $sp, 340
	fsub.s	$fa4, $fa4, $fa7
	fst.s	$fa4, $sp, 344
	fld.s	$fa4, $sp, 320
	fld.s	$fa5, $sp, 48                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa5, $fa2
	fmul.s	$fa1, $fa5, $fa1
	fmul.s	$fa3, $fa5, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $sp, 324
	fst.s	$fa2, $sp, 320
	fld.s	$fa2, $sp, 328
	vld	$vr5, $s2, 0
	fadd.s	$fa1, $fa1, $fa4
	fst.s	$fa1, $sp, 324
	fadd.s	$fa1, $fa3, $fa2
	vst	$vr5, $sp, 352
	fld.s	$fa2, $sp, 356
	fld.s	$fa3, $sp, 352
	fld.s	$fa4, $sp, 360
	fst.s	$fa1, $sp, 328
	fmul.s	$fa1, $fa2, $fa2
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa3, $fa3, $fa1
	fst.s	$fa3, $sp, 352
	fmul.s	$fa2, $fa2, $fa1
	fst.s	$fa2, $sp, 356
	fmul.s	$fa1, $fa4, $fa1
	fst.s	$fa1, $sp, 360
	ori	$a0, $zero, 6
	b	.LBB3_48
.LBB3_43:
	bnez	$s4, .LBB3_39
	b	.LBB3_52
.LBB3_44:
	fld.s	$fs2, $fp, 12
	fld.s	$fs1, $fp, 8
	fld.s	$fs3, $fp, 16
	ld.w	$s3, $fp, 20
	fmul.s	$fa0, $fs2, $fs2
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fmadd.s	$fa0, $fs3, $fs3, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_38
.LBB3_45:
	fsqrt.s	$fa1, $fa0
	fcmp.cor.s	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB3_54
.LBB3_46:                               # %.split541
	fsub.s	$fa0, $fa3, $fa2
	fsub.s	$fa2, $fs7, $fs6
	fsub.s	$fa3, $fs5, $fs4
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa0, $fa0, $fa0, $fa2
	fmadd.s	$fa0, $fa3, $fa3, $fa0
	fsqrt.s	$fa0, $fa0
	fneg.s	$fa0, $fa0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	movcf2gr	$a0, $fcc0
	and	$a1, $s4, $a0
	ori	$a0, $zero, 8
	bnez	$a1, .LBB3_49
# %bb.47:
	frecip.s	$fa1, $fa1
	fmul.s	$fa2, $fs3, $fa1
	vld	$vr3, $sp, 176
	vld	$vr4, $sp, 160
	fmul.s	$fa5, $fs2, $fa1
	fmul.s	$fa1, $fs1, $fa1
	vst	$vr3, $sp, 336
	vst	$vr4, $sp, 320
	fst.s	$fa1, $sp, 352
	fst.s	$fa5, $sp, 356
	fst.s	$fa2, $sp, 360
	st.w	$s3, $sp, 364
	ori	$a0, $zero, 3
.LBB3_48:                               # %.sink.split
	fmov.s	$fs0, $fa0
.LBB3_49:                               # %.sink.split
	st.w	$a0, $fp, 80
	movgr2fr.w	$fa0, $zero
	fcmp.clt.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB3_51
.LBB3_50:
	fld.s	$fa0, $s0, 128
	fmul.s	$fa1, $fs0, $fs0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_52
.LBB3_51:
	vld	$vr0, $sp, 352
	fld.s	$fa1, $sp, 320
	fld.s	$fa2, $sp, 324
	vst	$vr0, $s2, 0
	fld.s	$fa0, $sp, 52                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fs0, $fp, 76
	fld.s	$fa1, $sp, 56                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $sp, 328
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	ld.d	$a2, $s1, 0
	bstrins.d	$a0, $a1, 63, 32
	fld.s	$fa0, $sp, 60                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa0, $fa2
	st.d	$a0, $sp, 176
	ld.d	$a3, $a2, 32
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 176
	move	$a0, $s1
	fmov.s	$fa0, $fs0
	jirl	$ra, $a3, 0
.LBB3_52:
	fld.d	$fs7, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 416                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 424                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB3_53:                               # %call.sqrt
	fmov.s	$fa0, $fs4
	fst.s	$fa6, $sp, 124                  # 4-byte Folded Spill
	fmov.s	$fs4, $fa7
	fst.s	$ft0, $sp, 120                  # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	fld.s	$ft0, $sp, 120                  # 4-byte Folded Reload
	fmov.s	$fa7, $fs4
	fld.s	$fa6, $sp, 124                  # 4-byte Folded Reload
	b	.LBB3_27
.LBB3_54:                               # %call.sqrt542
	fst.s	$fa2, $sp, 124                  # 4-byte Folded Spill
	fst.s	$fa3, $sp, 120                  # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	fld.s	$fa3, $sp, 120                  # 4-byte Folded Reload
	fld.s	$fa2, $sp, 124                  # 4-byte Folded Reload
	fmov.s	$fa1, $fa0
	b	.LBB3_46
.Lfunc_end3:
	.size	_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw, .Lfunc_end3-_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN36btDiscreteCollisionDetectorInterfaceD2Ev,"axG",@progbits,_ZN36btDiscreteCollisionDetectorInterfaceD2Ev,comdat
	.weak	_ZN36btDiscreteCollisionDetectorInterfaceD2Ev # -- Begin function _ZN36btDiscreteCollisionDetectorInterfaceD2Ev
	.p2align	5
	.type	_ZN36btDiscreteCollisionDetectorInterfaceD2Ev,@function
_ZN36btDiscreteCollisionDetectorInterfaceD2Ev: # @_ZN36btDiscreteCollisionDetectorInterfaceD2Ev
# %bb.0:
	ret
.Lfunc_end4:
	.size	_ZN36btDiscreteCollisionDetectorInterfaceD2Ev, .Lfunc_end4-_ZN36btDiscreteCollisionDetectorInterfaceD2Ev
                                        # -- End function
	.section	.text._ZN17btGjkPairDetectorD0Ev,"axG",@progbits,_ZN17btGjkPairDetectorD0Ev,comdat
	.weak	_ZN17btGjkPairDetectorD0Ev      # -- Begin function _ZN17btGjkPairDetectorD0Ev
	.p2align	5
	.type	_ZN17btGjkPairDetectorD0Ev,@function
_ZN17btGjkPairDetectorD0Ev:             # @_ZN17btGjkPairDetectorD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end5:
	.size	_ZN17btGjkPairDetectorD0Ev, .Lfunc_end5-_ZN17btGjkPairDetectorD0Ev
	.cfi_endproc
                                        # -- End function
	.type	gNumDeepPenetrationChecks,@object # @gNumDeepPenetrationChecks
	.bss
	.globl	gNumDeepPenetrationChecks
	.p2align	2, 0x0
gNumDeepPenetrationChecks:
	.word	0                               # 0x0
	.size	gNumDeepPenetrationChecks, 4

	.type	gNumGjkChecks,@object           # @gNumGjkChecks
	.globl	gNumGjkChecks
	.p2align	2, 0x0
gNumGjkChecks:
	.word	0                               # 0x0
	.size	gNumGjkChecks, 4

	.type	_ZTV17btGjkPairDetector,@object # @_ZTV17btGjkPairDetector
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV17btGjkPairDetector
	.p2align	3, 0x0
_ZTV17btGjkPairDetector:
	.dword	0
	.dword	_ZTI17btGjkPairDetector
	.dword	_ZN36btDiscreteCollisionDetectorInterfaceD2Ev
	.dword	_ZN17btGjkPairDetectorD0Ev
	.dword	_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb
	.size	_ZTV17btGjkPairDetector, 40

	.type	_ZTI17btGjkPairDetector,@object # @_ZTI17btGjkPairDetector
	.globl	_ZTI17btGjkPairDetector
	.p2align	3, 0x0
_ZTI17btGjkPairDetector:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS17btGjkPairDetector
	.dword	_ZTI36btDiscreteCollisionDetectorInterface
	.size	_ZTI17btGjkPairDetector, 24

	.type	_ZTS17btGjkPairDetector,@object # @_ZTS17btGjkPairDetector
	.section	.rodata,"a",@progbits
	.globl	_ZTS17btGjkPairDetector
_ZTS17btGjkPairDetector:
	.asciz	"17btGjkPairDetector"
	.size	_ZTS17btGjkPairDetector, 20

	.type	_ZTI36btDiscreteCollisionDetectorInterface,@object # @_ZTI36btDiscreteCollisionDetectorInterface
	.section	.data.rel.ro._ZTI36btDiscreteCollisionDetectorInterface,"awG",@progbits,_ZTI36btDiscreteCollisionDetectorInterface,comdat
	.weak	_ZTI36btDiscreteCollisionDetectorInterface
	.p2align	3, 0x0
_ZTI36btDiscreteCollisionDetectorInterface:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS36btDiscreteCollisionDetectorInterface
	.size	_ZTI36btDiscreteCollisionDetectorInterface, 16

	.type	_ZTS36btDiscreteCollisionDetectorInterface,@object # @_ZTS36btDiscreteCollisionDetectorInterface
	.section	.rodata._ZTS36btDiscreteCollisionDetectorInterface,"aG",@progbits,_ZTS36btDiscreteCollisionDetectorInterface,comdat
	.weak	_ZTS36btDiscreteCollisionDetectorInterface
_ZTS36btDiscreteCollisionDetectorInterface:
	.asciz	"36btDiscreteCollisionDetectorInterface"
	.size	_ZTS36btDiscreteCollisionDetectorInterface, 39

	.globl	_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.type	_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver = _ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.globl	_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.type	_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver = _ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZTI17btGjkPairDetector
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS17btGjkPairDetector
	.addrsig_sym _ZTI36btDiscreteCollisionDetectorInterface
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS36btDiscreteCollisionDetectorInterface
