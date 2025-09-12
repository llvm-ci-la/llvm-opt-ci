	.file	"btGjkEpa2.cpp"
	.text
	.globl	_ZN15btGjkEpaSolver220StackSizeRequirementEv # -- Begin function _ZN15btGjkEpaSolver220StackSizeRequirementEv
	.p2align	5
	.type	_ZN15btGjkEpaSolver220StackSizeRequirementEv,@function
_ZN15btGjkEpaSolver220StackSizeRequirementEv: # @_ZN15btGjkEpaSolver220StackSizeRequirementEv
# %bb.0:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2640
	ret
.Lfunc_end0:
	.size	_ZN15btGjkEpaSolver220StackSizeRequirementEv, .Lfunc_end0-_ZN15btGjkEpaSolver220StackSizeRequirementEv
                                        # -- End function
	.globl	_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE # -- Begin function _ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE
	.p2align	5
	.type	_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE,@function
_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE: # @_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -752
	.cfi_def_cfa_offset 752
	st.d	$ra, $sp, 744                   # 8-byte Folded Spill
	st.d	$fp, $sp, 736                   # 8-byte Folded Spill
	st.d	$s0, $sp, 728                   # 8-byte Folded Spill
	st.d	$s1, $sp, 720                   # 8-byte Folded Spill
	st.d	$s2, $sp, 712                   # 8-byte Folded Spill
	st.d	$s3, $sp, 704                   # 8-byte Folded Spill
	st.d	$s4, $sp, 696                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 688                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 680                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 672                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 664                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 656                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 648                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 640                  # 8-byte Folded Spill
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
	.cfi_offset 62, -112
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a1
	addi.d	$a5, $sp, 480
	move	$a4, $fp
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 456
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 160
	ori	$s2, $zero, 2
	st.w	$s2, $sp, 472
	st.w	$zero, $sp, 176
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 480
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB1_2
# %bb.1:
	addi.d	$a0, $s0, -1
	sltui	$a0, $a0, 1
	sub.d	$a0, $s2, $a0
	st.w	$a0, $fp, 0
	b	.LBB1_11
.LBB1_2:                                # %.preheader
	ld.d	$a1, $sp, 464
	ld.w	$a0, $a1, 48
	beqz	$a0, .LBB1_9
# %bb.3:                                # %.lr.ph
	move	$s2, $zero
	move	$s3, $zero
	movgr2fr.w	$fs0, $zero
	ori	$s4, $zero, 32
	fmov.s	$fs2, $fs0
	fmov.s	$fs5, $fs0
	fmov.s	$fs1, $fs0
	fmov.s	$fs3, $fs0
	fmov.s	$fs4, $fs0
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit74
                                        #   in Loop: Header=BB1_5 Depth=1
	movgr2fr.w	$fa0, $a2
	srli.d	$a2, $a2, 32
	movgr2fr.w	$fa1, $a2
	ld.d	$a2, $sp, 464
	movgr2fr.w	$fa2, $a1
	fmul.s	$fa0, $fs6, $fa0
	fmul.s	$fa1, $fs6, $fa1
	ldx.d	$a1, $a2, $s2
	fmul.s	$fa2, $fs6, $fa2
	fadd.s	$fs5, $fs5, $fa0
	fadd.s	$fs2, $fs2, $fa1
	fld.s	$fa0, $a1, 0
	fadd.s	$fs0, $fs0, $fa2
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 8
	fneg.s	$fa0, $fa0
	fld.s	$fa3, $sp, 500
	fneg.s	$fa1, $fa1
	fneg.s	$fa2, $fa2
	fld.s	$fa4, $sp, 496
	fmul.s	$fa3, $fa3, $fa1
	fld.s	$fa5, $sp, 504
	fld.s	$fa6, $sp, 516
	fld.s	$fa7, $sp, 512
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmul.s	$fa4, $fa6, $fa1
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fld.s	$fa5, $sp, 520
	fld.s	$fa6, $sp, 532
	fld.s	$fa7, $sp, 528
	fld.s	$ft0, $sp, 536
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmul.s	$fa1, $fa6, $fa1
	fmadd.s	$fa0, $fa7, $fa0, $fa1
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 624
	st.d	$a2, $sp, 632
	addi.d	$a1, $sp, 624
	jirl	$ra, $a3, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	fld.s	$fa1, $sp, 548
	movgr2fr.w	$fa2, $a0
	fld.s	$fa3, $sp, 544
	movgr2fr.w	$fa4, $a1
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa5, $sp, 552
	fmadd.s	$fa1, $fa3, $fa0, $fa1
	fld.s	$fa3, $sp, 592
	fld.s	$fa6, $sp, 564
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fld.s	$fa5, $sp, 560
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa3, $fa6, $fa2
	fld.s	$fa6, $sp, 580
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fld.s	$fa5, $sp, 576
	fld.s	$fa7, $sp, 568
	fmul.s	$fa2, $fa6, $fa2
	fld.s	$fa6, $sp, 596
	fmadd.s	$fa0, $fa5, $fa0, $fa2
	fld.s	$fa2, $sp, 584
	fld.s	$fa5, $sp, 600
	fmadd.s	$fa3, $fa7, $fa4, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fadd.s	$fa0, $fa5, $fa0
	fmul.s	$fa1, $fs6, $fa1
	fmul.s	$fa2, $fs6, $fa3
	ld.d	$a1, $sp, 464
	fmul.s	$fa0, $fs6, $fa0
	fadd.s	$fs4, $fs4, $fa1
	fadd.s	$fs3, $fs3, $fa2
	ld.wu	$a0, $a1, 48
	fadd.s	$fs1, $fs1, $fa0
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 4
	addi.d	$s2, $s2, 8
	bgeu	$s3, $a0, .LBB1_10
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 480
	ld.d	$a2, $sp, 608
	ld.d	$a3, $sp, 616
	andi	$a4, $a2, 1
	add.d	$a0, $a0, $a3
	beqz	$a4, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a3, $a0, 0
	add.d	$a2, $a3, $a2
	ld.d	$a2, $a2, -1
.LBB1_7:                                # %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit
                                        #   in Loop: Header=BB1_5 Depth=1
	fldx.s	$fs6, $a1, $s4
	ldx.d	$a1, $a1, $s2
	jirl	$ra, $a2, 0
	ld.d	$a4, $sp, 488
	ld.d	$a3, $sp, 608
	ld.d	$a5, $sp, 616
	move	$a2, $a0
	andi	$a6, $a3, 1
	add.d	$a0, $a4, $a5
	beqz	$a6, .LBB1_4
# %bb.8:                                #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a4, $a0, 0
	add.d	$a3, $a4, $a3
	ld.d	$a3, $a3, -1
	b	.LBB1_4
.LBB1_9:
	movgr2fr.w	$fs4, $zero
	fmov.s	$fs3, $fs4
	fmov.s	$fs1, $fs4
	fmov.s	$fs5, $fs4
	fmov.s	$fs2, $fs4
	fmov.s	$fs0, $fs4
.LBB1_10:                               # %._crit_edge
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s1, 8
	fld.s	$fa3, $s1, 48
	fmul.s	$fa0, $fs2, $fa0
	fmadd.s	$fa0, $fa1, $fs5, $fa0
	fmadd.s	$fa0, $fa2, $fs0, $fa0
	fadd.s	$fa0, $fa3, $fa0
	fld.s	$fa1, $s1, 20
	fld.s	$fa2, $s1, 16
	fld.s	$fa3, $s1, 24
	fld.s	$fa4, $s1, 52
	fmul.s	$fa1, $fs2, $fa1
	fmadd.s	$fa1, $fa2, $fs5, $fa1
	fmadd.s	$fa1, $fa3, $fs0, $fa1
	fadd.s	$fa1, $fa4, $fa1
	fld.s	$fa2, $s1, 36
	fld.s	$fa3, $s1, 32
	fld.s	$fa4, $s1, 40
	fld.s	$fa5, $s1, 56
	fmul.s	$fa2, $fs2, $fa2
	fmadd.s	$fa2, $fa3, $fs5, $fa2
	fmadd.s	$fa2, $fa4, $fs0, $fa2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 4
	st.d	$a1, $fp, 12
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s1, 8
	fld.s	$fa3, $s1, 48
	fmul.s	$fa0, $fs3, $fa0
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	fmadd.s	$fa0, $fa2, $fs1, $fa0
	fadd.s	$fa0, $fa3, $fa0
	fld.s	$fa1, $s1, 20
	fld.s	$fa2, $s1, 16
	fld.s	$fa3, $s1, 24
	fld.s	$fa4, $s1, 52
	fmul.s	$fa1, $fs3, $fa1
	fmadd.s	$fa1, $fa2, $fs4, $fa1
	fmadd.s	$fa1, $fa3, $fs1, $fa1
	fadd.s	$fa1, $fa4, $fa1
	fld.s	$fa2, $s1, 36
	fld.s	$fa3, $s1, 32
	fld.s	$fa4, $s1, 40
	fld.s	$fa5, $s1, 56
	fmul.s	$fa2, $fs3, $fa2
	fmadd.s	$fa2, $fa3, $fs4, $fa2
	fmadd.s	$fa2, $fa4, $fs1, $fa2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 20
	st.d	$a1, $fp, 28
	fsub.s	$fa0, $fs5, $fs4
	fsub.s	$fa1, $fs2, $fs3
	fsub.s	$fa2, $fs0, $fs1
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $fp, 44
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fsqrt.s	$fa4, $fa3
	fst.s	$fa4, $fp, 52
	frsqrt.s	$fa3, $fa3
	lu12i.w	$a0, 232731
	ori	$a0, $a0, 1815
	movgr2fr.w	$fa5, $a0
	fcmp.clt.s	$fcc0, $fa5, $fa4
	vldi	$vr4, -1168
	fsel	$fa3, $fa4, $fa3, $fcc0
	fmul.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $fp, 36
	fmul.s	$fa0, $fa1, $fa3
	fst.s	$fa0, $fp, 40
	fmul.s	$fa0, $fa2, $fa3
	fst.s	$fa0, $fp, 44
.LBB1_11:
	sltui	$a0, $s0, 1
	fld.d	$fs6, $sp, 640                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 648                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 656                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 664                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 680                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 688                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 728                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 744                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 752
	ret
.Lfunc_end1:
	.size	_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE, .Lfunc_end1-_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb
	.type	_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb,@function
_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb: # @_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb
# %bb.0:
	addi.d	$sp, $sp, -16
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	st.w	$zero, $a4, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a4, 16
	vst	$vr0, $a4, 0
	st.d	$a0, $a5, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a3, 16
	fld.s	$fa2, $a1, 16
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a3, 32
	fld.s	$fa5, $a1, 32
	fmul.s	$fa6, $fa1, $fa2
	fld.s	$fa7, $a1, 20
	fmadd.s	$fa6, $fa0, $fa3, $fa6
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fld.s	$ft0, $a1, 4
	fmul.s	$ft1, $fa1, $fa7
	fld.s	$ft2, $a1, 36
	fld.s	$ft3, $a1, 24
	fld.s	$ft4, $a1, 8
	fmadd.s	$ft1, $fa0, $ft0, $ft1
	fmadd.s	$ft1, $fa4, $ft2, $ft1
	fmul.s	$fa1, $fa1, $ft3
	fmadd.s	$fa0, $fa0, $ft4, $fa1
	fld.s	$fa1, $a1, 40
	fld.s	$ft5, $a3, 20
	fld.s	$ft6, $a3, 4
	fld.s	$ft7, $a3, 36
	fmadd.s	$fa0, $fa4, $fa1, $fa0
	fmul.s	$fa4, $fa2, $ft5
	fmadd.s	$fa4, $ft6, $fa3, $fa4
	fmadd.s	$fa4, $ft7, $fa5, $fa4
	fmul.s	$ft8, $fa7, $ft5
	fmadd.s	$ft8, $ft6, $ft0, $ft8
	fmadd.s	$ft8, $ft7, $ft2, $ft8
	fmul.s	$ft5, $ft3, $ft5
	fmadd.s	$ft5, $ft6, $ft4, $ft5
	fld.s	$ft6, $a3, 24
	fld.s	$ft9, $a3, 8
	fld.s	$ft10, $a3, 40
	fmadd.s	$ft5, $ft7, $fa1, $ft5
	fmul.s	$fa2, $fa2, $ft6
	fmadd.s	$fa2, $ft9, $fa3, $fa2
	fmadd.s	$fa2, $ft10, $fa5, $fa2
	fmul.s	$fa3, $fa7, $ft6
	fmadd.s	$fa3, $ft9, $ft0, $fa3
	fmadd.s	$fa3, $ft10, $ft2, $fa3
	fmul.s	$fa5, $ft3, $ft6
	fmadd.s	$fa5, $ft9, $ft4, $fa5
	fmadd.s	$fa1, $ft10, $fa1, $fa5
	fst.s	$fa6, $a5, 16
	fst.s	$ft1, $a5, 20
	fst.s	$fa0, $a5, 24
	st.w	$zero, $a5, 28
	fst.s	$fa4, $a5, 32
	fst.s	$ft8, $a5, 36
	fst.s	$ft5, $a5, 40
	st.w	$zero, $a5, 44
	fst.s	$fa2, $a5, 48
	fst.s	$fa3, $a5, 52
	fst.s	$fa1, $a5, 56
	st.w	$zero, $a5, 60
	fld.s	$fa0, $a3, 48
	fld.s	$fa1, $a1, 48
	fld.s	$fa2, $a3, 52
	fld.s	$fa3, $a1, 52
	fld.s	$fa4, $a3, 56
	fld.s	$fa5, $a1, 56
	st.d	$a2, $a5, 8
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa1, $fa4, $fa5
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a1, 16
	fld.s	$fa5, $a3, 16
	fld.s	$fa6, $a3, 0
	fld.s	$fa7, $a1, 32
	fld.s	$ft0, $a3, 32
	fmul.s	$ft1, $fa4, $fa5
	fld.s	$ft2, $a3, 20
	fmadd.s	$ft1, $fa3, $fa6, $ft1
	fmadd.s	$ft1, $fa7, $ft0, $ft1
	fld.s	$ft3, $a3, 4
	fmul.s	$ft4, $fa4, $ft2
	fld.s	$ft5, $a3, 36
	fld.s	$ft6, $a3, 24
	fld.s	$ft7, $a3, 8
	fmadd.s	$ft4, $fa3, $ft3, $ft4
	fmadd.s	$ft4, $fa7, $ft5, $ft4
	fmul.s	$ft8, $fa4, $ft6
	fmadd.s	$ft8, $fa3, $ft7, $ft8
	fld.s	$ft9, $a3, 40
	fld.s	$ft10, $a1, 20
	fld.s	$ft11, $a1, 4
	fld.s	$ft12, $a1, 36
	fmadd.s	$ft8, $fa7, $ft9, $ft8
	fmul.s	$ft13, $fa5, $ft10
	fmadd.s	$ft13, $ft11, $fa6, $ft13
	fmadd.s	$ft13, $ft12, $ft0, $ft13
	fmul.s	$ft14, $ft2, $ft10
	fld.s	$ft15, $a1, 24
	fld.s	$fs0, $a1, 8
	fmadd.s	$ft14, $ft11, $ft3, $ft14
	fmadd.s	$ft14, $ft12, $ft5, $ft14
	fmul.s	$fa5, $fa5, $ft15
	fmadd.s	$fa5, $fs0, $fa6, $fa5
	fld.s	$fa6, $a1, 40
	fmul.s	$fs1, $ft6, $ft10
	fmadd.s	$fs1, $ft11, $ft7, $fs1
	fmadd.s	$fs1, $ft12, $ft9, $fs1
	fmadd.s	$fa5, $fa6, $ft0, $fa5
	fmul.s	$ft0, $ft2, $ft15
	fmadd.s	$ft0, $fs0, $ft3, $ft0
	fmadd.s	$ft0, $fa6, $ft5, $ft0
	fmul.s	$ft2, $ft6, $ft15
	fmadd.s	$ft2, $fs0, $ft7, $ft2
	fmadd.s	$ft2, $fa6, $ft9, $ft2
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa3, $fa3, $fa0, $fa4
	fmadd.s	$fa3, $fa7, $fa1, $fa3
	fmul.s	$fa4, $fa2, $ft10
	fmadd.s	$fa4, $ft11, $fa0, $fa4
	fmadd.s	$fa4, $ft12, $fa1, $fa4
	fmul.s	$fa2, $fa2, $ft15
	fmadd.s	$fa0, $fs0, $fa0, $fa2
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$ft1, $a5, 64
	fst.s	$ft4, $a5, 68
	fst.s	$ft8, $a5, 72
	st.w	$zero, $a5, 76
	fst.s	$ft13, $a5, 80
	fst.s	$ft14, $a5, 84
	fst.s	$fs1, $a5, 88
	st.w	$zero, $a5, 92
	fst.s	$fa5, $a5, 96
	fst.s	$ft0, $a5, 100
	fst.s	$ft2, $a5, 104
	st.w	$zero, $a5, 108
	st.d	$a0, $a5, 112
	st.d	$a1, $a5, 120
	pcalau12i	$a0, %got_pc_hi20(_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3)
	masknez	$a0, $a0, $a6
	pcalau12i	$a1, %got_pc_hi20(_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3)
	ld.d	$a1, $a1, %got_pc_lo12(_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3)
	maskeqz	$a1, $a1, $a6
	or	$a0, $a1, $a0
	st.d	$a0, $a5, 128
	st.d	$zero, $a5, 136
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb, .Lfunc_end2-_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb
                                        # -- End function
	.section	.text._ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3,"axG",@progbits,_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3,comdat
	.weak	_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3 # -- Begin function _ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3
	.p2align	5
	.type	_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3,@function
