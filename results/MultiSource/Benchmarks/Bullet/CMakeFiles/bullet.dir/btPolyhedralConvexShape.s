	.file	"btPolyhedralConvexShape.cpp"
	.text
	.globl	_ZN23btPolyhedralConvexShapeC2Ev # -- Begin function _ZN23btPolyhedralConvexShapeC2Ev
	.p2align	5
	.type	_ZN23btPolyhedralConvexShapeC2Ev,@function
_ZN23btPolyhedralConvexShapeC2Ev:       # @_ZN23btPolyhedralConvexShapeC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV23btPolyhedralConvexShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV23btPolyhedralConvexShape+16)
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN23btPolyhedralConvexShapeC2Ev, .Lfunc_end0-_ZN23btPolyhedralConvexShapeC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3
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
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
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
	fld.s	$fa0, $a1, 4
	fld.s	$fa2, $a1, 0
	fld.s	$fa1, $a1, 8
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	lu12i.w	$a1, 232731
	ori	$a1, $a1, 1815
	movgr2fr.w	$fa4, $a1
	fcmp.clt.s	$fcc0, $fa3, $fa4
	move	$fp, $a0
	bceqz	$fcc0, .LBB1_2
# %bb.1:
	movgr2fr.w	$fs0, $zero
	vldi	$vr0, -1168
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	fmov.s	$fs1, $fs0
	b	.LBB1_3
.LBB1_2:
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa2, $fa2, $fa3
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	fmul.s	$fs1, $fa0, $fa3
	fmul.s	$fs0, $fa1, $fa3
.LBB1_3:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 144
	move	$a0, $fp
	jirl	$ra, $a1, 0
	blez	$a0, .LBB1_9
# %bb.4:                                # %.lr.ph
	move	$s2, $zero
	move	$s4, $zero
	move	$s0, $zero
	move	$s3, $zero
	move	$s1, $zero
	lu12i.w	$a0, -141856
	ori	$a0, $a0, 2923
	lu32i.d	$a0, 0
	movgr2fr.w	$fs2, $a0
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 144
	addi.w	$s2, $s2, 1
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bge	$s2, $a0, .LBB1_8
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a3, $a0, 168
	addi.d	$a2, $sp, 32
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a3, 0
	fld.s	$fa1, $sp, 36
	fld.s	$fa0, $sp, 32
	fld.s	$fa3, $sp, 40
	fmul.s	$fa2, $fs1, $fa1
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	fmadd.s	$fa2, $fa4, $fa0, $fa2
	fmadd.s	$fa2, $fs0, $fa3, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fs2
	bcnez	$fcc0, .LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	ld.w	$s3, $sp, 44
	movfr2gr.s	$s1, $fa3
	movfr2gr.s	$s4, $fa1
	movfr2gr.s	$s0, $fa0
	fmov.s	$fs2, $fa2
	b	.LBB1_5
.LBB1_8:                                # %._crit_edge.loopexit
	bstrins.d	$s0, $s4, 63, 32
	bstrins.d	$s1, $s3, 63, 32
	b	.LBB1_10
.LBB1_9:
	move	$s0, $zero
	move	$s1, $zero
.LBB1_10:                               # %._crit_edge
	move	$a0, $s0
	move	$a1, $s1
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end1:
	.size	_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end1-_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_startproc
# %bb.0:
	blez	$a3, .LBB2_16
# %bb.1:                                # %.lr.ph.preheader
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	ori	$a1, $zero, 1
	lu12i.w	$a0, -141856
	bne	$a3, $a1, .LBB2_3
# %bb.2:
	move	$a1, $zero
	b	.LBB2_6
.LBB2_3:                                # %vector.ph
	bstrpick.d	$a1, $fp, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $s0, 28
	ori	$a3, $a0, 2923
	lu32i.d	$a3, 0
	move	$a4, $a1
	.p2align	4, , 16
.LBB2_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, -16
	st.w	$a3, $a2, 0
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB2_4
# %bb.5:                                # %middle.block
	beq	$a1, $fp, .LBB2_8
