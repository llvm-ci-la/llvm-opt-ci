	.file	"btSubSimplexConvexCast.cpp"
	.text
	.globl	_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver # -- Begin function _ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
	.p2align	5
	.type	_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver,@function
_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver: # @_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
# %bb.0:
	pcalau12i	$a4, %pc_hi20(_ZTV22btSubsimplexConvexCast+16)
	addi.d	$a4, $a4, %pc_lo12(_ZTV22btSubsimplexConvexCast+16)
	st.d	$a4, $a0, 0
	st.d	$a3, $a0, 8
	st.d	$a1, $a0, 16
	st.d	$a2, $a0, 24
	ret
.Lfunc_end0:
	.size	_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver, .Lfunc_end0-_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
.LCPI1_0:
	.word	0x38d1b717                      # float 9.99999974E-5
.LCPI1_1:
	.word	0xa8800000                      # float -1.42108547E-14
.LCPI1_2:
	.word	0x28800000                      # float 1.42108547E-14
	.text
	.globl	_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.p2align	5
	.type	_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE,@function
_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE: # @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 232                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	.cfi_offset 57, -88
	.cfi_offset 58, -96
	.cfi_offset 59, -104
	.cfi_offset 60, -112
	.cfi_offset 61, -120
	.cfi_offset 62, -128
	.cfi_offset 63, -136
	move	$s0, $a0
	ld.d	$a0, $a0, 8
	move	$fp, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver5resetEv)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s3, 48
	fld.s	$fa2, $s4, 48
	fld.s	$fa1, $s3, 52
	fld.s	$fa3, $s4, 52
	fst.s	$fa2, $sp, 108                  # 4-byte Folded Spill
	fsub.s	$fa0, $fa0, $fa2
	fst.s	$fa3, $sp, 104                  # 4-byte Folded Spill
	fsub.s	$fa1, $fa1, $fa3
	fld.s	$fa2, $s3, 56
	fld.s	$fa6, $s4, 56
	fld.s	$fa3, $s1, 48
	fld.s	$fa7, $s2, 48
	fld.s	$fa4, $s1, 52
	fld.s	$ft0, $s2, 52
	fld.s	$fa5, $s1, 56
	fld.s	$ft1, $s2, 56
	fst.s	$fa6, $sp, 100                  # 4-byte Folded Spill
	fsub.s	$fa2, $fa2, $fa6
	fst.s	$fa7, $sp, 96                   # 4-byte Folded Spill
	fsub.s	$fa3, $fa3, $fa7
	fst.s	$ft0, $sp, 92                   # 4-byte Folded Spill
	fsub.s	$fa4, $fa4, $ft0
	fst.s	$ft1, $sp, 88                   # 4-byte Folded Spill
	fsub.s	$fa5, $fa5, $ft1
	fld.s	$fa6, $s4, 0
	fld.s	$fa7, $s4, 4
	fld.s	$ft0, $s4, 8
	fld.s	$ft1, $s4, 16
	fld.s	$ft2, $s4, 20
	fld.s	$ft3, $s4, 24
	fld.s	$ft4, $s4, 32
	fld.s	$ft5, $s4, 36
	fld.s	$ft6, $s4, 40
	fld.s	$ft7, $s2, 0
	fst.s	$ft7, $sp, 52                   # 4-byte Folded Spill
	fld.s	$ft7, $s2, 4
	fst.s	$ft7, $sp, 48                   # 4-byte Folded Spill
	fld.s	$ft7, $s2, 8
	fst.s	$ft7, $sp, 44                   # 4-byte Folded Spill
	fld.s	$ft7, $s2, 16
	fst.s	$ft7, $sp, 40                   # 4-byte Folded Spill
	fld.s	$ft7, $s2, 20
	fst.s	$ft7, $sp, 36                   # 4-byte Folded Spill
	fld.s	$ft7, $s2, 24
	fst.s	$ft7, $sp, 32                   # 4-byte Folded Spill
	fsub.s	$fs0, $fa0, $fa3
	fsub.s	$fs2, $fa1, $fa4
	fsub.s	$fs1, $fa2, $fa5
	ld.d	$a0, $s0, 16
	fneg.s	$fa0, $fs0
	fneg.s	$fa1, $fs2
	fneg.s	$fa2, $fs1
	fst.s	$ft1, $sp, 72                   # 4-byte Folded Spill
	fmul.s	$fa3, $ft1, $fa1
	fst.s	$fa6, $sp, 84                   # 4-byte Folded Spill
	fmadd.s	$fa3, $fa6, $fa0, $fa3
	fst.s	$ft4, $sp, 132                  # 4-byte Folded Spill
	fmadd.s	$fa3, $ft4, $fa2, $fa3
	fst.s	$ft2, $sp, 68                   # 4-byte Folded Spill
	fmul.s	$fa4, $ft2, $fa1
	fst.s	$fa7, $sp, 80                   # 4-byte Folded Spill
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fst.s	$ft5, $sp, 60                   # 4-byte Folded Spill
	fmadd.s	$fa4, $ft5, $fa2, $fa4
	fst.s	$ft3, $sp, 64                   # 4-byte Folded Spill
	fmul.s	$fa1, $ft3, $fa1
	fst.s	$ft0, $sp, 76                   # 4-byte Folded Spill
	fmadd.s	$fa0, $ft0, $fa0, $fa1
	fst.s	$ft6, $sp, 56                   # 4-byte Folded Spill
	fmadd.s	$fa0, $ft6, $fa2, $fa0
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 216
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 0
	fld.s	$fa0, $s2, 32
	fst.s	$fa0, $sp, 128                  # 4-byte Folded Spill
	fld.s	$fa0, $s2, 36
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa0, $s2, 40
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	ld.d	$a2, $a1, 96
	addi.d	$a1, $sp, 216
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	fld.s	$fa1, $s4, 4
	movgr2fr.w	$fa2, $a0
	fld.s	$fa3, $s4, 0
	movgr2fr.w	$fa4, $a1
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa5, $s4, 8
	fmadd.s	$fa1, $fa3, $fa0, $fa1
	fld.s	$fa3, $s4, 48
	fld.s	$fa6, $s4, 20
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fld.s	$fa5, $s4, 16
	fadd.s	$fs4, $fa3, $fa1
	fmul.s	$fa1, $fa6, $fa2
	fld.s	$fa3, $s4, 36
	fmadd.s	$fa1, $fa5, $fa0, $fa1
	fld.s	$fa5, $s4, 32
	fld.s	$fa6, $s4, 24
	fmul.s	$fa2, $fa3, $fa2
	fld.s	$fa3, $s4, 52
	fmadd.s	$fa0, $fa5, $fa0, $fa2
	fld.s	$fa2, $s4, 40
	fld.s	$fa5, $s4, 56
	fmadd.s	$fa1, $fa6, $fa4, $fa1
	fadd.s	$fs5, $fa3, $fa1
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fadd.s	$fs6, $fa5, $fa0
	movfr2gr.s	$a0, $fs4
	fld.s	$fa0, $s2, 16
	fld.s	$fa1, $s2, 0
	fld.s	$fa2, $s2, 32
	movfr2gr.s	$a1, $fs5
	fmul.s	$fa0, $fs2, $fa0
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fmadd.s	$fa0, $fa2, $fs1, $fa0
	fld.s	$fa1, $s2, 20
	fld.s	$fa2, $s2, 4
	fld.s	$fa3, $s2, 36
	bstrins.d	$a0, $a1, 63, 32
	fmul.s	$fa1, $fs2, $fa1
	fmadd.s	$fa1, $fa2, $fs0, $fa1
	fmadd.s	$fa1, $fa3, $fs1, $fa1
	fld.s	$fa2, $s2, 24
	fld.s	$fa3, $s2, 8
	movfr2gr.s	$a1, $fs6
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fs2, $sp, 12                   # 4-byte Folded Spill
	fmul.s	$fa2, $fs2, $fa2
	fst.s	$fs0, $sp, 16                   # 4-byte Folded Spill
	fmadd.s	$fa2, $fa3, $fs0, $fa2
	fld.s	$fa3, $s2, 40
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	ld.d	$a0, $s0, 24
	fst.s	$fs1, $sp, 8                    # 4-byte Folded Spill
	fmadd.s	$fa2, $fa3, $fs1, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 216
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 96
	addi.d	$a1, $sp, 216
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	fld.s	$fa1, $s2, 4
	movgr2fr.w	$fa2, $a0
	fld.s	$fa3, $s2, 0
	movgr2fr.w	$fa4, $a1
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa5, $s2, 8
	fmadd.s	$fa1, $fa3, $fa0, $fa1
	fld.s	$fa3, $s2, 48
	fld.s	$fa6, $s2, 20
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fld.s	$fa5, $s2, 16
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa3, $fa6, $fa2
	fld.s	$fa6, $s2, 36
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fld.s	$fa5, $s2, 32
	fld.s	$fa7, $s2, 24
	fmul.s	$fa2, $fa6, $fa2
	fld.s	$fa6, $s2, 52
	fmadd.s	$fa0, $fa5, $fa0, $fa2
	fld.s	$fa2, $s2, 40
	fld.s	$fa5, $s2, 56
	fmadd.s	$fa3, $fa7, $fa4, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fadd.s	$fa0, $fa5, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 192
	fsub.s	$fa1, $fs4, $fa1
	fsub.s	$fa2, $fs5, $fa3
	fsub.s	$fa0, $fs6, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 216
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI1_0)
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa1, $fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fst.s	$fa3, $sp, 20                   # 4-byte Folded Spill
	fcmp.cule.s	$fcc0, $fa0, $fa3
	st.d	$a1, $sp, 224
	bcnez	$fcc0, .LBB1_9