_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3: # @_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
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
	move	$a3, $a1
	move	$fp, $a0
	addi.d	$a0, $a0, 280
	st.d	$a0, $fp, 408
	addi.d	$a0, $fp, 312
	st.d	$a0, $fp, 416
	addi.d	$a0, $fp, 344
	st.d	$a0, $fp, 424
	addi.d	$a1, $fp, 376
	st.d	$a1, $fp, 432
	ori	$a0, $zero, 4
	st.d	$a0, $fp, 440
	st.w	$zero, $fp, 456
	vld	$vr0, $a3, 0
	vst	$vr0, $fp, 0
	vld	$vr0, $a3, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $a3, 32
	vst	$vr0, $fp, 32
	vld	$vr0, $a3, 48
	vst	$vr0, $fp, 48
	vld	$vr0, $a3, 64
	vst	$vr0, $fp, 64
	vld	$vr0, $a3, 80
	vst	$vr0, $fp, 80
	vld	$vr0, $a3, 96
	vst	$vr0, $fp, 96
	vld	$vr0, $a3, 112
	vst	$vr0, $fp, 112
	vld	$vr0, $a3, 128
	vst	$vr0, $fp, 128
	st.w	$zero, $fp, 160
	st.w	$zero, $fp, 216
	vld	$vr0, $a2, 0
	addi.d	$s2, $fp, 408
	addi.d	$s1, $fp, 168
	vst	$vr0, $fp, 144
	fld.s	$fa0, $fp, 148
	fld.s	$fa1, $fp, 144
	fld.s	$fa2, $fp, 152
	addi.d	$a0, $fp, 144
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fs0, $fa2, $fa2, $fa3
	fneg.s	$fa1, $fa1
	fneg.s	$fa0, $fa0
	fneg.s	$fa2, $fa2
	movgr2fr.w	$fs1, $zero
	fcmp.clt.s	$fcc0, $fs1, $fs0
	fsel	$fa2, $fs1, $fa2, $fcc0
	vldi	$vr3, -1168
	fsel	$fa1, $fa3, $fa1, $fcc0
	fsel	$fa0, $fs1, $fa0, $fcc0
	st.w	$zero, $fp, 200
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 440
	st.d	$a1, $fp, 168
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 216
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $fp, 376
	st.d	$a2, $fp, 384
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 392
	ld.d	$a0, $fp, 168
	st.d	$a1, $fp, 400
	lu12i.w	$a1, 260096
	st.w	$a1, $fp, 200
	vld	$vr0, $a0, 16
	vst	$vr0, $fp, 144
	vld	$vr0, $a0, 16
	move	$s8, $zero
	move	$s7, $zero
	vst	$vr0, $sp, 96
	vst	$vr0, $sp, 80
	vst	$vr0, $sp, 64
	vst	$vr0, $sp, 48
	ld.w	$s5, $fp, 444
	fld.s	$fa1, $fp, 144
	fld.s	$fa0, $fp, 148
	fld.s	$fs3, $fp, 152
	ori	$s3, $zero, 56
	lu12i.w	$a0, 232731
	ori	$a0, $a0, 1815
	movgr2fr.w	$fs2, $a0
	lu12i.w	$a0, -291557
	ori	$s4, $a0, 1815
	lu32i.d	$s4, 0
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %._crit_edge
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.w	$a2, $fp, 456
	addi.d	$a0, $a0, -15
	sltui	$a0, $a0, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a2
	addi.w	$s7, $s7, 1
	sltui	$a2, $s7, 128
	maskeqz	$a0, $a0, $a2
	ori	$a3, $zero, 2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 456
	bnez	$a0, .LBB3_29
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_25 Depth 2
	fmul.s	$fa2, $fa0, $fa0
	fmadd.s	$fa2, $fa1, $fa1, $fa2
	fmadd.s	$fa2, $fs3, $fs3, $fa2
	fsqrt.s	$fs4, $fa2
	fcmp.cule.s	$fcc0, $fs2, $fs4
	bstrpick.d	$a1, $s5, 31, 0
	bceqz	$fcc0, .LBB3_36
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	mul.d	$a0, $a1, $s3
	add.d	$s6, $s1, $a0
	ld.wu	$a0, $s6, 48
	fneg.s	$fa1, $fa1
	ld.w	$a1, $fp, 440
	fneg.s	$fa0, $fa0
	alsl.d	$a2, $a0, $s6, 2
	st.w	$zero, $a2, 32
	addi.d	$a1, $a1, -1
	bstrpick.d	$a2, $a1, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$s0, $s2, $a2
	fneg.s	$fa2, $fs3
	st.w	$a1, $fp, 440
	slli.d	$a1, $a0, 3
	stx.d	$s0, $s6, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 48
	frecip.s	$fa3, $fs4
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa0, $fa3, $fa0
	fmul.s	$fa2, $fa3, $fa2
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	ld.w	$a0, $s6, 48
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s6, $a1
	fld.s	$fa0, $a1, 16
	fld.s	$fa2, $a1, 20
	fld.s	$fa1, $a1, 24
	fld.s	$fa3, $sp, 48
	fld.s	$fa4, $sp, 52
	fld.s	$fa5, $sp, 56
	fsub.s	$fa3, $fa0, $fa3
	fsub.s	$fa4, $fa2, $fa4
	fsub.s	$fa5, $fa1, $fa5
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa3, $fa3, $fa3, $fa4
	fmadd.s	$fa3, $fa5, $fa5, $fa3
	fcmp.clt.s	$fcc0, $fa3, $fs2
	bcnez	$fcc0, .LBB3_27
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	fld.s	$fa3, $sp, 64
	fld.s	$fa4, $sp, 68
	fld.s	$fa5, $sp, 72
	fsub.s	$fa3, $fa0, $fa3
	fsub.s	$fa4, $fa2, $fa4
	fsub.s	$fa5, $fa1, $fa5
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa3, $fa3, $fa3, $fa4
	fmadd.s	$fa3, $fa5, $fa5, $fa3
	fcmp.clt.s	$fcc0, $fa3, $fs2
	bcnez	$fcc0, .LBB3_27
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=1
	fld.s	$fa3, $sp, 80
	fld.s	$fa4, $sp, 84
	fld.s	$fa5, $sp, 88
	fsub.s	$fa3, $fa0, $fa3
	fsub.s	$fa4, $fa2, $fa4
	fsub.s	$fa5, $fa1, $fa5
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa3, $fa3, $fa3, $fa4
	fmadd.s	$fa3, $fa5, $fa5, $fa3
	fcmp.clt.s	$fcc0, $fa3, $fs2
	bcnez	$fcc0, .LBB3_27
# %bb.6:                                #   in Loop: Header=BB3_2 Depth=1
	fld.s	$fa3, $sp, 96
	fld.s	$fa4, $sp, 100
	fld.s	$fa5, $sp, 104
	fsub.s	$fa3, $fa0, $fa3
	fsub.s	$fa4, $fa2, $fa4
	fsub.s	$fa5, $fa1, $fa5
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa3, $fa3, $fa3, $fa4
	fmadd.s	$fa3, $fa5, $fa5, $fa3
	fcmp.clt.s	$fcc0, $fa3, $fs2
	bcnez	$fcc0, .LBB3_27
# %bb.7:                                # %.critedge
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a1, $a1, 16
	fld.s	$fa3, $fp, 148
	addi.d	$a2, $s8, 1
	andi	$s8, $a2, 3
	fld.s	$fa4, $fp, 144
	fmul.s	$fa2, $fa3, $fa2
	fld.s	$fa3, $fp, 152
	slli.d	$a2, $s8, 4
	fmadd.s	$fa0, $fa4, $fa0, $fa2
	vld	$vr2, $a1, 0
	fmadd.s	$fa0, $fa3, $fa1, $fa0
	fdiv.s	$fa0, $fa0, $fs4
	fcmp.clt.s	$fcc0, $fs1, $fa0
	fsel	$fs1, $fs1, $fa0, $fcc0
	fsub.s	$fa0, $fs4, $fs1
	movgr2fr.w	$fa1, $s4
	fmadd.s	$fa0, $fs4, $fa1, $fa0
	movgr2fr.w	$fs3, $zero
	fcmp.cult.s	$fcc0, $fs3, $fa0
	addi.d	$a1, $sp, 48
	vstx	$vr2, $a2, $a1
	bceqz	$fcc0, .LBB3_27
# %bb.8:                                #   in Loop: Header=BB3_2 Depth=1
	st.w	$zero, $sp, 28
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB3_16
# %bb.9:                                #   in Loop: Header=BB3_2 Depth=1
	ori	$a1, $zero, 3
	ori	$s0, $zero, 1
	beq	$a0, $a1, .LBB3_15
# %bb.10:                               #   in Loop: Header=BB3_2 Depth=1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_20
# %bb.11:                               #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 0
	fld.s	$fa3, $a0, 16
	fld.s	$fa0, $a1, 16
	fld.s	$fa7, $a0, 20
	fld.s	$fa1, $a1, 20
	fld.s	$ft0, $a0, 24
	fld.s	$fa2, $a1, 24
	fsub.s	$fa4, $fa3, $fa0
	fsub.s	$fa5, $fa7, $fa1
	fsub.s	$fa6, $ft0, $fa2
	fmul.s	$ft1, $fa5, $fa5
	fmadd.s	$ft1, $fa4, $fa4, $ft1
	fmadd.s	$ft1, $fa6, $fa6, $ft1
	fcmp.cule.s	$fcc0, $ft1, $fs3
	bcnez	$fcc0, .LBB3_35
# %bb.12:                               #   in Loop: Header=BB3_2 Depth=1
	fmul.s	$ft2, $fa1, $fa5
	fmadd.s	$ft2, $fa0, $fa4, $ft2
	fnmadd.s	$ft2, $fa2, $fa6, $ft2
	fdiv.s	$ft1, $ft2, $ft1
	vldi	$vr10, -1168
	fcmp.cult.s	$fcc0, $ft1, $ft2
	bceqz	$fcc0, .LBB3_17
# %bb.13:                               #   in Loop: Header=BB3_2 Depth=1
	fcmp.cult.s	$fcc0, $fs3, $ft1
	bceqz	$fcc0, .LBB3_18
# %bb.14:                               #   in Loop: Header=BB3_2 Depth=1
	fst.s	$ft1, $sp, 36
	vldi	$vr3, -1168
	fsub.s	$fa3, $fa3, $ft1
	fst.s	$fa3, $sp, 32
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 28
	fmul.s	$fa3, $fa4, $ft1
	fmul.s	$fa4, $fa5, $ft1
	fmul.s	$fa5, $fa6, $ft1
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	b	.LBB3_19
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s6, 8
	ld.d	$a2, $s6, 16
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 28
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_16:                               #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s6, 8
	ld.d	$a2, $s6, 16
	ld.d	$a3, $s6, 24
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $sp, 32
	addi.d	$a5, $sp, 28
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	ori	$s0, $zero, 1
	b	.LBB3_20
.LBB3_17:                               #   in Loop: Header=BB3_2 Depth=1
	lu52i.d	$a0, $zero, 1016
	st.d	$a0, $sp, 32
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 28
	fmul.s	$fa0, $fa7, $fa7
	fmadd.s	$fa0, $fa3, $fa3, $fa0
	fmadd.s	$fs0, $ft0, $ft0, $fa0
	b	.LBB3_20
.LBB3_18:                               #   in Loop: Header=BB3_2 Depth=1
	lu12i.w	$a0, 260096
	st.d	$a0, $sp, 32
	st.w	$s0, $sp, 28
.LBB3_19:                               # %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit
                                        #   in Loop: Header=BB3_2 Depth=1
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmadd.s	$fs0, $fa2, $fa2, $fa0
	.p2align	4, , 16
.LBB3_20:                               # %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit
                                        #   in Loop: Header=BB3_2 Depth=1
	fcmp.cult.s	$fcc0, $fs0, $fs3
	bcnez	$fcc0, .LBB3_35
# %bb.21:                               #   in Loop: Header=BB3_2 Depth=1
	sub.w	$s5, $s0, $s5
	bstrpick.d	$a1, $s5, 31, 0
	mul.d	$a0, $a1, $s3
	add.d	$a2, $s1, $a0
	st.w	$zero, $a2, 48
	ld.wu	$a3, $s6, 48
	ld.w	$a0, $sp, 28
	vrepli.b	$vr0, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	vst	$vr0, $a4, 0
	st.w	$s5, $fp, 444
	fmov.s	$fa0, $fs3
	fmov.s	$fa1, $fs3
	beqz	$a3, .LBB3_1
# %bb.22:                               # %.lr.ph
                                        #   in Loop: Header=BB3_2 Depth=1
	move	$a4, $zero
	move	$a5, $zero
	ld.w	$t0, $fp, 440
	addi.d	$a6, $a2, 32
	movgr2fr.w	$fa1, $zero
	addi.d	$a7, $sp, 32
	fmov.s	$fa0, $fa1
	fmov.s	$fs3, $fa1
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_23:                               #   in Loop: Header=BB3_25 Depth=2
	bstrpick.d	$t2, $t0, 31, 0
	addi.w	$t0, $t0, 1
	st.w	$t0, $fp, 440
	slli.d	$t2, $t2, 3
	stx.d	$t1, $s2, $t2
.LBB3_24:                               #   in Loop: Header=BB3_25 Depth=2
	addi.d	$s6, $s6, 8
	addi.d	$a7, $a7, 4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	beqz	$a3, .LBB3_1
.LBB3_25:                               #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $s6, 0
	srl.w	$t2, $a0, $a4
	andi	$t2, $t2, 1
	beqz	$t2, .LBB3_23
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=2
	bstrpick.d	$t2, $a5, 31, 0
	slli.d	$t3, $t2, 3
	fld.s	$fa2, $a7, 0
	stx.d	$t1, $a2, $t3
	addi.w	$a5, $a5, 1
	slli.d	$t2, $t2, 2
	fstx.s	$fa2, $a6, $t2
	fld.s	$fa3, $t1, 16
	fld.s	$fa4, $t1, 20
	fld.s	$fa5, $t1, 24
	st.w	$a5, $a2, 48
	fmul.s	$fa3, $fa2, $fa3
	fmul.s	$fa4, $fa2, $fa4
	fmul.s	$fa2, $fa2, $fa5
	fadd.s	$fa1, $fa3, $fa1
	fst.s	$fa1, $fp, 144
	fadd.s	$fa0, $fa4, $fa0
	fst.s	$fa0, $fp, 148
	fadd.s	$fs3, $fa2, $fs3
	fst.s	$fs3, $fp, 152
	b	.LBB3_24
.LBB3_27:
	ld.wu	$a1, $fp, 444
	ori	$a0, $zero, 56
	mul.d	$a0, $a1, $a0
	add.d	$a0, $s1, $a0
	ld.w	$a2, $a0, 48
	addi.d	$a2, $a2, -1
	st.w	$a2, $a0, 48
	ld.wu	$a3, $fp, 440
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	addi.d	$a2, $a3, 1
	st.w	$a2, $fp, 440
	slli.d	$a2, $a3, 3
	stx.d	$a0, $s2, $a2
.LBB3_28:                               # %.loopexit
	ld.w	$a0, $fp, 456
.LBB3_29:                               # %.loopexit
	ori	$a2, $zero, 56
	mul.d	$a1, $a1, $a2
	add.d	$a1, $s1, $a1
	ori	$a2, $zero, 1
	st.d	$a1, $fp, 448
	beq	$a0, $a2, .LBB3_32
# %bb.30:                               # %.loopexit
	bnez	$a0, .LBB3_34
# %bb.31:
	fld.s	$fa0, $fp, 148
	fld.s	$fa1, $fp, 144
	fld.s	$fa2, $fp, 152
	fmul.s	$fa0, $fa0, $fa0
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fsqrt.s	$fa0, $fa0
	b	.LBB3_33
.LBB3_32:
	movgr2fr.w	$fa0, $zero
.LBB3_33:                               # %.sink.split
	fst.s	$fa0, $fp, 160
.LBB3_34:
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB3_35:                               # %.thread139
	ld.wu	$a1, $fp, 444
	ori	$a0, $zero, 56
	mul.d	$a0, $a1, $a0
	add.d	$a2, $s1, $a0
	ld.w	$a0, $a2, 48
	addi.d	$a3, $a0, -1
	bstrpick.d	$a0, $a3, 31, 0
	slli.d	$a0, $a0, 3
	ld.wu	$a4, $fp, 440
	ldx.d	$a0, $a2, $a0
	slli.d	$a5, $a4, 3
	stx.d	$a0, $s2, $a5
	ld.w	$a0, $fp, 456
	st.w	$a3, $a2, 48
	addi.d	$a2, $a4, 1
	st.w	$a2, $fp, 440
	b	.LBB3_29
.LBB3_36:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 456
	b	.LBB3_28
.Lfunc_end3:
	.size	_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3, .Lfunc_end3-_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb # -- Begin function _ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb
	.p2align	5
	.type	_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb,@function
