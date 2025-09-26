	.file	"btMinkowskiPenetrationDepthSolver.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
.LCPI0_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
	.p2align	5
	.type	_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc,@function
_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc: # @_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -480
	.cfi_def_cfa_offset 4560
	move	$t0, $a2
	ld.w	$a0, $a2, 8
	addi.w	$a0, $a0, -17
	ori	$a2, $zero, 1
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $a5
	move	$s3, $a4
	move	$s4, $a3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	bltu	$a2, $a0, .LBB0_2
# %bb.1:
	ld.w	$a0, $s4, 8
	addi.w	$a0, $a0, -17
	sltui	$a0, $a0, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
.LBB0_3:                                # %.preheader463
	lu12i.w	$a0, 1
	ori	$a0, $a0, 472
	add.d	$a0, $sp, $a0
	ld.d	$s6, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 464
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $s3, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 32
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vld	$vr17, $s2, 40
	vld	$vr16, $s2, 24
	vld	$vr15, $s2, 8
	vld	$vr14, $s2, 36
	vld	$vr13, $s2, 20
	vld	$vr12, $s2, 4
	vld	$vr11, $s2, 32
	vld	$vr10, $s2, 16
	vld	$vr9, $s2, 0
	vld	$vr8, $s3, 40
	vld	$vr7, $s3, 24
	vld	$vr6, $s3, 8
	vld	$vr5, $s3, 36
	vld	$vr4, $s3, 20
	vld	$vr0, $s3, 0
	vld	$vr1, $s3, 16
	vld	$vr2, $s3, 32
	vld	$vr3, $s3, 4
	vreplvei.w	$vr0, $vr0, 0
	vreplvei.w	$vr1, $vr1, 0
	vreplvei.w	$vr2, $vr2, 0
	vreplvei.w	$vr3, $vr3, 0
	vreplvei.w	$vr4, $vr4, 0
	vreplvei.w	$vr5, $vr5, 0
	vreplvei.w	$vr6, $vr6, 0
	vreplvei.w	$vr7, $vr7, 0
	vreplvei.w	$vr8, $vr8, 0
	vreplvei.w	$vr9, $vr9, 0
	vreplvei.w	$vr10, $vr10, 0
	vreplvei.w	$vr11, $vr11, 0
	vreplvei.w	$vr12, $vr12, 0
	vreplvei.w	$vr13, $vr13, 0
	vreplvei.w	$vr14, $vr14, 0
	vreplvei.w	$vr15, $vr15, 0
	vreplvei.w	$vr16, $vr16, 0
	vreplvei.w	$vr17, $vr17, 0
	pcalau12i	$a0, %pc_hi20(_ZL22sPenetrationDirections)
	addi.d	$s5, $a0, %pc_lo12(_ZL22sPenetrationDirections)
	move	$a0, $zero
	vrepli.b	$vr18, 0
	addi.d	$a1, $sp, 1432
	addi.d	$a2, $sp, 440
	ori	$a3, $zero, 672
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s5, $a0
	fldx.s	$ft11, $s5, $a0
	fld.s	$ft12, $a4, 16
	fld.s	$ft13, $a4, 4
	fld.s	$ft14, $a4, 20
	fld.s	$ft15, $a4, 8
	fld.s	$fs0, $a4, 24
	vextrins.w	$vr19, $vr20, 16
	vextrins.w	$vr21, $vr22, 16
	vextrins.w	$vr23, $vr24, 16
	vbitrevi.w	$vr20, $vr19, 31
	vbitrevi.w	$vr22, $vr21, 31
	vbitrevi.w	$vr24, $vr23, 31
	vfmul.s	$vr25, $vr1, $vr22
	vfmadd.s	$vr25, $vr0, $vr20, $vr25
	vfmadd.s	$vr25, $vr2, $vr24, $vr25
	vfmul.s	$vr26, $vr4, $vr22
	vfmadd.s	$vr26, $vr3, $vr20, $vr26
	vfmadd.s	$vr26, $vr5, $vr24, $vr26
	vfmul.s	$vr22, $vr7, $vr22
	vfmadd.s	$vr20, $vr6, $vr20, $vr22
	vfmadd.s	$vr20, $vr8, $vr24, $vr20
	vshuf4i.w	$vr22, $vr26, 16
	vslli.d	$vr22, $vr22, 32
	vilvl.w	$vr24, $vr18, $vr25
	vor.v	$vr22, $vr22, $vr24
	vpickve2gr.d	$a4, $vr20, 0
	srli.d	$a5, $a4, 32
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a6, $a1, $a0
	vstelm.d	$vr22, $a6, 0, 0
	vstelm.d	$vr22, $a6, 16, 1
	st.d	$a4, $a6, 8
	st.d	$a5, $a6, 24
	vfmul.s	$vr20, $vr21, $vr10
	vfmadd.s	$vr20, $vr9, $vr19, $vr20
	vfmadd.s	$vr20, $vr11, $vr23, $vr20
	vfmul.s	$vr22, $vr21, $vr13
	vfmadd.s	$vr22, $vr12, $vr19, $vr22
	vfmadd.s	$vr22, $vr14, $vr23, $vr22
	vfmul.s	$vr21, $vr21, $vr16
	vfmadd.s	$vr19, $vr15, $vr19, $vr21
	vfmadd.s	$vr19, $vr17, $vr23, $vr19
	vshuf4i.w	$vr21, $vr22, 16
	vslli.d	$vr21, $vr21, 32
	vilvl.w	$vr20, $vr18, $vr20
	vor.v	$vr20, $vr21, $vr20
	vpickve2gr.d	$a4, $vr19, 0
	srli.d	$a5, $a4, 32
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a6, $a2, $a0
	vstelm.d	$vr20, $a6, 0, 0
	vstelm.d	$vr20, $a6, 16, 1
	st.d	$a4, $a6, 8
	addi.d	$a0, $a0, 32
	st.d	$a5, $a6, 24
	bne	$a0, $a3, .LBB0_4