.LBB2_6:                                # %.lr.ph.preheader37
	alsl.d	$a2, $a1, $s0, 4
	addi.d	$a2, $a2, 12
	sub.d	$a1, $fp, $a1
	ori	$a0, $a0, 2923
	lu32i.d	$a0, 0
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB2_7
.LBB2_8:                                # %.lr.ph29
	move	$s4, $zero
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %._crit_edge
                                        #   in Loop: Header=BB2_10 Depth=1
	addi.d	$s4, $s4, 1
	beq	$s4, $fp, .LBB2_15
.LBB2_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 144
	move	$a0, $s2
	jirl	$ra, $a1, 0
	blez	$a0, .LBB2_9
# %bb.11:                               # %.lr.ph27
                                        #   in Loop: Header=BB2_10 Depth=1
	move	$s3, $zero
	alsl.d	$s5, $s4, $s1, 4
	alsl.d	$s6, $s4, $s0, 4
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               #   in Loop: Header=BB2_13 Depth=2
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 144
	addi.w	$s3, $s3, 1
	move	$a0, $s2
	jirl	$ra, $a1, 0
	bge	$s3, $a0, .LBB2_9
.LBB2_13:                               #   Parent Loop BB2_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	ld.d	$a3, $a0, 168
	addi.d	$a2, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	jirl	$ra, $a3, 0
	fld.s	$fa0, $s5, 0
	fld.s	$fa1, $sp, 8
	fld.s	$fa2, $s5, 4
	fld.s	$fa3, $sp, 12
	fld.s	$fa4, $s5, 8
	fld.s	$fa5, $sp, 16
	fld.s	$fa6, $s6, 12
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa6
	bcnez	$fcc0, .LBB2_12
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=2
	ld.w	$a0, $sp, 16
	ld.d	$a1, $sp, 8
	st.w	$a0, $s6, 8
	st.d	$a1, $s6, 0
	fst.s	$fa0, $s6, 12
	b	.LBB2_12
.LBB2_15:
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
.LBB2_16:                               # %._crit_edge30
	ret
.Lfunc_end2:
	.size	_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end2-_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3: # @_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 88
	move	$fp, $a1
	fmov.s	$fs0, $fa0
	move	$a0, $s0
	jirl	$ra, $a2, 0
	lu12i.w	$a0, 260096
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 44
	st.w	$a0, $sp, 60
	vst	$vr1, $sp, 64
	ld.d	$a1, $s0, 0
	st.w	$a0, $sp, 80
	vst	$vr1, $sp, 84
	st.w	$zero, $sp, 100
	ld.d	$a4, $a1, 16
	fmov.s	$fs1, $fa0
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
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	vldi	$vr3, -1184
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa0, $fs1, $fa0
	fadd.s	$fa0, $fa0, $fa0
	fadd.s	$fa1, $fs1, $fa1
	fadd.s	$fa1, $fa1, $fa1
	fadd.s	$fa2, $fs1, $fa2
	fadd.s	$fa2, $fa2, $fa2
	fmul.s	$fa0, $fa0, $fa0
	fmul.s	$fa1, $fa1, $fa1
	fmul.s	$fa2, $fa2, $fa2
	lu12i.w	$a0, 252586
	ori	$a0, $a0, 2730
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa3, $fs0, $fa3
	fadd.s	$fa4, $fa1, $fa2
	fadd.s	$fa2, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa3, $fa4
	fmul.s	$fa2, $fa3, $fa2
	fmul.s	$fa0, $fa3, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end3:
	.size	_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end3-_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3 # -- Begin function _ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3,@function
_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3: # @_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShape15setLocalScalingERK9btVector3)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv)
	jr	$t8
.Lfunc_end4:
	.size	_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3, .Lfunc_end4-_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv # -- Begin function _ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv
	.p2align	5
	.type	_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv,@function