_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb: # @_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb
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
	fst.d	$fs0, $sp, 1968                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1960                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1952                 # 8-byte Folded Spill
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
	lu12i.w	$a7, 3
	ori	$a7, $a7, 880
	sub.d	$sp, $sp, $a7
	.cfi_def_cfa_offset 15200
	move	$fp, $a5
	move	$s1, $a4
	move	$s0, $a1
	lu12i.w	$a4, 3
	ori	$a4, $a4, 2688
	add.d	$a5, $sp, $a4
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2664
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2368
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	ori	$s3, $zero, 2
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2680
	add.d	$a0, $sp, $a0
	st.w	$s3, $a0, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2384
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	ld.wu	$a0, $s1, 0
	ld.w	$a1, $s1, 4
	ld.wu	$a2, $s1, 8
	lu12i.w	$s2, -524288
	lu32i.d	$s2, 0
	xor	$a0, $a0, $s2
	xor	$a1, $a1, $s2
	slli.d	$a1, $a1, 32
	or	$a0, $a1, $a0
	xor	$a1, $a2, $s2
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2224
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2688
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 48
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB4_8
# %bb.1:
	move	$a1, $a0
	ori	$a2, $zero, 1
	move	$a0, $zero
	bne	$a1, $a2, .LBB4_16
# %bb.2:
	move	$a1, $zero
	move	$a0, $zero
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2192
	add.d	$a2, $sp, $a2
	stptr.d	$zero, $a2, 0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2200
	add.d	$a2, $sp, $a2
	stptr.w	$zero, $a2, 0
	ori	$a2, $zero, 9
	st.w	$a2, $sp, 48
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2184
	add.d	$a2, $sp, $a2
	stptr.w	$zero, $a2, 0
	addi.d	$a2, $sp, 48
	addi.d	$a3, $a2, 2047
	addi.d	$a3, $a3, 89
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.w	$zero, $sp, 128
	lu12i.w	$a4, 3
	ori	$a5, $zero, 127
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	sub.d	$a1, $a5, $a0
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 5
	add.d	$a1, $a3, $a1
	lu12i.w	$a7, 3
	ori	$a7, $a7, 2208
	add.d	$a7, $sp, $a7
	stptr.d	$a6, $a7, 0
	addi.d	$a4, $a4, -96
	addi.d	$a0, $a0, 1
	beqz	$a4, .LBB4_6
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a2, $a4
	addi.d	$a6, $a7, 2040
	stptr.d	$zero, $a7, 2112
	stptr.d	$a1, $a7, 2120
	beqz	$a1, .LBB4_3
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	st.d	$a6, $a1, 72
	b	.LBB4_3
.LBB4_6:                                # %_ZN12gjkepa2_impl3EPAC2Ev.exit
	ori	$a0, $zero, 128
	ld.wu	$a1, $s1, 0
	ld.w	$a2, $s1, 4
	lu12i.w	$a3, 3
	ori	$a3, $a3, 2216
	add.d	$a3, $sp, $a3
	stptr.w	$a0, $a3, 0
	ld.wu	$a0, $s1, 8
	xor	$a1, $a1, $s2
	xor	$a2, $a2, $s2
	slli.d	$a2, $a2, 32
	or	$a1, $a2, $a1
	xor	$a0, $a0, $s2
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 48
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2224
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB4_9
# %bb.7:                                # %.thread
	move	$a0, $zero
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 0
	b	.LBB4_16
.LBB4_8:
	move	$a0, $zero
	st.w	$s3, $fp, 0
	b	.LBB4_16
.LBB4_9:                                # %.preheader
	ld.w	$a0, $sp, 104
	beqz	$a0, .LBB4_14
# %bb.10:                               # %.lr.ph
	move	$s1, $zero
	addi.d	$s3, $sp, 56
	movgr2fr.w	$fs0, $zero
	addi.d	$s4, $sp, 88
	fmov.s	$fs1, $fs0
	fmov.s	$fs2, $fs0
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $s3, 0
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa0, $a0
	fld.s	$fa1, $s4, 0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa2, $a0
	movgr2fr.w	$fa3, $a1
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	fadd.s	$fs2, $fs2, $fa0
	fadd.s	$fs1, $fs1, $fa2
	ld.wu	$a0, $sp, 104
	fadd.s	$fs0, $fs0, $fa1
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, 4
	bgeu	$s1, $a0, .LBB4_15
.LBB4_12:                               # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2688
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2816
	add.d	$a1, $sp, $a1
	ld.d	$a2, $a1, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2824
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	andi	$a3, $a2, 1
	add.d	$a0, $a0, $a1
	beqz	$a3, .LBB4_11
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $a0, 0
	add.d	$a1, $a1, $a2
	ld.d	$a2, $a1, -1
	b	.LBB4_11
.LBB4_14:
	movgr2fr.w	$fs2, $zero
	fmov.s	$fs1, $fs2
	fmov.s	$fs0, $fs2
.LBB4_15:                               # %._crit_edge
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s0, 8
	fld.s	$fa3, $s0, 48
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $fa1, $fs2, $fa0
	fmadd.s	$fa0, $fa2, $fs0, $fa0
	fadd.s	$fa0, $fa3, $fa0
	fld.s	$fa1, $s0, 20
	fld.s	$fa2, $s0, 16
	fld.s	$fa3, $s0, 24
	fld.s	$fa4, $s0, 52
	fmul.s	$fa1, $fs1, $fa1
	fmadd.s	$fa1, $fa2, $fs2, $fa1
	fmadd.s	$fa1, $fa3, $fs0, $fa1
	fadd.s	$fa1, $fa4, $fa1
	fld.s	$fa2, $s0, 36
	fld.s	$fa3, $s0, 32
	fld.s	$fa4, $s0, 40
	fld.s	$fa5, $s0, 56
	fmul.s	$fa2, $fs1, $fa2
	fmadd.s	$fa2, $fa3, $fs2, $fa2
	fmadd.s	$fa2, $fa4, $fs0, $fa2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $fp, 4
	fld.s	$fa1, $sp, 112
	st.d	$a2, $fp, 12
	fld.s	$fa0, $sp, 128
	fld.s	$fa2, $sp, 116
	movfr2gr.s	$a1, $fa1
	fld.s	$fa3, $sp, 120
	fmul.s	$fa1, $fa1, $fa0
	movfr2gr.s	$a2, $fa2
	fmul.s	$fa2, $fa0, $fa2
	movfr2gr.s	$a3, $fa3
	fmul.s	$fa3, $fa0, $fa3
	fsub.s	$fa1, $fs2, $fa1
	fld.s	$fa4, $s0, 4
	fsub.s	$fa2, $fs1, $fa2
	fld.s	$fa5, $s0, 0
	fsub.s	$fa3, $fs0, $fa3
	fmul.s	$fa4, $fa2, $fa4
	fld.s	$fa6, $s0, 8
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fld.s	$fa5, $s0, 48
	fld.s	$fa7, $s0, 20
	fmadd.s	$fa4, $fa6, $fa3, $fa4
	fld.s	$fa6, $s0, 16
	fadd.s	$fa4, $fa5, $fa4
	fmul.s	$fa5, $fa2, $fa7
	fld.s	$fa7, $s0, 36
	fmadd.s	$fa5, $fa6, $fa1, $fa5
	fld.s	$fa6, $s0, 32
	fld.s	$ft0, $s0, 24
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$fa7, $s0, 52
	fmadd.s	$fa1, $fa6, $fa1, $fa2
	fld.s	$fa2, $s0, 40
	fld.s	$fa6, $s0, 56
	fmadd.s	$fa5, $ft0, $fa3, $fa5
	fadd.s	$fa5, $fa7, $fa5
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fadd.s	$fa1, $fa6, $fa1
	movfr2gr.s	$a4, $fa4
	movfr2gr.s	$a5, $fa5
	bstrins.d	$a4, $a5, 63, 32
	movfr2gr.s	$a5, $fa1
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a4, $fp, 20
	st.d	$a5, $fp, 28
	xor	$a1, $a1, $s2
	xor	$a2, $a2, $s2
	bstrins.d	$a1, $a2, 63, 32
	xor	$a2, $a3, $s2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $fp, 36
	st.d	$a2, $fp, 44
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $fp, 52
.LBB4_16:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 880
	add.d	$sp, $sp, $a1
	fld.d	$fs2, $sp, 1952                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1960                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1968                 # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end4:
	.size	_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb, .Lfunc_end4-_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3
.LCPI5_0:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.section	.text._ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3,"axG",@progbits,_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3,comdat
	.weak	_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3
	.p2align	5
	.type	_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3,@function
_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3: # @_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
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
	move	$s0, $a1
	ld.d	$s5, $a1, 448
	ld.w	$a1, $s5, 48
	ori	$a3, $zero, 2
	move	$s1, $a2
	move	$fp, $a0
	bltu	$a1, $a3, .LBB5_42
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_42
# %bb.2:                                # %.preheader353
	ldptr.d	$a0, $fp, 14432
	beqz	$a0, .LBB5_14
# %bb.3:                                # %.lr.ph
	lu12i.w	$a2, 3
	ori	$a1, $a2, 2152
	ldx.w	$a1, $fp, $a1
	ori	$a2, $a2, 2168
	ldx.w	$a2, $fp, $a2
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit
                                        #   in Loop: Header=BB5_5 Depth=1
	stptr.d	$a0, $fp, 14448
	ldptr.d	$a0, $fp, 14432
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	beqz	$a0, .LBB5_13
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 80
	ld.d	$a3, $a0, 72
	beqz	$a4, .LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	st.d	$a3, $a4, 72
.LBB5_7:                                #   in Loop: Header=BB5_5 Depth=1
	beqz	$a3, .LBB5_9
# %bb.8:                                #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a4, $a0, 80
	st.d	$a4, $a3, 80
.LBB5_9:                                #   in Loop: Header=BB5_5 Depth=1
	ldptr.d	$a3, $fp, 14432
	beq	$a0, $a3, .LBB5_11
# %bb.10:                               # %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit
                                        #   in Loop: Header=BB5_5 Depth=1
	st.d	$zero, $a0, 72
	ldptr.d	$a3, $fp, 14448
	st.d	$a3, $a0, 80
	bnez	$a3, .LBB5_12
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_11:                               #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a3, $a0, 80
	stptr.d	$a3, $fp, 14432
	st.d	$zero, $a0, 72
	ldptr.d	$a3, $fp, 14448
	st.d	$a3, $a0, 80
	beqz	$a3, .LBB5_4
.LBB5_12:                               #   in Loop: Header=BB5_5 Depth=1
	st.d	$a0, $a3, 72
	b	.LBB5_4
.LBB5_13:                               # %._crit_edge
	stptr.w	$a1, $fp, 14440
	stptr.w	$a2, $fp, 14456
.LBB5_14:
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s5, 24
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a2, 16
	st.w	$zero, $fp, 0
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $a0, 20
	fld.s	$fa3, $a2, 20
	ld.d	$a1, $s5, 8
	fld.s	$fa4, $a0, 24
	fld.s	$fa5, $a2, 24
	ld.d	$a3, $s5, 16
	fld.s	$fa6, $a1, 16
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fld.s	$fa7, $a3, 16
	fsub.s	$fa6, $fa6, $fa1
	fld.s	$ft0, $a1, 20
	fld.s	$ft1, $a1, 24
	fsub.s	$fa1, $fa7, $fa1
	fld.s	$fa7, $a3, 20
	fld.s	$ft2, $a3, 24
	fsub.s	$ft0, $ft0, $fa3
	fsub.s	$ft1, $ft1, $fa5
	fsub.s	$fa3, $fa7, $fa3
	fsub.s	$fa5, $ft2, $fa5
	fmul.s	$fa7, $fa2, $ft1
	fmul.s	$ft2, $fa4, $fa6
	fmul.s	$ft2, $ft2, $fa3
	fmadd.s	$fa7, $fa7, $fa1, $ft2
	fneg.s	$ft1, $ft1
	fmul.s	$ft1, $fa0, $ft1
	fmadd.s	$fa3, $ft1, $fa3, $fa7
	fneg.s	$fa6, $fa6
	fmul.s	$fa2, $fa2, $fa6
	fmadd.s	$fa2, $fa2, $fa5, $fa3
	fmul.s	$fa0, $fa0, $ft0
	fmadd.s	$fa0, $fa0, $fa5, $fa2
	fneg.s	$fa2, $ft0
	fmul.s	$fa2, $fa4, $fa2
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.cule.s	$fcc0, $fa1, $fa0
	stptr.w	$zero, $fp, 14424
	bcnez	$fcc0, .LBB5_16
# %bb.15:
	ld.d	$a2, $s5, 32
	st.d	$a1, $s5, 0
	st.d	$a0, $s5, 8
	rotri.d	$a2, $a2, 32
	st.d	$a2, $s5, 32
	move	$a2, $a0
	b	.LBB5_17
.LBB5_16:
	move	$a2, $a1
	move	$a1, $a0
.LBB5_17:
	ori	$a4, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 8
	ld.d	$a2, $s5, 0
	ld.d	$a3, $s5, 24
	move	$s2, $a0
	ori	$a4, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 16
	ld.d	$a2, $s5, 8
	ld.d	$a3, $s5, 24
	move	$s3, $a0
	ori	$a4, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $s5, 16
	ld.d	$a3, $s5, 24
	move	$s4, $a0
	ori	$a4, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $fp, 14440
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB5_42
# %bb.18:
	ldptr.d	$s7, $fp, 14432
	ld.d	$a1, $s7, 80
	beqz	$a1, .LBB5_21
# %bb.19:                               # %.lr.ph.preheader.i
	fld.s	$fa1, $s7, 16
	fld.s	$fa0, $s7, 20
	fmul.s	$fa1, $fa1, $fa1
	.p2align	4, , 16
.LBB5_20:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a1, 16
	fld.s	$fa3, $a1, 20
	fmul.s	$fa2, $fa2, $fa2
	fcmp.cle.s	$fcc0, $fa0, $fa3
	fcmp.clt.s	$fcc1, $fa2, $fa1
	movcf2gr	$a2, $fcc0
	movcf2gr	$a3, $fcc1
	and	$a2, $a2, $a3
	maskeqz	$a3, $a1, $a2
	ld.d	$a1, $a1, 80
	masknez	$a4, $s7, $a2
	movgr2cf	$fcc0, $a2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fsel	$fa0, $fa0, $fa3, $fcc0
	or	$s7, $a3, $a4
	bnez	$a1, .LBB5_20
.LBB5_21:                               # %_ZN12gjkepa2_impl3EPA8findbestEv.exit
	move	$s1, $zero
	vld	$vr0, $s7, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	fld.s	$fs0, $s7, 16
	fld.s	$fs1, $s7, 20
	vld	$vr0, $s7, 24
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ld.d	$a1, $s7, 40
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.b	$zero, $s2, 88
	st.d	$s3, $s2, 48
	st.b	$zero, $s3, 88
	st.d	$s2, $s3, 48
	st.b	$zero, $s2, 89
	st.d	$s4, $s2, 56
	ori	$s8, $zero, 1
	st.b	$s8, $s4, 88
	st.d	$s2, $s4, 48
	st.b	$zero, $s2, 90
	st.d	$a0, $s2, 64
	ori	$s5, $zero, 2
	st.b	$s5, $a0, 88
	st.d	$s2, $a0, 48
	st.b	$s5, $s3, 89
	st.d	$a0, $s3, 56
	st.b	$s8, $a0, 90
	st.d	$s3, $a0, 64
	st.b	$s8, $s3, 90
	st.d	$s4, $s3, 64
	ori	$a1, $zero, 258
	st.h	$a1, $s4, 89
	st.d	$s3, $s4, 56
	st.d	$a0, $s4, 64
	st.b	$s5, $a0, 89
	st.d	$s4, $a0, 56
	st.w	$zero, $fp, 0
	addi.d	$s3, $fp, 84
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	lu12i.w	$a0, 232731
	ori	$a0, $a0, 1815
	movgr2fr.w	$fs2, $a0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2152
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB5_23
	.p2align	4, , 16
.LBB5_22:                               #   in Loop: Header=BB5_23 Depth=1
	ori	$a0, $zero, 255
	beq	$s1, $a0, .LBB5_51
.LBB5_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_26 Depth 2
                                        #     Child Loop BB5_39 Depth 2
	ldptr.w	$a0, $fp, 14424
	ori	$a1, $zero, 63
	bltu	$a1, $a0, .LBB5_47
# %bb.24:                               #   in Loop: Header=BB5_23 Depth=1
	st.w	$zero, $sp, 120
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 104
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 14424
	slli.d	$a0, $a0, 5
	add.d	$s2, $s3, $a0
	addi.w	$s1, $s1, 1
	fld.s	$fa0, $s7, 4
	fld.s	$fa1, $s7, 0
	fld.s	$fa2, $s7, 8
	st.b	$s1, $s7, 91
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a1, $s3, $a0
	st.d	$a2, $s2, 8
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.d	$a1, $s2, 24
	fld.s	$fa0, $s7, 0
	fld.s	$fa1, $s7, 4
	movgr2fr.w	$fa2, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s7, 8
	fld.s	$fa4, $s7, 16
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	movgr2fr.w	$fa1, $a1
	fmadd.s	$fa0, $fa3, $fa1, $fa0
	fsub.s	$fa0, $fa0, $fa4
	fcmp.cule.s	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB5_48
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB5_23 Depth=1
	move	$s6, $zero
	ori	$s4, $zero, 48
	.p2align	4, , 16