# %bb.1:                                # %.lr.ph
	movgr2fr.w	$fs0, $zero
	addi.w	$s5, $zero, -33
	pcalau12i	$s6, %pc_hi20(.LCPI1_1)
	fmov.s	$fs2, $fs0
	fmov.s	$fs3, $fs0
	fmov.s	$fs1, $fs0
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s5, 31, 0
	addi.d	$s5, $a0, 1
	slli.d	$a0, $s5, 31
	bltz	$a0, .LBB1_10
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	fst.s	$fs3, $sp, 112                  # 4-byte Folded Spill
	fst.s	$fs2, $sp, 116                  # 4-byte Folded Spill
	fst.s	$fs1, $sp, 120                  # 4-byte Folded Spill
	fld.s	$fa0, $sp, 216
	fld.s	$fa1, $sp, 220
	fld.s	$fa2, $sp, 224
	ld.d	$a0, $s0, 16
	fneg.s	$fa0, $fa0
	fneg.s	$fa1, $fa1
	fneg.s	$fa2, $fa2
	fld.s	$fs1, $sp, 72                   # 4-byte Folded Reload
	fmul.s	$fa3, $fs1, $fa1
	fld.s	$fs5, $sp, 84                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fs5, $fa0, $fa3
	fld.s	$fa4, $sp, 132                  # 4-byte Folded Reload
	fmadd.s	$fa3, $fa4, $fa2, $fa3
	fld.s	$fs7, $sp, 68                   # 4-byte Folded Reload
	fmul.s	$fa4, $fs7, $fa1
	fst.s	$fs0, $sp, 124                  # 4-byte Folded Spill
	fld.s	$fs0, $sp, 80                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fs0, $fa0, $fa4
	fld.s	$fs2, $sp, 60                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fs2, $fa2, $fa4
	fld.s	$fs3, $sp, 64                   # 4-byte Folded Reload
	fmul.s	$fa1, $fs3, $fa1
	fld.s	$fs6, $sp, 76                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fs6, $fa0, $fa1
	fld.s	$fs4, $sp, 56                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fs4, $fa2, $fa0
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 152
	st.d	$a2, $sp, 160
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 96
	addi.d	$a1, $sp, 152
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	fmul.s	$fa3, $fs0, $fa1
	fmadd.s	$fa3, $fs5, $fa0, $fa3
	fmadd.s	$fa3, $fs6, $fa2, $fa3
	fld.s	$fa4, $sp, 108                  # 4-byte Folded Reload
	fadd.s	$fa3, $fa4, $fa3
	fmul.s	$fa4, $fs7, $fa1
	fmadd.s	$fa4, $fs1, $fa0, $fa4
	fmadd.s	$fa4, $fs3, $fa2, $fa4
	fld.s	$fa5, $sp, 104                  # 4-byte Folded Reload
	fadd.s	$fa4, $fa5, $fa4
	fmul.s	$fa1, $fs2, $fa1
	fld.s	$fa5, $sp, 132                  # 4-byte Folded Reload
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fmadd.s	$fa0, $fs4, $fa2, $fa0
	fld.s	$fa1, $sp, 100                  # 4-byte Folded Reload
	fadd.s	$fa0, $fa1, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	fld.s	$fa0, $sp, 220
	fld.s	$fa1, $sp, 216
	fld.s	$fa2, $sp, 224
	ld.d	$a0, $s0, 24
	fld.s	$fs3, $sp, 40                   # 4-byte Folded Reload
	fmul.s	$fa3, $fs3, $fa0
	fld.s	$fs0, $sp, 52                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fs0, $fa1, $fa3
	fld.s	$fa4, $sp, 128                  # 4-byte Folded Reload
	fmadd.s	$fa3, $fa4, $fa2, $fa3
	fld.s	$fs4, $sp, 36                   # 4-byte Folded Reload
	fmul.s	$fa4, $fs4, $fa0
	fld.s	$fs1, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fs1, $fa1, $fa4
	fld.s	$fs7, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fs7, $fa2, $fa4
	fld.s	$fs5, $sp, 32                   # 4-byte Folded Reload
	fmul.s	$fa0, $fs5, $fa0
	fld.s	$fs2, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fs2, $fa1, $fa0
	fld.s	$fs6, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fs6, $fa2, $fa0
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 152
	st.d	$a2, $sp, 160
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 96
	addi.d	$a1, $sp, 152
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	fmul.s	$fa3, $fs1, $fa1
	fmadd.s	$fa3, $fs0, $fa0, $fa3
	fld.s	$fs0, $sp, 124                  # 4-byte Folded Reload
	fmadd.s	$fa3, $fs2, $fa2, $fa3
	fld.s	$fa4, $sp, 96                   # 4-byte Folded Reload
	fadd.s	$fa3, $fa4, $fa3
	fmul.s	$fa4, $fs4, $fa1
	fmadd.s	$fa4, $fs3, $fa0, $fa4
	fmadd.s	$fa4, $fs5, $fa2, $fa4
	fld.s	$fa5, $sp, 92                   # 4-byte Folded Reload
	fadd.s	$fa4, $fa5, $fa4
	fmul.s	$fa1, $fs7, $fa1
	fld.s	$fa5, $sp, 128                  # 4-byte Folded Reload
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fmadd.s	$fa0, $fs6, $fa2, $fa0
	fld.s	$fa1, $sp, 88                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa1, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	fld.s	$fa1, $sp, 200
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fsub.s	$fa3, $fa1, $fa3
	fld.s	$fa1, $sp, 204
	fld.s	$fa2, $sp, 208
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 192
	fsub.s	$fa5, $fa1, $fa4
	fsub.s	$fa4, $fa2, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 168
	vldi	$vr0, -1168
	fcmp.clt.s	$fcc0, $fa0, $fs0
	st.d	$a1, $sp, 176
	bcnez	$fcc0, .LBB1_15
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	fld.s	$fa0, $sp, 220
	fld.s	$fa1, $sp, 216
	fld.s	$fa2, $sp, 224
	fmul.s	$fa5, $fa0, $fa5
	fmadd.s	$fa3, $fa1, $fa3, $fa5
	fmadd.s	$fa3, $fa2, $fa4, $fa3
	movgr2fr.w	$fa4, $zero
	fcmp.cule.s	$fcc0, $fa3, $fa4
	fld.s	$fs1, $sp, 120                  # 4-byte Folded Reload
	fld.s	$fs2, $sp, 116                  # 4-byte Folded Reload
	fld.s	$fs3, $sp, 112                  # 4-byte Folded Reload
	bcnez	$fcc0, .LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	fld.s	$fa5, $s6, %pc_lo12(.LCPI1_1)
	fld.s	$fa4, $sp, 12                   # 4-byte Folded Reload
	fmul.s	$fa4, $fa4, $fa0
	fld.s	$fa6, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fa1, $fa6, $fa4
	fld.s	$fa6, $sp, 8                    # 4-byte Folded Reload
	fmadd.s	$fa4, $fa2, $fa6, $fa4
	fcmp.cle.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_15
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	fdiv.s	$fa3, $fa3, $fa4
	fsub.s	$fs0, $fs0, $fa3
	vldi	$vr3, -1168
	fsub.s	$fa3, $fa3, $fs0
	fld.s	$fa4, $s3, 48
	fld.s	$fa5, $s4, 48
	fld.s	$fa6, $s3, 52
	fld.s	$fa7, $s4, 52
	fmul.s	$fa4, $fs0, $fa4
	fmadd.s	$fa4, $fa3, $fa5, $fa4
	fst.s	$fa4, $sp, 108                  # 4-byte Folded Spill
	fmul.s	$fa4, $fs0, $fa6
	fmadd.s	$fa4, $fa3, $fa7, $fa4
	fst.s	$fa4, $sp, 104                  # 4-byte Folded Spill
	fld.s	$fa4, $s3, 56
	fld.s	$fa5, $s4, 56
	fld.s	$fa6, $s1, 48
	fld.s	$fa7, $s2, 48
	fmul.s	$fa4, $fs0, $fa4
	fmadd.s	$fa4, $fa3, $fa5, $fa4
	fst.s	$fa4, $sp, 100                  # 4-byte Folded Spill
	fmul.s	$fa4, $fs0, $fa6
	fmadd.s	$fa4, $fa3, $fa7, $fa4
	fst.s	$fa4, $sp, 96                   # 4-byte Folded Spill
	fld.s	$fa4, $s1, 52
	fld.s	$fa5, $s2, 52
	fld.s	$fa6, $s1, 56
	fld.s	$fa7, $s2, 56
	fmul.s	$fa4, $fs0, $fa4
	fmadd.s	$fa4, $fa3, $fa5, $fa4
	fst.s	$fa4, $sp, 92                   # 4-byte Folded Spill
	fmul.s	$fa4, $fs0, $fa6
	fmadd.s	$fa3, $fa3, $fa7, $fa4
	fst.s	$fa3, $sp, 88                   # 4-byte Folded Spill
	fmov.s	$fs1, $fa1
	fmov.s	$fs3, $fa0
	fmov.s	$fs2, $fa2
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $s0, 8
	addi.d	$a1, $sp, 168
	addi.d	$a2, $sp, 200
	addi.d	$a3, $sp, 184
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver7closestER9btVector3)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	fld.s	$fa0, $sp, 220
	fld.s	$fa1, $sp, 216
	fld.s	$fa2, $sp, 224
	fmul.s	$fa0, $fa0, $fa0
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fld.s	$fa1, $sp, 20                   # 4-byte Folded Reload
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_2
	b	.LBB1_10