# %bb.5:                                # %middle.block
	ld.d	$a0, $t0, 0
	ld.d	$a1, $a0, 128
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $t0
	jirl	$ra, $a1, 0
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	blez	$a0, .LBB0_9
# %bb.6:                                # %.lr.ph
	move	$s7, $a0
	move	$s0, $zero
	ori	$a0, $zero, 2112
	add.d	$fp, $sp, $a0
	addi.d	$s1, $s5, 672
	addi.d	$s8, $sp, 1120
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a3, $a0, 136
	ori	$a0, $zero, 3416
	add.d	$a2, $sp, $a0
	move	$a0, $s6
	move	$a1, $s0
	jirl	$ra, $a3, 0
	fld.s	$fa0, $s3, 4
	ori	$a0, $zero, 3420
	add.d	$a0, $sp, $a0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $s3, 0
	ori	$a0, $zero, 3416
	add.d	$a0, $sp, $a0
	fld.s	$fa3, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $s3, 8
	ori	$a0, $zero, 3424
	add.d	$a0, $sp, $a0
	fld.s	$fa5, $a0, 0
	fld.s	$fa6, $s3, 20
	fld.s	$fa7, $s3, 16
	fmadd.s	$ft0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $ft0
	fmul.s	$fa2, $fa1, $fa6
	fmadd.s	$fa6, $fa7, $fa3, $fa2
	fld.s	$fa2, $s3, 36
	fld.s	$fa7, $s3, 24
	fld.s	$ft1, $s3, 32
	fld.s	$ft2, $s3, 40
	fmul.s	$fa2, $fa1, $fa2
	fmadd.s	$fa1, $fa7, $fa5, $fa6
	fmadd.s	$fa3, $ft1, $fa3, $fa2
	fmadd.s	$fa2, $ft2, $fa5, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 3416
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	st.d	$a0, $s1, 0
	st.d	$a1, $s1, 8
	fnmadd.s	$fa4, $fa4, $fa5, $ft0
	fld.s	$ft0, $s3, 16
	fld.s	$ft1, $s3, 0
	fnmadd.s	$fa6, $fa7, $fa5, $fa6
	fnmadd.s	$fa3, $ft2, $fa5, $fa3
	fmul.s	$fa5, $ft0, $fa6
	fmadd.s	$fa5, $ft1, $fa4, $fa5
	fld.s	$fa7, $s3, 32
	fld.s	$ft0, $s3, 20
	fld.s	$ft1, $s3, 4
	fld.s	$ft2, $s3, 36
	fmadd.s	$fa5, $fa7, $fa3, $fa5
	fmul.s	$fa7, $ft0, $fa6
	fmadd.s	$fa7, $ft1, $fa4, $fa7
	fmadd.s	$fa7, $ft2, $fa3, $fa7
	fld.s	$ft0, $s3, 24
	fld.s	$ft1, $s3, 8
	fld.s	$ft2, $s3, 40
	ori	$a0, $zero, 3424
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	fmul.s	$fa6, $ft0, $fa6
	fmadd.s	$fa4, $ft1, $fa4, $fa6
	fmadd.s	$fa3, $ft2, $fa3, $fa4
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa3, $s2, 16
	st.d	$a0, $fp, -8
	st.d	$a1, $fp, 0
	fld.s	$fa4, $s2, 0
	fmul.s	$fa3, $fa1, $fa3
	fld.s	$fa5, $s2, 32
	fld.s	$fa6, $s2, 20
	fld.s	$fa7, $s2, 4
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmul.s	$fa4, $fa1, $fa6
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fld.s	$fa5, $s2, 36
	fld.s	$fa6, $s2, 24
	fld.s	$fa7, $s2, 8
	fld.s	$ft0, $s2, 40
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa0, $fa7, $fa0, $fa1
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s8, -8
	st.d	$a1, $s8, 0
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, 16
	addi.d	$fp, $fp, 16
	addi.d	$s8, $s8, 16
	bne	$s7, $s0, .LBB0_7