.LBB5_26:                               #   Parent Loop BB5_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a3, $s7, $s4
	add.d	$a0, $s7, $s6
	ld.bu	$a4, $a0, 88
	addi.d	$a5, $sp, 104
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE)
	jirl	$ra, $ra, 0
	bltu	$s8, $s6, .LBB5_28
# %bb.27:                               #   in Loop: Header=BB5_26 Depth=2
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 8
	bnez	$a0, .LBB5_26
.LBB5_28:                               #   in Loop: Header=BB5_23 Depth=1
	ld.w	$a1, $sp, 120
	sltu	$a1, $s5, $a1
	and	$a0, $a0, $a1
	beqz	$a0, .LBB5_49
# %bb.29:                               #   in Loop: Header=BB5_23 Depth=1
	ld.d	$a0, $sp, 104
	ld.d	$a1, $sp, 112
	st.b	$s5, $a0, 89
	st.d	$a1, $a0, 56
	st.b	$s8, $a1, 90
	st.d	$a0, $a1, 64
	ld.d	$a1, $s7, 80
	ld.d	$a0, $s7, 72
	beqz	$a1, .LBB5_31
# %bb.30:                               #   in Loop: Header=BB5_23 Depth=1
	st.d	$a0, $a1, 72
.LBB5_31:                               #   in Loop: Header=BB5_23 Depth=1
	beqz	$a0, .LBB5_33
# %bb.32:                               #   in Loop: Header=BB5_23 Depth=1
	ld.d	$a1, $s7, 80
	st.d	$a1, $a0, 80
.LBB5_33:                               #   in Loop: Header=BB5_23 Depth=1
	ldptr.d	$a0, $fp, 14432
	bne	$s7, $a0, .LBB5_35
# %bb.34:                               #   in Loop: Header=BB5_23 Depth=1
	ld.d	$a0, $s7, 80
	stptr.d	$a0, $fp, 14432
.LBB5_35:                               # %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit157
                                        #   in Loop: Header=BB5_23 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a1, $fp, $a0
	st.d	$zero, $s7, 72
	ldptr.d	$a0, $fp, 14448
	addi.d	$a1, $a1, -1
	stptr.w	$a1, $fp, 14440
	st.d	$a0, $s7, 80
	beqz	$a0, .LBB5_37
# %bb.36:                               #   in Loop: Header=BB5_23 Depth=1
	st.d	$s7, $a0, 72
.LBB5_37:                               # %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit159
                                        #   in Loop: Header=BB5_23 Depth=1
	stptr.d	$s7, $fp, 14448
	ldptr.d	$s7, $fp, 14432
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2168
	ldx.w	$a1, $fp, $a0
	ld.d	$a0, $s7, 80
	addi.d	$a1, $a1, 1
	stptr.w	$a1, $fp, 14456
	beqz	$a0, .LBB5_40
# %bb.38:                               # %.lr.ph.preheader.i163
                                        #   in Loop: Header=BB5_23 Depth=1
	fld.s	$fa1, $s7, 16
	fld.s	$fa0, $s7, 20
	fmul.s	$fa1, $fa1, $fa1
	.p2align	4, , 16
.LBB5_39:                               # %.lr.ph.i164
                                        #   Parent Loop BB5_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $a0, 16
	fld.s	$fa3, $a0, 20
	fmul.s	$fa2, $fa2, $fa2
	fcmp.cle.s	$fcc0, $fa0, $fa3
	fcmp.clt.s	$fcc1, $fa2, $fa1
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	and	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a1
	ld.d	$a0, $a0, 80
	masknez	$a3, $s7, $a1
	movgr2cf	$fcc0, $a1
	fsel	$fa1, $fa1, $fa2, $fcc0
	fsel	$fa0, $fa0, $fa3, $fcc0
	or	$s7, $a2, $a3
	bnez	$a0, .LBB5_39
.LBB5_40:                               # %_ZN12gjkepa2_impl3EPA8findbestEv.exit177
                                        #   in Loop: Header=BB5_23 Depth=1
	fld.s	$fa0, $s7, 20
	fcmp.cult.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB5_22
# %bb.41:                               #   in Loop: Header=BB5_23 Depth=1
	vld	$vr1, $s7, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	fld.s	$fs0, $s7, 16
	vld	$vr1, $s7, 24
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	ld.d	$a0, $s7, 40
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	fmov.s	$fs1, $fa0
	b	.LBB5_22
.LBB5_42:                               # %.thread351
	fld.s	$fa1, $s1, 4
	fld.s	$fa0, $s1, 0
	fld.s	$fa2, $s1, 8
	ori	$a0, $zero, 8
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	movgr2fr.w	$fa4, $zero
	fcmp.cule.s	$fcc0, $fa3, $fa4
	st.w	$a0, $fp, 0
	bcnez	$fcc0, .LBB5_44
# %bb.43:
	fneg.s	$fa2, $fa2
	fneg.s	$fa1, $fa1
	fneg.s	$fa0, $fa0
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa0, $fa3, $fa0
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa2, $fa3, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 64
	st.d	$a1, $fp, 72
	b	.LBB5_45
.LBB5_44:
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	vst	$vr0, $fp, 64
.LBB5_45:
	ld.d	$a0, $s5, 0
	st.w	$zero, $fp, 80
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 56
	st.d	$a0, $fp, 8
	lu12i.w	$a0, 260096
	st.w	$a0, $fp, 40
	ori	$a0, $zero, 8
.LBB5_46:
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB5_47:
	ori	$a0, $zero, 6
	b	.LBB5_50
.LBB5_48:
	ori	$a0, $zero, 7
	b	.LBB5_50
.LBB5_49:
	ori	$a0, $zero, 4
.LBB5_50:                               # %.loopexit
	st.w	$a0, $fp, 0
.LBB5_51:                               # %.loopexit
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vreplvei.w	$vr0, $vr2, 0
	fmul.s	$fa0, $fa0, $fs0
	vreplvei.w	$vr1, $vr2, 1
	fmul.s	$fa1, $fa1, $fs0
	vst	$vr2, $fp, 64
	fst.s	$fs0, $fp, 80
	vld	$vr11, $sp, 48                  # 16-byte Folded Reload
	vpickve2gr.d	$a0, $vr11, 1
	fld.s	$fa3, $a0, 16
	fld.s	$fa4, $a0, 20
	vreplvei.w	$vr2, $vr2, 2
	fmul.s	$fa2, $fa2, $fs0
	fsub.s	$fa3, $fa3, $fa0
	fsub.s	$fa4, $fa4, $fa1
	fld.s	$fa5, $a0, 24
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	fld.s	$fa6, $a3, 16
	fld.s	$fa7, $a3, 20
	fld.s	$ft0, $a3, 24
	fsub.s	$fa5, $fa5, $fa2
	fsub.s	$fa6, $fa6, $fa0
	fsub.s	$fa7, $fa7, $fa1
	fsub.s	$ft0, $ft0, $fa2
	fneg.s	$ft1, $fa7
	fmul.s	$ft1, $fa5, $ft1
	fmadd.s	$ft1, $fa4, $ft0, $ft1
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $fa3, $ft0
	fmadd.s	$fa5, $fa5, $fa6, $ft0
	fneg.s	$fa6, $fa6
	fmul.s	$fa4, $fa4, $fa6
	fmadd.s	$fa3, $fa3, $fa7, $fa4
	fmul.s	$fa4, $fa5, $fa5
	fmadd.s	$fa4, $ft1, $ft1, $fa4
	fmadd.s	$fa3, $fa3, $fa3, $fa4
	fsqrt.s	$fa3, $fa3
	fst.s	$fa3, $fp, 40
	fld.s	$fa4, $a3, 16
	fld.s	$fa5, $a3, 20
	fsub.s	$fa4, $fa4, $fa0
	fsub.s	$fa5, $fa5, $fa1
	fld.s	$fa6, $a3, 24
	vpickve2gr.d	$a1, $vr11, 0
	fld.s	$fa7, $a1, 16
	fld.s	$ft0, $a1, 20
	fld.s	$ft1, $a1, 24
	fsub.s	$fa6, $fa6, $fa2
	fsub.s	$fa7, $fa7, $fa0
	fsub.s	$ft0, $ft0, $fa1
	fsub.s	$ft1, $ft1, $fa2
	fneg.s	$ft2, $ft0
	fmul.s	$ft2, $fa6, $ft2
	fmadd.s	$ft2, $fa5, $ft1, $ft2
	fneg.s	$ft1, $ft1
	fmul.s	$ft1, $fa4, $ft1
	fmadd.s	$fa6, $fa6, $fa7, $ft1
	ori	$a2, $zero, 3
	st.w	$a2, $fp, 56
	fneg.s	$fa7, $fa7
	fmul.s	$fa5, $fa5, $fa7
	fmadd.s	$fa4, $fa4, $ft0, $fa5
	fmul.s	$fa5, $fa6, $fa6
	fmadd.s	$fa5, $ft2, $ft2, $fa5
	fmadd.s	$fa4, $fa4, $fa4, $fa5
	fsqrt.s	$fa4, $fa4
	fst.s	$fa4, $fp, 44
	fld.s	$fa5, $a1, 16
	fld.s	$fa6, $a1, 20
	st.d	$a3, $fp, 24
	vst	$vr11, $fp, 8
	fsub.s	$fa5, $fa5, $fa0
	fsub.s	$fa6, $fa6, $fa1
	fld.s	$fa7, $a1, 24
	fld.s	$ft0, $a0, 16
	fld.s	$ft1, $a0, 20
	fld.s	$ft2, $a0, 24
	fsub.s	$fa7, $fa7, $fa2
	fsub.s	$fa0, $ft0, $fa0
	fsub.s	$fa1, $ft1, $fa1
	fsub.s	$fa2, $ft2, $fa2
	fneg.s	$ft0, $fa1
	fmul.s	$ft0, $fa7, $ft0
	fmadd.s	$ft0, $fa6, $fa2, $ft0
	fneg.s	$fa2, $fa2
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa7, $fa0, $fa2
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa6, $fa0
	fmadd.s	$fa0, $fa5, $fa1, $fa0
	fmul.s	$fa1, $fa2, $fa2
	fmadd.s	$fa1, $ft0, $ft0, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fsqrt.s	$fa0, $fa0
	fadd.s	$fa1, $fa3, $fa4
	fadd.s	$fa1, $fa1, $fa0
	fdiv.s	$fa2, $fa3, $fa1
	fst.s	$fa2, $fp, 40
	fdiv.s	$fa2, $fa4, $fa1
	ld.w	$a0, $fp, 0
	fst.s	$fa2, $fp, 44
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 48
	b	.LBB5_46
.Lfunc_end5:
	.size	_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3, .Lfunc_end5-_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE
.LCPI6_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE
	.p2align	5
	.type	_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE,@function
_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE: # @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -928
	.cfi_def_cfa_offset 928
	st.d	$ra, $sp, 920                   # 8-byte Folded Spill
	st.d	$fp, $sp, 912                   # 8-byte Folded Spill
	st.d	$s0, $sp, 904                   # 8-byte Folded Spill
	st.d	$s1, $sp, 896                   # 8-byte Folded Spill
	st.d	$s2, $sp, 888                   # 8-byte Folded Spill
	st.d	$s3, $sp, 880                   # 8-byte Folded Spill
	st.d	$s4, $sp, 872                   # 8-byte Folded Spill
	st.d	$s5, $sp, 864                   # 8-byte Folded Spill
	st.d	$s6, $sp, 856                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 848                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 840                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 832                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 824                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 816                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 808                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 800                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 792                  # 8-byte Folded Spill
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
	move	$fp, $a3
	move	$s1, $a2
	move	$s0, $a1
	fmov.s	$fs0, $fa0
	move	$s2, $a0
	addi.d	$a0, $sp, 560
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTV13btSphereShape)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV13btSphereShape)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 560
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 568
	fst.s	$fs0, $sp, 600
	fst.s	$fs0, $sp, 616
	lu12i.w	$a0, 260096
	st.w	$a0, $sp, 496
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 500
	vld	$vr0, $s2, 0
	st.w	$a0, $sp, 516
	vst	$vr1, $sp, 520
	st.d	$a0, $sp, 536
	vst	$vr0, $sp, 544
	addi.d	$a2, $sp, 560
	addi.d	$a3, $sp, 496
	addi.d	$a5, $sp, 624
	move	$a0, $s0
	move	$a1, $s1
	move	$a4, $fp
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 472
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI6_0)
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 488
	st.w	$zero, $sp, 192
	vst	$vr0, $sp, 768
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 624
	addi.d	$a2, $sp, 768
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	lu12i.w	$a1, 522239
	ori	$a1, $a1, 4095
	ori	$a2, $zero, 1
	movgr2fr.w	$fs0, $a1
	beq	$a0, $a2, .LBB6_12
# %bb.2:
	bnez	$a0, .LBB6_21
# %bb.3:                                # %.preheader
	ld.d	$a1, $sp, 480
	ld.w	$a0, $a1, 48
	beqz	$a0, .LBB6_17
# %bb.4:                                # %.lr.ph
	move	$s4, $zero
	move	$s5, $zero
	movgr2fr.w	$fs3, $zero
	ori	$s6, $zero, 32
	fmov.s	$fs5, $fs3
	fmov.s	$fs4, $fs3
	fmov.s	$fs0, $fs3
	fmov.s	$fs2, $fs3
	fmov.s	$fs1, $fs3
	.p2align	4, , 16
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 624
	ld.d	$a2, $sp, 752
	ld.d	$a3, $sp, 760
	andi	$a4, $a2, 1
	add.d	$a0, $a0, $a3
	beqz	$a4, .LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a3, $a0, 0
	add.d	$a2, $a3, $a2
	ld.d	$a2, $a2, -1
.LBB6_7:                                # %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i
                                        #   in Loop: Header=BB6_5 Depth=1
.Ltmp6:                                 # EH_LABEL
	fldx.s	$fs6, $a1, $s6
	ldx.d	$a1, $a1, $s4
	jirl	$ra, $a2, 0
.Ltmp7:                                 # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB6_5 Depth=1
	move	$s3, $a0
	move	$s2, $a1
	ld.d	$a0, $sp, 632
	ld.d	$a2, $sp, 752
	ld.d	$a1, $sp, 760
	andi	$a3, $a2, 1
	add.d	$a0, $a0, $a1
	beqz	$a3, .LBB6_10
# %bb.9:                                #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a1, $a0, 0
	add.d	$a1, $a1, $a2
	ld.d	$a2, $a1, -1
.LBB6_10:                               # %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a1, $sp, 480
	ldx.d	$a1, $a1, $s4
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 8
	fneg.s	$fa0, $fa0
	fld.s	$fa3, $sp, 644
	fneg.s	$fa1, $fa1
	fneg.s	$fa2, $fa2
	fld.s	$fa4, $sp, 640
	fmul.s	$fa3, $fa3, $fa1
	fld.s	$fa5, $sp, 648
	fld.s	$fa6, $sp, 660
	fld.s	$fa7, $sp, 656
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmul.s	$fa4, $fa6, $fa1
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fld.s	$fa5, $sp, 664
	fld.s	$fa6, $sp, 676
	fld.s	$fa7, $sp, 672
	fld.s	$ft0, $sp, 680
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmul.s	$fa1, $fa6, $fa1
	fmadd.s	$fa0, $fa7, $fa0, $fa1
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a3, $fa4
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $fa0
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $sp, 768
	st.d	$a3, $sp, 776
.Ltmp9:                                 # EH_LABEL
	addi.d	$a1, $sp, 768
	jirl	$ra, $a2, 0
.Ltmp10:                                # EH_LABEL
# %bb.11:                               #   in Loop: Header=BB6_5 Depth=1
	movgr2fr.w	$fa0, $s3
	srli.d	$a2, $s3, 32
	movgr2fr.w	$fa1, $a2
	movgr2fr.w	$fa2, $s2
	fmul.s	$fa0, $fs6, $fa0
	fmul.s	$fa1, $fs6, $fa1
	fmul.s	$fa2, $fs6, $fa2
	fadd.s	$fs4, $fs4, $fa0
	fadd.s	$fs5, $fs5, $fa1
	fadd.s	$fs3, $fs3, $fa2
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	fld.s	$fa1, $sp, 692
	movgr2fr.w	$fa2, $a0
	fld.s	$fa3, $sp, 688
	movgr2fr.w	$fa4, $a1
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa5, $sp, 696
	fmadd.s	$fa1, $fa3, $fa0, $fa1
	fld.s	$fa3, $sp, 736
	fld.s	$fa6, $sp, 708
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fld.s	$fa5, $sp, 704
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa3, $fa6, $fa2
	fld.s	$fa6, $sp, 724
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fld.s	$fa5, $sp, 720
	fld.s	$fa7, $sp, 712
	fmul.s	$fa2, $fa6, $fa2
	fld.s	$fa6, $sp, 740
	fmadd.s	$fa0, $fa5, $fa0, $fa2
	fld.s	$fa2, $sp, 728
	fld.s	$fa5, $sp, 744
	fmadd.s	$fa3, $fa7, $fa4, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fadd.s	$fa0, $fa5, $fa0
	fmul.s	$fa1, $fs6, $fa1
	fmul.s	$fa2, $fs6, $fa3
	ld.d	$a1, $sp, 480
	fmul.s	$fa0, $fs6, $fa0
	fadd.s	$fs1, $fs1, $fa1
	fadd.s	$fs2, $fs2, $fa2
	ld.wu	$a0, $a1, 48
	fadd.s	$fs0, $fs0, $fa0
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 8
	bltu	$s5, $a0, .LBB6_5
	b	.LBB6_18