.LBB1_9:
	movgr2fr.w	$fs1, $zero
	fmov.s	$fs3, $fs1
	fmov.s	$fs2, $fs1
	fmov.s	$fs0, $fs1
.LBB1_10:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_2)
	fmul.s	$fa0, $fs3, $fs3
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	fcmp.cult.s	$fcc0, $fa0, $fa1
	fst.s	$fs0, $fp, 168
	bceqz	$fcc0, .LBB1_12
# %bb.11:
	vrepli.b	$vr1, 0
	movgr2fr.w	$fa0, $zero
	vst	$vr1, $fp, 136
	fmov.s	$fa2, $fa0
	fmov.s	$fa1, $fa0
	b	.LBB1_13
.LBB1_12:
	frsqrt.s	$fa0, $fa0
	fmul.s	$fa1, $fs1, $fa0
	fmul.s	$fa2, $fs3, $fa0
	fmul.s	$fa0, $fs2, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 136
	st.d	$a1, $fp, 144
.LBB1_13:
	fld.s	$fa3, $fp, 184
	fld.s	$fa4, $sp, 12                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa4, $fa2
	fld.s	$fa4, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa1, $fa4, $fa2
	fld.s	$fa2, $sp, 8                    # 4-byte Folded Reload
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	fneg.s	$fa1, $fa3
	fcmp.cle.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_15