# %bb.8:                                # %.loopexit462.loopexit
	addi.w	$s7, $s0, 42
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_10
.LBB0_9:
	ori	$s7, $zero, 42
.LBB0_10:                               # %.loopexit462
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 128
	move	$a0, $s4
	jirl	$ra, $a1, 0
	blez	$a0, .LBB0_14
# %bb.11:                               # %.lr.ph469
	move	$s8, $a0
	move	$s0, $zero
	bstrpick.d	$a0, $s7, 31, 0
	alsl.d	$fp, $a0, $s5, 4
	ori	$a0, $zero, 8
	bstrins.d	$a0, $s7, 35, 4
	addi.d	$a1, $sp, 1432
	add.d	$s1, $a1, $a0
	addi.d	$a1, $sp, 440
	add.d	$s6, $a1, $a0
	.p2align	4, , 16
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a3, $a0, 136
	ori	$a0, $zero, 3416
	add.d	$a2, $sp, $a0
	move	$a0, $s4
	move	$a1, $s0
	jirl	$ra, $a3, 0
	fld.s	$fa0, $s2, 4
	ori	$a0, $zero, 3420
	add.d	$a0, $sp, $a0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $s2, 0
	ori	$a0, $zero, 3416
	add.d	$a0, $sp, $a0
	fld.s	$fa3, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $s2, 8
	ori	$a0, $zero, 3424
	add.d	$a0, $sp, $a0
	fld.s	$fa5, $a0, 0
	fld.s	$fa6, $s2, 20
	fld.s	$fa7, $s2, 16
	fmadd.s	$ft0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $ft0
	fmul.s	$fa2, $fa1, $fa6
	fmadd.s	$fa6, $fa7, $fa3, $fa2
	fld.s	$fa2, $s2, 36
	fld.s	$fa7, $s2, 24
	fld.s	$ft1, $s2, 32
	fld.s	$ft2, $s2, 40
	fmul.s	$fa2, $fa1, $fa2
	fmadd.s	$fa1, $fa7, $fa5, $fa6
	fmadd.s	$fa3, $ft1, $fa3, $fa2
	fmadd.s	$fa2, $ft2, $fa5, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 3416
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	fnmadd.s	$fa4, $fa4, $fa5, $ft0
	fld.s	$ft0, $s3, 16
	fld.s	$ft1, $s3, 0
	fnmadd.s	$fa6, $fa7, $fa5, $fa6
	fnmadd.s	$fa3, $ft2, $fa5, $fa3
	fmul.s	$fa5, $ft0, $fa6
	fmadd.s	$fa5, $ft1, $fa4, $fa5
	fld.s	$fa7, $s3, 32
	fld.s	$ft0, $s3, 20
	fld.s	$ft1, $s3, 4
	fld.s	$ft2, $s3, 36
	fmadd.s	$fa5, $fa7, $fa3, $fa5
	fmul.s	$fa7, $ft0, $fa6
	fmadd.s	$fa7, $ft1, $fa4, $fa7
	fmadd.s	$fa7, $ft2, $fa3, $fa7
	fld.s	$ft0, $s3, 24
	fld.s	$ft1, $s3, 8
	fld.s	$ft2, $s3, 40
	ori	$a0, $zero, 3424
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	fmul.s	$fa6, $ft0, $fa6
	fmadd.s	$fa4, $ft1, $fa4, $fa6
	fmadd.s	$fa3, $ft2, $fa3, $fa4
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa3, $s2, 16
	st.d	$a0, $s1, -8
	st.d	$a1, $s1, 0
	fld.s	$fa4, $s2, 0
	fmul.s	$fa3, $fa1, $fa3
	fld.s	$fa5, $s2, 32
	fld.s	$fa6, $s2, 20
	fld.s	$fa7, $s2, 4
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmul.s	$fa4, $fa1, $fa6
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fld.s	$fa5, $s2, 36
	fld.s	$fa6, $s2, 24
	fld.s	$fa7, $s2, 8
	fld.s	$ft0, $s2, 40
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa0, $fa7, $fa0, $fa1
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s6, -8
	st.d	$a1, $s6, 0
	addi.w	$s0, $s0, 1
	addi.d	$fp, $fp, 16
	addi.d	$s1, $s1, 16
	addi.d	$s6, $s6, 16
	bne	$s8, $s0, .LBB0_12