.LBB6_12:
.Ltmp3:                                 # EH_LABEL
	addi.d	$a4, $sp, 176
	addi.d	$a2, $sp, 560
	addi.d	$a3, $sp, 496
	ori	$a6, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.13:
	beqz	$a0, .LBB6_21
# %bb.14:
	fld.s	$fa0, $fp, 4
	fld.s	$fa1, $fp, 20
	fld.s	$fa2, $fp, 8
	fld.s	$fa3, $fp, 24
	fld.s	$fa4, $fp, 12
	fld.s	$fa5, $fp, 28
	fsub.s	$fa1, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa4, $fa5
	fmul.s	$fa0, $fa2, $fa2
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa0, $fa3, $fa3, $fa0
	fsqrt.s	$fa0, $fa0
	lu12i.w	$a0, 212992
	movgr2fr.w	$fa4, $a0
	fcmp.cult.s	$fcc0, $fa0, $fa4
	bcnez	$fcc0, .LBB6_16
# %bb.15:
	frecip.s	$fa4, $fa0
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa3, $fa3, $fa4
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 36
	st.d	$a1, $fp, 44
.LBB6_16:
	fneg.s	$fs0, $fa0
	b	.LBB6_21
.LBB6_17:
	movgr2fr.w	$fs1, $zero
	fmov.s	$fs2, $fs1
	fmov.s	$fs0, $fs1
	fmov.s	$fs4, $fs1
	fmov.s	$fs5, $fs1
	fmov.s	$fs3, $fs1
.LBB6_18:                               # %._crit_edge
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s1, 8
	fld.s	$fa3, $s1, 48
	fmul.s	$fa0, $fs5, $fa0
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	fmadd.s	$fa0, $fa2, $fs3, $fa0
	fadd.s	$fs6, $fa3, $fa0
	fld.s	$fa0, $s1, 20
	fld.s	$fa1, $s1, 16
	fld.s	$fa2, $s1, 24
	fld.s	$fa3, $s1, 52
	fmul.s	$fa0, $fs5, $fa0
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	fmadd.s	$fa0, $fa2, $fs3, $fa0
	fadd.s	$fs7, $fa3, $fa0
	fld.s	$fa0, $s1, 36
	fld.s	$fa1, $s1, 32
	fld.s	$fa2, $s1, 40
	fld.s	$fa3, $s1, 56
	fmul.s	$fa0, $fs5, $fa0
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	fmadd.s	$fa0, $fa2, $fs3, $fa0
	fadd.s	$fs3, $fa3, $fa0
	movfr2gr.s	$a0, $fs6
	movfr2gr.s	$a1, $fs7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fs3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 4
	st.d	$a1, $fp, 12
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $s1, 0
	fmul.s	$fa0, $fs2, $fa0
	fld.s	$fa2, $s1, 8
	fmadd.s	$fa0, $fa1, $fs1, $fa0
	fld.s	$fa1, $s1, 48
	fld.s	$fa3, $s1, 20
	fmadd.s	$fa0, $fa2, $fs0, $fa0
	fld.s	$fa2, $s1, 16
	fadd.s	$fs4, $fa1, $fa0
	fmul.s	$fa0, $fs2, $fa3
	fld.s	$fa1, $s1, 36
	fmadd.s	$fa0, $fa2, $fs1, $fa0
	fld.s	$fa2, $s1, 32
	fld.s	$fa3, $s1, 24
	fmul.s	$fa1, $fs2, $fa1
	fld.s	$fa4, $s1, 52
	fmadd.s	$fa1, $fa2, $fs1, $fa1
	fld.s	$fa2, $s1, 40
	fld.s	$fa5, $s1, 56
	fmadd.s	$fa0, $fa3, $fs0, $fa0
	fadd.s	$fs1, $fa4, $fa0
	fmadd.s	$fa0, $fa2, $fs0, $fa1
	fadd.s	$fs2, $fa5, $fa0
	movfr2gr.s	$a0, $fs4
	movfr2gr.s	$a1, $fs1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fs2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 20
	st.d	$a1, $fp, 28
.Ltmp12:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.19:
.Ltmp14:                                # EH_LABEL
	fmov.s	$fs0, $fa0
	addi.d	$a0, $sp, 560
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.20:
	fsub.s	$fa1, $fs4, $fs6
	fsub.s	$fa2, $fs1, $fs7
	fsub.s	$fa3, $fs2, $fs3
	fadd.s	$fa0, $fs0, $fa0
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	fsqrt.s	$fa5, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa3, $fa3, $fa4
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 36
	st.d	$a1, $fp, 44
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $fp, 4
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa6, $fp, 8
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $fp, 12
	fst.s	$fa1, $fp, 4
	fadd.s	$fa1, $fa2, $fa6
	fst.s	$fa1, $fp, 8
	fadd.s	$fa1, $fa3, $fa4
	fst.s	$fa1, $fp, 12
	fsub.s	$fs0, $fa5, $fa0
.LBB6_21:
	addi.d	$a0, $sp, 560
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs7, $sp, 792                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 800                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 808                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 816                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 824                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 832                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 840                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 848                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 904                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 912                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 920                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 928
	ret
.LBB6_22:
.Ltmp5:                                 # EH_LABEL
	b	.LBB6_27
.LBB6_23:
.Ltmp16:                                # EH_LABEL
	b	.LBB6_27
.LBB6_24:
.Ltmp2:                                 # EH_LABEL
	b	.LBB6_27
.LBB6_25:
.Ltmp8:                                 # EH_LABEL
	b	.LBB6_27
.LBB6_26:
.Ltmp11:                                # EH_LABEL
.LBB6_27:
	move	$fp, $a0
.Ltmp17:                                # EH_LABEL
	addi.d	$a0, $sp, 560
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.28:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_29:
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE, .Lfunc_end6-_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
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
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp15-.Ltmp12                #   Call between .Ltmp12 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp17-.Ltmp15                #   Call between .Ltmp15 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Lfunc_end6-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end6
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
.Lfunc_end7:
	.size	__clang_call_terminate, .Lfunc_end7-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE # -- Begin function _ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE
	.p2align	5
	.type	_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE,@function
_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE: # @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	pcaddu18i	$ra, %call36(_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_2
# %bb.1:
	ori	$a0, $zero, 1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB8_2:
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	move	$a6, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb)
	jr	$t8
.Lfunc_end8:
	.size	_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE, .Lfunc_end8-_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj,"axG",@progbits,_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj,comdat
	.weak	_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj # -- Begin function _ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj
	.p2align	5
	.type	_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj,@function
_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj: # @_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 56, -8
	.cfi_offset 57, -16
	.cfi_offset 58, -24
	fld.s	$ft0, $a0, 0
	fld.s	$ft15, $a1, 0
	fld.s	$ft1, $a0, 4
	fld.s	$fs0, $a1, 4
	fsub.s	$ft6, $ft0, $ft15
	fsub.s	$ft7, $ft1, $fs0
	fld.s	$fa0, $a0, 8
	fld.s	$fs1, $a1, 8
	fld.s	$ft12, $a2, 0
	fld.s	$ft13, $a2, 4
	fld.s	$ft3, $a2, 8
	fsub.s	$ft8, $fa0, $fs1
	fsub.s	$fa1, $ft15, $ft12
	fsub.s	$fa2, $fs0, $ft13
	fsub.s	$fa3, $fs1, $ft3
	fneg.s	$fa4, $fa2
	fmul.s	$fa4, $ft8, $fa4
	fmadd.s	$fa4, $ft7, $fa3, $fa4
	fneg.s	$fa5, $fa3
	fmul.s	$fa5, $ft6, $fa5
	fmadd.s	$fa5, $ft8, $fa1, $fa5
	fneg.s	$fa6, $fa1
	fmul.s	$fa6, $ft7, $fa6
	fmadd.s	$fa6, $ft6, $fa2, $fa6
	fmul.s	$fa7, $fa5, $fa5
	fmadd.s	$fa7, $fa4, $fa4, $fa7
	fmadd.s	$fa7, $fa6, $fa6, $fa7
	movgr2fr.w	$ft14, $zero
	fcmp.cule.s	$fcc0, $fa7, $ft14
	bcnez	$fcc0, .LBB9_6
# %bb.1:                                # %.preheader
	fneg.s	$ft5, $fa5
	fneg.s	$ft4, $fa6
	fneg.s	$ft2, $fa4
	fmul.s	$ft9, $ft8, $ft5
	fmadd.s	$ft9, $ft7, $fa6, $ft9
	fmul.s	$ft10, $ft6, $ft4
	fmadd.s	$ft8, $ft8, $fa4, $ft10
	fmul.s	$ft7, $ft7, $ft2
	fmadd.s	$ft6, $ft6, $fa5, $ft7
	fmul.s	$ft7, $ft1, $ft8
	fmadd.s	$ft7, $ft0, $ft9, $ft7
	fmadd.s	$ft6, $fa0, $ft6, $ft7
	fcmp.cule.s	$fcc0, $ft6, $ft14
	bcnez	$fcc0, .LBB9_7
# %bb.2:
	fsub.s	$ft9, $ft15, $ft0
	fsub.s	$ft10, $fs0, $ft1
	fsub.s	$ft11, $fs1, $fa0
	fmul.s	$ft6, $ft10, $ft10
	fmadd.s	$ft6, $ft9, $ft9, $ft6
	fmadd.s	$ft7, $ft11, $ft11, $ft6
	movgr2fr.w	$ft6, $zero
	fcmp.cule.s	$fcc0, $ft7, $ft6
	bcnez	$fcc0, .LBB9_8
# %bb.3:
	fmul.s	$ft8, $ft1, $ft10
	fmadd.s	$ft8, $ft0, $ft9, $ft8
	fnmadd.s	$ft8, $fa0, $ft11, $ft8
	fdiv.s	$ft8, $ft8, $ft7
	vldi	$vr15, -1168
	fcmp.cult.s	$fcc0, $ft8, $ft7
	bceqz	$fcc0, .LBB9_9
# %bb.4:
	movgr2fr.w	$ft7, $zero
	fcmp.cult.s	$fcc0, $ft7, $ft8
	bceqz	$fcc0, .LBB9_10
# %bb.5:
	vldi	$vr14, -1168
	fsub.s	$ft6, $ft6, $ft8
	fmul.s	$ft7, $ft9, $ft8
	fmul.s	$ft9, $ft10, $ft8
	fmul.s	$ft10, $ft11, $ft8
	fadd.s	$ft7, $ft0, $ft7
	fadd.s	$ft9, $ft1, $ft9
	fadd.s	$ft10, $fa0, $ft10
	fmul.s	$ft9, $ft9, $ft9
	fmadd.s	$ft7, $ft7, $ft7, $ft9
	fmadd.s	$ft11, $ft10, $ft10, $ft7
	ori	$a5, $zero, 3
	ori	$a6, $zero, 2
	fmov.s	$ft7, $ft8
	b	.LBB9_11
.LBB9_6:
	vldi	$vr0, -1040
	b	.LBB9_35
.LBB9_7:
	move	$a5, $zero
	vldi	$vr19, -1040
	fmov.s	$ft8, $ft3
	fmov.s	$ft10, $ft13
	fmov.s	$ft9, $ft12
	fmov.s	$ft6, $ft14
	fmov.s	$ft7, $ft14
	b	.LBB9_12
.LBB9_8:
	move	$a6, $zero
	move	$a5, $zero
	vldi	$vr19, -1040
	fmov.s	$ft7, $ft6
	b	.LBB9_11
.LBB9_9:
	fmul.s	$ft7, $fs0, $fs0
	fmadd.s	$ft7, $ft15, $ft15, $ft7
	fmadd.s	$ft11, $fs1, $fs1, $ft7
	ori	$a6, $zero, 2
	vldi	$vr15, -1168
	ori	$a5, $zero, 2
	b	.LBB9_11
.LBB9_10:
	move	$a6, $zero
	fmul.s	$ft6, $ft1, $ft1
	fmadd.s	$ft6, $ft0, $ft0, $ft6
	fmadd.s	$ft11, $fa0, $fa0, $ft6
	ori	$a5, $zero, 1
	vldi	$vr14, -1168
.LBB9_11:                               # %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit
	fst.s	$ft6, $a3, 0
	fst.s	$ft7, $a3, 4
	st.w	$zero, $a3, 8
	fld.s	$ft15, $a1, 0
	fld.s	$fs0, $a1, 4
	fld.s	$fs1, $a1, 8
	fld.s	$ft9, $a2, 0
	fld.s	$ft10, $a2, 4
	fld.s	$ft8, $a2, 8
	andi	$a7, $a5, 1
	or	$a6, $a7, $a6
	st.w	$a6, $a4, 0
.LBB9_12:
	fsub.s	$ft0, $ft12, $ft0
	fsub.s	$ft1, $ft13, $ft1
	fmul.s	$ft12, $fa3, $ft5
	fmadd.s	$ft12, $fa2, $fa6, $ft12
	fmul.s	$ft13, $fa1, $ft4
	fmadd.s	$ft13, $fa3, $fa4, $ft13
	fmul.s	$fs2, $fa2, $ft2
	fmadd.s	$fs2, $fa1, $fa5, $fs2
	fmul.s	$ft13, $fs0, $ft13
	fmadd.s	$ft12, $ft15, $ft12, $ft13
	fmadd.s	$ft12, $fs1, $fs2, $ft12
	fcmp.cule.s	$fcc0, $ft12, $ft14
	fsub.s	$ft3, $ft3, $fa0
	bcnez	$fcc0, .LBB9_21
# %bb.13:
	fsub.s	$fa0, $ft9, $ft15
	fsub.s	$ft13, $ft10, $fs0
	fsub.s	$ft14, $ft8, $fs1
	fmul.s	$ft12, $ft13, $ft13
	fmadd.s	$ft12, $fa0, $fa0, $ft12
	fmadd.s	$fs2, $ft14, $ft14, $ft12
	movgr2fr.w	$ft12, $zero
	fcmp.cule.s	$fcc0, $fs2, $ft12
	bcnez	$fcc0, .LBB9_17
# %bb.14:
	fmul.s	$ft6, $fs0, $ft13
	fmadd.s	$ft6, $ft15, $fa0, $ft6
	fnmadd.s	$ft6, $fs1, $ft14, $ft6
	fdiv.s	$fs2, $ft6, $fs2
	vldi	$vr14, -1168
	fcmp.cult.s	$fcc0, $fs2, $ft6
	bceqz	$fcc0, .LBB9_18
# %bb.15:
	movgr2fr.w	$ft7, $zero
	fcmp.cult.s	$fcc0, $ft7, $fs2
	bceqz	$fcc0, .LBB9_19
# %bb.16:
	fsub.s	$ft6, $ft6, $fs2
	fmul.s	$fa0, $fa0, $fs2
	fmul.s	$ft7, $ft13, $fs2
	fmul.s	$ft13, $ft14, $fs2
	fadd.s	$fa0, $ft15, $fa0
	fadd.s	$ft7, $fs0, $ft7
	fadd.s	$ft13, $fs1, $ft13
	fmul.s	$ft7, $ft7, $ft7
	fmadd.s	$fa0, $fa0, $fa0, $ft7
	fmadd.s	$fa0, $ft13, $ft13, $fa0
	ori	$a5, $zero, 3
	fmov.s	$ft7, $fs2
	fcmp.clt.s	$fcc0, $ft11, $ft12
	bceqz	$fcc0, .LBB9_20
	b	.LBB9_22
.LBB9_17:
	vldi	$vr0, -1040
	fcmp.clt.s	$fcc0, $ft11, $ft12
	bceqz	$fcc0, .LBB9_20
	b	.LBB9_22
.LBB9_18:
	fmul.s	$fa0, $ft10, $ft10
	fmadd.s	$fa0, $ft9, $ft9, $fa0
	fmadd.s	$fa0, $ft8, $ft8, $fa0
	ori	$a5, $zero, 2
	vldi	$vr15, -1168
	fmov.s	$ft6, $ft12
	fcmp.clt.s	$fcc0, $ft11, $ft12
	bceqz	$fcc0, .LBB9_20
	b	.LBB9_22
.LBB9_19:
	fmul.s	$fa0, $fs0, $fs0
	fmadd.s	$fa0, $ft15, $ft15, $fa0
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	ori	$a5, $zero, 1
	fcmp.clt.s	$fcc0, $ft11, $ft12
	bcnez	$fcc0, .LBB9_22
.LBB9_20:                               # %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1
	fcmp.cule.s	$fcc0, $ft11, $fa0
	bceqz	$fcc0, .LBB9_22
.LBB9_21:
	fmov.s	$fa0, $ft11
	b	.LBB9_23
.LBB9_22:
	fst.s	$ft6, $a3, 4
	fst.s	$ft7, $a3, 8
	st.w	$zero, $a3, 0
	fld.s	$ft9, $a2, 0
	fld.s	$ft10, $a2, 4
	fld.s	$ft8, $a2, 8
	slli.d	$a6, $a5, 1
	st.w	$a6, $a4, 0