_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv: # @_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 96
	pcalau12i	$a0, %pc_hi20(_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	dbar	20
	beqz	$a0, .LBB5_2
.LBB5_1:
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 96
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 112
	pcalau12i	$a0, %pc_hi20(_ZZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	addi.d	$a1, $a0, %pc_lo12(_ZZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	addi.d	$a2, $sp, 16
	ori	$a3, $zero, 6
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $fp, 56
	fld.s	$fa1, $sp, 16
	fld.s	$fa2, $sp, 64
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $fp, 80
	fld.s	$fa1, $sp, 36
	fsub.s	$fa2, $fa2, $fa0
	fst.s	$fa2, $fp, 64
	fld.s	$fa2, $sp, 84
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $fp, 84
	fld.s	$fa1, $sp, 56
	fsub.s	$fa2, $fa2, $fa0
	fld.s	$fa3, $sp, 104
	fst.s	$fa2, $fp, 68
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $fp, 88
	fsub.s	$fa0, $fa3, $fa0
	fst.s	$fa0, $fp, 72
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB5_2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB5_1
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	addi.d	$a0, $a0, %pc_lo12(_ZZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 4
	st.w	$a1, $a0, 20
	vst	$vr0, $a0, 24
	st.d	$a1, $a0, 40
	lu12i.w	$a1, -264192
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 48
	vst	$vr0, $a0, 52
	st.w	$a1, $a0, 68
	vst	$vr0, $a0, 72
	st.d	$a1, $a0, 88
	pcalau12i	$a0, %pc_hi20(_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB5_1
.Lfunc_end5:
	.size	_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv, .Lfunc_end5-_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN34btPolyhedralConvexAabbCachingShapeC2Ev
.LCPI6_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
.LCPI6_1:
	.word	0xbf800000                      # float -1
	.word	0xbf800000                      # float -1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN34btPolyhedralConvexAabbCachingShapeC2Ev
	.p2align	5
	.type	_ZN34btPolyhedralConvexAabbCachingShapeC2Ev,@function
_ZN34btPolyhedralConvexAabbCachingShapeC2Ev: # @_ZN34btPolyhedralConvexAabbCachingShapeC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV34btPolyhedralConvexAabbCachingShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV34btPolyhedralConvexAabbCachingShape+16)
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI6_1)
	st.d	$a0, $fp, 0
	vst	$vr0, $fp, 64
	vst	$vr1, $fp, 80
	st.b	$zero, $fp, 96
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	_ZN34btPolyhedralConvexAabbCachingShapeC2Ev, .Lfunc_end6-_ZN34btPolyhedralConvexAabbCachingShapeC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 88
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$a0, $s2
	jirl	$ra, $a4, 0
	fld.s	$fa1, $s2, 80
	fld.s	$fa2, $s2, 64
	fld.s	$fa3, $s2, 84
	fld.s	$fa4, $s2, 68
	fld.s	$fa5, $s2, 88
	fld.s	$fa6, $s2, 72
	fsub.s	$fa7, $fa1, $fa2
	fsub.s	$ft0, $fa3, $fa4
	fsub.s	$ft1, $fa5, $fa6
	vldi	$vr10, -1184
	fmul.s	$fa7, $fa7, $ft2
	fmul.s	$ft0, $ft0, $ft2
	fmul.s	$ft1, $ft1, $ft2
	fadd.s	$fa7, $fa0, $fa7
	fadd.s	$ft0, $fa0, $ft0
	fadd.s	$fa0, $fa0, $ft1
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa4
	fadd.s	$fa3, $fa5, $fa6
	fmul.s	$fa1, $fa1, $ft2
	fmul.s	$fa2, $fa2, $ft2
	fmul.s	$fa3, $fa3, $ft2
	fld.s	$fa4, $s1, 0
	fld.s	$fa5, $s1, 4
	fld.s	$fa6, $s1, 8
	fld.s	$ft1, $s1, 16
	fabs.s	$ft2, $fa4
	fabs.s	$ft3, $fa5
	fabs.s	$ft4, $fa6
	fabs.s	$ft5, $ft1
	fld.s	$ft6, $s1, 20
	fld.s	$ft7, $s1, 24
	fld.s	$ft8, $s1, 32
	fld.s	$ft9, $s1, 36
	fabs.s	$ft10, $ft6
	fabs.s	$ft11, $ft7
	fabs.s	$ft12, $ft8
	fabs.s	$ft13, $ft9
	fld.s	$ft14, $s1, 40
	fmul.s	$fa5, $fa2, $fa5
	fld.s	$ft15, $s1, 48
	fmadd.s	$fa4, $fa4, $fa1, $fa5
	fabs.s	$fa5, $ft14
	fmadd.s	$fa4, $fa6, $fa3, $fa4
	fadd.s	$fa4, $fa4, $ft15
	fld.s	$fa6, $s1, 52
	fmul.s	$ft6, $fa2, $ft6
	fmadd.s	$ft1, $ft1, $fa1, $ft6
	fmadd.s	$ft1, $ft7, $fa3, $ft1
	fadd.s	$fa6, $ft1, $fa6
	fld.s	$ft1, $s1, 56
	fmul.s	$fa2, $fa2, $ft9
	fmadd.s	$fa1, $ft8, $fa1, $fa2
	fmadd.s	$fa1, $ft14, $fa3, $fa1
	fadd.s	$fa1, $fa1, $ft1
	fmul.s	$fa2, $ft0, $ft3
	fmadd.s	$fa2, $ft2, $fa7, $fa2
	fmadd.s	$fa2, $ft4, $fa0, $fa2
	fmul.s	$fa3, $ft0, $ft10
	fmadd.s	$fa3, $ft5, $fa7, $fa3
	fmadd.s	$fa3, $ft11, $fa0, $fa3
	fmul.s	$ft0, $ft0, $ft13
	fmadd.s	$fa7, $ft12, $fa7, $ft0
	fmadd.s	$fa0, $fa5, $fa0, $fa7
	fsub.s	$fa5, $fa4, $fa2
	fsub.s	$fa7, $fa6, $fa3
	fsub.s	$ft0, $fa1, $fa0
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa3, $fa3, $fa6
	fadd.s	$fa0, $fa0, $fa1
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end7-_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN23btPolyhedralConvexShapeD0Ev,"axG",@progbits,_ZN23btPolyhedralConvexShapeD0Ev,comdat
	.weak	_ZN23btPolyhedralConvexShapeD0Ev # -- Begin function _ZN23btPolyhedralConvexShapeD0Ev
	.p2align	5
	.type	_ZN23btPolyhedralConvexShapeD0Ev,@function
_ZN23btPolyhedralConvexShapeD0Ev:       # @_ZN23btPolyhedralConvexShapeD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end8:
	.size	_ZN23btPolyhedralConvexShapeD0Ev, .Lfunc_end8-_ZN23btPolyhedralConvexShapeD0Ev
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
.Lfunc_end9:
	.size	_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end9-_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_
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
	.section	.text._ZN21btConvexInternalShape9setMarginEf,"axG",@progbits,_ZN21btConvexInternalShape9setMarginEf,comdat
	.weak	_ZN21btConvexInternalShape9setMarginEf # -- Begin function _ZN21btConvexInternalShape9setMarginEf
	.p2align	5
	.type	_ZN21btConvexInternalShape9setMarginEf,@function
_ZN21btConvexInternalShape9setMarginEf: # @_ZN21btConvexInternalShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end11:
	.size	_ZN21btConvexInternalShape9setMarginEf, .Lfunc_end11-_ZN21btConvexInternalShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end12:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end12-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end13-_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ret
.Lfunc_end14:
	.size	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end14-_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
                                        # -- End function
	.section	.text._ZN34btPolyhedralConvexAabbCachingShapeD0Ev,"axG",@progbits,_ZN34btPolyhedralConvexAabbCachingShapeD0Ev,comdat
	.weak	_ZN34btPolyhedralConvexAabbCachingShapeD0Ev # -- Begin function _ZN34btPolyhedralConvexAabbCachingShapeD0Ev
	.p2align	5
	.type	_ZN34btPolyhedralConvexAabbCachingShapeD0Ev,@function
_ZN34btPolyhedralConvexAabbCachingShapeD0Ev: # @_ZN34btPolyhedralConvexAabbCachingShapeD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end15:
	.size	_ZN34btPolyhedralConvexAabbCachingShapeD0Ev, .Lfunc_end15-_ZN34btPolyhedralConvexAabbCachingShapeD0Ev
                                        # -- End function
	.type	_ZTV23btPolyhedralConvexShape,@object # @_ZTV23btPolyhedralConvexShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV23btPolyhedralConvexShape
	.p2align	3, 0x0
_ZTV23btPolyhedralConvexShape:
	.dword	0
	.dword	_ZTI23btPolyhedralConvexShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN23btPolyhedralConvexShapeD0Ev
	.dword	_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3
	.dword	__cxa_pure_virtual
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.size	_ZTV23btPolyhedralConvexShape, 216

	.type	_ZTV34btPolyhedralConvexAabbCachingShape,@object # @_ZTV34btPolyhedralConvexAabbCachingShape
	.globl	_ZTV34btPolyhedralConvexAabbCachingShape
	.p2align	3, 0x0
_ZTV34btPolyhedralConvexAabbCachingShape:
	.dword	0
	.dword	_ZTI34btPolyhedralConvexAabbCachingShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN34btPolyhedralConvexAabbCachingShapeD0Ev
	.dword	_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3
	.dword	__cxa_pure_virtual
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.size	_ZTV34btPolyhedralConvexAabbCachingShape, 216

	.type	_ZZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions,@object # @_ZZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions
	.local	_ZZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions
	.comm	_ZZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions,96,8
	.type	_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions,@object # @_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions
	.local	_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions
	.comm	_ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions,8,8
	.type	_ZTI23btPolyhedralConvexShape,@object # @_ZTI23btPolyhedralConvexShape
	.globl	_ZTI23btPolyhedralConvexShape
	.p2align	3, 0x0
_ZTI23btPolyhedralConvexShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS23btPolyhedralConvexShape
	.dword	_ZTI21btConvexInternalShape
	.size	_ZTI23btPolyhedralConvexShape, 24

	.type	_ZTS23btPolyhedralConvexShape,@object # @_ZTS23btPolyhedralConvexShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS23btPolyhedralConvexShape
_ZTS23btPolyhedralConvexShape:
	.asciz	"23btPolyhedralConvexShape"
	.size	_ZTS23btPolyhedralConvexShape, 26

	.type	_ZTI34btPolyhedralConvexAabbCachingShape,@object # @_ZTI34btPolyhedralConvexAabbCachingShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI34btPolyhedralConvexAabbCachingShape
	.p2align	3, 0x0
_ZTI34btPolyhedralConvexAabbCachingShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS34btPolyhedralConvexAabbCachingShape
	.dword	_ZTI23btPolyhedralConvexShape
	.size	_ZTI34btPolyhedralConvexAabbCachingShape, 24

	.type	_ZTS34btPolyhedralConvexAabbCachingShape,@object # @_ZTS34btPolyhedralConvexAabbCachingShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS34btPolyhedralConvexAabbCachingShape
_ZTS34btPolyhedralConvexAabbCachingShape:
	.asciz	"34btPolyhedralConvexAabbCachingShape"
	.size	_ZTS34btPolyhedralConvexAabbCachingShape, 37

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions
	.addrsig_sym _ZGVZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEvE11_directions
	.addrsig_sym _ZTI23btPolyhedralConvexShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS23btPolyhedralConvexShape
	.addrsig_sym _ZTI21btConvexInternalShape
	.addrsig_sym _ZTI34btPolyhedralConvexAabbCachingShape
	.addrsig_sym _ZTS34btPolyhedralConvexAabbCachingShape