# %bb.13:                               # %.loopexit.loopexit
	add.w	$s7, $s7, $s0
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
.LBB0_14:                               # %.loopexit
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	ld.d	$a4, $a0, 112
	addi.d	$a1, $sp, 1432
	ori	$a0, $zero, 3416
	add.d	$a2, $sp, $a0
	move	$a0, $s1
	move	$a3, $s7
	jirl	$ra, $a4, 0
	ld.d	$a0, $s4, 0
	ld.d	$a4, $a0, 112
	addi.d	$a1, $sp, 440
	ori	$a0, $zero, 2424
	add.d	$a2, $sp, $a0
	move	$a0, $s4
	move	$a3, $s7
	jirl	$ra, $a4, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 382432
	ori	$s0, $a0, 2923
	fst.s	$fa0, $sp, 76                   # 4-byte Folded Spill
	blez	$s7, .LBB0_20
# %bb.15:                               # %.lr.ph477
	fld.s	$fa0, $s3, 0
	fst.s	$fa0, $sp, 148                  # 4-byte Folded Spill
	fld.s	$fa0, $s3, 4
	fst.s	$fa0, $sp, 144                  # 4-byte Folded Spill
	fld.s	$fa0, $s3, 8
	fst.s	$fa0, $sp, 140                  # 4-byte Folded Spill
	fld.s	$fa0, $s3, 48
	fst.s	$fa0, $sp, 136                  # 4-byte Folded Spill
	fld.s	$fa0, $s3, 16
	fst.s	$fa0, $sp, 132                  # 4-byte Folded Spill
	fld.s	$fa0, $s3, 20
	fst.s	$fa0, $sp, 128                  # 4-byte Folded Spill
	fld.s	$fa0, $s3, 24
	fst.s	$fa0, $sp, 124                  # 4-byte Folded Spill
	fld.s	$fa7, $s3, 52
	fld.s	$ft0, $s3, 32
	fld.s	$ft1, $s3, 36
	fld.s	$ft2, $s3, 40
	fld.s	$ft3, $s3, 56
	fld.s	$ft4, $s2, 0
	fld.s	$ft5, $s2, 4
	fld.s	$ft6, $s2, 8
	fld.s	$ft7, $s2, 48
	fld.s	$ft8, $s2, 16
	fld.s	$ft9, $s2, 20
	fld.s	$ft10, $s2, 24
	fld.s	$ft11, $s2, 52
	fld.s	$ft12, $s2, 32
	fld.s	$ft13, $s2, 36
	fld.s	$ft14, $s2, 40
	fld.s	$ft15, $s2, 56
	ori	$a0, $zero, 2432
	add.d	$a0, $sp, $a0
	addi.d	$a1, $s5, 8
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fs6, $a2, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fs7, $zero
	ori	$a2, $zero, 3424
	add.d	$a2, $sp, $a2
	movgr2fr.w	$fs1, $s0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	movgr2cf	$fcc0, $a3
	fst.s	$fs7, $sp, 100                  # 4-byte Folded Spill
	fst.s	$fs7, $sp, 104                  # 4-byte Folded Spill
	fst.s	$fs7, $sp, 108                  # 4-byte Folded Spill
	fst.s	$fs7, $sp, 112                  # 4-byte Folded Spill
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$s7, $s7, -1
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, 16
	addi.d	$a1, $a1, 16
	beqz	$s7, .LBB0_21
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fs4, $a1, 0
	fld.s	$fs3, $a1, -4
	fld.s	$fs2, $a1, -8
	fsel	$fs4, $fs4, $fs7, $fcc0
	fmul.s	$fs5, $fs3, $fs3
	fmadd.s	$fs5, $fs2, $fs2, $fs5
	fmadd.s	$fs5, $fs4, $fs4, $fs5
	fcvt.d.s	$fs5, $fs5
	fcmp.cule.d	$fcc1, $fs5, $fs6
	bcnez	$fcc1, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	fld.s	$fs5, $a2, -8
	fld.s	$fs0, $a2, -4
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, -8
	fld.s	$fa2, $a0, -4
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $sp, 144                  # 4-byte Folded Reload
	fmul.s	$fa4, $fs0, $fa4
	fld.s	$fa5, $sp, 148                  # 4-byte Folded Reload
	fmadd.s	$fa4, $fa5, $fs5, $fa4
	fld.s	$fa5, $sp, 140                  # 4-byte Folded Reload
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fld.s	$fa5, $sp, 128                  # 4-byte Folded Reload
	fmul.s	$fa5, $fs0, $fa5
	fld.s	$fa6, $sp, 132                  # 4-byte Folded Reload
	fmadd.s	$fa5, $fa6, $fs5, $fa5
	fld.s	$fa6, $sp, 124                  # 4-byte Folded Reload
	fmadd.s	$fa5, $fa6, $fa0, $fa5
	fmul.s	$fs0, $fs0, $ft1
	fmadd.s	$fs0, $ft0, $fs5, $fs0
	fmadd.s	$fa0, $ft2, $fa0, $fs0
	fmul.s	$fs0, $fa2, $ft5
	fmadd.s	$fs0, $ft4, $fa1, $fs0
	fmul.s	$fs5, $fa2, $ft9
	fmadd.s	$fs5, $ft8, $fa1, $fs5
	fmul.s	$fa2, $fa2, $ft13
	fmadd.s	$fa1, $ft12, $fa1, $fa2
	fmadd.s	$fa2, $ft6, $fa3, $fs0
	fmadd.s	$fs0, $ft10, $fa3, $fs5
	fmadd.s	$fa1, $ft14, $fa3, $fa1
	fld.s	$fa3, $sp, 136                  # 4-byte Folded Reload
	fadd.s	$fa3, $fa3, $fa4
	fadd.s	$fa2, $ft7, $fa2
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa3, $fa7, $fa5
	fadd.s	$fa4, $ft11, $fs0
	fsub.s	$fa3, $fa4, $fa3
	fadd.s	$fa0, $ft3, $fa0
	fadd.s	$fa1, $ft15, $fa1
	fsub.s	$fa0, $fa1, $fa0
	movgr2fr.w	$fa1, $zero
	fsel	$fa0, $fa0, $fa1, $fcc0
	fmul.s	$fa1, $fs3, $fa3
	fmadd.s	$fa1, $fs2, $fa2, $fa1
	fmadd.s	$fs5, $fs4, $fa0, $fa1
	fcmp.cule.s	$fcc1, $fs1, $fs5
	bcnez	$fcc1, .LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	fld.s	$fa0, $a1, 4
	fst.s	$fa0, $sp, 100                  # 4-byte Folded Spill
	fst.s	$fs2, $sp, 112                  # 4-byte Folded Spill
	fst.s	$fs3, $sp, 108                  # 4-byte Folded Spill
	fst.s	$fs4, $sp, 104                  # 4-byte Folded Spill
	fmov.s	$fs1, $fs5
	b	.LBB0_16