.LBB9_23:
	fmul.s	$ft5, $ft3, $ft5
	fmadd.s	$ft5, $ft1, $fa6, $ft5
	fmul.s	$ft4, $ft0, $ft4
	fmadd.s	$ft4, $ft3, $fa4, $ft4
	fmul.s	$ft2, $ft1, $ft2
	fmadd.s	$ft2, $ft0, $fa5, $ft2
	fmul.s	$ft4, $ft10, $ft4
	fmadd.s	$ft4, $ft9, $ft5, $ft4
	fmadd.s	$ft4, $ft8, $ft2, $ft4
	movgr2fr.w	$ft2, $zero
	fcmp.cule.s	$fcc0, $ft4, $ft2
	bcnez	$fcc0, .LBB9_32
# %bb.24:
	fld.s	$ft13, $a0, 0
	fld.s	$ft14, $a0, 4
	fld.s	$ft15, $a0, 8
	fsub.s	$ft4, $ft13, $ft9
	fsub.s	$ft5, $ft14, $ft10
	fsub.s	$ft11, $ft15, $ft8
	fmul.s	$ft12, $ft5, $ft5
	fmadd.s	$ft12, $ft4, $ft4, $ft12
	fmadd.s	$ft12, $ft11, $ft11, $ft12
	fcmp.cule.s	$fcc0, $ft12, $ft2
	bcnez	$fcc0, .LBB9_28
# %bb.25:
	fmul.s	$ft6, $ft10, $ft5
	fmadd.s	$ft6, $ft9, $ft4, $ft6
	fnmadd.s	$ft6, $ft8, $ft11, $ft6
	fdiv.s	$ft12, $ft6, $ft12
	vldi	$vr14, -1168
	fcmp.cult.s	$fcc0, $ft12, $ft6
	bceqz	$fcc0, .LBB9_29
# %bb.26:
	movgr2fr.w	$ft7, $zero
	fcmp.cult.s	$fcc0, $ft7, $ft12
	bceqz	$fcc0, .LBB9_30
# %bb.27:
	fsub.s	$ft6, $ft6, $ft12
	fmul.s	$ft4, $ft4, $ft12
	fmul.s	$ft5, $ft5, $ft12
	fmul.s	$ft7, $ft11, $ft12
	fadd.s	$ft4, $ft9, $ft4
	fadd.s	$ft5, $ft10, $ft5
	fadd.s	$ft7, $ft8, $ft7
	fmul.s	$ft5, $ft5, $ft5
	fmadd.s	$ft4, $ft4, $ft4, $ft5
	fmadd.s	$ft4, $ft7, $ft7, $ft4
	ori	$a5, $zero, 3
	fmov.s	$ft7, $ft12
	fcmp.clt.s	$fcc0, $fa0, $ft2
	bceqz	$fcc0, .LBB9_31
	b	.LBB9_34
.LBB9_28:
	vldi	$vr12, -1040
	fcmp.clt.s	$fcc0, $fa0, $ft2
	bceqz	$fcc0, .LBB9_31
	b	.LBB9_34
.LBB9_29:
	fmul.s	$ft4, $ft14, $ft14
	fmadd.s	$ft4, $ft13, $ft13, $ft4
	fmadd.s	$ft4, $ft15, $ft15, $ft4
	ori	$a5, $zero, 2
	vldi	$vr15, -1168
	fmov.s	$ft6, $ft2
	fcmp.clt.s	$fcc0, $fa0, $ft2
	bceqz	$fcc0, .LBB9_31
	b	.LBB9_34
.LBB9_30:
	fmul.s	$ft4, $ft10, $ft10
	fmadd.s	$ft4, $ft9, $ft9, $ft4
	fmadd.s	$ft4, $ft8, $ft8, $ft4
	ori	$a5, $zero, 1
	fcmp.clt.s	$fcc0, $fa0, $ft2
	bcnez	$fcc0, .LBB9_34
.LBB9_31:                               # %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2
	fcmp.cule.s	$fcc0, $fa0, $ft4
	bceqz	$fcc0, .LBB9_34
.LBB9_32:
	fcmp.cule.s	$fcc0, $ft2, $fa0
	bcnez	$fcc0, .LBB9_35
.LBB9_33:
	fld.s	$fa0, $a0, 4
	fld.s	$ft2, $a0, 0
	fld.s	$ft4, $a0, 8
	fmul.s	$fa0, $fa5, $fa0
	fmadd.s	$fa0, $ft2, $fa4, $fa0
	fmadd.s	$fa0, $ft4, $fa6, $fa0
	fsqrt.s	$ft2, $fa7
	fdiv.s	$fa0, $fa0, $fa7
	fmul.s	$fa4, $fa4, $fa0
	fmul.s	$fa5, $fa5, $fa0
	fmul.s	$fa6, $fa6, $fa0
	fmul.s	$fa0, $fa5, $fa5
	fmadd.s	$fa0, $fa4, $fa4, $fa0
	fmadd.s	$fa0, $fa6, $fa6, $fa0
	fld.s	$fa7, $a1, 0
	fld.s	$ft4, $a1, 4
	fld.s	$ft5, $a1, 8
	ori	$a0, $zero, 7
	fsub.s	$fa7, $fa7, $fa4
	fsub.s	$ft4, $ft4, $fa5
	fsub.s	$ft5, $ft5, $fa6
	fneg.s	$ft6, $ft4
	fmul.s	$ft6, $fa3, $ft6
	fmadd.s	$ft6, $fa2, $ft5, $ft6
	fneg.s	$ft5, $ft5
	fmul.s	$ft5, $fa1, $ft5
	fmadd.s	$fa3, $fa3, $fa7, $ft5
	fneg.s	$fa7, $fa7
	fmul.s	$fa2, $fa2, $fa7
	fmadd.s	$fa1, $fa1, $ft4, $fa2
	fmul.s	$fa2, $fa3, $fa3
	fmadd.s	$fa2, $ft6, $ft6, $fa2
	fmadd.s	$fa1, $fa1, $fa1, $fa2
	fsqrt.s	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $ft2
	fst.s	$fa1, $a3, 0
	fld.s	$fa2, $a2, 0
	fld.s	$fa3, $a2, 4
	fld.s	$fa7, $a2, 8
	st.w	$a0, $a4, 0
	fsub.s	$fa2, $fa2, $fa4
	fsub.s	$fa3, $fa3, $fa5
	fsub.s	$fa4, $fa7, $fa6
	fneg.s	$fa5, $fa3
	fmul.s	$fa5, $ft3, $fa5
	fmadd.s	$fa5, $ft1, $fa4, $fa5
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $ft0, $fa4
	fmadd.s	$fa4, $ft3, $fa2, $fa4
	fneg.s	$fa2, $fa2
	fmul.s	$fa2, $ft1, $fa2
	fmadd.s	$fa2, $ft0, $fa3, $fa2
	fmul.s	$fa3, $fa4, $fa4
	fmadd.s	$fa3, $fa5, $fa5, $fa3
	fmadd.s	$fa2, $fa2, $fa2, $fa3
	fsqrt.s	$fa2, $fa2
	fdiv.s	$fa2, $fa2, $ft2
	fst.s	$fa2, $a3, 4
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1168
	fsub.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a3, 8
	b	.LBB9_36
.LBB9_34:
	srli.d	$a6, $a5, 1
	bstrins.d	$a6, $a5, 2, 2
	st.w	$a6, $a4, 0
	fst.s	$ft6, $a3, 8
	fst.s	$ft7, $a3, 0
	st.w	$zero, $a3, 4
	fmov.s	$fa0, $ft4
	fcmp.cule.s	$fcc0, $ft2, $fa0
	bceqz	$fcc0, .LBB9_33
.LBB9_35:
                                        # kill: def $f0 killed $f0 killed $vr0
.LBB9_36:
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj, .Lfunc_end9-_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj,"axG",@progbits,_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj,comdat
	.weak	_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj # -- Begin function _ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj
	.p2align	5
	.type	_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj,@function
_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj: # @_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 72                   # 8-byte Folded Spill
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
	.cfi_offset 62, -112
	.cfi_offset 63, -120
	fld.s	$fa2, $a0, 0
	fld.s	$fa5, $a3, 0
	fsub.s	$ft9, $fa2, $fa5
	fld.s	$fa3, $a0, 4
	fld.s	$fa0, $a3, 4
	fld.s	$fa4, $a0, 8
	fld.s	$fa1, $a3, 8
	fld.s	$fa7, $a1, 0
	fld.s	$ft0, $a1, 4
	fsub.s	$fs3, $fa3, $fa0
	fsub.s	$fs5, $fa4, $fa1
	fsub.s	$fs0, $fa7, $fa5
	fsub.s	$fs1, $ft0, $fa0
	fld.s	$ft1, $a1, 8
	fld.s	$ft3, $a2, 0
	fld.s	$ft4, $a2, 4
	fld.s	$ft5, $a2, 8
	fsub.s	$fs2, $ft1, $fa1
	fsub.s	$fs4, $ft3, $fa5
	fsub.s	$fs6, $ft4, $fa0
	fsub.s	$fs7, $ft5, $fa1
	fmul.s	$fa5, $fs3, $fs2
	fmul.s	$fa6, $fs5, $fs0
	fmul.s	$fa6, $fa6, $fs6
	fmadd.s	$fa6, $fa5, $fs4, $fa6
	fneg.s	$fa5, $fs2
	fmul.s	$fa5, $ft9, $fa5
	fmadd.s	$ft2, $fa5, $fs6, $fa6
	fneg.s	$fa6, $fs0
	fmul.s	$fa6, $fs3, $fa6
	fmadd.s	$ft2, $fa6, $fs7, $ft2
	fmul.s	$ft6, $ft9, $fs1
	fmadd.s	$ft6, $ft6, $fs7, $ft2
	fneg.s	$ft2, $fs1
	fmul.s	$ft2, $fs5, $ft2
	fmadd.s	$ft8, $ft2, $fs4, $ft6
	movgr2fr.w	$ft7, $zero
	fcmp.cueq.s	$fcc0, $ft8, $ft7
	vldi	$vr18, -1040
	bcnez	$fcc0, .LBB10_15
# %bb.1:
	fsub.s	$ft3, $fa7, $ft3
	fsub.s	$ft4, $ft0, $ft4
	fsub.s	$ft5, $ft1, $ft5
	fsub.s	$fa7, $fa2, $fa7
	fsub.s	$ft0, $fa3, $ft0
	fsub.s	$ft1, $fa4, $ft1
	fneg.s	$ft6, $ft0
	fmul.s	$ft6, $ft5, $ft6
	fmadd.s	$ft6, $ft4, $ft1, $ft6
	fneg.s	$ft1, $ft1
	fmul.s	$ft1, $ft3, $ft1
	fmadd.s	$ft1, $ft5, $fa7, $ft1
	fneg.s	$fa7, $fa7
	fmul.s	$fa7, $ft4, $fa7
	fmadd.s	$fa7, $ft3, $ft0, $fa7
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft6, $fa3
	fmadd.s	$fa2, $fa4, $fa7, $fa2
	fmul.s	$fa2, $fa2, $ft8
	fcmp.cult.s	$fcc0, $ft7, $fa2
	bcnez	$fcc0, .LBB10_15
# %bb.2:
	move	$s1, $a3
	move	$s0, $a0
	move	$s2, $a5
	move	$fp, $a4
	move	$s4, $a2
	move	$s3, $a1
	st.w	$zero, $sp, 64
	st.d	$zero, $sp, 56
	fmadd.s	$fa2, $fs3, $fs2, $ft2
	fld.s	$fa3, $a3, 0
	fmadd.s	$fa4, $fs5, $fs0, $fa5
	fmadd.s	$fa5, $ft9, $fs1, $fa6
	fmul.s	$fa0, $fa0, $fa4
	fmadd.s	$fa0, $fa3, $fa2, $fa0
	fmadd.s	$fa0, $fa1, $fa5, $fa0
	fmul.s	$fa0, $ft8, $fa0
	fcmp.cule.s	$fcc0, $fa0, $ft7
	st.w	$zero, $sp, 52
	fst.s	$ft7, $sp, 48                   # 4-byte Folded Spill
	fst.s	$ft8, $sp, 44                   # 4-byte Folded Spill
	fst.s	$ft9, $sp, 40                   # 4-byte Folded Spill
	bcnez	$fcc0, .LBB10_4
# %bb.3:
	addi.d	$a3, $sp, 56
	addi.d	$a4, $sp, 52
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj)
	jirl	$ra, $ra, 0
	fld.s	$ft8, $sp, 44                   # 4-byte Folded Reload
	fld.s	$ft7, $sp, 48                   # 4-byte Folded Reload
	ld.wu	$a0, $sp, 52
	fmov.s	$ft10, $fa0
	srli.d	$a1, $a0, 1
	andi	$a1, $a1, 2
	ld.d	$a2, $sp, 56
	bstrins.d	$a0, $a1, 63, 2
	fld.s	$fa0, $sp, 64
	st.w	$a0, $s2, 0
	st.d	$a2, $fp, 0
	st.w	$zero, $fp, 8
	fst.s	$fa0, $fp, 12
.LBB10_4:
	fneg.s	$fa0, $fs6
	fmul.s	$fa0, $fs2, $fa0
	fmadd.s	$fa0, $fs1, $fs7, $fa0
	fneg.s	$fa1, $fs7
	fmul.s	$fa1, $fs0, $fa1
	fmadd.s	$fa1, $fs2, $fs4, $fa1
	fneg.s	$fa2, $fs4
	fmul.s	$fa2, $fs1, $fa2
	fld.s	$fa3, $s1, 4
	fld.s	$fa4, $s1, 0
	fld.s	$fa5, $s1, 8
	fmadd.s	$fa2, $fs0, $fs6, $fa2
	fmul.s	$fa1, $fa3, $fa1
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmul.s	$fa0, $ft8, $fa0
	fcmp.cule.s	$fcc0, $fa0, $ft7
	bcnez	$fcc0, .LBB10_8
# %bb.5:
	addi.d	$a3, $sp, 56
	addi.d	$a4, $sp, 52
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s1
	vst	$vr18, $sp, 16                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj)
	jirl	$ra, $ra, 0
	vld	$vr18, $sp, 16                  # 16-byte Folded Reload
	fld.s	$ft8, $sp, 44                   # 4-byte Folded Reload
	fld.s	$ft7, $sp, 48                   # 4-byte Folded Reload
	movgr2fr.w	$fa1, $zero
	fcmp.clt.s	$fcc0, $ft10, $fa1
	fld.s	$fa2, $sp, 40                   # 4-byte Folded Reload
	bcnez	$fcc0, .LBB10_7
# %bb.6:
	fcmp.cule.s	$fcc0, $ft10, $fa0
	bcnez	$fcc0, .LBB10_9
.LBB10_7:
	ld.w	$a0, $sp, 52
	slli.d	$a0, $a0, 1
	fld.s	$fa1, $sp, 56
	ld.d	$a1, $sp, 60
	andi	$a0, $a0, 14
	st.w	$a0, $s2, 0
	fst.s	$fa1, $fp, 4
	st.d	$a1, $fp, 8
	st.w	$zero, $fp, 0
	fmov.s	$ft10, $fa0
	b	.LBB10_9
.LBB10_8:
	fld.s	$fa2, $sp, 40                   # 4-byte Folded Reload
.LBB10_9:
	fneg.s	$fa0, $fs3
	fmul.s	$fa0, $fs7, $fa0
	fmadd.s	$fa0, $fs6, $fs5, $fa0
	fneg.s	$fa1, $fs5
	fmul.s	$fa1, $fs4, $fa1
	fmadd.s	$fa1, $fs7, $fa2, $fa1
	fneg.s	$fa2, $fa2
	fmul.s	$fa2, $fs6, $fa2
	fld.s	$fa3, $s1, 4
	fld.s	$fa4, $s1, 0
	fld.s	$fa5, $s1, 8
	fmadd.s	$fa2, $fs4, $fs3, $fa2
	fmul.s	$fa1, $fa3, $fa1
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmul.s	$fa0, $ft8, $fa0
	fcmp.cule.s	$fcc0, $fa0, $ft7
	bcnez	$fcc0, .LBB10_13
# %bb.10:
	addi.d	$a3, $sp, 56
	addi.d	$a4, $sp, 52
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s1
	vst	$vr18, $sp, 16                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj)
	jirl	$ra, $ra, 0
	vld	$vr18, $sp, 16                  # 16-byte Folded Reload
	fld.s	$ft8, $sp, 44                   # 4-byte Folded Reload
	fld.s	$ft7, $sp, 48                   # 4-byte Folded Reload
	movgr2fr.w	$fa1, $zero
	fcmp.clt.s	$fcc0, $ft10, $fa1
	bcnez	$fcc0, .LBB10_12
# %bb.11:
	fcmp.cule.s	$fcc0, $ft10, $fa0
	bcnez	$fcc0, .LBB10_13
.LBB10_12:
	ld.wu	$a0, $sp, 52
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 4
	bstrins.d	$a1, $a2, 63, 1
	bstrins.d	$a1, $a0, 2, 2
	fld.s	$fa1, $sp, 56
	fld.s	$fa2, $sp, 60
	st.w	$a1, $s2, 0
	fld.s	$fa3, $sp, 64
	fst.s	$fa1, $fp, 8
	fst.s	$fa2, $fp, 0
	st.w	$zero, $fp, 4
	fst.s	$fa3, $fp, 12
	fmov.s	$ft10, $fa0