# %bb.14:
	ld.d	$a0, $s0, 8
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 136
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 136
	vst	$vr0, $fp, 152
	ori	$a0, $zero, 1
	b	.LBB1_16
.LBB1_15:
	move	$a0, $zero
.LBB1_16:                               # %.critedge135
	fld.d	$fs7, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end1:
	.size	_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE, .Lfunc_end1-_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN22btSubsimplexConvexCastD0Ev,"axG",@progbits,_ZN22btSubsimplexConvexCastD0Ev,comdat
	.weak	_ZN22btSubsimplexConvexCastD0Ev # -- Begin function _ZN22btSubsimplexConvexCastD0Ev
	.p2align	5
	.type	_ZN22btSubsimplexConvexCastD0Ev,@function
_ZN22btSubsimplexConvexCastD0Ev:        # @_ZN22btSubsimplexConvexCastD0Ev
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
.LBB2_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN22btSubsimplexConvexCastD0Ev, .Lfunc_end2-_ZN22btSubsimplexConvexCastD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN22btSubsimplexConvexCastD0Ev,"aG",@progbits,_ZN22btSubsimplexConvexCastD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Lfunc_end2-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZTV22btSubsimplexConvexCast,@object # @_ZTV22btSubsimplexConvexCast
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV22btSubsimplexConvexCast
	.p2align	3, 0x0