.LBB0_20:
	movgr2fr.w	$fs1, $s0
	fst.s	$fa0, $sp, 112                  # 4-byte Folded Spill
	fst.s	$fa0, $sp, 108                  # 4-byte Folded Spill
	fst.s	$fa0, $sp, 104                  # 4-byte Folded Spill
	fst.s	$fa0, $sp, 100                  # 4-byte Folded Spill
.LBB0_21:                               # %._crit_edge
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 76                   # 4-byte Folded Reload
	fcmp.clt.s	$fcc0, $fs1, $fa0
	bceqz	$fcc0, .LBB0_23
# %bb.22:
	move	$a0, $zero
	b	.LBB0_25
.LBB0_23:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	vldi	$vr1, -1184
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs1, $fa0
	addi.d	$a0, $sp, 344
	move	$a1, $s1
	move	$a2, $s4
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver)
	jirl	$ra, $ra, 0
	fld.s	$fs1, $sp, 112                  # 4-byte Folded Reload
	fmul.s	$fa0, $fs1, $fs0
	movfr2gr.s	$a0, $fs1
	fld.s	$fa1, $s3, 48
	fld.s	$fa2, $s3, 52
	fld.s	$fs2, $sp, 108                  # 4-byte Folded Reload
	fmul.s	$fa3, $fs2, $fs0
	movfr2gr.s	$a1, $fs2
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa3, $fa2
	fld.s	$fa2, $s3, 56
	fld.s	$fs3, $sp, 104                  # 4-byte Folded Reload
	fmul.s	$fa3, $fs3, $fs0
	movfr2gr.s	$a2, $fs3
	st.d	$zero, $sp, 336
	fadd.s	$fa2, $fa3, $fa2
	movfr2gr.s	$a3, $fa0
	movfr2gr.s	$a4, $fa1
	bstrins.d	$a3, $a4, 63, 32
	movfr2gr.s	$a4, $fa2
	vld	$vr0, $s3, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	vld	$vr1, $a5, 0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	vld	$vr2, $a5, 0
	bstrpick.d	$a4, $a4, 31, 0
	vst	$vr0, $sp, 200
	vst	$vr1, $sp, 216
	vst	$vr2, $sp, 232
	st.d	$a3, $sp, 248
	st.d	$a4, $sp, 256
	vld	$vr0, $s2, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	vld	$vr1, $a3, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	vld	$vr2, $a3, 0
	vld	$vr3, $s2, 48
	vst	$vr0, $sp, 264
	vst	$vr1, $sp, 280
	vst	$vr2, $sp, 296
	vst	$vr3, $sp, 312
	st.w	$s0, $sp, 328
	pcalau12i	$a3, %pc_hi20(_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult+16)
	st.d	$a3, $sp, 152
	st.b	$zero, $sp, 196
	lu12i.w	$a3, -524288
	lu32i.d	$a3, 0
	xor	$a0, $a0, $a3
	xor	$a1, $a1, $a3
	bstrins.d	$a0, $a1, 63, 32
	xor	$a1, $a2, $a3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 352
	st.d	$a1, $sp, 360
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 200
	addi.d	$a2, $sp, 152
	move	$a3, $s6
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 196
	beqz	$a0, .LBB0_25