.LBB10_13:
	fcmp.cule.s	$fcc0, $ft7, $ft10
	bcnez	$fcc0, .LBB10_15
# %bb.14:
	fld.s	$fa0, $s4, 4
	fld.s	$fa1, $s3, 8
	fld.s	$fa2, $s4, 8
	fld.s	$fa3, $s3, 0
	fmul.s	$fa4, $fa0, $fa1
	fld.s	$fa5, $s1, 4
	fld.s	$fa6, $s1, 0
	fmul.s	$fa7, $fa2, $fa3
	fld.s	$ft0, $s4, 0
	fmul.s	$fa7, $fa7, $fa5
	fmadd.s	$fa4, $fa4, $fa6, $fa7
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $ft0, $fa1
	fmadd.s	$fa1, $fa1, $fa5, $fa4
	fld.s	$fa4, $s1, 8
	fld.s	$fa5, $s3, 4
	fneg.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmadd.s	$fa0, $fa0, $fa4, $fa1
	fmul.s	$fa1, $ft0, $fa5
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fneg.s	$fa1, $fa5
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa0, $fa1, $fa6, $fa0
	fdiv.s	$fa0, $fa0, $ft8
	fst.s	$fa0, $fp, 0
	fld.s	$fa1, $s0, 4
	fld.s	$fa2, $s4, 8
	fld.s	$fa3, $s0, 8
	fld.s	$fa4, $s4, 0
	fmul.s	$fa5, $fa1, $fa2
	fld.s	$fa6, $s1, 4
	fld.s	$fa7, $s1, 0
	fmul.s	$ft0, $fa3, $fa4
	fld.s	$ft1, $s0, 0
	fmul.s	$ft0, $ft0, $fa6
	fmadd.s	$fa5, $fa5, $fa7, $ft0
	fneg.s	$fa2, $fa2
	fmul.s	$fa2, $ft1, $fa2
	fmadd.s	$fa2, $fa2, $fa6, $fa5
	fld.s	$fa5, $s1, 8
	fld.s	$fa6, $s4, 4
	fneg.s	$fa4, $fa4
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa1, $fa1, $fa5, $fa2
	fmul.s	$fa2, $ft1, $fa6
	fmadd.s	$fa1, $fa2, $fa5, $fa1
	fneg.s	$fa2, $fa6
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa1, $fa2, $fa7, $fa1
	fdiv.s	$fa1, $fa1, $ft8
	fst.s	$fa1, $fp, 4
	fld.s	$fa2, $s3, 4
	fld.s	$fa3, $s0, 8
	fld.s	$fa4, $s3, 8
	fld.s	$fa5, $s0, 0
	fld.s	$fa6, $s1, 4
	fld.s	$fa7, $s1, 0
	fmul.s	$ft0, $fa2, $fa3
	fmul.s	$ft1, $fa4, $fa5
	fmul.s	$ft1, $ft1, $fa6
	fmadd.s	$ft0, $ft0, $fa7, $ft1
	fld.s	$ft1, $s3, 0
	ori	$a0, $zero, 15
	st.w	$a0, $s2, 0
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $ft1, $fa3
	fmadd.s	$fa3, $fa3, $fa6, $ft0
	fld.s	$fa6, $s1, 8
	fld.s	$ft0, $s0, 4
	fneg.s	$fa5, $fa5
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa2, $fa2, $fa6, $fa3
	fmul.s	$fa3, $ft1, $ft0
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fneg.s	$fa3, $ft0
	fmul.s	$fa3, $fa4, $fa3
	fmadd.s	$fa2, $fa3, $fa7, $fa2
	fdiv.s	$fa2, $fa2, $ft8
	fst.s	$fa2, $fp, 8
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	vldi	$vr1, -1168
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $fp, 12
	fmov.s	$ft10, $ft7
.LBB10_15:
	fmov.s	$fa0, $ft10
	fld.d	$fs7, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end10:
	.size	_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj, .Lfunc_end10-_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3,"axG",@progbits,_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3,comdat
	.weak	_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3 # -- Begin function _ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3
	.p2align	5
	.type	_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3,@function
_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3: # @_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $fp, 128
	ld.d	$a3, $fp, 136
	move	$s0, $a1
	andi	$a1, $a2, 1
	add.d	$a0, $a0, $a3
	beqz	$a1, .LBB11_2
# %bb.1:
	ld.d	$a1, $a0, 0
	add.d	$a1, $a1, $a2
	ld.d	$a2, $a1, -1
.LBB11_2:                               # %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit
	move	$a1, $s0
	jirl	$ra, $a2, 0
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s0, 4
	ld.d	$a4, $fp, 8
	ld.d	$a3, $fp, 128
	ld.d	$a5, $fp, 136
	fld.s	$fa2, $s0, 8
	move	$a2, $a0
	andi	$a6, $a3, 1
	add.d	$a0, $a4, $a5
	beqz	$a6, .LBB11_4
# %bb.3:
	ld.d	$a4, $a0, 0
	add.d	$a3, $a4, $a3
	ld.d	$a3, $a3, -1
.LBB11_4:                               # %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit
	fneg.s	$fa0, $fa0
	fneg.s	$fa1, $fa1
	fneg.s	$fa2, $fa2
	movgr2fr.w	$fs0, $a1
	fld.s	$fa3, $fp, 20
	srli.d	$a1, $a2, 32
	fld.s	$fa4, $fp, 16
	movgr2fr.w	$fs1, $a1
	fmul.s	$fa3, $fa3, $fa1
	fld.s	$fa5, $fp, 24
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fld.s	$fa4, $fp, 36
	fld.s	$fa6, $fp, 32
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fld.s	$fa5, $fp, 40
	fmul.s	$fa4, $fa4, $fa1
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fld.s	$fa6, $fp, 52
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fld.s	$fa5, $fp, 48
	fld.s	$fa7, $fp, 56
	fmul.s	$fa1, $fa6, $fa1
	movgr2fr.w	$fs2, $a2
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fmadd.s	$fa0, $fa7, $fa2, $fa0
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 24
	addi.d	$a1, $sp, 16
	jirl	$ra, $a3, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	fld.s	$fa1, $fp, 68
	movgr2fr.w	$fa2, $a0
	fld.s	$fa3, $fp, 64
	movgr2fr.w	$fa4, $a1
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa5, $fp, 72
	fmadd.s	$fa1, $fa3, $fa0, $fa1
	fld.s	$fa3, $fp, 112
	fld.s	$fa6, $fp, 84
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fld.s	$fa5, $fp, 80
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa3, $fa6, $fa2
	fld.s	$fa6, $fp, 100
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fld.s	$fa5, $fp, 96
	fld.s	$fa7, $fp, 88
	fmul.s	$fa2, $fa6, $fa2
	fld.s	$fa6, $fp, 116
	fmadd.s	$fa0, $fa5, $fa0, $fa2
	fld.s	$fa2, $fp, 104
	fld.s	$fa5, $fp, 120
	fmadd.s	$fa3, $fa7, $fa4, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fadd.s	$fa0, $fa5, $fa0
	fsub.s	$fa1, $fs2, $fa1
	fsub.s	$fa2, $fs1, $fa3
	fsub.s	$fa0, $fs0, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end11:
	.size	_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3, .Lfunc_end11-_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12gjkepa2_impl3GJK13EncloseOriginEv,"axG",@progbits,_ZN12gjkepa2_impl3GJK13EncloseOriginEv,comdat
	.weak	_ZN12gjkepa2_impl3GJK13EncloseOriginEv # -- Begin function _ZN12gjkepa2_impl3GJK13EncloseOriginEv
	.p2align	5
	.type	_ZN12gjkepa2_impl3GJK13EncloseOriginEv,@function
_ZN12gjkepa2_impl3GJK13EncloseOriginEv: # @_ZN12gjkepa2_impl3GJK13EncloseOriginEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 48                   # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$a0, $a0, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB12_14
# %bb.1:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI12_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI12_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB12_2:                               # %.preheader
	ld.w	$a1, $fp, 440
	addi.d	$s1, $fp, 408
	addi.d	$a1, $a1, -1
	bstrpick.d	$a2, $a1, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$s0, $s1, $a2
	st.w	$zero, $a0, 36
	st.w	$a1, $fp, 440
	st.d	$s0, $a0, 8
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 48
	lu12i.w	$s2, 260096
	st.d	$s2, $s0, 0
	st.d	$zero, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB12_15
# %bb.3:
	ld.d	$a0, $fp, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.wu	$a3, $fp, 440
	ldx.d	$s0, $a0, $a2
	slli.d	$a3, $a3, 3
	stx.d	$s0, $s1, $a3
	alsl.d	$a1, $a1, $a0, 2
	st.w	$zero, $a1, 32
	stx.d	$s0, $a0, $a2
	lu12i.w	$s3, -264192
	lu32i.d	$s3, 0
	lu52i.d	$a0, $s3, -2048
	lu12i.w	$s4, -524288
	st.d	$a0, $s0, 0
	move	$s5, $s4
	lu32i.d	$s5, 0
	st.d	$s5, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_7
# %bb.4:                                # %.critedge
	ld.d	$a0, $fp, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.wu	$a3, $fp, 440
	ldx.d	$s0, $a0, $a2
	slli.d	$a3, $a3, 3
	stx.d	$s0, $s1, $a3
	alsl.d	$a1, $a1, $a0, 2
	st.w	$zero, $a1, 32
	stx.d	$s0, $a0, $a2
	lu52i.d	$a0, $zero, 1016
	st.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_7
# %bb.5:
	ld.d	$a0, $fp, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.wu	$a3, $fp, 440
	ldx.d	$s0, $a0, $a2
	slli.d	$a3, $a3, 3
	stx.d	$s0, $s1, $a3
	alsl.d	$a1, $a1, $a0, 2
	st.w	$zero, $a1, 32
	stx.d	$s0, $a0, $a2
	lu52i.d	$a0, $s5, -1032
	st.d	$a0, $s0, 0
	st.d	$s5, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_7
# %bb.6:                                # %.critedge.1
	ld.d	$a0, $fp, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.wu	$a3, $fp, 440
	ldx.d	$s0, $a0, $a2
	slli.d	$a3, $a3, 3
	stx.d	$s0, $s1, $a3
	alsl.d	$a1, $a1, $a0, 2
	st.w	$zero, $a1, 32
	stx.d	$s0, $a0, $a2
	st.d	$zero, $s0, 0
	st.d	$s2, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_22
.LBB12_7:
	ori	$a0, $zero, 1
	b	.LBB12_15
.LBB12_8:
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 0
	fld.s	$fa0, $a1, 16
	fld.s	$fa1, $a2, 16
	ld.d	$a3, $a0, 16
	fld.s	$fa2, $a1, 20
	fld.s	$fa3, $a1, 24
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $a3, 16
	fld.s	$fa5, $a2, 20
	fld.s	$fa6, $a2, 24
	fld.s	$fa7, $a3, 20
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a3, 24
	fsub.s	$fa2, $fa2, $fa5
	fsub.s	$fa5, $fa7, $fa5
	fsub.s	$fa3, $fa3, $fa6
	fsub.s	$fa4, $fa4, $fa6
	fneg.s	$fa6, $fa5
	fmul.s	$fa6, $fa3, $fa6
	fmadd.s	$fs0, $fa2, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fs1, $fa3, $fa1, $fa4
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fs2, $fa0, $fa5, $fa1
	fmul.s	$fa0, $fs1, $fs1
	fmadd.s	$fa0, $fs0, $fs0, $fa0
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_14
# %bb.9:
	ori	$a1, $zero, 0
	lu32i.d	$a1, 4
	st.d	$a1, $a0, 44
	ld.w	$a1, $fp, 440
	addi.d	$s1, $fp, 408
	addi.d	$a1, $a1, -1
	bstrpick.d	$a2, $a1, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$s0, $s1, $a2
	st.w	$a1, $fp, 440
	st.d	$s0, $a0, 24
	frsqrt.s	$fs3, $fa0
	fmul.s	$fa0, $fs0, $fs3
	fmul.s	$fa1, $fs1, $fs3
	fmul.s	$fa2, $fs2, $fs3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB12_15
# %bb.10:
	ld.d	$a0, $fp, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.wu	$a3, $fp, 440
	ldx.d	$s0, $a0, $a2
	slli.d	$a3, $a3, 3
	stx.d	$s0, $s1, $a3
	fneg.s	$fa0, $fs0
	fneg.s	$fa1, $fs1
	fneg.s	$fa2, $fs2
	alsl.d	$a1, $a1, $a0, 2
	st.w	$zero, $a1, 32
	stx.d	$s0, $a0, $a2
	fmul.s	$fa0, $fs3, $fa0
	fmul.s	$fa1, $fs3, $fa1
	fmul.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
.LBB12_11:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB12_15
# %bb.12:                               # %.critedge.2
	ld.d	$a0, $fp, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 48
	ld.wu	$a2, $fp, 440
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 440
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s1, $a1
	b	.LBB12_14
.LBB12_13:
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 24
	fld.s	$fa0, $a1, 16
	fld.s	$fa1, $a2, 16
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $a1, 20
	fld.s	$fa3, $a1, 24
	ld.d	$a1, $a0, 8
	fld.s	$fa4, $a2, 20
	fld.s	$fa5, $a2, 24
	ld.d	$a0, $a0, 16
	fld.s	$fa6, $a1, 16
	fsub.s	$fa2, $fa2, $fa4
	fsub.s	$fa3, $fa3, $fa5
	fld.s	$fa7, $a0, 16
	fsub.s	$fa6, $fa6, $fa1
	fld.s	$ft0, $a1, 20
	fld.s	$ft1, $a1, 24
	fsub.s	$fa1, $fa7, $fa1
	fld.s	$fa7, $a0, 20
	fld.s	$ft2, $a0, 24
	fsub.s	$ft0, $ft0, $fa4
	fsub.s	$ft1, $ft1, $fa5
	fsub.s	$fa4, $fa7, $fa4
	fsub.s	$fa5, $ft2, $fa5
	fmul.s	$fa7, $fa2, $ft1
	fmul.s	$ft2, $fa3, $fa6
	fmul.s	$ft2, $ft2, $fa4
	fmadd.s	$fa7, $fa7, $fa1, $ft2
	fneg.s	$ft1, $ft1
	fmul.s	$ft1, $fa0, $ft1
	fmadd.s	$fa4, $ft1, $fa4, $fa7
	fneg.s	$fa6, $fa6
	fmul.s	$fa2, $fa2, $fa6
	fmadd.s	$fa2, $fa2, $fa5, $fa4
	fmul.s	$fa0, $fa0, $ft0
	fmadd.s	$fa0, $fa0, $fa5, $fa2
	fneg.s	$fa2, $ft0
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.cne.s	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 1
	bcnez	$fcc0, .LBB12_15
.LBB12_14:                              # %.thread
	move	$a0, $zero
.LBB12_15:
	fld.d	$fs7, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB12_16:
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 0
	fld.s	$fa0, $a1, 16
	fld.s	$fa1, $a2, 16
	fld.s	$fa2, $a1, 20
	fld.s	$fa3, $a2, 20
	fld.s	$fa4, $a1, 24
	fld.s	$fa5, $a2, 24
	move	$s1, $zero
	fsub.s	$fs0, $fa0, $fa1
	fsub.s	$fs1, $fa2, $fa3
	fsub.s	$fs2, $fa4, $fa5
	addi.d	$s2, $fp, 408
	vrepli.b	$vr4, 0
	addi.d	$s3, $sp, 32
	lu12i.w	$s4, 260096
	movgr2fr.w	$fs3, $zero
	ori	$s5, $zero, 12
	vst	$vr4, $sp, 16                   # 16-byte Folded Spill
	b	.LBB12_18
	.p2align	4, , 16
.LBB12_17:                              #   in Loop: Header=BB12_18 Depth=1
	addi.d	$s1, $s1, 4
	beq	$s1, $s5, .LBB12_14
.LBB12_18:                              # =>This Inner Loop Header: Depth=1
	vst	$vr4, $sp, 32
	stx.w	$s4, $s1, $s3
	fld.s	$fa0, $sp, 36
	fld.s	$fa1, $sp, 40
	fneg.s	$fa2, $fa0
	fmul.s	$fa2, $fs2, $fa2
	fld.s	$fa3, $sp, 32
	fmadd.s	$fs4, $fs1, $fa1, $fa2
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fs0, $fa1
	fmadd.s	$fs5, $fs2, $fa3, $fa1
	fneg.s	$fa1, $fa3
	fmul.s	$fa1, $fs1, $fa1
	fmadd.s	$fs6, $fs0, $fa0, $fa1
	fmul.s	$fa0, $fs5, $fs5
	fmadd.s	$fa0, $fs4, $fs4, $fa0
	fmadd.s	$fa0, $fs6, $fs6, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fs3
	bcnez	$fcc0, .LBB12_17