_ZTV22btSubsimplexConvexCast:
	.dword	0
	.dword	_ZTI22btSubsimplexConvexCast
	.dword	_ZN12btConvexCastD2Ev
	.dword	_ZN22btSubsimplexConvexCastD0Ev
	.dword	_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE
	.size	_ZTV22btSubsimplexConvexCast, 40

	.type	_ZTI22btSubsimplexConvexCast,@object # @_ZTI22btSubsimplexConvexCast
	.globl	_ZTI22btSubsimplexConvexCast
	.p2align	3, 0x0
_ZTI22btSubsimplexConvexCast:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS22btSubsimplexConvexCast
	.dword	_ZTI12btConvexCast
	.size	_ZTI22btSubsimplexConvexCast, 24

	.type	_ZTS22btSubsimplexConvexCast,@object # @_ZTS22btSubsimplexConvexCast
	.section	.rodata,"a",@progbits
	.globl	_ZTS22btSubsimplexConvexCast
_ZTS22btSubsimplexConvexCast:
	.asciz	"22btSubsimplexConvexCast"
	.size	_ZTS22btSubsimplexConvexCast, 25

	.globl	_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
	.type	_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver,@function
_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver = _ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver
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
	.addrsig_sym _ZTI22btSubsimplexConvexCast
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS22btSubsimplexConvexCast
	.addrsig_sym _ZTI12btConvexCast