# %bb.24:
	fld.s	$fa0, $sp, 192
	fld.s	$fa1, $sp, 176
	fsub.s	$fa0, $fs0, $fa0
	fmul.s	$fa2, $fs1, $fa0
	fld.s	$fa3, $sp, 180
	fsub.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $sp, 184
	fmul.s	$fa4, $fs2, $fa0
	fsub.s	$fa3, $fa3, $fa4
	fmul.s	$fa0, $fs3, $fa0
	fsub.s	$fa0, $fa2, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa3
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	vld	$vr0, $sp, 176
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	st.d	$a2, $a3, 8
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	vst	$vr0, $a1, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	fst.s	$fs1, $a1, 0
	fst.s	$fs2, $a1, 4
	fst.s	$fs3, $a1, 8
	fld.s	$fa0, $sp, 100                  # 4-byte Folded Reload
	fst.s	$fa0, $a1, 12
.LBB0_25:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 496
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end0:
	.size	_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc, .Lfunc_end0-_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,"axG",@progbits,_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,comdat
	.weak	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev # -- Begin function _ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
	.p2align	5
	.type	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,@function
_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev: # @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, .Lfunc_end1-_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
                                        # -- End function
	.section	.text._ZN30btConvexPenetrationDepthSolverD2Ev,"axG",@progbits,_ZN30btConvexPenetrationDepthSolverD2Ev,comdat
	.weak	_ZN30btConvexPenetrationDepthSolverD2Ev # -- Begin function _ZN30btConvexPenetrationDepthSolverD2Ev
	.p2align	5
	.type	_ZN30btConvexPenetrationDepthSolverD2Ev,@function
_ZN30btConvexPenetrationDepthSolverD2Ev: # @_ZN30btConvexPenetrationDepthSolverD2Ev
# %bb.0:
	ret
.Lfunc_end2:
	.size	_ZN30btConvexPenetrationDepthSolverD2Ev, .Lfunc_end2-_ZN30btConvexPenetrationDepthSolverD2Ev
                                        # -- End function
	.section	.text._ZN33btMinkowskiPenetrationDepthSolverD0Ev,"axG",@progbits,_ZN33btMinkowskiPenetrationDepthSolverD0Ev,comdat
	.weak	_ZN33btMinkowskiPenetrationDepthSolverD0Ev # -- Begin function _ZN33btMinkowskiPenetrationDepthSolverD0Ev
	.p2align	5
	.type	_ZN33btMinkowskiPenetrationDepthSolverD0Ev,@function
_ZN33btMinkowskiPenetrationDepthSolverD0Ev: # @_ZN33btMinkowskiPenetrationDepthSolverD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end3:
	.size	_ZN33btMinkowskiPenetrationDepthSolverD0Ev, .Lfunc_end3-_ZN33btMinkowskiPenetrationDepthSolverD0Ev
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev
	.type	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev,@function
_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev: # @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end4:
	.size	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev, .Lfunc_end4-_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii
	.type	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii,@function
_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii: # @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii
# %bb.0:
	ret
.Lfunc_end5:
	.size	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii, .Lfunc_end5-_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii
	.type	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii,@function
_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii: # @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii
# %bb.0:
	ret
.Lfunc_end6:
	.size	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii, .Lfunc_end6-_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f
	.type	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f,@function
_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f: # @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f
# %bb.0:
	vld	$vr1, $a1, 0
	vst	$vr1, $a0, 8
	vld	$vr1, $a2, 0
	vst	$vr1, $a0, 24
	fst.s	$fa0, $a0, 40
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 44
	ret
.Lfunc_end7:
	.size	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f, .Lfunc_end7-_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f
                                        # -- End function
	.type	_ZL22sPenetrationDirections,@object # @_ZL22sPenetrationDirections
	.data
	.p2align	2, 0x0