# %bb.19:                               #   in Loop: Header=BB12_18 Depth=1
	ld.wu	$a1, $a0, 48
	ld.w	$a2, $fp, 440
	alsl.d	$a3, $a1, $a0, 2
	addi.d	$a2, $a2, -1
	bstrpick.d	$a4, $a2, 31, 0
	slli.d	$a4, $a4, 3
	ldx.d	$s0, $s2, $a4
	st.w	$zero, $a3, 32
	st.w	$a2, $fp, 440
	slli.d	$a2, $a1, 3
	stx.d	$s0, $a0, $a2
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 48
	frsqrt.s	$fs7, $fa0
	fmul.s	$fa0, $fs4, $fs7
	fmul.s	$fa1, $fs5, $fs7
	fmul.s	$fa2, $fs6, $fs7
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_7
# %bb.20:                               #   in Loop: Header=BB12_18 Depth=1
	ld.d	$a0, $fp, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.wu	$a3, $fp, 440
	ldx.d	$s0, $a0, $a2
	slli.d	$a3, $a3, 3
	stx.d	$s0, $s2, $a3
	fneg.s	$fa0, $fs4
	fneg.s	$fa1, $fs5
	fneg.s	$fa2, $fs6
	alsl.d	$a1, $a1, $a0, 2
	st.w	$zero, $a1, 32
	stx.d	$s0, $a0, $a2
	fmul.s	$fa0, $fs7, $fa0
	fmul.s	$fa1, $fs7, $fa1
	fmul.s	$fa2, $fs7, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3GJK13EncloseOriginEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_7
# %bb.21:                               #   in Loop: Header=BB12_18 Depth=1
	ld.d	$a0, $fp, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 48
	ld.wu	$a2, $fp, 440
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	addi.d	$a3, $a2, 1
	st.w	$a3, $fp, 440
	slli.d	$a2, $a2, 3
	stx.d	$a1, $s2, $a2
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	b	.LBB12_17
.LBB12_22:
	ld.d	$a0, $fp, 448
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.wu	$a3, $fp, 440
	ldx.d	$s0, $a0, $a2
	slli.d	$a3, $a3, 3
	stx.d	$s0, $s1, $a3
	alsl.d	$a1, $a1, $a0, 2
	st.w	$zero, $a1, 32
	stx.d	$s0, $a0, $a2
	bstrins.d	$s4, $s4, 62, 32
	st.d	$s4, $s0, 0
	st.d	$s3, $s0, 8
	b	.LBB12_11
.Lfunc_end12:
	.size	_ZN12gjkepa2_impl3GJK13EncloseOriginEv, .Lfunc_end12-_ZN12gjkepa2_impl3GJK13EncloseOriginEv
	.cfi_endproc
	.section	.rodata._ZN12gjkepa2_impl3GJK13EncloseOriginEv,"aG",@progbits,_ZN12gjkepa2_impl3GJK13EncloseOriginEv,comdat
	.p2align	2, 0x0
.LJTI12_0:
	.word	.LBB12_2-.LJTI12_0
	.word	.LBB12_16-.LJTI12_0
	.word	.LBB12_8-.LJTI12_0
	.word	.LBB12_13-.LJTI12_0
                                        # -- End function
	.section	.text._ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b,"axG",@progbits,_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b,comdat
	.weak	_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b # -- Begin function _ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b
	.p2align	5
	.type	_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b,@function
_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b: # @_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b
	.cfi_startproc
# %bb.0:
	move	$a5, $a0
	ldptr.d	$a0, $a0, 14448
	beqz	$a0, .LBB13_21
# %bb.1:
	ld.d	$a7, $a0, 80
	ld.d	$a6, $a0, 72
	beqz	$a7, .LBB13_3
# %bb.2:
	st.d	$a6, $a7, 72
.LBB13_3:
	beqz	$a6, .LBB13_5
# %bb.4:
	ld.d	$a7, $a0, 80
	st.d	$a7, $a6, 80
.LBB13_5:
	ldptr.d	$a6, $a5, 14448
	bne	$a0, $a6, .LBB13_7
# %bb.6:
	ld.d	$a6, $a0, 80
	stptr.d	$a6, $a5, 14448
.LBB13_7:                               # %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit
	lu12i.w	$a7, 3
	ori	$a6, $a7, 2168
	ldx.w	$t1, $a5, $a6
	st.d	$zero, $a0, 72
	ldptr.d	$t0, $a5, 14432
	addi.d	$t1, $t1, -1
	stptr.w	$t1, $a5, 14456
	st.d	$t0, $a0, 80
	beqz	$t0, .LBB13_9
# %bb.8:
	st.d	$a0, $t0, 72
.LBB13_9:                               # %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit
	ori	$a7, $a7, 2152
	ldx.w	$t0, $a5, $a7
	stptr.d	$a0, $a5, 14432
	addi.d	$t0, $t0, 1
	stptr.w	$t0, $a5, 14440
	st.b	$zero, $a0, 91
	st.d	$a1, $a0, 24
	fld.s	$fa0, $a2, 16
	fld.s	$fa1, $a1, 16
	fld.s	$fa2, $a2, 20
	fld.s	$fa3, $a1, 20
	st.d	$a2, $a0, 32
	st.d	$a3, $a0, 40
	fsub.s	$fa4, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fld.s	$fa0, $a2, 24
	fld.s	$fa5, $a1, 24
	fld.s	$fa6, $a3, 16
	fld.s	$fa7, $a3, 20
	fld.s	$ft0, $a3, 24
	fsub.s	$ft1, $fa0, $fa5
	fsub.s	$fa6, $fa6, $fa1
	fsub.s	$fa3, $fa7, $fa3
	fsub.s	$fa1, $ft0, $fa5
	fneg.s	$fa0, $fa3
	fmul.s	$fa0, $ft1, $fa0
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fmadd.s	$fa1, $ft1, $fa6, $fa1
	fneg.s	$fa5, $fa6
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	movfr2gr.s	$t0, $fa0
	movfr2gr.s	$t1, $fa1
	bstrins.d	$t0, $t1, 63, 32
	movfr2gr.s	$t1, $fa2
	bstrpick.d	$t1, $t1, 31, 0
	st.d	$t0, $a0, 0
	st.d	$t1, $a0, 8
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fld.s	$fa4, $a1, 16
	fld.s	$fa5, $a2, 16
	fld.s	$fa6, $a1, 20
	fld.s	$fa7, $a2, 20
	fld.s	$ft0, $a1, 24
	fld.s	$ft1, $a2, 24
	fsqrt.s	$fa3, $fa3
	fsub.s	$ft2, $fa4, $fa5
	fsub.s	$ft3, $fa6, $fa7
	fsub.s	$ft4, $ft0, $ft1
	fneg.s	$ft5, $ft3
	fmul.s	$ft5, $fa2, $ft5
	fmadd.s	$ft5, $fa1, $ft4, $ft5
	fneg.s	$ft4, $ft4
	fmul.s	$ft4, $fa0, $ft4
	fmadd.s	$ft4, $fa2, $ft2, $ft4
	fneg.s	$ft2, $ft2
	fmul.s	$ft2, $fa1, $ft2
	fmadd.s	$ft2, $fa0, $ft3, $ft2
	fmul.s	$ft3, $fa6, $ft4
	fmadd.s	$ft3, $fa4, $ft5, $ft3
	fld.s	$ft4, $a3, 16
	fld.s	$ft5, $a3, 20
	fld.s	$ft6, $a3, 24
	fmadd.s	$ft2, $ft0, $ft2, $ft3
	fsub.s	$ft3, $fa5, $ft4
	fsub.s	$ft7, $fa7, $ft5
	fsub.s	$ft8, $ft1, $ft6
	fneg.s	$ft9, $ft7
	fmul.s	$ft9, $fa2, $ft9
	fmadd.s	$ft9, $fa1, $ft8, $ft9
	fneg.s	$ft8, $ft8
	fmul.s	$ft8, $fa0, $ft8
	fmadd.s	$ft8, $fa2, $ft3, $ft8
	fneg.s	$ft3, $ft3
	fmul.s	$ft3, $fa1, $ft3
	fmadd.s	$ft3, $fa0, $ft7, $ft3
	fmul.s	$fa7, $fa7, $ft8
	fmadd.s	$fa5, $fa5, $ft9, $fa7
	fmadd.s	$fa5, $ft1, $ft3, $fa5
	fsub.s	$fa4, $ft4, $fa4
	fsub.s	$fa6, $ft5, $fa6
	fsub.s	$fa7, $ft6, $ft0
	fneg.s	$ft0, $fa6
	fmul.s	$ft0, $fa2, $ft0
	fmadd.s	$ft0, $fa1, $fa7, $ft0
	fneg.s	$fa7, $fa7
	fmul.s	$fa7, $fa0, $fa7
	fmadd.s	$fa7, $fa2, $fa4, $fa7
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fa4, $fa0, $fa6, $fa4
	fmul.s	$fa6, $ft5, $fa7
	fmadd.s	$fa6, $ft4, $ft0, $fa6
	fmadd.s	$fa4, $ft6, $fa4, $fa6
	fcmp.clt.s	$fcc0, $ft2, $fa5
	fsel	$fa5, $fa5, $ft2, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa4
	fsel	$fa4, $fa4, $fa5, $fcc0
	lu12i.w	$a2, 232731
	ori	$a2, $a2, 1815
	movgr2fr.w	$fa5, $a2
	fcmp.clt.s	$fcc0, $fa5, $fa3
	vldi	$vr6, -1168
	fsel	$fa6, $fa6, $fa3, $fcc0
	fdiv.s	$fa4, $fa4, $fa6
	lu12i.w	$a2, -277955
	ori	$a2, $a2, 1802
	lu32i.d	$a2, 0
	movgr2fr.w	$fa6, $a2
	fcmp.cult.s	$fcc0, $fa4, $fa6
	movgr2fr.w	$fa6, $zero
	fsel	$fa4, $fa6, $fa4, $fcc0
	fst.s	$fa4, $a0, 20
	fcmp.cule.s	$fcc0, $fa3, $fa5
	ori	$a2, $zero, 2
	bcnez	$fcc0, .LBB13_12
# %bb.10:
	fld.s	$fa4, $a1, 20
	fld.s	$fa5, $a1, 16
	fld.s	$fa6, $a1, 24
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fmadd.s	$fa4, $fa6, $fa2, $fa4
	fdiv.s	$fa4, $fa4, $fa3
	fst.s	$fa4, $a0, 16
	frecip.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $a0, 0
	fmul.s	$fa0, $fa1, $fa3
	fst.s	$fa0, $a0, 4
	fmul.s	$fa0, $fa2, $fa3
	fst.s	$fa0, $a0, 8
	bnez	$a4, .LBB13_22
# %bb.11:
	lu12i.w	$a1, -298372
	ori	$a1, $a1, 1452
	lu32i.d	$a1, 0
	movgr2fr.w	$fa0, $a1
	fcmp.cle.s	$fcc0, $fa0, $fa4
	ori	$a2, $zero, 3
	bcnez	$fcc0, .LBB13_22
.LBB13_12:
	ld.d	$a3, $a0, 80
	ld.d	$a1, $a0, 72
	st.w	$a2, $a5, 0
	beqz	$a3, .LBB13_14
# %bb.13:
	st.d	$a1, $a3, 72
.LBB13_14:
	beqz	$a1, .LBB13_16
# %bb.15:
	ld.d	$a2, $a0, 80
	st.d	$a2, $a1, 80
.LBB13_16:
	ldptr.d	$a1, $a5, 14432
	bne	$a0, $a1, .LBB13_18
# %bb.17:
	ld.d	$a1, $a0, 80
	stptr.d	$a1, $a5, 14432
.LBB13_18:                              # %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit130
	ldx.w	$a2, $a5, $a7
	st.d	$zero, $a0, 72
	ldptr.d	$a1, $a5, 14448
	addi.d	$a2, $a2, -1
	stptr.w	$a2, $a5, 14440
	st.d	$a1, $a0, 80
	beqz	$a1, .LBB13_20
# %bb.19:
	st.d	$a0, $a1, 72
.LBB13_20:                              # %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit132
	ldx.w	$a1, $a5, $a6
	stptr.d	$a0, $a5, 14448
	addi.d	$a0, $a1, 1
	stptr.w	$a0, $a5, 14456
	move	$a0, $zero
	ret
.LBB13_21:
	move	$a0, $zero
	ori	$a1, $zero, 5
	st.w	$a1, $a5, 0
.LBB13_22:
	ret
.Lfunc_end13:
	.size	_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b, .Lfunc_end13-_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE,"axG",@progbits,_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE,comdat
	.weak	_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE # -- Begin function _ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE
	.p2align	5
	.type	_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE,@function
_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE: # @_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE
	.cfi_startproc
# %bb.0:
	ld.bu	$a6, $a3, 91
	bne	$a1, $a6, .LBB14_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB14_2:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a2
	bstrpick.d	$s0, $a4, 31, 0
	slli.d	$a2, $s0, 2
	pcalau12i	$a6, %pc_hi20(_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3)
	addi.d	$a6, $a6, %pc_lo12(_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3)
	fld.s	$fa0, $a3, 4
	fld.s	$fa1, $fp, 20
	fld.s	$fa2, $a3, 0
	fld.s	$fa3, $fp, 16
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a3, 8
	fld.s	$fa4, $fp, 24
	fld.s	$fa5, $a3, 16
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	ldx.wu	$a7, $a6, $a2
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fsub.s	$fa0, $fa0, $fa5
	lu12i.w	$a6, -298372
	ori	$a6, $a6, 1452
	lu32i.d	$a6, 0
	movgr2fr.w	$fa1, $a6
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB14_6
# %bb.3:
	move	$s3, $a4
	move	$s1, $a5
	move	$s2, $a3
	addi.d	$a2, $a3, 24
	slli.d	$a1, $a7, 3
	ldx.d	$a1, $a2, $a1
	slli.d	$a3, $s0, 3
	ldx.d	$a2, $a2, $a3
	move	$a3, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_17
# %bb.4:
	st.b	$s3, $a0, 88
	st.d	$s2, $a0, 48
	add.d	$a1, $s2, $s0
	st.b	$zero, $a1, 88
	alsl.d	$a1, $s0, $s2, 3
	st.d	$a0, $a1, 48
	ld.d	$a1, $s1, 0
	beqz	$a1, .LBB14_18
# %bb.5:
	ori	$a2, $zero, 2
	st.b	$a2, $a1, 89
	st.d	$a0, $a1, 56
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 90
	st.d	$a1, $a0, 64
	b	.LBB14_19
.LBB14_6:
	pcalau12i	$a4, %pc_hi20(_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3)
	addi.d	$a4, $a4, %pc_lo12(_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3)
	ldx.wu	$s4, $a4, $a2
	st.b	$a1, $a3, 91
	addi.d	$s5, $a3, 48
	slli.d	$a2, $a7, 3
	ldx.d	$a6, $s5, $a2
	move	$s3, $a3
	addi.d	$s6, $a3, 88
	ldx.bu	$a4, $s6, $a7
	move	$s0, $a0
	move	$s2, $a1
	move	$a2, $fp
	move	$a3, $a6
	move	$s1, $a5
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_17
# %bb.7:
	slli.d	$a0, $s4, 3
	ldx.d	$a3, $s5, $a0
	ldx.bu	$a4, $s6, $s4
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $fp
	move	$a5, $s1
	pcaddu18i	$ra, %call36(_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_17
# %bb.8:                                # %.critedge55
	move	$a0, $s3
	ld.d	$a2, $s3, 80
	ld.d	$a1, $s3, 72
	beqz	$a2, .LBB14_10
# %bb.9:
	st.d	$a1, $a2, 72
.LBB14_10:
	beqz	$a1, .LBB14_12
# %bb.11:
	ld.d	$a2, $a0, 80
	st.d	$a2, $a1, 80
.LBB14_12:
	ldptr.d	$a1, $s0, 14432
	bne	$a0, $a1, .LBB14_14
# %bb.13:
	ld.d	$a1, $a0, 80
	stptr.d	$a1, $s0, 14432
.LBB14_14:                              # %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit
	lu12i.w	$a1, 3
	ori	$a2, $a1, 2152
	ldx.w	$a3, $s0, $a2
	st.d	$zero, $a0, 72
	ldptr.d	$a2, $s0, 14448
	addi.d	$a3, $a3, -1
	stptr.w	$a3, $s0, 14440
	st.d	$a2, $a0, 80
	beqz	$a2, .LBB14_16
# %bb.15:
	st.d	$a0, $a2, 72
.LBB14_16:                              # %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit
	ori	$a1, $a1, 2168
	ldx.w	$a1, $s0, $a1
	stptr.d	$a0, $s0, 14448
	addi.d	$a0, $a1, 1
	stptr.w	$a0, $s0, 14456
	b	.LBB14_20
.LBB14_17:
	move	$a0, $zero
	b	.LBB14_21
.LBB14_18:
	st.d	$a0, $s1, 8
.LBB14_19:
	ld.w	$a1, $s1, 16
	st.d	$a0, $s1, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s1, 16
.LBB14_20:
	ori	$a0, $zero, 1
.LBB14_21:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end14:
	.size	_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE, .Lfunc_end14-_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE
	.cfi_endproc
                                        # -- End function
	.type	_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3,@object # @_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3
	.section	.rodata._ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3,"aG",@progbits,_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3,comdat
	.weak	_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3
	.p2align	2, 0x0
_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.size	_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3, 12

	.type	_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3,@object # @_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3
	.section	.rodata._ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3,"aG",@progbits,_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3,comdat
	.weak	_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3
	.p2align	2, 0x0
_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3:
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3, 12

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
	.addrsig_sym _ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3
	.addrsig_sym _ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3
	.addrsig_sym _Unwind_Resume