_ZL22sPenetrationDirections:
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x3f393e60                      # float 0.723608017
	.word	0xbf0695ea                      # float -0.525725007
	.word	0xbee4f9e4                      # float -0.447219014
	.word	0x00000000                      # float 0
	.word	0xbe8d82ba                      # float -0.27638799
	.word	0xbf59c422                      # float -0.850648999
	.word	0xbee4f9e4                      # float -0.447219014
	.word	0x00000000                      # float 0
	.word	0xbf64f91a                      # float -0.894425988
	.word	0x80000000                      # float -0
	.word	0xbee4f97f                      # float -0.447216004
	.word	0x00000000                      # float 0
	.word	0xbe8d82ba                      # float -0.27638799
	.word	0x3f59c422                      # float 0.850648999
	.word	0xbee4fa05                      # float -0.447219998
	.word	0x00000000                      # float 0
	.word	0x3f393e60                      # float 0.723608017
	.word	0x3f0695ea                      # float 0.525725007
	.word	0xbee4f9e4                      # float -0.447219014
	.word	0x00000000                      # float 0
	.word	0x3e8d82ba                      # float 0.27638799
	.word	0xbf59c422                      # float -0.850648999
	.word	0x3ee4fa05                      # float 0.447219998
	.word	0x00000000                      # float 0
	.word	0xbf393e60                      # float -0.723608017
	.word	0xbf0695ea                      # float -0.525725007
	.word	0x3ee4f9e4                      # float 0.447219014
	.word	0x00000000                      # float 0
	.word	0xbf393e60                      # float -0.723608017
	.word	0x3f0695ea                      # float 0.525725007
	.word	0x3ee4f9e4                      # float 0.447219014
	.word	0x00000000                      # float 0
	.word	0x3e8d82ba                      # float 0.27638799
	.word	0x3f59c422                      # float 0.850648999
	.word	0x3ee4f9e4                      # float 0.447219014
	.word	0x00000000                      # float 0
	.word	0x3f64f91a                      # float 0.894425988
	.word	0x00000000                      # float 0
	.word	0x3ee4f97f                      # float 0.447216004
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x3ed9c3f0                      # float 0.425323009
	.word	0xbe9e36b1                      # float -0.309011012
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0xbe265ade                      # float -0.162456006
	.word	0xbeffff58                      # float -0.499994993
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0x3e8696c4                      # float 0.262869
	.word	0xbf4f1b69                      # float -0.809011995
	.word	0xbf0696c4                      # float -0.525738001
	.word	0x00000000                      # float 0
	.word	0x3ed9c3f0                      # float 0.425323009
	.word	0x3e9e36b1                      # float 0.309011012
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0x3f59c411                      # float 0.850647985
	.word	0x80000000                      # float -0
	.word	0xbf0696a2                      # float -0.525735974
	.word	0x00000000                      # float 0
	.word	0xbf06963e                      # float -0.525730014
	.word	0x80000000                      # float -0
	.word	0xbf59c454                      # float -0.850651979
	.word	0x00000000                      # float 0
	.word	0xbf302d38                      # float -0.688189983
	.word	0xbeffff9b                      # float -0.49999699
	.word	0xbf0696a2                      # float -0.525735974
	.word	0x00000000                      # float 0
	.word	0xbe265ade                      # float -0.162456006
	.word	0x3effff58                      # float 0.499994993
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0xbf302d38                      # float -0.688189983
	.word	0x3effff9b                      # float 0.49999699
	.word	0xbf0696a2                      # float -0.525735974
	.word	0x00000000                      # float 0
	.word	0x3e8696c4                      # float 0.262869
	.word	0x3f4f1b69                      # float 0.809011995
	.word	0xbf0696c4                      # float -0.525738001
	.word	0x00000000                      # float 0
	.word	0x3f737889                      # float 0.95105797
	.word	0x3e9e36f4                      # float 0.309013009
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f737889                      # float 0.95105797
	.word	0xbe9e36f4                      # float -0.309013009
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f167925                      # float 0.587786019
	.word	0xbf4f1bbd                      # float -0.809017002
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf167925                      # float -0.587786019
	.word	0xbf4f1bbd                      # float -0.809017002
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf737889                      # float -0.95105797
	.word	0xbe9e36f4                      # float -0.309013009
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0xbf737889                      # float -0.95105797
	.word	0x3e9e36f4                      # float 0.309013009
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0xbf167925                      # float -0.587786019
	.word	0x3f4f1bbd                      # float 0.809017002
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0x3f800000                      # float 1
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x3f167925                      # float 0.587786019
	.word	0x3f4f1bbd                      # float 0.809017002
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x3f302d38                      # float 0.688189983
	.word	0xbeffff9b                      # float -0.49999699
	.word	0x3f0696a2                      # float 0.525735974
	.word	0x00000000                      # float 0
	.word	0xbe8696c4                      # float -0.262869
	.word	0xbf4f1b69                      # float -0.809011995
	.word	0x3f0696c4                      # float 0.525738001
	.word	0x00000000                      # float 0
	.word	0xbf59c411                      # float -0.850647985
	.word	0x00000000                      # float 0
	.word	0x3f0696a2                      # float 0.525735974
	.word	0x00000000                      # float 0
	.word	0xbe8696c4                      # float -0.262869
	.word	0x3f4f1b69                      # float 0.809011995
	.word	0x3f0696c4                      # float 0.525738001
	.word	0x00000000                      # float 0
	.word	0x3f302d38                      # float 0.688189983
	.word	0x3effff9b                      # float 0.49999699
	.word	0x3f0696a2                      # float 0.525735974
	.word	0x00000000                      # float 0
	.word	0x3f06963e                      # float 0.525730014
	.word	0x00000000                      # float 0
	.word	0x3f59c454                      # float 0.850651979
	.word	0x00000000                      # float 0
	.word	0x3e265ade                      # float 0.162456006
	.word	0xbeffff58                      # float -0.499994993
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.word	0xbed9c3f0                      # float -0.425323009
	.word	0xbe9e36b1                      # float -0.309011012
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.word	0xbed9c3f0                      # float -0.425323009
	.word	0x3e9e36b1                      # float 0.309011012
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.word	0x3e265ade                      # float 0.162456006
	.word	0x3effff58                      # float 0.499994993
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.size	_ZL22sPenetrationDirections, 992

	.type	_ZTV33btMinkowskiPenetrationDepthSolver,@object # @_ZTV33btMinkowskiPenetrationDepthSolver
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV33btMinkowskiPenetrationDepthSolver
	.p2align	3, 0x0
_ZTV33btMinkowskiPenetrationDepthSolver:
	.dword	0
	.dword	_ZTI33btMinkowskiPenetrationDepthSolver
	.dword	_ZN30btConvexPenetrationDepthSolverD2Ev
	.dword	_ZN33btMinkowskiPenetrationDepthSolverD0Ev
	.dword	_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
	.size	_ZTV33btMinkowskiPenetrationDepthSolver, 40

	.type	_ZTI33btMinkowskiPenetrationDepthSolver,@object # @_ZTI33btMinkowskiPenetrationDepthSolver
	.globl	_ZTI33btMinkowskiPenetrationDepthSolver
	.p2align	3, 0x0
_ZTI33btMinkowskiPenetrationDepthSolver:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS33btMinkowskiPenetrationDepthSolver
	.dword	_ZTI30btConvexPenetrationDepthSolver
	.size	_ZTI33btMinkowskiPenetrationDepthSolver, 24

	.type	_ZTS33btMinkowskiPenetrationDepthSolver,@object # @_ZTS33btMinkowskiPenetrationDepthSolver
	.section	.rodata,"a",@progbits
	.globl	_ZTS33btMinkowskiPenetrationDepthSolver
_ZTS33btMinkowskiPenetrationDepthSolver:
	.asciz	"33btMinkowskiPenetrationDepthSolver"
	.size	_ZTS33btMinkowskiPenetrationDepthSolver, 36

	.type	_ZTI30btConvexPenetrationDepthSolver,@object # @_ZTI30btConvexPenetrationDepthSolver
	.section	.data.rel.ro._ZTI30btConvexPenetrationDepthSolver,"awG",@progbits,_ZTI30btConvexPenetrationDepthSolver,comdat
	.weak	_ZTI30btConvexPenetrationDepthSolver
	.p2align	3, 0x0
_ZTI30btConvexPenetrationDepthSolver:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS30btConvexPenetrationDepthSolver
	.size	_ZTI30btConvexPenetrationDepthSolver, 16

	.type	_ZTS30btConvexPenetrationDepthSolver,@object # @_ZTS30btConvexPenetrationDepthSolver
	.section	.rodata._ZTS30btConvexPenetrationDepthSolver,"aG",@progbits,_ZTS30btConvexPenetrationDepthSolver,comdat
	.weak	_ZTS30btConvexPenetrationDepthSolver
_ZTS30btConvexPenetrationDepthSolver:
	.asciz	"30btConvexPenetrationDepthSolver"
	.size	_ZTS30btConvexPenetrationDepthSolver, 33

	.type	_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult,@object # @_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult:
	.dword	0
	.dword	_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.dword	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
	.dword	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev
	.dword	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii
	.dword	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii
	.dword	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f
	.size	_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult, 56

	.type	_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult,@object # @_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.p2align	3, 0x0
_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.dword	_ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.size	_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult, 24

	.type	_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult,@object # @_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.section	.rodata,"a",@progbits
_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult:
	.asciz	"ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult"
	.size	_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult, 186

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

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZTI33btMinkowskiPenetrationDepthSolver
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS33btMinkowskiPenetrationDepthSolver
	.addrsig_sym _ZTI30btConvexPenetrationDepthSolver
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS30btConvexPenetrationDepthSolver
	.addrsig_sym _ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.addrsig_sym _ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.addrsig_sym _ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.addrsig_sym _ZTSN36btDiscreteCollisionDetectorInterface6ResultE
